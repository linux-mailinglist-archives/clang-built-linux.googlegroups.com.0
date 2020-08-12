Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBQMJZX4QKGQEA6FXYDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D878E2423AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 03:24:18 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id h6sf161054otq.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 18:24:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597195457; cv=pass;
        d=google.com; s=arc-20160816;
        b=YYq6nFm6xYryC0GVZd1VJ1B/OZRCm/ts3mpkRbQOrh3y3F4+QWaZu63kO3hwIPUY4I
         XJNJHoQfaRBQnmhbs1B+MSlGMftsNlR2Hw50BEqAWjTNUI9ZSvz5eg/7yPrCzXW3MLB6
         s7YexQMbgO8o4nUSaSg/nZS7TY986pPD4Cs+MuemMbpTBgpZOdiW2bzlqX1AWTIedkwc
         qs6s+96HtESbtNF8n/sSPIG+UeGPgFRXrPqAqt/YNabatKo8YOPpVtXVxBPJAsgXF9rt
         WcKFwp3dNftctjPWJXLGY7QCElkpR/B62CN/5T1nHnqVU7qo/A2WEAxnhUwFFRRGWxZB
         3xIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QICWqI4C7NmBINqecKidnhoHcANtlEq1pjeH1+lW3BE=;
        b=P5HykFXoxDM6eJVK16kQzWQmNfVoEDCUhOesaVJIkyROvcDSialemZyeJ5pyuYJn8i
         aasI++AdwzgZLHV77wLqKBxMDhlsyvil/xbvzgW4OKwfgSaI4BvN11H2xJuBKKxi+sum
         Zzf5X/WvxVL89LCHvx4Eaf3bcIg7J01n+0JK4S9cgix125jUTvR/NVx3BPZSjJgb51tO
         ncFrxmvqHYD7IcPhVKg1SZ4Ze9uNApuqnalyvmYvguQKWDuGDirJIFWLdnSC88E7blQ4
         ROd759xcYw6z0V1u2SL8spvvIwzasoovS7k38lAXoFAnWM8eHvq0qMwaAtXdZUIknbJQ
         XLCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lZsU7VTC;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QICWqI4C7NmBINqecKidnhoHcANtlEq1pjeH1+lW3BE=;
        b=HQkMUaajO3vTeMaYNvuRhF5KA/SwU9PrI5MGec28ROurfJqvC8jypggQfxJoycI2Dt
         DziI99JxzxS39QgyDk1iCD134dREma4EN88Tak7mCqVinwD2EmlEbGRN2yTu3YW6be/i
         LyIVjFMnTPDJSkoWEmYVPs44F2mBNv2baZ0MF6DyO3aG1WW4GxHAimW7/Ecb7I99D9xv
         WgsmbePy6GnT7gJxzGaQaW8YuZoTcEdIK9TooTlOiOiEp8HXFLIjBkCGmC2iV1kVXZ1q
         K8fvbgib71pxotQ5TzN19eF+bJoSge2a6BlGtQbuGegXbES/X9RmEXhWMtq52pcEa6Sv
         3jMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QICWqI4C7NmBINqecKidnhoHcANtlEq1pjeH1+lW3BE=;
        b=KHhMsHchMF3HW/EqjB8Lq2hO9gkufKV0S/oIoKbLgWrYVeZs/5caIItNuMO/1qfCcI
         4pEnIYzxlrmC8/vxws7uFL2xQ3k7copckkqZr5y0xrDEs2XXkXh1A+lsU9mHU06JX1CW
         +KSgsnTchCedawEO9YyvgM2B+r31WqTUDBuoLbc3nFZZT3+GoHVpOLQ4r98lz6JH4OtW
         p5GhnYE5NqPvwC45MQsZxErLvfOsG0cuMI2tRQUTVLbgNj26LThofgkRvdgpapOGsVQ6
         7eoLROdQeOkGHlEc8/aQK9x8cbs/7XxV9iTOoKKgoGhKdxTVhoYG3acd5S0TN4SzZJkk
         hO4A==
X-Gm-Message-State: AOAM531B3C6ECHd1s6DjqxRBeFXJPf1qd5+fVA1gUvcQbd+/fbihGCzV
	hNouRmjEiy1dKYR0H4owMto=
X-Google-Smtp-Source: ABdhPJzCO05/sZE4EJO0ZvXDCMY2RnxHpmpMtzcjAmSQ9bgr7nk6Wy5yqP7EG0sIOMTUboD5s3YKPw==
X-Received: by 2002:a9d:5914:: with SMTP id t20mr7121692oth.337.1597195457641;
        Tue, 11 Aug 2020 18:24:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a97:: with SMTP id i23ls106103otf.7.gmail; Tue, 11 Aug
 2020 18:24:17 -0700 (PDT)
X-Received: by 2002:a9d:f2a:: with SMTP id 39mr7566180ott.119.1597195457215;
        Tue, 11 Aug 2020 18:24:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597195457; cv=none;
        d=google.com; s=arc-20160816;
        b=0XSvLQhXJOvXo9crb2ye/Vhtjc+lncP5Tip3dLG0fYi1+2xATJYTY/xfl/oMkDanmT
         rMCfjhhaUNLwzcQ/XsCS9MUhW781Ek7riWJF8XyScUzrroHqFSVMSgPT9xG08Sqt0/6J
         HxjOmoEQBO8V54HeRQMJwxcRAc9ofSc/k7FpdQmsQKq8s3FHwRDDfOSIbUR26FnHAzUS
         RRRhCYIl60UGmRDWzYflfjL/XsUigVNFCNd3OFpPo5G9NzGSSOmfPOqs7kwGS8Uq+3av
         pCze2P8QE0NaGNpQ6Ofctw3cicIwJ36oj3C2jqha1WimP0Sj9Kke8xcYZZTGpfbd/uOm
         FD1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ewSouZ9fpSEqZWpAjbpVyaVqXVUq6CVMjFsKBDahtnA=;
        b=nwsLrg4Ru81R6ZoL8o4MOSqmlHLODj1h7xuSE2fRsSNSUC3139nzZHp8FsboaKeeE0
         7z9eEN/2gmk/gMhxcDxM4ZNA73xHOwA36vg7a4WjJ9ro/KQoIvvK6SspcPRq4gJaEEe/
         4nNtJDj2oWHgXLF5olVjvTgIfNLXkPa5ToAiHakKvWD3e/ZzyquFrkOxS0ASMe6wMN98
         Iqg4nFG2haI6XRWSRBvAayeWr4EUUuJdnk/lEfxxwVvC8aLfhEYiGj5KguxnDdsqJOTA
         vgDjktj3qpXq9lCpw12sIDSTBQ5DrTjpOgEnOA0s1XIfkHOYh0xnu6VBnQI/g12lOE3m
         Wzvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lZsU7VTC;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id v18si58252oor.0.2020.08.11.18.24.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 18:24:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id t23so409252qto.3
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 18:24:17 -0700 (PDT)
X-Received: by 2002:ac8:7c87:: with SMTP id y7mr4131359qtv.375.1597195456411;
 Tue, 11 Aug 2020 18:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
 <20200728004736.3590053-1-nhuck@google.com> <CAK7LNAT-AO9_Y-qunRvPbBYf7GZnoE6bxYKFNtcdKAKV8d_A+w@mail.gmail.com>
 <CAJkfWY5ywOtO6fAyPd0B2BjEWamJRRMgg4et0uVq2bpkJSECwA@mail.gmail.com> <CAK7LNAQVdhMraYejrTsGZSLFJDk4CVf6ke-bsQ7kaDUM2Lf4SA@mail.gmail.com>
In-Reply-To: <CAK7LNAQVdhMraYejrTsGZSLFJDk4CVf6ke-bsQ7kaDUM2Lf4SA@mail.gmail.com>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Aug 2020 20:24:04 -0500
Message-ID: <CAJkfWY5kooS1cPFq+3s0oFT8=O_vszAMnJ8BBOmy084oi+4tgw@mail.gmail.com>
Subject: Re: [PATCH v7] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Pirama Arumuga Nainar <pirama@google.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lZsU7VTC;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::843 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

Sounds good. Do you think this patch is ready to land then?

On Thu, Aug 6, 2020 at 5:10 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Fri, Aug 7, 2020 at 6:42 AM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Thu, Aug 6, 2020 at 3:44 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Tue, Jul 28, 2020 at 9:47 AM Nathan Huckleberry <nhuck@google.com> wrote:
> > > >
> > > > This patch adds clang-tidy and the clang static-analyzer as make
> > > > targets. The goal of this patch is to make static analysis tools
> > > > usable and extendable by any developer or researcher who is familiar
> > > > with basic c++.
> > > >
> > > > The current static analysis tools require intimate knowledge of the
> > > > internal workings of the static analysis. Clang-tidy and the clang
> > > > static analyzers expose an easy to use api and allow users unfamiliar
> > > > with clang to write new checks with relative ease.
> > > >
> > > > ===Clang-tidy===
> > > >
> > > > Clang-tidy is an easily extendable 'linter' that runs on the AST.
> > > > Clang-tidy checks are easy to write and understand. A check consists of
> > > > two parts, a matcher and a checker. The matcher is created using a
> > > > domain specific language that acts on the AST
> > > > (https://clang.llvm.org/docs/LibASTMatchersReference.html).  When AST
> > > > nodes are found by the matcher a callback is made to the checker. The
> > > > checker can then execute additional checks and issue warnings.
> > > >
> > > > Here is an example clang-tidy check to report functions that have calls
> > > > to local_irq_disable without calls to local_irq_enable and vice-versa.
> > > > Functions flagged with __attribute((annotation("ignore_irq_balancing")))
> > > > are ignored for analysis. (https://reviews.llvm.org/D65828)
> > > >
> > > > ===Clang static analyzer===
> > > >
> > > > The clang static analyzer is a more powerful static analysis tool that
> > > > uses symbolic execution to find bugs. Currently there is a check that
> > > > looks for potential security bugs from invalid uses of kmalloc and
> > > > kfree. There are several more general purpose checks that are useful for
> > > > the kernel.
> > > >
> > > > The clang static analyzer is well documented and designed to be
> > > > extensible.
> > > > (https://clang-analyzer.llvm.org/checker_dev_manual.html)
> > > > (https://github.com/haoNoQ/clang-analyzer-guide/releases/download/v0.1/clang-analyzer-guide-v0.1.pdf)
> > > >
> > > > The main draw of the clang tools is how accessible they are. The clang
> > > > documentation is very nice and these tools are built specifically to be
> > > > easily extendable by any developer. They provide an accessible method of
> > > > bug-finding and research to people who are not overly familiar with the
> > > > kernel codebase.
> > > >
> > > > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > > > ---
> > > > Changes v6->v7
> > > > * Fix issues with relative paths
> > > > * Additional style fixes
> > > >  MAINTAINERS                                   |  1 +
> > > >  Makefile                                      |  3 +
> > > >  scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
> > > >  .../{ => clang-tools}/gen_compile_commands.py |  0
> > > >  scripts/clang-tools/run-clang-tools.py        | 74 +++++++++++++++++++
> > > >  5 files changed, 101 insertions(+)
> > > >  create mode 100644 scripts/clang-tools/Makefile.clang-tools
> > > >  rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
> > > >  create mode 100755 scripts/clang-tools/run-clang-tools.py
> > > >
> > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > index 1d4aa7f942de..a444564e5572 100644
> > > > --- a/MAINTAINERS
> > > > +++ b/MAINTAINERS
> > > > @@ -4198,6 +4198,7 @@ W:        https://clangbuiltlinux.github.io/
> > > >  B:     https://github.com/ClangBuiltLinux/linux/issues
> > > >  C:     irc://chat.freenode.net/clangbuiltlinux
> > > >  F:     Documentation/kbuild/llvm.rst
> > > > +F:     scripts/clang-tools/
> > > >  K:     \b(?i:clang|llvm)\b
> > > >
> > > >  CLEANCACHE API
> > > > diff --git a/Makefile b/Makefile
> > > > index fe0164a654c7..3e2df010b342 100644
> > > > --- a/Makefile
> > > > +++ b/Makefile
> > > > @@ -747,6 +747,7 @@ KBUILD_CFLAGS       += $(call cc-option,-fno-allow-store-data-races)
> > > >
> > > >  include scripts/Makefile.kcov
> > > >  include scripts/Makefile.gcc-plugins
> > > > +include scripts/clang-tools/Makefile.clang-tools
> > > >
> > > >  ifdef CONFIG_READABLE_ASM
> > > >  # Disable optimizations that make assembler listings hard to read.
> > > > @@ -1543,6 +1544,8 @@ help:
> > > >         @echo  '  export_report   - List the usages of all exported symbols'
> > > >         @echo  '  headerdep       - Detect inclusion cycles in headers'
> > > >         @echo  '  coccicheck      - Check with Coccinelle'
> > > > +       @echo  '  clang-analyzer  - Check with clang static analyzer'
> > > > +       @echo  '  clang-tidy      - Check with clang-tidy'
> > > >         @echo  ''
> > > >         @echo  'Tools:'
> > > >         @echo  '  nsdeps          - Generate missing symbol namespace dependencies'
> > > > diff --git a/scripts/clang-tools/Makefile.clang-tools b/scripts/clang-tools/Makefile.clang-tools
> > > > new file mode 100644
> > > > index 000000000000..5c9d76f77595
> > > > --- /dev/null
> > > > +++ b/scripts/clang-tools/Makefile.clang-tools
> > > > @@ -0,0 +1,23 @@
> > > > +# SPDX-License-Identifier: GPL-2.0
> > > > +#
> > > > +# Copyright (C) Google LLC, 2020
> > > > +#
> > > > +# Author: Nathan Huckleberry <nhuck@google.com>
> > > > +#
> > > > +PHONY += clang-tidy
> > > > +clang-tidy:
> > > > +ifdef CONFIG_CC_IS_CLANG
> > > > +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> > > > +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-tidy compile_commands.json
> > > > +else
> > > > +       $(error clang-tidy requires CC=clang)
> > > > +endif
> > > > +
> > > > +PHONY += clang-analyzer
> > > > +clang-analyzer:
> > > > +ifdef CONFIG_CC_IS_CLANG
> > > > +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> > > > +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-analyzer compile_commands.json
> > > > +else
> > > > +       $(error clang-analyzer requires CC=clang)
> > > > +endif
> > >
> > >
> > >
> > > You can unify the almost same two rules.
> > >
> > > PHONY += clang-tidy clang-analyzer
> > > clang-tidy clang-analyzer:
> > > ifdef CONFIG_CC_IS_CLANG
> > >         $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> > >         $(PYTHON3) scripts/clang-tools/run-clang-tools.py $@
> > > compile_commands.json
> > > else
> > >         $(error $@ requires CC=clang)
> > > endif
> > >
> >
> > I like this.
> >
> > >
> > >
> > >
> > > But, before we proceed, please tell me
> > > what this check is intended for.
> > >
> >
> > Clang-tidy invokes clang using the command line
> > options specified in the compile_commands.json file.
> > Using gcc command line options causes a bunch of
> > errors for unknown options.
> >
> > >
> > >
> > >
> > >
> > > Case 1)
> > > Build the kernel with CC=clang,
> > > and then run clang-tidy without CC=clang.
> > >
> > > $ make CC=clang defconfig
> > > $ make CC=clang -j$(nproc)
> > > $ make clang-tidy
> > >
> > > scripts/clang-tools/Makefile.clang-tools:13: *** clang-tidy requires
> > > CC=clang.  Stop.
> > >
> >
> > I suppose this case could allow clang-tidy to
> > be run.
> >
> > >
> > >
> > >
> > > Case 2)
> > > Build the kernel using GCC,
> > > and then run clang-tidy with CC=clang.
> > >
> > > $ make defconfig
> > > $ make -j$(nproc)
> > > $ make CC=clang clang-tidy
> > >
> > > This patch happily runs clang-tidy
> > > although compile_commands.json
> > > contains GCC commands.
> > >
> >
> > This is the worst of the two cases. I'm not
> > sure how to prevent this other than parsing the
> > compiler invocation in run-clang-tools.py.
> >
> > I'm open to better suggestions.
> >
> > >
> > >
> > >
> > >
> > > So, it checks if you have passed CC=clang
> > > to "make clang-tidy", where I do not see
> > > any user of the $(CC) variable.
> > >
> > > It does not care whether you have built
> > > the kernel with GCC or Clang.
> > >
> > >
> > >
> > > What happens if you run clang-tidy against
> > > compile_commands.json that contains GCC
> > > commands?
> >
> > Clang-tidy itself uses the command line options from
> > compile_commands.json to invoke clang. If you run
> > clang-tidy against GCC commands you get lots of
> > errors similar to this
> >
> > Found compiler error(s).
> > 12 warnings and 8 errors generated.
> > Error while processing /usr/local/google/home/nhuck/linux/arch/x86/lib/iomem.c.
> > error: unknown argument: '-fconserve-stack' [clang-diagnostic-error]
> > error: unknown argument: '-fno-var-tracking-assignments'
> > [clang-diagnostic-error]
> > error: unknown argument: '-mindirect-branch-register' [clang-diagnostic-error]
> > error: unknown argument: '-mindirect-branch=thunk-extern'
> > [clang-diagnostic-error]
> > error: unknown argument: '-mno-fp-ret-in-387' [clang-diagnostic-error]
> > error: unknown argument: '-mpreferred-stack-boundary=3' [clang-diagnostic-error]
> > error: unknown argument: '-mskip-rax-setup' [clang-diagnostic-error]
> >
> > >
> > >
> > > I also care about stale commands
> > > in compile_commands.json.
> > >
> >
> > I agree with this point, but it's more of a bug with
> > gen_compile_commands.py. Maybe gen_compile_commands.py
> > could emit a warning when stale commands are detected in the
> > .*.cmd files.
>
>
> Nathan, thanks for your comments.
>
> I can improve this
> so compile_commands.json contains
> only commands from the last build.
>
> Working on a patch.
>
> --
> Best Regards
> Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY5kooS1cPFq%2B3s0oFT8%3DO_vszAMnJ8BBOmy084oi%2B4tgw%40mail.gmail.com.
