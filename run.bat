@echo off
:: Meminta input pesan commit untuk kedua repositori
echo Masukkan pesan commit untuk kedua repositori:
set /p commit_msg="Pesan commit: "

:: Menavigasi ke folder repositori pertama
cd /d "C:\Users\Diva\Desktop\zapier\zapier1"
echo Mengupload repo pertama dengan pesan: %commit_msg%
git add .
git commit -m "%commit_msg%"
git push origin main

:: Menavigasi ke folder repositori kedua
cd /d "C:\Users\Diva\Desktop\zapier\Last-Modified"
echo Mengupload repo kedua dengan pesan: %commit_msg%
git add .
git commit -m "%commit_msg%"
git push origin main

echo Selesai mengupload kedua repositori dengan pesan yang sama!
pause
