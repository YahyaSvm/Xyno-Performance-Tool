# **Xyno-Performance-Tool**  
**A powerful Windows optimization tool that removes unnecessary services, blocks updates, and improves system performance.**  

## **📌 Features Overview**  

### **1. Microsoft Edge Remover**  
- Completely uninstalls Microsoft Edge from Windows.  
- Prevents Edge from reinstalling through Windows Update.  
- Frees up system resources by stopping Edge-related background processes.  

### **2. Service Delete**  
- Identifies and removes non-essential Windows services.  
- Disables telemetry, diagnostics, and other background services consuming CPU and RAM.  
- Ensures better system stability by preventing unnecessary system tasks.  

### **3. Xyno Performance Mode**  
- Optimizes Windows settings for maximum performance.  
- Reduces background resource usage by disabling animations and unnecessary services.  
- Enhances system responsiveness, making it faster for gaming and professional use.  

### **4. Windows Update Stopper**  
- Completely disables Windows Update services.  
- Prevents automatic updates that may slow down the system.  
- Stops Windows from forcefully installing updates after restarts.  

### **5. Windows Update Message Blocker**  
- Blocks Windows notifications about pending updates.  
- Prevents unwanted update pop-ups that may interrupt workflows.  
- Useful for users who prefer manual control over updates.  

---

## **🛠 Installation Guide**  

### **🔹 Method 1: Running the Executable (Recommended)**  
1. **Download** the latest release from [GitHub Releases](#).  
2. **Extract** the ZIP file to a preferred directory.  
3. **Run** `Xyno-Performance-Tool.exe` as Administrator.  
4. Choose the desired features and apply changes.  

### **🔹 Method 2: Running via Command Line**  
1. Open **Command Prompt** as Administrator.  
2. Navigate to the tool’s directory using:  
   ```sh
   cd C:\Path\To\Xyno-Performance-Tool
   ```
3. Run specific commands:  
   - **Uninstall Microsoft Edge:**  
     ```sh
     Xyno-Performance-Tool.exe --remove-edge
     ```
   - **Delete unnecessary services:**  
     ```sh
     Xyno-Performance-Tool.exe --delete-services
     ```
   - **Enable performance mode:**  
     ```sh
     Xyno-Performance-Tool.exe --performance-mode
     ```
   - **Stop Windows updates:**  
     ```sh
     Xyno-Performance-Tool.exe --disable-updates
     ```
   - **Block update messages:**  
     ```sh
     Xyno-Performance-Tool.exe --block-update-msg
     ```

---

## **📝 Important Notes**  
- **Reversing Changes:** If you want to restore the default Windows settings, use the `--restore-defaults` command.  
- **Admin Rights:** The tool requires Administrator privileges to make system changes.  
- **Compatibility:** Works on Windows 10 and Windows 11.  

---

## **⚠️ Disclaimer**  
Xyno-Performance-Tool modifies system settings and removes services. Use it at your own risk. Ensure you create a system backup before applying changes.  

---

## **📜 License**  
This project is open-source under the MIT License. Feel free to modify and contribute!  

---

