@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Home Section</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Home Section Information</h1>
        </div>

        <div class="section-body">
            <div class="card card-primary">
                <div class="card-header">
                    <h4>Update Settings</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.home-section-information.update') }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Animation Text One</label>
                                    <input type="text" name="animation_text_one"
                                        value="{{ @$homeSection['animation_text_one'] }}" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Animation Text Two</label>
                                    <input type="text" name="animation_text_two"
                                        value="{{ @$homeSection['animation_text_two'] }}" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Animation Text Three</label>
                                    <input type="text" name="animation_text_three"
                                        value="{{ @$homeSection['animation_text_three'] }}" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Animation Text Four</label>
                                    <input type="text" name="animation_text_four"
                                        value="{{ @$homeSection['animation_text_four'] }}" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="home_section_description" class="form-control">{{ @$homeSection['home_section_description'] }}</textarea>
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
