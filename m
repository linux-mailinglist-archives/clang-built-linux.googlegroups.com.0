Return-Path: <clang-built-linux+bncBCQPF57GUQHBBCGXVLZQKGQEZLUABJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 3772D183B75
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 22:37:14 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id z16sf5089473qkg.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 14:37:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584049033; cv=pass;
        d=google.com; s=arc-20160816;
        b=XYeCkoLGJp/mpkCRKbKPLwLqL5ZNDaPNFbwShXG+edMKBdVa12MOYdjQssrDlM0Bpd
         EbQhCNs81s8GiXij2CUr5h2D06TlWML3Rl7CQrMKYtZiNw2yQH0EGOR3EKHgqXC3izE8
         Iq0CbayD+BSwyL/XbtqsmoxIVxJtjstA8zx4jnEJ9N0hzGR7tE/2iWdiG9uqC29TAwqo
         hYTiHWSktYqJPfJDjjPwgSY3uWrYUzucylBEAaUZJXTFzZNhz5I6dwiuosn0u+NKa5Gb
         uCUaYuSr0I/xUkUI0V538ibP3ECRTygaCcUzmKjIQ3aQw5Zy8x0WVmWiuTXFsneThI2z
         Yh6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=Yh7m8wnx2UuEnHAk319xf0wP2Jdp56pmZOEqU01cZsk=;
        b=Oyui0L6Gg/ln7mGw4Bp6CVKX7qnuF4MiZk1RbjUMZg8pWLjjUr30OZW201kZQHoAWv
         NQsreJHyeknIGP8JhO2kJ+msy8K+r7oB1weNxBFB5Y7hqDxpb+/Oc/3FLutD1DpJrvfP
         XSIHA/5vx8E/qZ4umUy5A9FRRNRz7HJeJabTXXh0zvQ69wcYp7SC5tEkhfwEpRcHEmDL
         qv2ydzWTzuGhJ8mYsZ/vllx22jts3kLDmu80aAMZA5RuZgtr5ojOSLKNDGYmuogCDvbt
         3WFKGhV+5r6Hj9MRAHRAjkVmfvSRQwDU6eJaHvZwIdPah+w9XCyDHAnP0r0OO1ghx+U8
         sIiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3iktqxgkbaimz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3iKtqXgkbAIMz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yh7m8wnx2UuEnHAk319xf0wP2Jdp56pmZOEqU01cZsk=;
        b=GRyr5GyOVqJbipodG8n/AfYegOeSRJyNg3gObzsbFaD6mRDSJHDPTt0PLnCdmrEa7w
         9mtFWCM0vrNNWBahWiHIMXmOAc8RJ6VDO3dEgJH/Kc9zf1Az3HakuQpqjXg3OGshiSEa
         j6cR3+b0OhCQ9R2ehHGEAIkIVwth4Nxitn+O56vGrujKhSZ8aRdAqhXGvWsxfRttkxrE
         cmkZv/JnKbuf7BYH6ukNTmTVynKYWIp6YB7N9CQAw3bY6KK1mhoLxa7km8TX+A6I0sCl
         c3C/V3oR7jkWCRbQEhSSsL44W1AuzWtoXtSuy8OGjOwndEWIWhmnaJjP5CiGpyN4zElv
         p86w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Yh7m8wnx2UuEnHAk319xf0wP2Jdp56pmZOEqU01cZsk=;
        b=siToZezoXXg1qPzBbVhWRj/Qm2xyk0nJY5DenpI6UOyQ9TBUA9LwuDt/yhC33UwPPO
         1y5TXNm0sHUY58diQqEu2HL/etdXnh5m+E6bYKzkEg1ELKD6UN4qUGHTn3siXPX7zcZl
         nasKlyxHbJb+WNxg17s4PGHlk2cJWfvDcE7plq7eK+7rnfAHXZiuxM2oOY94/ItUps1r
         n1dtsIT8LFXc2XoJIeFioXhWbiEBfK3eREtTe98N2AcJjdfJ5E1r6nYWSIvqBH9y3Ba2
         aL3rB1dpteZx+YWt+SJpE5E2NM509DbPopa4H8HmxnYW0v7uqptyYWRHuwcRc0I1W8DN
         ZSKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3OGPtwjXP7X0QUkgPsDfYyvsrR3wtJ0ZfUfSczXzrs9iIZGVOG
	KAv6qg6JKc+/W+OFU4yJCr4=
X-Google-Smtp-Source: ADFU+vtDH+Om/2Xtj+gPeg94pkBHDZiMA1njwGZRcgsoxL2e3tlcR4A5GFJpsxORaKTXz94QPWa8uQ==
X-Received: by 2002:a05:6214:41:: with SMTP id c1mr9541135qvr.8.1584049032815;
        Thu, 12 Mar 2020 14:37:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6542:: with SMTP id z63ls1116127qkb.3.gmail; Thu, 12 Mar
 2020 14:37:12 -0700 (PDT)
X-Received: by 2002:ae9:dec7:: with SMTP id s190mr9349738qkf.303.1584049032386;
        Thu, 12 Mar 2020 14:37:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584049032; cv=none;
        d=google.com; s=arc-20160816;
        b=mTJG226LfrQCNUygpKmnCP701efbAPiG4DWcJPKcDuexcCqoJ4sjtda1gXL4A2wHFa
         AG9vz8Gb1NuJZvue5lA/SKpvEgzEtGSOHqLnIYy99ZWGUX1ZFlWKyIvQ769Wx+uPdN1M
         lGVXuwqJrNJf98wy3+FhLBsln+ucTU8igY5PCP1w8JtufgeEnPoT72FzUm92tVzdtDqZ
         qt9Q8pG4KtIlMbNQimBv9TX4cvqIikaEVIi7SaSe+1ICUfpcpPH8aMlTypbYBStptNxx
         Vu02GjAJmqbX2O60bvnUM6UYWEd1FegCQEDnMOjwDp0vVI2nLaRuS4ZfWiCMjy7GHNFA
         WsXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=otDTyif1JxNxdhkmFkrhZBBAigUQx1pxkqJwd5II138=;
        b=DdjjEfNN9BAYnL72swdiboi/4plm2cRaQzJrol5sOYnNidXwG1ft6kiICJWD6fI6ea
         a8d52I44l5DE6gajJrOLDITsxGEnwXALysOPFLBTUKoWDxFMZRPO0nQaRzC48JgMCjqq
         p6pNiPnuv3zJpDe79MbpF2zxBjPActilFUWWD5imrtHHYAbRgH5uIsgR8muvN0eAWJRa
         b4ME/gpBQZm47qcv4w6S/cThlS3msXABJOutTfHZkZ5p9UFWw6cQBhd99TuTnejo4wON
         dGGFmiPPgk3XPSf7v6prXz8Ht1QAB6gp38MprdkvBDHSJoCKBThJANH6wSUsxWjUFz72
         buHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3iktqxgkbaimz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3iKtqXgkbAIMz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com. [209.85.166.72])
        by gmr-mx.google.com with ESMTPS id 198si352138qkh.7.2020.03.12.14.37.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 14:37:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3iktqxgkbaimz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) client-ip=209.85.166.72;
Received: by mail-io1-f72.google.com with SMTP id z207so2729478iof.7
        for <clang-built-linux@googlegroups.com>; Thu, 12 Mar 2020 14:37:12 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:5b56:: with SMTP id p83mr10329254ilb.70.1584049032035;
 Thu, 12 Mar 2020 14:37:12 -0700 (PDT)
Date: Thu, 12 Mar 2020 14:37:12 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000dc81b705a0af279c@google.com>
Subject: WARNING in bpf_check (3)
From: syzbot <syzbot+245129539c27fecf099a@syzkaller.appspotmail.com>
To: andriin@fb.com, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, davem@davemloft.net, 
	hawk@kernel.org, john.fastabend@gmail.com, kafai@fb.com, kuba@kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, tglx@linutronix.de, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3iktqxgkbaimz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.72 as permitted sender) smtp.mailfrom=3iKtqXgkbAIMz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    13fac1d8 bpf: Fix trampoline generation for fmod_ret progr..
git tree:       bpf-next
console output: https://syzkaller.appspot.com/x/log.txt?x=167ba061e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=888f81f5410adfa2
dashboard link: https://syzkaller.appspot.com/bug?extid=245129539c27fecf099a
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12ba39c3e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=12bbb981e00000

The bug was bisected to:

commit 94dacdbd5d2dfa2cffd308f128d78c99f855f5be
Author: Thomas Gleixner <tglx@linutronix.de>
Date:   Mon Feb 24 14:01:32 2020 +0000

    bpf: Tighten the requirements for preallocated hash maps

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1300a2b1e00000
final crash:    https://syzkaller.appspot.com/x/report.txt?x=1080a2b1e00000
console output: https://syzkaller.appspot.com/x/log.txt?x=1700a2b1e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+245129539c27fecf099a@syzkaller.appspotmail.com
Fixes: 94dacdbd5d2d ("bpf: Tighten the requirements for preallocated hash maps")

------------[ cut here ]------------
trace type BPF program uses run-time allocation
WARNING: CPU: 1 PID: 9523 at kernel/bpf/verifier.c:8187 check_map_prog_compatibility kernel/bpf/verifier.c:8187 [inline]
WARNING: CPU: 1 PID: 9523 at kernel/bpf/verifier.c:8187 replace_map_fd_with_map_ptr kernel/bpf/verifier.c:8282 [inline]
WARNING: CPU: 1 PID: 9523 at kernel/bpf/verifier.c:8187 bpf_check+0x6dcb/0xa49b kernel/bpf/verifier.c:10112
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 9523 Comm: syz-executor700 Not tainted 5.6.0-rc3-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x188/0x20d lib/dump_stack.c:118
 panic+0x2e3/0x75c kernel/panic.c:221
 __warn.cold+0x2f/0x35 kernel/panic.c:582
 report_bug+0x27b/0x2f0 lib/bug.c:195
 fixup_bug arch/x86/kernel/traps.c:174 [inline]
 fixup_bug arch/x86/kernel/traps.c:169 [inline]
 do_error_trap+0x12b/0x220 arch/x86/kernel/traps.c:267
 do_invalid_op+0x32/0x40 arch/x86/kernel/traps.c:286
 invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1027
RIP: 0010:check_map_prog_compatibility kernel/bpf/verifier.c:8187 [inline]
RIP: 0010:replace_map_fd_with_map_ptr kernel/bpf/verifier.c:8282 [inline]
RIP: 0010:bpf_check+0x6dcb/0xa49b kernel/bpf/verifier.c:10112
Code: ff 48 8b bd 20 fe ff ff e8 02 56 2c 00 e9 bc cf ff ff e8 88 a0 ef ff 48 c7 c7 c0 8c 11 88 c6 05 c0 c7 de 08 01 e8 bd b3 c1 ff <0f> 0b e9 f3 ae ff ff c7 85 c0 fe ff ff f4 ff ff ff e9 d3 c6 ff ff
RSP: 0018:ffffc90001ec7990 EFLAGS: 00010282
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff815bfd81 RDI: fffff520003d8f24
RBP: ffffc90001ec7b90 R08: ffff88809ae22380 R09: ffffed1015ce45c9
R10: ffffed1015ce45c8 R11: ffff8880ae722e43 R12: 0000000000000002
R13: ffffc90000d36048 R14: ffff88809a7d4800 R15: dffffc0000000000
 bpf_prog_load+0xd92/0x15f0 kernel/bpf/syscall.c:2105
 __do_sys_bpf+0x16f2/0x4020 kernel/bpf/syscall.c:3594
 do_syscall_64+0xf6/0x790 arch/x86/entry/common.c:294
 entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x440539
Code: 18 89 d0 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 fb 13 fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffdd65517e8 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 00000000004002c8 RCX: 0000000000440539
RDX: 0000000000000014 RSI: 0000000020fed000 RDI: 0000000000000005
RBP: 00000000006ca018 R08: 0000000000000000 R09: 00000000004002c8
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000401dc0
R13: 0000000000401e50 R14: 0000000000000000 R15: 0000000000000000
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000dc81b705a0af279c%40google.com.
