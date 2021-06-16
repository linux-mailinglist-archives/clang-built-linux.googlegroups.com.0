Return-Path: <clang-built-linux+bncBCQPF57GUQHBBRUVU6DAMGQECKCJGYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB053A96B0
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 11:56:23 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id n129-20020a2527870000b02904ed02e1aab5sf2016219ybn.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 02:56:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623837382; cv=pass;
        d=google.com; s=arc-20160816;
        b=y4dazwHJMUHygl03R/Ypvb2Nz74pipeG69ctWcGPKpNz6xGL4Kv7up7n6vjHcTl5F5
         yeJ7lqTxqtXBwjHJvN7j1Dhiob5LMSDtNn2sAsRj4iDOWdGh9s2KiyHvv/t9/GhHuXsf
         FA0yuTEiYGKUNj9QlJXq1T6hZxdT4gBL7LAEMDQT1fhphUvkdVaWLbX7rTuaAgknD3EQ
         dE8dwa6y+rHtiI8iimo8K4J4gVxT6pHTdZs3XCIDo4rZxJN53RY16jJAJQ1Jiu6rjDnC
         Fc0AVASmmFTB5F+12kc6O1REz+qW3nE6Vs1cOoXqhjQ/opZO9GrUTtBXvKcpRqV6ag8D
         E8ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=tk+zhRvnsbCbV0c5ScsUKqfod2Qfcks1q0rY2BPoIrs=;
        b=0zs1s8KYGJl6Sa3BtFytALs3O0jVpaG60X5z7nc8HdAqLj02Z2YoYrz9lrk5oEq55W
         O9raN16T0gn6REOzmSXHz00SZqcr97GDnkhWfxW3f6odTaUKVBWYBZOvMIVPuLOLSZ2g
         fERemgtfdCHF1/wmH4M4bem/UgYw9W/MtMW4h3qErZftnjFfhrTiXzezTvPMFLC5xTky
         dzXA32Ic+063wNaUJcJgKoiDMOrCqhmEEPQdBVRfF7K9pb7iZpWSD10JH9OSGAGQCVc+
         jByewEcMdOsVBkAdMAV0b/bAv/Z5J+6oEz+ZcNp4X61G0w7dFNFAnOWk8VeED/VQEfsK
         chHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3xcrjyakbai4agh2s33w9s770v.y66y3wcaw9u65bw5b.u64@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=3xcrJYAkbAI4AGH2s33w9s770v.y66y3wCAw9u65Bw5B.u64@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tk+zhRvnsbCbV0c5ScsUKqfod2Qfcks1q0rY2BPoIrs=;
        b=sVzsw27Fdf8A35ba8TDlyAloYYjjQYAxYzAvCtM5y/DBOPfXVa/Y4251GRagAqTvRS
         MQLMN7y6WZ+92F6Skna5MaxcsDs8z/Sq04ajTV/itqxqu6cywP3smOWHp2PUMmUpX+Sg
         H6ysyIY7GDYf9bHZ5XcEPGKA8YerZj7844r0l8HGQIWPk91xCGb45WkqVPk1rFyPftPY
         ttxJvoZ/kmpp/xpomuz8eDqWRJj3brmWF8NTIAF5gRlx8baE+Xo8hGPQxu3bIf8HFMmG
         eJjSSZYdhZwUZiYbLQ4n2w/JXmR4s2FnKR9lzxo3IPSDljjE/feqkYScGc6qeUOnad6w
         b4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tk+zhRvnsbCbV0c5ScsUKqfod2Qfcks1q0rY2BPoIrs=;
        b=ndpWJZyRF3WL0h5UUMKecg3UeUwW7+CqHv4rfmIHhIQl4q8z0kBJ/8AWcEjCAVv5nI
         1ZIVCty8sOsriRKPIgSLwe0G6IOUv8pDxCgy3gJghdJjgPKHCBN70BiGsZMOMSRDF5xu
         DcgiYpSep2IC2TXVlasAW040/UuZj3oht5IeYSzFTkc8rGvG3ltrMRFaxOZDAfgoLHNs
         YwC0wqgLvwmdtAtYtyBwTl28v7zyWeJlvQzxUDSMoDaTdJDnYIUMVxJLHcog2ip3kPEh
         OWb3+BKxxol05Jja68ixEyGdzOpU14wqYkoBuNbbfh0mf87aAgj422D2SfAZj1/ADn5y
         6b5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zhFsfobKYfz+90AQu31ePlB7H6tpRK1CjZjHOejZ6Jyu/NgA3
	/BJwHd+dMV1qgi1lLUupqUU=
X-Google-Smtp-Source: ABdhPJyPe532iXYTzWZrwPyEFcTnruAinud2Z0jpnIcY7ispBDzuxHqWt0cpgAKywuiMVOINqfgSqg==
X-Received: by 2002:a25:aa25:: with SMTP id s34mr5166832ybi.415.1623837382523;
        Wed, 16 Jun 2021 02:56:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bece:: with SMTP id k14ls1104130ybm.7.gmail; Wed, 16 Jun
 2021 02:56:22 -0700 (PDT)
X-Received: by 2002:a25:80d4:: with SMTP id c20mr5053816ybm.345.1623837381982;
        Wed, 16 Jun 2021 02:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623837381; cv=none;
        d=google.com; s=arc-20160816;
        b=Cw+B3URa8wMh/t8TJjslVJuO7GKHlRjnQJU+6lzIp0FJ6Bv+Q1kyAcZHi4nEYctOu4
         rLqiLwsQWBORhfeQnp7+ITk11z2OUuCrW9KFXLU++QiEi48swOZtBWrXHtW+3ANh3lWQ
         sEqhhewQjteFLneiiX2SFtqWVIWStg62Ro6at1+Qdp2aPrlm4a1crtgZc6DAWTE6aL4q
         j3HukTHiknWS12W/DZadNk+3Y63MWBZWc8OrWSWIumhwKp3DxZuxUbOF1hcPwu4asa6C
         EYe6B4TaPNxOVlMRMINduFrowXXZCGrtQQg3gWxtau8fhYlefz/nWVbhBRFP5ko8vbkk
         BG9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=gE9dw5WMmJMATlrvCfZBYGK+85dpprCimqGF9O/Ic1Y=;
        b=Yk0rOmlHkz15hJT3WC1wZ6ERuUfZ8hZEohqlv7WQ7O0XqglCNUQKq/cdtRivzSWeCw
         2MS01zU6cKGOZr/mGJ0uX51o+qbU3wnGijIaDc+77JRQDzT0wKPF4DSIVudV68cPlIKJ
         uRpoSxyepZqhpl8iNtv8rnwaJGo8bsMa08wypx2zOmsMZsxZlehqFH6Ul+v9Z69dDFOU
         gvtTSkS+NNr2sn+/92GBKKeKfHHmLwXfJbTAbPcG4EGdksOEKTNoEJjEK6LPd7M2lkdE
         3M/TE/fQMdfdDBjbZKX3dXnsg/+BVJHfGV2wqYGggP9UJxkbDaaxZy1SILeT1h4lQzaE
         vIWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3xcrjyakbai4agh2s33w9s770v.y66y3wcaw9u65bw5b.u64@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=3xcrJYAkbAI4AGH2s33w9s770v.y66y3wCAw9u65Bw5B.u64@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com. [209.85.166.198])
        by gmr-mx.google.com with ESMTPS id c8si146411ybl.3.2021.06.16.02.56.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 02:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xcrjyakbai4agh2s33w9s770v.y66y3wcaw9u65bw5b.u64@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) client-ip=209.85.166.198;
Received: by mail-il1-f198.google.com with SMTP id p17-20020a9274110000b02901edf6e94688so1345136ilc.0
        for <clang-built-linux@googlegroups.com>; Wed, 16 Jun 2021 02:56:21 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a5d:8190:: with SMTP id u16mr3096128ion.158.1623837381524;
 Wed, 16 Jun 2021 02:56:21 -0700 (PDT)
Date: Wed, 16 Jun 2021 02:56:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000004c80e405c4df1a2d@google.com>
Subject: [syzbot] INFO: task hung in ext4_fill_super
From: syzbot <syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org, 
	ndesaulniers@google.com, syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3xcrjyakbai4agh2s33w9s770v.y66y3wcaw9u65bw5b.u64@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.198 as permitted sender) smtp.mailfrom=3xcrJYAkbAI4AGH2s33w9s770v.y66y3wCAw9u65Bw5B.u64@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hello,

syzbot found the following issue on:

HEAD commit:    f21b807c Merge tag 'drm-fixes-2021-06-11' of git://anongit..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=165fca57d00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=30f476588412c065
dashboard link: https://syzkaller.appspot.com/bug?extid=c9ff4822a62eee994ea3
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17d19ce0300000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=108d7988300000

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1646b8d0300000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1546b8d0300000
console output: https://syzkaller.appspot.com/x/log.txt?x=1146b8d0300000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com

INFO: task syz-executor768:8567 blocked for more than 143 seconds.
      Not tainted 5.13.0-rc5-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor768 state:D stack:27544 pid: 8567 ppid:  8423 flags:0x00004004
Call Trace:
 context_switch kernel/sched/core.c:4339 [inline]
 __schedule+0x916/0x23e0 kernel/sched/core.c:5147
 schedule+0xcf/0x270 kernel/sched/core.c:5226
 schedule_timeout+0x1db/0x250 kernel/time/timer.c:1868
 do_wait_for_common kernel/sched/completion.c:85 [inline]
 __wait_for_common kernel/sched/completion.c:106 [inline]
 wait_for_common kernel/sched/completion.c:117 [inline]
 wait_for_completion+0x168/0x270 kernel/sched/completion.c:138
 kthread_stop+0x17a/0x720 kernel/kthread.c:642
 ext4_fill_super+0x87ac/0xdfa0 fs/ext4/super.c:5190
 mount_bdev+0x34d/0x410 fs/super.c:1368
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1498
 do_new_mount fs/namespace.c:2905 [inline]
 path_mount+0x132a/0x1fa0 fs/namespace.c:3235
 do_mount fs/namespace.c:3248 [inline]
 __do_sys_mount fs/namespace.c:3456 [inline]
 __se_sys_mount fs/namespace.c:3433 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3433
 do_syscall_64+0x3a/0xb0 arch/x86/entry/common.c:47
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x445b2a
RSP: 002b:00007ffc5efbf598 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffc5efbf5f0 RCX: 0000000000445b2a
RDX: 0000000020000000 RSI: 00000000200000c0 RDI: 00007ffc5efbf5b0
RBP: 00007ffc5efbf5b0 R08: 00007ffc5efbf5f0 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000202 R12: 00000000200003f8
R13: 0000000000000003 R14: 0000000000000004 R15: 0000000000000005

Showing all locks held in the system:
1 lock held by khungtaskd/1636:
 #0: ffffffff8bf79620 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x53/0x260 kernel/locking/lockdep.c:6333
2 locks held by in:imklog/8117:
 #0: ffff888015be9770 (&f->f_pos_lock){+.+.}-{3:3}, at: __fdget_pos+0xe9/0x100 fs/file.c:974
 #1: ffff888021bc3958 (&mm->mmap_lock#2){++++}-{3:3}, at: file_ctx security/apparmor/include/file.h:33 [inline]
 #1: ffff888021bc3958 (&mm->mmap_lock#2){++++}-{3:3}, at: aa_file_perm+0x119/0x1170 security/apparmor/file.c:609
1 lock held by syz-executor768/8567:
 #0: ffff88802ac340e0 (&type->s_umount_key#27/1){+.+.}-{3:3}, at: alloc_super+0x1dd/0xab0 fs/super.c:229

=============================================

NMI backtrace for cpu 0
CPU: 0 PID: 1636 Comm: khungtaskd Not tainted 5.13.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x141/0x1d7 lib/dump_stack.c:120
 nmi_cpu_backtrace.cold+0x44/0xd7 lib/nmi_backtrace.c:105
 nmi_trigger_cpumask_backtrace+0x1b3/0x230 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:146 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:209 [inline]
 watchdog+0xd48/0xfb0 kernel/hung_task.c:294
 kthread+0x3b1/0x4a0 kernel/kthread.c:313
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1 skipped: idling at native_safe_halt arch/x86/include/asm/irqflags.h:51 [inline]
NMI backtrace for cpu 1 skipped: idling at arch_safe_halt arch/x86/include/asm/irqflags.h:89 [inline]
NMI backtrace for cpu 1 skipped: idling at acpi_safe_halt drivers/acpi/processor_idle.c:108 [inline]
NMI backtrace for cpu 1 skipped: idling at acpi_idle_do_entry+0x1c9/0x250 drivers/acpi/processor_idle.c:513


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000004c80e405c4df1a2d%40google.com.
