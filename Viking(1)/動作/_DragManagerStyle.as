package 
{
    import mx.core.*;
    import mx.skins.halo.*;
    import mx.styles.*;

    public class _DragManagerStyle extends Object
    {
        private static var _embed_css_Assets_swf_mx_skins_cursor_DragMove_1739184075:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragMove_1739184075;
        private static var _embed_css_Assets_swf_mx_skins_cursor_DragReject_815847491:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragReject_815847491;
        private static var _embed_css_Assets_swf_mx_skins_cursor_DragLink_1739158498:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragLink_1739158498;
        private static var _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1739944823:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragCopy_1739944823;

        public function _DragManagerStyle()
        {
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            var fbs:* = param1;
            var style:* = StyleManager.getStyleDeclaration("DragManager");
            if (!style)
            {
                style = new CSSStyleDeclaration();
                StyleManager.setStyleDeclaration("DragManager", style, false);
            }
            if (style.defaultFactory == null)
            {
                style.defaultFactory = function () : void
            {
                this.copyCursor = _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1739944823;
                this.moveCursor = _embed_css_Assets_swf_mx_skins_cursor_DragMove_1739184075;
                this.rejectCursor = _embed_css_Assets_swf_mx_skins_cursor_DragReject_815847491;
                this.linkCursor = _embed_css_Assets_swf_mx_skins_cursor_DragLink_1739158498;
                this.defaultDragImageSkin = DefaultDragImage;
                return;
            }// end function
            ;
            }
            return;
        }// end function

    }
}
