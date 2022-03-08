<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Reservations
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <!-- Horizontal Form -->
                    <div class="box">
                        <!-- form start -->
                        <form class="form-horizontal" method="post">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="reservationId" class="col-sm-2 control-label">Reservation a editer</label>
                                    <div class="col-sm-10">                 
                                        <select class="form-control" id="reservationId" name="reservationId"> 
                                            <c:forEach items="${listReservation}" var="reservation">                                        
                                                <option value="${reservation.id}">${reservation.id} | Vehicule : ${reservation.vehicleId} Client : ${reservation.clientId} Debut : ${reservation.beginning} Fin : ${reservation.end}</option>   
                                            </c:forEach>                                            
                                        </select>
                                    </div>
                                    <label for="vehicleId" class="col-sm-2 control-label">Voiture</label>
                                    <div class="col-sm-10">                 
                                        <select class="form-control" id="vehicleId" name="vehicleId"> 
                                            <c:forEach items="${listVehicles}" var="vehicle">                                        
                                                <option value="${vehicle.id}">${vehicle.constructor}</option>   
                                            </c:forEach>                                            
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="clientId" class="col-sm-2 control-label">Client</label>

                                    <div class="col-sm-10">
                                        <select class="form-control" id="clientId" name="clientId">
                                            <c:forEach items="${listUsers}" var="user">
                                                <option value="${user.id}">${user.firstName} ${user.lastName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="beginning" class="col-sm-2 control-label">Date de debut</label>
                                    
                                    
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="beginning" name="beginning" required
                                               data-inputmask="'alias': 'yyyy-mm-dd'" data-mask>
                                    </div>
                                    <!--
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="beginning" name="begin" placeholder="Debut">
                                    </div>-->
                                </div>
                                <div class="form-group">
                                    <label for="end" class="col-sm-2 control-label">Date de fin</label>

                                    <!--<div class="col-sm-10">
                                        <input type="text" class="form-control" id="end" name="end" placeholder="Fin">
                                    </div>-->
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="end" name="end" required
                                               data-inputmask="'alias': 'yyyy-mm-dd'" data-mask>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button id="updateButton" type="submit" class="btn btn-info pull-right">Editer</button>
                            </div>
                            <!-- /.box-footer -->
                        </form>
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
        </section>
        <!-- /.content -->
    </div>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>
<!-- ./wrapper -->

<%@ include file="/WEB-INF/views/common/js_imports.jsp" %>
<script src="${pageContext.request.contextPath}/resources/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script>
    $(function () {
        $('[data-mask]').inputmask()
    });
</script>
</body>
</html>
