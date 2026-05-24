Set-Location 'e:\PenguinPravite\T8-penguin-canvas'
git add -A 2>&1 | Out-File -FilePath '_git_log.txt' -Encoding utf8
git commit -m "feat(utility): 新增工具节点 首尾帧获取 + 九宫格改名为宫格剪裁 (v1.2.7)" -m "1) 新增 FramePairNode (476 行): 输入视频 -> 抽取首帧/尾帧 -> 双 source handle 输出 (id=first/last); 接入 useRunTrigger 支持批量运行; 三阶段进度提示 (load/first/last); 双主题适配 (像素风/科技深/科技浅); 兼容字段 imageUrl + imageUrls=[first,last] 让下游自动收两张图. 2) 节点注册全链路同步: Canvas.tsx + NodeActionBar.tsx + types/canvas.ts + portTypes.ts + nodeRegistry.ts + features.json + skill.md. 3) 节点重命名: 九宫格 -> 宫格剪裁 (仅 UI label, type/grid-crop 与后端路径不变, 历史画布兼容). 4) features.json version 1.2.6 -> 1.2.7." 2>&1 | Out-File -FilePath '_git_log.txt' -Append -Encoding utf8
"EXIT_COMMIT=$LASTEXITCODE" | Out-File -FilePath '_git_log.txt' -Append -Encoding utf8
git push origin main 2>&1 | Out-File -FilePath '_git_log.txt' -Append -Encoding utf8
"EXIT_PUSH=$LASTEXITCODE" | Out-File -FilePath '_git_log.txt' -Append -Encoding utf8
git log -1 --oneline 2>&1 | Out-File -FilePath '_git_log.txt' -Append -Encoding utf8
