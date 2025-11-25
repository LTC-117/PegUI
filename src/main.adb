with Gtk.Label;    use Gtk.Label;
with Gtk.Window;   use Gtk.Window;
with Gtk.Widget;   use Gtk.Widget;
with Gtk.Table;    use Gtk.Table;
with Glib;         use Glib;

with Ada.Unchecked_Conversion;
with Gdk.Event;
with Gtk.Main;

with Pegui;
with Pegui.Wrapper;  use Pegui.Wrapper;
with Pegui.Widgets;  use Pegui.Widgets;
with Pegui.UI;       use Pegui.UI;

procedure Main is
begin

   Pegui.Pegui_Window_Init;

end Main;
