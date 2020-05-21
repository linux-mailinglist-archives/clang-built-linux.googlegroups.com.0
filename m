Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBXNMTH3AKGQECTK43EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F401DCAE8
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 12:22:22 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id 203sf3034918oie.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 03:22:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590056541; cv=pass;
        d=google.com; s=arc-20160816;
        b=e1Z4LMCrqMfmFTPwzolcINx86TgjxeOPM/mTVzMQ83PYBrvPqOLoV6G0R+oxjW82eL
         0EoEn3wfDgrrlOPMHpvyeSCFy3SxjdNI+/Jjjscv4RK3YRXBb+tfyg08dorzCjR2IOoj
         wroB8Ij7qKnOEGc3pF/Aik+DJttdqILqSXCPtguioif/JxMV9Fd7xAujx2sj8SWk245J
         I3+A/QS61ZScrsEA2yJwpb1enHd127stRlIK8su4GiRoBeaJcz9H0607yv7FwyMdjx77
         Q7dM2FLpqogrFRKiPkd0KQyFulsfMwqvm7dv2hCpFbEUkn4xv3ZMvJ19XF1LZKT//P9Y
         tQFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=g9bvV7G+btPE78nfSlA5M/c1QBToz8IlUEEn9HZQfyM=;
        b=k1trL6FcQnzT7cYJm2rBlwKXsaeJIDBpLWLPN9Flp4pcVjKitxWjg+Tibu4tJUnCtB
         LRWvirnAcO+h5Ab2k9NmgiOp4oWRrnEFyrS+LYdwW97Ytm4brM4gO/AlFIszEYpSIugY
         eJpZcM4+z/bm86QIYOPLDaIvo6L+tBikvKQNcYoQHZngj90gey98llyGk8lk3zBr4bnj
         93JjEA63WQorBZ0DHpPByAj8NHd+wwXt3+HUoy4LKjP+gzDfRGHEs6kADTShq+nd9LHv
         K65uasQsa3LkZDkh1QaOvjo5Gm015L0z2G32uVTMtrwTNR3Ou1/ukXRmB+R+WxnQtoBr
         vi3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sb5C65+d;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g9bvV7G+btPE78nfSlA5M/c1QBToz8IlUEEn9HZQfyM=;
        b=MMC36l01Jh0VrTSZBYZqE5FwMpgg2z45zBM42OC0T/1vRI8CKffbCrdbPrXa+THK5W
         LDGM5RzqOQkr0Dz5JYUODnkYs9SBKsIGvHPguRg9ryqtkdjnaZundIg0fMCFoa/mD7N8
         PkukwPqCyps2NVU6r18A4QShBUztFhV84uBIQbJmfZEcfSjROTxnlmtq85XWfSL38bNs
         Zka4RGCQpvvYGpkpCawTmqeyK+nHcqEndDZFzkmKfT2LZV9xtxPA9e3J2LoKNeFALlI6
         lhMFACC8Mwp4ABa0QOokFPHSmYi8AYefpIfK1C/t/Q00Apd6Olmg/sGUpcSt6i5Jr9zD
         ybYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g9bvV7G+btPE78nfSlA5M/c1QBToz8IlUEEn9HZQfyM=;
        b=fEcUQly80BVRbJXjplThjd3uh4lGf4PKsXYfObYMMzro0toMWGmcUkOmmmIUgpcLxE
         mDT5Ei2FSU3GA0EolHNu3aIsXYZGqmztKct0gOR6jdwKH0ZCg7DGJ6PCU4x8yTd3D7/K
         W653jKH1DKzq3ZVOvvS4/0vxQkFVxp3BlO66spkUBNVlFfhitt8upTdNV0WRvPDCRClK
         CfUtAOxOa9dJuDn/T2WuU68H69X2BJkAW356Pd353orUIAS0TizdyPFPQaBSUCS91MJf
         qRVuT6u1QpXqYu7joA5e3E7p9/uO/nxKbLVKtxlP+zrDT87ip51nzGPK8i5sWBDT/TTY
         67hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pH/pQ6j1Ph5JyI+RbP4lOVUMzoq+iLxtdIypni6NQ+FCax+r0
	6w15yHfAlqvN5S9HYyKIK1U=
X-Google-Smtp-Source: ABdhPJzMOs4Oeazf3vop5gch+V5wLt4VSGZh3gmF8raStxX005NHl/aI0GB3IXv2EMoEyh9BnSnUVg==
X-Received: by 2002:a05:6820:229:: with SMTP id j9mr6829983oob.32.1590056541375;
        Thu, 21 May 2020 03:22:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls313432oif.9.gmail; Thu, 21 May
 2020 03:22:20 -0700 (PDT)
X-Received: by 2002:a54:4802:: with SMTP id j2mr6434249oij.170.1590056540823;
        Thu, 21 May 2020 03:22:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590056540; cv=none;
        d=google.com; s=arc-20160816;
        b=XxiiUli0tETHcqkqwoqd3TR7svTke8n9JIXWt2oi9gx6CZaX6MieXrPFQ9jQSqomvZ
         1dteO62NU7rKLGlKBqcygS1HYaJwuA59i6GxIW1Z8q7uOI7sLwFMdEFNqZx+54zhntKa
         lnPe/b3v1vcJm9kNKDQ1LpJwIP+oS1AS5ihJMo1MH5hAoXN2E4QMJjAZgQCFjnWXhWhp
         bXS2qir3swRy+0/GY4/bpmRcrsK3+kmwjn+owea548blJ3Tzox/cLcLUHOTdQlN51+Cl
         eLiOMzGBr5UXs2SIazn7gdP9DFCh7R84oOH+Emr9mPtxgfuFvDhdhDIB3DvetQhF0kVj
         07aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FjG7FeHqf0yFBkIPr3XlM8T0X3uBGaYdIxJzuG74aFQ=;
        b=Wdn7ltg7OBb63HrupSi4AOJT7gao4W1Yfwg2wR9Kl6FS6HT4WIsBGjbdKKh0eHE4WU
         VfB6QIS3LUYSnpFZ1/MbJFZzNmTEcRkO8CP/9uYV1iJ+OymPJu4MQ1L9wK7YXBPeRVL+
         72k6q9KPAkdDymlL11DR82GD0QQfmKIN6M3CAvbNknzW6JVbbsYi3O/LtaAR5ACJ+UR0
         vmdx6mcUt6+2EL5cQn1Na4dXjGCj1pZG6YH0Dg+wp2W/NqI4ERbHoqfWGh/cdZDAn+bN
         1BCBkb4i7xy5JSCs7P59iWGx4IWCivpoadEGMBYzDgCLkhwbYS5tGAjM3umLlS6y/0mk
         mdZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sb5C65+d;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u15si461947otq.2.2020.05.21.03.22.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 May 2020 03:22:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1AB3720721;
	Thu, 21 May 2020 10:22:17 +0000 (UTC)
Date: Thu, 21 May 2020 11:22:14 +0100
From: Will Deacon <will@kernel.org>
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH -tip 08/10] READ_ONCE, WRITE_ONCE: Remove data_race()
 wrapping
Message-ID: <20200521102214.GC5360@willie-the-truck>
References: <20200515150338.190344-1-elver@google.com>
 <20200515150338.190344-9-elver@google.com>
 <CANpmjNNdBrO=dJ1gL+y0w2zBFdB7G1E9g4uk7oDDEt_X9FaRVA@mail.gmail.com>
 <CANpmjNPLVMTSUAARL94Pug21ab4+zNikO1HYN2fVO3LfM4aMuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNPLVMTSUAARL94Pug21ab4+zNikO1HYN2fVO3LfM4aMuQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sb5C65+d;       spf=pass
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

On Thu, May 21, 2020 at 12:18:14PM +0200, Marco Elver wrote:
> On Thu, 21 May 2020 at 11:47, Marco Elver <elver@google.com> wrote:
> > On Fri, 15 May 2020 at 17:04, Marco Elver <elver@google.com> wrote:
> > > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > > index 17c98b215572..fce56402c082 100644
> > > --- a/include/linux/compiler.h
> > > +++ b/include/linux/compiler.h
> > > @@ -229,7 +229,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> > >  #define __READ_ONCE_SCALAR(x)                                          \
> > >  ({                                                                     \
> > >         typeof(x) *__xp = &(x);                                         \
> > > -       __unqual_scalar_typeof(x) __x = data_race(__READ_ONCE(*__xp));  \
> > > +       __unqual_scalar_typeof(x) __x = __READ_ONCE(*__xp);             \
> > >         kcsan_check_atomic_read(__xp, sizeof(*__xp));                   \
> >
> > Some self-review: We don't need kcsan_check_atomic anymore, and this
> > should be removed.
> >
> > I'll send v2 to address this (together with fix to data_race()
> > removing nested statement expressions).
> 
> The other thing here is that we no longer require __xp, and can just
> pass x into __READ_ONCE.
> 
> > >         smp_read_barrier_depends();                                     \
> > >         (typeof(x))__x;                                                 \
> > > @@ -250,7 +250,7 @@ do {                                                                        \
> > >  do {                                                                   \
> > >         typeof(x) *__xp = &(x);                                         \
> > >         kcsan_check_atomic_write(__xp, sizeof(*__xp));                  \
> >
> > Same.
> 
> __xp can also be removed.
> 
> Note that this effectively aliases __WRITE_ONCE_SCALAR to
> __WRITE_ONCE. To keep the API consistent with READ_ONCE, I assume we
> want to keep __WRITE_ONCE_SCALAR, in case it is meant to change in
> future?

Ha! So I think this ends up being very similar to what I had *before* I
rebased onto KCSAN:

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/tree/include/linux/compiler.h?h=rwonce/cleanup#n202

in which case you can drop __WRITE_ONCE_SCALAR; the _SCALAR things shouldn't
be used outside of the implementation anyway.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521102214.GC5360%40willie-the-truck.
