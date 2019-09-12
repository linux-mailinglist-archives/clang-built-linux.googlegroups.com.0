Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK4V5PVQKGQEO2BWRVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AF8B1669
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 00:46:05 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id w6sf11054751otm.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 15:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568328363; cv=pass;
        d=google.com; s=arc-20160816;
        b=JVIoegJBZXsT/6akwjYRMzqyKSFJ3s3phtgS/GxlZHGXVxwUwxgGXQPJ/+GKk5Jnt5
         7pior8o1fTt4T93xhOYZANX7HyBYwkDf+YIoPi/nhgUn/3Dynu8smX7CwIk9Dsvr2oM8
         AV+yzF5c/JBKDLCEYUSeWWd/WnJ7FK8ADY3JX2ZnefZxUd7Az05yxvxyMgmA/lE6hlZO
         1wKj93QEGxYWbBAn+suR+iZ0yi0NSk5WQDFxbe4ZWxBeXfjV/Ac0rAuuC+FqCKtrjbbZ
         T2jFtxaOr/mYXGFSNyMmvjROrQS9OvMeo32So0B7sM/aAYSlRnHkCBxaSX5GkkG4GJg7
         hnjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Hvc4ZpEmMKsRwQPrY3KVXj95TA4fJ8u2Li9ZMuzSpAY=;
        b=dqfildBfuSdBquKWefUdXf5XbUNjTpvDJ3OAo3gBuHrgqrYpgaapoh5JzAswuOPA3X
         q1CdmlN49HvfmBWzQ+9R2Czzmt4ZYaCqZoOfAS+D59BxwVcalLuP2Z30R5OLtABayzeE
         myCxa8eeTNX6S5mvQi4OWScRVkmkxHspJ1b83l+mtFeOGkvSEXorA4hD3BQ/WW1lsjwz
         ssKBReLxIxs9VJN24J2gwADdUfZAOaRoA/TbVv2ttBj7Qz0OcrQtemajVAVWBDGTaSUx
         n6KGhGQkkgBcNtgDpCD2x5IIHEKyHtr0lXvF74gYHCq3j9J2OQW328KEYUPTlSVZI6D9
         aSTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d7B8lQY5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hvc4ZpEmMKsRwQPrY3KVXj95TA4fJ8u2Li9ZMuzSpAY=;
        b=ahncs53xb01ufwGfNtnypQ6YT4l++qV+pLu5Wy35Q0ndZz0cwbrHO1AR5O+6ZRyGBg
         rdj8HShse0C1a1ThL2PJLSc13ThkE5xiwaQSBCxH8WzphhE/or9R8hH7y9rarwIZBV3Z
         pKdF4OCryGxJG8thSiY/gu/6imA9WzhRIvjGe0SlgQiaiSs3vEdg1xMde7vhLUwZYVBc
         PQCZPlXKZMsUAc0YWQ++CCryA2cqNyRYiVaRJ98NkffdLdlc0M8OewAZ1sXaEv7u0ck6
         CBOwJShHxoL8SFaEGigYHqkDC248cnaWX3NX+S/r0gToO96lUuPn+ekQdPlrakbNl1Ba
         9C3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hvc4ZpEmMKsRwQPrY3KVXj95TA4fJ8u2Li9ZMuzSpAY=;
        b=rWAT+FBPtqWpE61pfd1gCIbR/YKDuiOPvPhmnHZQKAxx0W1ZCUirSpTShCvR7X6+5p
         QMTdHOACxH3h8+bIPauWGUF20etAR6a/TIyxixfWY6cGKMiE43fADu+1/q4Nj21caN99
         /7Ma+byOnjidp3e+ro2/6WwLpKrHjO60cU03XXcBdwNnsuSvZfiJZDwb+YRiCO/0bcRf
         +x2DH1cqPGt41gnvNlZV2sJbuLUYD9Yw/4C6x1EEv2Fg9Nku2l5ipfdpFaaZmn0lEQZj
         RrIIzPvn1GZ4fDGB9WtItpb7TRXw1AHV+MKF0BBruitorWLmdpTVGk1pGHlXZ+7jq80p
         cdUw==
X-Gm-Message-State: APjAAAUyU1PQY3+8LO5I9LJ9jVzjm+3Nqw03D5Bq4gvP9Ik+lWrL6POn
	uOmaBzEf+9Em0eKBXc/3SrU=
X-Google-Smtp-Source: APXvYqxkpS40hEiZKtfh65F0kFwHPb0sgMkbpiTmAegFUEC97zfz0kiYtgyy22tUzCHAmiIQvfKsVg==
X-Received: by 2002:a05:6830:9:: with SMTP id c9mr38957488otp.262.1568328363648;
        Thu, 12 Sep 2019 15:46:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:440b:: with SMTP id k11ls160353oiw.6.gmail; Thu, 12 Sep
 2019 15:46:03 -0700 (PDT)
X-Received: by 2002:aca:33c6:: with SMTP id z189mr918801oiz.137.1568328363286;
        Thu, 12 Sep 2019 15:46:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568328363; cv=none;
        d=google.com; s=arc-20160816;
        b=nr4kz02CNeV+wlv+aRzuOiMWKGM+JyR/0KyjRmoKP3+mCBlsQnMD9CMHKjC8d4wYnA
         XvtJRiY6U0OBs15mRnQo0ejdppvHiUDluvZMVB+aOkx8WhSsWfkzW6h+/RD0vXpLcvMI
         4P3s5rQhWlFlRRC220b0pS8NbW4yf8R3hC3cjAmX60vT6bduyLtcc7L451Woi1JkPzLa
         IeryjTR2FuefylXE0EaXk9eDisDiMRjOxRG3e9sHkom/QBqlsXy7eqHLIJZDEwim9eeh
         jih9w9dfGGpPCsLuZ40a3wvoXCVe5u9GwHvq4q7SDv83HilbhoXsARAHFfbz5YD7CViK
         4emQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H7OdZ21QdmXaiQoeot7FRn3EJRksBwa1NFZNghyXnJU=;
        b=pGK7KO5ImQUeAL503+z2SAuV52gtvmF8vQdg8hsIXvmyrwnPiodfmURoGfRe32gYTr
         gIVzR+suwiJEJrHm1Hvg/pKAZQyWmwdeajy+a+FSlSz7H/lY7/iC3xMKEw0E8wvkoats
         85m4gz89g8qmhr4GBw8H7oGF8xc/wAw92rheSofSy4x2/jPhgPtm/1NQjHREOg8MARfT
         8qmts+9i0KD8TVVsjeRiBQGPtTH71wDiqwkEghtlW3Fp3Qys974qggpjJc7ZH7PS/2Za
         ceWaNMwUQS19KuNNv8ize03t0RIUp5QFdc72xGnia/sI5N+D5JmFLjRiI83R7bBlOKOc
         lH6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d7B8lQY5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id v19si1452508otn.3.2019.09.12.15.46.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 15:46:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id w10so1293804plq.5
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 15:46:03 -0700 (PDT)
X-Received: by 2002:a17:902:d891:: with SMTP id b17mr24029479plz.119.1568328362027;
 Thu, 12 Sep 2019 15:46:02 -0700 (PDT)
MIME-Version: 1.0
References: <7ef58eb00bc46b4ea3fe49a8c45cd2ff06292247.camel@perches.com>
In-Reply-To: <7ef58eb00bc46b4ea3fe49a8c45cd2ff06292247.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Sep 2019 15:45:50 -0700
Message-ID: <CAKwvOdn6bMGZFAwH8iS5xD+Ce7oV8U6Fgi_SrFpCjo2-1hEUrw@mail.gmail.com>
Subject: Re: [rfc patch script] treewide conversion of __section(foo) to section("foo");
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d7B8lQY5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636
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

On Sun, Sep 8, 2019 at 9:21 PM Joe Perches <joe@perches.com> wrote:
<snip>
> So running the script:
>
> $ perl section.pl
>
> produces a commit
> ---
> From 04e52f34fd4ee7008ea5bf0d8896bf8d1fdf9f3f Mon Sep 17 00:00:00 2001
> Message-Id: <04e52f34fd4ee7008ea5bf0d8896bf8d1fdf9f3f.1568001863.git.joe@perches.com>
> From: Joe Perches <joe@perches.com>
> Date: Sun, 8 Sep 2019 20:53:41 -0700
> Subject: [PATCH] treewide: Convert macro and uses of __section(foo) to
>  __section("foo")
>
> Use a more generic form for __section that requires quotes to avoid
> complications with clang and gcc differences.
>
> Remove the quote operator # from compiler_attributes.h __section macro.
>
> Convert all unquoted __section(foo) uses to quoted __section("foo").
> Also convert __attribute__((section("foo"))) uses to __section("foo")
> even if the __attribute__ has multiple list entry forms.
>
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  arch/arc/include/asm/linkage.h                    |  8 +++---
>  arch/arc/include/asm/mach_desc.h                  |  2 +-
>  arch/arc/plat-hsdk/platform.c                     |  2 +-
>  arch/arm/include/asm/cache.h                      |  2 +-
>  arch/arm/include/asm/cpuidle.h                    |  2 +-
>  arch/arm/include/asm/idmap.h                      |  2 +-
>  arch/arm/include/asm/kvm_hyp.h                    |  2 +-
>  arch/arm/include/asm/mach/arch.h                  |  4 +--
>  arch/arm/include/asm/setup.h                      |  2 +-
>  arch/arm/include/asm/smp.h                        |  2 +-
>  arch/arm/include/asm/tcm.h                        |  8 +++---
>  arch/arm/kernel/cpuidle.c                         |  2 +-
>  arch/arm/kernel/devtree.c                         |  2 +-
>  arch/arm64/include/asm/cache.h                    |  2 +-
>  arch/arm64/include/asm/exception.h                |  2 +-
>  arch/arm64/include/asm/kvm_hyp.h                  |  2 +-
>  arch/arm64/kernel/efi.c                           |  2 +-
>  arch/arm64/kernel/smp_spin_table.c                |  2 +-
>  arch/ia64/include/asm/cache.h                     |  2 +-
>  arch/microblaze/kernel/setup.c                    |  2 +-
>  arch/mips/include/asm/cache.h                     |  2 +-
>  arch/mips/include/asm/mach-pmcs-msp71xx/msp_pci.h |  4 +--
>  arch/mips/include/asm/machine.h                   |  2 +-
>  arch/mips/include/asm/mips_machine.h              |  2 +-
>  arch/mips/kernel/setup.c                          |  2 +-
>  arch/mips/mm/init.c                               |  2 +-
>  arch/parisc/include/asm/cache.h                   |  2 +-
>  arch/parisc/include/asm/ldcw.h                    |  2 +-
>  arch/parisc/kernel/ftrace.c                       |  2 +-
>  arch/parisc/mm/init.c                             |  6 ++--
>  arch/powerpc/boot/main.c                          |  2 +-
>  arch/powerpc/boot/ps3.c                           |  2 +-
>  arch/powerpc/include/asm/cache.h                  |  2 +-
>  arch/powerpc/include/asm/machdep.h                |  2 +-
>  arch/powerpc/kernel/btext.c                       |  2 +-
>  arch/powerpc/kernel/prom_init.c                   |  2 +-
>  arch/powerpc/kvm/book3s_64_vio_hv.c               |  2 +-
>  arch/s390/boot/compressed/decompressor.c          |  2 +-
>  arch/s390/boot/ipl_parm.c                         |  4 +--
>  arch/s390/boot/startup.c                          |  2 +-
>  arch/s390/include/asm/cache.h                     |  2 +-
>  arch/s390/include/asm/sections.h                  |  4 +--
>  arch/s390/kernel/setup.c                          |  2 +-
>  arch/s390/mm/init.c                               |  2 +-
>  arch/sh/boards/of-generic.c                       |  2 +-
>  arch/sh/include/asm/cache.h                       |  2 +-
>  arch/sh/include/asm/machvec.h                     |  2 +-
>  arch/sh/include/asm/smp.h                         |  2 +-
>  arch/sparc/include/asm/cache.h                    |  2 +-
>  arch/sparc/kernel/btext.c                         |  2 +-
>  arch/um/include/shared/init.h                     | 22 +++++++--------
>  arch/um/kernel/skas/clone.c                       |  2 +-
>  arch/um/kernel/um_arch.c                          |  2 +-
>  arch/x86/boot/compressed/pgtable_64.c             |  2 +-
>  arch/x86/boot/tty.c                               |  8 +++---
>  arch/x86/boot/video.h                             |  2 +-
>  arch/x86/include/asm/apic.h                       |  4 +--
>  arch/x86/include/asm/cache.h                      |  2 +-
>  arch/x86/include/asm/intel-mid.h                  |  2 +-
>  arch/x86/include/asm/iommu_table.h                |  2 +-
>  arch/x86/include/asm/irqflags.h                   |  2 +-
>  arch/x86/include/asm/mem_encrypt.h                |  2 +-
>  arch/x86/include/asm/setup.h                      |  2 +-
>  arch/x86/kernel/cpu/cpu.h                         |  2 +-
>  arch/x86/kernel/head64.c                          |  2 +-
>  arch/x86/mm/mem_encrypt.c                         |  4 +--
>  arch/x86/mm/mem_encrypt_identity.c                |  2 +-
>  arch/x86/platform/pvh/enlighten.c                 |  4 +--
>  arch/x86/purgatory/purgatory.c                    | 10 +++----
>  arch/x86/um/stub_segv.c                           |  2 +-
>  arch/x86/xen/enlighten.c                          |  2 +-
>  arch/x86/xen/enlighten_pvh.c                      |  2 +-
>  arch/xtensa/kernel/setup.c                        |  2 +-
>  drivers/clk/clk.c                                 |  2 +-
>  drivers/clocksource/timer-probe.c                 |  2 +-
>  drivers/firmware/efi/libstub/efi-stub-helper.c    |  6 ++--
>  drivers/irqchip/irqchip.c                         |  2 +-
>  drivers/of/of_reserved_mem.c                      |  2 +-
>  drivers/s390/char/sclp_early_core.c               |  4 +--
>  drivers/thermal/thermal_core.h                    |  2 +-
>  include/asm-generic/bug.h                         |  6 ++--
>  include/asm-generic/error-injection.h             |  2 +-
>  include/asm-generic/kprobes.h                     |  4 +--
>  include/linux/acpi.h                              |  2 +-
>  include/linux/cache.h                             |  4 +--
>  include/linux/compiler.h                          |  8 +++---
>  include/linux/compiler_attributes.h               | 12 +-------
>  include/linux/cpu.h                               |  2 +-
>  include/linux/dynamic_debug.h                     |  2 +-
>  include/linux/export.h                            |  4 +--
>  include/linux/firmware.h                          |  2 +-
>  include/linux/frame.h                             |  2 +-
>  include/linux/init.h                              | 34 +++++++++++------------
>  include/linux/init_task.h                         |  4 +--
>  include/linux/interrupt.h                         |  4 +--
>  include/linux/kernel.h                            |  6 ++--
>  include/linux/linkage.h                           |  4 +--
>  include/linux/lsm_hooks.h                         |  4 +--
>  include/linux/module.h                            |  2 +-
>  include/linux/moduleparam.h                       |  4 +--
>  include/linux/mtd/xip.h                           |  2 +-
>  include/linux/of.h                                |  2 +-
>  include/linux/percpu-defs.h                       |  2 +-
>  include/linux/printk.h                            |  4 +--
>  include/linux/rcupdate.h                          |  2 +-
>  include/linux/sched/debug.h                       |  2 +-
>  include/linux/serial_core.h                       |  2 +-
>  include/linux/spinlock.h                          |  2 +-
>  include/linux/srcutree.h                          |  2 +-
>  include/linux/syscalls.h                          |  6 ++--
>  include/linux/trace_events.h                      |  2 +-
>  include/linux/tracepoint.h                        |  8 +++---
>  include/trace/bpf_probe.h                         |  2 +-
>  include/trace/trace_events.h                      | 10 +++----
>  kernel/kallsyms.c                                 |  4 +--
>  kernel/trace/trace_export.c                       |  2 +-

Diff stats look good based on what I could find myself with grep.  I
also manually eyeballed each hunk (#eyestrain).  When you send, please
include my:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
This patchset shows the need to follow up with conversions for some of
the other attributes like __used, __aligned, and __weak.
Good job handling some of the trickier cases.
One case I'm not sure is perfect (or if it even matters TBH) is when
there's a trailing backslash for a macro definition that continues
onto the next line, if those are all still tabbed out correctly.  But
the meat of this change is what's important and looks correct to.  If
you want to email me just the patch file (so I don't have to
copy+pasta from an email), I'd be happy to apply it and compile+boot
test a few more arch's than x86.

>  116 files changed, 193 insertions(+), 203 deletions(-)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn6bMGZFAwH8iS5xD%2BCe7oV8U6Fgi_SrFpCjo2-1hEUrw%40mail.gmail.com.
