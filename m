Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWGO26AAMGQEXG7GRMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F043098BE
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 00:10:17 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id z4sf3715435uan.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 15:10:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612048216; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHZ/YoanH1G+xPnwfCWQuDkAhjsb+q85L+2O+zVFD7jBx0D5pHF/JqXFcESZvWxoeW
         o1tYQ1nMEXdvYTqZzjunQiYzHzl6tMWoczbfSfSs+nc/bxaGJXXu5c5yqf0tqoUKQk0G
         R/yV5u3Sy9avBUcC9kGLvdlf6F9uwqBC2He+GkSE9n5wBRPdr+ojQ5fSEEn2tHsLTeUE
         syaFRIccYm22pFTXjD3o3cBmcr6lb9pNN/VjaDSrtJuzZvP0ketvWpUb8pDY/j4Q8GBX
         hs2SVNkJ5sMTy84TIo1P+1kJSg69UztAd99smxdzEkTCJ+UwkGL9K08Bp9n2D/24dQbe
         E1Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=RalA5/hMjBesfKf30G8duvzIxlqk4D4rZdIJQLMwBKs=;
        b=ElEpyezIrEEiwuT8UWkfqf7HzQtJzjNverqggscf1C1QPVOfocdbDiazqwTL3t9Um/
         HuAB0VPVDT09ZoMkjRX0UGMPq1TxWpt85UyDHb5QTqIKxg8KdZ94x0CfW1aYWkOLoyT8
         OAvUURcIn7Y95Nc823aUbcjcKSTwebIqfSVrj83CDs7ouHfDAFxhU5rsPurF0v4fjhZ+
         2U7a6n3TsedoS4oNK+ZS3ZWZsL40TKXBwhvoxeIGZKwTdcuDnE10dr5EvDNy3FoTYX4s
         fJV+KJnQcpbwqoa6HoNtDPQIaYS91zFH9Ag+fngAxzKx1ZJmz+rDGNIVeWmzXydgaGUe
         ZoIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qqbBISE7;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RalA5/hMjBesfKf30G8duvzIxlqk4D4rZdIJQLMwBKs=;
        b=E149dQ5OOT8xv9pGlxoH0XtU/qLuBsJ8LXrtnZj/Smg6t8DTzlXd45lPnBRRNWodFq
         6FSzU868hmWqoExqVKuUJJMEPgeCed/QOcHs5iJ+qP07CPcS8OwN+LOb7TK3oCTa2VwW
         ozOGvi8IdGdIk8qYSdF9NJyGTkrFHU5/09KAQG/rbQMwMVMualGReLHqt6u1GYdv0atG
         SijpHzD6HwPvU2P6kqbja0VIitZ49Hemi8uo8g5C1IgMz1ZH13h+GJ3Be89Zud0hIyLV
         p44NmsL13QglKi7wZf2GZkiYXs+tLAa+6z5xJ008rPNwnAZCknoV2b6WS7s0idRxlvYf
         31Kw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RalA5/hMjBesfKf30G8duvzIxlqk4D4rZdIJQLMwBKs=;
        b=FXHdlzG+13TvJWaNqFo61Z5JbmBSs5QbYHqyyRfHorYDYxozCeDBmepLiU862N2He6
         t79F+AMWsop/ntU1RdI7/sdle2nSq2BCsPQFUpR4Sen9kERbMiSogB1JzI5W5IVV0P8d
         GRBH6ECR7ELTL17NrjOjBHU9nFQO0Hl8OTicKvwjWGpxSJia8hz1bJ6S9zU7smQ46070
         su5lSZHo9s6/0KbR5U/2kT5nJGEYdBKc/hrcw4QKyIo0A3cSznDHWnDk89u4EjeF3oiE
         /jObVSLV4k7vePbHYWlv/kZPMWFt1i/XdHMdn0mVyoKzNKEQFwSCFVZvJbnXD9o9TvuA
         aNQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RalA5/hMjBesfKf30G8duvzIxlqk4D4rZdIJQLMwBKs=;
        b=PM/RO/+p3FpOQ9xpK/85pRPIOAmmsV978M8kK6oYie/Nj4YQzth252CTCE/kfTmnNc
         KGN7f6A9unQJ93riZfyoSdPPJl5WgGENFsUxr+O0jpSXrFEJTiWO/FA5yGyKBDG8ZlwU
         2qRli3et0pXy5YmqUxvbRBwG7jVVrpeJbYdQeisvP1MPcF5n1Q0o+p6kkxxGjY1okxF5
         m29oNJ2I8iIYw3Mi97SZ3nz524poxLVME/t+RhKuG04Ye3MMdp6TsrmhzSh+HvfibPoV
         6GsRw3dXDX8QJt077Jo4/0MMxXhvw+VbXlsue+gQsT6BXZX3mNKmuomvIFmGW4l80pGv
         So/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533umMFdq6iK+ttD5psn0/TsU09/chq9l0F41h/1VmblYWaLekjS
	lUOsyg4vg53wlawdmwgpZfo=
X-Google-Smtp-Source: ABdhPJy75nVzRbQOlKS3gd//MZ7kX+Ed4Txq0qBGizKTNzI492KhIrcSeGEbNG+4DPH0Jbnvm/d/1g==
X-Received: by 2002:a1f:9854:: with SMTP id a81mr6419688vke.0.1612048216385;
        Sat, 30 Jan 2021 15:10:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb19:: with SMTP id d25ls1559779vsr.11.gmail; Sat, 30
 Jan 2021 15:10:16 -0800 (PST)
X-Received: by 2002:a67:fa0c:: with SMTP id i12mr6075187vsq.54.1612048215973;
        Sat, 30 Jan 2021 15:10:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612048215; cv=none;
        d=google.com; s=arc-20160816;
        b=a4jPZSr9eVyohwBWrZvhE3JwlsztqNb6OeFNz45ZFT3c9oBmraJkpU/FXJS0eyg7dG
         Lq/G7rxOh2Mt8IeyBW4r/BVhlklyvdPO80lTWLBlNhkux6rNP104HkihUYhfiRJBL8u3
         ziuEV587nO7LFMJHDXnkMYObKv+4t1T1KmR9bxBaZ1nrpsNoN34mtRMsIRSLJqdTeVdb
         nFcAqFdTJIvN5xJgEXJQfjWn7rj1+1YqUP2FALQS06Y+Hf/qmEkbtmYUTCSgiQh0y68v
         u64am8juXLde/3EUYrnHqq1kwNDuAOYFsSAETrRgsOoP4KlRuxza+pU32vg4LpDBAvgO
         wmrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=eUMkCHvaS5XtjP3wfPbJa/kaRkQN+NS5RoVd5CpPEk8=;
        b=D6vpIKvsx1ORxWDcza9EXUBJjPGO80Ryjqr9XoSIzpAp7o3EJCDPzpBp0HIyKGnUOy
         CY2ZbCWAZREkoal15ywDLu411bg8JYBRZ37R9aXak4AWTfclhccNB4wCFhickcBDqUQe
         LwSL7TzKYok4Z+ahr7f9xVgVNhBoj0g4A+bMiLYijDk7EdhHvpoM5Rl/3jUidZmgu09b
         dYvZyhttQoG/lex/6JRtszRPiKCpbHL23P9iYk3knguRE6IWIJxQ0ihq5KqKmZIRN9Aj
         eACEzxyNjdqa7qkmQGBRHnHWVoIxJQaEqCnmjhptA+9NKGOLo+b+mlLG4F4eN3EUcH/l
         gUzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qqbBISE7;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id h123si703619vkg.0.2021.01.30.15.10.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jan 2021 15:10:15 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id s24so1823666iob.6
        for <clang-built-linux@googlegroups.com>; Sat, 30 Jan 2021 15:10:15 -0800 (PST)
X-Received: by 2002:a5e:dd42:: with SMTP id u2mr5266437iop.57.1612048215456;
 Sat, 30 Jan 2021 15:10:15 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com> <20210130004401.2528717-3-ndesaulniers@google.com>
In-Reply-To: <20210130004401.2528717-3-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 31 Jan 2021 00:10:04 +0100
Message-ID: <CA+icZUW8N8La=HX6PT0_gWzPPxqW8EMooYpc4jJx6g44przOnA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qqbBISE7;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jan 30, 2021 at 1:44 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> Feature detection of DWARF5 is onerous, especially given that we've
> removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> support.
>
> The DWARF version of a binary can be validated with:
> $ llvm-dwarfdump vmlinux | head -n 4 | grep version
> or
> $ readelf --debug-dump=3Dinfo vmlinux 2>/dev/null | grep Version
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
> 515M    vmlinux.gcc10.2.dwarf5.compressed
> 599M    vmlinux.gcc10.2.dwarf4.compressed
> 624M    vmlinux.gcc10.2.dwarf2.compressed
> 630M    vmlinux.gcc10.2.dwarf5
> 765M    vmlinux.gcc10.2.dwarf4
> 809M    vmlinux.gcc10.2.dwarf2
>
> Though the quality of debug info is harder to quantify; size is not a
> proxy for quality.
>
> Jakub notes:
>   All [GCC] 5.1 - 6.x did was start accepting -gdwarf-5 as experimental
>   option that enabled some small DWARF subset (initially only a few
>   DW_LANG_* codes newly added to DWARF5 drafts).  Only GCC 7 (released
>   after DWARF 5 has been finalized) started emitting DWARF5 section
>   headers and got most of the DWARF5 changes in...
>
> Version check GCC so that we don't need to worry about the difference in
> command line args between GNU readelf and llvm-readelf/llvm-dwarfdump to
> validate the DWARF Version in the assembler feature detection script.
>
> GNU `as` only recently gained support for specifying -gdwarf-5, so when
> compiling with Clang but without Clang's integrated assembler
> (LLVM_IAS=3D1 is not set), explicitly add -Wa,-gdwarf-5 to DEBUG_CFLAGS.
>
> Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
> recognize the new additions to the DWARF debug info. Thanks to Sedat for
> the report.
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Caroline Tice <cmtice@google.com>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Jakub Jelinek <jakub@redhat.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile                          |  1 +
>  include/asm-generic/vmlinux.lds.h |  7 ++++++-
>  lib/Kconfig.debug                 | 18 ++++++++++++++++++
>  scripts/test_dwarf5_support.sh    |  8 ++++++++
>  4 files changed, 33 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> diff --git a/Makefile b/Makefile
> index d2b4980807e0..5387a6f2f62d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -831,6 +831,7 @@ KBUILD_AFLAGS       +=3D -Wa,-gdwarf-2
>  endif
>
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) :=3D 4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) :=3D 5
>  DEBUG_CFLAGS   +=3D -gdwarf-$(dwarf-version-y)
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmli=
nux.lds.h
> index 34b7e0d2346c..1e7cde4bd3f9 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -842,8 +842,13 @@
>                 /* DWARF 4 */                                           \
>                 .debug_types    0 : { *(.debug_types) }                 \
>                 /* DWARF 5 */                                           \
> +               .debug_addr     0 : { *(.debug_addr) }                  \
> +               .debug_line_str 0 : { *(.debug_line_str) }              \
> +               .debug_loclists 0 : { *(.debug_loclists) }              \
>                 .debug_macro    0 : { *(.debug_macro) }                 \
> -               .debug_addr     0 : { *(.debug_addr) }
> +               .debug_names    0 : { *(.debug_names) }                 \
> +               .debug_rnglists 0 : { *(.debug_rnglists) }              \
> +               .debug_str_offsets      0 : { *(.debug_str_offsets) }
>

I just looked at binutils 2.36 in the Debian/experimental repositories.

[1] says:

+ PR ld/27230
=EF=BF=BC+ * scripttempl/DWARF.sc: Add DWARF-5 .debug_* sections.

...

-  /* DWARF Extension.  */
=EF=BF=BC-  .debug_macro    0 : { *(.debug_macro) }
+  /* DWARF 5.  */
   .debug_addr     0 : { *(.debug_addr) }
+  .debug_line_str 0 : { *(.debug_line_str) }
+  .debug_loclists 0 : { *(.debug_loclists) }
+  .debug_macro    0 : { *(.debug_macro) }
+  .debug_names    0 : { *(.debug_names) }
+  .debug_rnglists 0 : { *(.debug_rnglists) }
+  .debug_str_offsets 0 : { *(.debug_str_offsets) }
=EF=BF=BC+  .debug_sup      0 : { *(.debug_sup) }

The list of DWARF-5 .debug_* sections is alphabetically sorted.
AFAICS .debug_sup section is missing?

- Sedat -

[1] https://salsa.debian.org/toolchain-team/binutils/-/commit/f58f330810356=
72b01a04326a9c8daadbd09a430

>  /* Stabs debugging sections. */
>  #define STABS_DEBUG                                                    \
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 94c1a7ed6306..ad6f78989d4f 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -268,6 +268,24 @@ config DEBUG_INFO_DWARF4
>           It makes the debug information larger, but it significantly
>           improves the success of resolving variables in gdb on optimized=
 code.
>
> +config DEBUG_INFO_DWARF5
> +       bool "Generate DWARF Version 5 debuginfo"
> +       depends on GCC_VERSION >=3D 50000 || CC_IS_CLANG
> +       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_=
support.sh $(CC) $(CLANG_FLAGS))
> +       depends on !DEBUG_INFO_BTF
> +       help
> +         Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0=
+ (gcc
> +         5.0+ accepts the -gdwarf-5 flag but only had partial support fo=
r some
> +         draft features until 7.0), and gdb 8.0+.
> +
> +         Changes to the structure of debug info in Version 5 allow for a=
round
> +         15-18% savings in resulting image and debug info section sizes =
as
> +         compared to DWARF Version 4. DWARF Version 5 standardizes previ=
ous
> +         extensions such as accelerators for symbol indexing and the for=
mat
> +         for fission (.dwo/.dwp) files. Users may not want to select thi=
s
> +         config if they rely on tooling that has not yet been updated to
> +         support DWARF Version 5.
> +
>  endchoice # "DWARF version"
>
>  config DEBUG_INFO_BTF
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support=
.sh
> new file mode 100755
> index 000000000000..c46e2456b47a
> --- /dev/null
> +++ b/scripts/test_dwarf5_support.sh
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with=
 DWARF
> +# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU bin=
utils
> +# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=3D25611
> +echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
> +  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev=
/null -
> --
> 2.30.0.365.g02bc693789-goog
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUW8N8La%3DHX6PT0_gWzPPxqW8EMooYpc4jJx6g44przOnA%4=
0mail.gmail.com.
