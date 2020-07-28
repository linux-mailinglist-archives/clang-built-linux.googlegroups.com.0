Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCEYQL4QKGQEMQSY2IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 84220231404
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 22:35:21 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id v21sf7283662ooq.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 13:35:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595968520; cv=pass;
        d=google.com; s=arc-20160816;
        b=mOkfMydDeL/2joxRSmud0tn/WYgnKfpnKctBAE2IgTVDHIuZfwqgNHDNsOy1hPvSnU
         jGQMAB+SNwtX44kdlafZHZbf9YpoTRxFElACb4GChJCoy00aGsq/CyMc7PKcJz+ugJ4H
         rKcVLFQ5cJbXV1jS+yChfAVLa9JA8Qye23pW/p5jerDrMJLkSVj7coT/QsbXj2rtNLhr
         J7tcKhxjBSTzv36vxppyCuA06lwBmG+vvbssHllSEpUj6FkEAcLrL3AOtp+HIUIR97up
         Kmn3jHUmY9qfW3pA5v0ZzvioDJzthzez10YB2myZs21cnzrwhrVoJO1ICplRkFlSXcl+
         F6Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pXnZVn/X286SwtJ2+nCFa5UPpvRPY1Qk8BX7PEJXnEw=;
        b=SvU1jImy+AKVs+qeyd/gj2Ds3au+M0CHwOr7VPd6rA6Jl6wbMzkOlk6yuhguBoU5qj
         TeTOwHx64d+Hxt74viAHonF9rBLYcULM4ca+IM6uwygBW6KZxcG10pvd1y3+Etx35qZi
         Y9ENLl3npx6CFf/Bss941+FSCod3u/9BpK4e6k0Vfsdbxq0it2WVrValVFYjb1BkK8UE
         NlutuQ+aRZfmF6TJNUtk3RDKM85CfTGCI+iyGYsoy0IvNxFQFXfztiTkcLGhpM4vvLyC
         4jIW6QQD0EdYasx+HtBmvJ1wv7Xa0NSfImRro3NP/hWhETUzZjUEnJqweQkFKZxyQrz8
         JTHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u3n1pNJB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pXnZVn/X286SwtJ2+nCFa5UPpvRPY1Qk8BX7PEJXnEw=;
        b=OVeKR2Ke2gZ7nEDiIZCqilg86nLPEuG2o2rEXZyiSWJhendxCqDHKoJ5PWwdtypDLD
         sqAhn5RIxikivfUo4boVhdfZ+yjvfkxhZbrX+5iru8qqW6ZoPOR6rAV1S4rjYIMITGOR
         XpWd1usQHhjqYKvz1VwoBgmVKcUa8jAI4CheZg8AExxZeyklKxrp3h/QJ+elvAmrWT6+
         SczDjizPecfQW9HwRbf0ugh7JJOFPtypXr+OH/UWgVgwhWeeyVaMOODjiEqxHvKDXbnU
         1eBHzqVFMbxOHMQBRWhRf9ZfiVNQhscMHTCKt2P8NTFLgZyfycmK5sNIBeWJsPOlokOB
         dX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pXnZVn/X286SwtJ2+nCFa5UPpvRPY1Qk8BX7PEJXnEw=;
        b=ZLWz6B02jc02ILs6Y4YAjxLVjYFMbg7nxMX5p6lb7TzJ2rBP7vI4Eqw+yxBq1RmYVc
         QIEty8amW4ydjnKCE75W50h45PIKeLqLibXvfWo2BwsCIQoBiD9Y7J/lUNmQmJ00RVWy
         aWuhUf2ZtDE5DDj8Og5+HV7MNNJ7JhwXtkm/oSH+iyIUKlgqb8ojtoc/J52BCgNVzNGK
         L8kWWKkctYDLHdDaKwO4I05iivjSyazyHDV+Rt4Kr4o3WkdTpf+g7NOfFXMEYWy02+RG
         fEbcKPHERddURfttm6wX1xwiLbtGBvioBZTHBkSTlOn1zCD0f3BzfygnEIuUIfoA73Ya
         kxKw==
X-Gm-Message-State: AOAM531Ol62EE5aoO50cZKu2fZei8+bhwXrYU8K3DjmKTJjiZbMkM4m0
	1n4K/HZtrJsJy3EAPpon3EU=
X-Google-Smtp-Source: ABdhPJxgUni3gbGzJTF9bbD2bWzEpOvXdBGIobFQWdzVz0LrLaJQZ+bfzI27LlebXWx1/0FyYwJOlA==
X-Received: by 2002:a9d:ecc:: with SMTP id 70mr26371816otj.239.1595968520186;
        Tue, 28 Jul 2020 13:35:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:8cd:: with SMTP id 196ls4201311oii.4.gmail; Tue, 28 Jul
 2020 13:35:19 -0700 (PDT)
X-Received: by 2002:aca:d88a:: with SMTP id p132mr5301755oig.95.1595968519840;
        Tue, 28 Jul 2020 13:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595968519; cv=none;
        d=google.com; s=arc-20160816;
        b=0Xphd6L3RTXtg4Mt+JbenercXKINB0WhorrgNk/qCeBjJtqCM4IMRyjFGOmRjubc8E
         Py2d3081eHNLn5D/NGerrLr7bw6VG69d7LjNBdgEUOpJIjBbZ++kXRIC4UICHFarJht8
         GV2gLdafU+jqqnJTrHgKswA56PUUJ7fCt0+kFIeTePBHjaiYDLIFvUCgtJI31egCOUVA
         gRsSoWQxMQ2dWVkxWCbnATF/V2zDZcUm4jBwDZD1SLxG9Xto1WPY+5K6UaHwEjeVg8Fs
         q8/g6IZdUqKm5GLyTNvprxJZfG3nbHDYsxE7xqC3Ksezer8EKG40p3mX4cSzig/AASYQ
         YALQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OBkwAyTEXypPFrv1L/bcvqGsjN6kL4QWEhz3WakHkuw=;
        b=qN2FV4m2D2IPObRhJwXHwvYpFBCqZ154udMsSLvgNPWuYFAU53XzUmTiOeqgGSedk7
         Csy/RqVSsgfMonp0YnPt9LHbcGcDnpZuH+1iVbx3A7/NJ5zTw/xK8NTuNtEcseNhfyio
         t6uI8NrOEOM79ZeqRwZOu1UZ8R1oAvN01NaFpcmVbSMc01g4tKj7/4+TXpIwiuoEeOJi
         QQb12cfj272PiC/KLsPMPv2V3F1nPE1rWeMJW9gOAmEJGPY2NmdHBHVra6M2awQR29HU
         ZYoixyHqLhhKsJeokUPovyxA3b/At3MJE5YsJyrgSwrpv6pDXewTuuX9K3keVHcY1XKC
         lN6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u3n1pNJB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id w28si4111oti.1.2020.07.28.13.35.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2020 13:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id k18so4416393pfp.7
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jul 2020 13:35:19 -0700 (PDT)
X-Received: by 2002:a62:86cc:: with SMTP id x195mr25927376pfd.39.1595968519048;
 Tue, 28 Jul 2020 13:35:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
 <20200728004736.3590053-1-nhuck@google.com>
In-Reply-To: <20200728004736.3590053-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 28 Jul 2020 13:35:08 -0700
Message-ID: <CAKwvOdnrVP4Ci4MBd2NtW9Jkk60wVrpRwGV_rz1dw5NYVUdaSw@mail.gmail.com>
Subject: Re: [PATCH v7] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Pirama Arumuga Nainar <pirama@google.com>, Bill Wendling <morbo@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u3n1pNJB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433
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

On Mon, Jul 27, 2020 at 5:47 PM 'Nathan Huckleberry' via Clang Built
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

^ unused import.  Maybe Masahiro would be so kind as to drop that line
for you when merging v7?

That said, I hammered on this in testing, and it now LGTM.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

For testing, I did `make clean` for x86/arm/arm64/powerpc, then a
defconfig (pseries_defconfig for ppc) build, then:
$ make -j71 LLVM=1 clang-tidy 2> log.txt
$ grep -e linuxkernel- -e clang- log.txt | sort -u | cut -d '[' -f 2 |
sort | uniq -c
$ make -j71 LLVM=1 clang-analyzer 2> log.txt
$ grep -e linuxkernel- -e clang- log.txt | sort -u | cut -d '[' -f 2 |
sort | uniq -c

Looks like it's already finding a couple bugs.  I'll probably disable
clang-diagnostic-* in a follow up, as those seem pretty noisy, though
clang-diagnostic-incompatible-pointer-types will likely be of interest
for the CFI work.

Thanks for all of the work that went into this, and tolerating my pedantry.

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
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728004736.3590053-1-nhuck%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnrVP4Ci4MBd2NtW9Jkk60wVrpRwGV_rz1dw5NYVUdaSw%40mail.gmail.com.
