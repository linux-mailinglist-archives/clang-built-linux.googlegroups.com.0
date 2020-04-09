Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBSGJXT2AKGQEB2CBIKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id AC09F1A34F6
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Apr 2020 15:36:09 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id w4sf5247840otp.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Apr 2020 06:36:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586439368; cv=pass;
        d=google.com; s=arc-20160816;
        b=G2R0C9OHQFKzRpxXQdppRLMptCtED6yVch3C1lCczLxWswAWhGDsaUJTWcceWwBTgE
         HMYfmrq6H7M69xQnAn5XBp7na9CZpSVeoxgPuzM/07tAiBl2LWG7EWas2TaqTFAeKAk5
         vthJ+KT88nbOiCGCXsPLcSJP1VFJPEneFTCIxV1HoMQbo3jllYTncuPWwlfj2ceQJbHi
         YK8YbZ1rSBObrN7Q9hJQBbO0FvfIFZZJ2HIZ4d/4QCglaw7l/a7pIqfOgVTFgR6iwfW8
         GtSB3ieNqazwbPx5OlsrD+GqmZtSPP0VrjMvwNjeVfY+aCz3W1lRGkV1lteS4vuv2lOF
         T+nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=GxCHxby8l5jwwGtvilt24ox6ebyMaNeCLRxnwE4SN70=;
        b=aR1qbxlJk6PI6r6YC6PYDc7zBa5sbZuXexAiOHlUHgZItFq+TDKbf+C4S7T7kOXxI/
         LMXTl09eLaTYGS7TNFm5n+QLg1TK8Sh/cIpynkyjKao6+F4I18Q6hm/roeOGNt9PgzeO
         Y/xSNFqqmVtFuRiA7jUj1MN/oOxnah7LIkjoITfRnJiX6JVjLeruD2WGjzu46qE5tzUN
         4dSrdg38opXIkbJapylrIGFB840UBfc8Cw9qyZmAMgbZJwt9JdxCLXzKR5+C4nFcaVw/
         XOMJsmjF7A3+KMXjrWSKlQoHWCVu5U/XbNDlcx1N0KbMwBCGVI2DhWxCahINagLgtaYj
         KbVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GxCHxby8l5jwwGtvilt24ox6ebyMaNeCLRxnwE4SN70=;
        b=PKK0n/9mFZmx2BqNthkaiA87tiyOlnaCq5j4bqLT6x34IJwnZPBjml+tQWCzIf6oxl
         s7VFh9g5e/HFLkt3yAX46SG9Hd2PERgarJFaAMTbPtThQ6bncFhdscNJ6YcTuOVUiLGs
         GmdDH3tgggjMoNcYHuAupF1Ey1ZQjRbFisCSAaRczbsYvdcBqt6gw0wWTf4Y+2xFf+i8
         2dP7vC81gdWmgOv3TcLzQRP/05IJcuZt/zfc0K0U9cmaPYXlT//qFdUdjoo061uW04pE
         qEBTcg3LB6GZZhLJxJlulVyz1jA2hahlKBklcKHgjHFhN2gu+Xj/6/t8QUWfEtuOmu1h
         6t5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GxCHxby8l5jwwGtvilt24ox6ebyMaNeCLRxnwE4SN70=;
        b=VMirkymwdMWNcRQwlNvHErp29tXTM6KHnENexLTfapzmnjb42YlNQ07b0hB5RnXftt
         QEaJ30zFYwgIPTrOYqbGwGXCSif+QOVZjP9zK1MvQQqTjVhY7kmMpK8xWhy6ix/JV7Bp
         rWYhvYetD387N62lvoYzlTO9fN/dVcu94rh+siOQFF5rPZ7s8XMifkFLtdvfCLAWL+9u
         CjyJhDEw1+daPxr2Nu4OgEaobKLLP7IBIyVs1+cceI8FULom0+ErE1yuShVNvr47xjvM
         ZXlWquI+UjQvmV60ieM6XFpbaQN0vcFGk09qj25Yl4ncShaF7kSsSkHNf3Dyl2aiTKOD
         DBuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYn4fSM7KYctU6iQH1br4wKqMSsE8q/BLtd6K/6r5W1DEtaXJnH
	qPLqweEaxkNZAODtTazLc8A=
X-Google-Smtp-Source: APiQypJ+G2Dem7ct1AZ/iZTxbORaH5gjVUNY2H7CnvwYgY8u+uSlxsMN/GSJ5U9GPp6696u3AeglzA==
X-Received: by 2002:a05:6830:1408:: with SMTP id v8mr9364376otp.123.1586439368387;
        Thu, 09 Apr 2020 06:36:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:bd82:: with SMTP id k2ls1009568oop.1.gmail; Thu, 09 Apr
 2020 06:36:08 -0700 (PDT)
X-Received: by 2002:a4a:41ce:: with SMTP id x197mr9958036ooa.77.1586439367974;
        Thu, 09 Apr 2020 06:36:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586439367; cv=none;
        d=google.com; s=arc-20160816;
        b=vRAiK8x3/enxbk0Clcexyty6twp5XLve1ev1H4180ZYnTvTjeEGcLluU7Nd11wy7lB
         2m2FY5xHOzEHJIy9pNLqxKMaOdPSLM7fr7XQ/eGG6KUxFZDE20jSCxbMrqF9zpsvPYSi
         tXPYGTjSm+3HE9e9xlsCnA2wcjCf6pqjlhVZryB3r7z04OMboOjn4GA2djjw6ZmVPfu/
         ekB6aM92KZ6f/g/WO9Dk5xmN76SQ2aaCUJ+3UD7SQ6/EZCy4wOxiZ4yg6k1tydjCiL5M
         e8kxp/2woUSVTZCnEIhhkca0pIbWL8Gi0o16TrZNG5+/8xLLciAtHvK1OOljju9lU1jQ
         dnMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=YY34YhNyBKPBgy/+TrmFIxc4AIPN0XztxFYZsX0Brf8=;
        b=TO8UVcAv3FKDrSgn7cxY0bL6eZpCp4Uk2MZKgnMhtcwovQycFj0y9MdYSaK0JlO2uG
         S/E8ZiJ4ibbWchhKXnwfp9CtPRQoKpxsJiUZ3OBjsagTqQDv9OhB4YmI5qdpX0l7mHJh
         ed1/OABSduFX9iSuN1oosE/ll7XvNkC/3Qrh2PSBjaA4JsIRtXXucXAJib8bmVZSJd6W
         vMjdYL2PuN1BphVhVkh981/r67SfLdHUYN378BEwtnudevHk7vSB72q1X+1FYzAf2FSz
         dmuH6d2tdcALRH08a2nGS84YPlQbWWyUzEfOiauctv+PWIQsNqjLcvOkh57vMPswMP+m
         l7hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a63si723208oib.4.2020.04.09.06.36.07
        for <clang-built-linux@googlegroups.com>;
        Thu, 09 Apr 2020 06:36:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD66930E;
	Thu,  9 Apr 2020 06:36:07 -0700 (PDT)
Received: from [10.37.8.193] (unknown [10.37.8.193])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B1603F73D;
	Thu,  9 Apr 2020 06:36:03 -0700 (PDT)
Subject: Re: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
 x86@kernel.org, Will Deacon <will.deacon@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Paul Burton <paul.burton@mips.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
 Mark Salyzyn <salyzyn@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Collingbourne <pcc@google.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Andrei Vagin <avagin@openvz.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <Mark.Rutland@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-22-vincenzo.frascino@arm.com>
 <20200315183151.GE32205@mbp> <4914ad9c-3eaf-b328-f31b-5d3077ef272f@arm.com>
 <20200409132633.GD13078@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <d578db85-7581-9bbb-2dab-25555e424ceb@arm.com>
Date: Thu, 9 Apr 2020 14:36:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200409132633.GD13078@willie-the-truck>
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

Hi Will,

On 4/9/20 2:26 PM, Will Deacon wrote:
> Hi Vincenzo,
> 
> Sorry, I was on holiday when you posted this and it slipped through the
> cracks.
> 

No issue at all. Thank you for getting back to me.

> On Mon, Mar 16, 2020 at 03:37:23PM +0000, Vincenzo Frascino wrote:
>>> On Fri, Mar 13, 2020 at 03:43:40PM +0000, Vincenzo Frascino wrote:
>>>> The vDSO library should only include the necessary headers required for
>>>> a userspace library (UAPI and a minimal set of kernel headers). To make
>>>> this possible it is necessary to isolate from the kernel headers the
>>>> common parts that are strictly necessary to build the library.
>>>>
>>>> Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
>>>> code. This allows to replace the second isb() in __arch_get_hw_counter()
>>>> with a fake dependent stack read of the counter which improves the vdso
>>>> library peformances of ~4.5%. Below the results of vdsotest [1] ran for
>>>> 100 iterations.
>>>
>>> The subject seems to imply a non-functional change but as you read, it
>>> gets a lot more complicated. Could you keep the functional change
>>> separate from the header clean-up, maybe submit it as an independent
>>> patch? And it shouldn't go in without Will's ack ;).
>>>
>>
>> It is fine by me. I will repost the series with the required fixes and without
>> this patch. This will give to me enough time to address Mark's comments as well
>> and to Will to have a proper look.
> 
> Please can you post whatever is left at -rc1? I'll have a look then, but
> let's stick to just moving code around rather than randomly changing it
> at the same time, ok?
> 

Sure, I will try to re-post it by -rc1 and take on board your comments.

> Thanks,
> 
> Will
> 

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d578db85-7581-9bbb-2dab-25555e424ceb%40arm.com.
