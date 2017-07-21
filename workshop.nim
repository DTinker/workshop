import os, slimdown

proc generatePlugin(pluginname:string, dest:string, plugintype: string) =
  let meta = readFile(getCurrentDir() / pluginname / "readme.md")
  let path = getCurrentDir() / "repository" / pluginname
  let html = slimdown.md(meta)
  writeFile(path / "readme.html", html)
