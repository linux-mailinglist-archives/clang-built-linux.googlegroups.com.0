Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL625X6AKGQEKIAL63Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FE829FAA1
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 02:32:33 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id q16sf3559957pfj.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 18:32:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604021552; cv=pass;
        d=google.com; s=arc-20160816;
        b=U3N4wrd0Qci1+/egYBmtm5EQAa/YoIcbVs/ce/7DXUP1w0BxUIuNysKTgFYLoayh4/
         snSH+jBxITqDLiZdp7oSd7vRDmgK0+5sWCbE/1xCUvAnnnW21pQ5AD0hLC4bfSRzaWzA
         U/p117gje/TH4HUEigFEJmeQDxwP6QVLr1e8RI1YVDOucdB/gW3OJ9se9QZfyzKLBCDW
         nHv/WJnFWgJ/76BgN4u1rY1eiizkvTZMJyMRHaXW6iUJka30IuOUpVgUW9ajFLdlWcC1
         zCFxWAmT+G7QV2SuUDdi4GwE83sZtd0Xx7TgP5hKlHkFsM0vKjZabRwCyi3RToFnVNNo
         GPVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature:dkim-signature;
        bh=nlhgX+u9VAxQ8ih8vrutEZGMXjMwfJOqQsLsA/36Q4Y=;
        b=CQyynZ3eKIG7BlKpqB++OMdyrK7l7WmpBiesxOMvgQGJhx79+bC5gxfIUbxhQ7EztJ
         gBnhE/GFQJhIWKwACop7HO/fBOYL0YkH5EptwKuWtY367nZwHG2TBEVVQqeWGghXVqZD
         X4pgVGWfe54ejivgf5xBT3CZwWLOz/HtBWD66zsc3EhHtEmwud77x5NjOXMHNK8aR73R
         NWcCZCSsDcV/vFfHaaHGN2B6WWJi9CaVHPGt4pRsV0g2nmLaaySg+KzxHQ2nm/jl8kLc
         YrXPVow3VXHbDx+dJ5PBsVi1F0+pqBWufWi8Lte632Q+wfXvBYvPsgqgTYnuYrzhFekN
         XisQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q7YVUywv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nlhgX+u9VAxQ8ih8vrutEZGMXjMwfJOqQsLsA/36Q4Y=;
        b=QTQEDtAbMKfLpnsy4tWcvSn7aHhIHhvf8365H+5QmY8q1f/a6oOiuZj+9UyzhvwiyS
         cZV4PkPk2TZcwwx03IoLlo9k0YMwvcNWftIN8aB5bN15CBLsz81jpK9N/JkFtChGL8Px
         ZtrlFlrHfGee7Liw/zP0JGWlLY67S69ZsjpauPk6wZQz0jIkf+H7eOMt0ikT/fKir7OO
         5Vg9GVi+boghqoTU8VOBoUhH+3G3zr20et7XM1TTBVz22MmxgvQH2wyI9baAMujoOxfa
         CaDLWwFLGyxcM+KZqHfXyDQzLab3NRKZiBg/iu0rbqM8GYTi/JOK34Iue3z9wC83Qhuw
         OKeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nlhgX+u9VAxQ8ih8vrutEZGMXjMwfJOqQsLsA/36Q4Y=;
        b=Dfu56qc0QKM8YRMERkaA7QrZChpudFfQUBWhaDVxZ+2gdZI6Ii1Yun68PdzpF1cUvS
         I/OnNvB2rT89oafgukN93JOyJ4Zpbf+Sm+HIaYaSLAOG2Ogkyx7W+Y8ts7s5nL48Jn6W
         2KHv7rCCU0oPt2VxoZ8YcOHVJe3K2fB5cmtQKh5DkVBy/aGomaE38+rK8RpVKcehGpyU
         iHmjXPpa5kyNkEIYgWEI4C4FJbZ9Ps7n3VdZmi1zk2aSL8dVBg8vyk2yhhXAM2kYQ+WQ
         sB8/4yKPEagnXWLiHtdCXXlgfyvlsOG1j5F8g9jtCja+TFk8QqwjKsnYaCTx56aFNwQO
         OZ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nlhgX+u9VAxQ8ih8vrutEZGMXjMwfJOqQsLsA/36Q4Y=;
        b=YVpHEL7bJIOfg9qSTRAGY+xPpC+NCyIF3TTLwy1stN5710HR4lTlwg5zbJneNZexyT
         k/dT49wzJz8sCh/xJ5h79vm6phN7a8tIdmYNNz+AivNC1x3+EXecb2XNPsJwYraiq70o
         HXu6T+fB5pM5fN9/ea4DosGEq5CMtYDT42i6UXRQmG51uuF9aHHSETo2pY7EB7Tbp4l7
         kSg8KvZXEwDCo/E5I577AdQS9EzNKzTyEAePQAn58nZ+DSg1fmPd7jKjN0tFccI+jTKG
         10cIh2wM9El8fHEL4ycSMJhbyjQLfxxoHLSRp+IDaHQpKFErEXf3mRZ1K59EHld8zdnH
         r3hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KcInyL58XN2AAOUE2hte3XVUUlIDEvBsqyhGfyeYtlZyH7+i+
	i+ixEJ0BW28ksIf7M36uJqc=
X-Google-Smtp-Source: ABdhPJwef0KHVmoazK1+kFp+6eABNZXBdxb8BVHUdUrtRZlZ5q2VZDv9xOOSPUK4uzO9U2Eunc2Vtg==
X-Received: by 2002:a17:902:7249:b029:d6:4d:7d82 with SMTP id c9-20020a1709027249b02900d6004d7d82mr6888933pll.74.1604021551908;
        Thu, 29 Oct 2020 18:32:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:123:: with SMTP id 32ls2073399plb.1.gmail; Thu, 29
 Oct 2020 18:32:31 -0700 (PDT)
X-Received: by 2002:a17:902:bd8e:b029:d4:c98b:c315 with SMTP id q14-20020a170902bd8eb02900d4c98bc315mr6936411pls.69.1604021551324;
        Thu, 29 Oct 2020 18:32:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604021551; cv=none;
        d=google.com; s=arc-20160816;
        b=S3xOddZgzoSwQaWv7BI2muI9rvRx/GI/r9zCDd0/bA/TnVDHo4+lxf25h8UP+Qy1Uy
         8jO47QWVmCzBh+6I1P9YeZNeaql2ivkqbXRqqZHqjo8WUrpKkCwfvN7qg+RDotB5x5c7
         YBUb1LpEaW019zMP8FtCrKvlKRpOR2rB6d2gOiRVF5kvF8pYjVVuYSpNLDRjn7EzySM6
         v8n0TRtOa6UIh7ToeC7cRAPM2PE6t7JzrEZvhfHzGzm4YTu0LFL1vVbXXVBIGBfPYZ0k
         xVC34FWcBQHzKr7bqAmNUIifj2qQAEzCLoIzMf+iKWPBJUOVP1BggYHO53a9cP/qBh4y
         OGqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SKn3njU4bPvKkYLygxpCgawvVfvtVn5t194pKZDbdAE=;
        b=GJsmrffwRbJsN4qNZ0aOGmBVhfMFdc8wV32JUQwu7BOojLuMlK4SoAuUtiLZL3Im94
         HxsJqVjIZxAH64Ugt7zSx/7sTtOlh3NQFH0ePanTRVsbmejsRn4rk47wpJsf3tAvgYv0
         909we5UfWssIawbmq+DiTqDXCScMlEswQiJCqFI8z5X/TG1IYSYxSCZq/29JK7/itIP/
         UkgZ7QexrCNCSyDthp81/9eDSr1l0hLGRL3UTdNPu46Mw8DZv5CNCvhWwpP0S2W5AHOL
         jth8vinJwBxSPO9fK5qqoVD4AOCsog0a6qG8hL4IZNbnPzTL+qgGodkMCbDIfn8iUH7C
         NOCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q7YVUywv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id 100si61065pjo.3.2020.10.29.18.32.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 18:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id y17so5150718ilg.4
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 18:32:31 -0700 (PDT)
X-Received: by 2002:a92:d1c9:: with SMTP id u9mr183432ilg.278.1604021550661;
        Thu, 29 Oct 2020 18:32:30 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id i87sm4565750ill.25.2020.10.29.18.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 18:32:30 -0700 (PDT)
Date: Thu, 29 Oct 2020 18:32:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Abbott Liu <liuwenliang@huawei.com>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
Message-ID: <20201030013228.GA2519055@ubuntu-m3-large-x86>
References: <20201019084140.4532-1-linus.walleij@linaro.org>
 <20201030002900.GA2248731@ubuntu-m3-large-x86>
 <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q7YVUywv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Thu, Oct 29, 2020 at 05:38:22PM -0700, Nick Desaulniers wrote:
> On Thu, Oct 29, 2020 at 5:29 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Mon, Oct 19, 2020 at 10:41:35AM +0200, Linus Walleij wrote:
> > > This is the 16th and final (knock on wood) version of
> > > KASan for ARM32.
> > >
> > > Changes since v15:
> > >
> > > - Things now work on all boards we have tested on including
> > >   Broadcom and i.MX6Q.
> > >
> > > - Folded in a fix from Ard to PAGE_ALIGN() the end of
> > >   mappings making everything work on all Broadcom board.
> > >
> > > - Folded in a fix from Ahmad Fatoum making things work
> > >   with fortify on i.MX6Q.
> > >
> > > - Testing and testing and testing on build servers.
> > >
> > > - We are good to go.
> > >
> > > I will now put this in Russell's patch tracker for v5.11.
> > >
> > > There is a git branch you can pull in:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrat=
or.git/log/?h=3Dkasan
> > >
> > > This branch includes Ard's two patches already in Russell's
> > > patch tracker.
> > >
> > >
> > > Abbott Liu (1):
> > >   ARM: Define the virtual space of KASan's shadow region
> > >
> > > Andrey Ryabinin (3):
> > >   ARM: Disable KASan instrumentation for some code
> > >   ARM: Replace string mem* functions for KASan
> > >   ARM: Enable KASan for ARM
> > >
> > > Linus Walleij (1):
> > >   ARM: Initialize the mapping of KASan shadow memory
> > >
> > >  Documentation/arm/memory.rst                  |   5 +
> > >  Documentation/dev-tools/kasan.rst             |   4 +-
> > >  .../features/debug/KASAN/arch-support.txt     |   2 +-
> > >  arch/arm/Kconfig                              |  10 +
> > >  arch/arm/boot/compressed/Makefile             |   1 +
> > >  arch/arm/boot/compressed/string.c             |  19 ++
> > >  arch/arm/include/asm/kasan.h                  |  33 ++
> > >  arch/arm/include/asm/kasan_def.h              |  81 +++++
> > >  arch/arm/include/asm/memory.h                 |   5 +
> > >  arch/arm/include/asm/pgalloc.h                |   8 +-
> > >  arch/arm/include/asm/string.h                 |  26 ++
> > >  arch/arm/include/asm/thread_info.h            |   8 +
> > >  arch/arm/include/asm/uaccess-asm.h            |   2 +-
> > >  arch/arm/kernel/entry-armv.S                  |   3 +-
> > >  arch/arm/kernel/entry-common.S                |   9 +-
> > >  arch/arm/kernel/head-common.S                 |   7 +-
> > >  arch/arm/kernel/setup.c                       |   2 +
> > >  arch/arm/kernel/unwind.c                      |   6 +-
> > >  arch/arm/lib/memcpy.S                         |   3 +
> > >  arch/arm/lib/memmove.S                        |   5 +-
> > >  arch/arm/lib/memset.S                         |   3 +
> > >  arch/arm/mm/Makefile                          |   5 +
> > >  arch/arm/mm/kasan_init.c                      | 292 ++++++++++++++++=
++
> > >  arch/arm/mm/mmu.c                             |  18 ++
> > >  arch/arm/mm/pgd.c                             |  16 +-
> > >  arch/arm/vdso/Makefile                        |   2 +
> > >  26 files changed, 561 insertions(+), 14 deletions(-)
> > >  create mode 100644 arch/arm/include/asm/kasan.h
> > >  create mode 100644 arch/arm/include/asm/kasan_def.h
> > >  create mode 100644 arch/arm/mm/kasan_init.c
> > >
> > > --
> > > 2.26.2
> > >
> >
> > After this series was applied and available in -next, ARCH=3Darm LLVM=
=3D1
> > allyesconfig builds started failing:
> >
> > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- KCO=
NFIG_ALLCONFIG=3D<(echo CONFIG_CPU_BIG_ENDIAN=3Dn) LLVM=3D1 distclean allye=
sconfig vmlinux
> > ...
> > ld.lld: error: section: .exit.data is not contiguous with other relro s=
ections
> > ...
> >
> > $ git bisect ld: [3f267ec60b922eff2a5c90d532357a39f155b730] Add linux-n=
ext specific files for 20201029
> > # good: [23859ae44402f4d935b9ee548135dd1e65e2cbf4] Merge tag 'trace-v5.=
10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trac=
e
> > git bisect start '3f267ec60b922eff2a5c90d532357a39f155b730' '23859ae444=
02f4d935b9ee548135dd1e65e2cbf4'
> > # bad: [bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7] Merge remote-tracking=
 branch 'mtd/mtd/next' into master
> > git bisect bad bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7
> > # bad: [37a292dcf77532547f335ed5063d9169031c9b08] Merge remote-tracking=
 branch 'sunxi/sunxi/for-next' into master
> > git bisect bad 37a292dcf77532547f335ed5063d9169031c9b08
> > # good: [e6d922c77db276a16f0b7933c2a9951dc9c0052c] Merge remote-trackin=
g branch 'drm-misc-fixes/for-linux-next-fixes' into master
> > git bisect good e6d922c77db276a16f0b7933c2a9951dc9c0052c
> > # bad: [cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320] Merge remote-tracking=
 branch 'mvebu/for-next' into master
> > git bisect bad cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320
> > # bad: [d0e12484e7e1ede73c538744cdbe9439f7335d01] Merge remote-tracking=
 branch 'arm-soc/for-next' into master
> > git bisect bad d0e12484e7e1ede73c538744cdbe9439f7335d01
> > # good: [24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6] Merge branch 'asm-ge=
neric-cleanup' into asm-generic
> > git bisect good 24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6
> > # good: [3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52] Merge remote-trackin=
g branch 'kbuild/for-next' into master
> > git bisect good 3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52
> > # bad: [20f96e606509ee5084690179afe1810b95617a92] Merge branches 'fixes=
' and 'misc' into for-next
> > git bisect bad 20f96e606509ee5084690179afe1810b95617a92
> > # good: [d6d51a96c7d63b7450860a3037f2d62388286a52] ARM: 9014/2: Replace=
 string mem* functions for KASan
> > git bisect good d6d51a96c7d63b7450860a3037f2d62388286a52
> > # good: [5615f69bc2097452ecc954f5264d784e158d6801] ARM: 9016/2: Initial=
ize the mapping of KASan shadow memory
> > git bisect good 5615f69bc2097452ecc954f5264d784e158d6801
> > # bad: [fc2933c133744305236793025b00c2f7d258b687] ARM: 9020/1: mm: use =
correct section size macro to describe the FDT virtual address
> > git bisect bad fc2933c133744305236793025b00c2f7d258b687
> > # bad: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017/2: Enable K=
ASan for ARM
> > git bisect bad 421015713b306e47af95d4d61cdfbd96d462e4cb
> > # first bad commit: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 901=
7/2: Enable KASan for ARMog
> >
> > An allyesconfig kernel compiled with clang does not link properly with
> > ld.bfd without a workaround [1], which I do not have time to apply and
> > test now but can later if it is relevant. I have not done any triage on
> > this yet either but I wanted to get the report out in case there is
> > anything obvious.
> >
> > [1]: https://github.com/ClangBuiltLinux/linux/issues/325
>=20
> relro? smells like:
> https://lore.kernel.org/lkml/20201016175339.2429280-1-ndesaulniers@google=
.com/T/#u
>=20

Huh, did not even realize that the error messages were the same, my bad!

This issue is simple enough to produce by just adding CONFIG_KASAN=3Dy to
multi_v7_defconfig. I tried adding '-z norelro' to LDFLAGS_vmlinux in
arch/arm/Makefile and it fixes the build error but the resulting kernel
does not boot in QEMU.

$ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- LLVM=3D=
1 distclean defconfig

$ scripts/config -e KASAN

$ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- LLVM=3D=
1 olddefconfig zImage

$ ~/cbl/github/boot-utils/boot-qemu.sh -a arm32_v7 -k .
/home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio.zst: 3176448 byte=
s
+ timeout --foreground 3m unbuffer qemu-system-arm -machine virt -no-reboot=
 -append 'console=3DttyAMA0 ' -display none -initrd /home/nathan/cbl/github=
/boot-utils/images/arm/rootfs.cpio -kernel /home/nathan/src/linux-next/arch=
/arm/boot/zImage -m 512m -nodefaults -serial mon:stdio
+ RET=3D124
+ set +x

'-z norelro' boots fine without KASAN so I assume there is something up
specifically with KASAN and LLVM for ARM.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201030013228.GA2519055%40ubuntu-m3-large-x86.
