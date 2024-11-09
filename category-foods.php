<?php include('partials-front/menu-front.php');?>
<?php
 //check whether id is passed or not
 if(isset($_GET['category_id']))
 {
    //category id is set and get the id
    $category_id=$_GET['category_id'];

    //get category based on category ID
    $sql="SELECT title from tbl_category WHERE id=$category_id";

    //execute query
    $res=mysqli_query($conn,$sql);

    //get the value from database
    $row=mysqli_fetch_assoc($res);

    //get title
    $category_title=$row['title'];
    
 }
 else{
    //category not passed
    //redirect to homepage
    header("location:".SITEURL);
 }
?>

    <!-- FOOD SEARCH Section Starts Here -->
    <section class="food-search text-center">
        <div class="container">
            
            <h2>Menu on <a href="#" class="text-brown"><?php echo "'$category_title'";?></a></h2>

        </div>
    </section>
    <!-- fOOD sEARCH Section Ends Here -->



    <!-- fOOD MEnu Section Starts Here -->
    <section class="food-menu">
        <div class="container">
            <h2 class="text-center">Food Menu</h2>

            <?php
            //create sql query based on selected category
            $sql2="SELECT * FROM tbl_food WHERE category_id=$category_id";

            //execute query
            $res2=mysqli_query($conn,$sql2);

            //count rows
            $count2=mysqli_num_rows($res2);

            //check whether food is available or not
            if($count2>0)
            {
                //food available
                while($row2=mysqli_fetch_assoc($res2))
                {
                    $id=$row2['id'];
                   $title=$row2['title'];
                   $price=$row2['price'];
                   $description=$row2['description'];
                   $image_name=$row2['image_name'];
                   ?>

            <div class="food-menu-box">
                 <div class="food-menu-img">
                    <?php
                      if($image_name=="")
                      {
                          //image not available
                          echo"<div class='error'>Image not Found </div>";
                      }
                      else{
                        //image available
                        ?>
                          
                          <img src="<?php echo SITEURL;?>images/food/<?php echo $image_name; ?>"class="img-responsive img-curve"> 
                          <?php
                      }
  
                      ?>
                </div>

                <div class="food-menu-desc">
                    <h4><?php echo $title;?></h4>
                    <p class="food-price">Rs.<?php echo $price;?></p>
                    <p class="food-detail">
                       <?php echo $description;?>
                    </p>
                    <br>

                    <a href="<?php echo SITEURL; ?>order.php?food_id=<?php echo $id; ?>" class="btn btn-primary">Order Now</a>
                </div>
              </div>



                   <?php
                }
            }
            else
            {
                //food unavailable
                echo"<div class='error'>Food not available</div>";
            }
            ?>
        </div>
        <div class="clearfix"></div>
    </section>
    
           
    <!-- fOOD Menu Section Ends Here -->

    <?php include('partials-front/footer-front.php');?>

    <!-- Adding javascript -->
<script src="action/action.js"></script>