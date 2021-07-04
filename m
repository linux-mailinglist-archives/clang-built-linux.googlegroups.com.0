Return-Path: <clang-built-linux+bncBCQPF57GUQHBB3PPQWDQMGQEA6LJMII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C803B3BAC29
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Jul 2021 10:57:18 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id t6-20020ac5c3c60000b029024f8f474366sf4049151vkk.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 01:57:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625389037; cv=pass;
        d=google.com; s=arc-20160816;
        b=qrWm4fa9Uhu5+qDSahqG4FX9ZXaUYl+9pMrzSOPYASlfg2U8XtxzYEhL/zOG0xV7mq
         ygKH5TzxpCK1W8WcsY3s3e19Kkv9G2WOo0n37d1F3MU7KJ9l1pZie0yweCdHkR1XZ5yQ
         qBKMQpoKfOAb3uQLR5eO3Y+wrifIE3wt95WnpZ+Mn7Y1ap8yDD4Hp+r+E9ogQOqW7lP8
         dp/3bWSMdOnQSd2JBljFJ7lWlT0pxrMscfLet2EPqfkJ8mV9N1WQL9EnygW72xEKxqDd
         c82V9f22rR3SQmvD/ARyJlrEHyuUzT4C5jHD/YCzVL6OBJRG9Z+VW2MNx2j1s2y3Jt+f
         STPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=uOBlNElSTpJZOkTIq8YrAFIbMFEzX8YGx0wdjrgVRkU=;
        b=geN7hRaNFtNZlUsVvUmH9V1xaBf761sJUH1g/vzy/DB2TpWwDtQKrtYe/YeOfYEWwY
         lcntVWx+llAg7RfCGbl8V2IFrS+n3Z/agXwmr471vIUSXp9jyhnsXq4uF2Ipg55pG3G0
         LAHzQJAXB0p22yehTtrmX7DLhXKIjHTJaPL2KGZPjfh4/m7c0KgdGd4kWv8rmKASbVPp
         7TJqlidOXlw8ZWLriMtgycpbRGvGJ04tkDirHnR8MsIU8O342U5XZY6NqJ/Ulg92YGg2
         o2BLbNjXXq9v5s6NmeLm85O9smUJlV3cjDa9zmunOiaEzC0zTBIg1nwqodm/DZmLhvyp
         h0eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 37hfhyakbag8flmxnyyrenccvq.tbbtyrhfrepbagrag.pbz@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=37HfhYAkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uOBlNElSTpJZOkTIq8YrAFIbMFEzX8YGx0wdjrgVRkU=;
        b=A7HlqEnhQWPd7bRbB5bnLEJwS+83yZiH3qYGbeFdxqEYOojRWwl0CJH/MwCVdHxqD3
         o11At85hmf0wfntEARbFEtbdJdEVM/qJVQe3/iZ0lPgm8X/yhlgpMiV2HKsTXSBykX93
         2Zim55Xkev81fcCYnJk+nYFC+mGGp1yGh5XjahuHUUFJTVad0vr7wTlkzMfWCOwDs5q4
         JCWz0GMM8q0eTEcBxMaf8fEPXtTPeC6swE87nLCA23MbGgVrAD5S7AS8/Qu0i7XcH1zy
         lAS2piM8l/MYaGOH4+6AB4d+ixzQHWLP3ZNtkbcE/BmGHcFczUZ5FqgO3II791gqZ1QC
         a8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uOBlNElSTpJZOkTIq8YrAFIbMFEzX8YGx0wdjrgVRkU=;
        b=IQ4ChGZgYXmBDvC4p+Ju5fmRd+Jb6gGcv+qSplhMfKgzb93/XtVAsB1PdfFaF9VVDM
         L9oBTV2VIo5448cJizjGHGRAzJgcJs2v6gVrEx1t9L1vZNbGQWafh5RoeaDZpJavHJ77
         Vz3AgkXHTXb/Bhocpmm3IUVsi0QbZ7eRKdUJqRw4rIGsrLjpn2onv81ENJFKVu7KiPTJ
         KYNIBaMWK7X90qviePfotjLr9Mo8whYM6nvMJlLBAGgaLN8zTOHICf7qofcWKB3SyBKT
         oHai4nB1xtYcelC0KxYRcvUPApwej63swoA4n6p8UqLW2Yo8wTGWr7ZgVQYMaALpRZU7
         qMiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302HUvk7TcoKvVvIcvMgi+o29Z9JZulITDVeVLiL9+UQ5U1seK0
	peGObEWoc8z44SF3TuV+en4=
X-Google-Smtp-Source: ABdhPJxxsjn0hkMtQ0Ek1GSp0rf8v4a1B3n2JYMGHQ4t0eOxZvK4ErFTLpH3miAtjyf3cKfVxjQVrA==
X-Received: by 2002:ab0:7399:: with SMTP id l25mr6799785uap.67.1625389037457;
        Sun, 04 Jul 2021 01:57:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:48a6:: with SMTP id x35ls2639474uac.2.gmail; Sun, 04 Jul
 2021 01:57:16 -0700 (PDT)
X-Received: by 2002:ab0:1e83:: with SMTP id o3mr6736413uak.76.1625389036863;
        Sun, 04 Jul 2021 01:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625389036; cv=none;
        d=google.com; s=arc-20160816;
        b=nVSdUxlEpsikopVPrei0E64iDVj9ClRqLy3pBhF5yp+O2KMka5PZ2Ge12V0NbgKY0j
         cJ8zWEXpDQeAtAsFWVgKGlyJmNDwWFiysXbhVP0BlfadlHpC5nSugOTZg5pHAjsVszsq
         qzuKmhGs7YSYddpoO8CTFfrZKbfKObvWXz0/+0573wAZbPQCqSSgZloRD+99gN3NffXI
         AGlW9MdlH90mFgycPTTtgpP9LALQuKhTnJbeXzPdfIbK353HzsrfjDsGkYmufSzxwuJn
         vQA/DN0OSdjbMCqi/DRcv1klEeVMpFzw2sLjayKy2an7fLohVT1+ZMNHTICDVSDcevke
         AXoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=CBFbWWG2no/RXNUb57K5ovDWepx1taZTCUg2vEu4ahY=;
        b=g7NRwn8itzoUbpzOwClpD1Qv+RXNdeEtgEUkNxROqlnNMOOPV6XqzNVSMMUYYlRdiT
         3A4bWmuOJPBH2oowwQJfx50TxdXMIgEP0vrIWYFHbhQuSaOe9sxDJs8FDEVMfmKxrlPD
         bj3gJzLGDGRtrarmiHmirPLT/d1b88v3kpxpEQyE4nKnc/6v4U6egpNAMG8yqYZdzBpx
         gbfybRL9y4QoXYN7eV7iRA27hki9Dey9tRdXJtt2bYw/xq8QINs53vWy9t5qmWeucF29
         AN/HGCVhoY4+t6i7yrpFCJ/BitALNILVLJpk64LRmTKSGukYTvYNNpAWs1piYBgPKp1s
         A00Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 37hfhyakbag8flmxnyyrenccvq.tbbtyrhfrepbagrag.pbz@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=37HfhYAkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com. [209.85.166.198])
        by gmr-mx.google.com with ESMTPS id k62si728547vkk.2.2021.07.04.01.57.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jul 2021 01:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37hfhyakbag8flmxnyyrenccvq.tbbtyrhfrepbagrag.pbz@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) client-ip=209.85.166.198;
Received: by mail-il1-f198.google.com with SMTP id w19-20020a056e0213f3b02901ee5bb29e91so8671794ilj.18
        for <clang-built-linux@googlegroups.com>; Sun, 04 Jul 2021 01:57:16 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1521:: with SMTP id i1mr6308661ilu.155.1625389036410;
 Sun, 04 Jul 2021 01:57:16 -0700 (PDT)
Date: Sun, 04 Jul 2021 01:57:16 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000231b1705c64860b3@google.com>
Subject: [syzbot] upstream test error: possible deadlock in __fs_reclaim_acquire
From: syzbot <syzbot+c259b724a0f86d1f5459@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, andrii@kernel.org, ast@kernel.org, 
	axboe@kernel.dk, bpf@vger.kernel.org, christian@brauner.io, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, 
	ebiederm@xmission.com, john.fastabend@gmail.com, kafai@fb.com, 
	kpsingh@kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	peterz@infradead.org, shakeelb@google.com, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 37hfhyakbag8flmxnyyrenccvq.tbbtyrhfrepbagrag.pbz@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.198 as permitted sender) smtp.mailfrom=37HfhYAkbAG8flmXNYYReNccVQ.TbbTYRhfRePbagRag.PbZ@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    007b350a Merge tag 'dlm-5.14' of git://git.kernel.org/pub/..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1690caac300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d126a83e6a7982cb
dashboard link: https://syzkaller.appspot.com/bug?extid=c259b724a0f86d1f5459
compiler:       Debian clang version 11.0.1-2

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+c259b724a0f86d1f5459@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
5.13.0-syzkaller #0 Not tainted
------------------------------------------------------
syz-fuzzer/8414 is trying to acquire lock:
ffffffff8cfd67c0 (fs_reclaim){+.+.}-{0:0}, at: __fs_reclaim_acquire+0x0/0x30 mm/page_alloc.c:4222

but task is already holding lock:
ffff8880b9a31088 (lock#2){-.-.}-{2:2}, at: local_lock_acquire+0x7/0x130 include/linux/local_lock_internal.h:41

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (lock#2){-.-.}-{2:2}:
       lock_acquire+0x182/0x4a0 kernel/locking/lockdep.c:5625
       local_lock_acquire+0x23/0x130 include/linux/local_lock_internal.h:42
       free_unref_page+0x242/0x550 mm/page_alloc.c:3439
       mm_free_pgd kernel/fork.c:636 [inline]
       __mmdrop+0xae/0x3f0 kernel/fork.c:687
       mmdrop include/linux/sched/mm.h:49 [inline]
       finish_task_switch+0x221/0x630 kernel/sched/core.c:4582
       context_switch kernel/sched/core.c:4686 [inline]
       __schedule+0xb5b/0x1450 kernel/sched/core.c:5940
       preempt_schedule_irq+0xe3/0x190 kernel/sched/core.c:6328
       irqentry_exit+0x56/0x90 kernel/entry/common.c:427
       asm_sysvec_apic_timer_interrupt+0x12/0x20 arch/x86/include/asm/idtentry.h:638
       lock_acquire+0x1e7/0x4a0 kernel/locking/lockdep.c:5629
       __fs_reclaim_acquire+0x20/0x30 mm/page_alloc.c:4564
       fs_reclaim_acquire+0x59/0xf0 mm/page_alloc.c:4578
       might_alloc include/linux/sched/mm.h:198 [inline]
       slab_pre_alloc_hook mm/slab.h:485 [inline]
       slab_alloc_node mm/slub.c:2891 [inline]
       slab_alloc mm/slub.c:2978 [inline]
       kmem_cache_alloc+0x3a/0x340 mm/slub.c:2983
       getname_flags+0xba/0x640 fs/namei.c:138
       user_path_at_empty+0x28/0x50 fs/namei.c:2734
       user_path_at include/linux/namei.h:60 [inline]
       vfs_statx+0x102/0x3d0 fs/stat.c:203
       vfs_fstatat fs/stat.c:225 [inline]
       vfs_lstat include/linux/fs.h:3384 [inline]
       __do_sys_newlstat fs/stat.c:380 [inline]
       __se_sys_newlstat fs/stat.c:374 [inline]
       __x64_sys_newlstat+0xd3/0x150 fs/stat.c:374
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x44/0xae

-> #0 (fs_reclaim){+.+.}-{0:0}:
       check_prev_add kernel/locking/lockdep.c:3051 [inline]
       check_prevs_add+0x4f9/0x5b30 kernel/locking/lockdep.c:3174
       validate_chain kernel/locking/lockdep.c:3789 [inline]
       __lock_acquire+0x4476/0x6100 kernel/locking/lockdep.c:5015
       lock_acquire+0x182/0x4a0 kernel/locking/lockdep.c:5625
       __fs_reclaim_acquire+0x20/0x30 mm/page_alloc.c:4564
       fs_reclaim_acquire+0x59/0xf0 mm/page_alloc.c:4578
       prepare_alloc_pages+0x151/0x5a0 mm/page_alloc.c:5176
       __alloc_pages+0x14d/0x5f0 mm/page_alloc.c:5375
       stack_depot_save+0x361/0x490 lib/stackdepot.c:303
       save_stack+0xf9/0x1f0 mm/page_owner.c:120
       __set_page_owner+0x42/0x2f0 mm/page_owner.c:181
       prep_new_page mm/page_alloc.c:2445 [inline]
       __alloc_pages_bulk+0x9f6/0x10b0 mm/page_alloc.c:5313
       alloc_pages_bulk_array_node include/linux/gfp.h:557 [inline]
       vm_area_alloc_pages mm/vmalloc.c:2775 [inline]
       __vmalloc_area_node mm/vmalloc.c:2845 [inline]
       __vmalloc_node_range+0x3ad/0x7f0 mm/vmalloc.c:2947
       vmalloc_user+0x70/0x80 mm/vmalloc.c:3082
       kcov_mmap+0x28/0x130 kernel/kcov.c:465
       call_mmap include/linux/fs.h:2119 [inline]
       mmap_region+0x10e2/0x1da0 mm/mmap.c:1809
       do_mmap+0x930/0x11a0 mm/mmap.c:1585
       vm_mmap_pgoff+0x19e/0x2b0 mm/util.c:519
       ksys_mmap_pgoff+0x504/0x7b0 mm/mmap.c:1636
       do_syscall_x64 arch/x86/entry/common.c:50 [inline]
       do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
       entry_SYSCALL_64_after_hwframe+0x44/0xae

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(lock#2);
                               lock(fs_reclaim);
                               lock(lock#2);
  lock(fs_reclaim);

 *** DEADLOCK ***

2 locks held by syz-fuzzer/8414:
 #0: ffff8880187fea28 (&mm->mmap_lock#2){++++}-{3:3}, at: mmap_write_lock_killable include/linux/mmap_lock.h:87 [inline]
 #0: ffff8880187fea28 (&mm->mmap_lock#2){++++}-{3:3}, at: vm_mmap_pgoff+0x14d/0x2b0 mm/util.c:517
 #1: ffff8880b9a31088 (lock#2){-.-.}-{2:2}, at: local_lock_acquire+0x7/0x130 include/linux/local_lock_internal.h:41

stack backtrace:
CPU: 0 PID: 8414 Comm: syz-fuzzer Not tainted 5.13.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack_lvl+0x1ae/0x29f lib/dump_stack.c:96
 print_circular_bug+0xb17/0xdc0 kernel/locking/lockdep.c:2009
 check_noncircular+0x2cc/0x390 kernel/locking/lockdep.c:2131
 check_prev_add kernel/locking/lockdep.c:3051 [inline]
 check_prevs_add+0x4f9/0x5b30 kernel/locking/lockdep.c:3174
 validate_chain kernel/locking/lockdep.c:3789 [inline]
 __lock_acquire+0x4476/0x6100 kernel/locking/lockdep.c:5015
 lock_acquire+0x182/0x4a0 kernel/locking/lockdep.c:5625
 __fs_reclaim_acquire+0x20/0x30 mm/page_alloc.c:4564
 fs_reclaim_acquire+0x59/0xf0 mm/page_alloc.c:4578
 prepare_alloc_pages+0x151/0x5a0 mm/page_alloc.c:5176
 __alloc_pages+0x14d/0x5f0 mm/page_alloc.c:5375
 stack_depot_save+0x361/0x490 lib/stackdepot.c:303
 save_stack+0xf9/0x1f0 mm/page_owner.c:120
 __set_page_owner+0x42/0x2f0 mm/page_owner.c:181
 prep_new_page mm/page_alloc.c:2445 [inline]
 __alloc_pages_bulk+0x9f6/0x10b0 mm/page_alloc.c:5313
 alloc_pages_bulk_array_node include/linux/gfp.h:557 [inline]
 vm_area_alloc_pages mm/vmalloc.c:2775 [inline]
 __vmalloc_area_node mm/vmalloc.c:2845 [inline]
 __vmalloc_node_range+0x3ad/0x7f0 mm/vmalloc.c:2947
 vmalloc_user+0x70/0x80 mm/vmalloc.c:3082
 kcov_mmap+0x28/0x130 kernel/kcov.c:465
 call_mmap include/linux/fs.h:2119 [inline]
 mmap_region+0x10e2/0x1da0 mm/mmap.c:1809
 do_mmap+0x930/0x11a0 mm/mmap.c:1585
 vm_mmap_pgoff+0x19e/0x2b0 mm/util.c:519
 ksys_mmap_pgoff+0x504/0x7b0 mm/mmap.c:1636
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x4af20a
Code: e8 3b 82 fb ff 48 8b 7c 24 10 48 8b 74 24 18 48 8b 54 24 20 4c 8b 54 24 28 4c 8b 44 24 30 4c 8b 4c 24 38 48 8b 44 24 08 0f 05 <48> 3d 01 f0 ff ff 76 20 48 c7 44 24 40 ff ff ff ff 48 c7 44 24 48
RSP: 002b:000000c0003715d8 EFLAGS: 00000212 ORIG_RAX: 0000000000000009
RAX: ffffffffffffffda RBX: 000000c00001c000 RCX: 00000000004af20a
RDX: 0000000000000003 RSI: 0000000000080000 RDI: 0000000000000000
RBP: 000000c000371638 R08: 0000000000000006 R09: 0000000000000000
R10: 0000000000000001 R11: 0000000000000212 R12: 00000000007798c5
R13: 00000000000000de R14: 00000000000000dd R15: 0000000000000100
BUG: sleeping function called from invalid context at mm/page_alloc.c:5179
in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 8414, name: syz-fuzzer
INFO: lockdep is turned off.
irq event stamp: 67846
hardirqs last  enabled at (67845): [<ffffffff89c89aab>] __raw_spin_unlock_irqrestore include/linux/spinlock_api_smp.h:160 [inline]
hardirqs last  enabled at (67845): [<ffffffff89c89aab>] _raw_spin_unlock_irqrestore+0x8b/0x120 kernel/locking/spinlock.c:191
hardirqs last disabled at (67846): [<ffffffff81bee901>] __alloc_pages_bulk+0x801/0x10b0 mm/page_alloc.c:5291
softirqs last  enabled at (67050): [<ffffffff814d502b>] invoke_softirq kernel/softirq.c:432 [inline]
softirqs last  enabled at (67050): [<ffffffff814d502b>] __irq_exit_rcu+0x21b/0x260 kernel/softirq.c:636
softirqs last disabled at (66829): [<ffffffff814d502b>] invoke_softirq kernel/softirq.c:432 [inline]
softirqs last disabled at (66829): [<ffffffff814d502b>] __irq_exit_rcu+0x21b/0x260 kernel/softirq.c:636
CPU: 0 PID: 8414 Comm: syz-fuzzer Not tainted 5.13.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack_lvl+0x1ae/0x29f lib/dump_stack.c:96
 ___might_sleep+0x4e5/0x6b0 kernel/sched/core.c:9153
 prepare_alloc_pages+0x1c0/0x5a0 mm/page_alloc.c:5179
 __alloc_pages+0x14d/0x5f0 mm/page_alloc.c:5375
 stack_depot_save+0x361/0x490 lib/stackdepot.c:303
 save_stack+0xf9/0x1f0 mm/page_owner.c:120
 __set_page_owner+0x42/0x2f0 mm/page_owner.c:181
 prep_new_page mm/page_alloc.c:2445 [inline]
 __alloc_pages_bulk+0x9f6/0x10b0 mm/page_alloc.c:5313
 alloc_pages_bulk_array_node include/linux/gfp.h:557 [inline]
 vm_area_alloc_pages mm/vmalloc.c:2775 [inline]
 __vmalloc_area_node mm/vmalloc.c:2845 [inline]
 __vmalloc_node_range+0x3ad/0x7f0 mm/vmalloc.c:2947
 vmalloc_user+0x70/0x80 mm/vmalloc.c:3082
 kcov_mmap+0x28/0x130 kernel/kcov.c:465
 call_mmap include/linux/fs.h:2119 [inline]
 mmap_region+0x10e2/0x1da0 mm/mmap.c:1809
 do_mmap+0x930/0x11a0 mm/mmap.c:1585
 vm_mmap_pgoff+0x19e/0x2b0 mm/util.c:519
 ksys_mmap_pgoff+0x504/0x7b0 mm/mmap.c:1636
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x4af20a
Code: e8 3b 82 fb ff 48 8b 7c 24 10 48 8b 74 24 18 48 8b 54 24 20 4c 8b 54 24 28 4c 8b 44 24 30 4c 8b 4c 24 38 48 8b 44 24 08 0f 05 <48> 3d 01 f0 ff ff 76 20 48 c7 44 24 40 ff ff ff ff 48 c7 44 24 48
RSP: 002b:000000c0003715d8 EFLAGS: 00000212 ORIG_RAX: 0000000000000009
RAX: ffffffffffffffda RBX: 000000c00001c000 RCX: 00000000004af20a
RDX: 0000000000000003 RSI: 0000000000080000 RDI: 0000000000000000
RBP: 000000c000371638 R08: 0000000000000006 R09: 0000000000000000
R10: 0000000000000001 R11: 0000000000000212 R12: 00000000007798c5
R13: 00000000000000de R14: 00000000000000dd R15: 0000000000000100
can: request_module (can-proto-0) failed.
can: request_module (can-proto-0) failed.
can: request_module (can-proto-0) failed.


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000231b1705c64860b3%40google.com.
