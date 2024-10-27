component {

    public void function checkPermissibility() {
        if (cgi.script_name.startsWith("/admin")) {
            if (isUserInRole('admin')) {
                cfinclude(template=cgi.script_name, runonce="true");
            } else {
                cflocation(url="/login.cfm", addtoken="false");
            }
        } else if (cgi.script_name.startsWith("/user")) {
            if (isUserInRole('user')) {
                cfinclude(template=cgi.script_name, runonce="true");
            } else {
                cflocation(url="/login.cfm", addtoken="false");
            }
        } else {
            cfinclude(template=cgi.script_name, runonce="true");
        }
    }
}