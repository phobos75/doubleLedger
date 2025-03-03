% include('header.tpl', pName='Login')

<!-- LOGIN FORM --> 
<form action="/login" method="post">
    <div class="row mt-3">
        <div class="col-lg-2">Username</div><div class="col-lg-2 "><input class="form-control" name="username" type="text" /></div>
    </div>
    <div class="row mt-1">
        <div class="col-lg-2">Password</div><div class="col-lg-2 "><input class="form-control" name="password" type="password" /></div>
    </div>
    <div class="row mt-1">
        <div class="col-lg-2"></div><div class="col-lg-2"><input class="btn btn-primary" type="submit" value="login" /></div>
    </div>
</form>

% if xlogin == 1 :
    <div class="row mt-1"><div class="col-lg-4 alert alert-warning text-center">incorrect user or password</div></div>
% end

% include('footer.tpl')