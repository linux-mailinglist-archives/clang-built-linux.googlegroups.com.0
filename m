Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBRFUTX4AKGQEG26O2LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7DA21A65B
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 19:56:22 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id l3sf2133922pjh.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 10:56:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594317381; cv=pass;
        d=google.com; s=arc-20160816;
        b=FW7VxgPREqHEt5h7vs43ZFSpAMvDTWutR2jxEkYUHHCDjTgmG3UuqRG6mkIvCGgJDe
         sJVaNv27WgfB1RxwwLfmjpbwg/P2SkB434jouo9nD0I1AWhn4IXPrnsYuKGW6esGOzGT
         xRVvbS3+VPFkRxzxVOWDySuNbv1QRwrWMv7GHatFgKQPOwfTQ7zqsMvM0/J4OAcQj4Tg
         zUE3KFaARASuZEL98ZnDdjBlaccz6HOOGzBo8QVA64bIkl6I03P8IsqYECpuyRcJqLEx
         mJV3q+dCBUo8oG9Sm6AdL39t9YCQ2x24Dxqc1M9iRJhdICFroZyQ7ZmyUGhMY7bPEJ/P
         eJ8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UN2FBKGTk3lvBU9dQpKAl3M0Qy4Gv/1AtYi8b8kHS18=;
        b=jtKelwkrkz4G9Uvlkg981MkceIlu8D5G2YT0zxCQBMl27hEMqJxaFuBPvKpJM3/pdL
         D7YdNToLHQPRyxMG0aXpBRJoDI7tpm0SECuzDfjfMR5Y4eHcts/WizyoQ+XzoZDJk+cf
         fdJazQPDTTk+2HDAwHEY6kG0SGZaMBf8gl7ECJhFuuBfpvdeMMfbwpQ9mbFr9pCpAIlz
         Pld6QqD8Syr+g/5/4FutdgwV76hyU+WEu0PfsKpCDltUd/NiyoSrR6AXiMqObfHVFY/s
         f7KYE3FqgVQH1PGDAAGJDfbAIf38UYBmVaT07WevhVCtAOpMi6Tc7Pkc5xq436wcuQYP
         719w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LNdIXv4N;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UN2FBKGTk3lvBU9dQpKAl3M0Qy4Gv/1AtYi8b8kHS18=;
        b=NQzyWdLSMMNSA897DCUWQ4Wm749lVufdHUCX3u/XIHZRhYVWd52f+emwiOWUmVUmoG
         oHpuiU7Hty1To7gvKtmlQtlOmRY/pf9p4xMMK4MD2ovQMkx+jfhQxckCRpjukv7tFnmV
         kbhhb6ZQshybOcd//RCaY2BNpzSBwGau/vumoMFVBhPFrbHFiK3gK90Qg75J4q6mJYwG
         InMJK0JTnqDqeCHXLEVU+NWdm0r8lMnYACjH7iZkgOY78C3lvyCJH+A/UoQW2gX16Dpn
         wyPzO/DYP9YKU37cIb0ewJi2OcX+TPrdQ/bSTOlrvzvr32LcUWDl2uwNysU/0b1ugfDL
         EgJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UN2FBKGTk3lvBU9dQpKAl3M0Qy4Gv/1AtYi8b8kHS18=;
        b=h+ip7GWPFKMSKkL8gItPfi4a3hOUDUWJ8UtWfWhsiDod8zE2GunUlttW3L3+jYND98
         iJNi0W5nDApmTyxKFq7VNepk9Ilh7swASH5IQbc+3okF2Kt4PeVVS9+tUnZ1zKdPAWi0
         Yq4D/cJpC1j6bz09bDOcqK7n8ztCQ83AHXh0kcRQbghHBPu4+SSD+fIA7k8nsm5ydYKW
         rEmWPe+dCV8QXMTTPzZbtVee+eXMewQZkAHvVHmNtEu5EdrvfMhiKYVNSlBqzfXUUlrq
         3gaqJyktw57wVS1DtIuksK744ncadkTgDo+NYW8k2Z5hOGTdo2TvUczOVRAVn+ze3icj
         LHiA==
X-Gm-Message-State: AOAM532wjJgd3dULKfvtlBvf/xTw/m+DIKVQOi4IJBRfMI2UeAts5z6q
	z4MFg/trbpB0dtrkCvAdXmA=
X-Google-Smtp-Source: ABdhPJxYU/HgD5HcGkxKwKxcpDVa5kFjhhyuPFI21Ro9hsSETziGxZx8ccLT8mDTH5GeOjD4X0PKIg==
X-Received: by 2002:a17:90b:f06:: with SMTP id br6mr1212412pjb.97.1594317380838;
        Thu, 09 Jul 2020 10:56:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls1972660pgf.6.gmail; Thu, 09 Jul
 2020 10:56:20 -0700 (PDT)
X-Received: by 2002:a63:7e55:: with SMTP id o21mr56292478pgn.263.1594317380264;
        Thu, 09 Jul 2020 10:56:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594317380; cv=none;
        d=google.com; s=arc-20160816;
        b=vkgda/e4EUK0NqsCmIRsjvafWSCef5RAbwFJ9eyAikZMDOFzoOYGd01CwsuAFDyG1d
         TDHS4OaKBtkk2hBUM1x0ycJlQfdJVs4KKw0plPhkjzO2KDeMVbzSiRw4oooVolLsYgF4
         neZ7rj/Q4bxazORCS+YrU/vZn3uBFp6hl4E6HJkVX+k1naQmzYSJ5Fq6lKtUk0ut09uR
         0IPbJ+De6BiQg+BTIXL/PLqUkR4MOks9IReFuNaw9KgbOyslfjlfYo0V5x3cQ25uupOL
         lssj3qXPREK01IzcyHjRPMgz2SVxI+W0Tu1cCCq8rXym514bXJVtDRzXN/gxG5NNdOvO
         rmjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S8PNFrNm7Gxlphzf91I5ant8WQf2gL0zIFt6y9w6si0=;
        b=cBsv9zixsXnfYwS6LrIxYhtauZTDg1GJ423+MIjr8JB80Elxp8SP9ciJkoiVHv4caj
         +xbgjlBtWhdR67gIYK3dc7wEs80o2Ob7xfmNhK/P8pT62rvKhlAugzWzNBXhnQ35o/La
         EsJQ0bd2W6qSPNRKez1zLa3+OJTDppZJBf2c3V9zbBH/f2LXOwa6dyCtO7DJt9lc2Umv
         uv5FmzE6E+eyKRzXhiF4nWcv6MeYLFO2EAfz+MaSmlaZEuIikrLvfDN3dz9wnUkwXk8R
         ipeCjpBhLAHxFduWgsEkqo6WlSjDS4e8FNBEcl3wd62iOP53JgPs7gnDhvoP0D3EDWxZ
         ptzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LNdIXv4N;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id cp21si220721pjb.3.2020.07.09.10.56.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 10:56:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id j80so2688968qke.0
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jul 2020 10:56:20 -0700 (PDT)
X-Received: by 2002:a37:a185:: with SMTP id k127mr58558772qke.221.1594317379110;
 Thu, 09 Jul 2020 10:56:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200708181905.257691-1-nhuck@google.com> <CAKwvOdmKsCedU=Vt_SBSGnf4gKc9Ae4sknn_Lj+kw9f0HY5MMA@mail.gmail.com>
In-Reply-To: <CAKwvOdmKsCedU=Vt_SBSGnf4gKc9Ae4sknn_Lj+kw9f0HY5MMA@mail.gmail.com>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jul 2020 12:56:07 -0500
Message-ID: <CAJkfWY58JwBqxjHcaQDwpUMrfG_hLiBkskrTfC4EeQvDrz5Q1g@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tom Roeder <tmroeder@google.com>, 
	Bill Wendling <morbo@google.com>, Pirama Arumuga Nainar <pirama@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LNdIXv4N;       spf=pass
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

On Wed, Jul 8, 2020 at 2:11 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Jul 8, 2020 at 11:21 AM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > This patch adds clang-tidy and the clang static-analyzer as make
> > targets. The goal of this patch is to make static analysis tools
> > usable and extendable by any developer or researcher who is familiar
> > with basic c++.
> >
> > The current static analysis tools require intimate knowledge of the internal
> > workings of the static analysis.  Clang-tidy and the clang static analyzers
> > expose an easy to use api and allow users unfamiliar with clang to
> > write new checks with relative ease.
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
> > Changes V1 -> V2:
> > * Remove dependencies on GNU Parallel
> > * * Clang-tidy/analyzer now invoked directly from python
> > Link: https://lkml.org/lkml/2019/8/6/941
> >
> >  Makefile                                      |  3 +
> >  scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
> >  .../{ => clang-tools}/gen_compile_commands.py |  0
>
> + Tom for the rename.
>
> I think we should add scripts/clang-tools/ to MAINTAINERS under
> CLANG/LLVM SUPPORT:
> ```
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c87b94e6b2f6..42602231929c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4211,6 +4211,7 @@ W:        https://clangbuiltlinux.github.io/
>  B:     https://github.com/ClangBuiltLinux/linux/issues
>  C:     irc://chat.freenode.net/clangbuiltlinux
>  F:     Documentation/kbuild/llvm.rst
> +F:     scripts/clang-tools/
>  K:     \b(?i:clang|llvm)\b
>
>  CLEANCACHE API
> ```
> that way we get cc'ed properly on proposed changes (should folks use
> scripts/get_maintainer.pl).
>
> >  scripts/clang-tools/run-clang-tools.py        | 77 +++++++++++++++++++
> >  4 files changed, 103 insertions(+)
> >  create mode 100644 scripts/clang-tools/Makefile.clang-tools
> >  rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
> >  create mode 100755 scripts/clang-tools/run-clang-tools.py
> >
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
> > index 000000000000..e09dc1a8efff
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
> > +       $(error Clang-tidy requires CC=clang)
>
> s/Clang/clang/ to match the case of the target.
>
> > +endif
> > +
> > +PHONY += clang-analyzer
> > +clang-analyzer:
> > +ifdef CONFIG_CC_IS_CLANG
> > +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> > +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py static-analyzer compile_commands.json
> > +else
> > +       $(error Clang-analyzer requires CC=clang)
>
> s/Clang/clang/ to match the case of the target.
>
> > +endif
> > diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> > similarity index 100%
> > rename from scripts/gen_compile_commands.py
> > rename to scripts/clang-tools/gen_compile_commands.py
> > diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> > new file mode 100755
> > index 000000000000..d429a150e23a
> > --- /dev/null
> > +++ b/scripts/clang-tools/run-clang-tools.py
> > @@ -0,0 +1,77 @@
> > +#!/usr/bin/env python
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# Copyright (C) Google LLC, 2020
> > +#
> > +# Author: Nathan Huckleberry <nhuck@google.com>
> > +#
> > +"""A helper routine run clang-tidy and the clang static-analyzer on
> > +compile_commands.json."""
> > +
> > +import argparse
> > +import json
> > +import logging
> > +import multiprocessing
> > +import os
> > +import re
> > +import subprocess
> > +
> > +def parse_arguments():
> > +  """Set up and parses command-line arguments.
> > +  Returns:
> > +    args: Dict of parsed args
> > +      Has keys 'file' and 'type'
> > +  """
> > +  usage = """Run clang-tidy or the clang static-analyzer on a
> > +  compilation database."""
> > +  parser = argparse.ArgumentParser(description=usage)
> > +
> > +  type_help = ('Type of analysis to be performed')
> > +  parser.add_argument('type', choices=['clang-tidy', 'static-analyzer'],
> > +                      help=type_help)
> > +  file_path_help = ('Path to the compilation database to parse')
> > +  parser.add_argument('file',  type=str, help=file_path_help)
>
> I don't know if the kernel has a preferred style for Python, but I
> think it would be good to be consistent in the use of single vs double
> quotes for strings.  My preference is for double quotes, but I don't
> know enough about the various PEPs for style or if the kernel has a
> preferred style for these.
>
> + Bill who knows a bit about Python style.
>
> > +
> > +  args = parser.parse_args()
> > +
> > +  return args
> > +
> > +def init(l,t):
> > +  global lock
> > +  global analysis_type
> > +  lock = l
> > +  analysis_type = t
>
> Is this canonical Python?  Maybe wrap these functions into methods of
> an object you construct, that way you can assign these as instance
> variables against `self`, rather than using global variables.

I did this to allow shared locks between processes, see
https://stackoverflow.com/questions/25557686/python-sharing-a-lock-between-processes

>
> > +
> > +def run_analysis(entry):
> > +  filename = entry['file']
> > +  p = None
> > +  if(analysis_type == "clang-tidy"):
> > +    p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
> > +                        "-checks=-*,linuxkernel-*", filename],
> > +                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)
> > +  if(analysis_type == "static-analyzer"):
> > +    p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
> > +                        "-checks=-*,clang-analyzer-*", filename],
> > +                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)
>
> When you have a fair amount of duplication between two branches of an
> if/else (for instance, same method invocation and number of
> parameters, just slight differences in parameter values), consider if
> you can use a ternary to simplify or make the code more concise. That
> would also help avoid initializing `p` to `None`:
>
> checks = "-checks=-*,linuxkernel-*" if analysis_type == "clang-tidy"
> else "-checks=-*,clang-analyzer-*"
> p = subprocess.run(["clang-tidy", "-p", os.getcwd(), checks,
>     stdout=subprocess.PIPE, stderr=subprocess.PIPE]
>
> then maybe do some validation of the analysis_type when validating
> command line arguments earlier.

Argparse should already handle validation of the analysis type.

>
> > +  lock.acquire()
> > +  print(entry['file'])
> > +  os.write(1, p.stdout)
> > +  os.write(2, p.stderr)
>
> Please use sys.stdout and sys.stderr rather than magic constants for
> their file descriptors.
>
> > +  lock.release()
> > +
> > +
> > +def main():
> > +  args = parse_arguments()
> > +  filename = args.file
> > +
> > +  #Read JSON data into the datastore variable
> > +  if filename:
>
> Isn't there a way to make command line arguments required with
> Argparse? In that case, would you still need the conditional?
>
> > +    with open(filename, 'r') as f:
> > +      datastore = json.load(f)
> > +
> > +      lock = multiprocessing.Lock()
> > +      pool = multiprocessing.Pool(initializer=init, initargs=(lock,args.type,))
> > +      pool.map(run_analysis,datastore)
>
> Please use a space to separate parameters in a parameter list.
>
> > +
> > +if __name__ == '__main__':
> > +    main()
>
> So rather than call a function named main, you could simply construct
> an object, then call a method on it or have the constructor simply
> kick off the analysis (essentially a mix of `main` and `init`).
>
> --
> Thanks,
> ~Nick Desaulniers

Thanks,
Nathan Huckleberry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY58JwBqxjHcaQDwpUMrfG_hLiBkskrTfC4EeQvDrz5Q1g%40mail.gmail.com.
