# Wouxun KG 332 and KG Q10H CPS Regional Fix for European users

**Batch File to Configure Regional Settings for Wouxun KG-Q332 or KG-Q10H CPS Compatibility**  

This batch script is designed to modify regional settings on Windows to ensure proper functionality of the Wouxun KG-Q332 or KG-Q10H CPS software, which may malfunction due to regional differences in decimal symbols, thousand separators, and list separators.  

### Key Features:  
1. **Backup and Restore Original Settings**:  
   - Saves the original regional settings to a local `.reg` backup file the first time it is run.  
   - Ensures a reliable restoration point for safety.  

2. **Temporarily Changes Regional Settings**:  
   - Sets the **decimal symbol** to `.` (dot).  
   - Sets the **thousand separator** to `,` (comma).  
   - Sets the **list separator** to `,` (comma).  

3. **Launches the Wouxun CPS Software**:  
   - Ensures the software runs with the appropriate regional settings.  

4. **Restores Original Regional Settings After Use**:  
   - Uses the saved backup to restore the original settings accurately.  
   
### Safety Features:  
- **Automatic Backup**: Saves current settings to a `.reg` file in the same directory as the script.  
- **Error-Free Restoration**: Ensures that settings are restored even if the script is interrupted.  

### Usage Instructions:  
1. Place the batch file in the same directory as `KG-Q332.exe` or `KG-Q10H.exe`.  
2. **Run the batch file as an administrator** to apply registry changes.  
3. The script will:
   - Save the current settings (if not already saved).
   - Apply temporary settings for compatibility.
   - Launch the CPS software.
   - Restore the original settings upon completion.

### Example Context:  
- **Greece/Europe** uses `,` (comma) as the decimal symbol and `.` (dot) as the thousand separator, while the **USA** uses the opposite. This script temporarily aligns these settings with the USA format required by the software.  

### Notes:  
- Ensure you have administrative privileges when running this script.  
- Changes are only applied to the current user and will be restored automatically after the software is closed.  
- Modify the file as needed for compatibility with other CPS software versions.  

This script simplifies regional adjustments, providing a safe and seamless operation of Wouxun CPS software in regions with different default settings.

**This script is provided "as is" without warranty of any kind.**
