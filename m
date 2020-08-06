Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB4X7WH4QKGQEWQOGDYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1D723E3D5
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 00:11:00 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id x16sf11639007ooc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 15:11:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596751859; cv=pass;
        d=google.com; s=arc-20160816;
        b=y/0ulBuzzKPLX15IpzM5qp1bV8kKDRMkk9usL+0D6twOgAknWO86eKD1Q/0RD1d/Ik
         RVkZ9mqJY/LSrM/GHUGMWTRE3pFvs5joqpXqPwa1lahi4rerctQiA/VXdHHTL/JyOPfK
         P0CduqR++Z0/uwn5xTlwlWQBvFzR/9m0F3uGVxksNOlOef5aP74MnmGe8VRIoaqBdNUA
         j8q/5tY7TZkKZzYe+Sl5c4Mr+sl14WzEsBJhfyMrfPVrPKnWrke/v49OflIq4ZF4w8DO
         3sKgnUr4yCOiZZhrOj948oz2SwWD91/Suv02pccyN6FPI9XMyf7BQYQsnj3PtMliJBXz
         bXaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=//zRylKovekAiyLzhk/x45Ifnwh4KtACX0l2xvykz6c=;
        b=ChT0wQM/m+xC58ptckJLFt3BWjSnU3x1ZIm55NSQ0KxZNcQfoTRSJMZyh4RrUTjOh/
         FJR+dpSp9t+5g5WWl1RMJ6FvJvcd/G9c2LSewI6icwWy2kvD/ZSmk3SLU9DrM3Fjkijr
         VonQno+C0iB2WVlEIcaOBQ+kp5RYNRMw/WjquzUnOUharPLfjXay0bWMp/fo4pnQSnSd
         M5j7gcStJFgjUIb+hfEpz2sMuAqC7PcFjtQIri7cu8nGJbgiqh70Bu7jCxbUyQRz8NSr
         tDRZSxHX19MP/V27SW++/iGfr956jaBZPVRJNRopJiPaKij4ZDjVqdXvuAtvnGbLpB7N
         fRDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="F/y/MGcH";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=//zRylKovekAiyLzhk/x45Ifnwh4KtACX0l2xvykz6c=;
        b=LKOf5/Dd9JQ+uihut3mtqKYIgTavzHPCBb0IgYOlmp38PAOEgqm0blsL5/H89CvEN3
         iKkbl8FStBHwtBwriDxuA6t+U/dDZMBBqUAarYTghF+e7ZZ22Q7YjDEEjO9YwhrriFMe
         li+bIVv1EcWDXqH/Ie088kbVgEmweydNCyUNeSU/9uChdVFtiE6GsyoNBOQhiDvELJaT
         VUx/vFf2TGJg7FvkRr5fZwIcc0T4VKCnl4NdjXXJ2qMQ30T/kccgolrnJ+D077zpVdBs
         6nQsz0kWroXvVOo1MNXT05xKogb+eCVMStRczir/YOQnvuNj6OIHZrDxogqWDgWU2nb4
         vamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//zRylKovekAiyLzhk/x45Ifnwh4KtACX0l2xvykz6c=;
        b=hAOvEkEjE3yuu75hoRFVu/hYUvY+eQDfP43+Q9BIJaMLYx49ZvSaKDweQPSoZamuWP
         JkFA2Wm8TCZkyD+ZDnAbIJGQibf1yB0IRNMpos3/QJAncFIEbB6gGOuNoy2IAeVqEAea
         Ey8ZCddlzshyy8t/U4NCw6UcBYmWr4zFxuMUBgVvb4B6Rhhzv5iDsk2lVMR3OWVrnGGe
         qaDTidJ2aZFWW6uWbRDVFe1n1dZfoU6wslcmQVKu89Hn9QJX/eRMMHmIIqSv0JD9cG/Z
         QNBR4ssf9S3JrY8WPMVeeel6F2g6wtF6jCVKqKdisE6tQkAZVufLbSdCsf+55vZLZZr+
         lGvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301BHwOsvxuCVmYjnQk6DkpP8cTfFd98DVmD+MvYDXZaG8E8SHL
	16/Mj2qrlwRkiBf2y+OUpZg=
X-Google-Smtp-Source: ABdhPJz3y1/H49FTgaP8q8+u8SdbJDpcC7ZRRFm8d45vpqXg3QCxPofOMOVxqMQgrq/pnKA/bOiAVg==
X-Received: by 2002:a05:6808:248:: with SMTP id m8mr8621765oie.125.1596751858906;
        Thu, 06 Aug 2020 15:10:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1c78:: with SMTP id s24ls1712889otg.9.gmail; Thu,
 06 Aug 2020 15:10:58 -0700 (PDT)
X-Received: by 2002:a05:6830:13d1:: with SMTP id e17mr9566731otq.292.1596751858484;
        Thu, 06 Aug 2020 15:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596751858; cv=none;
        d=google.com; s=arc-20160816;
        b=iITZnAXZLvuNSBqvSOcQVxER/9tPyuRTnRqnplHyUUlHucR6myY9EHjdWyhT6Y6QGm
         taXJloSVg0rU5qsmHjAP3Ux7p84gNTQv0kU5vA2H22s1s5kz3KQPq8HigWw7xgjCa/Dw
         DAHSusW7Pi+Wh70KxskYTpID3dWOUZG/7cLOBTZLRHV+JDnUCYIpx886X0pu32wPozzE
         yZp3sf5BBEa4rIoi+9QgUPGzeI/a6D8IQFXT8nclqDHxwR0o09VBUwW7qqTvP35ztJ84
         SmGlbrqAF52SPTaNkpk1peLpNJPPiKpiMQrpm58xm2uC36ZWRHIpZod2gX8qcG025tBL
         qJKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=GixLM4g/7oVPKB6aJETz+X61jnZ+y7CfPLscIRzlpvM=;
        b=TVFOW1J/wzkJQyaAZ3RBsUzla66E+64g5gywx/rAXRRbBulI95WbhCpqaUxXax1Fly
         bBVCKDgkSz48jOB0cS+zlKOh1zzPaREviMsKgEAQauf3FDLHVOZL00szxtiPpuhLcOEd
         fTX3kk+mP1QqvS7nz+cVOEKc+KFUPlnnurD4LpYRJ8c52zoBMTD2pMM/VPd0tsXp1Gq4
         /xsFSxtYJshH1GUOh8RNj+//8yLLpbuFBsNftRguB6Ifb2GsdaDOOPml5UeCnSZpba8z
         fyr6cOezYzrPDmeHhhYDBkS/lu9IGetpDlgrN9jcPiZn4WLteLK/i8GR3L2Qd1ibcinw
         xzZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="F/y/MGcH";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id r64si397701oor.2.2020.08.06.15.10.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Aug 2020 15:10:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 076MAdGx022140
	for <clang-built-linux@googlegroups.com>; Fri, 7 Aug 2020 07:10:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 076MAdGx022140
X-Nifty-SrcIP: [209.85.217.49]
Received: by mail-vs1-f49.google.com with SMTP id n4so4451918vsl.10
        for <clang-built-linux@googlegroups.com>; Thu, 06 Aug 2020 15:10:40 -0700 (PDT)
X-Received: by 2002:a67:7905:: with SMTP id u5mr8405015vsc.179.1596751838971;
 Thu, 06 Aug 2020 15:10:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
 <20200728004736.3590053-1-nhuck@google.com> <CAK7LNAT-AO9_Y-qunRvPbBYf7GZnoE6bxYKFNtcdKAKV8d_A+w@mail.gmail.com>
 <CAJkfWY5ywOtO6fAyPd0B2BjEWamJRRMgg4et0uVq2bpkJSECwA@mail.gmail.com>
In-Reply-To: <CAJkfWY5ywOtO6fAyPd0B2BjEWamJRRMgg4et0uVq2bpkJSECwA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 7 Aug 2020 07:10:02 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQVdhMraYejrTsGZSLFJDk4CVf6ke-bsQ7kaDUM2Lf4SA@mail.gmail.com>
Message-ID: <CAK7LNAQVdhMraYejrTsGZSLFJDk4CVf6ke-bsQ7kaDUM2Lf4SA@mail.gmail.com>
Subject: Re: [PATCH v7] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nathan Huckleberry <nhuck@google.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Pirama Arumuga Nainar <pirama@google.com>,
        Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="F/y/MGcH";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Aug 7, 2020 at 6:42 AM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Thu, Aug 6, 2020 at 3:44 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Tue, Jul 28, 2020 at 9:47 AM Nathan Huckleberry <nhuck@google.com> wrote:
> > >
> > > This patch adds clang-tidy and the clang static-analyzer as make
> > > targets. The goal of this patch is to make static analysis tools
> > > usable and extendable by any developer or researcher who is familiar
> > > with basic c++.
> > >
> > > The current static analysis tools require intimate knowledge of the
> > > internal workings of the static analysis. Clang-tidy and the clang
> > > static analyzers expose an easy to use api and allow users unfamiliar
> > > with clang to write new checks with relative ease.
> > >
> > > ===Clang-tidy===
> > >
> > > Clang-tidy is an easily extendable 'linter' that runs on the AST.
> > > Clang-tidy checks are easy to write and understand. A check consists of
> > > two parts, a matcher and a checker. The matcher is created using a
> > > domain specific language that acts on the AST
> > > (https://clang.llvm.org/docs/LibASTMatchersReference.html).  When AST
> > > nodes are found by the matcher a callback is made to the checker. The
> > > checker can then execute additional checks and issue warnings.
> > >
> > > Here is an example clang-tidy check to report functions that have calls
> > > to local_irq_disable without calls to local_irq_enable and vice-versa.
> > > Functions flagged with __attribute((annotation("ignore_irq_balancing")))
> > > are ignored for analysis. (https://reviews.llvm.org/D65828)
> > >
> > > ===Clang static analyzer===
> > >
> > > The clang static analyzer is a more powerful static analysis tool that
> > > uses symbolic execution to find bugs. Currently there is a check that
> > > looks for potential security bugs from invalid uses of kmalloc and
> > > kfree. There are several more general purpose checks that are useful for
> > > the kernel.
> > >
> > > The clang static analyzer is well documented and designed to be
> > > extensible.
> > > (https://clang-analyzer.llvm.org/checker_dev_manual.html)
> > > (https://github.com/haoNoQ/clang-analyzer-guide/releases/download/v0.1/clang-analyzer-guide-v0.1.pdf)
> > >
> > > The main draw of the clang tools is how accessible they are. The clang
> > > documentation is very nice and these tools are built specifically to be
> > > easily extendable by any developer. They provide an accessible method of
> > > bug-finding and research to people who are not overly familiar with the
> > > kernel codebase.
> > >
> > > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > > ---
> > > Changes v6->v7
> > > * Fix issues with relative paths
> > > * Additional style fixes
> > >  MAINTAINERS                                   |  1 +
> > >  Makefile                                      |  3 +
> > >  scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
> > >  .../{ => clang-tools}/gen_compile_commands.py |  0
> > >  scripts/clang-tools/run-clang-tools.py        | 74 +++++++++++++++++++
> > >  5 files changed, 101 insertions(+)
> > >  create mode 100644 scripts/clang-tools/Makefile.clang-tools
> > >  rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
> > >  create mode 100755 scripts/clang-tools/run-clang-tools.py
> > >
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 1d4aa7f942de..a444564e5572 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -4198,6 +4198,7 @@ W:        https://clangbuiltlinux.github.io/
> > >  B:     https://github.com/ClangBuiltLinux/linux/issues
> > >  C:     irc://chat.freenode.net/clangbuiltlinux
> > >  F:     Documentation/kbuild/llvm.rst
> > > +F:     scripts/clang-tools/
> > >  K:     \b(?i:clang|llvm)\b
> > >
> > >  CLEANCACHE API
> > > diff --git a/Makefile b/Makefile
> > > index fe0164a654c7..3e2df010b342 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -747,6 +747,7 @@ KBUILD_CFLAGS       += $(call cc-option,-fno-allow-store-data-races)
> > >
> > >  include scripts/Makefile.kcov
> > >  include scripts/Makefile.gcc-plugins
> > > +include scripts/clang-tools/Makefile.clang-tools
> > >
> > >  ifdef CONFIG_READABLE_ASM
> > >  # Disable optimizations that make assembler listings hard to read.
> > > @@ -1543,6 +1544,8 @@ help:
> > >         @echo  '  export_report   - List the usages of all exported symbols'
> > >         @echo  '  headerdep       - Detect inclusion cycles in headers'
> > >         @echo  '  coccicheck      - Check with Coccinelle'
> > > +       @echo  '  clang-analyzer  - Check with clang static analyzer'
> > > +       @echo  '  clang-tidy      - Check with clang-tidy'
> > >         @echo  ''
> > >         @echo  'Tools:'
> > >         @echo  '  nsdeps          - Generate missing symbol namespace dependencies'
> > > diff --git a/scripts/clang-tools/Makefile.clang-tools b/scripts/clang-tools/Makefile.clang-tools
> > > new file mode 100644
> > > index 000000000000..5c9d76f77595
> > > --- /dev/null
> > > +++ b/scripts/clang-tools/Makefile.clang-tools
> > > @@ -0,0 +1,23 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +#
> > > +# Copyright (C) Google LLC, 2020
> > > +#
> > > +# Author: Nathan Huckleberry <nhuck@google.com>
> > > +#
> > > +PHONY += clang-tidy
> > > +clang-tidy:
> > > +ifdef CONFIG_CC_IS_CLANG
> > > +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> > > +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-tidy compile_commands.json
> > > +else
> > > +       $(error clang-tidy requires CC=clang)
> > > +endif
> > > +
> > > +PHONY += clang-analyzer
> > > +clang-analyzer:
> > > +ifdef CONFIG_CC_IS_CLANG
> > > +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> > > +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-analyzer compile_commands.json
> > > +else
> > > +       $(error clang-analyzer requires CC=clang)
> > > +endif
> >
> >
> >
> > You can unify the almost same two rules.
> >
> > PHONY += clang-tidy clang-analyzer
> > clang-tidy clang-analyzer:
> > ifdef CONFIG_CC_IS_CLANG
> >         $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> >         $(PYTHON3) scripts/clang-tools/run-clang-tools.py $@
> > compile_commands.json
> > else
> >         $(error $@ requires CC=clang)
> > endif
> >
>
> I like this.
>
> >
> >
> >
> > But, before we proceed, please tell me
> > what this check is intended for.
> >
>
> Clang-tidy invokes clang using the command line
> options specified in the compile_commands.json file.
> Using gcc command line options causes a bunch of
> errors for unknown options.
>
> >
> >
> >
> >
> > Case 1)
> > Build the kernel with CC=clang,
> > and then run clang-tidy without CC=clang.
> >
> > $ make CC=clang defconfig
> > $ make CC=clang -j$(nproc)
> > $ make clang-tidy
> >
> > scripts/clang-tools/Makefile.clang-tools:13: *** clang-tidy requires
> > CC=clang.  Stop.
> >
>
> I suppose this case could allow clang-tidy to
> be run.
>
> >
> >
> >
> > Case 2)
> > Build the kernel using GCC,
> > and then run clang-tidy with CC=clang.
> >
> > $ make defconfig
> > $ make -j$(nproc)
> > $ make CC=clang clang-tidy
> >
> > This patch happily runs clang-tidy
> > although compile_commands.json
> > contains GCC commands.
> >
>
> This is the worst of the two cases. I'm not
> sure how to prevent this other than parsing the
> compiler invocation in run-clang-tools.py.
>
> I'm open to better suggestions.
>
> >
> >
> >
> >
> > So, it checks if you have passed CC=clang
> > to "make clang-tidy", where I do not see
> > any user of the $(CC) variable.
> >
> > It does not care whether you have built
> > the kernel with GCC or Clang.
> >
> >
> >
> > What happens if you run clang-tidy against
> > compile_commands.json that contains GCC
> > commands?
>
> Clang-tidy itself uses the command line options from
> compile_commands.json to invoke clang. If you run
> clang-tidy against GCC commands you get lots of
> errors similar to this
>
> Found compiler error(s).
> 12 warnings and 8 errors generated.
> Error while processing /usr/local/google/home/nhuck/linux/arch/x86/lib/iomem.c.
> error: unknown argument: '-fconserve-stack' [clang-diagnostic-error]
> error: unknown argument: '-fno-var-tracking-assignments'
> [clang-diagnostic-error]
> error: unknown argument: '-mindirect-branch-register' [clang-diagnostic-error]
> error: unknown argument: '-mindirect-branch=thunk-extern'
> [clang-diagnostic-error]
> error: unknown argument: '-mno-fp-ret-in-387' [clang-diagnostic-error]
> error: unknown argument: '-mpreferred-stack-boundary=3' [clang-diagnostic-error]
> error: unknown argument: '-mskip-rax-setup' [clang-diagnostic-error]
>
> >
> >
> > I also care about stale commands
> > in compile_commands.json.
> >
>
> I agree with this point, but it's more of a bug with
> gen_compile_commands.py. Maybe gen_compile_commands.py
> could emit a warning when stale commands are detected in the
> .*.cmd files.


Nathan, thanks for your comments.

I can improve this
so compile_commands.json contains
only commands from the last build.

Working on a patch.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQVdhMraYejrTsGZSLFJDk4CVf6ke-bsQ7kaDUM2Lf4SA%40mail.gmail.com.
