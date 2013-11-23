package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_NormalUnionWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_NormalUnionWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[24] = new PropertyWatcher("_swf_cancel", {propertyChange:true}, [param3[25]], param2);
            param4[35] = new PropertyWatcher("yinUnit", {propertyChange:true}, [param3[32], param3[31], param3[30]], param2);
            param4[40] = new PropertyWatcher("level", {propertyChange:true}, [param3[32]], null);
            param4[36] = new PropertyWatcher("name", {propertyChange:true}, [param3[30]], null);
            param4[38] = new PropertyWatcher("jobMasterVO", {propertyChange:true}, [param3[31]], null);
            param4[39] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[31]], null);
            param4[33] = new PropertyWatcher("yangNecessarySoul", {propertyChange:true}, [param3[34], param3[35], param3[29]], param2);
            param4[42] = new PropertyWatcher("yinNecessarySoul", {propertyChange:true}, [param3[34], param3[35], param3[33]], param2);
            param4[1] = new PropertyWatcher("description", {propertyChange:true}, [param3[1]], param2);
            param4[13] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[13]], param2);
            param4[2] = new PropertyWatcher("_homeAllUnits", {propertyChange:true}, [param3[2]], param2);
            param4[14] = new PropertyWatcher("yinCandidateUnit", {propertyChange:true}, [param3[14]], param2);
            param4[4] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[16], param3[4]], param2);
            param4[26] = new PropertyWatcher("yangUnit", {propertyChange:true}, [param3[27], param3[26], param3[28]], param2);
            param4[31] = new PropertyWatcher("level", {propertyChange:true}, [param3[28]], null);
            param4[27] = new PropertyWatcher("name", {propertyChange:true}, [param3[26]], null);
            param4[29] = new PropertyWatcher("jobMasterVO", {propertyChange:true}, [param3[27]], null);
            param4[30] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[27]], null);
            param4[24].updateParent(param1);
            param4[35].updateParent(param1);
            param4[35].addChild(param4[40]);
            param4[35].addChild(param4[36]);
            param4[35].addChild(param4[38]);
            param4[38].addChild(param4[39]);
            param4[33].updateParent(param1);
            param4[42].updateParent(param1);
            param4[1].updateParent(param1);
            param4[13].updateParent(param1);
            param4[2].updateParent(param1);
            param4[14].updateParent(param1);
            param4[4].updateParent(param1);
            param4[26].updateParent(param1);
            param4[26].addChild(param4[31]);
            param4[26].addChild(param4[27]);
            param4[26].addChild(param4[29]);
            param4[29].addChild(param4[30]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            NormalUnionWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_NormalUnionWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
