==================
Spellcheck Results
==================

> File: ./INSTALL.md
> File: ./credentials
 - line 1:
  * 'machine localhost'
  # 'localhost'
  + Suggestions: local,host

> File: ./scripts/aspell_02_exec.sh
 - line 5:
  * '# Autor: Ori Nahum'
  # 'Autor'
  + Suggestions: Author,Auto

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 10:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'DS'
  + Suggestions: D'S,DOS

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Layani'
  + Suggestions: Laying,Lanai

 - line 5:
  * '# Autor: Ori Nahum'
  # 'Ori'
  + Suggestions: Orin,Orig

 - line 32:
  * 'aspell list < "$FILE" | sort -u | while read WORD'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 38:
  * 'SUGGESTIONS=$(echo "$WORD" | aspell -a | awk -F ': ' '/^&/ {print $2}' | tr -s ' ' ',' | cut -d, -f1-2)'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 38:
  * 'SUGGESTIONS=$(echo "$WORD" | aspell -a | awk -F ': ' '/^&/ {print $2}' | tr -s ' ' ',' | cut -d, -f1-2)'
  # 'awk'
  + Suggestions: AK,awl

 - line 4:
  * '# This Scrips runs spell check for all files in the Details-app project'
  # 'fi'
  + Suggestions: fie,fir

 - line 12:
  * '# initialize the output file'
  # 'fi'
  + Suggestions: fie,fir

 - line 18:
  * '# loop through all files and directories with excluding specified paths'
  # 'fi'
  + Suggestions: fie,fir

 - line 19:
  * 'find . -type f | while read -r FILE'
  # 'fi'
  + Suggestions: fie,fir

 - line 27:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 48:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 51:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 10:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'jenkins'
  + Suggestions: Jenkins,jerkins

 - line 9:
  * 'OUTPUT_FILE="./spellcheck_results.md"'
  # 'md'
  + Suggestions: MD,Md

 - line 10:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'md'
  + Suggestions: MD,Md

 - line 37:
  * 'LINE_CONTENT=$(echo "$LINE" | cut -d: -f2- | sed 's/^[ \t]*//;s/[ \t]*$//')'
  # 'sed'
  + Suggestions: seed,sued

 - line 10:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'spellchech'
  + Suggestions: spellcheck,spellchecker

 - line 10:
  * 'EXCLUDE_PATHS_FILES=("jenkins_data" "docker" ".git" "spellcheck_results.md" ".DS_Store" "spellchech.sh" "spelltest.sh")'
  # 'spelltest'
  + Suggestions: spell,test

> File: ./scripts/git_details_app.sh
 - line 5:
  * '# Autor: Ori Nahum'
  # 'Autor'
  + Suggestions: Author,Auto

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 4:
  * '# This Scrips clone the Detailes_App repo from github to /tmp/'
  # 'Detailes'
  + Suggestions: Detailed,Details

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Layani'
  + Suggestions: Laying,Lanai

 - line 5:
  * '# Autor: Ori Nahum'
  # 'Ori'
  + Suggestions: Orin,Orig

 - line 17:
  * 'cd /tmp/'
  # 'cd'
  + Suggestions: CD,Cd

 - line 21:
  * 'cd $HOME_DIR'
  # 'cd'
  + Suggestions: CD,Cd

 - line 11:
  * '# check if the directory /tmp/Details_APP/ is exists'
  # 'dir'
  + Suggestions: Dir,Dior

 - line 20:
  * '# return to Home dir'
  # 'dir'
  + Suggestions: Dir,Dior

 - line 14:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 4:
  * '# This Scrips clone the Detailes_App repo from github to /tmp/'
  # 'github'
  + Suggestions: GitHub,git

 - line 18:
  * 'git clone https://github.com/orinahum/Details_App.git'
  # 'github'
  + Suggestions: GitHub,git

 - line 9:
  * 'pwd > $HOME_DIR'
  # 'pwd'
  + Suggestions: PD,Pd

 - line 4:
  * '# This Scrips clone the Detailes_App repo from github to /tmp/'
  # 'repo'
  + Suggestions: Rep,rep

 - line 16:
  * '# lone the Git repository'
  # 'repo'
  + Suggestions: Rep,rep

 - line 13:
  * 'rm -rf /tmp/Details_APP/'
  # 'rf'
  + Suggestions: RF,Rf

 - line 4:
  * '# This Scrips clone the Detailes_App repo from github to /tmp/'
  # 'tmp'
  + Suggestions: tamp,temp

 - line 11:
  * '# check if the directory /tmp/Details_APP/ is exists'
  # 'tmp'
  + Suggestions: tamp,temp

 - line 12:
  * 'if [ -d "/tmp/Details_APP/" ]; then'
  # 'tmp'
  + Suggestions: tamp,temp

 - line 13:
  * 'rm -rf /tmp/Details_APP/'
  # 'tmp'
  + Suggestions: tamp,temp

 - line 17:
  * 'cd /tmp/'
  # 'tmp'
  + Suggestions: tamp,temp

> File: ./scripts/aspell_01_install.sh
 - line 5:
  * '# Autor: Ori Nahum'
  # 'Autor'
  + Suggestions: Author,Auto

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 6:
  * '# Collaborator : Avishay Layani'
  # 'Layani'
  + Suggestions: Laying,Lanai

 - line 5:
  * '# Autor: Ori Nahum'
  # 'Ori'
  + Suggestions: Orin,Orig

 - line 26:
  * 'sudo apk --no-cache --update add aspell'
  # 'apk'
  + Suggestions: AK,AP

 - line 4:
  * '# This Scrips Install aspell base on Linux distributions'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 15:
  * 'sudo apt-get -y install aspell'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 17:
  * 'echo "[+] aspell installed on Debian"'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 21:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 23:
  * 'echo "[+] aspell installed on Rocky"'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 26:
  * 'sudo apk --no-cache --update add aspell'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 28:
  * 'echo "[+] aspell installed on Alpine"'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 21:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'crb'
  + Suggestions: crab,crib

 - line 13:
  * 'if [[ $ID = "debian" ]]; then'
  # 'debian'
  + Suggestions: Debian,Durban

 - line 20:
  * 'sudo dnf update -y'
  # 'dnf'
  + Suggestions: NF,DNA

 - line 21:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'dnf'
  + Suggestions: NF,DNA

 - line 19:
  * 'elif [[ $ID = "rocky" ]]; then'
  # 'elif'
  + Suggestions: Leif,ELF

 - line 25:
  * 'elif [[ $ID = "alpine" ]]; then'
  # 'elif'
  + Suggestions: Leif,ELF

 - line 21:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'enablerepo'
  + Suggestions: enabler,enablers

 - line 35:
  * 'fi'
  # 'fi'
  + Suggestions: fie,fir

 - line 32:
  * 'printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID'
  # 'ment'
  + Suggestions: meant,men

 - line 11:
  * '. /etc/os-release'
  # 'os'
  + Suggestions: OS,Os

 - line 32:
  * 'printf "[!] Your OS %s is not compatible with this pipeline. \n[!] This is ment for Debian, Rocky or Alpine systems ONLY\n" $ID'
  # 'printf'
  + Suggestions: print,prints

 - line 14:
  * 'sudo apt-get update -y'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 15:
  * 'sudo apt-get -y install aspell'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 20:
  * 'sudo dnf update -y'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 21:
  * 'sudo dnf --enablerepo=crb -y install aspell'
  # 'sudo'
  + Suggestions: Saudi,sod

 - line 26:
  * 'sudo apk --no-cache --update add aspell'
  # 'sudo'
  + Suggestions: Saudi,sod

> File: ./README.md
 - line 1:
  * '# jenkins_task'
  # 'jenkins'
  + Suggestions: Jenkins,jerkins

> File: ./jenkins_pipelines/Jenkinsfile_02_CodeShellCheck
> File: ./jenkins_pipelines/Jenkinsfile_04_Build
> File: ./jenkins_pipelines/Jenkinsfile_01_Spellcheck
 - line 6:
  * 'stage('Install aSpell') {'
  # 'aSpell'
  + Suggestions: Aspell,spell

 - line 24:
  * 'stage('Exec aSpell') {'
  # 'aSpell'
  + Suggestions: Aspell,spell

 - line 36:
  * 'archiveArtifacts artifacts: '**/spellcheck_results.md', allowEmptyArchive: true'
  # 'allowEmptyArchive'
  - No suggestions available

 - line 36:
  * 'archiveArtifacts artifacts: '**/spellcheck_results.md', allowEmptyArchive: true'
  # 'archiveArtifacts'
  + Suggestions: archive,Artifacts

 - line 9:
  * 'chmod +x scripts/aspell_01_install.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 10:
  * 'bash scripts/aspell_01_install.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 27:
  * 'chmod +x scripts/aspell_02_exec.sh'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 28:
  * 'bash scripts/aspell_02_exec.sh /tmp/Details_App/'
  # 'aspell'
  + Suggestions: Aspell,spell

 - line 9:
  * 'chmod +x scripts/aspell_01_install.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 18:
  * 'chmod +x scripts/git_details_app.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 27:
  * 'chmod +x scripts/aspell_02_exec.sh'
  # 'chmod'
  + Suggestions: chimed,ch

 - line 36:
  * 'archiveArtifacts artifacts: '**/spellcheck_results.md', allowEmptyArchive: true'
  # 'md'
  + Suggestions: MD,Md

 - line 28:
  * 'bash scripts/aspell_02_exec.sh /tmp/Details_App/'
  # 'tmp'
  + Suggestions: tamp,temp

> File: ./jenkins_pipelines/Jenkinsfile_03_Tests
> File: ./jenkins_pipelines/Jenkinsfile_00_Manager
 - line 9:
  * '// stage('CodeSpell and ShellCheck Pipeline') {'
  # 'CodeSpell'
  + Suggestions: Code,Spell

 - line 9:
  * '// stage('CodeSpell and ShellCheck Pipeline') {'
  # 'ShellCheck'
  + Suggestions: Spellcheck,Shell

> File: ./CONTRIBUTORS.md
 - line 5:
  * 'FullName: Avishay Layani'
  # 'Avishay'
  + Suggestions: Avis,hay

 - line 1:
  * 'Contributers:'
  # 'Contributers'
  + Suggestions: Contributes,Contributors

 - line 2:
  * 'FullName: Ori Nahum'
  # 'FullName'
  + Suggestions: Filename,Full

 - line 5:
  * 'FullName: Avishay Layani'
  # 'FullName'
  + Suggestions: Filename,Full

 - line 5:
  * 'FullName: Avishay Layani'
  # 'Layani'
  + Suggestions: Laying,Lanai

 - line 3:
  * 'NickName: orinahum'
  # 'NickName'
  + Suggestions: Nickname,Nicknamed

 - line 6:
  * 'NickName: layani'
  # 'NickName'
  + Suggestions: Nickname,Nicknamed

 - line 2:
  * 'FullName: Ori Nahum'
  # 'Ori'
  + Suggestions: Orin,Orig

 - line 6:
  * 'NickName: layani'
  # 'layani'
  + Suggestions: laying,Lanai

 - line 3:
  * 'NickName: orinahum'
  # 'orinahum'
  + Suggestions: uranium,Arnhem

