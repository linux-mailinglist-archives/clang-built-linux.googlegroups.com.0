Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2WJUDVQKGQETODSM7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A72A272E
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 21:18:03 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id a18sf3398418ybm.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 12:18:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567106282; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENWIWQAZ7bc+m3jes8b0cJMNCprqFEUjT227cun36Wu4tzrHa9ppOinp+s8MHP2m1+
         /gkwAzO+iAARPuQmq5IJxwAScXyctwneHXItRyN02imr5NPPM0QLIV96mokMc9d0JrVn
         Ajy1ltSdkxECGV8kueBWYQs19sG95zMIi5nhgTXO9Q9o8bFRZa/XJXUigrr1p9uTRaeH
         gJqGMqrXoAeHpHEPzfjsbmZ0pt7hlASqfiirqraXt9rGmfOt9NjoLLEQ9TVSMTiFv+RS
         alWw8lxEqDm/1gOFgu4lC+iSb50MN8GW+KNVPwj9QWdNJl9l59JSlL/F66Yk7Kjn3guT
         r8RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+Wo73Pr0Y7eauFjN5woq0x2nVRhcshSeI1BDuOV4jTs=;
        b=noa9dWID+OKUS4mzCDmR00ol1aC9sFCkht7V+DKvlW2T6m2Oo8+8jQnm69qPzee+B2
         iospBtzLZuRaV9r0J5sZFFSa2BBOtPcWYqHXMiG16Hccv8+LEcN5kqeq/cD0xsultWNp
         eHn8jyAQEWL5E8iPff4C3AImMgy4BRxP34g3m8FPLup5RpEP5ZL2fRVedy28kE7tF3Fj
         ViXhwMjKIVVpu8SY2kYYy6tWD66F3TaDPxCmBxqFj2CEuRikZUC2XEwQfDsdVEPJh5/m
         SVsVUo1oC78yfstNOY4cz0Bo9QJe6NkOc6c7dzaTAi0imWOOnKbHpBM0CQFKmTwH4K7M
         itZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Fewo6YSb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Wo73Pr0Y7eauFjN5woq0x2nVRhcshSeI1BDuOV4jTs=;
        b=cKKa8mo0fKX4UYWtzrZR+gwq/g8bcQBIzAxWYpyeCfwuW53qADad5wHE4X81D/r0KT
         PUsAo/Es/FE+Bol0MxeMMkgatpESVbuTsRqepcple6OLnJI61ABtOZ6DhQNLuLDaTjd0
         hIJmMMpc+dfZpRUw29X9m2e3zvlDwT6p/K88IPcgufuj8NDjAgKW8xCSXV6naBk+QMou
         jx5AzD4RDd8EoIO2jMl8I0zY+IfZ89rKY36CyEEeWq+O0qtHHkZHm3pBR+WB2Asgs4zg
         nroG9l1petT/ElSsU16Wsb6WiM+U8vkxuvN8KZPVMULt7A7mJuKhB6cExz0SrpT6NKnJ
         cTFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+Wo73Pr0Y7eauFjN5woq0x2nVRhcshSeI1BDuOV4jTs=;
        b=Zzzz4gKHiYAX3yKjqFoWfqrWf/r8A+2PCPVmFCVhMnD3jUVAIPm+mEhhGB/xH4utCf
         2Ia8eCdTOnJKiSaBtwSkgYnzTYWpy6qWUCcHZEs08Lc8czd27gH24Asc4kGsAsSfxHy9
         mups7OxRPtSMp6Hplgez46VrkLGSD52eFTqY8FjnAKwCIIJHHg5IxUhV7e1sSiggG8vZ
         aIZi2gJSF7F+5RxIyTmLfpAdTJb0+3lyXn8ZU08wU7hj43xqdDYBwPHWYPaul7Sw04kp
         9YAmOf7r9iWIAKombEUz+WD5OmMhLiHaKtB5Kx+Z/NtEXrKzGhCr/m5eTXPBn29fBUKU
         8WLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUGU4g8lOZgLgeDmtuHRMH8foPjS8p3qj8IKcB3TjMR51Iaaqt0
	jBv+YWF8eJ8iM3Qi+n/69E4=
X-Google-Smtp-Source: APXvYqwvHCqY1d90a1tDk2Hg+F7kCbFXZpGQ9g1n886z2KcF5n2JhvEAOJ4u/jLHGE9TaGxTTHJbdw==
X-Received: by 2002:a81:794a:: with SMTP id u71mr3312506ywc.211.1567106282586;
        Thu, 29 Aug 2019 12:18:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4c48:: with SMTP id z69ls62718ywa.6.gmail; Thu, 29 Aug
 2019 12:18:02 -0700 (PDT)
X-Received: by 2002:a81:87c1:: with SMTP id x184mr8710907ywf.241.1567106282287;
        Thu, 29 Aug 2019 12:18:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567106282; cv=none;
        d=google.com; s=arc-20160816;
        b=L9Uyx9N6HZnKwQS41KeogBQpy89RyeesIrifP7evwKmSRDpPPqXSD+Y9alYP/vyQEg
         VrzsCMt1MDHHKHWWoIuCNGu0GH2AAAYfcLYxmtyc7L2RgT0P/lTSgDH6VoRaHcBCQYYp
         fMsSa4+YGTW1rR9YuYT11AqjD95yA7BdxXgXROU+Ay6rDNfT0yETQAzo1Xvr7vcjZDN4
         rjBQ196ZJBp8p6O5532MWFkr7wuvjYGieXpaQZ2AB60ahL1zIGDPZ6Iccp1PThIvTBWh
         xtk7dcufzu07ZwDylk/7haXdLdISBD2Dp1CXe/tor8fm/hkhaosIYU99c5TNYVgeuhPt
         MbNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=h82RDi7ZzNpfF4AJAy2P12pYrYk0GOcUf/rAKW7b39I=;
        b=Yz1U2NsfmhxnwWswb3Lgmlwwf6FVpxc51lY+OiagwskktV5D6Ky7RE/CTtCY4gmB0U
         ZIcOkf/zlIuewsQxK2M4eSKkgvOeZ87F+9c6pdF6Qx3e3u0cIAdD1qvs1YKFEUJB4PHT
         uBBFKX7KhAX24eNym0J3thZgHQWOAMF+b7WISok2k+LAZoqjy/IJ30xBA6TzSGMeFnzH
         u0vcSdbgV3yuPIm8Cv5YJuBhTWFt2vGaHL3UqyHqw+18dTylE9O074sAqUKr039875XM
         SnJNL+lScVAW+hnZLHDdUURmIcHk3ZdbQlocoFnv6nJ1nEiE8/KX13GPRk2p1DJuXB4P
         ZH+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Fewo6YSb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id r134si312971ybc.4.2019.08.29.12.18.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 12:18:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id o3so2013438plb.13
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 12:18:02 -0700 (PDT)
X-Received: by 2002:a17:902:9889:: with SMTP id s9mr11870896plp.100.1567106281373;
        Thu, 29 Aug 2019 12:18:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c35sm2864072pgl.72.2019.08.29.12.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 12:18:00 -0700 (PDT)
Date: Thu, 29 Aug 2019 12:17:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Huckleberry <nhuck@google.com>
Cc: mark.rutland@arm.com, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	linux-kbuild@vger.kernel.org
Subject: Re: [RFC PATCH 1/2] Add clang-tidy and static analyzer support to
 makefile
Message-ID: <201908291207.3AE0872B88@keescook>
References: <20190806211047.232709-1-nhuck@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190806211047.232709-1-nhuck@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Fewo6YSb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

[ Added kbuild and Masahiro to CC ... ]

On Tue, Aug 06, 2019 at 02:10:46PM -0700, Nathan Huckleberry wrote:
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---

These two lines should be at the end of your commit log. :)

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

^ i.e. they should be right here...

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
> @@ -709,6 +709,7 @@ KBUILD_CFLAGS	+= $(call cc-option,--param=allow-store-data-races=0)
>  
>  include scripts/Makefile.kcov
>  include scripts/Makefile.gcc-plugins
> +include scripts/clang-tools/Makefile.clang-tools
>  
>  ifdef CONFIG_READABLE_ASM
>  # Disable optimizations that make assembler listings hard to read.
> @@ -1470,6 +1471,8 @@ help:
>  	@echo  '  headers_check   - Sanity check on exported headers'
>  	@echo  '  headerdep       - Detect inclusion cycles in headers'
>  	@echo  '  coccicheck      - Check with Coccinelle'
> +	@echo  '  clang-analyzer  - Check with clang static analyzer'
> +	@echo  '  clang-tidy      - Check with clang-tidy'

I think this is great; more people will be able to run these tests.

>  	@echo  ''
>  	@echo  'Kernel selftest:'
>  	@echo  '  kselftest       - Build and run kernel selftest (run as root)'
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
> +	$(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> +ifdef HAS_PARALLEL

Is it worth falling back to xargs? Are there builders where clang-tidy
or clang-analyzer are installed but parallel isn't? (i.e. it might just
be better to simply require parallel.) Note that there's no test for
python3 -- we just try to run it. :)

> +	#Xargs interleaves multiprocessed output. GNU Parallel does not.
> +	scripts/clang-tools/parse_compile_commands.py compile_commands.json \
> +		| parallel -k -j $(shell nproc) 'echo {} && clang-tidy -p . "-checks=-*,linuxkernel-*" {}'
> +else
> +	@echo "GNU parallel is not installed. Defaulting to non-parallelized runs"
> +	scripts/clang-tools/parse_compile_commands.py compile_commands.json \
> +		| xargs -L 1 -I@ sh -c "echo '@' && clang-tidy -p . '-checks=-*,linuxkernel-*' @"
> +endif
> +else
> +	$(error Clang-tidy requires CC=clang)
> +endif
> +
> +PHONY += clang-analyzer
> +clang-analyzer:
> +ifdef CONFIG_CC_IS_CLANG
> +	$(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> +ifdef HAS_PARALLEL
> +	#Xargs interleaves multiprocessed output. GNU Parallel does not.
> +	scripts/clang-tools/parse_compile_commands.py compile_commands.json \
> +		| parallel -k -j $(shell nproc) 'echo {} && clang-tidy -p . "-checks=-*,clang-analyzer-*" {}'
> +else
> +	@echo "GNU parallel is not installed. Defaulting to non-parallelized runs"
> +	scripts/clang-tools/parse_compile_commands.py compile_commands.json \
> +		| xargs -L 1 -I@ sh -c "echo '@' && clang-tidy -p . '-checks=-*,clang-analyzer-*' @"
> +endif
> +else
> +	$(error Clang-analyzer requires CC=clang)
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

And this is nice to have because now there is a real consumer of
gen_compile_commands.py.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908291207.3AE0872B88%40keescook.
