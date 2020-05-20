<%@page import="Modelo.Usuario"%>
<% Usuario usr = (Usuario)request.getSession().getAttribute("usuarioActivo"); %>
<nav class="navbar navbar-inverse navbar-fixed-top ">

    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <span class="navbar-brand text-white">SAC</span>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse  text-white" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="principal.jsp">Inicio</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false">Usuarios <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="usuario_v.jsp">Ver Usuarios</a></li>
                        <li><a href="usuario_new.jsp">Nuevo Usuario</a></li>

                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false">Proyectos <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Ver Proyectos</a></li>
                        <li><a href="#">Nuevo Proyecto</a></li>

                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><% out.println(usr.getNombreCompleto()); %> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="usuario_v.jsp">Ver Usuarios</a></li>
                        <li><a href="#">Ver Proyectos</a></li>

                        <li role="separator" class="divider"></li>
                        <li><a href="./logout">Cerrar Sesión</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav>
