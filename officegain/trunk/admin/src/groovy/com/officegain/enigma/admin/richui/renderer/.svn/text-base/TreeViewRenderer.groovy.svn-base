package com.officegain.enigma.admin.richui.renderer;

import de.andreasschmitt.richui.taglib.Resource
import de.andreasschmitt.richui.taglib.renderer.AbstractRenderer
import de.andreasschmitt.richui.taglib.renderer.RenderException
import de.andreasschmitt.richui.taglib.renderer.RenderUtils
import de.andreasschmitt.richui.taglib.renderer.YuiUtils
import groovy.xml.MarkupBuilder

/*
*
* @author Andreas Schmitt
*/
class TreeViewRenderer extends AbstractRenderer {

    protected void renderTagContent(Map attrs, MarkupBuilder builder) throws RenderException {
        renderTagContent(attrs, null, builder)
    }

    protected void renderTagContent(Map attrs, Closure body, MarkupBuilder builder) throws RenderException {
        if (!attrs?.id) {
            attrs.id = "tree" + RenderUtils.getUniqueId()
        }

        builder.div(id: attrs?.id, "")
        builder.script(type: "text/javascript") {
            builder.yield("	var tree = new YAHOO.widget.TreeView(\"$attrs.id\");\n", false)
            builder.yield("	tree.singleNodeHighlight=true;\n", false)
            builder.yield("	var root = tree.getRoot();\n", false)

            builder.yield("    function createNode(text, id, icon, pnode, expand, select){\n", false)
            builder.yield("        var n = new YAHOO.widget.TextNode(text, pnode, false);\n", false)
            builder.yield("        n.labelStyle=icon;\n", false)
            builder.yield("        n.expanded=true;\n", false)

            if (attrs?.onLabelClick) {
                builder.yield("		n.additionalId = id;\n", false)
            }
            builder.yield("        return n;\n", false)
            builder.yield("    }\n\n", false)

            builder.yield("    function onTriggerContextMenu(p_oEvent) {\n", false)
            builder.yield("    var oTarget = this.contextEventTarget;\n", false)
            builder.yield("    oCurrentTextNode = tree.getNodeByElement(oTarget);\n", false)
            builder.yield("    if (!oCurrentTextNode) {\n", false)
            builder.yield("    this.cancel();\n", false)
            builder.yield("    }\n", false)
            builder.yield("    }\n", false)

            if (attrs?.onTriggerContextMenu) {
                builder.yield("	oContextMenu.subscribe(\"triggerContextMenu\", function(node) {\n", false)
                builder.yield("		var id = node.node.additionalId;\n", false)
                builder.yield("		${attrs.onTriggerContextMenu}(id)\n", false)
                builder.yield("	});\n", false)
            }

            if (attrs?.onLabelClick) {
                builder.yield("	tree.subscribe(\"clickEvent\", function(node) {\n", false)
                builder.yield("		var id = node.node.additionalId;\n", false)
                builder.yield("		${attrs.onLabelClick}(id)\n", false)
                builder.yield("		node.node.highlight();\n", false)
                builder.yield("	});\n", false)
            }

            if (attrs?.showRoot == "false") {
                createTree(attrs.xml.children(), "root", builder)
            } else {
                createTree(attrs.xml, "root", builder)
            }

            builder.yield("	tree.draw();\n", false)
        }
    }

    private void createTree(nodes, parent, builder) {
        nodes.each {
            if (it.children().size() == 0) {
                builder.yield("    createNode(\"" + it.@name + "\", \"" + it?.@id + "\", \"" + it.@icon + "\", $parent, \"" + it.@expanded + "\", \"" + it.@selected + "\");\n", false)
            }
            else {
                def nodeName = it.@name
                if (it.@name == "") {
                    nodeName = "unknown"
                }
                def newParent = "t" + RenderUtils.getUniqueId()
                builder.yield("    " + newParent + " = createNode(\"" + nodeName + "\", \"" + it?.@id + "\",\"" + it?.@icon + "\", $parent, \"" + it.@expanded + "\", \"" + it.@selected + "\");\n", false)
                createTree(it.children(), newParent, builder)
            }
        }
    }

    protected List<Resource> getComponentResources(Map attrs, String resourcePath) throws RenderException {
        List<Resource> resources = []
        String yuiResourcePath = YuiUtils.getResourcePath(resourcePath, attrs?.remote != null)
        Resource css = new Resource()
        def cssBuilder = css.getBuilder()
        if (attrs?.skin) {
            if (attrs.skin == "default") {
                cssBuilder.link(rel: "stylesheet", type: "text/css", href: "${resourcePath}/css/treeView.css")
                css.name = "${resourcePath}/css/treeView.css"
            }
            else {
                String applicationResourcePath = RenderUtils.getApplicationResourcePath(resourcePath)
                cssBuilder.link(rel: "stylesheet", type: "text/css", href: "${applicationResourcePath}/css/${attrs.skin}.css")
                css.name = "${applicationResourcePath}/css/${attrs.skin}.css"
            }
        }
        else {
            cssBuilder.link(rel: "stylesheet", type: "text/css", href: "${yuiResourcePath}/treeview/assets/skins/sam/treeview.css")
            css.name = "${yuiResourcePath}/treeview/assets/skins/sam/treeview.css"
        }

        resources.add(css)
        // Yahoo dom event
        Resource yahooDomEvent = new Resource()
        yahooDomEvent.name = "${yuiResourcePath}/yahoo-dom-event/yahoo-dom-event.js"
        def yahooDomEventBuilder = yahooDomEvent.getBuilder()
        yahooDomEventBuilder.script(type: "text/javascript", src: "${yuiResourcePath}/yahoo-dom-event/yahoo-dom-event.js", "")
        resources.add(yahooDomEvent)
        // Yahoo event min
        Resource yahooEventMin = new Resource()
        yahooEventMin.name = "${yuiResourcePath}/event/event-min.js"
        def yahooEventMinBuilder = yahooEventMin.getBuilder()
        yahooEventMinBuilder.script(type: "text/javascript", src: "${yuiResourcePath}/event/event-min.js", "")
        resources.add(yahooEventMin)
        // Yahoo min
        Resource yahooMin = new Resource()
        yahooMin.name = "${yuiResourcePath}/yahoo/yahoo-min.js"
        def yahooMinBuilder = yahooMin.getBuilder()
        yahooMinBuilder.script(type: "text/javascript", src: "${yuiResourcePath}/yahoo/yahoo-min.js", "")
        resources.add(yahooMin)
        // Yahoo tree view min
        Resource yahooTreeViewMin = new Resource()
        yahooTreeViewMin.name = "${yuiResourcePath}/treeview/treeview-min.js"
        def yahooTreeViewMinBuilder = yahooTreeViewMin.getBuilder()
        yahooTreeViewMinBuilder.script(type: "text/javascript", src: "${yuiResourcePath}/treeview/treeview-min.js", "")
        resources.add(yahooTreeViewMin)
        return resources
    }

    protected void renderResourcesContent(Map attrs, MarkupBuilder builder, String resourcePath) throws RenderException {
        builder.yield("<!-- TreeView -->", false)

        String yuiResourcePath = YuiUtils.getResourcePath(resourcePath, attrs?.remote != null)

        if (attrs?.skin) {
            if (attrs.skin == "default") {
                builder.link(rel: "stylesheet", type: "text/css", href: "$resourcePath/css/treeView.css")
            }
            else {
                String applicationResourcePath = RenderUtils.getApplicationResourcePath(resourcePath)
                builder.link(rel: "stylesheet", type: "text/css", href: "${applicationResourcePath}/css/${attrs.skin}.css")
            }
        }
        else {
            builder.link(rel: "stylesheet", type: "text/css", href: "$yuiResourcePath/treeview/assets/skins/sam/treeview.css")
        }

        builder.script(type: "text/javascript", src: "$yuiResourcePath/yahoo-dom-event/yahoo-dom-event.js", "")
        builder.script(type: "text/javascript", src: "$yuiResourcePath/event/event-min.js", "")
        builder.script(type: "text/javascript", src: "$yuiResourcePath/yahoo/yahoo-min.js", "")
        builder.script(type: "text/javascript", src: "$yuiResourcePath/treeview/treeview-min.js", "")
    }


}