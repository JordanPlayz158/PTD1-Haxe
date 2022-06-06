package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.MouseEvent;

class Class_1111 extends Class_904 {


    @:allow(code) var currentProfile:Class_878;

    @:allow(code) var var_37:Class_6;

    @:allow(code) var moves:Array<ASAny>;

    @:allow(code) var var_552:Int = 0;

    @:allow(code) var var_307:Int = 0;

    public function new(param1:Class_903, param2:Class_6, param3:Class_878) {
        this.currentProfile = param3;
        this.var_37 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_307 = 1;
        this.method_58();
    }

    function method_318(param1:Array<ASAny>):Array<ASAny> {
        var _loc2_ = 0;
        var _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (_loc2_ == Class_9.var_101) {
                param1.splice(_loc3_, 1);
                break;
            }
            _loc3_++;
        }
        return param1;
    }

    function method_378(param1:Array<ASAny>):Array<ASAny> {
        var _loc2_ = 0;
        var _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (_loc2_ == Class_9.var_85) {
                param1.splice(_loc3_, 1);
                break;
            }
            _loc3_++;
        }
        return param1;
    }

    function method_414(param1:Array<ASAny>):Array<ASAny> {
        var _loc2_ = 0;
        var _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (_loc2_ == Class_9.var_56) {
                if (this.currentProfile.levelUnlocked < 5) {
                    param1.splice(_loc3_, 1);
                    _loc3_--;
                }
            }
            else if (_loc2_ == Class_9.var_60) {
                if (this.currentProfile.levelUnlocked < 25) {
                    param1.splice(_loc3_, 1);
                    _loc3_--;
                }
            }
            else if (_loc2_ == Class_9.var_210) {
                if (this.currentProfile.levelUnlocked < 25) {
                    param1.splice(_loc3_, 1);
                    _loc3_--;
                }
            }
            else if (_loc2_ == Class_9.var_115) {
                if (this.currentProfile.levelUnlocked < 36) {
                    param1.splice(_loc3_, 1);
                    _loc3_--;
                }
            }
            else if (_loc2_ == Class_9.var_58) {
                if (this.currentProfile.levelUnlocked < 36) {
                    param1.splice(_loc3_, 1);
                    _loc3_--;
                }
            }
            else if (_loc2_ == Class_9.var_233) {
                if (this.currentProfile.levelUnlocked < 36) {
                    param1.splice(_loc3_, 1);
                    _loc3_--;
                }
            }
            _loc3_++;
        }
        return param1;
    }

    @:allow(code) function method_58() {
        var _loc3_ = 0;
        var _loc6_:ASAny = null;
        this.moves = Class_12.method_344(this.var_37);
        if (this.currentProfile.levelUnlocked < 16) {
            this.moves = this.method_318(this.moves);
        }
        if (this.currentProfile.haveFlash == 0) {
            this.moves = this.method_378(this.moves);
        }
        this.moves = this.method_414(this.moves);
        var _loc2_ = 0;
        while (_loc2_ < this.moves.length) {
            _loc3_ = this.moves[_loc2_];
            if (Class_12.method_67(_loc3_, this.var_37)) {
                this.moves.splice(_loc2_, 1);
                _loc2_--;
            }
            _loc2_++;
        }
        gfx.actual.arrow_left.visible = true;
        gfx.actual.arrow_right.visible = true;
        if (this.moves.length <= 20) {
            gfx.actual.arrow_left.visible = false;
            gfx.actual.arrow_right.visible = false;
            this.var_307 = 1;
        }
        else if (this.var_307 == 1) {
            gfx.actual.arrow_left.visible = false;
        }
        else if (this.var_307 * 20 >= this.moves.length) {
            gfx.actual.arrow_right.visible = false;
        }
        var _loc5_:Int;
        var _loc4_:Int;
        if ((_loc5_ = (_loc4_ = (this.var_307 - 1) * 20) + 20) > this.moves.length) {
            _loc5_ = this.moves.length;
        }
        var _loc7_ = _loc4_;
        _loc2_ = 1;
        while (_loc2_ <= 20) {
            (_loc6_ = gfx.actual["Attack_" + _loc2_]).visible = true;
            if (_loc7_ < _loc5_) {
                _loc6_.Attack_name.gotoAndStop(this.moves[_loc7_]);
            }
            else {
                _loc6_.visible = false;
            }
            _loc7_++;
            _loc2_++;
        }
        if (this.moves.length != 0) {
            this.method_51(this.moves[_loc4_]);
        }
        else {
            gfx.actual.Attack_name.visible = false;
            gfx.actual.Attack_description.visible = false;
            gfx.actual.relearn_butt.visible = false;
        }
    }

    @:allow(code) function method_51(param1:Int) {
        gfx.actual.Attack_name.gotoAndStop(param1);
        gfx.actual.Attack_description.gotoAndStop(param1);
        this.var_552 = param1;
    }

    @:allow(code) function method_80() {
        this.currentProfile.money -= 10000;
        this.currentProfile.save_Profile();
        remove_Me();
        var_165.check_New_Move(this.var_552);
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        var _loc5_ = 0;
        if (false) {
            if (param1.target != null && Std.is(param1.target, GfxMovieClip)) {
                _loc2_ = cast(param1.target, GfxMovieClip);
                if (_loc2_.name == "done_butt") {
                    remove_Me();
                    return true;
                }
                if (_loc2_.name == "relearn_butt") {
                    this.method_80();
                    return true;
                }
                if (gfx.actual.arrow_right.visible && gfx.actual.butt_right.contains(_loc2_)) {
                    ++this.var_307;
                    this.method_58();
                    return true;
                }
                if (gfx.actual.arrow_left.visible && gfx.actual.butt_left.contains(_loc2_)) {
                    --this.var_307;
                    this.method_58();
                    return true;
                }
                _loc5_ = 1;
                while (_loc5_ <= 20) {
                    _loc3_ = gfx.actual["Attack_" + _loc5_];
                    if (_loc3_.contains(_loc2_) && _loc3_.visible) {
                        _loc4_ = (this.var_307 - 1) * 20 + (_loc5_ - 1);
                        this.method_51(this.moves[_loc4_]);
                        return true;
                    }
                    _loc5_++;
                }
            }
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Tm();
    }
}

