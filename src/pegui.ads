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

   --  Overall, this package must implement basic types, sizes, functions and
   --  any other thing that could be considered fundamental and basic for the
   --  application. For now, the functions must be focused in the window.

   --------------------
   --  Application types


   -----------------------------------------
   --  Application fundamental variables.

   Window_Height  :  constant Gint  := 500;
   Window_Width   :  constant Gint  := 800;
   Main_Window    :  Gtk_Window;
   Button         :  Gtk_Widget;

   ----------------------------------------------
   --  Application basic procedures and functions.

   procedure Pegui_Window_Init;

   procedure Pegui_Window_Finish;

end Pegui;
