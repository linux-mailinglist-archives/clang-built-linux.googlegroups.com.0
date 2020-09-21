Return-Path: <clang-built-linux+bncBCMIZB7QWENRBZV7UH5QKGQER2I47ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C09271D8A
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 10:10:15 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id v195sf6134138oia.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 01:10:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600675814; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+c58A4D9oGIfPAg0iQmydeiSrAHJESAJbRmtlX8FLn2Oto6E+oHX798h7Q48xkSCK
         eY947DkQT/ijMVoKKZAYgPuOao1t6q15fC8u7qJh0uraVdHKyEe56G1sSa2BeU5NqzN/
         aKiD000pfsUTACz+I+bdbOMPLsYaUH/S0JNWyqfVZYJszBcADYuW38OuBxVBa0paMcnM
         pCP0ohNNq8+jaOOAkiDgGOafPRqRc/V/9UVQbI9sy3Z69m1GymS3Bc7xhETYUH/Q/Mk9
         ClsP6NJpbNXykNEgi4rcsQLqZ218sUWbEzf8+c05Hv5N5uA8MTZe8t1HDwO1ZzetMmPY
         haKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KBF/lS2Z+jERqQqJ6cD+VpIp9b1GVbE6x02NdYTkOiw=;
        b=gbzw6yoWVANs6R1KTB5WoWTqQjzN0hS7sU+Q6mgCoZI4gBgwUb5GKmA8LPTyMY1uQ2
         pnCuN2BDs39FGlJl+gY4sPOLWXf/kzOAT43UvZ05uJW3zk5cBKEsjQYCR9KFZBVX5zP5
         xG6tmy11SULKAd8KdH2mE9mkeDV8pPxxSPfrp7kYdBhWrU+xeyh3Kk1cMc7iNnJ1HnZ6
         R+nywuClxwhKBEn/NH8IyZwBJSKy2UK2xzUEaeWDH2/M1znNVVR+WiHSp376pQpOe4UM
         Y43xoE8slMxyV8CuMnBxhvhy/7SnACVYbD2X9R2KINbYbhGIIZlgkjM6toiFaIeuURJt
         inmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ttO9UV9f;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KBF/lS2Z+jERqQqJ6cD+VpIp9b1GVbE6x02NdYTkOiw=;
        b=Y7j9BGYDVC6pXZzdNYQ0dk6SecgBOnsXHuev5Td+Cce8rDTosx3DAZCMKIwLnVH23e
         xNxHFyQa37OUb9rZD/ldjGgTdW5eTuqEtpQviZNn4N/fElL3taqUfF/FiQHK87gvmp9W
         1KNkubUCmRRVldqVuUYsKXLtidQZinlYBXwjB6ZDSa4XgTvVsfUzVDEBDO1DF6yVVPZ5
         gEsTGXz3zX3aTIUD8ZiSr1oUPRKnY2uTbZiWQh/btBWGNw5jGsjnuzajf8fHQml7Pkq6
         /AS5uglcUVaoCCS1NEJT4ZxBO7RtRaWmLES353S4Nn5fnn2Ie+2+fVGwfuNJ5djcVQfU
         Eqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KBF/lS2Z+jERqQqJ6cD+VpIp9b1GVbE6x02NdYTkOiw=;
        b=r4w6+I1Hk8zwXv5meqxK+a3Lz9Fte8JTVVpyvoOSmN26WGlwfI7tnmgH4kquLUbdTr
         J/MBi9NdRnRp7geT3c0J6sPBOMzx9yELv97CFpIM9OsgePRVx+0yDFpFBddQKMPVrhkL
         oKzJVtK5Xq319wB1mf93bKxLXePV8stznUCOgGqwKK+CzdUgT0BfkKvPN9hgdsH6LXfF
         Wn02cpnlhUFJ3O1j8/69DQ0Mr1daTUl3dJYhWRTj9btIKUsWZ32A8uMHbd5GcGmWwYxq
         l3ofLexbyr+qlpJZlpx8T+Fb0sor8brGsebjxUtZRfyqaJnBDu8Zv7cTb8EYDGuRgplq
         tsbw==
X-Gm-Message-State: AOAM530Vq8fsDlvyIsnPMnrMOxYuBItKDVmN7m+IAtqxbMiAbDt5mySQ
	ncsbAyzpCdV3coOHskHZVnQ=
X-Google-Smtp-Source: ABdhPJwgzv0xInEmC5a5ikpgxcWSRIlvBIUg3YD3lPXr9ZSrqfK+GEqgSt1fg1vP6uKhdqMyCgIR1A==
X-Received: by 2002:aca:b355:: with SMTP id c82mr5274671oif.80.1600675814733;
        Mon, 21 Sep 2020 01:10:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0b:: with SMTP id u11ls2685491otg.3.gmail; Mon,
 21 Sep 2020 01:10:14 -0700 (PDT)
X-Received: by 2002:a05:6830:1db5:: with SMTP id z21mr32295425oti.144.1600675814411;
        Mon, 21 Sep 2020 01:10:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600675814; cv=none;
        d=google.com; s=arc-20160816;
        b=YZzcLBnCpOaKVhO3wea4K+UV+XqZrrcfPd1gQD6cUJmyiTVozFqJgSQqjvraxgv540
         bKQEbxz5kyXb1zmyXyRhx51xwKEfck17IL3qtRQ8lUnsd5BPWcKpnCtXcrj9jbkuaXY/
         GMvOZw69EfBWtS3vUq1Y6ES/mY3ofwLgPjtjh+iRXWEyM5BBUfi6yHg25nGbCzwE14qG
         axagiGRSafs/wCkr/TyZ+UdgnLiqburDF4rXUT7olX23XS4uw0FrduRHKlTIQLbWCnTj
         oo3CyoZK49PzvPnvhhsejP449b1kwOA1n3nEjG6t50PcnF7GPWEuqBhy/Mhq/EJKFjfg
         qb5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qmpFhgf/w1XM5+05gx2cXqpT+31unLYJct1t2g2+x8E=;
        b=Z2+K5yOWWbYCoWLM0vxl3plJ1NH7eiMaeM5ET/ONRXiHv4iil65RyDmL6IEi3fsgmz
         VQ4yIcvOT9cEQhHWJ+KVB+nN1jSQpvlGWilqG3ZMb3efdawol6fEAXb9eUXPtA21FO4Z
         +eVLJPEL6EEBCDtEJ15MBEQ5bgJDY9lCLIOwIUyHNiI1v9VIT0e/+mQ+KpwMSSbCLUdh
         At5LJOCkzMdMg8kn5kaMcz2LOOdKZasYkksMAwF7bBq12hsqpi0TENeUU11fW446CA7E
         hACU9/Vchy+cTtqH018G4Bi5w9V4DiDWhzeytxS4lAidRU5MTVc4depIaW5mNjFORfc+
         HeQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ttO9UV9f;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id d1si590768oom.0.2020.09.21.01.10.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 01:10:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id w16so14055346qkj.7
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 01:10:14 -0700 (PDT)
X-Received: by 2002:a37:9b82:: with SMTP id d124mr44880623qke.8.1600675813584;
 Mon, 21 Sep 2020 01:10:13 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000002c37a605afce4504@google.com>
In-Reply-To: <0000000000002c37a605afce4504@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 10:10:02 +0200
Message-ID: <CACT4Y+ZMMu1o7HTjFYC++JYWQoEN3STMo38utqpmFRCkQy2u-Q@mail.gmail.com>
Subject: Re: general protection fault in pvclock_gtod_notify (2)
To: syzbot <syzbot+1dccfcb049726389379c@syzkaller.appspotmail.com>
Cc: Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, KVM list <kvm@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, 
	"Christopherson, Sean J" <sean.j.christopherson@intel.com>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Vitaly Kuznetsov <vkuznets@redhat.com>, wanpengli@tencent.com, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ttO9UV9f;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743
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

On Mon, Sep 21, 2020 at 10:02 AM syzbot
<syzbot+1dccfcb049726389379c@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    eb5f95f1 Merge tag 's390-5.9-6' of git://git.kernel.org/pu..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=14720ac3900000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> dashboard link: https://syzkaller.appspot.com/bug?extid=1dccfcb049726389379c
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+1dccfcb049726389379c@syzkaller.appspotmail.com
>
> general protection fault, probably for non-canonical address 0x1ffffffef40f602c: 0000 [#1] PREEMPT SMP KASAN
> CPU: 1 PID: 3915 Comm: systemd-udevd Not tainted 5.9.0-rc5-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:update_pvclock_gtod arch/x86/kvm/x86.c:1743 [inline]
> RIP: 0010:pvclock_gtod_notify+0x11d/0x490 arch/x86/kvm/x86.c:7452
> Code: 10 48 89 f8 48 c1 e8 03 42 80 3c 20 00 74 05 e8 69 76 a7 00 49 8b 47 10 48 89 05 f6 08 cb 09 49 8d 7f 08 48 89 f8 48 c1 e8 03 <42> 80 3c 70 07 77 00 e8 47 76 a7 00 49 8b 47 08 48 89 05 dc 08 cb
> RSP: 0018:ffffc90000da8c50 EFLAGS: 00010806
> RAX: 1ffffffff1707d7e RBX: ffffffff894cc67c RCX: ffffffff815adc44
> RDX: dffffc0000000000 RSI: 0000000000000008 RDI: ffffffff8b83ebf0
> RBP: ffffffff894bd1a8 R08: dffffc0000000000 R09: fffffbfff167daa0
> R10: fffffbfff167daa0 R11: 0000000000000000 R12: dffffc0000000000
> R13: 00000000ffffffff R14: ffffffff814f7157 R15: ffffffff8b83ebe8
> FS:  00007f7a9e2c88c0(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000744138 CR3: 00000000a256d000 CR4: 00000000001526e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  <IRQ>
>  notifier_call_chain kernel/notifier.c:83 [inline]
>  __raw_notifier_call_chain kernel/notifier.c:361 [inline]
>  raw_notifier_call_chain+0xe7/0x170 kernel/notifier.c:368
>  update_pvclock_gtod kernel/time/timekeeping.c:581 [inline]
>  timekeeping_update+0x281/0x3f0 kernel/time/timekeeping.c:675
>  timekeeping_advance+0x830/0xa00 kernel/time/timekeeping.c:2122
>  tick_sched_do_timer kernel/time/tick-sched.c:147 [inline]
>  tick_sched_timer+0xba/0x410 kernel/time/tick-sched.c:1321
>  __run_hrtimer kernel/time/hrtimer.c:1524 [inline]
>  __hrtimer_run_queues+0x42d/0x930 kernel/time/hrtimer.c:1588
>  hrtimer_interrupt+0x373/0xd60 kernel/time/hrtimer.c:1650
>  local_apic_timer_interrupt arch/x86/kernel/apic/apic.c:1080 [inline]
>  __sysvec_apic_timer_interrupt+0xf0/0x260 arch/x86/kernel/apic/apic.c:1097
>  asm_call_on_stack+0xf/0x20 arch/x86/entry/entry_64.S:706
>  </IRQ>
>  __run_on_irqstack arch/x86/include/asm/irq_stack.h:22 [inline]
>  run_on_irqstack_cond arch/x86/include/asm/irq_stack.h:48 [inline]
>  sysvec_apic_timer_interrupt+0x94/0xf0 arch/x86/kernel/apic/apic.c:1091
>  asm_sysvec_apic_timer_interrupt+0x12/0x20 arch/x86/include/asm/idtentry.h:581
> RIP: 0010:___might_sleep+0x60/0x570 kernel/sched/core.c:7265
> Code: ff ff e8 e3 d2 d9 06 85 c0 74 1f c6 05 49 10 39 08 01 48 c7 c7 2a 87 09 89 be 61 1c 00 00 48 c7 c2 11 89 09 89 e8 90 a4 08 00 <e8> 4b d5 d9 06 85 c0 74 3d 80 3d 22 10 39 08 00 75 34 48 c7 c7 20
> RSP: 0018:ffffc900011f7b08 EFLAGS: 00000246
> RAX: 0000000000000000 RBX: 0000000000000c40 RCX: dffffc0000000000
> RDX: 0000000000000000 RSI: ffffffff894fe578 RDI: 0000000000000282
> RBP: ffff8880aa440900 R08: dffffc0000000000 R09: fffffbfff167da9f
> R10: fffffbfff167da9f R11: 0000000000000000 R12: 0000000000001000
> R13: 0000000000000c40 R14: 0000000000000000 R15: 0000000000000000
>  cache_alloc_debugcheck_before mm/slab.c:2984 [inline]
>  slab_alloc mm/slab.c:3302 [inline]
>  __do_kmalloc mm/slab.c:3653 [inline]
>  __kmalloc+0x94/0x300 mm/slab.c:3664
>  kmalloc include/linux/slab.h:559 [inline]
>  tomoyo_realpath_from_path+0xd8/0x630 security/tomoyo/realpath.c:254
>  tomoyo_get_realpath security/tomoyo/file.c:151 [inline]
>  tomoyo_path_perm+0x17d/0x740 security/tomoyo/file.c:822
>  security_inode_getattr+0xc0/0x140 security/security.c:1278
>  vfs_getattr fs/stat.c:121 [inline]
>  vfs_statx+0x118/0x380 fs/stat.c:206
>  vfs_lstat include/linux/fs.h:3178 [inline]
>  __do_sys_newlstat fs/stat.c:374 [inline]
>  __se_sys_newlstat fs/stat.c:368 [inline]
>  __x64_sys_newlstat+0x81/0xd0 fs/stat.c:368
>  do_syscall_64+0x31/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x7f7a9d13b335
> Code: 69 db 2b 00 64 c7 00 16 00 00 00 b8 ff ff ff ff c3 0f 1f 40 00 83 ff 01 48 89 f0 77 30 48 89 c7 48 89 d6 b8 06 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 03 f3 c3 90 48 8b 15 31 db 2b 00 f7 d8 64 89
> RSP: 002b:00007fff5eaa2608 EFLAGS: 00000246 ORIG_RAX: 0000000000000006
> RAX: ffffffffffffffda RBX: 0000564636a00770 RCX: 00007f7a9d13b335
> RDX: 00007fff5eaa2640 RSI: 00007fff5eaa2640 RDI: 00005646369ff770
> RBP: 00007fff5eaa2700 R08: 00007f7a9d3fa178 R09: 0000000000001010
> R10: 0000000000000020 R11: 0000000000000246 R12: 00005646369ff770
> R13: 00005646369ff790 R14: 00005646369a42bb R15: 00005646369a42c0
> Modules linked in:
> ---[ end trace 4ff96b4858c23e64 ]---
> RIP: 0010:update_pvclock_gtod arch/x86/kvm/x86.c:1743 [inline]
> RIP: 0010:pvclock_gtod_notify+0x11d/0x490 arch/x86/kvm/x86.c:7452
> Code: 10 48 89 f8 48 c1 e8 03 42 80 3c 20 00 74 05 e8 69 76 a7 00 49 8b 47 10 48 89 05 f6 08 cb 09 49 8d 7f 08 48 89 f8 48 c1 e8 03 <42> 80 3c 70 07 77 00 e8 47 76 a7 00 49 8b 47 08 48 89 05 dc 08 cb
> RSP: 0018:ffffc90000da8c50 EFLAGS: 00010806
> RAX: 1ffffffff1707d7e RBX: ffffffff894cc67c RCX: ffffffff815adc44
> RDX: dffffc0000000000 RSI: 0000000000000008 RDI: ffffffff8b83ebf0
> RBP: ffffffff894bd1a8 R08: dffffc0000000000 R09: fffffbfff167daa0
> R10: fffffbfff167daa0 R11: 0000000000000000 R12: dffffc0000000000
> R13: 00000000ffffffff R14: ffffffff814f7157 R15: ffffffff8b83ebe8
> FS:  00007f7a9e2c88c0(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000744138 CR3: 00000000a256d000 CR4: 00000000001526e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

The failure mode looks somewhat similar to:
general protection fault in perf_misc_flags
https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
https://groups.google.com/g/syzkaller-bugs/c/d5GC1V8S34k/m/6LTarP8mBAAJ

only clang, gpf in systems code, happened few times

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZMMu1o7HTjFYC%2B%2BJYWQoEN3STMo38utqpmFRCkQy2u-Q%40mail.gmail.com.
