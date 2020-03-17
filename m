Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBTXDYPZQKGQENLPM4JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ADD188972
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 16:50:39 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id b25sf8066308lfi.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 08:50:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584460239; cv=pass;
        d=google.com; s=arc-20160816;
        b=eaiZT82zChCmD9OdOGkpsWNoNKgNF4axAyKM+qITDQtPDX23YKtots+UhGKOGmEzXg
         RZQiBxlupyFWz46KN4rN3rqkO8PtvDy1Fas3NAYoxjtYz8Ptq8X0SpYiXYQjL4hYBt5e
         libxcVcqUrCsVOXNRoSV5717+cGxFB0ydnS9Kq+7pJ8ZYpiNFbmX8tWPXaqtLixjmLFt
         /qVCS7TBLmFh1VCKFrK0vUtJM69Zd4IXE7ImbYXF85rEeJMJYKJyyC0VpWjbyeUBdCRG
         vI8Ge7BUzeHqOMDuxCFQtGYS6RvEznBrubXHHtovjDkk4C0lB0xD89MLsHsZ/MvpVRpB
         jguw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Re0awWG50nrH4/6VRx4y/Pn+Vz9FU4uiZwXfCbAB2Ls=;
        b=pWtQPaJxO6iXZwZ5jUiELeq9Ux3UZZz5JFd6Df1RD1WdLKfTgtGdr9VwOkDWIJyUPM
         AvyQktJCX95trJmXsOQTbmIsYU0bG7khFdIT5+ImKTtdFoGSuWip5/oDCyN+OUkV3HPq
         atOzVYav9qg5jUSpBFj2/QREcJfOGRVx2VajhUaT+kfy1Gxf5IHvZbDV+ycEVA2ZPXnq
         ZV+bzRsgb+L9RpppFRNybiwmETFAU3Ap3bQo4qUdzspcUTLE9tlNdU3/TMtONcvQCMfV
         T7lY7nfPP09FsEeUmPimwOFpP217++MolPwRpqoEjaYpLw6h7flqdjSdyIDwxmv1WmdC
         awoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Re0awWG50nrH4/6VRx4y/Pn+Vz9FU4uiZwXfCbAB2Ls=;
        b=AE960eQsHNJ0OPoHwHbaLXQ07xdfSuuqqg8bZ+kW/RlcICxlVaehCTl/kVo2eYaAtH
         xgrYC6hb4skCCD+wS3JUa05LNZZBGzAhjsOgamP5a4fakrLoBwUOLr++kPe+1QbnpeRd
         CHretnJ8ZzL6ynSdoCvGIbQ7676Dxyo3XIv9nlUhPC0nTi+Jd4Q/4omHMTAObkT4Ywkk
         mJp8lh5yEy/CdAxS/D4+0R02ZsOccAG2MAhuaRcnttOpbft5caJlo9WHHbpyRhfUWnul
         H9kyRs0bNfMsk2WrOtqfcley8B+bjAwVmWqGGZJMIvPrmiyHGes54hSb2bU8ABm6FZbp
         Esqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Re0awWG50nrH4/6VRx4y/Pn+Vz9FU4uiZwXfCbAB2Ls=;
        b=m3Na+7tPko2E4Qz8X73/cqFh4iCAS9eHA61cXS6zhhtJjj+rXpzIAku3f1wvDaYlQD
         SZxU6dMsgH1OF5P/JDJyBVqJp9HVndfxEnD4PUMnOqOINyshjNZR4AZM+IxImzHKNXV4
         HOTOrIdo9KoQW8HDM1/eO794AJAZNZHIgg7jc4ueHDgOmZEXcyukHjdk4UUAeisvpMXz
         Op6kC2Cd8RrphYb3SpaxQE1t5gDQDwmN2a9nAH7LOF8trDwwlT2Lc/h2/owGbokcrA81
         PFYJApuH+tSGkNbq/wqDjOEd1mtjnNkmaSrvQA7WDWukShSC0elamGFaTRzlURtPKAC7
         DRtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2RgLA3MiJeYvnm7rTlgGzsaWLXcrQPCTEOPwZeebPSx1hyWSNs
	kKsz0jB92+Wou6Cf3tVe5Hw=
X-Google-Smtp-Source: ADFU+vsJoZaJYpNoyFBwxqG1Hmt/4cpXtngB8/yomJB/arHO/mq2WHHvfvNI0oifj/8sj18RwLhojw==
X-Received: by 2002:a2e:80d8:: with SMTP id r24mr3276076ljg.233.1584460238874;
        Tue, 17 Mar 2020 08:50:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4207:: with SMTP id y7ls3361189lfh.5.gmail; Tue, 17 Mar
 2020 08:50:38 -0700 (PDT)
X-Received: by 2002:a19:ed16:: with SMTP id y22mr8367lfy.78.1584460238096;
        Tue, 17 Mar 2020 08:50:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584460238; cv=none;
        d=google.com; s=arc-20160816;
        b=0KOg4MsXhqsm+Ups0vWsB1ClwkpDOgeTs1X6o7G4Bg//wBur0zIlW41Asr2P140ser
         A/9B9sB5oSPtw2hluHuBxp6j4aQkdQpwWV8TD60fFTUlkiFnX38lRLGKJxMIzT+iIQvX
         kRY2hZp0dWDvnPV7AIMLhAOFWoJs4cjlw9lS7h59CPq8qLi9Jc41tJlVhj42LRwZODbJ
         n46PA2m9HL1YBUGWFpOFcjQZMPCLx2b1IG3HwnPYjZrblU0MC9Yf/3nzu02SQfjnzOgw
         aOFShlnmfetBy1jknJ/n0xl6ONSjtrLs3QVppY7ZqTgV8PmHWTwZNSlG/lge3ov8GT39
         K7Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=M9bF3c4InPfHOS1ITMhcDk6AfbjKz3PIQiJeQiw/Za8=;
        b=rG9wMcfdGartWHdvlUtq7/57Jph3L27IUlBJYD6pu6onZHswU6hh4Xipw1XW7Wsr56
         mr+Kpwn8tq0Mrfx5Im/KQRK1jZp+w0R0Y/Qg0emv+ux3bPFC4gSEn91vaB1RBwgroWF7
         guJtAcdK10jeJqpmeOSEGPbzSc+ZHvaY7N2DyLAdGgNpg2ixT0x0792y9pKgxyPj35UV
         9AA2RuUfvKtBET7E7FxanFqLnwXqOTgCxq9x8t7bT6gN0/oAfUahPHg+bap+f/puMsN0
         QZFoe7pnFLW8++vMO6ChOrFXm/Vm/2ac04tPEhPDI4MLZzJao6NXe3ULk+IPTH4eR4tB
         PwQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a21si227850lff.3.2020.03.17.08.50.37
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 08:50:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3B86FEC;
	Tue, 17 Mar 2020 08:50:36 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CECC83F7B4;
	Tue, 17 Mar 2020 08:50:33 -0700 (PDT)
Date: Tue, 17 Mar 2020 15:50:31 +0000
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
Message-ID: <20200317155031.GD632169@arrakis.emea.arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
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

On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
> On 3/17/20 2:38 PM, Catalin Marinas wrote:
> > On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> >> diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
> >> index 54fc1c2ce93f..91138077b073 100644
> >> --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
> >> +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
> >> @@ -8,11 +8,14 @@
> >>  #include <linux/time.h>
> >>  #include <linux/types.h>
> >>  
> >> +#define VALID_CLOCK_ID(x) \
> >> +	((x >= 0) && (x < VDSO_BASES))
> >> +
> >>  int __vdso_clock_gettime(clockid_t clock,
> >>  			 struct old_timespec32 *ts)
> >>  {
> >>  	/* The checks below are required for ABI consistency with arm */
> >> -	if ((u32)ts >= TASK_SIZE_32)
> >> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> >>  		return -EFAULT;
> >>  
> >>  	return __cvdso_clock_gettime32(clock, ts);
> > 
> > I probably miss something but I can't find the TASK_SIZE check in the
> > arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?
> 
> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?

TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
-EFAULT on arm32? Which code path causes this in the user vdso code?

My guess is that on arm32 it only fails with -EFAULT in the syscall
fallback path since a copy_to_user() would fail the access_ok() check.
Does it always take the fallback path if ts > TASK_SIZE?

On arm64, while we have a similar access_ok() check, USER_DS is (1 <<
VA_BITS) even for compat tasks (52-bit maximum), so it doesn't detect
the end of the user address space for 32-bit tasks.

Is this an issue for other syscalls expecting EFAULT at UINTPTR_MAX and
instead getting a signal? The vdsotest seems to be the only one assuming
this. I don't have a simple solution here since USER_DS currently needs
to be a constant (used in entry.S).

I could as well argue that this is not a valid ABI test, no real-world
program relying on this behaviour ;).

> >> @@ -22,7 +25,7 @@ int __vdso_clock_gettime64(clockid_t clock,
> >>  			   struct __kernel_timespec *ts)
> >>  {
> >>  	/* The checks below are required for ABI consistency with arm */
> >> -	if ((u32)ts >= TASK_SIZE_32)
> >> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> >>  		return -EFAULT;
> >>  
> >>  	return __cvdso_clock_gettime(clock, ts);
> >> @@ -38,9 +41,12 @@ int __vdso_clock_getres(clockid_t clock_id,
> >>  			struct old_timespec32 *res)
> >>  {
> >>  	/* The checks below are required for ABI consistency with arm */
> >> -	if ((u32)res >= TASK_SIZE_32)
> >> +	if ((u32)res > UINTPTR_MAX - sizeof(res) + 1)
> >>  		return -EFAULT;
> >>  
> >> +	if (!VALID_CLOCK_ID(clock_id) && res == NULL)
> >> +		return -EINVAL;
> > 
> > This last check needs an explanation. If the clock_id is invalid but res
> > is not NULL, we allow it. I don't see where the compatibility issue is,
> > arm32 doesn't have such check.
> 
> The case that you are describing has to return -EPERM per ABI spec. This case
> has to return -EINVAL.
> 
> The first case is taken care from the generic code. But if we don't do this
> check before on arm64 compat we end up returning the wrong error code.

I guess I have the same question as above. Where does the arm32 code
return -EINVAL for that case? Did it work correctly before you removed
the TASK_SIZE_32 check?

Sorry, just trying to figure out where the compatibility aspect is and
that we don't add some artificial checks only to satisfy a vdsotest case
that may or may not have relevance to any other user program.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317155031.GD632169%40arrakis.emea.arm.com.
