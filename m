Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBHP4YPZQKGQEEIXIIOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id B6414188ADB
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 17:43:09 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id w23sf7932573edu.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 09:43:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584463389; cv=pass;
        d=google.com; s=arc-20160816;
        b=K70EiJfzbkONeHEXGuL391NkFn/3dgpWm3dco5huFhEv7dpHXteuxu8LWCxlbgoncS
         buI/WxtfVqzioVLUZsajykdErM2Gf1dsICiWNUW+KyZgmyxGcrdwjsvHzbJhFILMfjo8
         BJZ9UR3gNJbMf0UQCcP7GK9o9wgMXrJx7IcjRZRt7sNWd1e5AoKgDDnaX2etFzo/mUbJ
         AvsXr3rM0qdrJeSThmm5WOv6D6hW6I4SCEWX8d4bN0fsOBTPF15MgyMr3GS4uyhxO2LM
         s+DnR+2NweGf5nk685ulLcviTo0//hYKBOo92NULSbyQGK2TiFd5Lb6FGyM6Jrtys+Ti
         LiVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=pOoqXuA6PEyYGPjkOo16XGQsoppRMDdMZ6oMSRQL9oY=;
        b=yyWpANhaNy+rpiNeX7WiA6bVNjN0d/asWIZDBYqkVttI6TwvY1vyaCKVkG6ppKWFPc
         tkbehjk7LNe2hLIPzrjkE4AiW0vibnUnOgeyqGFeOQ8DuN7wX7/cbdSbeoZ6AZX3UJW7
         3ERT/G5YOlyoF2OBcS1DRKlXuBAFz5jhOwZF+N8Lr3tiCQKn6D+LcU0daIFXf76d/wXK
         7e0tzPLv/mFAr0/y3GQOYRtXE1tNjEn5nmR2IEHIcYPRfJCCPlpy2VKO26kmz+J/zyOB
         RpXentCVJOH5hCUlhvJG3fTHoo086zkF6ZoE/SGn1CkUEu4AwkswWWel11JUPyCs4fz6
         qfgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pOoqXuA6PEyYGPjkOo16XGQsoppRMDdMZ6oMSRQL9oY=;
        b=G5suIhiHIFRUfo88pBEObTShNypcX7wAb7YgHYT/gyViVXa6TZ2pGfZ/v8cadAef01
         HG6GXd1gd/riItDM9ntF+VvPyJGc5XECR2tqdvCMDdNVSHBbPOq2E9ofbcxsgIyEShyf
         VP33g7u5hY57oRmL7J0i0jceDH5jSBVGYdKPicL4fYrEeEzlwwmr1VtgAV5DtPkxoUp1
         CSab7AgWJPG2t8B52lXdAjmHmud1h51kr2OISM3q8ZHQijbXgpr8rJPjdfoZW9rL8taE
         Udm6KP7EFx+uiwF2sdbCCD4BH7XTK9ScBMiXf99wa8GZeN+t0nIJtorJqwK5qG5gMmnX
         tJSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pOoqXuA6PEyYGPjkOo16XGQsoppRMDdMZ6oMSRQL9oY=;
        b=mVB3fBk3IVhIHVG4TDw565Cu6lcUtASuqcEaEl/HOwDiqqDZnkJENR2R9VW3ZbgqC5
         UiGB++9AbV3xcktTFTV2w60ms/ic/jA12oSo5gPH4O1evTGf1Q5Mi0bJlvRHaxNaTEZ9
         2PKv6teuZ57hCIU2iuyJNarkEIV4gP+X9b2UsmBjk9Lg1oIX3OQQIRY8+arPwj+Hku+I
         RjaNBY0NXlSMumz1i61gI/pAKq8xA9Lzn89BEnFq9XbWhbQ435R0Kbz6uceIOZ7g66IR
         DiCjKzPF7jm10fmCHJm0wZLitWTpCrXAd32tmEN/Zo/oM9avjH5yWbhmI3VxV3KbyO/y
         SUuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3i+Y6EasxK+VnTb+qNtwJlzy0fKuYDMqxr1iJ+cB/AToQUgk//
	vyD31QLwRRLUvLU7wVORsUQ=
X-Google-Smtp-Source: ADFU+vtb208n5ZwVcna4bJBhJPJyck8wkJy8CSNFEc+hRXu5QdBvnI/nlpeybaa8IQqEiL9kkEIxsA==
X-Received: by 2002:a17:906:eb82:: with SMTP id mh2mr4972246ejb.349.1584463389461;
        Tue, 17 Mar 2020 09:43:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:99d5:: with SMTP id n21ls12930625edb.10.gmail; Tue, 17
 Mar 2020 09:43:08 -0700 (PDT)
X-Received: by 2002:a50:e0ce:: with SMTP id j14mr6459307edl.236.1584463388888;
        Tue, 17 Mar 2020 09:43:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584463388; cv=none;
        d=google.com; s=arc-20160816;
        b=yRHJKmez467VgO37u/JoKwYfK2hpd0gc1k0bLC8JWlxgnclFvTmFLi/a/dIwh3rggX
         dNsaud9Tvm6PP3bBJP/fFXCZdK7JcndgnnM24V2ncDq12ld4dP/g5MgO90sJo1lwkSaX
         Zgxgb7KJRS1esdzOMrLtDz66kT4Pmgesjgh8/iYfBNoW9eEtW7LCqjVz7dTzYJULRQ/j
         4eR5RwvHsugCJUQCt0d1ro874syNR69lxldqEMZYRJhQ+4hWJiEoiCu79mLcC/5C4URu
         vfO0vyq9dHkVnz7F6YDXWuls9GopgKkE8289xMAyqnkwHa9pZTpgijCG3fjRq1iJkYZa
         X9/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=Wt+53s/OxXfZ7NSzjNy5NPmGZk/5uLXwVHKb0pMX89s=;
        b=Tegv1HDLjJCafNww7LbT8SjzzZmHI5wUODASxXz6hy9n4gC/eclg4BGZY24hR2y3fB
         /zQ3Yq9ZpepjT2iRJUATJPfXVEv7Ma+Pmuyv+UpkHmBad8zx6j/xCDuSxhJsq8D5qfUY
         oSPwcj/GrwbOUVadE63J4BdPKL6BdAG3EuIVwnRaUIv/yFN8cRG1cQU1jnslIH98+Np7
         olNa3A9UXT0FsI0gPmbeR8obJJzwryMxeWYoXQFDVNfAUZvYAAfK0AXWVV01EK4NwmfS
         +4yfvxClkUSnsDexeWPdw3JN+U/Qyn2cS/LNDhWkOWLFomrQAmJ9m71Q4aPnerQH9yDn
         WSCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d7si180902edo.5.2020.03.17.09.43.08
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 09:43:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2465E30E;
	Tue, 17 Mar 2020 09:43:08 -0700 (PDT)
Received: from [10.37.12.228] (unknown [10.37.12.228])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EEF153F52E;
	Tue, 17 Mar 2020 09:43:03 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, x86@kernel.org, Will Deacon
 <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <will@kernel.org>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
Message-ID: <4eaa8717-78b4-0f28-6e14-9a0765e179c5@arm.com>
Date: Tue, 17 Mar 2020 16:43:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
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



On 3/17/20 4:40 PM, Vincenzo Frascino wrote:
> Hi Catalin,
> 
> On 3/17/20 3:50 PM, Catalin Marinas wrote:
>> On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
>>> On 3/17/20 2:38 PM, Catalin Marinas wrote:
>>>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> 
> [...]
> 
>>>
>>> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?
>>
>> TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
>> arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
>> -EFAULT on arm32? Which code path causes this in the user vdso code?
>>
> 
> Sorry I got confused because you referred to arch/arm/vdso/vgettimeofday.c which
> is the arm64 implementation, not the compat one :)
> 

I stand corrected arch/*arm*/vdso/vgettimeofday.c is definitely the arm32
implemetation... I got completely confused here :)

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4eaa8717-78b4-0f28-6e14-9a0765e179c5%40arm.com.
