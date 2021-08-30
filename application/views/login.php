<html>
    <head>
        
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url('/assets/Perindustrian/login'); ?>/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container mt-5 pt-5">
            <h1 class="text-center">Admin <strong class="text-primary">Login</strong> </h1>
            <div class="row justify-content-center">
                <div class="col-md-6">
                <form action="" method="post">
                    <div class="form-group">
                        <label for="">Username</label>
                        <input type="text" class="form-control" name="username" placeholder="Username" id="">
                    </div>
                    <div class="form-group">
                        <label for="">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password" id="">
                    </div>
                    <div>
                    <p class="text-danger"><?=@$message?></p> 
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary float-right" name="submit" value="Sign In">
                    </div>
                </form>
                </div>
            </div>
        </div>
    </body>
</html>