package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;
import flash.net.SharedObject;

class Class_889 extends _Obj implements Class_3 {


    @:allow(code) var gfx_BG:GfxMovieClip;

    var var_127:Class_877;

    public function new(param1:_Obj) {
        super(param1);
        this.init();
    }

    public function add_Popup(param1:Class_877) {
        this.var_127 = param1;
        addChild(this.var_127);
    }

    public function method_24(param1:Class_877) {
        if (this.var_127 == param1) {
            removeChild(param1);
            this.var_127 = null;
        }
    }

    @:allow(code) function init() {
        this.gfx_BG = new Gfx_Screen_Options();
        this.gfx_BG.back_butt.buttonMode = true;
        addChild(this.gfx_BG);
        this.method_40();
    }

    function method_40() {
        if (false) {
            this.gfx_BG.music_on.gotoAndStop("checked");
            this.gfx_BG.music_off.gotoAndStop("unchecked");
        }
        else {
            this.gfx_BG.music_on.gotoAndStop("unchecked");
            this.gfx_BG.music_off.gotoAndStop("checked");
        }
        if (false) {
            this.gfx_BG.sound_on.gotoAndStop("checked");
            this.gfx_BG.sound_off.gotoAndStop("unchecked");
        }
        else {
            this.gfx_BG.sound_on.gotoAndStop("unchecked");
            this.gfx_BG.sound_off.gotoAndStop("checked");
        }
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (this.var_127 != null) {
            return this.var_127.mouse_Down(param1);
        }
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_ == null) {
            return false;
        }
        var _loc4_ = SharedObject.getLocal("PokeTD");
        if (this.gfx_BG.back_butt.contains(_loc2_)) {
            this.back_Pressed();
            return true;
        }
        if (this.gfx_BG.music_off_butt.contains(_loc2_)) {
            _loc4_.data.musicSetting = "off";
            _loc4_.flush();
            Class_1.var_25 = 0;
            this.method_40();
        }
        else if (this.gfx_BG.music_on_butt.contains(_loc2_)) {
            _loc4_.data.musicSetting = "on";
            _loc4_.flush();
            Class_1.var_25 = 1;
            this.method_40();
        }
        else if (this.gfx_BG.sound_off_butt.contains(_loc2_)) {
            _loc4_.data.soundSetting = "off";
            _loc4_.flush();
            Class_1.var_194 = 0;
            this.method_40();
        }
        else if (this.gfx_BG.sound_on_butt.contains(_loc2_)) {
            _loc4_.data.soundSetting = "on";
            _loc4_.flush();
            Class_1.var_194 = 1;
            this.method_40();
        }
        return false;
    }

    @:allow(code) function method_428() {
        var _loc1_ = SharedObject.getLocal("PokeTD");
        _loc1_.clear();
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_876(my_Parent);
        send_Msg(["change_Screen", _loc1_]);
    }
}

