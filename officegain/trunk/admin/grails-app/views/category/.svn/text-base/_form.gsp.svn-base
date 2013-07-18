<%@ page import="com.officegain.enigma.admin.AdminUtil; com.officegain.enigma.base.Category" %>
<g:hasErrors bean="${categoryInstance}">
    <ul class="errors" role="alert">
        <g:eachError bean="${categoryInstance}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                <g:message error="${error}"/>
            </li>
        </g:eachError>
    </ul>
</g:hasErrors>
<div id="tabs">
    <table>
        <tr>
            <td>
                <ul>
                    <li><a href="#tabs-1">Create Category</a></li>
                    <li><a href="#tabs-2">Description</a></li>
                    <li><a href="#tabs-3">Images</a></li>
                </ul>
            </td>
        </tr>
    </table>
    <g:form action="save" name="categoryForm">
        <g:hiddenField name="id" value="${categoryInstance?.id}"/>
        <g:hiddenField name="imageId" id="imageId" value=""/>
        <g:hiddenField name="version" value="${categoryInstance?.version}"/>
        <div id="tabs-1">
            <g:if test="${flash.message}">
                <div class="message" role="status" style="margin-left: 0px; margin-right: 40px;">${flash.message}</div>
            </g:if>
            <table>
                <tr>
                    <td>
                        <div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
                            <label for="name">
                                <g:message code="category.name.label" default="Name"/>
                                <span class="required-indicator">*</span>
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'parentCategory', 'error')} ">
                            <label for="parentCategory" style="margin-left: 78px;">
                                <g:message code="category.parentCategory.label" default="Parent Category"/>
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'sortOrder', 'error')} ">
                            <label for="sortOrder" style="margin-left: 75px;">
                                <g:message code="category.sortOrder.label" default="Sort Order"/>
                            </label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:textField name="name" required="" value="${categoryInstance?.name}"
                                     style="width:200px; height:20px;"/>
                    </td>
                    <td>
                        <g:select id="parentCategory" name="parentCategory.id"
                                  from="${com.officegain.enigma.base.Category.getResultCategories(categoryInstance)}"
                                  optionValue="path" optionKey="id"
                                  value="${categoryInstance?.parentCategory?.id}" class="many-to-one"
                                  style="margin-left: 78px; width:215px; height:28px;"/>
                    </td>
                    <td>
                        <g:field type="number" name="sortOrder"
                                 value="${fieldValue(bean: categoryInstance, field: 'sortOrder')}"
                                 style="margin-left: 75px; width: 200px;"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'metaTitle', 'error')} ">
                            <label for="metaTitle">
                                <g:message code="category.metaTitle.label" default="Meta Title"/>
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'metaKeywords', 'error')} ">
                            <label for="metaKeywords" style="margin-left: 78px;">
                                <g:message code="category.metaKeywords.label" default="Meta Keywords"/>
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'metaDescription', 'error')} ">
                            <label for="metaDescription" style="margin-left: 75px;">
                                <g:message code="category.metaDescription.label"
                                           default="Meta Description"/>
                            </label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:textArea cols="1" rows="1" name="metaTitle"
                                    value="${categoryInstance?.metaTitle}"
                                    style="width:200px; height:20px;"/>
                    </td>
                    <td>
                        <g:textArea cols="1" rows="1" name="metaKeywords"
                                    value="${categoryInstance?.metaKeywords}"
                                    style="width:200px; height:20px; margin-left: 78px;"/>
                    </td>
                    <td>
                        <g:textArea cols="1" rows="1" name="metaDescription"
                                    value="${categoryInstance?.metaDescription}"
                                    style="margin-left: 75px; width:200px; height:20px;"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'active', 'error')} ">
                            <label for="active">
                                <g:message code="category.active.label" default="Active"/>
                            </label>
                            <g:checkBox name="active" value="${categoryInstance?.active}"/>
                        </div>
                    </td>
                </tr>
            </table>
        </div>

        <div id="tabs-2">
            <table>
                <tr>
                    <p>Description</p>
                    <richui:richTextEditor name="description" value="${categoryInstance?.description}"
                                           width="900"/>
                </tr>
            </table>
        </div>
    </g:form>
    <g:uploadForm name="imageForm" action="uploadImage">
        <div id="tabs-3">
            <table>
                <tr>
                    <td>
                        <div class="fieldcontain">
                            <label for="imageFile">
                                <g:message code="category.image.label" default="Image"/>
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="fieldcontain">
                            <input type="file" name="image" id="image">
                        </div>
                    </td>
                    <td>
                        <div class="fieldcontain">
                            <div id="imageDiv" style="display: inline;">
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </g:uploadForm>
</div>

