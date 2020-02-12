Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNE7R3ZAKGQEMPBQ5KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E52E15A0BC
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 06:40:05 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id c12sf702444ilr.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 21:40:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581486004; cv=pass;
        d=google.com; s=arc-20160816;
        b=jI32CQkV9PB43VxfM/cuOlKoM0nCqBjpNJCwMtOKiwbeyHLNVRVRfVR7YTDHAGqvqu
         OSS1c5CRxNQNHVf25I0huEBhS+ePCfX+o6wn/NT8/qfPMhGYU2VNPPk1ppDGK8epWI4/
         bwB18C+fgQzvFYZm25yT5G1HroXSDRMF8k+yLMCMUphgqQ8khGrVDed+s6elAu5V/il5
         yRV2Yo0XVfORmhxeitiMob3maym8o3V+hGfjCO5zyuZEIRw2MuUp/z94PivIEkF+K4SA
         NWd8NjqTcRvU371xIriK+QPiiboZPGt+zXm9437Vdpn9cQOd+ntFQzm9nN2x8EJMsdY4
         apCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=p0whGdfGDbO0yNotEBebVTxk41MbdsLMXoyWBFfKl40=;
        b=R85aH4TJIMFUP7EoATkduuRt4nIk1Jeha6l3JcvXZx/cGnKXf5eQz45I2lTnIvCa4y
         yVaPz4mg1Jrv2lYfhIDRvF8oBARwLmeXH6ZfaFS3XHMCKMj6saiepdmlQaagLfGiwiR9
         r3ip6U8uNHX1J3+Ut/X1S8XpjgB5iCeXiUE4O/y8gHEqPbHOw6d+Vly+sqpj4K5OkXup
         LmP2uyqPEcSIS5aaDAKGJ/04DjWoEUsUfwOaUHtAS0bGeNL7w3CvsdKIot6tyjzkhnSH
         J7N8z/MGS+6JMB29Yqo1LLS7fpDHLJnAygjVhtF+1Ood6+Kw3dPiURR1mz1rn7WTDQhP
         KODg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nJI5yaMV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p0whGdfGDbO0yNotEBebVTxk41MbdsLMXoyWBFfKl40=;
        b=GDe0bvfCdTFQEdddxXh6zCFHDXOsvyGRkx1plGiQQL/gRghxDyhQOdEgw2EOOpZvLX
         Ds1ecIkx9eVJz8T3e+FTfACPMHD5f9B/BxiWxrLUAWd9O9f4wTSb5caQv5uZCWgA/fvP
         VUwT1TmwQbRGVWz10EzgZaT+mHlj4ncFs/XLUwv7xnRPVSW3i9BeDUCiPw5/ReiQuSPi
         ZQiYnOVddiSmI8UcyST3a6d+eXqNi505Fa7sIW1sw3itg22zaijBtI2sxU/1qSuB1Hk+
         BhtF8gR5IOpZm3uk5kL7XPZIcVjliSvvRYntk3e3QFzgzn7yn0MZYCJTR6EldbyaDtve
         Uydw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p0whGdfGDbO0yNotEBebVTxk41MbdsLMXoyWBFfKl40=;
        b=DTo2DIvIoRj9K7Y7zpmWcoD6WcjiblCuVDwvWHRhTkqG61GPMP893k+6cmJo9X45l1
         ihCVgNIxcE4bWmT34WwWtt7nKBXPLz9qBGgWmgCCzIEraHoY/yaSIUsTEvNtqb8tjrKw
         FoBUO8gXkLyvHFrU4JF4aHyl6sSRrXnn++YkXKEwiWnqjYXF0t/pOHRWxySrRs4xmZZa
         moT4qUw2jtd3ENNqqpuqRSDHgGOusnDw5TUYv19FAPP1mtmjZwxmyg+hbXw6UPinwU5s
         oT8V2UH18mAWZiRj+hM/miL0YRZmI3mXcBiAoBTeyRm4JdoWoO1uuKdTh9l9X9Il3saC
         6/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p0whGdfGDbO0yNotEBebVTxk41MbdsLMXoyWBFfKl40=;
        b=jtS4H8g4l6Pm44rXKgnbrZLvkQXiqrAlzInOInM/U2q8fmdyH9vGWdY3eQVQ6I/DYD
         vcLK27saeKVG9GeUx1LF0MNwpNkem3LpgxB4B4Rma7v2gt7Oy7nJlO9EYZ3wvxk6m18b
         Mo/g6WpyNJLm9vuZR46voUqA0LfAQHBVzg/BOB+bmZ1zUtpkjPixaxolOv1IKRv5DhxL
         Nj71zZILZ5KtJ8V9QXjNG3lhLHE7CJRTVmSY5DWnEJeZTUA4/FP8kf2pn8pwcivLCDYA
         kMieUwoiFT7K0ZD3UY/RVRoO1ocB/vNQXHbkLXImb+dQ3F5tTO1rflL6UWqgBVULV3Dy
         0+PA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXocwqYDHbBecubWfpUNrNDGJzQbS7p7ciMwfI73Dy3bjTI9fZV
	QPwt/vbKDeaMLu4vh8FrSV8=
X-Google-Smtp-Source: APXvYqyzBtDTb1FKymYm6wAc1dnKmfvhnE4m6Q4m9heuPY3oJ1L9kmaTAfWAFAGAP9DaWBhz1P1SOw==
X-Received: by 2002:a6b:e41a:: with SMTP id u26mr16974114iog.16.1581486004488;
        Tue, 11 Feb 2020 21:40:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7205:: with SMTP id n5ls2874785ioc.3.gmail; Tue, 11 Feb
 2020 21:40:04 -0800 (PST)
X-Received: by 2002:a6b:bf06:: with SMTP id p6mr16998107iof.255.1581486004078;
        Tue, 11 Feb 2020 21:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581486004; cv=none;
        d=google.com; s=arc-20160816;
        b=V6HdyqxiJZTs2eRrmNuojUo+Tgp/G6hBZ27CZvty+jD4bLUn0OdbJhwsiwzsXNXsWA
         VWt2A36wYuZ9WvjUz2mGY0UxEhexwdvQLz/TnnfokPJYIiE4HTn3p4f8Uup3vjAiEC44
         3/vAGwNq9umXtNxnHZAVeVv9qMA9vruRbdsZ/i9ahslatrMdRyk1Ji4dOUMDYnAtHub8
         vz/ar1iGbvOgqWYQ/xI0M3x606nh/3ccbFhiUaP1U7o2zVvXOxzmF/vu3zbtz1XZVue5
         fpmdD5c/msERF7TWMhHdgSGFIb41Va21QX6R28pySSG4PHmeRhJETivX0WT7kOTIVVl+
         Ow8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=jrIYAa6ZrSZ56lAD/bQW8k4KVnhb3nIxt303TpPxwZ8=;
        b=aaaA2HTba2fH3FvP9TuilY6hUv4Q+Lf4LbqIEqH2vT/8wX2s8XPD0/+NyiiFgAjDO2
         2IVUFzW2PqGa1mL/ynsNqbT/N2jz2hXKQu2pkHSdw/pRVEQL/UfE030baNzsEJG52Jni
         frd00eQa5eqN+dHfI5dQglqZeDRqjrLZQh6H/V/HBj6SHpofkNuZvaLx27wWFd+yGESg
         fn+Mqvx/eGikjQFUQY5K0oeX/Jc8ktGULatAexcYHEbZDe2k/jukczsAv6YkCBRBIpsB
         JUTnxRLeBi26u9U9WS3PZsF9lTYfoheTYZX6RqxGY1n9PrFvSRQW2sJCrjopg0vsH/DV
         DpoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nJI5yaMV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id g12si340003iok.4.2020.02.11.21.40.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 21:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id q81so937572oig.0
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 21:40:04 -0800 (PST)
X-Received: by 2002:aca:dc45:: with SMTP id t66mr5323849oig.39.1581486003475;
        Tue, 11 Feb 2020 21:40:03 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w8sm1989786ote.80.2020.02.11.21.40.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 11 Feb 2020 21:40:02 -0800 (PST)
Date: Tue, 11 Feb 2020 22:40:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Status of building and booting the RISCV64 kernel with Clang
Message-ID: <20200212054001.GA27071@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nJI5yaMV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

We (ClangBuiltLinux) have started looking at building the RISCV64
kernel with clang and booting it in QEMU. I thought it would be nice to
give some sort of status update and go over the issues we have notice
so far and see what people's thoughts are for solving them. If this
email is unwelcome, apologies! This testing was done with clang-11 (tip
of tree) and QEMU 4.2.0 with this rootfs (built with
buildroot-2019.02.9):

https://github.com/nathanchance/continuous-integration/blob/21ea056022f9cf1d62b7f805c3862daf9d89736f/images/riscv/rootfs.cpio



Outstanding issues on the LLVM side:

1. LLVM output over -mno-save-restore (https://github.com/ClangBuiltLinux/linux/issues/804)

The kernel passes -mno-save-restore to KBUILD_CFLAGS which causes a ton
of warning spam from LLVM:

'-save-restore' is not a recognized feature for this target (ignoring feature)

This has been reported upstream as https://llvm.org/pr44853 but it could
easily be fixed in the kernel by guarding the call against
CONFIG_CC_IS_CLANG (although this is obviously fragile if the ABI ever
changes to -msave-restore by default).

2. -fPIC causes issues when using Clang + GNU as (https://github.com/ClangBuiltLinux/linux/issues/865)

The kernel on a whole builds with -fno-integrated-as so we fall back to
GNU as when assembling. Kernel modules are built with -fPIC and fail to
build with a bunch of assembler errors like so (seen with binutils
2.31.1 and ToT):

/tmp/flexfilelayout-2d0cdc.s:359: Error: bad expression
/tmp/flexfilelayout-2d0cdc.s:359: Error: illegal operands `auipc a0,%got_pcrel_hi(mem_map)'
/tmp/flexfilelayout-2d0cdc.s:367: Error: bad expression
/tmp/flexfilelayout-2d0cdc.s:367: Error: illegal operands `auipc a2,%got_pcrel_hi(pfn_base)'
/tmp/flexfilelayout-2d0cdc.s:374: Error: bad expression
/tmp/flexfilelayout-2d0cdc.s:374: Error: illegal operands `auipc a3,%got_pcrel_hi(va_pa_offset)'

This has been reported upstream as https://llvm.org/pr44854. The way to
work around this in the kernel is to just disable CONFIG_MODULES (which
is a big hammer but that obviously won't be sent upstream in any form).




Outstanding issues on the kernel side:

1. -Wuninitialized warnings around local register variables

There are a few warnings around local "register" variables, which are
uninitialized when using clang:

In file included from ../arch/riscv/kernel/asm-offsets.c:10:
In file included from ../include/linux/sched.h:12:
../arch/riscv/include/asm/current.h:30:9: warning: variable 'tp' is uninitialized when used here [-Wuninitialized]
        return tp;
               ^~
../arch/riscv/include/asm/current.h:29:33: note: initialize the variable 'tp' to silence this warning
        register struct task_struct *tp __asm__("tp");
                                       ^
                                        = NULL
1 warning generated.

../arch/riscv/kernel/process.c:112:19: warning: variable 'gp' is uninitialized when used here [-Wuninitialized]
                childregs->gp = gp;
                                ^~
../arch/riscv/kernel/process.c:110:34: note: initialize the variable 'gp' to silence this warning
                const register unsigned long gp __asm__ ("gp");
                                               ^
                                                = 0
1 warning generated.

../arch/riscv/kernel/stacktrace.c:34:8: warning: variable 'current_sp' is uninitialized when used here [-Wuninitialized]
                sp = current_sp;
                     ^~~~~~~~~~
../arch/riscv/kernel/stacktrace.c:32:42: note: initialize the variable 'current_sp' to silence this warning
                const register unsigned long current_sp __asm__ ("sp");
                                                       ^
                                                        = 0
1 warning generated.

The way to solve these is to make these register variables global, where
they are properly initialized and work. This has been done in the kernel
a few times:

fe92da0f355e ("MIPS: Changed current_thread_info() to an equivalent supported by both clang and GCC")
3337a10e0d0c ("arm64: LLVMLinux: Add current_stack_pointer() for arm64")
786248705ecf ("arm64: LLVMLinux: Calculate current_thread_info from current_stack_pointer")
0abc08baf2dd ("ARM: 8170/1: Add global named register current_stack_pointer for ARM")
f6c9cbf091a4 ("ARM: 8173/1: Calculate current_thread_info from current_stack_pointer")

The LLVM community has rejected adopting GCC's behavior of allowing
local register variables because it would seriously complicate the
register allocator; the full discussion can be viewed here:
http://lists.llvm.org/pipermail/llvm-dev/2014-March/071472.html

This is the diff I am currently working with; I am not sure of any side
effects aside from two that I will list below.

https://gist.github.com/b5fda253a243127736fd2ac5d317dcdd



Booting in QEMU:

This is where things get interesting... The kernel does not start at all
when the registers are purely local. It does start when the tp register
is moved globally (arch/riscv/include/asm/current.h diff above) but it
does not finish getting to userspace. Additionally, the diff in
 -s ARCH=riscv CC=clang CROSS_COMPILE=riscv64-linux-gnu- O=out.riscv distclean defconfig all
...
$ timeout 30s qemu-system-riscv64 -M virt -m 512M -no-reboot -bios default -kernel out.riscv/arch/riscv/boot/Image -display none -serial mon:stdio -initrd out.riscv/rootfs.cpio
...
[    0.000000] Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (ClangBuiltLinux clang version 11.0.0 (git://github.com/llvm/llvm-project 9c1a88c96457ffde71f13c74fd4d52a77d86cc9f)) #1 SMP Tue Feb 11 22:13:03 MST 2020
...
[    0.624295] Run /init as init process
/init: exec: line 7: /sbin/init: Text file busy
[    0.712090] Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000200
[    0.712739] CPU: 0 PID: 1 Comm: init Not tainted 5.6.0-rc1-00001-g90c81dfc010e #1
[    0.713228] Call Trace:
[    0.713508] [<ffffffe00004a3e6>] walk_stackframe+0x0/0xc6
[    0.713832] [<ffffffe0007c0070>] dump_stack+0x9e/0xd6
[    0.714112] [<ffffffe00004f250>] panic+0x112/0x2dc
[    0.714387] [<ffffffe000051886>] exit_mm+0x0/0x12a
[    0.714676] [<ffffffe000051a80>] sys_exit_group+0x0/0xe
[    0.714965] [<ffffffe000051aa4>] __wake_up_parent+0x0/0x24
[    0.715262] [<ffffffe000051a8e>] __do_sys_exit_group+0x0/0x16
[    0.715568] [<ffffffe000048e3e>] ret_from_syscall+0x0/0x2
[    0.716409] ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000200 ]---
qemu-system-riscv64: terminating on signal 15 from pid 55965 (timeout)

GCC 9.2.0 works just fine.

$ make -j$(nproc) -s ARCH=riscv CROSS_COMPILE=riscv64-linux- O=out.riscv distclean defconfig all
$ timeout 30s qemu-system-riscv64 -M virt -m 512M -no-reboot -bios default -kernel out.riscv/arch/riscv/boot/Image -display none -serial mon:stdio -initrd out.riscv/rootfs.cpio
...
[    0.634854] Run /init as init process
Starting syslogd: OK
Starting klogd: OK
Initializing random number generator... [    1.329410] random: dd: uninitialized urandom read (512 bytes read)
done.
Starting network: OK
Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (gcc version 9.2.0 (GCC)) #1 SMP Tue Feb 11 22:20:36 MST 2020
Linux version 5.6.0-rc1-00001-g90c81dfc010e (nathan@ubuntu-m2-xlarge-x86) (gcc version 9.2.0 (GCC)) #1 SMP Tue Feb 11 22:20:36 MST 2020
Stopping network: OK
Saving random seed... [    2.165960] random: dd: uninitialized urandom read (512 bytes read)
done.
Stopping klogd: OK
Stopping syslogd: OK
umount: devtmpfs busy - remounted read-only
umount: can't unmount /: Invalid argument
The system is going down NOW!
Sent SIGTERM to all processes
Sent SIGKILL to all processes
Requesting system poweroff
[    4.412388] reboot: Power down

I have tried to do some debugging in gdb to see where things are going
wrong and I see it get to run_init_process, succeed, then jump to the
exception handler and panic so I am not really sure where things are
going wrong. Any sort of ideas on where to go from here would certainly
be appreciated :)

Thanks for all the hard work everyone has done, hopefully we can help
add to it!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200212054001.GA27071%40ubuntu-m2-xlarge-x86.
