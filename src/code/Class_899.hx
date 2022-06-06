package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_899 extends _Obj implements Class_3 {


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

    @:allow(code) function method_167() {
        this.gfx_BG.item_2.gotoAndStop(2);
        this.gfx_BG.item_3.gotoAndStop(3);
        this.gfx_BG.item_4.gotoAndStop(4);
        this.gfx_BG.item_5.gotoAndStop(5);
    }

    @:allow(code) function init() {
        this.gfx_BG = new Gfx_Screen_Pokemart();
        addChild(this.gfx_BG);
        this.method_167();
        this.gfx_BG.your_money.text = "You have: $" + this.currentProfile.money;
    }

    @:allow(code) function method_203() {
        if (this.currentProfile.money < 10000) {
            this.gfx_BG.gotoAndStop("no_money");
            return;
        }
        this.currentProfile.money -= 10000;
        var _loc2_:Array<ASAny> = (cast this.gfx_BG.currentLabel.split("_"));
        var _loc3_:Int = _loc2_[1];
        this.currentProfile.inventory.push(_loc3_);
        this.currentProfile.save_Profile();
        this.gfx_BG.gotoAndStop("buy");
        this.gfx_BG.your_money.text = "You have: $" + this.currentProfile.money;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc4_:ASAny = null;
        if (this.var_127 != null) {
            return this.var_127.mouse_Down(param1);
        }
        if (Std.is(param1.target, GfxMovieClip)) {
            if (!(_loc4_ = ASCompat.dynamicAs(param1.target, GfxMovieClip))) {
                return false;
            }
            if (this.gfx_BG.back_butt.contains(_loc4_)) {
                if (this.gfx_BG.currentLabel == "Main") {
                    this.back_Pressed();
                }
                else {
                    this.gfx_BG.gotoAndStop("Main");
                    this.method_167();
                }
                return true;
            }
            if (this.gfx_BG.item_1_butt && this.gfx_BG.item_1_butt.contains(_loc4_)) {
                this.gfx_BG.gotoAndStop("item_1");
            }
            else if (this.gfx_BG.item_2_butt && this.gfx_BG.item_2_butt.contains(_loc4_)) {
                this.gfx_BG.gotoAndStop("item_2");
            }
            else if (this.gfx_BG.item_3_butt && this.gfx_BG.item_3_butt.contains(_loc4_)) {
                this.gfx_BG.gotoAndStop("item_3");
            }
            else if (this.gfx_BG.item_4_butt && this.gfx_BG.item_4_butt.contains(_loc4_)) {
                this.gfx_BG.gotoAndStop("item_4");
            }
            else if (this.gfx_BG.item_5_butt && this.gfx_BG.item_5_butt.contains(_loc4_)) {
                this.gfx_BG.gotoAndStop("item_5");
            }
            else if (this.gfx_BG.buy_butt && this.gfx_BG.buy_butt.contains(_loc4_)) {
                this.method_203();
            }
        }
        return false;
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_892(this.currentProfile, my_Parent);
        send_Msg(["change_Screen", _loc1_]);
    }
}

