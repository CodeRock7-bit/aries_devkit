SCRIPT 1 : setup_check

--THis is used to run a system check and print its details 
--Also checks if git python3 pip and ros2 are present or not
--Checks the free disk space

TO RUN --
	bash-
	./setup_check.sh
	
	
	
SCRIPT 2 : git_summary

-- It identifies if a git repo is present in the specified path
--Prints the last 5 commit messages along with no. of uncommitted messages.

TO RUN --
	bash-
	./git_summary.sh

## Requirements
- Ubuntu 22.04 LTS
- ROS 2 Humble
