when defined(release):
  {.error: "we have no release build of Urho3D.lib yet".}
else:
  when defined(windows):
    {.link: "../lib/Urho3D.lib".}
    {.link: r"C:\Program Files (x86)\Windows Kits\8.1\Lib\winv6.3\um\x86\d3d9.lib".}
    {.link: r"C:\Program Files (x86)\Windows Kits\8.1\Lib\winv6.3\um\x86\d3dcompiler.lib".}
    {.link: r"kernel32.lib".}
    {.link: r"user32.lib".}
    {.link: r"winmm.lib".}
    {.link: r"gdi32.lib".}
    {.link: r"winspool.lib".}
    {.link: r"shell32.lib".}
    {.link: r"ole32.lib".}
    {.link: r"oleaut32.lib".}
    {.link: r"version.lib".}

    {.link: r"uuid.lib".}
    {.link: r"comdlg32.lib".}
    {.link: r"advapi32.lib".}
    {.link: r"imm32.lib".}
    {.link: r"ws2_32.lib".}
    {.link: r"dbghelp.lib".}
  when defined(linux):
    {.passL: "../lib/libUrho3D.a".}
    {.passL: "-pthread".}
    {.passL: "-lGL".}
    {.passL: "-lX11".}
  when defined(macosx):
    {.passL: "../lib/libUrho3D.a".}
    {.passL: "-framework OpenGL".}
    {.passL: "-framework CoreAudio".}
    {.passL: "-framework AudioToolbox".}
    {.passL: "-framework AudioUnit".}
    {.passL: "-framework Carbon".}
    {.passL: "-framework IOKit".}
    {.passL: "-framework Cocoa".}
    {.passL: "-framework ForceFeedback".}
#  {.passL: "/MD".}
