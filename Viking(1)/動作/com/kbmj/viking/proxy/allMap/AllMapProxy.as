package com.kbmj.viking.proxy.allMap
{
    import com.adobe.serialization.json.*;
    import com.kbmj.viking.lib.*;
    import com.kbmj.viking.proxy.*;
    import com.kbmj.viking.proxy.home.*;
    import com.kbmj.viking.proxy.tactics.*;
    import com.kbmj.viking.view.allMap.*;
    import com.kbmj.viking.vo.*;
    import com.kbmj.viking.vo.allMap.*;
    import flash.display.*;
    import flash.external.*;
    import flash.geom.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class AllMapProxy extends LoaderProxy
    {
        private var _cmdX:int;
        private var _cmdY:int;
        private var _topographyChips:Array;
        private var _cmdObjectId:int;
        private var _center:Point;
        private var _mapImages:Array;
        private var _cmdPlayerId:int;
        private var _cmdInvade:Boolean;
        private var _mailDetail:MailVO;
        private var _cmdGuildId:int;
        private var _cmdDistance:int;
        private var _map:Array;
        private var _mails:Array;
        private var _marginChip:Bitmap;
        private var _topLeft:Point;
        private var _loadingQueues:Array;
        private var _objectChips:Array;
        public static const BG_IMAGE_H_NUM:int = Math.ceil(HEX_H_NUM / BG_HEX_H_NUM);
        public static const SCR_HEIGHT:int = 560;
        public static const UPDATE_ALL_MAP:String = NAME + "/notes/updateAllMap";
        public static const CHIP_HEIGHT:int = 30;
        public static const NAME:String = "AllMapProxy";
        public static const CHIP_WIDTH_SUB:int = 30;
        public static const ERROR_COMMAND_ALL_MAP:String = NAME + "/notes/errorCommandAllMap";
        public static const BG_IMAGE_COLUMN:int = 5;
        public static const MAIL_SEND_COMPLETE:String = NAME + "/notes/mailSendComplete";
        public static const ALL_MAP_RAID_DITAIL_LOADED:String = NAME + "/notes/allMapRaidReportLoaded";
        public static const REPLY_MAIL_SEND_COMPLETE:String = NAME + "notes/replyMailSendComplete";
        public static const INIT_HOME_ERROR:String = NAME + "/initHomeError";
        public static const SCR_WIDTH:int = 760;
        public static const INIT_HOME_COMPLETE:String = NAME + "/initHomeComplete";
        public static const HEX_H_NUM:int = 301;
        public static const BG_WIDTH:int = 9040;
        public static const FINISH_REMOVE:String = NAME + "/notes/finishRemove";
        public static const BG_HEX_H_NUM:int = 19;
        public static const MAIL_DETAIL_LOADED:String = NAME + "/notes/mailDetailLoaded";
        public static const DESIGNATE_MAIL_SEND_COMPLETE:String = NAME + "/notes/designateMailSendComplete";
        public static const CHIP_WIDTH_ADD:int = 10;
        public static const HEX_V_NUM:int = 301;
        public static const BG_IMAGE_ROW:int = 5;
        public static const DISTRIBUTION_PLAYERS_COUNT_LOADED:String = "AllMapProxy/notes/distributionPlayersCountLoaded";
        public static const MAIL_LIST_LOADED:String = NAME + "/notes/mailListLoaded";
        public static const BG_HEX_V_NUM:int = 14;
        public static const BG_IMAGE_WIDTH:int = 570;
        public static const FINISH_CHARGE_REMOVE:String = NAME + "/notes/finishChargeRemove";
        public static const ALL_MAP_RAID_REPORT_LOADED:String = NAME + "/notes/allMapRaidReportLoaded";
        public static const BG_HEIGHT:int = 9045;
        public static const MAIL_DETAIL_LOADED_ERROR:String = NAME + "/notes/mailDetailLoadedError";
        public static const BG_IMAGE_HEIGHT:int = 420;
        public static const DISTRIBUTION_PLAYERS_COUNT_LOADED_ERROR:String = NAME + "/notes/distributionPlayersCountLoadedError";
        public static const CHANGE_ALL_MAP:String = NAME + "/notes/changeAllMap";
        public static const START_SELECT_UNIT:String = NAME + "/notes/startSelectUnit";
        public static const CHIP_WIDTH:int = 40;
        public static const START_COMMAND_ALL_MAP:String = NAME + "/notes/startCommandAllMap";
        public static const SHOW_LOADING_WINDOW:String = NAME + "/notes/showLoadingWindow";
        public static const CHIP_WIDTH_HLF:int = 20;
        public static const MAIL_SEND_ERROR:String = NAME + "/notes/mailSendError";
        public static const CHIP_HEIGHT_HLF:int = 15;
        public static const BG_IMAGE_V_NUM:int = Math.ceil(HEX_V_NUM / BG_HEX_V_NUM);

        public function AllMapProxy()
        {
            _mails = new Array();
            _mailDetail = new MailVO();
            super(NAME);
            var _loc_3:* = new Point();
            topLeft = new Point();
            center = _loc_3;
            loadingQueues = new Array();
            createMap();
            topographyChips = new Array();
            var _loc_1:int = 0;
            while (_loc_1 <= AllMapVO.TOPOGRAPHY_IMAGES_NUM)
            {
                
                topographyChips.push(createTopographyChip(_loc_1));
                _loc_1++;
            }
            objectChips = new Array();
            var _loc_2:int = 0;
            while (_loc_2 < AllMapVO.OBJECT_TYPE_NUM)
            {
                
                objectChips.push(createObjectChip(_loc_2));
                _loc_2++;
            }
            createMarginChip();
            mapImages = null;
            return;
        }// end function

        public function set mapImages(param1:Array) : void
        {
            _mapImages = param1;
            return;
        }// end function

        public function set topographyChips(param1:Array) : void
        {
            _topographyChips = param1;
            return;
        }// end function

        public function initHome(param1:int) : void
        {
            var area:* = param1;
            var json:* = JSON.encode({area:area});
            loadWithJson("/api/all_maps/init_home/", INIT_HOME_COMPLETE, INIT_HOME_ERROR, function (param1:Object) : void
            {
                trace("homeAllMapPos(", param1.x, ", ", param1.y, ")");
                var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                _loc_2.playerVO.homeAllMapPos.x = param1.x;
                _loc_2.playerVO.homeAllMapPos.y = param1.y;
                return;
            }// end function
            , json);
            return;
        }// end function

        private function recycleMapImage(param1:int, param2:int) : Bitmap
        {
            var _loc_3:* = getMapImage(param1, param2);
            if (_loc_3 == null)
            {
                return null;
            }
            return new Bitmap(_loc_3.bitmapData);
        }// end function

        public function get cmdObjectId() : int
        {
            return _cmdObjectId;
        }// end function

        public function get marginChip() : Bitmap
        {
            return _marginChip;
        }// end function

        public function foundAllMap(param1:int, param2:int) : void
        {
            var unitId:* = param1;
            var foundType:* = param2;
            var json:* = JSON.encode({x:cmdX, y:cmdY, object_id:cmdObjectId, player_id:cmdPlayerId, guild_id:cmdGuildId, unit_id:unitId, found_type:foundType});
            loadWithJson("/api/all_maps/found/", CHANGE_ALL_MAP, ERROR_COMMAND_ALL_MAP, function (param1:String) : AllMapUpdateVO
            {
                return new AllMapUpdateVO(center, true, false, false, true);
            }// end function
            , json);
            return;
        }// end function

        public function loadDistributionPlayersCount(param1:String = "AllMapProxy/notes/distributionPlayersCountLoaded") : void
        {
            var eventName:* = param1;
            loadWithJson("/api/all_maps/distribution_players_count", eventName, DISTRIBUTION_PLAYERS_COUNT_LOADED_ERROR, function (param1:Array) : Array
            {
                return param1;
            }// end function
            , null);
            return;
        }// end function

        public function set cmdObjectId(param1:int) : void
        {
            _cmdObjectId = param1;
            return;
        }// end function

        public function createTopographyChip(param1:int) : BitmapAsset
        {
            var _loc_2:* = AllMapProxy_LevelGround;
            var _loc_3:* = AllMapProxy_Grassland;
            var _loc_4:* = AllMapProxy_Forest;
            var _loc_5:* = AllMapProxy_Rockey;
            var _loc_6:* = AllMapProxy_Mine;
            var _loc_7:* = AllMapProxy_Waterside;
            var _loc_8:* = AllMapProxy_LeyLine;
            var _loc_9:* = AllMapProxy_LeyLine2;
            var _loc_10:* = AllMapProxy_Vein1;
            var _loc_11:* = AllMapProxy_Vein2;
            var _loc_12:* = AllMapProxy_Vein3;
            switch(param1)
            {
                case AllMapVO.TOPOGRAPHY_LEVEL_GROUND:
                {
                    return BitmapAsset(new _loc_2);
                }
                case AllMapVO.TOPOGRAPHY_GRASSLAND:
                {
                    return BitmapAsset(new _loc_3);
                }
                case AllMapVO.TOPOGRAPHY_FOREST:
                {
                    return BitmapAsset(new _loc_4);
                }
                case AllMapVO.TOPOGRAPHY_ROCKEY:
                {
                    return BitmapAsset(new _loc_5);
                }
                case AllMapVO.TOPOGRAPHY_MINE:
                {
                    return BitmapAsset(new _loc_6);
                }
                case AllMapVO.TOPOGRAPHY_WATERSIDE:
                {
                    return BitmapAsset(new _loc_7);
                }
                case AllMapVO.TOPOGRAPHY_LEY_LINE:
                {
                    return BitmapAsset(new _loc_8);
                }
                case (AllMapVO.TOPOGRAPHY_LEY_LINE + 1):
                {
                    return BitmapAsset(new _loc_9);
                }
                case AllMapVO.TOPOGRAPHY_LEY_LINE + 2:
                {
                    return BitmapAsset(new _loc_10);
                }
                case AllMapVO.TOPOGRAPHY_LEY_LINE + 3:
                {
                    return BitmapAsset(new _loc_11);
                }
                case AllMapVO.TOPOGRAPHY_LEY_LINE + 4:
                {
                    return BitmapAsset(new _loc_12);
                }
                default:
                {
                    trace("createTopographyChip error[", param1, "]");
                    return null;
                    break;
                }
            }
        }// end function

        public function set marginChip(param1:Bitmap) : void
        {
            _marginChip = param1;
            return;
        }// end function

        public function get cmdPlayerId() : int
        {
            return _cmdPlayerId;
        }// end function

        public function set mails(param1:Array) : void
        {
            _mails = param1;
            return;
        }// end function

        public function updateEvilPoints() : void
        {
            load("/api/all_maps/update_evil_points", CHANGE_ALL_MAP, function (param1:Object) : AllMapUpdateVO
            {
                var _loc_2:* = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                return new AllMapUpdateVO(AllMapMediator.hexPosToCenterPos(_loc_2.playerVO.homeAllMapPos), true);
            }// end function
            );
            return;
        }// end function

        public function reclaimAllMap(param1:int) : void
        {
            var unitId:* = param1;
            var json:* = JSON.encode({x:cmdX, y:cmdY, object_id:cmdObjectId, player_id:cmdPlayerId, guild_id:cmdGuildId, unit_id:unitId});
            loadWithJson("/api/all_maps/level_up/", CHANGE_ALL_MAP, ERROR_COMMAND_ALL_MAP, function (param1:String) : AllMapUpdateVO
            {
                return new AllMapUpdateVO(center, true, false, false, true);
            }// end function
            , json);
            return;
        }// end function

        private function createMarginChip() : void
        {
            var _loc_1:* = AllMapProxy_Margin;
            marginChip = BitmapAsset(new _loc_1);
            return;
        }// end function

        public function createObjectChip(param1:int) : BitmapAsset
        {
            var _loc_2:* = AllMapProxy_Home1;
            var _loc_3:* = AllMapProxy_Home2;
            var _loc_4:* = AllMapProxy_Home3;
            var _loc_5:* = AllMapProxy_Home4;
            var _loc_6:* = AllMapProxy_Home5;
            var _loc_7:* = AllMapProxy_Home6;
            var _loc_8:* = AllMapProxy_Home7;
            var _loc_9:* = AllMapProxy_Home8;
            var _loc_10:* = AllMapProxy_Home9;
            var _loc_11:* = AllMapProxy_Home10;
            var _loc_12:* = AllMapProxy_Home11;
            var _loc_13:* = AllMapProxy_Home12;
            var _loc_14:* = AllMapProxy_Home13;
            var _loc_15:* = AllMapProxy_Home14;
            var _loc_16:* = AllMapProxy_Fort1;
            var _loc_17:* = AllMapProxy_Fort2;
            var _loc_18:* = AllMapProxy_Fort3;
            var _loc_19:* = AllMapProxy_Fort4;
            var _loc_20:* = AllMapProxy_Fort5;
            var _loc_21:* = AllMapProxy_Fort6;
            var _loc_22:* = AllMapProxy_Fort7;
            var _loc_23:* = AllMapProxy_Fort8;
            var _loc_24:* = AllMapProxy_Fort9;
            var _loc_25:* = AllMapProxy_Fort10;
            var _loc_26:* = AllMapProxy_Fort11;
            var _loc_27:* = AllMapProxy_Fort12;
            var _loc_28:* = AllMapProxy_Fort13;
            var _loc_29:* = AllMapProxy_Fort14;
            var _loc_30:* = AllMapProxy_Tower1;
            var _loc_31:* = AllMapProxy_Tower2;
            var _loc_32:* = AllMapProxy_Tower3;
            var _loc_33:* = AllMapProxy_Tower4;
            var _loc_34:* = AllMapProxy_Tower5;
            var _loc_35:* = AllMapProxy_Tower6;
            var _loc_36:* = AllMapProxy_Tower7;
            var _loc_37:* = AllMapProxy_Tower8;
            var _loc_38:* = AllMapProxy_Tower9;
            var _loc_39:* = AllMapProxy_Tower10;
            var _loc_40:* = AllMapProxy_Tower11;
            var _loc_41:* = AllMapProxy_Tower12;
            var _loc_42:* = AllMapProxy_Tower13;
            var _loc_43:* = AllMapProxy_Tower14;
            var _loc_44:* = AllMapProxy_RaidBossBlue;
            var _loc_45:* = AllMapProxy_RaidBossRed;
            var _loc_46:* = AllMapProxy_RaidBossWhite;
            var _loc_47:* = AllMapProxy_RaidBossBlack;
            var _loc_48:* = AllMapProxy_Property1_lv1;
            var _loc_49:* = AllMapProxy_Property2_lv1;
            var _loc_50:* = AllMapProxy_Property3_lv1;
            var _loc_51:* = AllMapProxy_Property4_lv1;
            var _loc_52:* = AllMapProxy_Property5_lv1;
            var _loc_53:* = AllMapProxy_Property6_lv1;
            var _loc_54:* = AllMapProxy_Property7_lv1;
            var _loc_55:* = AllMapProxy_Property8_lv1;
            var _loc_56:* = AllMapProxy_Property9_lv1;
            var _loc_57:* = AllMapProxy_Property10_lv1;
            var _loc_58:* = AllMapProxy_Property11_lv1;
            var _loc_59:* = AllMapProxy_Property12_lv1;
            var _loc_60:* = AllMapProxy_Property13_lv1;
            var _loc_61:* = AllMapProxy_Property14_lv1;
            var _loc_62:* = AllMapProxy_Property1_lv2;
            var _loc_63:* = AllMapProxy_Property2_lv2;
            var _loc_64:* = AllMapProxy_Property3_lv2;
            var _loc_65:* = AllMapProxy_Property4_lv2;
            var _loc_66:* = AllMapProxy_Property5_lv2;
            var _loc_67:* = AllMapProxy_Property6_lv2;
            var _loc_68:* = AllMapProxy_Property7_lv2;
            var _loc_69:* = AllMapProxy_Property8_lv2;
            var _loc_70:* = AllMapProxy_Property9_lv2;
            var _loc_71:* = AllMapProxy_Property10_lv2;
            var _loc_72:* = AllMapProxy_Property11_lv2;
            var _loc_73:* = AllMapProxy_Property12_lv2;
            var _loc_74:* = AllMapProxy_Property13_lv2;
            var _loc_75:* = AllMapProxy_Property14_lv2;
            var _loc_76:* = AllMapProxy_Property1_lv3;
            var _loc_77:* = AllMapProxy_Property2_lv3;
            var _loc_78:* = AllMapProxy_Property3_lv3;
            var _loc_79:* = AllMapProxy_Property4_lv3;
            var _loc_80:* = AllMapProxy_Property5_lv3;
            var _loc_81:* = AllMapProxy_Property6_lv3;
            var _loc_82:* = AllMapProxy_Property7_lv3;
            var _loc_83:* = AllMapProxy_Property8_lv3;
            var _loc_84:* = AllMapProxy_Property9_lv3;
            var _loc_85:* = AllMapProxy_Property10_lv3;
            var _loc_86:* = AllMapProxy_Property11_lv3;
            var _loc_87:* = AllMapProxy_Property12_lv3;
            var _loc_88:* = AllMapProxy_Property13_lv3;
            var _loc_89:* = AllMapProxy_Property14_lv3;
            var _loc_90:* = AllMapProxy_Property1_lv4;
            var _loc_91:* = AllMapProxy_Property2_lv4;
            var _loc_92:* = AllMapProxy_Property3_lv4;
            var _loc_93:* = AllMapProxy_Property4_lv4;
            var _loc_94:* = AllMapProxy_Property5_lv4;
            var _loc_95:* = AllMapProxy_Property6_lv4;
            var _loc_96:* = AllMapProxy_Property7_lv4;
            var _loc_97:* = AllMapProxy_Property8_lv4;
            var _loc_98:* = AllMapProxy_Property9_lv4;
            var _loc_99:* = AllMapProxy_Property10_lv4;
            var _loc_100:* = AllMapProxy_Property11_lv4;
            var _loc_101:* = AllMapProxy_Property12_lv4;
            var _loc_102:* = AllMapProxy_Property13_lv4;
            var _loc_103:* = AllMapProxy_Property14_lv4;
            var _loc_104:* = AllMapProxy_Property1_lv5;
            var _loc_105:* = AllMapProxy_Property2_lv5;
            var _loc_106:* = AllMapProxy_Property3_lv5;
            var _loc_107:* = AllMapProxy_Property4_lv5;
            var _loc_108:* = AllMapProxy_Property5_lv5;
            var _loc_109:* = AllMapProxy_Property6_lv5;
            var _loc_110:* = AllMapProxy_Property7_lv5;
            var _loc_111:* = AllMapProxy_Property8_lv5;
            var _loc_112:* = AllMapProxy_Property9_lv5;
            var _loc_113:* = AllMapProxy_Property10_lv5;
            var _loc_114:* = AllMapProxy_Property11_lv5;
            var _loc_115:* = AllMapProxy_Property12_lv5;
            var _loc_116:* = AllMapProxy_Property13_lv5;
            var _loc_117:* = AllMapProxy_Property14_lv5;
            switch(param1)
            {
                case AllMapVO.OBJECT_HOME_NEUTRAL:
                {
                    return BitmapAsset(new _loc_2);
                }
                case AllMapVO.OBJECT_HOME_BLUE:
                {
                    return BitmapAsset(new _loc_3);
                }
                case AllMapVO.OBJECT_HOME_RED:
                {
                    return BitmapAsset(new _loc_4);
                }
                case AllMapVO.OBJECT_HOME_WHITE:
                {
                    return BitmapAsset(new _loc_5);
                }
                case AllMapVO.OBJECT_HOME_BLACK:
                {
                    return BitmapAsset(new _loc_6);
                }
                case AllMapVO.OBJECT_OWN_HOME_NEUTRAL:
                {
                    return BitmapAsset(new _loc_7);
                }
                case AllMapVO.OBJECT_OWN_HOME_BLUE:
                {
                    return BitmapAsset(new _loc_8);
                }
                case AllMapVO.OBJECT_OWN_HOME_RED:
                {
                    return BitmapAsset(new _loc_9);
                }
                case AllMapVO.OBJECT_OWN_HOME_WHITE:
                {
                    return BitmapAsset(new _loc_10);
                }
                case AllMapVO.OBJECT_OWN_HOME_BLACK:
                {
                    return BitmapAsset(new _loc_11);
                }
                case AllMapVO.OBJECT_GUILD_HOME_BLUE:
                {
                    return BitmapAsset(new _loc_12);
                }
                case AllMapVO.OBJECT_GUILD_HOME_RED:
                {
                    return BitmapAsset(new _loc_13);
                }
                case AllMapVO.OBJECT_GUILD_HOME_WHITE:
                {
                    return BitmapAsset(new _loc_14);
                }
                case AllMapVO.OBJECT_GUILD_HOME_BLACK:
                {
                    return BitmapAsset(new _loc_15);
                }
                case AllMapVO.OBJECT_FORT_NEUTRAL:
                {
                    return BitmapAsset(new _loc_16);
                }
                case AllMapVO.OBJECT_FORT_BLUE:
                {
                    return BitmapAsset(new _loc_17);
                }
                case AllMapVO.OBJECT_FORT_RED:
                {
                    return BitmapAsset(new _loc_18);
                }
                case AllMapVO.OBJECT_FORT_WHITE:
                {
                    return BitmapAsset(new _loc_19);
                }
                case AllMapVO.OBJECT_FORT_BLACK:
                {
                    return BitmapAsset(new _loc_20);
                }
                case AllMapVO.OBJECT_OWN_FORT_NEUTRAL:
                {
                    return BitmapAsset(new _loc_21);
                }
                case AllMapVO.OBJECT_OWN_FORT_BLUE:
                {
                    return BitmapAsset(new _loc_22);
                }
                case AllMapVO.OBJECT_OWN_FORT_RED:
                {
                    return BitmapAsset(new _loc_23);
                }
                case AllMapVO.OBJECT_OWN_FORT_WHITE:
                {
                    return BitmapAsset(new _loc_24);
                }
                case AllMapVO.OBJECT_OWN_FORT_BLACK:
                {
                    return BitmapAsset(new _loc_25);
                }
                case AllMapVO.OBJECT_GUILD_FORT_BLUE:
                {
                    return BitmapAsset(new _loc_26);
                }
                case AllMapVO.OBJECT_GUILD_FORT_RED:
                {
                    return BitmapAsset(new _loc_27);
                }
                case AllMapVO.OBJECT_GUILD_FORT_WHITE:
                {
                    return BitmapAsset(new _loc_28);
                }
                case AllMapVO.OBJECT_GUILD_FORT_BLACK:
                {
                    return BitmapAsset(new _loc_29);
                }
                case AllMapVO.OBJECT_TOWER_NEUTRAL:
                {
                    return BitmapAsset(new _loc_30);
                }
                case AllMapVO.OBJECT_TOWER_BLUE:
                {
                    return BitmapAsset(new _loc_31);
                }
                case AllMapVO.OBJECT_TOWER_RED:
                {
                    return BitmapAsset(new _loc_32);
                }
                case AllMapVO.OBJECT_TOWER_WHITE:
                {
                    return BitmapAsset(new _loc_33);
                }
                case AllMapVO.OBJECT_TOWER_BLACK:
                {
                    return BitmapAsset(new _loc_34);
                }
                case AllMapVO.OBJECT_OWN_TOWER_NEUTRAL:
                {
                    return BitmapAsset(new _loc_35);
                }
                case AllMapVO.OBJECT_OWN_TOWER_BLUE:
                {
                    return BitmapAsset(new _loc_36);
                }
                case AllMapVO.OBJECT_OWN_TOWER_RED:
                {
                    return BitmapAsset(new _loc_37);
                }
                case AllMapVO.OBJECT_OWN_TOWER_WHITE:
                {
                    return BitmapAsset(new _loc_38);
                }
                case AllMapVO.OBJECT_OWN_TOWER_BLACK:
                {
                    return BitmapAsset(new _loc_39);
                }
                case AllMapVO.OBJECT_GUILD_TOWER_BLUE:
                {
                    return BitmapAsset(new _loc_40);
                }
                case AllMapVO.OBJECT_GUILD_TOWER_RED:
                {
                    return BitmapAsset(new _loc_41);
                }
                case AllMapVO.OBJECT_GUILD_TOWER_WHITE:
                {
                    return BitmapAsset(new _loc_42);
                }
                case AllMapVO.OBJECT_GUILD_TOWER_BLACK:
                {
                    return BitmapAsset(new _loc_43);
                }
                case AllMapVO.OBJECT_RAID_BOSS_BLUE:
                {
                    return BitmapAsset(new _loc_44);
                }
                case AllMapVO.OBJECT_RAID_BOSS_RED:
                {
                    return BitmapAsset(new _loc_45);
                }
                case AllMapVO.OBJECT_RAID_BOSS_WHITE:
                {
                    return BitmapAsset(new _loc_46);
                }
                case AllMapVO.OBJECT_RAID_BOSS_BLACK:
                {
                    return BitmapAsset(new _loc_47);
                }
                case AllMapVO.OBJECT_PROPERTY_NEUTRAL_LV1:
                {
                    return BitmapAsset(new _loc_48);
                }
                case AllMapVO.OBJECT_PROPERTY_BLUE_LV1:
                {
                    return BitmapAsset(new _loc_49);
                }
                case AllMapVO.OBJECT_PROPERTY_RED_LV1:
                {
                    return BitmapAsset(new _loc_50);
                }
                case AllMapVO.OBJECT_PROPERTY_WHITE_LV1:
                {
                    return BitmapAsset(new _loc_51);
                }
                case AllMapVO.OBJECT_PROPERTY_BLACK_LV1:
                {
                    return BitmapAsset(new _loc_52);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_NEUTRAL_LV1:
                {
                    return BitmapAsset(new _loc_53);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLUE_LV1:
                {
                    return BitmapAsset(new _loc_54);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_RED_LV1:
                {
                    return BitmapAsset(new _loc_55);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_WHITE_LV1:
                {
                    return BitmapAsset(new _loc_56);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLACK_LV1:
                {
                    return BitmapAsset(new _loc_57);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLUE_LV1:
                {
                    return BitmapAsset(new _loc_58);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_RED_LV1:
                {
                    return BitmapAsset(new _loc_59);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_WHITE_LV1:
                {
                    return BitmapAsset(new _loc_60);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLACK_LV1:
                {
                    return BitmapAsset(new _loc_61);
                }
                case AllMapVO.OBJECT_PROPERTY_NEUTRAL_LV2:
                {
                    return BitmapAsset(new _loc_62);
                }
                case AllMapVO.OBJECT_PROPERTY_BLUE_LV2:
                {
                    return BitmapAsset(new _loc_63);
                }
                case AllMapVO.OBJECT_PROPERTY_RED_LV2:
                {
                    return BitmapAsset(new _loc_64);
                }
                case AllMapVO.OBJECT_PROPERTY_WHITE_LV2:
                {
                    return BitmapAsset(new _loc_65);
                }
                case AllMapVO.OBJECT_PROPERTY_BLACK_LV2:
                {
                    return BitmapAsset(new _loc_66);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_NEUTRAL_LV2:
                {
                    return BitmapAsset(new _loc_67);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLUE_LV2:
                {
                    return BitmapAsset(new _loc_68);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_RED_LV2:
                {
                    return BitmapAsset(new _loc_69);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_WHITE_LV2:
                {
                    return BitmapAsset(new _loc_70);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLACK_LV2:
                {
                    return BitmapAsset(new _loc_71);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLUE_LV2:
                {
                    return BitmapAsset(new _loc_72);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_RED_LV2:
                {
                    return BitmapAsset(new _loc_73);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_WHITE_LV2:
                {
                    return BitmapAsset(new _loc_74);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLACK_LV2:
                {
                    return BitmapAsset(new _loc_75);
                }
                case AllMapVO.OBJECT_PROPERTY_NEUTRAL_LV3:
                {
                    return BitmapAsset(new _loc_76);
                }
                case AllMapVO.OBJECT_PROPERTY_BLUE_LV3:
                {
                    return BitmapAsset(new _loc_77);
                }
                case AllMapVO.OBJECT_PROPERTY_RED_LV3:
                {
                    return BitmapAsset(new _loc_78);
                }
                case AllMapVO.OBJECT_PROPERTY_WHITE_LV3:
                {
                    return BitmapAsset(new _loc_79);
                }
                case AllMapVO.OBJECT_PROPERTY_BLACK_LV3:
                {
                    return BitmapAsset(new _loc_80);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_NEUTRAL_LV3:
                {
                    return BitmapAsset(new _loc_81);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLUE_LV3:
                {
                    return BitmapAsset(new _loc_82);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_RED_LV3:
                {
                    return BitmapAsset(new _loc_83);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_WHITE_LV3:
                {
                    return BitmapAsset(new _loc_84);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLACK_LV3:
                {
                    return BitmapAsset(new _loc_85);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLUE_LV3:
                {
                    return BitmapAsset(new _loc_86);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_RED_LV3:
                {
                    return BitmapAsset(new _loc_87);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_WHITE_LV3:
                {
                    return BitmapAsset(new _loc_88);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLACK_LV3:
                {
                    return BitmapAsset(new _loc_89);
                }
                case AllMapVO.OBJECT_PROPERTY_NEUTRAL_LV4:
                {
                    return BitmapAsset(new _loc_90);
                }
                case AllMapVO.OBJECT_PROPERTY_BLUE_LV4:
                {
                    return BitmapAsset(new _loc_91);
                }
                case AllMapVO.OBJECT_PROPERTY_RED_LV4:
                {
                    return BitmapAsset(new _loc_92);
                }
                case AllMapVO.OBJECT_PROPERTY_WHITE_LV4:
                {
                    return BitmapAsset(new _loc_93);
                }
                case AllMapVO.OBJECT_PROPERTY_BLACK_LV4:
                {
                    return BitmapAsset(new _loc_94);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_NEUTRAL_LV4:
                {
                    return BitmapAsset(new _loc_95);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLUE_LV4:
                {
                    return BitmapAsset(new _loc_96);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_RED_LV4:
                {
                    return BitmapAsset(new _loc_97);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_WHITE_LV4:
                {
                    return BitmapAsset(new _loc_98);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLACK_LV4:
                {
                    return BitmapAsset(new _loc_99);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLUE_LV4:
                {
                    return BitmapAsset(new _loc_100);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_RED_LV4:
                {
                    return BitmapAsset(new _loc_101);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_WHITE_LV4:
                {
                    return BitmapAsset(new _loc_102);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLACK_LV4:
                {
                    return BitmapAsset(new _loc_103);
                }
                case AllMapVO.OBJECT_PROPERTY_NEUTRAL_LV5:
                {
                    return BitmapAsset(new _loc_104);
                }
                case AllMapVO.OBJECT_PROPERTY_BLUE_LV5:
                {
                    return BitmapAsset(new _loc_105);
                }
                case AllMapVO.OBJECT_PROPERTY_RED_LV5:
                {
                    return BitmapAsset(new _loc_106);
                }
                case AllMapVO.OBJECT_PROPERTY_WHITE_LV5:
                {
                    return BitmapAsset(new _loc_107);
                }
                case AllMapVO.OBJECT_PROPERTY_BLACK_LV5:
                {
                    return BitmapAsset(new _loc_108);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_NEUTRAL_LV5:
                {
                    return BitmapAsset(new _loc_109);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLUE_LV5:
                {
                    return BitmapAsset(new _loc_110);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_RED_LV5:
                {
                    return BitmapAsset(new _loc_111);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_WHITE_LV5:
                {
                    return BitmapAsset(new _loc_112);
                }
                case AllMapVO.OBJECT_OWN_PROPERTY_BLACK_LV5:
                {
                    return BitmapAsset(new _loc_113);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLUE_LV5:
                {
                    return BitmapAsset(new _loc_114);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_RED_LV5:
                {
                    return BitmapAsset(new _loc_115);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_WHITE_LV5:
                {
                    return BitmapAsset(new _loc_116);
                }
                case AllMapVO.OBJECT_GUILD_PROPERTY_BLACK_LV5:
                {
                    return BitmapAsset(new _loc_117);
                }
                default:
                {
                    trace("createObjectChip error[", param1, "]");
                    return null;
                    break;
                }
            }
        }// end function

        public function topographyChipIndex(param1:int, param2:int) : int
        {
            var _loc_3:* = AllMapVO.TOPOGRAPHY_IMAGES.indexOf(map[param2][param1].topography);
            return _loc_3 == -1 ? (AllMapVO.TOPOGRAPHY_LEY_LINE) : (_loc_3);
        }// end function

        public function gotoAllMap() : void
        {
            var _loc_2:PlayerProxy = null;
            var _loc_1:* = mapImages == null;
            if (_loc_1)
            {
                _loc_2 = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                center = AllMapMediator.hexPosToCenterPos(_loc_2.playerVO.homeAllMapPos);
            }
            changeAllMap(new AllMapUpdateVO(center, true, _loc_1, true));
            return;
        }// end function

        public function get cmdDistance() : int
        {
            return _cmdDistance;
        }// end function

        public function set objectChips(param1:Array) : void
        {
            _objectChips = param1;
            return;
        }// end function

        public function get center() : Point
        {
            return _center;
        }// end function

        private function debugAttackAllMap() : void
        {
            Alert.show(Utils.i18n("localize7"), "Debug", Alert.YES | Alert.NO, null, function (event:CloseEvent) : void
            {
                if (event.detail == Alert.YES)
                {
                    sendNotification(SHOW_LOADING_WINDOW, true);
                    invadeAllMap();
                }
                else
                {
                    startSelectUnit();
                }
                return;
            }// end function
            );
            return;
        }// end function

        private function createMapImages(param1:Point, param2:Array) : Array
        {
            var _loc_5:int = 0;
            var _loc_6:DisplayObject = null;
            var _loc_7:uint = 0;
            var _loc_3:* = new Array();
            var _loc_4:* = param1.y;
            while (_loc_4 < param1.y + BG_IMAGE_ROW)
            {
                
                _loc_5 = param1.x;
                while (_loc_5 < param1.x + BG_IMAGE_COLUMN)
                {
                    
                    _loc_6 = null;
                    if (_loc_4 < 0 || _loc_4 >= BG_IMAGE_V_NUM || _loc_5 < 0 || _loc_5 >= BG_IMAGE_H_NUM)
                    {
                        _loc_6 = createMarginImage();
                    }
                    else
                    {
                        _loc_7 = 0;
                        while (_loc_7 < param2.length)
                        {
                            
                            if (param2[_loc_7].x / BG_HEX_H_NUM == _loc_5 && param2[_loc_7].y / BG_HEX_V_NUM == _loc_4)
                            {
                                setMap(_loc_5, _loc_4, param1, param2[_loc_7].levels, param2[_loc_7].objects);
                                _loc_6 = createMapImage(_loc_5, _loc_4);
                                break;
                            }
                            _loc_7 = _loc_7 + 1;
                        }
                        if (_loc_6 == null)
                        {
                            _loc_6 = recycleMapImage(_loc_5, _loc_4);
                        }
                    }
                    _loc_3.push(_loc_6);
                    _loc_5++;
                }
                _loc_4++;
            }
            return _loc_3;
        }// end function

        public function get map() : Array
        {
            return _map;
        }// end function

        public function get cmdX() : int
        {
            return _cmdX;
        }// end function

        public function get cmdY() : int
        {
            return _cmdY;
        }// end function

        public function attackAllMap(param1:Boolean) : void
        {
            if (!param1)
            {
                cmdInvade = false;
            }
            if (false && cmdInvade)
            {
                debugAttackAllMap();
            }
            else
            {
                startSelectUnit();
            }
            return;
        }// end function

        public function sendMail(param1:Object, param2:String) : void
        {
            var mail:* = param1;
            var event:* = param2;
            var json:* = JSON.encode(mail);
            loadWithJson("/api/in_game_mails/create", event, MAIL_SEND_ERROR, function (param1:Object) : Object
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function objectChipIndex(param1:int, param2:int) : int
        {
            if (map[param2][param1].object < 0)
            {
                return AllMapVO.OBJECT_NONE;
            }
            return map[param2][param1].object;
        }// end function

        private function invadeAllMap() : void
        {
            var json:* = JSON.encode({x:cmdX, y:cmdY, object_id:cmdObjectId, player_id:cmdPlayerId, guild_id:cmdGuildId});
            loadWithJson("/api/all_maps/invade/", CHANGE_ALL_MAP, ERROR_COMMAND_ALL_MAP, function (param1:String) : AllMapUpdateVO
            {
                return new AllMapUpdateVO(center, true, false, false, true);
            }// end function
            , json);
            return;
        }// end function

        public function loadMailDetail(param1:int) : void
        {
            var mailId:* = param1;
            var json:* = JSON.encode({reception_id:mailId});
            loadWithJson("/api/in_game_mails/read", MAIL_DETAIL_LOADED, MAIL_DETAIL_LOADED_ERROR, function (param1:Object) : Object
            {
                _mailDetail = new MailVO();
                var _loc_2:* = param1.mail.reception.reception.in_game_mail;
                _mailDetail.mailId = param1.mail.reception.reception.id;
                _mailDetail.senderName = _loc_2.sender_name;
                _mailDetail.subject = _loc_2.subject;
                _mailDetail.sentAt = _loc_2.sent_at_label;
                _mailDetail.readAt = param1.mail.reception.reception.read_at_label;
                _mailDetail.body = param1.mail.body;
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function getCommandAllMap(param1:Point) : void
        {
            var pos:* = param1;
            var m:* = map[pos.y][pos.x];
            var json:* = JSON.encode({x:pos.x, y:pos.y, object:m.restoreObject(), level:m.level});
            loadWithJson("/api/all_maps/get_commands/", START_COMMAND_ALL_MAP, null, function (param1:Object) : AllMapCommandVO
            {
                var _loc_3:TaskProxy = null;
                if (param1.change_view == "true")
                {
                    changeAllMap(new AllMapUpdateVO(center, true, false, true));
                    _loc_3 = TaskProxy(facade.retrieveProxy(TaskProxy.NAME));
                    _loc_3.updateTask();
                }
                var _loc_2:* = new AllMapCommandVO(param1);
                cmdInvade = _loc_2.invade;
                cmdX = param1.x;
                cmdY = param1.y;
                cmdObjectId = param1.object_id;
                cmdPlayerId = param1.player_id;
                cmdGuildId = param1.guild_id;
                cmdDistance = param1.distance;
                return _loc_2;
            }// end function
            , json);
            return;
        }// end function

        public function chargeRemoveAllMap(param1:int) : void
        {
            var area:* = param1;
            var json:* = JSON.encode({x:cmdX, y:cmdY, object_id:cmdObjectId, player_id:cmdPlayerId, guild_id:cmdGuildId, area:area});
            loadWithJson("/api/all_maps/charge_remove/", CHANGE_ALL_MAP, ERROR_COMMAND_ALL_MAP, function (param1:Object) : AllMapUpdateVO
            {
                var _loc_2:* = new Point(param1.x, param1.y);
                sendNotification(FINISH_CHARGE_REMOVE, _loc_2);
                if (param1.point)
                {
                    if (ExternalInterface.available)
                    {
                        ExternalInterface.call("updatePower", param1.point);
                    }
                }
                return new AllMapUpdateVO(AllMapMediator.hexPosToCenterPos(_loc_2), true, true, false, true);
            }// end function
            , json);
            return;
        }// end function

        private function createMapImage(param1:int, param2:int) : Bitmap
        {
            var _loc_8:int = 0;
            var _loc_3:* = new BitmapData(BG_IMAGE_WIDTH + CHIP_WIDTH_ADD, BG_IMAGE_HEIGHT + CHIP_HEIGHT_HLF, true, 0);
            var _loc_4:* = new Matrix();
            var _loc_5:* = new Matrix();
            var _loc_6:* = BG_HEX_H_NUM * param1;
            var _loc_7:* = BG_HEX_V_NUM * param2;
            _loc_4.translate(0, _loc_6 % 2 ? (CHIP_HEIGHT_HLF) : (0));
            param2 = _loc_7;
            while (param2 < _loc_7 + BG_HEX_V_NUM)
            {
                
                param1 = _loc_6;
                while (param1 < _loc_6 + BG_HEX_H_NUM)
                {
                    
                    if (param1 >= HEX_H_NUM || param2 >= HEX_V_NUM)
                    {
                        _loc_3.draw(marginChip, _loc_4);
                    }
                    else
                    {
                        _loc_3.draw(topographyChips[topographyChipIndex(param1, param2)], _loc_4);
                        _loc_8 = objectChipIndex(param1, param2);
                        if (_loc_8 != AllMapVO.OBJECT_NONE)
                        {
                            _loc_3.draw(objectChips[_loc_8], _loc_4);
                        }
                    }
                    _loc_4.translate(CHIP_WIDTH_SUB, CHIP_HEIGHT_HLF * (param1 % 2 ? (-1) : (1)));
                    param1++;
                }
                _loc_4.translate(CHIP_WIDTH_SUB * BG_HEX_H_NUM * -1, (BG_HEX_H_NUM % 2 ? (_loc_6 % 2 ? (CHIP_HEIGHT) : (0)) : (_loc_6 % 2 ? (0) : (CHIP_HEIGHT_HLF))) + CHIP_HEIGHT_HLF);
                param2++;
            }
            return new Bitmap(_loc_3);
        }// end function

        public function surrenderAllMap() : void
        {
            var json:* = JSON.encode({x:cmdX, y:cmdY, object_id:cmdObjectId, player_id:cmdPlayerId, guild_id:cmdGuildId});
            loadWithJson("/api/all_maps/surrender/", CHANGE_ALL_MAP, ERROR_COMMAND_ALL_MAP, function (param1:String) : AllMapUpdateVO
            {
                return new AllMapUpdateVO(center, true, false, false, true);
            }// end function
            , json);
            return;
        }// end function

        public function get topographyChips() : Array
        {
            return _topographyChips;
        }// end function

        public function set cmdPlayerId(param1:int) : void
        {
            _cmdPlayerId = param1;
            return;
        }// end function

        public function destroyAllMap() : void
        {
            var json:* = JSON.encode({x:cmdX, y:cmdY, object_id:cmdObjectId, player_id:cmdPlayerId, guild_id:cmdGuildId});
            loadWithJson("/api/all_maps/destroy/", CHANGE_ALL_MAP, ERROR_COMMAND_ALL_MAP, function (param1:String) : AllMapUpdateVO
            {
                return new AllMapUpdateVO(center, true, false, false, true);
            }// end function
            , json);
            return;
        }// end function

        private function setMap(param1:int, param2:int, param3:Point, param4:String, param5:String) : void
        {
            var _loc_8:int = 0;
            var _loc_6:uint = 0;
            param1 = param1 * BG_HEX_H_NUM;
            param2 = param2 * BG_HEX_V_NUM;
            var _loc_7:* = param2;
            while (_loc_7 < param2 + BG_HEX_V_NUM)
            {
                
                _loc_8 = param1;
                while (_loc_8 < param1 + BG_HEX_H_NUM)
                {
                    
                    if (_loc_8 >= 0 && _loc_8 < HEX_H_NUM && _loc_8 >= 0 && _loc_7 < HEX_V_NUM)
                    {
                        map[_loc_7][_loc_8].level = parseInt(param4.charAt(_loc_6), 16);
                        map[_loc_7][_loc_8].object = AllMapVO.parseObject(param5.charCodeAt(_loc_6), map[_loc_7][_loc_8].level);
                    }
                    _loc_6 = _loc_6 + 1;
                    _loc_8++;
                }
                _loc_7++;
            }
            return;
        }// end function

        public function get mails() : Array
        {
            return _mails;
        }// end function

        public function set cmdDistance(param1:int) : void
        {
            _cmdDistance = param1;
            return;
        }// end function

        public function removeAllMap() : void
        {
            var json:* = JSON.encode({x:cmdX, y:cmdY, object_id:cmdObjectId, player_id:cmdPlayerId, guild_id:cmdGuildId});
            loadWithJson("/api/all_maps/remove/", CHANGE_ALL_MAP, ERROR_COMMAND_ALL_MAP, function (param1:Object) : AllMapUpdateVO
            {
                var _loc_2:* = new Point(param1.x, param1.y);
                sendNotification(FINISH_REMOVE, _loc_2);
                return new AllMapUpdateVO(AllMapMediator.hexPosToCenterPos(_loc_2), true, true, false, true);
            }// end function
            , json);
            return;
        }// end function

        override public function onRegister() : void
        {
            return;
        }// end function

        public function get objectChips() : Array
        {
            return _objectChips;
        }// end function

        public function set cmdGuildId(param1:int) : void
        {
            _cmdGuildId = param1;
            return;
        }// end function

        public function set center(param1:Point) : void
        {
            _center = param1;
            return;
        }// end function

        private function isLoading(param1:int, param2:int) : Boolean
        {
            var _loc_4:Point = null;
            var _loc_3:uint = 0;
            while (_loc_3 < loadingQueues.length)
            {
                
                _loc_4 = loadingQueues[_loc_3];
                if (_loc_4.x == param1 && _loc_4.y == param2)
                {
                    return true;
                }
                _loc_3 = _loc_3 + 1;
            }
            return false;
        }// end function

        public function set map(param1:Array) : void
        {
            _map = param1;
            return;
        }// end function

        private function startSelectUnit() : void
        {
            load("/api/units?status=0", START_SELECT_UNIT, function (param1:Array) : Array
            {
                var _loc_4:Object = null;
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                var _loc_3:* = new Array();
                for each (_loc_4 in param1)
                {
                    
                    _loc_3.push(_loc_2.unitFactory(_loc_4.unit));
                }
                _loc_3.sortOn(["sortId", "unitId"], Array.NUMERIC);
                return _loc_3;
            }// end function
            );
            return;
        }// end function

        public function set loadingQueues(param1:Array) : void
        {
            _loadingQueues = param1;
            return;
        }// end function

        public function set cmdY(param1:int) : void
        {
            _cmdY = param1;
            return;
        }// end function

        private function createMap() : void
        {
            var _loc_5:int = 0;
            var _loc_6:int = 0;
            var _loc_1:* = AllMapProxy_AllMapGrounds;
            var _loc_2:* = new _loc_1;
            var _loc_3:int = 0;
            map = new Array(HEX_V_NUM);
            var _loc_4:int = 0;
            while (_loc_4 < HEX_V_NUM)
            {
                
                map[_loc_4] = new Array(HEX_H_NUM);
                _loc_5 = 0;
                while (_loc_5 < HEX_H_NUM)
                {
                    
                    _loc_6 = parseInt(_loc_2.charAt(_loc_3), 36);
                    if (_loc_6 < 10)
                    {
                        _loc_6 = _loc_6 - 1;
                    }
                    else
                    {
                        _loc_6 = _loc_6 - (10 - AllMapVO.TOPOGRAPHY_LEY_LINE_A);
                    }
                    map[_loc_4][_loc_5] = new AllMapVO(_loc_6);
                    _loc_3++;
                    _loc_5++;
                }
                _loc_4++;
            }
            return;
        }// end function

        public function set cmdX(param1:int) : void
        {
            _cmdX = param1;
            return;
        }// end function

        public function changeAllMap(param1:AllMapUpdateVO) : void
        {
            var tl:Point;
            var vo:* = param1;
            this.center = vo.center;
            tl = getTopLeft(this.center);
            if (!vo.forceLoad)
            {
                if (tl.equals(topLeft))
                {
                    return;
                }
            }
            var rects:* = makeJsonObject(vo.forceLoad, tl);
            if (rects.length == 0)
            {
                return;
            }
            var json:* = JSON.encode({rects:rects});
            loadWithJson("/api/all_maps/load_view/", UPDATE_ALL_MAP, null, function (param1:Array) : AllMapUpdateVO
            {
                tl = getTopLeft(center);
                mapImages = createMapImages(tl, param1);
                endLoading(param1);
                topLeft = tl;
                return vo;
            }// end function
            , json);
            return;
        }// end function

        public function set mailDetail(param1:MailVO) : void
        {
            _mailDetail = param1;
            return;
        }// end function

        public function get cmdGuildId() : int
        {
            return _cmdGuildId;
        }// end function

        private function makeJsonObject(param1:Boolean, param2:Point) : Array
        {
            var _loc_5:int = 0;
            var _loc_3:* = new Array();
            var _loc_4:* = param2.y;
            while (_loc_4 < param2.y + BG_IMAGE_ROW)
            {
                
                _loc_5 = param2.x;
                while (_loc_5 < param2.x + BG_IMAGE_COLUMN)
                {
                    
                    if (_loc_4 >= 0 && _loc_4 < BG_IMAGE_V_NUM && _loc_5 >= 0 && _loc_5 < BG_IMAGE_H_NUM)
                    {
                        if (param1 || !isLoading(_loc_5, _loc_4) && getMapImage(_loc_5, _loc_4) == null)
                        {
                            _loc_3.push({x:_loc_5 * BG_HEX_H_NUM, y:_loc_4 * BG_HEX_V_NUM, w:BG_HEX_H_NUM, h:BG_HEX_V_NUM});
                            loadingQueues.push(new Point(_loc_5, _loc_4));
                        }
                    }
                    _loc_5++;
                }
                _loc_4++;
            }
            return _loc_3;
        }// end function

        public function set cmdInvade(param1:Boolean) : void
        {
            _cmdInvade = param1;
            return;
        }// end function

        private function getMapImage(param1:int, param2:int) : Bitmap
        {
            var _loc_3:uint = 0;
            var _loc_4:int = 0;
            var _loc_5:int = 0;
            if (mapImages != null)
            {
                _loc_3 = 0;
                _loc_4 = topLeft.y;
                while (_loc_4 < topLeft.y + BG_IMAGE_ROW)
                {
                    
                    _loc_5 = topLeft.x;
                    while (_loc_5 < topLeft.x + BG_IMAGE_COLUMN)
                    {
                        
                        if (_loc_4 == param2 && _loc_5 == param1)
                        {
                            return mapImages[_loc_3] as Bitmap;
                        }
                        _loc_3 = _loc_3 + 1;
                        _loc_5++;
                    }
                    _loc_4++;
                }
            }
            return null;
        }// end function

        public function get loadingQueues() : Array
        {
            return _loadingQueues;
        }// end function

        private function endLoading(param1:Array) : void
        {
            var _loc_3:uint = 0;
            var _loc_4:Point = null;
            var _loc_2:uint = 0;
            while (_loc_2 < param1.length)
            {
                
                _loc_3 = 0;
                while (_loc_3 < loadingQueues.length)
                {
                    
                    _loc_4 = loadingQueues[_loc_3];
                    if (param1[_loc_2].x / BG_HEX_H_NUM == _loc_4.x && param1[_loc_2].y / BG_HEX_V_NUM == _loc_4.y)
                    {
                        loadingQueues.splice(_loc_3, param1.length);
                        return;
                    }
                    _loc_3 = _loc_3 + 1;
                }
                _loc_2 = _loc_2 + 1;
            }
            return;
        }// end function

        public function loadRaidReport() : void
        {
            load("/api/tactics/list", ALL_MAP_RAID_REPORT_LOADED, function (param1:Array) : Array
            {
                return param1;
            }// end function
            );
            return;
        }// end function

        public function get mailDetail() : MailVO
        {
            return _mailDetail;
        }// end function

        public function get cmdInvade() : Boolean
        {
            return _cmdInvade;
        }// end function

        public function repairAllMap(param1:int) : void
        {
            var unitId:* = param1;
            var json:* = JSON.encode({x:cmdX, y:cmdY, object_id:cmdObjectId, player_id:cmdPlayerId, guild_id:cmdGuildId, unit_id:unitId});
            loadWithJson("/api/all_maps/repair/", BuildingProxy.ACTIVITY_START, ERROR_COMMAND_ALL_MAP, function (param1:String) : String
            {
                return param1;
            }// end function
            , json);
            return;
        }// end function

        public function get mapImages() : Array
        {
            return _mapImages;
        }// end function

        public function set topLeft(param1:Point) : void
        {
            _topLeft = param1;
            return;
        }// end function

        public function loadMailList(param1:int = 1) : void
        {
            var page:* = param1;
            var data:* = "page=" + page.toString();
            load("/api/in_game_mails", MAIL_LIST_LOADED, function (param1:Object) : Object
            {
                var _loc_2:Object = null;
                var _loc_3:Object = null;
                var _loc_4:MailVO = null;
                _mails = new Array();
                for each (_loc_2 in param1.receptions)
                {
                    
                    _loc_3 = _loc_2.reception.in_game_mail;
                    _loc_4 = new MailVO();
                    _loc_4.mailId = _loc_2.reception.id;
                    _loc_4.senderName = _loc_3.sender_name;
                    _loc_4.subject = _loc_3.subject;
                    _loc_4.sentAt = _loc_3.sent_at_label;
                    _loc_4.readAt = _loc_2.reception.read_at;
                    _mails.push(_loc_4);
                }
                return param1.pages;
            }// end function
            , "", data);
            return;
        }// end function

        public function get topLeft() : Point
        {
            return _topLeft;
        }// end function

        public function garrisonAllMap(param1:Array) : void
        {
            var unitIds:* = param1;
            var json:* = JSON.encode({x:cmdX, y:cmdY, object_id:cmdObjectId, player_id:cmdPlayerId, guild_id:cmdGuildId, unit_ids:unitIds});
            loadWithJson("/api/all_maps/garrison/", null, ERROR_COMMAND_ALL_MAP, function (param1:Object) : void
            {
                var _loc_2:* = UnitProxy(facade.retrieveProxy(UnitProxy.NAME));
                _loc_2.loadHomeUnits();
                return;
            }// end function
            , json);
            return;
        }// end function

        public static function getTopLeft(param1:Point) : Point
        {
            return new Point(AllMapProxy.int(param1.x / BG_IMAGE_WIDTH) - AllMapProxy.int(BG_IMAGE_COLUMN / 2), AllMapProxy.int(param1.y / BG_IMAGE_HEIGHT) - AllMapProxy.int(BG_IMAGE_ROW / 2));
        }// end function

        private static function createMarginImage() : Shape
        {
            var _loc_1:* = new Shape();
            _loc_1.graphics.beginFill(530464, 1);
            _loc_1.graphics.drawRect(0, 0, BG_IMAGE_WIDTH + CHIP_WIDTH_ADD, BG_IMAGE_HEIGHT + CHIP_HEIGHT_HLF);
            _loc_1.graphics.endFill();
            return _loc_1;
        }// end function

    }
}
