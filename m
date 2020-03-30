Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVGFRD2AKGQEYIO54RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC3719819D
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 18:48:21 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id t7sf19252984ybj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:48:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585586900; cv=pass;
        d=google.com; s=arc-20160816;
        b=knUMBgzyzt3txfp4kvMoRGpPU4AdvSamZQRtlD2TtTnUKcbPQHJvc6DGQTgdBRFAiV
         Dctddt9ggMpoQQpunyRP75IaDLHSrgx2ayihvTG/Mmlwkkpu0NZSUhlZfCezzrjmPcgE
         jFFeXgRMGONBmz3SdAshVZiaL4CtvV3ulEcnVQhUyKGw/SRtl9F2jl1UR/zVxF237fTK
         uIFzKhVoJ2pJwLqeTLp1zoD3i68cb0GtpvvUuk8cvs8InHkIKbZ/ciIdfnAuAk+lCXNu
         kJ4RBZA8t9MFOh1ysSH5GjoqkE9DPAXkpurbVKjx72pvy7xhu6e1Pwv2b8g29dM2B2Vh
         AbPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Qxz6ha12GHuNpX6btcXw8gssbCR8rBi+LmWWMMPRhuw=;
        b=JYz6xA93z27LnNgd21RzgZBXS7j8xMGIP5HuxscOqCv6rcD0Njz0GWxj3SK8Je2Zru
         biQFfyCM9rID/z7CC/+6G1XHYLqccR5XM6RLEw2FKRcUcZaY9yaSBQkvmncwnCQ6rqpZ
         msRdeQK10IAfQ66q6k3F8Y2QDHwwEloAxSgORaKtZi0lbCOQwWy5tUAM8UphF8q68HD8
         G7jGuC5Mg19W9ydZsCMfxIIQS3wKb+nlJhk1LUjfXtWjgjPz4ebHhO1cwCYojskxzBXL
         jRl8wBpMQCEHcp5H5BPe6jdYhG4fNLAg6D9fy/EokDgLQztSrOvriW0/MbxRKjpe9oH0
         cabg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EfJ05alJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qxz6ha12GHuNpX6btcXw8gssbCR8rBi+LmWWMMPRhuw=;
        b=pk19jmklovV/V2hbTzxVmVuZE8PSr7e/KSJMMUFVYx/Id07fRgfrijw+r5qJHQOI22
         c3GjSD0O9tFHWWYJYZJKX07h4Kye/tbRQcVoeE0D/RpdCkus+wNvus4FHK4so4D3eW+8
         vLtNmQSWE+4LI58JFxvPFSOpe/oYWpeQ3KyXUtBazMSAPYyJHptStq0rYgrE2s/w0/e1
         zJrVsEm+qTHBk5rv9VNCzhH1uWvqRhcmsU1uxsvuZKt2uYnXzmtLag1JrcliOVO3fHWc
         a078oE34hoDkfNAHcUftA5IzEiThU13Q8yuYNcLWHP0r3WEyhknSm3LJv6iG3LFmbEDA
         chkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qxz6ha12GHuNpX6btcXw8gssbCR8rBi+LmWWMMPRhuw=;
        b=XT3kR49Qsg2vyOUDm3EGLbVuipsxnlkAbZ+NV51NKxQnWXRsHMXWdfSntytvajmYBv
         QeFmNQr5wV0oYNpLAKHNUflpJZQZmPtn9USKNECjvBGvZ/rI1QPgTTFAawdYyQRiazX2
         /u01dBbHd3YxOgRh4Ntc2BU1DmoAHbedWZyZIn26kiEtP18TQw3xj8pssE46pyk3aho6
         e1GmaCBB1TvLLzCGhMaKICkDYPg2+cP23N8Hg5vRNnc59dQKfuzwREQcwCZa/cFOg7D9
         ybpz/su3h/Y/GPak9xXNTtIS4e8CJ5D4R2zJMGzuHZGiqCw3eRSiip84AeBWNWZHDM99
         uiFg==
X-Gm-Message-State: ANhLgQ2HnPOjZIWuy+JZWYRY1CNA56rtvWX4b8Jso8pKGIUEZbxXW/K4
	ybjQMjKNY+DXTL4bgfTVXM4=
X-Google-Smtp-Source: ADFU+vtR7m0Ou0fGQsLv+OIGLw+fqPNwNvBUaYMaWN5KH2q9xNcsBSrqyVCt4Dc9M5F0cSg6yCjrgQ==
X-Received: by 2002:a25:840e:: with SMTP id u14mr22546565ybk.91.1585586900203;
        Mon, 30 Mar 2020 09:48:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:6c6:: with SMTP id m6ls1357603ybt.9.gmail; Mon, 30
 Mar 2020 09:48:19 -0700 (PDT)
X-Received: by 2002:a25:d495:: with SMTP id m143mr22456801ybf.274.1585586899858;
        Mon, 30 Mar 2020 09:48:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585586899; cv=none;
        d=google.com; s=arc-20160816;
        b=buoY7rPn9TpytdzJZFdKKpA9b8iJKXE+PLmjjYJXhOIFKbqL3n9H+pcZkVEQqpmITH
         9gZW9rUYovE39uzcbYTAx/OjnxSGyaxB66TiUxOrRvyVYHyuJtvAKylBed3QBPLnXHSb
         rfgDmFgT1DUxv2GmTYsNpPR0YbNXFn2obp54bRMRFoiNS+tWJrUnlapyxYtS6ypGrZP/
         XhNlFs+oh5/Dp2jG/ImyFkOD87+rO3f1OEiAy2ldh8i6ewF00jogB6S5eyFSQTFz2IHo
         zPLlOGa75SQoQ+B+lohCvg/o2j2qpldJUuHx5yy/aG6+oSvzvQTSy+DMG2R7tJMncFDR
         iTjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xILmCXBrlxgCXlypA1VxqpUiVu1uQ5MP80zGKCZ/XFo=;
        b=Crl1dv+w/XrZlIj+ehy2CI0PcwcUi6Ptt+ly0S/7jjkoUihlWl56raA6ActNUX9+7Z
         JwHQQH0qybU4C9dcosu21HVBnhTXCuRnoufK1AZlq0dk5qEq3BczsiAXBr+2ZPszaZEI
         JyFcD6bejy5v7himMHk3bn5KYvYgQE1v4QiARcZj8ELvdX2oxKJzQ6KLolye7LQ825ZD
         eY4NvwKl18SMMN2OfTW56s6ppIs42ximjb58Mp6g6EyiZIq1d+Q9D6yNo+Sd2/T2sVRd
         0n/4Hd1XyYQRsla2efteZoEEx/BjXZmGgMF5h46jmwcq6OZIk8DfUcgi4RURLqaUTFAi
         FZaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EfJ05alJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y140si556551ybe.1.2020.03.30.09.48.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:48:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id k15so3732359pfh.6
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 09:48:19 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr13917544pgb.263.1585586898655;
 Mon, 30 Mar 2020 09:48:18 -0700 (PDT)
MIME-Version: 1.0
References: <a651d5eaf312c771c9d2e0160ddd905550bbd4e3.1585507235.git.stefan@agner.ch>
In-Reply-To: <a651d5eaf312c771c9d2e0160ddd905550bbd4e3.1585507235.git.stefan@agner.ch>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Mar 2020 09:48:07 -0700
Message-ID: <CAKwvOdkJLROtbMSf1pOV2XMV7LB0TTnLx-43WMt34wiT2VEMew@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: warn if pre-UAL assembler syntax is used
To: Stefan Agner <stefan@agner.ch>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Robin Murphy <robin.murphy@arm.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Manoj Gupta <manojgupta@google.com>, 
	Jian Cai <jiancai@google.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EfJ05alJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Sun, Mar 29, 2020 at 11:43 AM Stefan Agner <stefan@agner.ch> wrote:
>
> Remove the -mno-warn-deprecated assembler flag to make sure the GNU
> assembler warns in case non-unified syntax is used.
>
> This also prevents a warning when building with Clang and enabling its
> integrated assembler:
> clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'
>
> GCC before 5.1 emits pre-UAL assembler. This can lead to warnings if
> inline assembler explicitly switches to unified syntax by using the
> ".syntax unified" directive (e.g. arch/arm/include/asm/unified.h).
> Hence keep the flag for GCC versions before 5.1.
>
> This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
> divided syntax assembler is used") which has subsequently been reverted
> with commit b752bb405a13 ("Revert "ARM: 8846/1: warn if divided syntax
> assembler is used"").
>
> Signed-off-by: Stefan Agner <stefan@agner.ch>

Thanks for the added context.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
> Changes in v2:
> - Reference revert commit b752bb405a13 ("Revert "ARM: 8846/1: warn if
>   divided syntax assembler is used"")
> - Reword commit message
>
>  arch/arm/Makefile | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 1fc32b611f8a..b37bb985a3c2 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
>  CFLAGS_ABI     += -meabi gnu
>  endif
>
> -# Accept old syntax despite ".syntax unified"
> -AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
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
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkJLROtbMSf1pOV2XMV7LB0TTnLx-43WMt34wiT2VEMew%40mail.gmail.com.
