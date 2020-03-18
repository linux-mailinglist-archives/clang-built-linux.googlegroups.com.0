Return-Path: <clang-built-linux+bncBCMIZB7QWENRBU4KZDZQKGQEME65VNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBA0189A8D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 12:26:12 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id k14sf12220338otb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 04:26:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584530771; cv=pass;
        d=google.com; s=arc-20160816;
        b=SsCB+paVF9roaGQwya7xbNZ83XxtOaOrHFjsELLwgSyBAsDslt3Eb2MEvG+wJkfP43
         pmuSNfkypDGoyzTyA09dcO9fGr0ouPmI+GSjiGkEkp6CkiY0e7WCHujDt6RH/Ndg84dY
         XwX6rRKloBapdxgOj34dd6KOAD+YbOG4ZsDmByTQBLZA3DNfbwCCI0goN/Osla4HyNKa
         1vxW+eet4o/gppDLh2MUd/cQUqO2kANCY2tD51orN24LIm8AMuUgbPQeA7nrFqWk5HrW
         uHjU2qoPx206go4t3ojmPXMlkz7iMJk44L379byWL2ljxAvMsfD/OSfXYJwf3auamdmV
         BiuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=C+Evv3Yi52MZsly44BiGFDHLhqdmfa54GGuWZ5ekrGY=;
        b=X3SZS/I+YOcJ0xLbxG2saQiBHMhk/KwqaREfox9v/Wf+tnnLugkLBKtpN6YT8+qS2g
         Whu5B6j3spaXPGvSA2iAL+nghJNmrOtSrm44A3XvOTelTDJxjvicrImZ6AKNtRYq+UAH
         ukXYiP2qij4uMpUCtpKnPbax2fxCRdr8PDcSOXqr2VqgXu9ODPzzm8JQb9sYpXoj3Glt
         qoJVIDCVwn4bum8+YnpGtJKZn4Wocs8+rU+5YfTWolnfKRAWnHvAhTKcg2+SZIUDdRl9
         YqRMq01fWCBcvfh9QAMSvmLoF8i9nAo7vivVjmlw6mZn/EkycaF/nzTzjvTnMoKtULA3
         pW2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZP1ElV3s;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=C+Evv3Yi52MZsly44BiGFDHLhqdmfa54GGuWZ5ekrGY=;
        b=CM0uH9GTqIIgx/3NPNxlyMBsfAH+HtYM68vI8/56+dYYk3F3KibESY2G3nzCwAoZ83
         yHetPRFCbls82zxV3f4la/UfnS3fuoukx6mCJ7C0VJDrKzYMYnfXvGURzMG9h0B5hpOH
         ji6W/7nX9GPXemwRos9yBstwAMZT1lVSl4Cnkt8DZJ84MpNowu/ahsXTXcG9IiQx7S7b
         7AC+4oOa3hysz/iIHji2HTXXjy924iLuwS3cbb7KdYh3LXulU2QgkR75GudZDwIUUdr+
         RplVZgDIGTVwskfcMyPdWQcHQjioxyi/Wqa7eGnvP5HgzaP2FeJsQtBsBQ8gadh1NB41
         LT8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C+Evv3Yi52MZsly44BiGFDHLhqdmfa54GGuWZ5ekrGY=;
        b=RkgDrORDaAKeqTSadj1KWAI4wFa9+Yux86VzmcEKQgQJveJc1cni2ti/7fT/Xc1Sgs
         liTYQSVvEIZogNc/UcdaIz+dGGMKx6EzaJEyrULGxoDK+kF3h6gT6yezCvqkfEiGT8kh
         X16BmUy8+RrOV9A1QFCmgS7o1FYNw3JHjbBYrkGJmS/RGt1zCO379rIQljxbjXotVhA7
         OC3/cK4/9uw5vLZUWOqFMLw48M928C0fMxC9rolD0bUq77xwCumwvFFs8kkBJZpK5xDs
         DuYfMAtzmg2hP2cPxgf5BD8i4eoY+J3Of9a0AtUwxGTbbYZN2uv2raur11d9TNmZ/5Jg
         AlZA==
X-Gm-Message-State: ANhLgQ2JVKJWVhkdOJX2XoJ2fNsA2gUiikzWB9gIl3BTPpKAxc3wDXHn
	OI0eROw7wsJ4y6ou2dY1Vzc=
X-Google-Smtp-Source: ADFU+vtn/uJnJC7RjvsfX6fBai+g2evJ4xe7BCnMVLQe4G8Vm1yvZPeZyNTaLfdCeQzidBIUDdLS5A==
X-Received: by 2002:aca:3857:: with SMTP id f84mr2597935oia.150.1584530771162;
        Wed, 18 Mar 2020 04:26:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c441:: with SMTP id u62ls3829973oif.9.gmail; Wed, 18 Mar
 2020 04:26:10 -0700 (PDT)
X-Received: by 2002:aca:2801:: with SMTP id 1mr2756513oix.168.1584530770460;
        Wed, 18 Mar 2020 04:26:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584530770; cv=none;
        d=google.com; s=arc-20160816;
        b=drUN7j3RnAu1ql/7vdH8+ApX8Ne6/tB+hjUGvhcxw0pI2CAWcY5MxKvcRmpzN7H0Qf
         9i602hl7w7zz0fjLB/aLYM97B1t9rL9jNa51bbNqXj3fbjCBpeNRue5SVKfGbK/J/Ofy
         G0Wwbv91kdKMG0rTrJEAzxaA8CjBReXr8pW6zOUJUdMcivCR2mBF9jyPXMYNgip+uPTp
         SwQeGKeCb9a853NjFz1RXkhUcvO6De12bFeuyZV4i3j5K7t4YB2vNcaiewwmu6PpSm43
         ilD7lbYQrRhQQ8/BUUJUek3dOklrnzSEn9QR396zBh4U1u+vZz4/IG17IvSsVm6t+wuN
         tcnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=KDqsAqIAdHXU3bHQ3UsWT9kcY+XKzXYyiqCJ1laKqJo=;
        b=EW4oTuHYKRimEiGCM5TTPx4FSjHb1iEuw7D3vQdErYGdcwy2K8wBSYA7cW+ES6dFVC
         yDan+rq2nf5VezmGSop324eVetzB1BJ3CTejoVjwsZy7sliQA8ofCvUIDUHHklqatgJI
         drhY/qg98fkrdXjErdNw+YTvnWtOlV47do0/atnv5p5v+mN1OfPrqwABTznnZtws73sm
         R0L60Tqexl7fC1Wr8tq/wYCJtZpRrC/nlyLI6SX84hRlgp6v92CCn6IgBwM9i4TTqlB2
         MIcwzStsT4GLqRdgIvjPe2hzHte6R55FTGOQufwPLb7cnQJxOdzJHK1J2X11iiUiRvlf
         A4bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZP1ElV3s;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id d11si499907otk.5.2020.03.18.04.26.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 04:26:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id s11so26682171qks.8
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 04:26:10 -0700 (PDT)
X-Received: by 2002:a37:7c47:: with SMTP id x68mr3565809qkc.8.1584530768387;
 Wed, 18 Mar 2020 04:26:08 -0700 (PDT)
MIME-Version: 1.0
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Mar 2020 12:25:57 +0100
Message-ID: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
Subject: some clang miscompilation again?
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZP1ElV3s;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

Hi,

We started seeing massive crashes on one of syzbot instances. You can
see 2 examples below. The rest are piled here:
https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452
(search for "ci-upstream-kasan-gce-smack-root").

This happens only on the smack instance. It's the only instance that uses clang.
The previous weird crash spike we observed on that instance was caused
by clang miscompilation:
https://groups.google.com/d/msg/clang-built-linux/LUIT7csFWas/wEd-p6FKDQAJ

Maybe this rings any bells for somebody?

The clang we use is:
clang version 10.0.0 (https://github.com/llvm/llvm-project/
c2443155a0fb245c8f17f2c1c72b6ea391e86e81)


[  202.652969][ T9969] BUG: kernel NULL pointer dereference, address:
0000000000000086
[  202.660811][ T9969] #PF: supervisor instruction fetch in kernel mode
[  202.667314][ T9969] #PF: error_code(0x0010) - not-present page
[  202.673292][ T9969] PGD 42d21067 P4D 42d21067 PUD a442d067 PMD 0
[  202.679547][ T9969] Oops: 0010 [#1] PREEMPT SMP KASAN
[  202.684751][ T9969] CPU: 1 PID: 9969 Comm: syz-executor.0 Not
tainted 5.6.0-rc6-syzkaller #0
[  202.685601][ T9967] ubi0: scanning is finished
[  202.693464][ T9969] Hardware name: Google Google Compute
Engine/Google Compute Engine, BIOS Google 01/01/2011
[  202.693481][ T9969] RIP: 0010:0x86
[  202.693499][ T9969] Code: Bad RIP value.
[  202.693508][ T9969] RSP: 0018:ffffc90001b9f998 EFLAGS: 00010086
[  202.693515][ T9969] RAX: ffffc90001b9f9c8 RBX: fffffe0000000000
RCX: 0000000000040000
[  202.693520][ T9969] RDX: ffffc90002121000 RSI: 00000000000042cc
RDI: 00000000000042cd
[  202.693525][ T9969] RBP: 0000000000000ec0 R08: ffffffff839870a3
R09: ffffffff811c7eca
[  202.693530][ T9969] R10: ffff88804b338000 R11: 0000000000000002
R12: dffffc0000000000
[  202.693535][ T9969] R13: fffffe0000000ec8 R14: ffffffff880016f0
R15: fffffe0000000ecb
[  202.693547][ T9969] FS:  00007f70cf831700(0000)
GS:ffff8880ae900000(0000) knlGS:0000000000000000
[  202.693552][ T9969] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  202.693558][ T9969] CR2: 000000000000005c CR3: 0000000098245000
CR4: 00000000001426e0
[  202.693564][ T9969] Call Trace:
[  202.693582][ T9969]  ? handle_external_interrupt_irqoff+0x154/0x280
[  202.693597][ T9969]  ? handle_external_interrupt_irqoff+0x132/0x280
[  202.693606][ T9969]  ? __irqentry_text_start+0x8/0x8
[  202.693625][ T9969]  ? vcpu_enter_guest+0x6c77/0x9290
[  202.811509][ T9969]  ? __kasan_slab_free+0x12e/0x1e0
[  202.816609][ T9969]  ? kfree+0x10a/0x220
[  202.820667][ T9969]  ? tomoyo_path_number_perm+0x525/0x690
[  202.826289][ T9969]  ? security_file_ioctl+0x55/0xb0
[  202.831397][ T9969]  ? entry_SYSCALL_64_after_hwframe+0x49/0xbe
[  202.837465][ T9969]  ? __lock_acquire+0xc5a/0x1bc0
[  202.842409][ T9969]  ? mark_lock+0x107/0x1650
[  202.846912][ T9969]  ? lock_acquire+0x154/0x250
[  202.851580][ T9969]  ? rcu_lock_acquire+0x9/0x30
[  202.856335][ T9969]  ? kvm_check_async_pf_completion+0x34e/0x360
[  202.862486][ T9969]  ? vcpu_run+0x3a3/0xd50
[  202.866823][ T9969]  ? kvm_arch_vcpu_ioctl_run+0x419/0x880
[  202.872449][ T9969]  ? kvm_vcpu_ioctl+0x67c/0xa80
[  202.877303][ T9969]  ? kvm_vm_release+0x50/0x50
[  202.881990][ T9969]  ? __se_sys_ioctl+0xf9/0x160
[  202.886873][ T9969]  ? do_syscall_64+0xf3/0x1b0
[  202.891570][ T9969]  ? entry_SYSCALL_64_after_hwframe+0x49/0xbe
[  202.897636][ T9969] Modules linked in:
[  202.901521][ T9969] CR2: 0000000000000086
[  202.905670][ T9969] ---[ end trace e25748bb637f10e1 ]---
[  202.911117][ T9969] RIP: 0010:0x86
[  202.914666][ T9969] Code: Bad RIP value.
[  202.918737][ T9969] RSP: 0018:ffffc90001b9f998 EFLAGS: 00010086
[  202.924791][ T9969] RAX: ffffc90001b9f9c8 RBX: fffffe0000000000
RCX: 0000000000040000
[  202.932770][ T9969] RDX: ffffc90002121000 RSI: 00000000000042cc
RDI: 00000000000042cd
[  202.940749][ T9969] RBP: 0000000000000ec0 R08: ffffffff839870a3
R09: ffffffff811c7eca
[  202.948727][ T9969] R10: ffff88804b338000 R11: 0000000000000002
R12: dffffc0000000000
[  202.956700][ T9969] R13: fffffe0000000ec8 R14: ffffffff880016f0
R15: fffffe0000000ecb
[  202.964675][ T9969] FS:  00007f70cf831700(0000)
GS:ffff8880ae900000(0000) knlGS:0000000000000000
[  202.973600][ T9969] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  202.980175][ T9969] CR2: 000000000000005c CR3: 0000000098245000
CR4: 00000000001426e0
[  202.988141][ T9969] Kernel panic - not syncing: Fatal exception
[  202.995457][ T9969] Kernel Offset: disabled
[  202.999782][ T9969] Rebooting in 86400 seconds..



[  490.564553][T16898] BUG: unable to handle page fault for address:
0000000000ffff88
[  490.572415][T16898] #PF: supervisor read access in kernel mode
[  490.578422][T16898] #PF: error_code(0x0000) - not-present page
[  490.584378][T16898] PGD 862e4067 P4D 862e4067 PUD 9961c067 PMD 0
[  490.590606][T16898] Oops: 0000 [#1] PREEMPT SMP
[  490.595264][T16898] CPU: 1 PID: 16898 Comm: syz-executor.3 Not
tainted 5.6.0-rc1-syzkaller #0
[  490.604044][T16898] Hardware name: Google Google Compute
Engine/Google Compute Engine, BIOS Google 01/01/2011
[  490.616101][T16898] RIP: 0010:__list_del_entry_valid+0x59/0x8e
[  490.622083][T16898] Code: 00 00 00 00 ad de 49 39 c4 0f 84 92 00 00
00 48 b8 22 01 00 00 00 00 ad de 49 39 c5 0f 84 b8 00 00 00 4c 89 ef
e8 77 4c 00 ff <4d> 8b 6d 00 49 39 ed 0f 85 8f 00 00 00 49 8d 7c 24 08
e8 60 4c 00
[  490.641675][T16898] RSP: 0018:ffffc9000902f7d0 EFLAGS: 00010202
[  490.647729][T16898] RAX: 0000000000000afb RBX: ffff888120ab9e00
RCX: ffffffff86d9d6b0
[  490.655685][T16898] RDX: 0000000000000000 RSI: ffff88808aa81a01
RDI: 0000000000ffff88
[  490.663645][T16898] RBP: ffff88808aa81a05 R08: 0000000000000000
R09: 0000000000ffff88
[  490.671622][T16898] R10: 0000888120ab9e48 R11: 0000000000ffff8f
R12: 80ae4b8ef8ffff88
[  490.679590][T16898] R13: 0000000000ffff88 R14: ffff88808aa81a00
R15: ffff8880ae4b8100
[  490.687557][T16898] FS:  00007f0364420700(0000)
GS:ffff88812c100000(0000) knlGS:0000000000000000
[  490.696473][T16898] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  490.703106][T16898] CR2: 0000000000ffff88 CR3: 000000008b30d000
CR4: 00000000001406e0
[  490.711077][T16898] DR0: 0000000000000000 DR1: 0000000000000000
DR2: 0000000000000000
[  490.719062][T16898] DR3: 0000000000000000 DR6: 00000000fffe0ff0
DR7: 0000000000000400
[  490.727070][T16898] Call Trace:
[  490.730505][T16898]  ? __list_add+0x40/0xd0
[  490.734877][T16898]  ? nf_tables_newflowtable+0xcee/0xf00
[  490.740427][T16898]  ? nft_trans_alloc_gfp+0xc0/0xc0
[  490.745550][T16898]  ? nfnetlink_rcv_batch+0x528/0xbd0
[  490.750871][T16898]  ? __nla_validate_parse+0xa8/0x11d0
[  490.756239][T16898]  ? security_capable+0x8a/0xa0
[  490.761195][T16898]  ? ns_capable_common+0xad/0xc0
[  490.766142][T16898]  ? __nla_parse+0x4b/0x60
[  490.770548][T16898]  ? nfnetlink_rcv+0x269/0x290
[  490.775300][T16898]  ? netlink_unicast+0x390/0x4c0
[  490.780291][T16898]  ? netlink_sendmsg+0x4cf/0x8a0
[  490.785216][T16898]  ? netlink_unicast+0x4c0/0x4c0
[  490.790131][T16898]  ? sock_sendmsg+0x98/0xc0
[  490.794634][T16898]  ? ____sys_sendmsg+0x493/0x4c0
[  490.799730][T16898]  ? ___sys_sendmsg+0xb5/0x100
[  490.804505][T16898]  ? __rcu_read_unlock+0x66/0x2f0
[  490.809583][T16898]  ? __fget_files+0xa2/0x1c0
[  490.814237][T16898]  ? __fget_light+0xc0/0x1a0
[  490.818811][T16898]  ? __fdget+0x29/0x30
[  490.822862][T16898]  ? sockfd_lookup_light+0xa5/0x100
[  490.828065][T16898]  ? __sys_sendmsg+0x9b/0x150
[  490.832740][T16898]  ? __x64_sys_sendmsg+0x4c/0x60
[  490.837671][T16898]  ? do_syscall_64+0xc7/0x390
[  490.842344][T16898]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  490.848485][T16898] Modules linked in:
[  490.852420][T16898] CR2: 0000000000ffff88
[  490.856659][T16896] BUG: unable to handle page fault for address:
0000000100ffffc9
[  490.864378][T16896] #PF: supervisor read access in kernel mode
[  490.870346][T16896] #PF: error_code(0x0000) - not-present page
[  490.876346][T16896] PGD 0 P4D 0
[  490.879714][T16896] Oops: 0000 [#2] PREEMPT SMP
[  490.884377][T16896] CPU: 0 PID: 16896 Comm: sh Tainted: G      D
       5.6.0-rc1-syzkaller #0
[  490.893399][T16896] Hardware name: Google Google Compute
Engine/Google Compute Engine, BIOS Google 01/01/2011
[  490.903531][T16896] RIP: 0010:__list_del_entry_valid+0x59/0x8e
[  490.909499][T16896] Code: 00 00 00 00 ad de 49 39 c4 0f 84 92 00 00
00 48 b8 22 01 00 00 00 00 ad de 49 39 c5 0f 84 b8 00 00 00 4c 89 ef
e8 77 4c 00 ff <4d> 8b 6d 00 49 39 ed 0f 85 8f 00 00 00 49 8d 7c 24 08
e8 60 4c 00
[  490.929309][T16896] RSP: 0018:ffffc90008fffb70 EFLAGS: 00010006
[  490.935750][T16896] RAX: 000000000000036a RBX: 0000000000000000
RCX: ffffffff86d9d6b0
[  490.943714][T16896] RDX: 0000000000000000 RSI: ffffc90008fffbd9
RDI: 0000000100ffffc9
[  490.951762][T16896] RBP: ffffc90008fffbdd R08: 0000000000000000
R09: 0000000100ffffc9
[  490.959728][T16896] R10: 0000ffffffffffff R11: 0000000100ffffd0
R12: 0008fffbd8ffffc9
[  490.968083][T16896] R13: 0000000100ffffc9 R14: ffffc90008fffbd8
R15: ffffea00043d5c80
[  490.976052][T16896] FS:  0000000000000000(0000)
GS:ffff88812c000000(0000) knlGS:0000000000000000
[  490.985008][T16896] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  490.991683][T16896] CR2: 0000000100ffffc9 CR3: 0000000005a23000
CR4: 00000000001406f0
[  490.999644][T16896] DR0: 0000000000000000 DR1: 0000000000000000
DR2: 0000000000000000
[  491.007609][T16896] DR3: 0000000000000000 DR6: 00000000fffe0ff0
DR7: 0000000000000400
[  491.015569][T16896] Call Trace:
[  491.018893][T16896]  ? release_pages+0x7a3/0x9b0
[  491.023651][T16896]  ? free_pages_and_swap_cache+0x231/0x2a0
[  491.029443][T16896]  ? tlb_flush_mmu+0x76/0x390
[  491.034566][T16896]  ? tlb_finish_mmu+0x7f/0x230
[  491.039518][T16896]  ? exit_mmap+0x15e/0x2f0
[  491.044021][T16896]  ? mmput+0xe2/0x260
[  491.048012][T16896]  ? do_exit+0x640/0x1880
[  491.052543][T16896]  ? recalc_sigpending+0x4f/0xe0
[  491.058572][T16896]  ? do_sigaltstack.constprop.0+0x2b5/0x390
[  491.064513][T16896]  ? _copy_from_user+0x93/0xf0
[  491.069330][T16896]  ? do_group_exit+0xae/0x1a0
[  491.074018][T16896]  ? __x64_sys_exit_group+0x2b/0x30
[  491.079224][T16896]  ? do_syscall_64+0xc7/0x390
[  491.083977][T16896]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  491.090448][T16896] Modules linked in:
[  491.094324][T16896] CR2: 0000000100ffffc9
[  491.098573][T16896] ---[ end trace a5ad8ea8946e7e64 ]---
[  491.098603][    C1] BUG: unable to handle page fault for address:
0000000000ffff88
[  491.104175][T16896] RIP: 0010:__list_del_entry_valid+0x59/0x8e
[  491.111928][    C1] #PF: supervisor read access in kernel mode
[  491.111935][    C1] #PF: error_code(0x0000) - not-present page
[  491.111941][    C1] PGD 862e4067 P4D 862e4067 PUD 9961c067 PMD 0
[  491.111963][    C1] Oops: 0000 [#3] PREEMPT SMP
[  491.111978][    C1] CPU: 1 PID: 16898 Comm: syz-executor.3 Tainted:
G      D           5.6.0-rc1-syzkaller #0
[  491.111996][    C1] Hardware name: Google Google Compute
Engine/Google Compute Engine, BIOS Google 01/01/2011
[  491.117985][T16896] Code: 00 00 00 00 ad de 49 39 c4 0f 84 92 00 00
00 48 b8 22 01 00 00 00 00 ad de 49 39 c5 0f 84 b8 00 00 00 4c 89 ef
e8 77 4c 00 ff <4d> 8b 6d 00 49 39 ed 0f 85 8f 00 00 00 49 8d 7c 24 08
e8 60 4c 00
[  491.118003][T16896] RSP: 0018:ffffc9000902f7d0 EFLAGS: 00010202
[  491.124542][    C1] RIP: 0010:__list_del_entry_valid+0x59/0x8e
[  491.130507][T16896] RAX: 0000000000000afb RBX: ffff888120ab9e00
RCX: ffffffff86d9d6b0
[  491.136850][    C1] Code: 00 00 00 00 ad de 49 39 c4 0f 84 92 00 00
00 48 b8 22 01 00 00 00 00 ad de 49 39 c5 0f 84 b8 00 00 00 4c 89 ef
e8 77 4c 00 ff <4d> 8b 6d 00 49 39 ed 0f 85 8f 00 00 00 49 8d 7c 24 08
e8 60 4c 00
[  491.141504][T16896] RDX: 0000000000000000 RSI: ffff88808aa81a01
RDI: 0000000000ffff88
[  491.152402][    C1] RSP: 0018:ffffc90000d08d18 EFLAGS: 00010002
[  491.163177][T16896] RBP: ffff88808aa81a05 R08: 0000000000000000
R09: 0000000000ffff88
[  491.183561][    C1] RAX: 0000000000000985 RBX: ffff8880a6a21a00
RCX: ffffffff86d9d6b0
[  491.189647][T16896] R10: 0000888120ab9e48 R11: 0000000000ffff8f
R12: 80ae4b8ef8ffff88
[  491.195641][    C1] RDX: 0000000000000000 RSI: ffff88812c12d311
RDI: 0000000000ffff88
[  491.203601][T16896] R13: 0000000000ffff88 R14: ffff88808aa81a00
R15: ffff8880ae4b8100
[  491.223211][    C1] RBP: ffff88812c12d315 R08: 0000000000000000
R09: 0000000000ffff88
[  491.231595][T16896] FS:  0000000000000000(0000)
GS:ffff88812c000000(0000) knlGS:0000000000000000
[  491.237646][    C1] R10: 0000000000000000 R11: 0000000000ffff8f
R12: 808a92f0f0ffff88
[  491.245640][T16896] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  491.253729][    C1] R13: 0000000000ffff88 R14: ffff88812c12d310
R15: ffff88812c12d310
[  491.261774][T16896] CR2: 0000000100ffffc9 CR3: 0000000005a23000
CR4: 00000000001406f0
[  491.261801][T16896] DR0: 0000000000000000 DR1: 0000000000000000
DR2: 0000000000000000
[  491.269817][    C1] FS:  00007f0364420700(0000)
GS:ffff88812c100000(0000) knlGS:0000000000000000
[  491.278022][T16896] DR3: 0000000000000000 DR6: 00000000fffe0ff0
DR7: 0000000000000400
[  491.286501][    C1] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  491.295634][T16896] Kernel panic - not syncing: Fatal exception
[  491.303559][    C1] CR2: 0000000000ffff88 CR3: 000000008b30d000
CR4: 00000000001406e0
[  491.371566][    C1] DR0: 0000000000000000 DR1: 0000000000000000
DR2: 0000000000000000
[  491.381001][    C1] DR3: 0000000000000000 DR6: 00000000fffe0ff0
DR7: 0000000000000400
[  491.388963][    C1] Call Trace:
[  491.392229][    C1]  <IRQ>
[  491.395101][    C1]  ? account_entity_enqueue+0x97/0xc0
[  491.400496][    C1]  ? enqueue_entity+0x96/0x5a0
[  491.405267][    C1]  ? enqueue_task_fair+0xa6/0x400
[  491.410298][    C1]  ? activate_task+0x67/0x100
[  491.414964][    C1]  ? ttwu_do_activate.isra.0+0x3b/0x50
[  491.420410][    C1]  ? try_to_wake_up+0x3b5/0x6d0
[  491.425252][    C1]  ? hrtimer_wakeup+0x48/0x60
[  491.429918][    C1]  ? __hrtimer_run_queues+0x271/0x600
[  491.435281][    C1]  ? hrtimer_active+0x1b0/0x1b0
[  491.440135][    C1]  ? hrtimer_interrupt+0x226/0x490
[  491.445250][    C1]  ? kvm_clock_read+0x14/0x30
[  491.449926][    C1]  ? smp_apic_timer_interrupt+0xd8/0x270
[  491.455551][    C1]  ? apic_timer_interrupt+0xf/0x20
[  491.460641][    C1]  </IRQ>
[  491.463582][    C1]  ? add_taint+0x2b/0x60
[  491.467830][    C1]  ? oops_end+0x5c/0xe0
[  491.471987][    C1]  ? no_context+0x2ce/0x5e0
[  491.476522][    C1]  ? add_nops+0xa0/0xa0
[  491.480696][    C1]  ? __bad_area_nosemaphore+0x7d/0x310
[  491.486158][    C1]  ? do_page_fault+0x708/0xa52
[  491.490934][    C1]  ? page_fault+0x34/0x40
[  491.495274][    C1]  ? __list_del_entry_valid+0x59/0x8e
[  491.500638][    C1]  ? __list_add+0x40/0xd0
[  491.504960][    C1]  ? nf_tables_newflowtable+0xcee/0xf00
[  491.510544][    C1]  ? nft_trans_alloc_gfp+0xc0/0xc0
[  491.515659][    C1]  ? nfnetlink_rcv_batch+0x528/0xbd0
[  491.520979][    C1]  ? __nla_validate_parse+0xa8/0x11d0
[  491.526350][    C1]  ? security_capable+0x8a/0xa0
[  491.531193][    C1]  ? ns_capable_common+0xad/0xc0
[  491.536134][    C1]  ? __nla_parse+0x4b/0x60
[  491.540562][    C1]  ? nfnetlink_rcv+0x269/0x290
[  491.545330][    C1]  ? netlink_unicast+0x390/0x4c0
[  491.550265][    C1]  ? netlink_sendmsg+0x4cf/0x8a0
[  491.555209][    C1]  ? netlink_unicast+0x4c0/0x4c0
[  491.560138][    C1]  ? sock_sendmsg+0x98/0xc0
[  491.564640][    C1]  ? ____sys_sendmsg+0x493/0x4c0
[  491.569580][    C1]  ? ___sys_sendmsg+0xb5/0x100
[  491.574352][    C1]  ? __rcu_read_unlock+0x66/0x2f0
[  491.579389][    C1]  ? __fget_files+0xa2/0x1c0
[  491.583993][    C1]  ? __fget_light+0xc0/0x1a0
[  491.588613][    C1]  ? __fdget+0x29/0x30
[  491.592682][    C1]  ? sockfd_lookup_light+0xa5/0x100
[  491.597879][    C1]  ? __sys_sendmsg+0x9b/0x150
[  491.602559][    C1]  ? __x64_sys_sendmsg+0x4c/0x60
[  491.607508][    C1]  ? do_syscall_64+0xc7/0x390
[  491.612205][    C1]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  491.618273][    C1] Modules linked in:
[  491.622160][    C1] CR2: 0000000000ffff88
[  491.627088][    C1] ---[ end trace a5ad8ea8946e7e65 ]---
[  491.632562][    C1] RIP: 0010:__list_del_entry_valid+0x59/0x8e
[  491.638548][    C1] Code: 00 00 00 00 ad de 49 39 c4 0f 84 92 00 00
00 48 b8 22 01 00 00 00 00 ad de 49 39 c5 0f 84 b8 00 00 00 4c 89 ef
e8 77 4c 00 ff <4d> 8b 6d 00 49 39 ed 0f 85 8f 00 00 00 49 8d 7c 24 08
e8 60 4c 00
[  491.658155][    C1] RSP: 0018:ffffc9000902f7d0 EFLAGS: 00010202
[  491.664223][    C1] RAX: 0000000000000afb RBX: ffff888120ab9e00
RCX: ffffffff86d9d6b0
[  491.672190][    C1] RDX: 0000000000000000 RSI: ffff88808aa81a01
RDI: 0000000000ffff88
[  491.680164][    C1] RBP: ffff88808aa81a05 R08: 0000000000000000
R09: 0000000000ffff88
[  491.688139][    C1] R10: 0000888120ab9e48 R11: 0000000000ffff8f
R12: 80ae4b8ef8ffff88
[  491.696109][    C1] R13: 0000000000ffff88 R14: ffff88808aa81a00
R15: ffff8880ae4b8100
[  491.704086][    C1] FS:  00007f0364420700(0000)
GS:ffff88812c100000(0000) knlGS:0000000000000000
[  491.713021][    C1] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  491.719605][    C1] CR2: 0000000000ffff88 CR3: 000000008b30d000
CR4: 00000000001406e0
[  491.727579][    C1] DR0: 0000000000000000 DR1: 0000000000000000
DR2: 0000000000000000
[  491.736171][    C1] DR3: 0000000000000000 DR6: 00000000fffe0ff0
DR7: 0000000000000400
[  492.459000][T16896] BUG: unable to handle page fault for address:
000000000000ffff
[  492.466825][T16896] #PF: supervisor write access in kernel mode
[  492.472995][T16896] #PF: error_code(0x0002) - not-present page
[  492.478964][T16896] PGD 0 P4D 0
[  492.482342][T16896] Oops: 0002 [#4] PREEMPT SMP
[  492.487107][T16896] CPU: 0 PID: 16896 Comm: sh Tainted: G      D
       5.6.0-rc1-syzkaller #0
[  492.496489][T16896] Hardware name: Google Google Compute
Engine/Google Compute Engine, BIOS Google 01/01/2011
[  492.506675][T16896] RIP: 0010:__list_add_valid+0x6a/0x70
[  492.512182][T16896] Code: e2 0f 85 e5 00 00 00 4c 39 ed 0f 84 c5 00
00 00 48 39 d5 0f 84 bc 00 00 00 e8 32 40 00 ff b8 01 00 00 00 5d 41
5c 58 ab ee a6 <80> 88 ff ff 00 00 41 55 41 54 55 48 89 fd 48 8b 7c 24
18 e8 fe 3f
[  492.531896][T16896] RSP: 0018:ffffc90008fff888 EFLAGS: 00010013
[  492.537953][T16896] RAX: 0000000000000000 RBX: ffffffff85a59580
RCX: ffffffff86d9d568
[  492.545918][T16896] RDX: ffffffff85a59c20 RSI: ffffffff85a56429
RDI: ffffffff85a5642d
[  492.553992][T16896] RBP: ffffffff85a56428 R08: 0000000000000000
R09: 0000ffff85a56428
[  492.562088][T16896] R10: 0000c90008fff7a0 R11: 0000ffff85a5642f
R12: ffffffff85a59c20
[  492.570106][T16896] R13: ffffffff85a56428 R14: ffffffff85a56428
R15: ffffffff85a56420
[  492.578078][T16896] FS:  0000000000000000(0000)
GS:ffff88812c000000(0000) knlGS:0000000000000000
[  492.586995][T16896] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  492.593671][T16896] CR2: 000000000000ffff CR3: 0000000005a23000
CR4: 00000000001406f0
[  492.601792][T16896] DR0: 0000000000000000 DR1: 0000000000000000
DR2: 0000000000000000
[  492.609813][T16896] DR3: 0000000000000000 DR6: 00000000fffe0ff0
DR7: 0000000000000400
[  492.617810][T16896] Call Trace:
[  492.621097][T16896]  ? __register_nmi_handler+0xd7/0x120
[  492.626553][T16896]  ? native_stop_other_cpus+0x148/0x180
[  492.632164][T16896]  ? panic+0x249/0x640
[  492.636352][T16896]  ? vprintk_func+0x89/0x13a
[  492.640970][T16896]  ? oops_end.cold+0x18/0x18
[  492.645552][T16896]  ? no_context+0x2ce/0x5e0
[  492.650055][T16896]  ? __bad_area_nosemaphore+0x7d/0x310
[  492.655558][T16896]  ? do_page_fault+0x3e9/0xa52
[  492.660451][T16896]  ? __rcu_read_unlock+0x66/0x2f0
[  492.665475][T16896]  ? page_fault+0x34/0x40
[  492.669809][T16896]  ? __list_del_entry_valid+0x59/0x8e
[  492.675404][T16896]  ? release_pages+0x7a3/0x9b0
[  492.680201][T16896]  ? free_pages_and_swap_cache+0x231/0x2a0
[  492.686061][T16896]  ? tlb_flush_mmu+0x76/0x390
[  492.690758][T16896]  ? tlb_finish_mmu+0x7f/0x230
[  492.695592][T16896]  ? exit_mmap+0x15e/0x2f0
[  492.700009][T16896]  ? mmput+0xe2/0x260
[  492.704060][T16896]  ? do_exit+0x640/0x1880
[  492.708624][T16896]  ? recalc_sigpending+0x4f/0xe0
[  492.713642][T16896]  ? do_sigaltstack.constprop.0+0x2b5/0x390
[  492.719533][T16896]  ? _copy_from_user+0x93/0xf0
[  492.724302][T16896]  ? do_group_exit+0xae/0x1a0
[  492.728997][T16896]  ? __x64_sys_exit_group+0x2b/0x30
[  492.734242][T16896]  ? do_syscall_64+0xc7/0x390
[  492.738925][T16896]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  492.745030][T16896] Modules linked in:
[  492.748945][T16896] CR2: 000000000000ffff
[  492.753088][T16896] ---[ end trace a5ad8ea8946e7e66 ]---
[  492.758542][T16896] RIP: 0010:__list_del_entry_valid+0x59/0x8e
[  492.764661][T16896] Code: 00 00 00 00 ad de 49 39 c4 0f 84 92 00 00
00 48 b8 22 01 00 00 00 00 ad de 49 39 c5 0f 84 b8 00 00 00 4c 89 ef
e8 77 4c 00 ff <4d> 8b 6d 00 49 39 ed 0f 85 8f 00 00 00 49 8d 7c 24 08
e8 60 4c 00
[  492.784401][T16896] RSP: 0018:ffffc9000902f7d0 EFLAGS: 00010202
[  492.790535][T16896] RAX: 0000000000000afb RBX: ffff888120ab9e00
RCX: ffffffff86d9d6b0
[  492.798498][T16896] RDX: 0000000000000000 RSI: ffff88808aa81a01
RDI: 0000000000ffff88
[  492.806482][T16896] RBP: ffff88808aa81a05 R08: 0000000000000000
R09: 0000000000ffff88
[  492.814450][T16896] R10: 0000888120ab9e48 R11: 0000000000ffff8f
R12: 80ae4b8ef8ffff88
[  492.822415][T16896] R13: 0000000000ffff88 R14: ffff88808aa81a00
R15: ffff8880ae4b8100
[  492.830394][T16896] FS:  0000000000000000(0000)
GS:ffff88812c000000(0000) knlGS:0000000000000000
[  492.839314][T16896] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  492.845895][T16896] CR2: 000000000000ffff CR3: 0000000005a23000
CR4: 00000000001406f0
[  492.853893][T16896] DR0: 0000000000000000 DR1: 0000000000000000
DR2: 0000000000000000
[  492.861856][T16896] DR3: 0000000000000000 DR6: 00000000fffe0ff0
DR7: 0000000000000400
[  492.869878][T16896] Kernel panic - not syncing: Fatal exception
[  492.876789][T16896] Kernel Offset: disabled
[  492.881320][T16896] Rebooting in 86400 seconds..

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2Bax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom%2B2wngQ%40mail.gmail.com.
