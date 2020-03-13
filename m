Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBIPMVXZQKGQEDDTV57Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C8D184657
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 13:01:37 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id u24sf7691023edv.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 05:01:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584100897; cv=pass;
        d=google.com; s=arc-20160816;
        b=CG7aHKBExtli4Cx2GcqUTmeZdenlPqFLxWWkjxdr+nvcEJkwLl8llxHa1BQDPcNdq1
         JTLBo1FrR39bysD6/jo8r5x4lF5ekDqDQCIFmlFVzeiPW4aJaZa0W3hphDr35qYjH63i
         O+/yMYSfogRX+j23tFyztpkkHI8vGTpZA7BTOKlQ9i8wxEpx+P/2GBrN1/5QqoXB2Uy+
         8A1sfrLxpaciD7YShAOTiHrePczSbErtrnP6KnnPNPnGFPIxY0Os2/51ExRVhlRhbzjA
         l5uyGTCaw61BzmON6A3t/68LUZr1NI79Y0qx6eU+wunhfHsPqAjwoynb6TRy0/J1Kmme
         3dtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=xaJKKwGxkxYOmqgPy8UhZ2+webIwj52UwoO83ZBmN3k=;
        b=XKrea+a0MCeUg/qPuZS2L/MFdp+WLDM/y6ihDI4g+AovTGPAq++OvBb/0YTaXhHZYm
         jNLAgWzjfE32tiKY/yiPZdWfCsKKhkjtIhbfsHYQRTzf5KxHlqURwxGivn/WLrrNE0ou
         BIDTiyuPlgwIod0KvB6l+6wwcBP46NjekHEyEbbrD47PmMMyEP773xna0mGoJQlprMlG
         eQpkCOtl1JBoXoplTgN7te8fm0DWh6aY3bjtz3mGmF2AJywPn0ifJmKF9VXrB/ZUMeB/
         YVoLJMzTXo4umxaCMRCfQy4HW9aqioMVE5OC9e4MbRmm/60Ibjqa0/tdJG14+jc1vX3N
         SvUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xaJKKwGxkxYOmqgPy8UhZ2+webIwj52UwoO83ZBmN3k=;
        b=lMaYpLwfQ3s4WoIrLL+I33giuO3/6dJuI3ah8YnEqn4bdHuDLFU2j69lQ08i7HjetH
         dQzzW6sgbLX81Sffq9wdqdJP/ayGrFoa2V2q9HpvE34z2mM2uTabgzEBMWI1g6sExrJZ
         4iOrDUo8bCSTDyyPqOG8jQHOcGlZzJ0laSBL9Vw8Jmdj2xe5jD/RzrGRHmnru/xsawfd
         CDTY2vU7yvBZQv9dq9bB+C58GCU1i2xwfWoL0X0+0vZV/xhzUP/qOwGAAQ8RIb9JJtz9
         X/vukvzrFa1VeUuIrxvfYw5OdVc2wuiU470fUFj+Bhgozq3vYsxD4ZlBOmuKMFBKdeJR
         VgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xaJKKwGxkxYOmqgPy8UhZ2+webIwj52UwoO83ZBmN3k=;
        b=UKDQG3RJP1YJaU27DTj0JJA7K9ctUSnSDwguGPeDQS0zBxZkP+rcNOimQijTDHlqeu
         LxxtVeh+Lv/6VrI/7+DJMJG18CwvBx8eancc4dVnK2ZhTNeKlsazLajwA7u3/m5Njjl4
         KgmwZI/tLqcaYyFz86EZBI5sJuTDMabDstD9CyeMNF94dbFotBvqmDW0nr3aNq7p/zDp
         WGhnr/4tIhUfNxJfgPS5LRXrgOi7EoiE02Y2F3TBxX2QcJyIys1Dx2CDY09z6U/dJJ53
         hh3xQX49dtbBWAzR/4IYGrkxAt8qPMWUWDrHZ2NIi/Yry31g9K1Ws1aLH7yWUNNJUYwW
         SUcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Jaaz3PgC+sE+VG+Cm8lHgRyVdrRxjyecexgpx3etLreYD6Eq/
	j0GKdr8QBKMw/kREnh0NWRg=
X-Google-Smtp-Source: ADFU+vuTitR8YlaB8yjAf8idQ40NiySEZBntbCQpN3KjCwj6f6GZl6g3fV6L9fTOvD5DFRaydKlWew==
X-Received: by 2002:a05:6402:1004:: with SMTP id c4mr12589102edu.167.1584100897228;
        Fri, 13 Mar 2020 05:01:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1a2c:: with SMTP id be12ls6185392edb.6.gmail; Fri,
 13 Mar 2020 05:01:36 -0700 (PDT)
X-Received: by 2002:aa7:da5a:: with SMTP id w26mr13518138eds.274.1584100896732;
        Fri, 13 Mar 2020 05:01:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584100896; cv=none;
        d=google.com; s=arc-20160816;
        b=hKkslty3J2mt0y835CYhNx3dwsrSEoOBRiwxSs1NOKYh2c/j17R2M27zOg4uPJhi9P
         h7EAphegXVKeAcZRoCvlX4CZr20cdQ9lM6IHlmJ8QWVZzwylAbs1WHkixllVNUa/iIZl
         UbYaRW/nXdZziAp/fJRfIMfPbOZgWG0TiA/MZp2robEVBedZ6ObiW+A4IRJBUHgWxNxs
         KUYy2luT6ow10I7FHGb/XD+YZIDzKoeiQ5GF+WWtUTb7DwtwgEaAoFLmz/CFBMa0NB8y
         vMRJjY0hjX8b+L/IhZJmL4jh6u9vz+hqXmoOHZLE6KpCuHrsK2+vS/r0e/X7Qhc9bxrd
         MNAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=sn009KW6vaJx5uNobpDN0crsdDijHN94IWie47dcmvs=;
        b=aCrF/miZWPUGOZeRMUUP+NpClzQO6SkvYOxlihOgHRabVtXEUAsOLx9kwnqgOfCY1t
         YJghxZUqolrR0vHUzj4Mdm+NRkNOvgrPPHQj4hUCnXYa1h9eobZ/V5IzNR2cNLxZsqCn
         oDApDRnVY/gsvgrc5fOq3Jt1dNhVH06TyOso4BFcyvepdYRoIJctDNSYDBDQRaJlCfVg
         +WnPYg2E1RaD4c1mdeJk0sqgwm9PtwueGGytD6ULDDoFykoN+u8Kd+7ko/tscmDCaX/o
         VvK5vXTdWd+0fcLSY7LXdDc55T7gJo6nyiblTRZ3LWCH0plGJOlGgfeS63ubHjbFGggi
         QD/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id h10si462454edn.1.2020.03.13.05.01.36
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 05:01:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6AEFFEC;
	Fri, 13 Mar 2020 05:01:35 -0700 (PDT)
Received: from [10.37.12.218] (unknown [10.37.12.218])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9F7A3F534;
	Fri, 13 Mar 2020 05:01:31 -0700 (PDT)
Subject: Re: [PATCH v2 20/20] arm64: vdso32: Enable Clang Compilation
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
 <20200306133242.26279-21-vincenzo.frascino@arm.com>
 <20200310014039.GA12211@ubuntu-m2-xlarge-x86>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <ce62f238-eea9-a0eb-6f72-a3ef5c4a275a@arm.com>
Date: Fri, 13 Mar 2020 12:01:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200310014039.GA12211@ubuntu-m2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

On 3/10/20 1:40 AM, Nathan Chancellor wrote:
> On Fri, Mar 06, 2020 at 01:32:42PM +0000, Vincenzo Frascino wrote:
>> Enable Clang Compilation for the vdso32 library.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/kernel/vdso32/Makefile | 13 ++++++++++++-
>>  1 file changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
>> index 04df57b43cb1..650cfc5757eb 100644
>> --- a/arch/arm64/kernel/vdso32/Makefile
>> +++ b/arch/arm64/kernel/vdso32/Makefile
>> @@ -10,7 +10,18 @@ include $(srctree)/lib/vdso/Makefile
>>  
>>  # Same as cc-*option, but using CC_COMPAT instead of CC
>>  ifeq ($(CONFIG_CC_IS_CLANG), y)
>> -CC_COMPAT ?= $(CC)
>> +COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
>> +COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
>> +
>> +CLANG_CC_COMPAT := $(CC)
>> +CLANG_CC_COMPAT += --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
>> +CLANG_CC_COMPAT += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
>> +CLANG_CC_COMPAT += -no-integrated-as -Qunused-arguments
>> +ifneq ($(COMPAT_GCC_TOOLCHAIN),)
>> +CLANG_CC_COMPAT += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
>> +endif
>> +
>> +CC_COMPAT ?= $(CLANG_CC_COMPAT)
>>  else
>>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
>>  endif
>> -- 
>> 2.25.1
>>
> If CC_COMPAT is ever specified on the command line as clang (maybe by
> some unsuspecting user), we'd loose all of the above flags. Maybe it
> would be better to build a set of COMPAT_CLANG_FLAGS and append them to
> CC_COMPAT, maybe like below?
>

Fine by me.

> Regardless, the current approach works in my testing with clang 9.0.1
> and master (clang 11.0.0). This patch specifically is:
> 

Good to hear. I will add your tags to the patch.

> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
> 
> ==================================================================================
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 650cfc5757eb..df5145fab287 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -13,15 +13,16 @@ ifeq ($(CONFIG_CC_IS_CLANG), y)
>  COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
>  COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
>  
> -CLANG_CC_COMPAT := $(CC)
> -CLANG_CC_COMPAT += --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> -CLANG_CC_COMPAT += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
> -CLANG_CC_COMPAT += -no-integrated-as -Qunused-arguments
> +COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> +COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
> +COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
>  ifneq ($(COMPAT_GCC_TOOLCHAIN),)
> -CLANG_CC_COMPAT += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
> +COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
>  endif
>  
> -CC_COMPAT ?= $(CLANG_CC_COMPAT)
> +CC_COMPAT ?= $(CC)
> +CC_COMPAT += $(COMPAT_CLANG_FLAGS)
> +
>  else
>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
>  endif
> 

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ce62f238-eea9-a0eb-6f72-a3ef5c4a275a%40arm.com.
