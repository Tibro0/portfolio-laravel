<section class="contact">
    <div class="contact-container">
        <div class="contact-box">
            <h2>Let's Work Together</h2>
            <p class="desc">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sint mollitia pariatur
                praesentium dolor animi incidunt in harum temporibus, quisquam natus.</p>
            <div class="contact-detail">
                <i class='bx bxs-phone'></i>
                <div class="detail">
                    <p>Phone</p>
                    <p>(+880) {{ $information['phone'] }}</p>
                </div>
            </div>
            <div class="contact-detail">
                <i class='bx bxs-envelope'></i>
                <div class="detail">
                    <p>Email</p>
                    <p>{{ $information['email'] }}</p>
                </div>
            </div>
            <div class="contact-detail">
                <i class='bx bxs-map'></i>
                <div class="detail">
                    <p>Address</p>
                    <p>{{ $information['address'] }}</p>
                </div>
            </div>
        </div>

        <div class="contact-box">
            <form action="{{ route('contact-form-submit') }}" method="POST">
                @csrf
                <h2 class="heading">Contact <span>Me!</span></h2>
                <div class="field-box">
                    <input type="text" name="name" value="{{ old('name') }}" placeholder="Full Name" required>
                    <input type="email" name="email" value="{{ old('email') }}" placeholder="Email Address"
                        required>
                    <input type="text" name="phone" value="{{ old('phone') }}" placeholder="Phone Number"
                        required>
                    <input type="text" name="email_subject" value="{{ old('email_subject') }}"
                        placeholder="Email Subject" required>
                    <textarea name="message" placeholder="Your Message" required>{{ old('message') }}</textarea>
                </div>
                <button type="submit" class="btn">Send Message</button>
            </form>
        </div>
    </div>
</section>
