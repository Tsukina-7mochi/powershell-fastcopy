# Powershell Backup with FastCopy

Powershell script to call [FastCopy](https://fastcopy.jp/).

## configuration

Configurations are written in 'config.json' in following format:

```json
{
    "binary": "path/to/fcp.exe/",
    "profiles": [
        {
            "sources": [
                "path/to/copy/source",
                "path/to/copy/source",
                "path/to/copy/source"
            ],
            "destination": "path/to/destination/"
        }
    ]
}
```

Note that `destination` field in the items of `profiles` are relative to the root directory specified at runtime.
