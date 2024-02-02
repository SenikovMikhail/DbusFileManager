# DbusFileManager

The program, depending on the method called, processes the file passed to it in one way or another. For example, it can determine which application should open a file depending on its extension


# Required libs:
  <ul>
    <li>libdbus-glib-1-dev</li>
  </ul>

# Install

    git clone https://github.com/SenikovMikhail/DbusFileManager.git
    cd DbusFileManager
    make

# Linux command for test

## Introspect

    dbus-send --session --print-reply --dest=org.MyFileManager.OpenFileServer --type=method_call /org/MyFileManager/FileObject org.freedesktop.DBus.Introspectable.Introspect

## Open file

    dbus-send --session --print-reply --dest=org.MyFileManager.OpenFileServer --type=method_call /org/MyFileManager/FileObject org.MyFileManager.FileInterface.Open string:<file_path>

