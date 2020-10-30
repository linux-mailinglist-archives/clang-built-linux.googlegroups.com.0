Return-Path: <clang-built-linux+bncBD63HSEZTUIBBH4V576AKGQEQCZEMWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7391F29FF70
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 09:11:12 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id e19sf3462269qtq.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 01:11:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604045471; cv=pass;
        d=google.com; s=arc-20160816;
        b=w4hLfaT2eE6qMuixJIW5qEXYgJUHDnnDiCKtN4OvRCZCujUAkSyJnCc+l7tQyRIIwd
         aZmD98lptKY++/GAKVjhYsF3sXiZ8zLpP+dq947KOtcQeQOWZpYljLJmwp7Hchz4RuBA
         avhCy0PUoWNSW7IS3+LXVkaGh3DF2iTVgklnsQYmSK1sxnrmglohmfKs49zAQ9xxCns0
         9VXf2HVFa7Q3GgjqH/jdpfDepbdCJjAKNR/GJ86J8KpEIIywPBcUP0dr8zX3dd7HbawE
         3YZ3BnpxygAoMG7uwR3kv09XDIBUmY3D/GpAVhB945ZYSt4kkXOVL7eOrNY4ytrviIf0
         wsPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=LbdlT/VNwfMho4xEZ76ezj5NAhUUPjk/XPwZTTVxOCM=;
        b=Bl+q2cPocCKOlT+wjPY0qu0Ju1mXbg1hNRn+YXIJY2UkvQ3pevyTKTExdXt6Lg5foa
         A9/W6LDvBPDxweRY+3+nXeuAnjHzyEkAfAx42+Ik7s1jSMzfA6cnrqA34YHduGRmrHD9
         LvSyKOvj5gU1mHuMyYtcGVHf5C0b1xdCEWyJwLNcmlXPDex+8HxRUw3YBaLsrmR6Vua2
         R3Em+UumssVD6JX3hSAviai4YcCbu9n/K2CuZFwx/fd8+0Nv3wDsxQcOiQJ2G/bEEk93
         jFRjig+yzqFw+F/a3lOvGsEFubkSbh1ERJgLv6wYcnoXMZwAZhNp+MlhOxMxhdJBv/GT
         eW3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SlMjf0yw;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LbdlT/VNwfMho4xEZ76ezj5NAhUUPjk/XPwZTTVxOCM=;
        b=B7c1y7ey7j2iApheJ9rxYTG/m7r1eWakX152ZfcASakqVLwbVGpHZa5GX+L2/6WZMM
         4mnaMBwvC6OPgRfuXH/hUfFq6cWvz9X5m8IylRwUuBj/7ZAzCDYBjo7a8bduXbRp9+Dn
         nosgOJS0RlrjzAk0uUhRIy9RvtmCD9YxRgr+twxhAzOKg3dvvhHRFWkDaBfSdTnmRE7D
         jy6un+h+6WqD2sPU6DLKfFS8aUddCrBJ/9MBBzwjG3gNx0DRvYjcWELelP6BFXAoaylm
         gayMsyKt7NOjbYaQachEuAqE6pwC+iXbCbQNdA2KuXiizGcMv6KZ4f5UtODIaz8WIBkn
         /8og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LbdlT/VNwfMho4xEZ76ezj5NAhUUPjk/XPwZTTVxOCM=;
        b=iriHFFCC7dGZ2GUMZ8oWegHCDlyQecLdcJk08f2a6cEiPd6S+En51+Xw5JvgjOkVBq
         MH196daSTllyqXB9xjvqX/4xYY6h+WHmCEXk6neFXStjxuBVzdEVsvFHp6f/lsXTfaTy
         gaqudRKc93MrLNK3UK9ymLKu5yXQB0VR1RujnU5XgjbU/nqFIxAUQ0ayaSh2u8x8KUK9
         QNvidosUJZxnbEP60vnzHWByqc9KSsr1+cOy+TDZSaLPbyV/FSaaPfkTLSVADtDDC+Sk
         oW/FGnd90QAzATntqSfmNiuHppsnCa1fNJOYzkw92i9x5m/d9RT779vGN6D17cKiSjo9
         OAAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ivKpdr8K8oelIncEc9kCk5WLksEpnjz/uQwM0T9rF+M5iCl2e
	frS5rrqt7oxGUFiN3+fHurg=
X-Google-Smtp-Source: ABdhPJyFTAExTLHcQ/+SETIBcc5rSxlhTVo9HC+468q2u7MlXBz5KQTKe5tZiE1ChhgiigIWgQPeqw==
X-Received: by 2002:ad4:43c6:: with SMTP id o6mr8039605qvs.53.1604045471210;
        Fri, 30 Oct 2020 01:11:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:454a:: with SMTP id z10ls2190953qtn.10.gmail; Fri, 30
 Oct 2020 01:11:10 -0700 (PDT)
X-Received: by 2002:ac8:1c1b:: with SMTP id a27mr944465qtk.157.1604045470697;
        Fri, 30 Oct 2020 01:11:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604045470; cv=none;
        d=google.com; s=arc-20160816;
        b=SZPuLHvJ6R7LwOHY1tUquhCOK+y3V/JtaIRqVG6mz9ZWrVeiwyqFlMt8fRqhsiP7VC
         qnhXp2hMgkk0rCSN65yK52KF7tZv4rJQBZY8vlFUezzn4FSjbBSdDIUfvQg231KqG04k
         AAjt7oSOBVpwx3k8RoOPTxyki1NDxlaABIp2ngASIjLuGasVVq/KI0l2LOCFRQsAmmSE
         17MGK17HEpbuC3GjZIdzSQObXIHc60uhtzritUOR8kzpuPv8miGq6TNN/CwmLLdD3TNo
         FnRhOP5IUlccGup/wD50t5FyjPprneehVbIDAOaiVDOg+1R/jeKhpLuqxwfmL8GvVzby
         SU5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ODz1cRgthyFofL93QHCVdvDgivMWMvm+9ynl1VvvM3I=;
        b=0pI8ubAzQlwI3QHQw+mroEJxMztspI762TDovosHot5mCZ9/+QvfKTamoFYvWmGTSF
         t2jKqfogyei51pE8dI+YDrA41BdO4NHaoNld3xyboKtl4djAx6NmzEEGy/qAFqcca35X
         yEhf6FSSfNNVVgA0wWrS7717G8ctd6JUrawXNoKQGcz2NNQAMSYyiY68WmVsEKQh1hwR
         QCGRc9WVp6cu4h84W0au79H3zLTXQXC6iNexq9qA8g9yDdh5dcNX2oi9g1oRn5XrEDno
         /dXlK7kyh5/5CYrkBIiVD8/H3ri9q36y9hCDVnad5wW7tNfPX546Pu2CdmI1aSehv3av
         /inw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SlMjf0yw;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g19si413831qtm.2.2020.10.30.01.11.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 01:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 153F12224A
	for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 08:11:09 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id n11so4868812ota.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 01:11:09 -0700 (PDT)
X-Received: by 2002:a05:6830:1f13:: with SMTP id u19mr759245otg.108.1604045467962;
 Fri, 30 Oct 2020 01:11:07 -0700 (PDT)
MIME-Version: 1.0
References: <20201019084140.4532-1-linus.walleij@linaro.org>
 <20201030002900.GA2248731@ubuntu-m3-large-x86> <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86> <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
 <20201030075655.GA1848109@ubuntu-m3-large-x86> <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
 <20201030080438.GA1849056@ubuntu-m3-large-x86>
In-Reply-To: <20201030080438.GA1849056@ubuntu-m3-large-x86>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 30 Oct 2020 09:10:56 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
Message-ID: <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, Abbott Liu <liuwenliang@huawei.com>, 
	Russell King <linux@armlinux.org.uk>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SlMjf0yw;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 30 Oct 2020 at 09:04, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Oct 30, 2020 at 08:58:20AM +0100, Ard Biesheuvel wrote:
> > On Fri, 30 Oct 2020 at 08:57, Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Fri, Oct 30, 2020 at 08:52:53AM +0100, Ard Biesheuvel wrote:
> > > > On Fri, 30 Oct 2020 at 02:32, Nathan Chancellor
> > > > <natechancellor@gmail.com> wrote:
> > > > >
> > > > > On Thu, Oct 29, 2020 at 05:38:22PM -0700, Nick Desaulniers wrote:
> > > > > > On Thu, Oct 29, 2020 at 5:29 PM Nathan Chancellor
> > > > > > <natechancellor@gmail.com> wrote:
> > > > > > >
> > > > > > > On Mon, Oct 19, 2020 at 10:41:35AM +0200, Linus Walleij wrote=
:
> > > > > > > > This is the 16th and final (knock on wood) version of
> > > > > > > > KASan for ARM32.
> > > > > > > >
> > > > > > > > Changes since v15:
> > > > > > > >
> > > > > > > > - Things now work on all boards we have tested on including
> > > > > > > >   Broadcom and i.MX6Q.
> > > > > > > >
> > > > > > > > - Folded in a fix from Ard to PAGE_ALIGN() the end of
> > > > > > > >   mappings making everything work on all Broadcom board.
> > > > > > > >
> > > > > > > > - Folded in a fix from Ahmad Fatoum making things work
> > > > > > > >   with fortify on i.MX6Q.
> > > > > > > >
> > > > > > > > - Testing and testing and testing on build servers.
> > > > > > > >
> > > > > > > > - We are good to go.
> > > > > > > >
> > > > > > > > I will now put this in Russell's patch tracker for v5.11.
> > > > > > > >
> > > > > > > > There is a git branch you can pull in:
> > > > > > > > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linu=
x-integrator.git/log/?h=3Dkasan
> > > > > > > >
> > > > > > > > This branch includes Ard's two patches already in Russell's
> > > > > > > > patch tracker.
> > > > > > > >
> > > > > > > >
> > > > > > > > Abbott Liu (1):
> > > > > > > >   ARM: Define the virtual space of KASan's shadow region
> > > > > > > >
> > > > > > > > Andrey Ryabinin (3):
> > > > > > > >   ARM: Disable KASan instrumentation for some code
> > > > > > > >   ARM: Replace string mem* functions for KASan
> > > > > > > >   ARM: Enable KASan for ARM
> > > > > > > >
> > > > > > > > Linus Walleij (1):
> > > > > > > >   ARM: Initialize the mapping of KASan shadow memory
> > > > > > > >
> > > > > > > >  Documentation/arm/memory.rst                  |   5 +
> > > > > > > >  Documentation/dev-tools/kasan.rst             |   4 +-
> > > > > > > >  .../features/debug/KASAN/arch-support.txt     |   2 +-
> > > > > > > >  arch/arm/Kconfig                              |  10 +
> > > > > > > >  arch/arm/boot/compressed/Makefile             |   1 +
> > > > > > > >  arch/arm/boot/compressed/string.c             |  19 ++
> > > > > > > >  arch/arm/include/asm/kasan.h                  |  33 ++
> > > > > > > >  arch/arm/include/asm/kasan_def.h              |  81 +++++
> > > > > > > >  arch/arm/include/asm/memory.h                 |   5 +
> > > > > > > >  arch/arm/include/asm/pgalloc.h                |   8 +-
> > > > > > > >  arch/arm/include/asm/string.h                 |  26 ++
> > > > > > > >  arch/arm/include/asm/thread_info.h            |   8 +
> > > > > > > >  arch/arm/include/asm/uaccess-asm.h            |   2 +-
> > > > > > > >  arch/arm/kernel/entry-armv.S                  |   3 +-
> > > > > > > >  arch/arm/kernel/entry-common.S                |   9 +-
> > > > > > > >  arch/arm/kernel/head-common.S                 |   7 +-
> > > > > > > >  arch/arm/kernel/setup.c                       |   2 +
> > > > > > > >  arch/arm/kernel/unwind.c                      |   6 +-
> > > > > > > >  arch/arm/lib/memcpy.S                         |   3 +
> > > > > > > >  arch/arm/lib/memmove.S                        |   5 +-
> > > > > > > >  arch/arm/lib/memset.S                         |   3 +
> > > > > > > >  arch/arm/mm/Makefile                          |   5 +
> > > > > > > >  arch/arm/mm/kasan_init.c                      | 292 ++++++=
++++++++++++
> > > > > > > >  arch/arm/mm/mmu.c                             |  18 ++
> > > > > > > >  arch/arm/mm/pgd.c                             |  16 +-
> > > > > > > >  arch/arm/vdso/Makefile                        |   2 +
> > > > > > > >  26 files changed, 561 insertions(+), 14 deletions(-)
> > > > > > > >  create mode 100644 arch/arm/include/asm/kasan.h
> > > > > > > >  create mode 100644 arch/arm/include/asm/kasan_def.h
> > > > > > > >  create mode 100644 arch/arm/mm/kasan_init.c
> > > > > > > >
> > > > > > > > --
> > > > > > > > 2.26.2
> > > > > > > >
> > > > > > >
> > > > > > > After this series was applied and available in -next, ARCH=3D=
arm LLVM=3D1
> > > > > > > allyesconfig builds started failing:
> > > > > > >
> > > > > > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gn=
ueabi- KCONFIG_ALLCONFIG=3D<(echo CONFIG_CPU_BIG_ENDIAN=3Dn) LLVM=3D1 distc=
lean allyesconfig vmlinux
> > > > > > > ...
> > > > > > > ld.lld: error: section: .exit.data is not contiguous with oth=
er relro sections
> > > > > > > ...
> > > > > > >
> > > > > > > $ git bisect ld: [3f267ec60b922eff2a5c90d532357a39f155b730] A=
dd linux-next specific files for 20201029
> > > > > > > # good: [23859ae44402f4d935b9ee548135dd1e65e2cbf4] Merge tag =
'trace-v5.10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/=
linux-trace
> > > > > > > git bisect start '3f267ec60b922eff2a5c90d532357a39f155b730' '=
23859ae44402f4d935b9ee548135dd1e65e2cbf4'
> > > > > > > # bad: [bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7] Merge remot=
e-tracking branch 'mtd/mtd/next' into master
> > > > > > > git bisect bad bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7
> > > > > > > # bad: [37a292dcf77532547f335ed5063d9169031c9b08] Merge remot=
e-tracking branch 'sunxi/sunxi/for-next' into master
> > > > > > > git bisect bad 37a292dcf77532547f335ed5063d9169031c9b08
> > > > > > > # good: [e6d922c77db276a16f0b7933c2a9951dc9c0052c] Merge remo=
te-tracking branch 'drm-misc-fixes/for-linux-next-fixes' into master
> > > > > > > git bisect good e6d922c77db276a16f0b7933c2a9951dc9c0052c
> > > > > > > # bad: [cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320] Merge remot=
e-tracking branch 'mvebu/for-next' into master
> > > > > > > git bisect bad cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320
> > > > > > > # bad: [d0e12484e7e1ede73c538744cdbe9439f7335d01] Merge remot=
e-tracking branch 'arm-soc/for-next' into master
> > > > > > > git bisect bad d0e12484e7e1ede73c538744cdbe9439f7335d01
> > > > > > > # good: [24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6] Merge bran=
ch 'asm-generic-cleanup' into asm-generic
> > > > > > > git bisect good 24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6
> > > > > > > # good: [3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52] Merge remo=
te-tracking branch 'kbuild/for-next' into master
> > > > > > > git bisect good 3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52
> > > > > > > # bad: [20f96e606509ee5084690179afe1810b95617a92] Merge branc=
hes 'fixes' and 'misc' into for-next
> > > > > > > git bisect bad 20f96e606509ee5084690179afe1810b95617a92
> > > > > > > # good: [d6d51a96c7d63b7450860a3037f2d62388286a52] ARM: 9014/=
2: Replace string mem* functions for KASan
> > > > > > > git bisect good d6d51a96c7d63b7450860a3037f2d62388286a52
> > > > > > > # good: [5615f69bc2097452ecc954f5264d784e158d6801] ARM: 9016/=
2: Initialize the mapping of KASan shadow memory
> > > > > > > git bisect good 5615f69bc2097452ecc954f5264d784e158d6801
> > > > > > > # bad: [fc2933c133744305236793025b00c2f7d258b687] ARM: 9020/1=
: mm: use correct section size macro to describe the FDT virtual address
> > > > > > > git bisect bad fc2933c133744305236793025b00c2f7d258b687
> > > > > > > # bad: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017/2=
: Enable KASan for ARM
> > > > > > > git bisect bad 421015713b306e47af95d4d61cdfbd96d462e4cb
> > > > > > > # first bad commit: [421015713b306e47af95d4d61cdfbd96d462e4cb=
] ARM: 9017/2: Enable KASan for ARMog
> > > > > > >
> > > > > > > An allyesconfig kernel compiled with clang does not link prop=
erly with
> > > > > > > ld.bfd without a workaround [1], which I do not have time to =
apply and
> > > > > > > test now but can later if it is relevant. I have not done any=
 triage on
> > > > > > > this yet either but I wanted to get the report out in case th=
ere is
> > > > > > > anything obvious.
> > > > > > >
> > > > > > > [1]: https://github.com/ClangBuiltLinux/linux/issues/325
> > > > > >
> > > > > > relro? smells like:
> > > > > > https://lore.kernel.org/lkml/20201016175339.2429280-1-ndesaulni=
ers@google.com/T/#u
> > > > > >
> > > > >
> > > > > Huh, did not even realize that the error messages were the same, =
my bad!
> > > > >
> > > > > This issue is simple enough to produce by just adding CONFIG_KASA=
N=3Dy to
> > > > > multi_v7_defconfig. I tried adding '-z norelro' to LDFLAGS_vmlinu=
x in
> > > > > arch/arm/Makefile and it fixes the build error but the resulting =
kernel
> > > > > does not boot in QEMU.
> > > > >
> > > > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueab=
i- LLVM=3D1 distclean defconfig
> > > > >
> > > > > $ scripts/config -e KASAN
> > > > >
> > > > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueab=
i- LLVM=3D1 olddefconfig zImage
> > > > >
> > > > > $ ~/cbl/github/boot-utils/boot-qemu.sh -a arm32_v7 -k .
> > > > > /home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio.zst: 31=
76448 bytes
> > > > > + timeout --foreground 3m unbuffer qemu-system-arm -machine virt =
-no-reboot -append 'console=3DttyAMA0 ' -display none -initrd /home/nathan/=
cbl/github/boot-utils/images/arm/rootfs.cpio -kernel /home/nathan/src/linux=
-next/arch/arm/boot/zImage -m 512m -nodefaults -serial mon:stdio
> > > > > + RET=3D124
> > > > > + set +x
> > > > >
> > > > > '-z norelro' boots fine without KASAN so I assume there is someth=
ing up
> > > > > specifically with KASAN and LLVM for ARM.
> > > > >
> > > >
> > > > How long did you wait for it to boot? Booting a KASAN kernel under
> > > > QEMU emulation is going to be *very* slow.
> > >
> > > The timeout command above is 3m and there was no output from the kern=
el
> > > in that amount of time. What kind of time should I be reasonably
> > > expecting?
> > >
> >
> > 3 minutes is probably long enough.
> >
> > Do you see any output with 'earlycon=3Dpl011,0x9000000' added to the
> > kernel command line?
>
> Yes.
>
> $ ~/cbl/github/boot-utils/boot-qemu.sh -a arm32_v7 -k .
> /home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio.zst: 3176448 by=
tes
> + timeout --foreground 3m unbuffer qemu-system-arm -machine virt -no-rebo=
ot -append 'console=3DttyAMA0 earlycon=3Dpl011,0x9000000 ' -display none -i=
nitrd /home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio -kernel /ho=
me/nathan/src/linux-next/arch/arm/boot/zImage -m 512m -nodefaults -serial m=
on:stdio
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 5.10.0-rc1-next-20201029-dirty (nathan@ubunt=
u-m3-large-x86) (ClangBuiltLinux clang version 12.0.0 (https://github.com/l=
lvm/llvm-project 1df8d7b4f23da304061bf30b617132f8ba9ab80a), LLD 12.0.0 (htt=
ps://github.com/llvm/llvm-project 1df8d7b4f23da304061bf30b617132f8ba9ab80a)=
) #1 SMP Thu Oct 29 18:26:00 MST 2020
> [    0.000000] CPU: ARMv7 Processor [412fc0f1] revision 1 (ARMv7), cr=3D1=
0c5387d
> [    0.000000] CPU: div instructions available: patching division code
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, PIPT instruction =
cache
> [    0.000000] OF: fdt: Machine model: linux,dummy-virt
> [    0.000000] earlycon: pl11 at MMIO 0x09000000 (options '')
> [    0.000000] printk: bootconsole [pl11] enabled
> [    0.000000] Memory policy: Data cache writealloc
> [    0.000000] efi: UEFI not found.
> [    0.000000] cma: Reserved 64 MiB at 0x5c000000
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000040000000-0x000000005fffffff]
> [    0.000000]   Normal   empty
> [    0.000000]   HighMem  empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000040000000-0x000000005fffffff]
> [    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x000000005ff=
fffff]
> [    0.000000] kasan: Mapping kernel virtual memory block: c0000000-e0000=
000 at shadow: b7000000-bb000000
> [    0.000000] kasan: Mapping kernel virtual memory block: bf000000-c0000=
000 at shadow: b6e00000-b7000000
> [    0.000000] kasan: Kernel address sanitizer initialized
> [    0.000000] psci: probing for conduit method from DT.
> [    0.000000] psci: PSCIv0.2 detected in firmware.
> [    0.000000] psci: Using standard PSCI v0.2 function IDs
> [    0.000000] psci: Trusted OS migration not required
> [    0.000000] percpu: Embedded 20 pages/cpu s49676 r8192 d24052 u81920
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 130=
048
> [    0.000000] Kernel command line: console=3DttyAMA0 earlycon=3Dpl011,0x=
9000000
> [    0.000000] Dentry cache hash table entries: 65536 (order: 6, 262144 b=
ytes, linear)
> [    0.000000] Inode-cache hash table entries: 32768 (order: 5, 131072 by=
tes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Memory: 329852K/524288K available (21504K kernel code, 854=
4K rwdata, 14676K rodata, 2048K init, 4843K bss, 128900K reserved, 65536K c=
ma-reserved, 0K highmem)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1,=
 Nodes=3D1
> [    0.000000] rcu: Hierarchical RCU implementation.
> [    0.000000] rcu:     RCU event tracing is enabled.
> [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D16 to nr_cpu_=
ids=3D1.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is=
 10 jiffies.
> [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_i=
ds=3D1
> [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> [    0.000000] GICv2m: range[mem 0x08020000-0x08020fff], SPI[80:143]
> [    0.000000] random: get_random_bytes called from start_kernel+0x208/0x=
3d0 with crng_init=3D0
> [    0.000000] arch_timer: cp15 timer(s) running at 62.50MHz (virt).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_=
cycles: 0x1cd42e208c, max_idle_ns: 881590405314 ns
> [    0.000156] sched_clock: 56 bits at 62MHz, resolution 16ns, wraps ever=
y 4398046511096ns
> [    0.000565] Switching to timer-based delay loop, resolution 16ns
> [    0.006124] Console: colour dummy device 80x30
> [    0.007840] Calibrating delay loop (skipped), value calculated using t=
imer frequency.. 125.00 BogoMIPS (lpj=3D625000)
> [    0.011577] pid_max: default: 32768 minimum: 301
> [    0.014889] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes=
, linear)
> [    0.015189] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 =
bytes, linear)
> [    0.043926] CPU: Testing write buffer coherency: ok
> [    0.045820] CPU0: Spectre v2: firmware did not set auxiliary control r=
egister IBE bit, system vulnerable
> [    0.057716] /cpus/cpu@0 missing clock-frequency property
> [    0.058105] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> [    0.070417] Setting up static identity map for 0x40300000 - 0x403000ac
> [    0.075105] rcu: Hierarchical SRCU implementation.
> [    0.084843] EFI services will not be available.
> [    0.087124] smp: Bringing up secondary CPUs ...
> [    0.087384] smp: Brought up 1 node, 1 CPU
> [    0.087617] SMP: Total of 1 processors activated (125.00 BogoMIPS).
> [    0.087878] CPU: All CPU(s) started in SVC mode.
> [    0.105778] devtmpfs: initialized
> [    0.283349] VFP support v0.3: implementor 41 architecture 4 part 30 va=
riant f rev 0
> [    0.310896] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff, max_idle_ns: 19112604462750000 ns
> [    0.311679] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.312469] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.312803] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.313125] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.313445] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.313761] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.314082] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.314400] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.314718] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.315031] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.315338] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.315661] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.315979] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.316296] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.316608] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.316923] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.317234] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.317549] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.317860] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.318177] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.318493] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.318809] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.319133] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.319457] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.319774] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.320091] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.320593] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.320909] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.321220] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.321532] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.321844] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.322157] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.322475] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.322788] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.323098] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.323424] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.323738] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.324050] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.324358] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.324673] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.324988] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.325303] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.325624] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.325941] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.326255] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.326573] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.326883] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.327193] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.327510] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.327826] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.328138] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.328457] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.328767] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.329081] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.329400] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.329711] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.330021] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.330326] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.330780] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.331104] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.331417] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.331733] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.332054] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.332381] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.332696] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.333001] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.333320] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.333648] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.333964] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.334272] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.334580] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.334894] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.335212] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.335528] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.335846] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.336162] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.336482] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.336804] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.337124] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.337443] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.337761] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.338087] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.338414] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.338756] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.339074] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.339396] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.339737] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.340061] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.340379] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.340695] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.341161] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.341504] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.341843] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.342151] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.342492] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.342809] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.343129] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.343445] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.343761] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.344079] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.344410] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.344755] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.345066] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.345383] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.345719] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.346031] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.346350] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.346664] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.346976] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.347289] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.347642] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.347952] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.348275] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.348618] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.348930] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.349245] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.349563] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.349872] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.350191] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.350508] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.350832] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.351280] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.351632] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.351940] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.352257] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.352604] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.352918] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.353228] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.353543] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.353855] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.354170] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.354503] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.354833] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.355144] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.355477] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.355811] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.356133] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.356439] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.356757] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.357075] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.357381] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.357726] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.358037] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.358345] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.358663] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.358979] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.359287] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.359599] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.359911] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.360230] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.360549] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.360860] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.361313] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.361642] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.361953] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.362262] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.362578] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.362888] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.363205] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.363520] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.363821] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.364139] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.364445] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.364759] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.365070] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.365384] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.365695] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.366003] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.366306] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.366611] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.366924] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.367248] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.367569] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.367876] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.368197] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.368515] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.368829] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.369137] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.369454] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.369772] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.370079] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.370393] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.370709] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.371023] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.371490] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.371808] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.372122] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.372435] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
> [    0.372767] futex hash table entries: 256 (order: 2, 16384 bytes, line=
ar)
>
> Then there is no output after that.
>

Ouch. This looks like futex_init() is being called over and over
again, which is a core_initcall.

This will need some dissecting of the binary, but we need to figure
out what is going on in the initcall dispatch code.

If you build with symbols, you should be able to run it in the
debugger. Just set a breakpoint on futex_init() and step through the
code until you can observe how/why it is being called a second time.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw%40mai=
l.gmail.com.
