Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJM34TWQKGQE2ABD7RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D63BE9593
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 05:12:23 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id e6sf443508oth.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 21:12:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572408742; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nvdrr/2yMFDF6JRqoUK3v+1F/Oh3JFYyDgxlk5XX8/bpov1ACiXMIiTXvpZ783/IKC
         CXjePsmHSykboVb5NxnC65aLW53gR9G2NmPnjpUpQiNvMh9nrl7VLE6IS3InHOEQ0JPC
         KCfoV1KH/fROM+QfzW4ds7s8EZqAO0eEm0ApeZxDsvY5jiDngT53vtUg4H8PtGbsYNkO
         zlVQHBZqY4JyZZUZgQ4zGroFe4ssSYkOgXk7qgbnED8TDDjA9iqA0RuWlG/L8ZjjSs6l
         oTkfBmrHUcPUpmzkgbOAb6BDVQfLOWtvnAs08/BO+Y8Ttl0TAISP9quEqMsd/ME5zjP7
         lXTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=HDQCBJCBEVZjNxIzxXYPlbAJSMkBjkkgajKTJusvUgM=;
        b=HuzJ/TH5wQgJOPeiAQC3+opjt0iZzl4KamVzT2ePEOlxEBSoWNkdnicUDZoYkZyo97
         PS3mgc8FkinxXORuK58H8b6oN+r0NBCjgZ7kUqI+cUrPheTtBKAAEjftC2hv/OF5KIWh
         aHLLmefdY7PPKVSHScC7z28FnyiRILUnWz09FjD+KCwUJPjJRfMtMTBu1w6bp1Prwf0A
         PRILzEyHpxjG7uotIrDFmS+lgIHRAlAOMNCAkQxjr5QseyIUA9SM71FCq46pzONLaGa+
         IoduwA/wvklW/LhwLo8n1Yzm25zClqw+TDf0V18Wnr9oQoXdi4xxS6/hJgD8263ESSEY
         Qutg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NlVcq7fl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HDQCBJCBEVZjNxIzxXYPlbAJSMkBjkkgajKTJusvUgM=;
        b=YrZ9wTKEYuyLBJmRHZ2M/t8Ut03nqEvtmkJKiNh2OW2hoKavl/RDW1/mFZ2qIiZvb+
         fW+J6S0d7SuW1jwHWq2J6K64Vj1V5HqHLZKdIkcqLGLGJO+viATMok0vMuO7vYPrPmiR
         4hlxbTGLOB8Xg3coL2IjuYS+tnBZRp7YHHebEtfwBrMannCkObeOIfZRKYiduvMK3ovJ
         pVgooyWDWyc0TzBJ4BbvHk1FDfwZkdhh1r/AJnta/umf3WvHhDejoZC9sTuVR15vKl7A
         XXDfN8Bg3Kf7owWiInZJbITEDnFRIvbYGmKqfYR7chPRXB2qgfvgv3CePWGwcE7AGkro
         ILYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HDQCBJCBEVZjNxIzxXYPlbAJSMkBjkkgajKTJusvUgM=;
        b=tJ4ikFUf7RtGcsfP1tDQJQ+cus0WjTxjMBoXFLpyZ3/XMD+iYSX8SMnGoVRFr4F634
         HdGh//eiRmvTyf2NosiK0vg0KrbXH7JNg9u9KRhsZitdicT48CU9XkxT++n7s8ojaAR/
         FoFdqXcQlLC6CYU3zswtqa1VVxPBPQdcFfM+EcGDBJ0vLhbTLXMBYbYvbXMM0KSCwN6b
         OVdiCvfCuTwZSauMQ/IzA+fmVipPCaePyC0QWpIg2je5f56/6APAl3DIRGRnmc+gzJ1e
         /0XAi0D2oZuR0MT1w78/7+zWcSIE4YYL/TvbdZg/ox8LoDq1RdVpv9oAS4yt0Cb8rOEb
         xiJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HDQCBJCBEVZjNxIzxXYPlbAJSMkBjkkgajKTJusvUgM=;
        b=EHKx/9z4udQ/i9ER66Q9FSQfGPrIPGr1rwlRfdyqIrj8+bO+IJ132IgwcFWsZzeccJ
         Uu4dzvgIVMsJW4j1eeTtcCwq8CondYzLRSkfFoQaGL1EDwfHloaZFKYwcGpWnLrw6V9U
         ESdRLIFx1iyPZLATCyl7cuaepKyC6wLb3L3PuSG5LArtc44Sj5ET/QURS8A6DFZAd7Mg
         X/lrLHzjXzrKiKlD2WLn0P7H94uDazN9UeIK5S/beqQOlwa1XabOFlwINSkzjafHNppZ
         rKpSYb3UxFwmq4e2TUA8uSPCp1jx2wEPWH53H8cmyJEYjMgK3YhnlCJWMORDCdb+Ia6X
         diSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVFM6BBXN2ipREef2FAgQpG6dPPTbcRuTKHVawFGcqeV4zlhCKB
	x4mfoRqMSQIjY1vuQShHzE8=
X-Google-Smtp-Source: APXvYqwwT8cZzx9aLl94Jj/40jOO1MwLVVJCpogo1zQgHafZwW3gJKbDQP+TrM+xOeVT6pLEZzK6sA==
X-Received: by 2002:a9d:6186:: with SMTP id g6mr3081541otk.54.1572408741884;
        Tue, 29 Oct 2019 21:12:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7a58:: with SMTP id z24ls1607701otm.1.gmail; Tue, 29 Oct
 2019 21:12:21 -0700 (PDT)
X-Received: by 2002:a05:6830:148:: with SMTP id j8mr7371602otp.162.1572408741572;
        Tue, 29 Oct 2019 21:12:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572408741; cv=none;
        d=google.com; s=arc-20160816;
        b=CQ28V0KNoZq0rQ+Q1QKF6zn5wudT0vPOJHC8mc+gojfm56efSUdJidPazFPcH4Owr5
         pqUJpF/KoE1uwzaoGswp5RGC9v9oEb8W00C/LIQb0ia1KGqX67HD5F7dYhvI3FwYSGyR
         cbmbw3+hBDnc9ERfQ/QnhsCwSY1/A4S0OaUi4VJoRKfyDcpC7SBezLsp33Jr2HdAeF3P
         Lqnu+0kQyi9i9diHNSLlm7Tk3s1MAVPNWvjqcIp9fdG46nUzKM0zRl01rGB87QtyZs3L
         dLIl18kV6Ky3/FRWxK0iRq/gMb4iEzHUWjEBgTWP72nZBg3olv7mRVaD3nEUGyq4mfj4
         Nvhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=q8SBmE+8CAuRsopHcvNfJ0iOGe3QE73CA4UWHXUOwzo=;
        b=CLsLG+mUXDMVKGJRyVhUen53JEJiesoIoo4QGQgcBlP6NJrUKBn7orXVHr+9RTFruA
         NM26mzBe6lhFC4qPFJodCYvqazfLJ9YtuYvphB0eHQg2pIwzdTcxmT14iMmgq3RNYSwX
         c9SAzANb3uWEAilHANqgP9s0CigavAdR5QbK+1AOIsQS8m6BbgWrj0+2o5zbh7HmfVmz
         nZT2dTw2HWuAEZZ09gWmgRehA1jiiVMiEeeXAjjlnYzstDqpLJMeWgVDNg0JbtXzI1tw
         twUgEYTR+2YQrp/yO0EAcytMC9lYvqANueWOrxEM8Ae19I65Q+bWroSk1SN/569/ZO0L
         TuXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NlVcq7fl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id l141si60277oib.4.2019.10.29.21.12.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 21:12:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id j7so841278oib.3
        for <clang-built-linux@googlegroups.com>; Tue, 29 Oct 2019 21:12:21 -0700 (PDT)
X-Received: by 2002:aca:fc11:: with SMTP id a17mr6995309oii.59.1572408741122;
        Tue, 29 Oct 2019 21:12:21 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z4sm300942oix.17.2019.10.29.21.12.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 29 Oct 2019 21:12:20 -0700 (PDT)
Date: Tue, 29 Oct 2019 21:12:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 3/3] powerpc/prom_init: Use -ffreestanding to avoid a
 reference to bcmp
Message-ID: <20191030041218.GB14630@ubuntu-m2-xlarge-x86>
References: <20190911182049.77853-1-natechancellor@gmail.com>
 <20191014025101.18567-1-natechancellor@gmail.com>
 <20191014025101.18567-4-natechancellor@gmail.com>
 <20191014093501.GE28442@gate.crashing.org>
 <CAKwvOdmcUT2A9FG0JD9jd0s=gAavRc_h+RLG6O3mBz4P1FfF8w@mail.gmail.com>
 <20191014191141.GK28442@gate.crashing.org>
 <20191018190022.GA1292@ubuntu-m2-xlarge-x86>
 <20191018200210.GR28442@gate.crashing.org>
 <20191022051529.GA44041@ubuntu-m2-xlarge-x86>
 <20191022085709.GI28442@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191022085709.GI28442@gate.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NlVcq7fl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Oct 22, 2019 at 03:57:09AM -0500, Segher Boessenkool wrote:
> On Mon, Oct 21, 2019 at 10:15:29PM -0700, Nathan Chancellor wrote:
> > On Fri, Oct 18, 2019 at 03:02:10PM -0500, Segher Boessenkool wrote:
> > > I think the proper solution is for the kernel to *do* use -ffreestanding,
> > > and then somehow tell the kernel that memcpy etc. are the standard
> > > functions.  A freestanding GCC already requires memcpy, memmove, memset,
> > > memcmp, and sometimes abort to exist and do the standard thing; why cannot
> > > programs then also rely on it to be the standard functions.
> > > 
> > > What exact functions are the reason the kernel does not use -ffreestanding?
> > > Is it just memcpy?  Is more wanted?
> > 
> > I think Linus summarized it pretty well here:
> > 
> > https://lore.kernel.org/lkml/CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com/
> 
> GCC recognises __builtin_memcpy (or any other __builtin) just fine even
> with -ffreestanding.
> 
> So the kernel wants a warning (or error) whenever a call to one of these
> library functions is generated by the compiler without the user asking
> for it directly (via a __builtin)?  And that is all that is needed for
> the kernel to use -ffreestanding?
> 
> That shouldn't be hard.  Anything missing here?
> 
> 
> Segher

Yes, I suppose that would be good enough.

I don't know if there are any other optimizations that are missed out on
by using -ffreestanding. It would probably be worth asking other kernel
developers on a separate thread (or the one I linked above).

Would be nice to get this shored up soon since our PowerPC builds have
been broken since the beginning of August :/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030041218.GB14630%40ubuntu-m2-xlarge-x86.
