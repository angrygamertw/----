package mx.utils
{
    import mx.core.*;

    public class SecurityUtil extends Object
    {
        static const VERSION:String = "3.4.1.10084";

        public function SecurityUtil()
        {
            return;
        }// end function

        public static function hasMutualTrustBetweenParentAndChild(param1:ISWFBridgeProvider) : Boolean
        {
            if (param1 && param1.childAllowsParent && param1.parentAllowsChild)
            {
                return true;
            }
            return false;
        }// end function

    }
}
