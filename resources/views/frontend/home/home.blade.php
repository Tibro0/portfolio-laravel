<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio Website</title>
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
