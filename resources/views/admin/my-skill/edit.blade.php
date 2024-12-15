@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Update My Skills</title>
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Update My Skills</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>Update My Skills</h4>

            </div>
            <div class="card-body">
                <form action="{{ route('admin.my-skill.update', $skill->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label>Icon(BoxIcon)</label>
                        <input type="text" name="icon" value="{{ $skill->icon }}" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Icon Name</label>
                        <input type="text" name="icon_name" value="{{ $skill->icon_name }}" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </section>
@endsection
