Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKGG4TZQKGQEQFGH3NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9AC18FFF0
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 21:59:21 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id w21sf10868446otp.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 13:59:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584997160; cv=pass;
        d=google.com; s=arc-20160816;
        b=D69nmgykGoi5SG291p/W5fgKg+FWBDO7X9zhL7AikJydsJnYqOCp6NXBXlY88lB6Q9
         DG3GCRRyohXAegq4Ts/csG8P9a/APCg1dZjwxFJM8jy7PHrqoNmn85s8wwhiqy778XzE
         scyuO7CoKWzSMuu3+YJcOtHuA0uZ1RDcGkjZjhxJmZuCfKaO2Rhn1eB76R5B7M/cnytn
         dLV9OQSntpFk3GXwm//Mjr+eSlaMKyv0no/19lfS0ofwhXBS6mSO9XA8SsLkKvJGGVVT
         Len1GdDVqWZWZt9gEFPyKd7aNopdQ4z1t3oxQURHjFWnzR6LapQDEK3o5LuEea/wvX/l
         9kIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1Fhq07mO0Te9BtkHbfnqQ3yBB8SD2fWkeAh+TDM7FVs=;
        b=HtIgmHkoOc1GJdNE6ulJRuOnIf0j69WM0UwDDW8KR3Uwh1V/MTmo1SBYDMCxs/R5Nq
         kdjqXh+s5peo287t9XBA5bBIFQymwYiL4nmg+grSVNvYS7Ze5E8fxo5Nf2p6AOrHdihG
         QUdNSRgUAHVYQCdpJ6W7CAXqiWiTVOoZhrWmnxl5CPxdwdtV0hYbV1uW+Tb3vQuOXj3+
         Iqc3N6EbfrwC9+C3wfN+qDZVd6qoHT/cYRReh0Zw5851V/qnAO99Y6Ou/kC5kwhrx0l6
         kXyNu0PwskJL+Q8gkLkH4PEpFRoPqB1nlKe7Y5WDSe6HDD+GWSblM3/Kojk7G9WTnsHB
         Xpag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pjFqGhYp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Fhq07mO0Te9BtkHbfnqQ3yBB8SD2fWkeAh+TDM7FVs=;
        b=hG7ALaIyO6u3IV9rG+npmgczsT56YsQ7YZkb0enCyHFO1ZaW7U3B7AY3VytRDfFzeR
         MP8m6Ni7v8N1Rdk/cJ53vPgTn6MlFxubuqPRbFbA354iMrUyEkxxYZ+QmSB6Nwfi75+u
         kuvPDgVnUf3c+oRGhOjQT95jxbCMPtD4kLkSo/Lkkhkdrhnj2L82rQGfu7X4kR1v8wMF
         CdWteGCS5+ZYhM1emQguBwIHT20PiIX9vDhjuWVa0nMLEyKzffg+V/bHThiQ+czf31bU
         HQ2gZw9qvBXNad4DMjjaCJLBgRZzPDsfkLMPTrMd7BbvRI69laXXfz+1kvZT5j70TmrZ
         X8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Fhq07mO0Te9BtkHbfnqQ3yBB8SD2fWkeAh+TDM7FVs=;
        b=kuleRG112Hd8xHi55WW1cKNsPd5xx8vPmYKgRajN6TG1b9AHxxTUbOLgcU3DL+f9qs
         mIJKhUUXYrnVDZnmopIHpl/5tHCLUtACR9mrM9IGGXs28q8C642Ql6PwwWex/dyPwHGK
         bHWjadWEGgmGhflm/OuUqfPHY2FoSkjAtEjrbiDis8xQ1xRfnOtnntZPPXupmRjXE8ER
         w2xid6UgiiZa+rLH5ZkDWAcxtad2n9679pmHS9bKy3SBTrK6D49PlYW3sbTzKv4hzb9B
         xHxy9hqseoWR3iup4nQY8OenKkcA9jumH2xu17+KPNoKAodeyIX0VkNYv1luRy53F7fV
         1yCA==
X-Gm-Message-State: ANhLgQ3ZWAqo/5c81O2Aeissh3EVpBCz4dXylIBri9V/xpZxJDZBlNNP
	L3KorB0gO2+lXamL//JDa3w=
X-Google-Smtp-Source: ADFU+vuzvc6lYroO+FMTBTFGYH4whrDnoZL5y1VqIhq44q8ORlIN+85xsC1/s3O3klIBbwDWwiw6bw==
X-Received: by 2002:a9d:6ad9:: with SMTP id m25mr1303883otq.160.1584997160472;
        Mon, 23 Mar 2020 13:59:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2425:: with SMTP id k5ls6876830ots.2.gmail; Mon, 23
 Mar 2020 13:59:20 -0700 (PDT)
X-Received: by 2002:a05:6830:1408:: with SMTP id v8mr4127628otp.123.1584997160068;
        Mon, 23 Mar 2020 13:59:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584997160; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+eX4dh9qVolHnYn0ImESRBBpN+s+r7SZHOzBQIFgBTFvb6j5qaDPTP9C3H7pzwc1O
         993kVta9EuEl1es/CnHejmjy0LYPXKFTUbuisJQQkmH4pgqzJxSqf2tsQPX6Q8vSpqtY
         yLhMIH60FGVA4Nkn3ZLGwhH3UWPECboFNCkxya+rPs3zlMIsY0lt8xt89BbdNhnfVVJ4
         xQSHL4ZaiktEzPTekHzs4wim5IEv1gEqiCepSPodrb+jcTA12r/M10T/Chv5CfLV/AqQ
         C3jnscfHh/4Pp5dmvhxS3wWVjqRqJNxDIKh7oA14CflkCF61/bk4TxlgIbDZ0eovHhJ7
         5YmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Xqhu8EFAw1B+vwPIY2LLkJ+U/Fss8OnI2hLctcUjwWw=;
        b=fnWDWMcs/YuJwF3CNPE0zCzWozuDfBxV5ZEJ3Y70iQBBdu2aNSiOg+cmE6StUN00DO
         pyoftJaA8TdY89NqyVV0aXLRBDFoK5ekXv2Y1phkQ9Oml6Ue7X2GS6Y24x7xMtNy7vlS
         h7Bte0Hta4hxQYjYeOp5IeKrdc8454k+jJtumG+WvwlUw7Xe52VLhmqSFrrkps6d4fcK
         zaITpIGmwY/E8NCMGgpdkokfjbUe19OqYWtdTE/zb36/vtmCX4+vY30rbnHCEKRCP8Wc
         ceClgNUCX/51d3+JrD561GjezPMPARNRIjwkiofTznfzDQqr6ZP6ly88Okkm5p0Zp+m0
         DeWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pjFqGhYp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d22si482888oti.1.2020.03.23.13.59.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 13:59:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t16so6439936plr.8
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 13:59:20 -0700 (PDT)
X-Received: by 2002:a17:902:820a:: with SMTP id x10mr19727811pln.179.1584997158821;
 Mon, 23 Mar 2020 13:59:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <20200323020844.17064-5-masahiroy@kernel.org>
In-Reply-To: <20200323020844.17064-5-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 13:59:06 -0700
Message-ID: <CAKwvOd=PgZcYrkf6urQGhjS0Ti7_nJ+hRswQSjo9MvcWGBCE=w@mail.gmail.com>
Subject: Re: [PATCH 4/7] x86: remove always-defined CONFIG_AS_CFI_SECTIONS
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	Ingo Molnar <mingo@redhat.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pjFqGhYp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Sun, Mar 22, 2020 at 7:09 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> CONFIG_AS_CFI_SECTIONS was introduced by commit 9e565292270a ("x86:
> Use .cfi_sections for assembly code").
>
> We raise the minimal supported binutils version from time to time.
> The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
> required binutils version to 2.21").

Looks like 2.21 was released in 2010, binutils gained support for
cfi_sections in 2009.  There's been some bug fixes to its support over
the years, but we can always add more specific checks later if
necessary.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> I confirmed the code in $(call as-instr,...) can be assembled by the
> binutils 2.21 assembler and also by LLVM integrated assembler.
>
> Remove CONFIG_AS_CFI_SECTIONS, which is always defined.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/x86/Makefile             | 6 ++----
>  arch/x86/include/asm/dwarf2.h | 2 --
>  2 files changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index dd275008fc59..e4a062313bb0 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -177,8 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
>         KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
>  endif
>
> -cfi-sections := $(call as-instr,.cfi_sections .debug_frame,-DCONFIG_AS_CFI_SECTIONS=1)
> -
>  # does binutils support specific instructions?
>  asinstr += $(call as-instr,pshufb %xmm0$(comma)%xmm0,-DCONFIG_AS_SSSE3=1)
>  avx_instr := $(call as-instr,vxorps %ymm0$(comma)%ymm1$(comma)%ymm2,-DCONFIG_AS_AVX=1)
> @@ -188,8 +186,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
>  sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
>  adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
>
> -KBUILD_AFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> -KBUILD_CFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_AFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_CFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
>
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>
> diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
> index d6697aab5706..5d3e7507cbbd 100644
> --- a/arch/x86/include/asm/dwarf2.h
> +++ b/arch/x86/include/asm/dwarf2.h
> @@ -22,7 +22,6 @@
>  #define CFI_ESCAPE             .cfi_escape
>  #define CFI_SIGNAL_FRAME       .cfi_signal_frame
>
> -#if defined(CONFIG_AS_CFI_SECTIONS)
>  #ifndef BUILD_VDSO
>         /*
>          * Emit CFI data in .debug_frame sections, not .eh_frame sections.
> @@ -39,6 +38,5 @@
>           */
>         .cfi_sections .eh_frame, .debug_frame
>  #endif
> -#endif
>
>  #endif /* _ASM_X86_DWARF2_H */
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-5-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DPgZcYrkf6urQGhjS0Ti7_nJ%2BhRswQSjo9MvcWGBCE%3Dw%40mail.gmail.com.
