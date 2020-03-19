Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBBHLZ3ZQKGQERIT7V5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A9518BF15
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 19:10:12 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id dm17sf2779898edb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:10:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584641412; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pn57uAf8Sj2jDQbiUfl3tJzxCtDZhG7qYV0xkvD4R+Mv3ZCRrL6UcIz2eafgKu7lc0
         Ef5V7gBTeISVKqeO4WwYqEJT1pCU9GIEzpi7m/9AGsxzVI8zcSBZeibzM4o5RryCuTHU
         7m3grPemRXFUu+1WpdxLGZ73oY03g2MSht/DaHdkeJLQ+p/l4a7oMsG7uG4wVpx4PwNp
         T97ety0/Uzx++NRaEIlFeNpsYnJYFQGZZWVNvkIb+7FjxmOcc17HPcJJKwVrC0vaoEH0
         jh4Xrb2GHW64kDdCwYL8CWyzqfJkwNda6Z8172TJQcJ7stcONuA/ynILiUKgukixNHL0
         RMcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=X8HKvcUzPBBfJsqfU9Ib8yy6+FZu+IjyTKlh9bGLuX4=;
        b=gfmWyzPrfIiUyFPZjzAekr+CsoK0X6yKWaJ3gOHmW97TIhsg/dXgJttb9yVlPw4R9l
         jNS8GY71ovANhRIPL/F8cw5Fw7a7DJQo6nZ44T8uWSdFQc7KwQnmD/235kEbcD5ti6CE
         Yg0qk1kHLMcqHROpLiji2nFryiP5rpLsrnDowxZ8IWgR+cUmd7+pgw8it5StIh5qGqPd
         Q3Xmoz4BejMNCpV54O0Php7nBbQ+XXxCFpAZAr4J13vSxI3zoIz5KbXOPIDl72H4wp5R
         weK2n0LdybAjEl/249mQHPNmaDx5IwGAc4vsOFuI8e2a5vxyokOqciZ5KNR9WgtIwd6J
         pfow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X8HKvcUzPBBfJsqfU9Ib8yy6+FZu+IjyTKlh9bGLuX4=;
        b=DMGAhqM+9Bckr6wl5WoFnmV1OT0O6/KARLGLcAWhnazS/WGaj83VcIPAxPjSY5ciN0
         AECLt0SxBPzEKink5N0Y1I8vt7xvl0MdED4Mf0p5dOkNuKdqbs5y3Ncld/coZ5UfWaaX
         IbQIGBJJ+QK+uGT30c4ZVSbUCSuD8wd8LKvyICft38b9GQHsWdA1bCAkfjCN/9vd3z4Q
         QJLBpV3oFwx0bkCNlKonn4munZdkqK1OSt48jtTm9n94dDdNxs5F3KfjUQUrDpmAKg26
         S4x49YzrJEP5cGj2eLyZgT3oy0Sx9Bsk8xZT/sHfUM+KPX7pZXHAeRKaWAEIF2Zlr6jO
         s35A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X8HKvcUzPBBfJsqfU9Ib8yy6+FZu+IjyTKlh9bGLuX4=;
        b=X1r3U+C3grtI/EYqH0jUCTnfuFZ+zQacrrb7IOEYxcUlc1K8n7ccBFP/7673xEADl+
         kckXPnM055Tb3QDzmgKn2uQVkM4Ugem/1ix2uSSYtQocfRzDDqowwhg0U3lL//a0brKC
         WScv3uylPjpABRS+2EQEfZFfeBazRB+5miKUlefV6EBL2eHonWvd1UTlkZIafGhf/Sez
         Hr1dcJ2lFB39Qf0IO/ONmgMCKRYB9KhLl5xtoWqCAuvP3j5FmYg9wIG9Ijm9HYKGhGPO
         IyqwIlMj19aRA7R5Jl818q8WKz8B44tt/kg32v4s8jbOoNiNx8E2B6LzHf+u+JvGITdx
         1SCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2KLhAFGMoVR4bq2T+MaL7NE494xGZeWTzD18CZbap2hwiRCWHz
	LqSnhH7gGCiSPQWO6KNtFtU=
X-Google-Smtp-Source: ADFU+vuvBvjzHkJBDuKSc5536NzUXwTMzGTbBJtpRlC1YY2K4HgyJ73CobZGx9OWWNmG5XMubAAmMw==
X-Received: by 2002:a05:6402:c8e:: with SMTP id cm14mr4145025edb.163.1584641412379;
        Thu, 19 Mar 2020 11:10:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:11c2:: with SMTP id va2ls1454674ejb.6.gmail; Thu, 19
 Mar 2020 11:10:11 -0700 (PDT)
X-Received: by 2002:a17:906:6a8d:: with SMTP id p13mr4505694ejr.196.1584641411528;
        Thu, 19 Mar 2020 11:10:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584641411; cv=none;
        d=google.com; s=arc-20160816;
        b=jHYxUlaBK+9RnaTDgR1Jk16gpQwuVN8h2N9wEmHAkWST/HKtlnNZZorCwBLWDBeP7b
         lficoyX184RVeVk0OBdiIm+4SZXMXeemEtskwebkUP/oyTIN9l6IXjrQhLsaMY0dU5Vu
         Zx8+2asUR/oy0lJSf0R3Jm1m0JxM4pWlrLBsXwyPviCLswL4R8jWHlQKseZohOazA2R5
         CuX4hBSwLJa+tdcVqTYYV5oCU3SLeYNny/5ASLg69jB79rBVF22Ssx69zs04QShneund
         If+7o+A3PtQLo66yYiFwsAvVTFEPzbeG2f29QwLjYmmHkDBMG3jye8Rj0rB74K0TKmgr
         cP/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=KRC2u4nsDZVAf9q5l4O+7EFdUHnD39sw8X7L8EL02O8=;
        b=KYYor1I+iSHlqxwmp3miegpPcRHRerm3pZsYr+sW71ZQbsafpWZqHJ4eHeAtOOu2xs
         MThUgjIs7+CyojNRCpIo+6vOjADo8nXVyta0ChO7rtV27t64ATe7Obq/5/PUYMte0otR
         /52u6/CiCN9aAZuXEu/ubaQw/8KIbR29xQg94rKjh8iKmpnqI86vfwMZGgi1WvAFlWtZ
         V3IAKKJwPMfn4RyyhnWW20nft5ocXz/K/LQLh8e1wRR3S1IKfnXuryXnTT3HzkZ+gKUj
         QX+MgsysR0A1iuzKXS61WfylZXpJlAKG0Q0MnyBItR7ME14jyJM2OVnDjF27tn1kg4t4
         N2Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id k9si113214eds.1.2020.03.19.11.10.11
        for <clang-built-linux@googlegroups.com>;
        Thu, 19 Mar 2020 11:10:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1FC730E;
	Thu, 19 Mar 2020 11:10:10 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5418C3F305;
	Thu, 19 Mar 2020 11:10:07 -0700 (PDT)
Date: Thu, 19 Mar 2020 18:10:04 +0000
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
Message-ID: <20200319181004.GA29214@mbp>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
 <20200318183603.GF94111@arrakis.emea.arm.com>
 <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

Hi Vincenzo,

On Thu, Mar 19, 2020 at 12:38:42PM +0000, Vincenzo Frascino wrote:
> On 3/18/20 6:36 PM, Catalin Marinas wrote:
> > On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
> >> On 3/17/20 5:48 PM, Catalin Marinas wrote:
> >>> So clock_gettime() on arm32 always falls back to the syscall?
> >>
> >> This seems not what you asked, and I think I answered accordingly. Anyway, in
> >> the case of arm32 the error code path is handled via syscall fallback.
> >>
> >> Look at the code below as an example (I am using getres because I know this
> >> email will be already too long, and I do not want to add pointless code, but the
> >> concept is the same for gettime and the others):
> >>
> >> static __maybe_unused
> >> int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
> >> {
> >> 	int ret = __cvdso_clock_getres_common(clock, res);
> >>
> >> 	if (unlikely(ret))
> >> 		return clock_getres_fallback(clock, res);
> >> 	return 0;
> >> }
> >>
> >> When the return code of the "vdso" internal function returns an error the system
> >> call is triggered.
> > 
> > But when __cvdso_clock_getres_common() does *not* return an error, it
> > means that it handled the clock_getres() call without a fallback to the
> > syscall. I assume this is possible on arm32. When the clock_getres() is
> > handled directly (not as a syscall), why doesn't arm32 need the same
> > (res >= TASK_SIZE) check?
> 
> Ok, I see what you mean.

I'm not sure.

> It does not need to differ when __cvdso_clock_getres_common() does *not* return
> an error, we can move the checks in the fallback and leave the vdso code the
> same. The reason why I put the checks at the beginning of vdso code is because
> since I know such a condition it is going to fail I prefer to bailout
> immediately when it is detected instead of going through a bus error and a
> syscall before I can bailout.

I don't dispute your choice of choosing to bail out early, that's fine
by me. What I'm asking above, and you haven't answered, is why we don't
need exactly the same check on arm32. I.e.:

diff --git a/arch/arm/vdso/vgettimeofday.c b/arch/arm/vdso/vgettimeofday.c
index 1976c6f325a4..17ee5d211228 100644
--- a/arch/arm/vdso/vgettimeofday.c
+++ b/arch/arm/vdso/vgettimeofday.c
@@ -28,6 +28,9 @@ int __vdso_gettimeofday(struct __kernel_old_timeval *tv,
 int __vdso_clock_getres(clockid_t clock_id,
 			struct old_timespec32 *res)
 {
+	if ((u32)res >= TASK_SIZE)
+		return -EFAULT;
+
 	return __cvdso_clock_getres_time32(clock_id, res);
 }
 

(where arch/arm means arm32 ;)).

If the arm32 vdsotest passes, I'd like to know why.

> It is mainly a design choice based on what I explained above but I am open to
> suggestions if you have a better way to proceed.

I suggest just drop the TASK_SIZE_32 test altogether in this series to
get it merged for 5.7-rc1. We'll fix the ABI issues in -rc2/-rc3 once
you confirm that the test fully passes on arm32 when it doesn't fall
back to the syscall handling and we understood why.

> > Furthermore, my assumption is that __cvdso_clock_getres_common() should
> > handle this case already and we don't need it in the arch vdso code.
> > 
> 
> This is not the point I was trying to make, what I was trying to analyze here
> was the check compared to why the test verifies it, not the correctness of the
> check itself.

You should implement it based on what the man page defines, not some
specific test. Tests are rarely exhaustive (unless you do formal
modelling).

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319181004.GA29214%40mbp.
