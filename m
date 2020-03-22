Return-Path: <clang-built-linux+bncBCQPF57GUQHBB6WO3TZQKGQEH6YVAHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D2118E7A8
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 09:53:16 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id e2sf8164603pgb.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 01:53:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584867195; cv=pass;
        d=google.com; s=arc-20160816;
        b=qnRb9MuUdbliqxtzcQotMXjvkzCs70yehPKCvZTR+Oao/48zzB8z3yzt2v5pedXQTL
         PLfZb6gigXP3ys1hqrCZRJnCi8auKTCTc0CNw43Dm3OARAMkFK2qW5P9kBft0dVwmjZ8
         ga1A6krbNYnSL7FncHGK425TTivATZOzZKlq2cVZI3WzrEj8O4//mPVXqZvN1p6a8eLv
         YSyHYK9SN5ZJNOUjtpH3lYArRpDrWpdublwPc0VOVH9QpBGdsLiGJ5tAjz1cfhCEuTAI
         6rvnk9lQmYFmukkW9ZRy645bZOXgYE7oQMCuEFoJh+7AdIs+nErFkS4KwdFUXBcDNl+o
         vdxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=I2XRxbTgfyRwwCND8QGFS3wz4+4gPRSK45LhR3RCtvY=;
        b=W9NNDB+kYF98ID5fBuyUEI3t+yb6qVoBHBJNM1IvkIFFOR9UzQSD5K3HsECE01RAz0
         AzADB5t9rjRSffZ0WrLNv6KNs/SELi8A/LPqkKhVYCDcZTesOBXz1HsxO4SftydZSiZR
         yiu3PoKbsBT/dtICFYB6xOxHwU9Qpdwka3vsuk3IXRFi8HOZQbA99RxHdhIfpX7o+v9v
         3uXeg3NrBU1dRuzzg5xnOQ0WPWxgbt7QuZ5rpgrCAMo5fQSxDm3PwOrWqRQf1gWAImba
         wO25kj1I4p5zGdD1WAG6w5mkYZ3cSFR2pemHwIjhvQ5h2bAqHgDQkVC3xVFN9dOnQTrn
         +FKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3esd3xgkbaj4qwxi8jjcp8nngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3eSd3XgkbAJ4QWXI8JJCP8NNGB.EMMEJCSQCPAMLRCLR.AMK@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I2XRxbTgfyRwwCND8QGFS3wz4+4gPRSK45LhR3RCtvY=;
        b=AeCCxO9XYI6TbVez7KzrgegytYJsAfRR3b4hyyGOGhsbyqnAML3Wb8mN3k5A25RQyr
         Sfb/dBJ5m4fruRHlJuBFjZ4zoDSYkgAbxmUN7cC4r3IIcWEkJuHM3HENf3MVlKk0vMoB
         eEHsgu2y7+3EMcLIABmr+050sgGriiscCRGAtMrjCiDtqmWYmWZLWcnfuyUBivj6Pbyt
         EcSlLVaojO8DAL64Q21CwUMNPfEMN47v0DUUMgHSSAnDqFnWUnx177PpXwHeYPgMRdvp
         32UBnZ6/8PpaqjkjD8ZRYObMkjh4yJp3cd9zvQ1Md+tULlr8wJC02NOWv8ihJO3fsvkq
         jiig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I2XRxbTgfyRwwCND8QGFS3wz4+4gPRSK45LhR3RCtvY=;
        b=cWJh1W9lXTl2Ut+UfgOj9JzAsjdd94sxTWX0F+ktlnPUcRCHZp7MtYKTvKc51LgWQ2
         xb6XyJa+TmXrvU9ddtH6i7oJOcCf2xeS2SPUvkmMK5Ati52BDah/3vhBJVS37G1zAigc
         V6MVESDTss1zzrfS+8RoQvt/irlXjipQLfG/+D9/FLm8tejSO2fdJad27e7n8o3os6tN
         kuPN93A0NG+zUE14H3rxgScU9fRy8Z85wGksG1zNddqywwHNv/sOj0KpqMhSEUmO58Oh
         RIvNkszKujY2kNx0nh5s/kDo47tGBix3X8dIrAA16nOU4lZiKsC0ZdvoEEnJISuEcyq+
         sx3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0z9GuER/I0S5AgO+1MBQBrbWdZs6gw5ucyl5zFY2G2dExDmhUo
	o52o8ow+j0tGwpSHxcRt2Xw=
X-Google-Smtp-Source: ADFU+vu0PkL6uHKbcPnqyjN3ftLOcJXUa0AHt6vosXwWaa4LJsoIxTv8DMv2NPGjI5J/tC6n3CzOlw==
X-Received: by 2002:a17:902:fe89:: with SMTP id x9mr1999492plm.69.1584867194829;
        Sun, 22 Mar 2020 01:53:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls5883726pgj.8.gmail; Sun, 22 Mar
 2020 01:53:14 -0700 (PDT)
X-Received: by 2002:a65:5a0e:: with SMTP id y14mr8301068pgs.90.1584867194242;
        Sun, 22 Mar 2020 01:53:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584867194; cv=none;
        d=google.com; s=arc-20160816;
        b=pnGJzrtDLSUge4CsAf/wJGTgDfzM4/n3Lu0rl3yXLdKqbHFW/xe/6dI+187mVatxWH
         WR3YB8z4EdC8iQcFrNVhjitbpXA/8cYLniK7lQFGSYZYmPT7JHAwp06eB8rFzrhCOxNL
         4NyvMLMHd3PmMANsHTIPk6DX7mqciQYqhsYnbl0gDmx3DgLR/Y06unQVUMyW825BitPG
         ZwGBcSLt/gJcDfQdcdafTiDMtU7NHH2gZDw6Kt5zKbccoBsMIp70YLuiL/pvFDvgUu48
         A9wJivv2yxfg1I//IEV++OUbGxPeYd/dxW5RBWN9TWotvVeEZv4iCqTtFhsme6/dzGwl
         7TwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=fs5jc3eIRHHo8L1ECG1ULfTEDpxhJnx6F8XmPXsog80=;
        b=LJuzL9x/fDaF7ajvLrj2FXv2MpnBa6hgRjjXogMlWacciqHtmV2CezzQL7q1byRxxt
         m9Ad+eJt2qivMlQaSNg22tKDpRREdx4Gw61UMIFDXSho1dWRXtCPjzTDKLXOkLLseMg9
         /1gaMZ9Ph3BPPTc2qk24/5GcM2Z1mrjSZFfc3cSBH4eP6HIrf4ledEPdGAbeU+WeGPCt
         MSy/vifUdpeDnJpbqrkcaM8eFTWnnDl2YduKVJl3imYDwJ+RX5rBdiRDR2nWXkGCSaeP
         Fs2KfEOUVHSoIImVhCFax2AahjvZO5sIYwxjO8eQXA6CHCt+i+Ps8WwyFZcUvd62Pi6j
         Y1ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3esd3xgkbaj4qwxi8jjcp8nngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3eSd3XgkbAJ4QWXI8JJCP8NNGB.EMMEJCSQCPAMLRCLR.AMK@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com. [209.85.166.200])
        by gmr-mx.google.com with ESMTPS id s20si684371plq.5.2020.03.22.01.53.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 01:53:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3esd3xgkbaj4qwxi8jjcp8nngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) client-ip=209.85.166.200;
Received: by mail-il1-f200.google.com with SMTP id 75so9508951ilv.16
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 01:53:14 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a6b:b241:: with SMTP id b62mr7802759iof.99.1584867193709;
 Sun, 22 Mar 2020 01:53:13 -0700 (PDT)
Date: Sun, 22 Mar 2020 01:53:13 -0700
In-Reply-To: <000000000000277a0405a16bd5c9@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000018e82205a16da6f0@google.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
From: syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>
To: bp@alien8.de, clang-built-linux@googlegroups.com, dvyukov@google.com, 
	hpa@zytor.com, jmattson@google.com, joro@8bytes.org, kvm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, mingo@redhat.com, pbonzini@redhat.com, 
	sean.j.christopherson@intel.com, syzkaller-bugs@googlegroups.com, 
	tglx@linutronix.de, vkuznets@redhat.com, wanpengli@tencent.com, 
	x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3esd3xgkbaj4qwxi8jjcp8nngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender) smtp.mailfrom=3eSd3XgkbAJ4QWXI8JJCP8NNGB.EMMEJCSQCPAMLRCLR.AMK@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

syzbot has found a reproducer for the following crash on:

HEAD commit:    b74b991f Merge tag 'block-5.6-20200320' of git://git.kerne..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13059373e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6dfa02302d6db985
dashboard link: https://syzkaller.appspot.com/bug?extid=3f29ca2efb056a761e38
compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1199c0c5e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15097373e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com

BUG: kernel NULL pointer dereference, address: 0000000000000086
#PF: supervisor instruction fetch in kernel mode
#PF: error_code(0x0010) - not-present page
PGD 9330b067 P4D 9330b067 PUD 9e66f067 PMD 0 
Oops: 0010 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 8439 Comm: syz-executor724 Not tainted 5.6.0-rc6-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:0x86
Code: Bad RIP value.
RSP: 0018:ffffc900022e7998 EFLAGS: 00010086
RAX: ffffc900022e79c8 RBX: fffffe0000000000 RCX: ffff88809dcf2500
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
R10: ffff88809dcf2500 R11: 0000000000000002 R12: dffffc0000000000
R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
FS:  0000000001d0d880(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000000005c CR3: 00000000978c3000 CR4: 00000000001426e0
Call Trace:
 handle_external_interrupt_irqoff+0x154/0x280 arch/x86/kvm/vmx/vmx.c:6274
 kvm_before_interrupt arch/x86/kvm/x86.h:343 [inline]
 handle_external_interrupt_irqoff+0x132/0x280 arch/x86/kvm/vmx/vmx.c:6272
 __irqentry_text_start+0x8/0x8
 vcpu_enter_guest+0x6c77/0x9290 arch/x86/kvm/x86.c:8405
 save_stack mm/kasan/common.c:72 [inline]
 set_track mm/kasan/common.c:80 [inline]
 kasan_set_free_info mm/kasan/common.c:337 [inline]
 __kasan_slab_free+0x12e/0x1e0 mm/kasan/common.c:476
 __cache_free mm/slab.c:3426 [inline]
 kfree+0x10a/0x220 mm/slab.c:3757
 tomoyo_path_number_perm+0x525/0x690 security/tomoyo/file.c:736
 security_file_ioctl+0x55/0xb0 security/security.c:1441
 entry_SYSCALL_64_after_hwframe+0x49/0xbe
 __lock_acquire+0xc5a/0x1bc0 kernel/locking/lockdep.c:3954
 paravirt_write_msr arch/x86/include/asm/paravirt.h:167 [inline]
 wrmsrl arch/x86/include/asm/paravirt.h:200 [inline]
 native_x2apic_icr_write arch/x86/include/asm/apic.h:249 [inline]
 __x2apic_send_IPI_dest arch/x86/kernel/apic/x2apic_phys.c:112 [inline]
 x2apic_send_IPI+0x96/0xc0 arch/x86/kernel/apic/x2apic_phys.c:41
 test_bit include/asm-generic/bitops/instrumented-non-atomic.h:110 [inline]
 hlock_class kernel/locking/lockdep.c:163 [inline]
 mark_lock+0x107/0x1650 kernel/locking/lockdep.c:3642
 lock_acquire+0x154/0x250 kernel/locking/lockdep.c:4484
 rcu_lock_acquire+0x9/0x30 include/linux/rcupdate.h:208
 vcpu_run+0x3a3/0xd50 arch/x86/kvm/x86.c:8513
 kvm_arch_vcpu_ioctl_run+0x419/0x880 arch/x86/kvm/x86.c:8735
 kvm_vcpu_ioctl+0x67c/0xa80 arch/x86/kvm/../../../virt/kvm/kvm_main.c:2932
 lock_is_held include/linux/lockdep.h:361 [inline]
 rcu_read_lock_sched_held+0x106/0x170 kernel/rcu/update.c:121
 kvm_vm_release+0x50/0x50 arch/x86/kvm/../../../virt/kvm/kvm_main.c:858
 vfs_ioctl fs/ioctl.c:47 [inline]
 ksys_ioctl fs/ioctl.c:763 [inline]
 __do_sys_ioctl fs/ioctl.c:772 [inline]
 __se_sys_ioctl+0xf9/0x160 fs/ioctl.c:770
 do_syscall_64+0xf3/0x1b0 arch/x86/entry/common.c:294
 entry_SYSCALL_64_after_hwframe+0x49/0xbe
Modules linked in:
CR2: 0000000000000086
---[ end trace 480d6b60d5a9226d ]---
RIP: 0010:0x86
Code: Bad RIP value.
RSP: 0018:ffffc900022e7998 EFLAGS: 00010086
RAX: ffffc900022e79c8 RBX: fffffe0000000000 RCX: ffff88809dcf2500
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
R10: ffff88809dcf2500 R11: 0000000000000002 R12: dffffc0000000000
R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
FS:  0000000001d0d880(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000000005c CR3: 00000000978c3000 CR4: 00000000001426e0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000018e82205a16da6f0%40google.com.
