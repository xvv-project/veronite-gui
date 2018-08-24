import sys
from cx_Freeze import setup,Executable

setup(
    name = "Veronite GUI",
    version = "0.0.1",
    options = {"build_exe": {"packages":["idna"]}},
    description = "Veronite GUI Wallet",
    executables = [Executable("wallet.py", base = "Win32GUI")])
