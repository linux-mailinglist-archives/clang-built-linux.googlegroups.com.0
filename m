Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBXU2YTZQKGQELDHTSFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6D7188C74
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 18:48:14 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id i16sf5733286lfo.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 10:48:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584467294; cv=pass;
        d=google.com; s=arc-20160816;
        b=aj76+sX9HDKJyaNolg9RQmNzAHIBrvxoPmgL4gK2IMVTy4WKJOlyB21OtwG+ZW4Y2e
         nXq4JnptUI3bqMjYHpkR/Yhnwej8Tnng8YEphXBwIGLv0vN2cmxKRWScV+4FnVq1JXwq
         8JV0GO+wgDQm9sIagzrG7t7pjvC4AfT9cVvcmdz0y1jtQrNEGGboMYlACOIbjQCVJo0u
         u339XzA6OyNQWH9w731o9/j+0rq8fRJt4vqAMu3jh9NppEgUMEQnyPG0RamMjpx4BRRt
         qqztTTjDF3fW56uA6gnjYFS7TanH9Y7JotquqxdkD/Jo7r5/Sjdz2Sj22NJkwOZ8S2SN
         8Kag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fAdjziWl+QbNOl3vdO+utPn2G5JwnWsxKWXMOGWKohE=;
        b=FgFMAe8oSdEkecq0CivgHQYsMIuWE2X9wZW/kru+1IYox8yzW6cXskap/uP0P3RxFP
         V6VJFeO9jPc636OCyXD6ZeFcPA/JXboGgwYPklOduUNeEIa4jZlQZDheafGIL9gadx2g
         r/C2YRSshQoMvSTxC9udfOD9XNxZGPq8NHL5LIM6rZQ8Buv8L6p9wzb9a1ZzmJLly2K3
         VVcXBfF42hFNARQ33euQ654HNBQgPKIwVR5d0jyPQslGW9c4rmXoEVW0pJ7kxXOwNhOg
         1Gyz3qGr44HTVJV33c9X1DdXlwyNBG9mzUZibpJNTiBWPr5SKHQsXXS0gRWPityxbpct
         9JiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fAdjziWl+QbNOl3vdO+utPn2G5JwnWsxKWXMOGWKohE=;
        b=ElTFvA2b26h/Q4aBfi8v5rpkiRA5dzP7VBNC94ZEdMJtr+iq9t2hmSgFIdanHw4pFz
         9MtP8EBJAp3SyMIXUtA/NyW7GCO6NSUq2fWDLqPl/QosohNi5MwC91ChkkfFxOCbuhEw
         9bieWSLrp0SyHXqpSNljG1Ime60V+oz8uo66n1W3ilYD8pMC5/s38t7mMxN8Dvg10c55
         2ZSRaW8JQKJ3i5cm+2LBwOEppGjCuS1BJ+5tFVbnsaqSqS0DGCMcRT7K5hlru9Hmbdk1
         B6+n9iGbdFjb03QW9noSwVBJ9BGfYUSAM4vnSMp4YL9gBjg6Y9oAPm5+47aOKsT3xLza
         urNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fAdjziWl+QbNOl3vdO+utPn2G5JwnWsxKWXMOGWKohE=;
        b=LCccDQJntDEC7cX8gTdF5nILkwtDVRWG5OIfyhKYTLsrPnTJG/o3XhSxVRrUxC0j3p
         WZXNtkfecTofLVd3Q2ulVZP/j3/N4gw+al7SfFO9OOfZ40Wy4K92hqln9/32o1ys3FS9
         bgUv9SnG5hGDTSbkm5S0Kjs/soF8tCGEUODT0ZQxH+RiE9rfFCCLga97ofIw3+3oqSJE
         PLgL/ytNXcNiHinJVx/2+ZRft4JHZZda2hFLR9NRHjewXTDOzV0iQYp2bnTRvjZ5pQyK
         sjcmbY5duCI80Dla6BBTYKuPhOvOjUBc5cHHYXNhw0SE5XS89p7+4CIA7jE+ZC+9kIFd
         JSfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1M2wuhQwzKPiKw7T+U3B+m6iOiPFHo3IeX5t59BvGRNglyGa2/
	zVBGt4Sc/Tro8ghTEmhH+Jk=
X-Google-Smtp-Source: ADFU+vvf5jtRUw+/Zzj6OPwznQAFn4R1vDrWpofzEk45V7A6FB0hAriDaA9wLxniV2g3iSKEdMcPVg==
X-Received: by 2002:a2e:9017:: with SMTP id h23mr3654990ljg.144.1584467294227;
        Tue, 17 Mar 2020 10:48:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8541:: with SMTP id u1ls909703ljj.10.gmail; Tue, 17 Mar
 2020 10:48:13 -0700 (PDT)
X-Received: by 2002:a2e:3608:: with SMTP id d8mr3655243lja.189.1584467293420;
        Tue, 17 Mar 2020 10:48:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584467293; cv=none;
        d=google.com; s=arc-20160816;
        b=oIPe4DYnTOPxAvGAtAoBPpfd37bZQPNaKAYU5Wu1diprw8zrgubox0HWo+UqUdjRvc
         bgYW6dnbFAAxXoYCm8+2X3Yv44FcZ+Oz2qh97qqcOTCTZ9k/eHsXD8u6oElhPtzpbQvn
         GN2FJR65sDywZ4fXOwOUeqNg6U68EChLye16ZvO0kCIgeslJNEoVRPTEieMA+P/U1mks
         CYggV2BPVJ1gmUzptB3EmIsJkmNEmvcKWtiMsjXT4cvk8ES99zidFNyhXEPx7gM+G+1o
         D6PTaH6NH+5YIrMDNQ+JRi24HGoucPuTUjO7KkadiI7OqKGIwpEu3nKOhOPsb8i8YMk3
         lw7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=/WcuXC+GzbFMX3Bd6mjpBkfM3js5FFtO6X/sj1O1F2s=;
        b=kA8fy+1NGCHwjV1hsFFQ03efUqtw9Ooa7zn5MzJQMVKRc82qrK7C95ArB9K20+erHI
         /apnNV9Df+CseJHbTOkjW29/1BO21Sx8DQcK00LmQkIFoPa6TsT2Stj7rTBP2UbMn40H
         sd0IxtSO19zypaIhutndyAXri7DH+M84Md02cvk1CZsV3e8mteYGS5hGMyRcRQrAYytM
         osecZukDhRh32/xRgE8JTPYchdGWlMjJ9+iY2xr7rkzLW6ils894bIHQ+GLZUOu25zD0
         6WDrC8wWMdhUslJNxMTLp5iGUhryC1EAddt0Sxlk7vs4IUd1mkxKo4EHPCs0DcDLxs7a
         OiKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a21si251271lff.3.2020.03.17.10.48.12
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 10:48:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8A3A31B;
	Tue, 17 Mar 2020 10:48:11 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2EB63F67D;
	Tue, 17 Mar 2020 10:48:08 -0700 (PDT)
Date: Tue, 17 Mar 2020 17:48:06 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Message-ID: <20200317174806.GE632169@arrakis.emea.arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Tue, Mar 17, 2020 at 04:40:48PM +0000, Vincenzo Frascino wrote:
> On 3/17/20 3:50 PM, Catalin Marinas wrote:
> > On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
> >> On 3/17/20 2:38 PM, Catalin Marinas wrote:
> >>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> >>
> >> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?
> > 
> > TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
> > arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
> > -EFAULT on arm32? Which code path causes this in the user vdso code?
> 
> Sorry I got confused because you referred to arch/arm/vdso/vgettimeofday.c which
> is the arm64 implementation, not the compat one :)

You figured out (in your subsequent reply) that I was indeed talking
about arm32 ;).

> In the case of arm32 everything is handled via syscall fallback.

So clock_gettime() on arm32 always falls back to the syscall?

> > My guess is that on arm32 it only fails with -EFAULT in the syscall
> > fallback path since a copy_to_user() would fail the access_ok() check.
> > Does it always take the fallback path if ts > TASK_SIZE?
> 
> Correct, it goes via fallback. The return codes for these syscalls are specified
> by the ABI [1]. Then I agree with you the way on which arm32 achieves it should
> be via access_ok() check.

"it should be" or "it is" on arm32?

If, on arm32, clock_gettime() is (would be?) handled in the vdso
entirely, who checks for the pointer outside the accessible address
space (as per the clock_gettime man page)?

I'm fine with such check as long as it is consistent across arm32 and
arm64 compat. Or even on arm64 native between syscall fallback and vdso
execution. I haven't figured out yet whether this is the case.

> >>> This last check needs an explanation. If the clock_id is invalid but res
> >>> is not NULL, we allow it. I don't see where the compatibility issue is,
> >>> arm32 doesn't have such check.
> >>
> >> The case that you are describing has to return -EPERM per ABI spec. This case
> >> has to return -EINVAL.
> >>
> >> The first case is taken care from the generic code. But if we don't do this
> >> check before on arm64 compat we end up returning the wrong error code.
> > 
> > I guess I have the same question as above. Where does the arm32 code
> > return -EINVAL for that case? Did it work correctly before you removed
> > the TASK_SIZE_32 check?
> 
> I repeated the test and seems that it was failing even before I removed
> TASK_SIZE_32. For reasons I can't explain I did not catch it before.
> 
> The getres syscall should return -EINVAL in the cases specified in [1].

It states 'clk_id specified is not supported on this system'. Fair
enough but it doesn't say that it returns -EINVAL only if res == NULL.
You also don't explain why __cvdso_clock_getres_time32() doesn't already
detect an invalid clk_id on arm64 compat (but does it on arm32).

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317174806.GE632169%40arrakis.emea.arm.com.
