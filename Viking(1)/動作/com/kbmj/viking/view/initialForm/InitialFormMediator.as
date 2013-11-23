package com.kbmj.viking.view.initialForm
{
    import com.kbmj.viking.controller.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.allMap.*;
    import com.kbmj.viking.view.*;
    import com.kbmj.viking.view.allMap.*;
    import flash.events.*;
    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.mediator.*;

    public class InitialFormMediator extends Mediator
    {
        private var canSelectArea:Boolean = false;
        private var initHomeWindow:InitHomeWindow;
        public static const INIT_HOME_ALL_MAP:String = NAME + "/notes/initHomeAllMap";
        public static const SUBMIT_INITIAL_FORM:String = NAME + "/notes/submitInitialForm";
        public static const VALIDATE_INITIAL_FORM:String = NAME + "/notes/validateInitialForm";
        public static const LOAD_AND_MOVIE_COMPLETE:String = NAME + "/notes/loadAndMovieComplete";
        public static const NAME:String = "InitialFormMediator";

        public function InitialFormMediator(param1:Viking)
        {
            initHomeWindow = new InitHomeWindow();
            super(NAME, param1);
            return;
        }// end function

        override public function listNotificationInterests() : Array
        {
            return [InitializeFinishedCommand.SHOW_INITIAL_FORM, InitializeFinishedCommand.SHOW_INITIAL_FORM_INIT_HOME, PlayerProxy.PLAYER_SUBMIT_ERROR, PlayerProxy.NAME_VALIDATE_COMPLETE, PlayerProxy.NAME_VALIDATE_ERROR, PlayerProxy.PLAYER_SUBMIT_COMPLETE_END, PlayerProxy.PLAYER_INITIALIZED_END, AllMapProxy.DISTRIBUTION_PLAYERS_COUNT_LOADED, AllMapProxy.DISTRIBUTION_PLAYERS_COUNT_LOADED_ERROR, AllMapProxy.INIT_HOME_COMPLETE, AllMapProxy.INIT_HOME_ERROR];
        }// end function

        private function validateName(event:PopupEvent) : void
        {
            app.showLoadingWindow();
            sendNotification(VALIDATE_INITIAL_FORM, event.param);
            return;
        }// end function

        override public function onRegister() : void
        {
            app.initialForm.addEventListener(Viking.INITIAL_FORM_ACTION_SUBMIT, submit);
            app.initialForm.addEventListener(Viking.INITIAL_FORM_ACTION_VALIDATE_NAME, validateName);
            return;
        }// end function

        private function selectAreaStep3(param1:INotification) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            initHomeWindow.removeEventListener(InitHomeWindow.INIT_HOME_OK, selectAreaStep3);
            app.initialForm.removeChild(initHomeWindow);
            app.removeLoadingWindow();
            _loc_2.generalAnimationChange("initialFrom", "backGround", "w_select_area_3");
            _loc_2.generalLoaders["initialFrom"]["backGround"].content.addEventListener("ENLARGE_END", selectAreaStep4);
            return;
        }// end function

        private function selectAreaStep4(event:Event) : void
        {
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            _loc_2.generalLoaders["initialFrom"]["backGround"].content.removeEventListener("ENLARGE_END", selectAreaStep4);
            var _loc_3:Object = {first_time:false};
            sendNotification(LOAD_AND_MOVIE_COMPLETE, _loc_3);
            return;
        }// end function

        public function get app() : Viking
        {
            return viewComponent as Viking;
        }// end function

        override public function handleNotification(param1:INotification) : void
        {
            var animationProxy:AnimationProxy;
            var distribution:Array;
            var playerProxy:PlayerProxy;
            var error:Object;
            var alertWindow:AlertWindow;
            var note:* = param1;
            animationProxy = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            var allMapProxy:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            switch(note.getName())
            {
                case InitializeFinishedCommand.SHOW_INITIAL_FORM:
                {
                    app.removeLoadingWindow();
                    app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_INITIAL_FORM;
                    animationProxy.generalAnimationLoaded("initialFrom", "backGround", "w_input_name", app.initialForm.backGroundLayer);
                    animationProxy.generalLoaders["initialFrom"]["backGround"].contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                animationProxy.generalLoaders["initialFrom"]["backGround"].content.addEventListener("ENLARGE_END", function () : void
                {
                    animationProxy.generalLoaders["initialFrom"]["backGround"].content.removeEventListener("ENLARGE_END", arguments.callee);
                    app.initialForm.textCanvas.visible = true;
                    return;
                }// end function
                );
                animationProxy.generalLoaders["initialFrom"]["backGround"].content.addEventListener("BUTTON_DECIDE", function () : void
                {
                    app.initialForm.validateName();
                    return;
                }// end function
                );
                return;
            }// end function
            );
                    break;
                }
                case InitializeFinishedCommand.SHOW_INITIAL_FORM_INIT_HOME:
                {
                    app.removeLoadingWindow();
                    distribution = note.getBody() as Array;
                    app.gameViewStack.selectedIndex = Viking.VIEW_INDEX_INITIAL_FORM;
                    animationProxy.generalAnimationLoaded("initialFrom", "backGround", "w_select_area_4", app.initialForm.backGroundLayer);
                    animationProxy.generalLoaders["initialFrom"]["backGround"].contentLoaderInfo.addEventListener(Event.COMPLETE, function () : void
            {
                animationProxy.generalLoaders["initialFrom"]["backGround"].content.addEventListener("BUTTON_SELECT_AREA", function (event:Event) : void
                {
                    animationProxy.generalLoaders["initialFrom"]["backGround"].content.removeEventListener("ENLARGE_END", arguments.callee);
                    selectAreaStep2(distribution);
                    return;
                }// end function
                );
                return;
            }// end function
            );
                    break;
                }
                case PlayerProxy.PLAYER_SUBMIT_ERROR:
                case PlayerProxy.NAME_VALIDATE_ERROR:
                case AllMapProxy.DISTRIBUTION_PLAYERS_COUNT_LOADED_ERROR:
                {
                    app.removeLoadingWindow();
                    app.initialForm.showError(note.getBody().head.error_message);
                    break;
                }
                case PlayerProxy.NAME_VALIDATE_COMPLETE:
                {
                    app.initialForm.nameValidated();
                    break;
                }
                case PlayerProxy.PLAYER_SUBMIT_COMPLETE_END:
                {
                    app.removeLoadingWindow();
                    playerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                    playerProxy.initPlayer(PlayerProxy.PLAYER_INITIALIZED_END);
                    app.initialForm.textCanvas.visible = false;
                    animationProxy.generalAnimationChange("initialFrom", "backGround", "w_op");
                    animationProxy.generalLoaders["initialFrom"]["backGround"].content.addEventListener("ENLARGE_END", selectAreaStep1);
                    break;
                }
                case PlayerProxy.PLAYER_INITIALIZED_END:
                {
                    selectAreaStep1(null);
                    break;
                }
                case AllMapProxy.INIT_HOME_COMPLETE:
                {
                    selectAreaStep3(note);
                    break;
                }
                case AllMapProxy.INIT_HOME_ERROR:
                {
                    app.removeLoadingWindow();
                    error = note.getBody() as Object;
                    alertWindow = AlertWindow.show(error.head.error_message);
                    app.initialForm.popupWindow(alertWindow, false);
                    break;
                }
                case AllMapProxy.DISTRIBUTION_PLAYERS_COUNT_LOADED:
                {
                    app.removeLoadingWindow();
                    distribution = note.getBody() as Array;
                    animationProxy.generalAnimationChange("initialFrom", "backGround", "w_select_area_1");
                    animationProxy.generalLoaders["initialFrom"]["backGround"].content.addEventListener("BUTTON_SELECT_AREA", function (event:Event) : void
            {
                animationProxy.generalLoaders["initialFrom"]["backGround"].content.removeEventListener("ENLARGE_END", arguments.callee);
                selectAreaStep2(distribution);
                return;
            }// end function
            );
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

        private function initHome(event:PopupEvent) : void
        {
            app.showLoadingWindow(true);
            sendNotification(INIT_HOME_ALL_MAP, event.param.area);
            return;
        }// end function

        private function submit(event:PopupEvent) : void
        {
            var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
            _loc_2.submit(event.param, PlayerProxy.PLAYER_SUBMIT_COMPLETE_END);
            return;
        }// end function

        private function selectAreaStep1(event:Event) : void
        {
            if (!canSelectArea)
            {
                canSelectArea = true;
                return;
            }
            var _loc_2:* = AnimationProxy(facade.retrieveProxy(AnimationProxy.NAME));
            _loc_2.generalLoaders["initialFrom"]["backGround"].content.removeEventListener("ENLARGE_END", selectAreaStep1);
            var _loc_3:* = AllMapProxy(facade.retrieveProxy(AllMapProxy.NAME));
            app.showLoadingWindow();
            _loc_3.loadDistributionPlayersCount();
            return;
        }// end function

        private function selectAreaStep2(param1:Array) : void
        {
            var _loc_2:* = ConfigProxy(facade.retrieveProxy(ConfigProxy.NAME));
            app.initialForm.addChild(initHomeWindow);
            initHomeWindow.fourByFourAreaFlag = _loc_2.configVO.fourByFourAreaFlag;
            initHomeWindow.nonActiveAreaFlag = _loc_2.configVO.nonActiveAreaFlag;
            initHomeWindow.setPlayersCount(param1);
            initHomeWindow.addEventListener(InitHomeWindow.INIT_HOME_OK, initHome);
            return;
        }// end function

    }
}
