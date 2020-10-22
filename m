Return-Path: <clang-built-linux+bncBCS7XUWOUULBBFOIYP6AKGQEEB5KC4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE2E295620
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 03:44:54 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id p63sf123501ybc.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 18:44:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603331093; cv=pass;
        d=google.com; s=arc-20160816;
        b=e+BGE2DGW4b5IuTgclJ3zsnY5dizHO0aKUtCTJ6mTaA9m242pkPM2I2DblD7Cqm7KD
         fhGtjL2ziNUFO0TtirXmZC3inYezieAJiIqHWIAIgp4sKfKqpADSWT9a3sfDGdTkwxZs
         P3kXH1obUXhW14uFMBxlTxDO12uQQq2mW8850Q1IlJ40DwgYtJvkXMV5D2tTErvZlJVt
         fTt0ywuSZySPh8yzCUDsdNGbaxeEPPnkTGCi+M/fTcat4uwvT7P3vo1HTvomD7+PQubD
         gkxLkhYmM6WkypqV/+yLoIjcyq79OpgJzxKomiXWdJxoL2n5JNLqRpUvan/n+TJbR5t5
         fQ9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=uXyAi/tdr7LjiUFviZTf1DDLfFZc9RrvpQJZdOPH5DM=;
        b=a9vBL88776kWTubLd76sBGJIPJrUySXGW1zqJYA2uRGgR5a/edGFbIK5KAfydhmkjI
         qThk+XWoD/Ka5cWpQpSHOJw/uOjtImrycoes6q4xVEciiCSsKPHOQi0yBR85bJnbZxq4
         p56NivKrGioU6t7vNb2kXRUEOAbCEZqrsiyPalWvLeUC0AIR7py13DRKj1oTF1f47dJY
         HrC6BRr6ZjyC0L3VqhOr+2lwz70eeHkgCSMv+cH8Tb1EKKWVfOCZnqi5UBCoNdlOA2Pb
         jpL3dritNTVf7MBaKhaQ36YWjmQ2qeXDq69SZCRWSUKRBmFKdVtJiX7K0iRODtYKsfbO
         OEEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gM1BzOuY;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uXyAi/tdr7LjiUFviZTf1DDLfFZc9RrvpQJZdOPH5DM=;
        b=AP19d79+yoqua/FjrcfpOtemLv4o2059M79fqfbsMBLbS9jZ8KElM+oMHawgkDnurf
         gPDeTVD9JOgLL1qbmeHd8Jdi2cQkXFQ5Y889WCuCYUxa/XDIhY4Reh74SRkobe0e0og7
         sSOGeBBWCGxWLySEQOfR9cDW1QkOxeNxYo+DEmELXMrBGeOlehVTAP8j7IPJzoODerr8
         79kXmzb57PlxEug3bbE6Jhv4SdgCi8/MHJ9KszzBWhKo8APS3hneDSRNmILIAszaUES3
         fkl5lp6P9fFlP1jhWLy2XSBwfcSMjAgt1z/XyrCWrx+dyvAL01tbhDDbKoVt2mD49si5
         RTYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uXyAi/tdr7LjiUFviZTf1DDLfFZc9RrvpQJZdOPH5DM=;
        b=FCuZxmyVvHKbalkp4IuyrMU6ap800PXpRrG63us4p82PLRov1HR5MaL37Qkt67Bk/v
         1jziDZzZfUwOIn2kUTyjaJjc5oml/D7ydUjEQTvXmSGJm2U+lmPh6kArcojL5tZ98/cK
         Z8iujuJkk5vGIcR1bH2t6nDZDDK9UshZhhvtW+s5WBcT/Xv/1IV2OgBv3DWAX4izZ7o5
         fcBOPsnkNDhsjAItjHKmFCW7erTlMvtfPJ1GPcco53GlgTEajN4plQfFm233CrysKYFZ
         qIN+rlIlvnxAkiXQK30m4ygVWZM7mkCeRojcJ3spXTcc0yGi2c1BhuhcSZss4dv+fryr
         kp7Q==
X-Gm-Message-State: AOAM5314CXux+4fLHF/U2IU9f64H79LDzwQhckhAWrhm5ZROE2D0u41k
	U3eT4p0QpkqD+BnKTJEuWG0=
X-Google-Smtp-Source: ABdhPJxSOlj5J7shUHXH/MJK2Of8UVBjiUP9Pt/SotNx/TI85ZYt1Y+p46wl4FPMKQk2sI2m8u9dxg==
X-Received: by 2002:a25:a85:: with SMTP id 127mr243238ybk.396.1603331093456;
        Wed, 21 Oct 2020 18:44:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:700b:: with SMTP id l11ls57100ybc.5.gmail; Wed, 21 Oct
 2020 18:44:52 -0700 (PDT)
X-Received: by 2002:a25:4216:: with SMTP id p22mr261367yba.234.1603331092866;
        Wed, 21 Oct 2020 18:44:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603331092; cv=none;
        d=google.com; s=arc-20160816;
        b=KJyarjiH3yxeoeqBKAVuwtfx6Nmg5KB9P7tdWYozjNvid3kTljV3O6QifmFFi4St3b
         2Sb0OAKuCgTi8mGYB545oR4BS0DGOFdgLNSXHubJuToiSaJnCrGRBWWraU4AbFPiG9oA
         rgo2zgzkA99gU656yuCra3dfEbBvt5NREXKXo+ikF2XCiAmlAcg4w9dMJqKKna6xsAQn
         gqA+1jHl4P0aFCjihyekVcDLvlEdbMk4WyLKR/pDZ7Pk01eDUTgKnU4QtM2eNxrEMVhE
         kM80+wH18UhQud6XPibhb6KwUtldQlso8PuyWNMD5WHEo0k4RNPY7/8yiUBRdRSuQ1Nc
         uELA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8b52jnuI2BVnQsT5yuf1ZFjurcL3wRE0q6QKCs+W/ic=;
        b=oHGKFOMyIVsBwuK/qWq5h+9b81UR7eJ8jDba9Tqg1l5BH67GJDrgViATYUl/IcpbN9
         dYrr4gvYIJnOHtGmovvo3o3cG01DWfaIpbKwuyuR9QK4C7uolk6L8r2wShejeubLH5a3
         5dBBSKQshpgjHbR4VJaaXsLgpImrqpRaroWwaFYCaOJBC1RdwqGQ49CnSVX90qluGM4r
         7rZL77fl0ja2U3e+c1opyGKltXxI+QW7P/C5KTx7HTEMV2cJaVh9jg+GCqUBDf4OVqqY
         YTqViZQGu42aulRZa1FNcSEzPlm0IMDtJKbYwd1VuvTJuGgcZywHTyfQJ0F4R7otC8o3
         L8Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gM1BzOuY;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id r8si15859ybl.1.2020.10.21.18.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 18:44:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id e10so153668pfj.1
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 18:44:52 -0700 (PDT)
X-Received: by 2002:a63:f84c:: with SMTP id v12mr324479pgj.125.1603331091866;
        Wed, 21 Oct 2020 18:44:51 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id v24sm118930pgi.91.2020.10.21.18.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 18:44:51 -0700 (PDT)
Date: Wed, 21 Oct 2020 18:44:48 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
Message-ID: <20201022014448.mcx5n7unf7kkka3o@google.com>
References: <20201022012106.1875129-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20201022012106.1875129-1-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gM1BzOuY;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-10-21, 'Nick Desaulniers' via Clang Built Linux wrote:
>DWARF5 is the latest standard of the DWARF debug info format.
>
>Feature detection of DWARF5 is onerous, especially given that we've
>removed $(AS), so we must query $(CC) for DWARF5 assembler directive
>support. Further -gdwarf-X where X is an unsupported value doesn't
>produce an error in $(CC). GNU `as` only recently gained support for
>specifying -gdwarf-5.
>
>The DWARF version of a binary can be validated with:

To be more correct: this is just the version number of the .debug_info section.
Other sections can use different version numbers.
(For example, GNU as still does not support version 5 .debug_line)

>$ llvm-dwarfdump vmlinux | head -n 5 | grep version
>or
>$ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version
>
>DWARF5 wins significantly in terms of size when mixed with compression
>(CONFIG_DEBUG_INFO_COMPRESSED).
>
>363M    vmlinux.clang12.dwarf5.compressed
>434M    vmlinux.clang12.dwarf4.compressed
>439M    vmlinux.clang12.dwarf2.compressed
>457M    vmlinux.clang12.dwarf5
>536M    vmlinux.clang12.dwarf4
>548M    vmlinux.clang12.dwarf2
>
>Make CONFIG_DEBUG_INFO_DWARF4 part of a Kconfig choice to preserve
>forward compatibility.
>
>Link: http://www.dwarfstd.org/doc/DWARF5.pdf
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
>RFC because this patch is super half baked, but I'm looking for
>feedback.
>
>I would logically split this into a series of patches;
>1. disable -Wa,gdwarf-2 for LLVM_IAS=1, see also
>  https://github.com/ClangBuiltLinux/linux/issues/716
>  https://github.com/ClangBuiltLinux/continuous-integration/blob/master/patches/llvm-all/linux-next/arm64/silence-dwarf2-warnings.patch
>  that way we can backport for improved LLVM_IAS support.
>2. move CONFIG_DEBUG_INFO_DWARF4 to choice.
>3. implement the rest on top.
>
>I'm pretty sure GNU `as` only recently gained the ability to specify
>-gdwarf-4 without erroring in binutils 2.35, so that part likely needs
>to be fixed.
>
> Makefile                          | 19 ++++++++++++++++---
> include/asm-generic/vmlinux.lds.h |  6 +++++-
> lib/Kconfig.debug                 | 29 +++++++++++++++++++++++++----
> scripts/test_dwarf5_support.sh    |  4 ++++
> 4 files changed, 50 insertions(+), 8 deletions(-)
> create mode 100755 scripts/test_dwarf5_support.sh
>
>diff --git a/Makefile b/Makefile
>index e71979882e4f..0862df5b1a24 100644
>--- a/Makefile
>+++ b/Makefile
>@@ -828,10 +828,23 @@ else
> DEBUG_CFLAGS	+= -g
> endif
>
>-KBUILD_AFLAGS	+= -Wa,-gdwarf-2
>-
>+DWARF_VERSION=2
> ifdef CONFIG_DEBUG_INFO_DWARF4
>-DEBUG_CFLAGS	+= -gdwarf-4
>+DWARF_VERSION=4
>+endif
>+ifdef CONFIG_DEBUG_INFO_DWARF5
>+DWARF_VERSION=5
>+endif
>+DEBUG_CFLAGS	+= -gdwarf-$(DWARF_VERSION)
>+
>+ifneq ($(DWARF_VERSION)$(LLVM_IAS),21)
>+KBUILD_AFLAGS	+= -Wa,-gdwarf-$(DWARF_VERSION)
>+endif
>+
>+ifdef CONFIG_CC_IS_CLANG
>+ifneq ($(LLVM_IAS),1)
>+KBUILD_CFLAGS	+= -Wa,-gdwarf-$(DWARF_VERSION)
>+endif
> endif
>
> ifdef CONFIG_DEBUG_INFO_REDUCED
>diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>index cd14444bf600..0382808ef9fe 100644
>--- a/include/asm-generic/vmlinux.lds.h
>+++ b/include/asm-generic/vmlinux.lds.h
>@@ -828,7 +828,11 @@
> 		.debug_types	0 : { *(.debug_types) }			\
> 		/* DWARF 5 */						\
> 		.debug_macro	0 : { *(.debug_macro) }			\
>-		.debug_addr	0 : { *(.debug_addr) }
>+		.debug_addr	0 : { *(.debug_addr) }			\
>+		.debug_line_str	0 : { *(.debug_line_str) }		\
>+		.debug_loclists	0 : { *(.debug_loclists) }		\
>+		.debug_rnglists	0 : { *(.debug_rnglists) }		\
>+		.debug_str_offsets 0 : { *(.debug_str_offsets) }

Consider adding .debug_names for the accelerator table.
It is the DWARF v5 version of .debug_pub{names,types} (which are mentioned
a few lines above).

> /* Stabs debugging sections. */
> #define STABS_DEBUG							\
>diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
>index 537cf3c2937d..6b01f0e2dad8 100644
>--- a/lib/Kconfig.debug
>+++ b/lib/Kconfig.debug
>@@ -256,14 +256,35 @@ config DEBUG_INFO_SPLIT
> 	  to know about the .dwo files and include them.
> 	  Incompatible with older versions of ccache.
>
>+choice
>+prompt "DWARF version"
>+	depends on DEBUG_INFO
>+	default DEBUG_INFO_DWARF2
>+	help
>+	  Which version of DWARF debug info to emit.
>+
>+config DEBUG_INFO_DWARF2
>+	bool "Generate dwarf2 debuginfo"
>+	help
>+	  Generate dwarf2 debug info.

In documentation, a more official way to refer to the format is: DWARF v2.
(While "DWARF5" and "DWARF v5" are acceptable, the latter is preferred)
Ditto below.

> config DEBUG_INFO_DWARF4
> 	bool "Generate dwarf4 debuginfo"
> 	depends on $(cc-option,-gdwarf-4)
> 	help
>-	  Generate dwarf4 debug info. This requires recent versions
>-	  of gcc and gdb. It makes the debug information larger.
>-	  But it significantly improves the success of resolving
>-	  variables in gdb on optimized code.
>+	  Generate dwarf4 debug info. This requires gcc 4.5+ and gdb 7.0+.
>+	  It makes the debug information larger, but it significantly
>+	  improves the success of resolving variables in gdb on optimized code.
>+
>+config DEBUG_INFO_DWARF5
>+	bool "Generate dwarf5 debuginfo"
>+	depends on DEBUG_INFO
>+	depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
>+	help
>+	  Genereate dwarf5 debug info. Requires binutils 2.35+, gcc 5.1+, and
>+	  gdb 8.0+.
>+
>+endchoice # "DWARF version"
>
> config DEBUG_INFO_BTF
> 	bool "Generate BTF typeinfo"
>diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
>new file mode 100755
>index 000000000000..82c0eea45845
>--- /dev/null
>+++ b/scripts/test_dwarf5_support.sh
>@@ -0,0 +1,4 @@
>+#!/bin/sh
>+# SPDX-License-Identifier: GPL-2.0
>+set -eu
>+echo ".file 0 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
>-- 
>2.29.0.rc1.297.gfa9743e501-goog
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201022012106.1875129-1-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201022014448.mcx5n7unf7kkka3o%40google.com.
