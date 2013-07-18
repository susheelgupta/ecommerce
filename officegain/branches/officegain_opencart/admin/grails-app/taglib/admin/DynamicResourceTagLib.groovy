package admin

import com.officegain.enigma.admin.AdminUtil
import com.officegain.enigma.base.Category
import com.officegain.enigma.base.Manufacturer

class DynamicResourceTagLib {
    def static namespace = "enigma"
    def categoryTreeViewCss = {
        def css = '<style type="text/css">'
        Category.list().each {
            def imageUrl = AdminUtil.categoryImageUrl(it)
            css = css + '.icon-' + it.id +'{display:block; height: 22px; padding-left: 20px; background: transparent url(' + imageUrl + ') 0 0px no-repeat;background-size: 20px 20px;  }'
        }
        css = css + '</style>'
        out << css
    }

    def manufacturerTreeViewCss = {
        def css = '<style type="text/css">'
        Manufacturer.list().each {
            def imageUrl = AdminUtil.manufacturerImageUrl(it)
            css = css + '.icon-' + it.id +'{display:block; height: 22px; padding-left: 20px; background: transparent url(' + imageUrl + ') 0 0px no-repeat;background-size: 20px 20px;  }'
        }
        css = css + '</style>'
        out << css
    }
}
