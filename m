Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB4X62LZQKGQEP6AJRXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B2818CE68
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 14:04:50 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id h203sf1619532wme.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 06:04:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584709490; cv=pass;
        d=google.com; s=arc-20160816;
        b=pWTsRYYJWX7zFdqNBvbAasYhCB4qD5bwL8jrvXUvqGbjvRPz0cdaQvDfx9k2RmzJqJ
         AUkfVishoHZWyxAIQ8fnUFffiFSltWGjMC811cAvHiI4LLu9wm/Hd7NQU2dd8nh1wUm3
         7AgUNgkFxyzyF0CWBjBvd9da3AbwOoHvVWaHz8OLbJyCKU+4EZJsOrJMX+aY+Lj9ROPU
         AcY3VeJ9UJeqGtDU57PfxrYADIzKkmtmlucq0uWzUsJ3a0zZ2MvoqVJ+o7vEnAjGMQFh
         0XFDGI9mB6p1ZSW0TU47BA/+YvgP8vUGNkS26BDDdprepbH/BhbMjxsq9/gwYjFvWFuR
         XqkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=PFScV7i/xpFGCyHHVWDYQ+ipSjADYoElY+ch3p748LI=;
        b=kILTBkTuUiSINEpURdv4fBv77KdRS74BltxRO5GyrHrdCT9xn2OXCbwrkvTWY084Kz
         UbRHM73u7IxEDpZoWA3/Ehi24HnmJax3QZna6UoNBunyDgY74jkm2TYT1c5fEpyquo2E
         jRgxiaV4K/+a3yDiZiTdTU385Ic+624Y04tabChlVG0p60nPVYf2RsIzUlW+xIxC57or
         R2XkW85jO7HxB+AtxVIXiEEZusHJ+Fag3drU6DXY54GjQRITlDp833xHN3XyuX6B4ur7
         h/Dw/UygaWanJWA0g81dbXxWFqfXLj7CYavgwKLJpf71hmFw1SgT0UPjnAHc9bgfi0xc
         LjkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PFScV7i/xpFGCyHHVWDYQ+ipSjADYoElY+ch3p748LI=;
        b=ODZ8hCKgaV+gtNI9+oKjLSK02L99iiYAKEivCP1jqD2gvy+Sm4aMpSJH+6ofJrJAwT
         wKNr4kfU6bszRn6YGRiBsD/Yf+fiay0oUVcuzqDXDvR3jp+I5799dtBDwLkd78+3eF+S
         MSDMerWkbovFGNeZs8nBn80/KPOCgv5hwRtdTePJLEPVDnV6QEOCI16mmhS+TSl/3xiH
         TMRYA7lY+yB6ZeKmR/2OxoojHb3+4KyiTwFpUO6auDIE6H0x6eC1bmeGJ4S983zOQQeU
         UsZSjTnICPg9cgZJXHlE0p/EnU9sJdTf1BNkBqnnZyA82TeTY5tR5ef1p1flVuRSKKTA
         igmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PFScV7i/xpFGCyHHVWDYQ+ipSjADYoElY+ch3p748LI=;
        b=XD0ZZHiIQVKyTE0mNLBL/slVgEa6bXATSSYxfOWBMWvBaUhgmu3nC3kDl+jip3h0GB
         auGFXHut5I1u4kWMOaciopeRW1RYePO6bIBbznoHPVNQWf7aBapAG98phOXhrdFxW5gE
         jl23kfgQ5iFg5EMS+b8SHHYhk83e1c9symJ0BgCXe/rKX5N37zQL55maoR0ca1eIlrLA
         vD6QxFQ4fdS9CkEVTJao0JFd4c1/kNAw2KuK11NksGSTWuA7r8/S+OFWzgQUoeZjd5AY
         QvPLaiEN+XVLeMuMVwmYh7BMZDDtMj02gWDqs/RIa5bxZPpf/1jHLYM6hH+U9id5IbdC
         GHWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1F0+Vra6azIJUXTeaeKpUFeMVpjPT2c/z97r34NzGNtgNLtU9q
	3+dp4Jo5oVbi0jqvXmo5QAw=
X-Google-Smtp-Source: ADFU+vs6lNZkaMoFBAcufph+MtjC6XPH9ipQR2T6j8kEaHvwZQJbrM5n6J2noLsDyLKqkANgyNUuWQ==
X-Received: by 2002:a1c:96d1:: with SMTP id y200mr6578677wmd.114.1584709490431;
        Fri, 20 Mar 2020 06:04:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:230e:: with SMTP id j14ls2963088wmj.0.canary-gmail; Fri,
 20 Mar 2020 06:04:49 -0700 (PDT)
X-Received: by 2002:a1c:e1c3:: with SMTP id y186mr10414009wmg.151.1584709489872;
        Fri, 20 Mar 2020 06:04:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584709489; cv=none;
        d=google.com; s=arc-20160816;
        b=l4KZC24pTzsStu8TXX6p65mpbQXZeFRlaytVcZznwUP0p6WGRGj5GgptIrTEHAJxY2
         guV67UroXEq9FhQ9DeaIEBJo06mv3bWs1YCPzmHkuQZ6ldsf2WZ8ei2o+su6765YqJ/u
         JC2W9pRr/3pxpoSyAZ3hB/oyXMuywGks1/9hbvV2N9mNE3TMAjABOrJM97QM4RLqDWTl
         0/iw5V4TFH04T+LxBq0ydoeH9/JeFJQzoS9/EYWE5ryfazaZuE4pIkJwy7S9z7WKQWfI
         DMRqDAwK0a3H/7Ao48jhMXf1kG8F40ImBaDjIlQ4fkbl6+z7RR+5u3FIewHR1cA5oRXE
         k+Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=CsbOsG44uaVW/xPgEiPMRh2RM48BTffRwulu+Y9K7tc=;
        b=qrAf2VZVJe0C1g9WeBBQ/H9qxPl37Y40llsniNSOP/Nw6ICBI9LfJlT+P7Jzkq2MbO
         yUS/9c5as53g8+DYBS+tICljkExDGYIBQ0KjQsdZLqqOcaq2D1EOwZHAfTcn9FDTv7XS
         jR2Twi5/mLtSnV7BAHHBSj35OS6IY5Eg762p75O5KBOWK+A8aK9/K+LuTCTqaaI67pUc
         Zrl6ujd0sTrrfI5i/FCUsWJCz6QVU5Ik1EN4IFzaTlTbn4k/qxVUqTkKX1WSVzoGWyxV
         JtFwqvGeOdZT/wLfuCKTsOqu5eBDZ7KNYEjpTlZkBlpLcGZVLacbLmTH8DlJJE+NcceQ
         Twmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l13si262418wrp.2.2020.03.20.06.04.49
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 06:04:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9AB21FB;
	Fri, 20 Mar 2020 06:04:48 -0700 (PDT)
Received: from [10.37.12.155] (unknown [10.37.12.155])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1B3F3F85E;
	Fri, 20 Mar 2020 06:04:44 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
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
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
 <20200318183603.GF94111@arrakis.emea.arm.com>
 <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com> <20200319181004.GA29214@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b937d1eb-c7fd-e903-fa36-b261662bf40b@arm.com>
Date: Fri, 20 Mar 2020 13:05:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200319181004.GA29214@mbp>
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

On 3/19/20 6:10 PM, Catalin Marinas wrote:
> Hi Vincenzo,
> 
> On Thu, Mar 19, 2020 at 12:38:42PM +0000, Vincenzo Frascino wrote:
>> On 3/18/20 6:36 PM, Catalin Marinas wrote:
>>> On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
>>>> On 3/17/20 5:48 PM, Catalin Marinas wrote:
>>>>> So clock_gettime() on arm32 always falls back to the syscall?
>>>>
>>>> This seems not what you asked, and I think I answered accordingly. Anyway, in
>>>> the case of arm32 the error code path is handled via syscall fallback.
>>>>
>>>> Look at the code below as an example (I am using getres because I know this
>>>> email will be already too long, and I do not want to add pointless code, but the
>>>> concept is the same for gettime and the others):
>>>>
>>>> static __maybe_unused
>>>> int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
>>>> {
>>>> 	int ret = __cvdso_clock_getres_common(clock, res);
>>>>
>>>> 	if (unlikely(ret))
>>>> 		return clock_getres_fallback(clock, res);
>>>> 	return 0;
>>>> }
>>>>
>>>> When the return code of the "vdso" internal function returns an error the system
>>>> call is triggered.
>>>
>>> But when __cvdso_clock_getres_common() does *not* return an error, it
>>> means that it handled the clock_getres() call without a fallback to the
>>> syscall. I assume this is possible on arm32. When the clock_getres() is
>>> handled directly (not as a syscall), why doesn't arm32 need the same
>>> (res >= TASK_SIZE) check?
>>
>> Ok, I see what you mean.
> 
> I'm not sure.
> 
Thank you for the long chat this morning. As we agreed I am going to repost the
patches removing the checks discussed in this thread and we will address the
syscall ABI difference subsequently with a different series.

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b937d1eb-c7fd-e903-fa36-b261662bf40b%40arm.com.
