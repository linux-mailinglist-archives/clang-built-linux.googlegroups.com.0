Return-Path: <clang-built-linux+bncBCQPF57GUQHBBGNGRGCQMGQEMGLCFSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF37382AF8
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 13:27:22 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id k1-20020a17090a7f01b029015d0d4c2107sf3159442pjl.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 04:27:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621250841; cv=pass;
        d=google.com; s=arc-20160816;
        b=n+/GoBHUgeDRElXTjudVXuY9/KJhKTLtbUB0tlqUvXvFFwcsfnfJCHzo99iA5bEiM3
         ijVOYMuWWAbfFqCbOJ7RZvVCiY4n2jsfujvsRLEfWi2Gjg3DH5Lbnb1rtWwnZHbud8Ua
         BvpTk/bLmSmcMF/Efc+NlCR2djru5KBZ/T6Q6H3FQSGjqJxu8w7mUoGFIydrf3N5R8+C
         cuxnjZXACgocqLpnJ2JGG49f9Udw6ZolA4+tmkCfOH5OVIzPDNWL+zplx2xVk39Qg6ZH
         qDOlLejex8aPFU/hcRpyCwpN2N/McA36JnHtRH9tqE63g00MiczauFaE+yhTsgc7Vhsu
         Lm7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=Ygxv6AUBtVxjnD32NYsDg7MVu7t4P2e3bsolhdVxPyU=;
        b=MoNEfwWm8f6+GWw5wXbLXhV0H4z+mSRctSDqcCrDpyOinjE2JBX6CHELO+TtjSYFnG
         EM9/JBHEyaP798/RAuvcO0rUx7rWSiJGRqyinHnwBqurF6TTCsrYi/3mNM0rdhL2f9G0
         qJiWH76BRlMzfUoMtbrZ11ZOH252ClvdXqA+DtLQanqVszkYexnL+MJ/sQoSQBAFZy4K
         RtCMATDJ8xjCIEDeK9IlbhBF1v+hLVfjASwkg2PJ6/hkrA2Ouyj+E5rIQru9B/jz8zEK
         o8Vx34C2eD86hHnYViL0f8b6jN3DTqKMkLQYy3AAvzIdY+y80hd1RAuWEhjxnJiY0q+c
         auWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3gfoiyakbafmdjk5v66zcvaa3y.19916zfdzcx98ez8e.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3GFOiYAkbAFMDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ygxv6AUBtVxjnD32NYsDg7MVu7t4P2e3bsolhdVxPyU=;
        b=M6LoWb7q7/nb2xSO1b0bePbQ2UUIubFtxvTVXB3cIlD8EAlKGCty9J5HzA1DlWTJZL
         bDLcJwy6eRpzy7p0HWKN8p3vaEQyfnykfguXAenVRnLHu6s5vbt5mqMTfEmf/AMjB1+w
         nKaCGvk+F/6n2pT1kKw7/4i28da4O7CoShZmgRneKz+4zjbQykQIfJY0HTVf3EmaClrx
         uxD9jy7J0KvF2slTMAg3PRLoJKNU1MiqSma/VQviwXPc/vBmSfa3mLTdYlvAtKq37oA/
         NCbzhnlhh7pc9fIGBxZ3G+0Tp/zePJxBYyemFFiwhbKuvY7SqghqY43B/Xd8YJgJBN9j
         aL1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ygxv6AUBtVxjnD32NYsDg7MVu7t4P2e3bsolhdVxPyU=;
        b=E4cFFqS8LvqmpC9N/hQUNyAVcs0DAWKuZyvRYCI+nb17RDOC2uuT6fgo2/PzoUF1Ts
         9deqtVzFG/pQRvzqrIHNLRcLAOT/506Tt1XTDpabLCw+fDJSQZsBTgjIvmSu//mqtA89
         8123yRKXZbkyrrjQz27YHFHdzcz433XX11i5i1xNYTplUNTUQcxZ9+2Bx+odbxE1cg2q
         iw4QBAKqjRcUOHh4hGuOiQueO55DeR7E4JByhkpWiJ75vwYrYNp1VklnuwSLYJgFBVUU
         +VLlf6er+lKvr6+0t1doY0WZQuIByBOOKkJGr3Lt3oJKbYQLiRNhXAG/C2gMyOhqtBpR
         5I/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309pliAN8AXTZSmwIXo54BTtFn/zsoT919MG1nXBfS8kRqFtJRu
	Akr/PGc2j+xEZRWkwoB8hSE=
X-Google-Smtp-Source: ABdhPJxjKY3CNJUsMximaH9SMxthorgaXC+5NfrEtMLlqrGL9RSa2wXZLo3/CP3gM/pRhmQ8JNDJog==
X-Received: by 2002:a17:90a:ba01:: with SMTP id s1mr26559884pjr.74.1621250841370;
        Mon, 17 May 2021 04:27:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ce14:: with SMTP id f20ls2786052pju.3.gmail; Mon, 17
 May 2021 04:27:20 -0700 (PDT)
X-Received: by 2002:a17:90a:757:: with SMTP id s23mr11075814pje.62.1621250840780;
        Mon, 17 May 2021 04:27:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621250840; cv=none;
        d=google.com; s=arc-20160816;
        b=tO1Vf8W2iUcPrngvkccBUytbuy0+jJPaF3NHWl+RUNYosKmxRAtCuzsXqBj+Yh/wyI
         rGIT1xoxQPpxd/9Jxr4aq10gRLUARbHZl0a2tdL43ijs4+2LP6rsVPj8C5/jkJvhNNnw
         mcCEG+q3l1u+Jhc60KDH0GTuqrJizubYn7ycCnsAwM81qJpqSSCThEkZw4WL9eJakOL/
         d2IMnfWh0mu1mqh9kKN4BBdRHUNsWGzufph9IG+zLF2olXFKrWjrvYtYBWaGYWzx7BZo
         Cyx0bSlP+TML3pCZxCtk8sILnbGqGgE45BPuX9wQOi9ZuhDWro+sVz5zLc0y3Ko27FdG
         dKKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=eCZrpYXwGDeKsBVaslkPyfl9Vpy5DFhZkR97xbhyFMU=;
        b=VhPV0AjNmlta6rLoDnIula08Rb1PvCcWwoMiyuMgJxX2hU6/TaHPU7dvBSZWjRJnUV
         dp/z1hCFIxKvSKkqnHxQc9xpp2ImubXJSm/YFCjlLmcuDQsDrFmrZXddVai+tn/DOyg3
         OBs47lqTVgaSGH+oMZmHgiLuvmqKwFhAAz3PfxNFwnKjG91pQTEQQEpQEH/YwWbGmYF1
         OKi4epzMOgofFzyKOivv7Fa4byCX8w6Hf2P4z5zlSW9SDQQyFp+wL6+hkFVPnoko5OLB
         GzJ5l318DBaRm85GjZqJpDuDiyVoEusWmD6MAxhPYlxschLCJpmHhEapFyIVm8bObtr2
         SRhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3gfoiyakbafmdjk5v66zcvaa3y.19916zfdzcx98ez8e.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3GFOiYAkbAFMDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com. [209.85.166.69])
        by gmr-mx.google.com with ESMTPS id 131si849494pfa.2.2021.05.17.04.27.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 04:27:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gfoiyakbafmdjk5v66zcvaa3y.19916zfdzcx98ez8e.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) client-ip=209.85.166.69;
Received: by mail-io1-f69.google.com with SMTP id a13-20020a5d958d0000b029043aa4f99980so3021530ioo.21
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 04:27:20 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:c149:: with SMTP id b9mr20255496ilh.195.1621250840427;
 Mon, 17 May 2021 04:27:20 -0700 (PDT)
Date: Mon, 17 May 2021 04:27:20 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000006f809f05c284e0f1@google.com>
Subject: [syzbot] INFO: task hung in ext4_put_super
From: syzbot <syzbot+deb25600c2fd79ffd367@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org, 
	ndesaulniers@google.com, syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3gfoiyakbafmdjk5v66zcvaa3y.19916zfdzcx98ez8e.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender) smtp.mailfrom=3GFOiYAkbAFMDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    2f7b98d1 Merge tag 'drm-fixes-2021-04-16' of git://anongit..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=11966df9d00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=398c4d0fe6f66e68
dashboard link: https://syzkaller.appspot.com/bug?extid=deb25600c2fd79ffd367
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=170d645ad00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16a03a2ed00000

Bisection is inconclusive: the issue happens on the oldest tested release.

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=156f54b6d00000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=176f54b6d00000
console output: https://syzkaller.appspot.com/x/log.txt?x=136f54b6d00000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+deb25600c2fd79ffd367@syzkaller.appspotmail.com

INFO: task syz-executor768:8400 blocked for more than 143 seconds.
      Not tainted 5.12.0-rc7-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor768 state:D stack:26912 pid: 8400 ppid:  8395 flags:0x00004000
Call Trace:
 context_switch kernel/sched/core.c:4322 [inline]
 __schedule+0x911/0x21b0 kernel/sched/core.c:5073
 schedule+0xcf/0x270 kernel/sched/core.c:5152
 schedule_timeout+0x1db/0x250 kernel/time/timer.c:1868
 do_wait_for_common kernel/sched/completion.c:85 [inline]
 __wait_for_common kernel/sched/completion.c:106 [inline]
 wait_for_common kernel/sched/completion.c:117 [inline]
 wait_for_completion+0x168/0x270 kernel/sched/completion.c:138
 kthread_stop+0x17a/0x720 kernel/kthread.c:621
 ext4_put_super+0x926/0x10c0 fs/ext4/super.c:1248
 generic_shutdown_super+0x144/0x370 fs/super.c:464
 kill_block_super+0x97/0xf0 fs/super.c:1394
 deactivate_locked_super+0x94/0x160 fs/super.c:335
 deactivate_super+0xad/0xd0 fs/super.c:366
 cleanup_mnt+0x3a3/0x530 fs/namespace.c:1136
 task_work_run+0xdd/0x1a0 kernel/task_work.c:140
 tracehook_notify_resume include/linux/tracehook.h:189 [inline]
 exit_to_user_mode_loop kernel/entry/common.c:174 [inline]
 exit_to_user_mode_prepare+0x249/0x250 kernel/entry/common.c:208
 __syscall_exit_to_user_mode_work kernel/entry/common.c:290 [inline]
 syscall_exit_to_user_mode+0x19/0x60 kernel/entry/common.c:301
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x44bf77
RSP: 002b:00007ffdcafa7108 EFLAGS: 00000202 ORIG_RAX: 00000000000000a6
RAX: 0000000000000000 RBX: 00000000000b7da1 RCX: 000000000044bf77
RDX: 00007ffdcafa71cb RSI: 0000000000000002 RDI: 00007ffdcafa71c0
RBP: 00007ffdcafa71c0 R08: 00000000ffffffff R09: 00007ffdcafa6fa0
R10: 00000000015f3663 R11: 0000000000000202 R12: 00007ffdcafa8280
R13: 00000000015f35f0 R14: 00007ffdcafa7130 R15: 00007ffdcafa82a0

Showing all locks held in the system:
3 locks held by kworker/0:2/8:
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x871/0x1600 kernel/workqueue.c:2246
 #1: ffffc90000cd7da8 ((work_completion)(&pwq->unbound_release_work)){+.+.}-{0:0}, at: process_one_work+0x8a5/0x1600 kernel/workqueue.c:2250
 #2: ffffffff8bf7cf28 (rcu_state.exp_mutex){+.+.}-{3:3}, at: exp_funnel_lock kernel/rcu/tree_exp.h:290 [inline]
 #2: ffffffff8bf7cf28 (rcu_state.exp_mutex){+.+.}-{3:3}, at: synchronize_rcu_expedited+0x4fa/0x620 kernel/rcu/tree_exp.h:836
1 lock held by khungtaskd/1630:
 #0: ffffffff8bf74360 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x53/0x260 kernel/locking/lockdep.c:6328
3 locks held by kworker/0:3/3722:
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x871/0x1600 kernel/workqueue.c:2246
 #1: ffffc900032dfda8 ((work_completion)(&pwq->unbound_release_work)){+.+.}-{0:0}, at: process_one_work+0x8a5/0x1600 kernel/workqueue.c:2250
 #2: ffffffff8bf7cf28 (rcu_state.exp_mutex){+.+.}-{3:3}, at: exp_funnel_lock kernel/rcu/tree_exp.h:322 [inline]
 #2: ffffffff8bf7cf28 (rcu_state.exp_mutex){+.+.}-{3:3}, at: synchronize_rcu_expedited+0x27e/0x620 kernel/rcu/tree_exp.h:836
1 lock held by systemd-udevd/4830:
 #0: ffff8881426373a0 (&bdev->bd_mutex){+.+.}-{3:3}, at: blkdev_get_by_dev fs/block_dev.c:1457 [inline]
 #0: ffff8881426373a0 (&bdev->bd_mutex){+.+.}-{3:3}, at: blkdev_get_by_dev+0x261/0x600 fs/block_dev.c:1426
1 lock held by in:imklog/8093:
2 locks held by syz-executor768/8398:
 #0: ffff888142635120 (&bdev->bd_mutex){+.+.}-{3:3}, at: __blkdev_put+0xf0/0x800 fs/block_dev.c:1578
 #1: ffff8880196783f0 (&lo->lo_mutex){+.+.}-{3:3}, at: __loop_clr_fd+0x8b/0xff0 drivers/block/loop.c:1203
2 locks held by syz-executor768/8399:
 #0: ffff888142635ca0 (&bdev->bd_mutex){+.+.}-{3:3}, at: __blkdev_put+0xf0/0x800 fs/block_dev.c:1578
 #1: ffff88801967d3f0 (&lo->lo_mutex){+.+.}-{3:3}, at: __loop_clr_fd+0x8b/0xff0 drivers/block/loop.c:1203
1 lock held by syz-executor768/8400:
 #0: ffff8880117360e0 (&type->s_umount_key#41){++++}-{3:3}, at: deactivate_super+0xa5/0xd0 fs/super.c:365
2 locks held by syz-executor768/8401:
 #0: ffff8881426373a0 (&bdev->bd_mutex){+.+.}-{3:3}, at: __blkdev_put+0xf0/0x800 fs/block_dev.c:1578
 #1: ffff8880197073f0 (&lo->lo_mutex){+.+.}-{3:3}, at: __loop_clr_fd+0x8b/0xff0 drivers/block/loop.c:1203
2 locks held by kworker/0:1/8519:
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 #0: ffff888010464d38 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x871/0x1600 kernel/workqueue.c:2246
 #1: ffffc90001c2fda8 ((work_completion)(&pwq->unbound_release_work)){+.+.}-{0:0}, at: process_one_work+0x8a5/0x1600 kernel/workqueue.c:2250
2 locks held by kworker/0:5/8531:
 #0: ffff888010466538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: arch_atomic64_set arch/x86/include/asm/atomic64_64.h:34 [inline]
 #0: ffff888010466538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: atomic64_set include/asm-generic/atomic-instrumented.h:856 [inline]
 #0: ffff888010466538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: atomic_long_set include/asm-generic/atomic-long.h:41 [inline]
 #0: ffff888010466538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: set_work_data kernel/workqueue.c:616 [inline]
 #0: ffff888010466538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: set_work_pool_and_clear_pending kernel/workqueue.c:643 [inline]
 #0: ffff888010466538 ((wq_completion)rcu_gp){+.+.}-{0:0}, at: process_one_work+0x871/0x1600 kernel/workqueue.c:2246
 #1: ffffc900019afda8 ((work_completion)(&rew.rew_work)){+.+.}-{0:0}, at: process_one_work+0x8a5/0x1600 kernel/workqueue.c:2250

=============================================

NMI backtrace for cpu 1
CPU: 1 PID: 1630 Comm: khungtaskd Not tainted 5.12.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x141/0x1d7 lib/dump_stack.c:120
 nmi_cpu_backtrace.cold+0x44/0xd7 lib/nmi_backtrace.c:105
 nmi_trigger_cpumask_backtrace+0x1b3/0x230 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:146 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:209 [inline]
 watchdog+0xd48/0xfb0 kernel/hung_task.c:294
 kthread+0x3b1/0x4a0 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
Sending NMI from CPU 1 to CPUs 0:
NMI backtrace for cpu 0
CPU: 0 PID: 8563 Comm: systemd-udevd Not tainted 5.12.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:compound_head include/linux/page-flags.h:187 [inline]
RIP: 0010:virt_to_head_page include/linux/mm.h:880 [inline]
RIP: 0010:kmem_cache_free+0x76/0x740 mm/slub.c:3177
Code: c1 e8 0c 4c 89 6c 24 28 48 c7 44 24 30 00 00 00 00 49 89 c4 48 b8 00 00 00 00 00 ea ff ff 49 c1 e4 06 49 01 c4 49 8b 44 24 08 <48> 8d 50 ff a8 01 4c 0f 45 e2 48 8d 54 24 30 e8 96 86 ff ff 84 c0
RSP: 0018:ffffc90001dafd30 EFLAGS: 00000282
RAX: ffffea00006fc601 RBX: ffff88801bf1e620 RCX: 0000000000000000
RDX: ffff88801bb69c40 RSI: ffffc90001dafd58 RDI: ffff8880105bd140
RBP: ffff8880105bd140 R08: 0000000000000000 R09: 0000000000000030
R10: ffffffff813371ca R11: 000000000000003f R12: ffffea00006fc780
R13: ffff88801bf1e600 R14: 0000000000000020 R15: ffff8880166c08d0
FS:  00007f07042b08c0(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055913c8fb828 CR3: 000000001390c000 CR4: 0000000000350ef0
Call Trace:
 putname+0xe1/0x120 fs/namei.c:259
 do_sys_openat2+0x153/0x420 fs/open.c:1196
 do_sys_open fs/open.c:1203 [inline]
 __do_sys_open fs/open.c:1211 [inline]
 __se_sys_open fs/open.c:1207 [inline]
 __x64_sys_open+0x119/0x1c0 fs/open.c:1207
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f07033f6840
Code: 73 01 c3 48 8b 0d 68 77 20 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 89 bb 20 00 00 75 10 b8 02 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 1e f6 ff ff 48 89 04 24
RSP: 002b:00007ffc009f2a08 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 000055913b130780 RCX: 00007f07033f6840
RDX: 0000559139200fe3 RSI: 00000000000a0800 RDI: 000055913b11bed0
RBP: 00007ffc009f2b80 R08: 0000559139200670 R09: 0000000000000010
R10: 00007f0703170d70 R11: 0000000000000246 R12: 00007ffc009f2ad0
R13: 000055913b12a900 R14: 0000000000000003 R15: 000000000000000e


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000006f809f05c284e0f1%40google.com.
