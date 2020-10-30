Return-Path: <clang-built-linux+bncBD63HSEZTUIBBKMP576AKGQE6MZKELY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CE729FF3E
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 08:58:35 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id g9sf2402969ooq.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 00:58:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604044714; cv=pass;
        d=google.com; s=arc-20160816;
        b=xc4nyGj7ANW19hsd5SQ+KmKUDIphfqjekZqu6NwBNI32Eyr/2RvYCFd60lyKitLKm6
         dtD2Ld8/WlwAp/woQ8Gx4C1BHiYofGUMYct+y/ZGYTim4vSSAO9WvjATbbTsKkymlerE
         NvV83aeIYFpkSVsz9ekix4shnECJAZr6MJ7o7wCEosqnV11VF0j2Td9j36Rf1a7peTjs
         vcBpOO/6eZSRG6VheIsmY71M+7paNiRBM0HSTumpMxGVsLyLV0b0MGym3bzMWa6my5WU
         yfMkDH0FrXtl4OoczAe/pnetZWz8hwx54MLdPDZJNPfggwV/NWRRB2HMt0UzvHt2nlxh
         3qCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=O3Mun649jqc0NJFCaMcgkQEOmJVGmSnI6SUofqg8SL4=;
        b=tQAh0pKcfwwWgacF+RkBzROqMhC93+PfcC2QioZE25bczcvyRRhAcPY9wQLgKcZXyN
         tyazJUE56rBn4W/5Wj+9Cp0T929Onyujy2PkzTpLkhmDX+V13fOevy2ddBNezvU3e+98
         wgLuEu+fPiIb92Q5iHR6KlQsrpQkzwgTQcnEA3uTdlsuFy0GY82Cp8foJmcwbRYgSpCk
         qFlzx1D36REbmEJ9D3B8xl+EJJhtXk2coyAs5VMwFX6n89HUc/06p4HGQjah/dwrK53A
         CbOQyENh75Prmsn4PE+EyJg+RaKHeYkoC5uxI/fI+GmSJsSsO+ZD9TCJruVP4GIH+Coa
         Dyqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tck4GQwb;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O3Mun649jqc0NJFCaMcgkQEOmJVGmSnI6SUofqg8SL4=;
        b=RgpMfDxKDUcOXRPwozwjMKNtB+qG6hY8JJhB2Tjt5rD+agaFQzs6FlS6plDxDC6Wnz
         8E7nI7KjTdUR/X5UvbGF3zTVu1Bl0Mo0bg8oeT23VMXcnG+o34Otcbu3i/5QJwG1AIxA
         wJOnQAt9n/MqufHe3Lk8AvsOD1hl/AI9ctB3X7hRGbfwMcI1JscSN3tDMsocbMX+xAtS
         Om3B/xm3MVLrFXIDz6plvNlqbTXPuNpbTnekazCuroVOk1VZ5m3Zqp4A+ZRH/VPgy4QA
         voh89sH/VgpJLhs+pJ/mddhC8X10oWkNU7jzcXBC5h/+W6XSkp1guqGDzWwQLNVwzVct
         wVbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O3Mun649jqc0NJFCaMcgkQEOmJVGmSnI6SUofqg8SL4=;
        b=KvEh+zr/yj8wu1cFRyEgPvru5fUWf0dBRi1RoZtE4HLedPATLgCeYvk8TCdffadDUM
         xbJoi/kCeS1hxy1ogmazEDRnC2a/Snb7TpSl4kfz/7gluFtek8JWHVv0JrQviA6JenXG
         2oDaN177eC4D4v3yXFEDd1UInj3H5yq82kXQJBok+kg9kkUGGyrtC/j8wicuetOCp5Ra
         6FrivYBja7rn+uMUf/lz2w9eNdllqJjexd1F582R7+FUvfRG0aTIzce7A/yRWYnB6wN3
         pltWY9fYK7Rv5IBUcjPBiD8V9zkOZh+XvVrfcxYIPcGSUQLLzOJGDwIHbxxcjgt/l9bg
         lrqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yEAuwPkIE3zR/yB1IzuZ4ZSrCUoKyuFLgA4xGaRkjVvAJk3mF
	wHPiO/rC5qeNmfE1RKXLbMI=
X-Google-Smtp-Source: ABdhPJySiRxJON+U1Y8aPJdkd1BH3pJh/Fc0dhs9MpNfYfXIRI7qeIEkw/Zmdo9e7gp6zaKyW28Pqg==
X-Received: by 2002:a9d:6d97:: with SMTP id x23mr740967otp.261.1604044713985;
        Fri, 30 Oct 2020 00:58:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls1399132otk.2.gmail; Fri, 30 Oct
 2020 00:58:33 -0700 (PDT)
X-Received: by 2002:a9d:f44:: with SMTP id 62mr791782ott.17.1604044713596;
        Fri, 30 Oct 2020 00:58:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604044713; cv=none;
        d=google.com; s=arc-20160816;
        b=cQSpS5ZLdgeORwfoWrSMXd2yMkynC+o4MwEiw/YwKuiRNtvMkwIXeC9NfgviuPA8v7
         YfTwL8QbMAJceydxg/SNeEx3Kmz+P44CdnE2sMYAgg46ahMukQza8oURnrZId4iVYn7a
         o+KB9L6MjEwD8DwiWGThq+X3/u0L1Vphhv7Fb/fme/XD+sGcfoDaIibHKtl66Yo51n9R
         VO3HM3Jdqm/L4FeoEUVstexb4Dh6AvIknyHPRttcwpOL+RkMMqSxu7fFjUi0U+S4L5E1
         rHocuX6RSHnjdte9BJlRL+Cvduv8tYVU19vXhrjlUqfFwWnbGYEIpLfCqr7W8iaKTwz0
         F5Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DHizM4m8zMMzlqEd5i+Vet/1fxp84BuhOsKZBRSQgUo=;
        b=W7ycSER03eJKHIr+MIm2C9oA7L+vGVXXjJC+bHsgSwE+Q+PzpdziRFSoGOpY9QbzDL
         QCgghOpe0DP/QIn6he5lSMuaFNE1aQITtRSEdwpAaBGsqupVkb26RRxgPF/8rUCc+RJZ
         dKZh3Z5XqvdTRJU/b8POjhxJPw2c5HEisC8sTeYHZ3vcbMvLflL9kt+MjDitRWltn7R+
         4heri5RCavK9LaVHMLTRr6sCSxex7pDfOEENaVeJolsi9x6sx9rNheVXDvNgIgR4LzjG
         aPz9ndrkxBCbZw5F+yyq0/spPGE52FcAgC+NfAImIJ9wyHN/AItI11iEvhulAmBP3+17
         LPng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tck4GQwb;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p17si468191oot.0.2020.10.30.00.58.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 00:58:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 71D342223F
	for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 07:58:32 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id n15so4807848otl.8
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 00:58:32 -0700 (PDT)
X-Received: by 2002:a05:6830:1f13:: with SMTP id u19mr727649otg.108.1604044711563;
 Fri, 30 Oct 2020 00:58:31 -0700 (PDT)
MIME-Version: 1.0
References: <20201019084140.4532-1-linus.walleij@linaro.org>
 <20201030002900.GA2248731@ubuntu-m3-large-x86> <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86> <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
 <20201030075655.GA1848109@ubuntu-m3-large-x86>
In-Reply-To: <20201030075655.GA1848109@ubuntu-m3-large-x86>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 30 Oct 2020 08:58:20 +0100
X-Gmail-Original-Message-ID: <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
Message-ID: <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=tck4GQwb;       spf=pass
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

On Fri, 30 Oct 2020 at 08:57, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Oct 30, 2020 at 08:52:53AM +0100, Ard Biesheuvel wrote:
> > On Fri, 30 Oct 2020 at 02:32, Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Thu, Oct 29, 2020 at 05:38:22PM -0700, Nick Desaulniers wrote:
> > > > On Thu, Oct 29, 2020 at 5:29 PM Nathan Chancellor
> > > > <natechancellor@gmail.com> wrote:
> > > > >
> > > > > On Mon, Oct 19, 2020 at 10:41:35AM +0200, Linus Walleij wrote:
> > > > > > This is the 16th and final (knock on wood) version of
> > > > > > KASan for ARM32.
> > > > > >
> > > > > > Changes since v15:
> > > > > >
> > > > > > - Things now work on all boards we have tested on including
> > > > > >   Broadcom and i.MX6Q.
> > > > > >
> > > > > > - Folded in a fix from Ard to PAGE_ALIGN() the end of
> > > > > >   mappings making everything work on all Broadcom board.
> > > > > >
> > > > > > - Folded in a fix from Ahmad Fatoum making things work
> > > > > >   with fortify on i.MX6Q.
> > > > > >
> > > > > > - Testing and testing and testing on build servers.
> > > > > >
> > > > > > - We are good to go.
> > > > > >
> > > > > > I will now put this in Russell's patch tracker for v5.11.
> > > > > >
> > > > > > There is a git branch you can pull in:
> > > > > > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-in=
tegrator.git/log/?h=3Dkasan
> > > > > >
> > > > > > This branch includes Ard's two patches already in Russell's
> > > > > > patch tracker.
> > > > > >
> > > > > >
> > > > > > Abbott Liu (1):
> > > > > >   ARM: Define the virtual space of KASan's shadow region
> > > > > >
> > > > > > Andrey Ryabinin (3):
> > > > > >   ARM: Disable KASan instrumentation for some code
> > > > > >   ARM: Replace string mem* functions for KASan
> > > > > >   ARM: Enable KASan for ARM
> > > > > >
> > > > > > Linus Walleij (1):
> > > > > >   ARM: Initialize the mapping of KASan shadow memory
> > > > > >
> > > > > >  Documentation/arm/memory.rst                  |   5 +
> > > > > >  Documentation/dev-tools/kasan.rst             |   4 +-
> > > > > >  .../features/debug/KASAN/arch-support.txt     |   2 +-
> > > > > >  arch/arm/Kconfig                              |  10 +
> > > > > >  arch/arm/boot/compressed/Makefile             |   1 +
> > > > > >  arch/arm/boot/compressed/string.c             |  19 ++
> > > > > >  arch/arm/include/asm/kasan.h                  |  33 ++
> > > > > >  arch/arm/include/asm/kasan_def.h              |  81 +++++
> > > > > >  arch/arm/include/asm/memory.h                 |   5 +
> > > > > >  arch/arm/include/asm/pgalloc.h                |   8 +-
> > > > > >  arch/arm/include/asm/string.h                 |  26 ++
> > > > > >  arch/arm/include/asm/thread_info.h            |   8 +
> > > > > >  arch/arm/include/asm/uaccess-asm.h            |   2 +-
> > > > > >  arch/arm/kernel/entry-armv.S                  |   3 +-
> > > > > >  arch/arm/kernel/entry-common.S                |   9 +-
> > > > > >  arch/arm/kernel/head-common.S                 |   7 +-
> > > > > >  arch/arm/kernel/setup.c                       |   2 +
> > > > > >  arch/arm/kernel/unwind.c                      |   6 +-
> > > > > >  arch/arm/lib/memcpy.S                         |   3 +
> > > > > >  arch/arm/lib/memmove.S                        |   5 +-
> > > > > >  arch/arm/lib/memset.S                         |   3 +
> > > > > >  arch/arm/mm/Makefile                          |   5 +
> > > > > >  arch/arm/mm/kasan_init.c                      | 292 ++++++++++=
++++++++
> > > > > >  arch/arm/mm/mmu.c                             |  18 ++
> > > > > >  arch/arm/mm/pgd.c                             |  16 +-
> > > > > >  arch/arm/vdso/Makefile                        |   2 +
> > > > > >  26 files changed, 561 insertions(+), 14 deletions(-)
> > > > > >  create mode 100644 arch/arm/include/asm/kasan.h
> > > > > >  create mode 100644 arch/arm/include/asm/kasan_def.h
> > > > > >  create mode 100644 arch/arm/mm/kasan_init.c
> > > > > >
> > > > > > --
> > > > > > 2.26.2
> > > > > >
> > > > >
> > > > > After this series was applied and available in -next, ARCH=3Darm =
LLVM=3D1
> > > > > allyesconfig builds started failing:
> > > > >
> > > > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueab=
i- KCONFIG_ALLCONFIG=3D<(echo CONFIG_CPU_BIG_ENDIAN=3Dn) LLVM=3D1 distclean=
 allyesconfig vmlinux
> > > > > ...
> > > > > ld.lld: error: section: .exit.data is not contiguous with other r=
elro sections
> > > > > ...
> > > > >
> > > > > $ git bisect ld: [3f267ec60b922eff2a5c90d532357a39f155b730] Add l=
inux-next specific files for 20201029
> > > > > # good: [23859ae44402f4d935b9ee548135dd1e65e2cbf4] Merge tag 'tra=
ce-v5.10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linu=
x-trace
> > > > > git bisect start '3f267ec60b922eff2a5c90d532357a39f155b730' '2385=
9ae44402f4d935b9ee548135dd1e65e2cbf4'
> > > > > # bad: [bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7] Merge remote-tr=
acking branch 'mtd/mtd/next' into master
> > > > > git bisect bad bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7
> > > > > # bad: [37a292dcf77532547f335ed5063d9169031c9b08] Merge remote-tr=
acking branch 'sunxi/sunxi/for-next' into master
> > > > > git bisect bad 37a292dcf77532547f335ed5063d9169031c9b08
> > > > > # good: [e6d922c77db276a16f0b7933c2a9951dc9c0052c] Merge remote-t=
racking branch 'drm-misc-fixes/for-linux-next-fixes' into master
> > > > > git bisect good e6d922c77db276a16f0b7933c2a9951dc9c0052c
> > > > > # bad: [cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320] Merge remote-tr=
acking branch 'mvebu/for-next' into master
> > > > > git bisect bad cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320
> > > > > # bad: [d0e12484e7e1ede73c538744cdbe9439f7335d01] Merge remote-tr=
acking branch 'arm-soc/for-next' into master
> > > > > git bisect bad d0e12484e7e1ede73c538744cdbe9439f7335d01
> > > > > # good: [24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6] Merge branch '=
asm-generic-cleanup' into asm-generic
> > > > > git bisect good 24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6
> > > > > # good: [3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52] Merge remote-t=
racking branch 'kbuild/for-next' into master
> > > > > git bisect good 3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52
> > > > > # bad: [20f96e606509ee5084690179afe1810b95617a92] Merge branches =
'fixes' and 'misc' into for-next
> > > > > git bisect bad 20f96e606509ee5084690179afe1810b95617a92
> > > > > # good: [d6d51a96c7d63b7450860a3037f2d62388286a52] ARM: 9014/2: R=
eplace string mem* functions for KASan
> > > > > git bisect good d6d51a96c7d63b7450860a3037f2d62388286a52
> > > > > # good: [5615f69bc2097452ecc954f5264d784e158d6801] ARM: 9016/2: I=
nitialize the mapping of KASan shadow memory
> > > > > git bisect good 5615f69bc2097452ecc954f5264d784e158d6801
> > > > > # bad: [fc2933c133744305236793025b00c2f7d258b687] ARM: 9020/1: mm=
: use correct section size macro to describe the FDT virtual address
> > > > > git bisect bad fc2933c133744305236793025b00c2f7d258b687
> > > > > # bad: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017/2: En=
able KASan for ARM
> > > > > git bisect bad 421015713b306e47af95d4d61cdfbd96d462e4cb
> > > > > # first bad commit: [421015713b306e47af95d4d61cdfbd96d462e4cb] AR=
M: 9017/2: Enable KASan for ARMog
> > > > >
> > > > > An allyesconfig kernel compiled with clang does not link properly=
 with
> > > > > ld.bfd without a workaround [1], which I do not have time to appl=
y and
> > > > > test now but can later if it is relevant. I have not done any tri=
age on
> > > > > this yet either but I wanted to get the report out in case there =
is
> > > > > anything obvious.
> > > > >
> > > > > [1]: https://github.com/ClangBuiltLinux/linux/issues/325
> > > >
> > > > relro? smells like:
> > > > https://lore.kernel.org/lkml/20201016175339.2429280-1-ndesaulniers@=
google.com/T/#u
> > > >
> > >
> > > Huh, did not even realize that the error messages were the same, my b=
ad!
> > >
> > > This issue is simple enough to produce by just adding CONFIG_KASAN=3D=
y to
> > > multi_v7_defconfig. I tried adding '-z norelro' to LDFLAGS_vmlinux in
> > > arch/arm/Makefile and it fixes the build error but the resulting kern=
el
> > > does not boot in QEMU.
> > >
> > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- L=
LVM=3D1 distclean defconfig
> > >
> > > $ scripts/config -e KASAN
> > >
> > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- L=
LVM=3D1 olddefconfig zImage
> > >
> > > $ ~/cbl/github/boot-utils/boot-qemu.sh -a arm32_v7 -k .
> > > /home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio.zst: 317644=
8 bytes
> > > + timeout --foreground 3m unbuffer qemu-system-arm -machine virt -no-=
reboot -append 'console=3DttyAMA0 ' -display none -initrd /home/nathan/cbl/=
github/boot-utils/images/arm/rootfs.cpio -kernel /home/nathan/src/linux-nex=
t/arch/arm/boot/zImage -m 512m -nodefaults -serial mon:stdio
> > > + RET=3D124
> > > + set +x
> > >
> > > '-z norelro' boots fine without KASAN so I assume there is something =
up
> > > specifically with KASAN and LLVM for ARM.
> > >
> >
> > How long did you wait for it to boot? Booting a KASAN kernel under
> > QEMU emulation is going to be *very* slow.
>
> The timeout command above is 3m and there was no output from the kernel
> in that amount of time. What kind of time should I be reasonably
> expecting?
>

3 minutes is probably long enough.

Do you see any output with 'earlycon=3Dpl011,0x9000000' added to the
kernel command line?

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z%3DGy_LoKp-m0G8A%40m=
ail.gmail.com.
