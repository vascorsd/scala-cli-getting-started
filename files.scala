//> using lib "com.lihaoyi::os-lib:0.7.8"

def filesByExtension(
  extension: String, 
  dir: os.Path = os.pwd): Seq[os.Path] = 
    os.walk(dir).filter { f =>
      f.last.endsWith(s".$extension") && os.isFile(f)
    }
