Return-Path: <clang-built-linux+bncBCIO53XE7YHBBNMHQX5QKGQECBAFEFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAD126B23D
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 00:44:06 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 6sf2111278oix.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 15:44:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600209845; cv=pass;
        d=google.com; s=arc-20160816;
        b=vWqed0G26BcmqD24YbZBeKKl1JmKf8yInUwXF849aQ6zYSGuCO9h5Ro0myGMJoIQ+G
         lKGCR4fYzI2ZuFkNPx0IBXHmnGaOkmQ14VA3f05ikGn3PhSIiT9aHXSvDoiXylnfUYD0
         H3h6S8DbDDlmMn6GAe6B6e7jQFFYQtFA/HV0ddEqW0XWbrf8uFe19Ibe+TmISQS/9ol5
         r7Cc6zIE9McsBW2rjEen5dC9SrUUYaxICMKp9ClwSDS+baMhxpQcosaXaRRKqjRKzUvr
         /ufkeIcVyWtDM6qE2JhEhLhwrJT5x+5+itLnrwAnSMVgFtaszNdNy5OoTHboT9V84bcr
         py1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=jD9/S6gSsKi91+LZ1urinpS/qtDkhQUfb4Z80VBJWLo=;
        b=SZxhfpzl+rTAbjqw4YOIzRNYsobo7PCq3RABpPgXFWRsHmUFIut/yuhTA+HwcV1QXV
         Q33iZnSfa2KoL5Iw86ujzc/RAXPQZbu0gCguitR3MJeIb4WgjzIzrrUurEZEmFYllLEy
         ehTLLvqGuMzCjwH5sJD1M7nprBPIPHmMBwVWdTpEopowN6e32B/eKLt902eRlHmNBXG7
         Y6GQ2/0VEUGJc03/O8CC4FvR3+N1H4lfOmsEh5FdCgrL2IPZz6rZXSj1/LIrbpVwISOz
         ZXmC1+sa5MLqt9FBJDpsZXqEUdmn6p9PmROhKIov1Sju4tsuwg1bO5b4jZlhhHVXExfd
         QRTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cdGECQNC;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jD9/S6gSsKi91+LZ1urinpS/qtDkhQUfb4Z80VBJWLo=;
        b=WAAKOkgJtJHazIZzwqh8SV98Ry6ezF6RNHDthcP5a7A0C0hNY4lfq3eCJnxFnXvW8Q
         EhssaP1eq2CqG4waGGTKRjkOE1EguhQIS9gLaHiFAYkdC15DQ5mdbtFTxQLKS2fxf6gl
         RlJGJDn8kgyK9ZCyA4+aMQAAtOI976VTkzArR8YRaiFbEedSrPf7kyTOz7IFaQUhWK0e
         Bnwf8cTzY2Pb3h5iD0iWY6PrD3gkq2h8iQVUdLuKSXcip2ZSSgwlEAqDjWsmkBtUpFQG
         r7MgsHDBDiCzhPE+TZBfxMPRpqyvhRedvB2segkgE8difdYvLmk7Z1lDNVgzrFBcDpaK
         eTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jD9/S6gSsKi91+LZ1urinpS/qtDkhQUfb4Z80VBJWLo=;
        b=dyZrG44J1hXlKQupxVigW0CISErLkwalJ3eUrm5jmjcN7EnrDfbXKLk3ULjNspPpAE
         bowHSfUJR5nfccvuwgjTcElMHrzp0TsX8Sf3YbEzzJnCMolagiXJJIBtMxHO/zx9edlZ
         PKrSN1LzMpZOEeghxsVQoHyVxfr9pNieYRHInupulgBKBzIKe3V6QJmPknAGzhRis1Bp
         eV28fmvLvquAwAPnkXkDtKedQQYGLumrYDd2hCUKX86QZdnrnRWuTRPm6MBBM91uxlPn
         P9vIDgwoxQ1tPvdM2N82n1gk9UttGmQrIIydSsaxfvDCYw3bmSYVdcUGe63BCb+C3qR0
         Pgag==
X-Gm-Message-State: AOAM533bAPaTJ52unhg+BGhhxifEiWF1Sp542c01KCfoQ1Lgs4kPqzjF
	NHAtSvG03eiJc6UduvFH7MA=
X-Google-Smtp-Source: ABdhPJz1II5X0Rff9CHI5e2WjPcDVb9iNM4MceJ0iQ42VOvzr1XVG8qzEiqlXOQpBKSfYucheAHdxw==
X-Received: by 2002:aca:d9c2:: with SMTP id q185mr218582oig.28.1600209845126;
        Tue, 15 Sep 2020 15:44:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:49c9:: with SMTP id w192ls11072oia.5.gmail; Tue, 15 Sep
 2020 15:44:04 -0700 (PDT)
X-Received: by 2002:aca:ed03:: with SMTP id l3mr1195368oih.42.1600209844783;
        Tue, 15 Sep 2020 15:44:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600209844; cv=none;
        d=google.com; s=arc-20160816;
        b=LW1luXddA24AYUyAQP+MiuenT6gPOh+k7MemCARkLei2cmnRd2NEAeOHwm8xqGU1B8
         psgh0CxqLMA78gKFVdkfo9l8e8180BmHV9QbXJPqM7xu4i7Hq/ofiONmMEmrQnAt/0pS
         bPSuFuRqoiubCFJGDeKAauQPRXkJKg8rKGUfMeDtISJgkRkUkB9hjFaB+h+fhyh2Cq+x
         aBMzPiU8KCxJCLlugitgwlTcYmx1c5qQENL4bvjSu37prg8XkDoC44seJlA2432kcl3b
         z51spYRDUkW3x4gbgKoUud2wOnDHWBuG+BBYk+r9nnTtpOzatr18pdSPF/L5ELhrxxbZ
         jpQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=o79PTdFn/15aj6meTzLNWAkBFe/bmmGLEv7ppsxzM80=;
        b=1KOnWJGKVW+25WMu90rzU9iqoi6bOyLCRkBX5C5eX70Eng75AKk9b3bEV5thA8pwxo
         fpFhH8uX0YnOXYqTXLomdVRcEfHaRsEtufbLZfOhE8i5hmRJgZq+phYwJtGrzflmVW/l
         WUyhchvbr0/2WSx/0DPAqZ3uuOomCVnfF96qSt0SuY3Di70aLlcbM33J1Pv6TTO3VrS0
         fYd/Ptfy4gLqEtLipKMYMoRGJWeCPbQiR0I0fk2yqlBwppc2QAevpIrhQVg3EauoaCGi
         APmUlsDtF3bgFo/GcgXklaiujaaIW4Koic5KBikWWJrnD3jy4jVXCh20eU/nzAvOLLTk
         KsUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cdGECQNC;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id k144si973189oih.5.2020.09.15.15.44.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 15:44:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id v54so4598138qtj.7
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 15:44:04 -0700 (PDT)
X-Received: by 2002:ac8:615d:: with SMTP id d29mr7864123qtm.286.1600209844220;
        Tue, 15 Sep 2020 15:44:04 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z74sm18471581qkb.11.2020.09.15.15.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 15:44:03 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 15 Sep 2020 18:44:01 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Marco Elver <elver@google.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200915224401.GA1156663@rani.riverdale.lan>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic>
 <20200915215054.GA1104608@rani.riverdale.lan>
 <CAKwvOdnctit9cQ9Na8kO5TXbZh-3ZV5x1=GLHhRVdBUK23HjnA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnctit9cQ9Na8kO5TXbZh-3ZV5x1=GLHhRVdBUK23HjnA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cdGECQNC;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Sep 15, 2020 at 02:59:19PM -0700, Nick Desaulniers wrote:
> On Tue, Sep 15, 2020 at 2:50 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Sep 15, 2020 at 10:49:12PM +0200, Borislav Petkov wrote:
> > >
> > > (Btw, clang doesn't need to add that "xor %eax,%eax" - panic() should not be
> > >  returning, ever. :-))
> > >
> >
> > I think this is because panic() is varargs, and clang doesn't support
> > gcc's -mskip-rax-setup. The normal ABI requires the caller to set RAX to
> > the number of arguments in vector registers.
> >
> > https://patchwork.ozlabs.org/project/gcc/patch/20141218131150.GA32638@intel.com/
> 
> Thanks for the report.  Filed
> https://bugs.llvm.org/show_bug.cgi?id=47538.  Do you have an account
> there Arvind so that I can CC you on them?

Nope, no bugzilla account.

If you're adding flags, another set the kernel uses is the
-falign-{jumps,labels,loops} to turn off alignment of jumps and loops.

> 
> Yikes, it looks like gcc 5.0 supports that.  We'd better get to
> implementing that lest someone try to remove the cc-option on it soon.
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915224401.GA1156663%40rani.riverdale.lan.
