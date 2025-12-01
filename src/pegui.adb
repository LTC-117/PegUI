with Ada.Text_IO; use Ada.Text_IO;
with Gtk.Label;   use Gtk.Label;
with Gtk.Window;  use Gtk.Window;
with Gtk.Widget;  use Gtk.Widget;
with Gtk.Button;  use Gtk.Button;
with Gtk.Box;     use Gtk.Box;
with Glib;        use Glib;
with Gtk.Menu;    use Gtk.Menu;
with Gtk.Enums;   use Gtk.Enums;
with Gtk.Frame;   use Gtk.Frame;
with Gtk.Grid;    use Gtk.Grid;
with Gtk.Spinner; use Gtk.Spinner;
with Gtk.Progress_Bar;  use Gtk.Progress_Bar;
with Gtk.Image;   use Gtk.Image;

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
begin
   Pegui_Begin;


   Pegui_End;
end Pegui;
