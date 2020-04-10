Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWNIYD2AKGQEVHLWEEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EBE1A4292
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 08:38:18 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id r17sf643406wrg.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Apr 2020 23:38:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586500698; cv=pass;
        d=google.com; s=arc-20160816;
        b=LhGVfbzOwZQ7o3iEnIZCVL9pua3dVSqvf7HLYHi789h8zAO3jzj+qTjYDvbvtMDp28
         wFsyol1oQck699fuirHoGyrVQKQA+/LLVckH/xALKnVrDWNSUzXLrTY1fZ+chaDIDEuB
         7sjX5aesD/aKu5Q9RszCP4rJYOdaN93pujwgYQNBSMNS4TzQqLseWwEehxnCMudcjrHj
         B/2SCarJSDoFk4f/4jYdmptHHmzutldU2R4n5fkd0x/PE4H1Tq70BEMoo8XfNQu2PJzI
         ndaW659Nnos633h7L2ewq06QSxWZxpPgGgzRNxFv8HaR9FN7t7RLWJ0KV1SeBkvnNy4Z
         bD+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=ylM+5WiIG/CBKPRpRqPKmHznT2Y96836BP9inP+iKoM=;
        b=CIdAyZpw7rU2KZHY5nllLRLzyFG4nskGE8cLgOXZJ0pvpW0fP6LCHAMVCFmYU78pHy
         7zOY4alRfjCRgflMro3DcbZj24EoyYaTOwaHEzvc2OexYqSR6YqDU8/gn9ijnKtKrwLZ
         h/vnYAbjg2FEUtZUe7+p9Yafcwg793nE8+ZoAzZye27QieXx+pKAQ6TXsxKq1cRH8stb
         hvTj/kBRl5mZ9D0TTcyRJ51CYhGxtzUt/F+c6KytSd3hh7Kc8DKALbfJpbThzP0gcKJu
         LCY2+5FMIbWgITKoZBt5Gl2Ls6kQXvPZmTyxkRalw8n67XV6OLQob2xqbj515iDzy3J6
         qjAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vjn+dT6R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ylM+5WiIG/CBKPRpRqPKmHznT2Y96836BP9inP+iKoM=;
        b=tKCnf9/+L16Ldlmhm8aO/7EdloBMNuAyfz4PjpANdVw8T3/eMAd4/NGW/kkeaRG+7V
         jfcGYS6szqFrwigRBTNbXUYy5gipfkCYJ5XU7DTEpbvvqRLaDwr6mV+sApn+ErScx61E
         XgxZHdj75VUjxdKj8qlkRvPKwDIZLefN+7Mvxpo360BqwaNvVv0NXpXUiW8TIgEMIVXw
         OntJR927FXt0Ax7VeozuzQrT4gZIF+d4rfkXFYV6DeXQvYmxWlBBfSThZVXyHWAVlPKE
         QLYGmL048DAo04TxucWksLrwdYscKkvwJhpczEMhIJgYXD3qhJu1SQgK6rXsOJSMs7Kw
         6qjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ylM+5WiIG/CBKPRpRqPKmHznT2Y96836BP9inP+iKoM=;
        b=gf1GcHkjdTTQ/ZVneUzv5DNsjFvicE8OB/nmViWddr3Gscc4LSCfls4SjYYe+uGGON
         tCDx/GSeWKpwFbdgSg1w/qDn3bIGOLizvJf1TovGkBJ6sK9RtW8TVh76hN8CG863rLp+
         hrjC6C9sEHWRzF/HvkkJaqdUMKOufCmgPD/qs8Jr5xz6VDV+prQpSIK0Kfg269j/9UzH
         TI3etsrJmYUFdg1//Zkys7s4YZOlCijqCAKDYDsSGcJJtjXfu4euOmcTl4JxnV6ODKnJ
         O44Eqa5pTxuwIDubtegZHkKW2drKMcBt8f92+NbGjZZkvgx5/OV13scW2vSYRe3WZOnG
         osQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ylM+5WiIG/CBKPRpRqPKmHznT2Y96836BP9inP+iKoM=;
        b=iFKbyjAfmq5lC2qmaO8ntuC4A//oa+VHnpLygk6aVNRCFSF1VDnLfPkvEL2ltrcLf+
         Gg9VAIKvowXTbuZ+THh3aKSS8iQtl1mZSDjRG5w57MjTXpAO2qhYiT2PRVGeGo3UeZqo
         6ZC09u2pLVnrOq6nHPylidMD7Bx8wdg+ZHFB4/Uec4czoMxeWeN/K2BkSl41xQUDsSsD
         8QUTayMSEQ57rUXFQvYIBsx7p0b3gf63DBFbfw3QPp+wFP9DXxKf4DIm3M/CqA01enkD
         3ynI1Z6ssWfx3sJnWZmobHZq3X7e9OaZirB1Sobsqx2KgsSwQcyo4+95da3duYUSdXAe
         W/1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZKnMqxf8o+fzHGPU4q+yBlszcJEavFPh6hZMYNKYIcpPvUA/1H
	Xqymk0iWH8UR62uakNDrrh4=
X-Google-Smtp-Source: APiQypKPto+6JGMO7miF1MUv7M8RPWosWXhWTXaX12XfIvdSSR3ovgBkigGktrZxgegoi33z7cTFzw==
X-Received: by 2002:a5d:4d09:: with SMTP id z9mr3237054wrt.292.1586500698083;
        Thu, 09 Apr 2020 23:38:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls5549391wmb.1.canary-gmail; Thu,
 09 Apr 2020 23:38:17 -0700 (PDT)
X-Received: by 2002:a1c:c302:: with SMTP id t2mr3648249wmf.85.1586500697322;
        Thu, 09 Apr 2020 23:38:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586500697; cv=none;
        d=google.com; s=arc-20160816;
        b=BlyEwuy6Fk8WeLXMeLr44i/NQ/sGjwpOA0UuzzylI24JrSS2LEXmqIZG/nJepwFLc1
         pXgxjCgwJ9TUV+JSG97lYIiQ3FF7njxni5J24o0ZnLGaYg9WUAd6kHCoZ8i5j4yB+w2U
         L7ErSJiufbdwY5ODP0LI/o+i9yzH4w1QPv6G1ZNr6+tOUVvU3Eh8sbLaCIcH9Xl4rJ0q
         A7UO3iy/G4PkXw2JEUpUWEd0dVemTLGoEUCK3Dp38EAB9W/oWhno5+Q0DbsbFKgv2HT6
         C1oyXxpVZD2MpipteOxmLdHRs1zGnMmN4WLGeZZj+6cMx3uqRstdSDVwYoOaEf5NBPWR
         yyAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=3YosXBMphFBPTyrYk/RdbHSh5tz3MJefldr296tJxNs=;
        b=QLpDEtrQHdsj/gmf48snCroszLuS21qK6jsAG6YTo0TKrORiPCXNtvqIGeTGzmeChI
         nxZcjugsyMbc3WAB+ffvM1QcR7z1Uv0GNJRYp0cZSx4OVH/ewxZkXj8JDCFpUD1WLAVV
         wSw1Q6lyvQ/QbtDW6xQTedRXepYU9Y2iE+dBkVX0C97Ih7nIuUySP9E6cOuZEXZMlDKd
         UT+jYQz/MuiM/pSvQOSBihFYDCvszs+zalOf2jlmZ2HnxzWZfP12tBlp7gn4RKw0cNPG
         +MUDIOWpAfhfmaH7UQBIsRnPBkeXNsD1U9xu9Qv9sKvjLamohGTDv9wsy44M48JEvThi
         lrGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vjn+dT6R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id u15si49940wru.2.2020.04.09.23.38.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 23:38:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id d77so1493677wmd.3
        for <clang-built-linux@googlegroups.com>; Thu, 09 Apr 2020 23:38:17 -0700 (PDT)
X-Received: by 2002:a7b:c927:: with SMTP id h7mr3520294wml.122.1586500696907;
 Thu, 09 Apr 2020 23:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
In-Reply-To: <20200409232728.231527-1-caij2003@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 10 Apr 2020 08:38:05 +0200
Message-ID: <CA+icZUWJLGfp-UVhXDaCR=Xnce7phE1ffPHC4RzM8mXPhBaV9g@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Jian Cai <caij2003@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, manojgupta@google.com, Peter.Smith@arm.com, 
	stefan@agner.ch, samitolvanen@google.com, ilie.halip@gmail.com, 
	jiancai@google.com, Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Walleij <linus.walleij@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Doug Anderson <armlinux@m.disordat.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tejun Heo <tj@kernel.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Dan Williams <dan.j.williams@intel.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, David Howells <dhowells@redhat.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Vjn+dT6R;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
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

On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
>
> iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> kernel.
>
> Signed-off-by: Jian Cai <caij2003@gmail.com>
> ---
>  arch/arm/Kconfig | 2 +-
>  init/Kconfig     | 6 ++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 66a04f6f4775..39de8fc64a73 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
>
>  config IWMMXT
>         bool "Enable iWMMXt support"
> -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU=
_PJ4B
> +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 =
|| CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
>         default y if PXA27x || PXA3xx || ARCH_MMP || CPU_PJ4 || CPU_PJ4B
>         help
>           Enable support for iWMMXt context switching at run time if
> diff --git a/init/Kconfig b/init/Kconfig
> index 1c12059e0f7e..b0ab3271e900 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -19,6 +19,12 @@ config GCC_VERSION
>  config CC_IS_CLANG
>         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
>
> +config AS_IS_CLANG
> +       def_bool $(success,$(AS) --version | head -n 1 | grep -q clang)
> +
> +config LD_IS_LLD
> +       def_bool $(success,$(LD) --version | head -n 1 | grep -q LLD)
> +
>  config CLANG_VERSION
>         int
>         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> --
> 2.26.0.110.g2183baf09c-goog

Yesterday, when looking trough commits in Linus tree, I saw:

"init/kconfig: Add LD_VERSION Kconfig"

Nick had a patchset to distinguish LINKER via Kconfig (I cannot find
it right now).

So we should do all this the way CC_IS_XXX CC_VERSION handling is done.

I just want to point to [2] where we can rework (simplify) this
handling for CC and LD handling in a further step.
In one of Peter Z. tree someone started to do so (I was inspired by that).

Unfortunately, the hunk from [1] is IMHO a bit mis-placed and CC and
LD handling should stay together:

CC_IS_XXX where XXX is GCC or CLANG
CC_VERSION where CC is GCC or CLANG

LD_IS_XXX where XXX is BFD or GOLD or LLD
LD_VERSION

Just my =E2=82=AC0,02.

Regards,
- Sedat -

[1] https://git.kernel.org/linus/9553d16fa671b9621c5e2847d08bd90d3be3349c
[2] https://github.com/ClangBuiltLinux/linux/issues/941

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUWJLGfp-UVhXDaCR%3DXnce7phE1ffPHC4RzM8mXPhBaV9g%4=
0mail.gmail.com.
