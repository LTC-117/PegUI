with Ada.Text_IO;       use Ada.Text_IO;
with GNAT.OS_Lib;       use GNAT.OS_Lib;

package Peg.Wrapper is

   --  This package implements a simple yet complete and fully functional wrapper
   --  for the ffmpeg media converter. It must offer a simple abstraction and
   --  interaction layer for the other modules of the project to successfuly
   --  interact with the ffmpeg executable through shell commands. The entire
   --  project depends on this package.

   FFmpeg_Command_Count :  constant Positive := 10;
   FFmpeg : constant String := "ffmpeg";

   function Check_FFmpeg return Boolean;
   --  Checks if the machine running the application has FFmpeg installed.

end Peg.Wrapper;
