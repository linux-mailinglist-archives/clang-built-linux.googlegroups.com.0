Return-Path: <clang-built-linux+bncBCQPF57GUQHBBKEB3X4AKGQEUUEX7XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 1022B22890F
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 21:23:22 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id f66sf14188557ilh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 12:23:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595359400; cv=pass;
        d=google.com; s=arc-20160816;
        b=p2I+7+t0d2wrLBxlA7tYhUaZBP1BqTKoGbTNY/vL8tnThYwPaNxVMOe7hEUfsoYofP
         bY3+KXBIjDfLSWqJY2Z6G1tG9jJLTN80+SA2ZmayEeTu98CAzoSl6729Wgg9OlhJiMb8
         DBcI5X/Pt50P7KKMV+54be9AqLK7Ai6VPIodTVqJYBX6TGtx4ts3eQZ8gzyigMDMDhh+
         nKbpk6aC0dI1llvKFegZg9SK4mqATaGWlpHBH4jjLU7lqHhD0ucIfv+eYYU7VATAAE/L
         KYA4F2NsTlSNxB7UNiiQIONU1/ZYgY21qDYJBMZkhhNb5j+NyTrdK3fb8rWchUjZphwp
         JxSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=/rbGbfgwFBjBkoxBoedasVP7DfaikduWqlj2e5e8l5Q=;
        b=eaR3KTKD/8XuHjyeCN194irUdU2mdGakYB/CTfzk4pTn1a1sOyBsEHUp9BvcaV8H42
         X6j9/cWzXJ43/5SrZQnU50ay3q9GKzeU6FoUR4F4ryQpMfoyd4uASGtQx4A6SWblZBHm
         S3vD7lzEL7kGg2/o93j0Skzcc5PTLIIvNOADS57ZcTMavEBwSq7pnWN9xJmxxgGprYp0
         72aSLynYV3miDsYCqMyvRTT8Z43Xbojxtrx8RGFf4yZxTJO5fKRtQqDY5rj1YO/aWMyx
         rTYY0Fj++tuhTR40s7sj3dkk7LwWTlN1XXqanKK2jfFqPm4SpYHUJbkh8PY0QiLUdR1I
         NL2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3qeaxxwkbaiu178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3qEAXXwkbAIU178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/rbGbfgwFBjBkoxBoedasVP7DfaikduWqlj2e5e8l5Q=;
        b=tfLgBPLH4Tzj+sGrrR4SoMHkFNAqW1/A2Elnr4s5k6WsaT89vaCVmLcb3s6Gm8SAQj
         JNJ0MJNxLOTZ/z5+i7BrSWb6GN4vxSK3jRuC8qgpQc13DD57mFYPB3Nlnd5XVpaWop5M
         NVDgdyhz+tqB7c6PvBZG7VJp1QnVkQ47DgyZcMHeoy/1+qw9S7Wz+vVavx0J5AoxCZR1
         xmCR5MfhJ5e3KVsjq1dLSjZzjIxbaohdcstH+VROrLvgCkvmq9wOuR5D/1VpKPuMIyWU
         DVg+KW//h/PHb54Sva6QYPYseoWdlqeg0erx0VrU6b08Hkq0uI7eOwSl/YY/EFVGM5/H
         lpdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/rbGbfgwFBjBkoxBoedasVP7DfaikduWqlj2e5e8l5Q=;
        b=Qm6jcSJnrPuPZm0JKLNPAC/htEViW6OlR/MyZAY6OZYr2AHMQ7sRCY+QuBCO984G+Q
         rMglSZ1X/BPBWftFh+zQQv3Itj6fKM+bx4dGSdspEwAupVjltLT2Kr5eUmtprOSOHWH0
         1xNZitYYvON9SSELF8Z79wBL6cZIDjtNWzuqYfzBtwn6V7GynYjO8kUoHHunzw0VWLie
         TzuY91Si21cCn0s4sooYTv0gVk7xiZDCSn5QpYNtNTEJ3Zwd6wogEF9SAdZvwV1Rzfqo
         JyfnYAJm8nivmhNr5hYrfZJy/g/pQ4WTCSbFPaD5aQg09r6bEjCuuWoPi0bzfYsA5Fin
         slrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Cvudw3JQJcZkBznZ6R3M0X1LNY/gkWPtzfVnzER25fMNKyok+
	6FcyJm8AdUq9/Glr+PMNM0Y=
X-Google-Smtp-Source: ABdhPJw1x/GJcSecyWOb6MyIjLHrhE2ET7bih0NaY3wv25JX5UTGAEKD+E40/Pf3EZAiOF1iUMsPNQ==
X-Received: by 2002:a6b:d102:: with SMTP id l2mr29931365iob.142.1595359400749;
        Tue, 21 Jul 2020 12:23:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1082:: with SMTP id r2ls5635035ilj.8.gmail; Tue, 21
 Jul 2020 12:23:20 -0700 (PDT)
X-Received: by 2002:a92:5a56:: with SMTP id o83mr30099364ilb.71.1595359400427;
        Tue, 21 Jul 2020 12:23:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595359400; cv=none;
        d=google.com; s=arc-20160816;
        b=Onl008FlDqk0Pf6Py3EtqPgeJlDKyJg8HOTjuOg1TNMF0b42FX4J9mW0ZNnzSa1zXC
         dY65u9ws/w+3R/ROnPubDMfZT+UvP+u9Vq/nnjoN1vwCJN3bl+UEk60S5sbnIJUsENQs
         fdIh4sVU0CF1qxh//pOZcj1CG2gSVSfr7/iLdK3yL0O8w2GwJmEvZLXChitcVM4XbJ5V
         g67Z+X3zrEYhqqMiZFaZasZsoSojHdUIk/i2UfDxkfP6jAsa5m92I95eBspX59PvJB/X
         lvz11iDNHibr4FrLuRzVGv+2sLMXRX13//+c/JacahPkbzA6v+ROYm4ecTWJKmw4D1nZ
         UUZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=8pBhih6E7jp4Yifk7uB3TtyX3Tgan338q7ojskTkGXI=;
        b=qv5nicLf+pqs7rvvMU/2jNT3kc2VR7wP/8Ef3OjBpTCnxq+WfCxx6eO7Ho106DIr/Z
         x/SmZ+ySjzaX1jiH0MAkUz3Slre0WQY/0TXHiRH5J/POU6GtxY0NZC6Wilz/mGK0xgv6
         h3JID2/XTnDgvD3fanue9b4OPNOmUzGu35xBdEA7lcjK63+FSl2Wmpqys71dCzn+vuVZ
         aV8YtUaCB2eYDqCVKLVoUCRr9gBO3Jl2x+q914AF7EWZJFmwbILTZmlMzvOszUZcOozy
         uxYcvBDYjbzcdBBmeqC9iOea8rn0OSEL5Rcya8B+/biPK6lG3TWjRwDEJu2peoQmWmWa
         oCyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3qeaxxwkbaiu178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3qEAXXwkbAIU178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com. [209.85.166.199])
        by gmr-mx.google.com with ESMTPS id k8si172509ios.2.2020.07.21.12.23.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 12:23:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qeaxxwkbaiu178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) client-ip=209.85.166.199;
Received: by mail-il1-f199.google.com with SMTP id x23so14194390ilk.4
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 12:23:20 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:128d:: with SMTP id y13mr29208739ilq.305.1595359400166;
 Tue, 21 Jul 2020 12:23:20 -0700 (PDT)
Date: Tue, 21 Jul 2020 12:23:20 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000005613c705aaf88e04@google.com>
Subject: BUG: MAX_LOCKDEP_CHAINS too low! (2)
From: syzbot <syzbot+4c0c011e71ae95a85ffe@syzkaller.appspotmail.com>
To: bridge@lists.linux-foundation.org, clang-built-linux@googlegroups.com, 
	davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, nikolay@cumulusnetworks.com, 
	roopa@cumulusnetworks.com, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3qeaxxwkbaiu178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender) smtp.mailfrom=3qEAXXwkbAIU178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    6a70f89c Merge tag 'nfs-for-5.8-3' of git://git.linux-nfs...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=17607db3100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a160d1053fc89af5
dashboard link: https://syzkaller.appspot.com/bug?extid=4c0c011e71ae95a85ffe
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17ba6d7d100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13b72dd7100000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4c0c011e71ae95a85ffe@syzkaller.appspotmail.com

BUG: MAX_LOCKDEP_CHAINS too low!
turning off the locking correctness validator.
CPU: 1 PID: 30234 Comm: kworker/u4:3 Not tainted 5.8.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: bond1453 bond_resend_igmp_join_requests_delayed
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x18f/0x20d lib/dump_stack.c:118
 add_chain_cache kernel/locking/lockdep.c:3063 [inline]
 lookup_chain_cache_add kernel/locking/lockdep.c:3162 [inline]
 validate_chain kernel/locking/lockdep.c:3183 [inline]
 __lock_acquire.cold+0x11/0x3f8 kernel/locking/lockdep.c:4380
 lock_acquire+0x1f1/0xad0 kernel/locking/lockdep.c:4959
 __raw_spin_lock include/linux/spinlock_api_smp.h:142 [inline]
 _raw_spin_lock+0x2a/0x40 kernel/locking/spinlock.c:151
 spin_lock include/linux/spinlock.h:353 [inline]
 br_multicast_add_group+0x68/0x740 net/bridge/br_multicast.c:546
 br_ip6_multicast_add_group net/bridge/br_multicast.c:622 [inline]
 br_ip6_multicast_add_group net/bridge/br_multicast.c:606 [inline]
 br_ip6_multicast_mld2_report net/bridge/br_multicast.c:1048 [inline]
 br_multicast_ipv6_rcv net/bridge/br_multicast.c:1712 [inline]
 br_multicast_rcv+0x1083/0x4730 net/bridge/br_multicast.c:1747
 br_dev_xmit+0x708/0x1510 net/bridge/br_device.c:87
 __netdev_start_xmit include/linux/netdevice.h:4611 [inline]
 netdev_start_xmit include/linux/netdevice.h:4625 [inline]
 xmit_one net/core/dev.c:3556 [inline]
 dev_hard_start_xmit+0x193/0x950 net/core/dev.c:3572
 __dev_queue_xmit+0x2091/0x2d60 net/core/dev.c:4131
 bond_dev_queue_xmit+0xf8/0x1c0 drivers/net/bonding/bond_main.c:302
 bond_3ad_xor_xmit drivers/net/bonding/bond_main.c:4258 [inline]
 __bond_start_xmit drivers/net/bonding/bond_main.c:4398 [inline]
 bond_start_xmit+0x534/0xfc0 drivers/net/bonding/bond_main.c:4426
 __netdev_start_xmit include/linux/netdevice.h:4611 [inline]
 netdev_start_xmit include/linux/netdevice.h:4625 [inline]
 xmit_one net/core/dev.c:3556 [inline]
 dev_hard_start_xmit+0x193/0x950 net/core/dev.c:3572
 __dev_queue_xmit+0x2091/0x2d60 net/core/dev.c:4131
 neigh_hh_output include/net/neighbour.h:498 [inline]
 neigh_output include/net/neighbour.h:507 [inline]
 ip6_finish_output2+0x7f1/0x17b0 net/ipv6/ip6_output.c:117
 __ip6_finish_output net/ipv6/ip6_output.c:143 [inline]
 __ip6_finish_output+0x447/0xab0 net/ipv6/ip6_output.c:128
 ip6_finish_output+0x34/0x1f0 net/ipv6/ip6_output.c:153
 NF_HOOK_COND include/linux/netfilter.h:296 [inline]
 ip6_output+0x1db/0x520 net/ipv6/ip6_output.c:176
 dst_output include/net/dst.h:443 [inline]
 NF_HOOK include/linux/netfilter.h:307 [inline]
 NF_HOOK include/linux/netfilter.h:301 [inline]
 mld_sendpack+0x92a/0xdb0 net/ipv6/mcast.c:1679
 mld_send_report+0xc3/0x230 net/ipv6/mcast.c:1881
 ipv6_mc_rejoin_groups net/ipv6/mcast.c:2637 [inline]
 ipv6_mc_netdev_event+0x287/0x480 net/ipv6/mcast.c:2650
 notifier_call_chain+0xb5/0x200 kernel/notifier.c:83
 call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:2027
 call_netdevice_notifiers_extack net/core/dev.c:2039 [inline]
 call_netdevice_notifiers+0x79/0xa0 net/core/dev.c:2053
 bond_resend_igmp_join_requests_delayed+0x5d/0x170 drivers/net/bonding/bond_main.c:590
 process_one_work+0x94c/0x1670 kernel/workqueue.c:2269
 worker_thread+0x64c/0x1120 kernel/workqueue.c:2415
 kthread+0x3b5/0x4a0 kernel/kthread.c:291
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000005613c705aaf88e04%40google.com.
