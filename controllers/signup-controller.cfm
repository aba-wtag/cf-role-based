<cfscript>

    new components.signup().insertToDB(form.name, form.email, form.password);

</cfscript>