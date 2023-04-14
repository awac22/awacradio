
<!DOCTYPE html>
<html lang="{{ $locale }}">
<head>
   <!-- Google tag (gtag.js) -->
   <script async src="https://www.googletagmanager.com/gtag/js?id=G-LC9N3FC5MD"></script>
 <script>
   window.dataLayer = window.dataLayer || [];
   function gtag(){dataLayer.push(arguments);}
   gtag('js', new Date());
   gtag('config', 'G-LC9N3FC5MD');
   </script>
    @meta_tags
	<meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="preload" href="{{ asset('css/app_361.css') }}" as="style">
    <link rel="preload" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap" as="style">
    <link rel="preload" href="{{ asset('js/app_361.js') }}" as="script">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="{{ asset('css/app_361.css') }}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap" rel="stylesheet">
    <link rel="manifest" href="{{ asset('manifest.json') }}">
    <!-- <link rel="shortcut icon" href="{{ asset('images/favicon/favicon.png') }}" type="image/x-icon">
    <link rel="apple-touch-icon" href="{{ asset('images/favicon/favicon.png') }}"> -->
    <script>
      window.Settings = {!! $settings !!};
</script>
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
// Check that service workers are supported
if ('serviceWorker' in navigator) {
  // Use the window load event to keep the page load performant
  window.addEventListener('load', () => {
    navigator.serviceWorker.register('/service-worker.js');
  });
}

$.ajaxSetup({
   headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
   }
});
window.addEventListener('message', receiveMessage, false);

function receiveMessage(event) 
{
   if(event.data!=''){
         
		login(event.data);
	}
	else {
		logout();
	}
}
</script>
@auth  
<script>	 
   function logout( ){
      $.ajax({
         type: "POST",
         url: 'https://awacradio.anywhereanycity.com/logout',
         data: {email: 'string', password: 'string'},
         success: function(data){
            var status = data.email;
            if (status) {
               window.location = 'https://awacradio.anywhereanycity.com/login';
            }
         }
      });
   }
	function alogin( emails ) {
	   $.ajax({
         type: "POST",
         url: 'https://awacradio.anywhereanycity.com/api/login',
         data: {email: emails, password: 'string'},
         success: function(data) {
		          alert(data);
			   var status = data.access_token;
				if (status) {
				   window.location = 'https://awacradio.anywhereanycity.com/login';

				}
         }
      });
   }
   function login( emails ) {
   }
</script>
@else
<script>	 
   function login( emails ) {
	   $.ajax({
         type: "POST",
         url: 'https://awacradio.anywhereanycity.com/api/login',
         data: {email: emails, password: 'string','_token':"{{ csrf_token() }}"},
         success: function(data) {
			   var status = data.access_token;
				if (status) {
					window.location = 'https://awacradio.anywhereanycity.com/home?autologin=1';
				}
         }

      });
   }
   function alogin( emails ) {
	   $.ajax({
         type: "POST",
         url: 'https://awacradio.anywhereanycity.com/api/login',
         data: {email: emails, password: 'string'},
         success: function(data){
            var status = data.access_token;
            if (status) {
               window.location = 'https://awacradio.anywhereanycity.com/login';
            }
         }
      });
   }
</script>
@endauth
<script>
$( document ).ready(function() {
   setTimeout(function() {
      $('button.v-btn.v-btn--block').click();   
   }, 1000);

   $( "button.v-btn.v-btn--block" ).click(function() {
      alert( "Handler for .click() called." );
   });
});
</script>
</head>
<body <?php if(isset($_REQUEST['e'])){ ?> onload="alogin('<?php echo $_REQUEST['e'];?>')" <?php }?> >
<iframe style="display:none;" src="https://anywhereanycity.com/home/"></iframe>
  <div class="loading-background-wrapper" id="spa-loading-page">
    <div class="loader">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
    </div>
</div>
<div id="app">
   <div class="custom_header">
     <div onclick="show_mobile_menu();" id="menu_button" class="menucontainer">
       <div class="bar1"></div>
       <div class="bar2"></div>
       <div class="bar3"></div>
     </div>
     <div id="logo" style="float:left;margin-right: 30px;">
       <a title="AWACRADIO Home" href="https://awacradio.anywhereanycity.com/" class="logo">
         <img style="height: 80px;" class="lazy" alt="" src="https://awacradio.anywhereanycity.com/images/filmlogo.png" style="">
       </a>
     </div>
     <ul id="main_menu" class="nav navbar-nav">
       <li>
         <a href="https://anywhereanycity.com/home">Home</a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/awactv/">AWACTV</a>
       </li>
       <li class="activeli " style="border-bottom: 2px solid #4169e1;">
         <a class="active" href="https://awacradio.anywhereanycity.com/">AWACRADIO </a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/network/">Network</a>
       </li>
       <li>
         <a href="https://events.anywhereanycity.com/">Events </a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/art/">Art</a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/fashion/">Fashion</a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/gallery/">Gallery</a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/marketplace/">Marketplace</a>
       </li>
       <li> @auth @if(Auth::user()->is_admin && Request::segment(count(Request::segments()))=='login') <script>
           setTimeout(function() {
             location.replace("https://awacradio.anywhereanycity.com/admin");
           }, 3000);
         </script> @endif @endauth @auth @if(Auth::user()->is_admin ) <select style="background: #fff;padding: 5px 10px;color:#000;width:118px;border:1px solid #000;" onchange="admin(this.value);" name="admin" class="admin_change ">
           <option value="">Select Admin</option>
           <option value="https://anywhereanycity.com/home/login/admin?e=
						<?php echo Auth::user()->email; ?>">Home </option>
           <option value="https://anywhereanycity.com/awactv?e=
						<?php echo Auth::user()->email; ?>">AWACTV </option>
           <option value="https://awacradio.anywhereanycity.com/?e=
						<?php echo Auth::user()->email; ?>">AWACRADIO </option>
           <option value="https://anywhereanycity.com/art/?e=
						<?php echo Auth::user()->email; ?>">Art </option>
           <option value="https://anywhereanycity.com/gallery/?e=
						<?php echo Auth::user()->email; ?>">Gallery </option>
           <option value="https://events.anywhereanycity.com/?e=
						<?php echo Auth::user()->email; ?>">Events </option>
           <option value="https://anywhereanycity.com/fashion/public/?e=
						<?php echo Auth::user()->email; ?>">Fashion </option>
           <option value="https://anywhereanycity.com/marketplace/?e=
						<?php echo Auth::user()->email; ?>">Marketplace </option>
           <option value="https://anywhereanycity.com/network/?e=
						<?php echo Auth::user()->email; ?>">Network </option>
           <option value="https://anywhereanycity.com/support/?e=
						<?php echo Auth::user()->email; ?>">Support </option>
         </select> @endif @endauth </li>
     </ul>
     <ul id="mobile_menu" style="display:none;" class="">
       <li>
         <a href="https://anywhereanycity.com/home">Home</a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/awactv/">AWACTV</a>
       </li>
       <li class="aciveli">
         <a class="acive" href="https://awacradio.anywhereanycity.com/">AWACRADIO Home</a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/network/">Network</a>
       </li>
       <li>
         <a href="https://events.anywhereanycity.com/">Events </a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/art/">Art</a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/fashion/public/">Fashion</a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/gallery/">Gallery</a>
       </li>
       <li>
         <a href="https://anywhereanycity.com/marketplace/">Marketplace</a>
       </li>
     </ul>
   </div>
  <Master />
</div> 
<script src="{{ asset('js/app_361.js') }}" defer></script>
<div class="footer_custom">
  <div id="example"></div>
  <ul class="footer_bottom">
    <li>
      <a href="https://anywhereanycity.com/home">Home</a>&nbsp;·&nbsp;
    </li>
    <li>
      <a href="https://anywhereanycity.com/support/">Support</a>&nbsp;·&nbsp;
    </li>
    <li>
      <a href="https://anywhereanycity.com/home/newsletter">Subscribe Newsletter</a>
    </li>
  </ul>
  <ul class="socialmedia">
    <li>
      <a href="https://www.facebook.com/Anywhere-Anycity-101512079320321">
        <img src="https://anywhereanycity.com/awactv/socialmedia/facebook.png" />
      </a>
    </li>
    <li>
      <a href="https://www.instagram.com/awactv/ ">
        <img src="https://anywhereanycity.com/awactv/socialmedia/instagram.png" />
      </a>
    </li>
    <li>
      <a href="https://twitter.com/awactvnetwork ">
        <img src="https://anywhereanycity.com/awactv/socialmedia/twitter.png" />
      </a>
    </li>
    <li>
      <a href="https://www.youtube.com/channel/UCas4jScSoTWqErbe">
        <img src="https://anywhereanycity.com/awactv/socialmedia/youtube.png" />
      </a>
    </li>
    <li>
      <a href="https://www.tiktok.com/@anywhereanycity">
        <img src="https://anywhereanycity.com/awactv/socialmedia/tiktok.png" />
      </a>
    </li>
    <li>
      <a href="https://t.snapchat.com/I0XtsIXI">
        <img src="https://anywhereanycity.com/awactv/socialmedia/snapchat.png" />
      </a>
    </li>
  </ul>
  <p class="copyright">© <?php echo date('Y');?> All Rights Reserved by AWACRADIO LLC. </p>
</div>

<script type="text/javascript">
  function admin(value) {
    location.href = value;
  }

  function show_mobile_menu() {
    var className = document.getElementById("mobile_menu").className;
    if (className == 'show-menu') {
      document.getElementById("mobile_menu").className = '';
    } else {
      document.getElementById("mobile_menu").className = 'show-menu';
    }
  }
  
</script>

@auth  
<script type="text/javascript">
 var myVar;    
function showImage() {
var emails = '{{ Auth::user()->email }}';
var url   = 'https://awacradio.anywhereanycity.com/profilepic.php?email='+emails
	var xhttp = new XMLHttpRequest();
	xhttp.open("GET", url, false);
	xhttp.send();
	var image = xhttp.responseText;
	var full_image = "<img src='"+image+"'"+"/>";
	
	if(image)
	{
	   $('.avatar-image').attr("src", image);
	   $('.v-toolbar__content .text-overflow-ellipsis .v-avatar .v-image.v-responsive.theme--light .v-responsive__content').html(full_image);
	 
	}else{
		$('.avatar-image').attr("src", 'https://anywhereanycity.com/network/default.jpg');
	}
      myVar = setTimeout(showImage, 2000);	
	}

setTimeout(showImage, 5000);	
</script>
@endauth
</body>
<style>
  :root{
      --color-primary: {!! $themes['primary']  !!};
      --color-secondary: {!! $themes['secondary']  !!};
      --dark-theme-bg-color: {!! $themes['dark']['background']  !!};
      --dark-theme-text-color:{!! $themes['dark']['text']  !!};
      --dark-theme-panel-bg-color:{!! $themes['dark']['panel']  !!};
      --light-theme-bg-color: {!! $themes['light']['background']  !!};
      --light-theme-text-color:{!! $themes['light']['text']  !!};
      --light-theme-panel-bg-color:{!! $themes['light']['panel']  !!};
      --card-box-shadow: 0px 3px 1px -2px rgba(73, 73, 73, 0.2), 0px 2px 2px 0px rgba(78, 78, 78, 0.14), 0px 1px 5px 0px rgba(77, 77, 77, 0.12);
   }
   #spa-loading-page .loader {
      z-index: -1;
   }
   [href*="/account/settings"] {
      display: none;
   }
   [href*="/admin/users"] {
      display: none;
   }
   [href*="/admin/users"] {
      display: none;
   }
   [href*="/artist/account"] {
      display: none;
   }
   .v-dialog:not(.v-dialog--fullscreen) {
      margin-top: 252px;
      overflow: auto;
   }
   span.v-btn__content:hover {
      background-color: hsla(0,0%,43%,.226);
      padding: 5px  4px;
      border-radius: 15px;
   }
</style>
</html>
