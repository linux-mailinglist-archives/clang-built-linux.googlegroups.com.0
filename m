Return-Path: <clang-built-linux+bncBCQPF57GUQHBBUHVSGMAMGQEO6ISBHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5757B59D197
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Aug 2022 08:59:30 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id az11-20020a05620a170b00b006bc374c71e8sf2025132qkb.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Aug 2022 23:59:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661237969; cv=pass;
        d=google.com; s=arc-20160816;
        b=wc0FCLxR2ASZo9KGLykZGJk/E3wOHxZp4THqpeit8fjmIw0ocHKH7KEBz0TLBe70JL
         YnAq/7AtTCD8T07n00KpLcaJnZxp9xplSPIScH+xdcgDVH0to7lBdlfVOKm3IGLP35gl
         IYWyS+fx2YvNeUYiO21oDN5rhyw7bNkw3o5oXHN0wPh7d9wbXrqMvWpVFjsMI7LR3FIy
         apbsSM+wXjDUV2jFeXuUkzvW2nWDO2eRbA1XgJhjfICPBzmNpQf8jZK+s+ApG/MKsKKy
         B62XIYM//hnHplfkG32RkPV6/Iwx2RGZxSLvlyJLCXozK4GCB7Uu0HDaCfLyDj0L2Des
         JmlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=8f+oEvvoSz9lXGPasJx8L3fbNPECSZ7nxe6PCU8JfP4=;
        b=z9sWjLk1R6pWDSZyVTjmzyLOCiwt58uSVWteWqectFvgqnFyPEIdI8GBTveWdj4v7h
         LlU747NEgVZcXsXbDOmlcRRhUbRll8SFxxtIfOXC6E7LA7b7ObqQMqD9Z0GYSbg4hVGe
         RiW5LifQaN+T9zyyH2dYLf+TvC2Evdokaxs4EkO9efDaIwQuDfwPrvBe63WkT8XHubL3
         9WKNnJ06w/oMj9WhBaipcwkpGcm1fAasolt++AaOa/CVntO7HL+bU7JBf0GcEnw6oHVa
         BsJI9quGIylK1RF7Ajw0bQg2I/Rgxe2UsROnQkuBrax6JIGixYTCi+UpQjMeLaxYsXIJ
         aGjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3z3oeywkbapqouvgwhhanwllez.ckkchaqoanykjpajp.yki@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3z3oEYwkbAPQouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:date:mime-version
         :sender:from:to:cc;
        bh=8f+oEvvoSz9lXGPasJx8L3fbNPECSZ7nxe6PCU8JfP4=;
        b=gNANlVlg+fkbhcuuqMuJIxA5Yr0fJUILXVr9kCGRZ6x5OcdU/Zy6CWPqjKIpdwq7J3
         88VSbGdBIkWyGMla0QcYQFqywh6jzdBmkAzz1Z/X7nSW3ZwqEy2CHmTzCoNSP0SuP2ZI
         NZ4Wqp6rdcl0v/cUpxjOqbJKzZcfw1TwquhpUnktz9PH4beE+QSez3MtRXlUwt1UddKR
         0pK5+3xsQFMx0sWYgoLfm6sR+LbBRAGjlMt0ZLqSpcjBhZ0IkhoWy3P8/tzcotl0zy3C
         0FfN/zCHd6vq8BDmadZbWvQ9C0rdMDsIBP4yUJ2UA1unCQ19cUWDS6kT5sFH1inyvmZ3
         nCaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:date:mime-version:x-gm-message-state:sender:from:to:cc;
        bh=8f+oEvvoSz9lXGPasJx8L3fbNPECSZ7nxe6PCU8JfP4=;
        b=bTE0eOyeJgKpkpAkJOew2t3BsimeVFKVL/S4Dg/VmFGHSBg/SQKPg+fkaPPNL0zjUG
         6jutB6QUjjUX5HgaGLjnklogoGQrI+dzTWrWPQ87tcJ7FHIYduGwtwaStpGgeGfrZPtM
         FalQmy9E1bc+MPU+dCUb+LBQi15PV1bb4s6OaW4NYoT1z5Lm7JJneY9SdrL4eXxcucQW
         WnCcTiMW4mIy12FwlHblLC7+dhBiPmm3bdXt/gTKADC2UH9i3bbrfQUvlSbR6hx3ge/B
         rYwI0vjsZ/SkdBsneGAd8mBx16h7KVnL8pehOpX7HOd0h6lEv4tRHVesOIbsPdpftdRn
         7dDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo1wn4W9ZrHZQQA6tHfq6hRcrlUgAchYiklNua3/JZUsXK7eY/Fk
	O9ZRZG3th+wpoyZfYZOJXj4=
X-Google-Smtp-Source: AA6agR5b2s7NXW2EaliXhDlL9IdZKQ1ni1+W9APR85cPsmVKq1yc55tqRSoByJEF2xvYKrl3VOX7wQ==
X-Received: by 2002:ac8:5a49:0:b0:343:6d5a:43ba with SMTP id o9-20020ac85a49000000b003436d5a43bamr18402298qta.63.1661237968973;
        Mon, 22 Aug 2022 23:59:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f088:0:b0:496:e4c7:1171 with SMTP id g8-20020a0cf088000000b00496e4c71171ls2353233qvk.4.-pod-prod-gmail;
 Mon, 22 Aug 2022 23:59:28 -0700 (PDT)
X-Received: by 2002:a05:6214:2503:b0:496:29a5:fa5b with SMTP id gf3-20020a056214250300b0049629a5fa5bmr18884236qvb.78.1661237968392;
        Mon, 22 Aug 2022 23:59:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661237968; cv=none;
        d=google.com; s=arc-20160816;
        b=nkyqZNVtuhj71mJmzSIeH39K7mhCQFss9TEKFircm2bcn5nNY7nXgMSkJqorocSgH2
         0MwHmFwA9Kr8DIzn70O+NI0xhcCCOyioeLK5KimE4PUIq/iBuBeRd2fgiXpzwmgHqRup
         n2RyURhOHq8poR2cb7O7EAV1fnjlMVjUcht6BO8dCNw46r5QqGRgjv6l5P3rcQnC6xyG
         bVXPPE3c+5ncWwA06JY/PqgDp3JCHsTH6A+GPKzKO6nOUODg9xX3+SYL7snM1ikoM5ek
         DTT1498Y9P+U46YbYCoteQvJJA3umNf0AOn1tl0KqNe30WEtk6vB7RvJXg6JysA41ItI
         s0WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=29V1kxVUW3EwQRaqzTQ6JyEXfaDjKQkAV8eYjg4pbH0=;
        b=ByK5hlMpArpCGcIGEJZbX5W6zdCqlTSnvMoj1V1hhICwM9xN2APAM49iQlbYm5XLTq
         VtbJHc18ZdnCF4bhAtRzdNcPDi+/8RYZ03eVOlKvKcjQgCvrjnJapxV4NiTq3C4TYBGM
         i+YCM1H5jEaiWBqe4Nj1FFvTiA+HFK7Pof7dHJl9ouQFztkr8CmWTDcs3jSQ9YktvBM5
         OrrvxssuR0q4juymvfyAybnGEaCU5AD4rWovbvBFDrf5bbBeUV8Ta+XJ/qR8Bs14fvoO
         MpmIBHmn+Wvej/nJgWSNeapZaIotO+WLZQ2ACDNlTNvOSJDoZoIA3+YAJuDIw2UVkrsr
         D26A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3z3oeywkbapqouvgwhhanwllez.ckkchaqoanykjpajp.yki@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3z3oEYwkbAPQouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com. [209.85.166.70])
        by gmr-mx.google.com with ESMTPS id y22-20020a05620a25d600b006b9901be393si99581qko.0.2022.08.22.23.59.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 23:59:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3z3oeywkbapqouvgwhhanwllez.ckkchaqoanykjpajp.yki@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) client-ip=209.85.166.70;
Received: by mail-io1-f70.google.com with SMTP id p123-20020a6bbf81000000b00674f66cf13aso6969365iof.23
        for <clang-built-linux@googlegroups.com>; Mon, 22 Aug 2022 23:59:28 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a02:1d09:0:b0:33b:a8cc:17d3 with SMTP id
 9-20020a021d09000000b0033ba8cc17d3mr10741726jaj.25.1661237967928; Mon, 22 Aug
 2022 23:59:27 -0700 (PDT)
Date: Mon, 22 Aug 2022 23:59:27 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000f745de05e6e31a3f@google.com>
Subject: [syzbot] UBSAN: shift-out-of-bounds in __access_remote_vm
From: syzbot <syzbot+35b87c668935bb55e666@syzkaller.appspotmail.com>
To: almaz.alexandrovich@paragon-software.com, 
	clang-built-linux@googlegroups.com, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, nathan@kernel.org, 
	ndesaulniers@google.com, ntfs3@lists.linux.dev, 
	syzkaller-bugs@googlegroups.com, trix@redhat.com, viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3z3oeywkbapqouvgwhhanwllez.ckkchaqoanykjpajp.yki@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.70 as permitted sender) smtp.mailfrom=3z3oEYwkbAPQouvgWhhanWlleZ.ckkchaqoanYkjpajp.Yki@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    8755ae45a9e8 Add linux-next specific files for 20220819
git tree:       linux-next
console+strace: https://syzkaller.appspot.com/x/log.txt?x=144f3023080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ead6107a3bbe3c62
dashboard link: https://syzkaller.appspot.com/bug?extid=35b87c668935bb55e666
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10a5c1f3080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16e9ce85080000

The issue was bisected to:

commit 6e5be40d32fb1907285277c02e74493ed43d77fe
Author: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Date:   Fri Aug 13 14:21:30 2021 +0000

    fs/ntfs3: Add NTFS3 in fs/Kconfig and fs/Makefile

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=112f1867080000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=132f1867080000
console output: https://syzkaller.appspot.com/x/log.txt?x=152f1867080000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+35b87c668935bb55e666@syzkaller.appspotmail.com
Fixes: 6e5be40d32fb ("fs/ntfs3: Add NTFS3 in fs/Kconfig and fs/Makefile")

loop0: detected capacity change from 0 to 64
================================================================================
UBSAN: shift-out-of-bounds in fs/ntfs3/super.c:675:13
shift exponent -247 is negative
CPU: 0 PID: 3617 Comm: syz-executor807 Not tainted 6.0.0-rc1-next-20220819-syzkaller #0
BUG: sleeping function called from invalid context at kernel/locking/rwsem.c:1521
in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 3617, name: syz-executor807
preempt_count: 0, expected: 0
RCU nest depth: 0, expected: 0
1 lock held by syz-executor807/3617:
 #0: ffff888022d380e0 (&type->s_umount_key#41/1){+.+.}-{3:3}, at: alloc_super+0x22e/0xb60 fs/super.c:228
irq event stamp: 4810
hardirqs last  enabled at (4809): [<ffffffff816199ce>] __up_console_sem+0xae/0xc0 kernel/printk/printk.c:264
hardirqs last disabled at (4810): [<ffffffff894c1738>] dump_stack_lvl+0x2e/0x134 lib/dump_stack.c:139
softirqs last  enabled at (4804): [<ffffffff81491a33>] invoke_softirq kernel/softirq.c:445 [inline]
softirqs last  enabled at (4804): [<ffffffff81491a33>] __irq_exit_rcu+0x123/0x180 kernel/softirq.c:650
softirqs last disabled at (4789): [<ffffffff81491a33>] invoke_softirq kernel/softirq.c:445 [inline]
softirqs last disabled at (4789): [<ffffffff81491a33>] __irq_exit_rcu+0x123/0x180 kernel/softirq.c:650
CPU: 0 PID: 3617 Comm: syz-executor807 Not tainted 6.0.0-rc1-next-20220819-syzkaller #0
syz-executor807[3617] cmdline: ./syz-executor807082514
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:122 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:140
 __might_resched.cold+0x222/0x26b kernel/sched/core.c:9896
 down_read_killable+0x75/0x490 kernel/locking/rwsem.c:1521
 mmap_read_lock_killable include/linux/mmap_lock.h:126 [inline]
 __access_remote_vm+0xac/0x6f0 mm/memory.c:5461
 get_mm_cmdline.part.0+0x217/0x620 fs/proc/base.c:299
 get_mm_cmdline fs/proc/base.c:367 [inline]
 get_task_cmdline_kernel+0x1d9/0x220 fs/proc/base.c:367
 dump_stack_print_cmdline.part.0+0x82/0x150 lib/dump_stack.c:61
 dump_stack_print_cmdline lib/dump_stack.c:89 [inline]
 dump_stack_print_info+0x185/0x190 lib/dump_stack.c:97
 __dump_stack lib/dump_stack.c:121 [inline]
 dump_stack_lvl+0xc1/0x134 lib/dump_stack.c:140
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 parse_ntfs_boot_sector fs/ntfs/super.c:915 [inline]
 ntfs_fill_super.cold+0x147/0x56c fs/ntfs/super.c:2792
 get_tree_bdev+0x440/0x760 fs/super.c:1323
 vfs_get_tree+0x89/0x2f0 fs/super.c:1530
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x1326/0x1e20 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fcec358610a
Code: 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd5a5afbf8 EFLAGS: 00000286 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffd5a5afc50 RCX: 00007fcec358610a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffd5a5afc10
RBP: 00007ffd5a5afc10 R08: 00007ffd5a5afc50 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000286 R12: 0000000020000230
R13: 0000000000000003 R14: 0000000000000004 R15: 0000000000000002
 </TASK>
syz-executor807[3617] cmdline: ./syz-executor807082514
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 07/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:122 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:140
 ubsan_epilogue+0xb/0x50 lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x187 lib/ubsan.c:322
 parse_ntfs_boot_sector fs/ntfs/super.c:915 [inline]
 ntfs_fill_super.cold+0x147/0x56c fs/ntfs/super.c:2792
 get_tree_bdev+0x440/0x760 fs/super.c:1323
 vfs_get_tree+0x89/0x2f0 fs/super.c:1530
 do_new_mount fs/namespace.c:3040 [inline]
 path_mount+0x1326/0x1e20 fs/namespace.c:3370
 do_mount fs/namespace.c:3383 [inline]
 __do_sys_mount fs/namespace.c:3591 [inline]
 __se_sys_mount fs/namespace.c:3568 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3568
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fcec358610a
Code: 83 c4 08 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd5a5afbf8 EFLAGS: 00000286 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffd5a5afc50 RCX: 00007fcec358610a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffd5a5afc10
RBP: 00007ffd5a5afc10 R08: 00007ffd5a5afc50 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000286 R12: 0000000020000230
R13: 0000000000000003 R14: 0000000000000004 R15: 0000000000000002
 </TASK>
================================================================================


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000f745de05e6e31a3f%40google.com.
