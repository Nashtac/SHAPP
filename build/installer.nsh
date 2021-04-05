!macro customInstall
  DetailPrint "Register habbografx URI Handler"
  DeleteRegKey HKCR "habbografx"
  WriteRegStr HKCR "habbografx" "" "URL:habbografx"
  WriteRegStr HKCR "habbografx" "URL Protocol" ""
  WriteRegStr HKCR "habbografx\DefaultIcon" "" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  WriteRegStr HKCR "habbografx\shell" "" ""
  WriteRegStr HKCR "habbografx\shell\Open" "" ""
  WriteRegStr HKCR "habbografx\shell\Open\command" "" "$INSTDIR\${APP_EXECUTABLE_FILENAME} %1"
!macroend