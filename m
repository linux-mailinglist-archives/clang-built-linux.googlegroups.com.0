Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7UKSHZAKGQEGAVBZ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7C615AFED
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 19:35:43 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 71sf1123553pgg.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 10:35:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581532542; cv=pass;
        d=google.com; s=arc-20160816;
        b=McEM4TtQJ2fln/Cu+TDULROWYkZ4nvfC1v99ST6zvfcTkzjxDE5lspTNN+EFpgDcfE
         Lqxdy+lwAOKfL4cr+kE0MPE6SIJfdWcmKyHiXuYHRavTMoN+VKxD0KtIImrT8dNqZiWV
         bFo3qklg5mrwfM9K3DB0n9iWmzhUxIzEHZ2sAjRy+ELEpUxdX/cHBV7slw/aHRRAJefH
         Wh7yJSqJt23AOLrU9inmoUTEgUzh4e7CE4UgfppwqXsY79eOhsYTA58toj7AGflDnMMk
         u50uZAWIfBJBUirRcnCD/WaKkuhPmkerP+o5rN6TQFNZtQ1CcetNIHR6nLX2Yj+DGtvg
         kfPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=zpFQOeqPGD6EBKqqeUZ+87PPdj3KAahGDuvfzQ+P1TM=;
        b=SJ1o1N/nauMevK+eO0V465HPTSgXBGGUTit77GdyMnaq7Eb7LSiCj5Sj7MQ60fo2Vr
         ucr4lSPEcD+FN04e7+BhkOIMRSCY4+ZWoH5VRms04cMjxxtka7ybp34/WL82zQCi4Pv6
         HKQP1BfPUaXCw7jchwrvrR8/9CJDIQnUKzDMpZApvKjjTRp5/v7BI7DSNcoeSrj90Ypd
         2T1mgGxquCWzZPfLbn2PIkm8LsXkWZ77fO0N704jxr23TU7AqVhL5vF1i9BC4dRQOlJU
         QH4r90lbpGm28N5D8g+IlOSMW9WriswdbvtEr/OeeO3NVKhmP2bSH9RMYPyKGD0RXLct
         L37g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gL0FnKJN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zpFQOeqPGD6EBKqqeUZ+87PPdj3KAahGDuvfzQ+P1TM=;
        b=Xj2503U6i+F2yF5bmcLFg2bHL7opmIa/mHLqh+DvLxcIUSPKEY+6Wqm0SSGz2ITrut
         /dq0fCRr+9OIrW9Iq+ZXtJA5ozDzgrBYwojkRm28Fo8CzFOVqLnb9n5UMaLo8sbsuvb8
         0haw5l7kGxzFC4hki6j99eBjUfZsQxK16B7NLpdgfentYbvMR1nj1cI257Pc8FW7yObN
         ZEybe1zX0zgCCTekPTTrsqVUPaO7UM1a3cPtm7VJomRYRc1OY9zQpnVh24h6m8jweLUM
         V7VTghtjwIcLf3YWSPxmbEz7Yw3yB6RbTGnzTkKHJkLzjw6gC/3yaI15zMKvx9XWNSVk
         weKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zpFQOeqPGD6EBKqqeUZ+87PPdj3KAahGDuvfzQ+P1TM=;
        b=hYwSXHpxOBeWydMVIhs62h22TLd+YPU5lDQ1Z6ZrXIY0s3ZwWbSZc5R2/rM2vxm+I/
         EZFWJRCevy+FySWd0KEgKtl1S2JzXU/mMsghkvLnw34N1XOOFEKdeYDIGsouMtZwajkd
         W9pCmMYxdXIr04uTUuiX4O8XYHgmTm8Wa6WDB1PtSIj6qDhyiANU6g271zM5vQx9rC1H
         hEFkSbqI52Qu/IPd4NcBRFqJjV7Bg65QUh+3y/S+xkcf6U1xbqDHuxpF7g4nGxGvgnoI
         4qUKLdfblDuUb4HNUyAim8irP580lAqCIkg3RwyFgYVMevPXf1Z/7UmaBM3JXYtk5qe0
         e5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zpFQOeqPGD6EBKqqeUZ+87PPdj3KAahGDuvfzQ+P1TM=;
        b=IfRv7vY5gatusGzVuNcVwfBG4SL+kJywlLyRIwfBZg0uEeBcQoU2TLIPXIm/waET11
         Kpt488uY/YeRmYz4/4KdjcwihkIR9mBlTCigmmq2N/s97ui5XJvOXIL86Kq3nwTgXLPI
         74sNq/TuX8uM2Wf3mkym/q2iqnpQvwpVr/sGIQ/MJe5LLL+SI/lSdO9RB2H+hcEhqoJ2
         J0RPjciftI72jZ8b2GqZN/DTZYKsNPK7mP/w6hgvrtM8xDsOLCN+n+hypYz8LF1VbibM
         xNBVxft/dr/CT2bHk71zUoHf+NP8tFVw9tKUU7fOcGVGU/SnWcXwNRcVepGjmlwQxHk0
         j6RA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWyezN4Km3tdtpc9WErntQBbCE/kGUS7OiiludHkLHzhRNvYoU+
	NhPtZnLSP107ZumKfkm3u0s=
X-Google-Smtp-Source: APXvYqwDGPeFejctSYXdylmIolNh3O22H4ol4ceWuYyZhHwg3IuPYAJX1tLbl08Fchcr+86TgoTG4g==
X-Received: by 2002:a17:90a:f317:: with SMTP id ca23mr476287pjb.20.1581532542194;
        Wed, 12 Feb 2020 10:35:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7a47:: with SMTP id v68ls7571290pfc.8.gmail; Wed, 12 Feb
 2020 10:35:41 -0800 (PST)
X-Received: by 2002:a63:fb05:: with SMTP id o5mr14221560pgh.355.1581532541741;
        Wed, 12 Feb 2020 10:35:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581532541; cv=none;
        d=google.com; s=arc-20160816;
        b=AnLf39mgoNFBPY+jy4wo43AySTbSVDHM+4l0ld4eDGO5jzsUKc7jYa6wmOOjAtZN+2
         oTxVfV9eMB7NjUdeux3KNWw0nGKBH7bldOc9V6rxsav3iSK9EKTnNQfnooAtVBvQvDoN
         fkgrQgvUWgUzG2zlyVMtY+2Y7u4LTgxUhrfQJvuvJJka8cMa4wDcauaTzI81zeh6t/VN
         D5jP157KODkgJYZ8IJT2wRihrHWXFw1g8cc0hgq1X2UaYrB+wxojTqll6y4MltIyBeBB
         sxwm7ibJpnscsM6SRx5ZydXGKxaXbvVGR0DmxEjN9o4v2hp10UAbAunlXY23nTUEJk4O
         EEGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9KNdQTzecz/SJfMs4GgqFV3ANdv8gWp3Rod0UgNCFVs=;
        b=FNQuJGnrNXISgveE+r1afl3e2hNTRa6OsiC02DWS/LiHIWZF6sMOm1mPwcIeR3zyC2
         DkuKoSjdoA9SrCMefxPvXXNBZKqcfGMTgiYQCpU4Km+jjN0FluzB/bnzd3bf3ty0aU07
         SRM4fZvGPvE6Fr9m7/phKFyOvi1ht9qx4rcaPlV1hBNuesc0PV1SW7rEmaleJbtX46gt
         svKt60vbKo8L/WJbzAMFSnsn0tuQFELc2YbbvNOB7EPf5reM+o7RHl1EIiMP+57fxS2Q
         AqhwoDlCUCO5tyXSKaqS/6y/tCkTNKNxb48YNFCCTyFR0GUOWxkmT5DwWHRH4m3iLyf+
         ZAhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gL0FnKJN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id 59si62261ple.2.2020.02.12.10.35.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 10:35:41 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id z9so2942176oth.5
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 10:35:41 -0800 (PST)
X-Received: by 2002:a9d:6f0d:: with SMTP id n13mr10594922otq.165.1581532540729;
        Wed, 12 Feb 2020 10:35:40 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y6sm412731oti.44.2020.02.12.10.35.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 12 Feb 2020 10:35:40 -0800 (PST)
Date: Wed, 12 Feb 2020 11:35:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, asb@lowrisc.org,
	linux-riscv@lists.infradead.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Status of building and booting the RISCV64 kernel with Clang
Message-ID: <20200212183538.GA34230@ubuntu-m2-xlarge-x86>
References: <20200212054001.GA27071@ubuntu-m2-xlarge-x86>
 <CAKwvOdnTW1AjB8nVKFd9i=ur88QtEp7taT2jo8R2-FXdBzZthQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnTW1AjB8nVKFd9i=ur88QtEp7taT2jo8R2-FXdBzZthQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gL0FnKJN;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Feb 12, 2020 at 10:29:10AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> + Palmer, Alex
> 
> On Tue, Feb 11, 2020 at 9:40 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Hi all,
> >
> > We (ClangBuiltLinux) have started looking at building the RISCV64
> > kernel with clang and booting it in QEMU. I thought it would be nice to
> > give some sort of status update and go over the issues we have notice
> > so far and see what people's thoughts are for solving them. If this
> > email is unwelcome, apologies! This testing was done with clang-11 (tip
> > of tree) and QEMU 4.2.0 with this rootfs (built with
> > buildroot-2019.02.9):
> >
> > https://github.com/nathanchance/continuous-integration/blob/21ea056022f9cf1d62b7f805c3862daf9d89736f/images/riscv/rootfs.cpio
> >
> >
> >
> > Outstanding issues on the LLVM side:
> >
> > 1. LLVM output over -mno-save-restore (https://github.com/ClangBuiltLinux/linux/issues/804)
> >
> > The kernel passes -mno-save-restore to KBUILD_CFLAGS which causes a ton
> > of warning spam from LLVM:
> >
> > '-save-restore' is not a recognized feature for this target (ignoring feature)
> >
> > This has been reported upstream as https://llvm.org/pr44853 but it could
> > easily be fixed in the kernel by guarding the call against
> > CONFIG_CC_IS_CLANG (although this is obviously fragile if the ABI ever
> > changes to -msave-restore by default).

And this issue has been fixed:
https://github.com/llvm/llvm-project/commit/07f7c00208b393296f8f27d6cd3cec2b11d86fd8

> > 2. -fPIC causes issues when using Clang + GNU as (https://github.com/ClangBuiltLinux/linux/issues/865)
> >
> > The kernel on a whole builds with -fno-integrated-as so we fall back to
> > GNU as when assembling. Kernel modules are built with -fPIC and fail to
> > build with a bunch of assembler errors like so (seen with binutils
> > 2.31.1 and ToT):
> >
> > /tmp/flexfilelayout-2d0cdc.s:359: Error: bad expression
> > /tmp/flexfilelayout-2d0cdc.s:359: Error: illegal operands `auipc a0,%got_pcrel_hi(mem_map)'
> > /tmp/flexfilelayout-2d0cdc.s:367: Error: bad expression
> > /tmp/flexfilelayout-2d0cdc.s:367: Error: illegal operands `auipc a2,%got_pcrel_hi(pfn_base)'
> > /tmp/flexfilelayout-2d0cdc.s:374: Error: bad expression
> > /tmp/flexfilelayout-2d0cdc.s:374: Error: illegal operands `auipc a3,%got_pcrel_hi(va_pa_offset)'
> >
> > This has been reported upstream as https://llvm.org/pr44854. The way to
> > work around this in the kernel is to just disable CONFIG_MODULES (which
> > is a big hammer but that obviously won't be sent upstream in any form).
> >
> >
> >
> >
> > Outstanding issues on the kernel side:
> >
> > 1. -Wuninitialized warnings around local register variables
> >
> > There are a few warnings around local "register" variables, which are
> > uninitialized when using clang:
> >
> > In file included from ../arch/riscv/kernel/asm-offsets.c:10:
> > In file included from ../include/linux/sched.h:12:
> > ../arch/riscv/include/asm/current.h:30:9: warning: variable 'tp' is uninitialized when used here [-Wuninitialized]
> >         return tp;
> >                ^~
> > ../arch/riscv/include/asm/current.h:29:33: note: initialize the variable 'tp' to silence this warning
> >         register struct task_struct *tp __asm__("tp");
> >                                        ^
> >                                         = NULL
> > 1 warning generated.
> >
> > ../arch/riscv/kernel/process.c:112:19: warning: variable 'gp' is uninitialized when used here [-Wuninitialized]
> >                 childregs->gp = gp;
> >                                 ^~
> > ../arch/riscv/kernel/process.c:110:34: note: initialize the variable 'gp' to silence this warning
> >                 const register unsigned long gp __asm__ ("gp");
> >                                                ^
> >                                                 = 0
> > 1 warning generated.
> >
> > ../arch/riscv/kernel/stacktrace.c:34:8: warning: variable 'current_sp' is uninitialized when used here [-Wuninitialized]
> >                 sp = current_sp;
> >                      ^~~~~~~~~~
> > ../arch/riscv/kernel/stacktrace.c:32:42: note: initialize the variable 'current_sp' to silence this warning
> >                 const register unsigned long current_sp __asm__ ("sp");
> >                                                        ^
> >                                                         = 0
> > 1 warning generated.
> >
> > The way to solve these is to make these register variables global, where
> > they are properly initialized and work. This has been done in the kernel
> > a few times:
> >
> > fe92da0f355e ("MIPS: Changed current_thread_info() to an equivalent supported by both clang and GCC")
> > 3337a10e0d0c ("arm64: LLVMLinux: Add current_stack_pointer() for arm64")
> > 786248705ecf ("arm64: LLVMLinux: Calculate current_thread_info from current_stack_pointer")
> > 0abc08baf2dd ("ARM: 8170/1: Add global named register current_stack_pointer for ARM")
> > f6c9cbf091a4 ("ARM: 8173/1: Calculate current_thread_info from current_stack_pointer")
> >
> > The LLVM community has rejected adopting GCC's behavior of allowing
> > local register variables because it would seriously complicate the
> > register allocator; the full discussion can be viewed here:
> > http://lists.llvm.org/pipermail/llvm-dev/2014-March/071472.html
> >
> > This is the diff I am currently working with; I am not sure of any side
> > effects aside from two that I will list below.
> >
> > https://gist.github.com/b5fda253a243127736fd2ac5d317dcdd
> >
> >
> >
> > Booting in QEMU:
> >
> > This is where things get interesting... The kernel does not start at all
> > when the registers are purely local. It does start when the tp register
> > is moved globally (arch/riscv/include/asm/current.h diff above) but it
> > does not finish getting to userspace. Additionally, the diff in
> >  -s ARCH=riscv CC=clang CROSS_COMPILE=riscv64-linux-gnu- O=out.riscv distclean defconfig all
> > ...
> > $ timeout 30s qemu-system-riscv64 -M virt -m 512M -no-reboot -bios default -kernel out.riscv/arch/riscv/boot/Image -display none -serial mon:stdio -initrd out.riscv/rootfs.cpio
> > ...
> > [    0.000000] Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (ClangBuiltLinux clang version 11.0.0 (git://github.com/llvm/llvm-project 9c1a88c96457ffde71f13c74fd4d52a77d86cc9f)) #1 SMP Tue Feb 11 22:13:03 MST 2020
> > ...
> > [    0.624295] Run /init as init process
> > /init: exec: line 7: /sbin/init: Text file busy
> > [    0.712090] Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000200
> > [    0.712739] CPU: 0 PID: 1 Comm: init Not tainted 5.6.0-rc1-00001-g90c81dfc010e #1
> > [    0.713228] Call Trace:
> > [    0.713508] [<ffffffe00004a3e6>] walk_stackframe+0x0/0xc6
> > [    0.713832] [<ffffffe0007c0070>] dump_stack+0x9e/0xd6
> > [    0.714112] [<ffffffe00004f250>] panic+0x112/0x2dc
> > [    0.714387] [<ffffffe000051886>] exit_mm+0x0/0x12a
> > [    0.714676] [<ffffffe000051a80>] sys_exit_group+0x0/0xe
> > [    0.714965] [<ffffffe000051aa4>] __wake_up_parent+0x0/0x24
> > [    0.715262] [<ffffffe000051a8e>] __do_sys_exit_group+0x0/0x16
> > [    0.715568] [<ffffffe000048e3e>] ret_from_syscall+0x0/0x2
> > [    0.716409] ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000200 ]---
> > qemu-system-riscv64: terminating on signal 15 from pid 55965 (timeout)
> >
> > GCC 9.2.0 works just fine.
> >
> > $ make -j$(nproc) -s ARCH=riscv CROSS_COMPILE=riscv64-linux- O=out.riscv distclean defconfig all
> > $ timeout 30s qemu-system-riscv64 -M virt -m 512M -no-reboot -bios default -kernel out.riscv/arch/riscv/boot/Image -display none -serial mon:stdio -initrd out.riscv/rootfs.cpio
> > ...
> > [    0.634854] Run /init as init process
> > Starting syslogd: OK
> > Starting klogd: OK
> > Initializing random number generator... [    1.329410] random: dd: uninitialized urandom read (512 bytes read)
> > done.
> > Starting network: OK
> > Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (gcc version 9.2.0 (GCC)) #1 SMP Tue Feb 11 22:20:36 MST 2020
> > Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (gcc version 9.2.0 (GCC)) #1 SMP Tue Feb 11 22:20:36 MST 2020
> > Stopping network: OK
> > Saving random seed... [    2.165960] random: dd: uninitialized urandom read (512 bytes read)
> > done.
> > Stopping klogd: OK
> > Stopping syslogd: OK
> > umount: devtmpfs busy - remounted read-only
> > umount: can't unmount /: Invalid argument
> > The system is going down NOW!
> > Sent SIGTERM to all processes
> > Sent SIGKILL to all processes
> > Requesting system poweroff
> > [    4.412388] reboot: Power down
> >
> > I have tried to do some debugging in gdb to see where things are going
> > wrong and I see it get to run_init_process, succeed, then jump to the
> > exception handler and panic so I am not really sure where things are
> > going wrong. Any sort of ideas on where to go from here would certainly
> > be appreciated :)
> >
> > Thanks for all the hard work everyone has done, hopefully we can help
> > add to it!
> >
> > Cheers,
> > Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200212183538.GA34230%40ubuntu-m2-xlarge-x86.
