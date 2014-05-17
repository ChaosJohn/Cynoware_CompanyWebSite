var jsonData;
var id; 
var title; 
var introduction;
var imageSrcs; 
var modelSrcs; 
var modelNames; 
var colorHexs;
var colorNames; 
var sizeOfGallery;


var relocateLogo = function() {
  var newBrowserWidth = window.innerWidth; 
  var newLeftOffset = newBrowserWidth / 2 - 85; 
  console.log(newLeftOffset); 
  $('#logo').offset({top: 5, left: newLeftOffset}); 
} 

function showMenubar() {
  document.getElementById('menubar').style.visibility = "visible"; 
} 

function hideMenubar() {
  document.getElementById('menubar').style.visibility = "hidden"; 
} 

function onMouseMove(e) {
  var mouseY = (e || window.event).clientY; 
  //console.log(mouseY); 
  var status = document.getElementById('menubar').style.visibility; 
  //document.title = mouseY; 
  if (mouseY <= 40 && status != "visible") 
    showMenubar(); 
  else if (mouseY > 40 && status != "hidden") 
    hideMenubar(); 
} 

function addStyle(elem, styleString) {
  elem.attr('style', (elem.attr('style') == undefined ? '' : elem.attr('style')) + styleString + '; '); 
}


function onload() {
  relocateLogo();
  window.onresize = relocateLogo;
  document.onmousemove = onMouseMove; 
  loadJson();
  getData();
  document.title = "Product " + title; 
  $('#product_name').html(title); 
  $('#product_image_show').attr('src', imageSrcs[0]); 
  
  $('#product_datasheet').attr('src', modelSrcs[modelSrcs.length - 1]); 
  //$('#product_datasheet').attr('src', modelSrcs[0]); 
  

  setProductTabs(modelNames); 
  setDataSheetToggle();
  var heapHeight = createGallery($('#product_image_gallery_container'), imageSrcs); 
  setGalleryToggle(); 
  setIntroduction();
  setColors();
}

function getData() {
  $.each(jsonData.jsonInfo, function(key, value) {
    if(key == "id") {
      id = value; 
    } else if(key == "title") {
      title = value; 
    } else if(key == "introduction") {
      introduction = value; 
    }
  }); 
  console.log("id: ", id); 
  console.log("title: ", title); 
  console.log("introduction: ", introduction); 

  imageSrcs = new Array; 
  $.each(jsonData.jsonImageSrcs, function(index) {
    $.each(jsonData.jsonImageSrcs[index], function(key, value) {
      if (key == "imageSrc") {
        imageSrcs.push(value); 
      }
    }); 
  }); 
  sizeOfGallery = imageSrcs.length; 
  console.log(imageSrcs);

  modelSrcs = new Array; 
  modelNames = new Array; 
  $.each(jsonData.jsonModels, function(index) {
    $.each(jsonData.jsonModels[index], function(key, value) {
      if (key == "modelName") {
        modelNames.push(value); 
      } else if (key == "modelSrc") {
        modelSrcs.push(value); 
      }
    }); 
  }); 
  console.log(modelNames);
  console.log(modelSrcs); 

  colorHexs = new Array; 
  colorNames = new Array; 
  $.each(jsonData.jsonColors, function(index) {
    $.each(jsonData.jsonColors[index], function(key, value) {
      if (key == "colorHex") {
        colorHexs.push(value); 
      } else if (key == "colorName") {
        colorNames.push(value); 
      }
    }); 
  }); 
  console.log(colorHexs);
  console.log(colorNames);
}; 

var tabColors = ['#7A00A7', '#B5C90F', '#F9D602']; 

function setProductTabs(types) {
  var numbers = types.length; 
  var tabBar = $('#product_tab'); 
  var widthOfTabBar = tabBar.width(); 
  var heightOfTabBar = tabBar.height(); 
  var widthOfTab = widthOfTabBar / numbers; 
  var heightOfTab = heightOfTabBar; 
  for (var i = 0; i < numbers; i++) {
    var atom = $('<a class="tab">' + types[i] + '</a>'); 
    atom.attr('id', 'tab_' + types[i]); 
    atom.width(widthOfTab); 
    atom.height(heightOfTab); 
    addStyle(atom, 'float: left'); 
    addStyle(atom, 'background-color: ' + tabColors[i]); 
    addStyle(atom, 'color: #FFFFFF'); 
    addStyle(atom, 'font-size: 25px'); 
    addStyle(atom, 'line-height: 54px'); 
    addStyle(atom, 'cursor: pointer'); 
    tabBar.append(atom); 
  } 
}

function setDataSheetToggle() {
  console.log("start");
  $(".tab").click(function() {
    var index = $('.tab').index(this); 
    $('#product_datasheet').attr('src', modelSrcs[index]); 
  }); 
}

function setGalleryToggle() {
  $(".gallery").click(function() {
    var thisId = $(this).attr('id'); 
    var thisId_splitArray = thisId.split('_'); 
    var thisIndex = parseInt(thisId_splitArray[1]); 
    $('#product_image_show').attr('src', imageSrcs[thisIndex]); 
  }); 
}


function createGallery(parentDiv, urls) {
  var parentWidth = parentDiv.width(); 
  console.log("parentWidth", parentWidth); 
  var childWidth = parentWidth / 3;  
  console.log("childWidth", childWidth); 
  var numberOfRows = parseInt(urls.length / 3 + 1); 
  console.log("numberOfRows", numberOfRows); 

  var row = new Array(numberOfRows); 
  for(var i = 0; i < numberOfRows; i++) {
    row[i] = $('<div></div>'); 
    row[i].width(parentWidth); 
    row[i].height(100); 
    var col = new Array(3); 
    for (var j = 0; j < 3; j++) {
      col[j] = $('<div></div>'); 
      addStyle(col[j], 'float: right'); 
      addStyle(col[j], 'cursor: pointer'); 
      col[j].width(childWidth); 
      col[j].height(100); 

      var picture = $('<img class="gallery"/>'); 
      var index = i * 3 + j; 
      if (index == urls.length) 
        break; 
      picture.attr('id', 'gallery_' + index); 
      picture.attr('src', urls[index]); 
      //picture.width(90); 
      picture.width((childWidth - 10)); 
      picture.height(90); 
      addStyle(picture, 'margin: 5px'); 
      col[j].append(picture); 
      row[i].append(col[j]); 
    } 
  }

  for (var i = numberOfRows - 1; i >= 0; i--) {
    parentDiv.append(row[i]); 
  } 
  var totalHeight = numberOfRows * 100; 
  parentDiv.height(totalHeight); 
  return totalHeight; 
} 

function setIntroduction() {
  var intro = $('<p></p>'); 
  addStyle(intro, 'line-height: 22px'); 
  addStyle(intro, 'color: #858799');
  var modified_intro = introduction.replace(/\^/g, "<img src=\"image/white_arrow.png\" style=\"margin-right: 4px\" /> ").replace(/\|/g, "<br />"); 
  intro.html(modified_intro); 
  $('#product_image_gallery_introduction').append(intro); 
} 

function setColors() {
  var numberOfColors = colorNames.length; 
  var widthOfColorBar = $('#product_type_color').width(); 
  var widthOfItem = widthOfColorBar / (numberOfColors > 3 ? numberOfColors : 3);
  for (var i = 0; i < numberOfColors; i++) {
    var colorItem = $('<center></center>'); 
    addStyle(colorItem, 'float: left'); 
    var name = $('<p></p>'); 
    var bar = $('<div></div>'); 
    name.height(20); 
    name.width(widthOfItem); 
    name.html(colorNames[i]); 
    addStyle(name, 'margin: 0px'); 
    addStyle(name, 'line-height: 20px'); 
    addStyle(name, 'color: #817D74'); 
    bar.height(10); 
    bar.width(widthOfItem); 
    addStyle(bar, 'background-color: ' + colorHexs[i]); 
    colorItem.append(name); 
    colorItem.append(bar); 
    $('#product_type_color').append(colorItem); 
  }
}

