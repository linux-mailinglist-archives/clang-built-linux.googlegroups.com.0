Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBD73WH4QKGQETVG5E5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7BF23E3C0
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 00:00:51 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id w201sf12913186oiw.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 15:00:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596751248; cv=pass;
        d=google.com; s=arc-20160816;
        b=c+w0DYF071MJZepTEzymIqd7Vznd5/4dKPPDFuSfe46LTOw5b2HJPKxovbBqkBcpnV
         XCuDO+g5RuE1uEURIJeGZ7BxbWeq4FH8BR5Vs6JagdjrEzANqCrFyqYAhjHgQuv94M/o
         ymzrjOt07ZXJ4a/+sxiWc8hb62/q6nYuwxGnMvXEaal/4f/PqrqF4EopvOCfB7snNhry
         fUyZ0bskKUcYNT7X9DRlYQfa77kRO/KgQ+wkN91ETy1Z9+K3s0KgKW1ytcm6grrSdd5N
         LhZRsBukuVjXAKz/xWHiI9FThlhsMu6z33fTuCxymC88MXVHQeFnMx8ueK0yOsAOKFqn
         9rEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=QLfVrJ0ZQD0WnkGmgOuLcaHSi31lSDZxpk2NXE1unL8=;
        b=I/HykeiIRpEMnb8uYjl9hChRsEwvsKgLEzI1Ndox4J0TUCwegZt/qYxwuOtClQ9pTk
         IcEGRzKt14JAj6cU+OS+YQlwXUQEHgzPI/c4VUI5Aiicq/BZxlCAKoSIAQYKpfSbClnO
         8s7X3/eeilQo0U/+heaX6/+fovdoXHZPr0TYUoNOsnSSOQPp8LxYzvwl33PUkrN+8gYg
         2e1dFdONP3uWq+HtNyWBJ4KqIA7t5Q4PXDOZhRUgCrDRSwtEnzIUlbzkNOvfovzHqUrs
         6wCl0kfK3gi4KSVNBtm/8UbDn2xLsxtIw239j4hfXDU+SptZhfV7N/bPxidusI1fw56a
         QWBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xItFWfax;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QLfVrJ0ZQD0WnkGmgOuLcaHSi31lSDZxpk2NXE1unL8=;
        b=JKVAokEia8AodbeF+uB0G344mGeL76K+UbKVBinFfFwD2nq3gQXyafs8VPohCsgAxL
         Wnudp9H/6sPMyxQCdPiPtNiHlYBVEomvgGbKjs254lt2cIUAJMAvmXuHAHWKPXQNiJbk
         /BvCft/udmYS7rX7AOi7PgbCkSODJUF1ekPhi1X9lq5co89cNRaFJIX0S7CNeAc7/tKm
         UigYNNF024SkcJ5ZgcKGGjJDbc0Qj/76LGNcw6yTmGGN3Xt2fgEIeWndITuTB5vMrYoZ
         8NHap9xtZpu4fxdQT/ALqk1rZv+kqd7FhC1gIpJy2/fpDk3Y/v2dNhXdiLIq45tYXOAN
         +A0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QLfVrJ0ZQD0WnkGmgOuLcaHSi31lSDZxpk2NXE1unL8=;
        b=XS658P8ZHBLDaktC/7XZBYpj0qaI5LDRKSPqMcBOknVw4k2eJvOYTiuEOh1KGYWLfd
         0v9UfQgsOWE3lIFtssqX31XmlhaLcTvX4wA646cG0F+cFl5EhKXYLBTumMF/PG+wiOFf
         +E3URMeN70Tk7oO0EXPaZFQCVbtmR4wlicZ4Hj4+tF43zu3jYNHqcpnUDT6myvkU/IfP
         fyJypejm36cuY7q/O5jD6kQUjgHzfBrs7jSfy+YIlF03+lBgdHsF2aLDESbMbRqDdRef
         sT0UMnw0Iy+TB85uIRY3cJwmu+oShy9b4r4Vg9b1axECogF7NclFPWUCEb+l2csYLm7b
         I7uA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533C/kopskRUAdgKMJXMJx7GthzX9YNrRvj7av9hUW2dTCdSzXxQ
	3opz4YZzhQDH1sEoFlXMu6w=
X-Google-Smtp-Source: ABdhPJytmNEJ2PH7yyjMbtTygXZ+TlVcWT7HX1DPVZun5oWmQetmSvoKo8ZjdQucz5bwqg57Kocn3g==
X-Received: by 2002:a05:6830:4b1:: with SMTP id l17mr8978178otd.297.1596751247811;
        Thu, 06 Aug 2020 15:00:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a13:: with SMTP id g19ls1699519otn.6.gmail; Thu, 06 Aug
 2020 15:00:47 -0700 (PDT)
X-Received: by 2002:a9d:6218:: with SMTP id g24mr9898595otj.48.1596751247486;
        Thu, 06 Aug 2020 15:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596751247; cv=none;
        d=google.com; s=arc-20160816;
        b=KyzKbL3dkCm9Ul7hClDmk8dWgp6kWaxO+x5vdEDJFpgy1xQsuAFulqb8RH3dtu7Grr
         oy1nbi7YmppwPoainRWFKCK1zUCP9kryrieD6cQUD1zofSxVU3+4N/bIThdn3w1c7VJh
         KMSqs+/JX4QaT0kLzqPsbMHipew4hRi9lIY7uGWr0iCFpAdhGKkJHmC2ELGDV6f780x3
         R2sLaRmiqr0M0aENd5m/5/MaJKYmQNBJ+vUA5J/e0J5kgXhhR7EaNuyLbPg/cA0QyWFg
         IBotGYhc/MHmv/pyVbBvUdsbo5/viylUr1pwdVqJSsn1boY3QnpxCY7eg1UvHc36udzu
         dv2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Xfs85PHXdOhRcMjUjbm4/NBLl7dcQvPuB0IgyJvQcNY=;
        b=cxR6XYG8vVKruWzb2JkofQcCGqJSgCepBglYuV4yDDz3KFDq3/tj6epLFaD6VPDwVe
         VHahA9G/AOOC7jpbHFTyR8JO1K3L0qdjeL4nu2Kk2eV61siVnMo3HA4D8TcGaTlhbeVW
         WeDf10agKrI1wSfHXwQOBbvnKOo+G3U0xjRqciJxrEEB/LmUN1rtfg1iFsCitFklEI8O
         PDMmsGQeinwxSPkffoIfqZ/VJQV6kkXV7EDFC+RAuT153QcNCJgchLHeYx5tZrMrHGSh
         alMLWUGAfw1ju6VJQBtwhGMlCma0ex0f84fDK0sjyUwbqZAbZy7nLzrbkP3XoZ3kwKhb
         DAXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xItFWfax;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id l16si471112oie.1.2020.08.06.15.00.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Aug 2020 15:00:47 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 076M0T9u006654
	for <clang-built-linux@googlegroups.com>; Fri, 7 Aug 2020 07:00:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 076M0T9u006654
X-Nifty-SrcIP: [209.85.217.43]
Received: by mail-vs1-f43.google.com with SMTP id 1so1320vsl.1
        for <clang-built-linux@googlegroups.com>; Thu, 06 Aug 2020 15:00:29 -0700 (PDT)
X-Received: by 2002:a67:d908:: with SMTP id t8mr8112536vsj.215.1596751228524;
 Thu, 06 Aug 2020 15:00:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200702233929.181409-1-danny@kdrag0n.dev> <20200705024318.GA433@Ryzen-9-3900X.localdomain>
In-Reply-To: <20200705024318.GA433@Ryzen-9-3900X.localdomain>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 7 Aug 2020 06:59:51 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ1VqK=zwMUdWCqh2ZmKbQ7p80QBZ0XB9wJyzKgefwY-Q@mail.gmail.com>
Message-ID: <CAK7LNAQ1VqK=zwMUdWCqh2ZmKbQ7p80QBZ0XB9wJyzKgefwY-Q@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Allow Clang global merging if !MODULES
To: Nathan Chancellor <natechancellor@gmail.com>,
        Danny Lin <danny@kdrag0n.dev>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xItFWfax;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Jul 5, 2020 at 11:43 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Danny,
>
> On Thu, Jul 02, 2020 at 04:39:29PM -0700, Danny Lin wrote:
> > The old reasoning for disabling Clang's global merging optimization is
> > that it breaks modpost by coalescing many symbols into _MergedGlobals.
> > However, modpost is only used in builds with dynamic modules;
> > vmlinux.symvers is still created during standalone builds, but it's
> > effectively just an empty dummy file.

I am not convinced with this statement.

modpost is used even if CONFIG_MODULES=n

You can see the following log for allnoconfig.

  MODPOST vmlinux.symvers


Yes, vmlinux.symver is empty.
This is because EXPORT_SYMBOL is no-op when CONFIG_MODULES=n.



> >
> > Enabling the optimization whenever possible allows us to reap the
> > benefits of reduced register pressure when many global variables are
> > used in the same function.
>
> Have you run into any place within the kernel that this is the case or
> this more of a "could help if this ever happens" type of deal?
>
> > An x86 defconfig kernel built with this optimization boots fine in qemu,
> > and a downstream 4.14 kernel has been used on arm64 for nearly a year
> > without any issues caused by this optimization.
>
> If I am reading LLVM's source correctly, this option only seems relevant
> for ARM and AArch64?
>
> $ rg --no-heading createGlobalMergePass
> llvm/lib/CodeGen/GlobalMerge.cpp:679:Pass *llvm::createGlobalMergePass(const TargetMachine *TM, unsigned Offset,
> llvm/lib/Target/AArch64/AArch64TargetMachine.cpp:524:    addPass(createGlobalMergePass(TM, 4095, OnlyOptimizeForSize,
> llvm/lib/Target/ARM/ARMTargetMachine.cpp:456:    addPass(createGlobalMergePass(TM, 127, OnlyOptimizeForSize,
> llvm/include/llvm/CodeGen/Passes.h:419:  Pass *createGlobalMergePass(const TargetMachine *TM, unsigned MaximalOffset,
>
> Otherwise, I think this is probably okay. According to [1], when the
> optimization level is less than -O3, we get a less aggressive version of
> this optimization level, which is good for code size:
>
> https://github.com/llvm/llvm-project/commit/8207641251706ea808df6d2a1ea8f87b8ee04c6d


I do not understand how -mglobal-merge works.
Do you have test code to generate _MergedGlobals ?


Thanks.





> However, we do potentially get merging of extern globals if we do not
> specify -mglobal-merge (if I am reading the source correctly), which
> this commit claims might hurt performance? Not sure if there is any way
> to test or verify that?
>
> https://github.com/llvm/llvm-project/commit/de73404b8c4332190750537eb93ce0d5b6451300
>
> > Signed-off-by: Danny Lin <danny@kdrag0n.dev>
> > ---
> >  Makefile | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Makefile b/Makefile
> > index a60c98519c37..f04c3639cf61 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -772,10 +772,13 @@ ifdef CONFIG_CC_IS_CLANG
> >  KBUILD_CPPFLAGS += -Qunused-arguments
> >  KBUILD_CFLAGS += -Wno-format-invalid-specifier
> >  KBUILD_CFLAGS += -Wno-gnu
> > +
> > +ifdef CONFIG_MODULES
> >  # CLANG uses a _MergedGlobals as optimization, but this breaks modpost, as the
> >  # source of a reference will be _MergedGlobals and not on of the whitelisted names.
> >  # See modpost pattern 2
> >  KBUILD_CFLAGS += -mno-global-merge
> > +endif
> >  else
> >
> >  # These warnings generated too much noise in a regular build.
> > --
> > 2.27.0
> >
>
> Cheers,
> Nathan



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ1VqK%3DzwMUdWCqh2ZmKbQ7p80QBZ0XB9wJyzKgefwY-Q%40mail.gmail.com.
