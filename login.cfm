<cflogout/>

<cfinclude template="./partials/header.cfm" runonce="true"/>

<div class="container mt-5">
    <div class="form-container">
        <h2>Login</h2>
        <form action="./controllers/login-controller.cfm" method="POST">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
    </div>
</div>

<cfinclude template="./partials/footer.cfm" runonce="true"/>