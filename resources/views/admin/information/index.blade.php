@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Information</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Information Page</h1>
        </div>

        <div class="section-body">
            <div class="card card-primary">
                <div class="card-header">
                    <h4>Update Settings</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.information.update') }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>First Name</label>
                                    <input type="text" name="first_name" value="{{ @$information['first_name'] }}"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <input type="text" name="last_name" value="{{ @$information['last_name'] }}"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Phone(+88)</label>
                                    <input type="text" name="phone" value="{{ @$information['phone'] }}"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="text" name="email" value="{{ @$information['email'] }}"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Github Link</label>
                                    <input type="text" name="github_link" value="{{ @$information['github_link'] }}"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Linkedin Link</label>
                                    <input type="text" name="linkedin_link" value="{{ @$information['linkedin_link'] }}"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Facebook Link</label>
                                    <input type="text" name="facebook_link" value="{{ @$information['facebook_link'] }}"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Whatsapp Link</label>
                                    <input type="text" name="whatsapp_link" value="{{ @$information['whatsapp_link'] }}"
                                        class="form-control">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Experience</label>
                                    <input type="text" name="experience" value="{{ @$information['experience'] }}"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>City</label>
                                    <input type="text" name="city" value="{{ @$information['city'] }}"
                                        class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Nationality</label>
                                    <input type="text" name="nationality"
                                        value="{{ @$information['nationality'] }}"class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Age</label>
                                    <input type="text" name="age"
                                        value="{{ @$information['age'] }}"class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Language</label>
                                    <input type="text" name="language"
                                        value="{{ @$information['language'] }}"class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Gender</label>
                                    <input type="text" name="gender"
                                        value="{{ @$information['gender'] }}"class="form-control">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Full Time</label>
                                    <select name="full_time" class="form-control">
                                        <option value="">Select</option>
                                        <option @selected(@$information['full_time'] === 'Available') value="Available">Available</option>
                                        <option @selected(@$information['full_time'] === 'Not Available') value="Not Available">Not Available</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Freelancer</label>
                                    <select name="freelancer" class="form-control">
                                        <option value="">Select</option>
                                        <option @selected(@$information['freelancer'] === 'Available') value="Available">Available</option>
                                        <option @selected(@$information['freelancer'] === 'Not Available') value="Not Available">Not Available</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Status</label>
                                    <select name="status" class="form-control">
                                        <option value="">Select</option>
                                        <option @selected(@$information['status'] === 'Married') value="Married">Married</option>
                                        <option @selected(@$information['status'] === 'UnMarried') value="UnMarried">UnMarried</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Address</label>
                                    <textarea name="address" class="form-control">{{ @$information['address'] }}</textarea>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
