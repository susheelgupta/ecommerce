package website

import com.officegain.enigma.base.Category


class DynamicResourceTagLib {
    def static namespace = "enigma"
    def treeViewCss = {
        def css = '<style type="text/css">'
        Category.list().each {
            def imageUrl = WebsiteUtil.categoryImageUrl(it)
            css = css + '.icon-' + it.id + '{display:block; height: 22px; padding-left: 20px; background: transparent url(' + imageUrl + ') 0 0px no-repeat;background-size: 20px 20px;  }'
        }
        css = css + '</style>'
        out << css
    }
}
