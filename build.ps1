$ErrorActionPreference = 'Stop'

Write-Host 'Installing/Updating build dependencies...'
python -m pip install --upgrade pip
python -m pip install -r requirements.txt "pyinstaller>=6.10" "pyinstaller-hooks-contrib>=2025.1"

Write-Host 'Building standalone Windows executable...'
python -m PyInstaller --noconfirm --clean --onedir --windowed --name FourierPhaseVisualizer --collect-binaries numpy --collect-data numpy main.py

Write-Host ''
Write-Host 'Build complete.'
Write-Host 'Application folder:'
Write-Host '  dist\FourierPhaseVisualizer'
Write-Host 'Executable:'
Write-Host '  dist\FourierPhaseVisualizer\FourierPhaseVisualizer.exe'
