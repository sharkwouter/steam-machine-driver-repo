#!/usr/bin/env python3
import json
import os

if __name__ == '__main__':
    packages = []
    for file in os.listdir():
        if os.path.isdir(file) and not file.startswith("."):
            packages.append(file)
    print(json.dumps(packages))
