<section class="services">
    <h2 class="heading">My <span>Services</span></h2>
    <div class="services-container">
        @foreach ($services as $service)
            <div class="services-box">
                <div class="icon">
                    <i class='{{ $service->icon }}'></i>
                    <a href="{{ $service->url }}"><i class='bx bx-arrow-back'></i></a>
                </div>
                <h3>{{ $service->title }}</h3>
                <p>{{ $service->description }}</p>
            </div>
        @endforeach
    </div>
</section>
