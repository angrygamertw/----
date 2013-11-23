package 
{
    import com.kbmj.viking.view.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_PlayerStatusWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_PlayerStatusWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("playerVO", {propertyChange:true}, [param3[0], param3[2], param3[4], param3[6], param3[8], param3[10], param3[12], param3[14]], param2);
            param4[18] = new PropertyWatcher("maxUnitCount", {propertyChange:true}, [param3[14]], null);
            param4[14] = new PropertyWatcher("propertiesCountMax", {propertyChange:true}, [param3[12]], null);
            param4[17] = new PropertyWatcher("unitCount", {propertyChange:true}, [param3[14]], null);
            param4[1] = new PropertyWatcher("playerName", {propertyChange:true}, [param3[0]], null);
            param4[13] = new PropertyWatcher("propertiesCount", {propertyChange:true}, [param3[12]], null);
            param4[15] = new PropertyWatcher("levelMaxPropertiesCount", {propertyChange:true}, [param3[12]], null);
            param4[11] = new PropertyWatcher("possessionTicket", {propertyChange:true}, [param3[10]], null);
            param4[7] = new PropertyWatcher("rarity", {propertyChange:true}, [param3[6]], null);
            param4[5] = new PropertyWatcher("soulCrystal", {propertyChange:true}, [param3[4]], null);
            param4[3] = new PropertyWatcher("gold", {propertyChange:true}, [param3[2]], null);
            param4[9] = new PropertyWatcher("bonusBattlesCount", {propertyChange:true}, [param3[8]], null);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[18]);
            param4[0].addChild(param4[14]);
            param4[0].addChild(param4[17]);
            param4[0].addChild(param4[1]);
            param4[0].addChild(param4[13]);
            param4[0].addChild(param4[15]);
            param4[0].addChild(param4[11]);
            param4[0].addChild(param4[7]);
            param4[0].addChild(param4[5]);
            param4[0].addChild(param4[3]);
            param4[0].addChild(param4[9]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            PlayerStatus.watcherSetupUtil = new _com_kbmj_viking_view_PlayerStatusWatcherSetupUtil;
            return;
        }// end function

    }
}
