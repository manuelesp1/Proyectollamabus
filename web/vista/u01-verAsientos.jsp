<%@page import="Modelo.U01_Asiento"%>
<%@page import="ModeloDao.U01_PasajeroDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%
    int itinerario_id = Integer.parseInt(request.getParameter("val"));
    double precio = Double.parseDouble(request.getParameter("val2"));
    
    U01_PasajeroDao dao = new U01_PasajeroDao();
    List<U01_Asiento> list = dao.consultarDisponibilidad(itinerario_id);//aqui van los atributos
    Iterator<U01_Asiento> iter = list.iterator();
    U01_Asiento asiento = null;


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="ver-asientos">
            <h3>Seleccione su asiento</h3>
            <div class="bus">
                <div class="grupo">
                    <p class="piso">Primer piso</p>
                    <div class="asientos"> 
                        <div class="fila">
                            <%--=list.get(0).getDisponibilidad()--%>
                            <p class="asiento">1 - <%=list.get(0).getDisponibilidad()%></p>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(2, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">2</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(3, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">3</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(4, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">4</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(5, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">5</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(6, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">6</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(7, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">7</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(8, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">8</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(9, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">9</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(10, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">10</p></a>
                        </div>
                        <div class="fila">
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(11, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">11</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(12, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">12</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(13, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">13</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(14, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">14</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(15, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">15</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(16, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">16</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(17, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">17</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(18, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">18</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(19, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">19</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(20, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">20</p></a>
                        </div>
                    </div>
                </div>
                <div class="grupo">
                    <p class="piso">Segundo piso</p>
                    <div class="asientos">
                        <div class="fila">
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(21, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">21</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(22, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">22</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(23, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">23</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(24, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">24</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(25, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">25</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(26, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">26</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(27, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">27</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(28, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">28</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(29, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">29</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(30, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">30</p></a>
                        </div>
                        <div class="fila">
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(31, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">31</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(32, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">32</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(33, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">33</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(34, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">34</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(35, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">35</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(36, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">36</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(37, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">37</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(38, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">38</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(39, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">39</p></a>
                            <a class="btnAsiento"  name="btnAsiento" onclick="ingresaDatos(40, <%=itinerario_id%>, <%=precio%>)"><p class="asiento">40</p></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
    <script>
        function ingresaDatos(val, val2, val3) {
            $.post("u01-ingresarDatos.jsp", {val: val, val2: val2, val3: val3})
                    .done(function (data) {
                        $('#contenido2').html(data);
//                console.log(data);
                    });
        }
    </script>
</html>
