# Ensure user services added by the dotfiles are enabled.
ensure-tasks:
    python {{ source_directory() }}/ensure_tasks.py
