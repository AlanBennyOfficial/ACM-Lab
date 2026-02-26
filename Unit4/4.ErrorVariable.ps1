$ErrorActionPreference = "SilentlyContinue"
$file = read-host "Enter a file name"
get-childitem $file -ErrorVariable myErrorVar
if ($myErrorVar.Count -gt 0)
{
    write-host "I couldn't find the file $file."
}
else
{
    write-host "`nI found the file $file."
}
$myErrorVar |format-list * -force
$ErrorActionPreference = "Continue"