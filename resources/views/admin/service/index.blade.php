@extends('admin.layouts.master')

@push('admin-css')
    <title>Admin | Service Section</title>
    <!-- datatables css links -->
    <link rel="stylesheet" href="{{ asset('admin/assets/css/datatables.min.css') }}">
    <!-- BoxIcon css links -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
@endpush

@section('admin-content')
    <section class="section">
        <div class="section-header">
            <h1>Service Section</h1>
        </div>

        <div class="card card-primary">
            <div class="card-header">
                <h4>All Service Section</h4>
                <div class="card-header-action">
                    <a href="{{ route('admin.service.create') }}" class="btn btn-primary">Create new</a>
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
