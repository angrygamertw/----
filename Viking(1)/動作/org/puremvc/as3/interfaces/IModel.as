﻿package org.puremvc.as3.interfaces
{

    public interface IModel
    {

        public function IModel();

        function removeProxy(param1:String) : IProxy;

        function retrieveProxy(param1:String) : IProxy;

        function registerProxy(param1:IProxy) : void;

        function hasProxy(param1:String) : Boolean;

    }
}
