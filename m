Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBPO6WCAMGQEAH6U4UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE2237FDB0
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 20:59:19 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id n10-20020a67ac4a0000b0290227113abed7sf12334513vsh.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 11:59:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620932358; cv=pass;
        d=google.com; s=arc-20160816;
        b=GlxhkUm60IE2ThOmI7qXKhP1cv+MvDilEenpUFGIZx77ilHXamUy2EHMlIx7qnmpZA
         GDBBad5eVq78i153xEmllsjzpsTlI9G8y7diMfUKo87G54V032P65aKHf3z7KQzfCiqF
         iMw7bZbUr6gDKPD75UhozYuU+wpdsdtnIetmi2bBHQAshxaTy52xQcCktqGh4gGihRNp
         yNtaNBUH/D7zyZAcpgy0dqrnPOosuobZhrqH6VY2/WMPOCxmrIYMlopcyJ19APjQeROC
         muRGjTYCBZ2y+C5Aiup2C9xl5Dgo591MZNQ+jLW9QNejDi4FnsmyaekZC5O/CF6yQULz
         88hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=NhM7weIyWfVWbtXe46t9Mer+AJaaSTbDjmDMMihmH2M=;
        b=Mw988qspQkOCwyXcIUhKfH9OoChKeHYJv93sXEU+4qSxLvBXKmHUSxaF3Hw6d9PYoj
         06QziFDvH297AUdCLxgNqCfwBSSMpZyVf9qdzQhv0TXDFQbFY5MY4Srg9X1o0t07+5r7
         vIdNDXoMICmOt4s9jicCHOAvPWiFErhwqc8OM9rFYWUqv9RpIFXSmkayH2Isyt8TD1U8
         +294WlRgTowOOB8i9bdgNwlq2lmIWiQ3L3O4hohhfJxv9w/E7IB4roy2sSpvmx4kL9me
         nBxuObR6PufhFIUXoY8CgaIWZTkrg67mDFnmmJzVRKPlQKsSZ/F5gb7lsx/nOO88LZPi
         qv5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jbm4kRsm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NhM7weIyWfVWbtXe46t9Mer+AJaaSTbDjmDMMihmH2M=;
        b=Xb8z35YWllPGyp44ceQY9txZDVd6+L/A0jCaD3NeYS2YZ7ScaaSxtFYwweO/HWSzB/
         oP1ESSWwR6NBxoS6SdX+/d6uvBObxTZu4YPSjd2/phiUrhxrb19NpIZ+D37QviD9uuiJ
         4vyMratt4HqujSkRE1RGS9BehvdrC5XEDyKQpQxOMRV9/3nobTLyV/XRDVdUvyZu2ef+
         04jKnn+t/Yc5VTlAVOaStxHwB33ICuoEj3zo67zON7+S5y9Pyw+HmA3OTOudfNmR/8oN
         c2KHEF4K6Ec2+euV+0xp8fZrilmoR77D2Hy7DQMc+NDQRhOZayXfXroXSQ5pKtlDaDr5
         px4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NhM7weIyWfVWbtXe46t9Mer+AJaaSTbDjmDMMihmH2M=;
        b=VUVqNsvkWSQKy1Ea0vujVmZRPpcSvWqi9/ymGNQ9v0/yOzKHX6yEiB2nHyZzuzl9s5
         EcxTCAUC8HhP/KLodG60zOXRJYZAdqvzUCuETqZugM6tMLTYqBAh+QnMGYH0EedYoVnG
         HEaGHIivEWBx9k7EcO2DbOk4qCukw+I5a6FmAtdOa4t6T2FXEagjnq7wb56S2P3SOTPj
         1Lwog3RluazOVVp/MozMY4x/EEm2g63HDQianMSm6XRpIzTfpZkjgUYNQE6F88t7j4LO
         giorS5FhBdL7O+woTdz60FDQi+GvVRMbIBgbLgEzJVtIl9zTpfHZwaZOmibRDDX2j6Mr
         u5Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IibiszcYUOj0lqLEeTy5j5pPdeIfp94JDRR7CgGQdR+fXkAzD
	QTDHnHzGyutPHUzKPdFX+Fg=
X-Google-Smtp-Source: ABdhPJz3wHh9dk7coCWpe3J/N7Bgkl1x6XjIcnMYIJJLiLc1FxUHOsPeGgSqBe1Cj5EHsbnUUfeoUA==
X-Received: by 2002:a05:6102:22ef:: with SMTP id b15mr39407399vsh.35.1620932358110;
        Thu, 13 May 2021 11:59:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f7c7:: with SMTP id a7ls1497012vsp.5.gmail; Thu, 13 May
 2021 11:59:17 -0700 (PDT)
X-Received: by 2002:a67:6783:: with SMTP id b125mr39362170vsc.50.1620932357603;
        Thu, 13 May 2021 11:59:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620932357; cv=none;
        d=google.com; s=arc-20160816;
        b=zxrIi/Uf27AjWPxElruDaArVTvBavW7tjZ1vc8SPTREWVQFZbmsHph0xEc36fHtvnU
         J7Cn40pS7EKoXtd7KSnhF1XOy370o++EPgJ92XvjG1py1qxqc2PKL+nF8II3djoEsg/1
         EMn79TgsssU9ouoXzy77uUS43vnPFMRg4vc+6yRTrw4ocbvma6QZcBz8X6EH+zGzHyfb
         owiHZNLrfaAj5410eVN+aejnY+xTG3RJc3oVCYVGeBOjBrhXnCYlUjlLtb2AANk2+ZZH
         WVUV93E12y8X2hFyNyh1SJtrP0w2osKB1hXdphct9h7rx04K4+Gn9JoxA75u6gKs3H86
         Entw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=z5gace/o+tdlAl+9tHx+rNdCBiX9JxlEA+gJY/6/jpI=;
        b=Hugw/yfbhEN9wg3KNFOqLFpip6+oOAMuF5b/3ZeW4epZQLDVyfzxcavCtJPrX14SW8
         9t4ZAirJjYrcyUjNeNKzALnC9qPlxk/g8rDXTqfR0T0yVhQlPddb7EIHQHz1zh2Xlmy9
         5b9cBhpGCIL9IpxpvMM1r8ETGhxxfcDPzjzorB1Kx8SXZPo9chtT51vmsXaEmDspaw4i
         zcZI7PL0/EUmsTMlrWRUyp06oh7fjrarsAE5Vz7aiV1huNOQkdyPVmyaHNhtHdzcveQO
         7EFoIDpfmufk2ql1H4TtaYZerg741lkP/Wg570FoZ2ps7J5HQetcc4z4OJX/r4MquvQG
         Y0/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jbm4kRsm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t11si327766vsm.2.2021.05.13.11.59.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 May 2021 11:59:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9ED4061264;
	Thu, 13 May 2021 18:59:15 +0000 (UTC)
Subject: Re: [PATCH kernel v3] powerpc/makefile: Do not redefine $(CPP) for
 preprocessor
To: Alexey Kardashevskiy <aik@ozlabs.ru>, linuxppc-dev@lists.ozlabs.org
Cc: linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>,
 Michal Marek <michal.lkml@markovi.net>, Michael Ellerman
 <mpe@ellerman.id.au>, Masahiro Yamada <masahiroy@kernel.org>,
 Segher Boessenkool <segher@kernel.crashing.org>
References: <20210513115904.519912-1-aik@ozlabs.ru>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <dedc7262-2956-37b2-ebfd-ae8eb9b56716@kernel.org>
Date: Thu, 13 May 2021 11:59:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210513115904.519912-1-aik@ozlabs.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jbm4kRsm;       spf=pass
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

On 5/13/2021 4:59 AM, Alexey Kardashevskiy wrote:
> The $(CPP) (do only preprocessing) macro is already defined in Makefile.
> However POWERPC redefines it and adds $(KBUILD_CFLAGS) which results
> in flags duplication. Which is not a big deal by itself except for
> the flags which depend on other flags and the compiler checks them
> as it parses the command line.
> 
> Specifically, scripts/Makefile.build:304 generates ksyms for .S files.
> If clang+llvm+sanitizer are enabled, this results in
> 
> -emit-llvm-bc -fno-lto -flto -fvisibility=hidden \
>   -fsanitize=cfi-mfcall -fno-lto  ...
> 
> in the clang command line and triggers error:
> 
> clang-13: error: invalid argument '-fsanitize=cfi-mfcall' only allowed with '-flto'
> 
> This removes unnecessary CPP redefinition. Which works fine as in most
> place KBUILD_CFLAGS is passed to $CPP except
> arch/powerpc/kernel/vdso64/vdso(32|64).lds. To fix vdso, this does:
> 1. add -m(big|little)-endian to $CPP
> 2. add target to $KBUILD_CPPFLAGS as otherwise clang ignores -m(big|little)-endian if
> the building platform does not support big endian (such as x86).
> 
> Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
> ---
> Changes:
> v3:
> * moved vdso cleanup in a separate patch
> * only add target to KBUILD_CPPFLAGS for CLANG
> 
> v2:
> * fix KBUILD_CPPFLAGS
> * add CLANG_FLAGS to CPPFLAGS
> ---
>   Makefile              | 1 +
>   arch/powerpc/Makefile | 3 ++-
>   2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 15b6476d0f89..5b545bef7653 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -576,6 +576,7 @@ CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -
>   ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
>   ifneq ($(CROSS_COMPILE),)
>   CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
> +KBUILD_CPPFLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))

You can avoid the duplication here by just doing:

KBUILD_CPPFLAGS	+= $(CLANG_FLAGS)

I am still not super happy about the flag duplication but I am not sure 
I can think of a better solution. If KBUILD_CPPFLAGS are always included 
when building .o files, maybe we should just add $(CLANG_FLAGS) to 
KBUILD_CPPFLAGS instead of KBUILD_CFLAGS?

>   endif
>   ifeq ($(LLVM_IAS),1)
>   CLANG_FLAGS	+= -integrated-as
> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> index 3212d076ac6a..306bfd2797ad 100644
> --- a/arch/powerpc/Makefile
> +++ b/arch/powerpc/Makefile
> @@ -76,6 +76,7 @@ endif
>   
>   ifdef CONFIG_CPU_LITTLE_ENDIAN
>   KBUILD_CFLAGS	+= -mlittle-endian
> +KBUILD_CPPFLAGS	+= -mlittle-endian
>   KBUILD_LDFLAGS	+= -EL
>   LDEMULATION	:= lppc
>   GNUTARGET	:= powerpcle
> @@ -83,6 +84,7 @@ MULTIPLEWORD	:= -mno-multiple
>   KBUILD_CFLAGS_MODULE += $(call cc-option,-mno-save-toc-indirect)
>   else
>   KBUILD_CFLAGS += $(call cc-option,-mbig-endian)
> +KBUILD_CPPFLAGS += $(call cc-option,-mbig-endian)
>   KBUILD_LDFLAGS	+= -EB
>   LDEMULATION	:= ppc
>   GNUTARGET	:= powerpc
> @@ -208,7 +210,6 @@ KBUILD_CPPFLAGS	+= -I $(srctree)/arch/$(ARCH) $(asinstr)
>   KBUILD_AFLAGS	+= $(AFLAGS-y)
>   KBUILD_CFLAGS	+= $(call cc-option,-msoft-float)
>   KBUILD_CFLAGS	+= -pipe $(CFLAGS-y)
> -CPP		= $(CC) -E $(KBUILD_CFLAGS)
>   
>   CHECKFLAGS	+= -m$(BITS) -D__powerpc__ -D__powerpc$(BITS)__
>   ifdef CONFIG_CPU_BIG_ENDIAN
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dedc7262-2956-37b2-ebfd-ae8eb9b56716%40kernel.org.
