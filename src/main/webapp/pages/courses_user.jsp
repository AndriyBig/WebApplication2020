<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page import="java.sql.*" %>
<%@ page import="db.ConnectionFactory" %>
<%@ page import="model.Subject" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.SubjectDao" %>
<%@ page import="dao.SubjectDaoImpl" %>

<fmt:setBundle basename="message"/>

<html>

<head>
    <title><fmt:message key="site_title"/></title>
    <style>
        @import "../bootstrap/css/bootstrap.css";
        @import "../bootstrap/css/bootstrap.min.css";
    </style>
</head>
<body>
<div style="padding: 20px">
    <h1><fmt:message key="site_title"/></h1>

<div>
    <h5>
    <fmt:message key="cookie.ChooseLocale" />
    </h5>
    <ul>
        <%--        <li><a href="?cookieLocale=en_US"><fmt:message key="lang.en" /></a></li>--%>
        <li><a href="confirm?cookieLocale=en_US"><fmt:message key="lang.en" /></a></li>
        <%--        <li><a href="?cookieLocale=uk_UA"><fmt:message key="lang.ua" /></a></li>--%>
        <li><a href="confirm?cookieLocale=uk_UA"><fmt:message key="lang.ua" /></a></li>
        <li><a href="confirm?cookieLocale=de_DE"><fmt:message key="lang.de" /></a></li>
    </ul>
</div>

    <form action="/logout" method="get">
        <input type="submit" value=<fmt:message key="user.logout"/>
               name="Submit" id="frm1_submit" />
    </form>

</div>
</body>
</html>

<%--<form action="/logout" method="get">--%>
<%--    <input type="submit" value=<fmt:message key="user.logout"/> id="frm1_submit" />--%>
<%--</form>--%>