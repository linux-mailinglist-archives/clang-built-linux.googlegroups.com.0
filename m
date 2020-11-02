Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBRG27X6AKGQEJ6EZPYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C062A2301
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Nov 2020 03:21:57 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id n126sf4294962vsn.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Nov 2020 18:21:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604283716; cv=pass;
        d=google.com; s=arc-20160816;
        b=HQc8Ze8vWUiDrKJWznobgGVZkd6YJD3yEh6QicEaUYYg08H1mhZCz+PYLN+N4cCGfj
         p2OtuFEOt5WXt6nVHre0sAhZesEVdBJh+h6ix6YGi8Nhk4oyu6TSrxagfYo9V2i4nYeY
         vIuMmvS6Xno4JXlKlcxXeSlfuYWqVagaSXZ1IHwhdEXmtTviJfaNAcConuw03u9U1DoL
         kZ/mY+/DtLdTJE/GPtiprmoCW8v1wPcIX+zz0G2H00Rs/rTMlu3gPBWOxoTgxXp+fRXa
         vQIqSCiVHgizky3gPKUrmdXXfj/WwCsYgqd2C9CuWm/MMUv45gVluPtzeVG5xR9AowLa
         J/OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=LNdTEmB1EANixqSdND7WNy+BIVcZehCDfpM9eyP4m1M=;
        b=GIYICSrimTCuYkS1sXCu0LALXrcw1LPfi4gxCw+kXuwK4Z/FpsqsqP39GoV3QuRhZB
         RhE6Y80dz7Hp731+gz6Iczq4ytLODBNgWD2qFhETrG8aTI3wr57EX3Sm3TVeq/GytzaS
         g8DKu0ZjTRZt9wvVgUgU9n1+U18frEIDrCzXXMnXoGpVBfFn7nCsKRew+S/GNoJ0Jk00
         cHaYrSt4KpWyo26uiotdzV8wY5yxmfuftCKo7w+BVETtoqKMK1tGpYdcAdkJNBb3gqlR
         Fz6/JWev7fnsY+7oFdKBYU0JMWd5x30P9ISiL2UHFsbWsyxg70PAqDtjnBguPsuQ28Tg
         eZEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=YAqnaq7F;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LNdTEmB1EANixqSdND7WNy+BIVcZehCDfpM9eyP4m1M=;
        b=kwK+8mzTKFRbnZUu9Wyw8rtp6Y6BRz6iZ6tjvsHPmztQHlmtoG9HWOLn583is/CRFU
         Y7REy9Ln5TarTlwGalZweaq47O/7a7lcdqvERfj2dXWCINwLUSbxm3nXy2hAoE4fN44T
         z7Q5oL1q87rH9VKhlDl8ROGWEdonBaCY8l8jOWptQWWNM9YlQkmUZZOA3bKSh/wrkKvV
         n5fjdtOGn4V2SFw+ozoDzqpF/GRFbmFZ3xkzJemv6in+v3jvEm9nlepjaLy/ZXlPferB
         qqJqmEQJbpYrkveqPsXF7OIZp/5wnUByU5kuLkO3tgG2WuYdYHAhNEORb6lSoLS3Bchy
         8yPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LNdTEmB1EANixqSdND7WNy+BIVcZehCDfpM9eyP4m1M=;
        b=XciVCLC0CNDoF9eMy+m//RDDxINmECNSGq7/oFzcxRxX3fYdmU082dIPtIN0owBd5h
         sXDUxi8Ss8mDTynPYdZMz5hr6oWhWWeC5SbOxlfsaKcvf3gAcP1IXpLdXTcw8IjE/rXQ
         fHIuosqIgEq7rDTps406j5aeD1h/CcINNfiIzRrGjlfKhhQhC4ZDdTzJpG+suqJNxSeC
         h12O9Hu3AegHuhYI9mEo8YhlCfrQLOErJ8tHW8WgwByY6KMeGpnSglfuA2Ywd5cPRjb7
         /Q01TAlSuE2/KQdNPqgh54PYJBMxYUT+dAnFWVZAXXWDBr/x7yxXoDNZVXqAIEj/OYgj
         Jspg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309gdhMLnCGC54o4iE/Ce3NrWvL8pZq/C5X/+N9dg285WYR8ycx
	qLib8jxngz6cJoFDzsqfuWs=
X-Google-Smtp-Source: ABdhPJynPdg4OtBUHDNrCe/n+jWlhJ3LfCFow/GMFMupVipW0PYU2L+EQ7F9r1JAmvHZzYgxJI+J3A==
X-Received: by 2002:a05:6102:2ec:: with SMTP id j12mr12707380vsj.21.1604283716649;
        Sun, 01 Nov 2020 18:21:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6102:: with SMTP id v2ls1357828vsb.7.gmail; Sun, 01 Nov
 2020 18:21:56 -0800 (PST)
X-Received: by 2002:a67:7901:: with SMTP id u1mr4267123vsc.6.1604283716105;
        Sun, 01 Nov 2020 18:21:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604283716; cv=none;
        d=google.com; s=arc-20160816;
        b=w5U6FxHFXamC4kNyNY1WM7dKTGm4bCe/GiMW7OBbQPkjXQ2CRE0m41N5Ox9YXJMPjA
         GPMiBusZ5JEKGuhd2Q/sFSi8IL8fVgkJQSMBqD/viNwKCEEc1RThGUQ7G2OhqKD3x/eh
         r2NYY5PmvAspUW5x50YVvTaf/TiDPaHR38kvjOsegH73wbm+DkpE6GETIldWHHb0gGvm
         2ZZ+plQ8UjyrEiuRnlXNqHfIzNne5dPArgsC0BKggamCG9gu5pUhdRMbr6aJW1UUf1FD
         mEnH5Ymq7yVRfOSDki7sqSsa34G3pX50kjuGK//Em3PGNkc3cph653bM3sEt2cGP/LjQ
         iutA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=7kufdqB6w12vbwLH1sg8pmQm6IPoKcemYRUDaLJV+OQ=;
        b=uUE5MoqYb5AycDIf0Oq9MEeSV5jHOK926qM9YJU1ZI+Ii4HYSgO+BxACHbMZthpRB1
         UC2jrpKGHqb1LNA5I3y5pA2x8d7xgJms/t2TC5Snui7ydee8ng0PJ6/0EuJ8zHmr0+hM
         lo7eJ/3oecx/+OCIFzvub2WP4CEIhrVJlPqIACUSvI13Gqm8dEA/m34bkRHTlOuzWBlW
         GZ7BbRJKg2XVe1vEZbUGHdMM8KBtgAVFXsLpUZACWxZNwZMVCDAbp+dEF7cf5+z/zFkZ
         VHaqDZZUyU/jzEM7gpGLsVAtJVoQYf0V2moK6oGcp9FGhQAfq55sun2WwxPWggQp9gfX
         hBvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=YAqnaq7F;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id t26si77563uaq.1.2020.11.01.18.21.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2020 18:21:56 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0A22LJB2001761
	for <clang-built-linux@googlegroups.com>; Mon, 2 Nov 2020 11:21:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0A22LJB2001761
X-Nifty-SrcIP: [209.85.215.172]
Received: by mail-pg1-f172.google.com with SMTP id g12so9487399pgm.8
        for <clang-built-linux@googlegroups.com>; Sun, 01 Nov 2020 18:21:19 -0800 (PST)
X-Received: by 2002:a17:90a:aa91:: with SMTP id l17mr14663133pjq.198.1604283678819;
 Sun, 01 Nov 2020 18:21:18 -0800 (PST)
MIME-Version: 1.0
References: <20201022012106.1875129-1-ndesaulniers@google.com>
In-Reply-To: <20201022012106.1875129-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 2 Nov 2020 11:20:41 +0900
X-Gmail-Original-Message-ID: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
Message-ID: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=YAqnaq7F;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Oct 22, 2020 at 10:21 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> DWARF5 is the latest standard of the DWARF debug info format.
>
> Feature detection of DWARF5 is onerous, especially given that we've
> removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> support. Further -gdwarf-X where X is an unsupported value doesn't
> produce an error in $(CC). GNU `as` only recently gained support for
> specifying -gdwarf-5.
>
> The DWARF version of a binary can be validated with:
> $ llvm-dwarfdump vmlinux | head -n 5 | grep version
> or
> $ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version
>
> DWARF5 wins significantly in terms of size when mixed with compression
> (CONFIG_DEBUG_INFO_COMPRESSED).
>
> 363M    vmlinux.clang12.dwarf5.compressed
> 434M    vmlinux.clang12.dwarf4.compressed
> 439M    vmlinux.clang12.dwarf2.compressed
> 457M    vmlinux.clang12.dwarf5
> 536M    vmlinux.clang12.dwarf4
> 548M    vmlinux.clang12.dwarf2
>
> Make CONFIG_DEBUG_INFO_DWARF4 part of a Kconfig choice to preserve
> forward compatibility.
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> RFC because this patch is super half baked, but I'm looking for
> feedback.
>
> I would logically split this into a series of patches;
> 1. disable -Wa,gdwarf-2 for LLVM_IAS=1, see also
>   https://github.com/ClangBuiltLinux/linux/issues/716
>   https://github.com/ClangBuiltLinux/continuous-integration/blob/master/patches/llvm-all/linux-next/arm64/silence-dwarf2-warnings.patch
>   that way we can backport for improved LLVM_IAS support.
> 2. move CONFIG_DEBUG_INFO_DWARF4 to choice.
> 3. implement the rest on top.
>
> I'm pretty sure GNU `as` only recently gained the ability to specify
> -gdwarf-4 without erroring in binutils 2.35, so that part likely needs
> to be fixed.
>
>  Makefile                          | 19 ++++++++++++++++---
>  include/asm-generic/vmlinux.lds.h |  6 +++++-
>  lib/Kconfig.debug                 | 29 +++++++++++++++++++++++++----
>  scripts/test_dwarf5_support.sh    |  4 ++++
>  4 files changed, 50 insertions(+), 8 deletions(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> diff --git a/Makefile b/Makefile
> index e71979882e4f..0862df5b1a24 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -828,10 +828,23 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> -
> +DWARF_VERSION=2

This is not a shell script.
You can add spaces around '='



>  ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS   += -gdwarf-4
> +DWARF_VERSION=4
> +endif
> +ifdef CONFIG_DEBUG_INFO_DWARF5
> +DWARF_VERSION=5
> +endif


This might be a bit tricky, but you can do like this if you like:


dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
dwarf-version-$(CONFIG_DEBUG_INFO_DWARF3) := 3
dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5

DEBUG_CFLAGS  += -gdwarf-$(dwarf-version-y)






> +DEBUG_CFLAGS   += -gdwarf-$(DWARF_VERSION)
> +
> +ifneq ($(DWARF_VERSION)$(LLVM_IAS),21)
> +KBUILD_AFLAGS  += -Wa,-gdwarf-$(DWARF_VERSION)
> +endif
> +
> +ifdef CONFIG_CC_IS_CLANG
> +ifneq ($(LLVM_IAS),1)
> +KBUILD_CFLAGS  += -Wa,-gdwarf-$(DWARF_VERSION)
> +endif
>  endif
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index cd14444bf600..0382808ef9fe 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -828,7 +828,11 @@
>                 .debug_types    0 : { *(.debug_types) }                 \
>                 /* DWARF 5 */                                           \
>                 .debug_macro    0 : { *(.debug_macro) }                 \
> -               .debug_addr     0 : { *(.debug_addr) }
> +               .debug_addr     0 : { *(.debug_addr) }                  \
> +               .debug_line_str 0 : { *(.debug_line_str) }              \
> +               .debug_loclists 0 : { *(.debug_loclists) }              \
> +               .debug_rnglists 0 : { *(.debug_rnglists) }              \
> +               .debug_str_offsets 0 : { *(.debug_str_offsets) }
>
>  /* Stabs debugging sections. */
>  #define STABS_DEBUG                                                    \
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 537cf3c2937d..6b01f0e2dad8 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -256,14 +256,35 @@ config DEBUG_INFO_SPLIT
>           to know about the .dwo files and include them.
>           Incompatible with older versions of ccache.
>
> +choice
> +prompt "DWARF version"

Indentation for 'prompt'.


> +       depends on DEBUG_INFO

Unneeded.

This block resides inside 'if DEBUG_INFO'



> +       default DEBUG_INFO_DWARF2


This is unneeded because the first entry
is the default.


> +       help
> +         Which version of DWARF debug info to emit.
> +
> +config DEBUG_INFO_DWARF2
> +       bool "Generate dwarf2 debuginfo"
> +       help
> +         Generate dwarf2 debug info.
> +
>  config DEBUG_INFO_DWARF4
>         bool "Generate dwarf4 debuginfo"
>         depends on $(cc-option,-gdwarf-4)
>         help
> -         Generate dwarf4 debug info. This requires recent versions
> -         of gcc and gdb. It makes the debug information larger.
> -         But it significantly improves the success of resolving
> -         variables in gdb on optimized code.
> +         Generate dwarf4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> +         It makes the debug information larger, but it significantly
> +         improves the success of resolving variables in gdb on optimized code.
> +
> +config DEBUG_INFO_DWARF5
> +       bool "Generate dwarf5 debuginfo"
> +       depends on DEBUG_INFO
> +       depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +       help
> +         Genereate dwarf5 debug info. Requires binutils 2.35+, gcc 5.1+, and
> +         gdb 8.0+.
> +
> +endchoice # "DWARF version"
>
>  config DEBUG_INFO_BTF
>         bool "Generate BTF typeinfo"
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> new file mode 100755
> index 000000000000..82c0eea45845
> --- /dev/null
> +++ b/scripts/test_dwarf5_support.sh
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +set -eu
> +echo ".file 0 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -



Please tell me how this script detects the dwarf-5 capability.


This script fails for GCC 10.


masahiro@grover:~/workspace/linux-kbuild$
./scripts/test_dwarf5_support.sh  clang
masahiro@grover:~/workspace/linux-kbuild$ echo $?
0
masahiro@grover:~/workspace/linux-kbuild$
./scripts/test_dwarf5_support.sh gcc-10
{standard input}: Assembler messages:
{standard input}:1: Error: file number less than one
masahiro@grover:~/workspace/linux-kbuild$ echo $?
1




The manual says the fileno should be "a positive integer".


  .file fileno filename

  When emitting dwarf2 line number information .file assigns filenames
to the .debug_line file name table.
  The fileno operand should be a unique positive integer to use as the
index of the entry in the table.
  The filename operand is a C string literal.

  The detail of filename indices is exposed to the user because the
filename table is shared with the
  .debug_info section of the dwarf2 debugging information, and thus
the user must know the exact indices
  that table entries will have.



So, I modified the script as follows:


masahiro@grover:~/workspace/linux-kbuild$ git diff
diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
index 82c0eea45845..8d7213e8e51f 100755
--- a/scripts/test_dwarf5_support.sh
+++ b/scripts/test_dwarf5_support.sh
@@ -1,4 +1,4 @@
 #!/bin/sh
 # SPDX-License-Identifier: GPL-2.0
 set -eu
-echo ".file 0 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
+echo ".file 1 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -




masahiro@grover:~/workspace/linux-kbuild$ ./scripts/test_dwarf5_support.sh  gcc
masahiro@grover:~/workspace/linux-kbuild$ echo $?
0



But, GCC 4.9 also passes this check.

masahiro@grover:~/workspace/linux-kbuild$
~/tools/aarch64-linaro-4.9/bin/aarch64-linux-gnu-gcc --version
aarch64-linux-gnu-gcc (Linaro GCC 4.9-2016.02) 4.9.4 20151028 (prerelease)
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

masahiro@grover:~/workspace/linux-kbuild$
./scripts/test_dwarf5_support.sh
~/tools/aarch64-linaro-4.9/bin/aarch64-linux-gnu-gcc
masahiro@grover:~/workspace/linux-kbuild$ echo $?
0






Some nit-pickings.


echo '.file 0 "asdf"'

... might look cleaner because you do not need to
use escaping inside the single-quotes.



'set -u' seems to have no effect because "$*"
is the only variable expansion in this script.


              -u      Treat  unset variables and parameters other than
the special parameters "@" and
                      "*" as an error when performing parameter
expansion.  If expansion is attempted
                      on  an  unset variable or parameter, the shell
prints an error message, and, if
                      not interactive, exits with a non-zero status.






> --
> 2.29.0.rc1.297.gfa9743e501-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201022012106.1875129-1-ndesaulniers%40google.com.



--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAST0Ma4bGGOA_HATzYAmRhZG%3Dx_X%3D8p_9dKGX7bYc2FMA%40mail.gmail.com.
