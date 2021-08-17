Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXFH5SEAMGQEBAM2AWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A59E3EE3E2
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 03:41:50 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id s6-20020a170902b186b029012cbebe7236sf12016691plr.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 18:41:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629164509; cv=pass;
        d=google.com; s=arc-20160816;
        b=SDUJWOwcp2bmg/Jwhkic6KbV9JJ2mabseMsrNxFNbYGdeHYP0NnA/tg5w0scLpzqWx
         twEG8K+mbCWkLA6W1R3VEuDHxOo0FXbZ4O4ySHQW1wjADI9+JAAChp+SVyO1bK5u6vCR
         5FJPKSFS70YkD/S7sHuh9YWsvayhUaZ9nE8wYJjArjUhb6FoYpp/VgkyVDQVf3BNKCSg
         RzcDCWln+5smd5s3Gpgs8YlB/W6eFDl4FLNl1U00XztEhGVx3zu4Uhyf8Q+tmSUTEjA1
         7AsMi+M5H9pUML02zx1se4+aabp70D4Sqf8KLzMZCKaeZMLgfsHgX4ValXF5ODRILXUG
         qIhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=A/oYEIlDcsDUC2bxhNnHIgKwNjHFot3NArtSYKoNJ1w=;
        b=F6JQpKfxJBATCV/RP8oSUU0ep+Cra9yz3e+rpzJbmL0RRZqcPmye1yewexkQGf79tI
         a8suih6Ijf2G0JcurmsuRU6RypgXyDaN9+9Y4iJ/6JIbQhi8HQXCTGD5h7xpGSSTjoQ7
         WZG0evJaRmbPkTmytRaQwQchLOhzTpbso5q35uOoCfccqJ6q8vGucUj1k7tUxKmcNfUB
         uMi8pyo0hXhQP5vg3mja/kmR4IFYPcroc7eUzeOXHiZOXCG9Ov0xIWpbUwnTxIRQtIrT
         teF9e9U6L3rj3zD6x73YLgJIzB53Z9EB2juHzHtcfiAWBNuQUKjEbQssis0+vhln92vo
         tfwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tUFuHJjK;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A/oYEIlDcsDUC2bxhNnHIgKwNjHFot3NArtSYKoNJ1w=;
        b=rDZXLE6XdV6R94pE2zf50wT1IMc6W5VThyxKNpH3LOLcuOtiO/EgaFxonZFm2pkGB8
         2FlR9fyOeekCzfxTKQEW7Z2v1x1vQiQz08C8pFIgYkAQ+ply3M4RK7ZrO3XWtPmP+YHE
         RJDkvxKn5loEzm1U05gSh3CMLPFx6HPxdExfqWWHDSpzEAyVGeCh9aLHUxL8UY2aVvAq
         UM85t8+q/r6CVtqkvaN8FX0BiQfs+MYSkJN3pN2lK+ifFuPp20IjdcCoprIBCOH9C3Gr
         xSlV598w4tQ0xVtjQ+zrtGMlUUiZ4nBjTcURJzSPSg3E0hcchHOReXNBHp+QgpJBiike
         aguA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A/oYEIlDcsDUC2bxhNnHIgKwNjHFot3NArtSYKoNJ1w=;
        b=B43k4eINTShSFzcxsPtufm/2MwGVOesJyDlsnSpeHyQ9h+p2MdDtYHS1K1dKg0y+Gl
         1IfdwkkVtyFVvzAC/J5+r01AaKzmqcu7uE0VDSjeX0z5PP6iora2DzDLCCl2PtaIaABa
         wQz9pezGG+T9Sukj7qmHMXu3upzaDz+bjTu2wNKUPLwCTR1D/06G+u4VUS8F8PA8DZvW
         t43yg3mBXwXyHHd899SCrRAw1tAt2413ViAGu8m9rTSUYbRPCjUPWR0+FnJpOwcMO97K
         Glq5Kpamy9vVVnRj8UfRfZc4lutET37bOWd3ilL5uvaH90ZyHGFeLiu4MA1GclY9/fB0
         UrTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UNC+i/E5seM2KX7vrLSoSe7KWJXmsJZ8GkBqWWfvgNwHIcbr8
	g4TwxnsIt6KtiMIyj0+z+JQ=
X-Google-Smtp-Source: ABdhPJyXIOl0VID75s6Ww2U3GNcv5GgHhA2zMuRyhsGG65FG8dTq+39x7tBkNBOce5G7yAs8YN7rZg==
X-Received: by 2002:a62:6143:0:b029:3c9:3117:c620 with SMTP id v64-20020a6261430000b02903c93117c620mr983502pfb.30.1629164509040;
        Mon, 16 Aug 2021 18:41:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f81:: with SMTP id q1ls252261pjh.1.gmail; Mon, 16
 Aug 2021 18:41:48 -0700 (PDT)
X-Received: by 2002:a17:90a:db09:: with SMTP id g9mr893183pjv.205.1629164508439;
        Mon, 16 Aug 2021 18:41:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629164508; cv=none;
        d=google.com; s=arc-20160816;
        b=Pe2axDVpFNrhWp9FCROvSuymHUGgTyI6Iw0m/TQtNDY9otpX8BL3jvzHNtFf984VXl
         vT3kTA9lxVwaW6xXeD2tcG8ayWU9w7m3Yh5qECGLGEhB6gsgY3W5ASIYOFo6vsNixiPu
         r4TzorBo/I70sgAySM5gLEKWMKfcAd0C4wbHf3Xn1h4w6L9Q/810iYAKweRMGfg9rL/n
         pqa+o0eBBvZV1mx1UZjRtDR0712RO8eN594keIg58JhjR5JdF+6KxDOjZmUy46Yp+ypk
         d3bg7hmWmjn28LlHlJD+djepx266g2zET4bIFztjagr3GMf9H6SGI2hd3J9/IPAYciZx
         vrvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=4feNqS2JhtrAmUDbgLFho0wx2VX8yKrZfXZwhMX/1eM=;
        b=PbGObmrOpG6tGw+lg7qmayA+J/klRneX1ypCl2Zqiox7dIxcSL349ji4N1Sto/UBeP
         d1rxx9M2Grh4d4MNBHhRmBb+718N3nxuT5IRlvdg6wUoeh+SOuDTqt+M6rse2HzaVbCR
         Z0a/YxLg7HQcdn63WumTHW5gjFdgxWgC7+TLM3CqsLxGjm8gFnfhMc3BiXLodqkcpY3G
         4JstAFa/ginT8pD0reVEMhJCgEW1SmO21EHL9KRcw75E7PpBCksJQzO3X1uO6x5xPl+K
         dOExBibBtR0DXFeEiqJIIWBbWVR08dM4mHvnTnhpyHHdjbjbGJad+wwNigZj1Ta++O4L
         Ps7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tUFuHJjK;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i123si30283pfb.1.2021.08.16.18.41.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 18:41:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 73B6660EAF;
	Tue, 17 Aug 2021 01:41:47 +0000 (UTC)
Subject: Re: [PATCH 3/7] powerpc: replace cc-option-yn uses with cc-option
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-4-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <b6a02209-858b-3755-5cb7-7c0b0713c8c7@kernel.org>
Date: Mon, 16 Aug 2021 18:41:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817002109.2736222-4-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tUFuHJjK;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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



On 8/16/2021 5:21 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> cc-option-yn can be replaced with cc-option. ie.
> Checking for support:
> ifeq ($(call cc-option-yn,$(FLAG)),y)
> becomes:
> ifneq ($(call cc-option,$(FLAG)),)
> 
> Checking for lack of support:
> ifeq ($(call cc-option-yn,$(FLAG)),n)
> becomes:
> ifeq ($(call cc-option,$(FLAG)),)
> 
> This allows us to pursue removing cc-option-yn.
> 
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: linuxppc-dev@lists.ozlabs.org
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>   arch/powerpc/Makefile      | 12 ++++++------
>   arch/powerpc/boot/Makefile |  5 +----
>   2 files changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> index 9aaf1abbc641..85e224536cf7 100644
> --- a/arch/powerpc/Makefile
> +++ b/arch/powerpc/Makefile
> @@ -12,12 +12,12 @@
>   # Rewritten by Cort Dougan and Paul Mackerras
>   #
>   
> -HAS_BIARCH	:= $(call cc-option-yn, -m32)
> +HAS_BIARCH	:= $(call cc-option,-m32)
>   
>   # Set default 32 bits cross compilers for vdso and boot wrapper
>   CROSS32_COMPILE ?=
>   
> -ifeq ($(HAS_BIARCH),y)
> +ifeq ($(HAS_BIARCH),-m32)
>   ifeq ($(CROSS32_COMPILE),)
>   ifdef CONFIG_PPC32
>   # These options will be overridden by any -mcpu option that the CPU
> @@ -107,7 +107,7 @@ cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mlittle-endian
>   aflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mbig-endian)
>   aflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mlittle-endian
>   
> -ifeq ($(HAS_BIARCH),y)
> +ifeq ($(HAS_BIARCH),-m32)
>   KBUILD_CFLAGS	+= -m$(BITS)
>   KBUILD_AFLAGS	+= -m$(BITS) -Wl,-a$(BITS)
>   KBUILD_LDFLAGS	+= -m elf$(BITS)$(LDEMULATION)
> @@ -125,7 +125,9 @@ LDFLAGS_vmlinux-$(CONFIG_RELOCATABLE) := -pie
>   LDFLAGS_vmlinux	:= $(LDFLAGS_vmlinux-y)
>   
>   ifdef CONFIG_PPC64
> -ifeq ($(call cc-option-yn,-mcmodel=medium),y)
> +ifeq ($(call cc-option,-mcmodel=medium),)
> +	export NO_MINIMAL_TOC := -mno-minimal-toc
> +else
>   	# -mcmodel=medium breaks modules because it uses 32bit offsets from
>   	# the TOC pointer to create pointers where possible. Pointers into the
>   	# percpu data area are created by this method.
> @@ -135,8 +137,6 @@ ifeq ($(call cc-option-yn,-mcmodel=medium),y)
>   	# kernel percpu data space (starting with 0xc...). We need a full
>   	# 64bit relocation for this to work, hence -mcmodel=large.
>   	KBUILD_CFLAGS_MODULE += -mcmodel=large
> -else
> -	export NO_MINIMAL_TOC := -mno-minimal-toc
>   endif
>   endif
>   
> diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
> index 10c0fb306f15..33e1de5d1c95 100644
> --- a/arch/powerpc/boot/Makefile
> +++ b/arch/powerpc/boot/Makefile
> @@ -66,10 +66,7 @@ ifdef CONFIG_DEBUG_INFO
>   BOOTCFLAGS	+= -g
>   endif
>   
> -ifeq ($(call cc-option-yn, -fstack-protector),y)
> -BOOTCFLAGS	+= -fno-stack-protector
> -endif
> -
> +BOOTCFLAGS	+= $(call cc-option,-fstack-protector)

This was previously disabling the stack protector but now it is enabling 
it. Just remove the ifeq conditional altogether as the kernel assumes 
-fno-stack-protector is always supported after commit 893ab00439a4 
("kbuild: remove cc-option test of -fno-stack-protector").

>   BOOTCFLAGS	+= -I$(objtree)/$(obj) -I$(srctree)/$(obj)
>   
>   DTC_FLAGS	?= -p 1024
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b6a02209-858b-3755-5cb7-7c0b0713c8c7%40kernel.org.
