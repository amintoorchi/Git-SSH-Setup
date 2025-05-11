# 🔧 Server-Setup.sh

Automate the initial setup of a fresh Linux server to securely connect with your GitHub account via SSH.  
Perfect for DevOps workflows, private repo access, and server bootstrapping.

---

## 📜 What It Does

This script:

1. 🧼 Updates and upgrades your system packages  
2. 📧 Asks for your GitHub email and generates a new SSH key  
3. 🔐 Starts the SSH agent and adds the new key  
4. 📋 Displays the public key so you can copy it to GitHub  
5. 🔗 Tests the SSH connection to GitHub  
6. ✅ Prepares your server for cloning private repositories securely

---

## 🚀 Usage

### 🛠️ Run the script:

```bash
bash setup-github.sh

📂 Make the script executable :
chmod +x Server-Setup.sh
