
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Form With Html & Css</title>
  <link rel="stylesheet" href="static/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div>
  
<form action="RegisterUser" METHOD="post" style="border:2px solid #ccc">
  <div class="container">
    <h1>Sign Up</h1>
   
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" class="input"name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
     <div class="line-box">
          <div class="line"></div>
        </div>
    
    <label for="email"><b>First name</b></label>
    <input type="text" placeholder="Enter First Name"class="input" name="firstName" required>
     <div class="line-box">
          <div class="line"></div>
        </div>

    <label for="email"><b>Last name:</b></label>
    <input type="text" placeholder="Enter Last Name"class="input" name="lastName" required>
     <div class="line-box">
          <div class="line"></div>
        </div>

    <label for="email"><b>Desired UserName:</b></label>
    <input type="text" placeholder="Enter UserName"class="input" name="userName"   required>
     <div class="line-box">
          <div class="line"></div>
        </div>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" class="input" name="passwd"  pattern=".{6,}" required>
 <div class="line-box">
          <div class="line"></div>
        </div>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" class="input" name="psw-repeat" pattern=".{6,}" required>
    
 <div class="line-box">
          <div class="line"></div>
        </div>
    <label for="Gender"><b>Gender</b> </label>
    <input name="gender" type="radio" value="m" onFocus="hintEvent('GENDER1');" onBlur="hintEvent('GENDER1', 'HIDE');">Male&nbsp;&nbsp;&nbsp; 
    <input name="gender" type="radio" value="f" onFocus="hintEvent('GENDER1');" onBlur="hintEvent('GENDER1', 'HIDE');"> Female
   
 <div class="line-box">
          <div class="line"></div>
        </div>
    </br></br>
    <label><b>Total experience</b></label><select name="exp_in_years" class="input">
										<option value=""> Select </option>
										<option value="0">0</option>
										<option value="1">1</option>

										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>

										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>

										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>

										<option value="20">20</option>
										
								</select>&nbsp;Years <select name="exp_in_months" class="input" class="Form_fields"
									onFocus="hintEvent('WORK_EXP');"
									onBlur="hintEvent('WORK_EXP', 'HIDE');">
										<option value=""> Select </option>
										<option value="00">0</option>
										<option value="01">1</option>
										<option value="02">2</option>

										<option value="03">3</option>
										<option value="04">4</option>
										<option value="05">5</option>
										<option value="06">6</option>
										<option value="07">7</option>
										<option value="08">8</option>

										<option value="09">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
								</select>&nbsp;Months
    <br><br>
     <div class="line-box">
          <div class="line"></div>
        </div>
    
    <label><b>Current / Preferred industry:</b> </label><div class="custom-select" style="width:200px;">
      <select name="industry" id="industry" class="input" ><option
											value=''> Select -</option>
										<option value='Any'>Any</option>
										<option value='Devops'>Devops</option>
										<option value='Trainer'>Trainer</option>
										<option value='Developer'>Developer</option>
										<option value='Software Testing'>Software Testing</option>
										<option value='UI/UX Designer'>UI/Ux Designer</option>
										<option value='FullStack Developer'>FullStack Developer</option>
										<option value='DB Admin'>DB Admin</option>
										<option value='Animator'>Animator.</option>
										<option value='Other'>Other</option></select></div><br><br>
										
	 <div class="line-box">
          <div class="line"></div>
        </div>									
		<label for="skill"><b>KeySkills</b></label><input type="text" placeholder="Enter Key Skills" class="input" name="keySkills" required>
    <div class="line-box">
          <div class="line"></div>
        </div>
    
    <p><input type="checkbox" value="agree" >By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>

    </div>
  </div>
</form>
</div>
 </body>
</html>