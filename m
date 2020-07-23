Return-Path: <clang-built-linux+bncBD66FMGZA4IN5PHH7ACRUBAYGQXPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAA622B650
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 21:00:48 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id i1sf4746640pgn.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 12:00:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595530847; cv=pass;
        d=google.com; s=arc-20160816;
        b=EsX14kN6FpcChr1N2xuB1aS+gLPA6Zwgj9LLdaaUPvRSgGMhUmuMhS6r2Ratj//bLm
         7qC1n9YEckP8hhywp+ee2zPs0ARQYR4oQA+r+lG0zgcFRTVe4i6XxOxJhxgx8dtFFpfr
         Dc7ZeZbOhy/RdhwUZPIANrDrzeYhfBAoSIehP7L2U5zLKDggV2p6k+dwN5KkgvLYSB7H
         KMlNzuBwqgGPO92CupNyYm7MsdP+X5cnBGIbYjATR9rX5EyAasBW1A0bLTAKCAsWLl4C
         BXTNFjYmYFYyeDISgs26A5EfLbprciTpQWiX17dJ+4OLZ3FvPH/nI5oGyO7bvbpJAFiB
         7cnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MjgVSpm4ss2TfLtiZ1nboSChPoyjeZWhVz3H++xDAHM=;
        b=YzuK2/JCDTZVGBVHLJcihTZdeOfgHO0DVzApr10BkfsJbB+1/KZGV+EXjBfIoSmIGA
         Y3pKvAUrM0kBeGPqin11+IfjDASSunHYEKELYLipKqgjZo8os4c07n7YSBjOp5BdST+U
         cilvsM0r35YSkCPOERw7HXFG8QEu5YWiMHm88Ujg6f05Ds4JVTqmPzSA4u4get5yoJl8
         q9zqckB92Zaid3eazZme+7vCSwKlzuspmOmXhvHY60UG7SbI4XUjTTtN5XnhHtZBNeLb
         2LvmEKPeBa9FbAqcSW3N9KqF835/2hLlnKCsmMTbTiyL13gO/bKWZp69TB142OTClBT7
         VLzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="duSED/BK";
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MjgVSpm4ss2TfLtiZ1nboSChPoyjeZWhVz3H++xDAHM=;
        b=c8ulSGUd7hb0/14QxsxXHaNSa7+IthCfqPVaqrk/8DFe/vONZ5GbbaRE7Eevs61O/U
         fTqnRkXXSN+4993JnkmDOotwUQYVIyjzKekwOaTmVymhnER/s1PQD2Y4NI9PZYhl5mLI
         p2pNYFU/rTf5Awwe7IaAMgFgkDyFFVq589XGHg8xQz5htrGyu+SnTN6JRZxmTrbAWujS
         V4Lq5eS3T7znR5E3szLZgh+i7OM39uIZ3UFdLhjUizVEMYkcq4JcFNCoiJKQYKpYQs7L
         mpAH/Aan7LzG85sPbhn5qDvMNeAmEQGlvSPIR5nGlVMEgWbOXHZPO48aHYcXcRFgNWXE
         5/XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MjgVSpm4ss2TfLtiZ1nboSChPoyjeZWhVz3H++xDAHM=;
        b=OHlMX00vzokgU9uoLuJeqJWvyzFy6A1JffjGdi3lpjxamz71Rz6FLxXH7o/d+xkLqt
         REHfOFs0oJLhGn6VVOZ8gMatM+vn82OwMp5V01E3+BN8NgF5jSIxL5J/56bQlD2+uuX/
         KEH2WqIio050qL0YjQDJKCkwQeIvtFEWDSWgKs0qdHkEx7VyWsX8azlXvfUviPBfT+0H
         LEp6OyMTkj1Yge3JaPM0DfV5cAILLVk/Omz9arfRM44K5b0PVtA1U9g4M6pnn+v+YKLs
         Cird6FoNL6MbLz4NA9wqp/Ws74ZBPWkT+ShN+F3nDbbqJClaYCKfUpGyr9ioRsr/Vmnq
         hg/w==
X-Gm-Message-State: AOAM532ytcVanawS0zuU7J14hWrRYM4QDxL0ex8s4Ri2drM4XodcMtxZ
	LlywSgQ6JKNHFvqF+bZb1CI=
X-Google-Smtp-Source: ABdhPJzIM+9NJmxptqelQTDalmN1K8XqzAIid3eBkYpIrtWhzgtx4B+DSlWNCXsqr0g8PCMD+g3xwQ==
X-Received: by 2002:a17:90a:ff0c:: with SMTP id ce12mr1768191pjb.100.1595530846994;
        Thu, 23 Jul 2020 12:00:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f450:: with SMTP id p16ls1834568pgk.5.gmail; Thu, 23 Jul
 2020 12:00:46 -0700 (PDT)
X-Received: by 2002:a62:6dc7:: with SMTP id i190mr5476581pfc.16.1595530846426;
        Thu, 23 Jul 2020 12:00:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595530846; cv=none;
        d=google.com; s=arc-20160816;
        b=y3tkBopJ/edMNA/nVdyaUlVRYDSjJmVcR4O0RsYwuYH0oqHBEcQzB8+4EqQzR1bpGu
         tgp+csY3whNjES+C6fDVDvGneqw66xnKHYhnGzmZxroHpODTWbmwoF+ruFLa3RsWqW7U
         QShOQOTna/zVv0jINdhTAvUoL60v3xHS7E3v7WPyXSBe8f0Z9dcmf7n2bCNS1LUI/p7Y
         sEIeK/GeoyRmX6UVW31vPO8LRipejloCnWdl72w2IGb+rxIyOXf/Qg5WuKzD7g4sBiqx
         eB6Umf6rDrf1Gs3nctJDY/4whyQ6u7Yh8uH9AZfZ6BpBPGinkaHHXOv/PfI7tq38xgqc
         h4FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DB+I8Kmaq5KF9G8vKoLzXXO3hu3am8Qocuw5TfhTotI=;
        b=p2xkrcaYgOrafZes5Ud4XW9hnXVL9EfA/TeNYGaOz6InK8u5edEMrJTIDOfiPB6A50
         /KgssFleWChHOLa6oamuAFwmq2b0WwL6qxehVm9EjuhQDvEI7vD4OaN36LArMl6Xb1T1
         Kl69dbMiwpzyxwI6F6rwkrsf8cC47SoP1mbJHRLrGIyjE4v9amPO1AcwDQDTBY4Owvof
         oYLsuL32ZBF9fZLESpVAjT3n95c3WbavjbjMEX4DSLvQxP7JMbUAwLVpMdKbi5/EOnqO
         QKqbk/QKkvWgI+yp/cu+N6z3kQiMA2w+srVzsTFYVaC6ppMtxj0EU7dECMTW91VludLA
         HghQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="duSED/BK";
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id y9si134757pgv.0.2020.07.23.12.00.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 12:00:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id n4so2169852uae.5
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 12:00:46 -0700 (PDT)
X-Received: by 2002:ab0:4821:: with SMTP id b30mr5462918uad.83.1595530845121;
 Thu, 23 Jul 2020 12:00:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAGG=3QUSOnosdPs7XMWdGdcOWNy_jYrFWT2evb9EwjWSUWaORQ@mail.gmail.com>
 <20200722231045.1421735-1-nhuck@google.com> <CAKwvOdnMS98=4Q_D0DTECGBv8i+A62xDjTS89WtkePr_wME=_A@mail.gmail.com>
In-Reply-To: <CAKwvOdnMS98=4Q_D0DTECGBv8i+A62xDjTS89WtkePr_wME=_A@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 23 Jul 2020 12:00:33 -0700
Message-ID: <CAGG=3QWw3szocG=xyUCmHKVKYiBn9CuETbh8Q_rWHiSW5yw5Ng@mail.gmail.com>
Subject: Re: [PATCH v5] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Pirama Arumuga Nainar <pirama@google.com>
Content-Type: multipart/alternative; boundary="00000000000040ee7105ab20797b"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="duSED/BK";       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::942 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

--00000000000040ee7105ab20797b
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 23, 2020 at 11:45 AM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Wed, Jul 22, 2020 at 4:11 PM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
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
> > (
> https://github.com/haoNoQ/clang-analyzer-guide/releases/download/v0.1/clang-analyzer-guide-v0.1.pdf
> )
> >
> > The main draw of the clang tools is how accessible they are. The clang
> > documentation is very nice and these tools are built specifically to be
> > easily extendable by any developer. They provide an accessible method of
> > bug-finding and research to people who are not overly familiar with the
> > kernel codebase.
> >
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> > Changes v4->v5
> > * Use PEP8 style
> > * Other misc style fixes
> >  MAINTAINERS                                   |  1 +
> >  Makefile                                      |  3 +
> >  scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
> >  .../{ => clang-tools}/gen_compile_commands.py |  0
> >  scripts/clang-tools/run-clang-tools.py        | 76 +++++++++++++++++++
> >  5 files changed, 103 insertions(+)
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
> > @@ -747,6 +747,7 @@ KBUILD_CFLAGS       += $(call
> cc-option,-fno-allow-store-data-races)
> >
> >  include scripts/Makefile.kcov
> >  include scripts/Makefile.gcc-plugins
> > +include scripts/clang-tools/Makefile.clang-tools
> >
> >  ifdef CONFIG_READABLE_ASM
> >  # Disable optimizations that make assembler listings hard to read.
> > @@ -1543,6 +1544,8 @@ help:
> >         @echo  '  export_report   - List the usages of all exported
> symbols'
> >         @echo  '  headerdep       - Detect inclusion cycles in headers'
> >         @echo  '  coccicheck      - Check with Coccinelle'
> > +       @echo  '  clang-analyzer  - Check with clang static analyzer'
> > +       @echo  '  clang-tidy      - Check with clang-tidy'
> >         @echo  ''
> >         @echo  'Tools:'
> >         @echo  '  nsdeps          - Generate missing symbol namespace
> dependencies'
> > diff --git a/scripts/clang-tools/Makefile.clang-tools
> b/scripts/clang-tools/Makefile.clang-tools
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
> > +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-tidy
> compile_commands.json
> > +else
> > +       $(error clang-tidy requires CC=clang)
> > +endif
> > +
> > +PHONY += clang-analyzer
> > +clang-analyzer:
> > +ifdef CONFIG_CC_IS_CLANG
> > +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> > +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-analyzer
> compile_commands.json
> > +else
> > +       $(error clang-analyzer requires CC=clang)
> > +endif
> > diff --git a/scripts/gen_compile_commands.py
> b/scripts/clang-tools/gen_compile_commands.py
> > similarity index 100%
> > rename from scripts/gen_compile_commands.py
> > rename to scripts/clang-tools/gen_compile_commands.py
> > diff --git a/scripts/clang-tools/run-clang-tools.py
> b/scripts/clang-tools/run-clang-tools.py
> > new file mode 100755
> > index 000000000000..41ed15d99933
> > --- /dev/null
> > +++ b/scripts/clang-tools/run-clang-tools.py
> > @@ -0,0 +1,76 @@
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
> > +import logging
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
> > +        Has keys: [file, type]
> > +    """
> > +    usage = """Run clang-tidy or the clang static-analyzer on a
> > +        compilation database."""
> > +    parser = argparse.ArgumentParser(description=usage)
> > +
> > +    type_help = "Type of analysis to be performed"
> > +    parser.add_argument("type",
> > +                        choices=["clang-tidy", "clang-analyzer"],
> > +                        help=type_help)
> > +    file_path_help = "Path to the compilation database to parse"
> > +    parser.add_argument("file", type=str, help=file_path_help)
> > +
> > +    args = parser.parse_args()
> > +
> > +    return args
> > +
> > +
> > +def init(l, t):
> > +    global lock
> > +    global analysis_type
> > +    lock = l
> > +    analysis_type = t
> > +
> > +
> > +def run_analysis(entry):
> > +    filename = entry["file"]
> > +    # Disable all checks, then re-enable the ones we want
> > +    checks = "-checks=-*,{}".format("linuxkernel-*" if analysis_type ==
> > +                                    "clang-tidy" else
> "clang-analyzer-*")
>
>
> ugh, sorry, I have one last nit.  This line bothers me for two reasons:
> 1. The use of ternary statements is preferred when it is more concise
> than than an if/else statement.  If the ternary doesn't fit on one
> line, is it still more concise?  The wrapping of the condition here
> is...upsetting.
> 2. `format` is nice when string interpolation is needed within the
> middle of a string, but when you're simply appending to the end of a
> string, it might be more concise to use the `+=` operator.
>
> I think this statement would would be nicer as:
> ```python
> checks = "-check=-*,"
> checks += "linuxkernel-*" if analysis_type == "clang-tidy" else
> "clang-analyzer-*"
> ```
> If PEP8 requires line length <= 80; then maybe
> ```python
> checks = "-check=-*,"
> if analysis_type == "clang-tidy":
>   checks += "linuxkernel-*"
> else:
>   checks += "clang-analyzer-*"
> ```
> is more appropriate.  Bill, thoughts?
>

I like the second option better.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWw3szocG%3DxyUCmHKVKYiBn9CuETbh8Q_rWHiSW5yw5Ng%40mail.gmail.com.

--00000000000040ee7105ab20797b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jul 23, 2020 at 11:45 AM Nick Des=
aulniers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google=
.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Wed, Jul 22, 2020 at 4:11 PM &#39;Natha=
n Huckleberry&#39; via Clang Built<br>
Linux &lt;<a href=3D"mailto:clang-built-linux@googlegroups.com" target=3D"_=
blank">clang-built-linux@googlegroups.com</a>&gt; wrote:<br>
&gt;<br>
&gt; This patch adds clang-tidy and the clang static-analyzer as make<br>
&gt; targets. The goal of this patch is to make static analysis tools<br>
&gt; usable and extendable by any developer or researcher who is familiar<b=
r>
&gt; with basic c++.<br>
&gt;<br>
&gt; The current static analysis tools require intimate knowledge of the<br=
>
&gt; internal workings of the static analysis. Clang-tidy and the clang<br>
&gt; static analyzers expose an easy to use api and allow users unfamiliar<=
br>
&gt; with clang to write new checks with relative ease.<br>
&gt;<br>
&gt; =3D=3D=3DClang-tidy=3D=3D=3D<br>
&gt;<br>
&gt; Clang-tidy is an easily extendable &#39;linter&#39; that runs on the A=
ST.<br>
&gt; Clang-tidy checks are easy to write and understand. A check consists o=
f<br>
&gt; two parts, a matcher and a checker. The matcher is created using a<br>
&gt; domain specific language that acts on the AST<br>
&gt; (<a href=3D"https://clang.llvm.org/docs/LibASTMatchersReference.html" =
rel=3D"noreferrer" target=3D"_blank">https://clang.llvm.org/docs/LibASTMatc=
hersReference.html</a>).=C2=A0 When AST<br>
&gt; nodes are found by the matcher a callback is made to the checker. The<=
br>
&gt; checker can then execute additional checks and issue warnings.<br>
&gt;<br>
&gt; Here is an example clang-tidy check to report functions that have call=
s<br>
&gt; to local_irq_disable without calls to local_irq_enable and vice-versa.=
<br>
&gt; Functions flagged with __attribute((annotation(&quot;ignore_irq_balanc=
ing&quot;)))<br>
&gt; are ignored for analysis. (<a href=3D"https://reviews.llvm.org/D65828"=
 rel=3D"noreferrer" target=3D"_blank">https://reviews.llvm.org/D65828</a>)<=
br>
&gt;<br>
&gt; =3D=3D=3DClang static analyzer=3D=3D=3D<br>
&gt;<br>
&gt; The clang static analyzer is a more powerful static analysis tool that=
<br>
&gt; uses symbolic execution to find bugs. Currently there is a check that<=
br>
&gt; looks for potential security bugs from invalid uses of kmalloc and<br>
&gt; kfree. There are several more general purpose checks that are useful f=
or<br>
&gt; the kernel.<br>
&gt;<br>
&gt; The clang static analyzer is well documented and designed to be<br>
&gt; extensible.<br>
&gt; (<a href=3D"https://clang-analyzer.llvm.org/checker_dev_manual.html" r=
el=3D"noreferrer" target=3D"_blank">https://clang-analyzer.llvm.org/checker=
_dev_manual.html</a>)<br>
&gt; (<a href=3D"https://github.com/haoNoQ/clang-analyzer-guide/releases/do=
wnload/v0.1/clang-analyzer-guide-v0.1.pdf" rel=3D"noreferrer" target=3D"_bl=
ank">https://github.com/haoNoQ/clang-analyzer-guide/releases/download/v0.1/=
clang-analyzer-guide-v0.1.pdf</a>)<br>
&gt;<br>
&gt; The main draw of the clang tools is how accessible they are. The clang=
<br>
&gt; documentation is very nice and these tools are built specifically to b=
e<br>
&gt; easily extendable by any developer. They provide an accessible method =
of<br>
&gt; bug-finding and research to people who are not overly familiar with th=
e<br>
&gt; kernel codebase.<br>
&gt;<br>
&gt; Signed-off-by: Nathan Huckleberry &lt;<a href=3D"mailto:nhuck@google.c=
om" target=3D"_blank">nhuck@google.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes v4-&gt;v5<br>
&gt; * Use PEP8 style<br>
&gt; * Other misc style fixes<br>
&gt;=C2=A0 MAINTAINERS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 1 +<br>
&gt;=C2=A0 Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 3 +<br>
&gt;=C2=A0 scripts/clang-tools/Makefile.clang-tools=C2=A0 =C2=A0 =C2=A0 | 2=
3 ++++++<br>
&gt;=C2=A0 .../{ =3D&gt; clang-tools}/gen_compile_commands.py |=C2=A0 0<br>
&gt;=C2=A0 scripts/clang-tools/run-clang-tools.py=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 76 +++++++++++++++++++<br>
&gt;=C2=A0 5 files changed, 103 insertions(+)<br>
&gt;=C2=A0 create mode 100644 scripts/clang-tools/Makefile.clang-tools<br>
&gt;=C2=A0 rename scripts/{ =3D&gt; clang-tools}/gen_compile_commands.py (1=
00%)<br>
&gt;=C2=A0 create mode 100755 scripts/clang-tools/run-clang-tools.py<br>
&gt;<br>
&gt; diff --git a/MAINTAINERS b/MAINTAINERS<br>
&gt; index 1d4aa7f942de..a444564e5572 100644<br>
&gt; --- a/MAINTAINERS<br>
&gt; +++ b/MAINTAINERS<br>
&gt; @@ -4198,6 +4198,7 @@ W:=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https:/=
/clangbuiltlinux.github.io/" rel=3D"noreferrer" target=3D"_blank">https://c=
langbuiltlinux.github.io/</a><br>
&gt;=C2=A0 B:=C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/ClangBuiltLi=
nux/linux/issues" rel=3D"noreferrer" target=3D"_blank">https://github.com/C=
langBuiltLinux/linux/issues</a><br>
&gt;=C2=A0 C:=C2=A0 =C2=A0 =C2=A0irc://<a href=3D"http://chat.freenode.net/=
clangbuiltlinux" rel=3D"noreferrer" target=3D"_blank">chat.freenode.net/cla=
ngbuiltlinux</a><br>
&gt;=C2=A0 F:=C2=A0 =C2=A0 =C2=A0Documentation/kbuild/llvm.rst<br>
&gt; +F:=C2=A0 =C2=A0 =C2=A0scripts/clang-tools/<br>
&gt;=C2=A0 K:=C2=A0 =C2=A0 =C2=A0\b(?i:clang|llvm)\b<br>
&gt;<br>
&gt;=C2=A0 CLEANCACHE API<br>
&gt; diff --git a/Makefile b/Makefile<br>
&gt; index fe0164a654c7..3e2df010b342 100644<br>
&gt; --- a/Makefile<br>
&gt; +++ b/Makefile<br>
&gt; @@ -747,6 +747,7 @@ KBUILD_CFLAGS=C2=A0 =C2=A0 =C2=A0 =C2=A0+=3D $(cal=
l cc-option,-fno-allow-store-data-races)<br>
&gt;<br>
&gt;=C2=A0 include scripts/Makefile.kcov<br>
&gt;=C2=A0 include scripts/Makefile.gcc-plugins<br>
&gt; +include scripts/clang-tools/Makefile.clang-tools<br>
&gt;<br>
&gt;=C2=A0 ifdef CONFIG_READABLE_ASM<br>
&gt;=C2=A0 # Disable optimizations that make assembler listings hard to rea=
d.<br>
&gt; @@ -1543,6 +1544,8 @@ help:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;=C2=A0 export_report=
=C2=A0 =C2=A0- List the usages of all exported symbols&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;=C2=A0 headerdep=C2=
=A0 =C2=A0 =C2=A0 =C2=A0- Detect inclusion cycles in headers&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;=C2=A0 coccicheck=C2=
=A0 =C2=A0 =C2=A0 - Check with Coccinelle&#39;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;=C2=A0 clang-analyzer=C2=
=A0 - Check with clang static analyzer&#39;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;=C2=A0 clang-tidy=C2=A0 =
=C2=A0 =C2=A0 - Check with clang-tidy&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;Tools:&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;=C2=A0 nsdeps=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Generate missing symbol namespace dependencie=
s&#39;<br>
&gt; diff --git a/scripts/clang-tools/Makefile.clang-tools b/scripts/clang-=
tools/Makefile.clang-tools<br>
&gt; new file mode 100644<br>
&gt; index 000000000000..5c9d76f77595<br>
&gt; --- /dev/null<br>
&gt; +++ b/scripts/clang-tools/Makefile.clang-tools<br>
&gt; @@ -0,0 +1,23 @@<br>
&gt; +# SPDX-License-Identifier: GPL-2.0<br>
&gt; +#<br>
&gt; +# Copyright (C) Google LLC, 2020<br>
&gt; +#<br>
&gt; +# Author: Nathan Huckleberry &lt;<a href=3D"mailto:nhuck@google.com" =
target=3D"_blank">nhuck@google.com</a>&gt;<br>
&gt; +#<br>
&gt; +PHONY +=3D clang-tidy<br>
&gt; +clang-tidy:<br>
&gt; +ifdef CONFIG_CC_IS_CLANG<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0$(PYTHON3) scripts/clang-tools/gen_compile=
_commands.py<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0$(PYTHON3) scripts/clang-tools/run-clang-t=
ools.py clang-tidy compile_commands.json<br>
&gt; +else<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0$(error clang-tidy requires CC=3Dclang)<br=
>
&gt; +endif<br>
&gt; +<br>
&gt; +PHONY +=3D clang-analyzer<br>
&gt; +clang-analyzer:<br>
&gt; +ifdef CONFIG_CC_IS_CLANG<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0$(PYTHON3) scripts/clang-tools/gen_compile=
_commands.py<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0$(PYTHON3) scripts/clang-tools/run-clang-t=
ools.py clang-analyzer compile_commands.json<br>
&gt; +else<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0$(error clang-analyzer requires CC=3Dclang=
)<br>
&gt; +endif<br>
&gt; diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen=
_compile_commands.py<br>
&gt; similarity index 100%<br>
&gt; rename from scripts/gen_compile_commands.py<br>
&gt; rename to scripts/clang-tools/gen_compile_commands.py<br>
&gt; diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-to=
ols/run-clang-tools.py<br>
&gt; new file mode 100755<br>
&gt; index 000000000000..41ed15d99933<br>
&gt; --- /dev/null<br>
&gt; +++ b/scripts/clang-tools/run-clang-tools.py<br>
&gt; @@ -0,0 +1,76 @@<br>
&gt; +#!/usr/bin/env python<br>
&gt; +# SPDX-License-Identifier: GPL-2.0<br>
&gt; +#<br>
&gt; +# Copyright (C) Google LLC, 2020<br>
&gt; +#<br>
&gt; +# Author: Nathan Huckleberry &lt;<a href=3D"mailto:nhuck@google.com" =
target=3D"_blank">nhuck@google.com</a>&gt;<br>
&gt; +#<br>
&gt; +&quot;&quot;&quot;A helper routine run clang-tidy and the clang stati=
c-analyzer on<br>
&gt; +compile_commands.json.<br>
&gt; +&quot;&quot;&quot;<br>
&gt; +<br>
&gt; +import argparse<br>
&gt; +import json<br>
&gt; +import logging<br>
&gt; +import multiprocessing<br>
&gt; +import os<br>
&gt; +import subprocess<br>
&gt; +import sys<br>
&gt; +<br>
&gt; +<br>
&gt; +def parse_arguments():<br>
&gt; +=C2=A0 =C2=A0 &quot;&quot;&quot;Set up and parses command-line argume=
nts.<br>
&gt; +=C2=A0 =C2=A0 Returns:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 args: Dict of parsed args<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 Has keys: [file, type]<br>
&gt; +=C2=A0 =C2=A0 &quot;&quot;&quot;<br>
&gt; +=C2=A0 =C2=A0 usage =3D &quot;&quot;&quot;Run clang-tidy or the clang=
 static-analyzer on a<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 compilation database.&quot;&quot;&quot;<b=
r>
&gt; +=C2=A0 =C2=A0 parser =3D argparse.ArgumentParser(description=3Dusage)=
<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 type_help =3D &quot;Type of analysis to be performed&qu=
ot;<br>
&gt; +=C2=A0 =C2=A0 parser.add_argument(&quot;type&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 choices=3D[&quot;clang-tidy&quot;, &quot;clang-analyzer&quot=
;],<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 help=3Dtype_help)<br>
&gt; +=C2=A0 =C2=A0 file_path_help =3D &quot;Path to the compilation databa=
se to parse&quot;<br>
&gt; +=C2=A0 =C2=A0 parser.add_argument(&quot;file&quot;, type=3Dstr, help=
=3Dfile_path_help)<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 args =3D parser.parse_args()<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 return args<br>
&gt; +<br>
&gt; +<br>
&gt; +def init(l, t):<br>
&gt; +=C2=A0 =C2=A0 global lock<br>
&gt; +=C2=A0 =C2=A0 global analysis_type<br>
&gt; +=C2=A0 =C2=A0 lock =3D l<br>
&gt; +=C2=A0 =C2=A0 analysis_type =3D t<br>
&gt; +<br>
&gt; +<br>
&gt; +def run_analysis(entry):<br>
&gt; +=C2=A0 =C2=A0 filename =3D entry[&quot;file&quot;]<br>
&gt; +=C2=A0 =C2=A0 # Disable all checks, then re-enable the ones we want<b=
r>
&gt; +=C2=A0 =C2=A0 checks =3D &quot;-checks=3D-*,{}&quot;.format(&quot;lin=
uxkernel-*&quot; if analysis_type =3D=3D<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;clang-tidy&q=
uot; else &quot;clang-analyzer-*&quot;)<br>
<br>
<br>
ugh, sorry, I have one last nit.=C2=A0 This line bothers me for two reasons=
:<br>
1. The use of ternary statements is preferred when it is more concise<br>
than than an if/else statement.=C2=A0 If the ternary doesn&#39;t fit on one=
<br>
line, is it still more concise?=C2=A0 The wrapping of the condition here<br=
>
is...upsetting.<br>
2. `format` is nice when string interpolation is needed within the<br>
middle of a string, but when you&#39;re simply appending to the end of a<br=
>
string, it might be more concise to use the `+=3D` operator.<br>
<br>
I think this statement would would be nicer as:<br>
```python<br>
checks =3D &quot;-check=3D-*,&quot;<br>
checks +=3D &quot;linuxkernel-*&quot; if analysis_type =3D=3D &quot;clang-t=
idy&quot; else<br>
&quot;clang-analyzer-*&quot;<br>
```<br>
If PEP8 requires line length &lt;=3D 80; then maybe<br>
```python<br>
checks =3D &quot;-check=3D-*,&quot;<br>
if analysis_type =3D=3D &quot;clang-tidy&quot;:<br>
=C2=A0 checks +=3D &quot;linuxkernel-*&quot;<br>
else:<br>
=C2=A0 checks +=3D &quot;clang-analyzer-*&quot;<br>
```<br>
is more appropriate.=C2=A0 Bill, thoughts?<br></blockquote><div><br></div><=
div>I like the second option better.</div><div><br></div><div>-bw=C2=A0</di=
v></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QWw3szocG%3DxyUCmHKVKYiBn9CuETbh8Q_rWH=
iSW5yw5Ng%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWw3szocG%3DxyUCmHKVKYi=
Bn9CuETbh8Q_rWHiSW5yw5Ng%40mail.gmail.com</a>.<br />

--00000000000040ee7105ab20797b--
