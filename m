Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS5UTD4AKGQEHKZQHGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C8921903C
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 21:11:08 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id f66sf27973354ilh.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jul 2020 12:11:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594235467; cv=pass;
        d=google.com; s=arc-20160816;
        b=JUvQ4gVD7InurJBYR+8iiceFkeJ7VPM6uMpeIiwjRDSfw63NOVFoA49dnK75rD4bNG
         pgu4A0gdI1ukygRLN0JwBByfGnuxLV2bFx+Wjafgsl5an47fUDkaRVE+VmBXeb9iVbyr
         bBBzRpxGdlf2FZ3dSKxY2+IpMelBXzGs7gCYc1h9ZQzH0/w9xCQc5u3GZJMTkgiXHzYm
         PUhtTLWc2oOuaSF3mJAeN6IoWgnHEiPJX8aR4Sp1SSgEX9uRI2N9xECEzprp22sKu+8R
         AH2CqcbZqQ/2LbfSmKtXwFB+BXmoEI3dMt3kVNYL4S2//iJCQpN/dfPWL0SXkGru/h7t
         JzcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=N2OhdVQG4u7rlSQSB7zmd69Im2/0cgsKEgUDb0d3ZOk=;
        b=iC1Lwht53Z+Za8MYfCyR/JLkk1On3KP+ygRsEYVY0ZBKdOKCkeiTxjNNh9Fg5sjbwT
         I/TjJ1Zwwlqsrz+R2PQq0zKLGNzlBQQlU/pIp+0kk8HupKGNOT+A/Olp5HEDoyaIYIKj
         xA/YiEEM9isCz9/LsX6SGlfTQSc/1rWoi+FiCoDZZvCWRIolKDiteKJMsvFZk3j8cPLH
         0WZiSssxvYTVjbyCOPUzMgdzxJKa+5PfuRPHVhSe8JnS00AB5ZGbTm4yweSQdTS+IiOs
         PlNV6zOaA4xPiBkEakf52Zi4orFD9KkjZvAQLcdxyCSh42WsOuUR9s7mryvqjiPhNdmi
         JgwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X6bJ6Y+z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N2OhdVQG4u7rlSQSB7zmd69Im2/0cgsKEgUDb0d3ZOk=;
        b=HXYPm01L0BEgH6cVnL1iE/PGREpITH32YN3Shi9poXGzyKAamTQlZZ0W5O+ElPGlPy
         LFroHXkhd5yy0lzNp6FO125v7CtUcSv6Ff/f/ye0sDM/8zJ1XHNE3y+lX+O5a9YwhhMw
         ATvkgtBizxmqYg8jzz1mEAlJCt8e5JKs2E+E9QELJ6mM3QXl9qsOVj2JoQRMQk2ZqzjV
         EtEl9VtLIgE0IGrrFhRcru7AOcyKeLPN3nvdxgzkbVycKH09weJYoTHFHzClfqOLPd1g
         lWfqJr2K1Fq+mhmCLooCgJs0cdPEXi1vlDAWWkVNaQ/BujI9Izj9nlwGJPnAP+9GPvE9
         zRWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N2OhdVQG4u7rlSQSB7zmd69Im2/0cgsKEgUDb0d3ZOk=;
        b=HmxbtJfCnCwcCE0tA1EbtCSiCAqjNU7RlkL6Of5xtn/77h/zfbOnC7RaIOKRhqia97
         GUpeYGx0/7QnWxNOKMBuwprP/p/lKnTQQRbeupuFOiJwjuRR+W8rjcGvlpoivmrzh526
         19FpXzgg6fefMUZZ062K8x4VR+VK7ME5kIzwnmXJddfhybUGCatfNlDxe4VseZP3gV1W
         XOGtjzrQOk2Lh8oLbh7ifsOlBWXGEDgcOobnS5YYVRDX+LkAKvfF9VuTbmMAhkYl6VaB
         aKj04Y9Do/3ogCe5fKetJXYjoqWBnk1wbIIOhSMDowhL4s8QG4Ew4w3TJIlCX6YNHdX3
         fEOQ==
X-Gm-Message-State: AOAM5302Cf6qaEkK8142Bswk5Dch3r3SPuPt7GOzzNU4cB5ne27udo3L
	uPlQ9DDmMq896c3xbnzsesU=
X-Google-Smtp-Source: ABdhPJwLWX6Xb3mRejm36ttEUGWMtjSGnLTGQaeR+vh1VDxrdTzOafbPYDsaklB2nlQ6P/htrseUIQ==
X-Received: by 2002:a92:cc4d:: with SMTP id t13mr41871896ilq.283.1594235467570;
        Wed, 08 Jul 2020 12:11:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2dc6:: with SMTP id l6ls557494iow.4.gmail; Wed, 08
 Jul 2020 12:11:07 -0700 (PDT)
X-Received: by 2002:a5d:96d7:: with SMTP id r23mr38488399iol.126.1594235467154;
        Wed, 08 Jul 2020 12:11:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594235467; cv=none;
        d=google.com; s=arc-20160816;
        b=k8zUz2WAu4Xk5FHIHtSZsfYaweKqqvlStIqpHi+l8URm6FQDbZD5OK+vr2HAneqPut
         2B9Xfhr8tutROOSSzIKknNwfOxwj5W/ObJrKrWA9DdnU8oMRzKtG44Ou8q8DS1WoYKrJ
         bciLYHv1fbEh/Y9W5ZgC60Q/hXz63Gs4K27ByHkyr/RYgw8YPfN/OOqPnmTied79aUGP
         cRINGS3WPcJeNLjdBt+DQ1bHzpNgQ1CVx1BI72vPaotZvEfAIlolccEagMQxWJG+EG/2
         3EN1kGQAgOrcop3cG/jPb+A1LjfNiUKHyTlqAB2e4Nhr4QKFx1nvOLfMCE0KpIfcuEau
         DYQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yxhJDf/2WXbSmuQPjyjWBq1+qeb8t2AWfb/ta8dv/wE=;
        b=krPNX/WWfPVV9gN7ij1SmzljkmjnHrRqXTgR6RCC6OYUzSqi+3tIblhwMcljKE2T8e
         +pQwhaDDZcIuGyQYvBr8J391NwLD789ybvKmPeaQpQ8G2lVzbDtKfmGHd2UhA4k2kl57
         8nd2LqQy4J+yEcmn0CcvkPzdUZo/2nEqDfNp0DNoqqEgEzQgc/FPysMCiNwoe4Iadp5+
         gkTrlnp/Loh6AQM0SiZn64X537iiAnMg6ZB9FcDWB2214b1b1q7VXp+/SFDCnlDNf4FN
         L/TucmPNfehbN1quKekMTeGjpN3oFpWqIEUzix2vz4XZg88jUK4EBY79Sseve/Fqpv/6
         urkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X6bJ6Y+z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i20si41950iow.2.2020.07.08.12.11.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2020 12:11:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id u185so18338671pfu.1
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jul 2020 12:11:07 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr49600515pgf.10.1594235466163;
 Wed, 08 Jul 2020 12:11:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200708181905.257691-1-nhuck@google.com>
In-Reply-To: <20200708181905.257691-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 8 Jul 2020 12:10:54 -0700
Message-ID: <CAKwvOdmKsCedU=Vt_SBSGnf4gKc9Ae4sknn_Lj+kw9f0HY5MMA@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nathan Huckleberry <nhuck@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tom Roeder <tmroeder@google.com>, 
	Bill Wendling <morbo@google.com>, Pirama Arumuga Nainar <pirama@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X6bJ6Y+z;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Jul 8, 2020 at 11:21 AM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> This patch adds clang-tidy and the clang static-analyzer as make
> targets. The goal of this patch is to make static analysis tools
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
> are ignored for analysis. (https://reviews.llvm.org/D65828)
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
> The main draw of the clang tools is how accessible they are. The clang
> documentation is very nice and these tools are built specifically to be
> easily extendable by any developer. They provide an accessible method of
> bug-finding and research to people who are not overly familiar with the
> kernel codebase.
>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
> Changes V1 -> V2:
> * Remove dependencies on GNU Parallel
> * * Clang-tidy/analyzer now invoked directly from python
> Link: https://lkml.org/lkml/2019/8/6/941
>
>  Makefile                                      |  3 +
>  scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
>  .../{ => clang-tools}/gen_compile_commands.py |  0

+ Tom for the rename.

I think we should add scripts/clang-tools/ to MAINTAINERS under
CLANG/LLVM SUPPORT:
```
diff --git a/MAINTAINERS b/MAINTAINERS
index c87b94e6b2f6..42602231929c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4211,6 +4211,7 @@ W:        https://clangbuiltlinux.github.io/
 B:     https://github.com/ClangBuiltLinux/linux/issues
 C:     irc://chat.freenode.net/clangbuiltlinux
 F:     Documentation/kbuild/llvm.rst
+F:     scripts/clang-tools/
 K:     \b(?i:clang|llvm)\b

 CLEANCACHE API
```
that way we get cc'ed properly on proposed changes (should folks use
scripts/get_maintainer.pl).

>  scripts/clang-tools/run-clang-tools.py        | 77 +++++++++++++++++++
>  4 files changed, 103 insertions(+)
>  create mode 100644 scripts/clang-tools/Makefile.clang-tools
>  rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
>  create mode 100755 scripts/clang-tools/run-clang-tools.py
>
> diff --git a/Makefile b/Makefile
> index fe0164a654c7..3e2df010b342 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -747,6 +747,7 @@ KBUILD_CFLAGS       += $(call cc-option,-fno-allow-store-data-races)
>
>  include scripts/Makefile.kcov
>  include scripts/Makefile.gcc-plugins
> +include scripts/clang-tools/Makefile.clang-tools
>
>  ifdef CONFIG_READABLE_ASM
>  # Disable optimizations that make assembler listings hard to read.
> @@ -1543,6 +1544,8 @@ help:
>         @echo  '  export_report   - List the usages of all exported symbols'
>         @echo  '  headerdep       - Detect inclusion cycles in headers'
>         @echo  '  coccicheck      - Check with Coccinelle'
> +       @echo  '  clang-analyzer  - Check with clang static analyzer'
> +       @echo  '  clang-tidy      - Check with clang-tidy'
>         @echo  ''
>         @echo  'Tools:'
>         @echo  '  nsdeps          - Generate missing symbol namespace dependencies'
> diff --git a/scripts/clang-tools/Makefile.clang-tools b/scripts/clang-tools/Makefile.clang-tools
> new file mode 100644
> index 000000000000..e09dc1a8efff
> --- /dev/null
> +++ b/scripts/clang-tools/Makefile.clang-tools
> @@ -0,0 +1,23 @@
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Copyright (C) Google LLC, 2020
> +#
> +# Author: Nathan Huckleberry <nhuck@google.com>
> +#
> +PHONY += clang-tidy
> +clang-tidy:
> +ifdef CONFIG_CC_IS_CLANG
> +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-tidy compile_commands.json
> +else
> +       $(error Clang-tidy requires CC=clang)

s/Clang/clang/ to match the case of the target.

> +endif
> +
> +PHONY += clang-analyzer
> +clang-analyzer:
> +ifdef CONFIG_CC_IS_CLANG
> +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py static-analyzer compile_commands.json
> +else
> +       $(error Clang-analyzer requires CC=clang)

s/Clang/clang/ to match the case of the target.

> +endif
> diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> similarity index 100%
> rename from scripts/gen_compile_commands.py
> rename to scripts/clang-tools/gen_compile_commands.py
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> new file mode 100755
> index 000000000000..d429a150e23a
> --- /dev/null
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -0,0 +1,77 @@
> +#!/usr/bin/env python
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Copyright (C) Google LLC, 2020
> +#
> +# Author: Nathan Huckleberry <nhuck@google.com>
> +#
> +"""A helper routine run clang-tidy and the clang static-analyzer on
> +compile_commands.json."""
> +
> +import argparse
> +import json
> +import logging
> +import multiprocessing
> +import os
> +import re
> +import subprocess
> +
> +def parse_arguments():
> +  """Set up and parses command-line arguments.
> +  Returns:
> +    args: Dict of parsed args
> +      Has keys 'file' and 'type'
> +  """
> +  usage = """Run clang-tidy or the clang static-analyzer on a
> +  compilation database."""
> +  parser = argparse.ArgumentParser(description=usage)
> +
> +  type_help = ('Type of analysis to be performed')
> +  parser.add_argument('type', choices=['clang-tidy', 'static-analyzer'],
> +                      help=type_help)
> +  file_path_help = ('Path to the compilation database to parse')
> +  parser.add_argument('file',  type=str, help=file_path_help)

I don't know if the kernel has a preferred style for Python, but I
think it would be good to be consistent in the use of single vs double
quotes for strings.  My preference is for double quotes, but I don't
know enough about the various PEPs for style or if the kernel has a
preferred style for these.

+ Bill who knows a bit about Python style.

> +
> +  args = parser.parse_args()
> +
> +  return args
> +
> +def init(l,t):
> +  global lock
> +  global analysis_type
> +  lock = l
> +  analysis_type = t

Is this canonical Python?  Maybe wrap these functions into methods of
an object you construct, that way you can assign these as instance
variables against `self`, rather than using global variables.

> +
> +def run_analysis(entry):
> +  filename = entry['file']
> +  p = None
> +  if(analysis_type == "clang-tidy"):
> +    p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
> +                        "-checks=-*,linuxkernel-*", filename],
> +                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)
> +  if(analysis_type == "static-analyzer"):
> +    p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
> +                        "-checks=-*,clang-analyzer-*", filename],
> +                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)

When you have a fair amount of duplication between two branches of an
if/else (for instance, same method invocation and number of
parameters, just slight differences in parameter values), consider if
you can use a ternary to simplify or make the code more concise. That
would also help avoid initializing `p` to `None`:

checks = "-checks=-*,linuxkernel-*" if analysis_type == "clang-tidy"
else "-checks=-*,clang-analyzer-*"
p = subprocess.run(["clang-tidy", "-p", os.getcwd(), checks,
    stdout=subprocess.PIPE, stderr=subprocess.PIPE]

then maybe do some validation of the analysis_type when validating
command line arguments earlier.

> +  lock.acquire()
> +  print(entry['file'])
> +  os.write(1, p.stdout)
> +  os.write(2, p.stderr)

Please use sys.stdout and sys.stderr rather than magic constants for
their file descriptors.

> +  lock.release()
> +
> +
> +def main():
> +  args = parse_arguments()
> +  filename = args.file
> +
> +  #Read JSON data into the datastore variable
> +  if filename:

Isn't there a way to make command line arguments required with
Argparse? In that case, would you still need the conditional?

> +    with open(filename, 'r') as f:
> +      datastore = json.load(f)
> +
> +      lock = multiprocessing.Lock()
> +      pool = multiprocessing.Pool(initializer=init, initargs=(lock,args.type,))
> +      pool.map(run_analysis,datastore)

Please use a space to separate parameters in a parameter list.

> +
> +if __name__ == '__main__':
> +    main()

So rather than call a function named main, you could simply construct
an object, then call a method on it or have the constructor simply
kick off the analysis (essentially a mix of `main` and `init`).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmKsCedU%3DVt_SBSGnf4gKc9Ae4sknn_Lj%2Bkw9f0HY5MMA%40mail.gmail.com.
