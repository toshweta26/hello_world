echo "Before reverting the change please specify the reason to do so."
read reasontorevert
git revert -n head
echo $reasontorevert
#echo ":q"
git push bitrepo bitbucket