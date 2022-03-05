#Powershell Text To Speech 

Add-Type –AssemblyName System.Speech
$Speech = New-Object –TypeName System.Speech.Synthesis.SpeechSynthesizer

#This will allow the user to put in the voice they want to use and the message that they want to be read to them.

$Person = Read-Host "Enter 1 for Microsoft David Desktop OR Enter 2 Microsoft Zira Desktop "
if ($Person -eq "2"){
$Speech.SelectVoice("Microsoft Zira Desktop")
}



# Now that the user has selected their voice option, it is time for us to have them enter what they want to be read to them.

$Message = Read-Host "Enter Text Here: "

#Now it is finally time to hear what we have just typed

$Speech.Speak($Message)
