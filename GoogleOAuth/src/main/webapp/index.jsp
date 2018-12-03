<!DOCTYPE html>
<html>

<head>
    <title>Google sIgn In</title>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="886147765292-beu9ar41g5ft41ht0f6s64ig6ob8bb6u.apps.googleusercontent.com">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <script>
    function onSignIn(googleUser)
    {
        var profile = googleUser.getBasicProfile();
        $(".g-signin2").css("display","none");
        $(".data").css("display","block");
        $("#pic").attr('src', profile.getImageUrl());
        $("#email").text(profile.getEmail());
        $("#name").text(profile.getName());

    }

    function signOut()
    {
        var auth2 = gapi.auth2.getAuthInstance();

        auth2.signOut().then(function(){

            alert("You have Successfully logged out");
            $(".g-signin2").css("display","block");
            $(".data").css("display","none");

        });
    }
    </script>
    <style>
        .g-signin2 {

            margin-left: 500px;
            margin-top: 200px; 
			
        }
        .data
        {
            display: none;
        }
    </style>
</head>

<body>

    <div class="g-signin2" data-onsuccess="onSignIn"></div>
    <div class="data">
        <p> Profile Details</p>

        <img id="pic" class="img-circle" width="100" height="100" />
        <p>Name</p><p id="name"></p>
        <p>Email </p>
        <p id="email" class="alert alert-success"></p>

        <button onclick="signOut()" class="btn btn-danger">Sign Out</button>
    </div>

</body>

</html>