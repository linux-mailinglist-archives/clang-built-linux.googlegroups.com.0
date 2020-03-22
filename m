Return-Path: <clang-built-linux+bncBCMIZB7QWENRBQM33TZQKGQETV62HCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9DB18E747
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 08:03:30 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id d2sf10015888qve.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 00:03:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584860609; cv=pass;
        d=google.com; s=arc-20160816;
        b=p/Mauckgu9RR7sH6am26bk9V0L8mlVl7gKHT0dWQ/Vxjxw1fo3lRM42/Ka6sk3UU2F
         nwOrOgCYIu3B/mcMOuU0faDGeNkGctmgZNWFKZ+KvQU5mW9hDmzz+EWmhMKesQz6K0xM
         GIlVNnQ7/IH2/e+SEO0Cxi5KqUCBIxgOdzKYrGXk4+saH28HCTER6Vjjw8IhyywZMTUy
         u99qIdcn/3Qf/9/VM2/WcnaCswnySh9EXPke/yz49dAb0VNe4RehoGrdmrEwaWDuLvHR
         LsJ+tn5hhn8mUrepRv8Recsdyal0v4IeDh7qlM5F39iQEZi76wxTxyHs7o4NSbDVvLKh
         +p9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4DW1zgIQ5kpXq7e81tapyegjaQHYDpWgC98X6QXijTQ=;
        b=Gg/zKUUmqVOi4mvCRcC2tb+2BGjTYjQuyQihdHpdXEAQPIax+XUjmIuArftuRSfEGX
         8jD9m2l+xy1adYFK8E9mhfz3lNqr9TeNq1grAT4AObvU3AOJybSAiACff+eCo1w2lt25
         fukGwRSOnhQc9VJOJDIzBXWwBqwvcEB9jSKQOE8gF1boJa9TbZYFtjeW9LUL++83EAET
         X85JwYIO+/h2OV1nlmu7W0LWwpaC+RRVnyHlqlvY8DEbxPbZs1+yHMQZpNXfg7SSxRMs
         ky3SAZVJj8uWCY7Fb7K+QtGZdUMko2LHi3f41d4oYvAEb4spsK1iuxGbfpZpaQ0KawKI
         Y1tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tn415uxJ;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4DW1zgIQ5kpXq7e81tapyegjaQHYDpWgC98X6QXijTQ=;
        b=UPA83tLbiTYoMNK6MrN1jLDAlw1Mz2ZvWhi9Psy30/VCY0yoJceQ/jqwskUYgTEjE8
         I9kFDsIqtCWZ9Yef8RVDrGdEfHsNyn1UuKMB/bXCgn+oKN0lWd16BRdCbOwpXgCpWOg4
         W0Lvl6XtMKjlpqTUBM0I+IAxf6FyxPErbaYJ4o8T0Guu3IWXgyjilttHC2alpEac0YzL
         n4kxbOWItz0DwILyOvhRnxxKObay7Uyle0iJ07k7n97lP//0A6NkZuWwYCYb6V3y/Cky
         B+XdEw98AOoYasC/c81zEFYu8tmu82X/x/qx/geaqhn5YZA9uAMpOo6jlBSLRRk3z2OO
         kNrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4DW1zgIQ5kpXq7e81tapyegjaQHYDpWgC98X6QXijTQ=;
        b=T475MLl96S2EMxCvGG2YPww6imEwq7YFTda0nWGbIC5TvV7yZQNI/GZXHnJMXP/uFp
         aLt0eN0bLUpGWkEmkr+vS5SBH4iwANV+v4bNlu+vQhCAb1vI/FO3FdPEzxTqtzVwEtnY
         ySHz+5R3sUjjTLfbHmEzvJOYzM4QOCB0E6KU6cI6awJ05e0MF18Qs4pLHqwijtW1O5M1
         rM/XVM0k+2ZhpDnmIL9F9e1Gsdx1XFFXL2sjydBvrwUXcFbPUBLEKfBGWhNyTRlt0XFr
         ObEyi/CdTZUWVPQREanpu5lLXsRPLTbPAUyIYsYrnuPpa97UGVhcFATRdlDEI37LFvPh
         nbrw==
X-Gm-Message-State: ANhLgQ35+1pwoiKlnHF/wZb4zZwt07YT46aOCATW7KUtQByTSoMxENLt
	9jLrWDzJLtU1xQQSMBWs5EY=
X-Google-Smtp-Source: ADFU+vv8ksk19IzqBtwPaJz3NzO/T6x6Z4M9zMKzhYghY1fM+RPuY9Ena5GNcwNnBywXmbgN2Z5QHg==
X-Received: by 2002:ac8:366d:: with SMTP id n42mr16035985qtb.180.1584860609251;
        Sun, 22 Mar 2020 00:03:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:56a:: with SMTP id p10ls6023025qkp.2.gmail; Sun, 22
 Mar 2020 00:03:28 -0700 (PDT)
X-Received: by 2002:a37:a151:: with SMTP id k78mr4830456qke.62.1584860608841;
        Sun, 22 Mar 2020 00:03:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584860608; cv=none;
        d=google.com; s=arc-20160816;
        b=A9PX5D0N0ccdn+2spwTMlBpmMUj2oS4FyGNXaFtnYh1qK9O+yTNGhizvZgVqczK1Qr
         lgsiXDHRNT+xWwXsyU8r22g7Vm4tn5n+lORHcfpUfoXNOnSjE1xM13B6gL7ARrUDKjB/
         KXf7YwRdJhWEspS8jz3S3h+DAiEGaPikSwRJa+XuPb8wcNi6blPJB9oWNMBIZvybGK6E
         QsMj1JipLX07F0tJan/114QMhSvGKSww3WVbtJnaYT14RNV5fvczXKXUty3GbH+lxs1Y
         y0sTTFkXHwuihN+Lh9g0ZCA8O8TOb9Kc/KQwb+PL9H6aTGYJ/UctNDRpLTpsxcu1wCTv
         TkWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uCqt57idHmjJkKnDV2pTVzQGXYCvhK7v2Ozv+3+3YEg=;
        b=F4O5YKIWWukNYZUT84oi85SWVH/lrrLLzFjHXwITRXaRFzW1o4ue6aRulq927IULFe
         KpOBjrgqwKH3eo6FbWBtbK0UYG2F5OS8ys1077n7ru4Z2k8FOg9tZnxdYfon72/eLqUw
         8js22C8+EVBdsIhjW3UxPPeK1RYO4zW0xMz1NfQbzI+XRmfhDvv14XEbtAjOoDlH3pOV
         t3vDhLKRQSws7CbC6vzS+CQxnLKwMcV8CKbFO1zoERuyOfOQLQAgVn7QdptNqhcGfYET
         8BgT4/OyFBdQX5kfs5UP9yiKJvSu9TCzmc5U+ud7urgaDB/F9Svg2SRAkgyUKivpajWg
         BiaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tn415uxJ;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id z126si639424qkd.2.2020.03.22.00.03.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 00:03:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id 10so8957060qtp.1
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 00:03:28 -0700 (PDT)
X-Received: by 2002:aed:2591:: with SMTP id x17mr16170685qtc.380.1584860608200;
 Sun, 22 Mar 2020 00:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
In-Reply-To: <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 22 Mar 2020 08:03:17 +0100
Message-ID: <CACT4Y+Zs5YCRgpsu6v781HvEUU6EZEuz=zj=D2VXQxrO3_L4aA@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, KVM list <kvm@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, 
	"Christopherson, Sean J" <sean.j.christopherson@intel.com>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Vitaly Kuznetsov <vkuznets@redhat.com>, wanpengli@tencent.com, 
	"the arch/x86 maintainers" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Tn415uxJ;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843
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

On Sun, Mar 22, 2020 at 7:59 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Sun, Mar 22, 2020 at 7:43 AM syzbot
> <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com> wrote:
> >
> > Hello,
> >
> > syzbot found the following crash on:
> >
> > HEAD commit:    b74b991f Merge tag 'block-5.6-20200320' of git://git.kerne..
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=16403223e00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=6dfa02302d6db985
> > dashboard link: https://syzkaller.appspot.com/bug?extid=3f29ca2efb056a761e38
> > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> >
> > Unfortunately, I don't have any reproducer for this crash yet.
> >
> > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > Reported-by: syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com
>
> +clang-built-linux
>
> This only happens on the instance that uses clang. So potentially this
> is related to clang. The instance also uses smack lsm, but it's less
> likely to be involved I think.
> This actually started happening around Mar 6, but the ORC unwinder
> somehow fails to unwind stack and prints only questionable frames, so
> the reports were classified as "corrupted" and all thrown in the
> "corrupted reports" bucket:
> https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452
>
> There is already some discussion about this on the clang-built-linux list:
> https://groups.google.com/d/msg/clang-built-linux/Cm3VojRK69I/cfDGxIlTAwAJ
>
> The handle_external_interrupt_irqoff has some inline asm and the
> special STACK_FRAME_NON_STANDARD. So it has some potential for bad
> interaction with compilers...
>
> The commit range is presumably
> fb279f4e238617417b132a550f24c1e86d922558..63849c8f410717eb2e6662f3953ff674727303e7
> But I don't see anything that says "it's me". The only commit that
> does non-trivial changes to x86/vmx seems to be "KVM: VMX: check
> descriptor table exits on instruction emulation":
>
> $ git log --oneline
> fb279f4e238617417b132a550f24c1e86d922558..63849c8f410717eb2e6662f3953ff674727303e7
> virt/kvm/ arch/x86/kvm/
> 86f7e90ce840a KVM: VMX: check descriptor table exits on instruction emulation
> e951445f4d3b5 Merge tag 'kvmarm-fixes-5.6-1' of
> git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm into HEAD
> ef935c25fd648 kvm: x86: Limit the number of "kvm: disabled by bios" messages
> aaec7c03de92c KVM: x86: avoid useless copy of cpufreq policy
> 4f337faf1c55e KVM: allow disabling -Werror
> 575b255c1663c KVM: x86: allow compiling as non-module with W=1
> 7943f4acea3ca KVM: SVM: allocate AVIC data structures based on kvm_amd
> module parameter
> b3f15ec3d809c kvm: arm/arm64: Fold VHE entry/exit work into kvm_vcpu_run_vhe()
> 51b2569402a38 KVM: arm/arm64: Fix up includes for trace.h


And the problem with this crash is that it happens all the time,
basically the only crash that now happens on the instance. So
effectively all kernel testing of all subsystems has stalled due to
this.


> > BUG: kernel NULL pointer dereference, address: 0000000000000086
> > #PF: supervisor instruction fetch in kernel mode
> > #PF: error_code(0x0010) - not-present page
> > PGD a63a4067 P4D a63a4067 PUD a7627067 PMD 0
> > Oops: 0010 [#1] PREEMPT SMP KASAN
> > CPU: 0 PID: 9785 Comm: syz-executor.2 Not tainted 5.6.0-rc6-syzkaller #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> > RIP: 0010:0x86
> > Code: Bad RIP value.
> > RSP: 0018:ffffc90001ac7998 EFLAGS: 00010086
> > RAX: ffffc90001ac79c8 RBX: fffffe0000000000 RCX: 0000000000040000
> > RDX: ffffc9000e20f000 RSI: 000000000000b452 RDI: 000000000000b453
> > RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
> > R10: ffff8880a4e94200 R11: 0000000000000002 R12: dffffc0000000000
> > R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
> > FS:  00007fb50e370700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > CR2: 000000000000005c CR3: 0000000092fc7000 CR4: 00000000001426f0
> > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > Call Trace:
> >  handle_external_interrupt_irqoff+0x154/0x280 arch/x86/kvm/vmx/vmx.c:6274
> >  kvm_before_interrupt arch/x86/kvm/x86.h:343 [inline]
> >  handle_external_interrupt_irqoff+0x132/0x280 arch/x86/kvm/vmx/vmx.c:6272
> >  __irqentry_text_start+0x8/0x8
> >  vcpu_enter_guest+0x6c77/0x9290 arch/x86/kvm/x86.c:8405
> >  save_stack mm/kasan/common.c:72 [inline]
> >  set_track mm/kasan/common.c:80 [inline]
> >  kasan_set_free_info mm/kasan/common.c:337 [inline]
> >  __kasan_slab_free+0x12e/0x1e0 mm/kasan/common.c:476
> >  __cache_free mm/slab.c:3426 [inline]
> >  kfree+0x10a/0x220 mm/slab.c:3757
> >  tomoyo_path_number_perm+0x525/0x690 security/tomoyo/file.c:736
> >  security_file_ioctl+0x55/0xb0 security/security.c:1441
> >  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> >  __lock_acquire+0xc5a/0x1bc0 kernel/locking/lockdep.c:3954
> >  test_bit include/asm-generic/bitops/instrumented-non-atomic.h:110 [inline]
> >  hlock_class kernel/locking/lockdep.c:163 [inline]
> >  mark_lock+0x107/0x1650 kernel/locking/lockdep.c:3642
> >  lock_acquire+0x154/0x250 kernel/locking/lockdep.c:4484
> >  rcu_lock_acquire+0x9/0x30 include/linux/rcupdate.h:208
> >  kvm_check_async_pf_completion+0x34e/0x360 arch/x86/kvm/../../../virt/kvm/async_pf.c:137
> >  vcpu_run+0x3a3/0xd50 arch/x86/kvm/x86.c:8513
> >  kvm_arch_vcpu_ioctl_run+0x419/0x880 arch/x86/kvm/x86.c:8735
> >  kvm_vcpu_ioctl+0x67c/0xa80 arch/x86/kvm/../../../virt/kvm/kvm_main.c:2932
> >  kvm_vm_release+0x50/0x50 arch/x86/kvm/../../../virt/kvm/kvm_main.c:858
> >  vfs_ioctl fs/ioctl.c:47 [inline]
> >  ksys_ioctl fs/ioctl.c:763 [inline]
> >  __do_sys_ioctl fs/ioctl.c:772 [inline]
> >  __se_sys_ioctl+0xf9/0x160 fs/ioctl.c:770
> >  do_syscall_64+0xf3/0x1b0 arch/x86/entry/common.c:294
> >  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> > Modules linked in:
> > CR2: 0000000000000086
> > ---[ end trace 4da75c292cd7e3e8 ]---
> > RIP: 0010:0x86
> > Code: Bad RIP value.
> > RSP: 0018:ffffc90001ac7998 EFLAGS: 00010086
> > RAX: ffffc90001ac79c8 RBX: fffffe0000000000 RCX: 0000000000040000
> > RDX: ffffc9000e20f000 RSI: 000000000000b452 RDI: 000000000000b453
> > RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
> > R10: ffff8880a4e94200 R11: 0000000000000002 R12: dffffc0000000000
> > R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
> > FS:  00007fb50e370700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > CR2: 000000000000005c CR3: 0000000092fc7000 CR4: 00000000001426f0
> > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> >
> >
> > ---
> > This bug is generated by a bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for more information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> >
> > syzbot will keep track of this bug report. See:
> > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/000000000000277a0405a16bd5c9%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZs5YCRgpsu6v781HvEUU6EZEuz%3Dzj%3DD2VXQxrO3_L4aA%40mail.gmail.com.
