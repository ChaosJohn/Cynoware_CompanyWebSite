<%--
Created by IntelliJ IDEA.
User: chaos
Date: 10/10/13
Time: 9:32 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Welcome To Cynoware</title>
    <link href="css/homepage.css" media="screen" rel="stylesheet"></link>
    <link href="css/contactus.css" media="screen" rel="stylesheet"></link>
    <script type="text/javascript" src="js/homepageBefore.js"></script>
  </head>
  <body onload="resizeWidth()">
    <div class="menubar">
      <div class="maxMiddle" id="menuMaxMiddle">
        <img height="80px" width="80px" style="float:left" src="image/logo.png"/>
        <ul class="header" id="menu">
          <li><a href="#home">Home</a>
          <li><a href="#products">Products</a>
          <li><a href="#about">About</a>
          <li><a href="#news">News</a>
          <li><a href="#contactus">Contact</a>
        </ul>
      </div>
    </div>


    <div class="split_header" id="home"> </div>

    <div>
      <div class="home">
        <div class="maxMiddle">
          <div id="home_top">
            <img src="image/cyno.png" style="margin-top:100px; padding-left:60px"/>
            <br />
            <img id="advancing" src="image/advancing....png" />
          </div>
          <div id="home_main">
            <div class="home_main" id="home_main_left" style="width:15%; height:400px; line-height:400px" onmouseover="showArrows()" onmouseout="hideArrows()" onclick="showPrevious()">
              <img class="arrow" id="arrow_left" src="image/arrow_left.png" style="visibility:hidden; cursor: pointer"/>
            </div>
            <div class="home_main" id="home_main_middle" style="width:70%">
              <div id="frameImg">
                <img id="show">
              </div>
            </div>
            <div class="home_main" id="home_main_right" style="width:15%; height:400px; line-height:400px" onmouseover="showArrows()" onmouseout="hideArrows()" onclick="showNext()">
              <img class="arrow" id="arrow_right" src="image/arrow_right.png" style="visibility:hidden; cursor: pointer"/>
            </div>
          </div>
        </div>

      </div>

    </div>





    <div class="split_header" id="products"> </div>

    <div>
      <div class="product_stripe">
        <div class="maxMiddle">
          <h1 class="header">
            <img class="triangle" src="image/triangle.png"/>
            PRODUCTS--We provide customized solutions!
          </h1>
        </div>
      </div>

      <div class="product">
        <div class="maxMiddle" id="products_content">

        </div>
      </div>

    </div>




    <div class="split_header" id="about"> </div>

    <div>
      <div class="about_stripe">
        <div class="maxMiddle">
          <h1 class="header">
            <img class="triangle" src="image/triangle.png"/>
            ABOUT--Maybe we're not the best now but we are trying to be!
          </h1>
        </div>
      </div>

      <div class="about">
        <div class="maxMiddle_about">
          <div style="width: 700px; margin-left: 13px; float: left">
            <h3 id="about_content">
              Cynoware Electronics Inc. is located in Nanjing, Jiangsu province. <br/>
              &nbsp;&nbsp;&nbsp;&nbsp;The company was founded by Dr.Wei Wu, senior engineer and entrepreneur from Silicon Valley, and Dr. Tingrui Pan, director of the Micro-Nano Innovations(MiNL) Laboratory at University of California Davis. <br/>
              &nbsp;&nbsp;&nbsp;&nbsp;Cynoware is built upon an oustanding team, strong venture capital support, and government affirmation. The Nanjing government backed Cynoware, by including the company in the prestigious "321 Pian". <br/>
              &nbsp;&nbsp;&nbsp;&nbsp;Cynoware is committed to providing smart series solutions for the Internet and IOT(Internet of Things) to our customers worldwide. We specialize in next generation POS(point of sale) and FTS(food traceability scale) applications as well as smart cores(core modules in the IOT terminal). Furthermore, our capabilities encompass the design and manufacturing of IOT terminals, hardware, software, cloud communication and business applications. <br/>
              &nbsp;&nbsp;&nbsp;&nbsp;Our vision is to utilize innovative mobile and IOT technologies to contribute to the human future. </h3>
          </div>
          <div style="width:230px; margin-left: 13px; float: left">
            <img style="width: 100%" src="image/about_img.png" />
          </div>
        </div>
      </div>

    </div>




    <div class="split_header" id="news"> </div>

    <div>
      <div class="news_stripe">
        <div class="maxMiddle">
          <h1 class="header">
            <img class="triangle" src="image/triangle.png"/>
            NEWS--We are getting better everyday!
          </h1>
        </div>
      </div>

      <div class="news">

      </div>

    </div>





    <div id="contactus">

      <div class="contactus_stripe">
        <div class="maxMiddle">
          <h1 class="header"
            style="color:#6F8A1B; font-size:40px; font-weight: 100">
            Contact Us</h1>
        </div>
      </div>

      <div class="contactus">
        <div class="maxMiddle" style="height: 256px">

          <form class="contact_table">
            <ul style="width:100%;margin:0;">
              <li class="name">
              <div>
                <span class="ll">&nbsp;&nbsp;Name:</span>
                <span class="rr"><input id="userName" class="input_text" type="text" /></span>
              </div>
              </li>
              <li class="name">
              <div>
                <span class="ll">&nbsp;&nbsp;E-mail:</span>
                <span class="rr"><input id="mail" class="input_text" type="text" /></span>
              </div>
              </li>
              <li class="message">
              <span class="ll">&nbsp;&nbsp;Message:</span>
              <span class="rr"><textarea id="message" class="textarea"></textarea></span>
              </li>
              <li class="sent">
              <div>
                <span class="ll">&nbsp;&nbsp;</span>
                <span class="rr"><input id="submit" type="button" value="SENT" onclick="checkContactUs()"/></span>
              </div>
              </li>
            </ul>
          </form>
          <div class="contact_eg">
           <!--  <img class="" src="image/info.png" style="width:500px;" /> -->
           <span class="eg_left">Email:</span><span class="eg_right">info@cynoware.com</span>
          <span class="eg_left">Fax:</span><span class="eg_right">+86(025)66679617</span>
          <span class="eg_left">Tel:</span><span class="eg_right">+86(025)66679607</span>
          <span class="eg_left">Address:</span><span class="eg_right">Room.8001 Thousand Talent Building.7 Yingcui Road,
                                                           Jiangning District,Nanjing,Jiangsu,China</span>
          <span class="eg_left">Postal Code:</span><span class="eg_right">211106</span>
           
          </div>
        </div>

        <div class="maxMiddle">
          <div style="background-color: #C6CBC5; height: 1px; width: 100%"></div>
          <div class="copyright">&copy; 2013 Cynoware Electronics, Inc. All right reserved</div>
        </div>

      </div>
    </div>






    <div class="bottom_stripe">
      <div style="height: 50px; "></div>
    </div>

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery.localScroll.min.js" type="text/javascript"></script>
    <script src="js/jquery.scrollTo.min.js" type="text/javascript"></script>
    <script src="js/homepageAfter.js" type="text/javascript"></script>
    <script type="text/javascript">

    </script>
  </body>
</html>
