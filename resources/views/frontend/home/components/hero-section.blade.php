<section class="home active">
    <div class="home-detail">
        <h1>{{ $information['first_name'] }} {{ $information['last_name'] }}</h1>
        <h2>I'm a
            <span style="--i:4;"
                data-text="{{ $information['animation_text_one'] }}">{{ $information['animation_text_one'] }}</span>
            <span style="--i:3;"
                data-text="{{ $information['animation_text_two'] }}">{{ $information['animation_text_two'] }}</span>
            <span style="--i:2;"
                data-text="{{ $information['animation_text_three'] }}">{{ $information['animation_text_three'] }}</span>
            <span style="--i:1;"
                data-text="{{ $information['animation_text_four'] }}">{{ $information['animation_text_four'] }}</span>
        </h2>
        <p>{{ $information['home_section_description'] }}</p>
        <div class="btn-sci">
            <a href="#" class="btn">Download CV</a>
            <div class="sci">
                <a target="_blank" href="{{ $information['github_link'] }}"><i class='bx bxl-github'></i></a>
                <a target="_blank" href="{{ $information['linkedin_link'] }}"><i class='bx bxl-linkedin'></i></a>
                <a target="_blank" href="{{ $information['facebook_link'] }}"><i class='bx bxl-facebook'></i></a>
                <a target="_blank" href="{{ $information['whatsapp_link'] }}"><i class='bx bxl-whatsapp'></i></a>
            </div>
        </div>
    </div>


    <div class="home-img">
        <div class="img-box">
            <div class="img-item">
                <img src="{{ asset($userAvatar->avatar) }}">
            </div>
        </div>
    </div>
</section>
