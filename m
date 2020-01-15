Return-Path: <clang-built-linux+bncBCQPF57GUQHBBRXA7LYAKGQENKOSOOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C836913B983
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 07:25:11 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id v2sf9441496otq.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 22:25:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579069510; cv=pass;
        d=google.com; s=arc-20160816;
        b=enxAWZYBgAeC0Wft4ewif277ya+IrMIvWbvGKsZQNS7f+cXmZC4Q14sQx2i5WvNiP6
         WVjCtmgp18QBu8+nCixscOtavyNS7uvEbkB6+t/N258+mUmW5pXvnmXoS3vdNC8PpFPU
         vXnnBV7bnXIevEWepFDQzIejd44c0SS4pgONKEcc2Pvlt688qRD54UuBWi+35ZFuj7/U
         LLBT9nGWiKdsUCID05uaNAl4kIVXlrzSpmxIfNLOWzM8qBVbh8g6vR1NQLmcQeDpW9t6
         fyPLs7GZYdophzzYq1W0PCe12ckeG7kHtXqnqWX1U3x1/WVb5s+5LAzXLQcP7svGV5ga
         xVRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=mdC8SVcxAGFyMG7utfZZeUw+YOy6edF3r7pkcAnRwY0=;
        b=FRV7VS3RyovhcCLI/sLfZFqhhuvZzF7our7PT+67zOdv22e6QyW+nuSHTE/m3PteMO
         PCNfeWN4IDE9fP4B7bUqdojugiGFP0l89x4fQyRr/JhQbNX8EJ0zOIXtDwrz6fglfn1V
         jQnYWYVk/oNcn/QYuIbNrNDTuXiWMsTrQNG4cDrnRmvJgC8Uinnl5hqaOz0WH2jjKN4D
         63gwf8BVHe8O0Z08tt/+p5xV+jNqyIzECsJBgt8pQvWbOgR9tKSyv+V1knnWxE9AZXti
         bqMUWJptJgAF/c0pjxEzoTNROgIVlaa0GaEvXp5ab3+h+ZZnrILCbcZ+LZv+HE4D7nTF
         Z7cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3rbaexgkbabggmn8y992fydd61.4cc492ig2f0cbh2bh.0ca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3RbAeXgkbABgGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mdC8SVcxAGFyMG7utfZZeUw+YOy6edF3r7pkcAnRwY0=;
        b=WNrrgAJRw1euZ6XxCIylXIhG4kR41uEAVaTNlRevXkNEtQZvtHT9sQ3vFyGJ0TyrGb
         X5/UUVtaRiSdC60WlEpJn5K545sRMMF4DHi5LnHgHfwluzjkZFn0YgOgQvDMszRZ1epT
         42L9HiUcVpttMVazsX8vYSKNXsijcbOa52WJlUb/gOLSL2ZRy4nup7AJI5DHkoIL9V6o
         IZ2jpA1I8kj/EapF/D6FGuwMu67tkZUvdE7N3Lsdlpr172l6JxXwohk4pIGMkG94Bdhr
         cunW2LTte1bL4UdDnefRi10i+HaOYLVjwTv8r0BFJ+W7QETa4Q2vlN9EBtkgSJ3DW8Pf
         2wVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mdC8SVcxAGFyMG7utfZZeUw+YOy6edF3r7pkcAnRwY0=;
        b=HTFA8o8sTWdJjUOgI4KFl3S4P4HQT9Uo33s0IZsSxTCxHJk4eqDobJjac9n/066FdY
         qTPlaxBtQwmTAwgEwM1GRA9MMM8RqcDXnVZ53u1zhXpOLAnq/aGusW5+dVJu+qMiE85D
         EnP2y1xwSVgNoLI4nd4HHvOhILL7+mJ/Zff4Jkwlis/2HRbTJSkm60z2WD50XpyXfCBQ
         8yLmOydzyAJnL2dEJGyr7D9HgDPDhXzvKBQdSVlsVZqQHcNxQne2YTifBOmbs8fZQjWn
         A0HpJ+JnQS4aWKsRrLbp+LzteylOlfKF2FnMfKt7BBw6xKTehS0ZjVx9i4DlOKbVWOyO
         wQoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2IV4jnR5AJ1QuA1xzehzYh2glFEe0dqwHRssbPoK94xdQ3r0K
	PVBFIkXcxXmD2IFjj81MwNc=
X-Google-Smtp-Source: APXvYqzGAMHOHFqkMmQj79lAKlTos7QdPrbyGovO/EEHecd4o7POHbHbU5hb07B35YQ3OFnkj8lbuw==
X-Received: by 2002:aca:f5c1:: with SMTP id t184mr20463697oih.23.1579069510347;
        Tue, 14 Jan 2020 22:25:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e11:: with SMTP id a17ls3235341otd.12.gmail; Tue, 14
 Jan 2020 22:25:10 -0800 (PST)
X-Received: by 2002:a05:6830:13d3:: with SMTP id e19mr1655136otq.135.1579069509916;
        Tue, 14 Jan 2020 22:25:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579069509; cv=none;
        d=google.com; s=arc-20160816;
        b=KStyREDmpiWbPvC4EUP+4CEuu9Rg7l4qndL9kdpAS+HQaSJ5bHr/mx71gSgFrNaHq6
         YoAQ5ujyG7uxqEE81bsz5Grj2aQlfhG1rEzQQDzvV0BuyJA6odLlXGajcWKHA4kCnKtQ
         trOf/ewyk5YzNMFCmM4BeUsVoI6i7Mbwb1qNB85ORDbCMXUooI7m1Nwg4qni5lR8YXjQ
         QiTv5Xf5iGI58XySWgC81cltgb1ckfMQCWVK8gExbLu+GfgyvX+Q2H0Lki5JQUI/uPQr
         FeIulAcV5N8z39d5BdaPeCJv4ZFGyrPOFmhQr/kKsbpTgTu5reHy5AOorbyF4sj81NYj
         wyRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=eW4Xg4UoPEB3a/2AZhweqhOWkYfz9yjercWeCE8lc/U=;
        b=jRWlGQ1YZP0Qa8r33ynq0OWlzArUyMjwBK97MqfSrCkMQmaAVosWuUPrYqHL9I01cG
         0ZH6G2SKt4FnMSIvs+Np5xoi+vg1OXQn838XWMAmfOMXF1Eg8b8O+rmHZiYfAiNdrFE3
         6nv2YBdHWWh5bx+CRa+iGgs0hMFceh4sjk8puu/OI9auP+PUe+LpuKjdFIsgZrA78Asy
         Eii/1h1Yc2+hwjuDVTwzsrB5e9KqqQ3ZgDQ19ZRuis6MIkfH0ALqB23wtg8k98C8aTjl
         +NpcuXVygmRKZVW66bjVeOQvqYwHatz8kBxQGiA1gZzUmxgrcCa0jIvypJh+Pb9A4f0g
         qCUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3rbaexgkbabggmn8y992fydd61.4cc492ig2f0cbh2bh.0ca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3RbAeXgkbABgGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com. [209.85.166.200])
        by gmr-mx.google.com with ESMTPS id e14si929968otr.1.2020.01.14.22.25.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2020 22:25:09 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rbaexgkbabggmn8y992fydd61.4cc492ig2f0cbh2bh.0ca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) client-ip=209.85.166.200;
Received: by mail-il1-f200.google.com with SMTP id x69so12514321ill.14
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jan 2020 22:25:09 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a5e:a614:: with SMTP id q20mr19404414ioi.36.1579069509574;
 Tue, 14 Jan 2020 22:25:09 -0800 (PST)
Date: Tue, 14 Jan 2020 22:25:09 -0800
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000031a8d7059c27c540@google.com>
Subject: general protection fault in free_verifier_state (3)
From: syzbot <syzbot+b296579ba5015704d9fa@syzkaller.appspotmail.com>
To: andriin@fb.com, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, davem@davemloft.net, 
	hawk@kernel.org, jakub.kicinski@netronome.com, john.fastabend@gmail.com, 
	kafai@fb.com, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	songliubraving@fb.com, syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3rbaexgkbabggmn8y992fydd61.4cc492ig2f0cbh2bh.0ca@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender) smtp.mailfrom=3RbAeXgkbABgGMN8y992FyDD61.4CC492IG2F0CBH2BH.0CA@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    6dd42aa1 Merge branch 'runqslower'
git tree:       bpf-next
console output: https://syzkaller.appspot.com/x/log.txt?x=14e61349e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a736c99e9fe5a676
dashboard link: https://syzkaller.appspot.com/bug?extid=b296579ba5015704d9fa
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+b296579ba5015704d9fa@syzkaller.appspotmail.com

kasan: CONFIG_KASAN_INLINE enabled
kasan: GPF could be caused by NULL-ptr deref or user memory access
general protection fault: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 3213 Comm: syz-executor.2 Not tainted 5.5.0-rc4-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
RIP: 0010:free_verifier_state+0x49/0x1d0 kernel/bpf/verifier.c:744
Code: db 48 83 ec 20 48 89 45 b8 48 c1 e8 03 4c 01 f8 89 75 c4 48 89 45 c8  
e8 65 ae f2 ff 4c 63 f3 4f 8d 2c f4 4c 89 e8 48 c1 e8 03 <42> 80 3c 38 00  
0f 85 2b 01 00 00 4f 8d 34 f4 49 8b 3e 48 85 ff 48
RSP: 0018:ffffc900017c7688 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffffc9000d65b000
RDX: 0000000000040000 RSI: ffffffff818251eb RDI: 0000000000000000
RBP: ffffc900017c76d0 R08: ffff88806f496640 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: dffffc0000000000
FS:  00007fdb4648e700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000000010f6e80 CR3: 00000000690e9000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000600
Call Trace:
  do_check_common+0x2ec7/0x9650 kernel/bpf/verifier.c:9597
  do_check_main kernel/bpf/verifier.c:9654 [inline]
  bpf_check+0x84ed/0xbb07 kernel/bpf/verifier.c:10009
  bpf_prog_load+0xeab/0x17f0 kernel/bpf/syscall.c:1859
  __do_sys_bpf+0x1269/0x37a0 kernel/bpf/syscall.c:3096
  __se_sys_bpf kernel/bpf/syscall.c:3055 [inline]
  __x64_sys_bpf+0x73/0xb0 kernel/bpf/syscall.c:3055
  do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x45af49
Code: ad b6 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 48 89 f8 48 89 f7  
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff  
ff 0f 83 7b b6 fb ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007fdb4648dc78 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 000000000045af49
RDX: 0000000000000024 RSI: 0000000020000200 RDI: 0000000000000005
RBP: 000000000075bf20 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fdb4648e6d4
R13: 00000000004c1697 R14: 00000000004d66a0 R15: 00000000ffffffff
Modules linked in:
---[ end trace d725571ef2f4cce3 ]---
RIP: 0010:free_verifier_state+0x49/0x1d0 kernel/bpf/verifier.c:744
Code: db 48 83 ec 20 48 89 45 b8 48 c1 e8 03 4c 01 f8 89 75 c4 48 89 45 c8  
e8 65 ae f2 ff 4c 63 f3 4f 8d 2c f4 4c 89 e8 48 c1 e8 03 <42> 80 3c 38 00  
0f 85 2b 01 00 00 4f 8d 34 f4 49 8b 3e 48 85 ff 48
RSP: 0018:ffffc900017c7688 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffffc9000d65b000
RDX: 0000000000040000 RSI: ffffffff818251eb RDI: 0000000000000000
RBP: ffffc900017c76d0 R08: ffff88806f496640 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: dffffc0000000000
FS:  00007fdb4648e700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000075c000 CR3: 00000000690e9000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000600


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000031a8d7059c27c540%40google.com.
