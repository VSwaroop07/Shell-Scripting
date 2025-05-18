# 🚀 EC2 Instance Launcher Shell Script

This shell script automates the process of launching an EC2 instance using AWS CLI. It ensures that the AWS CLI is installed and properly configured before launching the instance.

## 📜 Script Features

- ✅ Checks if AWS CLI is installed (installs AWS CLI v2 if missing)
- 📥 Automatically downloads and installs AWS CLI v2 on Linux
- 🖥️ Launches an EC2 instance with user-defined parameters
- 🔄 Waits until the instance enters the `running` state

## 🧰 Requirements

- Linux system (Ubuntu/Debian preferred)
- Bash shell
- `curl`, `unzip`, `aws`, `sudo` must be available
- AWS credentials configured using `aws configure`
- IAM user must have EC2 permissions

## ⚙️ Configuration

Before running the script, fill in the required EC2 details in the `main()` function section:

```bash
AMI_ID=""               # Example: "ami-0abcdef1234567890"
KEY_NAME=""             # Example: "my-key-pair"
SUBNET_ID=""            # Example: "subnet-0bb1c79de3EXAMPLE"
SECURITY_GROUP_IDS=""   # Example: "sg-0123456789abcdef0"
INSTANCE_TYPE="t2.micro"
INSTANCE_NAME="Shell-Script-EC2-Demo"
```

> ⚠️ Make sure the AWS region and default profile are set correctly using `aws configure`.

## ▶️ Usage

1. Save the script as `create-ec2-instance.sh`.

2. Make the script executable:

```bash
chmod +x create-ec2-instance.sh
```

3. Run the script:

```bash
./create-ec2-instance.sh
```

## 💡 Sample Output

```bash
AWS CLI is not installed. Installing AWS CLI v2 on Linux...
Instance i-0abcd1234efgh5678 created successfully.
Waiting for instance i-0abcd1234efgh5678 to be in running state...
Instance i-0abcd1234efgh5678 is now running.
```

## 📂 Output

- A new EC2 instance will be launched with the specified AMI, key pair, subnet, and security group.
- The instance ID will be printed, and the script will wait until the instance is in a `running` state.

## 📌 Notes

- Ensure your AWS credentials are valid and have not expired.
- Use appropriate AMI IDs and security group settings based on your AWS region.
- You can modify the script to accept command-line arguments for dynamic usage.

## 🛡️ Safety

- Uses `set -euo pipefail` to exit on errors and unset variables.
- Cleans up after installing AWS CLI.
- Verifies that AWS CLI is installed and available.

## 📄 License

MIT – Free to use and modify.

## 🙋 Author

Swaroop Vyawahare
