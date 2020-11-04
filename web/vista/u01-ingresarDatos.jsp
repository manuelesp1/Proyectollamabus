<%
    int itinerario_id = Integer.parseInt(request.getParameter("val2"));
    int nom_asiento = Integer.parseInt(request.getParameter("val"));
    double precio = Double.parseDouble(request.getParameter("val3"));
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
        <section class="ingresar-datos">
            <h3>Ingrese sus datos</h3>
            <div class="muestra-form">
                <form action="<%=request.getContextPath()%>/Controlador" method="post">
                    itinerario: <%=itinerario_id%>
                    numero de asiento: <%=nom_asiento%>
                    <table class="formulario">
                        <tr>
                            <td class="izq">Tipo de documento: </td>
                            <td>
                                <select name="tipo" id="tipo-doc">
                                    <option value="1">DNI</option>
                                    <option value="3">Carnet de extranjería</option>
                                    <option value="2">Pasaporte</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="numdoc">Número de documento: </label>
                            </td>
                            <td>
                                <input type="text" name="numdoc" id="numdoc" placeholder="Ingrese su numero de documento">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="nombre">Nombre: </label>
                            </td>
                            <td>
                                <input type="text" name="nombre" id="nombre" placeholder="Ingrese sus nombres">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="apepat">Apellido paterno: </label>
                            </td>
                            <td>
                                <input type="text" name="apepat" id="apepat" placeholder="Ingrese su apellido paterno">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="apemat">Apellido materno: </label>
                            </td>
                            <td>
                                <input type="text" name="apemat" id="apemat" placeholder="Ingrese su apellido materno">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="edad">Edad: </label>
                            </td>
                            <td>
                                <input type="text" name="edad" id="edad" placeholder="Ingrese su edad">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="sexo">Sexo: </label>
                            </td>
                            <td>
                                <select name="sexo" id="sexo">
                                    <option value="">Seleccione</option>
                                    <option value="H">Hombre</option>
                                    <option value="M">Mujer</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="telef">Telefono</label>
                            </td>
                            <td>
                                <input type="tel" placeholder="Ingrese su telefono" name="telef" id="telef">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="correo">Correo</label>
                            </td>
                            <td>
                                <input type="email" name="correo" id="correo" placeholder="Ingrese su correo">
                                <input type="hidden" name="itinerario_id" value="<%=itinerario_id%>">
                                <input type="hidden" name="nom_asiento" value="<%=nom_asiento%>">
                                <input type="hidden" name="usuario_id" value="1">
                                <input type="hidden" name="precio" value="<%=precio%>"
                            </td>
                        </tr>
                    </table>
                    <div class="submit">
                        <input type="submit" name="accion" value="Agregar">
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>
