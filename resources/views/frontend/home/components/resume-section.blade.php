<section class="resume">
    <div class="resume-container">
        <div class="resume-box">
            <h2>Why Hire Me?</h2>
            <p class="desc">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic alias, libero quia
                numquam modi iste.</p>
            <button class="resume-btn active">Experience</button>
            <button class="resume-btn">Education</button>
            <button class="resume-btn">Skills</button>
            <button class="resume-btn">About Me</button>
        </div>

        <div class="resume-box">
            <div class="resume-detail experience active">
                <h2 class="heading">My <span>Experience</span></h2>
                <p class="desc">{{ $information['my_experience_short_description'] }}</p>
                <div class="resume-list">
                    @foreach ($MyExperiences as $MyExperience)
                        <div class="resume-item">
                            <p class="year">{{ $MyExperience->years }}</p>
                            <h3>{{ $MyExperience->title }}</h3>
                            <p class="company">{{ $MyExperience->company_name }}</p>
                            <p>{{ $MyExperience->description }}</p>
                        </div>
                    @endforeach
                </div>
            </div>

            <div class="resume-detail education">
                <h2 class="heading">My <span>Education</span></h2>
                <p class="desc">{{ $information['my_education_short_description'] }}</p>
                <div class="resume-list">
                    @foreach ($MyEducations as $MyEducation)
                        <div class="resume-item">
                            <p class="year">{{ $MyEducation->years }}</p>
                            <h3>{{ $MyEducation->course_name }}</h3>
                            <p class="company">{{ $MyEducation->company_name }}</p>
                            <p>{{ $MyEducation->description }}</p>
                        </div>
                    @endforeach
                </div>
            </div>

            <div class="resume-detail skills">
                <h2 class="heading">My <span>Skills</span></h2>
                <p class="desc">{{ $information['my_skill_short_description'] }}</p>
                <div class="resume-list">
                    @foreach ($MySkills as $MySkill)
                        <div class="resume-item">
                            <i class='{{ $MySkill->icon }}'></i>
                            <span>{{ $MySkill->icon_name }}</span>
                        </div>
                    @endforeach
                </div>
            </div>

            <div class="resume-detail about">
                <h2 class="heading">About <span>Me</span></h2>
                <p class="desc">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Atque tempora quam sunt
                    expedita, harum ipsum eaque consequuntur obcaecati soluta vel.</p>
                <div class="resume-list">
                    <div class="resume-item">
                        <p>Name <span>{{ $information['first_name'] }} {{ $information['last_name'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Gender <span>{{ $information['gender'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Age <span>{{ $information['age'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Status <span>{{ $information['status'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>City <span>{{ $information['city'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Nationality <span>{{ $information['nationality'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Experience <span>{{ $information['experience'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Full Time <span>{{ $information['full_time'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Freelancer <span>{{ $information['freelancer'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Phone <span>(+880) {{ $information['phone'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Email <span>{{ $information['email'] }}</span></p>
                    </div>
                    <div class="resume-item">
                        <p>Language <span>{{ $information['language'] }}</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
