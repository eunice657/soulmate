<?php require_once "controllerUserData.php"; ?>

<?php 
$email = $_SESSION['email'];
$password = $_SESSION['password'];
$uid = "";
$tab1 = Array();
$tab2 = Array();
$tab3 = Array();
$tab4 = Array();





if($email != false && $password != false){
    $sql = "SELECT * FROM usertable WHERE email = '$email'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
      $fetch_info = mysqli_fetch_assoc($run_Sql);
      $uid = $fetch_info['uid'];
      //tab 1
        $sql = "SELECT * FROM userprofile WHERE uid = '$uid'";
        $run_Sql = mysqli_query($con, $sql);
        if($run_Sql){
          $fetch_info = mysqli_fetch_assoc($run_Sql);
          $name = $fetch_info['name'];
          $tab1['fname'] = explode(" ",$name)[0];
          $tab1['lname'] = explode(" ",$name)[1]; 
          $tab1['age'] = $fetch_info['age'];
          $tab1['gender'] = $fetch_info['gender'];
          $tab1['height'] = $fetch_info['height'];
          $tab1['weight'] = $fetch_info['weight'];
          // $tab1['latitude'] = $fetch_info['latitude'];
          // $tab1['longitude'] = $fetch_info['longitude'];
          $tab1['profile_photo'] = $fetch_info['profile_photo'];
          $tab1['bio'] = $fetch_info['bio'];
        }
    }
    //tab 2
    $sql = "SELECT * FROM social WHERE uid = '$uid'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
      $fetch_info = mysqli_fetch_assoc($run_Sql);
      $uid = $fetch_info['uid'];
      $tab2['ig'] = $fetch_info['ig'];
      $tab2['sc'] = $fetch_info['sc'];
      $tab2['twit'] = $fetch_info['twit'];
      $tab2['fb'] = $fetch_info['fb'];
    }
    $sql = "SELECT * FROM career WHERE uid = '$uid'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
      $fetch_info = mysqli_fetch_assoc($run_Sql);
      $tab2['status'] = $fetch_info['status'];
      $tab2['job'] = $fetch_info['job_desc'];
      $tab2['college'] = $fetch_info['college'];
      $tab2['entre'] = $fetch_info['entre'];
      $tab2['owns_biz'] = $fetch_info['owns_biz'];
    }
    //tab 3
    $sql = "SELECT * FROM hobbies WHERE uid = '$uid' AND (streaming_movies_and_shows = 1 OR anime = 1 OR stand_up_comedy = 1 OR reading = 1 OR writing = 1 OR meditation = 1 OR music = 1 OR eating = 1 OR dancing = 1 OR singing = 1 OR baking = 1 OR cooking = 1 OR gardening = 1 OR arts_and_crafts = 1 OR painting = 1 OR sketching = 1 OR fishing = 1 OR running = 1 OR walking = 1 OR swimming = 1 OR working_out = 1 OR yoga = 1 OR bicycling = 1 OR driving = 1 OR riding = 1 OR sports = 1 OR video_games = 1 OR travelling = 1 OR hiking = 1 OR collecting = 1 OR volunteer_work = 1 OR working = 1 OR audiobooks_and_podcasts = 1 OR youtube = 1 OR social_media = 1 OR housework = 1 OR shopping = 1 OR coding = 1 OR hacking = 1 OR photoshop = 1 OR video_editing = 1 OR filmmaking = 1 OR science = 1 OR astronomy = 1 OR astrology = 1)";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
      $fetch_info = mysqli_fetch_assoc($run_Sql);
      $tab3['streaming_movies_and_shows'] = $fetch_info['streaming_movies_and_shows'];
      $tab3['anime'] = $fetch_info['anime'];
      $tab3['stand_up_comedy'] = $fetch_info['stand_up_comedy'];
      $tab3['reading'] = $fetch_info['reading'];
      $tab3['writing'] = $fetch_info['writing'];
      $tab3['meditation'] = $fetch_info['meditation'];
      $tab3['music'] = $fetch_info['music'];
      $tab3['eating'] = $fetch_info['eating'];
      $tab3['dancing'] = $fetch_info['dancing'];
      $tab3['singing'] = $fetch_info['singing'];
      $tab3['baking'] = $fetch_info['baking'];
      $tab3['cooking'] = $fetch_info['cooking'];
      $tab3['gardening'] = $fetch_info['gardening'];
      $tab3['arts_and_crafts'] = $fetch_info['arts_and_crafts'];
      $tab3['painting'] = $fetch_info['painting'];
      $tab3['sketching'] = $fetch_info['sketching'];
      $tab3['fishing'] = $fetch_info['fishing'];
      $tab3['running'] = $fetch_info['running'];
      $tab3['walking'] = $fetch_info['walking'];
      $tab3['swimming'] = $fetch_info['swimming'];
      $tab3['working_out'] = $fetch_info['working_out'];
      $tab3['yoga'] = $fetch_info['yoga'];
      $tab3['bicycling'] = $fetch_info['bicycling'];
      $tab3['driving'] = $fetch_info['driving'];
      $tab3['riding'] = $fetch_info['riding'];
      $tab3['sports'] = $fetch_info['sports'];
      $tab3['video_games'] = $fetch_info['video_games'];
      $tab3['travelling'] = $fetch_info['travelling'];
      $tab3['hiking'] = $fetch_info['hiking'];
      $tab3['collecting'] = $fetch_info['collecting'];
      $tab4['volunteer_work'] = $fetch_info['volunteer_work'];
      $tab4['working'] = $fetch_info['working'];
      $tab4['audiobooks_and_podcasts'] = $fetch_info['audiobooks_and_podcasts'];
      $tab4['youtube'] = $fetch_info['youtube'];
      $tab4['social_media'] = $fetch_info['social_media'];
      $tab4['housework'] = $fetch_info['housework'];
      $tab4['shopping'] = $fetch_info['shopping'];
      $tab4['coding'] = $fetch_info['coding'];
      $tab4['hacking'] = $fetch_info['hacking'];
      $tab4['photoshop'] = $fetch_info['photoshop'];
      $tab4['video_editing'] = $fetch_info['video_editing'];
      $tab4['filmmaking'] = $fetch_info['filmmaking'];
      $tab4['science'] = $fetch_info['science'];
      $tab4['astronomy'] = $fetch_info['astronomy'];
      $tab4['astrology'] = $fetch_info['astrology'];
    }
}else{
    header('Location: login-user.php');
}


 // User ID for which you want to fetch common hobbies
 $col_names = ["streaming movies and shows", "anime", "stand up comedy", "reading", "writing", "meditation", "music", "eating", "dancing", "singing", "baking", "cooking", "gardening", "arts and crafts", "painting", "sketching", "fishing", "running", "walking", "swimming", "working out", "yoga", "bicycling", "driving", "riding", "sports", "video games", "travelling", "hiking", "collecting", "volunteer work", "working", "audiobooks and podcasts", "youtube", "social media", "housework", "shopping", "coding", "hacking", "photoshop", "video editing", "filmmaking", "science", "astronomy", "astrology"];
 $common_hobbies = [];
 
 // Fetch the user's hobbies from the database
 $q = "SELECT * FROM hobbies WHERE uid='$uid'";
 $r = mysqli_query($con, $q);
 $row = mysqli_fetch_array($r);
 
 // Check against the list of hobbies to find hobbies
 for ($i = 1; $i < count($col_names) + 1; $i++) {
     if ($row[$i] == 1) {
         array_push($common_hobbies, ucwords($col_names[$i - 1]));
     }
 }
 
 // Output the hobbies
 echo "Common hobbies for user with ID $uid: " . implode(", ", $common_hobbies);
 
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style-form-profile.css">

    <style>
     #delete-icon {
      position: absolute;
      bottom: 15px;
      right: 15px;
     }
     .logo {
      position: absolute;
     }
    </style>
</head>
<body>
  <img id="gif" src="./public/assets/43295-heart-fly-transparent-bg.gif" alt="" >

  <a href="home.php" class="logo" title="Home">
    <img src="./public/assets/SoulMate (3).png" alt="logo" height="50">
  </a> 
  <div class="d-flex vh-100 justify-content-center align-items-center">
 <div class="container align-items-center justify-content-center p-3 position-relative">
  <form action="" method="" autocomplete="off" enctype="multipart/form-data">
<!-- tab 1 -->
   <div class="tab">
    <div class="row justify-content-center">
    <h2 class="text-center">Basic Stuff</h2>
   </div>
   <div class="row justify-content-center">
    <div class="alert alert-danger text-center col-8 error-message"></div>
    <div class="alert alert-success text-center col-8 positive-message">Being honest might just give you more matches!</div>
   </div>
     
   <div class="form-row pl-2">
      <h4>Name</h4>
     </div>
     <div class="form-row">
      <div class="col">
       <input type="text" id="fname" class="form-control" placeholder="First name" name="fname" value="<?php echo $tab1['fname'] ?>">
     </div>
     <div class="col">
       <input type="text" id="lname" class="form-control" placeholder="Last name" name="lname" value="<?php echo $tab1['lname'] ?>">
     </div>
     </div>

     <div class="form-row  mt-3 pl-2">
      <div class="col"><h4>Age</h4></div>
      <div class="col"><h4>Gender</h4></div>
      <div class="col"><h4>Height</h4></div>
      <div class="col"><h4>Weight</h4></div>
     </div>
     <div class="form-row">
      <div class="col">
       <input type="text" id="age" class="form-control" placeholder="18" name="age" value="<?php echo $tab1['age'] ?>">
        <div class="invalid-feedback">You must be 18+ to use our services</div>       
      </div>  
      <div class="col">
       <select class="form-control" id="gender" name="gender">
        <option <?php if($tab1['gender'] != "M" && $tab1['gender'] != "F") {  ?> selected <?php } ?>>Select your gender</option>
        <option value="M" <?php if($tab1['gender'] == "M") {  ?> selected <?php } ?>>Male</option>
        <option value="F" <?php if($tab1['gender'] == "F") {  ?> selected <?php } ?>>Female</option>
       </select>
      </div>
      <div class="col">
       <input type="text" class="form-control" placeholder="Eg. 170cms or 5'5ft" name="height" value="<?php echo $tab1['height'] ?>">
      </div>
      <div class="col">
       <input type="text" class="form-control" placeholder="Eg. 70kgs" name="weight" value="<?php echo $tab1['weight'] ?>">
      </div>
     </div>

     <div class="form-row d-none">
      <div class="col">
       <input type="text" class="form-control" id="lat" name='lat' value="<?php echo $tab1['latitude'] ?>">
      </div>
      <div class="col">
       <input type="text" class="form-control" id="long" name='long' value="<?php echo $tab1['longitude'] ?>">
      </div>
     </div>

     <div class="form-row mt-3 pl-2">
      <div class="col-3">
       <h4>Profile Picture</h4>
       <img id="profile-pic" src="<?php echo $tab1['profile_photo'] ?>" alt="" width="180" height="180" style="border-radius: 50%; object-fit: cover;">
      </div>
      <div class="col-9">
       <h4 title="required">Bio</h4>
       <textarea class="form-control" id="bio" rows="7" placeholder="Make it interesting....&#10;Your goal is to impress....." name="bio"><?php echo $tab1['bio'] ?></textarea>
      </div>
     </div>
   </div>
<!-- tab 2 -->
   <div class="tab">
    <div class="row justify-content-center">
    <h2 class="text-center" id="title">Socials</h2>
   </div>
   <div class="row justify-content-center">
    <!-- <div class="alert alert-danger text-center col-8 d-none">We need your location to provide you the right matches!</div> -->
    <div class="alert alert-success text-center col-8" id="message">Let them connect on social media!</div>
   </div>

    <div class="form-row  mt-3 pl-2">
      <div class="col"><h4>Instagram</h4></div>
      <div class="col"><h4>Twitter</h4></div>
      <div class="col"><h4>Snapchat</h4></div>
      <div class="col"><h4>Facebook</h4></div>
     </div>
     <div class="form-row">
      <div class="col"><input type="text" class="form-control" name="ig" value="<?php echo $tab2['ig'] ?>"></div>
      <div class="col"><input type="text" class="form-control" name="twit" value="<?php echo $tab2['twit'] ?>"></div>
      <div class="col"><input type="text" class="form-control" name="sc" value="<?php echo $tab2['sc'] ?>"></div>
      <div class="col"><input type="text" class="form-control" name="fb" value="<?php echo $tab2['fb'] ?>"></div>
     </div>

   <div class="row justify-content-center mt-3">
    <h2 class="text-center" id="title">Career</h2>
   </div>
   <div class="row justify-content-center">
    <!-- <div class="alert alert-danger text-center col-8 d-none">We need your location to provide you the right matches!</div> -->
    <div class="alert alert-success text-center col-8" id="message">What do you do?</div>
   </div>

   <div class="form-row  mt-3 pl-2">
      <div class="col-3"><h4>Status</h4></div>
      <div class="col-3"><h4 id="job-title">Job</h4></div>
      <div class="col"><h4 id="college-title">Location</h4></div>
    </div>
    <div class="form-row">
      <div class="col-3">
       <select id="status" class="form-control" name="status" onchange="changeStatus();">
        <option <?php if($tab2['status'] != "working" && $tab2['status'] != "student") {  ?> selected <?php } ?>>I am...</option>
        <option value="student" <?php if($tab2['status'] == "student") {  ?> selected <?php } ?>>Student</option>
        <option value="working" <?php if($tab2['status'] == "working") {  ?> selected <?php } ?>>Working</option>
       </select>
      </div>
      <div class="col-3"><input id="job" type="text" class="form-control" placeholder="Eg. Software Developer" name="job" value="<?php echo $tab2['job'] ?>"></div>
      <div class="col input-group"><div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">@</span></div>
        <input type="text" id="college" class="form-control" placeholder="Google Inc" name="college" value="<?php echo $tab2['college'] ?>"></div>
     </div>
     <div class="form-row  mt-3 pl-2">
      <div class="col-4"><h4>Are you an entrepreneur?</h4></div>
      <div class="col"><h4>Your business(es)</h4></div>
    </div>
    <div class="form-row">
     <div class="col-4">
       <select class="form-control" id="entre" name="entre" onchange="changeOwnsBiz();">
        <option value="no" <?php if($tab2['entre'] == "no") {  ?> selected <?php } ?>>No</option>
        <option value="yes" <?php if($tab2['entre'] == "yes") {  ?> selected <?php } ?>>Yes</option>
       </select>
      </div>
      <div class="col">
       <input type="text" class="form-control" id="owns-biz" name="owns_biz" value="<?php echo $tab2['owns_biz'] ?>">
      </div>
    </div>
   </div>


<!-- toggle stuff -->
   <button type="button" class="btn btn-sm btn-outline-secondary previous" disabled>Previous</button>
   <button type="button" class="btn btn-sm btn-outline-success next">Next</button>
   
   <input type="submit" class="btn btn-sm btn-success submit-btn" name="profile-edit-submit" value="Submit">

   <div class="dots mb-3">
     <span class="step" onclick="showTab(0)"></span>
     <span class="step" onclick="showTab(1)"></span>
   </div>
  </form>
 </div>


  <div class="modal fade" id="confirm-delete-profile" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenterTitle">Delete Profile</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p>Clicking on yes will <b>PERMANENTLY DELETE</b> your profile</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Oops, my bad!</button>
          <form method="post"><button type="submit" class="btn btn-danger" value="delete profile" name="delete-profile">Yes, do it!</button></form>
        </div>
      </div>
    </div>
  </div> 

  <button class="btn btn-warning" id="delete-icon" title="Delete profile" data-toggle="modal" data-target="#confirm-delete-profile"><i class="fas fa-user-minus"></i></button>
 </div>
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="./js/profile.js"></script>

</body>
</html>