<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Landing Page</title>
    <style>
        body {
            padding-top: 56px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/">cftodo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <cfif isUserInRole('admin')>
                        <a class="nav-link" href="/admin">admin index</a>
                    <cfelseif isUserInRole('user')>
                        <a class="nav-link" href="/user">user index</a>
                    <cfelse>
                        <a class="nav-link" href="/">Home</a>
                    </cfif>
                </li>
            </ul>
            <!--
            <span class="navbar-text mr-3">
                Hello Username
            </span>
        -->
        <cfif getAuthUser() neq "">
            <!--- User is authenticated --->
            <cfoutput>
                <p>Welcome, #getAuthUser()#!   </p>
                <p>Your role is #getUserRoles()#</p>
                <a class="btn btn-danger my-2 my-sm-0 ml-2" href="/logout.cfm">Logout</a>
            </cfoutput>
        <cfelse>
            <a class="btn btn-primary my-2 my-sm-0" href="/login.cfm">Login</a>
            <a class="btn btn-secondary my-2 my-sm-0 ml-2" href="/signup.cfm">Sign Up</a>
        </cfif>
        </div>
    </div>
</nav>