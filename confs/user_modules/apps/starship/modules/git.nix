{
    programs.starship = {
        settings = {
            git_branch = {
                format = "[$symbol$branch(:$remote_branch)]($style) ";
                symbol = " ";
                style = "bold purple bg:0xFCA17D";
                truncation_length = 9223372036854775807;
                truncation_symbol = "…";
                only_attached = false;
                always_show_remote = false;
                ignore_branches = [];
                disabled = false;
            };
            git_commit = {
                commit_hash_length = 7;
                format = "[($hash$tag)]($style) ";
                style = "green bold";
                only_detached = true;
                disabled = false;
                tag_symbol = " 🏷  ";
                tag_disabled = true;
            };
            git_metrics = {
                added_style = "bold green";
                deleted_style = "bold red";
                only_nonzero_diffs = true;
                format = "([+$added]($added_style) )([-$deleted]($deleted_style) )";
                disabled = false;
            };
            git_state = {
                am = "AM";
                am_or_rebase = "AM/REBASE";
                bisect = "BISECTING";
                cherry_pick = "🍒PICKING(bold red)";
                disabled = false;
                format = "([$state( $progress_current/$progress_total)]($style)) ";
                merge = "MERGING";
                rebase = "REBASING";
                revert = "REVERTING";
                style = "bold yellow";
            };
            git_status = {
                ahead = "🏎💨$count";
                behind = "😰$count";
                conflicted = "🏳";
                deleted = "🗑";
                disabled = false;
                diverged = "😵";
                # format = "([[$all_status$ahead_behind]]($style) )";
                ignore_submodules = false;
                modified = "📝";
                renamed = "👅";
                staged = "[++($count)](green)";
                stashed = "📦";
                style = "red bold bg:0xFCA17D";
                untracked = "🤷";
                up_to_date = "✓";
            };
        };
    };
}