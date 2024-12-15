@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Profile</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Profile Page</h1>
        </div>

        <div class="section-body">
            <div class="card card-primary">
                <div class="card-header">
                    <h4>Update Settings</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.profile.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <div id="image-preview" class="image-preview">
                                <label for="image-upload" id="image-label">Choose File</label>
                                <input type="file" name="avatar" id="image-upload">
                                <input type="hidden" name="old_avatar" value="{{ auth()->user()->avatar }}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name" value="{{ auth()->user()->name }}" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" name="email" value="{{ auth()->user()->email }}" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>


            <div class="card card-primary">
                <div class="card-header">
                    <h4>Update Password</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.profile.password.update') }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label>Current Password</label>
                            <input type="password" name="current_password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>New Password</label>
                            <input type="password" name="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Confirm Password</label>
                            <input type="password" name="password_confirmation" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('admin-js')
    <!-- image preview -->
    <script src="{{ asset('admin/assets/modules/upload-preview/assets/js/jquery.uploadPreview.min.js') }}"></script>
    <script>
        $.uploadPreview({
            input_field: "#image-upload", // Default: .image-upload
            preview_box: "#image-preview", // Default: .image-preview
            label_field: "#image-label", // Default: .image-label
            label_default: "Choose File", // Default: Choose File
            label_selected: "Change File", // Default: Change File
            no_label: false, // Default: false
            success_callback: null // Default: null
        });
    </script>
    <script>
        $(document).ready(function() {
            $('.image-preview').css({
                'background-image': 'url({{ asset(auth()->user()->avatar) }})',
                'background-size': 'cover',
                'background-position': 'center center',
            })
        })
    </script>
@endpush
