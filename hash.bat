@echo off
break > hashes.txt
for /R . %%f in (*.*) do (
    echo | set/p="%%f - " >> hashes.txt
    echo | set/p="%%f - "
    certutil -hashfile "%%f" SHA1 | findstr /V ":" >> hashes.txt
    certutil -hashfile "%%f" SHA1 | findstr /V ":"
)
echo Hashing files [32mcompleted[0m.
pause