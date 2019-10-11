# Mount the image with FTK Imager then define the path to the image. Be sure to include '[root]', this can easily be done by typing in <drive letter>:\ then tab complete.
# Example .\keyword-search.ps1 d:\'[root]'
# Change the keywords in the Get-ChildItem command to suit what you're searching for.

param(
    [string]$imagePath
)

function Get-ImageMountSource
{
    # Check to verify imagepath is a disk and not mapped drive
    if ($imagepath.Substring(1,1) -eq ':') {
        $driveLetter = $imagepath.Substring(0,1)
       }
    }

Get-ChildItem -path $imagePath -Recurse | Select-String -Pattern "Secret", "classified", "fvey"