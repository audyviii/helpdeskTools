##########################################################
#                                                        # 
#                    Date: 2/19/2022                     #
#                                                        #
#    Purpose: Automate Task - Mapping Network Drives     #
#                                                        #
##########################################################


"`n"
"Add or Remove a mapped drive?"
"`n"
"
1. Add Mapped Drive
2. Remove Mapped Drive

"

$AddOrRemove = Read-Host "Enter number"

function DisplayDrives {
"
1. \\serverFile01\Shared (A:)
2. \\serverFile02\Public (B:)
3. \\serverFile03\Library (C:)
4. \\serverFile04\Reports (D:)
"
}

DisplayDrives

$SelectDrive = Read-Host "Enter number"


    $one = "\\serverFile01\Shared" # (A:)
    $two = "\\serverFile02\Public" # (B:)
    $three = "\\serverFile03\Library" # (C:)
    $four = "\\serverFile04\Reports" # (D:)
    
    if($AddOrRemove -eq 1){        
        if($SelectDrive -eq 1){
            New-PSDrive –Name "A" –PSProvider FileSystem –Root $one –Persist
            Exit
        }
        elseif($SelectDrive -eq 2){
            New-PSDrive –Name "B" –PSProvider FileSystem –Root $two –Persist
            Exit
        }
        elseif($SelectDrive -eq 3){
            New-PSDrive –Name "C" –PSProvider FileSystem –Root $three –Persist
            Exit
        }
        elseif($SelectDrive -eq 4){
            New-PSDrive –Name "D" –PSProvider FileSystem –Root $four –Persist
            Exit
        }
        else{
            "Try Again Later."
            Exit
        }
    }
    if($AddOrRemove -eq 2){
        if($SelectDrive -eq 1){
            Get-PSDrive "A" | Remove-PSDrive -Force -Verbose
            Exit
        }
        elseif($SelectDrive -eq 2){
            Get-PSDrive "B" | Remove-PSDrive -Force -Verbose
            Exit
        }
        elseif($SelectDrive -eq 3){
            Get-PSDrive "C" | Remove-PSDrive -Force -Verbose
            Exit
        }
        elseif($SelectDrive -eq 4){
            Get-PSDrive "D" | Remove-PSDrive -Force -Verbose
            Exit
        }
        else{
            "Try Again Later."
            Exit
        }
    }
