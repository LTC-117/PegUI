with Ada.Text_IO;       use Ada.Text_IO;
with GNAT.OS_Lib;       use GNAT.OS_Lib;

package Pegui.Wrapper is

   -- This package implements a simple yet complete and fully functional wrapper
   -- for the ffmpeg media converter. It must offer a simple abstraction and
   -- interaction layer for the other modules of the project to successfuly
   -- interact with the ffmpeg executable through shell commands. The entire
   -- project depends on this package.

   FFmpeg : constant String := "ffmpeg";

   type FFmpeg_Commands is record
      -- Fill in with all possible ffmpeg commands
      -- All of them must be type 'constant Argument_List'. E.g.:
      Start_Recording : constant Argument_List; -- := "argument list for cmd"
      -- This is but an example. Full functional implementation soon.
      -- ...
   end record;

   function Check_FFmpeg return Boolean;
   -- Checks if the machine running the application has FFmpeg installed.

   function Run_FFmpeg_Command (Command : FFmpeg_Commands) return Boolean;
   -- Runs respective FFmpeg argument passed. Must be one of the arguments
   -- listed inside 'FFmpeg_Commands' type. Returns True only if command
   -- executes successfuly.

end Pegui.Wrapper;
