Return-Path: <clang-built-linux+bncBCQPF57GUQHBBWXWUXVQKGQEW2EJ5AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C92DA3E87
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 21:39:08 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id b31sf6268605ybj.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 12:39:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567193946; cv=pass;
        d=google.com; s=arc-20160816;
        b=wf6OOU0XVV79lmMhFWkQsM/q+Db2+4PWOEmdXyo9yhDUlhVoNDxfsKWxyejiubS0gQ
         yaxeIOcHUc+kEzm1M2GGaxghK1ECrtOOCGon98FkMMGAvKrpeTbjBIa1yCJldhRn1dj/
         GYnWHQy0w7/NjJeLbv4VL4TIZTK1afUSv9zGmjWQ5SEqs2h93rPTF2FY6V8Ofd7XEVDL
         1dAu7Po82lQ6mj1mXFbJ+nNy7/9yKel9Gqw5hQ1/0xxPTywWKjDMRF3VqaARn/1ZkEd9
         4YbgE5Nus+0RQhEDndvoakxDD3eLGgWLKNuKYYYmjzf/rigAAqN9wQ6vBdkcirRMHiAV
         uoqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=C5lzUIft6TrhH1ZhFBWLDADQEtMgiUVOFld2YeQIHpI=;
        b=q7X/6k8mJSq6TQZMmmIUl5uPpTLvODEot4K8WTRSjlK2kX4/8kPjk0aOcu3Qh1bOvN
         RMK0QI/Dc49i5ok/pngrAruehp/4VONbyJ/fk7/HIPknrL3jAfHL9/BoYmg5BgP+soqh
         ujK6qfiUcoBjM7V/KvEArVMR5qZYgSB4ohH1lVC1yTmfm+mALUVmefEtg2ZkMn7T+f6O
         TZTEcXFAfeuOXUt9hUJf0LKGjEmwUOadklooeaQkVdSf0kdY0Rrtk2b7peAEciOPofJA
         buzEJWCEYzhqbgxFz259/CqxTy9I10K2PZup94A0Zxnz6GR212l3HYWsy4XKFCwwU0Kj
         UgzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3wxtpxqkbaoyaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3WXtpXQkbAOYaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5lzUIft6TrhH1ZhFBWLDADQEtMgiUVOFld2YeQIHpI=;
        b=FuKlBnuWE0a4qlCfHeTCbCSuFfrb0uva72oliyjbQpXEGx40mBvU0/snwouEYCRLz3
         6zCSCOzQ7w0c7nAkX/emk4AvwBZ2/FU5Y+TnUF0JjPzAWaLaiFs9d4I7q5MPZcV8q6Vi
         ntbzSgmfS32kaKrGpF1XxUUVkWIEfj8uUmLM0BEogvPufSh5M545psQCVYmmxAzoC8iT
         kTURTiCBSXbjcvKTI5d4xcIwBXbx8OEc7OOJj/XfrEfdLsVFQIkPjTKON2qm3X7qvWbr
         7lwTR5qOEXNnAcBHowR6xxZe0qoH4IM/Czgd6wasytMIsT20qkERW2763Et9CbWbw26B
         g5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C5lzUIft6TrhH1ZhFBWLDADQEtMgiUVOFld2YeQIHpI=;
        b=Mmu1LLY9T8/Eu1zKGi1bXKBC8mb6soEGYkTpq2EGSkhHQnD/9/D+KyNpOI2mwa20Rm
         0GABmBC03p+EE5KxPmnjdfkqPmlweOPCUn4wfiSr5Hfy8Yd35hprpDNifFRnJmzGAEIt
         jSbdCEknDzOPKMRD9W6RoDr3KbC2h4Bo5zRoWajQRTgCTP1M7NW7zxUFStDmC5BSZ0Nh
         skem/4Vrlwu1ZUBjvImHQfJ9Nr7YTcr1DK68Qs2Fhi2fXJkF4hwUIDe8nzbNYXwpm/ZT
         v7dBm/MlfAD8zvF6bWiECJCuodu+w9TqUlfMxYAl21bmji/XqygeXHXrcz23bGXDsV29
         BysQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWGRwe0e9hxSpv/ETT7XCYOpqo4fp2V5WXJWkvlFlQGE2DlOb/m
	XE6KgTYjaFJ7xriLair0mWY=
X-Google-Smtp-Source: APXvYqwWpNWzTnEcc7rUwvMGSMtnIUJYP7jvanML0vx7jlo/gVJ1alISPclS3Nc7mHZAsXGWCwlYNQ==
X-Received: by 2002:a81:b143:: with SMTP id p64mr183064ywh.217.1567193946758;
        Fri, 30 Aug 2019 12:39:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:25d5:: with SMTP id l204ls668923ybl.7.gmail; Fri, 30 Aug
 2019 12:39:06 -0700 (PDT)
X-Received: by 2002:a25:b9cd:: with SMTP id y13mr12641778ybj.352.1567193946306;
        Fri, 30 Aug 2019 12:39:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567193946; cv=none;
        d=google.com; s=arc-20160816;
        b=iFey7w3qiBiTpDcsQHB2/y4AaohbMrKfcKVPtv/0rC5fryETMS7hJHqdvmhdcn8thu
         E5DE0Wju/vRWND8y5/bybt/9RzbYuHDD6Fd4VyExwl+Cmr8AQJarraXx8hQzuAJNb9yQ
         zd70x2sIzXreLF+s3gpjWhpxQP2N47BS+fFHHVflubvqCzfk5Qew67dtFD5RTr7tcgur
         MssTeit9hezi9ZzwP6TPhKWQpf49NzzOUiowvt7MhhPHIqsXqbs1xK7HwRnHNgtij9Aa
         /NRbGB3f+M9RPA1YFsV3m2MIn8DWG+wfq7MLB5fhbpE9gNSF+Djl0q+4J2sam/Cuu+Lr
         Bn6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=FTbnECkwX1k08K13xihoScCca2rgDwnviVrV9UZiWrU=;
        b=eE2HXP5xST5vWkjxC34Sc2yQbRabtc/8MbSHtKLfrK+KKt3wYCEx7PrBOcvIvPcGe4
         zxPVUbaTpO+Kpnuz2IUsb0Y/1QZ6sn+HNN+lAGiGenjv3VexlIR0r8Fl5usgO38nRCC2
         iWNIMsgsxwymUbr+LNfaRR2KpuR41aSXBBpUeDRY6j2FSQrT02nFds19Pda7PDdh07Y6
         Uh8Zl4ri1LPVz6CMCIBl/nnCifml0WkE1FgYdMeAwXT7KKuQOx/0v1+W5n5faL4stLEI
         1zi1pi1v/kpZpqnXlRXo/+j2eksoUZrufHP4pvBFoXSUUYCfqSryXwqJQAzJzrId+7lC
         14PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3wxtpxqkbaoyaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3WXtpXQkbAOYaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com. [209.85.166.70])
        by gmr-mx.google.com with ESMTPS id o3si350921ywa.4.2019.08.30.12.39.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 12:39:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wxtpxqkbaoyaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) client-ip=209.85.166.70;
Received: by mail-io1-f70.google.com with SMTP id 5so9780419ion.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 12:39:06 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6602:18d:: with SMTP id m13mr8596613ioo.12.1567193945849;
 Fri, 30 Aug 2019 12:39:05 -0700 (PDT)
Date: Fri, 30 Aug 2019 12:39:05 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000006fc70605915ac6ad@google.com>
Subject: WARNING: ODEBUG bug in ext4_fill_super
From: syzbot <syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3wxtpxqkbaoyaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.70 as permitted sender) smtp.mailfrom=3WXtpXQkbAOYaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

syzbot found the following crash on:

HEAD commit:    ed858b88 Add linux-next specific files for 20190826
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=14209eca600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ee8373cd9733e305
dashboard link: https://syzkaller.appspot.com/bug?extid=0bf8ddafbdf2c46eb6f3
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com

EXT4-fs (loop2): corrupt root inode, run e2fsck
EXT4-fs (loop2): mount failed
------------[ cut here ]------------
ODEBUG: free active (active state 0) object type: percpu_counter hint: 0x0
WARNING: CPU: 0 PID: 12342 at lib/debugobjects.c:481  
debug_print_object+0x168/0x250 lib/debugobjects.c:481
Kernel panic - not syncing: panic_on_warn set ...
CPU: 0 PID: 12342 Comm: syz-executor.2 Not tainted 5.3.0-rc6-next-20190826  
#73
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
  panic+0x2dc/0x755 kernel/panic.c:220
  __warn.cold+0x2f/0x3c kernel/panic.c:581
  report_bug+0x289/0x300 lib/bug.c:195
  fixup_bug arch/x86/kernel/traps.c:179 [inline]
  fixup_bug arch/x86/kernel/traps.c:174 [inline]
  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
  invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1028
RIP: 0010:debug_print_object+0x168/0x250 lib/debugobjects.c:481
Code: dd 60 6c e6 87 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 b5 00 00 00 48  
8b 14 dd 60 6c e6 87 48 c7 c7 c0 61 e6 87 e8 20 31 01 fe <0f> 0b 83 05 f3  
67 83 06 01 48 83 c4 20 5b 41 5c 41 5d 41 5e 5d c3
RSP: 0018:ffff88806c9ff938 EFLAGS: 00010086
RAX: 0000000000000000 RBX: 0000000000000003 RCX: 0000000000000000
RDX: 0000000000040000 RSI: ffffffff815bd606 RDI: ffffed100d93ff19
RBP: ffff88806c9ff978 R08: ffff888067d48140 R09: ffffed1015d04109
R10: ffffed1015d04108 R11: ffff8880ae820847 R12: 0000000000000001
R13: ffffffff8935e800 R14: 0000000000000000 R15: ffff88806903c818
  __debug_check_no_obj_freed lib/debugobjects.c:963 [inline]
  debug_check_no_obj_freed+0x2d4/0x43f lib/debugobjects.c:994
  kfree+0xf8/0x2c0 mm/slab.c:3755
  ext4_fill_super+0x8cb/0xcc80 fs/ext4/super.c:4684
  mount_bdev+0x304/0x3c0 fs/super.c:1407
  ext4_mount+0x35/0x40 fs/ext4/super.c:6019
  legacy_get_tree+0x113/0x220 fs/fs_context.c:651
  vfs_get_tree+0x8f/0x380 fs/super.c:1482
  do_new_mount fs/namespace.c:2796 [inline]
  do_mount+0x13b3/0x1c30 fs/namespace.c:3116
  ksys_mount+0xdb/0x150 fs/namespace.c:3325
  __do_sys_mount fs/namespace.c:3339 [inline]
  __se_sys_mount fs/namespace.c:3336 [inline]
  __x64_sys_mount+0xbe/0x150 fs/namespace.c:3336
  do_syscall_64+0xfa/0x760 arch/x86/entry/common.c:290
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45c2ca
Code: b8 a6 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 9d 8d fb ff c3 66 2e 0f  
1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff  
ff 0f 83 7a 8d fb ff c3 66 0f 1f 84 00 00 00 00 00
RSP: 002b:00007fa684517a88 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007fa684517b40 RCX: 000000000045c2ca
RDX: 00007fa684517ae0 RSI: 0000000020000000 RDI: 00007fa684517b00
RBP: 0000000000001000 R08: 00007fa684517b40 R09: 00007fa684517ae0
R10: 0000000000000001 R11: 0000000000000206 R12: 0000000000000003
R13: 00000000004c89d6 R14: 00000000004df8f8 R15: 00000000ffffffff
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000006fc70605915ac6ad%40google.com.
