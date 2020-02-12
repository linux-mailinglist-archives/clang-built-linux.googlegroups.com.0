Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAUISHZAKGQE6K4K4KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6F815AFC3
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 19:29:24 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id t10sf1655545otc.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 10:29:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581532163; cv=pass;
        d=google.com; s=arc-20160816;
        b=yeNz6PlMd0OGC9WZ7+MGh3+OKmc8kE10SiKwxhXNz5FftZkwh9HTLohivc+GAoWr7j
         RUPk5eMLWOod6uAYs9LTd9WamgnQ831mHqXonOIRRnFDnaSV9enO5okMZOxH7baRly+O
         rF9RmZ4+iJdxfYKAFMkVcQGWRjR/+rX5HAhWXRUE1tDqV0cJ87MEX7ipFRnS2AAJEkJT
         z2umqt7fXSBYqSQVc9ZPr1/mBTGQB6x2Yj5s0YN8nR6d3aSjwPuOLrJ2+bJDHSONGFky
         2bobzxqMhfavzQrLxcmDiu6GEBxfYWjTRMAQVFQHzfV1ye21MktGh35Se8LyGpaQNvvp
         GwFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=isPpEwQvIsusfqTigoLiUGtK73/GdVkPf+QVwWw6/nI=;
        b=aaZx0OX6UAFsCt+qzuTeNhbYW5jaEN4vwKOl1W3XTNWs53wwKiC5IVNRin97CQsJW3
         pN7KdcQaApaBDrUBu7mIub5rL/vQY6vQPH2SmwkaKDS40qD/NojDnRpfJvsr/j1wf8Gw
         p4DTaeD4rN6Gpijy5xD8kY1EKqm1aRQ4xA/WYjevPrfeCxrObgjMQutq4p07maNpcEDv
         GfGm/RXPvOU/INu9IjFahVGYcgrwfg0kG3VOJgIco5x2xu45Ui4p7hjWzkgrfDw69kdG
         KiY/w2MLRvAN1po6uDJsgdc+5MdUJPHAf4qvrOJ6RFgFNQ8OT5wWFH1z6qFduAzWp4AK
         pYaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M/UWEYcC";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=isPpEwQvIsusfqTigoLiUGtK73/GdVkPf+QVwWw6/nI=;
        b=SmQofHpzm++E1O9mKYJT+rizqae6tib+JfnGb67dTXfZiDBz3TB9jFTymTKB+cJ1g+
         hHBkk1yrAgIBKXTeWa5fxhkOaauphY3UrwPNA4rBsoCW1MNmNnhDexKyoPMk4ja4aqxy
         CAspG9XBP6i6bQikICH8q51xp+Y0crjV4YaudZwPKnZR6lsaIM2PUKR1+jkOSppqfgtS
         +mnu5uHH9WLwMtaCRtAV9HrVYNRW6tOWuUMpH2AJ4hiVNr8gsNxuObOWVB1moRtyEzXY
         ABGgqfKSOCJ4B3JbL8iSQFawy8VLV6SJyBLN60yB+1vqinUAJA/RI2UbA8egy1tc+/gR
         NnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=isPpEwQvIsusfqTigoLiUGtK73/GdVkPf+QVwWw6/nI=;
        b=kmk6kdeSTmKWsWJLHXSxVMqtQifw0s8tNLAr1TExjh4QmenDj+vv98MS+Hmo5hTmEm
         lM50RQJGGauDSFcoJ+y3Zu3Q89oJYhMh1vbhMzr1Umt0ail3Bg20wBhfmK21Mv3Je2NL
         XGAHaWQLwMq1Cjen0DNh7BMLAjEw1S31Wx9wZ+JsEupymrq7lAaV5PSsQbn3Y2KtDW6B
         ZuT8ePKHt1FJOQOg9i4V/nXINa97HiUTa4Gg37BEyTfJnvxv5WEHInf7zwMXLLvjlS8H
         IeOS4fQ2Tkc/G/exZrOtP79J2KXL2QOZDqFIlu81ahNAAK3faXHzKBgBTkXgnevHf5nY
         s/yQ==
X-Gm-Message-State: APjAAAVa3Gvd8ODT50P0QBisneOV1PX+ezfCtSaE9axQpdiIIZ/0IaeE
	265P+ZXAityqJyglFfVnRh4=
X-Google-Smtp-Source: APXvYqyiCBurXnV2NouY/228cCPfAFOpQtSX9QpijjHD/HaYO1o333+SPdEHxUajDcmejYCynxd3Mw==
X-Received: by 2002:aca:d507:: with SMTP id m7mr279441oig.48.1581532162769;
        Wed, 12 Feb 2020 10:29:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7281:: with SMTP id t1ls4745619otj.7.gmail; Wed, 12 Feb
 2020 10:29:22 -0800 (PST)
X-Received: by 2002:a05:6830:158:: with SMTP id j24mr10673278otp.316.1581532162373;
        Wed, 12 Feb 2020 10:29:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581532162; cv=none;
        d=google.com; s=arc-20160816;
        b=QMFdOt6kDGJT4Bdjvh2zA1fhfxjbFIyz1lSBkxeK3lN+M6YedFhvxUuoQt72ae3zjM
         EBXnPPpjJZhgjZ21gkuxXYjc4XeBZ17yf7P/4PGCjA0oFf5lAnyU6u7Eqlbpv1D0+zW1
         kz9We9WJlvqvQ+j0sfz2OQeUkLLIoFzavBtMmZoPIdA3Dz9APlF4+xwBd0PFxm9tABN3
         n3SpnP/E9gB8UwHdOCFPB8W/C6+EU0XluCfn4tGWXrxKMiuV+OwoZKtsDjgOnHEAsdtG
         UbHPWEB9tD/O5PLUYXowhc2Gxg7fDACNr6h1woqgcu1lxba+cTbnHCEPt9xlCFKTp7HD
         GFaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s6nkeq4IElfNcbA594NdtfjWIHWSvvy/+fIwKOGEIic=;
        b=MlBO163M6bSw0ddWHpBKoo0cU1/GP2306o60CkQT8rJkMqM2rhyq+UC9q24EIP8EBh
         AYvs1KkQeldqR/KW7RxXdVQRwHKdHSlCtWT8nNFFuO6K1JUIGuT0eSwfK8YxlGcExOG8
         9wULuHJsBrquhoLkgyE/uMc5F+yyVWEdIl3Ziz73l7HVybJWZLJ53scxP0InxxIguNpJ
         kmY64PFZGXqt0vshlTRdLYWLS5TS/AnWvsRpnpSlbrI9EB9GL0dU3sdIjPzqXh92Lt+q
         FKs5z1E9JkyR08LVgYsx4Q8FyZ+CUHPmouSLjCFu3YvEtawPc1//hwoowVM/aS7obXrV
         Gjhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M/UWEYcC";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a17si37571otr.1.2020.02.12.10.29.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 10:29:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id s1so1632989pfh.10
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 10:29:22 -0800 (PST)
X-Received: by 2002:a62:1615:: with SMTP id 21mr9709788pfw.84.1581532161233;
 Wed, 12 Feb 2020 10:29:21 -0800 (PST)
MIME-Version: 1.0
References: <20200212054001.GA27071@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200212054001.GA27071@ubuntu-m2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Feb 2020 10:29:10 -0800
Message-ID: <CAKwvOdnTW1AjB8nVKFd9i=ur88QtEp7taT2jo8R2-FXdBzZthQ@mail.gmail.com>
Subject: Re: Status of building and booting the RISCV64 kernel with Clang
To: Nathan Chancellor <natechancellor@gmail.com>, Palmer Dabbelt <palmerdabbelt@google.com>, asb@lowrisc.org
Cc: linux-riscv@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="M/UWEYcC";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+ Palmer, Alex

On Tue, Feb 11, 2020 at 9:40 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi all,
>
> We (ClangBuiltLinux) have started looking at building the RISCV64
> kernel with clang and booting it in QEMU. I thought it would be nice to
> give some sort of status update and go over the issues we have notice
> so far and see what people's thoughts are for solving them. If this
> email is unwelcome, apologies! This testing was done with clang-11 (tip
> of tree) and QEMU 4.2.0 with this rootfs (built with
> buildroot-2019.02.9):
>
> https://github.com/nathanchance/continuous-integration/blob/21ea056022f9cf1d62b7f805c3862daf9d89736f/images/riscv/rootfs.cpio
>
>
>
> Outstanding issues on the LLVM side:
>
> 1. LLVM output over -mno-save-restore (https://github.com/ClangBuiltLinux/linux/issues/804)
>
> The kernel passes -mno-save-restore to KBUILD_CFLAGS which causes a ton
> of warning spam from LLVM:
>
> '-save-restore' is not a recognized feature for this target (ignoring feature)
>
> This has been reported upstream as https://llvm.org/pr44853 but it could
> easily be fixed in the kernel by guarding the call against
> CONFIG_CC_IS_CLANG (although this is obviously fragile if the ABI ever
> changes to -msave-restore by default).
>
> 2. -fPIC causes issues when using Clang + GNU as (https://github.com/ClangBuiltLinux/linux/issues/865)
>
> The kernel on a whole builds with -fno-integrated-as so we fall back to
> GNU as when assembling. Kernel modules are built with -fPIC and fail to
> build with a bunch of assembler errors like so (seen with binutils
> 2.31.1 and ToT):
>
> /tmp/flexfilelayout-2d0cdc.s:359: Error: bad expression
> /tmp/flexfilelayout-2d0cdc.s:359: Error: illegal operands `auipc a0,%got_pcrel_hi(mem_map)'
> /tmp/flexfilelayout-2d0cdc.s:367: Error: bad expression
> /tmp/flexfilelayout-2d0cdc.s:367: Error: illegal operands `auipc a2,%got_pcrel_hi(pfn_base)'
> /tmp/flexfilelayout-2d0cdc.s:374: Error: bad expression
> /tmp/flexfilelayout-2d0cdc.s:374: Error: illegal operands `auipc a3,%got_pcrel_hi(va_pa_offset)'
>
> This has been reported upstream as https://llvm.org/pr44854. The way to
> work around this in the kernel is to just disable CONFIG_MODULES (which
> is a big hammer but that obviously won't be sent upstream in any form).
>
>
>
>
> Outstanding issues on the kernel side:
>
> 1. -Wuninitialized warnings around local register variables
>
> There are a few warnings around local "register" variables, which are
> uninitialized when using clang:
>
> In file included from ../arch/riscv/kernel/asm-offsets.c:10:
> In file included from ../include/linux/sched.h:12:
> ../arch/riscv/include/asm/current.h:30:9: warning: variable 'tp' is uninitialized when used here [-Wuninitialized]
>         return tp;
>                ^~
> ../arch/riscv/include/asm/current.h:29:33: note: initialize the variable 'tp' to silence this warning
>         register struct task_struct *tp __asm__("tp");
>                                        ^
>                                         = NULL
> 1 warning generated.
>
> ../arch/riscv/kernel/process.c:112:19: warning: variable 'gp' is uninitialized when used here [-Wuninitialized]
>                 childregs->gp = gp;
>                                 ^~
> ../arch/riscv/kernel/process.c:110:34: note: initialize the variable 'gp' to silence this warning
>                 const register unsigned long gp __asm__ ("gp");
>                                                ^
>                                                 = 0
> 1 warning generated.
>
> ../arch/riscv/kernel/stacktrace.c:34:8: warning: variable 'current_sp' is uninitialized when used here [-Wuninitialized]
>                 sp = current_sp;
>                      ^~~~~~~~~~
> ../arch/riscv/kernel/stacktrace.c:32:42: note: initialize the variable 'current_sp' to silence this warning
>                 const register unsigned long current_sp __asm__ ("sp");
>                                                        ^
>                                                         = 0
> 1 warning generated.
>
> The way to solve these is to make these register variables global, where
> they are properly initialized and work. This has been done in the kernel
> a few times:
>
> fe92da0f355e ("MIPS: Changed current_thread_info() to an equivalent supported by both clang and GCC")
> 3337a10e0d0c ("arm64: LLVMLinux: Add current_stack_pointer() for arm64")
> 786248705ecf ("arm64: LLVMLinux: Calculate current_thread_info from current_stack_pointer")
> 0abc08baf2dd ("ARM: 8170/1: Add global named register current_stack_pointer for ARM")
> f6c9cbf091a4 ("ARM: 8173/1: Calculate current_thread_info from current_stack_pointer")
>
> The LLVM community has rejected adopting GCC's behavior of allowing
> local register variables because it would seriously complicate the
> register allocator; the full discussion can be viewed here:
> http://lists.llvm.org/pipermail/llvm-dev/2014-March/071472.html
>
> This is the diff I am currently working with; I am not sure of any side
> effects aside from two that I will list below.
>
> https://gist.github.com/b5fda253a243127736fd2ac5d317dcdd
>
>
>
> Booting in QEMU:
>
> This is where things get interesting... The kernel does not start at all
> when the registers are purely local. It does start when the tp register
> is moved globally (arch/riscv/include/asm/current.h diff above) but it
> does not finish getting to userspace. Additionally, the diff in
>  -s ARCH=riscv CC=clang CROSS_COMPILE=riscv64-linux-gnu- O=out.riscv distclean defconfig all
> ...
> $ timeout 30s qemu-system-riscv64 -M virt -m 512M -no-reboot -bios default -kernel out.riscv/arch/riscv/boot/Image -display none -serial mon:stdio -initrd out.riscv/rootfs.cpio
> ...
> [    0.000000] Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (ClangBuiltLinux clang version 11.0.0 (git://github.com/llvm/llvm-project 9c1a88c96457ffde71f13c74fd4d52a77d86cc9f)) #1 SMP Tue Feb 11 22:13:03 MST 2020
> ...
> [    0.624295] Run /init as init process
> /init: exec: line 7: /sbin/init: Text file busy
> [    0.712090] Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000200
> [    0.712739] CPU: 0 PID: 1 Comm: init Not tainted 5.6.0-rc1-00001-g90c81dfc010e #1
> [    0.713228] Call Trace:
> [    0.713508] [<ffffffe00004a3e6>] walk_stackframe+0x0/0xc6
> [    0.713832] [<ffffffe0007c0070>] dump_stack+0x9e/0xd6
> [    0.714112] [<ffffffe00004f250>] panic+0x112/0x2dc
> [    0.714387] [<ffffffe000051886>] exit_mm+0x0/0x12a
> [    0.714676] [<ffffffe000051a80>] sys_exit_group+0x0/0xe
> [    0.714965] [<ffffffe000051aa4>] __wake_up_parent+0x0/0x24
> [    0.715262] [<ffffffe000051a8e>] __do_sys_exit_group+0x0/0x16
> [    0.715568] [<ffffffe000048e3e>] ret_from_syscall+0x0/0x2
> [    0.716409] ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000200 ]---
> qemu-system-riscv64: terminating on signal 15 from pid 55965 (timeout)
>
> GCC 9.2.0 works just fine.
>
> $ make -j$(nproc) -s ARCH=riscv CROSS_COMPILE=riscv64-linux- O=out.riscv distclean defconfig all
> $ timeout 30s qemu-system-riscv64 -M virt -m 512M -no-reboot -bios default -kernel out.riscv/arch/riscv/boot/Image -display none -serial mon:stdio -initrd out.riscv/rootfs.cpio
> ...
> [    0.634854] Run /init as init process
> Starting syslogd: OK
> Starting klogd: OK
> Initializing random number generator... [    1.329410] random: dd: uninitialized urandom read (512 bytes read)
> done.
> Starting network: OK
> Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (gcc version 9.2.0 (GCC)) #1 SMP Tue Feb 11 22:20:36 MST 2020
> Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (gcc version 9.2.0 (GCC)) #1 SMP Tue Feb 11 22:20:36 MST 2020
> Stopping network: OK
> Saving random seed... [    2.165960] random: dd: uninitialized urandom read (512 bytes read)
> done.
> Stopping klogd: OK
> Stopping syslogd: OK
> umount: devtmpfs busy - remounted read-only
> umount: can't unmount /: Invalid argument
> The system is going down NOW!
> Sent SIGTERM to all processes
> Sent SIGKILL to all processes
> Requesting system poweroff
> [    4.412388] reboot: Power down
>
> I have tried to do some debugging in gdb to see where things are going
> wrong and I see it get to run_init_process, succeed, then jump to the
> exception handler and panic so I am not really sure where things are
> going wrong. Any sort of ideas on where to go from here would certainly
> be appreciated :)
>
> Thanks for all the hard work everyone has done, hopefully we can help
> add to it!
>
> Cheers,
> Nathan
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200212054001.GA27071%40ubuntu-m2-xlarge-x86.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnTW1AjB8nVKFd9i%3Dur88QtEp7taT2jo8R2-FXdBzZthQ%40mail.gmail.com.
