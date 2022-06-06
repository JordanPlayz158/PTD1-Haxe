package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;
import flash.net.URLRequest;

class Class_897 extends _Obj implements Class_3 {


    @:allow(code) var gfx_BG:GfxMovieClip;

    var var_127:Class_877;

    @:allow(code) var currentProfile:Class_878;

    public function new(param1:Class_878, param2:_Obj) {
        super(param2);
        this.currentProfile = param1;
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
        this.gfx_BG = new Gfx_Screen_Multiplayer_Link();
        this.gfx_BG.back_butt.buttonMode = true;
        addChild(this.gfx_BG);
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
        if (this.gfx_BG.back_butt.contains(_loc2_)) {
            this.back_Pressed();
            return true;
        }
        if (this.gfx_BG.find_butt && this.gfx_BG.find_butt.contains(_loc2_)) {
            flash.Lib.getURL(new URLRequest("http://www.playtowerdefensegames.com/games/1078/play.html?ptd"));
            return true;
        }
        return false;
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_892(this.currentProfile, my_Parent);
        send_Msg(["change_Screen", _loc1_]);
    }
}

