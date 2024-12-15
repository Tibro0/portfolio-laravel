<section class="portfolio">
    <h2 class="heading">Latest <span>Project</span></h2>
    <div class="portfolio-container">
        <div class="portfolio-box">
            @foreach ($portfolios as $portfolio)
                @if ($loop->index == 0)
                    <div class="portfolio-detail {{ $loop->index == 0 ? 'active' : '' }}">
                        <p class="numb">01</p>
                        <h3>{{ $portfolio->title }}</h3>
                        <p>{{ $portfolio->description }}</p>
                        <div class="tech">
                            <p>{{ $portfolio->language }}</p>
                        </div>
                        <div class="live-github">
                            <a href="{{ $portfolio->live_link }}"><i class='bx bx-arrow-back'></i><span>Live
                                    Project</span></a>
                            <a href="{{ $portfolio->github_link }}"><i class='bx bxl-github'></i><span>Github
                                    Repository</span></a>
                        </div>
                    </div>
                @elseif ($loop->index == 1)
                    <div class="portfolio-detail">
                        <p class="numb">02</p>
                        <h3>{{ $portfolio->title }}</h3>
                        <p>{{ $portfolio->description }}</p>
                        <div class="tech">
                            <p>{{ $portfolio->language }}</p>
                        </div>
                        <div class="live-github">
                            <a href="{{ $portfolio->live_link }}"><i class='bx bx-arrow-back'></i><span>Live
                                    Project</span></a>
                            <a href="{{ $portfolio->github_link }}"><i class='bx bxl-github'></i><span>Github
                                    Repository</span></a>
                        </div>
                    </div>
                @elseif ($loop->index == 2)
                    <div class="portfolio-detail">
                        <p class="numb">03</p>
                        <h3>{{ $portfolio->title }}</h3>
                        <p>{{ $portfolio->description }}</p>
                        <div class="tech">
                            <p>{{ $portfolio->language }}</p>
                        </div>
                        <div class="live-github">
                            <a href="{{ $portfolio->live_link }}"><i class='bx bx-arrow-back'></i><span>Live
                                    Project</span></a>
                            <a href="{{ $portfolio->github_link }}"><i class='bx bxl-github'></i><span>Github
                                    Repository</span></a>
                        </div>
                    </div>
                @elseif ($loop->index == 3)
                    <div class="portfolio-detail">
                        <p class="numb">04</p>
                        <h3>{{ $portfolio->title }}</h3>
                        <p>{{ $portfolio->description }}</p>
                        <div class="tech">
                            <p>{{ $portfolio->language }}</p>
                        </div>
                        <div class="live-github">
                            <a href="{{ $portfolio->live_link }}"><i class='bx bx-arrow-back'></i><span>Live
                                    Project</span></a>
                            <a href="{{ $portfolio->github_link }}"><i class='bx bxl-github'></i><span>Github
                                    Repository</span></a>
                        </div>
                    </div>
                @elseif ($loop->index == 4)
                    <div class="portfolio-detail">
                        <p class="numb">05</p>
                        <h3>{{ $portfolio->title }}</h3>
                        <p>{{ $portfolio->description }}</p>
                        <div class="tech">
                            <p>{{ $portfolio->language }}</p>
                        </div>
                        <div class="live-github">
                            <a href="{{ $portfolio->live_link }}"><i class='bx bx-arrow-back'></i><span>Live
                                    Project</span></a>
                            <a href="{{ $portfolio->github_link }}"><i class='bx bxl-github'></i><span>Github
                                    Repository</span></a>
                        </div>
                    </div>
                @elseif ($loop->index == 5)
                    <div class="portfolio-detail">
                        <p class="numb">06</p>
                        <h3>{{ $portfolio->title }}</h3>
                        <p>{{ $portfolio->description }}</p>
                        <div class="tech">
                            <p>{{ $portfolio->language }}</p>
                        </div>
                        <div class="live-github">
                            <a href="{{ $portfolio->live_link }}"><i class='bx bx-arrow-back'></i><span>Live
                                    Project</span></a>
                            <a href="{{ $portfolio->github_link }}"><i class='bx bxl-github'></i><span>Github
                                    Repository</span></a>
                        </div>
                    </div>
                @endif
            @endforeach
        </div>

        <div class="portfolio-box">
            <!-- images carousel -->
            <div class="portfolio-carousel">
                <div class="img-slide">
                    @foreach ($portfolios as $portfolio)
                        @if ($loop->index == 0)
                            <div class="img-item {{ $loop->index == 0 ? 'active' : '' }}">
                                <img src="{{ asset($portfolio->image) }}">
                            </div>
                        @elseif ($loop->index == 1)
                            <div class="img-item">
                                <img src="{{ asset($portfolio->image) }}">
                            </div>
                        @elseif ($loop->index == 2)
                            <div class="img-item">
                                <img src="{{ asset($portfolio->image) }}">
                            </div>
                        @elseif ($loop->index == 3)
                            <div class="img-item">
                                <img src="{{ asset($portfolio->image) }}">
                            </div>
                        @elseif ($loop->index == 4)
                            <div class="img-item">
                                <img src="{{ asset($portfolio->image) }}">
                            </div>
                        @elseif ($loop->index == 5)
                            <div class="img-item">
                                <img src="{{ asset($portfolio->image) }}">
                            </div>
                        @endif
                    @endforeach
                </div>
            </div>

            <div class="navigation">
                <button class="arrow-left disabled"><i class='bx bx-chevron-left'></i></button>
                <button class="arrow-right"><i class='bx bx-chevron-right'></i></button>
            </div>
        </div>
    </div>
</section>
