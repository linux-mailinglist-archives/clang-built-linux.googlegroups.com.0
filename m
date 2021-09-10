Return-Path: <clang-built-linux+bncBCQPF57GUQHBBM4W5SEQMGQEIMPD34Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id CEABE4067CB
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 09:37:24 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id w5-20020a654105000000b002692534afcesf820415pgp.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 00:37:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631259443; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJGiILPjuxZVJyLHabyD05Zgqt8cAFu0FMa8RpeADNqO+qf+aWH32TtAGynU58w2ws
         wahQgipJjMyoiLnevetM0uQYr8STEBwXXFyO/zPAFXblYNnbhcqayBDhpDxmtuykRSKM
         3JapAEyJsjba7uV+6sUjC2dHVaycsPjuZpJK4T8hhyKS3M5a0nny3FzuSjr+b3+czSYZ
         zaQhTkvaK7dOB4C0CKaraVXYQxsRyDOWPtQOQUw1EeZADT8CQnlgc79OCXlxOrZBUUKp
         seWp1CrwQNiAnEOltXLyuWhcKIYR4MMPrXtZBoaE9hHtH81JwkMEqjD174xpzP+JsVDu
         S1Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=z1EtTjp/ZYlmR9CbF2gnyCDRg4wCZ2sBIkUw3pNOTHQ=;
        b=pBDz50mgmGBTPr5XHPLWQsocZksdUrnbhhwcgjpwdlp0OLi/r/40m2eT41aDiHCs9Q
         R1jkSo5cFFo7V/f7lawZjYkQIksRQNdQTY+TZHUsAYPoIQrz5+iU1lWK8wKQ4Ydu7lUN
         j2qS8C6sECahrjjRMrvzcSoaGuvdVkGg2OIl/JbrDepblL6i8tI026YFL5EbAf+6o4CN
         Kkhm4xwyJG4/foONXPV6//qtpAF2CDXazceX5enz8sZliGROC1LvzsCU8lBd1IvlV0z1
         e7Y4Z97+b2JulJHlnx7Dr43dlD+NHL+2/3Xm3bUQagAJUcR2vgjC8VemDXfk6eStZvLD
         lD0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3mqs7yqkbaeqy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3MQs7YQkbAEQy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z1EtTjp/ZYlmR9CbF2gnyCDRg4wCZ2sBIkUw3pNOTHQ=;
        b=WJexzgT0MVkHBpH04Xkr1HI90Fva/NOVQ/osXPosXPDeAtmroUqH3whOuZrUa7MtnF
         mVPAP5SELqGlkybkmsMrdrjBPRy4imYKHNXRTVQw2M+od0oJXqlO+C4gyA5D5t+fqY48
         lZu0cy2m/yZNZBbnkR77Ty0s09pI/XiPMMZKROiqtwqkLMXYAAsLfrqMU7ZEIUMLAg6t
         yJpY9EJiL3uvyCOxaH3p6HYeBwFk8A6XmBboCkB8igWiYxwTSpomsrszRm0xkFZqoIci
         EEAzgNkMmGbCuNUbNt5BUrqYj3L21KMNs1dZ9DGlGJ8c3apWbrvWQh70g+3Z1zt5haw3
         m0ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z1EtTjp/ZYlmR9CbF2gnyCDRg4wCZ2sBIkUw3pNOTHQ=;
        b=I4d0jA9GMoPlluetkUXgxlxjcHcxnrSlYulvrgdsRfdNln8x/RoGyhb6RdYzHcbcmg
         oIxGOOzUelPmj56gc/jfGoYISYFPekTCekrd9iTVJfjm1c28pDD4OgR7DIqXfgcsYkoI
         V/QVPheuR34nQua8kqqtSagTz9u3YBMKBRS0LmJxx6ryxNQEBgXHck3IJEA9XBLDAq4f
         LgWT5RvUb3//J+dLBBvY6xhE3jgDn5gEHIj2q7x9jqA+MQdjZYK5lpt7iQlwsNd4IqoC
         YV51PgxmxfECBHU7pc14Y3Lf088OgtnYAu/bhyA+IgaDXhD16G2L5KC/7DUjtdVE27x9
         m5vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/gDz2lwlgMEEeh/xueEVZGt/pb0/5Nhz3q3M/Ny2wPmsgnjQy
	V1y2/cfG8xKJSHXGAdUzIP4=
X-Google-Smtp-Source: ABdhPJxvXxRYRzIZKWcjn88BgbH6Oee5Qp49IcSKny2lmNJV2yh0+F1DUAYkGn3OyLdzdbh2u40K0A==
X-Received: by 2002:a17:902:d395:b0:13a:25cf:f1c2 with SMTP id e21-20020a170902d39500b0013a25cff1c2mr6367005pld.55.1631259443438;
        Fri, 10 Sep 2021 00:37:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed83:: with SMTP id e3ls2758540plj.2.gmail; Fri, 10
 Sep 2021 00:37:22 -0700 (PDT)
X-Received: by 2002:a17:903:41d0:b0:138:8d81:95d5 with SMTP id u16-20020a17090341d000b001388d8195d5mr6297043ple.67.1631259442478;
        Fri, 10 Sep 2021 00:37:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631259442; cv=none;
        d=google.com; s=arc-20160816;
        b=gTQaE1Eka70HqbDx3f9WT76sbmT/D3ICVzikA4RSwBpvWBE47naP8531Dy7DiWSq02
         9GrTnZ6/M6jIuJDpqJylDslFC64BUHWeSn0QcSsbTNQ5EPY8lpZGAAMZtzGs9Ut5BgZh
         FkU+zWsGRneb5R+s7htJ5eK/R5Tq1X1f8ei6yXZ1XoohSfFDHGubEugYkESEleRlvO/B
         xsYe2roBhWoUrS3VP9Ufjl63Y7MhsMtS+48sXdZ36U7CUrKvCC31AqqGIAllgl9O6Y5/
         s4+4QtMErtB/bjK/TwZyhnVZml6KxzvnMcxqo+ScoU7gkzUldkzMzX0WLojndys77WGm
         wf/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=ECLq3Tlj41/7XypHMCkWQxWJKVcEKsiokaHShYEAAaQ=;
        b=PwhKXks1gyj7bplpPZD0uG9u4OAivNLTB8/nEAp8+RqtlwjIiGuc49KNKRSQtx1ErO
         phQ7d712bwYVS1i/NVse/ycwBjSn3IOZeVXfkN+jOv33rrPZbMFuOoW0WPhEyGwqqI7K
         pKr1982vU3z61mrMax4Z6b4KcW3FH9jP1hSTG8hn9MVj4A412YKhU3yGSAlEv2SJEVxR
         Bkruw3XBYwndAEuxv/QdI4p3rC6znQVOqoPOxD9vC8Pkp3/5MgBTmXn23iuZkqN1elPV
         mBLA527wKy3teHc6558/mIgXvBfQKgo015obJ1ykUAg5/ORCZxJk1y5VrPvBem4zd+Lj
         GCZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3mqs7yqkbaeqy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3MQs7YQkbAEQy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com. [209.85.166.199])
        by gmr-mx.google.com with ESMTPS id y10si131352plg.3.2021.09.10.00.37.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 00:37:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mqs7yqkbaeqy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) client-ip=209.85.166.199;
Received: by mail-il1-f199.google.com with SMTP id x4-20020a92b004000000b0022b3cb3b4deso1441183ilh.17
        for <clang-built-linux@googlegroups.com>; Fri, 10 Sep 2021 00:37:22 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6602:730:: with SMTP id g16mr5895756iox.138.1631259441979;
 Fri, 10 Sep 2021 00:37:21 -0700 (PDT)
Date: Fri, 10 Sep 2021 00:37:21 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000936c3c05cb9f2ff8@google.com>
Subject: [syzbot] possible deadlock in br_multicast_rcv (2)
From: syzbot <syzbot+1f749b80a78ec45502f8@syzkaller.appspotmail.com>
To: bridge@lists.linux-foundation.org, clang-built-linux@googlegroups.com, 
	davem@davemloft.net, kuba@kernel.org, linux-kernel@vger.kernel.org, 
	nathan@kernel.org, ndesaulniers@google.com, netdev@vger.kernel.org, 
	nikolay@nvidia.com, roopa@nvidia.com, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3mqs7yqkbaeqy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender) smtp.mailfrom=3MQs7YQkbAEQy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    57f780f1c433 atlantic: Fix driver resume flow.
git tree:       net
console output: https://syzkaller.appspot.com/x/log.txt?x=13fb836d300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=765eea9a273a8879
dashboard link: https://syzkaller.appspot.com/bug?extid=1f749b80a78ec45502f8
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.1

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1f749b80a78ec45502f8@syzkaller.appspotmail.com

============================================
WARNING: possible recursive locking detected
5.14.0-rc7-syzkaller #0 Not tainted
--------------------------------------------
ksoftirqd/0/13 is trying to acquire lock:
ffff888029d18fd0 (&br->multicast_lock){+.-.}-{2:2}, at: spin_lock include/linux/spinlock.h:354 [inline]
ffff888029d18fd0 (&br->multicast_lock){+.-.}-{2:2}, at: br_ip6_multicast_query net/bridge/br_multicast.c:3000 [inline]
ffff888029d18fd0 (&br->multicast_lock){+.-.}-{2:2}, at: br_multicast_ipv6_rcv net/bridge/br_multicast.c:3393 [inline]
ffff888029d18fd0 (&br->multicast_lock){+.-.}-{2:2}, at: br_multicast_rcv+0x2e31/0x5b90 net/bridge/br_multicast.c:3425

but task is already holding lock:
ffff8880748c4fd0 (&br->multicast_lock){+.-.}-{2:2}, at: spin_lock include/linux/spinlock.h:354 [inline]
ffff8880748c4fd0 (&br->multicast_lock){+.-.}-{2:2}, at: br_multicast_port_query_expired+0x40/0x170 net/bridge/br_multicast.c:1588

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(&br->multicast_lock);
  lock(&br->multicast_lock);

 *** DEADLOCK ***

 May be due to missing lock nesting notation

10 locks held by ksoftirqd/0/13:
 #0: ffffc90000d27c58 ((&port->ip6_own_query.timer)){+.-.}-{0:0}, at: lockdep_copy_map include/linux/lockdep.h:35 [inline]
 #0: ffffc90000d27c58 ((&port->ip6_own_query.timer)){+.-.}-{0:0}, at: call_timer_fn+0xd5/0x6b0 kernel/time/timer.c:1411
 #1: ffff8880748c4fd0 (&br->multicast_lock){+.-.}-{2:2}, at: spin_lock include/linux/spinlock.h:354 [inline]
 #1: ffff8880748c4fd0 (&br->multicast_lock){+.-.}-{2:2}, at: br_multicast_port_query_expired+0x40/0x170 net/bridge/br_multicast.c:1588
 #2: ffffffff8b97c220 (rcu_read_lock_bh){....}-{1:2}, at: __dev_queue_xmit+0x1da/0x3620 net/core/dev.c:4219
 #3: ffffffff8b97c220 (rcu_read_lock_bh){....}-{1:2}, at: __dev_queue_xmit+0x1da/0x3620 net/core/dev.c:4219
 #4: ffffffff8b97c280 (rcu_read_lock){....}-{1:2}, at: is_netpoll_tx_blocked include/net/bonding.h:109 [inline]
 #4: ffffffff8b97c280 (rcu_read_lock){....}-{1:2}, at: bond_start_xmit+0x88/0x1220 drivers/net/bonding/bond_main.c:4878
 #5: ffffffff8b97c220 (rcu_read_lock_bh){....}-{1:2}, at: __dev_queue_xmit+0x1da/0x3620 net/core/dev.c:4219
 #6: ffffffff8b97c280 (rcu_read_lock){....}-{1:2}, at: is_netpoll_tx_blocked include/net/bonding.h:109 [inline]
 #6: ffffffff8b97c280 (rcu_read_lock){....}-{1:2}, at: bond_start_xmit+0x88/0x1220 drivers/net/bonding/bond_main.c:4878
 #7: ffffffff8b97c220 (rcu_read_lock_bh){....}-{1:2}, at: __dev_queue_xmit+0x1da/0x3620 net/core/dev.c:4219
 #8: ffffffff8b97c220 (rcu_read_lock_bh){....}-{1:2}, at: __dev_queue_xmit+0x1da/0x3620 net/core/dev.c:4219
 #9: ffffffff8b97c280 (rcu_read_lock){....}-{1:2}, at: br_dev_xmit+0x0/0x16a0 net/bridge/br_device.c:305

stack backtrace:
CPU: 0 PID: 13 Comm: ksoftirqd/0 Not tainted 5.14.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 lib/dump_stack.c:105
 print_deadlock_bug kernel/locking/lockdep.c:2944 [inline]
 check_deadlock kernel/locking/lockdep.c:2987 [inline]
 validate_chain kernel/locking/lockdep.c:3776 [inline]
 __lock_acquire.cold+0x149/0x3ab kernel/locking/lockdep.c:5015
 lock_acquire kernel/locking/lockdep.c:5625 [inline]
 lock_acquire+0x1ab/0x510 kernel/locking/lockdep.c:5590
 __raw_spin_lock include/linux/spinlock_api_smp.h:142 [inline]
 _raw_spin_lock+0x2a/0x40 kernel/locking/spinlock.c:151
 spin_lock include/linux/spinlock.h:354 [inline]
 br_ip6_multicast_query net/bridge/br_multicast.c:3000 [inline]
 br_multicast_ipv6_rcv net/bridge/br_multicast.c:3393 [inline]
 br_multicast_rcv+0x2e31/0x5b90 net/bridge/br_multicast.c:3425
 br_dev_xmit+0x6bf/0x16a0 net/bridge/br_device.c:85
 __netdev_start_xmit include/linux/netdevice.h:4948 [inline]
 netdev_start_xmit include/linux/netdevice.h:4962 [inline]
 xmit_one net/core/dev.c:3659 [inline]
 dev_hard_start_xmit+0x1eb/0x920 net/core/dev.c:3675
 __dev_queue_xmit+0x2988/0x3620 net/core/dev.c:4285
 vlan_dev_hard_start_xmit+0x1b3/0x670 net/8021q/vlan_dev.c:124
 __netdev_start_xmit include/linux/netdevice.h:4948 [inline]
 netdev_start_xmit include/linux/netdevice.h:4962 [inline]
 xmit_one net/core/dev.c:3659 [inline]
 dev_hard_start_xmit+0x1eb/0x920 net/core/dev.c:3675
 __dev_queue_xmit+0x2988/0x3620 net/core/dev.c:4285
 bond_dev_queue_xmit+0xc3/0x170 drivers/net/bonding/bond_main.c:304
 bond_do_alb_xmit+0x5ca/0x8b0 drivers/net/bonding/bond_alb.c:1327
 __bond_start_xmit drivers/net/bonding/bond_main.c:4859 [inline]
 bond_start_xmit+0xaad/0x1220 drivers/net/bonding/bond_main.c:4883
 __netdev_start_xmit include/linux/netdevice.h:4948 [inline]
 netdev_start_xmit include/linux/netdevice.h:4962 [inline]
 xmit_one net/core/dev.c:3659 [inline]
 dev_hard_start_xmit+0x1eb/0x920 net/core/dev.c:3675
 __dev_queue_xmit+0x2988/0x3620 net/core/dev.c:4285
 bond_dev_queue_xmit+0xc3/0x170 drivers/net/bonding/bond_main.c:304
 bond_3ad_xor_xmit drivers/net/bonding/bond_main.c:4621 [inline]
 __bond_start_xmit drivers/net/bonding/bond_main.c:4855 [inline]
 bond_start_xmit+0xb01/0x1220 drivers/net/bonding/bond_main.c:4883
 __netdev_start_xmit include/linux/netdevice.h:4948 [inline]
 netdev_start_xmit include/linux/netdevice.h:4962 [inline]
 xmit_one net/core/dev.c:3659 [inline]
 dev_hard_start_xmit+0x1eb/0x920 net/core/dev.c:3675
 __dev_queue_xmit+0x2988/0x3620 net/core/dev.c:4285
 macvlan_queue_xmit drivers/net/macvlan.c:543 [inline]
 macvlan_start_xmit+0x156/0x5e0 drivers/net/macvlan.c:567
 __netdev_start_xmit include/linux/netdevice.h:4948 [inline]
 netdev_start_xmit include/linux/netdevice.h:4962 [inline]
 xmit_one net/core/dev.c:3659 [inline]
 dev_hard_start_xmit+0x1eb/0x920 net/core/dev.c:3675
 __dev_queue_xmit+0x2988/0x3620 net/core/dev.c:4285
 br_dev_queue_push_xmit+0x252/0x730 net/bridge/br_forward.c:51
 NF_HOOK include/linux/netfilter.h:307 [inline]
 __br_multicast_send_query+0xf7e/0x39f0 net/bridge/br_multicast.c:1527
 br_multicast_send_query+0x27c/0x420 net/bridge/br_multicast.c:1572
 br_multicast_port_query_expired+0x118/0x170 net/bridge/br_multicast.c:1596
 call_timer_fn+0x1a5/0x6b0 kernel/time/timer.c:1421
 expire_timers kernel/time/timer.c:1466 [inline]
 __run_timers.part.0+0x675/0xa20 kernel/time/timer.c:1734
 __run_timers kernel/time/timer.c:1715 [inline]
 run_timer_softirq+0xb3/0x1d0 kernel/time/timer.c:1747
 __do_softirq+0x29b/0x9c2 kernel/softirq.c:558
 run_ksoftirqd kernel/softirq.c:920 [inline]
 run_ksoftirqd+0x2d/0x60 kernel/softirq.c:912
 smpboot_thread_fn+0x645/0x9c0 kernel/smpboot.c:164
 kthread+0x3e5/0x4d0 kernel/kthread.c:319
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:295
bridge0: received packet on veth1_to_bridge with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)
bridge0: received packet on bridge_slave_1 with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)
bridge0: received packet on veth1_to_bridge with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)
bridge0: received packet on bridge_slave_1 with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)
bridge0: received packet on veth1_to_bridge with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)
bridge0: received packet on veth1_to_bridge with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)
bridge0: received packet on bridge_slave_1 with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)
bridge0: received packet on veth1_to_bridge with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)
bridge0: received packet on bridge_slave_1 with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)
bridge0: received packet on veth1_to_bridge with own address as source address (addr:aa:aa:aa:aa:aa:0c, vlan:0)


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000936c3c05cb9f2ff8%40google.com.
