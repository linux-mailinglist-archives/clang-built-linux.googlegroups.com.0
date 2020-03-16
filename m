Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBKGHX3ZQKGQECG45N5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A5F186F97
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 17:04:57 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id r5sf1797212lfm.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 09:04:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584374696; cv=pass;
        d=google.com; s=arc-20160816;
        b=QxMg33XVh24Qlz0D6nDjJfgcMI7IQjfnbHQjth9uBZiAnMbDm7TUDgGkP7Hpz6S+zd
         25mYu11O1qO+yTI4vK854JTnw/5ZgGxR+dMiXMkcLUcfofIHHradirGpcvPjy5HVmB2b
         Sk00ts/VVm3ppB+nMsEX2EzqsvQWoiz7sLm1tB4WwIuNVMysBH+gBeuSm0UOaBUBvX45
         IIRqkAkREvA4EkkFasoNIxVBQtKsB754F8ljNseC0g3Zt48pOReEwMwz3b7ND0l6t012
         XhgpFEXuQitoCO6R3xfPwp+XjWxlQIKjWeCUopb8yNZIQRZCmW/BTlF5KIDuPB/ct3BP
         JAeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ddb2HkIhpjaB4bqpKVoO7ig0n1JlC31CQJVMb9YSrOk=;
        b=alNJ4D61CKolK74625ati/EjeNedlsrWgziLiG3ljDmcFGSYOWbbXTKA6cWo1uVqto
         uJLOlOtcxIAvQmRnoajfzcwdae0z9WjtvXhS/r+otaltQLBDtNKLqoRFUz4IuebfJdpE
         3e8hrCui+nenJWrLWCIkCgWhjkKKnCsMpK507wNayO8DD0vpIdbOcJLax4YUyME86OHW
         m/X6DN4nfHyYYXpzPcWZ3uoLrUN0qZakmTSXSZR7wC3jTTCixD9Kk7CwQMiVEGsuMwYP
         x4EVfdAwAy463aGAwDp7tcbha0xhBGInlg0veGv7aVslvOjY19/TU3jwCeZq55v3rFuK
         gMog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ddb2HkIhpjaB4bqpKVoO7ig0n1JlC31CQJVMb9YSrOk=;
        b=WiwXRlQRFDTGrb69dBYkA2U2Amd6IDX97Ad/w0HacgkuvZWJHYeR8PKGUEeG1jJk+E
         dLlAGp9lEZwky6vsXdfaHrXrhlqo0fArLu7ijWCpWtP/Hi8HjV1BJwgY5IHDq4M2+3TT
         m0TFrYGpOrjwzrznXXzp/9ePrY3Zs9LNuIbn112lUUNAMJtB0qU1eaoLmGHvDM1GeTwy
         BqbOUo8ZWBsMmCgxWCAv85zJmWaITfjNBqjkbCh7+LXx4lS/odo+JwlUTpWSpiltj8E9
         73m3ZboypyqAxZzOPvGapdULVwPdHmuXuDONyk6P2YGne6Hf7niUSgEATNpvJZ3WAGol
         14GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ddb2HkIhpjaB4bqpKVoO7ig0n1JlC31CQJVMb9YSrOk=;
        b=dpzLTl6197I+WHqq0UlRRK87RBZIJHztXhRCWyD9Pavzvf22oGSlT0ddEA3Y/gMAAj
         NX88AGr1JBj4LO4YZob0L7vuQT8cX4IIjgtNyG1LwsLULv6VKDwqavnOyZqPRo5rtRLO
         so3/YNe+S3OOaSYpjkY1p6iQIH9mgM/lqrvTQlQkrSxLNJZv7MKOvvgA3OzxAzyfWHDB
         dz7LljRlhYelCT9Bur+4RdrW8HCuDQFRKJdtKE66/6VxFQ1GAoaS3j+zstbknUH1QfRT
         bAjImaIgDKApEkruQ41IiAUyYqBvXhCmSBQni/Yxx0jofRvsA13egZlMFiYydDwOwzSY
         BB1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0g3mO12kbBZz2gQSr0cvYm15kG2E+dlfRKIkjSDxBoFZTeznVL
	c3GqoKwP6P17dVnOZ9QsFro=
X-Google-Smtp-Source: ADFU+vsoTE/zWLwN4LLIoBHAOLGGUAKDm172R4krb5PEAmm7QDRDEHPlKvcqccY4mKuCIq4eCc+YLQ==
X-Received: by 2002:a2e:868b:: with SMTP id l11mr10438lji.69.1584374696725;
        Mon, 16 Mar 2020 09:04:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8997:: with SMTP id c23ls2120076lji.7.gmail; Mon, 16 Mar
 2020 09:04:56 -0700 (PDT)
X-Received: by 2002:a2e:b8c3:: with SMTP id s3mr34918ljp.84.1584374696145;
        Mon, 16 Mar 2020 09:04:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584374696; cv=none;
        d=google.com; s=arc-20160816;
        b=lgiFfM3PEFe7fZW/xW9t5n9MYgxN9cFJjniKIamQ4ULu/j0uAAnyYrTFod29gKCnp2
         lRUgiyAwF3sLHGvR60JaCa/UW1+B4lI7Afzv11ydc7xtNkW5aZNCDVs+lBjDk0aZooe8
         FoHNAKt0FXgtkGQnWFKWVBZMgCrbvl2QW1oyXtPhlCC+sV6TXm+eYaHMtUZQTYPNxAfa
         Zb6pMi5zUiN+szMgT6qvFgmwELjrFcfm8iGi1te9GeGtgd1RpKf42FLnkrAxWx5o177n
         2f5HGSZkFB79rtisXQ1JCxik+8lZ7oQR6nFZPAKpcuFi5ZR1lT21Wibg1g0jKZTWWZa0
         cNgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=O3UHHvfY5GzlkPEOAy5gST+QkX2drej137qrgthsEcE=;
        b=qY1mk9pQfbV04of0GTCx25RRQIzdcUs2ZS//N/ZPbI/tkN2qvZU3x949JfdhqF46N3
         2UQHf+aABRYtUetnPQq8x59ASIZI1bH7Xi0gjYx7cJI6iPaTqadTe8rjj8PvSim7gfjE
         hzMazuHKEYr/dnqwwGkKjNTnK9b9liZDyvF8N55NLB03TiTKuMWv1ObR4RqDA7EJBSiG
         hKsevzLdfczCKk/AUbGHn2NUgt8kNyGaMVtEjxOtiR1z1mixPHFMhqD+kLYS8BJYtWPe
         XMhYJHM5Nn08+Pqq7k94I6rScRpNEOQ+pzbmLK874zBWX7UVoflvP/H5/v55m/AHuZzn
         Fv6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e4si20188ljn.1.2020.03.16.09.04.55
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 09:04:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE4C71FB;
	Mon, 16 Mar 2020 09:04:54 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D35C33F534;
	Mon, 16 Mar 2020 09:04:49 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
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
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp> <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp> <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
 <20200316112205.GE3005@mbp> <9a0a9285-8a45-4f65-3a83-813cabd0f0d3@arm.com>
 <20200316144346.GF3005@mbp> <427064ee-45df-233c-0281-69e3d62ba784@arm.com>
 <20200316154930.GG3005@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <53eb7809-9da8-33e5-540f-7546de51b53d@arm.com>
Date: Mon, 16 Mar 2020 16:05:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316154930.GG3005@mbp>
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

On 3/16/20 3:49 PM, Catalin Marinas wrote:
> On Mon, Mar 16, 2020 at 03:33:30PM +0000, Vincenzo Frascino wrote:
>> On 3/16/20 2:43 PM, Catalin Marinas wrote[...]
[...]
> 
>> To make it more explicit we could make COMPAT_VDSO on arm64 depend on
>> ARM64_4K_PAGES. What do you think?
> 
> No, I don't see why we should add this limitation.
> 

Fine by me.

>>>> Please find below the list of errors for clock_gettime (similar for the other):
>>>>
>>>> passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
>>>> clock-gettime-monotonic/abi: 1 failures/inconsistencies encountered
>>>
>>> Ah, so it uses UINTPTR_MAX in the test. Fair enough but I don't think
>>> the arm64 check is entirely useful. On arm32, the check was meant to
>>> return -EFAULT for addresses beyond TASK_SIZE that may enter into the
>>> kernel or module space. On arm64 compat, the kernel space is well above
>>> the reach of the 32-bit code.
>>>
>>> If you want to preserve some compatibility for this specific test, what
>>> about checking for wrapping around 0, I think it would make more sense.
>>> Something like:
>>>
>>> 	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>>
>> Ok, sounds good to me. But it is something that this patch series inherited,
>> hence I would prefer to send a separate patch that introduces what you are
>> proposing and removes TASK_SIZE_32 from the headers. How does it sound?
> 
> I'd rather avoid moving TASK_SIZE_32 unnecessarily. Just add a
> preparatory patch to your series for arm64 compat vdso and follow with
> the rest without moving TASK_SIZE_32 around.
> 

Ok, sounds good. I will test it and repost.

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/53eb7809-9da8-33e5-540f-7546de51b53d%40arm.com.
