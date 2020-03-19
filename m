Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBXHVZ3ZQKGQEJTGQIKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1D118BF69
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 19:33:01 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id f94sf2240855pjg.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:33:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584642780; cv=pass;
        d=google.com; s=arc-20160816;
        b=KpO52hDHvPxSPSAGrFK8ZPR+B9V6wY1Tm69kWxsKHMRzRXYq4Z4D0B14E+6vqu+fc9
         tSn2v3DnQbwwSaJf/6JPzhMcP90Bh7sBke1SU0mK7UL7EOAFvCe7pctgKGh/2+Vfgnjh
         A6MryxzebuitWcD7U0aUD/by8/RFnAh1ZohYqjoZt+sn6w5YC5F+Hjp7o+S1OgU0dBSU
         2CPQaOAy7MWs9H6cjClHELp/1XdPuDJoJdHeCmxUPWJQIjL6gfduKAUkjEfLHGPZLKH6
         gH9z3ug0mfUocvwWVOB23mfGl6aqc5o2eCkCvHYDIXZlu8vGTDvazEseT5iZaf74PV0A
         DAxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AVqkp9J7DHWqEekQ8n0Cx3UfhPeiOgI3EvJPk5a52f0=;
        b=zieUFYOOOhIabie2SPuc3aEyaQW0hnYmE3W1BCEjrSV53t7nL/Q9xeOOLjzHDwVl9Y
         UhiEFerV30LCMwtIJbUAF013jeucuV9oBZBNodkwVoQbVKWNG2zRjWjaRO2SXXCe709O
         9qaAvMNP8sDKYsYlIw5RQE9ThoWdqNd6UcIsz/ktKe0tWb7Da73dv7xu1wiws9KZYAMP
         2vd9o7XGbfq/HGeI3OB0V0Sgm2w474sxt+nYvGSwG5Ri8M5NHfQ8bVAvFumvQGLOyyHy
         vlNBdin6I9TaaeO2LkpaslU51FuhlUwNVmqHvr2QisBP/4e9fKrY/tLqAJXH4KNPmgCL
         J64w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sEmiPLH8;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AVqkp9J7DHWqEekQ8n0Cx3UfhPeiOgI3EvJPk5a52f0=;
        b=sdPMKpuZZwX8JZaKSjVUj4kM/9dav5mFFxWvnGH3yZS33M/eOqjSfulVGLL6hMQJZP
         O7AuVKU9bWhhjHNzqiDNz723TDKo8ry7hidqfsfwf4rkbj5PqzdslmpfYgBLUH3V0gjl
         /qZSIgU1U48pyBkYe6ZPIj9JqQTaMy+Zz20RASaqzF7YaOBvGr+fz+gDjqM8bfqifsyA
         QQQ8VE5FVHf6iJdipQUYHj+yL/ixkwq2SKlVtNgwscCKZxJACV2VScAkC0K7KscngIn+
         9AIamZLJKf3vNuuOY1Xhi3Vw0lB4ul2Je14HE2TkvOBSf6gIQWyDqSvX5UIZ81DY5VvZ
         biRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AVqkp9J7DHWqEekQ8n0Cx3UfhPeiOgI3EvJPk5a52f0=;
        b=VfQ9WfaScOs1U0LRczFqkDmnSQHlc26kwIJDl7GvSwyga++9/4ArP7mQ7fLAFJmJTc
         uvn1zTLxixR67XuFkeYQoZOnS6mj/l0H84+4/TB91GKODgQwa6qDg49wlNE7dlOhnafT
         vpl/PUh6p0L3B63tnzaKrzrKOImqHpClZKDcrk1B1YrA0ZWgAHFgY3bzP75C1NR7ekmK
         BgNCus0CETn4EryDWBYUSSouX4JGaBbZfESrcWIlidHUaxpxOX/+MulbkKHXkroWqmL9
         +KB+LNHhZPdZgIOVCV17n8fVHRCx7s/4tDMYDyBPwKMpLQtaFViQ7Tv89qSWGaGMMjCL
         K0Sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2tyKH62L/BipTUjtN7wWfEVXBQ5su2CxqlC56QAy0C/8GdxmeY
	dAY2R2K5TjOShYMrhuwY3+c=
X-Google-Smtp-Source: ADFU+vvpxRR4oH8lQeFMOasI8XmwmKCxWabQZfdei+44aNXMqmdTqXaBzPbEAuHoqzkBEBF32wLWnA==
X-Received: by 2002:a63:fe58:: with SMTP id x24mr4529202pgj.170.1584642780132;
        Thu, 19 Mar 2020 11:33:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:63:: with SMTP id 90ls1741729pla.10.gmail; Thu, 19
 Mar 2020 11:32:59 -0700 (PDT)
X-Received: by 2002:a17:902:b692:: with SMTP id c18mr4867064pls.7.1584642779690;
        Thu, 19 Mar 2020 11:32:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584642779; cv=none;
        d=google.com; s=arc-20160816;
        b=GhML0G2fvcjQb9baWaIGFxV4QggF2dzXVHTE5u/aW0mn5KohY/vG4fNcBaxwriKWyt
         TtsoMzqX8Lf6tsa+t6wPJrg89PopEDE72nOapQFTsWm4OPvZD68Q+oUP8E5cqqqobq2u
         HMQ9NTPL2hHtmynyu14y7fT7JLN2Q4CyjPAo+P4ahRHCFbfC9lfgcl4voUyNKpcDm2Tf
         Lalsk+bvVUt6YKqdqVuAW7+pLHhqLXN2tvlFzXxpwOp8nRnxzIGqg5g05a21uzuF+2Gm
         Z3v4+OeczCIMhn6FtMEFymLkQ2DKddagul9yWta7Agv+u1KhgdMoc94oow/JMBay2J/+
         tmLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fx25YGB5uHkOfLeR+on2JvOiKyuFjSD2NKbX8KDB2to=;
        b=wIM3NjkMRYXBBAYIpQOsso9IqkQbNKXuh5oLl7zFRgbPqEokyAXfReIx4gQS8lRQdg
         I3SsBgy/AK5hdkGIYO+XIuPrOopIszCrLoZQsSBSoB8ByGPWlm757/lERAt/+I5h5fRu
         6IGi3Uo7cWemy9wX8rcKkH+9JhxwOutAp/H737hUdQOkYSdUWrWFcXkr4Gkw09a1lFcp
         rY2ntlsJoNF6lVVTIQ/p0QBbb87ZqAJohIBoslrP5oOLH2ymu1Z1YgqWasEYsbEbqlkQ
         IBHwTv5DRrteudJwap2UqHaEcsV2WrEKbJtUQU6UFAXMs+UoObj33fpJMTjmXa2Exrwp
         B8GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sEmiPLH8;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x128si187316pgx.2.2020.03.19.11.32.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 11:32:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8D66020787;
	Thu, 19 Mar 2020 18:32:55 +0000 (UTC)
Date: Thu, 19 Mar 2020 18:32:52 +0000
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Andy Lutomirski <luto@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"open list:MIPS" <linux-mips@vger.kernel.org>,
	X86 ML <x86@kernel.org>, Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
Message-ID: <20200319183251.GA27141@willie-the-truck>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
 <78109f4e-c9c7-57b6-079b-c911b6090aa0@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <78109f4e-c9c7-57b6-079b-c911b6090aa0@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sEmiPLH8;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Mar 19, 2020 at 04:58:00PM +0000, Vincenzo Frascino wrote:
> On 3/19/20 3:49 PM, Andy Lutomirski wrote:
> > On Tue, Mar 17, 2020 at 7:38 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >>
> >> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
> >>> diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
> >>> index 54fc1c2ce93f..91138077b073 100644
> >>> --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
> >>> +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
> >>> @@ -8,11 +8,14 @@
> >>>  #include <linux/time.h>
> >>>  #include <linux/types.h>
> >>>
> >>> +#define VALID_CLOCK_ID(x) \
> >>> +     ((x >= 0) && (x < VDSO_BASES))
> >>> +
> >>>  int __vdso_clock_gettime(clockid_t clock,
> >>>                        struct old_timespec32 *ts)
> >>>  {
> >>>       /* The checks below are required for ABI consistency with arm */
> >>> -     if ((u32)ts >= TASK_SIZE_32)
> >>> +     if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> >>>               return -EFAULT;
> >>>
> >>>       return __cvdso_clock_gettime32(clock, ts);
> >>
> >> I probably miss something but I can't find the TASK_SIZE check in the
> >> arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?
> >>
> > 
> > Can you not just remove the TASK_SIZE_32 check entirely?  If you pass
> > a garbage address to the vDSO, you are quite likely to get SIGSEGV.
> > Why does this particular type of error need special handling?
> > 
> 
> In this particular case the system call and the vDSO library as it stands
> returns -EFAULT on all the architectures that support the vdso library except on
> arm64 compat. The reason why it does not return the correct error code, as I was
> discussing with Catalin, it is because arm64 uses USER_DS (addr_limit set
> happens in arch/arm64/kernel/entry.S), which is defined as (1 << VA_BITS), as
> access_ok() validation even on compat tasks and since arm64 supports up to 52bit
> VA, this does not detect the end of the user address space for a 32 bit task.
> Hence when we fall back on the system call we get the wrong error code out of it.
> 
> According to me to have ABI consistency we need this check, but if we say that
> we can make an ABI exception in this case, I am fine with that either if it has
> enough consensus.
> 
> Please let me know your thoughts.

I don't agree with your reasoning -- letting the thing SEGV is perfectly
fine and we don't need to perform additional checking in userspace here.
If you treat the vDSO more as being part of libc then part of the kernel
then I think it makes perfect sense.

There are other system calls that will SEGV in libc if they are passed dodgy
pointers before the kernel has a chance to return -EFAULT.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319183251.GA27141%40willie-the-truck.
