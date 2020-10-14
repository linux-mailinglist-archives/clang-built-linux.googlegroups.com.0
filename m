Return-Path: <clang-built-linux+bncBCQPF57GUQHBBFORTP6AKGQEZWXXBMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2C128E030
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 14:01:26 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id z9sf897835vsl.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 05:01:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602676885; cv=pass;
        d=google.com; s=arc-20160816;
        b=lnXS+MmIcXt04lH0Qm/LS+eyO/DZGzgyGZBtUQY6Gf2hT5WyCTcr68vvj0/MxK9W89
         qfFr2EedyZZYuGuMUrQ0S8Di0L37qnTVLHSYEYcjuJn6cP6XWVGgUthdYj1xxJNVNs6J
         7fIoni0FvqmmxgzfKpzEU5SMajKi3IEvigwmP25wInIs3uxW+I79jixZhZqYnPxDiug+
         7RAP7j3Gj4SpbWYUrXL5wPZtk9lVKrhXBUf4H+VphX3QWsO/7mQJInmMla3PEvze1JCj
         2EgBsu5jwdu12Ongea8zp8nacjJ05RE6eYc8yOVlpPb1ufrd5FOMaAlBqPEU5wBMguJi
         wr/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=v5IWR3oxhX8fautcfmY89waZ3DgoFyP1YZWrRiJvw9A=;
        b=As8Snp+YkB8KjKH4ggxy5/kQjIYnEllIpl7teVEgeWLf2tlC2IKf3c91lPMCNLCYTY
         i3EaUNJfM/YQ6hB4y+JPccfT50YWSvy9XzNvNcntCme1sDYK5Fb8BIFoirIjKRompyGk
         Jm9ljWaJy7EnuCrNUU5GWxuShTMKpR6qvbYvMv/UY74ogPzwkwRwymnppuzRWsn9D3pg
         nJNYiOfI9imXUOmJgARkv7wwINIBFW+uaxGgy17ZlApmxMvKJIAopRlz7OhWWWLaO+6q
         iAwoFe+7DLXx4tS/bLCTyZbYXiIjOLIMhE1ORfzrzYDdbBaCXPcDDZZJs2MHUK7Ym+a7
         27cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3loigxwkbaimz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3lOiGXwkbAIMz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5IWR3oxhX8fautcfmY89waZ3DgoFyP1YZWrRiJvw9A=;
        b=CVXfDCU+hLXiRKEDW3SoIGhfxuWelGTozK0vp8AhPP9sdzLGHeBg38Blce/bB/2GD+
         d/pS/aqLx+vpEITBxq7PLrpwxvVNwCecolh8lMi8FMKM9ddrm7i+GeRAP01iCHvCMwZK
         C8YAYh7Cb6g5fBkKRhfCX/z9NjE4KZ0cH+1/++20j/SCumeBxj0whQf5Pmc7oN/9Ek3n
         aJ8EcA8GUgEk8Ew8lQAYMCJq57k/lS0zVqibggcwqqz0K5ItdOGO0u4X0In90oAg2G0C
         RxKbllGhOPUKhBLgMxnzOn/g+YFaAOsLz5HJ//V3MHKZimSybPBJCse9yxVoSzKll9YO
         iV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v5IWR3oxhX8fautcfmY89waZ3DgoFyP1YZWrRiJvw9A=;
        b=IL05nhtZSR8EoCc+w4mJTdSNGDWwXRl+Ovu3upG9ZlKVBIUiD8wZV6yzZ5hiKNRjy8
         Bdq+/Rk7KaXcaJO5FBL2wSCc5LM8qq/a+yTzkOvR9XMrQ+rHjTccC3hGwZptLRAD4dyd
         U68Y9CSyg/h7X2LWZj+eBLC20M80zgsHbZ3CCVJFey9DyCx3CWZf41ozyvCFSdQdfNLy
         kRAkZN93QU68kW66QopzwuiE7TX0XKzaakX1z07XCqb5x89Zqb7BnSlsqKKU/pfk/JHz
         deVK3mimsSlddtftyt4T2pKYZhNAo6tzvkNRhdZqB5G6Y9wJFTsb49b9DxiTOLrharB0
         BJkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lIsWPyVHLQwtOttCRX5FWTH2MrAP+sTZTfNUbIO3HTmF3TUzH
	db80CcbOiSkERWnT5vJlJcA=
X-Google-Smtp-Source: ABdhPJyQsPk+GsSTDLu0Ai/STiUuHsLB+F/+hWniqQxVjV/Zysvk6PlczrmdNnhQON4emaTrUVjjkA==
X-Received: by 2002:a67:ee0c:: with SMTP id f12mr2801113vsp.52.1602676885713;
        Wed, 14 Oct 2020 05:01:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7684:: with SMTP id v4ls205328uaq.10.gmail; Wed, 14 Oct
 2020 05:01:25 -0700 (PDT)
X-Received: by 2002:ab0:6988:: with SMTP id t8mr2986732uaq.18.1602676885086;
        Wed, 14 Oct 2020 05:01:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602676885; cv=none;
        d=google.com; s=arc-20160816;
        b=DTyJ/Nud+tA4kvqGPY+zMw3iQelQ0Jh6QuYgxG0B8dRDTrXCZUD5hmyqT53/mBuS5j
         RW2edhcqs1YPw8plpQN+Ti+9PelAR008Nz4noJ7g7Xne2J2kXygPU+YuvcTzqOuhptj/
         D48MFPTRYYllEdMU495rqMk7hGdF3Qtp/Pya+57jD6MXRxke5FlbERUF06H//Qq9+/Qn
         k1PtDIv8usjutnAn11FQYwzwVddmQYX7FOFsBgILPZ1c5G9Yn7bdtT0sI02RF4v1C4CD
         OSKDjaIMzkp0j8ZM3hA3RCceiTCvHGdIa7qK0FRVb3HjlFGwnJexvpx1Zr0lrAY77qbe
         6Vcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=lmIzmeZ6JEWQDgHZewUQdQ9dPptB1ZZcDqf5FZlF1bk=;
        b=VY8F+rEQtouK2IfHvy89Tx+1oh41zmp3CiWo20k/Yi8kri0T7clK4/l8zKcdGl91vS
         tYrUP8fWiUVfCuffkA4NK0cs2t6+ehu+hMmYLEfOzKY/Tfo3btKMMY+IaROa6R1u6wDI
         F82oo/EmrQQ/MvjGYEFPV2JQP4AIfFGVzb7lnOOwtwhRH7M1xjl7+1lSGfaRCrR7Webq
         GfFaFnzZ8bPBiRSk5beD3iSlwbQuamBy/I1rrk2caERs4piwpz9SOGw2Xzy6qIWjkLdv
         S8sbe9spnVmdaNvOP+Zjawu2ke/7YtLk2OgJkZ8BXoBR3p28j9IN6FnEr2nLgnQPIPsK
         Z74Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3loigxwkbaimz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3lOiGXwkbAIMz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com. [209.85.166.71])
        by gmr-mx.google.com with ESMTPS id r131si134892vkd.0.2020.10.14.05.01.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 05:01:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3loigxwkbaimz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) client-ip=209.85.166.71;
Received: by mail-io1-f71.google.com with SMTP id w16so578272ioa.2
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 05:01:25 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6638:606:: with SMTP id g6mr2893807jar.0.1602676884566;
 Wed, 14 Oct 2020 05:01:24 -0700 (PDT)
Date: Wed, 14 Oct 2020 05:01:24 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000064f6cd05b1a04a2c@google.com>
Subject: WARNING in __rate_control_send_low
From: syzbot <syzbot+fdc5123366fb9c3fdc6d@syzkaller.appspotmail.com>
To: clang-built-linux@googlegroups.com, davem@davemloft.net, 
	johannes@sipsolutions.net, kuba@kernel.org, linux-kernel@vger.kernel.org, 
	linux-wireless@vger.kernel.org, natechancellor@gmail.com, 
	ndesaulniers@google.com, netdev@vger.kernel.org, 
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3loigxwkbaimz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.71 as permitted sender) smtp.mailfrom=3lOiGXwkbAIMz56rhsslyhwwpk.nvvnsl1zlyjvu0lu0.jvt@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    bbf5c979 Linux 5.9
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=12dc474f900000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3d8333c88fe898d7
dashboard link: https://syzkaller.appspot.com/bug?extid=fdc5123366fb9c3fdc6d
compiler:       gcc (GCC) 10.1.0-syz 20200507

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+fdc5123366fb9c3fdc6d@syzkaller.appspotmail.com

------------[ cut here ]------------
no supported rates for sta (null) (0xffffffff, band 0) in rate_mask 0xfff with flags 0x20
WARNING: CPU: 1 PID: 169 at net/mac80211/rate.c:349 __rate_control_send_low+0x4eb/0x5e0 net/mac80211/rate.c:349
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 169 Comm: kworker/u4:5 Not tainted 5.9.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: phy9 ieee80211_scan_work
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x198/0x1fd lib/dump_stack.c:118
 panic+0x382/0x7fb kernel/panic.c:231
 __warn.cold+0x20/0x4b kernel/panic.c:600
 report_bug+0x1bd/0x210 lib/bug.c:198
 handle_bug+0x38/0x90 arch/x86/kernel/traps.c:234
 exc_invalid_op+0x14/0x40 arch/x86/kernel/traps.c:254
 asm_exc_invalid_op+0x12/0x20 arch/x86/include/asm/idtentry.h:536
RIP: 0010:__rate_control_send_low+0x4eb/0x5e0 net/mac80211/rate.c:349
Code: 14 48 89 44 24 08 e8 d4 8d b0 f9 44 8b 44 24 24 45 89 e9 44 89 e1 48 8b 74 24 08 44 89 f2 48 c7 c7 40 24 5f 89 e8 b7 ca 80 f9 <0f> 0b e9 e0 fd ff ff e8 a9 8d b0 f9 41 83 cd 10 e9 02 fc ff ff e8
RSP: 0018:ffffc900013f7688 EFLAGS: 00010282
RAX: 0000000000000000 RBX: ffff88801e243468 RCX: 0000000000000000
RDX: ffff8880a884e100 RSI: ffffffff815f5a55 RDI: fffff5200027eec3
RBP: ffff88805f373148 R08: 0000000000000001 R09: ffff8880ae5318e7
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000020 R14: 00000000ffffffff R15: 0000000000000090
 rate_control_send_low+0x261/0x610 net/mac80211/rate.c:374
 rate_control_get_rate+0x1b9/0x5a0 net/mac80211/rate.c:887
 ieee80211_tx_h_rate_ctrl+0xa0f/0x1660 net/mac80211/tx.c:749
 invoke_tx_handlers_early+0xaf3/0x25e0 net/mac80211/tx.c:1784
 ieee80211_tx+0x250/0x430 net/mac80211/tx.c:1926
 ieee80211_xmit+0x2dd/0x3b0 net/mac80211/tx.c:2015
 __ieee80211_tx_skb_tid_band+0x20a/0x290 net/mac80211/tx.c:5351
 ieee80211_tx_skb_tid_band net/mac80211/ieee80211_i.h:1986 [inline]
 ieee80211_send_scan_probe_req net/mac80211/scan.c:610 [inline]
 ieee80211_scan_state_send_probe+0x39f/0x910 net/mac80211/scan.c:638
 ieee80211_scan_work+0x6df/0x19e0 net/mac80211/scan.c:1071
 process_one_work+0x94c/0x1670 kernel/workqueue.c:2269
 worker_thread+0x64c/0x1120 kernel/workqueue.c:2415
 kthread+0x3b5/0x4a0 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000064f6cd05b1a04a2c%40google.com.
