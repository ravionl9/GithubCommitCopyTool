GIT=`which git`
REPO_DIR=ActionRepoA
${GIT} clone https://[your_git_username]:[git_personal_access_token]@github.com/[username_or_organisation_name]/[primary_repo].git
cd ${REPO_DIR}
${GIT} add .
${GIT} commit -m "Auto commit"
${GIT} push --force https://[your_git_username]:[git_personal_access_token]@github.com/[username_or_organisation_name]/[secondary_repo].git master
cd ..
rm -Rf ${REPO_DIR}