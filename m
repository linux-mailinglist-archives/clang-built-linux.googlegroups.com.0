Return-Path: <clang-built-linux+bncBCT6537ZTEKRBBMIVWDAMGQERNE3SPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 059F53AB3EC
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 14:45:58 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id lt4-20020a170906fa84b0290481535542e3sf303215ejb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 05:45:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623933957; cv=pass;
        d=google.com; s=arc-20160816;
        b=zqfKhl5wqXG5uYuxywxVRpi7JTjf8jBlMX4Q7A9qGYmbtT6ntklG4ywIkQHYy0m14J
         lwPy0uKV/Wvgtusw/bG6Lt/tP+pVmGv50tH2xPHq9c/ipnpSLY605b731gk0wxy5fkF0
         q/0SkRr4KnpqZQV0kZqyrOPJtfsiq1Xv1zMfB9YdTVXZZZEz+n5Y5jQ84urAms/WxrHM
         dD81IGNYc6vvVIJd616dGwsHa3wjkd5kNnFZm6eK0RSN4iy0D/tcLLKYf7AuoEpIaV3w
         DXewvCRZuDREPixBRg5H/iAgwCMgNjy9gR/8VbGYvKiR3cUWUB3cLohGrz2PX/jt3rmz
         9akg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TuVn1f3IkPJKdUu4JXv/s6hACEd8RUF38e9+ZosGlq4=;
        b=k0uRfrbL+chRtepX0iXgg3dEgijdpgo50Ibz3e94ZiWT0trP98OapgD7QUPLhzrpq+
         63F+NSFt0t5KXIBoL5dDvblIO0EdaIQJikLLA8Yzc9jN9HhAHGMdpZa5IJ2EEwZol/rg
         RgLxY7OMD6HxuBBrDBtQI0VnX64Q9lndVkEpLFnaXX6cWddVmQyZacHzDny/2VEWcKwW
         WaegwlaiuVHbm6IjB4gv9+LdT79UA60DMqodEpMjHR8akqHWEgkzHmT/wThBNTdPps6A
         IobhZWHOHDuGovTyKbt/11vJaHT5+ro99s+bfo3Wnj2xRCPPcEG7NJTLz7f8qP5aw1vn
         dZXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iP9jNH0t;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TuVn1f3IkPJKdUu4JXv/s6hACEd8RUF38e9+ZosGlq4=;
        b=LRH1XIEpThf1S1Y1EkSZwBXjUGOC0oOG+nd4r/PcOZNsLTi5iHq4BkFlDRE6U+OOhY
         vyCn2bfMowlXfNhvufNW+wVyR9/GzOy38Nv1QTuGx+e1EHrC8eyF843x14mthwytLRNi
         Yxay5HRSV4XB8qVY2Hb/aa0SRas1cqO0NDgOqa3JxJJg0CN8r25Hvufw6Q+nXuu8Ld/Y
         d3A26dnDp8oGs8k7vENW2SmWPYWTUaknlQkL+UU7ltGrEaoIkwjdYYnDQywJoqEq1a2J
         GiQATlmxHYwsUZ5Ari/w5CkgT5EauyGqGaX4ps+PQ1fWNfgQZGAVM6f2HxibYrJxeWH8
         E0HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TuVn1f3IkPJKdUu4JXv/s6hACEd8RUF38e9+ZosGlq4=;
        b=MDp/KMS3wIQ/utokJrHCC/sDWJ14RwL4JMUvX3cviR99QxEh8PG7O6C3x3j2XqC4i8
         sSaZWgSZE2pFQerRNGFRYO65XkAX5y1qsX2Y7wjgtq6OvQkfy7A5spicIK/biw8bdxRt
         xlhVHnxO3PEcgfcRd/wRHRJtHLpM4weDKIQNDrEHfcIaSjTNw6jdHBcivVZH7EJQEJuo
         OgJQZllQAkmi51wITqqPXiIhomM3aPyFKCz6dg1mRGkC4MTyTB7TaGusVm4u92fZq2/x
         7ilOWelLsL+ILgtpHhIaAIwuCNIdKFFwiVx4MZxt9SNtr+yJW2wy07MfAsUNjJOj3eAt
         +sSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vyEphElPd62ejfYeAUFAZCussZk0cZosblNWTXOCwMUq5Ailo
	m2etI02fz4RDFi1JyhCdFac=
X-Google-Smtp-Source: ABdhPJzB76Pvx/xSPXEePu2Jji1zwnqKB2GAQMRgYHWmNlvZA8QVYZ8L2nWC45sEzTixRVY+nr/m6w==
X-Received: by 2002:a17:907:3e1a:: with SMTP id hp26mr4988058ejc.77.1623933957686;
        Thu, 17 Jun 2021 05:45:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:4404:: with SMTP id y4ls922063eda.1.gmail; Thu, 17
 Jun 2021 05:45:56 -0700 (PDT)
X-Received: by 2002:a05:6402:d06:: with SMTP id eb6mr6104238edb.337.1623933956786;
        Thu, 17 Jun 2021 05:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623933956; cv=none;
        d=google.com; s=arc-20160816;
        b=ROEBAtnJzNCjaBUy+YiFM/CO/Hb7z9NxyKMDqFx0mxddbc3KY1QEOgIwqa/8yDnbat
         BhF/60YvrE8cZMUaz/6uMkAU/urkdl1FYMNd2MgUHhkpAlOEaLib7g6oHY+VmIAHm6WL
         KDEh9V28c6lUkaiV3KgNPVdljsUYTvlPAbCSDT55Eea9+gyuukoNh1rgGYDE9XKZ9WsE
         X+TaKwZSO2NhTk7YjPf+mEKS06QNaVgHnQhHACbHc4rhyYJil6y4j9Bmx4aF4PNC1JHv
         fwwAaEoiZEGMpiYRRxwz07d/lgeRqqy8jfhP5eMuwZoOPZFjMcBMZov8Gsob49NhlV+q
         fS/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mhQF38qVkFPjYjvziQjLIcfMR/G9GUoa3asUn5y7JgI=;
        b=ZKVA620U22D2MU0XBvvb3bCwhPgI09Iifuv2fY3X50XT70rGw9x8hWnPLvYwY1IDe7
         e2XgP912qKvGJppPKLDZ50smVvZcIqOYFdA6pimO/76CkgK44fR8LcZgrPckc6ngiM4t
         fTLiG+K9HYvTcq/v/IFbHPfAqMSSdDadk7WTq49o69tu1yK95V1bPAZ244EN+ewJbeiO
         dPFSc8D3un/NqCDfUUlU2TsPu7Fde0uE6nrS1k3IaSBSlWOfUxCsvRkqRd18vcnHBP8t
         OMHz1Iwdk4v8jtkNOZjMbABPyqtw1jWWymmd/+IxyPrmuvavVO3aqCQGkB09qtlfNq4P
         SBCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iP9jNH0t;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id s9si270377edw.4.2021.06.17.05.45.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 05:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id ho18so9662933ejc.8
        for <clang-built-linux@googlegroups.com>; Thu, 17 Jun 2021 05:45:56 -0700 (PDT)
X-Received: by 2002:a17:906:480a:: with SMTP id w10mr5071539ejq.18.1623933956354;
 Thu, 17 Jun 2021 05:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
In-Reply-To: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 17 Jun 2021 18:15:45 +0530
Message-ID: <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
To: Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	open list <linux-kernel@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Stephen Rothwell <sfr@canb.auug.org.au>, Stephen Boyd <swboyd@chromium.org>, 
	Jiri Olsa <jolsa@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Evan Green <evgreen@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	Petr Mladek <pmladek@suse.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Matthew Wilcox <willy@infradead.org>, 
	Baoquan He <bhe@redhat.com>, Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@redhat.com>, 
	Konstantin Khlebnikov <khlebnikov@yandex-team.ru>, Sasha Levin <sashal@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Vivek Goyal <vgoyal@redhat.com>, Will Deacon <will@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=iP9jNH0t;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, 17 Jun 2021 at 17:41, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
>
> Linux next 20210617 tag following x86_64 builds failed with clang-10
> and clang-11.
> Regressions found on x86_64:
>
>  - build/clang-11-tinyconfig
>  - build/clang-11-allnoconfig
>  - build/clang-10-tinyconfig
>  - build/clang-10-allnoconfig
>  - build/clang-11-x86_64_defconfig
>  - build/clang-10-defconfig
>
> We are running git bisect to identify the bad commit.
>
> Build log:
> ------------
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> eb_relocate_parse_slow()+0x466: stack state mismatch: cfa1=4+120
> cfa2=-1+0
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> eb_copy_relocations()+0x1e0: stack state mismatch: cfa1=4+104
> cfa2=-1+0
> x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
> mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'

The git bisect pointed out the first bad commit.

The first bad commit:
commit 928cf6adc7d60c96eca760c05c1000cda061604e
Author: Stephen Boyd <swboyd@chromium.org>
Date:   Thu Jun 17 15:21:35 2021 +1000
    module: add printk formats to add module build ID to stacktraces

    Let's make kernel stacktraces easier to identify by including the build
    ID[1] of a module if the stacktrace is printing a symbol from a module.
    This makes it simpler for developers to locate a kernel module's full
    debuginfo for a particular stacktrace.  Combined with
    scripts/decode_stracktrace.sh, a developer can download the matching
    debuginfo from a debuginfod[2] server and find the exact file and line
    number for the functions plus offsets in a stacktrace that match the
    module.  This is especially useful for pstore crash debugging where the
    kernel crashes are recorded in something like console-ramoops and the
    recovery kernel/modules are different or the debuginfo doesn't exist on
    the device due to space concerns (the debuginfo can be too large for space
    limited devices).

    Originally, I put this on the %pS format, but that was quickly rejected
    given that %pS is used in other places such as ftrace where build IDs
    aren't meaningful.  There was some discussions on the list to put every
    module build ID into the "Modules linked in:" section of the stacktrace
    message but that quickly becomes very hard to read once you have more than
    three or four modules linked in.  It also provides too much information
    when we don't expect each module to be traversed in a stacktrace.  Having
    the build ID for modules that aren't important just makes things messy.
    Splitting it to multiple lines for each module quickly explodes the number
    of lines printed in an oops too, possibly wrapping the warning off the
    console.  And finally, trying to stash away each module used in a
    callstack to provide the ID of each symbol printed is cumbersome and would
    require changes to each architecture to stash away modules and return
    their build IDs once unwinding has completed.

    Instead, we opt for the simpler approach of introducing new printk formats
    '%pS[R]b' for "pointer symbolic backtrace with module build ID" and '%pBb'
    for "pointer backtrace with module build ID" and then updating the few
    places in the architecture layer where the stacktrace is printed to use
    this new format.

    Before:

     Call trace:
      lkdtm_WARNING+0x28/0x30 [lkdtm]
      direct_entry+0x16c/0x1b4 [lkdtm]
      full_proxy_write+0x74/0xa4
      vfs_write+0xec/0x2e8

    After:

     Call trace:
      lkdtm_WARNING+0x28/0x30 [lkdtm 6c2215028606bda50de823490723dc4bc5bf46f9]
      direct_entry+0x16c/0x1b4 [lkdtm 6c2215028606bda50de823490723dc4bc5bf46f9]
      full_proxy_write+0x74/0xa4
      vfs_write+0xec/0x2e8

    Link: https://lkml.kernel.org/r/20210511003845.2429846-6-swboyd@chromium.org
    Link: https://fedoraproject.org/wiki/Releases/FeatureBuildId [1]
    Link: https://sourceware.org/elfutils/Debuginfod.html [2]
    Signed-off-by: Stephen Boyd <swboyd@chromium.org>
    Cc: Jiri Olsa <jolsa@kernel.org>
    Cc: Alexei Starovoitov <ast@kernel.org>
    Cc: Jessica Yu <jeyu@kernel.org>
    Cc: Evan Green <evgreen@chromium.org>
    Cc: Hsin-Yi Wang <hsinyi@chromium.org>
    Cc: Petr Mladek <pmladek@suse.com>
    Cc: Steven Rostedt <rostedt@goodmis.org>
    Cc: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
    Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
    Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
    Cc: Matthew Wilcox <willy@infradead.org>
    Cc: Baoquan He <bhe@redhat.com>
    Cc: Borislav Petkov <bp@alien8.de>
    Cc: Catalin Marinas <catalin.marinas@arm.com>
    Cc: Dave Young <dyoung@redhat.com>
    Cc: Ingo Molnar <mingo@redhat.com>
    Cc: Konstantin Khlebnikov <khlebnikov@yandex-team.ru>
    Cc: Sasha Levin <sashal@kernel.org>
    Cc: Thomas Gleixner <tglx@linutronix.de>
    Cc: Vivek Goyal <vgoyal@redhat.com>
    Cc: Will Deacon <will@kernel.org>
    Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
    Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
 Documentation/core-api/printk-formats.rst |  11 ++++
 include/linux/kallsyms.h                  |  20 +++++-
 include/linux/module.h                    |   8 ++-
 kernel/kallsyms.c                         | 101 ++++++++++++++++++++++++------
 kernel/module.c                           |  31 ++++++++-
 lib/vsprintf.c                            |   8 ++-
 6 files changed, 154 insertions(+), 25 deletions(-)
Previous HEAD position was b2dcc0267277 dump_stack: add vmlinux build
ID to stack traces
HEAD is now at 7d9c6b8147bd Add linux-next specific files for 20210617



> make[1]: *** [/builds/linux/Makefile:1252: vmlinux] Error 1
> make[1]: Target '__all' not remade because of errors.
> make: *** [Makefile:222: __sub-make] Error 2
> make: Target '__all' not remade because of errors.
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=x86_64
> CROSS_COMPILE=x86_64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang' headers_install
> INSTALL_HDR_PATH=/home/tuxbuild/.cache/tuxmake/builds/current/install_hdr/
> tar caf /home/tuxbuild/.cache/tuxmake/builds/current/headers.tar.xz -C
> /home/tuxbuild/.cache/tuxmake/builds/current/install_hdr .
>
> ref:
> https://builds.tuxbuild.com/1u4ZKFTh12vrYBVf8b1xGpaFOrE/
>
> # TuxMake is a command line tool and Python library that provides
> # portable and repeatable Linux kernel builds across a variety of
> # architectures, toolchains, kernel configurations, and make targets.
> #
> # TuxMake supports the concept of runtimes.
> # See https://docs.tuxmake.org/runtimes/, for that to work it requires
> # that you install podman or docker on your system.
> #
> # To install tuxmake on your system globally:
> # sudo pip3 install -U tuxmake
> #
> # See https://docs.tuxmake.org/ for complete documentation.
>
> tuxmake --runtime podman --target-arch x86_64 --toolchain clang-11
> --kconfig x86_64_defconfig
>
> ref:
> https://builds.tuxbuild.com/1u4ZKFTh12vrYBVf8b1xGpaFOrE/
>
> build info:
>     git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
>     git_sha: 7d9c6b8147bdd76d7eb2cf6f74f84c6918ae0939
>     git_short_log: 7d9c6b8147bd (\Add linux-next specific files for 20210617\)
>     kconfig: x86_64_defconfig
>     kernel_image:
>     kernel_version: 5.13.0-rc6
>     toolchain: clang-11

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

> --
> Linaro LKFT
> https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvvf%2BXTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA%40mail.gmail.com.
