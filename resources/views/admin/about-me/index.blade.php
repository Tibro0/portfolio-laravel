@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | About Me</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>About Me Short Description</h1>
        </div>
        <div class="section-body">
            <div class="card card-primary">
                <div class="card-header">
                    <h4>Update About Me Short Description</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.about-me-short-description.update') }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>About Me Short Description</label>
                                    <textarea name="about_me_short_description" class="form-control">{{ @$description['about_me_short_description'] }}</textarea>
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
