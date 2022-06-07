package fl.transitions
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.TimerEvent;
import flash.utils.Timer;

class Tween extends EventDispatcher {

    static var _mc:GfxMovieClip = new GfxMovieClip();


    public var isPlaying:Bool = false;

    public var obj:ASObject = null;

    public var prop:String = "";

    public var func:ASFunction;

    public var begin:Float = Math.NaN;

    public var change:Float = Math.NaN;

    public var useSeconds:Bool = false;

    public var prevTime:Float = Math.NaN;

    public var prevPos:Float = Math.NaN;

    public var looping:Bool = false;

    var _duration:Float = Math.NaN;

    var _time:Float = Math.NaN;

    var _fps:Float = Math.NaN;

    var _position:Float = Math.NaN;

    var _startTime:Float = Math.NaN;

    var _intervalID:UInt = 0;

    var _finish:Float = Math.NaN;

    var _timer:Timer = null;

    public function new(param1:ASObject, param2:String, param3:ASFunction, param4:Float, param5:Float, param6:Float, param7:Bool = false) {
        this.func = function(param1:Float, param2:Float, param3:Float, param4:Float):Float {
            return param3 * param1 / param4 + param2;
        };
        super();
        this.obj = param1;
        this.prop = param2;
        this.begin = param4;
        this.position = param4;
        this.duration = param6;
        this.useSeconds = param7;
        if (Reflect.isFunction(param3)) {
            this.func = param3;
        }
        this.finish = param5;
        this._timer = new Timer(100);
        this.start();
    }


    public var time(get, set):Float;

    function get_time():Float {
        return this._time;
    }

    function set_time(param1:Float):Float {
        this.prevTime = this._time;
        if (param1 > this.duration) {
            if (this.looping) {
                this.rewind(param1 - this._duration);
                this.update();
                this.dispatchEvent(new TweenEvent(TweenEvent.MOTION_LOOP, this._time, this._position));
            }
            else {
                if (this.useSeconds) {
                    this._time = this._duration;
                    this.update();
                }
                this.stop();
                this.dispatchEvent(new TweenEvent(TweenEvent.MOTION_FINISH, this._time, this._position));
            }
        }
        else if (param1 < 0) {
            this.rewind();
            this.update();
        }
        else {
            this._time = param1;
            this.update();
        }
        return param1;
    }


    public var duration(get, set):Float;

    function get_duration():Float {
        return this._duration;
    }

    function set_duration(param1:Float):Float {
        this._duration = param1 <= 0 ? Math.POSITIVE_INFINITY : param1;
        return param1;
    }


    public var FPS(get, set):Float;

    function get_FPS():Float {
        return this._fps;
    }

    function set_FPS(param1:Float):Float {
        var _loc2_ = this.isPlaying;
        this.stopEnterFrame();
        this._fps = param1;
        if (_loc2_) {
            this.startEnterFrame();
        }
        return param1;
    }


    public var position(get, set):Float;

    function get_position():Float {
        return this.getPosition(this._time);
    }

    function set_position(param1:Float):Float {
        this.setPosition(param1);
        return param1;
    }

    public function getPosition(param1:Float = null):Float {
        if (param1 == null) {
            param1 = this._time;
        }
        return this.func(param1, this.begin, this.change, this._duration);
    }

    public function setPosition(param1:Float) {
        this.prevPos = this._position;
        if (this.prop.length != 0) {
            this.obj[this.prop] = this._position = param1;
        }
        this.dispatchEvent(new TweenEvent(TweenEvent.MOTION_CHANGE, this._time, this._position));
    }


    public var finish(get, set):Float;

    function get_finish():Float {
        return this.begin + this.change;
    }

    function set_finish(param1:Float):Float {
        this.change = param1 - this.begin;
        return param1;
    }

    public function continueTo(param1:Float, param2:Float) {
        this.begin = this.position;
        this.finish = param1;
        if (!Math.isNaN(param2)) {
            this.duration = param2;
        }
        this.start();
    }

    public function yoyo() {
        this.continueTo(this.begin, this.time);
    }

    function startEnterFrame() {
        var _loc1_ = Math.NaN;
        if (Math.isNaN(this._fps)) {
            _mc.addEventListener(Event.ENTER_FRAME, this.onEnterFrame, false, 0, true);
        }
        else {
            _loc1_ = 1000 / this._fps;
            this._timer.delay = _loc1_;
            this._timer.addEventListener(TimerEvent.TIMER, this.timerHandler, false, 0, true);
            this._timer.start();
        }
        this.isPlaying = true;
    }

    function stopEnterFrame() {
        if (Math.isNaN(this._fps)) {
            _mc.removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        else {
            this._timer.stop();
        }
        this.isPlaying = false;
    }

    public function start() {
        this.rewind();
        this.startEnterFrame();
        this.dispatchEvent(new TweenEvent(TweenEvent.MOTION_START, this._time, this._position));
    }

    public function stop() {
        this.stopEnterFrame();
        this.dispatchEvent(new TweenEvent(TweenEvent.MOTION_STOP, this._time, this._position));
    }

    public function resume() {
        this.fixTime();
        this.startEnterFrame();
        this.dispatchEvent(new TweenEvent(TweenEvent.MOTION_RESUME, this._time, this._position));
    }

    public function rewind(param1:Float = 0) {
        this._time = param1;
        this.fixTime();
        this.update();
    }

    public function fforward() {
        this.time = this._duration;
        this.fixTime();
    }

    public function nextFrame() {
        if (this.useSeconds) {
            this.time = (Lib.getTimer() - this._startTime) / 1000;
        }
        else {
            this.time = this._time + 1;
        }
    }

    function onEnterFrame(param1:Event) {
        this.nextFrame();
    }

    function timerHandler(param1:TimerEvent) {
        this.nextFrame();
        param1.updateAfterEvent();
    }

    public function prevFrame() {
        if (!this.useSeconds) {
            this.time = this._time - 1;
        }
    }

    function fixTime() {
        if (this.useSeconds) {
            this._startTime = Lib.getTimer() - this._time * 1000;
        }
    }

    function update() {
        this.setPosition(this.getPosition(this._time));
    }
}

