﻿Invoke-Webrequest -uri "https://download.visualstudio.microsoft.com/download/pr/9fcc1f0c-c63f-4424-bc46-7351a59fba06/1ed7863dc633c57c42a88c5cef907048/vs_community.exe" -OutFile vs_community.exe

Remove-Item vs_community.exe