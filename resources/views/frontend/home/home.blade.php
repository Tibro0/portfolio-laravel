<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio Website</title>
    <!-- Add this to avoid blank WhatsApp previews -->
    <meta property="og:image:alt" content="Faysal Hossain - Full Stack Developer Portfolio">
    <!-- Standard Meta Tags -->
    <meta name="keywords"
        content="Full Stack Developer, Laravel Developer, PHP Developer, Web Developer, JavaScript, Bootstrap 5, HTML5, CSS3, Freelancer, Portfolio">
    <meta name="author" content="MD. Faysal Hossain Tibro">
    <meta name="robots" content="index, follow">
    <!-- Open Graph (Facebook/WhatsApp) -->
    <meta property="og:title" content="MD. Faysal Hossain Tibro | Full Stack Web Developer">
    <meta property="og:description"
        content="Professional Full Stack Developer | Laravel, PHP, JavaScript | Freelance Portfolio">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://devtibro.com/"> <!-- ✅ Good! -->
    <meta property="og:image" content="https://devtibro.com/frontend/images/profile.png"> <!-- CRITICAL FIX -->
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta property="og:site_name" content="Faysal's Portfolio">
    <meta property="og:locale" content="en_US">

    <!-- Twitter Card (Recommended) -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="MD. Faysal Hossain Tibro | Full Stack Web Developer">
    <meta name="twitter:description" content="Laravel, PHP, JavaScript Developer | Freelance Portfolio">
    <meta name="twitter:image" content="https://devtibro.com/frontend/images/profile.png"> <!-- 1200x675px -->

    <!-- box icons-->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- toastr css links -->
    <link rel="stylesheet" href="{{ asset('admin/assets/css/toastr.min.css') }}">
    <!-- custom css -->
    <link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}">
</head>

<body>
    <!-- header menu start -->
    @include('frontend.home.components.header-section')
    <!-- header menu end -->

    <!-- bars background start -->
    <div class="bars-box active">
        <div class="bar" style="--i:6"></div>
        <div class="bar" style="--i:5"></div>
        <div class="bar" style="--i:4"></div>
        <div class="bar" style="--i:3"></div>
        <div class="bar" style="--i:2"></div>
        <div class="bar" style="--i:1"></div>
    </div>
    <!-- bars background end -->

    <!-- home hero section start -->
    @include('frontend.home.components.hero-section')
    <!-- home hero section end -->

    <!-- services section start -->
    @include('frontend.home.components.services-section')
    <!-- services section end -->

    <!-- resume section start -->
    @include('frontend.home.components.resume-section')
    <!-- resume section end -->

    <!-- portfolio section start -->
    @include('frontend.home.components.portfolio-section')
    <!-- portfolio section end -->

    <!-- contact section start -->
    @include('frontend.home.components.contact-section')
    <!-- contact section end -->

    <!-- custom js -->
    <script src="{{ asset('frontend/js/script.js') }}"></script>
    <!-- toastr js links -->
    <script src="{{ asset('admin/assets/js/toastr.min.js') }}"></script>
    <!-- show dynamic validation message-->
    <script>
        toastr.options.progressBar = true;
        @if ($errors->any())
            @foreach ($errors->all() as $error)
                toastr.error("{{ $error }}")
            @endforeach
        @endif
    </script>
</body>

</html>
