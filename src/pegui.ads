with Gtk.Main;
with Gtk.Application;

with Gtk.Label;    use Gtk.Label;
with Gtk.Window;   use Gtk.Window;
with Gtk.Widget;   use Gtk.Widget;
with Gtk.Table;    use Gtk.Table;
with Glib;         use Glib;

with Ada.Unchecked_Conversion;
with Gdk.Event;

package Pegui is

   -----------------------------------------
   -- Application basic types and variables.

   Window_Height  :  constant Gint  := 500;
   Window_Width   :  constant Gint  := 800;
   Main_Window    : Gtk_Window;

   ----------------------------------------------
   -- Application basic procedures and functions.

   procedure Pegui_Window_Init;

end Pegui;
