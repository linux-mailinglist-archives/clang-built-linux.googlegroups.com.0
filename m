Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRVGYDZQKGQEK3VINYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FA3187677
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 01:01:11 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id m12sf18761408qvp.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 17:01:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584403271; cv=pass;
        d=google.com; s=arc-20160816;
        b=MtErFw2z9PTHaUpLQ8y2nks/S/gmjCzjBCUDsYDSxFoDPsyKjTYWzmDCzalFaLM0gs
         NcSumTJJnTIOnZ74lEpewyNNBNqmr1laD7x6UmMEBCxef/aEypEy0p3WzEhiZsqEdElF
         cHuM9inR9ydRXrqhejDT5mZF/3PJm02l2JSMcqGKfbW/pQ+YTbsAd0eFcim4w3mOU2zQ
         AXY85sb4OVl7uwE7wKUfMJMI3H/xDmgIUdAtIeHjcxt1ufIB5GS9dRklVJ933F3oXtrL
         POEDOrZP0pVPiq0QLhOeZSnnocuXaZTKAkmrQ3OJ8xcO0lC7ynBVcImEHmvU4cGye51q
         YbYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fIHQFEe6+xQi0ESdaeHIihffPtxJ9dEd2LU8KioakBk=;
        b=bB51iJGtpIZvnumBOw0+bszgAa4ZDVydh+ynj1qF/T9DaYHmB+8f1wauqspfptGJnw
         lbObiXKQyCF2RVLfHbehPtYVvmuuKMuTaBurC3BxJUP7vPa3OSGwMj41zDBBDpgrlVD5
         3QRg7OiyHkMmX9ImUtaE2/1UxOlp6iw9v68fL+P96bZivIIgEOrKG5VxueW04QeRAYkN
         I50KD4JkSeyr5sr38MsRzlJLDLtJnQTGyQduzxWJyRrWmX4t4TrlgBNKHe7qyudqDJOd
         C4NC3glpwqifSOcuffRMgUkVn0DwOPjFhaJU7GlwuvbBYeV54oc5ybahoZFUQAsW/wBm
         IX+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hGpp5MKN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fIHQFEe6+xQi0ESdaeHIihffPtxJ9dEd2LU8KioakBk=;
        b=ol6vWP6PTvgUmkf8QM016T99aXVpSYTmJJ9cUbHHF+nyzyv+XhgR9dl487aHrkcOY+
         eA1t3YzPstOquetJbnFpQUNpLTOLLvCpEjY0XCvgfs0Hd2kFHmNA7ovdneoqD8uVnAs9
         QxMGjwPWCQa/3tC8WyeP/pwkRoOZvxXiAwzlHwp9r/PmDYOZ+DabJPMsj73v9Ikul3uA
         v8BkFgptxyi7xhQ2LXessdoPJNuxpRgiF2ZsanytbMrLG8ky6VsfzIwgmHiPOO2kcDTC
         yJOc41xL6hfLwBVoRwZLg7FAYFlAwSCPOxzf/nZknLjZVQBLjJ9mt/5T/JcunHLkat7l
         ZvBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fIHQFEe6+xQi0ESdaeHIihffPtxJ9dEd2LU8KioakBk=;
        b=XaoVIPFTNtW8KaCpADdo/Z5PiwMn2omy3qg7xWy7eoJ3wIt2Cjs2PJn7aeJrQ4n02f
         BbicR5opSuoI50Ao7q9uG1cchdOlcXIQhohLh6IoPOYfdCSlm2S4a+3jFTvUSMKyk0Ox
         J0Z/CQe/FKr/Q7jZX73dZaBzMZIFDSuFIk6mNc6tSW7YWiTsbB2A21xbyrXmQPBH/Wtr
         3n9AxdqRpvf5Y+/c1tn9vYpvL5pCzWklcX3dFggbLQbqx6E5mHkHv8fwZfG6+0cNaC3e
         KeVBbkHRJ9Tki8iChpnYJ2D+YZzQ0rqbefhgE8ebXU1KnUOOXBZsgN3zXfCmcrD0m1H/
         gg7w==
X-Gm-Message-State: ANhLgQ0sXVITWMpFKu56l1etHGWY75W4UFC44sKY7DEtgjSUAKrXayVm
	CYYbgI9Hy/sg17EhiM+U9bo=
X-Google-Smtp-Source: ADFU+vswOQ9LhgIGkiXGb9979+5pNfDNWv6cytKcdR0abQlvHxyVMYIXJKpbK9vmQAvGYE4lXS29Fw==
X-Received: by 2002:a05:620a:2209:: with SMTP id m9mr2273961qkh.71.1584403270846;
        Mon, 16 Mar 2020 17:01:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7208:: with SMTP id a8ls7595695qtp.10.gmail; Mon, 16 Mar
 2020 17:01:10 -0700 (PDT)
X-Received: by 2002:aed:2591:: with SMTP id x17mr2844852qtc.380.1584403270485;
        Mon, 16 Mar 2020 17:01:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584403270; cv=none;
        d=google.com; s=arc-20160816;
        b=N+5OXRqOf8Wy6FhTv5Sfgh0EKt543RES1gTYBakCSdYqzb21bkHVFrVnAbLd9iMFPe
         5Q0wwYf1biI7ctY086ljgunJumNjOcL+jPrg7i7RBbJQ6JgowVCXiVwN/jl0vHK5ouq2
         HbPAuKrAssazvq8MWzGtWaZ7N82P0t2Z8Y+mvVKba/Vlt5YAN66bc01UjB19AmPbiFBd
         v7dVCVZGqMCKQ7IhBjBBIJwj4hbYB+vv1xAeVxK7RjhZ3/UCWNS3xDrx1LlRUfOP9ywN
         HYyWTfqSQ191zXNtWPW7ym5f4Cr3lqGDA1YRPypIdHPnpNMqabA69r57jjh4+zpB/mGL
         79Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pxhrdycLqRcl8yZff8EnF0nl6QUAsSQr4n1zOEszaCY=;
        b=sqAdTc1X9hJDeZMF/SLoN8e/tgG4vwsWHj0aIkhDlWfGNE/D4DIgj8q4kp74+f+6Hc
         ZqDlRN17sBDwKHiHlxoke8O+/dLd9KRI7blhEZPo2bZcZOU13d18Pkdz05h1kKZ67hS7
         Nyly32B/43Mkvfu+NLBEvAAcKFaOACuZzPyBvhmILCxwXOypxJoV2LycPW/bvoROlTK/
         r9ZICfoFrmDt76wQXWop8eWm+jb3W7axgsfWzUwvNy6VaGv3/8ZqT8YSwljWswwj9fvt
         yp4Htr7hrHsU8Zjo5YugBSx46mS6laBR7kw8h/tfTMYWJS7ye9/j0EZn+Lz0MC+7UFBF
         ZSDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hGpp5MKN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d34si58839qte.4.2020.03.16.17.01.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 17:01:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id y30so10647603pga.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 17:01:10 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr2321252pgb.263.1584403269224;
 Mon, 16 Mar 2020 17:01:09 -0700 (PDT)
MIME-Version: 1.0
References: <cd74f11eaee5d8fe3599280eb1e3812ce577c835.1582849064.git.stefan@agner.ch>
In-Reply-To: <cd74f11eaee5d8fe3599280eb1e3812ce577c835.1582849064.git.stefan@agner.ch>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 17:00:57 -0700
Message-ID: <CAKwvOdneF5nXgx3Rh6=NhPK+q93VRhs7mDCcK2eGY0e2rOqqnQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: warn if pre-UAL assembler syntax is used
To: Stefan Agner <stefan@agner.ch>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Manoj Gupta <manojgupta@google.com>, 
	Jian Cai <jiancai@google.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hGpp5MKN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

Revert "ARM: 8846/1: warn if divided syntax assembler is used"On Thu,
Feb 27, 2020 at 4:19 PM Stefan Agner <stefan@agner.ch> wrote:
>
> Remove the -mno-warn-deprecated assembler flag for GCC versions newer
> than 5.1 to make sure the GNU assembler warns in case non-unified
> syntax is used.

Hi Stefan, sorry for the late reply from me; digging out my backlog.
Do you happen to have a godbolt link perhaps that demonstrates this?
It sounds like GCC itself is emitting pre-UAL?

>
> This also prevents a warning when building with Clang and enabling
> its integrated assembler:
> clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'
>
> This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
> divided syntax assembler is used").

Would it be helpful to also make note of
commit b752bb405a13 ("Revert "ARM: 8846/1: warn if divided syntax
assembler is used"")?


>
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/Makefile | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index db857d07114f..a6c8c9f39185 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
>  CFLAGS_ABI     += -meabi gnu
>  endif
>
> -# Accept old syntax despite ".syntax unified"
> -AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)

This existing code is quite bad for Clang, which doesn't support
`-Wa,-mno-warn-deprecated`, so this falls back to `-Wa,-W`, which
disables all warnings from the assembler, which we definitely do not
want.  That alone is worth putting in the GCC guard.  But I would like
more info about GCC above before signing off.

> -
>  ifeq ($(CONFIG_THUMB2_KERNEL),y)
> -CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
> +CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always
>  AFLAGS_ISA     :=$(CFLAGS_ISA) -Wa$(comma)-mthumb
>  # Work around buggy relocation from gas if requested:
>  ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
>  KBUILD_CFLAGS_MODULE   +=-fno-optimize-sibling-calls
>  endif
>  else
> -CFLAGS_ISA     :=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
> +CFLAGS_ISA     :=$(call cc-option,-marm,)
>  AFLAGS_ISA     :=$(CFLAGS_ISA)
>  endif
>
> +ifeq ($(CONFIG_CC_IS_GCC),y)
> +ifeq ($(call cc-ifversion, -lt, 0501, y), y)
> +# GCC <5.1 emits pre-UAL code and causes assembler warnings, suppress them
> +CFLAGS_ISA     +=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
> +endif
> +endif
> +
>  # Need -Uarm for gcc < 3.x
>  KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
>  KBUILD_AFLAGS  +=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdneF5nXgx3Rh6%3DNhPK%2Bq93VRhs7mDCcK2eGY0e2rOqqnQ%40mail.gmail.com.
