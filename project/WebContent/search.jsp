<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div id="searchForm" align="center">
        <form action="search.do" method="get" >
            <select name="option">
                <option value="title">����</option>
                <option value="content">����</option>
                <option value="id">�۾���</option>
            </select>
            <input type="text" size="20" name="searchtext"/>&nbsp;
            <input type="submit" value="�˻�"/>
        </form>    
    </div>