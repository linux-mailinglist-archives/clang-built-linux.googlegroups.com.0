Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5WMV33QKGQEC6QZSEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6991FFA6B
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 19:37:59 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id v26sf2971300ote.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 10:37:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592501878; cv=pass;
        d=google.com; s=arc-20160816;
        b=rD7b7a27lk+6KxgJ/cw8jDyTGyvXKpkZ9H36ATO4xDwOrJQXI7ufH3SXibQTEgWHRU
         lGo6GFsH1FL4OKVWL+ilNVaDt9Hmu5vrolCczccvS1OO91RSRyiyba4txfTHZ1l4cRe3
         RJTcThW6ZAqOwfGEXlKAEvpnqcK8GB14cWNjezO6sNld8w9wYoiPDsk9oFWZwy4I4Qud
         wr5sGtpqbMJp5ubhW+fn4f7K7U3+mUuLLul3/0dNCEJuLpUNa0CMHcLUE11Vl3SIf8uA
         PvopXpSMspi7msCwWpGMvEKjDaNd8PtkHXILIAWG2/KOQfR5jjtoTDf3JWYBCaJOgZS0
         Bc/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yTtmVBIMHSWth9yGobuBQU8pzIF2qg9MggRmyj9/eNo=;
        b=OHQjAc7gZfpVSGTN/Jo6JYf2eAPfA3Sa+l5TM55QrJjOm2oqOVnWbgUMuqHGNc8PSu
         S3kBtKH+5BMsSmYB5l88yqsaI06YICX88Vl3A1YRsSXaF8BXy/ho5pjEzQxb/AzWO9e1
         Eh5UEZ/n+oO5WUiodUTV5mOoqrKcmDk3K2jvle7KEGQzGBau+8It4M/EkDUbcW3st0jJ
         bevEkwBBT9nxnbsh77jGjcHmhMR90L/oYwsDGdivZEF/l1fQwK4TEjzJQje24SSFiliw
         KvPSnBNBvwEvnVAvspo5CzW8u08gA5riEEjNX5Un8QPmo/0EGjJ02DOOSXmaoJofmYLW
         x2Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pDVOOkXy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yTtmVBIMHSWth9yGobuBQU8pzIF2qg9MggRmyj9/eNo=;
        b=LMDQwRXmITOcIH9NlZ0k6KxvCN3+yHPkRLXYhs3Jg7Emp3YY9/cUYEnXikAlEOKlmP
         ahmwcy8bGSL5y/Nf88T9kumyAOuxsY3e8n7L7jtTvhfcG/70lih63vN/IyaWtjK6wSy3
         ogp4WMqd//k0lg2FKoovfvigeLXc3zRCvmYD0ozk4d7zv1KR72IFhDX+QsTuRPwcxunF
         aiCDidn137VM/Kw9B7XOf6W0tkCv3K9vew7cd+9RijfJ2jTfaCGDkXVvMe34q/fhsKTM
         CV209hUZN4LOmvetiZOtD61louiJBqYw3RXEAEDCHbHL0/h/pmkC/ltbVsQ5tH3Zg3Bw
         ccGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yTtmVBIMHSWth9yGobuBQU8pzIF2qg9MggRmyj9/eNo=;
        b=E4K1ODL9473dmzUBfIowujHidVfbxkVIFp4zHdK0UKfMlIh4qE41WaxJBuXRoO6Avk
         Hi5tHAhiCuWVn3bB5ezMnEN7qSC0w3Io4ga/sGd2ss3NABTZ1J/ZHliSYrsDFoq7JCrv
         TmH82r4PtR0dLmUVun0IjHqNkIjeFHGaqm2gdqhwOdkV53Hi3Gu+jy5mq27XH8F1kYPv
         cLoM2QgdtlSdf1YRg7w0xRA18fvNZnoIAgNM4kdep7Yn9l/tKaunW5SNU7CAFYFYnDOo
         inCOfDDLMntdeujJ/u9kWjUCCi4EFQ4AuyZabAWR54MJuOqX/kRc4OSsoyUb1qqtGFdK
         mvhQ==
X-Gm-Message-State: AOAM530F0h+YGROhuYKdojLmIEXZ+aos1/wIRe30KtDIFBk065x3vSJc
	FiiVksIu3VENix2KC3y3WDU=
X-Google-Smtp-Source: ABdhPJwY7mWcU/eZVbbKckKjq0azD3VMzFssJ6JMsoPdEJFxn0t9wZezcb2ov6u5aYA+0d2sjkVGRw==
X-Received: by 2002:aca:f141:: with SMTP id p62mr4069114oih.136.1592501878065;
        Thu, 18 Jun 2020 10:37:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2116:: with SMTP id i22ls1502744otc.1.gmail; Thu,
 18 Jun 2020 10:37:57 -0700 (PDT)
X-Received: by 2002:a05:6830:310c:: with SMTP id b12mr4631028ots.11.1592501877741;
        Thu, 18 Jun 2020 10:37:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592501877; cv=none;
        d=google.com; s=arc-20160816;
        b=JEUuvS3ZB999q/WaSzadmXVSEWOzGBiHAyD1ZKEeaKtFFJvq9qLm1qEuQX7+BVqf/t
         4GaJEW8h9for8TRTrOcQUYJq7yUq+lRuOSPn53FYy5I0hVpFpvRAVW1QAn3rPFnlQs2o
         SyR30J3W5FXVEIlELnSxxbWxer4SPqqzgGXe1r9N4k5Qr3IdvIc/bOd1NZGEGdMsy0Z/
         EQP7MAxc8vXsQ/ioxapjRC//0PPhvmkfgbKUOmD/UuzUdv7knbITaRKAenyLBJLPYf+0
         qteIeI/5ol/JFHsE50YM8KsAY538LWk6efTCXFQro/+8yCg0FUrEUNIePcwurOOCHrsA
         FOmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/qoIMbT5nno9mpxdnHsUxhJrQUoL6iKYqIcqmzjGnbY=;
        b=hKj//vvRVY0uW7F5tn07EW9JcydEaDxAlO/o7CWdBdUETa39PNOCuHlDbQ5/Em7UmC
         B5JzpKlKp3Rdm6DRiZGbelQkJpK0EYBNjag+QUkskBYYD3X28LGtrllg272MlFQjXSuC
         Znt7/ZldNHR+7NtGG9zpc71HLOkcI/rxZlxLb/WRvW/cm2iUc4QWMFamyrTOdEDixd4E
         Hz+UGS6D5HqPG+iRLoWG3mwZgPotpta/rmhkmCRHyHlQq6dxJGSt7L5CyQE3swPIfEH7
         zTa2K6ozxKjk6O9D+M+I4PurOiyEBMPYhwEryWq2zSt32w3w++Izid5LqUM+tn47TJAk
         r49A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pDVOOkXy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c22si323971oto.3.2020.06.18.10.37.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2020 10:37:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id d66so3097818pfd.6
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jun 2020 10:37:57 -0700 (PDT)
X-Received: by 2002:a62:7e95:: with SMTP id z143mr4502921pfc.108.1592501876598;
 Thu, 18 Jun 2020 10:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200618145539.53539-1-broonie@kernel.org>
In-Reply-To: <20200618145539.53539-1-broonie@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jun 2020 10:37:45 -0700
Message-ID: <CAKwvOdmOCVJOzp7tc62SV8yO8KkFpY9_fiX6yWqQRTtFC6vsfA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Depend on newer binutils when building PAC
To: Mark Brown <broonie@kernel.org>, Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Daniel Kiss <Daniel.Kiss@arm.com>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pDVOOkXy;       spf=pass
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

On Thu, Jun 18, 2020 at 7:55 AM Mark Brown <broonie@kernel.org> wrote:
>
> Versions of binutils prior to 2.33.1 don't understand the ELF notes that
> are added by modern compilers to indicate the PAC and BTI options used
> to build the code. This causes them to emit large numbers of warnings in
> the form:
>
> aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
>
> during the kernel build.
>
> In commit 15cd0e675f3f76b (arm64: Kconfig: ptrauth: Add binutils version

Ah, thanks for the references. That's the exact error message we're
observing.  I know it's just a warning, but it's blowing up our
KernelCI reports to the point where I'm not reading them for our
clang-10 aarch64 builds, which is bad.
Documentation/process/changes.rst mentions that the kernel support
binutils 2.23+, so we should make sure to support those users.

> check to fix mismatch) we added a dependency on binutils to avoid this
> issue when building with versions of GCC that emit the notes but did not
> do so for clang as it was believed that the existing check for
> .cfi_negate_ra_state was already requiring a new enough binutils.  This
> does not appear to be the case for some versions of binutils (eg, the
> binutils in Debian 10) so add an explicit binutils version check for
> clang too.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1054
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Thanks for the patch.  I'm curious about the case for LD=ld.lld, which
we use on Android and CrOS.
I think this would be solved via an explicit line for the linker to check:
depends on CC_IS_LLD || LD_VERSION >= 233010000
Since we probably don't want to remove the check when using GCC?

Though, LD_VERSION is only a weak proxy for binutils version.

It's tricky right now for CC=clang builds because we still depend on
GNU `as` from binutils.  So you could do:

$ make CC=clang LD=ld.lld

which would be a problem since clang would emit the notes, and the
Kconfig check against ld.lld would succeed, but then the binutils
older than 2.33.1 would still choke.  Would a script that checks $(AR)
$(OBJCOPY) $(OBJDUMP) $(STRIP) $(NM) $(LD) support be overkill
(feature test or version check)?  See the `Link` above; we see
warnings from all of those tools when binutils < 2.33.1.  In that
case, I'd even remove the check for AS_HAS_CFI_NEGATE_RA_STATE (err,
maybe not, looking at commit 3b446c7d27dd ("arm64: Kconfig: verify
binutils support for ARM64_PTR_AUTH") cites binutils 2.34.  It would
be good to support a build of just LLVM tools, or just GNU tools, but
right now a lot of various builds that use clang are still a mix of
various GNU binutil utilities.  (See commit a0d1c951ef08 ("kbuild:
support LLVM=1 to switch the default tools to Clang/LLVM") for a view
of what we're looking to use once we've burned down a few more bugs).
This mixing and matching does slightly complicate support for new
features that require extensive tooling support, but I think we can
make it work for everyone.

We can credit KernelCI for this one, too.
Reported-by: kernelci.org bot <bot@kernelci.org>

(Also, general plea to please use scripts/get_maintainer.pl, which
should cc our list for any patch mentioning clang or llvm; we may have
caught this in code review before it hit mainline).

> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 31380da53689..dd9d1bdee32a 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1521,7 +1521,7 @@ config ARM64_PTR_AUTH
>         # GCC 9.1 and later inserts a .note.gnu.property section note for PAC
>         # which is only understood by binutils starting with version 2.33.1.
>         depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
> -       depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
> +       depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE || LD_VERSION >= 233010000
>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>         help
>           Pointer authentication (part of the ARMv8.3 Extensions) provides
> --
> 2.20.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmOCVJOzp7tc62SV8yO8KkFpY9_fiX6yWqQRTtFC6vsfA%40mail.gmail.com.
