Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUUWXH4AKGQEHX3HVNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8A322014A
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:18:28 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id r80sf178737vkf.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 17:18:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594772307; cv=pass;
        d=google.com; s=arc-20160816;
        b=J+APJ+LjEzh21S8U9NEy0qnd8DDlu9kheufV5pa4eJgv64fwxKvAm8GncMKXexL34I
         QsnLqdEKCgSPZiMwIw0WTJ1jLgc748/w7uE1Hakd5BXU/+ZL9ctlQcjcBfNUQZdab5fG
         azPQkJK4VqY7hgJmpQNd0YAWRxgCisETAMtrTiyZAe0a3+DhfXFjF31Bd7CwiYgbfNsV
         UcreKUqwH5QxG9KWXMB01Q4IdDad4/ysiNmYSIm56uJLyTJtDTXYBpTp5e4lXzm4Qgo1
         7iWCNxOBrMq6MiiSVMzZZ4C9sHl6vy01/UseUj5Fb6I7im5p734wHnK4kqhtbNdmAsYS
         AF8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zpGDyNu0GX8NOAHPdG5Hp7tVxsUz4PIug3QrKW93o8w=;
        b=RRqt70W4pW65HggJ2ufzNN5Zd2GgEGyY2Hqgf2aWaEMgxZkMVFh2lAN6nx1Z++H7TA
         eVQ3Db+1fm4FVgVMM2IHyYJcuD/BCzMxKuM/dDRMDztQZs91SgTpKS+/PYzDiw8qBs9z
         Mv1zfdNYD2dPATxs/0YtgaNiQx/9CUK+HzfdDaPWmDpNkJaDf39TxQSTom0Hh+1MoG2m
         P4gTe2/EUPUytxo5Htos/XYDSo9NS+wzbVaN9mNhxqBjBM5nA7Yos5BKCb/Bfcwao7c0
         8B7zHSvAaOxWlAmGKU+8OWNVnEp1SWnUnt3bX6Tgw+Qu8pfr7nCiwqD2d70p2Mkr7g8U
         a9lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i6O2sMFj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zpGDyNu0GX8NOAHPdG5Hp7tVxsUz4PIug3QrKW93o8w=;
        b=OCmrZTABPGKS9CmJZE4PpMuqDbtJMq1JIJWpkswpX5AK/bKmThyaqNZ0hsWhiclN6L
         VnpLNiuBL7faEvDGakzRGXtShgOUXZPFBUHWsTPPRQT4TKxAkWCqokltX/Oho/GIClqi
         dPj26HqE8IeBqPVFP2Rc7wvOWz258d7bdv9CCvoCuJlbzZJlxdZ6kNoE2+E51GRm0HC8
         I/zbHNE7xaeWVxAooS7siCCm1YQE31tQhJq1UHpmASrNwYJ2+3SeDcMAphA5ySrP0vSX
         g23AxfMAleJa11i2Rw0aexBkcXrQlsHsh1SzwP7bQY6uEk0PEZQ0Ec7BdL7LraOVXHWl
         ixWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zpGDyNu0GX8NOAHPdG5Hp7tVxsUz4PIug3QrKW93o8w=;
        b=BA16Er6aq5H2nD3V7jQKljrQSJ2Tx1yMZ4qePj44HfgBvBAUxu6CNKeH6IOZuoP+1A
         +r3EWpBaDIQvU4ovruCFU6R6M7avSr0kmfVDlzPGWuYt5DAZV+mGJEKTCLsWbg2jjZhI
         JipbEpQb3mLoMm7cb4Fy+W/f0WmpeO5g0A6tKBsEJSrApynEhcbviXdKzkRbS6LNzoIr
         Z4XiXa+P2Wj9o1VzozcuQhVjDrl/LXkZHmkE4GeHnaBF9FIjYx7Yt1asK01K8mfTyoE5
         W7wqALGkkql1vnqcPdKQkAQl2tWDlf0YYPXs2DvJOJqLoOjdS9BLCvHgUCSEOFqO97nz
         TrVQ==
X-Gm-Message-State: AOAM5320okFMx0HOx607KlXXkOlHLcrmrhr5EX2L6ViYe2bhky5Al0fa
	ZbJ5QNXW9C/HSEvPAQhiaiA=
X-Google-Smtp-Source: ABdhPJwmjYqaoGSNDWU7FPAkzxHfPN+/bwmprxrzvCiNlaEBLE9ZMnIguj1BAFeHR3mInyLkWy3FJw==
X-Received: by 2002:a67:2d4f:: with SMTP id t76mr3443894vst.105.1594772306900;
        Tue, 14 Jul 2020 17:18:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:904:: with SMTP id x4ls73616vsh.5.gmail; Tue, 14
 Jul 2020 17:18:26 -0700 (PDT)
X-Received: by 2002:a67:3258:: with SMTP id y85mr5666408vsy.157.1594772306426;
        Tue, 14 Jul 2020 17:18:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594772306; cv=none;
        d=google.com; s=arc-20160816;
        b=yAVLwUQ9az4trp73b7D+XjXl+P/Hpn5EUflB5iMbaiiBisPmTNgmV5oBCKjI+9e7O7
         kUAXo5QxUFFc0e/htZHrTGYGU2livlYr2bPQoe4Y93dkAOKRJXV9P36zJPMrQixW63kp
         3XTJc9Ui/HmliGj8WW2F4AMPvIGllfy35ljpm036kLf0UGXF8IZjWm2/NSyrPdwoIsOB
         Wb9avU5QtrIf9EHTWnmBAVmdXIiJejNuLtBu6ME+hCBW6hUDz74480S1KdEiYMIpK4st
         SofLo3vUR6NOW31S+xwa5lXaMYzs90RHcerofK1VIdEHoyoWy4P6CSiTV8Mc6mGQjJ5M
         JYZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VKz0ARpq5MDLj9K45daGnPMEyKlao4XZmq4tn5REs6Q=;
        b=kd3ro5yzzNMRZw1aYw1Z8+vWJvFhcfJIYizFh7zIUed0wnbrzpkBEyIIIha1EcDbD6
         RGzv3Q+w1pV8SD1KfkEbUpcDSpapZjQryf9mSslqm8kakOblhl+1EoZlGM6lLUUv2Vtp
         dtc0iFd4ccLREH/sZcLaq9sA3HNrWkVq33EBOWiKXr6KqYqQEVBhB9OyP3XgmTFlwluK
         hlgWNaOzrFSmpqYS0BndG5diBFNJKCiNSPpM5gPlPPMQ8aeUuK4FVurzUKoQq0DRY+I6
         8TwIOAhWHeX7uOh/5hRE85PE6vhvak7Ll8Unb97Fd/HdwrRjj2AdT4Rf+lQi6dDbMGvW
         05VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i6O2sMFj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id t26si37169uap.0.2020.07.14.17.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 17:18:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id l6so363267plt.7
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 17:18:26 -0700 (PDT)
X-Received: by 2002:a17:90a:d306:: with SMTP id p6mr6741341pju.25.1594772305155;
 Tue, 14 Jul 2020 17:18:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200713225103.GA1095851@google.com> <20200714232349.2198114-1-nhuck@google.com>
In-Reply-To: <20200714232349.2198114-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Jul 2020 17:18:13 -0700
Message-ID: <CAKwvOdnsp=zuxbFVcbGRN+-ZH-F5UFVfKzNBfHM714WkwRZyCQ@mail.gmail.com>
Subject: Re: [PATCH v3] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nathan Huckleberry <nhuck@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=i6O2sMFj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Tue, Jul 14, 2020 at 4:24 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> This patch adds clang-tidy and the clang static-analyzer as make
> targets. The goal of this patch is to make static analysis tools
> usable and extendable by any developer or researcher who is familiar
> with basic c++.
>
> The current static analysis tools require intimate knowledge of the
> internal
> workings of the static analysis.  Clang-tidy and the clang static
> analyzers
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
> Changes v2 -> v3
> * Redirect clang-tidy output to stderr
> * Style fixes
> * Add directory to MAINTAINERS
>  MAINTAINERS                                   |  1 +
>  Makefile                                      |  3 +
>  scripts/clang-tools/Makefile.clang-tools      | 23 +++++++
>  .../{ => clang-tools}/gen_compile_commands.py |  0
>  scripts/clang-tools/run-clang-tools.py        | 69 +++++++++++++++++++
>  5 files changed, 96 insertions(+)
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
> index 000000000000..7ad3308c1937
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
> +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py static-analyzer compile_commands.json

^ note below on `static-analyzer`

> +else
> +       $(error clang-analyzer requires CC=clang)
> +endif
> diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> similarity index 100%
> rename from scripts/gen_compile_commands.py
> rename to scripts/clang-tools/gen_compile_commands.py
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> new file mode 100755
> index 000000000000..00b8532c1729
> --- /dev/null
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -0,0 +1,69 @@
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
> +import subprocess
> +import sys
> +
> +def parse_arguments():
> +  """Set up and parses command-line arguments.
> +  Returns:
> +    args: Dict of parsed args
> +      Has keys "file" and "type"
> +  """
> +  usage = """Run clang-tidy or the clang static-analyzer on a
> +  compilation database."""
> +  parser = argparse.ArgumentParser(description=usage)
> +
> +  type_help = ("Type of analysis to be performed")
> +  parser.add_argument("type", choices=["clang-tidy", "static-analyzer"],

Rather than "static-analyzer", how about "clang-analyzer" to be
consistent with the `make` target?  Top level Makefile would need to
pass that here, too.

> +                      help=type_help)
> +  file_path_help = ("Path to the compilation database to parse")
> +  parser.add_argument("file",  type=str, help=file_path_help)
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
> +
> +def run_analysis(entry):
> +  filename = entry["file"]
> +  checks = "-checks=-*,linuxkernel-*" if (analysis_type == "clang-tidy") else "-checks=-*,clang-analyzer-*"

I'm not sure that the parens are necessary ^, but it's not a big
enough deal to necessitate a v4, IMO.

Though this is still running `-*,` for static-analyzer which I would
like removed.

> +  p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
> +                    checks, filename],
> +                    stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
> +  lock.acquire()
> +  print(filename, file=sys.stderr)

Should we drop printing the filename? Analyzing the output of `make
LLVM=1 -j71 defconfig clang-tidy 2> log.txt`, for example I see:
Error while processing
/linux-next/drivers/net/ethernet/freescale/fman/fman_sp.c.
...
<hundreds of lines from different files>
drivers/net/ethernet/freescale/fman/fman_sp.c

It's surprising to me how these appear out of order; maybe buffering
or not has something to do with it?

Anyways, if we print the filename anyways per error, and files with no
errors are just printed kind of meaninglessly, then I think we don't
need to print the filename being analyzed again.  For clang-analyzer,
the errors also have the filename per line of the warning printed.

> +  sys.stderr.buffer.write(p.stdout)
> +  lock.release()
> +
> +
> +def main():
> +  args = parse_arguments()
> +  filename = args.file
> +
> +  #Read JSON data into the datastore variable
> +  with open(filename, "r") as f:
> +    datastore = json.load(f)
> +    lock = multiprocessing.Lock()
> +    pool = multiprocessing.Pool(initializer=init, initargs=(lock, args.type))
> +    pool.map(run_analysis,datastore)
> +
> +if __name__ == "__main__":
> +    main()
> --


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnsp%3DzuxbFVcbGRN%2B-ZH-F5UFVfKzNBfHM714WkwRZyCQ%40mail.gmail.com.
