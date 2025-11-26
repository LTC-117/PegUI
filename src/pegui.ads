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
   --  First part of window initialization. Responsible for initializing the
   --  basic things in the window, like size and label. Everything in between
   --  this procedure and Pegui_Window_Finish should be added to the main
   --  window no problem.

   procedure Pegui_Window_Finish;
   --  Final part of window implementation. Should run the window with whatever
   --  is added to it before this procedure is used.

end Pegui;
