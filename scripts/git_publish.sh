echo Running 'npm run build'...
npm run build

echo Running 'git add .'...
git add .

echo Running 'git commit'...
git commit -m "%1"

echo Running 'git push'...
git push

echo Script completed.
pause
