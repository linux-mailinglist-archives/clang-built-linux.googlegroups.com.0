Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU5V474AKGQEVMOZ2UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA0022B5FF
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 20:45:42 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id s2sf4001925plr.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 11:45:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595529940; cv=pass;
        d=google.com; s=arc-20160816;
        b=P0HXdrI5RMAI6gHBNmGbBe/LzXyuVAwFEJIBT80iqtTZT+aIWRb0AFXCiioDQuAkUI
         QX7/XMKtc3fV4CUmz21+ekunNGZVSe9Av5vpNVr8Mh6xLnOFVmOYyOUKrAnufE1YY9l9
         9QogCODezjKfA9XgZbuVH8KA4n4ja1+mMaR9RRdWWKS49CnIgnNl6C8MsYYouClB6+E5
         ltHBLXFsrX/CFCSurSVOWrjLuQi8GK8ggCofa4/l9lwyUDnj8KLCe2B0etgp0y4LLnv3
         XfYGlFl/y3iUOm0yGdZS+RBO5fLhPn1tdClxP6O2zHNUtcIutGCHl7iA/zP78VAPVL3f
         9SGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OIXzW9/OV8q9P1r32vY/euTtv7Fm5e122rZD4ScMfiI=;
        b=R+l546EeyDyZB65K7OyruVLIt+nqEbGvTRAggYTCcudmIzxJz9SbEdd10DKer2nAnm
         QgpFKWrkDYi2u1LpnJMsRH8uYd7Fvv0FZ/h86N7eOUJw0+857QBSbAZ6cuBHWAhEZhrC
         Xzawz5g6/dvrmrTF8PlZSC5JmrtYGw4qMGvl281ujRRFxYQ2MZ0zJE9uX4ckgURD9Zpd
         XBI+M/l9Bc13hAx25S8bnrsrASE6KUtT7OKd9WV7LSHI76hKRJ9UK6e2eRdH0Aenu+w0
         tZH5T8Os4FwHzvH0RWojpK7IXce8h3fPDxO54ARSWamI0+IpFvBdvv/NcDtazuEdbF+7
         hhEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s3ca5fuD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OIXzW9/OV8q9P1r32vY/euTtv7Fm5e122rZD4ScMfiI=;
        b=mOhdApOtLPj75TErvdK0sORe/GgwqtSYZkvBHPMDjyOLB8OPFnPXxfRSaJtEmhqKy2
         joI9+3guzdxsRJNC4rifp6FcR54QP3uNJBHJqTGAZF0P1svEDqXJIwDmrPopnMj3YruR
         YXTFOa4I5Waa2ipWn1Y0om72UgiCbk4JGQrRejzAF8w7MUJTl8VEzCOnXElXmJWBkG/7
         q7tfti+gv8YA4pMu48UKLJncgReKLNcyNJUIT3PRs0B8UKgv9UmgBork+zoDDPBAT9+g
         13nLAHLmVEEsl1GgheBiCysNzRjBWk+LSllxEIp/BN+w/Nlqb7EIkK6n7/cwXXjoEBHP
         5fkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OIXzW9/OV8q9P1r32vY/euTtv7Fm5e122rZD4ScMfiI=;
        b=hrW/UNOEysZRECNIoGUUYgokZk95xDTOJQCDyMK54Nr0YduFzOIy2HCjLy/+gOcJpg
         p1YPFuERp3L0VjyQw3/oQkyUFnQX44OVyedWtSwVC5w2bjvF84t7U9yp/89ghAkVrCjr
         JmC4lKzR41OwNwjGugDkH2Sg9TbOmtxCi/+KI60K+7MURD6iRnnwZxUtdZTdAD3AuijK
         6au/45dDp/d3/sY9a3520FBCvD13eRPAb9NKYlswrQnisvhFfF2VQWBzvWdYSvSjLHeO
         yuXBDWFUeolWDVyV9xB8TEETJrlELdqP1P9WBUHZJxgoSDixUUz9R5ShqEMEEghBwKNm
         OTXw==
X-Gm-Message-State: AOAM530PwrE9T0BFhQ6LKvqxTYlPQgqraF31pBU2PeLLvhfer/lWYo1G
	XIwbVQIFZZ5g3+Jr3ExzBBc=
X-Google-Smtp-Source: ABdhPJzCVwU5RdxUOu144leJumsuZvnNaMp5ka9mJ4Yunp22issZ3WahZTBJ+S0UtmsViYJ+BhkZng==
X-Received: by 2002:a65:63ca:: with SMTP id n10mr5479402pgv.252.1595529940010;
        Thu, 23 Jul 2020 11:45:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ea0e:: with SMTP id w14ls2465915pjy.3.canary-gmail;
 Thu, 23 Jul 2020 11:45:39 -0700 (PDT)
X-Received: by 2002:a17:902:d715:: with SMTP id w21mr4787024ply.140.1595529939607;
        Thu, 23 Jul 2020 11:45:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595529939; cv=none;
        d=google.com; s=arc-20160816;
        b=tboNI00kkbIwx4Gvi6XR+sol3akvo08IjKeBsqMMI7MsvfB5qCEt2FOifr/2F9Co1r
         Iz1PB2nFHpD8QLQ+9R0jaP7/Z+h8FsFeUJ8LbKD9vwn90d9fz0aNYaqMnAwGfDnieAzz
         d94qmh4cj9rcGZ7OUwBaPBT6XwH1BvmAnbOlcZrM2D94aQLW6gMiMhjmJRvxmnLQ3bt9
         IYC5F8CepWUv0BGUNrG+Yn0T5SPB/VeJBEGYF3UFqImvK1mgC586ICHmiHEwBiNARhcW
         cN6/Q0m8mgBrCqerGozDO+ZhSiTPX4v6JzU2anTZNWgcHme2fmCsQEBf/XjaWmhkU5rE
         Sh+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UR7P+fyHf9A6kuWvdMYE4bbXsulfV8lg4DAiwVHXuHw=;
        b=0GFLliumaN48eMEZaGo0KoT3x4LiHiz7bJESTsfc8VMdQpYQ0q34M/P8PEl1O/Yjcz
         HzOhOxfRZNhgEu6JXtW7ykpn/mAO/RccXXmkxMdu5kFIl0XbAStBwgSwY4U1prFVp03+
         atXn0MjJetbR/TvKJPzTrNeOSJeZqIzunPN+vhP/akIFr++vAsjzARzpdm43tP6J8Zl3
         n6nJ/fnaqWO7k6+vmg0k5Wrn0dUNL0eoTwMAn0MqIUnb7nXc1dX6FNtjk7d7KozOduHr
         SAZJYSRyIEIIZfKllrVPkq9hYYxWYLodB4vIVhgvD4q4UIxSgbBrQUzicqOpPAigtx6D
         PSEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s3ca5fuD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y20si97686plb.2.2020.07.23.11.45.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 11:45:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id a24so3451872pfc.10
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 11:45:39 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr5260107pgf.10.1595529938904;
 Thu, 23 Jul 2020 11:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAGG=3QUSOnosdPs7XMWdGdcOWNy_jYrFWT2evb9EwjWSUWaORQ@mail.gmail.com>
 <20200722231045.1421735-1-nhuck@google.com>
In-Reply-To: <20200722231045.1421735-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 23 Jul 2020 11:45:27 -0700
Message-ID: <CAKwvOdnMS98=4Q_D0DTECGBv8i+A62xDjTS89WtkePr_wME=_A@mail.gmail.com>
Subject: Re: [PATCH v5] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nathan Huckleberry <nhuck@google.com>, Bill Wendling <morbo@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Pirama Arumuga Nainar <pirama@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s3ca5fuD;       spf=pass
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

On Wed, Jul 22, 2020 at 4:11 PM 'Nathan Huckleberry' via Clang Built
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
> ---
> Changes v4->v5
> * Use PEP8 style
> * Other misc style fixes
>  MAINTAINERS                                   |  1 +
>  Makefile                                      |  3 +
>  scripts/clang-tools/Makefile.clang-tools      | 23 ++++++
>  .../{ => clang-tools}/gen_compile_commands.py |  0
>  scripts/clang-tools/run-clang-tools.py        | 76 +++++++++++++++++++
>  5 files changed, 103 insertions(+)
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
> index 000000000000..41ed15d99933
> --- /dev/null
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -0,0 +1,76 @@
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
> +    args = parser.parse_args()
> +
> +    return args
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
> +    checks = "-checks=-*,{}".format("linuxkernel-*" if analysis_type ==
> +                                    "clang-tidy" else "clang-analyzer-*")


ugh, sorry, I have one last nit.  This line bothers me for two reasons:
1. The use of ternary statements is preferred when it is more concise
than than an if/else statement.  If the ternary doesn't fit on one
line, is it still more concise?  The wrapping of the condition here
is...upsetting.
2. `format` is nice when string interpolation is needed within the
middle of a string, but when you're simply appending to the end of a
string, it might be more concise to use the `+=` operator.

I think this statement would would be nicer as:
```python
checks = "-check=-*,"
checks += "linuxkernel-*" if analysis_type == "clang-tidy" else
"clang-analyzer-*"
```
If PEP8 requires line length <= 80; then maybe
```python
checks = "-check=-*,"
if analysis_type == "clang-tidy":
  checks += "linuxkernel-*"
else:
  checks += "clang-analyzer-*"
```
is more appropriate.  Bill, thoughts?

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
> 2.28.0.rc0.105.gf9edc3c819-goog
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnMS98%3D4Q_D0DTECGBv8i%2BA62xDjTS89WtkePr_wME%3D_A%40mail.gmail.com.
