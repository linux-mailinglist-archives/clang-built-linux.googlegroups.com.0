Return-Path: <clang-built-linux+bncBD66FMGZA4IMLOO37ACRUBGICT2PW@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E1A227FC5
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 14:17:10 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id h94sf1831865uad.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 05:17:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595333829; cv=pass;
        d=google.com; s=arc-20160816;
        b=dv8j9ZzWd6pH9KP2dR8OhaNIT4ivSxHSF/ob3wPsKnffYZo/qWCwR9ajUgnG8eVLFM
         3tiBnT5qpJWCZY/n/BeIZ7xz/oes/T/Wa1SuTAu2KWuZ7PSlwnX5uo6ggvtRz8q0v3or
         0uRkfHOllMMgfvFIn37uoE9xL9CS5vC4o5pLbsGPOAArjO3TjccQBw6/UUUkbHcKmRcc
         sg+jrG6X/uOr2c8KS3wkl8ms7leClpStyyBvb+I+FK+lSK9k4tsd1KbnR7hFQoTMmm+I
         PwgqSPXEGHq1rkIVc6LXR+W9F6GeI0NNJiMTG7O2lt8nXkX3BegCH/qzIIGhY2eL4mqE
         oW5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BZ3Y5XAyVXuwWo+cbNI1fVFT7t6KKrJZZGqBCYBhBPc=;
        b=mH/nuSxsykdMXz6dKBYr2KCEVLLt0GnCRL0MQeFCpEh3SUbIsCUoBr7wtrooE06Qm1
         ruhnl12E9DnOCBbi2ZrW/dUHVrEUdMFADYkCnFx05KjJD3Le/vMylnZAou2HpukNleGn
         owjh7uGphwvyUSI3o+hloBQqVf3xtrhuApoFfBsbSPtr+zlESmBTvIzBD3JXFE9Irlcp
         AfE+MpUHNvDc0RKyR3ns3ljGbkFt+bMHJnWGJA8Pk1xw+LubSvTjOOKiabssCm6rVjkY
         yjLGy5xWr0Llyr+1ZCuyxEWds3WYZ3/kEDZeJKadcherHU6EEzUWhqvVUV36UAHlqa2F
         rzVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BQaTqw0z;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a36 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BZ3Y5XAyVXuwWo+cbNI1fVFT7t6KKrJZZGqBCYBhBPc=;
        b=h1HhIIImKglQcmY0vdU+hOiY/5lMNpnVYIC8QL+DCjhNZe5PHEveneGzO7y5bbs6Bb
         OYbnLCiHZHJQhFvdvkOA+erMK1mtU3N5/wi6cjWezL5GyHYkxiPwOrDuncQ0ujRpH0F1
         Xk+fv7dFCxzUiRd1Ep6uG+WoWd2t3GENpDZcRF9jYrvM8pmrVFkpVhQGWdH8VcgCOuVJ
         DOEhjwTPS70tZu6abaKiTm4kgb6299g1zCkDtROLZYCnH5UNIUfQCWz3BIgEUIH45r1z
         UOWHuuc414pdzVLq3idaUvACb7kyLoVn3J+zam9pV0F3vO5PbCot+IpxsEBTiVD7GwMm
         Essw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BZ3Y5XAyVXuwWo+cbNI1fVFT7t6KKrJZZGqBCYBhBPc=;
        b=bkxvqTIOx+2VSADULWdzr7yYLiWR1lcuqb+QcOXLP1QJsQol7lfwtzveyJel+LYbYV
         +NehYu7KV6hre+lO+nnJi4MV+ARL7PI8LsVqcV0odaj2LZWUrbPrkSQXQTTzkZB8w77p
         VErPijqsaX7XRuYoFneLWyHqFiZLQYtDY2PYUflCo74ejWbej8twyxKaQfBb2lspe/Hg
         5+Pj9f8l1YugQEKWyssXBPL02RYq0qW1SWUrqyHuOvIfN6/kABBg5hG1WjTXzI4gL4jH
         6fQH2iebKrhgRv5EIBTyCG3E5yOW5yqP3mJhOxWp8+Ml6uPr2RIXsI/2KxMSNY5mpdpG
         up/A==
X-Gm-Message-State: AOAM530HUvgTfBe9Y+v5PCVVpG0pHdQMEqWyBHkd9LLdxvGDntKm9HM4
	C2z7bb63GzJKcJ+crHU5uLQ=
X-Google-Smtp-Source: ABdhPJwoG5hIz92taacRqLG803iyhKPRBWsU/yNcck/6j4fNZKZk6aiw4uzPrWLHZ0CKieCPP2OnlQ==
X-Received: by 2002:ab0:280b:: with SMTP id w11mr19537223uap.81.1595333829296;
        Tue, 21 Jul 2020 05:17:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:211a:: with SMTP id d26ls669035ual.3.gmail; Tue, 21 Jul
 2020 05:17:08 -0700 (PDT)
X-Received: by 2002:ab0:2b08:: with SMTP id e8mr18757874uar.119.1595333828829;
        Tue, 21 Jul 2020 05:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595333828; cv=none;
        d=google.com; s=arc-20160816;
        b=mI5YXThU992I9lExwJGYsDL/CCCSWmYo7x920FhU+8B7pPFmhPTjcH/iVOe3eRRVn3
         kd/LAppe0ydVWV8bSzmqBVVmhaEDwRDvfPdCn17c//BaDvz0NgtjUIRnSc9mmc4fm2LU
         66jLXEH/TytNKVm6iNzdMzJxOLe1EJ7BFpgtFHrZYdNQ+KqLsgqfbldafDzxe61BFQ1m
         OBcaE2cp68yuxh/uMMvme8xxVMTenTViNhp0CfJrZxKlDF5B42rjTzmmGaVNtJuiLUvL
         hPHjl+yjjbNXT2GEI73I1V57xNsTXC9f7fM5uDXiL8SmFMQe14TD2Or+tUtn90KbrLwj
         M5hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OuoevMZDLduKztZeO70zQuvbIkkO68i5QUZntP5acz0=;
        b=0798cUB0z/X/7+oezlljHemVAUxxVCd9MxLiW0huoXFZViAmpzggTMAYB1MDWkn13o
         9WiEmo1ZJqDgjp0XEw2jYcxuqTVdthoMfwTBND9DakQVOOef7t4m4vg/+BEAQ6Sbzfcq
         rzaLENaPqxj9gik4iLEsFtqYTfBcF+g8piIfGpB4YpUKjdrcFViEHAK57th8w/6mrViW
         vtznZaShSOvYumHYy7Cz1/Xn5nhP/5LupFepgUI7jTsPWN1Vo6WjlJdFvF0x+xtfoxoM
         kGv4tbV1Sc551HL7uyRE3SlD+2dc7JSsJLkJJ5QC52lubJxHviUfY0UM8HuVlWHCad1j
         397Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BQaTqw0z;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a36 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com. [2607:f8b0:4864:20::a36])
        by gmr-mx.google.com with ESMTPS id g19si93453uab.1.2020.07.21.05.17.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 05:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a36 as permitted sender) client-ip=2607:f8b0:4864:20::a36;
Received: by mail-vk1-xa36.google.com with SMTP id c11so4477340vkn.11
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 05:17:08 -0700 (PDT)
X-Received: by 2002:a1f:4e81:: with SMTP id c123mr10626372vkb.100.1595333828173;
 Tue, 21 Jul 2020 05:17:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnsp=zuxbFVcbGRN+-ZH-F5UFVfKzNBfHM714WkwRZyCQ@mail.gmail.com>
 <20200720233450.238022-1-nhuck@google.com>
In-Reply-To: <20200720233450.238022-1-nhuck@google.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 21 Jul 2020 05:16:56 -0700
Message-ID: <CAGG=3QUSOnosdPs7XMWdGdcOWNy_jYrFWT2evb9EwjWSUWaORQ@mail.gmail.com>
Subject: Re: [PATCH v4] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nathan Huckleberry <nhuck@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, michal.lkml@markovi.net, 
	linux-kbuild@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Pirama Arumuga Nainar <pirama@google.com>
Content-Type: multipart/alternative; boundary="00000000000020e0e205aaf29ae6"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BQaTqw0z;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a36 as
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

--00000000000020e0e205aaf29ae6
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 20, 2020 at 4:35 PM Nathan Huckleberry <nhuck@google.com> wrote:

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
> Please reflow this comment.


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
> (
> https://github.com/haoNoQ/clang-analyzer-guide/releases/download/v0.1/clang-analyzer-guide-v0.1.pdf
> )
>
> The main draw of the clang tools is how accessible they are. The clang
> documentation is very nice and these tools are built specifically to be
> easily extendable by any developer. They provide an accessible method of
> bug-finding and research to people who are not overly familiar with the
> kernel codebase.
>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
> Changes v3->v4
> * Update usages of static-analyzer to clang-analyzer
> * Clarify -* explicitly in comment
> * Remove filename printing
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
> @@ -747,6 +747,7 @@ KBUILD_CFLAGS       += $(call
> cc-option,-fno-allow-store-data-races)
>
>  include scripts/Makefile.kcov
>  include scripts/Makefile.gcc-plugins
> +include scripts/clang-tools/Makefile.clang-tools
>
>  ifdef CONFIG_READABLE_ASM
>  # Disable optimizations that make assembler listings hard to read.
> @@ -1543,6 +1544,8 @@ help:
>         @echo  '  export_report   - List the usages of all exported
> symbols'
>         @echo  '  headerdep       - Detect inclusion cycles in headers'
>         @echo  '  coccicheck      - Check with Coccinelle'
> +       @echo  '  clang-analyzer  - Check with clang static analyzer'
> +       @echo  '  clang-tidy      - Check with clang-tidy'
>         @echo  ''
>         @echo  'Tools:'
>         @echo  '  nsdeps          - Generate missing symbol namespace
> dependencies'
> diff --git a/scripts/clang-tools/Makefile.clang-tools
> b/scripts/clang-tools/Makefile.clang-tools
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
> +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-tidy
> compile_commands.json
> +else
> +       $(error clang-tidy requires CC=clang)
> +endif
> +
> +PHONY += clang-analyzer
> +clang-analyzer:
> +ifdef CONFIG_CC_IS_CLANG
> +       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
> +       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-analyzer
> compile_commands.json
> +else
> +       $(error clang-analyzer requires CC=clang)
> +endif
> diff --git a/scripts/gen_compile_commands.py
> b/scripts/clang-tools/gen_compile_commands.py
> similarity index 100%
> rename from scripts/gen_compile_commands.py
> rename to scripts/clang-tools/gen_compile_commands.py
> diff --git a/scripts/clang-tools/run-clang-tools.py
> b/scripts/clang-tools/run-clang-tools.py
> new file mode 100755
> index 000000000000..44527b3663e9
> --- /dev/null
> +++ b/scripts/clang-tools/run-clang-tools.py
>

Should this be formatted in PEP8 style instead of our internal style?


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
> +  parser.add_argument("type", choices=["clang-tidy", "clang-analyzer"],
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
> +  #Disable all checks, then re-enable the ones we want
>

Nit: Please add a space after the "#" in comments.


> +  checks = "-checks=-*,linuxkernel-*" if (analysis_type == "clang-tidy")
> else "-checks=-*,clang-analyzer-*"
>

This isn't very readable. The only bit that changes is the "linuxkernel" /
"clang-analyzer".

+  p = subprocess.run(["clang-tidy", "-p", os.getcwd(),
> +                    checks, filename],
> +                    stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
> +  lock.acquire()
> +  sys.stderr.buffer.write(p.stdout)
> +  lock.release()
> +
>
Probably best to use a with statement:

  with lock:
    sys.stderr.buffer.write(p.stdout)

+
> +def main():
> +  args = parse_arguments()
> +  filename = args.file
> +
> +  #Read JSON data into the datastore variable
> +  with open(filename, "r") as f:
> +    datastore = json.load(f)
> +    lock = multiprocessing.Lock()
> +    pool = multiprocessing.Pool(initializer=init, initargs=(lock,
> args.type))
> +    pool.map(run_analysis,datastore)
>

Nit: It's good practice to have only necessary statements in a "with"
statement so that you don't hold the file open too long.

+
> +if __name__ == "__main__":
> +    main()
> --
> 2.28.0.rc0.105.gf9edc3c819-goog
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUSOnosdPs7XMWdGdcOWNy_jYrFWT2evb9EwjWSUWaORQ%40mail.gmail.com.

--00000000000020e0e205aaf29ae6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Jul 20, 2020 at 4:35 PM Nathan Hu=
ckleberry &lt;<a href=3D"mailto:nhuck@google.com">nhuck@google.com</a>&gt; =
wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">This patch adds clang-tidy and the clang static-analyzer =
as make<br>
targets. The goal of this patch is to make static analysis tools<br>
usable and extendable by any developer or researcher who is familiar<br>
with basic c++.<br>
<br>
The current static analysis tools require intimate knowledge of the<br>
internal<br>
workings of the static analysis.=C2=A0 Clang-tidy and the clang static<br>
analyzers<br>
expose an easy to use api and allow users unfamiliar with clang to<br>
write new checks with relative ease.<br>
<br></blockquote><div>Please reflow this comment.</div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
=3D=3D=3DClang-tidy=3D=3D=3D<br>
<br>
Clang-tidy is an easily extendable &#39;linter&#39; that runs on the AST.<b=
r>
Clang-tidy checks are easy to write and understand. A check consists of<br>
two parts, a matcher and a checker. The matcher is created using a<br>
domain specific language that acts on the AST<br>
(<a href=3D"https://clang.llvm.org/docs/LibASTMatchersReference.html" rel=
=3D"noreferrer" target=3D"_blank">https://clang.llvm.org/docs/LibASTMatcher=
sReference.html</a>).=C2=A0 When AST<br>
nodes are found by the matcher a callback is made to the checker. The<br>
checker can then execute additional checks and issue warnings.<br>
<br>
Here is an example clang-tidy check to report functions that have calls<br>
to local_irq_disable without calls to local_irq_enable and vice-versa.<br>
Functions flagged with __attribute((annotation(&quot;ignore_irq_balancing&q=
uot;)))<br>
are ignored for analysis. (<a href=3D"https://reviews.llvm.org/D65828" rel=
=3D"noreferrer" target=3D"_blank">https://reviews.llvm.org/D65828</a>)<br>
<br>
=3D=3D=3DClang static analyzer=3D=3D=3D<br>
<br>
The clang static analyzer is a more powerful static analysis tool that<br>
uses symbolic execution to find bugs. Currently there is a check that<br>
looks for potential security bugs from invalid uses of kmalloc and<br>
kfree. There are several more general purpose checks that are useful for<br=
>
the kernel.<br>
<br>
The clang static analyzer is well documented and designed to be<br>
extensible.<br>
(<a href=3D"https://clang-analyzer.llvm.org/checker_dev_manual.html" rel=3D=
"noreferrer" target=3D"_blank">https://clang-analyzer.llvm.org/checker_dev_=
manual.html</a>)<br>
(<a href=3D"https://github.com/haoNoQ/clang-analyzer-guide/releases/downloa=
d/v0.1/clang-analyzer-guide-v0.1.pdf" rel=3D"noreferrer" target=3D"_blank">=
https://github.com/haoNoQ/clang-analyzer-guide/releases/download/v0.1/clang=
-analyzer-guide-v0.1.pdf</a>)<br>
<br>
The main draw of the clang tools is how accessible they are. The clang<br>
documentation is very nice and these tools are built specifically to be<br>
easily extendable by any developer. They provide an accessible method of<br=
>
bug-finding and research to people who are not overly familiar with the<br>
kernel codebase.<br>
<br>
Signed-off-by: Nathan Huckleberry &lt;<a href=3D"mailto:nhuck@google.com" t=
arget=3D"_blank">nhuck@google.com</a>&gt;<br>
---<br>
Changes v3-&gt;v4<br>
* Update usages of static-analyzer to clang-analyzer<br>
* Clarify -* explicitly in comment<br>
* Remove filename printing<br>
=C2=A0MAINTAINERS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 1 +<br>
=C2=A0Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 3 +<br>
=C2=A0scripts/clang-tools/Makefile.clang-tools=C2=A0 =C2=A0 =C2=A0 | 23 +++=
++++<br>
=C2=A0.../{ =3D&gt; clang-tools}/gen_compile_commands.py |=C2=A0 0<br>
=C2=A0scripts/clang-tools/run-clang-tools.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 6=
9 +++++++++++++++++++<br>
=C2=A05 files changed, 96 insertions(+)<br>
=C2=A0create mode 100644 scripts/clang-tools/Makefile.clang-tools<br>
=C2=A0rename scripts/{ =3D&gt; clang-tools}/gen_compile_commands.py (100%)<=
br>
=C2=A0create mode 100755 scripts/clang-tools/run-clang-tools.py<br>
<br>
diff --git a/MAINTAINERS b/MAINTAINERS<br>
index 1d4aa7f942de..a444564e5572 100644<br>
--- a/MAINTAINERS<br>
+++ b/MAINTAINERS<br>
@@ -4198,6 +4198,7 @@ W:=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://clan=
gbuiltlinux.github.io/" rel=3D"noreferrer" target=3D"_blank">https://clangb=
uiltlinux.github.io/</a><br>
=C2=A0B:=C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/ClangBuiltLinux/l=
inux/issues" rel=3D"noreferrer" target=3D"_blank">https://github.com/ClangB=
uiltLinux/linux/issues</a><br>
=C2=A0C:=C2=A0 =C2=A0 =C2=A0irc://<a href=3D"http://chat.freenode.net/clang=
builtlinux" rel=3D"noreferrer" target=3D"_blank">chat.freenode.net/clangbui=
ltlinux</a><br>
=C2=A0F:=C2=A0 =C2=A0 =C2=A0Documentation/kbuild/llvm.rst<br>
+F:=C2=A0 =C2=A0 =C2=A0scripts/clang-tools/<br>
=C2=A0K:=C2=A0 =C2=A0 =C2=A0\b(?i:clang|llvm)\b<br>
<br>
=C2=A0CLEANCACHE API<br>
diff --git a/Makefile b/Makefile<br>
index fe0164a654c7..3e2df010b342 100644<br>
--- a/Makefile<br>
+++ b/Makefile<br>
@@ -747,6 +747,7 @@ KBUILD_CFLAGS=C2=A0 =C2=A0 =C2=A0 =C2=A0+=3D $(call cc-=
option,-fno-allow-store-data-races)<br>
<br>
=C2=A0include scripts/Makefile.kcov<br>
=C2=A0include scripts/Makefile.gcc-plugins<br>
+include scripts/clang-tools/Makefile.clang-tools<br>
<br>
=C2=A0ifdef CONFIG_READABLE_ASM<br>
=C2=A0# Disable optimizations that make assembler listings hard to read.<br=
>
@@ -1543,6 +1544,8 @@ help:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @echo=C2=A0 &#39;=C2=A0 export_report=C2=A0 =C2=
=A0- List the usages of all exported symbols&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @echo=C2=A0 &#39;=C2=A0 headerdep=C2=A0 =C2=A0 =
=C2=A0 =C2=A0- Detect inclusion cycles in headers&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @echo=C2=A0 &#39;=C2=A0 coccicheck=C2=A0 =C2=A0=
 =C2=A0 - Check with Coccinelle&#39;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;=C2=A0 clang-analyzer=C2=A0 - =
Check with clang static analyzer&#39;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0@echo=C2=A0 &#39;=C2=A0 clang-tidy=C2=A0 =C2=A0=
 =C2=A0 - Check with clang-tidy&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @echo=C2=A0 &#39;&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @echo=C2=A0 &#39;Tools:&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @echo=C2=A0 &#39;=C2=A0 nsdeps=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 - Generate missing symbol namespace dependencies&#39;<br>
diff --git a/scripts/clang-tools/Makefile.clang-tools b/scripts/clang-tools=
/Makefile.clang-tools<br>
new file mode 100644<br>
index 000000000000..5c9d76f77595<br>
--- /dev/null<br>
+++ b/scripts/clang-tools/Makefile.clang-tools<br>
@@ -0,0 +1,23 @@<br>
+# SPDX-License-Identifier: GPL-2.0<br>
+#<br>
+# Copyright (C) Google LLC, 2020<br>
+#<br>
+# Author: Nathan Huckleberry &lt;<a href=3D"mailto:nhuck@google.com" targe=
t=3D"_blank">nhuck@google.com</a>&gt;<br>
+#<br>
+PHONY +=3D clang-tidy<br>
+clang-tidy:<br>
+ifdef CONFIG_CC_IS_CLANG<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(PYTHON3) scripts/clang-tools/gen_compile_comm=
ands.py<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(PYTHON3) scripts/clang-tools/run-clang-tools.=
py clang-tidy compile_commands.json<br>
+else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(error clang-tidy requires CC=3Dclang)<br>
+endif<br>
+<br>
+PHONY +=3D clang-analyzer<br>
+clang-analyzer:<br>
+ifdef CONFIG_CC_IS_CLANG<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(PYTHON3) scripts/clang-tools/gen_compile_comm=
ands.py<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(PYTHON3) scripts/clang-tools/run-clang-tools.=
py clang-analyzer compile_commands.json<br>
+else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(error clang-analyzer requires CC=3Dclang)<br>
+endif<br>
diff --git a/scripts/gen_compile_commands.py b/scripts/clang-tools/gen_comp=
ile_commands.py<br>
similarity index 100%<br>
rename from scripts/gen_compile_commands.py<br>
rename to scripts/clang-tools/gen_compile_commands.py<br>
diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/r=
un-clang-tools.py<br>
new file mode 100755<br>
index 000000000000..44527b3663e9<br>
--- /dev/null<br>
+++ b/scripts/clang-tools/run-clang-tools.py<br></blockquote><div><br></div=
><div>Should this be formatted in PEP8 style instead of our internal style?=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
@@ -0,0 +1,69 @@<br>
+#!/usr/bin/env python<br>
+# SPDX-License-Identifier: GPL-2.0<br>
+#<br>
+# Copyright (C) Google LLC, 2020<br>
+#<br>
+# Author: Nathan Huckleberry &lt;<a href=3D"mailto:nhuck@google.com" targe=
t=3D"_blank">nhuck@google.com</a>&gt;<br>
+#<br>
+&quot;&quot;&quot;A helper routine run clang-tidy and the clang static-ana=
lyzer on<br>
+compile_commands.json.&quot;&quot;&quot;<br>
+<br>
+import argparse<br>
+import json<br>
+import logging<br>
+import multiprocessing<br>
+import os<br>
+import subprocess<br>
+import sys<br>
+<br>
+def parse_arguments():<br>
+=C2=A0 &quot;&quot;&quot;Set up and parses command-line arguments.<br>
+=C2=A0 Returns:<br>
+=C2=A0 =C2=A0 args: Dict of parsed args<br>
+=C2=A0 =C2=A0 =C2=A0 Has keys &quot;file&quot; and &quot;type&quot;<br>
+=C2=A0 &quot;&quot;&quot;<br>
+=C2=A0 usage =3D &quot;&quot;&quot;Run clang-tidy or the clang static-anal=
yzer on a<br>
+=C2=A0 compilation database.&quot;&quot;&quot;<br>
+=C2=A0 parser =3D argparse.ArgumentParser(description=3Dusage)<br>
+<br>
+=C2=A0 type_help =3D (&quot;Type of analysis to be performed&quot;)<br>
+=C2=A0 parser.add_argument(&quot;type&quot;, choices=3D[&quot;clang-tidy&q=
uot;, &quot;clang-analyzer&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 help=3Dtype_help)<br>
+=C2=A0 file_path_help =3D (&quot;Path to the compilation database to parse=
&quot;)<br>
+=C2=A0 parser.add_argument(&quot;file&quot;,=C2=A0 type=3Dstr, help=3Dfile=
_path_help)<br>
+<br>
+=C2=A0 args =3D parser.parse_args()<br>
+<br>
+=C2=A0 return args<br>
+<br>
+def init(l,t):<br>
+=C2=A0 global lock<br>
+=C2=A0 global analysis_type<br>
+=C2=A0 lock =3D l<br>
+=C2=A0 analysis_type =3D t<br>
+<br>
+def run_analysis(entry):<br>
+=C2=A0 filename =3D entry[&quot;file&quot;]<br>
+=C2=A0 #Disable all checks, then re-enable the ones we want<br></blockquot=
e><div><br></div><div>Nit: Please add a space after the &quot;#&quot; in co=
mments.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
+=C2=A0 checks =3D &quot;-checks=3D-*,linuxkernel-*&quot; if (analysis_type=
 =3D=3D &quot;clang-tidy&quot;) else &quot;-checks=3D-*,clang-analyzer-*&qu=
ot;<br></blockquote><div><br></div><div>This isn&#39;t very readable. The o=
nly bit that changes is the &quot;linuxkernel&quot; / &quot;clang-analyzer&=
quot;.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
+=C2=A0 p =3D subprocess.run([&quot;clang-tidy&quot;, &quot;-p&quot;, os.ge=
tcwd(),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 chec=
ks, filename],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 stdo=
ut=3Dsubprocess.PIPE, stderr=3Dsubprocess.STDOUT)<br>
+=C2=A0 lock.acquire()<br>
+=C2=A0 sys.stderr.buffer.write(p.stdout)<br>
+=C2=A0 lock.release()<br>
+<br></blockquote><div>Probably best to use a with statement:</div><div><br=
></div><div>=C2=A0 with lock:</div><div>=C2=A0 =C2=A0 sys.stderr.buffer.wri=
te(p.stdout)</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
+<br>
+def main():<br>
+=C2=A0 args =3D parse_arguments()<br>
+=C2=A0 filename =3D args.file<br>
+<br>
+=C2=A0 #Read JSON data into the datastore variable<br>
+=C2=A0 with open(filename, &quot;r&quot;) as f:<br>
+=C2=A0 =C2=A0 datastore =3D json.load(f)<br>
+=C2=A0 =C2=A0 lock =3D multiprocessing.Lock()<br>
+=C2=A0 =C2=A0 pool =3D multiprocessing.Pool(initializer=3Dinit, initargs=
=3D(lock, args.type))<br>
+=C2=A0 =C2=A0 pool.map(run_analysis,datastore)<br></blockquote><div><br></=
div><div>Nit: It&#39;s good practice to have only necessary statements in a=
 &quot;with&quot; statement so that you don&#39;t hold the file open too lo=
ng.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
+<br>
+if __name__ =3D=3D &quot;__main__&quot;:<br>
+=C2=A0 =C2=A0 main()<br>
-- <br>
2.28.0.rc0.105.gf9edc3c819-goog<br>
<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QUSOnosdPs7XMWdGdcOWNy_jYrFWT2evb9EwjW=
SUWaORQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUSOnosdPs7XMWdGdcOWNy_jY=
rFWT2evb9EwjWSUWaORQ%40mail.gmail.com</a>.<br />

--00000000000020e0e205aaf29ae6--
