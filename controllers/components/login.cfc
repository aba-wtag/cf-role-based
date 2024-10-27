component login {

    public struct function checkValidity(required string email, required string password) {

        var qry = "select * from users where email = :email";
        var findEmailQuery = new Query();
        findEmailQuery.setSQL(qry);
        findEmailQuery.addParam(name="email", value=arguments.email, cfsqltype="cf_sql_varchar");
        var findEmailQueryResult = findEmailQuery.execute().getResult();


        try {
            if (len(findEmailQueryResult) == 1) {
                if (findEmailQueryResult.password == arguments.password) {
                    return {
                        role = findEmailQueryResult.role, 
                        name = findEmailQueryResult.name,
                        password = findEmailQueryResult.password,
                        error = false,
                        message = "success"
                    };
                } else {
                    return {
                        error = true,
                        message = "password incorrect"
                    };
                }
            } else {
                return {error=true, message= "users does not exists"};
            }
        } catch (any e) {
            return {error=true, message=e.message};
        }
    }

}