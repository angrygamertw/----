package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_ProductionWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_ProductionWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[14] = new PropertyWatcher("tutVisible", {propertyChange:true}, [param3[18], param3[55]], param2);
            param4[2] = new PropertyWatcher("selectJobData", {propertyChange:true}, [param3[2], param3[38], param3[24], param3[9], param3[44], param3[31]], param2);
            param4[9] = new PropertyWatcher("nonTutVisible", {propertyChange:true}, [param3[10], param3[12]], param2);
            param4[39] = new PropertyWatcher("detailRendererUpgradeItems", {propertyChange:true}, [param3[52]], param2);
            param4[24] = new PropertyWatcher("catalystArray", {propertyChange:true}, [param3[32]], param2);
            param4[33] = new PropertyWatcher("crystalArray", {propertyChange:true}, [param3[45]], param2);
            param4[29] = new PropertyWatcher("accessoryArray", {propertyChange:true}, [param3[39]], param2);
            param4[3] = new PropertyWatcher("blackSmithArray", {propertyChange:true}, [param3[3]], param2);
            param4[10] = new PropertyWatcher("leatherArray", {propertyChange:true}, [param3[17], param3[11]], param2);
            param4[19] = new PropertyWatcher("clothArray", {propertyChange:true}, [param3[25]], param2);
            param4[37] = new PropertyWatcher("upgradeItems", {propertyChange:true}, [param3[50]], param2);
            param4[6] = new PropertyWatcher("detailRenderer", {propertyChange:true}, [param3[35], param3[48], param3[21], param3[6], param3[42], param3[28], param3[15]], param2);
            param4[14].updateParent(param1);
            param4[2].updateParent(param1);
            param4[9].updateParent(param1);
            param4[39].updateParent(param1);
            param4[24].updateParent(param1);
            param4[33].updateParent(param1);
            param4[29].updateParent(param1);
            param4[3].updateParent(param1);
            param4[10].updateParent(param1);
            param4[19].updateParent(param1);
            param4[37].updateParent(param1);
            param4[6].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            ProductionWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_ProductionWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
