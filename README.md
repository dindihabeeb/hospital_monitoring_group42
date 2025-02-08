# Hospital Monitoring System

A shell script-based solution for managing hospital IT infrastructure, focusing on heart rate data monitoring, log archival, and secure remote backup. This system was developed as part of a coding assignment to demonstrate practical implementation of system administration and data management concepts.

## Project Overview

This project implements three main scripts that work together to:
1. Monitor and record heart rate data in real-time
2. Archive log files with timestamps
3. Securely back up archived data to a remote server

## Components

### 1. Heart Rate Monitor (`heart_rate_monitor.sh`)
- Records simulated heart rate data every second
- Runs as a background process
- Logs data with timestamp and device name
- Creates entries in `heart_rate_log.txt`

### 2. Log Archival System (`archive_log.sh`)
- Archives the heart rate log file
- Adds timestamps to archived files
- Format: `heart_rate_log.txt_YYYYMMDD_HHMMSS`

### 3. Backup System (`backup_archives.sh`)
- Manages archived log files
- Moves archives to `archived_logs_group42` directory
- Performs secure remote backup using SSH/SCP

## Setup and Usage

### Prerequisites
- Unix-like operating system (Linux/MacOS)
- SSH access to remote backup server
- Proper permissions for script execution

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/hospital_monitoring_group42.git
   cd hospital_monitoring_group42
   ```

2. Make scripts executable:
   ```bash
   chmod u+x heart_rate_monitor.sh archive_log.sh backup_archives.sh
   ```

### Running the System

1. Start Heart Rate Monitoring:
   ```bash
   ./heart_rate_monitor.sh
   ```
   - You will be prompted for a device name (e.g., "Monitor_A")
   - The script will display its Process ID (PID)
   - Press `Ctrl+Z` to suspend the script
   - Use `bg` to resume the script in the background
   - Use `jobs` to list all background jobs and confirm that the script is running
   - Monitor the log in real-time:
     ```bash
     tail -f heart_rate_log.txt
     ```

2. Archive Logs:
   ```bash
   ./archive_log.sh
   ```
   - Creates timestamped archive of the current log file

3. Backup Archives:
   ```bash
   ./backup_archives.sh
   ```
   - Moves archived logs to `archived_logs_group42`
   - Performs remote backup via SSH

## File Structure
```
hospital_monitoring_group42/
├── heart_rate_monitor.sh     # Heart rate monitoring script
├── archive_log.sh           # Log archival script
├── backup_archives.sh       # Remote backup script
├── heart_rate_log.txt      # Active log file
├── archived_logs_group42/   # Directory for archived logs
└── README.md               # This documentation
```

## Log File Format

Heart rate log entries follow this format:
```
YYYY-MM-DD HH:MM:SS Device_Name Heart_Rate
```

Example:
```
2024-10-03 14:35:02 Monitor_A 61
2024-10-03 14:35:03 Monitor_A 67
2024-10-03 14:35:04 Monitor_A 48
```

## Conclusion
This is an assignment project for ALU BSE Year 1 Trimester 2.
