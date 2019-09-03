Return-Path: <clang-built-linux+bncBDTI55WH24IRBN5HXLVQKGQE2CXQHDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BB5A6E06
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Sep 2019 18:24:25 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id z35sf11267874pgk.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Sep 2019 09:24:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567527863; cv=pass;
        d=google.com; s=arc-20160816;
        b=0uk9toPlTOoa80mcoZfu1SVnomXHzXq29yWlc/2lH/QLtA3OJUMTBveIgpWDj+dG2q
         PzXyaeYuGiDAxoVOZLSsBexP6InozSSwFZ0E9DIMcw+A1OUHhL+LKW58obuXkl6FP6fY
         CdQumJUABTr68JLI/9pjnUhtlglETK8f7aFAadnkRDDykzhxIz/eTLYpa5s28Qnt9CeE
         REA7mT3sWqfAl7AprgwngURB+sx4wmsDW1HmmyfzpEb+NB7vaFvlvyyw2P9oA9mujuBm
         BHfvmq8UjE3dCBL/7udUk+/APJbKYyShxMNJT/88gKfT+Z3EzHIfp5/YrRc/++oJgSXM
         t3hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=E9aFw92hLZgmfeM8u8+BBNczy2uBGBMxNtHEpH2AVdw=;
        b=w7x0NyMpnQ/6GxTpY0PnZVNMOCSae4qvAyXKLapW9GeNdlDeY6kejEyJLpSi+j9Nh8
         Qg5aG9jLl1QJkYHWxrazVpCofvx1QLBgC5dlevuQFW2femNRzqUfjofVZnV0mOUYN9Gj
         30D0rsHbnurXaqm5VN9KQ9E3V3fJEVimxF0XyfhuzSJ3z5RDGbUBX4Xmh5ExgZX/s1X9
         Mwz61MJSPtLQzWK87PlP50xUbLyDsa+RGgDCShDtu6RaxgpR3G0+2C5JUrdccQcSbmC0
         Al70wAtBRMOkuzxIy7vkPj5SzTM6Aa+TzDtCNFKVGGqqnUMP6jZ2QsBSZtMSbLJcS13r
         qJpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=cvJtQ5xi;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E9aFw92hLZgmfeM8u8+BBNczy2uBGBMxNtHEpH2AVdw=;
        b=rD1tbnItNWEDSHfjZvrTESK6UJ3b/m+g8CGAU4R+QpmBpFa2tQtIDZKE+nQtZG+0gr
         ttnQrNpJ1edmx1YLXwwYcgo+1xko5XEO5iDqDUQOLlb60tvg4og8+SRXgX5iY1iyMmif
         ITeZ/AgbJRJaXnq+PWJimNOqeLRBNFtmiQkWKcPmG4kI/kvP2VNAjSwd5LsqER5zrD6e
         uQWZ9je2BDTtZsRniG3RWhux9+XdNxDcQCrgcox0wCNkExgXa0x01S9f7Lkd8trXd23+
         JbmDH7TPbo+JuaX2SnhtTouvIRfjnLfHdjNPF0SbBxfMHM1C+hNMlVrtUVHj9e7zfgXU
         JAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E9aFw92hLZgmfeM8u8+BBNczy2uBGBMxNtHEpH2AVdw=;
        b=JLFgUAnqJlWpKi03p7no4KOiZYRO+fjzwpidskvKbw6aDJybz39mdE7eujG32t0U/5
         BL4DgAtPnQ1GN+q3VB6oNSL3RzTkVU1mFAdpfsN7ZrMBDT8YZlNPL9DVIVoxEJEBcCYa
         vO7808HaM7TotbNlNqPhijOWeTNYUvoJhoN3kal0NzZfPiBzLzJf10QxbeeSY5Bqgteq
         Z1B6qsnECInwoQFyxKxYi4FXb59PxQgEzL2fK965bXaSyflkCh7l4GOvDj/J1mAXeuFF
         104n4CO2BG/Q8TGOapYrsl7lG7ZdYXZvOEMImDll5PF8VOXm8KZNxv2I1zxQQUmGclAJ
         3owg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDpfmrvC93Hoiw46ai6239AsjptbbmscajZt6uE+WVWhFZkgpM
	MnuPzmJ+HJcI2eyOM9KLaHw=
X-Google-Smtp-Source: APXvYqymxYltu+exi8X+b0cS/Fh9dpCey2qbZGVWxXuTN3+7FE38MpBPN2ErCv6ZSbltDi+fSK610A==
X-Received: by 2002:a17:90a:2e86:: with SMTP id r6mr96440pjd.67.1567527863787;
        Tue, 03 Sep 2019 09:24:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8209:: with SMTP id x9ls5725516pln.3.gmail; Tue, 03
 Sep 2019 09:24:23 -0700 (PDT)
X-Received: by 2002:a17:902:110b:: with SMTP id d11mr36909963pla.84.1567527863480;
        Tue, 03 Sep 2019 09:24:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567527863; cv=none;
        d=google.com; s=arc-20160816;
        b=gB5muB2Ygj1Gms50E1mbXOiSjkktA0Ma+I7WLmZNvNFCPhj5QhxNAPOS6RuEKdaygB
         v/57Z3FVWyK8sXe0BZEnw2yqfQgWv1aUqyoFuNLPsV5rWr+3n2KCqVBEn9JHvQk3Di+H
         UgFc5jBlG+EcW6sGxjd4NvKMfMZOVBYXoPnrLO/eqnwMhgqIdQJggSw4jG+8ObwxcIGK
         rhNus6sh2P/dUKEd6+mrwzBwtUuqpNUGWF+EWCoia15cOESbexL7+b7XTY+dMojo6gg4
         1DkqR8q4RzlQntKF1Pt6kHcn9r8VvMWW+de7yl/e8ggRIQiEE18HUIBBnGEbbGmigvfA
         L0Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=y+e3X3MFeRPRQ94ud5uQm3RXqxAVNjo2F8aWOFAv0Tg=;
        b=EcTHusgqGcNm+GlkKAirwnRa0MBoOPmRzoRFUGuEeBefbzyMluSl8PhVwkU3IZnx2Q
         pHdqRIBKDaKBEd8ribGq6kd0Yo0d4og8SEUkELjiC4r148aZF4N0d6nxCXDFb1czAWik
         sh3L92hcPcJG41GeS/0k3AllMrk5UPTtyy80Jx9bRDqCWoKvmbHjMjhlq3TaGig22BFb
         RVrlPuqypFlne8C3D5X3uFX3+ouK0v0Mj9YhvM/Tf/LaRBXsuInisdNprNKtsw6YYNcL
         Jaup3MQ/5GO6XkasfG3LgvxNle8iao+RXdOnYVA1O7PUwTxgc0tLthQLs7IvEVpEgkut
         n87g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=cvJtQ5xi;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id x2si1175592pfq.3.2019.09.03.09.24.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 09:24:23 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id x83GNu9c028976
	for <clang-built-linux@googlegroups.com>; Wed, 4 Sep 2019 01:23:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x83GNu9c028976
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id s18so4661024vsa.0
        for <clang-built-linux@googlegroups.com>; Tue, 03 Sep 2019 09:23:56 -0700 (PDT)
X-Received: by 2002:a67:e9cc:: with SMTP id q12mr9756351vso.181.1567527835701;
 Tue, 03 Sep 2019 09:23:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190806211047.232709-1-nhuck@google.com>
In-Reply-To: <20190806211047.232709-1-nhuck@google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 4 Sep 2019 01:23:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNARewhp0TZ1tQ1Sy=R3wbBB0BwY6QasEBg6xmPJ3SpErbg@mail.gmail.com>
Message-ID: <CAK7LNARewhp0TZ1tQ1Sy=R3wbBB0BwY6QasEBg6xmPJ3SpErbg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] Add clang-tidy and static analyzer support to makefile
To: Nathan Huckleberry <nhuck@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=cvJtQ5xi;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Aug 7, 2019 at 6:13 AM Nathan Huckleberry <nhuck@google.com> wrote:
>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
> These patches add clang-tidy and the clang static-analyzer as make
> targets. The goal of these patches is to make static analysis tools
> usable and extendable by any developer or researcher who is familiar
> with basic c++.
>
> The current static analysis tools require intimate knowledge of the internal
> workings of the static analysis.  Clang-tidy and the clang static analyzers
> expose an easy to use api and allow users unfamiliar with clang to
> write new checks with relative ease.
>
> ===Clang-tidy===
>
> Clang-tidy is an easily extendable 'linter' that runs on the AST.
> Clang-tidy checks are easy to write and understand. A check consists of
> two parts, a matcher and a checker. The matcher is created using a
> domain specific language that acts on the AST
> (https://clang.llvm.org/docs/LibASTMatchersReference.html).  When AST
> nodes are found by the matcher a callback is made to the checker. The
> checker can then execute additional checks and issue warnings.
>
> Here is an example clang-tidy check to report functions that have calls
> to local_irq_disable without calls to local_irq_enable and vice-versa.
> Functions flagged with __attribute((annotation("ignore_irq_balancing")))
> are ignored for analysis.
>
> The full patch can be found here (https://reviews.llvm.org/D65828)
>
> ```
> void IrqUnbalancedCheck::registerMatchers(MatchFinder *Finder) {
>   // finds calls to "arch_local_irq_disable" in a function body
>   auto disable =
>               forEachDescendant(
>                   callExpr(
>                       hasDeclaration(
>                           namedDecl(
>                               hasName("arch_local_irq_disable")))).bind("disable"));
>
>   // finds calls to "arch_local_irq_enable" in a function body
>   auto enable =
>               forEachDescendant(
>                   callExpr(
>                       hasDeclaration(
>                           namedDecl(
>                               hasName("arch_local_irq_enable")))).bind("enable"));
>
>   // Looks for function body that has the following property:
>   // ((disable && !enable) || (enable && !disable))
>   auto matcher = functionDecl(
>       anyOf(allOf(disable, unless(enable)), allOf(enable, unless(disable))));
>
>   Finder->addMatcher(matcher.bind("func"), this);
> }
>
> std::string annotation = "ignore_irq_balancing";
> void IrqUnbalancedCheck::check(const MatchFinder::MatchResult &Result) {
>   const auto *MatchedDecl = Result.Nodes.getNodeAs<FunctionDecl>("func");
>   const auto *DisableCall = Result.Nodes.getNodeAs<CallExpr>("disable");
>   const auto *EnableCall = Result.Nodes.getNodeAs<CallExpr>("enable");
>
>   // If the function has __attribute((annotate("ignore_irq_balancing"))
>   for (const auto *Attr : MatchedDecl->attrs()) {
>     if (Attr->getKind() == clang::attr::Annotate) {
>       if(dyn_cast<AnnotateAttr>(Attr)->getAnnotation().str() == annotation) {
>         return;
>       }
>     }
>   }
>
>   if(EnableCall) {
>     diag(MatchedDecl->getLocation(), "call to 'enable_local_irq' without 'disable_local_irq' in %0 ")
>         << MatchedDecl;
>     diag(EnableCall->getBeginLoc(), "call to 'enable_local_irq'", DiagnosticIDs::Note)
>         << MatchedDecl;
>   }
>
>   if(DisableCall) {
>     diag(MatchedDecl->getLocation(), "call to 'disable_local_irq' without 'enable_local_irq' in %0 ")
>         << MatchedDecl;
>     diag(DisableCall->getBeginLoc(), "call to 'disable_local_irq'", DiagnosticIDs::Note)
>         << MatchedDecl;
>   }
> }
> ```
>
> ===Clang static analyzer===
>
> The clang static analyzer is a more powerful static analysis tool that
> uses symbolic execution to find bugs. Currently there is a check that
> looks for potential security bugs from invalid uses of kmalloc and
> kfree. There are several more general purpose checks that are useful for
> the kernel.
>
> The clang static analyzer is well documented and designed to be
> extensible.
> (https://clang-analyzer.llvm.org/checker_dev_manual.html)
> (https://github.com/haoNoQ/clang-analyzer-guide/releases/download/v0.1/clang-analyzer-guide-v0.1.pdf)
>
>
> Why add clang-tidy and the clang static analyzer when other static
> analyzers are already in the kernel?
>
> The main draw of the clang tools is how accessible they are. The clang
> documentation is very nice and these tools are built specifically to be
> easily extendable by any developer. They provide an accessible method of
> bug-finding and research to people who are not overly familiar with the
> kernel codebase.
>
>  Makefile                                      |  3 ++
>  scripts/clang-tools/Makefile.clang-tools      | 35 ++++++++++++++
>  .../{ => clang-tools}/gen_compile_commands.py |  0
>  scripts/clang-tools/parse_compile_commands.py | 47 +++++++++++++++++++
>  4 files changed, 85 insertions(+)
>  create mode 100644 scripts/clang-tools/Makefile.clang-tools
>  rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
>  create mode 100755 scripts/clang-tools/parse_compile_commands.py
>
> diff --git a/Makefile b/Makefile
> index fabc127d127f..49f1d3fa48a8 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -709,6 +709,7 @@ KBUILD_CFLAGS       += $(call cc-option,--param=allow-store-data-races=0)
>
>  include scripts/Makefile.kcov
>  include scripts/Makefile.gcc-plugins
> +include scripts/clang-tools/Makefile.clang-tools
>
>  ifdef CONFIG_READABLE_ASM
>  # Disable optimizations that make assembler listings hard to read.
> @@ -1470,6 +1471,8 @@ help:
>         @echo  '  headers_check   - Sanity check on exported headers'
>         @echo  '  headerdep       - Detect inclusion cycles in headers'
>         @echo  '  coccicheck      - Check with Coccinelle'
> +       @echo  '  clang-analyzer  - Check with clang static analyzer'
> +       @echo  '  clang-tidy      - Check with clang-tidy'
>         @echo  ''
>         @echo  'Kernel selftest:'
>         @echo  '  kselftest       - Build and run kernel selftest (run as root)'
> diff --git a/scripts/clang-tools/Makefile.clang-tools b/scripts/clang-tools/Makefile.clang-tools
> new file mode 100644
> index 000000000000..0adb6df20777
> --- /dev/null
> +++ b/scripts/clang-tools/Makefile.clang-tools
> @@ -0,0 +1,35 @@
> +# SPDX-License-Identifier: GPL-2.0
> +PHONY += clang-tidy
> +HAS_PARALLEL := $(shell (parallel --version 2> /dev/null) | grep 'GNU parallel' 2> /dev/null)
> +clang-tidy:
> +ifdef CONFIG_CC_IS_CLANG
> +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> +ifdef HAS_PARALLEL
> +       #Xargs interleaves multiprocessed output. GNU Parallel does not.
> +       scripts/clang-tools/parse_compile_commands.py compile_commands.json \
> +               | parallel -k -j $(shell nproc) 'echo {} && clang-tidy -p . "-checks=-*,linuxkernel-*" {}'
> +else
> +       @echo "GNU parallel is not installed. Defaulting to non-parallelized runs"
> +       scripts/clang-tools/parse_compile_commands.py compile_commands.json \
> +               | xargs -L 1 -I@ sh -c "echo '@' && clang-tidy -p . '-checks=-*,linuxkernel-*' @"
> +endif
> +else
> +       $(error Clang-tidy requires CC=clang)
> +endif


What is the benefit for wiring this to the Makefile?

Is there any drawback if you implement this in a small
independent shell script or something?


You are already adding a new python script
just for reading the json file.

I would invoke clang-{tidy,analyzer} from that python script.

If you unify these into a python script,
you can support the multiprocessing with a
python library ('import multiprocessing')
without GNU parallel.


Thanks.



> +PHONY += clang-analyzer
> +clang-analyzer:
> +ifdef CONFIG_CC_IS_CLANG
> +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> +ifdef HAS_PARALLEL
> +       #Xargs interleaves multiprocessed output. GNU Parallel does not.
> +       scripts/clang-tools/parse_compile_commands.py compile_commands.json \
> +               | parallel -k -j $(shell nproc) 'echo {} && clang-tidy -p . "-checks=-*,clang-analyzer-*" {}'
> +else
> +       @echo "GNU parallel is not installed. Defaulting to non-parallelized runs"
> +       scripts/clang-tools/parse_compile_commands.py compile_commands.json \
> +               | xargs -L 1 -I@ sh -c "echo '@' && clang-tidy -p . '-checks=-*,clang-analyzer-*' @"
> +endif
> +else
> +       $(error Clang-analyzer requires CC=clang)
> +endif
> diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> similarity index 100%
> rename from scripts/gen_compile_commands.py
> rename to scripts/clang-tools/gen_compile_commands.py
> diff --git a/scripts/clang-tools/parse_compile_commands.py b/scripts/clang-tools/parse_compile_commands.py
> new file mode 100755
> index 000000000000..d6bc1bf9951e
> --- /dev/null
> +++ b/scripts/clang-tools/parse_compile_commands.py
> @@ -0,0 +1,47 @@
> +#!/usr/bin/env python
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Copyright (C) Google LLC, 2019
> +#
> +# Author: Nathan Huckleberry <nhuck@google.com>
> +#
> +"""A helper routine for make clang-tidy to parse compile_commands.json."""
> +
> +import argparse
> +import json
> +import logging
> +import os
> +import re
> +
> +def parse_arguments():
> +  """Set up and parses command-line arguments.
> +  Returns:
> +    file_path: Path to compile_commands.json file
> +  """
> +  usage = """Parse a compilation database and return a list of files
> +  included in the database"""
> +  parser = argparse.ArgumentParser(description=usage)
> +
> +  file_path_help = ('Path to the compilation database to parse')
> +  parser.add_argument('file',  type=str, help=file_path_help)
> +
> +  args = parser.parse_args()
> +
> +  return args.file
> +
> +
> +def main():
> +  filename = parse_arguments()
> +
> +  #Read JSON data into the datastore variable
> +  if filename:
> +    with open(filename, 'r') as f:
> +      datastore = json.load(f)
> +
> +      #Use the new datastore datastructure
> +      for entry in datastore:
> +        print(entry['file'])
> +
> +
> +if __name__ == '__main__':
> +    main()
> --
> 2.22.0.709.g102302147b-goog
>


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARewhp0TZ1tQ1Sy%3DR3wbBB0BwY6QasEBg6xmPJ3SpErbg%40mail.gmail.com.
