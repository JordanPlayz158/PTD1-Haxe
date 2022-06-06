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

class Class_972 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.var_3.method_62();
        this.method_40();
    }

    function method_40() {
        if (false) {
            gfx.damage_on.gotoAndStop("checked");
            gfx.damage_off.gotoAndStop("unchecked");
        }
        else {
            gfx.damage_on.gotoAndStop("unchecked");
            gfx.damage_off.gotoAndStop("checked");
        }
        if (false) {
            gfx.music_on.gotoAndStop("checked");
            gfx.music_off.gotoAndStop("unchecked");
        }
        else {
            gfx.music_on.gotoAndStop("unchecked");
            gfx.music_off.gotoAndStop("checked");
        }
        if (false) {
            gfx.sound_on.gotoAndStop("checked");
            gfx.sound_off.gotoAndStop("unchecked");
        }
        else {
            gfx.sound_on.gotoAndStop("unchecked");
            gfx.sound_off.gotoAndStop("checked");
        }
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_ == null) {
            return false;
        }
        var _loc3_ = SharedObject.getLocal("PokeTD");
        if (gfx.exit_butt.contains(_loc2_)) {
            this.var_3.method_35();
            this.var_3.method_20();
            this.var_3.method_12();
            this.remove_Me();
            this.var_3.add_Popup(new Class_977(this.var_3));
            return true;
        }
        if (gfx.back_butt.contains(_loc2_)) {
            this.var_3.method_35();
            this.var_3.method_20();
            this.var_3.method_12();
            this.remove_Me();
            return true;
        }
        if (gfx.damage_off_butt.contains(_loc2_)) {
            _loc3_.data.damageText = "off";
            _loc3_.flush();
            Class_1.var_359 = 0;
            this.method_40();
        }
        else if (gfx.damage_on_butt.contains(_loc2_)) {
            _loc3_.data.damageText = "on";
            _loc3_.flush();
            Class_1.var_359 = 1;
            this.method_40();
        }
        else if (gfx.music_off_butt.contains(_loc2_)) {
            _loc3_.data.musicSetting = "off";
            _loc3_.flush();
            Class_1.var_25 = 0;
            this.method_40();
        }
        else if (gfx.music_on_butt.contains(_loc2_)) {
            _loc3_.data.musicSetting = "on";
            _loc3_.flush();
            Class_1.var_25 = 1;
            this.method_40();
        }
        else if (gfx.sound_off_butt.contains(_loc2_)) {
            _loc3_.data.soundSetting = "off";
            _loc3_.flush();
            Class_1.var_194 = 0;
            this.method_40();
        }
        else if (gfx.sound_on_butt.contains(_loc2_)) {
            _loc3_.data.soundSetting = "on";
            _loc3_.flush();
            Class_1.var_194 = 1;
            this.method_40();
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Menu_Gfx();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
    }
}

