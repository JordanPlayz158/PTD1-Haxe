package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.MouseEvent;
import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.errors.Error;

class Class_969 extends Class_877 {


    var var_41:URLLoader;

    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_15:Int = 0;

    @:allow(code) var type:Int = 0;

    @:allow(code) var pos:Int = 0;

    @:allow(code) var var_623:Int = 0;

    @:allow(code) var var_638:Class_877;

    public function new(param1:Class_875, param2:Int, param3:Int, param4:Int = 0) {
        this.var_3 = param1;
        this.type = param2;
        this.pos = param3;
        this.var_623 = param4;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.var_3.method_62();
        this.method_116();
    }

    @:allow(code) function method_116() {
        gfx.actual.gotoAndStop("achievement");
        var _loc1_ = new URLRequest();
        var _loc2_ = Date.now();
        var _loc3_ = new SamURLVariables();
        _loc1_.url = "undefined?Date=" + _loc2_.getTime();
        _loc3_.Action = "updateAccount";
        _loc3_.Email = this.var_3.currentProfile.var_553;
        _loc3_.Pass = this.var_3.currentProfile.var_585;
        _loc3_.type = this.type;
        _loc3_.pos = this.pos;
        _loc1_.method = URLRequestMethod.POST;
        _loc1_.data = _loc3_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.TEXT;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc1_);
    }

    @:allow(code) function method_16(param1:IOErrorEvent) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        gfx.actual.gotoAndStop("notSaveAchievement");
    }

    @:allow(code) function method_17(param1:Event) {
        var var_710:SamURLVariables = null;
        var var_717 = param1;
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        try {
            var target:URLLoader = var_717.target;
            var_710 = new URLVariables(target.data);
            this.var_41 = null;
        }
        catch (e:Error) {
            gfx.actual.gotoAndStop("notSaveAchievement");
            return;
        }
        if (var_710.Result == "Failure") {
            gfx.actual.gotoAndStop("notSaveAchievement");
        }
        else if (var_710.Result == "Success") {
            gfx.actual.gotoAndStop("saved");
        }
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (gfx.actual.currentLabel == "saved") {
            if (this.var_623 != 0) {
                this.type = this.var_623;
                this.var_623 = 0;
                this.method_116();
                return true;
            }
            this.var_3.method_35();
            this.var_3.method_20();
            this.var_3.method_12();
            this.remove_Me();
            return true;
        }
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_ == null) {
            return false;
        }
        if (gfx.actual.yes_butt && gfx.actual.yes_butt.contains(_loc2_)) {
            this.method_116();
            return true;
        }
        if (gfx.actual.no_butt && gfx.actual.no_butt.contains(_loc2_)) {
            this.var_3.method_35();
            this.var_3.method_20();
            this.var_3.method_12();
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Achievement();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        if (this.var_638 != null) {
            this.var_3.add_Popup(this.var_638);
        }
    }
}

