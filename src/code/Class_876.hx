package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.display.SimpleButton;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.media.SoundTransform;
import flash.net.URLRequest;

class Class_876 extends _Obj {


    @:allow(code) var gfx_BG:GfxMovieClip;

    @:allow(code) var sawDisclamer:Bool = false;

    @:allow(code) var sponsor:String;

    @:allow(code) var var_707:Bool = false;

    @:allow(code) var var_699:Bool = false;

    public function new(param1:_Obj) {
        super(param1);
        this.sawDisclamer = send_Msg("sawDisclamer");
        this.sponsor = ASCompat.toString(send_Msg("sponsor"));
        this.init();
    }

    @:allow(code) function init() {
        if (this.sawDisclamer || this.sponsor == "arc") {
            this.gfx_BG = new Gfx_Screen_Main();
            if (this.gfx_BG.titleScreen) {
                this.gfx_BG.titleScreen.gotoAndPlay("done");
                this.method_120();
            }
        }
        else if (this.sponsor == "online") {
            this.gfx_BG = new Gfx_Screen_Main();
        }
        else if (this.sponsor == "fwg") {
            this.gfx_BG = new Gfx_Screen_Main_Disclamer_Fwg();
        }
        else {
            this.gfx_BG = new Gfx_Screen_Main_Disclamer();
        }
        addChild(this.gfx_BG);
        if (this.sponsor == "arc") {
            addChild(new Gfx_Hacked_Tag());
        }
        else if (this.sponsor == "online") {
            addChild(new Gfx_Online_Tag());
        }
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (!this.var_699 && this.gfx_BG.titleScreen) {
            this.method_120();
        }
        else if (this.sponsor == "ptd" && !this.sawDisclamer) {
            if (this.gfx_BG.currentLabel == "sponsor" && !this.var_707) {
                this.var_707 = true;
                if (false) {
                    this.gfx_BG.spons.play();
                }
                else {
                    this.gfx_BG.spons.gotoAndPlay(3);
                }
            }
        }
        return true;
    }

    function method_120() {
        this.var_699 = true;
        SoundMixer.stopAll();
        var _loc1_:Sound = new OpeningSong();
        var _loc2_ = _loc1_.play(0, 10);
        var _loc3_ = new SoundTransform(Class_1.var_25);
        _loc2_.soundTransform = _loc3_;
    }

    @:allow(code) override function back_Pressed() {
        send_Msg("exit");
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        if (this.gfx_BG.titleScreen && this.gfx_BG.titleScreen.currentLabel != "done") {
            this.gfx_BG.titleScreen.gotoAndPlay("done");
            return true;
        }
        if (Std.is(param1.target, SimpleButton)) {
            _loc3_ = ASCompat.dynamicAs(param1.target, SimpleButton);
            if (_loc3_) {
                if (this.gfx_BG.titleScreen.btn_start && this.gfx_BG.titleScreen.btn_start == _loc3_) {
                    _loc2_ = this.method_123();
                }
                else if (this.gfx_BG.titleScreen.btn_options && this.gfx_BG.titleScreen.btn_options == _loc3_) {
                    _loc2_ = new Class_889(my_Parent);
                }
                else if (this.gfx_BG.titleScreen.btn_feedback && this.gfx_BG.titleScreen.btn_feedback == _loc3_) {
                    flash.Lib.getURL(new URLRequest("http://samdangames.blogspot.com/"));
                    return true;
                }
            }
        }
        else if (Std.is(param1.target, GfxMovieClip)) {
            if (!(_loc4_ = ASCompat.dynamicAs(param1.target, GfxMovieClip))) {
                return false;
            }
            if (this.gfx_BG.start_butt && this.gfx_BG.start_butt.contains(_loc4_)) {
                _loc2_ = this.method_123();
            }
            else {
                if (this.gfx_BG.blog_butt && this.gfx_BG.blog_butt.contains(_loc4_)) {
                    flash.Lib.getURL(new URLRequest("http://samdangames.blogspot.com/"));
                    return true;
                }
                if (this.gfx_BG.fwg_link && this.gfx_BG.fwg_link.contains(_loc4_)) {
                    flash.Lib.getURL(new URLRequest("http://www.freeworldgroup.com"));
                    return true;
                }
                if (this.gfx_BG.options_butt && this.gfx_BG.options_butt.contains(_loc4_)) {
                    _loc2_ = new Class_889(my_Parent);
                }
                else if (this.gfx_BG.titleScreen.mysteryCode && this.gfx_BG.titleScreen.mysteryCode.contains(_loc4_)) {
                    flash.Lib.getURL(new URLRequest("http://samdangames.blogspot.com/p/mystery-gift.html"));
                    return true;
                }
            }
        }
        if (_loc2_) {
            send_Msg(["change_Screen", _loc2_]);
            return true;
        }
        return false;
    }

    @:allow(code) function method_123():_Obj {
        if (this.sponsor == "online") {
            return new Class_1105(my_Parent);
        }
        return new Class_890(my_Parent);
    }
}

