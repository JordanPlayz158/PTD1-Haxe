package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;
import flash.media.SoundMixer;
import flash.net.SharedObject;

class Class_891 extends _Obj implements Class_3 {


    @:allow(code) var gfx_BG:GfxMovieClip;

    var myProfile:Class_878;

    var var_127:Class_877;

    var var_148:ASObject;

    @:allow(code) var email:String;

    @:allow(code) var pass:String;

    public function new(param1:_Obj, param2:ASObject) {
        super(param1);
        this.var_148 = param2;
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
        var _loc1_:ASAny = null;
        var _loc3_ = 0;
        SoundMixer.stopAll();
        this.gfx_BG = new Gfx_Screen_Profile();
        addChild(this.gfx_BG);
        var _loc4_ = 1;
        while (_loc4_ <= 3) {
            _loc1_ = (this.gfx_BG : ASAny)["profile_" + _loc4_];
            _loc3_ = 0;
            if (this.var_148["Advanced" + _loc4_] && this.var_148["Advanced" + _loc4_] != "0" || this.var_148["p" + _loc4_ + "_numPoke"] != "0") {
                _loc1_.gotoAndStop(2);
                _loc1_.profile_name.text = this.var_148["Nickname" + _loc4_];
                _loc1_.caught.text = "Pokemon: " + this.var_148["p" + _loc4_ + "_numPoke"];
                _loc3_ = this.var_148["Badges" + _loc4_];
                _loc1_.badges.text = "Badges: " + _loc3_;
                _loc1_.profile_bg.gotoAndStop(this.var_148["Version" + _loc4_]);
            }
            else {
                _loc1_.gotoAndStop(1);
            }
            _loc4_++;
        }
    }

    @:allow(code) function method_155(param1:Int = 1, param2:Bool = false, param3:String = "Satoshi"):Class_878 {
        if (param2) {
            this.var_148["p" + param1 + "_numPoke"] = 0;
            this.var_148["Nickname" + param1] = param3;
            this.var_148["Classic" + param1 + "_a"] = 0;
            this.var_148["Classic" + param1] = 0;
            this.var_148["shinyHunt" + param1] = 0;
            this.var_148["NPCTrade" + param1] = 0;
            this.var_148["Version" + param1] = 0;
            this.var_148["Money" + param1] = 0;
            this.var_148["Badges" + param1] = 0;
            this.var_148["Advanced" + param1 + "_a"] = 0;
            this.var_148["Advanced" + param1] = 0;
            this.var_148["Challenge" + param1] = 0;
            this.var_148["p" + param1 + "_numItem"] = 0;
        }
        this.myProfile = new Class_878(my_Parent, this.var_148, param1);
        this.myProfile.var_553 = this.email;
        this.myProfile.var_585 = this.pass;
        this.myProfile.var_641 = param2;
        return this.myProfile;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        var _loc6_ = false;
        var _loc7_:ASAny = null;
        if (this.var_127 != null) {
            return this.var_127.mouse_Down(param1);
        }
        if (Std.is(param1.target, GfxMovieClip)) {
            _loc4_ = ASCompat.dynamicAs(param1.target, GfxMovieClip);
            if (this.gfx_BG.back_butt.contains(_loc4_)) {
                this.back_Pressed();
                return true;
            }
            if (this.gfx_BG.profile_1.contains(_loc4_)) {
                _loc3_ = 1;
            }
            else if (this.gfx_BG.profile_2.contains(_loc4_)) {
                _loc3_ = 2;
            }
            else if (this.gfx_BG.profile_3.contains(_loc4_)) {
                _loc3_ = 3;
            }
            else if (this.gfx_BG.log_off_butt.contains(_loc4_)) {
                (_loc5_ = SharedObject.getLocal("PokeTD")).data.onlineProfile = null;
                _loc5_.flush();
                this.back_Pressed();
                return true;
            }
            if (_loc3_ != 0) {
                if (_loc4_.name == "new_game_butt") {
                    if ((_loc7_ = (this.gfx_BG : ASAny)["profile_" + _loc3_]).currentFrame == 1) {
                        this.add_Popup(new Class_981(this, _loc3_));
                    }
                    else if (_loc7_.currentFrame == 2) {
                        this.add_Popup(new Class_982(this, _loc3_));
                    }
                    return true;
                }
                if (_loc4_.name == "continue_butt") {
                    _loc6_ = false;
                }
                this.method_155(_loc3_, _loc6_);
                if (this.myProfile.reset) {
                    _loc2_ = new Class_876(my_Parent);
                }
                else if (this.myProfile.PokeList.length != 0) {
                    _loc2_ = new Class_892(this.myProfile, my_Parent);
                }
                else {
                    _loc2_ = new Class_895(this.myProfile, my_Parent);
                }
            }
            if (_loc2_) {
                send_Msg(["change_Screen", _loc2_]);
                return true;
            }
        }
        return false;
    }

    @:allow(code) function method_260() {
        var _loc1_:ASAny = null;
        if (this.myProfile.PokeList.length != 0) {
            _loc1_ = new Class_892(this.myProfile, my_Parent);
        }
        else {
            _loc1_ = new Class_895(this.myProfile, my_Parent);
        }
        send_Msg(["change_Screen", _loc1_]);
    }

    @:allow(code) override function back_Pressed() {
        var _loc1_:_Obj = new Class_876(my_Parent);
        send_Msg(["change_Screen", _loc1_]);
    }
}

