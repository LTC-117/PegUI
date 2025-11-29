with Gtk.Label;   use Gtk.Label;
with Gtk.Window;  use Gtk.Window;
with Gtk.Widget;  use Gtk.Widget;
with Gtk.Table;   use Gtk.Table;
with Gtk.Button;  use Gtk.Button;
with Gtk.Box;     use Gtk.Box;
with Glib;        use Glib;
with Gtk.Menu;    use Gtk.Menu;
with Gtk.Enums;   use Gtk.Enums;
with Gtk.Frame;   use Gtk.Frame;
with Gtk.Grid;    use Gtk.Grid;

with Ada.Unchecked_Conversion;
with Gtk.Button_Box;  use Gtk.Button_Box;
with Gdk.Event;
with Gtk.Main;
with Gtk.Style;   use Gtk.Style;

with Gtkada.Builder; use Gtkada.Builder;
with Peg;          use Peg;
with Peg.Wrapper;  use Peg.Wrapper;
with Peg.Widgets;  use Peg.Widgets;
with Peg.UI;       use Peg.UI;

procedure Pegui is

   Button : Gtk_Button;

begin
   Pegui_Begin;

      Button := Gtk.Button.Gtk_Button_New_With_Mnemonic ("Hello!");
      Gtk.Grid.Attach
         (Self   => Peg.Main_Grid,
          Child  => Button,
          Left   => 0,
          Top    => -10,
          Width  => 50,
          Height => 1);


   Pegui_End;
end Pegui;
