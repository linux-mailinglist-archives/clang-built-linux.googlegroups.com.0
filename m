Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT545X6AKGQEQWTQVRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F0229F9AD
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 01:29:04 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id w8sf4551110ybj.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 17:29:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604017743; cv=pass;
        d=google.com; s=arc-20160816;
        b=eYNdCNWKNXqHLr1fSgWNrHwAiwrw83ahZCCnaQzwq5sOZU9LhJa4pi6neV2o6AWGzg
         rpxt49EcKxCcWpVskirVu42xJvymUGZ+lU5OVknm3kUqdAUd20tuRVNn1N1vcf0hRaV9
         AllntNMxWcGrMYu/C6Q4I0/ye5/wlshrs90uQobYtyJvo5LlvHvSdY7yLqOnImvyzyCf
         Y3n0lt2X1EPfidNwCv448P6+OJ0DVcR7SouGrlQa07yWHKvdXXzGmupk2m4PvF2Qmxxz
         Gmt6xh8XEzeUCpoNfWbMu32scF7NERwYQVKEuCi5wG0EATUoyGacF3mlbQm1PQ5qgjhu
         K1hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=488t/EZjb82LzLI+/pXJBgXRtQ9a/IoULUBY5/eVwnA=;
        b=J0EzVj6JgoihWdkWe5KE5rqtRJtgPYGMga8qfz6uzorKfztwwmU62Oor1Hz+fBN/jZ
         BjF4RnO1yD4krKTRp2h2GayYiguZymDuuo9LeAv/IntQkSw+IIkpSud6KQG0Q1GjDkiy
         14F0d3Qwg8MdE8oC3a9bJAvL9kN5vSMFaLhJxzJdGauaSZSRgnHUX9RNqMp+RYetI7xt
         gBHBrUIPewBMcUnFnCQB/PlLIJX65YCIqikn3ANJpa6FAHqr1gdc4xn4fk8KW83EnDsH
         ZinzE2aUZVyqdSyUS3w5o7TNe7k+IgHBEr9nS3np7uvR9jhytFlsep3tFyaGC+9G/tL8
         r9jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=om3IXmau;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=488t/EZjb82LzLI+/pXJBgXRtQ9a/IoULUBY5/eVwnA=;
        b=T+GLLS7LliC2V2WifrL/KhsVuaJMV2SoA5XJwX5Y6P26/Ckx7Tc5o8ownQeOtfT7rq
         6QabC2Jd5kVWFwTeCgpbms301jy8K5EEzRVeuX8gNaornJHZfOy63w2aUFBB8F9NZKDU
         HVmxLQEXRFkC0nxnhO7mhQ25ikvzvl7SxRR2gXsIqKMRZTydMyX3adFYhAMrsi0oxUS+
         l3Qvo6ZncZ4GbWTabUipw9uhTHTrqNXSln0EzvHRMEvJvots7R8EMLhTH+eWit+QaLrq
         FvnRVx+CrYWAO1o/aPum5OUvzZz2SbwsY1fZIZYvXDyAq4PLNhzzv/fUz5NRacGiT8xB
         BT+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=488t/EZjb82LzLI+/pXJBgXRtQ9a/IoULUBY5/eVwnA=;
        b=nCx1T1bn+NZ6R/o4AbKzpIXvFl3L13fCVazPMsrzCuVsHV2QnSoMCgHn5P9MNZCcF5
         U45XiLOp2KG/3nbCPdF4bK4CasAShPbeiF3SFVWfvvgbzM4h2s+zwAdKS7Q9oHPFOfKj
         JfoJFupqyWqxhfZn2KYOUGqtQaQ6kKpWJT0YEcASLCypcAupmBzJnZfuTse5axB44cNx
         d1W9IoVXyOnjmpIVijSIhnktARooIwDE0dmYXznot1QSMls1VIs1sV1X/N+A7+CQzU/5
         nYvMwSe/MUAfZzYLWG9+eJnEUzV9M6IVpi/JSNFf1KJgUEQ0h7vNnk1eG3qNtGFNYR2S
         hTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=488t/EZjb82LzLI+/pXJBgXRtQ9a/IoULUBY5/eVwnA=;
        b=uMTtbqfv5pA4K++syyXRBOvEgtqkaY/dJE43HGeJtDR6eT4ySKQdGsGLEDU43Zo8jd
         5lOKFZk7+bqidDTi5204N3NmW7jCxbervPh+3FI/MmAk1I3C4aRHdrCr4D23MvS/6kpL
         t6evhwZhs/J27UQUqnB3G7tTZpvjhr3WqPgEjkDmBV2juUWkmTHO5xmoADVCBJrDAIOm
         ju6B6RhJNnkST3MwS+67SKwuUAQY2Tx3rgsJ7/k5ccKzC5ZrFF4tigk2bqNLEYLvtFuj
         +dJp1hTwWlRrDZ/79fvqlsX0AJ3tR5KrpMZawDovxtYlWf79k8ZEjdXroFJq0O8RKlHd
         eWJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532b8xOBhxCyoptDqVKU281QmtxgZOZj0dPM4Fo7JRLpIIpg8pKA
	KTzau3vqT6buXT7k/h/BVHo=
X-Google-Smtp-Source: ABdhPJxsyJbMX+9xi/eg4Ir97P8AdpAzwUGTazjzZIjZ1iIrPAl4r1qvNwvg+A26p5Pl2YwAEuX69w==
X-Received: by 2002:a25:d6d5:: with SMTP id n204mr62163ybg.284.1604017743658;
        Thu, 29 Oct 2020 17:29:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2a0b:: with SMTP id q11ls2132645ybq.8.gmail; Thu, 29 Oct
 2020 17:29:03 -0700 (PDT)
X-Received: by 2002:a25:ae97:: with SMTP id b23mr86064ybj.26.1604017743084;
        Thu, 29 Oct 2020 17:29:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604017743; cv=none;
        d=google.com; s=arc-20160816;
        b=w6zXdoeIiH2H3u9sFu6nGeV/fzYvGXQdmVDRkl2SYGpkGZAV7EXUIpShvHhcQsm7fj
         rExqWClRmkW9sZgCSE3up2RWYgV2cZVi3C9f+r7nmZ54jhHjroAP6vvDUudIuGq+Y8FH
         bkDgJxZ+KnIoiTA5vh46Qi+W0pJuZocX9Gq5DQ2GNtYJhGvy01uMq+iueV6C8xIA+QgW
         u8pagBQRthgJn/h1Dmu8WgWEH80yCbmVrAaEVvH92OlPWBg/rOLRa15uO4GMe561SmQ+
         dYZLEQ5IYg5fEVbyzrIkoZdcpl9/SQjPmxf+XVHqUfZJvG1ECn3mv8j0Wpe3vaY03Yjc
         Vm8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VHuEeuFlvEmz+b0RvXh2gkoEvpKRfWFfKsO/pt6RYG8=;
        b=RAQXjbHIv1sjcFOZPy/grs7mG0/z2BCP77iGHYOJgPYWBYadYGMAgaPuH0cgQ0silK
         Ean9U8/sJAynkf+TEuZljv5Jc2hcpz9aknK+nvTZusrMwrpDd1XXWZic9rpM2xs/5zlK
         PifGYmlLbKWXBCONgnJziUngcZxOCiAG7kSWy17CAvjcTX1cW8cizfs9cpDKmtXot6xo
         g4rUqJyVAfCDmfhbejcHClIvPBB5l3Sxd7swECwTiuz0+gnU0SFS2aJXtV4SEmXsN7C+
         XstmNt/6gwfAdelNn+Ge2QkNlX9coKaluNB2nYRAMV1eG7YD+WBBFDU+xzLAderb+2NS
         MNrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=om3IXmau;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id q4si312813ybk.3.2020.10.29.17.29.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 17:29:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id v18so5038417ilg.1
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 17:29:03 -0700 (PDT)
X-Received: by 2002:a92:8742:: with SMTP id d2mr7850ilm.153.1604017742554;
        Thu, 29 Oct 2020 17:29:02 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id i87sm4404605ill.25.2020.10.29.17.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 17:29:01 -0700 (PDT)
Date: Thu, 29 Oct 2020 17:29:00 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Abbott Liu <liuwenliang@huawei.com>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/5 v16] KASan for Arm
Message-ID: <20201030002900.GA2248731@ubuntu-m3-large-x86>
References: <20201019084140.4532-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201019084140.4532-1-linus.walleij@linaro.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=om3IXmau;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Oct 19, 2020 at 10:41:35AM +0200, Linus Walleij wrote:
> This is the 16th and final (knock on wood) version of
> KASan for ARM32.
> 
> Changes since v15:
> 
> - Things now work on all boards we have tested on including
>   Broadcom and i.MX6Q.
> 
> - Folded in a fix from Ard to PAGE_ALIGN() the end of
>   mappings making everything work on all Broadcom board.
> 
> - Folded in a fix from Ahmad Fatoum making things work
>   with fortify on i.MX6Q.
> 
> - Testing and testing and testing on build servers.
> 
> - We are good to go.
> 
> I will now put this in Russell's patch tracker for v5.11.
> 
> There is a git branch you can pull in:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git/log/?h=kasan
> 
> This branch includes Ard's two patches already in Russell's
> patch tracker.
> 
> 
> Abbott Liu (1):
>   ARM: Define the virtual space of KASan's shadow region
> 
> Andrey Ryabinin (3):
>   ARM: Disable KASan instrumentation for some code
>   ARM: Replace string mem* functions for KASan
>   ARM: Enable KASan for ARM
> 
> Linus Walleij (1):
>   ARM: Initialize the mapping of KASan shadow memory
> 
>  Documentation/arm/memory.rst                  |   5 +
>  Documentation/dev-tools/kasan.rst             |   4 +-
>  .../features/debug/KASAN/arch-support.txt     |   2 +-
>  arch/arm/Kconfig                              |  10 +
>  arch/arm/boot/compressed/Makefile             |   1 +
>  arch/arm/boot/compressed/string.c             |  19 ++
>  arch/arm/include/asm/kasan.h                  |  33 ++
>  arch/arm/include/asm/kasan_def.h              |  81 +++++
>  arch/arm/include/asm/memory.h                 |   5 +
>  arch/arm/include/asm/pgalloc.h                |   8 +-
>  arch/arm/include/asm/string.h                 |  26 ++
>  arch/arm/include/asm/thread_info.h            |   8 +
>  arch/arm/include/asm/uaccess-asm.h            |   2 +-
>  arch/arm/kernel/entry-armv.S                  |   3 +-
>  arch/arm/kernel/entry-common.S                |   9 +-
>  arch/arm/kernel/head-common.S                 |   7 +-
>  arch/arm/kernel/setup.c                       |   2 +
>  arch/arm/kernel/unwind.c                      |   6 +-
>  arch/arm/lib/memcpy.S                         |   3 +
>  arch/arm/lib/memmove.S                        |   5 +-
>  arch/arm/lib/memset.S                         |   3 +
>  arch/arm/mm/Makefile                          |   5 +
>  arch/arm/mm/kasan_init.c                      | 292 ++++++++++++++++++
>  arch/arm/mm/mmu.c                             |  18 ++
>  arch/arm/mm/pgd.c                             |  16 +-
>  arch/arm/vdso/Makefile                        |   2 +
>  26 files changed, 561 insertions(+), 14 deletions(-)
>  create mode 100644 arch/arm/include/asm/kasan.h
>  create mode 100644 arch/arm/include/asm/kasan_def.h
>  create mode 100644 arch/arm/mm/kasan_init.c
> 
> -- 
> 2.26.2
> 

After this series was applied and available in -next, ARCH=arm LLVM=1
allyesconfig builds started failing:

$ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- KCONFIG_ALLCONFIG=<(echo CONFIG_CPU_BIG_ENDIAN=n) LLVM=1 distclean allyesconfig vmlinux
...
ld.lld: error: section: .exit.data is not contiguous with other relro sections
...

$ git bisect ld: [3f267ec60b922eff2a5c90d532357a39f155b730] Add linux-next specific files for 20201029
# good: [23859ae44402f4d935b9ee548135dd1e65e2cbf4] Merge tag 'trace-v5.10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace
git bisect start '3f267ec60b922eff2a5c90d532357a39f155b730' '23859ae44402f4d935b9ee548135dd1e65e2cbf4'
# bad: [bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7] Merge remote-tracking branch 'mtd/mtd/next' into master
git bisect bad bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7
# bad: [37a292dcf77532547f335ed5063d9169031c9b08] Merge remote-tracking branch 'sunxi/sunxi/for-next' into master
git bisect bad 37a292dcf77532547f335ed5063d9169031c9b08
# good: [e6d922c77db276a16f0b7933c2a9951dc9c0052c] Merge remote-tracking branch 'drm-misc-fixes/for-linux-next-fixes' into master
git bisect good e6d922c77db276a16f0b7933c2a9951dc9c0052c
# bad: [cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320] Merge remote-tracking branch 'mvebu/for-next' into master
git bisect bad cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320
# bad: [d0e12484e7e1ede73c538744cdbe9439f7335d01] Merge remote-tracking branch 'arm-soc/for-next' into master
git bisect bad d0e12484e7e1ede73c538744cdbe9439f7335d01
# good: [24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6] Merge branch 'asm-generic-cleanup' into asm-generic
git bisect good 24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6
# good: [3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52] Merge remote-tracking branch 'kbuild/for-next' into master
git bisect good 3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52
# bad: [20f96e606509ee5084690179afe1810b95617a92] Merge branches 'fixes' and 'misc' into for-next
git bisect bad 20f96e606509ee5084690179afe1810b95617a92
# good: [d6d51a96c7d63b7450860a3037f2d62388286a52] ARM: 9014/2: Replace string mem* functions for KASan
git bisect good d6d51a96c7d63b7450860a3037f2d62388286a52
# good: [5615f69bc2097452ecc954f5264d784e158d6801] ARM: 9016/2: Initialize the mapping of KASan shadow memory
git bisect good 5615f69bc2097452ecc954f5264d784e158d6801
# bad: [fc2933c133744305236793025b00c2f7d258b687] ARM: 9020/1: mm: use correct section size macro to describe the FDT virtual address
git bisect bad fc2933c133744305236793025b00c2f7d258b687
# bad: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017/2: Enable KASan for ARM
git bisect bad 421015713b306e47af95d4d61cdfbd96d462e4cb
# first bad commit: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017/2: Enable KASan for ARMog

An allyesconfig kernel compiled with clang does not link properly with
ld.bfd without a workaround [1], which I do not have time to apply and
test now but can later if it is relevant. I have not done any triage on
this yet either but I wanted to get the report out in case there is
anything obvious.

[1]: https://github.com/ClangBuiltLinux/linux/issues/325

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201030002900.GA2248731%40ubuntu-m3-large-x86.
