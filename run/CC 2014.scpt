on run arg
    
    set fileName to arg's item 1
    set aeVersion to "CC 2014"
    
    set basePath to "Applications"
    set theFile to POSIX path of (basePath & ":Adobe After Effects " & aeVersion & ":Scripts:" & fileName)
    
    open for access theFile
    set fileContents to (read theFile)
    close access theFile
    
    tell application "Adobe After Effects CC 2014"
        DoScript fileContents
        activate
    end tell
    
    
end run