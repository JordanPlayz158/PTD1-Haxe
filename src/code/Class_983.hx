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

class Class_983 extends Class_877 {


    @:allow(code) var var_661:String;

    @:allow(code) var var_607:_Obj;

    var var_41:URLLoader;

    var myProfile:Class_878;

    var var_727:Bool = false;

    public function new(param1:Class_3, param2:Class_878, param3:String = "None", param4:_Obj = null) {
        this.myProfile = param2;
        this.var_661 = param3;
        this.var_607 = param4;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        if (this.myProfile.method_146()) {
            gfx.actual.gotoAndStop(5);
            return;
        }
        this.method_174(this.myProfile.save_Profile());
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (false) {
            if (gfx.actual.currentFrame == 3) {
                this.remove_Me();
                return true;
            }
            if (gfx.actual.currentFrame == 4 || gfx.actual.currentFrame == 5) {
                this.var_607 = new Class_876(my_Parent.my_Parent);
                this.remove_Me();
                return true;
            }
            if (Std.is(param1.target, GfxMovieClip)) {
                _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
                if (gfx.actual.yes_butt && gfx.actual.yes_butt.contains(_loc2_)) {
                    gfx.actual.gotoAndStop(1);
                    this.method_174(this.myProfile.save_Profile());
                }
                else if (gfx.actual.no_butt && gfx.actual.no_butt.contains(_loc2_)) {
                    this.remove_Me();
                }
                return true;
            }
            return false;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Save();
    }

    @:allow(code) function method_174(param1:String) {
        var _loc2_ = new URLRequest();
        var _loc3_ = Date.now();
        _loc2_.url = "undefined?Date=" + _loc3_.getTime();
        var _loc4_:SamURLVariables;
        (_loc4_ = new SamURLVariables()).Action = "saveAccount";
        _loc4_.Email = this.myProfile.var_553;
        _loc4_.Pass = this.myProfile.var_585;
        _loc4_.ver = Class_878.const_184;
        _loc4_.saveString = param1;
        _loc2_.method = URLRequestMethod.POST;
        _loc2_.data = _loc4_;
        this.var_41 = new URLLoader();
        this.var_41.dataFormat = URLLoaderDataFormat.TEXT;
        this.var_41.addEventListener(Event.COMPLETE, this.method_17);
        this.var_41.addEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41.load(_loc2_);
    }

    @:allow(code) function method_16(param1:IOErrorEvent) {
        this.var_41.removeEventListener(Event.COMPLETE, this.method_17);
        this.var_41.removeEventListener(IOErrorEvent.IO_ERROR, this.method_16);
        this.var_41 = null;
        gfx.actual.gotoAndStop(2);
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
            gfx.actual.gotoAndStop(2);
            return;
        }
        if (var_710.Result == "Failure") {
            if (var_710.Reason == "Validation") {
                gfx.actual.gotoAndStop(4);
                return;
            }
            gfx.actual.gotoAndStop(2);
        }
        else if (var_710.Result == "Success") {
            this.myProfile.var_148.CurrentSave = var_710.newSave;
            this.myProfile.method_192(var_710);
            this.myProfile.method_406();
            this.myProfile.var_641 = false;
            gfx.actual.gotoAndStop(3);
        }
    }

    @:allow(code) override function remove_Me() {
        var _loc1_:ASAny = null;
        super.remove_Me();
        if (this.var_661 != "None") {
            if (this.var_661 == "profilePage") {
                _loc1_ = new Class_890(my_Parent);
            }
        }
        else if (this.var_607 != null) {
            _loc1_ = this.var_607;
        }
        if (_loc1_) {
            send_Msg(["change_Screen", _loc1_]);
        }
    }
}

