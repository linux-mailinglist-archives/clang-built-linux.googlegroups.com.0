Return-Path: <clang-built-linux+bncBCQPF57GUQHBB6OL6D5QKGQEOXSPY5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E12284819
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 10:08:26 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id z12sf7620528qvp.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Oct 2020 01:08:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601971705; cv=pass;
        d=google.com; s=arc-20160816;
        b=ipqL6QnhuJFnzZ+qp7aBCb2S0nVo4tVSYcGN8xxWZjSRkNdZO2nqgB4y9GFHSrEhHh
         Gr7/KOP8g+fLgGdOBbA0v8cwvALp6ZUpxPzieO/tajc1VRVLy7YJORsWoHL7u6px8iaQ
         5t32CpdehmFyol1Gr8vfhFdH19BVHz2PfqO92QW2f25MZ1AuKa3QqIeIB7q58oC7Z1S4
         Wl7AJZ55mi+ucPSruaRnuSTH8SFMhibFTpXPorR2tI98UHPyKcn/UuxdxyXcBSuaGuZH
         8oR/2lAV0M9m99wyOV0l69tWxPohxBpTy60ISe2M+qBe/+CwHPXeaY+q1DZGtfPd1FtB
         xg9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=JBCTYa1gg6AoAZt3940pL3+jxK6EDsCmPeHdC6/mysE=;
        b=Kh9H4qGM62JA4asxyE1ZKKem9GFNWN1mNaTA/6HoB8FpcRReYRk3N3dJoRLWJs+wC/
         aVtr5rt9IwDuSPwEQEKey1OcpNKCq+Y1IfkOm++m4fzw5YtddMIUV9EuUmR9Jd/QiJYK
         L4UaYMi9bde7jGpPYk64Ziaq/cj63El0LFzUwtC7sWEm4M12YFNIQzGDzSvw2Qr6SWo0
         yf0mv/CPYUw7wzkUS/cxxhj71GL5AfuDnSJGHDKrHPSENIi6hpiq8nRfotMATXeLgrGK
         2z3YX4cwSzT5YEB7BJtFIfue+B+4y99AqpXjYJgwqxMZ1RYMWGhPDZYWgACGMGbDH0kB
         olVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3-cv8xwkbadclrsdteexktiibw.zhhzexnlxkvhgmxgm.vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.208 as permitted sender) smtp.mailfrom=3-CV8XwkbADclrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JBCTYa1gg6AoAZt3940pL3+jxK6EDsCmPeHdC6/mysE=;
        b=tIDt02dGPJXEQERPPyyYL1g4ml/sukXxCKeYwJON0O9GMHhambCMY6ZO//Of4tz2Rx
         lASHf43+180Hsl11K6gbB6dWTgGdTUN8IgysuvHPCIvxTYpMnOJriJ3Kj60DL0lcQwQ2
         PSdINQGvpY5mEZ00ntIQuoFPOK/X1dykZs8bF44VgNnvo3SXFpejtlKk7sbcBJVUA0DO
         ZrGg0NzBbMheOP63qI/nUgWJlOnJf+WriliAOky0nYTCDEw/CaEkWv4tfahdG/kP0wbS
         0s5zFAE5Uqbndsg/tGu+XakUQxxjpViWUgaaOkryp6AnFgQGttMonuUB2a8h1p7zADXd
         5kRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JBCTYa1gg6AoAZt3940pL3+jxK6EDsCmPeHdC6/mysE=;
        b=Dw9RxL69r42Eb0aUbnTDOuoo/+TyLGUiwtXHv86UOdGJOsHWaY0qxQzP0bu5kYGYOf
         DXP/e26K3GXfB4OL8uEeMnG9PT5Mu+RPmdTkEmT7ZuXdSjfUiV98cWmDC9pmhWsrV58I
         W4U7ULoBGs2UwQFz5+DWsILvlfo79VzA/OTNRzI87HRO/FFykWo3XMJUMmOiq1ZbXrRr
         U0HQVr8qcDWEjWYkgt91LrAS0UIgY2hWkXWJnum2bDaD+dpb6uL5phLzO/zlwqflSpEU
         CLXhCU08ALKMdJcavxRFGXB/mG31J+Hm6nJEPVA4md4NYtXCVPfH06eUQgAxrO1MMsvV
         zVJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334BLJkN9WdFK9A9kgCNbiKtEts8P3/8fwnVl+MLr+LMhozOioj
	6pgpbzmdqAo40U+0u2vKAhk=
X-Google-Smtp-Source: ABdhPJzuqlDafoBSF+felr8BwZn1A9t8zxStrkd82s20U0SUqtxPvksXW5JOqulw6LoOJINk3b36Sw==
X-Received: by 2002:aed:2c06:: with SMTP id f6mr3980114qtd.362.1601971705277;
        Tue, 06 Oct 2020 01:08:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:48c2:: with SMTP id v2ls2915536qvx.4.gmail; Tue, 06 Oct
 2020 01:08:24 -0700 (PDT)
X-Received: by 2002:a0c:a504:: with SMTP id y4mr3551660qvy.52.1601971704756;
        Tue, 06 Oct 2020 01:08:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601971704; cv=none;
        d=google.com; s=arc-20160816;
        b=fteNiGjEEb6ifVDvJAb1lz7mEpDsc8U6qKqmvXS335L/4UuZhnXqFvw16ug1e7vm39
         ptbXpKlPDH4cYvvqRXJ7KFLFLlx6+l7mSfH2yP5INjw/c6WQxO11BgqWcedcnYdUp7pQ
         jk5eoNvqGKW2baPEZ3CuVMa6DMU5hH5TnLXaKGcVpwDSRDID4fR5YoxZ8UHkYOpeP3xd
         +0y2pL/04kcv3shwQBqKd8Jxc5HuVSFUGtbJpA6ZfYNpPGYdUXE3Lc/gkBYo3doz0YOX
         lGjSnQGBqTlS906cn2f0ewbSZfF8mq9/5LRExKemIYRxUBYV1fd34WzIoZxbHjjWvpyC
         XWIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=vsr+coIcVgClKoMDt/6umhRFqiKF3X7GLy13qBxsSLY=;
        b=GXvdWC3/vdrXy9BoY54yybcKJWbDHCgQyC7z+tQrKvPgjbWYYRhyQuCg3CZXgWu0Sk
         Hq6+hZLEGGUoc1CyI0ifLFXbDULKuHhG3yvtPAuFfjmeVnZSjcrYKmOy4x1trmE9hDcY
         fUtmGb7olYU4nPvp3jlCbwEQNI6a7HtYykkP9cs7E++BpJKjSX84TbIWgJmYQAVOcoCv
         LXDodJVkGAYh33oDVilvR/5/i6b0LlqHA9CgBKLx3R1/3CgwY3ELLK51mREcocY+ckl0
         gPt9x2Pl1xMkQIpEwiP98W5hTY7WRSIvy6y/bYyqSRnoMsWlbWJVdwEMyEp6G3VBF2MK
         uxYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3-cv8xwkbadclrsdteexktiibw.zhhzexnlxkvhgmxgm.vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.208 as permitted sender) smtp.mailfrom=3-CV8XwkbADclrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f208.google.com (mail-il1-f208.google.com. [209.85.166.208])
        by gmr-mx.google.com with ESMTPS id s76si154166qka.5.2020.10.06.01.08.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 01:08:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3-cv8xwkbadclrsdteexktiibw.zhhzexnlxkvhgmxgm.vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.208 as permitted sender) client-ip=209.85.166.208;
Received: by mail-il1-f208.google.com with SMTP id f89so6498322ill.1
        for <clang-built-linux@googlegroups.com>; Tue, 06 Oct 2020 01:08:24 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a6b:e714:: with SMTP id b20mr127393ioh.109.1601971704270;
 Tue, 06 Oct 2020 01:08:24 -0700 (PDT)
Date: Tue, 06 Oct 2020 01:08:24 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000005f92b905b0fc1a5d@google.com>
Subject: WARNING in ieee80211_check_rate_mask
From: syzbot <syzbot+be0e03ca215b06199629@syzkaller.appspotmail.com>
To: clang-built-linux@googlegroups.com, davem@davemloft.net, 
	johannes@sipsolutions.net, kuba@kernel.org, linux-kernel@vger.kernel.org, 
	linux-wireless@vger.kernel.org, natechancellor@gmail.com, 
	ndesaulniers@google.com, netdev@vger.kernel.org, 
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3-cv8xwkbadclrsdteexktiibw.zhhzexnlxkvhgmxgm.vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.208 as permitted sender) smtp.mailfrom=3-CV8XwkbADclrsdTeeXkTiibW.ZhhZeXnlXkVhgmXgm.Vhf@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    c2568c8c Merge branch 'net-Constify-struct-genl_small_ops'
git tree:       net-next
console output: https://syzkaller.appspot.com/x/log.txt?x=16e2fb4d900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=1e6c5266df853ae
dashboard link: https://syzkaller.appspot.com/bug?extid=be0e03ca215b06199629
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1790e83b900000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=111a5bc7900000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+be0e03ca215b06199629@syzkaller.appspotmail.com

netlink: 20 bytes leftover after parsing attributes in process `syz-executor823'.
------------[ cut here ]------------
WARNING: CPU: 1 PID: 6878 at net/mac80211/rate.c:281 ieee80211_check_rate_mask+0x1af/0x220 net/mac80211/rate.c:281
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 6878 Comm: syz-executor823 Not tainted 5.9.0-rc6-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x198/0x1fd lib/dump_stack.c:118
 panic+0x382/0x7fb kernel/panic.c:231
 __warn.cold+0x20/0x4b kernel/panic.c:600
 report_bug+0x1bd/0x210 lib/bug.c:198
 handle_bug+0x38/0x90 arch/x86/kernel/traps.c:234
 exc_invalid_op+0x14/0x40 arch/x86/kernel/traps.c:254
 asm_exc_invalid_op+0x12/0x20 arch/x86/include/asm/idtentry.h:536
RIP: 0010:ieee80211_check_rate_mask+0x1af/0x220 net/mac80211/rate.c:281
Code: 45 85 ff 0f 84 86 0c 00 00 48 83 c4 10 5b 5d 41 5c 41 5d 41 5e 41 5f e9 bf 8c a1 f9 e8 ba 8c a1 f9 0f 0b eb e4 e8 b1 8c a1 f9 <0f> 0b eb db e8 e8 4f e3 f9 e9 f6 fe ff ff 48 89 ef e8 db 4f e3 f9
RSP: 0018:ffffc900055274b0 EFLAGS: 00010293
RAX: 0000000000000000 RBX: ffff88808a7d0c00 RCX: ffffffff87d4fa14
RDX: ffff888091b2e000 RSI: ffffffff87d4faff RDI: 0000000000000005
RBP: 0000000000000000 R08: ffff88808a7d1e58 R09: ffff888091b2e900
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 00000000ffffffff R14: ffff88808a7d0c00 R15: 0000000000000000
 ieee80211_change_bss+0x53c/0xc20 net/mac80211/cfg.c:2314
 rdev_change_bss net/wireless/rdev-ops.h:394 [inline]
 nl80211_set_bss+0x76c/0xc70 net/wireless/nl80211.c:7009
 genl_family_rcv_msg_doit+0x228/0x320 net/netlink/genetlink.c:739
 genl_family_rcv_msg net/netlink/genetlink.c:783 [inline]
 genl_rcv_msg+0x328/0x580 net/netlink/genetlink.c:800
 netlink_rcv_skb+0x15a/0x430 net/netlink/af_netlink.c:2489
 genl_rcv+0x24/0x40 net/netlink/genetlink.c:811
 netlink_unicast_kernel net/netlink/af_netlink.c:1304 [inline]
 netlink_unicast+0x533/0x7d0 net/netlink/af_netlink.c:1330
 netlink_sendmsg+0x856/0xd90 net/netlink/af_netlink.c:1919
 sock_sendmsg_nosec net/socket.c:651 [inline]
 sock_sendmsg+0xcf/0x120 net/socket.c:671
 ____sys_sendmsg+0x6e8/0x810 net/socket.c:2353
 ___sys_sendmsg+0xf3/0x170 net/socket.c:2407
 __sys_sendmsg+0xe5/0x1b0 net/socket.c:2440
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x4419c9
Code: e8 dc 05 03 00 48 83 c4 18 c3 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 7b 0d fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffdbf57fbe8 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00000000004419c9
RDX: 0000000000000000 RSI: 0000000020000140 RDI: 0000000000000004
RBP: 000000306e616c77 R08: 0000000000000000 R09: 0000002000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000032
R13: 0000000000000000 R14: 000000000000000c R15: 0000000000000004
Kernel Offset: disabled
Rebooting in 86400 seconds..


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000005f92b905b0fc1a5d%40google.com.
