<cfscript>

   var comp = new components.login()
   var res = comp.checkValidity(form.email, form.password); 

   if (res.error) {
      cflocation(url="/", addtoken="false");
   } else {
      cflogin() {
         cfloginuser(name=res.name, password=res.password, roles=res.role);
      }

      cflocation(url="/", addtoken="false");
   }

   dump(res);

</cfscript>