Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBBMGV74QKGQEVHU4N4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F86823D81D
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 10:44:55 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id y13sf10122429pfp.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 01:44:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596703494; cv=pass;
        d=google.com; s=arc-20160816;
        b=kfnUwY+lcAf3/mS8XGkGxCOroXoKwzCTJS6f05NMz+CLAvFHUVe4x3tGWTEcBl4hDe
         c2XT/ZTW8/VI1c8+9izs1febuWHFvqn8OVgQpRNzBx0rUgg9F+6FR2YsTzVZnGMw3AiT
         +LL6iJqhrAR5/joEMZD/AvdBadFkMSr+WZsLjRh0kAMo2yfPdxH0SkXjH/TVAQhC9dvn
         yrcAwZODQmZ4jaSHeUfttdvp4WU6ohPoQMb8mOeqJeuGyrg5cX6NtVaIHKpw2GdPO+7J
         lFS92j05D0/Z86y16lGiPUPL7nFRJBD9x+lHG8xsR8y9H5+H+puz7SwnSeKvI6fxVgQ1
         2lXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=0apc05PVHxfIgT3byawiobL4Ts2n45olMt+NC1j69TI=;
        b=JSg+kjre6GB1JJp1aJMAE84sP1xiLFh4xPl/unE4QMuRFrG6dYn6JMSWF1wPvchgcX
         7v5TPFrOwLq1NrhcUYYdLRexQthK7EXEhEOmqz6GGvSrhfdT8kKV3HYDVmyksmIUfmp9
         OEs8s9G1NVOTqd89j3dpTz4FwWIOQ6D6kiCJ7cZoVZRHgie4cI26CHIpL0zaWRfUtB6B
         eqSi7VtkDxMrI5ewUAF6GiwhBnPpCt+uG9SlCyGxLt3DnQt4KwAKIBbglYWVmZzh0z/K
         NPz6/ZYyvAfFyB2F0CaTfawM9MshzVJLom/p83niAFgedsBFtMB9lFX0Cey6sjtzrsbT
         LVvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vp+LFRXI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0apc05PVHxfIgT3byawiobL4Ts2n45olMt+NC1j69TI=;
        b=H2yIf0QzfqlXNHtQ7mFmywsct2OYC/xb+bmyokueXtM/deGqLPpXRnu6SMEzTJ6Bw4
         DAA5LvDpClAKSd4JuTbb4+fHRiEJ/Hu7xHXhoBHg4YpR5MswNt6LNxlprZvZWQI3BpsK
         jexqoU5JR2gItk2vv468Js0rDmHfeeY0ppdUyGyESyYbD0X7DQqpuG0AI8jeQRAV2ztk
         2OwQNtdJhkl2YclEK4w3QhRzEKenYfWripQ5Czw3MqbU8/WAmdXEOMMpgd735pOveWV3
         yF0hYvwMgVP36lFoG5oeldbW4fQbDATUIzAc3BqDtpBUEUvdSdM5cRMEXkzD0uwsuXhb
         D7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0apc05PVHxfIgT3byawiobL4Ts2n45olMt+NC1j69TI=;
        b=s3RSTk4OCpTHrBwt2tzcvXoll+gS6N0C9ZDpPpVNrw08bRKwepmr9h1uISq6RtcxVO
         HKI5US4fkh/xJPUQ8EBhPLHPUotz1eQqH3p40BEsfSC5obDkIGfRB3gRHgCNhO2XsQqV
         wXQFPhlQnF/JzNZr25dA/Z/V1XICTk4lvcAHLEPvCnDJ/AFN7hAOagEEAz3GIXqNhIWv
         jphD4gmtsh1bwAwUVPfiC1GQgG5NJVCLQIbsNTzQvb2of2E1nnjc+td5D8JoeQUu3RUH
         v5vyOHNwwMC4wTlNClkYzmzydnppkENp+qli9lUbzV5AyU6yUHegid0HM1bZGikGLdGE
         iHWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uxOJeCfKrBqp4gKs1xTelFOPZ15xEM28+ryIYrUV8hnxCu5jC
	7gdlM4CAsC3NHzxysYEgFm8=
X-Google-Smtp-Source: ABdhPJzSkMRNk9nVsPCqbOuiu5ZdxeKvAGbeFRKYoL1waVCy4n4kkAFQcQgoAU9+9DVkLlIjizFDVA==
X-Received: by 2002:a62:520b:: with SMTP id g11mr7408703pfb.168.1596703493987;
        Thu, 06 Aug 2020 01:44:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ab10:: with SMTP id p16ls1885800pff.3.gmail; Thu, 06 Aug
 2020 01:44:53 -0700 (PDT)
X-Received: by 2002:a65:428d:: with SMTP id j13mr6478562pgp.211.1596703493617;
        Thu, 06 Aug 2020 01:44:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596703493; cv=none;
        d=google.com; s=arc-20160816;
        b=JainslZgdnXFy6KAGu2D86vstHqGIjPGrksJCf2slGTahSvgnO/HhQLwNpXKzfbVYD
         Q4JwwQM8eVtyerHtx6HHlEnsaJPft5lvvRkeocBzki4YNoXITdrXiLEtEwDZt/LtycIW
         +bhj22YN3ioVpaWxxxicjK9CMW6iVxwA/Q1aMT5TDGUS7IfCstnHVYjXoV5v82arPqy2
         zmmlL94Zf0Vp/vUQtassMTcxF3yKpHGh4ej9Dfj8GcmrQY5TU4B/UNWlMsShiW/KYxhq
         0W2Ilu7C34yoSPgqsvB1ec1gqA9A6pMOT+bS7IOJF66v1+x+iIuJGOrVTIcgxilxqXhm
         5LyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=iLRyjLHDiM1j11Hh0Jt/NFe8uSNpgWQk85B8WTb/cO0=;
        b=l/xet4DMB5Wut176O5Owu82muFCp3ka6Li5sK5xSkTsNmcSHRbmwVhy2kAu/NZo/u+
         HF197vkkIYIw8sp7cZfDo5mE7TnoFAyoV3YLy1xNPoMsQeVMpw77pN3VQE5fFFQTvrQt
         f1dyL0qn6L0P26ZhpD5ssu8goEeRVSCsCcMoDtwetF57MKrKJhX9ulTD88T/2fM+f+SY
         68pwd9nGvAsqH+2fQHmJMxwNsh4oi+13aYNSR1my9twojiNqb7KnlXbWGeWYmK0/2gcI
         tjZ/9E2BUmaO+b+ARuCQxGcdN9IpuYCzLChdhfJnxA7v7ms+K9Omj9TsR/0xlWHsutxI
         SUtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vp+LFRXI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id i18si227394pju.2.2020.08.06.01.44.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Aug 2020 01:44:53 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 0768iVlL020575
	for <clang-built-linux@googlegroups.com>; Thu, 6 Aug 2020 17:44:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0768iVlL020575
X-Nifty-SrcIP: [209.85.222.53]
Received: by mail-ua1-f53.google.com with SMTP id q68so11516826uaq.0
        for <clang-built-linux@googlegroups.com>; Thu, 06 Aug 2020 01:44:32 -0700 (PDT)
X-Received: by 2002:ab0:41:: with SMTP id 59mr4940875uai.40.1596703471156;
 Thu, 06 Aug 2020 01:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
 <20200728004736.3590053-1-nhuck@google.com>
In-Reply-To: <20200728004736.3590053-1-nhuck@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 6 Aug 2020 17:43:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT-AO9_Y-qunRvPbBYf7GZnoE6bxYKFNtcdKAKV8d_A+w@mail.gmail.com>
Message-ID: <CAK7LNAT-AO9_Y-qunRvPbBYf7GZnoE6bxYKFNtcdKAKV8d_A+w@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=vp+LFRXI;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Jul 28, 2020 at 9:47 AM Nathan Huckleberry <nhuck@google.com> wrote:
>
> This patch adds clang-tidy and the clang static-analyzer as make
> targets. The goal of this patch is to make static analysis tools
> usable and extendable by any developer or researcher who is familiar
> with basic c++.
>
> The current static analysis tools require intimate knowledge of the
> internal workings of the static analysis. Clang-tidy and the clang
> static analyzers expose an easy to use api and allow users unfamiliar
> with clang to write new checks with relative ease.
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
> Changes v6->v7
> * Fix issues with relative paths
> * Additional style fixes
>  MAINTAINERS                                   |  1 +
>  Makefile                                      |  3 +
>  scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
>  .../{ => clang-tools}/gen_compile_commands.py |  0
>  scripts/clang-tools/run-clang-tools.py        | 74 +++++++++++++++++++
>  5 files changed, 101 insertions(+)
>  create mode 100644 scripts/clang-tools/Makefile.clang-tools
>  rename scripts/{ => clang-tools}/gen_compile_commands.py (100%)
>  create mode 100755 scripts/clang-tools/run-clang-tools.py
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1d4aa7f942de..a444564e5572 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4198,6 +4198,7 @@ W:        https://clangbuiltlinux.github.io/
>  B:     https://github.com/ClangBuiltLinux/linux/issues
>  C:     irc://chat.freenode.net/clangbuiltlinux
>  F:     Documentation/kbuild/llvm.rst
> +F:     scripts/clang-tools/
>  K:     \b(?i:clang|llvm)\b
>
>  CLEANCACHE API
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
> index 000000000000..5c9d76f77595
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
> +       $(error clang-tidy requires CC=clang)
> +endif
> +
> +PHONY += clang-analyzer
> +clang-analyzer:
> +ifdef CONFIG_CC_IS_CLANG
> +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-analyzer compile_commands.json
> +else
> +       $(error clang-analyzer requires CC=clang)
> +endif



You can unify the almost same two rules.

PHONY += clang-tidy clang-analyzer
clang-tidy clang-analyzer:
ifdef CONFIG_CC_IS_CLANG
        $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
        $(PYTHON3) scripts/clang-tools/run-clang-tools.py $@
compile_commands.json
else
        $(error $@ requires CC=clang)
endif




But, before we proceed, please tell me
what this check is intended for.





Case 1)
Build the kernel with CC=clang,
and then run clang-tidy without CC=clang.

$ make CC=clang defconfig
$ make CC=clang -j$(nproc)
$ make clang-tidy

scripts/clang-tools/Makefile.clang-tools:13: *** clang-tidy requires
CC=clang.  Stop.




Case 2)
Build the kernel using GCC,
and then run clang-tidy with CC=clang.

$ make defconfig
$ make -j$(nproc)
$ make CC=clang clang-tidy

This patch happily runs clang-tidy
although compile_commands.json
contains GCC commands.





So, it checks if you have passed CC=clang
to "make clang-tidy", where I do not see
any user of the $(CC) variable.

It does not care whether you have built
the kernel with GCC or Clang.



What happens if you run clang-tidy against
compile_commands.json that contains GCC
commands?


I also care about stale commands
in compile_commands.json.


gen_compile_commands.py creates compile_commands.json
based on *.cmd files it found.

If you rebuild the kernel for various settings
using GCC/clang without "make clean",
stale .*.cmd files will grow.

compile_commands.json will pick up commands
from older compilation, i.e. the end up with
the mixture of GCC/Clang commands.

So, I'd like to know how clang-tidy handles
the GCC commands from compile_commands.json





> diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> similarity index 100%
> rename from scripts/gen_compile_commands.py
> rename to scripts/clang-tools/gen_compile_commands.py
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> new file mode 100755
> index 000000000000..fa7655c7cec0
> --- /dev/null
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -0,0 +1,74 @@
> +#!/usr/bin/env python
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Copyright (C) Google LLC, 2020
> +#
> +# Author: Nathan Huckleberry <nhuck@google.com>
> +#
> +"""A helper routine run clang-tidy and the clang static-analyzer on
> +compile_commands.json.
> +"""
> +
> +import argparse
> +import json
> +import multiprocessing
> +import os
> +import subprocess
> +import sys
> +
> +
> +def parse_arguments():
> +    """Set up and parses command-line arguments.
> +    Returns:
> +        args: Dict of parsed args
> +        Has keys: [path, type]
> +    """
> +    usage = """Run clang-tidy or the clang static-analyzer on a
> +        compilation database."""
> +    parser = argparse.ArgumentParser(description=usage)
> +
> +    type_help = "Type of analysis to be performed"
> +    parser.add_argument("type",
> +                        choices=["clang-tidy", "clang-analyzer"],
> +                        help=type_help)
> +    path_help = "Path to the compilation database to parse"
> +    parser.add_argument("path", type=str, help=path_help)
> +
> +    return parser.parse_args()
> +
> +
> +def init(l, a):
> +    global lock
> +    global args
> +    lock = l
> +    args = a
> +
> +
> +def run_analysis(entry):
> +    # Disable all checks, then re-enable the ones we want
> +    checks = "-checks=-*,"
> +    if args.type == "clang-tidy":
> +        checks += "linuxkernel-*"
> +    else:
> +        checks += "clang-analyzer-*"
> +    p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
> +                       stdout=subprocess.PIPE,
> +                       stderr=subprocess.STDOUT,
> +                       cwd=entry["directory"])
> +    with lock:
> +        sys.stderr.buffer.write(p.stdout)
> +
> +
> +def main():
> +    args = parse_arguments()
> +
> +    lock = multiprocessing.Lock()
> +    pool = multiprocessing.Pool(initializer=init, initargs=(lock, args))
> +    # Read JSON data into the datastore variable
> +    with open(args.path, "r") as f:
> +        datastore = json.load(f)
> +        pool.map(run_analysis, datastore)
> +
> +
> +if __name__ == "__main__":
> +    main()
> --
> 2.28.0.rc0.142.g3c755180ce-goog
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT-AO9_Y-qunRvPbBYf7GZnoE6bxYKFNtcdKAKV8d_A%2Bw%40mail.gmail.com.
