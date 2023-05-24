@echo off

rem Step 1: npm run build
echo Running 'npm run build'...
npm run build

rem Step 2: git add .
echo Running 'git add .'...
git add .

rem Step 3: git commit -m "%1"
echo Running 'git commit'...
git commit -m "%1"

rem Step 4: git push
echo Running 'git push'...
git push

echo Script completed.
pause
