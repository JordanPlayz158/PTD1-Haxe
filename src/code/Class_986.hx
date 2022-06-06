package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.MouseEvent;

class Class_986 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_22:Int = 1;

    @:allow(code) var var_21:String;

    public function new(param1:Class_875, param2:GfxMovieClip) {
        this.var_3 = param1;
        gfx = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        if (gfx != null) {
            addChild(gfx);
        }
        this.var_3.method_12(true);
        this.var_3.method_14();
        if (ASCompat.stringAsBool(this.var_3.currentProfile.myAvatarGender)) {
            this.var_21 = this.var_3.currentProfile.myAvatarGender;
            this.var_22 = this.var_3.currentProfile.myAvatarStyle;
        }
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        if (!Std.is(param1.target, GfxMovieClip)) {
            return false;
        }
        if (false) {
            _loc2_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (gfx.actual.butt_close.contains(_loc2_)) {
                this.remove_Me();
                return true;
            }
        }
        return false;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (gfx.actual.yourAvatar) {
            gfx.actual.yourAvatar.gotoAndStop(this.var_21 + "_" + this.var_22);
        }
        return false;
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.end_Level();
    }
}

