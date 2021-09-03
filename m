Return-Path: <clang-built-linux+bncBCQPF57GUQHBBAXKZKEQMGQEZM5ED6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAC340086F
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 01:51:32 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id u21-20020a631415000000b00268f723a4d3sf353203pgl.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Sep 2021 16:51:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630713091; cv=pass;
        d=google.com; s=arc-20160816;
        b=PNbeBjRPKxR7SH2+IEtaQ0H2ar4NZh5oxoh9n5K2sSjXGaySuri6/RCs7dFSCecQTP
         8X9JCG/pQhyQfmLfpwYxkyb9PA4vAOQLOqfVY1gZ6VPgJ12j+2EWzxqAcwxhcWMLpjzN
         HWkg/etQJEIO3Fxa2iWg5+hzE2w+BASBleE6UHbbenhmiERW0KcCdxrBvgbuD7220xlc
         pVl4XJu+MsNzcDrQh3grss6AbBtfL9LfAJ9K9Xo8aNl8Be3uLu7wUryv6Q78larW58ia
         fhSXdr0Wcl4a8Z4jT1fkLnLXSXk6aOWVRFTAm7/CJB9961/C7ybKbNimVs+HdJ3yft4g
         3XNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=YANdPThujGMbApjYSTEZg3np0PaW6tRLPvhcaMGb7dU=;
        b=iR/oqHx7VC2RPzXv0wsmfE8BlkbPxDpygHTJyGJ6Y2LM7m8Jr+hXN3/sKOasmM2lid
         gV3kbDTsi9X5ss5M3iRjynfkPWegkA4k3guDqdeV5tAYAMyNy0UY+xGXSlyVcR8RbJel
         MLptQPx3qK0WVvtDvAwsmF+X4Rby/Xel1fVx5yhsHNNhg2oIiG31HKkTC3nI4bAGZfhJ
         Gq5LsQSsdI/g8OOM0NhQqxwlz202HuXnOcNjqqSXoPA4KQjg9IKtb/gL7LMwl3hQq4BA
         X+Y8AnrgTPylU/imLgyvFncZEDLZENjLXP+I//d/iku3ZgkrWTC+0ZSIC2QJ/fs/5bqk
         usGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3abuyyqkbaey067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3AbUyYQkbAEY067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YANdPThujGMbApjYSTEZg3np0PaW6tRLPvhcaMGb7dU=;
        b=TIF40vGaKfeY2jNhTcRkaB1MP5vFyJbsf+0yjfgw48+d+uQLTyaMgIWsToABQj3FqT
         2DkAfZn3uOtSY3JI3i4MPwv3f7z5MYfjJ/PeTqcEpo511eL+nFCPiHJXCdaOEmPWV7yy
         5iMbisBxThHFK9WIwMiT2/xj7OB8K4FggQiczYXm2riJOVNsL0WJ7vh7Pm2mY32gsEdR
         UclKxYq0+rUbXnPDlVCPB9uzzmR8jk8O98MCaa20BgsSm7U2qb/ECGmvd1DOTglJJOO3
         t3qbj0iTwIbcEXwJr5N8EP91MLVVPWhMWvWkVXSTkGnmYSa5moGjgxlRWT6UPcbZz9Gj
         OFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YANdPThujGMbApjYSTEZg3np0PaW6tRLPvhcaMGb7dU=;
        b=SA3WSFfDw/E+n1KPxVhCfvHC1mAYycamqo3FMEnvNjPKBl8Y4QJC2rC7Xbz4KLC4Eq
         M1RzRGK/WTAqgOV9p6hp3gMHPMuVT5oTDadQLUrv9qCC3UfX44Le6xXYUoajNvn1Ja2e
         a6BDIYGX6nKMukHbLFPNQmKNrxgEEY3E60SgB/WduVzJpfQF2e4Iut6hMx3CAR3dkQlY
         dZBmT1Lw1rXUs3E/oXe6nivUcVXiqdanki75vYoPHieYiDSdz9w7NknkBZxEIKPBgUUl
         /653NZ/P6TiZsBb1c16tszRX+Va5zqGUgk4/h0XirjwlIfUx/JvNHQThmYnOaENIhX+c
         7e1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530caE+QMqv1GWEsMVxZZn9aEtiAA553MdzCNXR30g1M5tI8kRFU
	dBp+pXiD+sd58gkZEZu4Ny0=
X-Google-Smtp-Source: ABdhPJx77EppljzUf04M4H7NGSG9Xduq72Id3/2TKHypLodpvJnetC1gCIcJoffYXnvUXwdqgFZRMw==
X-Received: by 2002:a63:558:: with SMTP id 85mr1255896pgf.45.1630713090795;
        Fri, 03 Sep 2021 16:51:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls317259plb.10.gmail; Fri, 03
 Sep 2021 16:51:30 -0700 (PDT)
X-Received: by 2002:a17:90a:9318:: with SMTP id p24mr1391691pjo.138.1630713090065;
        Fri, 03 Sep 2021 16:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630713090; cv=none;
        d=google.com; s=arc-20160816;
        b=V8YcA6/i9U1I+DjXGXJUEJvXC22Rpv2Ntq03VeIL76XHyRlSXw0/0vraly+PRlhm3V
         TlS65tiFGxazIR1s5Rntp8IvfskCmtaEQm3GNxYktNyEsJ058elvp8heoeSJS2DWzt7p
         ct1DK+GBOUM02GMhxUO5x/CTy+F9mK0sWRHk6wGvFf0pkm4e3daHTxChrc1xF6VevFa4
         q6e3ZTwleNi7Hol8QNwQbOSZYy0dyTq9SQAhOUgPGtR+8+7jc8BvGvHlt810G86TC0wD
         SaV/HNHQRWPACMf643l2kZaRGHbJIt5tqqgk8hd2/e0ZiDOmRc0yiaUoCYHdrWlkls5h
         h3Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=RZPnY1Txr2WZc9qQaiK6kuIvgJ77tDn0sABgbez76/w=;
        b=SNwLXb6Z+6w4gPFU1OdTaTJtYf4BqN0j4QHYMKQ4KoTkKfEAcAIzRgU7DwAfrV1Wb9
         NsyQihBYGdB8KtP0rD5bGdC7++hw69UQY+zfY3WeoTjyt928bX2WFnQZO41ERmcKgmMN
         2Fbrt3dzvz8/sntRfyyCchJa2thIQbW98Q04F/zXshZoO+YoiRq1q4EzpQiM7xWwLiHI
         Oe/QxVqHf4wypR5T2rXoM0s+KxPRm5sLIcz6pCw/kFQxYwQSQe3pMmuavHGkVlkTQwOt
         SpCFYkgTn51XIiY2Emxa2lKAjNhWS/3Mka5sCj3zuuZYy4CaY2aTsIatHA5RnUgPZ+nQ
         HpRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3abuyyqkbaey067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3AbUyYQkbAEY067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com. [209.85.166.199])
        by gmr-mx.google.com with ESMTPS id 136si54395pfz.2.2021.09.03.16.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 16:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3abuyyqkbaey067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) client-ip=209.85.166.199;
Received: by mail-il1-f199.google.com with SMTP id s15-20020a056e02216f00b002276040aa1dso533846ilv.3
        for <clang-built-linux@googlegroups.com>; Fri, 03 Sep 2021 16:51:30 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1354:: with SMTP id k20mr1016098ilr.133.1630713089541;
 Fri, 03 Sep 2021 16:51:29 -0700 (PDT)
Date: Fri, 03 Sep 2021 16:51:29 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000006ecc0805cb1ffa2d@google.com>
Subject: [syzbot] WARNING: kmalloc bug in check_btf_line
From: syzbot <syzbot+3361d05142f53b068ca1@syzkaller.appspotmail.com>
To: andrii@kernel.org, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, davem@davemloft.net, 
	hawk@kernel.org, john.fastabend@gmail.com, kafai@fb.com, kpsingh@kernel.org, 
	kuba@kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org, 
	ndesaulniers@google.com, netdev@vger.kernel.org, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3abuyyqkbaey067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender) smtp.mailfrom=3AbUyYQkbAEY067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    a9c9a6f741cd Merge tag 'scsi-misc' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=101320a5300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7860a0536ececf0c
dashboard link: https://syzkaller.appspot.com/bug?extid=3361d05142f53b068ca1
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.1
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=121ce115300000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=110adea3300000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+3361d05142f53b068ca1@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 1 PID: 8408 at mm/util.c:597 kvmalloc_node+0x111/0x120 mm/util.c:597
Modules linked in:
CPU: 0 PID: 8408 Comm: syz-executor725 Not tainted 5.14.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:kvmalloc_node+0x111/0x120 mm/util.c:597
Code: 01 00 00 00 4c 89 e7 e8 8d 12 0d 00 49 89 c5 e9 69 ff ff ff e8 f0 21 d1 ff 41 89 ed 41 81 cd 00 20 01 00 eb 95 e8 df 21 d1 ff <0f> 0b e9 4c ff ff ff 0f 1f 84 00 00 00 00 00 55 48 89 fd 53 e8 c6
RSP: 0018:ffffc9000c6df720 EFLAGS: 00010293
RAX: 0000000000000000 RBX: ffffc9000c6dfe18 RCX: 0000000000000000
RDX: ffff88801ff68000 RSI: ffffffff81a4f621 RDI: 0000000000000003
RBP: 0000000000002dc0 R08: 000000007fffffff R09: 00000000ffffffff
R10: ffffffff81a4f5de R11: 0000000000000000 R12: 000000020008a100
R13: 0000000000000000 R14: 00000000ffffffff R15: ffff888014594000
FS:  0000000000ba0300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f63094ed6c0 CR3: 000000001ddbe000 CR4: 0000000000350ef0
Call Trace:
 kvmalloc include/linux/mm.h:806 [inline]
 kvmalloc_array include/linux/mm.h:824 [inline]
 kvcalloc include/linux/mm.h:829 [inline]
 check_btf_line+0x1a9/0xad0 kernel/bpf/verifier.c:9925
 check_btf_info kernel/bpf/verifier.c:10049 [inline]
 bpf_check+0x1636/0xbd20 kernel/bpf/verifier.c:13759
 bpf_prog_load+0xe57/0x21f0 kernel/bpf/syscall.c:2301
 __sys_bpf+0x67e/0x5df0 kernel/bpf/syscall.c:4587
 __do_sys_bpf kernel/bpf/syscall.c:4691 [inline]
 __se_sys_bpf kernel/bpf/syscall.c:4689 [inline]
 __x64_sys_bpf+0x75/0xb0 kernel/bpf/syscall.c:4689
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x43f0a9
Code: 28 c3 e8 2a 14 00 00 66 2e 0f 1f 84 00 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc34347988 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 0000000000400488 RCX: 000000000043f0a9
RDX: 0000000000000078 RSI: 0000000020008a40 RDI: 0000000000000005
RBP: 0000000000403090 R08: 00000000004ac018 R09: 0000000000400488
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000403120
R13: 0000000000000000 R14: 00000000004ac018 R15: 0000000000400488


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000006ecc0805cb1ffa2d%40google.com.
