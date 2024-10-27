component signup {

    public void function insertToDB(required string name, required string email, required string password) {
        try {
            var sql = "INSERT INTO users (name, email, password) VALUES (:name, :email, :password)";
            
            var qry = new Query();
            qry.setSQL(sql);
            qry.addParam( name="name", value= arguments.name, cfsqltype="cf_sql_varchar" ); 
            qry.addParam( name="email", value= arguments.email, cfsqltype="cf_sql_varchar" ); 
            qry.addParam( name="password", value= arguments.password, cfsqltype="cf_sql_varchar" ); 
            qry.execute().getResult()

            writeOutput("A new user was inserted successfully!");

            cflocation(url="/login.cfm", addtoken="false");

        } catch (any e) {
            writeOutput("Error occurred: " & e.message);
            cflocation(url="/", addtoken="false");
        }
    }

}