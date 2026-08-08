# README: Adding SpeedCrunch to Calculator Button (AppKey 18) in Windows Registry

## Overview

This guide explains how to modify the Windows Registry to set **SpeedCrunch** as the application associated with the **Calculator button (AppKey 18)**. If the `ShellExecute` key doesn’t exist under **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AppKey\18**, this guide provides step-by-step instructions to create it and associate SpeedCrunch with the AppKey.

## Prerequisites

* **SpeedCrunch** installed on your system.

  * Typically located at:
    `C:\Program Files (x86)\SpeedCrunch\speedcrunch.exe`
* **NirCmd** utility for refreshing Windows Explorer:

  * Download from: [NirCmd](https://www.nirsoft.net/utils/nircmd.html)

---

## Steps

### 1. Open the Windows Registry Editor

1. Press `Win + R` to open the **Run** dialog.
2. Type `regedit` and press **Enter**.

   > **Note:** If prompted by User Account Control (UAC), click **Yes** to allow the Registry Editor to open.

### 2. Navigate to the Registry Path

1. In the Registry Editor, navigate to the following path:

   ```
   HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AppKey\18
   ```

2. **If the `AppKey\18` folder does not exist**, you’ll need to create it. Skip to **Step 3**.

### 3. Create the `AppKey\18` Key (If Missing)

1. Right-click the **Explorer** folder on the left sidebar.
2. Select **New** > **Key**.
3. Name the new key **AppKey**.
4. Right-click the **AppKey** folder, and select **New** > **Key** again.
5. Name the new key **18**.

### 4. Add the `ShellExecute` String Value

1. Inside the **AppKey\18** folder, look for a string named **ShellExecute**. If it doesn't exist, proceed to create it.

2. Right-click an empty area on the right pane of the **AppKey\18** folder.

3. Select **New** > **String Value**.

4. Name the new string **ShellExecute**.

### 5. Modify the `ShellExecute` Value

1. Double-click on **ShellExecute** to open the **Edit String** window.

2. In the **Value data** field, enter the full path to **SpeedCrunch**, surrounded by quotes. For example:

   ```
   "C:\\Program Files (x86)\\SpeedCrunch\\speedcrunch.exe"
   ```

   > **Important:**

   * Use double backslashes (`\\`) to escape the backslashes in the file path.
   * Make sure the path is surrounded by **double quotes** (`"`).

3. Click **OK** to save the changes.

### 6. Refresh Windows Explorer

To apply the changes, you must refresh Windows Explorer:

1. Download **NirCmd** from [NirSoft](https://www.nirsoft.net/utils/nircmd.html).

2. Extract the **nircmd.exe** file to a folder.

3. Open **Command Prompt** or the **Run** dialog (`Win + R`), and enter the following command:

   ```
   nircmd.exe shellrefresh
   ```

4. Press **Enter** to refresh Windows Explorer.

### 7. Verify the Changes

Now, pressing the **Calculator button (AppKey 18)** on your keyboard should launch **SpeedCrunch**.

---

## Alternative: Create a `.reg` File for Automatic Setup

If you want to simplify the process or share the registry changes, you can create a `.reg` file to import the settings.

### Steps to Create the `.reg` File

1. Open **Notepad**.

2. Paste the following content into the file:

   ```reg
   Windows Registry Editor Version 5.00

   [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AppKey\18]
   "ShellExecute"="\"C:\\Program Files (x86)\\SpeedCrunch\\speedcrunch.exe\""
   ```

3. Save the file as `keyboard_calc_to_speedcrunch.reg`.

4. Double-click the `.reg` file to automatically add the registry changes.

---

## Troubleshooting

* **SpeedCrunch doesn’t launch when pressing AppKey 18:**
  Double-check the path to the `speedcrunch.exe` file. Ensure that the path is correct and that it uses double backslashes (`\\`) for the file path.

* **Changes don’t take effect immediately:**
  Make sure you've refreshed Windows Explorer using NirCmd or restart your computer to ensure the changes apply correctly.

---

## Conclusion

Following this guide will allow you to associate **SpeedCrunch** with the **Calculator button (AppKey 18)** on your keyboard. You can also use the `.reg` file to apply these changes more easily in the future.
