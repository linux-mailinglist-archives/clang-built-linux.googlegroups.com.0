Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBS4YRCAAMGQE7FD4LTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD3F2F87C4
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:42:37 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id t7sf5852442oog.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:42:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610746956; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fo+e93jpxeQUQ4BcW30OgLLC454LhY0sIgKhjkky3VGs2yzJ69j2WRNKlFCpuscBnp
         oi1eL7v0TKdebL071wszTpubqizTWbdrrgGdEQfJMfgIwVilVgXRWTbpVWMfMA8EJUSw
         Ur9HDjIxwpju/M9mvgFavFluXPNpgaF52qK48xQ9gqOY4B4vR1W+vUNKfruoJso7Dh5G
         rSbBcDYst78KfdOfFIHDMl/tAGez4l3aFneNmP3tA6/Kr3PdwDhoWD6AZh/cU4gHnVem
         IbfvCvVKPvzaQeCZZWczKZsqcMFIdbNfeSBPOdAupmoHnXg3LUAZDK8In01/hLgy2C6D
         P1TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wKvr9nsxXn7uob7UEi1TIyQ3psWp2nteVxFLizFtdsk=;
        b=0hnREUgixK9u5emfSPtXjdGHS1Sj/e79F61MIo+ZX2xrEQjggTqVDVeG9yqxC/Nv65
         Unb36aPwBqJVZpe4b54o55HFJoek5Lw3CJMDqqbS5g67yai8tcWh4gHTysvlj7eIrRfq
         6f/JzgAL7dfzrufE7cZs/UNOy3hl5B+QShxcdILd7uFR+wEXNgMDYB5VWJd+MRxekZIh
         AX/TdL3ZsoSKcaPj1gUPLXD8ZQT0BZd5NwtyUy73GhnZAcueyQUbhmrFdm07kcxKxEl6
         Ei+uaqmw0MTkRIkhrZTTYLuKBWlHxcY8qrxjEAKwEjXuX3QNQG04r4KGOYea2k5puy9h
         Pd/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jddejzpw;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wKvr9nsxXn7uob7UEi1TIyQ3psWp2nteVxFLizFtdsk=;
        b=adGvtj0wPfZAo+LH8OW2xHGJANdEGCIDR7Tt/b3cRNB/O4acIDUxDpefOCzDDsgRDM
         13vv32XjxnpvRIJcVESdXNEZEIH13QKS1gUg6LADS4wuo9rSaAvE7bEp2Ob2z7t0ROZS
         5FazdCDXD3cQJp4EPo4LA5pQFYqlenN3T/ek4goksZbwxwFTMPnPrDqKmw8OlFIDIpQo
         /A75Da3ox8ZKjnLyYSdnGXjV+taiBhdV5ncVd1J4/5DLkOIF0ycu+1xEscB0IDt0+9YE
         YyjhHuIIo6IjE+fntfFGzTOYkVJnOEPLiZGpuD9Kw65VxjDUnN2TUdpUQhxtdX3wXpu4
         J70w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKvr9nsxXn7uob7UEi1TIyQ3psWp2nteVxFLizFtdsk=;
        b=V8DpArRaUwdRVgLhbXcE3pIb7LNthppPkoadGP7/CEJ8ipdXKSi2mB56BFhMu/eNzS
         Ip8nlbgcW9oBD6BXlEiitsGhORHQiHUacefQ6QkAM3ntjG9KBl4aCoWcR8rANP4L0OW0
         FpJxq598cu+FvnPPezxnR455PcIxEeigt4xA7Ie57hbKVaTNcsbgHh5oelU+7YA7/gry
         yxv2jOtdAaERAs4oLpwDI6XhQx/EELdQJKf87K4Kh3tiFw9uQVScKJjEuEc/ZeXYSxd0
         om3kf93D+KWhaW0VmwqqCsvGXSgax8Mgr8yIvIJnQkGXtgdIFTxVyq0nhL9haQRDeSC8
         L33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKvr9nsxXn7uob7UEi1TIyQ3psWp2nteVxFLizFtdsk=;
        b=Gw7zwdB9kZPRL0/U32R0QQR7n82tP2NUP8RJQ9xdm48qF1RKufhRwSNpwXDKoBumot
         LfJSWGHxN7WLR5Hdv3b7zNwpkkZSIoAxdgB8a3JxqwufJ+owsH7gE/L+cpAKnQQkEdfc
         pGZf7UCZAA5DmtMPJu/uKlHpxCLhcklZAZM+3I0FUi6vpkvnPL+X0OhLC4VZNnPHo35q
         ygrjKcDwy+19IxZNAXIv4sddGuVDyLxgzJKW+DFN7aX7O2vhxLmBMwhc9rFnGqcUt+5d
         LITKnHEZ1hxSH1cqSpia+G5breo46Uqx4dsZ1Nx+ILG2QRcbrBFVc+9RfWqMVOkx+/Zc
         Ep9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mn0WjnT1eMU8kP+rP4ny4Jr331JgzdV5Qd6uw09wjB1z4Bvzt
	B27fwBNK8T3PDlwTyUb05Mo=
X-Google-Smtp-Source: ABdhPJwuRKCj0vbDcAPtPZGI3GUyMsapiArTl5v8ihs5cMovK3txbA7hs0OOoCBOtLa0XogV0/crUQ==
X-Received: by 2002:a9d:70d1:: with SMTP id w17mr2529979otj.9.1610746955997;
        Fri, 15 Jan 2021 13:42:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7a8e:: with SMTP id l14ls2645659otn.1.gmail; Fri, 15 Jan
 2021 13:42:35 -0800 (PST)
X-Received: by 2002:a9d:4715:: with SMTP id a21mr10301780otf.220.1610746955555;
        Fri, 15 Jan 2021 13:42:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610746955; cv=none;
        d=google.com; s=arc-20160816;
        b=fZVcWzyOM0YDZF7V1/p808aOJT0hYEaqNFYcDLsSX2b9JCfaLmrvZeJzW4NLnjQCt0
         UX3czBybd3x3aMKadsosk2fYdzfLrFoMpVEK7w1voRR2sacF0S1OR/rrJsU7FYHkKNHQ
         0DulNxtyW7Y4mYwSd9CWm1lRKmTzNkZtMVkFdnfd5iU/ZRLHG8615MztzSyx0jwrxNSd
         NDiM1Z/zNnWwxJXWSGAmsdCpfm1KTdOdb6Pq3GnqCvbcdwHwJQSO0X3P2wykl6+fibUu
         7VkcINxnGxbav1Wc2Xm6FdKrX28ghS657UEqjzKBeCcYO9PEbI3IyP1i2Vy03sFm1YJb
         SyDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KrJ2mYVoEchRR2uOsqZY+9xKiUZ8oXU02si2kBeet+s=;
        b=kid7RUn2DYvIc3QhHkyTJ107efrFN2L33dSGTBZno7e0x8A6pfV1o95d7GMPAihhmJ
         ZOH5xcuxvJiGIjob0BTH9LqhpP0xK9WvEytN6ogQxKS8kjaRxZH6or5r99JCLTyaDLaG
         Waoqlv3QDu6XuO2styDevVTDoWkA8ZpC8e6TLAbLviHmeTiSZCbBrLoYe4WpUuln2weM
         WcQQDDANyKjdYrKPPSOh3kADJ/lXMobrmKgKuM/Avn86SEFP7n0E8KId7u/k6W0j1IeM
         W9Tw4ADmpmEHYEIAdo2bOJ/jr1kuwuddd9VqdQtrqQkmUbYhfE9Z3V1KgyPzXhZcnNSc
         Z+Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jddejzpw;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id w26si785088oih.1.2021.01.15.13.42.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:42:35 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id n4so20911567iow.12
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:42:35 -0800 (PST)
X-Received: by 2002:a02:9f19:: with SMTP id z25mr11926529jal.30.1610746955254;
 Fri, 15 Jan 2021 13:42:35 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com> <20210115210616.404156-3-ndesaulniers@google.com>
In-Reply-To: <20210115210616.404156-3-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 22:42:23 +0100
Message-ID: <CA+icZUXYFdrHQYkM6J5WajaP6zCBHB2gEnDt6p1W6gRsTk__Zg@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] Kbuild: make DWARF version a choice
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Jddejzpw;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d
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

On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> way that's forward compatible with existing configs, and makes adding
> future versions more straightforward.
>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile          | 13 ++++++-------
>  lib/Kconfig.debug | 21 ++++++++++++++++-----
>  2 files changed, 22 insertions(+), 12 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index d49c3f39ceb4..4eb3bf7ee974 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,13 +826,12 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> -ifneq ($(LLVM_IAS),1)
> -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> -endif
> -
> -ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS   += -gdwarf-4
> -endif
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> +# Binutils 2.35+ required for -gdwarf-4+ support.
> +dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> +KBUILD_AFLAGS  += $(dwarf-aflag)
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
>  DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index dd7d8d35b2a5..e80770fac4f0 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -256,13 +256,24 @@ config DEBUG_INFO_SPLIT
>           to know about the .dwo files and include them.
>           Incompatible with older versions of ccache.
>
> +choice
> +       prompt "DWARF version"

Here you use "DWARF version" so keep this for v2 and v4.

> +       help
> +         Which version of DWARF debug info to emit.
> +
> +config DEBUG_INFO_DWARF2
> +       bool "Generate DWARF Version 2 debuginfo"

s/DWARF Version/DWARF version

> +       help
> +         Generate DWARF v2 debug info.
> +
>  config DEBUG_INFO_DWARF4
> -       bool "Generate dwarf4 debuginfo"
> +       bool "Generate DWARF Version 4 debuginfo"

Same here: s/DWARF Version/DWARF version

- Sedat -

>         help
> -         Generate dwarf4 debug info. This requires recent versions
> -         of gcc and gdb. It makes the debug information larger.
> -         But it significantly improves the success of resolving
> -         variables in gdb on optimized code.
> +         Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> +         It makes the debug information larger, but it significantly
> +         improves the success of resolving variables in gdb on optimized code.
> +
> +endchoice # "DWARF version"
>
>  config DEBUG_INFO_BTF
>         bool "Generate BTF typeinfo"
> --
> 2.30.0.284.gd98b1dd5eaa7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXYFdrHQYkM6J5WajaP6zCBHB2gEnDt6p1W6gRsTk__Zg%40mail.gmail.com.
