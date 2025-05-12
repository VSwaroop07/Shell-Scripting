# 🚀 Django Project Deployment Script

This repository contains a shell script `host1.sh` that automates the process of **cloning and deploying a Django project** from GitHub. It's designed to streamline environment setup, dependency installation, and server launch for a Django-based web application.

---

## 📜 Script Overview

The `host1.sh` script performs the following tasks automatically:

1. **Installs Python, pip, and venv** if not already available.
2. **Clones a Django project** from the GitHub repository:  
   [`VSwaroop07/price_comapre`](https://github.com/VSwaroop07/price_comapre)
3. **Creates a virtual environment** for the project.
4. **Installs required dependencies** using `requirements.txt`.
5. **Runs the Django development server** on `0.0.0.0:8000`.

---

## 💡 Prerequisites

Before running the script, make sure you have:

- A Linux environment (Ubuntu recommended)
- Git installed (`sudo apt install git` if not already)
- Sudo privileges

---

## 🔧 How to Use

1. Clone this repository or copy the script.

2. Make the script executable:

   ```bash
   chmod +x host1.sh
   ```

3. Run the script:

   ```bash
   ./host1.sh
   ```

4. Once completed, the Django app should be running on:  
   [http://localhost:8000](http://localhost:8000)  
   or accessible via your server's IP.

---

## 🧰 Features Used

- `apt` for package installation  
- `git` for cloning the project  
- `python3-venv` for virtual environment  
- `pip` for Python dependency management  
- Basic error handling for each task

---

## ⚠️ Notes

- If the project already exists in your directory, the script will skip cloning.
- The script assumes that the `manage.py` file is located at the root of the `price_comapre` repository.
- Run the script in a clean environment or virtual machine for best results.

---

## 📬 Feedback

Feel free to submit issues or suggestions to help improve this deployment script. Contributions are welcome!

---

**✅ Project ran successfully!**
