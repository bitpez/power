Write-Output "Task1"

# Create new folder
New-Item -Path 'C:\Users\Desktop\Desktop\Demo' -ItemType Directory

# Create new file
New-Item -Path 'C:\Users\Desktop\Desktop\Demo\Test File.txt' -ItemType File

# Create new folder
New-Item -Path 'C:\Users\Desktop\Desktop\Demo\end' -ItemType Directory

# Copy files
Copy-Item 'C:\Users\Desktop\Desktop\Demo\Test File.txt' 'C:\Users\Desktop\Desktop\Demo\end\Test File.txt'

Write-Output "End"