<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>SMS || Build with Love</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="resources/vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="resources/vendors/base/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <link rel="stylesheet" href="resources/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/css/customstyle.css">

        <link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet"> 
        <!-- endinject -->
        <link rel="shortcut icon" href="resources/images/logo/favicon3.png" />
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <jsp:include page="/WEB-INF/views/partial/admin/topnav.jsp"></jsp:include>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_sidebar.html -->
                <jsp:include page="/WEB-INF/views/partial/admin/sidebar.jsp"></jsp:include>
                    <!-- partial -->
                    <div class="main-panel">
                        <div class="content-wrapper">
                            <div class="row">
                                <div class="col-md-12 grid-margin">
                                    <div class="card col-md-12 grid-margin school-title">
                                        <center><span class="card-title title-text"><h4>Edufet School Management System</h4></span></center>
                                    </div>
                                    <div class="d-flex justify-content-between flex-wrap">

                                        <div class="d-flex justify-content-between align-items-end flex-wrap">
                                            <button class="btn btn-primary mt-2 mt-xl-0">${time}</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        </div>
                    </div>

            </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:partials/_footer.html -->
                    <jsp:include page="/WEB-INF/views/partial/footer.jsp"></jsp:include>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->

        <!-- plugins:js -->
        <script src="resources/vendors/base/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page-->
        <script src="resources/vendors/chart.js/Chart.min.js"></script>
        <script src="resources/vendors/datatables.net/jquery.dataTables.js"></script>
        <script src="resources/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
        <!-- End plugin js for this page-->
        <!-- inject:js -->
        <script src="resources/js/off-canvas.js"></script>
        <script src="resources/js/hoverable-collapse.js"></script>
        <script src="resources/js/template.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="resources/js/dashboard.js"></script>
        <script src="resources/js/data-table.js"></script>
        <script src="resources/js/jquery.dataTables.js"></script>
        <script src="resources/js/dataTables.bootstrap4.js"></script>
        <!-- End custom js for this page-->
    </body>

</html>

