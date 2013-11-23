package 
{
    import com.kbmj.viking.view.home.*;
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _com_kbmj_viking_view_home_RecipeUnionWindowWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _com_kbmj_viking_view_home_RecipeUnionWindowWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[9] = new PropertyWatcher("tutVisible", {propertyChange:true}, [param3[55], param3[10], param3[30]], param2);
            param4[36] = new PropertyWatcher("_swf_cancel_yang", {propertyChange:true}, [param3[41]], param2);
            param4[7] = new PropertyWatcher("recipeNameRenderer", {propertyChange:true}, [param3[7], param3[14]], param2);
            param4[62] = new PropertyWatcher("yinUnit", {propertyChange:true}, [param3[67], param3[72], param3[73], param3[74]], param2);
            param4[75] = new PropertyWatcher("level", {propertyChange:true}, [param3[74]], null);
            param4[63] = new PropertyWatcher("name", {propertyChange:true}, [param3[67], param3[72]], null);
            param4[73] = new PropertyWatcher("jobMasterVO", {propertyChange:true}, [param3[73]], null);
            param4[74] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[73]], null);
            param4[83] = new PropertyWatcher("spiritOfEarth", {propertyChange:true}, [param3[81], param3[80]], param2);
            param4[77] = new PropertyWatcher("yinNecessarySoul", {propertyChange:true}, [param3[76], param3[77], param3[75]], param2);
            param4[3] = new PropertyWatcher("nonTutVisible", {propertyChange:true}, [param3[18], param3[3], param3[43]], param2);
            param4[1] = new PropertyWatcher("description", {propertyChange:true}, [param3[1]], param2);
            param4[86] = new PropertyWatcher("spiritOfWater", {propertyChange:true}, [param3[83], param3[82]], param2);
            param4[14] = new PropertyWatcher("_swf_back", {propertyChange:true}, [param3[16]], param2);
            param4[37] = new PropertyWatcher("yinCandidateUnit", {propertyChange:true}, [param3[54], param3[42]], param2);
            param4[49] = new PropertyWatcher("detailRendererTutorial2", {propertyChange:true}, [param3[57]], param2);
            param4[17] = new PropertyWatcher("detailRenderer1", {propertyChange:true}, [param3[20]], param2);
            param4[5] = new PropertyWatcher("detailRenderer0", {propertyChange:true}, [param3[5]], param2);
            param4[39] = new PropertyWatcher("detailRenderer2", {propertyChange:true}, [param3[45]], param2);
            param4[15] = new PropertyWatcher("yangCandidateUnit", {propertyChange:true}, [param3[17], param3[29]], param2);
            param4[60] = new PropertyWatcher("yangUnit", {propertyChange:true}, [param3[68], param3[69], param3[70], param3[67]], param2);
            param4[68] = new PropertyWatcher("level", {propertyChange:true}, [param3[70]], null);
            param4[61] = new PropertyWatcher("name", {propertyChange:true}, [param3[68], param3[67]], null);
            param4[66] = new PropertyWatcher("jobMasterVO", {propertyChange:true}, [param3[69]], null);
            param4[67] = new PropertyWatcher("nameLabel", {propertyChange:true}, [param3[69]], null);
            param4[2] = new PropertyWatcher("_allRecipe", {propertyChange:true}, [param3[2], param3[9]], param2);
            param4[11] = new PropertyWatcher("detailRendererTutorial0", {propertyChange:true}, [param3[12]], param2);
            param4[27] = new PropertyWatcher("detailRendererTutorial1", {propertyChange:true}, [param3[32]], param2);
            param4[70] = new PropertyWatcher("yangNecessarySoul", {propertyChange:true}, [param3[71], param3[76], param3[77]], param2);
            param4[80] = new PropertyWatcher("spiritOfFire", {propertyChange:true}, [param3[78], param3[79]], param2);
            param4[58] = new PropertyWatcher("_swf_cancel_yin", {propertyChange:true}, [param3[66]], param2);
            param4[9].updateParent(param1);
            param4[36].updateParent(param1);
            param4[7].updateParent(param1);
            param4[62].updateParent(param1);
            param4[62].addChild(param4[75]);
            param4[62].addChild(param4[63]);
            param4[62].addChild(param4[73]);
            param4[73].addChild(param4[74]);
            param4[83].updateParent(param1);
            param4[77].updateParent(param1);
            param4[3].updateParent(param1);
            param4[1].updateParent(param1);
            param4[86].updateParent(param1);
            param4[14].updateParent(param1);
            param4[37].updateParent(param1);
            param4[49].updateParent(param1);
            param4[17].updateParent(param1);
            param4[5].updateParent(param1);
            param4[39].updateParent(param1);
            param4[15].updateParent(param1);
            param4[60].updateParent(param1);
            param4[60].addChild(param4[68]);
            param4[60].addChild(param4[61]);
            param4[60].addChild(param4[66]);
            param4[66].addChild(param4[67]);
            param4[2].updateParent(param1);
            param4[11].updateParent(param1);
            param4[27].updateParent(param1);
            param4[70].updateParent(param1);
            param4[80].updateParent(param1);
            param4[58].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            RecipeUnionWindow.watcherSetupUtil = new _com_kbmj_viking_view_home_RecipeUnionWindowWatcherSetupUtil;
            return;
        }// end function

    }
}
