function showArrows() {
  var arrow_left = document.getElementById("arrow_left"); 
  var arrow_right = document.getElementById("arrow_right"); 
  console.log("show");
  arrow_left.style.visibility = "visible"; 
  arrow_right.style.visibility = "visible"; 
}; 

function hideArrows() {
  var arrow_left = document.getElementById("arrow_left"); 
  var arrow_right = document.getElementById("arrow_right"); 
  console.log("hide");
  arrow_left.style.visibility = "hidden"; 
  arrow_right.style.visibility = "hidden"; 
}; 

function showNext() {
  if (indexOfShowsImage != numberOfShowsImage - 1) {
    indexOfShowsImage++; 
  } else {
    indexOfShowsImage = 0; 
  }
  $('#show').fadeOut(1000, function() {
    $('#show').attr('src', urlsOfShowsImage[indexOfShowsImage]); 
  }).fadeIn('slow'); 
}

function showPrevious() {
  if (indexOfShowsImage != 0) {
    indexOfShowsImage--; 
  } else {
    indexOfShowsImage = urlsOfShowsImage.length - 1; 
  } 
  $('#show').fadeOut('slow', function() {
    $('#show').attr('src', urlsOfShowsImage[indexOfShowsImage]); 
  }).fadeIn('slow'); 
}

function createRow(parentDiv, ids, titles, urls) {
  var lengthOfUrls = urls.length; 
  var numberOfRows = parseInt(lengthOfUrls / 3) + 1; 
  var sizeOfLastRow = lengthOfUrls % 3; 
  var rows = new Array(numberOfRows); 
  var totalHeight = 0; 
  for (var i = 0; i < numberOfRows; i++) {
    rows[i] = new Array(3); 
    var row = $('<div></div>'); 
    for (var j = 0; j < 3; j++) {
      var index = i * 3 + j;
      if (index == urls.length)
        break;
      rows[i][j] = $('<div class="productEntry"></div>'); 
      rows[i][j].attr('id', 'product_' + ids[index]); 
      rows[i][j].width(300); 
      rows[i][j].height(300); 
      //rows[i][j].attr('id', 'img' + index); 
      addStyle(rows[i][j], 'float: left'); 
      addStyle(rows[i][j], 'margin: 10px'); 
      addStyle(rows[i][j], 'cursor: pointer'); 
      loadImage(rows[i][j], urls[index]); 
      loadTitle(rows[i][j], titles[index]); 
      row.append(rows[i][j]); 
      row.height(rows[i][j].height()); 
    }
    parentDiv.append(row);
    totalHeight += row.height(); 
  }

  $(".productEntry").click(function() {
    var thisId = $(this).attr('id'); 
    var thisId_splitArray = thisId.split('_'); 
    thisId = parseInt(thisId_splitArray[1]); 
    viewProduct(thisId); 
  });

  return totalHeight; 
}

var request; 

function viewProduct(id) {
  //var servletName = "sample.do"; 
  var servletName = "viewProductById.do"; 
  var url = servletName + '?id=' + escape(id); 
  //if (window.XMLHttpRequest) {
  //request = new XMLHttpRequest(); 
  //} else if (window.ActiveXObject) {
  //request = new ActiveXObject("Microsoft.XMLHTTP"); 
  //} 
  //request.open("GET", url, true); 
  //request.onreadystatechange = callback; 
  //request.send(null); 
  //window.location.href = url; 
  //window.open(url, '_blank'); 
  window.open(url); 
} 

function callback() {
  console.log("callback");
} 


function loadImage(parentDiv, url) {
  var img = $('<img></img>'); 
  img.attr('src', url); 
  addStyle(img, 'float: left'); 
  img.height(256); 
  img.width(300); 
  parentDiv.append(img); 
}

function loadTitle(parentDiv, title) {
  var nameBlock = $('<center>' + title + '</center>'); 
  addStyle(nameBlock, 'margin: 2px');
  addStyle(nameBlock, 'float: left'); 
  addStyle(nameBlock, 'width: 294px');
  addStyle(nameBlock, 'height: 40px'); 
  addStyle(nameBlock, 'line-height: 40px'); 
  addStyle(nameBlock, 'font-size: 20px'); 
  addStyle(nameBlock, 'color: #574345'); 
  addStyle(nameBlock, 'font-weight: 100'); 
  addStyle(nameBlock, 'background-color: #FFFFFF'); 
  parentDiv.append(nameBlock); 
}

function addProductClickListener(elem, id) {
} 

function addStyle(elem, styleString) {
  elem.attr('style', (elem.attr('style') == undefined ? '' : elem.attr('style')) + styleString + '; '); 
}


function getShows() {
  console.log('getShows()');
  var showsUrls = new Array; 
  var productIds = new Array; 
  var productTitles = new Array; 
  var productCoverSrcs = new Array; 
  var newsSrcs = new Array; 
  var newsTitles = new Array; 
  $.ajax({
    url: 'testShows.do', 
    data: {type: 'type'}, 
    dataType: 'json', 
    async: false, 
    error: function() {
      alert('error occured!'); 
    }, 
    success: function(data) { 
               //var showsUrls = new Array; 
               $.each(data.showsInfo, function(index) {
                 $.each(data.showsInfo[index], function(key, value) {
                   console.log(key + ' : ' + value); 
                   showsUrls.push(value);
                   console.log(showsUrls);
                 });
               }); 
               $.each(data.productInfo, function(index) {
                 $.each(data.productInfo[index], function(key, value) {
                   console.log(key + ' : ' + value);
                   if (key == 'id') {
                     productIds.push(value); 
                   } else if (key == 'title') {
                     productTitles.push(value); 
                   } else if (key == 'coverSrc') {
                     productCoverSrcs.push(value); 
                   }
                 });
               });
               $.each(data.newsInfo, function(index) {
                 $.each(data.newsInfo[index], function(key, value) {
                   console.log(key + ' : ' + value); 
                   if (key == 'image') {
                     newsSrcs.push(value); 
                   } else if (key == 'title') {
                     newsTitles.push(value); 
                   } 
                 }); 
               }); 
               console.log('productIds', productIds); 
               console.log('productTitles', productTitles); 
               console.log('prodectCoverSrcs', productCoverSrcs); 
               console.log('newsSrcs', newsSrcs); 
               console.log('newsTitles', newsTitles); 
               //console.log('success', showsUrls); 
               //setShow(showsUrls); 
               //return showsUrls; 
             } 
  });
  var value = new Object(); 
  value.showsUrls = showsUrls; 
  value.productIds = productIds; 
  value.productTitles = productTitles; 
  value.productCoverSrcs = productCoverSrcs; 
  value.newsSrcs = newsSrcs; 
  value.newsTitles = newsTitles; 
  return value; 
}

//function setShow(showsUrls) {
//var numberOfShowsImage = showsUrls.length; 
//$('#show').attr('src', showsUrls[indexOfShowsImage]); 
//}




var urlsOfShowsImage;
var numberOfShowsImage;
var indexOfShowsImage = 0;
var productIds;
var productTitles;
var productCoverSrcs;
var newsSrcs; 
var newsTitles;

function onload() {
  value = getShows();
  urlsOfShowsImage = value.showsUrls;
  numberOfShowsImage = urlsOfShowsImage.length;
  $("#show").attr('src', urlsOfShowsImage[indexOfShowsImage]);

  productIds = value.productIds;
  productTitles = value.productTitles;
  productCoverSrcs = value.productCoverSrcs;
  newsSrcs = value.newsSrcs; 
  newsTitles = value.newsTitles; 

  $(".header li").first().addClass("current");
  $(".header li").click(function () {
    $(this).addClass("current").siblings().removeClass("current");
  });


  $.localScroll();


  var totalHeight = createRow($('#products_content'), productIds, productTitles, productCoverSrcs);
  $('.maxMiddle#products_content').height(totalHeight);
  $('.product').height(totalHeight);

  setNews(); 
};

function checkContactUs() {
  var userName = trimRight($('#userName').val()); 
  var regex = /^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/;
  var email_val = trimRight($('#mail').val());
  var message = trimRight($('#message').val()); 
  if (userName == "") {
    alert("Please Enter Your Name"); 
    $('#userName').focus(); 
  } else if (!regex.test(email_val)) {
    alert("Please Enter Right E-mail !");
    $('#mail').focus();
  } else if (message == "") {
    alert("Please Enter The Message!"); 
    $('#message').focus(); 
  } else {
    sentContactUs();
  }
}

function trimRight(str) {
  for (var i = str.length - 1; i >= 0; i--) {
    if (str.charAt(i) != " ")
      break; 
  } 
  str = str.substring(0, i + 1); 
  return str; 
} 

function sentContactUs() {
  $.ajax({
    type: 'post',
  url: 'contactus.do', 
  dataType: 'json', 
  async: true, 
  //async: false, 
  data: "userName=" + $('#userName').val() + "&mail=" + $('#mail').val() + "&message=" + $('#message').val(), 
  //error: function() {
  //alert('Sent Faild!\nPlease Try Again'); 
  //}, 
  //success: function(response) {
  //alert('Sent Successfully'); 
  //alert(response); 
  //}
  }); 
  alert('Sent Successfully'); 
}

var newsStripe; 
var newsImages; 
var newsTitleDivs;  
var newsItems; 
var widthOfNewsStripe; 
var firstNews; 
var blackArrows; 
function setNews() {
  newsStripe = $('<div id="newsStripe"></div>'); 
  newsImages = new Array; 
  newsTitleDivs = new Array; 
  newsItems = new Array; 
  widthOfNewsStripe = 0; 
  heightOfNewsStripe = 0; 
  //blackArrows = new Array; 
  for (var i = 0; i < newsSrcs.length; i++) {
    newsImages[i] = $('<img class="newsImg"></img>'); 
    newsImages[i].attr('id', 'newsImg_' + i); 
    newsImages[i].attr('src', newsSrcs[i]); 
    addStyle(newsImages[i], 'float: left'); 

    //blackArrows[i] = $('<img class="blackArrow"></img>'); 
    //blackArrows[i].attr('src', 'image/black_arrow.png'); 
    //addStyle(blackArrows[i], 'float: left'); 

    newsTitleDivs[i] = $('<p></p>'); 
    //newsTitleDivs[i].html(newsTitles[i]); 
    newsTitleDivs[i].html('<img src="image/black_arrow.png"></img> ' + newsTitles[i]); 
    addStyle(newsTitleDivs[i], 'float: left'); 
    addStyle(newsTitleDivs[i], "font-size: 16px"); 
    addStyle(newsTitleDivs[i], "font-weight: 100"); 

    newsItems[i] = $('<div class="newsItem"></div>'); 
    addStyle(newsItems[i], 'float: left'); 
    newsItems[i].append(newsImages[i]); 
    //newsItems[i].append(blackArrows[i]); 
    newsItems[i].append(newsTitleDivs[i]); 

    newsStripe.append(newsItems[i]); 
  } 

  $('.news').append(newsStripe); 
 
  //var widthOfBlackArrow = blackArrows[0].width(); 

  for (var i = 0; i < newsSrcs.length; i++) {
    var widthOfImage = newsImages[i].width(); 
    console.log('newsImage', widthOfImage); 
    console.log('newsImage', newsImages[i].width()); 
    newsItems[i].width(widthOfImage); 
    var heightOfImage = newsImages[i].height(); 
    newsItems[i].height(heightOfImage); 
    var heightOfTitle = newsTitleDivs[i].height(); 
    widthOfNewsStripe += widthOfImage; 
    heightOfNewsStripe = (heightOfNewsStripe >= (heightOfImage + heightOfTitle)) ? heightOfNewsStripe : (heightOfImage + heightOfTitle); 
    //newsTitleDivs[i].width(width - widthOfBlackArrow); 
    //newsTitleDivs[i].width(width * 2 / 3); 
    newsTitleDivs[i].width(widthOfImage * 3 / 4); 
  } 

  newsStripe.width(widthOfNewsStripe); 
  newsStripe.height(heightOfNewsStripe); 
  $('.newsItem').height(heightOfNewsStripe); 
  //$('.news').width(widthOfNewsStripe); )
  newsStripe.attr('onclick', 'showNextNews()'); 
  addStyle(newsStripe, 'cursor: pointer'); 
}

function resizeWidth() {
  for (var i = 0; i < newsSrcs.length; i++) {
    var widthOfImage = newsImages[i].width(); 
    console.log('newsImage', widthOfImage); 
    console.log('newsImage', newsImages[i].width()); 
    newsItems[i].width(widthOfImage); 
    var heightOfImage = newsImages[i].height(); 
    newsItems[i].height(heightOfImage); 
    var heightOfTitle = newsTitleDivs[i].height(); 
    widthOfNewsStripe += widthOfImage; 
    heightOfNewsStripe = (heightOfNewsStripe >= (heightOfImage + heightOfTitle)) ? heightOfNewsStripe : (heightOfImage + heightOfTitle); 
    //newsTitleDivs[i].width(width - widthOfBlackArrow); 
    //newsTitleDivs[i].width(width * 2 / 3); 
    newsTitleDivs[i].width(widthOfImage * 3 / 4); 
  } 
  newsStripe.width(widthOfNewsStripe); 
  newsStripe.height(heightOfNewsStripe); 
  $('.newsItem').height(heightOfNewsStripe); 
} 

function showNextNews() {
  firstNews = $('.newsItem').first(); 
  //firstNews.slideUp('slow', function() {
    //$(this).appendTo(newsStripe); 
  //}).slideDown('fast'); 
  firstNews.animate({width: 'hide'}, 'slow', function() {
    $(this).appendTo(newsStripe); 
  }).animate({width: 'show'}, 'fast'); 
} 

