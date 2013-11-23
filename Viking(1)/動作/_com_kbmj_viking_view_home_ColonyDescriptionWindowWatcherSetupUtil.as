package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ColonyDescriptionWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ColonyDescriptionWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("_windowBg", {propertyChange:true}, [param3[0]], param2);
            param4[25] = new PropertyWatcher("_buttonNewColony", {propertyChange:true}, [param3[20]], param2);
            param4[27] = new PropertyWatcher("_buttonX", {propertyChange:true}, [param3[22]], param2);
            param4[17] = new PropertyWatcher("_msg", {propertyChange:true}, [param3[10]], param2);
            param4[14] = new PropertyWatcher("_loots", {propertyChange:true}, [param3[7]], param2);
            param4[3] = new PropertyWatcher("_colony", {propertyChange:true}, [param3[2], param3[3], param3[5]], param2);
            param4[7] = new PropertyWatcher("ownerGuildName", {propertyChange:true}, [param3[3]], null);
            param4[4] = new PropertyWatcher("masterVO", {propertyChange:true}, [param3[2], param3[5]], null);
            param4[5] = new PropertyWatcher("name", null, [param3[2]], null);
            param4[10] = new PropertyWatcher("gold", null, [param3[5]], null);
            param4[22] = new PropertyWatcher("_buttonConfirm", {propertyChange:true}, [param3[14]], param2);
            param4[23] = new PropertyWatcher("_buttonBack", {propertyChange:true}, [param3[16]], param2);
            param4[26] = new PropertyWatcher("_buttonOldColony", {propertyChange:true}, [param3[21]], param2);
            param4[11] = new PropertyWatcher("_mvp", {propertyChange:true}, [param3[6]], param2);
            param4[12] = new PropertyWatcher("name", null, [param3[6]], null);
            param4[13] = new PropertyWatcher("quantity", null, [param3[6]], null);
            param4[20] = new PropertyWatcher("_viewSelectCondition", {propertyChange:true}, [param3[19], param3[12]], param2);
            param4[21] = new PropertyWatcher("_enabled", {propertyChange:true}, [param3[17], param3[13], param3[15]], param2);
            param4[19] = new PropertyWatcher("_ticket", {propertyChange:true}, [param3[11]], param2);
            param4[8] = new PropertyWatcher("_description", {propertyChange:true}, [param3[4]], param2);
            param4[24] = new PropertyWatcher("_buttonCancel", {propertyChange:true}, [param3[18]], param2);
            param4[0].updateParent(param1);
            param4[25].updateParent(param1);
            param4[27].updateParent(param1);
            param4[17].updateParent(param1);
            param4[14].updateParent(param1);
            param4[3].updateParent(param1);
            param4[3].addChild(param4[7]);
            param4[3].addChild(param4[4]);
            param4[4].addChild(param4[5]);
            param4[4].addChild(param4[10]);
            param4[22].updateParent(param1);
            param4[23].updateParent(param1);
            param4[26].updateParent(param1);
            param4[11].updateParent(param1);
            param4[11].addChild(param4[12]);
            param4[11].addChild(param4[13]);
            param4[20].updateParent(param1);
            param4[21].updateParent(param1);
            param4[19].updateParent(param1);
            param4[8].updateParent(param1);
            param4[24].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ColonyDescriptionWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ColonyDescriptionWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
