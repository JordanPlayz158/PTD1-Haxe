package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_892 extends _Obj implements Class_3 {


    @:allow(code) var gfx_BG:GfxMovieClip;

    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_127:Class_877;

    public function new(param1:Class_878, param2:_Obj, param3:Bool = false) {
        super(param2);
        this.currentProfile = param1;
        this.init();
        if (param3) {
            this.add_Popup(new Class_983(this, this.currentProfile));
        }
    }

    @:allow(code) function init() {
        this.gfx_BG = new Gfx_Screen_Start();
        this.gfx_BG.back_butt.buttonMode = true;
        this.gfx_BG.story_butt.buttonMode = true;
        this.gfx_BG.cm_butt.buttonMode = true;
        this.gfx_BG.mg_butt.buttonMode = true;
        this.gfx_BG.pm_butt.buttonMode = true;
        this.gfx_BG.multi_butt.buttonMode = true;
        addChild(this.gfx_BG);
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

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc3_:ASAny = null;
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
        if (_loc2_ == this.gfx_BG.back_butt) {
            this.back_Pressed();
            return true;
        }
        if (_loc2_ == this.gfx_BG.story_butt) {
            if (this.currentProfile.PokeList.length != 0) {
                _loc3_ = new Class_880(this.currentProfile, my_Parent);
            }
            else {
                _loc3_ = new Class_895(this.currentProfile, my_Parent);
            }
        }
        else if (_loc2_ == this.gfx_BG.mg_butt) {
            _loc3_ = new Class_898(this.currentProfile, my_Parent);
        }
        else if (_loc2_ == this.gfx_BG.pm_butt) {
            _loc3_ = new Class_899(this.currentProfile, my_Parent);
        }
        else if (_loc2_ == this.gfx_BG.cm_butt) {
            _loc3_ = new Class_900(this.currentProfile, my_Parent);
        }
        else {
            if (_loc2_ == this.gfx_BG.t_butt) {
                _loc3_ = new Class_901(this.currentProfile, my_Parent);
                this.add_Popup(new Class_983(this, this.currentProfile, "None", _loc3_));
                return true;
            }
            if (_loc2_ == this.gfx_BG.inv_butt) {
                _loc3_ = new Class_896(this.currentProfile, my_Parent);
                this.add_Popup(new Class_983(this, this.currentProfile, "None", _loc3_));
                return true;
            }
            if (_loc2_ == this.gfx_BG.pd_butt) {
                _loc3_ = new Class_894(this.currentProfile, my_Parent);
            }
            else if (_loc2_ == this.gfx_BG.multi_butt) {
                _loc3_ = new Class_897(this.currentProfile, my_Parent);
            }
            else if (_loc2_ == this.gfx_BG.save_butt) {
                this.add_Popup(new Class_983(this, this.currentProfile));
                return true;
            }
        }
        if (_loc3_) {
            send_Msg(["change_Screen", _loc3_]);
            return true;
        }
        return false;
    }

    @:allow(code) override function back_Pressed() {
        this.add_Popup(new Class_983(this, this.currentProfile, "profilePage"));
    }
}

