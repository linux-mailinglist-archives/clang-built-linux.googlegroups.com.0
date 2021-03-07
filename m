Return-Path: <clang-built-linux+bncBCQPF57GUQHBBVEGSWBAMGQE45ZDZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 541043304CC
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Mar 2021 22:19:18 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id z21sf1870690pjr.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Mar 2021 13:19:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615151957; cv=pass;
        d=google.com; s=arc-20160816;
        b=fPcwHvd0Drw0SbzTJQxOmgF5oKhnn0/Lesbs7U/ynC8nJ0VP8n4zqlKcJjrpaA7gJq
         BOy0fuklcT/9A9lY5moDBXAkprVHZC2FXYqvBvJKnEJJ0wHcAuwlY0hqFtqQKH25ZXpI
         i6gWs/gGXQmoAPgEAuqE6U6sK/KePLeemc4EJK9upIm4qOgvnXHElTe8daXnLY8cGYOH
         TAyTuGZwVH91phZCxQj1Fub4FVStv8G7D/VPnD+gZX67XaGPZ7GYD2zIbnqtj7kC7Zj9
         PLbWnVegwCNDh5CGziMMkjADq3RxIanpHEMmngrOTmvpFu67sLTNzye0gtuWtV+ng2aA
         M3CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=mtWbqXZeeLECdgcyseZaWm19r+DF57b1WHgaaW5qyvo=;
        b=zisV8wb3sukGqCIWF+B9sL1RZIGWj1pBqG4ZiNvX1Llgjy+HLM5MeAUtXKOK4F8PPJ
         jDKPq8NQK/+thFWImirJqo+QftipYh8xvckkJUN0v+1Ec5WS4t/g5oUwEJf0L42Ya9Kn
         duUDlOxAjj6wme37pe9/E82aUVUGnstcErHKg+0V+E2wFodW10Lpz57UQG5wxj7svRn5
         hNQGoZoPjiDxursXMWchaitG5JvAZQnshNsovuZpEXdj/y6BOGM5ewIc76JsYPk7iu68
         hjXXda5tSEKVQ9+gV365ebakzyBuG5dGcYRLtwZT5/7BBLS26MG+dKS4EDvqLHprv7dx
         +YyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3u0nfyakbapyqwxiyjjcpynngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3U0NFYAkbAPYqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mtWbqXZeeLECdgcyseZaWm19r+DF57b1WHgaaW5qyvo=;
        b=qX3V1xTmbM4Ow/XGhRVBUvcjqstDvSUdszJA4nMm8J5UyaoCd8wglVY+D7bHQHcbYH
         Ow3ALnn+lFF72WWPjlSQ7U/qmwULBiGZEWSv9vVErCEw/X7ZO5jeLe9HH8W5mBufBLMd
         LnS2Za1g+s+oSMpg8n9PBH8ObIglvfNu9H1z+nMvb0ZyCMyc3AJN3mtN774t+vF0xBUO
         gdAREWTLmN5JmLku6hTqZiLbR9C/EL4detLts3n6OHCG25tFiJtbCbMb0OpvjEhqDvb/
         CA/+VOcTyBi5SRVuF9oEJ3jXtL2YbQGqAS2tF5hRO5VglM0hJl4fzCbUoqEdIAFS2HAM
         9VAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mtWbqXZeeLECdgcyseZaWm19r+DF57b1WHgaaW5qyvo=;
        b=pN2NkaB98W6yHQrqff0WIvUNU0D6sLfZSWWGB2Larnf4/SNr0XPVprppiB0nlCXZxY
         rnvFxGcjOSENG8JEwBwS6npKaweXHqa9qAuzaiXNhrw5IBVFOByjteGGlv3v9FMm/5EW
         NMTR0ZUbAPHlDmUrooUGin8SNH5nXk9jDxxc5d8Wi0ih0eb7FTPOG5kqdFAFlh25wmcl
         sjAqvnwIjxKFcoihuuAVDIgI9QOSEtOMISoKxB6L4naLZ6hhLtPCf0TQAqiSGw9Bli6G
         4R+Glex+LUo2Rn60/gzkWrT0N613TeJtA+G9w1OBeju9T1Cq2kykeq1P4UCA7+8P9EwN
         hk4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aONgF0W1OrZVozu2dUMVFwT3MxKlpRNxo0h/4GjRF3g2UiyJ0
	IPnhYy9zeSJlwhBg4XdXV6M=
X-Google-Smtp-Source: ABdhPJx1Bf75I2/mr+nhDFRMFkJLApAc/Nx4fwKuMrEmD4EbEqp0TS6Q2qcSEQfv0BcfCPwC57lW6g==
X-Received: by 2002:a17:90a:488f:: with SMTP id b15mr21631329pjh.53.1615151956939;
        Sun, 07 Mar 2021 13:19:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5918:: with SMTP id n24ls5887442pgb.7.gmail; Sun, 07 Mar
 2021 13:19:16 -0800 (PST)
X-Received: by 2002:a65:6208:: with SMTP id d8mr17675119pgv.365.1615151956341;
        Sun, 07 Mar 2021 13:19:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615151956; cv=none;
        d=google.com; s=arc-20160816;
        b=kuCqTiCPzb7gk1jmyTDMxp9Wf6MG2XQnkinyEBRUm26p0qYWwx7p4sJ4WbhTvNt0p5
         OqjatRT6nDsvxqGcv4eZJL1ffhfdGmdyThoGKcXVGjEv3/TIAv8iV+ZYVF7gTR93srUn
         IXwsHHS7TY+cws4ci/5K6vNYJfqSzBlvK58cUM5Q8jbIA2YHLk3Uzv5aP+V+1lfBoMZR
         Z6k76fNknNYUVZJcjfbmPUROwFTs7y3dIf14PPjb09PuELI6WCFEOiZXMT17SkcjwiqT
         m742T8RO88X/sYSNu5fxAFjunToRTGzMYggIIy4C6MdJHMGdqjsyy2IXOwg+ZeFDGCHE
         B/7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=b/8/TV2Ggjpg+ciG7XgCGRcOg8HJPj1kV6+Ap5MX/CY=;
        b=bM9J9YsfLC1Xqcq0oZ5XouwhHtbGEZuVyKo8+2uPDMW0sarzrvtuVtoa1u2qxMyceo
         fmCHaVuLhy4DSoASmc6omwSGKeWOR/W6jerRL8LIeZJXjXeQG/MA+mESUE0lfsVth7jZ
         YVoKKeVkcchcUL5ueTV+bpvpad1pcj6asv2cPw8dDi5goyTc7Bb0zMt+iSj2rG0bktnf
         s2OU2wecIEZYZMtu1OV37EamO+UYoGOvlH4BRJxn45V24mq3W8PamC8ziITQl2nQ70QA
         hsIp4JUgG4aRrO/7mFmWpe4S5Xs7gl5gKvRh0Lvin41OoTEPR36dggXsXBxeVp5diXKE
         RGrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3u0nfyakbapyqwxiyjjcpynngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) smtp.mailfrom=3U0NFYAkbAPYqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com. [209.85.166.69])
        by gmr-mx.google.com with ESMTPS id x1si495643plm.5.2021.03.07.13.19.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Mar 2021 13:19:16 -0800 (PST)
Received-SPF: pass (google.com: domain of 3u0nfyakbapyqwxiyjjcpynngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.69 as permitted sender) client-ip=209.85.166.69;
Received: by mail-io1-f69.google.com with SMTP id x9so3750003iob.5
        for <clang-built-linux@googlegroups.com>; Sun, 07 Mar 2021 13:19:16 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a5e:8610:: with SMTP id z16mr15515017ioj.57.1615151955861;
 Sun, 07 Mar 2021 13:19:15 -0800 (PST)
Date: Sun, 07 Mar 2021 13:19:15 -0800
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000096659005bcf8de0c@google.com>
Subject: [syzbot] general protection fault in btf_type_id_size
From: syzbot <syzbot+8bab8ed346746e7540e8@syzkaller.appspotmail.com>
To: andrii@kernel.org, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, 
	john.fastabend@gmail.com, kafai@fb.com, kpsingh@kernel.org, 
	linux-kernel@vger.kernel.org, nathan@kernel.org, ndesaulniers@google.com, 
	netdev@vger.kernel.org, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3u0nfyakbapyqwxiyjjcpynngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.69 as permitted sender) smtp.mailfrom=3U0NFYAkbAPYqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    6185266c selftests/bpf: Mask bpf_csum_diff() return value ..
git tree:       bpf
console output: https://syzkaller.appspot.com/x/log.txt?x=14fd4ff2d00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e2d5ba72abae4f14
dashboard link: https://syzkaller.appspot.com/bug?extid=8bab8ed346746e7540e8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=139778aed00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=158426dad00000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+8bab8ed346746e7540e8@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc0000000002: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000010-0x0000000000000017]
CPU: 0 PID: 8380 Comm: syz-executor429 Not tainted 5.11.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:btf_resolved_type_id kernel/bpf/btf.c:1770 [inline]
RIP: 0010:btf_type_id_size+0x40e/0x960 kernel/bpf/btf.c:1811
Code: 48 c1 e9 03 80 3c 11 00 0f 85 17 05 00 00 49 8b 47 10 44 29 f3 48 8d 1c 98 48 b8 00 00 00 00 00 fc ff df 48 89 da 48 c1 ea 03 <0f> b6 14 02 48 89 d8 83 e0 07 83 c0 03 38 d0 7c 08 84 d2 0f 85 ec
RSP: 0018:ffffc90000fffd18 EFLAGS: 00010203
RAX: dffffc0000000000 RBX: 0000000000000014 RCX: 1ffff11003a70482
RDX: 0000000000000002 RSI: ffffffff818b12f3 RDI: ffff88801d382410
RBP: ffff88801d382400 R08: 0000000000000005 R09: ffffffff818b114a
R10: ffffffff818b128e R11: 000000000000000a R12: 0000000000000000
R13: dffffc0000000000 R14: 0000000000000000 R15: ffff88801d382400
FS:  0000000000ad5300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000000004ae0f0 CR3: 0000000024fca000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 map_check_btf kernel/bpf/syscall.c:757 [inline]
 map_create kernel/bpf/syscall.c:860 [inline]
 __do_sys_bpf+0x4000/0x4f00 kernel/bpf/syscall.c:4370
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x43ff09
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 b1 14 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc5f435ef8 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 000000000001053e RCX: 000000000043ff09
RDX: 0000000000000040 RSI: 0000000020000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: 00007ffc5f436098 R09: 00007ffc5f436098
R10: 00007ffc5f436098 R11: 0000000000000246 R12: 00007ffc5f435f0c
R13: 431bde82d7b634db R14: 00000000004ae018 R15: 0000000000400488
Modules linked in:
---[ end trace a4216c6ef2fa85f5 ]---
RIP: 0010:btf_resolved_type_id kernel/bpf/btf.c:1770 [inline]
RIP: 0010:btf_type_id_size+0x40e/0x960 kernel/bpf/btf.c:1811
Code: 48 c1 e9 03 80 3c 11 00 0f 85 17 05 00 00 49 8b 47 10 44 29 f3 48 8d 1c 98 48 b8 00 00 00 00 00 fc ff df 48 89 da 48 c1 ea 03 <0f> b6 14 02 48 89 d8 83 e0 07 83 c0 03 38 d0 7c 08 84 d2 0f 85 ec
RSP: 0018:ffffc90000fffd18 EFLAGS: 00010203
RAX: dffffc0000000000 RBX: 0000000000000014 RCX: 1ffff11003a70482
RDX: 0000000000000002 RSI: ffffffff818b12f3 RDI: ffff88801d382410
RBP: ffff88801d382400 R08: 0000000000000005 R09: ffffffff818b114a
R10: ffffffff818b128e R11: 000000000000000a R12: 0000000000000000
R13: dffffc0000000000 R14: 0000000000000000 R15: ffff88801d382400
FS:  0000000000ad5300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000000004ae0f0 CR3: 0000000024fca000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000096659005bcf8de0c%40google.com.
