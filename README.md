# mloops quickstart
# Quickstart on Cloud9

## Basic setup: SSH and repository creation

```ssh-keygen -t rsa```
hit enter 3x

"Your public key has been saved in /home/.../id_rsa.pub."
copy the location (/home/.../id_rsa.pub)

```cat <paste copied public key location here```
copy the entire output, including the prefix: 'ssh-rsa'

paste into github

create a new github repository, initialize with a README and Python template gitignore

within the repo homepage, click the green button labeled 'Code', copy the ssh link provided

```git clone <paste copied link here>```
Answer 'yes' if prompted (security layer)

## Establishing your workspace environment
Amazon Linux 2 automatically comes with Python. You can check (and mentally note) the version by running the command
```python --version```
At the time of this writing, the Amazon Linux 2 has Python 3.7.10 installed. Note this python version for potentially troubleshooting in the future.

We are going to focus on 3 components of a workflow set up to help practitioners improve reproducibility, track errors, reduce complex command-line code, and increase speed to delivery insights (rather than fighting setups)
Those include:
1. The requirements.txt file
2. The virtual environment
3. The Makefile

### Requirements
```cd <your repo name>```
```touch dev_requirements.txt```
open the file

copy and paste the following list

### Makefile
create the makefile: ```touch Makefile```
You can copy and paste my makefile. Instructions are provided here and in the file.
start with ```make virtual_env```
This will create you virtual environment. 

