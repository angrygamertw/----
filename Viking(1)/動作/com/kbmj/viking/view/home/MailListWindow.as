package com.kbmj.viking.view.home
{
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.vo.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.dataGridClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class MailListWindow extends PopupWindow implements IBindingClient
    {
        private var mailDetailWindow:MailDetailWindow;
        public var _MailListWindow_Text1:Text;
        private var _1074046981_previousPage:Boolean;
        private var _1638141455subjectRenderer:ClassFactory;
        private var _636418830colony_data_list:DataGrid;
        var _bindingsByDestination:Object;
        private var _20935191_currentPage:int;
        private var _1193840764_swf_close:MovieClipLoaderAsset;
        private var mailTransmitWindow:MailTransmitWindow;
        private var _99715089_swf_next:MovieClipLoaderAsset;
        private var _99643601_swf_prev:MovieClipLoaderAsset;
        public var _MailListWindow_Image1:Image;
        public var _MailListWindow_Image2:Image;
        public var _MailListWindow_Image3:Image;
        public var _MailListWindow_Image4:Image;
        public var _MailListWindow_DataGridColumn1:DataGridColumn;
        public var _MailListWindow_DataGridColumn2:DataGridColumn;
        public var _MailListWindow_DataGridColumn3:DataGridColumn;
        public var _MailListWindow_DataGridColumn4:DataGridColumn;
        var _watchers:Array;
        private var _1896677185windowLayer:Canvas;
        private var _581257332stateRenderer:ClassFactory;
        private var _368501887_totalPages:int;
        private var _1785789969mailCanvas:Canvas;
        private var _99749142_swf_make:MovieClipLoaderAsset;
        var _bindingsBeginWithWord:Object;
        private var _1514791297_nextPage:Boolean;
        private var _1780162073_mailsData:ArrayCollection;
        var _bindings:Array;
        public var _MailListWindow_Label1:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        public static const REPLY_MAIL:String = "replyMail";
        public static const MAIL_SEND:String = "mailSend";
        public static const LOAD_MAIL_LIST_WITH_PAGE:String = "loadMailListWithPage";
        public static const MAIL_DETAIL:String = "mailDetail";
        public static const CLOSED_MAIL_LIST_WINDOW:String = "closedMailListWindow";

        public function MailListWindow()
        {
            _documentDescriptor_ = new UIComponentDescriptor({type:PopupWindow, propertiesFactory:function () : Object
            {
                return {width:694, height:550, childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"windowLayer"}), new UIComponentDescriptor({type:Text, id:"_MailListWindow_Text1", propertiesFactory:function () : Object
                {
                    return {styleName:"PanelBaseTitle", x:320, y:80};
                }// end function
                }), new UIComponentDescriptor({type:Canvas, id:"mailCanvas", propertiesFactory:function () : Object
                {
                    return {childDescriptors:[new UIComponentDescriptor({type:Box, propertiesFactory:function () : Object
                    {
                        return {x:40, y:130, childDescriptors:[new UIComponentDescriptor({type:DataGrid, id:"colony_data_list", propertiesFactory:function () : Object
                        {
                            return {width:630, rowCount:11, rowHeight:26, styleName:"DataGridBase", selectable:false, sortableColumns:false, columns:[_MailListWindow_DataGridColumn1_i(), _MailListWindow_DataGridColumn2_i(), _MailListWindow_DataGridColumn3_i(), _MailListWindow_DataGridColumn4_i()]};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:HBox, propertiesFactory:function () : Object
                    {
                        return {x:525, y:450, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_MailListWindow_Image1", events:{click:"___MailListWindow_Image1_click"}, propertiesFactory:function () : Object
                        {
                            return {width:50};
                        }// end function
                        }), new UIComponentDescriptor({type:Label, id:"_MailListWindow_Label1", stylesFactory:function () : void
                        {
                            this.fontSize = 14;
                            return;
                        }// end function
                        }), new UIComponentDescriptor({type:Image, id:"_MailListWindow_Image2", events:{click:"___MailListWindow_Image2_click"}, propertiesFactory:function () : Object
                        {
                            return {width:50};
                        }// end function
                        })]};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MailListWindow_Image3", events:{click:"___MailListWindow_Image3_click"}, propertiesFactory:function () : Object
                    {
                        return {x:235, y:485};
                    }// end function
                    }), new UIComponentDescriptor({type:Image, id:"_MailListWindow_Image4", events:{click:"___MailListWindow_Image4_click"}, propertiesFactory:function () : Object
                    {
                        return {x:365, y:485};
                    }// end function
                    })]};
                }// end function
                })]};
            }// end function
            });
            _99749142_swf_make = new Viking.EmbedSwfButtonCommon();
            _1193840764_swf_close = new Viking.EmbedSwfButtonCommon();
            _99715089_swf_next = new Viking.EmbedSwfButtonPaginator();
            _99643601_swf_prev = new Viking.EmbedSwfButtonPaginator();
            mailDetailWindow = new MailDetailWindow();
            mailTransmitWindow = new MailTransmitWindow();
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 694;
            this.height = 550;
            _MailListWindow_ClassFactory2_i();
            _MailListWindow_ClassFactory1_i();
            this.addEventListener("creationComplete", ___MailListWindow_PopupWindow1_creationComplete);
            return;
        }// end function

        public function cToolTip() : String
        {
            return Utils.i18n("generalShowDetail");
        }// end function

        private function set _nextPage(param1:Boolean) : void
        {
            var _loc_2:* = this._1514791297_nextPage;
            if (_loc_2 !== param1)
            {
                this._1514791297_nextPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_nextPage", _loc_2, param1));
            }
            return;
        }// end function

        private function set _totalPages(param1:int) : void
        {
            var _loc_2:* = this._368501887_totalPages;
            if (_loc_2 !== param1)
            {
                this._368501887_totalPages = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_totalPages", _loc_2, param1));
            }
            return;
        }// end function

        public function closeForAllMap() : void
        {
            this.onClose();
            return;
        }// end function

        public function get colony_data_list() : DataGrid
        {
            return this._636418830colony_data_list;
        }// end function

        private function _MailListWindow_ClassFactory2_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            stateRenderer = _loc_1;
            _loc_1.generator = MailListWindow_inlineComponent2;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function init() : void
        {
            mailDetailWindow.addEventListener(MailDetailWindow.REPLY_MAIL_BY_DETAIL, handleEvent);
            MovieClip(Loader(_swf_make.getChildAt(0)).content).gotoAndPlay("button_make");
            MovieClip(Loader(_swf_close.getChildAt(0)).content).gotoAndPlay("button_close");
            if (_previousPage)
            {
                MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev");
            }
            else
            {
                MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev_off");
            }
            if (_nextPage)
            {
                MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next");
            }
            else
            {
                MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next_off");
            }
            return;
        }// end function

        private function get _swf_next() : MovieClipLoaderAsset
        {
            return this._99715089_swf_next;
        }// end function

        public function get subjectRenderer() : ClassFactory
        {
            return this._1638141455subjectRenderer;
        }// end function

        public function onDetail(param1:Object) : void
        {
            dispatchEvent(new PopupEvent(MAIL_DETAIL, param1.mailId));
            return;
        }// end function

        private function set _previousPage(param1:Boolean) : void
        {
            var _loc_2:* = this._1074046981_previousPage;
            if (_loc_2 !== param1)
            {
                this._1074046981_previousPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_previousPage", _loc_2, param1));
            }
            return;
        }// end function

        public function ___MailListWindow_Image1_click(event:MouseEvent) : void
        {
            goToPage((_currentPage - 1));
            return;
        }// end function

        private function _MailListWindow_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailListAllMail");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailListWindow_Text1.text = param1;
                return;
            }// end function
            , "_MailListWindow_Text1.text");
            result[0] = binding;
            binding = new Binding(this, function () : Object
            {
                return _mailsData;
            }// end function
            , function (param1:Object) : void
            {
                colony_data_list.dataProvider = param1;
                return;
            }// end function
            , "colony_data_list.dataProvider");
            result[1] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("generalState");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailListWindow_DataGridColumn1.headerText = param1;
                return;
            }// end function
            , "_MailListWindow_DataGridColumn1.headerText");
            result[2] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return stateRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _MailListWindow_DataGridColumn1.itemRenderer = param1;
                return;
            }// end function
            , "_MailListWindow_DataGridColumn1.itemRenderer");
            result[3] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailDetailSubject");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailListWindow_DataGridColumn2.headerText = param1;
                return;
            }// end function
            , "_MailListWindow_DataGridColumn2.headerText");
            result[4] = binding;
            binding = new Binding(this, function () : IFactory
            {
                return subjectRenderer;
            }// end function
            , function (param1:IFactory) : void
            {
                _MailListWindow_DataGridColumn2.itemRenderer = param1;
                return;
            }// end function
            , "_MailListWindow_DataGridColumn2.itemRenderer");
            result[5] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailDetailSender");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailListWindow_DataGridColumn3.headerText = param1;
                return;
            }// end function
            , "_MailListWindow_DataGridColumn3.headerText");
            result[6] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = Utils.i18n("mailDetailSendTime");
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailListWindow_DataGridColumn4.headerText = param1;
                return;
            }// end function
            , "_MailListWindow_DataGridColumn4.headerText");
            result[7] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_prev;
            }// end function
            , function (param1:Object) : void
            {
                _MailListWindow_Image1.source = param1;
                return;
            }// end function
            , "_MailListWindow_Image1.source");
            result[8] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _previousPage;
            }// end function
            , function (param1:Boolean) : void
            {
                _MailListWindow_Image1.enabled = param1;
                return;
            }// end function
            , "_MailListWindow_Image1.enabled");
            result[9] = binding;
            binding = new Binding(this, function () : String
            {
                var _loc_1:* = _currentPage + "/" + _totalPages;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }// end function
            , function (param1:String) : void
            {
                _MailListWindow_Label1.text = param1;
                return;
            }// end function
            , "_MailListWindow_Label1.text");
            result[10] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_next;
            }// end function
            , function (param1:Object) : void
            {
                _MailListWindow_Image2.source = param1;
                return;
            }// end function
            , "_MailListWindow_Image2.source");
            result[11] = binding;
            binding = new Binding(this, function () : Boolean
            {
                return _nextPage;
            }// end function
            , function (param1:Boolean) : void
            {
                _MailListWindow_Image2.enabled = param1;
                return;
            }// end function
            , "_MailListWindow_Image2.enabled");
            result[12] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_make;
            }// end function
            , function (param1:Object) : void
            {
                _MailListWindow_Image3.source = param1;
                return;
            }// end function
            , "_MailListWindow_Image3.source");
            result[13] = binding;
            binding = new Binding(this, function () : Object
            {
                return _swf_close;
            }// end function
            , function (param1:Object) : void
            {
                _MailListWindow_Image4.source = param1;
                return;
            }// end function
            , "_MailListWindow_Image4.source");
            result[14] = binding;
            return result;
        }// end function

        public function set colony_data_list(param1:DataGrid) : void
        {
            var _loc_2:* = this._636418830colony_data_list;
            if (_loc_2 !== param1)
            {
                this._636418830colony_data_list = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "colony_data_list", _loc_2, param1));
            }
            return;
        }// end function

        private function get _previousPage() : Boolean
        {
            return this._1074046981_previousPage;
        }// end function

        public function set subjectRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._1638141455subjectRenderer;
            if (_loc_2 !== param1)
            {
                this._1638141455subjectRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "subjectRenderer", _loc_2, param1));
            }
            return;
        }// end function

        public function setColor(param1:Boolean) : uint
        {
            return !param1 ? (12337210) : (0);
        }// end function

        private function set _swf_close(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._1193840764_swf_close;
            if (_loc_2 !== param1)
            {
                this._1193840764_swf_close = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_close", _loc_2, param1));
            }
            return;
        }// end function

        private function get _swf_prev() : MovieClipLoaderAsset
        {
            return this._99643601_swf_prev;
        }// end function

        public function onMail() : void
        {
            popupWindow(mailTransmitWindow, false);
            mailTransmitWindow.addEventListener(MailTransmitWindow.SUBMIT_MAIL, submitMail);
            return;
        }// end function

        private function _MailListWindow_DataGridColumn2_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MailListWindow_DataGridColumn2 = _loc_1;
            _loc_1.dataField = "subject";
            BindingManager.executeBindings(this, "_MailListWindow_DataGridColumn2", _MailListWindow_DataGridColumn2);
            return _loc_1;
        }// end function

        public function get windowLayer() : Canvas
        {
            return this._1896677185windowLayer;
        }// end function

        public function onReply(param1:Object) : void
        {
            dispatchEvent(new PopupEvent(REPLY_MAIL, param1));
            return;
        }// end function

        private function handleEvent(event:PopupEvent) : void
        {
            dispatchEvent(new PopupEvent(REPLY_MAIL, event.param));
            return;
        }// end function

        private function _MailListWindow_ClassFactory1_i() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            subjectRenderer = _loc_1;
            _loc_1.generator = MailListWindow_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function ___MailListWindow_Image2_click(event:MouseEvent) : void
        {
            goToPage((_currentPage + 1));
            return;
        }// end function

        private function set _swf_prev(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99643601_swf_prev;
            if (_loc_2 !== param1)
            {
                this._99643601_swf_prev = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_prev", _loc_2, param1));
            }
            return;
        }// end function

        public function setMails(param1:Array, param2:Object) : void
        {
            _mailsData = new ArrayCollection(param1);
            pages = param2;
            return;
        }// end function

        public function get stateRenderer() : ClassFactory
        {
            return this._581257332stateRenderer;
        }// end function

        private function _MailListWindow_DataGridColumn1_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MailListWindow_DataGridColumn1 = _loc_1;
            _loc_1.width = 40;
            _loc_1.setStyle("textAlign", "center");
            BindingManager.executeBindings(this, "_MailListWindow_DataGridColumn1", _MailListWindow_DataGridColumn1);
            return _loc_1;
        }// end function

        private function get _swf_close() : MovieClipLoaderAsset
        {
            return this._1193840764_swf_close;
        }// end function

        private function get _totalPages() : int
        {
            return this._368501887_totalPages;
        }// end function

        private function get _nextPage() : Boolean
        {
            return this._1514791297_nextPage;
        }// end function

        public function set windowLayer(param1:Canvas) : void
        {
            var _loc_2:* = this._1896677185windowLayer;
            if (_loc_2 !== param1)
            {
                this._1896677185windowLayer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "windowLayer", _loc_2, param1));
            }
            return;
        }// end function

        private function _MailListWindow_bindingExprs() : void
        {
            var _loc_1:* = undefined;
            _loc_1 = Utils.i18n("mailListAllMail");
            _loc_1 = _mailsData;
            _loc_1 = Utils.i18n("generalState");
            _loc_1 = stateRenderer;
            _loc_1 = Utils.i18n("mailDetailSubject");
            _loc_1 = subjectRenderer;
            _loc_1 = Utils.i18n("mailDetailSender");
            _loc_1 = Utils.i18n("mailDetailSendTime");
            _loc_1 = _swf_prev;
            _loc_1 = _previousPage;
            _loc_1 = _currentPage + "/" + _totalPages;
            _loc_1 = _swf_next;
            _loc_1 = _nextPage;
            _loc_1 = _swf_make;
            _loc_1 = _swf_close;
            return;
        }// end function

        public function set pages(param1:Object) : void
        {
            _currentPage = param1.current_page;
            _nextPage = param1.next_page;
            _previousPage = param1.previous_page;
            _totalPages = param1.total_pages;
            if (_previousPage)
            {
                MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev");
            }
            else
            {
                MovieClip(Loader(_swf_prev.getChildAt(0)).content).gotoAndPlay("button_prev_off");
            }
            if (_nextPage)
            {
                MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next");
            }
            else
            {
                MovieClip(Loader(_swf_next.getChildAt(0)).content).gotoAndPlay("button_next_off");
            }
            return;
        }// end function

        public function detailWindowPopup(param1:MailVO) : void
        {
            var _loc_2:MailVO = null;
            for each (_loc_2 in _mailsData)
            {
                
                if (_loc_2.mailId == param1.mailId)
                {
                    _loc_2.readAt = new Date().toString();
                }
            }
            mailDetailWindow.mail = param1;
            popupWindow(mailDetailWindow, false);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:MailListWindow;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _MailListWindow_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_com_kbmj_viking_view_home_MailListWindowWatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }
            _watcherSetupUtil.setup(this, function (param1:String)
            {
                return target[param1];
            }// end function
            , bindings, watchers);
            var i:uint;
            while (i < bindings.length)
            {
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            super.initialize();
            return;
        }// end function

        public function ___MailListWindow_Image3_click(event:MouseEvent) : void
        {
            onMail();
            return;
        }// end function

        private function goToPage(param1:int) : void
        {
            dispatchEvent(new PopupEvent(LOAD_MAIL_LIST_WITH_PAGE, param1));
            return;
        }// end function

        private function _MailListWindow_DataGridColumn4_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MailListWindow_DataGridColumn4 = _loc_1;
            _loc_1.dataField = "sentAt";
            _loc_1.width = 200;
            BindingManager.executeBindings(this, "_MailListWindow_DataGridColumn4", _MailListWindow_DataGridColumn4);
            return _loc_1;
        }// end function

        public function ___MailListWindow_PopupWindow1_creationComplete(event:FlexEvent) : void
        {
            init();
            return;
        }// end function

        public function componentText(param1:Boolean) : String
        {
            return param1 ? (Utils.i18n("mailListRead")) : (Utils.i18n("mailListNoRead"));
        }// end function

        private function set _mailsData(param1:ArrayCollection) : void
        {
            var _loc_2:* = this._1780162073_mailsData;
            if (_loc_2 !== param1)
            {
                this._1780162073_mailsData = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_mailsData", _loc_2, param1));
            }
            return;
        }// end function

        private function set _currentPage(param1:int) : void
        {
            var _loc_2:* = this._20935191_currentPage;
            if (_loc_2 !== param1)
            {
                this._20935191_currentPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_currentPage", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_make(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99749142_swf_make;
            if (_loc_2 !== param1)
            {
                this._99749142_swf_make = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_make", _loc_2, param1));
            }
            return;
        }// end function

        public function closeTransmitWindow() : void
        {
            mailTransmitWindow.removeEventListener(MailTransmitWindow.SUBMIT_MAIL, submitMail);
            mailTransmitWindow.closeWindow();
            return;
        }// end function

        public function ___MailListWindow_Image4_click(event:MouseEvent) : void
        {
            close();
            return;
        }// end function

        public function set mailCanvas(param1:Canvas) : void
        {
            var _loc_2:* = this._1785789969mailCanvas;
            if (_loc_2 !== param1)
            {
                this._1785789969mailCanvas = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mailCanvas", _loc_2, param1));
            }
            return;
        }// end function

        private function set _swf_next(param1:MovieClipLoaderAsset) : void
        {
            var _loc_2:* = this._99715089_swf_next;
            if (_loc_2 !== param1)
            {
                this._99715089_swf_next = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_swf_next", _loc_2, param1));
            }
            return;
        }// end function

        private function get _mailsData() : ArrayCollection
        {
            return this._1780162073_mailsData;
        }// end function

        public function set stateRenderer(param1:ClassFactory) : void
        {
            var _loc_2:* = this._581257332stateRenderer;
            if (_loc_2 !== param1)
            {
                this._581257332stateRenderer = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stateRenderer", _loc_2, param1));
            }
            return;
        }// end function

        private function get _currentPage() : int
        {
            return this._20935191_currentPage;
        }// end function

        private function get _swf_make() : MovieClipLoaderAsset
        {
            return this._99749142_swf_make;
        }// end function

        public function submitMail(event:PopupEvent) : void
        {
            var _loc_2:* = Object(event.param);
            dispatchEvent(new PopupEvent(MAIL_SEND, _loc_2));
            return;
        }// end function

        private function _MailListWindow_DataGridColumn3_i() : DataGridColumn
        {
            var _loc_1:* = new DataGridColumn();
            _MailListWindow_DataGridColumn3 = _loc_1;
            _loc_1.dataField = "senderName";
            _loc_1.width = 150;
            BindingManager.executeBindings(this, "_MailListWindow_DataGridColumn3", _MailListWindow_DataGridColumn3);
            return _loc_1;
        }// end function

        public function get mailCanvas() : Canvas
        {
            return this._1785789969mailCanvas;
        }// end function

        private function close() : void
        {
            dispatchEvent(new PopupEvent(CLOSED_MAIL_LIST_WINDOW, {window:this}));
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            MailListWindow._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
