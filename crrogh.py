# Create remote repository on GitHub (crrogh)
from github import Github, GithubException
from sys import argv

# Try to create repository
try:
    user = Github(argv[2], argv[3]).get_user()
    user.create_repo(argv[1])
    print("Remote repository is created.")
except GithubException:
    print("Your username or/and password can be wrong. (IF YOU HAVE PERSONAL ACCESS TOKEN CONSIDER USING IT INSTEAD OF PASSWORD)")
    print("Please check if data is correct in file (~/.local/bin/.newproj.env)")