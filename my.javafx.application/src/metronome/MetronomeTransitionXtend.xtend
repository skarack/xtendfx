package metronome

import javafx.animation.Interpolator
import javafx.animation.Timeline
import javafx.animation.TranslateTransition
import javafx.scene.control.Button
import javafx.scene.shape.Circle
import javafx.stage.Stage
import javafx.util.Duration
import xtendfx.FXApp

import static javafx.animation.Animation.Status.*
import static javafx.scene.paint.Color.*

import static extension xtendfx.beans.binding.BindingExtensions.*
import static extension xtendfx.scene.SceneBuilder.*

@FXApp class MetronomeTransitionXtend {

	Button startButton;
	Button pauseButton;
	Button resumeButton;
	Button stopButton;

	Circle circle = new Circle => [
		centerX = 100
		centerY = 50
		radius = 4
		fill = BLUE
	]

	TranslateTransition anim = new TranslateTransition => [
		duration = new Duration(1000.0)
		node = circle
		fromX = 0
		toX = 200
		interpolator = Interpolator.LINEAR
		autoReverse = true
		cycleCount = Timeline.INDEFINITE
	]

	override void start(Stage it) {
		title = "Metronome with Xtend"
		width = 400
		height = 500
		Scene[
			children += circle
			HBox[
				layoutX = 60
				layoutY = 420
				spacing = 10
				startButton = Button[
					text = "Start"
					onAction = [ anim.playFromStart ]
				]
				pauseButton = Button[
					text = "Pause"
					onAction = [ anim.pause ]
				]
				resumeButton = Button[
					text = "Resume"
					onAction = [ anim.play ]
				]
				stopButton = Button[
					text = "Stop"
					onAction = [ anim.stop ]
				]
			]
		]
			
		startButton.disableProperty  -> (anim.statusProperty != STOPPED)
		pauseButton.disableProperty  -> (anim.statusProperty != RUNNING)
		resumeButton.disableProperty -> (anim.statusProperty != PAUSED)
		stopButton.disableProperty   -> (anim.statusProperty == STOPPED)

		show
	}

}
