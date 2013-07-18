<%@ page import="com.officegain.enigma.admin.AdminUtil; com.officegain.enigma.base.Manufacturer" %>
<div id="tabs">
    <table>
        <tr>
            <td>
                <ul>
                    <li><a href="#tabs-1">Manufacturer Details</a></li>
                    <li><a href="#tabs-2">Description</a></li>
                    <li><a href="#tabs-3">Image</a></li>
                </ul>
            </td>
        </tr>
    </table>
    <g:form action="save" name="manufacturerForm">
        <g:hiddenField name="id" value="${manufacturerInstance?.id}"/>
        <g:hiddenField name="imageId" id="imageId" value=""/>
        <g:hiddenField name="version" value="${manufacturerInstance?.version}"/>
        <div id="tabs-1" style="margin-left: 84px">
            <g:if test="${flash.message}">
                <div class="message" role="status" style="margin-right:108px;margin-left:0px">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${manufacturerInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${manufacturerInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <table>
                <tr>
                    <td>
                        <div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'name', 'error')} required">
                            <label for="name" style="margin-left:0px">
                                <g:message code="manufacturer.name.label" default="Name"/>
                                <span class="required-indicator">*</span>
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="fieldcontain ${hasErrors(bean: manufacturerInstance, field: 'url', 'error')} ">
                            <label for="url" style="margin-left: 110px">
                                <g:message code="manufacturer.url.label" default="Url"/>
                            </label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:textField name="name" id="name" required="" value="${manufacturerInstance?.name}"
                                     style="width:250px;margin-left: 0px"/>
                    </td>

                    <td>
                        <g:textField name="url" value="${manufacturerInstance?.url}"
                                     style="width:250px ;margin-left: 110px"/>
                    </td>
                </tr>
            </table>
        </div>

        <div id="tabs-2" style="margin-left: 84px">
            <p>Description</p>
            <richui:richTextEditor name="description" value="${manufacturerInstance?.description}" width="735"/>
        </div>
    </g:form>
    <g:uploadForm name="imageForm" action="uploadImage">
        <div id="tabs-3" style="margin-left: 84px">
            <table>
                <tr>
                    <td>
                        <label for="imageForm">
                            <g:message code="manufacturer.image.label" default="Image"/>
                        </label>
                    </td>
                    <td>
                        <input type="file" name="image" id="image" style="width:250px;margin-left: 55px"/>
                    </td>
                    <td>
                        <div id="previewDiv">
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </g:uploadForm>
    <fieldset class="buttons">
        <g:submitButton name="create" class="save"
                        value="${message(code: 'default.button.create.label', default: 'Create')}"
                        style="margin-left: 400px;"/>
    </fieldset>
</div>
