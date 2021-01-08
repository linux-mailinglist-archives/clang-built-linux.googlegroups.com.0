Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6U24P7QKGQEQCV4HZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5032EFA59
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 22:24:11 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id g10sf11575058ile.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 13:24:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610141051; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBKps3/VQxSM4ttFKTnFf8fTCsRy/OvlMjyvsqXMKG8Yf+/1sncAsbts24DYRl26ml
         NNMmbrpNbCFJkXQKq56MHhviuRjgMBLRgRHN+7uwmFRnAaV+wZ/MhSzjS4Ie020idmss
         9Xw5hh/hwy9mWOwlwXup7QLCqMZBF82VnWaAY6V2b+hQz3p8eKRc+nah2yoVAXgCGKXM
         GNG9n929OzU4PFkXQmf4lNIpuIq4UnLg4p/A7hRT6VDSEmP8dxsHIhsJabyKzP0ewbz1
         EZkcJgtNe3ZVocENLEtJe/a/+B2/8kS0KDtlBC6abWBH1UwGttTkGrIdWnEhj3rH7ds/
         uPmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TUh9X1V3cMz62bRFI35UnKBPOQJ0EDXmstaGQfSW1D8=;
        b=R1wYqtfGGoLkdmxR3qLKYB/yFSOEJkIcFJtJ0TB5uo+v3XRYQFg1wXgXlR3bDrgsDR
         5ObX7HUko3/pFuuO4qCNb38gfsTEQydZ7J6g0ySknDpexr8+FUfMgeqLSg6GHLRb406A
         3p6UqmnthQus8U4NbENWQloIbhUNW+FBhzun4vF02RQdMlxbb2n9iQSDBRjtdkDZ3c17
         VS+bZwiFza2kRiuEDNfgOoGrmQTSFQyji7VEvZ0Tl1XiUgG6JSvhRj8zx6FszzaUEPqZ
         kK8nI+hvvrGUXSuNXvgyIw3PADncjmXg+Dk/cRSXj177fs3ecRH+lzYHGdcjCCaiYivr
         FEnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VqzD82yX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUh9X1V3cMz62bRFI35UnKBPOQJ0EDXmstaGQfSW1D8=;
        b=A4IMoaeV8+ILwe2OtPi75XW5HyZW9Ctyu41MpZRNtkxROOpa1dtBz9ta+DF+2vVtuc
         V1+MV3VWKiaVzEY0laXNjwCSZSRGfeOUQlSsH2tskuCnrqpPNb7IiV47aCh1k7HPvPgr
         yW7tA/LW3xlw0Fvxs1eJF5tjP/4FXoeicDsN1X7nU4t3IDeD+8YKL1aly+A9r1ZAAxpB
         VpiMVuRBLvLOeGCDNHogC8D2AOuC5pAISCQLYCYrxQymOQsJhoHByn++qX4Bz98j8BV+
         3krQn0/Okh6wVo/GU9X5FWIxmFEY9iwQlxr51ZaBGwmiYJO+Ji4QrZXNmJ/KN6etZEHc
         zx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUh9X1V3cMz62bRFI35UnKBPOQJ0EDXmstaGQfSW1D8=;
        b=W15tDtGTEyuf01yChKl3OS/4P4eW6CrZPoXvaFgu57wKkj1pYBLVlyj9R8q5OR396j
         nk6QZ7wQm2kCtvObVwGd2e7zLjUzzr7AmPR6/Ycc4nj9lIWka1siJU4f6aMfXJt3EYN6
         0uPbDQ1WL8DOsNvPamglY2NZnphpZz9x5MKEnPVvwVlelptpDlxIUu/DXI7jNSgi3JAI
         i2S5fE98CgNpvsoQqQ0YTpLcbtyAnvVbF8bwuA8MWI/RgYV4AcUz+cnGPO9d0pV/+nqQ
         gSuj3nW9Y6oee+F23Jbz71jK42o1dt1DHXX9pO+oBM++QygI3mZmX37DK8w5IPFx2PH/
         /0NQ==
X-Gm-Message-State: AOAM531n3lZEpyUdP8pjmqetoHIZMADFKbV1oLxeTyMA9BtF7I8RHuvV
	8K/Ze3QxtSU8BgRrzE5YK9I=
X-Google-Smtp-Source: ABdhPJx/R7f1EnzPZjVqux7Bkcab3mXicGP7gQ0gJhIffKiFPpTWvwdtyvAd2ptsONcQ/1T4Vf9CKA==
X-Received: by 2002:a92:9806:: with SMTP id l6mr5937162ili.304.1610141050906;
        Fri, 08 Jan 2021 13:24:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7f0f:: with SMTP id a15ls1759145ild.8.gmail; Fri, 08 Jan
 2021 13:24:10 -0800 (PST)
X-Received: by 2002:a05:6e02:13ac:: with SMTP id h12mr5603688ilo.159.1610141050462;
        Fri, 08 Jan 2021 13:24:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610141050; cv=none;
        d=google.com; s=arc-20160816;
        b=Xwp1ULuI+uD9glEnDQS7119E1+8Pdjlo9PZo8XkIcxKlDItCfyWXPKqYlPXfYcu4BL
         eT5UclyQxg/yk9oUCt7/UyT0OI85AB9UPAcauyBfTtLDzap4wSWZjfh63febAqCmiRG8
         f++COjKIYgrxj70XmIjEO+d88Xq/o2lKGbBbrWvzxOCGduHALnOwgVx9ldSyKAgP0CUp
         YlTKKOPrmlCVJOmfljKzWyiH8rooVNb2yUhzMI2ClackMV8wWaXubnAs4qFVWLGNWLKt
         /OX+qZJ7e3RMg+TTDSBIe6LBAzGY04AvjdPlNhF4xkrF6YkSzAZ3ATP7ppKzqOpvzoNO
         4PgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gXhZ728/q6Uo5WIgNruf81h0fqXJVTEcW5f5eeageBQ=;
        b=eaPuw19xV75bzVPcy0BgzWJGhBaJ/0nE8lZXSHyKIicJxJ7+GwwAOmnk1rxE/4b/ig
         Q2bPDVyk4MGcmRuBRFYTcqGbGWaKd/e1lYh4k8pf5jfa8lLU9muhApsk2NX4BL+dwi2e
         NEdwMFUUzZhVBiXyLxbtKNamPtcmipW+2YE6esbcE2LPuPE0Aon1uNlV7QLdFaFCIj1I
         YySKkXmkTeMuhD+xWDvMPMWYcHk07pcEV/a46aP/Z7xCkLatD5ePGs58krJP+DXnps1k
         QKI81j+3VPKgjUUHe7hB0vTdj8iU67WUJKaoSO4IinAeZy8JwuQbFVfgfh8i/TefS/+z
         T7hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VqzD82yX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id b8si1438634ile.1.2021.01.08.13.24.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 13:24:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id i5so8458795pgo.1
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 13:24:10 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr8978911pgr.263.1610141049735;
 Fri, 08 Jan 2021 13:24:09 -0800 (PST)
MIME-Version: 1.0
References: <20210108092024.4034860-1-arnd@kernel.org> <20210108093258.GB4031@willie-the-truck>
 <CAK8P3a27y_EM6s3SwH1e6FR7bqeT3PEoLbxSWPyZ=4BzqAjceg@mail.gmail.com>
In-Reply-To: <CAK8P3a27y_EM6s3SwH1e6FR7bqeT3PEoLbxSWPyZ=4BzqAjceg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 Jan 2021 13:23:58 -0800
Message-ID: <CAKwvOdkrfFXoZs8_xSJMhEFs7XQw6KKcu_JRT7_rUnHNR7A5qQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: make atomic helpers __always_inline
To: Arnd Bergmann <arnd@kernel.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Mark Rutland <mark.rutland@arm.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VqzD82yX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jan 8, 2021 at 2:27 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Fri, Jan 8, 2021 at 10:33 AM Will Deacon <will@kernel.org> wrote:
> > On Fri, Jan 08, 2021 at 10:19:56AM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > With UBSAN enabled and building with clang, there are occasionally
> > > warnings like
> > >
> > > WARNING: modpost: vmlinux.o(.text+0xc533ec): Section mismatch in reference from the function arch_atomic64_or() to the variable .init.data:numa_nodes_parsed
> > > The function arch_atomic64_or() references
> > > the variable __initdata numa_nodes_parsed.
> > > This is often because arch_atomic64_or lacks a __initdata
> > > annotation or the annotation of numa_nodes_parsed is wrong.
> > >
> > > for functions that end up not being inlined as intended but operating
> > > on __initdata variables. Mark these as __always_inline, along with
> > > the corresponding asm-generic wrappers.
> >
> > Hmm, I don't fully grok this. Why does it matter if a non '__init' function
> > is called with a pointer to some '__initdata'? Or is the reference coming
> > from somewhere else? (where?).
>
> There are (at least) three ways for gcc to deal with a 'static inline'
> function:
>
> a) fully inline it as the __always_inline attribute does
> b) not inline it at all, treating it as a regular static function
> c) create a specialized version with different calling conventions
>
> In this case, clang goes with option c when it notices that all
> callers pass the same constant pointer. This means we have a
> synthetic
>
> static noinline long arch_atomic64_or(long i)
> {
>         return __lse_ll_sc_body(atomic64_fetch_or, i, &numa_nodes_parsed);
> }
>
> which is a few bytes shorter than option b as it saves a load in the
> caller. This function definition however violates the kernel's rules
> for section references, as the synthetic version is not marked __init.

Interesting, I didn't know LLVM could do that.  Do you have a simpler
test case? Maybe I could just fix that in LLVM. (I would guess that
when synthesizing a function from an existing function, the new
function needs to copy the original functions attributes as well).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkrfFXoZs8_xSJMhEFs7XQw6KKcu_JRT7_rUnHNR7A5qQ%40mail.gmail.com.
