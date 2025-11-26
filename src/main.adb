with Gtk.Label;   use Gtk.Label;
with Gtk.Window;  use Gtk.Window;
with Gtk.Widget;  use Gtk.Widget;
with Gtk.Table;   use Gtk.Table;
with Gtk.Button;  use Gtk.Button;
with Gtk.Box;     use Gtk.Box;
with Glib;        use Glib;
with Gtk.Menu;    use Gtk.Menu;

with Ada.Unchecked_Conversion;
with Gdk.Event;
with Gtk.Main;

with Pegui;
with Pegui.Wrapper;  use Pegui.Wrapper;
with Pegui.Widgets;  use Pegui.Widgets;
with Pegui.UI;       use Pegui.UI;

procedure Main is

   Btn   :  Gtk_Button;
   Lbl   :  Gtk_Label;
   Box   :  Gtk_VBox;
   Menu  :  Gtk_Menu;

begin

   Gtk_New_VBox (Box);
   Gtk_New (Lbl, "Box Label");
   Gtk_New (Btn, "ok");

   Pegui.Pegui_Window_Init;

      Pegui.Main_Window.Add (Box);
      Box.Pack_Start (Lbl);
      Gtk_New (Btn, "ok");
      Box.Pack_Start (Btn);

   Pegui.Pegui_Window_Finish;

end Main;
