Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB6O75OBAMGQEKXDAFII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id B651E347308
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 08:53:29 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id h2sf603543edw.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 00:53:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616572409; cv=pass;
        d=google.com; s=arc-20160816;
        b=hgUIaborbEW67J/Fev34hFAEG83j/qBL+fiSS2NBzJwOpStLyLf43XJAuY75BPbcGT
         YrTOolAqFKqBYQb6frOKXzfdOdS8W72zsc8hjcHZP5w6ry39w/8UCxD9MCZl7FIbh5Tg
         uUa4r7sqEC36M1AQOvg47R9Lcwc21drKY4GpD2xoxRsJgnbdAvCOlSaPTfhQ9wqX2Wr8
         u1Q7Vco+korm4wNLPU9PPef0nT0EP7TJfUIjd5T1icXJSlll3IxZCgnKag9WcvkWRj8b
         g1J3HExLcOgLdsBLrY5UCpNWOObgln6RulrJfXHGawIeQULdw3Niz46A1+T0vx6CQrZH
         lRYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=02r9Gllb21dPNLeB8hvmKJHs8HzHuw6smpZoz7G7tOo=;
        b=xn5FJ8vvT4vIXxrB3IKT+Xi/KzNZKOYNWvNcVpm+kYbW7ckMCiVNI4lD9Qgd72Bv3e
         IcXobX3CzztAqv/diU8/51EvyIcsNY215kcucG2vEGC1B5x/d0ppcNgCZs0wgSXRhg7t
         Kl9JYYOUM/ItdPRP6p27JNVgLDPWLncliVqy++YJX/zbKaVf7lCCgziJReIWFQ8GJBbA
         TmOJzpIcJmKHdPABAZH2s1mR5MZ+roF3bEqQ65mzep3md6WIaW2LBnI3NiFecfSTE08o
         g0v6rUS6Ex8CoUGcT3UYswawxPVxhwdNY9XEnbwjQsy/P0a7BhBllRPa7D5PXsVYTjBT
         K6SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=GI+DYg7l;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=02r9Gllb21dPNLeB8hvmKJHs8HzHuw6smpZoz7G7tOo=;
        b=bXLSw4uEjUpscsXu7KT+z6ScEaAu9WqMbhocddJd0tkbeqHR6b1p3TsTe+GR21rKkk
         xDyA9nxk+a4xsZyWbwLpVb8/cFezXMAQP5W0ZeYW+olRkv0dT1cH0U3FkV9DwsdWCqU3
         O1fMD6onySy9lmnsMd6gqO5SsHc91e91l0voJetulXjz2Vic779B8T7DSXlyHIfWj0zf
         TIsn6ayRjDBtLEycKiMaIzbbsfsxlxdPu1uBKDHg2+yifKZTBA2g+z4t9iYqL6fNJ0y6
         wxluiVZWYaloY/AbJ7Kc9XcXPclhWd3YeiaHOTsPS4rMqHDdl+CGFclNSS4DS4JEveQA
         nOTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=02r9Gllb21dPNLeB8hvmKJHs8HzHuw6smpZoz7G7tOo=;
        b=s7HvcZ/hB6lLV+n1yHrVoe5V2b56pfRKM5uk9Cr7+6wuC3G6R+rOFQhR7F7Up+pTB2
         097GYOC8CViACkz2eYpV9Ekdi05Gm7KbWUnuzOeNtM2dfgwCiQyYS6sMrI4NYycxMctD
         sKFLtgCl6WT9U7JG1ykgewDhMRBqJtIOG4egLYzncrkLGyVjAAPk2mQIdLJ37XAYbt/N
         v9ZnCJ4DAlxn6PzZtmSbO3ZepXlIcwHueTnMUrDmnDh16gUB0SIMIShVcIcboWyviLfh
         ZzdJAGkSFl8hSbcVZD+HYHYaXCxO3i71iAaT8DR6eDTMgZBj3FLCbQbEdp3NopF3lfmU
         1HJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vdXP91o17XQG8H7psiXHY56C2PiGK/JrIMk297kDbvILkd7sR
	EVx35lUx2/KAyb1TweB5YvM=
X-Google-Smtp-Source: ABdhPJwDFyGJUzJZYSEHYx3jFjk9gZ3+uL/IpkBLgtXocLpiaRHEnq+wHltcEMrQ+Pne2Cu+XNABUw==
X-Received: by 2002:a17:907:75c2:: with SMTP id jl2mr2312321ejc.334.1616572409518;
        Wed, 24 Mar 2021 00:53:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:c1ca:: with SMTP id bw10ls778450ejb.5.gmail; Wed, 24
 Mar 2021 00:53:28 -0700 (PDT)
X-Received: by 2002:a17:906:ecf3:: with SMTP id qt19mr2206986ejb.467.1616572408550;
        Wed, 24 Mar 2021 00:53:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616572408; cv=none;
        d=google.com; s=arc-20160816;
        b=J5tpmCFhYZfOTEzKeF1ehZ8JPYpHRGe+g6stPt9Fo4yWGt/hObtXYgQ18IR3CB3naG
         TWnqHyr5mdas8PdIH0VUSUoPWDdnVpbZ+kpvWOF7a3c7ak9iV7V4yqwqIbLXq7hkEZcu
         yeRtVsxGghFQj79TbMK4p9zbxVqA+7Gmi/u8ZfUlJha5qCYUviyKTYk0PbH4e5GbWtPg
         PidWvZXKKxQcVOa0J3m3I2H/0s1rJE3x9jdda4uHIAW3orbPafkXtjyc/jyihmX4xBIl
         zwdWx6RO6fVhMHqllp+93fyPMNTq3c1oTX1LGwnPkQqhd1pd5ltPZE0fbRLtvE33lBE4
         mOaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=d/OEztyvqrSXfzAQn7WwsuIQVa9syZaS4bN64rFmwV8=;
        b=WG6EmzW34p/pqvXIpvOD83SN+rM2VcvOFiqg57nJDVXUFwGuJIthF2+ceB2gNxCWJG
         kFEUsHP7iHqM0PaGVQ3qZqECeoLIG/LZDNywrMKP4kcSiqGo/A9UJWM/jJv2fUDMqWVF
         2b5mOjhyV3tXp2OPSlPeLRY8vDoeQiB4tKdGCjk1ExmLOm4LxQNz9N9EhHYyzWZl0BDg
         /H6XPvCEOtrOHfgh/F0h7cg8eYvxphnHkpTOM/RR6I9ldMNPvAzNQcdFW9L+PcrxKHgz
         blhuQYocfz8c7zNA3LmQWW6ytST53MjFUVD3EcjifHKIydiiGadet8tUHeiYSREwaxn+
         pFXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=GI+DYg7l;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id w5si67213edv.1.2021.03.24.00.53.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 00:53:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lOyJp-00GWQA-NW; Wed, 24 Mar 2021 07:52:45 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 40A3F301A7A;
	Wed, 24 Mar 2021 08:52:44 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 29F502360188E; Wed, 24 Mar 2021 08:52:44 +0100 (CET)
Date: Wed, 24 Mar 2021 08:52:44 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Cooper <andrew.cooper3@citrix.com>,
	Will Deacon <will@kernel.org>, linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Jian Cai <jiancai@google.com>,
	Luis Lozano <llozano@google.com>,
	Kristof Beyls <Kristof.Beyls@arm.com>
Subject: Re: Plumbers CF MCs
Message-ID: <YFrvzKHoyxQekdal@hirez.programming.kicks-ass.net>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
 <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
 <CAKwvOdkk6bwJh22L51F0DAMuFXJYKUTjbzQV+STD2h35Z7_vQA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkk6bwJh22L51F0DAMuFXJYKUTjbzQV+STD2h35Z7_vQA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=GI+DYg7l;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Mar 23, 2021 at 03:26:29PM -0700, Nick Desaulniers wrote:
> On Tue, Mar 23, 2021 at 12:29 PM Andrew Cooper
> <andrew.cooper3@citrix.com> wrote:
> >
> > On 23/03/2021 08:35, Peter Zijlstra wrote:
> > > There also is talk about straight line speculation mitigations. for x86
> > > we should probably emit an INT3 after every JMP and RET. Although this
> > > might not be controversial and be sorted by the time Plumbers happens.
> >
> > I guess this one is levied at me.
> >
> > Hopefully it isn't controversial in any way.  I have just had sufficient
> > tuits to get around to making an x86 straight line speculation feature
> > request to the GCC and Clang communities yet.
> >
> > For the compiler folk here, the tl;dr is that indirect CALL/JMP (i.e.
> > function pointers, jump tables) and RET instructions may speculatively
> > execute the next sequential instruction(s) before taking the control
> > flow change into account.  Having some toolchain support to deal with
> > this would be great, and preferable to some of the asm hackary currently
> > under suggestion.
> 
> There is some prior art here, for ARM in -fharden-sls=*.
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation

Yes, I'm aware of that.

> It's not clear from the kernel thread that the existing compiler
> mitigations are amenable with live patching in/out mitigations for
> hardware that is affected or not, respectively.
> https://lore.kernel.org/lkml/20210305095256.GA22536@willie-the-truck/

ARM64 doesn't (yet) have objtool. Using objtool I could easily generate
a sites list to patch out things.

That said, the JMP,RET things don't need patching out (ARM's retbr
option) they're never on the execution path. It's the CALL thing (blr)
that would need runtime tinkering.

But I appreciate Will's stance; it would be very good to have a thread
analysis vs Spectre-v1.

> Perhaps worth a discussion on the mailing list in
> https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html ?

All of this is public by now, hence security@k.org isn't interested.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFrvzKHoyxQekdal%40hirez.programming.kicks-ass.net.
