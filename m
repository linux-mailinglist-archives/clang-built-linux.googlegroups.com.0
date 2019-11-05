Return-Path: <clang-built-linux+bncBDV37XP3XYDRBFFHQ7XAKGQEHOVYZWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D9DF065B
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 20:55:00 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id k10sf12818561wrl.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 11:55:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572983700; cv=pass;
        d=google.com; s=arc-20160816;
        b=qMeqhdJ/FAy93g1+Cd4mk8ZHZHWlqrOd6ps8gg3IkZiXjRW11HMvsc4n6D23qeSb/u
         5WtU5qtvCHyBgHIwcaG76FofKSctokkr0circMFsP8JWFklk2DNIbh+iK6qfopEUWRmq
         0eavXRwmx9rAKcOVsGu84K1cf8bjY++p+UjmHh+wI/OKt12xTIYlcniAC0m4o7KkfKD9
         AAYCDxGngmebOHS8yAKNgRX1CK3qUOPv02avroUV3Be7ejtDJfgC3uEDjfDIK30NFs8r
         Hgp5p0C2al6sthnAYSHjh/+hhfqc6I2AopsH1kplrYx0LYjSLA8zUr7UQGmRsQCHZ9DR
         bxSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LQEzTKaXyaBLB8/HPdASJk4l9He82HTNXvmtGvjKWyI=;
        b=FERT1F9NGl81VWQIyCcYKoeRMKiQ/OTZzBil1vDNGfeHsfd3WPmcNzI/1W9gcTLzWf
         Ju19MZEnIUaNyroQaNhbMOIXQBVdoLEzbASx0eDj9xvoQ1scpfL2y7KGdcZFOVZdkIXf
         NYYiN1uw5G4TqBu100nLz1bYmIISIZWi+vUuBVXXJlEwSB9Zh6Nu37FZNMmSk9eLqkc0
         sWU5vfz9grzp8qkN3grN/z5f5IFXNbM0XcvW2bvMQUnZdXw+mugaNe+66pCBsa/1f/P4
         6rS8+fn7rEYZ5xifr9Fi5EEkhCPeochgNgHE1G1Hsfu8kaeQMLmp5KQTMjd3fCZ0Uycb
         sHPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LQEzTKaXyaBLB8/HPdASJk4l9He82HTNXvmtGvjKWyI=;
        b=PJ1RoC/KjnG36oB4zkSN2E4qIkNpcymvccw1x4WCk9oPiyq8+47aoCdml8emYoKAd9
         4Va6WKV0ket/m10uGU9ShyJSzyXCvn6LMCsAuEYwRdTR+jcytRIMxvnfmeywGQj7Am7K
         PxNtnysx+z5Pu8+havWoEl6k0H2vE8S/8k+dxbbldRBXuy6yN8urgTsD8yJ6nUpfyC7Z
         yxRe4SZCcsbGiOxGm/1A2MsnPkSG464q9jTn3dSLJdCrY6mW/8Dt6MuSzvlWHFTfO1Hb
         DlW/XBLorECT9qXLfmEgjCWO1hMLah08Jsyhq+KOw3NSFQlSFG06OgGX1QVBtx2EWcij
         0keg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LQEzTKaXyaBLB8/HPdASJk4l9He82HTNXvmtGvjKWyI=;
        b=FvCdEHaYwh145l1jWHY662fcN8/8JvLqy6dA8rMXiS8Ucm8ykFTHuyOMHEEwf87Vue
         fgjkiebqoaFt86N9svkgBlkUV1vKGpvce64Qg5DE9lDfFeWj/X4qe2dsXzWMxgvgf/Sj
         Ncs9Rbi4x5nFWuX5+Opf134EVEr5pI0OONUF4/RhCe3t8EKXGW+Lyh8GJ0xZEDfk7cYZ
         z1fbEWf99/KDPeTV1eWwZII+U6zPcUSacKIIPbaG3Ge4h1PYbv/cxCOWq6zSZSp7VHpu
         IXcV8bQqeSxkSzQ/Psmhl/ALhDGU1RMPs3dRWS+FjWz6ca4DAup2oXwy9wAfYwpiubaa
         +dbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXv0+8JV/hXoubY+aXlx9qX3d7J9ZupU4FbVgg7BKLuNKi4VpHN
	cxGperTQRveDQLX+Z10lJ+w=
X-Google-Smtp-Source: APXvYqxxfes2joUrWSPVUfifKk0CNNnV9vlEePbViqIAUGhVIAx08lsqPsFhohXxbmM/y8rKwno1wA==
X-Received: by 2002:a1c:9d07:: with SMTP id g7mr596769wme.53.1572983700259;
        Tue, 05 Nov 2019 11:55:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6085:: with SMTP id u127ls3939984wmb.5.gmail; Tue, 05
 Nov 2019 11:54:59 -0800 (PST)
X-Received: by 2002:a1c:e308:: with SMTP id a8mr593099wmh.55.1572983699554;
        Tue, 05 Nov 2019 11:54:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572983699; cv=none;
        d=google.com; s=arc-20160816;
        b=hq42tmthMOI10+Sjk0UXu39kTqtQEdjDV5NTWlBowltWXJorzf1VUytpn52m8mXmEL
         SBKfdKdUSvbKoxw6yoEAwkp6ThPogZouRQMOMKeijHRpHgWnYcoENxUs/C/kI5fXlHrF
         IbV+4g9IvrDTJJ2XAtJYa5pg1LmIKOk2/+cOpWqwOgC6ljZ/aZ4EbxiTMhtmGwqKeTA1
         EKl/xMGXHJ7HkugR9Jis5m0lgG66bdVgSg/tyPQ2w2mGud38tPIJHKosEQbSRvehIxIQ
         8y+/zlnNC8vfZH8BhIH5w/Y0bNtTvYcDRlwOiw858bXmi9ikcNaHMCVP1Zktlweq10k3
         ecQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=JN/L3OaIrafNQib9frGtyAZYrdDrAsFreHB52qUoKdY=;
        b=Sm9MP2WJ2Pj48ttcECkCatgDdxToE6wfLgA8VGlxBlStXW72h8G98DkCLddY9QA71d
         EH2EOGhz3dUXnoCav+KPBZP0Bbxsgz6QdJvE7f0zVf1kOhfzhFT5Ke5C1Adtr4UfdQK6
         N94XXKIiIhHU/Bf7casLaxzgvZFfBR5mlemzcPc7L6zYlB27So4EAVqs3IApsyT5uJFR
         OmtOI11mRweVbq68OZd3K7fGryFd9a9240TusHqL4G3+PPEddoCE4ySdhU0OVZl1LB6D
         ORFTYMX/Hc4y4x3CvdOcYGUp49CpvGN7mMSypsqQ4Xx7Vl6cy+WAE71KcrTrNtiw+Xce
         gixw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b198si55209wmd.4.2019.11.05.11.54.59
        for <clang-built-linux@googlegroups.com>;
        Tue, 05 Nov 2019 11:54:59 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DFB87AD;
	Tue,  5 Nov 2019 11:54:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AFF33FBB1;
	Tue,  5 Nov 2019 01:17:25 -0800 (PST)
Date: Tue, 5 Nov 2019 09:17:23 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 07/17] scs: add support for stack usage debugging
Message-ID: <20191105091723.GC4743@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-8-samitolvanen@google.com>
 <20191104124017.GD45140@lakrids.cambridge.arm.com>
 <CABCJKueoJs7hS7VrVoz6CY_oAjTGcV-W61v9GAdwg+zk0W5ErA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKueoJs7hS7VrVoz6CY_oAjTGcV-W61v9GAdwg+zk0W5ErA@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Mon, Nov 04, 2019 at 01:35:28PM -0800, Sami Tolvanen wrote:
> On Mon, Nov 4, 2019 at 4:40 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > > +#ifdef CONFIG_DEBUG_STACK_USAGE
> > > +static inline unsigned long scs_used(struct task_struct *tsk)
> > > +{
> > > +     unsigned long *p = __scs_base(tsk);
> > > +     unsigned long *end = scs_magic(tsk);
> > > +     uintptr_t s = (uintptr_t)p;
> >
> > As previously, please use unsigned long for consistency.
> 
> Ack.
> 
> > > +     while (p < end && *p)
> > > +             p++;
> >
> > I think this is the only place where we legtimately access the shadow
> > call stack directly.
> 
> There's also scs_corrupted, which checks that the end magic is intact.

Ah, true. I missed that.

> > When using SCS and KASAN, are the
> > compiler-generated accesses to the SCS instrumented?
> >
> > If not, it might make sense to make this:
> >
> >         while (p < end && READ_ONCE_NOCKECK(*p))
> >
> > ... and poison the allocation from KASAN's PoV, so that we can find
> > unintentional accesses more easily.
> 
> Sure, that makes sense. I can poison the allocation for the
> non-vmalloc case, I'll just need to refactor scs_set_magic to happen
> before the poisoning.

Sounds good!

Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105091723.GC4743%40lakrids.cambridge.arm.com.
