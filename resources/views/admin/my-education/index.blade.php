@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | My Education</title>
    <!-- datatables css links -->
    <link rel="stylesheet" href="{{ asset('admin/assets/css/datatables.min.css') }}">
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>My Education</h1>
        </div>
        <div class="card card-primary">
            <div class="card-header">
                <h4>My Education Description</h4>
            </div>
            <form action="{{ route('admin.my-education-short-description.update') }}" method="POST">
                @csrf
                @method('PUT')
                <div class="card-body">
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" name="my_education_short_description"
                            value="{{ @$description['my_education_short_description'] }}" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </section>


    <section class="section">
        <div class="card card-primary">
            <div class="card-header">
                <h4>All My Education</h4>
                <div class="card-header-action">
                    <a href="{{ route('admin.my-education.create') }}" class="btn btn-primary">Create new</a>
                </div>
            </div>
            <div class="card-body">
                {{ $dataTable->table() }}
            </div>
        </div>
    </section>
@endsection

@push('admin-js')
    <!-- datatables js links -->
    <script src="{{ asset('admin/assets/js/dataTables.min.js') }}"></script>
    <script src="{{ asset('admin/assets/js/bootstrap4-dataTables.min.js') }}"></script>
    {{ $dataTable->scripts(attributes: ['type' => 'module']) }}
    <!-- sweetalert2 js -->
    <script src="{{ asset('admin/assets/js/page/sweetalert2.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('body').on('click', '#delete', function(e) {
                e.preventDefault()
                let url = $(this).attr('href');
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {

                        $.ajax({
                            method: 'DELETE',
                            url: url,
                            data: {
                                _token: "{{ csrf_token() }}"
                            },
                            success: function(response) {
                                if (response.status === 'success') {
                                    toastr.success(response.message)

                                    window.location.reload();

                                } else if (response.status === 'error') {
                                    toastr.error(response.message)
                                }
                            },
                            error: function(error) {
                                console.error(error);
                            }
                        })
                    }
                })
            })
        })
    </script>
@endpush
