Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBNPSWH4QKGQEPEDKMNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id AD88B23E391
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 23:42:14 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id n12sf101502qtr.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 14:42:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596750133; cv=pass;
        d=google.com; s=arc-20160816;
        b=y/KeF/I6CF2/bhafTPcIbWNxGnOzj1eFHikNkxOXWR8WsAc5IlcJBwXyALudJQzaKW
         CA7s+sLIpeRJnptGtO485C7JMpX60QCyK94rNB546xbpnxmAMDADzVD8x8HjfVi52W/9
         w6nQ3w00HGECsWpA6i7eE8bemm1ol9ZIcXZcN0DYXZWAkEiyYmsy21sZt2cj2mW1nTUK
         C48mykDRKWszvfp7ydPBimW/bE5tMeNG8uJqqB9DbeGBEtcbHS5NchEq4awmhMdavEWJ
         PUpwE1aRMdbQMhegFbQuYX0khJpEsYFDNBeiF5nJQVhJPY/beZw5NrgCnxlv2ns+0QeD
         0a/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qPenbivP8dZ+mPqD9JTD+P701uT9eHOUTQ7QdCkd42w=;
        b=1D/azQhfLtadNfjNa5Pr5OT3pfDt4vn03bhUxQJAV8dYAHJlbaVVMIFyfbe3rUMCyX
         TY7Ej4nhsuI01pG5L7gfGdug0N3V3vs7EgaIOJshWLD9VLX43rFNama29C79QTqrHE39
         UA8Qe79EHkzGzXWxYQ7n6r8+Z/bpx8Uaq0Ve1W48wizo3YyU7pjeN0B9ow9dV4Eo32Qp
         Xt83Bc0QhejNcDQTonYTwLWFJyN5NR3GNIKrKhBpv+53BXZ8nWVrb6zETeCh6JGngbki
         eS/SDtv5HAf2eulAJLIi2/B0ezV66ha/MKLWL4Q8LXnMoKHxz45DHNwUBc5FcUzFqm6N
         X3Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PX7vfq6V;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qPenbivP8dZ+mPqD9JTD+P701uT9eHOUTQ7QdCkd42w=;
        b=rYuDcs0KvtfH5pUBsf583qFqIZ6N/8gKL9oiERwxNxlrxPcMV5w4bUy8XAuVLmrk2t
         NlQ/vC6IOM3gjaR1n8X+1yOQ/6HXSHwm8hgOkrf4VEdF7DXFZep0JXm7fV13fMYoT/UI
         0rabt5ajvC5x4gfQndIebjyK57L20RGB/wNK2E4xDtY9ix2dc1nmRN8MCS8+l7eldhrc
         7EdipXdWjaXHi5mnbikwJb+qVcLL3ic8Sir9h/RxuI+1KSWste5kSv83HPEAENtpKp6Z
         P9e/JB4nfp1alI09ZXY+01nJFa+T56Smgx4q1V79CoD5QJr32ownVzkpEfpE0J/EP7DT
         Ud+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qPenbivP8dZ+mPqD9JTD+P701uT9eHOUTQ7QdCkd42w=;
        b=VTbvDqlpLILlm5QNq/wY5EMWAH7PCaUT0teuQlj6zPtX50xjS25bH03HGuVJ9BhDeh
         MHbDk5egvFepUk6hQmqbsbXqBbqDZBMP8R0Uov70+iLS4dWB2MFNV6XuGQm7W2P+YFTF
         wCYU5ccs8CDMi59lmDe2Ik2SoEJI5lZ1NB4zBT/C/O95aWJ1C52ImkmwG7NQU52Sd01p
         IUl4heb6dbVv4v6c2dbGWWETqQ4xvRhp6HsT+QcRbbevONW0rygdC+ap1mgP9FDYHrM3
         WMgZ+rtvn3Yw5zVjJUTSB68q6JqQFa2MSafi7fDHMC8VILQjeDWcNKq8CZ3VBmoSE0gb
         7k4Q==
X-Gm-Message-State: AOAM532ZGL+7AKsmn0f1oQ4rssrhkINELYmuunvq1EA7XD4G5VZimtX9
	ZAm0uiZPRIvPRozFTO+aVdQ=
X-Google-Smtp-Source: ABdhPJzBqlDqIZOCO4Aj6qFCutOAylAJozljSOLz7ORklNyJNnmb1x7GK/9PkRfRTraIf2zgsPV9QQ==
X-Received: by 2002:ad4:5425:: with SMTP id g5mr11381704qvt.198.1596750133681;
        Thu, 06 Aug 2020 14:42:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:36b:: with SMTP id t11ls1837734qvu.7.gmail; Thu, 06
 Aug 2020 14:42:13 -0700 (PDT)
X-Received: by 2002:a05:6214:17c5:: with SMTP id cu5mr11990140qvb.162.1596750133405;
        Thu, 06 Aug 2020 14:42:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596750133; cv=none;
        d=google.com; s=arc-20160816;
        b=aj1PSgfmotM2j9vYohiXALlWZ2TU6eAXhoXQTkzj3d2EyJYq9SvHkz6OaWVFwFY0yo
         3FzdCDn16A9Eyp1DHOtD4Osd3Pd2qdsPFBco2aWPAOIuoVZK3S4MpelRTS6vfCMKIEXO
         zNogUMUyk8kN5kmSBlfb9jRFyaJwOqDAnAM59x+QotxfTfY1ihDkFmCR91X5iZsMAz/+
         LHiyzePdSMkpELQdmaXSJqhkqcZecsgoWRLhUm6NElsIz6SYC3qD66YG5+V/mhCwfQF6
         XnOFwQjEupge1bhWKB7DBkuBSdWl4076fXJJNitR4HJvJ6Uii9QmRAFpW5ucFY+n5SGq
         ijhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UpAWxyK9tlB1NXZqSpDU40Yy2PoufquWk25YMjTDwRI=;
        b=WRf92Hddg2Fdpukakp2IB262n3RECyZzo7lWPr0BngXX6vTNFmDSwSs2r+wfOLbEud
         bjZiIGVxT1bm/f+QP9SGcuw70CKm+E9vryQ0CK5vb+DpAgp448lc7ZqRGRxYEdIgN2xU
         VdXY5s3Pjtlxfo32PPR9V2YvhiSlmZFWu1ozjY/iU2C9BpBnjaqSpQn02ck1QmSFTVfE
         /hFHUtVDdmg/TcLA/C2Bcxcu3C2BtAvM/IeywMWwbEDApgeDQd3XPkAijhw2Df8WuYYR
         IUqut+ZdK3U7kdR7WnynQ4+IvriUo/xA4A0JDfFz5X8u5vRvKaT0vjMXvcKQnpbSwIIu
         aHmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PX7vfq6V;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id b1si305942qto.3.2020.08.06.14.42.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2020 14:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id b14so44693242qkn.4
        for <clang-built-linux@googlegroups.com>; Thu, 06 Aug 2020 14:42:13 -0700 (PDT)
X-Received: by 2002:a37:a354:: with SMTP id m81mr10814578qke.277.1596750132783;
 Thu, 06 Aug 2020 14:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
 <20200728004736.3590053-1-nhuck@google.com> <CAK7LNAT-AO9_Y-qunRvPbBYf7GZnoE6bxYKFNtcdKAKV8d_A+w@mail.gmail.com>
In-Reply-To: <CAK7LNAT-AO9_Y-qunRvPbBYf7GZnoE6bxYKFNtcdKAKV8d_A+w@mail.gmail.com>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 Aug 2020 16:42:00 -0500
Message-ID: <CAJkfWY5ywOtO6fAyPd0B2BjEWamJRRMgg4et0uVq2bpkJSECwA@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=PX7vfq6V;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as
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

On Thu, Aug 6, 2020 at 3:44 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Jul 28, 2020 at 9:47 AM Nathan Huckleberry <nhuck@google.com> wrote:
> >
> > This patch adds clang-tidy and the clang static-analyzer as make
> > targets. The goal of this patch is to make static analysis tools
> > usable and extendable by any developer or researcher who is familiar
> > with basic c++.
> >
> > The current static analysis tools require intimate knowledge of the
> > internal workings of the static analysis. Clang-tidy and the clang
> > static analyzers expose an easy to use api and allow users unfamiliar
> > with clang to write new checks with relative ease.
> >
> > ===Clang-tidy===
> >
> > Clang-tidy is an easily extendable 'linter' that runs on the AST.
> > Clang-tidy checks are easy to write and understand. A check consists of
> > two parts, a matcher and a checker. The matcher is created using a
> > domain specific language that acts on the AST
> > (https://clang.llvm.org/docs/LibASTMatchersReference.html).  When AST
> > nodes are found by the matcher a callback is made to the checker. The
> > checker can then execute additional checks and issue warnings.
> >
> > Here is an example clang-tidy check to report functions that have calls
> > to local_irq_disable without calls to local_irq_enable and vice-versa.
> > Functions flagged with __attribute((annotation("ignore_irq_balancing")))
> > are ignored for analysis. (https://reviews.llvm.org/D65828)
> >
> > ===Clang static analyzer===
> >
> > The clang static analyzer is a more powerful static analysis tool that
> > uses symbolic execution to find bugs. Currently there is a check that
> > looks for potential security bugs from invalid uses of kmalloc and
> > kfree. There are several more general purpose checks that are useful for
> > the kernel.
> >
> > The clang static analyzer is well documented and designed to be
> > extensible.
> > (https://clang-analyzer.llvm.org/checker_dev_manual.html)
> > (https://github.com/haoNoQ/clang-analyzer-guide/releases/download/v0.1/clang-analyzer-guide-v0.1.pdf)
> >
> > The main draw of the clang tools is how accessible they are. The clang
> > documentation is very nice and these tools are built specifically to be
> > easily extendable by any developer. They provide an accessible method of
> > bug-finding and research to people who are not overly familiar with the
> > kernel codebase.
> >
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> > Changes v6->v7
> > * Fix issues with relative paths
> > * Additional style fixes
> >  MAINTAINERS                                   |  1 +
> >  Makefile                                      |  3 +
> >  scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
> >  .../{ => clang-tools}/gen_compile_commands.py |  0
> >  scripts/clang-tools/run-clang-tools.py        | 74 +++++++++++++++++++
> >  5 files changed, 101 insertions(+)
> >  create mode 100644 scripts/clang-tools/Makefile.clang-tools
> >  rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
> >  create mode 100755 scripts/clang-tools/run-clang-tools.py
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 1d4aa7f942de..a444564e5572 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4198,6 +4198,7 @@ W:        https://clangbuiltlinux.github.io/
> >  B:     https://github.com/ClangBuiltLinux/linux/issues
> >  C:     irc://chat.freenode.net/clangbuiltlinux
> >  F:     Documentation/kbuild/llvm.rst
> > +F:     scripts/clang-tools/
> >  K:     \b(?i:clang|llvm)\b
> >
> >  CLEANCACHE API
> > diff --git a/Makefile b/Makefile
> > index fe0164a654c7..3e2df010b342 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -747,6 +747,7 @@ KBUILD_CFLAGS       += $(call cc-option,-fno-allow-store-data-races)
> >
> >  include scripts/Makefile.kcov
> >  include scripts/Makefile.gcc-plugins
> > +include scripts/clang-tools/Makefile.clang-tools
> >
> >  ifdef CONFIG_READABLE_ASM
> >  # Disable optimizations that make assembler listings hard to read.
> > @@ -1543,6 +1544,8 @@ help:
> >         @echo  '  export_report   - List the usages of all exported symbols'
> >         @echo  '  headerdep       - Detect inclusion cycles in headers'
> >         @echo  '  coccicheck      - Check with Coccinelle'
> > +       @echo  '  clang-analyzer  - Check with clang static analyzer'
> > +       @echo  '  clang-tidy      - Check with clang-tidy'
> >         @echo  ''
> >         @echo  'Tools:'
> >         @echo  '  nsdeps          - Generate missing symbol namespace dependencies'
> > diff --git a/scripts/clang-tools/Makefile.clang-tools b/scripts/clang-tools/Makefile.clang-tools
> > new file mode 100644
> > index 000000000000..5c9d76f77595
> > --- /dev/null
> > +++ b/scripts/clang-tools/Makefile.clang-tools
> > @@ -0,0 +1,23 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# Copyright (C) Google LLC, 2020
> > +#
> > +# Author: Nathan Huckleberry <nhuck@google.com>
> > +#
> > +PHONY += clang-tidy
> > +clang-tidy:
> > +ifdef CONFIG_CC_IS_CLANG
> > +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> > +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-tidy compile_commands.json
> > +else
> > +       $(error clang-tidy requires CC=clang)
> > +endif
> > +
> > +PHONY += clang-analyzer
> > +clang-analyzer:
> > +ifdef CONFIG_CC_IS_CLANG
> > +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> > +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-analyzer compile_commands.json
> > +else
> > +       $(error clang-analyzer requires CC=clang)
> > +endif
>
>
>
> You can unify the almost same two rules.
>
> PHONY += clang-tidy clang-analyzer
> clang-tidy clang-analyzer:
> ifdef CONFIG_CC_IS_CLANG
>         $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
>         $(PYTHON3) scripts/clang-tools/run-clang-tools.py $@
> compile_commands.json
> else
>         $(error $@ requires CC=clang)
> endif
>

I like this.

>
>
>
> But, before we proceed, please tell me
> what this check is intended for.
>

Clang-tidy invokes clang using the command line
options specified in the compile_commands.json file.
Using gcc command line options causes a bunch of
errors for unknown options.

>
>
>
>
> Case 1)
> Build the kernel with CC=clang,
> and then run clang-tidy without CC=clang.
>
> $ make CC=clang defconfig
> $ make CC=clang -j$(nproc)
> $ make clang-tidy
>
> scripts/clang-tools/Makefile.clang-tools:13: *** clang-tidy requires
> CC=clang.  Stop.
>

I suppose this case could allow clang-tidy to
be run.

>
>
>
> Case 2)
> Build the kernel using GCC,
> and then run clang-tidy with CC=clang.
>
> $ make defconfig
> $ make -j$(nproc)
> $ make CC=clang clang-tidy
>
> This patch happily runs clang-tidy
> although compile_commands.json
> contains GCC commands.
>

This is the worst of the two cases. I'm not
sure how to prevent this other than parsing the
compiler invocation in run-clang-tools.py.

I'm open to better suggestions.

>
>
>
>
> So, it checks if you have passed CC=clang
> to "make clang-tidy", where I do not see
> any user of the $(CC) variable.
>
> It does not care whether you have built
> the kernel with GCC or Clang.
>
>
>
> What happens if you run clang-tidy against
> compile_commands.json that contains GCC
> commands?

Clang-tidy itself uses the command line options from
compile_commands.json to invoke clang. If you run
clang-tidy against GCC commands you get lots of
errors similar to this

Found compiler error(s).
12 warnings and 8 errors generated.
Error while processing /usr/local/google/home/nhuck/linux/arch/x86/lib/iomem.c.
error: unknown argument: '-fconserve-stack' [clang-diagnostic-error]
error: unknown argument: '-fno-var-tracking-assignments'
[clang-diagnostic-error]
error: unknown argument: '-mindirect-branch-register' [clang-diagnostic-error]
error: unknown argument: '-mindirect-branch=thunk-extern'
[clang-diagnostic-error]
error: unknown argument: '-mno-fp-ret-in-387' [clang-diagnostic-error]
error: unknown argument: '-mpreferred-stack-boundary=3' [clang-diagnostic-error]
error: unknown argument: '-mskip-rax-setup' [clang-diagnostic-error]

>
>
> I also care about stale commands
> in compile_commands.json.
>

I agree with this point, but it's more of a bug with
gen_compile_commands.py. Maybe gen_compile_commands.py
could emit a warning when stale commands are detected in the
.*.cmd files.

>
> gen_compile_commands.py creates compile_commands.json
> based on *.cmd files it found.
>
> If you rebuild the kernel for various settings
> using GCC/clang without "make clean",
> stale .*.cmd files will grow.
>
> compile_commands.json will pick up commands
> from older compilation, i.e. the end up with
> the mixture of GCC/Clang commands.
>
> So, I'd like to know how clang-tidy handles
> the GCC commands from compile_commands.json
>
>
>
>
>
> > diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> > similarity index 100%
> > rename from scripts/gen_compile_commands.py
> > rename to scripts/clang-tools/gen_compile_commands.py
> > diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> > new file mode 100755
> > index 000000000000..fa7655c7cec0
> > --- /dev/null
> > +++ b/scripts/clang-tools/run-clang-tools.py
> > @@ -0,0 +1,74 @@
> > +#!/usr/bin/env python
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# Copyright (C) Google LLC, 2020
> > +#
> > +# Author: Nathan Huckleberry <nhuck@google.com>
> > +#
> > +"""A helper routine run clang-tidy and the clang static-analyzer on
> > +compile_commands.json.
> > +"""
> > +
> > +import argparse
> > +import json
> > +import multiprocessing
> > +import os
> > +import subprocess
> > +import sys
> > +
> > +
> > +def parse_arguments():
> > +    """Set up and parses command-line arguments.
> > +    Returns:
> > +        args: Dict of parsed args
> > +        Has keys: [path, type]
> > +    """
> > +    usage = """Run clang-tidy or the clang static-analyzer on a
> > +        compilation database."""
> > +    parser = argparse.ArgumentParser(description=usage)
> > +
> > +    type_help = "Type of analysis to be performed"
> > +    parser.add_argument("type",
> > +                        choices=["clang-tidy", "clang-analyzer"],
> > +                        help=type_help)
> > +    path_help = "Path to the compilation database to parse"
> > +    parser.add_argument("path", type=str, help=path_help)
> > +
> > +    return parser.parse_args()
> > +
> > +
> > +def init(l, a):
> > +    global lock
> > +    global args
> > +    lock = l
> > +    args = a
> > +
> > +
> > +def run_analysis(entry):
> > +    # Disable all checks, then re-enable the ones we want
> > +    checks = "-checks=-*,"
> > +    if args.type == "clang-tidy":
> > +        checks += "linuxkernel-*"
> > +    else:
> > +        checks += "clang-analyzer-*"
> > +    p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
> > +                       stdout=subprocess.PIPE,
> > +                       stderr=subprocess.STDOUT,
> > +                       cwd=entry["directory"])
> > +    with lock:
> > +        sys.stderr.buffer.write(p.stdout)
> > +
> > +
> > +def main():
> > +    args = parse_arguments()
> > +
> > +    lock = multiprocessing.Lock()
> > +    pool = multiprocessing.Pool(initializer=init, initargs=(lock, args))
> > +    # Read JSON data into the datastore variable
> > +    with open(args.path, "r") as f:
> > +        datastore = json.load(f)
> > +        pool.map(run_analysis, datastore)
> > +
> > +
> > +if __name__ == "__main__":
> > +    main()
> > --
> > 2.28.0.rc0.142.g3c755180ce-goog
> >
>
>
> --
> Best Regards
> Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY5ywOtO6fAyPd0B2BjEWamJRRMgg4et0uVq2bpkJSECwA%40mail.gmail.com.
