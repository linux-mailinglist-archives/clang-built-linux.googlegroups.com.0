Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBNVYX3ZQKGQEOSPVMVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCB2186EA3
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 16:33:11 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id w6sf3197659ljh.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 08:33:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584372791; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLbxbDVqHzxCKmSFF5wZMVDnEq6dHzpEiF4Pfb54fAfjGAV6RGgfge693ziO+HE1QK
         6qjABgVcEw/VJ5vt4D5HGdCDi5xhgFx/RTqSE2ePDzb08rKZT9j7GPGr40BY8CPqszIs
         i9JtFJ/wFMDx1mL6Sic3B63SMFTcq2zI0vNTPQzIgPmykFancbvWR7QozGdV7KYGflxY
         BhIZFtuGcqFHkVIwnOLE3zrS2elYR5ocx1t3kuSLmqg6f2if3krgrwhTK5p+WaSmxrOx
         sSiWIQsJugm2wP7r3exfIEiqN8sc23MYaT/3825mgjtP3Kfgvy9jWS4n6eKJgWfM1U6o
         m0GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=DwGJJl5wrd5mOce6VqV/ECEMjyrmIvJUSFfPsemN4vE=;
        b=W/p9sr3BmuTo+3S9iOPT7snKbojqxAeEEc9HqKIhbK7PpXz2EXJwOOBO9LmVNMBDst
         HWCTfQxGIodxXhQCieHIkVLQEqFZhy1N+jya/Sb3lXn1hLGb9cmgzK1j08yeiY3/MRtg
         O6/gbq6yKnZTZMUSqvyFj6qkK0UKdeyeikDMNjkQJ2RnV2wDIMMGW3sl2VW6EbG66bym
         fdjSLB7fSSP4DBzwqoegMWRNXODiMKE2OvvsMHC3qZr8fBZjNRTgMma49ftTcN2/PZoK
         1qmDUrcAAmBN/fIXoeHm5n2UDRoGm/Vs9kwQhHmXibdQJVIQqFF0RA3ddqiGPtwWlMwc
         WYdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DwGJJl5wrd5mOce6VqV/ECEMjyrmIvJUSFfPsemN4vE=;
        b=F+2vNSKFpnptNMs/fT3zVXYfgjmMTQN/UvMg4sV/AXHVBBngNQDRf58QV7o9TC5OKB
         tuyQyO18iYsa7XVBvYiZaXdqhAfU5KeIricL+hFSulkIlSOFlMTAgpH0XI9pHfVl6GjR
         xt+bQfE1eDl7RpeCSIQikVQpI+a1Nki61yHSQcMBeJ3K8iTzBBeYzrFt2LqDCAHZY8Xh
         KaKEowP9ofEMav7SVKsbIAK0JYy0MRGQfgVFrdruc6ZQQE2URKTFFLepPC8kgUPitnSk
         rMO66AlINK3ZOfhG16N0FrrWBbLOGG/fwPk/Gqi+iX3VAQnrBhcDWOxmxrGCbxG+ZO7J
         PNXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DwGJJl5wrd5mOce6VqV/ECEMjyrmIvJUSFfPsemN4vE=;
        b=siddRxrX7bZfXn7/P9cbgFbCyQhoiG6XMUwEY2DMNZEh/6W6YRUZ/A4QAoUaW4i7W1
         whxeM1vVsuTTpUKUwafTNhwcj+ieySS7cNRmFivSR0qT1cDbAYj3mZiXhtBKcMW0r+18
         vYyknYwqGBFhjSGHCExggwiBpYYUYiF2nT121+/s/6iH9VG0CX9hshxvYfTzauD7zjO7
         Vwm8kEgycXfi1MErMBNCdWJuPrjus8VFmtFAKDqTZDBW/p9ONOSjuKib+LnWnYmbmDyv
         MwmDqqFTSHILwCJLTOu3JiNEVKtLbe6UWfVgQ9ub02t1VImw2soRMkv7WsMbI8tP5aE8
         75dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3vNvRDgZnZg94PvOkmFS+xW4JHK7QleLJTX4/aWPXEEVc5+Lye
	yIdFF51isu70GK3hOvI/rY0=
X-Google-Smtp-Source: ADFU+vsLEzCzRGFuthKNTRs//6IXRPVBpUQR5HCi3NCWUK37E13QAo17tkmapx/SyQIUvIx3yBYcIw==
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr17680315ljk.220.1584372790851;
        Mon, 16 Mar 2020 08:33:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:211:: with SMTP id y17ls3447308ljn.10.gmail; Mon,
 16 Mar 2020 08:33:10 -0700 (PDT)
X-Received: by 2002:a2e:9bd1:: with SMTP id w17mr1852026ljj.283.1584372790030;
        Mon, 16 Mar 2020 08:33:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584372790; cv=none;
        d=google.com; s=arc-20160816;
        b=fGPU5csth2x6F24Z2UVyc/SinbEJ6v8N3CoG/33QLduvqL1jB8AfjAWKoZBfITWToF
         9zEVRbaVXh7LTAkY3rkPn+5AVjYuoySpfAiqj/SLEbFhZgeKtbOb9VHdgjfbicNOxtI/
         q4aPtuhQn7VoKPR79kw7BapXCi423bJRTTqMZNodlOo7eMnPxBHl4ghajLgcXCnsy0mK
         9Tm4rh4tnzMT3g1kR1jfPRuEYKnoRZBsc2F8Pl/T5LOOC1HC7zmpnDVtXbaopEO+tquD
         f3RA1+VEPUXyP9zwWmD5lepj31mUjW+xzioz87sNtTYYs7p4KVd6K0HnYTHEgTg5RxHm
         HblQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=hiOYhMKodDXmuOV6EjpKcR7z3G6bwp/hRJJbWTA6M3g=;
        b=sX0oHIk5Z4g2vg+ifggAengNcG0PXkdl5OuL01nyrfuR3DyHhnr3gIK4V+iTorTz2r
         XjNhuXRYGFB/pj5kz83iQQvdD9z0Sti7AuiSShiENsUoZXaXCREo04C2rbkkVzFgI2GV
         xdMF0iMSovIuN2GkQdRaEWr53u0QNSyvGi90k3AO9LaBD1/KU9I9k5i/pnEIfeaDYVKe
         MxEZmtKSX77eqbFgaU+hqbJJuQz5AIoAfNrZFheJ1v3Q/6LGuBDg+RbITUXNhhJ4v3Cc
         ciLwtbiMlJXsukqTZGEIa5gxFalkTTLsICiEVg5XPbhOwKAHnI1IwXSp94SJra67KZmr
         BYvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a21si8621lff.3.2020.03.16.08.33.09
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 08:33:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F0F41FB;
	Mon, 16 Mar 2020 08:33:08 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4EBBC3F534;
	Mon, 16 Mar 2020 08:33:03 -0700 (PDT)
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
 <20200316144346.GF3005@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <427064ee-45df-233c-0281-69e3d62ba784@arm.com>
Date: Mon, 16 Mar 2020 15:33:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316144346.GF3005@mbp>
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


On 3/16/20 2:43 PM, Catalin Marinas wrote[...]

>> To me does not seem optimized out. Which version of the compiler are you using?
> 
> I misread the #ifdef'ery in asm/processor.h. So with 4K pages,
> TASK_SIZE_32 is (1UL<<32)-PAGE_SIZE. However, with 64K pages _and_
> CONFIG_KUSER_HELPERS, TASK_SIZE_32 is 1UL<<32 and the check is removed
> by the compiler.
> 
> With the 4K build, __vdso_clock_gettime starts as:
> 
> 00000194 <__vdso_clock_gettime>:
>  194:   f511 5f80       cmn.w   r1, #4096       ; 0x1000
>  198:   d214            bcs.n   1c4 <__vdso_clock_gettime+0x30>
>  19a:   b5b0            push    {r4, r5, r7, lr}
>  ...
>  1c4:   f06f 000d       mvn.w   r0, #13
>  1c8:   4770            bx      lr
> 
> With 64K pages:
> 
> 00000194 <__vdso_clock_gettime>:
>  194:   b5b0            push    {r4, r5, r7, lr}
>  ...
>  1be:   bdb0            pop     {r4, r5, r7, pc}
> 
> I haven't tried but it's likely that the vdsotest fails with 64K pages
> and compat enabled (requires EXPERT).
>

This makes more sense. Thanks for the clarification.

I agree on the behavior of 64K pages and I think as well that the
"compatibility" issue is still there. However as you correctly stated in your
first email arm32 never supported 16K or 64K pages, hence I think we should not
be concerned about compatibility in this cases.

To make it more explicit we could make COMPAT_VDSO on arm64 depend on
ARM64_4K_PAGES. What do you think?

>> Please find below the list of errors for clock_gettime (similar for the other):
>>
>> passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
>> clock-gettime-monotonic/abi: 1 failures/inconsistencies encountered
> 
> Ah, so it uses UINTPTR_MAX in the test. Fair enough but I don't think
> the arm64 check is entirely useful. On arm32, the check was meant to
> return -EFAULT for addresses beyond TASK_SIZE that may enter into the
> kernel or module space. On arm64 compat, the kernel space is well above
> the reach of the 32-bit code.
> 
> If you want to preserve some compatibility for this specific test, what
> about checking for wrapping around 0, I think it would make more sense.
> Something like:
> 
> 	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> 

Ok, sounds good to me. But it is something that this patch series inherited,
hence I would prefer to send a separate patch that introduces what you are
proposing and removes TASK_SIZE_32 from the headers. How does it sound?

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/427064ee-45df-233c-0281-69e3d62ba784%40arm.com.
