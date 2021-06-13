<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Company Login Form</title>
    <link rel="stylesheet" type="text/css" href="https://demo.plantpot.works/assets/css/normalize.css">
    <link rel="stylesheet" href="https://use.typekit.net/opg3wle.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
html {
  font-size: 16px;
}
body {
  background-image: linear-gradient(45deg, #ffd800, #ff5520, #750cf2, #0cbcf2);
  font-family: futura-pt, sans-serif;
  -webkit-tap-highlight-color: rgba(0,0,0,0);
}
#container {
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  width: 100%;
  height: 100vh;
  padding: 20px;
  overflow: hidden;
}
form input::placeholder {
	position: relative;
	top: 0;
	color: inherit;
	transition: all 0.2s linear;
}
form input:focus::placeholder {
	top: -1.25em;
	font-size: 0.825rem;
}
.box {
  position: relative;
}
.form-box {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  position: relative;
  z-index: 999;
  width: 100%;
  max-width: 300px;
  padding: 30px 20px;
  border: solid .5px #fff;
  border-radius: 10px;
  box-shadow: 4px 4px 10px rgba(0, 0, 0, .1),
             -4px -4px 10px rgba(0, 0, 0, .1);
  background-color: rgba(255, 255, 255, .1);
  -webkit-backdrop-filter: blur(15px);
  backdrop-filter: blur(15px);
}
.ic-account {
  width: 80px;
  height: 80px;
  margin-bottom: 10px;
  border: 1px solid #fff;
  border-radius: 50%;
  background: rgba(255, 255, 255, .1);
  background-image: url("images/user1.svg");
  background-position: center;
  background-size: 80px;
  background-repeat: no-repeat;
  -webkit-backdrop-filter: blur(15px);
  backdrop-filter: blur(15px);
}
.login-form-input {
  outline: none;
  width: 100%;
  margin: 10px auto;
  padding: 15px 20px;
  border: 1px solid #fff;
  border-radius: 25px;
  color: #fff;
  font-size: 1rem;
  background-color: rgba(255, 255, 255, .1);
  -webkit-backdrop-filter: blur(15px);
  backdrop-filter: blur(15px);
}
.login-form-input::placeholder {
  color: #fff;
}
.login-form-btn {
  width: 100%;
  height: 50px;
  margin: 20px auto 10px;
  padding: 15px;
  border: none;
  border-radius: 25px;
  background-color: #fff;
  color: #3d3935;
  font-size: 1.25rem;
  outline: none;
  cursor: pointer;
}
.text {
  text-align: center;
  font-size: 14px;
  color: #FFF;
  margin: 0;
  padding: 0;
}
.text a {
  color: #FFF;
}
.login-form-btn:hover,
.text a:hover {
  opacity: .8;
}
.circle-01 {
  position: absolute;
  top: -40px;
  right: -40px;
  z-index: 1;
  width: 100px;
  height: 100px;
  border-radius: 50%;
  background-image: linear-gradient(45deg, #ffd800, #ff5520);
}
.circle-02 {
  position: absolute;
  left: -40px;
  bottom: -40px;
  z-index: 1;
  width: 100px;
  height: 100px;
  border-radius: 50%;
  background-image: linear-gradient(45deg, #0cbcf2, #750cf2);
}
@media screen and (max-width: 480px) {
  #container {
    height: auto;
    align-items: flex-start;
  }
  
  .ic-account far
  {
      width:300px;
      height:200px;
  }
}
</style>
  </head>
  <body>
    <div id="container">
      <div class="box">
        <div class="form-box">
          <div class="ic-account"></div>
          <form id="login-form" name="login-form" action="CompanyLogin" method="post">
            <input id="email" class="login-form-input" type="email" name="mail" placeholder="Email Address" required>
            <input id="password" class="login-form-input" type="password" name="passwd" placeholder="Password" required>
            <button class="login-form-btn" type="submit">Login</button>
            <p class="text"> <a href="registerCompany.jsp">Sign up</a>
          </form>
        </div>
        <div class="circle-01"></div>
        <div class="circle-02"></div>
      </div>
    </div>
  </body>
</html>