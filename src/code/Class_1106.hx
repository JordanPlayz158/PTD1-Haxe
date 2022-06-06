package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_1106 extends Class_904 {


    @:allow(code) var var_111:Class_6;

    public function new(param1:Class_903, param2:Class_6) {
        this.var_111 = param2;
        super(param1);
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        var _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
        if (_loc2_ == null) {
            return false;
        }
        if (_loc2_.name == "butt_yes") {
            this.method_195();
            remove_Me();
            var_165.back_Pressed();
            return true;
        }
        if (_loc2_.name == "butt_no") {
            remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) function method_195() {
        var _loc1_:ASAny = null;
        if (var_165.currentProfile.releaseList == null) {
            var_165.currentProfile.releaseList = [];
        }
        var_165.currentProfile.releaseList.push(this.var_111.var_486);
        var _loc2_ = 0;
        while (_loc2_ < var_165.currentProfile.PokeList.length) {
            _loc1_ = var_165.currentProfile.PokeList[_loc2_];
            if (_loc1_ == this.var_111) {
                var_165.currentProfile.PokeList.splice(_loc2_, 1);
                break;
            }
            _loc2_++;
        }
        _loc2_ = 0;
        while (_loc2_ < var_165.currentProfile.partyList.length) {
            _loc1_ = var_165.currentProfile.partyList[_loc2_];
            if (_loc1_ == this.var_111) {
                var_165.currentProfile.partyList[_loc2_] = null;
                break;
            }
            _loc2_++;
        }
        _loc2_ = 0;
        while (_loc2_ < var_165.currentProfile.PokeList.length) {
            _loc1_ = var_165.currentProfile.PokeList[_loc2_];
            _loc1_.saveInfo.var_401 = true;
            _loc2_++;
        }
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Release_Poke();
    }
}

