component {
    this.name = "test";
    this.sessionManagement = true;
    this.loginstorage = "session";
    this.datasource = "authtest";

    void function onRequest() {
        r = new routes();
        r.checkPermissibility();
    }
}