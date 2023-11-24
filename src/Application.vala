public class MyApp : Gtk.Application {
	public MyApp () {
		Object (
			application_id: "com.github.chetwilk.gtk-hello-vala",
			flags: ApplicationFlags.FLAGS_NONE
		);
	}
	
	protected override void activate () {
		var button_hello = new Gtk.Button.with_label ("Click Me") {
			margin_top = 100,
			margin_bottom = 100,
			margin_start = 200,
			margin_end = 200
		};
		
		button_hello.clicked.connect (() => {
			button_hello.label = "Hello  World!";
			button_hello.sensitive = false;
		});
		
		var main_window = new Gtk.ApplicationWindow (this) {
			default_height = 300,
			default_width = 750,
			title = "Hello World"
		};
		main_window.child = button_hello;
		main_window.present ();
	}
	
	public static int main (string[] args) {
		return new MyApp ().run (args);
	}
}
