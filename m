Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBF5D2PZQKGQERQGJGHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB8418CFE6
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:22:16 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id x93sf5151048ede.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:22:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584714136; cv=pass;
        d=google.com; s=arc-20160816;
        b=TDAB9mjfoWEBPPO3kc3WpdEXKZXNeXnopx03CotMT8TBFY8O8bfXC3VL0jbcry5K5D
         sZxnNjNxuOf4Yf3dvy0rT6XggNGXUUq9i0kep6JbB+99zCVch9Hk+pJi1go3OvnHdulH
         3mKBXFpVRVJd55dJt0ILfirx4NsvEIBtGTjUTjUotga2/SaSMiasxJtPCKwDig1H1Afh
         zo2MDPt+6jxfYAEvWDkz4hAfkeVxPyghn5WllO+UkVagmEvWmUxQxWN5RrI8NEXK6QH7
         AnINAbguIBGpOKPJV51muRNLrxqoZDIUpeCrcXK37BdiqfA+JZJxvYaSgvG5zojeR9ZL
         E0HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mcV0V/rXGBhzv25d1lHzk0zZrY69SaRYAuLwz11/L1Y=;
        b=pTnFD1ROCbwDpnkRNrjmjik9A0mqhZvUiJnS1ncteXFWCBzsE4cudrpb7Zfg02k39M
         MhX8cc2OP7M9duOZqaHBBNM6G5e4ie3YrFA63j1yQT1nu3JkJlWoONpVx7tSU1N2AJoV
         Pq36qW2av02F+LQ7QBCcKW+D0p/JnnNmpUauJxj7JClHQWBygFKeCstuKyMYU4azuPq3
         CDM3K+SokA2zBZrS8sG1jaEbP0ktPreyH8SYbTuyviGm8l7eI1bbtmpUAGBJh4LqTNZ8
         9MvzMRZjsU8/pasGsrp/ZQBiy8ibrL6yTmQcQ6tQcO4Hrjeiuptv6LqsjvObJaPA+fMq
         B6rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mcV0V/rXGBhzv25d1lHzk0zZrY69SaRYAuLwz11/L1Y=;
        b=BY3E1umJcMlM1dsShwKxxEgDKMP3e6CuWSzpEjf02UvUdGp8pWX3pYfyXsW9Go3rAw
         ppVkXP4V6xqjOrLiPGaybyGwT4qoaHu+0+zz2gPKJNIXkbZZD1ki2sN8eKhyfLqWgVUV
         lSlvJ7pgS4S348pep9MqW8PQWH5y4SpPW4iZ+/mBxm03/ELd+aY5y9LgleaweSqs9Fzi
         c8gMewUwweePE9yacBkzroRv7AQNPFBqHZ2TLYElK36b9684JltXupvRuc3DxMUu+O6i
         LnwCRFbR5TSUWUoNi77iH+2iSCaf3/8TlytwpIo+md+BIB7aFgyxqOdEPzofi0lvTOet
         /Rcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mcV0V/rXGBhzv25d1lHzk0zZrY69SaRYAuLwz11/L1Y=;
        b=TmnNHKb9kfEOgOj2lAWy7nte8BA5LjQ53vJKFN0gIjm7TAdZ76VdosdA0/aKE5WXKp
         uivcsngrinHiDkcykqTuniNbg9Z7LQ6WR26DInBpyYbtxQ6Ybo3azA9xzyKW9rrAHFEL
         Ftr5lmqBrAn4mSPZZRCMdwi/o904eFkombMQ9cgdcSgXRb4SKG8vmdEd/bGtk9bwciai
         lXsp0UCGXg/c0VWzokN+9sUeMmwq/jVM9Oopgj7WrRJtQRYa8pD9sQlwEeT4eGj0lU1v
         IvsfR8HOeWF4HP5odcYzFEJ2mN/6B8dJa6LAutdDP7OoSsgCSdLydMSoX6EqdEYf6yvu
         sNFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1F/jlNHG/HNLcSHU073Wkai4dkxB9bjDz2HO4UKRqaFAIO3Mr0
	QvPfLN3sI31DNuINZJroDZ0=
X-Google-Smtp-Source: ADFU+vtoBqf1qZ7QolLr3EXxsUimLm5zUtu9ejI96lAcH3DJ2tx9DerKBng+zIrO6YTfbSwaoaLTTA==
X-Received: by 2002:a17:906:939a:: with SMTP id l26mr8618410ejx.276.1584714135903;
        Fri, 20 Mar 2020 07:22:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8ad5:: with SMTP id k21ls3298904edk.0.gmail; Fri, 20 Mar
 2020 07:22:15 -0700 (PDT)
X-Received: by 2002:a05:6402:613:: with SMTP id n19mr8081008edv.73.1584714135245;
        Fri, 20 Mar 2020 07:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584714135; cv=none;
        d=google.com; s=arc-20160816;
        b=Dzb1woEOnMlUDm2K+eMALCN9UxMmDuEtsG3Hj3Qd6TefcI5ES3AzGPwANO7RMoRfab
         ZaKP2lbTBHALkAWwYGUYHfJ6IqpB+dO5LCL4ug+VeZvj3MrxNi8/q0VU3hMmee+i0qGV
         q2isbLp3XCprU1p6bhOkfkYtHxr5M/EpJYDIFRhj2D0q43ORyLllWJ/HFobyZ0iWqEFc
         oKfVQc4aCZwXdaPQvMwmfxrPUBqHVOTJORX3kKH0hDoTc/XO2c0hzxTpETE0lyaFll5q
         8k0H48goue2fRQA26HL2XHTineJdfNcZiFO5g1ukMuCdYrSyRUZggRxWw3XApR6CsG5T
         KgHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TAGsW1ciJQeNwxmirqsW6cpGH/sIpTC5LXhgSYg1/0M=;
        b=RP9eRmDi2juYP8Rdo2As6b+ksACELF/joCxeBnIjbv9d1deulUH7kdH1uenHwh9/63
         1sZw2/Cv9soTIUVMICV9RbF7zDdNr2SmJDtluMSq8P504Ie8+I1LVu9twzJVbe00b8Ur
         IC9gCt6bWNwZgQeKIxP6C2dfuNNmd9SS2UxysTDbXHGoNMCzkkWwb0zcZb9B+sT+FjR5
         GHdtgpuIEMKypk+QlDAdhaPNWCmSveLlcHm4Inpb+t0PDkQ1+tkLXHfwC0mhGNeJbVu1
         L5cp9Pzim3mk2WNgAPdz41NgPoYci+pYoZQndhELbViVzQAD6Up8f8gL9SJBoT4SbEqc
         kFuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id f2si74185edm.1.2020.03.20.07.22.14
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:22:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 644CD1FB;
	Fri, 20 Mar 2020 07:22:14 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 38BB73F792;
	Fri, 20 Mar 2020 07:22:11 -0700 (PDT)
Date: Fri, 20 Mar 2020 14:22:08 +0000
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
Message-ID: <20200320142208.GC29214@mbp>
References: <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
 <20200318183603.GF94111@arrakis.emea.arm.com>
 <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com>
 <20200319181004.GA29214@mbp>
 <b937d1eb-c7fd-e903-fa36-b261662bf40b@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b937d1eb-c7fd-e903-fa36-b261662bf40b@arm.com>
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

On Fri, Mar 20, 2020 at 01:05:14PM +0000, Vincenzo Frascino wrote:
> On 3/19/20 6:10 PM, Catalin Marinas wrote:
> > On Thu, Mar 19, 2020 at 12:38:42PM +0000, Vincenzo Frascino wrote:
> >> On 3/18/20 6:36 PM, Catalin Marinas wrote:
> >>> On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
> >>>> On 3/17/20 5:48 PM, Catalin Marinas wrote:
> >>>>> So clock_gettime() on arm32 always falls back to the syscall?
> >>>>
> >>>> This seems not what you asked, and I think I answered accordingly. Anyway, in
> >>>> the case of arm32 the error code path is handled via syscall fallback.
> >>>>
> >>>> Look at the code below as an example (I am using getres because I know this
> >>>> email will be already too long, and I do not want to add pointless code, but the
> >>>> concept is the same for gettime and the others):
> >>>>
> >>>> static __maybe_unused
> >>>> int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
> >>>> {
> >>>> 	int ret = __cvdso_clock_getres_common(clock, res);
> >>>>
> >>>> 	if (unlikely(ret))
> >>>> 		return clock_getres_fallback(clock, res);
> >>>> 	return 0;
> >>>> }
> >>>>
> >>>> When the return code of the "vdso" internal function returns an error the system
> >>>> call is triggered.
> >>>
> >>> But when __cvdso_clock_getres_common() does *not* return an error, it
> >>> means that it handled the clock_getres() call without a fallback to the
> >>> syscall. I assume this is possible on arm32. When the clock_getres() is
> >>> handled directly (not as a syscall), why doesn't arm32 need the same
> >>> (res >= TASK_SIZE) check?
> >>
> >> Ok, I see what you mean.
> > 
> > I'm not sure.
> 
> Thank you for the long chat this morning. As we agreed I am going to repost the
> patches removing the checks discussed in this thread

Great, thanks.

> and we will address the syscall ABI difference subsequently with a
> different series.

Now I'm even less convinced we need any additional patches. The arm64
compat syscall would still return -EFAULT for res >= TASK_SIZE_32
because copy_to_user() will fail. So it would be entirely consistent
with the arm32 syscall. In the vdso-only case, both arm32 and arm64
compat would generate a signal.

As Will said, arguably, the syscall semantics may not be applicable to
the vdso implementation. But if you do want to get down this route (tp =
UINTPTR_MAX - sizeof(*tp) returning -EFAULT), please do it for all
architectures, not just arm64 compat. However, I'm not sure anyone
relies on this functionality, other than the vdsotest, so no real
application broken.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320142208.GC29214%40mbp.
