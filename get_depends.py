#!/usr/bin/env python3
import json

if __name__ == '__main__':
    packages = [
        "nvidia-utils",
        "lib32-nvidia-utils"
    ]
    print(json.dumps(packages))
