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

with Gtkada.Builder; use Gtkada.Builder;
with Peg;          use Peg;
with Peg.Wrapper;  use Peg.Wrapper;
with Peg.Widgets;  use Peg.Widgets;
with Peg.UI;       use Peg.UI;

procedure Pegui is

   Btn   :  Gtk_Button;
   Lbl   :  Gtk_Label;
   Box   :  Gtk_Box;
   VBox  :  Gtk_Vbox;
   Menu  :  Gtk_Menu;
   Builder: Gtkada_Builder;

begin

   Pegui_Begin;

      Gtk_New_Vbox (Box => Vbox, Homogeneous => True);
      Add (Main_Window, VBox);

      Gtk_New (Lbl, "Well well well, it works");
      Pack_Start (In_Box => VBox,
                  Child  => Lbl,
                  Expand => False,
                  Fill   => False);

      Gtk_New_Hbox (Box => Box, Homogeneous => True);
      Pack_Start (In_Box => VBox, Child => Box, Expand => False);

      Gtk_New (Btn, "taquipariu");
      Pack_Start (In_Box => Box,
                  Child  => Btn,
                  Expand => False,
                  Fill   => False);

      --  Pegui.Main_Window.Add (VBox);

   Pegui_End;

end Pegui;
