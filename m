Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBHV2X3ZQKGQEF32WXHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AAC186EAD
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 16:37:02 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id o9sf9220211wrw.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 08:37:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584373022; cv=pass;
        d=google.com; s=arc-20160816;
        b=ndMYSFtXpYoNar0DO0HiPjeDxCovEXe2FciFF2vAd7wRazZJWE9s2Qe/e+ylSIg0Ph
         L5fo5r3okFgeyZsqM2JQJrtNvboBVtyy4paSKneE82tKMl2XcKMg3btLfiaabYCajjm6
         FSYZW1IjyFQM+wyQxvzkLdYBVwBFTQDxNqDdIvn2U1JNslP+QlAuKmHpqHgaVVIaBUai
         VrzSIBmFM3LNKJZJ8POXVGUoe+05szffqI/C/Pg/BFEDK2rlUltfGa5Jv6oYggmg4B3U
         Gr0b9zgn6sPl8g/RnqWQQJj3UVqiEKTJ9WHQxjR75YidyaRHd/uA216wk9K+mNr1+PUQ
         GLtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=tV12zLAvBQkqvpcffknwhF40LzdBDIf4/T/+a8bf/zE=;
        b=ai8BG+MuFF0ejcBp/kMsonCa21o8XN17sfCFmZqivFUFITVlV8F2CEfsrWNwSaH73t
         wPwETJZUDBA8wsBrNsDs48Kius/LIEV5KCUdonLWbjNymoFwlkaFqyioBioB/XrWncfi
         9cY7vOVfCFxpQicMRxcdnDm+OKGqq+KcHjuTTZ6yzK5Ee3ECX+glm4KBoEyyIP/+HG9c
         SIzhO1dOJ9UA9aL806GDsuR3pfVJnePF9NFLmewh876RCkP8YBXveRprjJsS31QV/3th
         c/q+MSMesj/bofxF5Hx0xYx1ond/gWtP1KN67KZkHrmK4nIajS0gcuOEZK19RIhQ2m1j
         ECuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tV12zLAvBQkqvpcffknwhF40LzdBDIf4/T/+a8bf/zE=;
        b=dVsjmuTL4NBgxywoaE8z0ap4ueyy88qWpP+dO1qRIvGpLGg0Vr6O18o6xc+LHyvrg5
         zgQahmvZLJUzZsIDnAFIjYeSc2PylHN/BThb9NcJPidA1FdCTIl158ngJuDdTc7VfwsI
         20jzI5NzG6LIdzLlBRX+Yl5tVyhWgHP6vRVpl1CjLsk7OaxrRw8KhRduWfTB4ZdlcwUA
         SEu/AJ7IOp3yX3sCPBd4Drxzb9tg+ESZEnJz5D4q2saM8DBg4vz3znmEzj+V7SQTe7GA
         Fr8ETiUu7yV+evxby2G4EaWhKNFT6JR1GaUpQDFEOpmzhiYpefXAgkPJphsH+OLE/cnd
         cmDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tV12zLAvBQkqvpcffknwhF40LzdBDIf4/T/+a8bf/zE=;
        b=Uy6Oxy0nnMRO0Rx7XzPdPbJjx7tS6wzD+cYBCVRbLPVhNMSKHvj2UObt4qPwj6nMmT
         nvhVRjKzHr2F2KHIDo4jkeICuS2z7X5Z0WRaOPCi2AY/zGH6CpMwYJbDZvPvJjZKSxHV
         eQZuPt1EdUB50Z88ijvcU8/ilGiWU6uCdU14LYgMGaE0CjVzJiK9ps2dAgOG+gDJ8vlt
         wYQeiNzeG4St8JNK86m7WHQbw+sxY78DeaH5A+NuuosEyil2sgB1JAe//UUt7JnnJaCE
         V3px9Tf0ol+Np5254WptvUra8+MZK7656B75qE3yE13SjUXyFPbg24hJ/1m2rDIKtLzU
         lJmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0z9DXZ6gCufBFgY2oLuq2JN6a25o8c19x8p10wJX+ThLrAqLrc
	cQVlIPrQEsdF24LgU6knodo=
X-Google-Smtp-Source: ADFU+vtWV7c/UkzxZVaICDpAjX/ndj4vdnyfaLV3S1yVEa5Qtj75Du8UjnJROKwWmc3t836n3YnR5Q==
X-Received: by 2002:a5d:470f:: with SMTP id y15mr6769859wrq.210.1584373022601;
        Mon, 16 Mar 2020 08:37:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls7078906wmf.2.gmail; Mon, 16
 Mar 2020 08:37:02 -0700 (PDT)
X-Received: by 2002:a05:600c:410b:: with SMTP id j11mr29328213wmi.86.1584373022045;
        Mon, 16 Mar 2020 08:37:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584373022; cv=none;
        d=google.com; s=arc-20160816;
        b=ULrOZuCVqmRRhPm7eSbK9+ii92gfks4Wwj9oqXnHsP3MsAGJOdnWZunl6H812tV5K6
         h2sGc+Ipr6AEvz/ioaSAqi4abvm2t9XoDOxYu7kVVz+HkTtBJMfJH2Q6OdSp8VVNalYg
         g9b7a55/2FOVKz7P026S/uq+v1qY3WD1tYshYgfq2g7+6gwDeJM6Zig9vU0IJ1z/THkF
         1Q9UHjlZUNZ8jjVS6+lLaxIUrKppHCmvRbd9edEYYlfHCu3E4bmKSqpLAa4uPFDwWn4k
         yVTruruu0sDbNbZhMKq6IAmLsTz+jgzVLBflxzEZaanGGrZb7VDm+spqUMENpqiqulyi
         0NWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=dITkDI61TPzp/TEIpnvMiTmHeoNvZRpMTgp1jUI8K5c=;
        b=SXWkfnV0Sq05Peh8CXaFvV8wJX8YfigXowq236SYBz9cIOiKoSbDcCOmNfu+P78WtN
         dE4lfhdXRkdDQi7wLeNkfaeZFZ7FIOeRjEbJ9deD3bMimQWKd2MhsvhJkYR7zFGjHqWl
         FHT+32hF22BpR5sgxHpD3v5WiwwdeqISm3RnjzNsSgFeY502MZGfrz1LUG7qbbOQDbHa
         fFI23qgdXkAollZySM/zlzaSw84JuCQXhCyAL6iJEct/a642Z5lde0rjCGhxjegrW9OE
         ho3Qa62eumoAO5WTtdioNSeDmoXOEFE/gLACc2+nyxsPHuWQfORu7TusnEZAErgLyClD
         t3QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i16si273027wmd.4.2020.03.16.08.37.01
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 08:37:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 400A51FB;
	Mon, 16 Mar 2020 08:37:01 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03C833F534;
	Mon, 16 Mar 2020 08:36:55 -0700 (PDT)
Subject: Re: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <will@kernel.org>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-22-vincenzo.frascino@arm.com>
 <20200315183151.GE32205@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <4914ad9c-3eaf-b328-f31b-5d3077ef272f@arm.com>
Date: Mon, 16 Mar 2020 15:37:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200315183151.GE32205@mbp>
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

Hi Catalin,

On 3/15/20 6:32 PM, Catalin Marinas wrote:
> On Fri, Mar 13, 2020 at 03:43:40PM +0000, Vincenzo Frascino wrote:
>> The vDSO library should only include the necessary headers required for
>> a userspace library (UAPI and a minimal set of kernel headers). To make
>> this possible it is necessary to isolate from the kernel headers the
>> common parts that are strictly necessary to build the library.
>>
>> Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
>> code. This allows to replace the second isb() in __arch_get_hw_counter()
>> with a fake dependent stack read of the counter which improves the vdso
>> library peformances of ~4.5%. Below the results of vdsotest [1] ran for
>> 100 iterations.
> 
> The subject seems to imply a non-functional change but as you read, it
> gets a lot more complicated. Could you keep the functional change
> separate from the header clean-up, maybe submit it as an independent
> patch? And it shouldn't go in without Will's ack ;).
> 

It is fine by me. I will repost the series with the required fixes and without
this patch. This will give to me enough time to address Mark's comments as well
and to Will to have a proper look.

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4914ad9c-3eaf-b328-f31b-5d3077ef272f%40arm.com.
