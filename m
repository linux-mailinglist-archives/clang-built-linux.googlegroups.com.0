Return-Path: <clang-built-linux+bncBCMIZB7QWENRBY4Z3TZQKGQEIVNY33Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AFF18E740
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 07:59:48 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id x192sf3536023vke.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 23:59:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584860387; cv=pass;
        d=google.com; s=arc-20160816;
        b=zrtYhaxsTXO+epdwMmUfq7XOIoZ+vtk9s/lvF9Ut3T0X1FLdZDN10U4iIKf0eJPSjm
         GBdX7iVdRjvrprr4mlSQWYcOdVIco0ZsrHT/6mx0Uu1B9CkLlyW8DEE2XCrcUr8UpN6E
         UJjohl4EmKVnSF5Go1emcqyYcFEkBqeXwTQSvDVwkpHyY7QbqxUt9su0ZVqN/ZaRFCEc
         m1voGgpCbQQEXhQpA8TOAAv+lqxicyPC2H6Gr9UI7gADZgVwrXpdZ40vr3yqKkXuiJN8
         /BiAv0m4a7AUyrONDxW6tkxSaUvjenxnBt7wft8o9jhHXOvmQ5MeTWoiJ4eP1oWeaY+E
         X3fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KlcMbfBhkYWItkvUngo2XEbECsQROiwNW/JxPSrAN80=;
        b=FLzaAnF0yxiCCrM9U5ToSu4aOlD9j7LN4xfJ5fU5VShfXM99ya2hgJgpctzndyqz/a
         0Y1rhLEjUT+hB5y6qyNOXCnCaFhe9EZWvf1AR87WKAhew83RbJQ3+c4aKIfq4idWxCth
         gN2i+WXkE2mfyrSG4jg9km73DDBUe72c5Lc1PBtZw8eRjDkmnAEC1UIwzYWIYMe1vgWm
         3F+dMo6PU118N/TH5oSVDbs3POg4X6zK1z5eD/mUOziNT/q2NjtLJQgGIoSEuUM+05Nk
         WfiT+JFEI5+cjYGK7vKQFduW6/olWgPfYDzb+m7KC5IbqHG9JRB5J+Y1viYohnOd5tfG
         hxOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lqAXKSKf;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KlcMbfBhkYWItkvUngo2XEbECsQROiwNW/JxPSrAN80=;
        b=Xh/9gc1JR66jGGqOrHTmBTdKQEBXvUz7eQpdwoD2Wbo6Uetg0lp62hRh5xDLCls8pQ
         HO+wkiBQEwfwg9mUxW+LjyxxLEm0znKbku1afQI6rlVdbYWMx7Ely2rBjOvBgb03HP/z
         QGj/7Kbx59b+HOFdu49Py1cjJLaFy2zwRG6g/tgmQVp9zOL1tkvYaHLUeMDFBmfytNif
         +9MxD9t2c8g8K+9sQzCq37AI52IkWaE/n3o2EdvTThnlvC04EpfbD/NmzDmiSlNbIGDH
         j+/rdsfCvZyPmBKqiEbxQVLGwPvolTYJlazIpK20+hYD2LfHSpYKtmWSqYCsqm2XjFzf
         GTBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KlcMbfBhkYWItkvUngo2XEbECsQROiwNW/JxPSrAN80=;
        b=n628tGhytdkIXjgb02TGtmpFqlfmq4cGUYhsi/e7v5OC/th7SDg3PTqFGQADxSZg7W
         xjROW0tj/eETzA3lTFUrE4jWhcBUxBPM+lWXOV16O9ySuTDu+R46WIBLCaoksh05eMK1
         0Pfv1kgX4eBkWSHC44JuPp3SkF0IurvX95RoHdUzVgSz1p6L6nUGwA7Th+7hOQ0CyhA9
         OYU2/dQEIWYCCzj2T1YN5OLz25G/TJCDV2+fhw4JX+ivw0TJS2Zj6kUO2gttkEpUzipT
         rGCga27rXSvSlcVMBhXa+0xP5O8Z7A0ZcVoIiAA/yd9m+vf1RtDsp/gziiEpFF2D8gWs
         wDBQ==
X-Gm-Message-State: ANhLgQ0nTDzgL512VHmvGSqawXPI2EMApiExc/h0jrPEnBRZVTZfTwV1
	g4kWz+rlSIg47KygCw3/Eus=
X-Google-Smtp-Source: ADFU+vvqFpk6lYkr0g6TcVVoSuw4Bu0Uk1geINBT/UJ0PZHfgUQiMaDpq0k/TCyzRlTrwQfG3CdYpQ==
X-Received: by 2002:ab0:28c9:: with SMTP id g9mr9945467uaq.117.1584860387485;
        Sat, 21 Mar 2020 23:59:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e359:: with SMTP id s25ls1389873vsm.11.gmail; Sat, 21
 Mar 2020 23:59:47 -0700 (PDT)
X-Received: by 2002:a67:902:: with SMTP id 2mr4198252vsj.133.1584860386993;
        Sat, 21 Mar 2020 23:59:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584860386; cv=none;
        d=google.com; s=arc-20160816;
        b=kvd8w+4tmOTUqOme6tYxgOfhZCAJS3ESpZI+m+HKESsofiOcw9oyHGA4+pDClA3FlC
         nvZGNHg+Jl/mmfeY3X0ddAB4f6wztR/Ip4ZmsxDJj5adm0VkMpk+IBCDXNodNP6qOk6Z
         bCQPcaWX4hZGprB+GJWwEVbYHtfQNTmeupvNKbDJBaNvQsC+Eeu0Ycrmt8VWCUd4OMiu
         HdS9MGLXapVmlpaCMNsfI7t4yokyxFrg4q4UdkaB+MSgMHnxFLk5KhvbUQPUdDNlx4r5
         PRhdRHwwTNUd38sfI/N/KlgdIeoAACipmNCG0yb6oFfQQZLblSkB0dpTQX+3m+hEyCJg
         MNhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZzXf7OmXJvZJlC6ii5Wss897sJ3Eh3+xiSmgKJuh59Q=;
        b=cN23za36VlxUXyToo52YpvpULYnVAZuX9tGLZUD/M0X3jUIQVOFgnDCC2iJ6Ps8npp
         EKOOnoNGDgGRUM20Rxehh1gyfd5ZTGSii2ZO/Yir2lI6h09ulOa6kqerQHkOuLcrLVaf
         YwMce21Ynk9pIuQDFCfFF9qSTgB970f9covWM9f4P4rNHxloZdFrVnB2o5ghTW/zNjKw
         pjVEv2aMrh1kVvrVbynZ+Tg+Gvex3cp4Gc7LadqKSZP1a3fCQ9T/q+SNOgdV08gi3u4P
         lQjXEpZ9eCyZ/intebIBz9tMi57FZ30guugGVKwVi0HQ7WsbOAb3WhJQMFCNAIgrx/PH
         4f/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lqAXKSKf;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id w12si646169uaq.0.2020.03.21.23.59.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 23:59:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id o10so6133434qki.10
        for <clang-built-linux@googlegroups.com>; Sat, 21 Mar 2020 23:59:46 -0700 (PDT)
X-Received: by 2002:a37:7c47:: with SMTP id x68mr15897286qkc.8.1584860386274;
 Sat, 21 Mar 2020 23:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com>
In-Reply-To: <000000000000277a0405a16bd5c9@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 22 Mar 2020 07:59:35 +0100
Message-ID: <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=lqAXKSKf;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744
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

On Sun, Mar 22, 2020 at 7:43 AM syzbot
<syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    b74b991f Merge tag 'block-5.6-20200320' of git://git.kerne..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=16403223e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=6dfa02302d6db985
> dashboard link: https://syzkaller.appspot.com/bug?extid=3f29ca2efb056a761e38
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
>
> Unfortunately, I don't have any reproducer for this crash yet.
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com

+clang-built-linux

This only happens on the instance that uses clang. So potentially this
is related to clang. The instance also uses smack lsm, but it's less
likely to be involved I think.
This actually started happening around Mar 6, but the ORC unwinder
somehow fails to unwind stack and prints only questionable frames, so
the reports were classified as "corrupted" and all thrown in the
"corrupted reports" bucket:
https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452

There is already some discussion about this on the clang-built-linux list:
https://groups.google.com/d/msg/clang-built-linux/Cm3VojRK69I/cfDGxIlTAwAJ

The handle_external_interrupt_irqoff has some inline asm and the
special STACK_FRAME_NON_STANDARD. So it has some potential for bad
interaction with compilers...

The commit range is presumably
fb279f4e238617417b132a550f24c1e86d922558..63849c8f410717eb2e6662f3953ff674727303e7
But I don't see anything that says "it's me". The only commit that
does non-trivial changes to x86/vmx seems to be "KVM: VMX: check
descriptor table exits on instruction emulation":

$ git log --oneline
fb279f4e238617417b132a550f24c1e86d922558..63849c8f410717eb2e6662f3953ff674727303e7
virt/kvm/ arch/x86/kvm/
86f7e90ce840a KVM: VMX: check descriptor table exits on instruction emulation
e951445f4d3b5 Merge tag 'kvmarm-fixes-5.6-1' of
git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm into HEAD
ef935c25fd648 kvm: x86: Limit the number of "kvm: disabled by bios" messages
aaec7c03de92c KVM: x86: avoid useless copy of cpufreq policy
4f337faf1c55e KVM: allow disabling -Werror
575b255c1663c KVM: x86: allow compiling as non-module with W=1
7943f4acea3ca KVM: SVM: allocate AVIC data structures based on kvm_amd
module parameter
b3f15ec3d809c kvm: arm/arm64: Fold VHE entry/exit work into kvm_vcpu_run_vhe()
51b2569402a38 KVM: arm/arm64: Fix up includes for trace.h



> BUG: kernel NULL pointer dereference, address: 0000000000000086
> #PF: supervisor instruction fetch in kernel mode
> #PF: error_code(0x0010) - not-present page
> PGD a63a4067 P4D a63a4067 PUD a7627067 PMD 0
> Oops: 0010 [#1] PREEMPT SMP KASAN
> CPU: 0 PID: 9785 Comm: syz-executor.2 Not tainted 5.6.0-rc6-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:0x86
> Code: Bad RIP value.
> RSP: 0018:ffffc90001ac7998 EFLAGS: 00010086
> RAX: ffffc90001ac79c8 RBX: fffffe0000000000 RCX: 0000000000040000
> RDX: ffffc9000e20f000 RSI: 000000000000b452 RDI: 000000000000b453
> RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
> R10: ffff8880a4e94200 R11: 0000000000000002 R12: dffffc0000000000
> R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
> FS:  00007fb50e370700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000000000000005c CR3: 0000000092fc7000 CR4: 00000000001426f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  handle_external_interrupt_irqoff+0x154/0x280 arch/x86/kvm/vmx/vmx.c:6274
>  kvm_before_interrupt arch/x86/kvm/x86.h:343 [inline]
>  handle_external_interrupt_irqoff+0x132/0x280 arch/x86/kvm/vmx/vmx.c:6272
>  __irqentry_text_start+0x8/0x8
>  vcpu_enter_guest+0x6c77/0x9290 arch/x86/kvm/x86.c:8405
>  save_stack mm/kasan/common.c:72 [inline]
>  set_track mm/kasan/common.c:80 [inline]
>  kasan_set_free_info mm/kasan/common.c:337 [inline]
>  __kasan_slab_free+0x12e/0x1e0 mm/kasan/common.c:476
>  __cache_free mm/slab.c:3426 [inline]
>  kfree+0x10a/0x220 mm/slab.c:3757
>  tomoyo_path_number_perm+0x525/0x690 security/tomoyo/file.c:736
>  security_file_ioctl+0x55/0xb0 security/security.c:1441
>  entry_SYSCALL_64_after_hwframe+0x49/0xbe
>  __lock_acquire+0xc5a/0x1bc0 kernel/locking/lockdep.c:3954
>  test_bit include/asm-generic/bitops/instrumented-non-atomic.h:110 [inline]
>  hlock_class kernel/locking/lockdep.c:163 [inline]
>  mark_lock+0x107/0x1650 kernel/locking/lockdep.c:3642
>  lock_acquire+0x154/0x250 kernel/locking/lockdep.c:4484
>  rcu_lock_acquire+0x9/0x30 include/linux/rcupdate.h:208
>  kvm_check_async_pf_completion+0x34e/0x360 arch/x86/kvm/../../../virt/kvm/async_pf.c:137
>  vcpu_run+0x3a3/0xd50 arch/x86/kvm/x86.c:8513
>  kvm_arch_vcpu_ioctl_run+0x419/0x880 arch/x86/kvm/x86.c:8735
>  kvm_vcpu_ioctl+0x67c/0xa80 arch/x86/kvm/../../../virt/kvm/kvm_main.c:2932
>  kvm_vm_release+0x50/0x50 arch/x86/kvm/../../../virt/kvm/kvm_main.c:858
>  vfs_ioctl fs/ioctl.c:47 [inline]
>  ksys_ioctl fs/ioctl.c:763 [inline]
>  __do_sys_ioctl fs/ioctl.c:772 [inline]
>  __se_sys_ioctl+0xf9/0x160 fs/ioctl.c:770
>  do_syscall_64+0xf3/0x1b0 arch/x86/entry/common.c:294
>  entry_SYSCALL_64_after_hwframe+0x49/0xbe
> Modules linked in:
> CR2: 0000000000000086
> ---[ end trace 4da75c292cd7e3e8 ]---
> RIP: 0010:0x86
> Code: Bad RIP value.
> RSP: 0018:ffffc90001ac7998 EFLAGS: 00010086
> RAX: ffffc90001ac79c8 RBX: fffffe0000000000 RCX: 0000000000040000
> RDX: ffffc9000e20f000 RSI: 000000000000b452 RDI: 000000000000b453
> RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
> R10: ffff8880a4e94200 R11: 0000000000000002 R12: dffffc0000000000
> R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
> FS:  00007fb50e370700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000000000000005c CR3: 0000000092fc7000 CR4: 00000000001426f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>
>
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/000000000000277a0405a16bd5c9%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2Bb1WFT87pWQaXD3CWjyjoQaP1jcycHdHF%2BrtxoR5xW1ww%40mail.gmail.com.
