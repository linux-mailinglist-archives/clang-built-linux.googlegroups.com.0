Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRXI5X4AKGQEX6VGBLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6615E22D274
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jul 2020 01:52:40 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id q71sf7084236pjc.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 16:52:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595634759; cv=pass;
        d=google.com; s=arc-20160816;
        b=e3X1Zr7R8/a2owSzA3U3gKn/nUaPoQo/Ex+n+kcUHmA7S4PYF2RsquZUuAx3EHagg+
         iSxsohFZ7wv1EK7l9UB/lNKRglcBX4fikIyDn6bbN2CZN5dds9JLH5nE2wjuhxlUBt4E
         GMreuGzbU0HARuCVmeNAtHn2sm4n4Qi2e8V8zNf+iXf2rLp4/8rH4j/jTULMfi7fyhxZ
         VqSJYKQlRDeKBsHu+eVutOWYPX4FiqNcYLJUzCOy4UJ5irZBF39Aeib8R0HXT3Vbe5Q+
         UQZ9PQGSPTpfwHF6pC2BIpnPx3oi8skWUrmAk3A5stAYiG+BR4FHANtRlemB4QhprDHd
         gRog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=s7HLb5sjR9X7BRwKgKDPWXRg6spkJQMTOWHlvBtbus4=;
        b=QZrDmU5Rk8/wSfZQ84j2piOrCCM/1JF4DWGHVIhfc/GfsRPWuZ9i3ftGQK+IyIpWSk
         tJJmfeHfQnWnPAHXV+cVMdU6lmEfLAx5wiz6UqGuIK85vGkeF8hn2JKr4pTwfotZptzr
         nipihjvbCAiJyngLbvFbFjG0xL8uy9zOG4qjw5pUYAfA7MmRnyi7oU44+uyj95ORQGPb
         qjZnddpDvsF+vaMJI3/0geA3+/dVnpvl0Alrq5M/aHnEAhooqg2esxFQcN6MXdOj/e1B
         x5IlQd+zWEL3ef86PT4THyLF6G5OJlD2GbhMOuwNtsCxSKD5mAtd/b99SS9AdChmco+2
         4grw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WDEWNkl4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7HLb5sjR9X7BRwKgKDPWXRg6spkJQMTOWHlvBtbus4=;
        b=l042H8mTBB8quyj/MKXpIXKCdLX4OeV7edcJ5+F7COUmm25r/iHEu7KcLkzH6UsKf7
         dX0x5KSIw2gNnNi6VdMZPMpbjQkwkOjIB68BizAIP0qdkwryvGWclsewThyD6ph2wWal
         LrUYrlMeHbhbwO1a2b+v8kgF2H1/w1aS75KCkcszw3AXGt9FIqX0FeCvk7l47nH7vbJH
         KqtUAZKrcvCsa6cLtLgPswrJn0WEpNOeTvcAuGf9/iEk2QbwJxnfS0hESlNNeWsNzo80
         njpObbbJYSp/QIST0NZXjBq8TCUZb5vAaF5SafE/fIylGy9TUFLWiAVz+Jm9kzBpeNlh
         1o6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7HLb5sjR9X7BRwKgKDPWXRg6spkJQMTOWHlvBtbus4=;
        b=e1470FtWMgmicE3Wu9G1G+GWkSrOzm4qYo6g8dDJII84pep90sj/8zXswX0H2Y9lTG
         Pwhb/jG+M3WxT5EqkL70cluAOCTTW9eoCFbcmFrrzs0lLsIM0rVhFzIEOvJlc2Ndx23z
         tOAxQ2k1JN0ARkli63szlDtBbQa4KpzFxN8D6WSZA5lm3Mh8fNA6KpVaJ3+EUSFY0udQ
         vGPv9xNIjiqt8EjKfxb1tO4OeMQ3mQuRvCq9l1NcjjfS2LjJVu893PKi6QeehdvSTdyY
         j42TUSwVZKnmLbOGcrZoAeq6aOUATOz5u/Hk/hTHYIAJrkTCEpBT5tSLYCga4UnK1hD+
         boTg==
X-Gm-Message-State: AOAM5317fiowj9j5oGLEad3+ws4EnT/sI1imYtHa4J2SgGNJHTobKzpZ
	5kxbMJ3IVV/pGyyiRViWPl0=
X-Google-Smtp-Source: ABdhPJwWMvfsOp263nf5oFeM3XShn7Woyf7sffmID8JNZEAO/bO4shcUCtDosiBjx1b0Zzg3kjfTGA==
X-Received: by 2002:a62:3446:: with SMTP id b67mr10546111pfa.184.1595634759021;
        Fri, 24 Jul 2020 16:52:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c8:: with SMTP id j8ls4039284plt.8.gmail; Fri, 24
 Jul 2020 16:52:38 -0700 (PDT)
X-Received: by 2002:a17:90a:5d15:: with SMTP id s21mr8011558pji.154.1595634758562;
        Fri, 24 Jul 2020 16:52:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595634758; cv=none;
        d=google.com; s=arc-20160816;
        b=KcCoQCZnps9MyXZChcX5muEi2kXgFi4LzcOkuFqrrSrYxKhVf0AZxDsi9ejpNUsyCd
         rXpsh8J6sodQ0VzbHHlre/zr1JmP7/FBrsmRR+eZ+IfTJzbXHUgjqa9IP8n99sW3Tdba
         abhTSPnKsnzUIXTDMTc22ZlWsvX5FMtTT3Jd3BUoEwu7FVElT+5+naGk1GXQRW0GMUFs
         QMgDQ7hKi4BMJnKFGypTHj+8exVqQuHRfj8LNAwESvCDxb+SJHMYUNSt98hpWy1xoSoQ
         7uwNmqxsMCLBDBzq10QvP8yf+Hpj9Hk2LNHVPApQFyqXX7eKKr/BtWrEoKJBhiCFtw7g
         l5aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4BCBDdYVKr2pnpemi8Z83oTWDFHWkw+Kw4e1jr8VSz4=;
        b=JfsFGtDMIoJgmAKiM1qdI1pRJ6UUbjzH4dd9Q9NvYsJtSe2jKquBai4KR2VlTVGYOz
         1A+lUNYBOsM1cYZ8k5nr2Ade2SD2EObmC3TxxW/2yy2EkJ3JlzeloRHj+U+I/bmDwLWT
         fUGOUktoHDFnDGq2UI9SQYSaaJM0omFaXK37lektNyK3AALDL/GhPPwnhBfpsmGY/6vY
         g5Y8NXUgI/mGUtUmhdLzhz3En9UQa/w/u3KV6M0znzNvaRx4I82wGMZk/4EWOr9cW6PV
         3FDBl2frIjrbfFqUJAYPO5Rloc8exTD8O1N7y9s2Vs8Z2H/VWAtvxrd11Pfp18bv+xPr
         R1tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WDEWNkl4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id s21si412010pfh.2.2020.07.24.16.52.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 16:52:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id m16so5424858pls.5
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jul 2020 16:52:38 -0700 (PDT)
X-Received: by 2002:a17:90a:21ef:: with SMTP id q102mr7975971pjc.101.1595634757961;
 Fri, 24 Jul 2020 16:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAGG=3QWw3szocG=xyUCmHKVKYiBn9CuETbh8Q_rWHiSW5yw5Ng@mail.gmail.com>
 <20200724193551.2158677-1-nhuck@google.com>
In-Reply-To: <20200724193551.2158677-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 24 Jul 2020 16:52:26 -0700
Message-ID: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
Subject: Re: [PATCH v6] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nathan Huckleberry <nhuck@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Pirama Arumuga Nainar <pirama@google.com>, Bill Wendling <morbo@google.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WDEWNkl4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

On Fri, Jul 24, 2020 at 12:38 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
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

Thanks, patch LGTM now, but when I run clang-tidy for x86, I get a
bunch of errors that make this look broken.

Let's sort this out internally, next week?

For aarch64 defconfig clang-tidy already observes 3 instances of
linuxkernel-must-check-errs. Nice.

I think the script that generates compile_commands.json doesn't limit
itself to the current arch; if I don't do a bunch of `ARCH=x make
clean` I get additional garbage in the analyses from garbage in the
compile_commands.json.


> ---
> Changes v5->v6
> * Minor style fixes
>  MAINTAINERS                                   |  1 +
>  Makefile                                      |  3 +
>  scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
>  .../{ => clang-tools}/gen_compile_commands.py |  0
>  scripts/clang-tools/run-clang-tools.py        | 77 +++++++++++++++++++
>  5 files changed, 104 insertions(+)
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
> diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> similarity index 100%
> rename from scripts/gen_compile_commands.py
> rename to scripts/clang-tools/gen_compile_commands.py
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> new file mode 100755
> index 000000000000..1f4cd706ec01
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
> +compile_commands.json.
> +"""
> +
> +import argparse
> +import json
> +import logging
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
> +        Has keys: [file, type]
> +    """
> +    usage = """Run clang-tidy or the clang static-analyzer on a
> +        compilation database."""
> +    parser = argparse.ArgumentParser(description=usage)
> +
> +    type_help = "Type of analysis to be performed"
> +    parser.add_argument("type",
> +                        choices=["clang-tidy", "clang-analyzer"],
> +                        help=type_help)
> +    file_path_help = "Path to the compilation database to parse"
> +    parser.add_argument("file", type=str, help=file_path_help)
> +
> +    return parser.parse_args()
> +
> +
> +def init(l, t):
> +    global lock
> +    global analysis_type
> +    lock = l
> +    analysis_type = t
> +
> +
> +def run_analysis(entry):
> +    filename = entry["file"]
> +    # Disable all checks, then re-enable the ones we want
> +    checks = "-checks=-*,"
> +    if analysis_type == "clang-tidy":
> +        checks += "linuxkernel-*"
> +    else:
> +        checks += "clang-analyzer-*"
> +    p = subprocess.run(
> +        ["clang-tidy", "-p", os.getcwd(), checks, filename],
> +        stdout=subprocess.PIPE,
> +        stderr=subprocess.STDOUT)
> +    with lock:
> +        sys.stderr.buffer.write(p.stdout)
> +
> +
> +def main():
> +    args = parse_arguments()
> +    filename = args.file
> +
> +    lock = multiprocessing.Lock()
> +    pool = multiprocessing.Pool(initializer=init, initargs=(lock, args.type))
> +    # Read JSON data into the datastore variable
> +    with open(filename, "r") as f:
> +        datastore = json.load(f)
> +        pool.map(run_analysis, datastore)
> +
> +
> +if __name__ == "__main__":
> +    main()
> --
> 2.28.0.rc0.142.g3c755180ce-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200724193551.2158677-1-nhuck%40google.com.



--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnni_G2tw%2B0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ%40mail.gmail.com.
