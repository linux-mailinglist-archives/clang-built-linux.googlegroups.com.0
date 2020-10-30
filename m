Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC6B5X6AKGQENKZ2CHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DAF29F9D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 01:38:37 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id k103sf1300735otk.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 17:38:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604018316; cv=pass;
        d=google.com; s=arc-20160816;
        b=gLx5NVr5ireTHW1Y+7zC9KzKeqHMzSp5FvBDj9rYG52BcV7PYnxQ+RbU0sOmOOtd5p
         FjL/qeQ0thUycX3eGpC6/D5geumKrtY/ImK0ObHrt9dImyD3XmEWoeXV/WO6BHkXWQ7p
         UwEB+Zj+d+qq+h1BjzwAilv7dqEawlbLjHlvXbv7/eezqZn4V3Xb27w84+s5CdzTBuU1
         fUqXS4bdHuJdb4XZDVROkWXwc7+ZfQ7vTe+bPz5rh7L4eiCcYgXITXF3FCHI+iinhv+O
         ig90qTCnAqQqyOCUd+wNUDJXxyzbpFLNy4kTgyLdrGrMyxvnzTGfo4Jy0bbAt0VqntKm
         WJDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iLLaFoossi48pGHDo+70ie7AEGKa1N+REsdu6hySRqg=;
        b=DxtSeWooY1OBXg6/nZtykBCX7vq8aVurpdnzoEqgKAFvYdUI/saqBq3NRfI85yQyEC
         wojq5tTSQh1/Umb1ZgnFn98vkf/1zIPGNkwKOqlQ5HC7vJnIG9gTmBKkSJFk+Qn2R/C0
         xF3K/sAhotCub3q78H+iYwGBpgRSG6pnE8StkcI5hLi+SjvRF8h7HpcEDe9oabz3nybr
         0xdC2c4br+8kAYBo/C0D4ODwUJtXre8QM/JH3Mb6NSMDw1f9pMVjeUkZSdrCSo//nqSe
         7r1RnZxI5dk2bVW3S1eRF+ecDUxQr82aKqryRFVBtMXGRAINsLuI34qMYWczXAQiwN+y
         Cvlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UOfOAnx2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iLLaFoossi48pGHDo+70ie7AEGKa1N+REsdu6hySRqg=;
        b=og0rCB0g/PaTG/tHD4VfNEgCgvnAey+H50Dyev3YZRUMjJU0iRrnnv/twU1S45GffM
         unOev8tG2Ywpi/Xe0fPjiuDbnur4IaKkmiuQhhiXl9TnRJPzmM8yoML20N2c3jJ39Ztl
         k9YoIuG/4VCkJ3u5q4GwPHIhsjXStpCBzAXJSfMxax9KWFaqm0u/sGk6YYulNsOWwE2h
         LZORjUy3OSDLxbd3LO9wiKz2TpYCepFC7QCC0I+9dBQ6QmA8dAsKj5PLPLr4exjdlfHj
         tLEJXJ6CkM+xdf3X7DJw1nYO2QchGHNmAg2rcjcLkcRyr7Fj0U9EFokTUUyLH5Im5yRS
         6oAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iLLaFoossi48pGHDo+70ie7AEGKa1N+REsdu6hySRqg=;
        b=OP93gNrzc5W9o9RQGuLqrygXsOmcugjfxtxx27wpsxrrMeKChxlLyYDqwhEGZe0za3
         tJRHtUCaJR/BdBcJdDTDV01vrMAMxvctxP/EoolkQz2zOiSpGu4bDVpqtFA+1B35N12V
         Ohlse9ysss15h6lZMUFMGc1d+rDooGZ3YWzx6J2RtnhDP/KYwy8e5BXxS5lSRFPBfx72
         KW+cyMOSdEhpXJGyORpp+83lMyHzuFVWjuooxKzzC2uPcBasvUBTAoEBvXYK1ZGb8D9E
         zdVThAjW0gKWAtMoLQ3ffikV5eSYpAOF717kE/E/FPzf99U/ZhP1N5d88FY6E5XaV7S/
         m6lw==
X-Gm-Message-State: AOAM533MsDYy+1Hv9ed49JLwpXrciIaLcEe2fObZmBf1y05e/qRQCwOv
	iEMsOLCG/NtoIbwhplZnASQ=
X-Google-Smtp-Source: ABdhPJxRc73BTI6a1HTU1MN2L4HOuIUODSLT2wxRWsz6HztPoPpHgT2gmUocMb0b3SAUpXuL6VqM4A==
X-Received: by 2002:a9d:6317:: with SMTP id q23mr4896415otk.95.1604018315843;
        Thu, 29 Oct 2020 17:38:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c694:: with SMTP id m20ls308300ooq.8.gmail; Thu, 29 Oct
 2020 17:38:35 -0700 (PDT)
X-Received: by 2002:a4a:b04f:: with SMTP id g15mr5332720oon.37.1604018315510;
        Thu, 29 Oct 2020 17:38:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604018315; cv=none;
        d=google.com; s=arc-20160816;
        b=WKmS90MxqllK+MRzT2coSlmO3dOtZmNRE2NsIEST6UDwfhnabIdPucXNXCcmIvHrY6
         tMepxag4NWImtjZIy7+N4Du777DIR3M2hm4TCeyIiNB4ed4BQpeqy79812oqxIoZ5ieZ
         ikG5imS1cHKOgzGswiJCykTqd6V53ceIkWwCMcYUsBb0No0d5U3yfDJfmPFnhyNML02F
         r282QsIMBm9TQS+OU+1XwYpsFzGgepKT3u2AE5N4/3AtDOqviIU9CxuoieREgH30fRtU
         wK672FWieUY42t3w1XFr0u4giUpfNywbh0MB8uVkVoMZJVa4VwvN9e4g43RNMqUHGey5
         oJ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9Ph2s5hmTZM9t4kEGF7Jwdc+t5ui49ALjCmVCEnnqNE=;
        b=KSgV0lEtHEyeS4iI4EtgCLjRo6wtFJZWZHOUr/27Ea9lek5JHToV5UI4jcu0YfkCS1
         GoxoIdM1QtR11sLpR3nyX8a/J+ywj+urD+753yaXwt8tQXU5E21262M/GUxzBfr2UY8x
         aQQZg8AzW5GZipfEn36YcIPoaJ3YZYTIlKnVq2quNTF0dLFDMeJTOm7bAJPCy+LrNeEi
         /GmZRtI2E+26yoY3WO2xCOEUWgj26ESlKAU3Cmou9ITqlLYDwxq6cXsqW5BDyh574bnV
         RKtAEzdHcsFepU/0SA9N8L49CzkfZHr+1imSoCR4s3wXLp9j9Ye2pGi6fxv3c244bKlt
         Tddg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UOfOAnx2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id m127si347854oig.2.2020.10.29.17.38.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 17:38:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 15so3715674pgd.12
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 17:38:35 -0700 (PDT)
X-Received: by 2002:a62:5e06:0:b029:164:a9ca:b07e with SMTP id
 s6-20020a625e060000b0290164a9cab07emr6648381pfb.36.1604018314623; Thu, 29 Oct
 2020 17:38:34 -0700 (PDT)
MIME-Version: 1.0
References: <20201019084140.4532-1-linus.walleij@linaro.org> <20201030002900.GA2248731@ubuntu-m3-large-x86>
In-Reply-To: <20201030002900.GA2248731@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 17:38:22 -0700
Message-ID: <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UOfOAnx2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Oct 29, 2020 at 5:29 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Oct 19, 2020 at 10:41:35AM +0200, Linus Walleij wrote:
> > This is the 16th and final (knock on wood) version of
> > KASan for ARM32.
> >
> > Changes since v15:
> >
> > - Things now work on all boards we have tested on including
> >   Broadcom and i.MX6Q.
> >
> > - Folded in a fix from Ard to PAGE_ALIGN() the end of
> >   mappings making everything work on all Broadcom board.
> >
> > - Folded in a fix from Ahmad Fatoum making things work
> >   with fortify on i.MX6Q.
> >
> > - Testing and testing and testing on build servers.
> >
> > - We are good to go.
> >
> > I will now put this in Russell's patch tracker for v5.11.
> >
> > There is a git branch you can pull in:
> > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git/log/?h=kasan
> >
> > This branch includes Ard's two patches already in Russell's
> > patch tracker.
> >
> >
> > Abbott Liu (1):
> >   ARM: Define the virtual space of KASan's shadow region
> >
> > Andrey Ryabinin (3):
> >   ARM: Disable KASan instrumentation for some code
> >   ARM: Replace string mem* functions for KASan
> >   ARM: Enable KASan for ARM
> >
> > Linus Walleij (1):
> >   ARM: Initialize the mapping of KASan shadow memory
> >
> >  Documentation/arm/memory.rst                  |   5 +
> >  Documentation/dev-tools/kasan.rst             |   4 +-
> >  .../features/debug/KASAN/arch-support.txt     |   2 +-
> >  arch/arm/Kconfig                              |  10 +
> >  arch/arm/boot/compressed/Makefile             |   1 +
> >  arch/arm/boot/compressed/string.c             |  19 ++
> >  arch/arm/include/asm/kasan.h                  |  33 ++
> >  arch/arm/include/asm/kasan_def.h              |  81 +++++
> >  arch/arm/include/asm/memory.h                 |   5 +
> >  arch/arm/include/asm/pgalloc.h                |   8 +-
> >  arch/arm/include/asm/string.h                 |  26 ++
> >  arch/arm/include/asm/thread_info.h            |   8 +
> >  arch/arm/include/asm/uaccess-asm.h            |   2 +-
> >  arch/arm/kernel/entry-armv.S                  |   3 +-
> >  arch/arm/kernel/entry-common.S                |   9 +-
> >  arch/arm/kernel/head-common.S                 |   7 +-
> >  arch/arm/kernel/setup.c                       |   2 +
> >  arch/arm/kernel/unwind.c                      |   6 +-
> >  arch/arm/lib/memcpy.S                         |   3 +
> >  arch/arm/lib/memmove.S                        |   5 +-
> >  arch/arm/lib/memset.S                         |   3 +
> >  arch/arm/mm/Makefile                          |   5 +
> >  arch/arm/mm/kasan_init.c                      | 292 ++++++++++++++++++
> >  arch/arm/mm/mmu.c                             |  18 ++
> >  arch/arm/mm/pgd.c                             |  16 +-
> >  arch/arm/vdso/Makefile                        |   2 +
> >  26 files changed, 561 insertions(+), 14 deletions(-)
> >  create mode 100644 arch/arm/include/asm/kasan.h
> >  create mode 100644 arch/arm/include/asm/kasan_def.h
> >  create mode 100644 arch/arm/mm/kasan_init.c
> >
> > --
> > 2.26.2
> >
>
> After this series was applied and available in -next, ARCH=arm LLVM=1
> allyesconfig builds started failing:
>
> $ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- KCONFIG_ALLCONFIG=<(echo CONFIG_CPU_BIG_ENDIAN=n) LLVM=1 distclean allyesconfig vmlinux
> ...
> ld.lld: error: section: .exit.data is not contiguous with other relro sections
> ...
>
> $ git bisect ld: [3f267ec60b922eff2a5c90d532357a39f155b730] Add linux-next specific files for 20201029
> # good: [23859ae44402f4d935b9ee548135dd1e65e2cbf4] Merge tag 'trace-v5.10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace
> git bisect start '3f267ec60b922eff2a5c90d532357a39f155b730' '23859ae44402f4d935b9ee548135dd1e65e2cbf4'
> # bad: [bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7] Merge remote-tracking branch 'mtd/mtd/next' into master
> git bisect bad bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7
> # bad: [37a292dcf77532547f335ed5063d9169031c9b08] Merge remote-tracking branch 'sunxi/sunxi/for-next' into master
> git bisect bad 37a292dcf77532547f335ed5063d9169031c9b08
> # good: [e6d922c77db276a16f0b7933c2a9951dc9c0052c] Merge remote-tracking branch 'drm-misc-fixes/for-linux-next-fixes' into master
> git bisect good e6d922c77db276a16f0b7933c2a9951dc9c0052c
> # bad: [cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320] Merge remote-tracking branch 'mvebu/for-next' into master
> git bisect bad cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320
> # bad: [d0e12484e7e1ede73c538744cdbe9439f7335d01] Merge remote-tracking branch 'arm-soc/for-next' into master
> git bisect bad d0e12484e7e1ede73c538744cdbe9439f7335d01
> # good: [24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6] Merge branch 'asm-generic-cleanup' into asm-generic
> git bisect good 24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6
> # good: [3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52] Merge remote-tracking branch 'kbuild/for-next' into master
> git bisect good 3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52
> # bad: [20f96e606509ee5084690179afe1810b95617a92] Merge branches 'fixes' and 'misc' into for-next
> git bisect bad 20f96e606509ee5084690179afe1810b95617a92
> # good: [d6d51a96c7d63b7450860a3037f2d62388286a52] ARM: 9014/2: Replace string mem* functions for KASan
> git bisect good d6d51a96c7d63b7450860a3037f2d62388286a52
> # good: [5615f69bc2097452ecc954f5264d784e158d6801] ARM: 9016/2: Initialize the mapping of KASan shadow memory
> git bisect good 5615f69bc2097452ecc954f5264d784e158d6801
> # bad: [fc2933c133744305236793025b00c2f7d258b687] ARM: 9020/1: mm: use correct section size macro to describe the FDT virtual address
> git bisect bad fc2933c133744305236793025b00c2f7d258b687
> # bad: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017/2: Enable KASan for ARM
> git bisect bad 421015713b306e47af95d4d61cdfbd96d462e4cb
> # first bad commit: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017/2: Enable KASan for ARMog
>
> An allyesconfig kernel compiled with clang does not link properly with
> ld.bfd without a workaround [1], which I do not have time to apply and
> test now but can later if it is relevant. I have not done any triage on
> this yet either but I wanted to get the report out in case there is
> anything obvious.
>
> [1]: https://github.com/ClangBuiltLinux/linux/issues/325

relro? smells like:
https://lore.kernel.org/lkml/20201016175339.2429280-1-ndesaulniers@google.com/T/#u

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdntdKGN%2BF4r2jYNw3C-vxxZ09aCTaGR1_DtR%2B5tFzjLOw%40mail.gmail.com.
