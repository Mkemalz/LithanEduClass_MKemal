<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/home2.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <title>home ABC</title>
</head>
<body>

    <header>
      <nav>
            <div class="logo">
                <img src="img/logo2.png" alt="" width="100">
            </div>
            <ul>
                <li><a href="login">Sigin</a></li>
               
            </ul>
        </nav>
    </header>


    <section>
        <div class="circle"></div>
        <div class="content">
            <div class="textBox">
                <h2>Hi Welcome <br>To <span>ABC Jobs</span></h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur tenetur unde possimus
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia illo error. 
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Mollitia illo error.
                </p>
                <a href="register">SignUp</a>
            </div>
            <div class="imgBox">
                <img src="img/bglogin.jpgtaienak.png" class="starbucks" alt="">
            </div>
        </div>
        <ul class="thumb">
            <li><img src="img/bglogin.jpgthumb1.png" onclick="imgSlider('img/bglogin.jpgtaienak.png');changeCircleColor('#017143')" alt=""></li>
            <li><img src="img/bglogin.jpgthumb2.png" onclick="imgSlider('img/bglogin.jpgimg2.png');changeCircleColor('#eb7495')" alt=""></li>
            <li><img src="img/bglogin.jpgthumb3.png" onclick="imgSlider('img/bglogin.jpgimg3.png');changeCircleColor('#d752b1')" alt=""></li>
          </ul>
        <ul class="sci">
            <li><a href=""><img src="img/.jpgfacebook.png" alt=""></a></li>
            <li><a href=""><img src="img/.jpgtwitter.png" alt=""></a></li>
            <li><a href=""><img src="img/.jpginstagram.png" alt=""></a></li>
        </ul>



        
    </section>

    <section class="about-abc-jobs">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>Tentang ABC Jobs</h2>
                <p>
                    ABC Jobs adalah platform pekerjaan yang mempertemukan pencari kerja dengan beragam peluang pekerjaan di berbagai industri. Kami menawarkan antarmuka yang mudah digunakan untuk memudahkan pencarian kerja dan proses perekrutan bagi perusahaan.
                </p>
                <p>
                    Dengan lebih dari 100.000 pekerjaan aktif, ABC Jobs membantu Anda menemukan pekerjaan yang sesuai dengan kemampuan dan tujuan karier Anda.
                </p>
            </div>
            <div class="col-md-6">
                <img src="img/bglogin.jpg" alt="Logo ABC Jobs" class="img-fluid">
            </div>
        </div>
    </div>
</section>

<section class="user-benefits">
    <div class="container">
        <h2>Keuntungan Menggunakan ABC Jobs</h2>
        <div class="row">
            <div class="col-md-4">
                <h4>Peluang Karier</h4>
                <p>Tersedia beragam posisi pekerjaan dari perusahaan terkemuka.</p>
            </div>
            <div class="col-md-4 ms-3 mx-3">
                <h4>Kemudahan Pencarian</h4>
                <p>Antarmuka pencarian pekerjaan yang intuitif dan personalisasi.</p>
            </div>
            <div class="col-md-4">
                <h4>Perekrutan Efektif</h4>
                <p>Perusahaan dapat mencari kandidat berkualitas dengan cepat.</p>
            </div>
        </div>
    </div>
</section>

<!-- <section class="user-testimonials">
    <div class="container">
        <h2>Pendapat Pengguna</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="testimonial">
                    <img src="img/bglogin.jpg" alt="User 1" class="img/bglogin.jpg">
                    <p>"Saya menemukan pekerjaan impian saya melalui ABC Jobs. Terima kasih!"</p>
                    <p class="user-name">John Doe</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial">
                    <img src="img/bglogin.jpg" alt="User 2" class="img/bglogin.jpg">
                    <p>"Pencarian pekerjaan belum pernah semudah ini. Saya sangat merekomendasikan ABC Jobs!"</p>
                    <p class="user-name">Jane Smith</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial">
                    <img src="img/bglogin.jpg alt="User 3" class="img/bglogin.jpg">
                    <p>"Saya merekrut karyawan berkualitas melalui ABC Jobs. Prosesnya sangat lancar."</p>
                    <p class="user-name">Michael Johnson</p>
                </div>
            </div>
        </div>
    </div>
</section> -->

<section class="featured-jobs">
    <div class="container">
        <h2>Pekerjaan Terbaru</h2>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/bglogin.jpg" class="card-img-top" alt="Pekerjaan 1">
                    <div class="card-body">
                        <h5 class="card-title">Front-End Developer</h5>
                        <p class="card-text">Bergabung dengan tim kreatif kami dalam mengembangkan antarmuka pengguna yang menarik.</p>
                        <a href="#" class="btn btn-primary">Lihat Detail</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/bglogin.jpg" class="card-img-top" alt="Pekerjaan 2">
                    <div class="card-body">
                        <h5 class="card-title">Digital Marketing Specialist</h5>
                        <p class="card-text">Tingkatkan visibilitas merek kami dan strategikan kampanye pemasaran digital.</p>
                        <a href="#" class="btn btn-primary">Lihat Detail</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="img/bglogin.jpg" class="card-img-top" alt="Pekerjaan 3">
                    <div class="card-body">
                        <h5 class="card-title">Data Analyst</h5>
                        <p class="card-text">Analisis data yang mendalam untuk memberikan wawasan berharga bagi bisnis kami.</p>
                        <a href="#" class="btn btn-primary">Lihat Detail</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


    

    <script type="text/javascript">
        function imgSlider(anytihing){
            document.querySelector('.starbucks').src = anytihing;
        }
        
        function changeCircleColor(color){
            const circle = document.querySelector('.circle');
            circle.style.background = color;
        }

        function imgSlider(anytihing){
            document.querySelector('.starbucks').src = anytihing;
        }
        
        function changeCircleColor(color){
            const circle = document.querySelector('.circle');
            circle.style.background = color;
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>