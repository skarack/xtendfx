package xtendfx.scene

import javafx.scene.Group
import javafx.scene.Scene
import javafx.scene.control.Accordion
import javafx.scene.control.Button
import javafx.scene.control.CheckBox
import javafx.scene.control.ColorPicker
import javafx.scene.control.ComboBox
import javafx.scene.control.Label
import javafx.scene.control.ListView
import javafx.scene.control.Menu
import javafx.scene.control.MenuBar
import javafx.scene.control.MenuItem
import javafx.scene.control.PasswordField
import javafx.scene.control.ProgressIndicator
import javafx.scene.control.RadioButton
import javafx.scene.control.ScrollBar
import javafx.scene.control.ScrollPane
import javafx.scene.control.Separator
import javafx.scene.control.Slider
import javafx.scene.control.SplitPane
import javafx.scene.control.TabPane
import javafx.scene.control.TableView
import javafx.scene.control.TextArea
import javafx.scene.control.TextField
import javafx.scene.control.TitledPane
import javafx.scene.control.ToggleButton
import javafx.scene.control.ToolBar
import javafx.scene.control.TreeView
import javafx.scene.layout.AnchorPane
import javafx.scene.layout.BorderPane
import javafx.scene.layout.FlowPane
import javafx.scene.layout.GridPane
import javafx.scene.layout.HBox
import javafx.scene.layout.Pane
import javafx.scene.layout.StackPane
import javafx.scene.layout.TilePane
import javafx.scene.layout.VBox
import javafx.stage.Stage
import javafx.collections.ObservableList
import javafx.scene.Node

class SceneBuilder {
	
	def static Scene Scene(Stage parent, (Scene)=>void init) {
		val scene = new Scene(new Group) => init
		parent.scene = scene
		return scene
	}
	
	def static AnchorPane AnchorPane(Pane parent, (AnchorPane)=>void init) {
		val anchorPane = new AnchorPane() => init
		parent.children += anchorPane
		return anchorPane
	}
	
	def static AnchorPane AnchorPane(Scene parent, (AnchorPane)=>void init) {
		val anchorPane = new AnchorPane() => init
		parent.children += anchorPane
		return anchorPane
	}
	
	def static Scene AnchoredScene(Stage parent, (AnchorPane)=>void init) {
		val result = new Scene(new AnchorPane => init)
		parent.scene = result
		return result
	}
	
	def static BorderPane BorderPane(Pane parent, (BorderPane)=>void init) {
		val borderPane = new BorderPane() => init
		parent.children += borderPane
		return borderPane
	}
	
	def static BorderPane BorderPane(Scene parent, (BorderPane)=>void init) {
		val borderPane = new BorderPane() => init
		parent.children += borderPane
		return borderPane
	}
	
	def static Scene BorderedScene(Stage parent, (BorderPane)=>void init) {
		val result = new Scene(new BorderPane => init)
		parent.scene = result
		return result
	}
	
	def static FlowPane FlowPane(Pane parent, (FlowPane)=>void init) {
		val flowPane = new FlowPane() => init
		parent.children += flowPane
		return flowPane
	}
	
	def static FlowPane FlowPane(Scene parent, (FlowPane)=>void init) {
		val flowPane = new FlowPane() => init
		parent.children += flowPane
		return flowPane
	}
	
	def static Scene FlowedScene(Stage parent, (FlowPane)=>void init) {
		val result = new Scene(new FlowPane => init)
		parent.scene = result
		return result
	}
	
	def static GridPane GridPane(Pane parent, (GridPane)=>void init) {
		val gridPane = new GridPane() => init
		parent.children += gridPane
		return gridPane
	}
	
	def static GridPane GridPane(Scene parent, (GridPane)=>void init) {
		val gridPane = new GridPane() => init
		parent.children += gridPane
		return gridPane
	}
	
	def static Scene GridedScene(Stage parent, (GridPane)=>void init) {
		val result = new Scene(new GridPane => init)
		parent.scene = result
		return result
	}
	
	def static HBox HBox(Pane parent, (HBox)=>void init) {
		val hbox = new HBox() => init
		parent.children += hbox
		return hbox
	}
	
	def static HBox HBox(Scene parent, (HBox)=>void init) {
		val hbox = new HBox() => init
		parent.children += hbox
		return hbox
	}
	
	def static Scene HBoxedScene(Stage parent, (HBox)=>void init) {
		val result = new Scene(new HBox => init)
		parent.scene = result
		return result
	}
	
	def static Pane Pane(Pane parent, (Pane)=>void init) {
		val pane = new Pane() => init
		parent.children += pane
		return pane
	}
	
	def static Pane Pane(Scene parent, (Pane)=>void init) {
		val pane = new Pane() => init
		parent.children += pane
		return pane
	}
	
	def static Scene PanedScene(Stage parent, (Pane)=>void init) {
		val result = new Scene(new Pane => init)
		parent.scene = result
		return result
	}
	
	def static StackPane StackPane(Pane parent, (StackPane)=>void init) {
		val stackPane = new StackPane() => init
		parent.children += stackPane
		return stackPane
	}
	
	def static StackPane StackPane(Scene parent, (StackPane)=>void init) {
		val stackPane = new StackPane() => init
		parent.children += stackPane
		return stackPane
	}
	
	def static Scene StackedScene(Stage parent, (StackPane)=>void init) {
		val result = new Scene(new StackPane => init) 
		parent.scene = result
		return result
	}
	
	def static TilePane TilePane(Pane parent, (TilePane)=>void init) {
		val tilePane = new TilePane() => init
		parent.children += tilePane
		return tilePane
	}
	
	def static TilePane TilePane(Scene parent, (TilePane)=>void init) {
		val tilePane = new TilePane() => init
		parent.children += tilePane
		return tilePane
	}
	
	def static Scene TiledScene(Stage parent, (TilePane)=>void init) {
		val result = new Scene(new TilePane => init) 
		parent.scene = result
		return result
	}
	
	def static VBox VBox(Pane parent, (VBox)=>void init) {
		val vbox = new VBox() => init
		parent.children += vbox
		return vbox
	}
	
	def static VBox VBox(Scene parent, (VBox)=>void init) {
		val vbox = new VBox() => init
		parent.children += vbox
		return vbox
	}
	
	def static Scene VBoxedScene(Stage parent, (VBox)=>void init) {
		val result = new Scene(new VBox => init) 
		parent.scene = result
		return result
	}
	
	def static Accordion Accordion(Pane parent, (Accordion)=>void init) {
		val accordion = new Accordion() => init
		parent.children += accordion
		return accordion
	}
	
	def static Accordion Accordion(Scene parent, (Accordion)=>void init) {
		val accordion = new Accordion() => init
		parent.children += accordion
		return accordion
	}
	
	def static Button Button(Pane parent, (Button)=>void init) {
		val button = new Button() => init
		parent.children += button
		return button
	}
	
	def static Button Button(Scene parent, (Button)=>void init) {
		val button = new Button() => init
		parent.children += button
		return button
	}
	
	def static CheckBox CheckBox(Pane parent, (CheckBox)=>void init) {
		val checkBox = new CheckBox() => init
		parent.children += checkBox
		return checkBox
	}
	
	def static CheckBox CheckBox(Scene parent, (CheckBox)=>void init) {
		val checkBox = new CheckBox() => init
		parent.children += checkBox
		return checkBox
	}
	
	def static ColorPicker ColorPicker(Pane parent, (ColorPicker)=>void init) {
		val colorPicker = new ColorPicker() => init
		parent.children += colorPicker
		return colorPicker
	}
	
	def static ColorPicker ColorPicker(Scene parent, (ColorPicker)=>void init) {
		val colorPicker = new ColorPicker() => init
		parent.children += colorPicker
		return colorPicker
	}
	
	def static <T> ComboBox<T> ComboBox(Pane parent, (ComboBox<T>)=>void init) {
		val comboBox = new ComboBox<T>() => init
		parent.children += comboBox
		return comboBox
	}
	
	def static <T> ComboBox<T> ComboBox(Scene parent, (ComboBox<T>)=>void init) {
		val comboBox = new ComboBox<T>() => init
		parent.children += comboBox
		return comboBox
	}
	
	def static Label Label(Pane parent, (Label)=>void init) {
		val label = new Label() => init
		parent.children += label
		return label
	}
	
	def static Label Label(Scene parent, (Label)=>void init) {
		val label = new Label() => init
		parent.children += label
		return label
	}
	
	def static <T> ListView<T> ListView(Pane parent, (ListView<T>)=>void init) {
		val listView = new ListView<T>() => init
		parent.children += listView
		return listView
	}
	
	def static <T> ListView<T> ListView(Scene parent, (ListView<T>)=>void init) {
		val listView = new ListView<T>() => init
		parent.children += listView
		return listView
	}
	
	def static Menu Menu(MenuBar parent, (Menu)=>void init) {
		val menu = new Menu() => init
		parent.menus.add(menu)
		return menu
	}
	
	def static MenuBar MenuBar(Pane parent, (MenuBar)=>void init) {
		val menuBar = new MenuBar() => init
		parent.children += menuBar
		return menuBar
	}
	
	def static MenuBar MenuBar(Scene parent, (MenuBar)=>void init) {
		val menuBar = new MenuBar() => init
		parent.children += menuBar
		return menuBar
	}
	
	def static MenuItem MenuItem(Menu parent, (MenuItem)=>void init) {
		val menuItem = new MenuItem() => init
		parent.items += menuItem
		return menuItem
	}
	
	def static PasswordField PasswordField(Pane parent, (PasswordField)=>void init) {
		val passwordField = new PasswordField() => init
		parent.children += passwordField
		return passwordField
	}
	
	def static PasswordField PasswordField(Scene parent, (PasswordField)=>void init) {
		val passwordField = new PasswordField() => init
		parent.children += passwordField
		return passwordField
	}
	
	def static ProgressIndicator ProgressIndicator(Pane parent, (ProgressIndicator)=>void init) {
		val progressIndicator = new ProgressIndicator() => init
		parent.children += progressIndicator
		return progressIndicator
	}
	
	def static ProgressIndicator ProgressIndicator(Scene parent, (ProgressIndicator)=>void init) {
		val progressIndicator = new ProgressIndicator() => init
		parent.children += progressIndicator
		return progressIndicator
	}
	
	def static RadioButton RadioButton(Pane parent, (RadioButton)=>void init) {
		val radioButton = new RadioButton() => init
		parent.children += radioButton
		return radioButton
	}
	
	def static RadioButton RadioButton(Scene parent, (RadioButton)=>void init) {
		val radioButton = new RadioButton() => init
		parent.children += radioButton
		return radioButton
	}
	
	def static ScrollBar ScrollBar(Pane parent, (ScrollBar)=>void init) {
		val scrollBar = new ScrollBar() => init
		parent.children += scrollBar
		return scrollBar
	}
	
	def static ScrollBar ScrollBar(Scene parent, (ScrollBar)=>void init) {
		val scrollBar = new ScrollBar() => init
		parent.children += scrollBar
		return scrollBar
	}
	
	def static ScrollPane ScrollPane(Pane parent, (ScrollPane)=>void init) {
		val scrollPane = new ScrollPane() => init
		parent.children += scrollPane
		return scrollPane
	}
	
	def static ScrollPane ScrollPane(Scene parent, (ScrollPane)=>void init) {
		val scrollPane = new ScrollPane() => init
		parent.children += scrollPane
		return scrollPane
	}
	
	def static Separator Separator(Pane parent, (Separator)=>void init) {
		val separator = new Separator() => init
		parent.children += separator
		return separator
	}
	
	def static Separator Separator(Scene parent, (Separator)=>void init) {
		val separator = new Separator() => init
		parent.children += separator
		return separator
	}
	
	def static Slider Slider(Pane parent, (Slider)=>void init) {
		val slider = new Slider() => init
		parent.children += slider
		return slider
	}
	
	def static Slider Slider(Scene parent, (Slider)=>void init) {
		val slider = new Slider() => init
		parent.children += slider
		return slider
	}
	
	def static SplitPane SplitPane(Pane parent, (SplitPane)=>void init) {
		val splitPane = new SplitPane() => init
		parent.children += splitPane
		return splitPane
	}
	
	def static SplitPane SplitPane(Scene parent, (SplitPane)=>void init) {
		val splitPane = new SplitPane() => init
		parent.children += splitPane
		return splitPane
	}
	
	def static TabPane TabPane(Pane parent, (TabPane)=>void init) {
		val tabPane = new TabPane() => init
		parent.children += tabPane
		return tabPane
	}
	
	def static TabPane TabPane(Scene parent, (TabPane)=>void init) {
		val tabPane = new TabPane() => init
		parent.children += tabPane
		return tabPane
	}
	
	def static <S> TableView<S> TableView(Pane parent, (TableView<S>)=>void init) {
		val tableView = new TableView<S>() => init
		parent.children += tableView
		return tableView
	}
	
	def static <S> TableView<S> TableView(Scene parent, (TableView<S>)=>void init) {
		val tableView = new TableView<S>() => init
		parent.children += tableView
		return tableView
	}
	
	def static TextArea TextArea(Pane parent, (TextArea)=>void init) {
		val textArea = new TextArea() => init
		parent.children += textArea
		return textArea
	}
	
	def static TextArea TextArea(Scene parent, (TextArea)=>void init) {
		val textArea = new TextArea() => init
		parent.children += textArea
		return textArea
	}
	
	def static TextField TextField(Pane parent, (TextField)=>void init) {
		val textField = new TextField() => init
		parent.children += textField
		return textField
	}
	
	def static TextField TextField(Scene parent, (TextField)=>void init) {
		val textField = new TextField() => init
		parent.children += textField
		return textField
	}
	
	def static TitledPane TitledPane(Pane parent, (TitledPane)=>void init) {
		val titledPane = new TitledPane() => init
		parent.children += titledPane
		return titledPane
	}
	
	def static TitledPane TitledPane(Scene parent, (TitledPane)=>void init) {
		val titledPane = new TitledPane() => init
		parent.children += titledPane
		return titledPane
	}
	
	def static ToggleButton ToggleButton(Pane parent, (ToggleButton)=>void init) {
		val toggleButton = new ToggleButton() => init
		parent.children += toggleButton
		return toggleButton
	}
	
	def static ToggleButton ToggleButton(Scene parent, (ToggleButton)=>void init) {
		val toggleButton = new ToggleButton() => init
		parent.children += toggleButton
		return toggleButton
	}
	
	def static ToolBar ToolBar(Pane parent, (ToolBar)=>void init) {
		val toolBar = new ToolBar() => init
		parent.children += toolBar
		return toolBar
	}
	
	def static ToolBar ToolBar(Scene parent, (ToolBar)=>void init) {
		val toolBar = new ToolBar() => init
		parent.children += toolBar
		return toolBar
	}
	
	def static <T> TreeView<T> TreeView(Pane parent, (TreeView<T>)=>void init) {
		val treeView = new TreeView<T>() => init
		parent.children += treeView
		return treeView
	}
	
	def static <T> TreeView<T> TreeView(Scene parent, (TreeView<T>)=>void init) {
		val treeView = new TreeView<T>() => init
		parent.children += treeView
		return treeView
	}
	
	def static ObservableList<Node> getChildren(Scene it) {
		switch r:root {
			Group : r.children
			Pane  : r.children
			default : throw new IllegalStateException("no root set")
		}
	}
}