Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB6X2YPZQKGQEWO44V3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id BB22B188A8E
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 17:40:26 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id h28sf7818434lfj.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 09:40:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584463226; cv=pass;
        d=google.com; s=arc-20160816;
        b=OfdoiDuZ1CNseVxWcAwqaQCtmIZNlVblDpb84C8SfDSLadGGyrSSk7wuN6hpBELS8y
         D2bjkQj0K4nyn6U/cSqyINCznJZ8BRFRgHlADGrA1AcuoiuqEH8px8cJEoUm+yE1nHNd
         GlyHyN09nJlIwEZwTtzZi0pcsjmLrqc7cMZDF0CTjnY40rDDaoNNxglbcg6zP9EPX9kq
         +dpQApHcd58cZ3rKwRBbQyiZdWjyHid1YhP40ACfLUsrkddp4aJ/IKFocRA3NTYzBNxy
         tCT528CwiMFU+5smfE2WzD8m1m5Or/uZdA5qLuwuDGWHuaJZyYGRTdtewXEcDgU16lK5
         6osg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yr8H7cmpONVNaTQbxxxcEoXJr+n8z4leKXbZxiWqc48=;
        b=LDZJfH+fkT/1TMP9jAuD6WLy8T1Swz5dznfcLdCM4lyiIvUDJmB6HSaC/9/vfbMANf
         WtDrwu6sTqLYRc5Dsk8Sqdjg9daZgRWHLf9nNoCWwSPJb1AErjsJ+TSgtROLekL74tD7
         zVfFEfoKbB4NS6KbwTsIWWJ0/A5y1UxlWRkLfRwP7FXkLJPEgkHeMYvZRV4Jk2Y1dtUU
         14Lzm+wDxmG8XTrLe6gYOYXzYmliRtlpqM+iKx7MBUv7PZTgZoEAhVNlc3DnKWDLBmBG
         k6D3tZUNR0zZZKdmkTenhPjoefJBsp1kDmJ7IPPxWHRIK6CEELxCDrq8HFzOPA7QUPWc
         GXHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yr8H7cmpONVNaTQbxxxcEoXJr+n8z4leKXbZxiWqc48=;
        b=ks2qWQKhI3bz1abV59+ZcOl86TlZ2zFJ6J4mObFCaoxI8eqLG1B2f10hFVzCP9vvoc
         nokeqP2xqAUORwWaDtgS33VlBE8CzMHc08GsCCSiYhA7B81cFO4XBysKA6TqDhFUxHpz
         xWXyD04TYpGPCUWE0g+4NneCdhpc5C/uE0t4MEF/HtWD8+fy/9m5Rf99doX8lJTWlY57
         1gzUg5zjaUwA3cjS6xqbfoXA3p1mBSF3qzev7O+lKdLTDVg9UYQ3jm/OrQF8RPEzIAHo
         hNBHKFG2KanadAaehvpKaZ4B5xbjP2nOnAWRzTUVplVzGRZQaSraXjCEF3ZwpnjgQ1Zp
         yipw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yr8H7cmpONVNaTQbxxxcEoXJr+n8z4leKXbZxiWqc48=;
        b=dokDboELTTdBWsAJILpPsejiVsPZ9P1MRr7+xuxhW3Kg/08hctVkpHF0ic4F3Idtmq
         NZC0jxuqYSVEqJz7pa3BDCLOXabbnCWEj5fLykXuFNqH1oSHfuS+NZJBos4dGhfWhLxg
         nAN3KSdNzzlvy0h8+/7OIhAq80IHKc1banTUPBySLRbipRI6NRifGsh3uQqXlgpnwaeC
         8pSIbeGBDQz6TmbIQnocmtdCrCix69sjDd4V3DLu8xJvDpj5gIKwKsYJP5igLmngbNRC
         UfVkV28Ox+I48af6JIcEac5lPJZWdeBI8pSKEGo2h8JDj9VBaJMiYlg8cS2t/SAuzCf5
         dt3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2F3zvkmDoFrPqU08vV/yfby80Jkv0sNksfm516L3Eu5eKrzjce
	l/OVOv4t0DQGRdSWKNz0VYo=
X-Google-Smtp-Source: ADFU+vuopXaeIq2fF1uE1t0GF68m0wDpbTdWrHgs4iltB7nJsXEomn8WSt5spfHnkJ/e0//ZNtLxZw==
X-Received: by 2002:a05:651c:110b:: with SMTP id d11mr3364011ljo.52.1584463226291;
        Tue, 17 Mar 2020 09:40:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:50cc:: with SMTP id h12ls1302135lfm.0.gmail; Tue, 17 Mar
 2020 09:40:25 -0700 (PDT)
X-Received: by 2002:a19:2286:: with SMTP id i128mr105347lfi.193.1584463225564;
        Tue, 17 Mar 2020 09:40:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584463225; cv=none;
        d=google.com; s=arc-20160816;
        b=tcecK2K6Q1bhZ8pw5QXZG73MDEAnuzl05ImVnQfA9qmbKGu6syyxX7qvHJKtN/w48v
         jR4fdscjYJ5wftczbvD1jC85PxWdO4TD5e0wfDCKU4P6lInUy0a5k6hWgASY/vDFYj3u
         YvMdFDAzBBWpD5gBbe6zR/i0MMpNIAxvPut2VwB/F7jO+grP2DvW55RaiwYEPihoZ9qQ
         Wwmx1ezMyX1rY7bPPcUwIr4zuTPA7jsrPVGVaRZP2+d3M9GUmOuRUcIhi2VLPhHm9eLH
         ZHq/WE5UkRV3RuaMD8g+k/Gw/S+dmZT5UMIPPGIAtepBQ8jmBRJrWsnGldFcfEPmn0AG
         76vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Ah291JpNDf9EN+wPBaX/xAHVCcFCJYvsShyWUYDb7N8=;
        b=o85wsuUuHemVI5zAFa9zoIiqW8i4aMvhWsrz7L0dIGehRfQZ9JaHY+0KFtrL+DvtRs
         WmaLwpeyHlhFzVpsTr4SdBDLl0fqjMEdCYCw7ouVPLJWOJw+KLCSHRHnRKlZv4/1nl4/
         Vjjv8HwH2ScLsUDbisn1UdJPqElVpoEFuYezb3qfBS7vf2b2k2gmIpopg2kg4s23jyVp
         3dpfix1ERzyRaZ0F2oLlPoINO964xqBUF9VpN3qzJ2EdLFl1Y7SMVLciEQM+4MVS+Q4i
         vTNdgnGPaquuJi/z+QgzRsgysAuuc02d8HKdECFUHDLN20dfWaTZmuu4sC+4wqXQwXHF
         Pj+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w6si150560lfa.1.2020.03.17.09.40.25
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 09:40:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63A6630E;
	Tue, 17 Mar 2020 09:40:24 -0700 (PDT)
Received: from [10.37.12.228] (unknown [10.37.12.228])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 400063F52E;
	Tue, 17 Mar 2020 09:40:20 -0700 (PDT)
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
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
Date: Tue, 17 Mar 2020 16:40:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200317155031.GD632169@arrakis.emea.arm.com>
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

On 3/17/20 3:50 PM, Catalin Marinas wrote:
> On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
>> On 3/17/20 2:38 PM, Catalin Marinas wrote:
>>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:

[...]

>>
>> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?
> 
> TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
> arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
> -EFAULT on arm32? Which code path causes this in the user vdso code?
>

Sorry I got confused because you referred to arch/arm/vdso/vgettimeofday.c which
is the arm64 implementation, not the compat one :)

In the case of arm32 everything is handled via syscall fallback.

> My guess is that on arm32 it only fails with -EFAULT in the syscall
> fallback path since a copy_to_user() would fail the access_ok() check.
> Does it always take the fallback path if ts > TASK_SIZE?
> 

Correct, it goes via fallback. The return codes for these syscalls are specified
by the ABI [1]. Then I agree with you the way on which arm32 achieves it should
be via access_ok() check.

> On arm64, while we have a similar access_ok() check, USER_DS is (1 <<
> VA_BITS) even for compat tasks (52-bit maximum), so it doesn't detect
> the end of the user address space for 32-bit tasks.
> 

I agree on this as well, if you remember we discussed it in past.

> Is this an issue for other syscalls expecting EFAULT at UINTPTR_MAX and
> instead getting a signal? The vdsotest seems to be the only one assuming
> this. I don't have a simple solution here since USER_DS currently needs
> to be a constant (used in entry.S).
> 
> I could as well argue that this is not a valid ABI test, no real-world
> program relying on this behaviour ;).
> 

Ok, but I could argue that unless you manage to prove to me that there is no
software out there relying on this behavior, I guess that the safest way to go
is to have a check here ;)

More than that, being a simple check, it has no performance impact.

[...]

>>>
>>> This last check needs an explanation. If the clock_id is invalid but res
>>> is not NULL, we allow it. I don't see where the compatibility issue is,
>>> arm32 doesn't have such check.
>>
>> The case that you are describing has to return -EPERM per ABI spec. This case
>> has to return -EINVAL.
>>
>> The first case is taken care from the generic code. But if we don't do this
>> check before on arm64 compat we end up returning the wrong error code.
> 
> I guess I have the same question as above. Where does the arm32 code
> return -EINVAL for that case? Did it work correctly before you removed
> the TASK_SIZE_32 check?
>

I repeated the test and seems that it was failing even before I removed
TASK_SIZE_32. For reasons I can't explain I did not catch it before.

The getres syscall should return -EINVAL in the cases specified in [1].


> Sorry, just trying to figure out where the compatibility aspect is and
> that we don't add some artificial checks only to satisfy a vdsotest case
> that may or may not have relevance to any other user program.
> 

No issue Catalin. I understand the implications of the change that I am
proposing with this series and I am the first one who wants to get it right.

Said that vdsotest follows "pedantically" the ABI spec and I chose it at the
beginning of this journey to have as less surprises as I could in the long run.

[1] http://man7.org/linux/man-pages/man2/clock_getres.2.html

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/83aaf9e1-0a8f-4908-577a-23766541b2ba%40arm.com.
