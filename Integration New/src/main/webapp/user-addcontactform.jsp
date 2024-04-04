<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User contact form</title>
</head>
<style>

    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  outline: none;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

.custom-container{
  max-width: 800px;
  background: #fff;
  width: 800px;
  padding: 25px 40px 10px 40px;
  box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}
.custom-container .custom-text{
  text-align: center;
  font-size: 41px;
  font-weight: 600;
  font-family: 'Poppins', sans-serif;
  background: -webkit-linear-gradient(right, #56d8e4, #9f01ea, #56d8e4, #9f01ea);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
.custom-container form{
  padding: 30px 0 0 0;
}
.custom-container form .custom-row{
  display: flex;
  margin: 32px 0;
}
form .custom-row .custom-input{
  width: 100%;
  height: 40px;
  margin: 0 20px;
  position: relative;
}
form .custom-row .custom-textarea{
  height: 70px;
}
.custom-input input,
.custom-textarea textarea{
  display: block;
  width: 100%;
  height: 100%;
  border: none;
  font-size: 17px;
  border-bottom: 2px solid rgba(0,0,0, 0.12);
}
.custom-input input:focus ~ label, .custom-textarea textarea:focus ~ label,
.custom-input input:valid ~ label, .custom-textarea textarea:valid ~ label{
  transform: translateY(-20px);
  font-size: 14px;
  color: #3498db;
}
.custom-textarea textarea{
  resize: none;
  padding-top: 10px;
}
.custom-input label{
  position: absolute;
  pointer-events: none;
  bottom: 10px;
  font-size: 16px;
  transition: all 0.3s ease;
}
.custom-textarea label{
  width: 100%;
  bottom: 40px;
  background: #fff;
}
.custom-input .custom-underline{
  position: absolute;
  bottom: 0;
  height: 2px;
  width: 100%;
}
.custom-input .custom-underline:before{
  position: absolute;
  content: "";
  height: 2px;
  width: 100%;
  background: #3498db;
  transform: scaleX(0);
  transform-origin: center;
  transition: transform 0.3s ease;
}
.custom-input input:focus ~ .custom-underline:before,
.custom-input input:valid ~ .custom-underline:before,
.custom-textarea textarea:focus ~ .custom-underline:before,
.custom-textarea textarea:valid ~ .custom-underline:before{
  transform: scale(1);
}
.custom-submit .custom-input{
  overflow: hidden;
  height: 45px!important;
  width: 25%!important;
}
.custom-submit .custom-input-form .inner{
  height: 100%;
  width: 300%;
  position: absolute;
  left: -100%;
  background: -webkit-linear-gradient(right, #56d8e4, #9f01ea, #56d8e4, #9f01ea);
  transition: all 0.4s;
    background-color:red;
}
.custom-submit .custom-input-form:hover .inner{
  left: 0;

}
.custom-submit .custom-input-form input{
  background: none;
  border: none;
  color: #fff;
  font-size: 17px;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 1px;
  cursor: pointer;
  position: relative;
  z-index: 2;
}
@media (max-width: 700px) {
  .custom-container .custom-text{
    font-size: 30px;
  }
  .custom-container form{
    padding: 10px 0 0 0;
  }
  .custom-container form .custom-row{
    display: block;
  }
  form .custom-row .custom-input{
    margin: 35px 0!important;
  }
  .custom-submit .custom-input{
    width: 40%!important;
  }
}

   </style>
<body>

   <div class="custom-container" style="margin:50px auto 0px auto;height:70vh;">
      <div class="custom-text">
         Contact Us
      </div>
      <form action="adduser-raju.jsp" method="post">
         <div class="custom-row">
            <div class="custom-input">
               <input type="text" required name="name">
               <div class="custom-underline"></div>
               <label for="">Name</label>
            </div>
            <div class="custom-input">
               <input type="text" required name="mobile">
               <div class="custom-underline"></div>
               <label for="">Mobile</label>
            </div>
         </div>
         <div class="custom-row">
            <div class="custom-input">
               <input type="text" required name="gmail">
               <div class="custom-underline"></div>
               <label for="">Gmail</label>
            </div>
            <div class="custom-input">
               <input type="text" required name="related">
               <div class="custom-underline"></div>
               <label for="">Related to</label>
               <!--<select name="cars" id="cars">
               <option value="1unit">1units</option>
               <option value="2units">2units</option>
               <option value="3units">3units</option>
               <option value="4units">4units</option>
           </select> -->       
            </div>
         </div>
         <div class="custom-row">
         <div class="custom-input custom-textarea">
            <textarea rows="8" cols="80" required name="query" ></textarea>
            <br />
            <div class="custom-underline"></div>
            <label for="">Write query</label>
            <br />
            <div class="custom-row custom-submit">
               <div class="custom-input">
                  <div class="inner"></div>
                  <input type="submit" value="submit">
               </div>
            </div>
      </form>
      </div>

                  <!-- Header Starts Here  -->
                
                  
                  <!-- Header Ends Here  -->
   </body>
</html>
