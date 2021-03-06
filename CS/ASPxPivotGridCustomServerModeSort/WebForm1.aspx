﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASPxPivotGridCustomServerModeSort.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, 
PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, 
PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" 
            DataSourceID="EntityServerModeDataSource1" EnableTheming="True" Theme="Metropolis" 
            oncustomservermodesort="ASPxPivotGrid1_CustomServerModeSort">
            <Fields>
                <dx:PivotGridField ID="fieldOrderMonth" Area="ColumnArea" AreaIndex="1" 
                    Caption="Month" FieldName="OrderDate" GroupInterval="DateMonth" 
                    UnboundFieldName="fieldOrderMonth">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldPrice" Area="DataArea" AreaIndex="0" 
                    Caption="Price" FieldName="Extended_Price">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldOrderYear" Area="ColumnArea" AreaIndex="0" 
                Caption="Year" FieldName="OrderDate" GroupInterval="DateYear" UnboundFieldName="field">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0" 
                FieldName="CategoryName" Caption="Category" >
                </dx:PivotGridField>
            </Fields>
        </dx:ASPxPivotGrid>
        <dx:EntityServerModeDataSource ID="EntityServerModeDataSource1" 
            runat="server" 
            ContextTypeName="ASPxPivotGridCustomServerModeSort.nwindEntities" 
            OnSelecting="EntityServerModeDataSource1_Selecting" 
            TableName="SalesPersons" />
    </div>
    </form>
</body>
</html>
