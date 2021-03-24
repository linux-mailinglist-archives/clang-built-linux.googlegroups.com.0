Return-Path: <clang-built-linux+bncBCU73AEHRQBBBA4T5KBAMGQEQ26STAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id DE565346E4A
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 01:36:20 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id c20sf236195qtw.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 17:36:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616546179; cv=pass;
        d=google.com; s=arc-20160816;
        b=MHkHqKL0qpVNWE09a9dgx3/U1ykYu65GGWHomj2Op/8hv4JtiK1Z5UzqXdR8cRFpt2
         eBH4B/IFjMz+KfbsyV0GQAkTR7LHg00e554J9QpdlcNC9RK/IDnfDrjoHBASnxCR9BsL
         QFJBuXkfSfNTQatXWIFUG6k0SLX7DHh9srkH7MdHcBtmXWcYmXa66s1QPksUCFklIqVq
         s4ITsURFvLUZQsW0RmIVmf4nfGS4MDvHunVJim/WEp4DGL91X1OsMueMNm3fN6uubunn
         L6HHWM+1SpyAvV9X9AygXIOkFCEwn18iaV2bxL6GP3Zr0QzzPqiUncqCuuy+nkXm/8q9
         ZG7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=RclgtuYNNsb8gb4igARgYY+uAUsu0FDCSyqRwpOMzjU=;
        b=QpGCDf23SfW66TPe160CGVD+VnRAyPOoj21UaZXHe6CDm3NXNiJzc880DDb/lQJWUy
         tDwngvKVdzefgLJspJycfdKCiahuwikwuJFCAwD9kWK13Hwjv6eHUB665PIolmcGwRYg
         XZTFULu9rtVBcc+JdtDXnNus+Lepg2QDBz44ZgYcwdsimEseRQvGRdkmt+rl05dZnxQS
         z76+MPXVULL+mSnHmze6cL6uqIG0bvm0oiDPr+5mPryFmo3da5iADbQrYnAd0rU1JHvu
         kjJVuHjBbWtRHKfFYZbqykNU+B7K/xsqektEr9856Pztb5EaBWrbgJFw0ujbtlf/X+Ct
         KiAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=fvgk=iw=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=fvgk=IW=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RclgtuYNNsb8gb4igARgYY+uAUsu0FDCSyqRwpOMzjU=;
        b=DDHAGb/2GO9qHZTo9usmLiucSdMFj301b/G7cyuW0o7iGtXMbovHn9oEXQPCtGYBs5
         pugLEnOALp9XAU7C2+1c/yxhvQjV5QlXNfP1rUVbPOIhJ4PJvN3RTOTcdzm19GW23wMC
         RVk69XQ4GzOgXmHjWrnfjhwDyHX6NoiYuc+2gjotQ3/B1YSlbwNcMzLVERhgW2mdYDPE
         LM3Yble7MSlZ1PN0dbIX3sRLwDHZuRRjCsAP+V6FbzZw+Hh5ciOjvK+C2Ml9+x3GhMW4
         8/XYoyCw4/eIlW1icbRfEXNUZboQ/0lwB7HZSx4PU7hZuCAp1UbLBLrnjJwQ0vAIrWpu
         /O+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RclgtuYNNsb8gb4igARgYY+uAUsu0FDCSyqRwpOMzjU=;
        b=q4GXRpGkCjJJSnGvicbDx1sXrXt4MulFoUhnTvUuvdgQmcZHwnDF41TDdG9S6cEPmI
         OhUdR0gb/q0kF9fZ2tnSD0GF8wGKvrHEhL1j6YV3yPEGBPvql6PPAqRMskQ00YOWaQkQ
         QOnrEPQqi6e99M1xJemtGDaMu2sJurF8GhHPxyuYd3r3i5+EaP5vnoPz9AyrD/HcT0Uw
         bmgua7Wnnf0XfMp3J4AWe6abhAA4g9wElnqNZTSrVVtv4wTwP5EdHQgsYEPeSARynkoW
         ti7WhWHTm2ycJUMUzJm+Q6MvsC7T7my3GYgJwCQJ2KoGxDMokbKBrKHRB5EYpon4fJNA
         vZZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533f9QlhwqnzvryjgqAk6/658jq5oJysDqVvxWDI2t3ekVpq5ayQ
	MVGrQ1XZ7Qh2u65WJApJ2vk=
X-Google-Smtp-Source: ABdhPJwa1oxspcV7wpvnaJ5BQpyKLoO8cmOI5x0PT0UbUs5EpWFNrDqLuv8O3vPfn+wNYszZNjQ/FQ==
X-Received: by 2002:ae9:eb4d:: with SMTP id b74mr785557qkg.45.1616546179821;
        Tue, 23 Mar 2021 17:36:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls140401qta.3.gmail; Tue, 23 Mar
 2021 17:36:19 -0700 (PDT)
X-Received: by 2002:ac8:5242:: with SMTP id y2mr886710qtn.109.1616546179344;
        Tue, 23 Mar 2021 17:36:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616546179; cv=none;
        d=google.com; s=arc-20160816;
        b=ldBSJ1C/0cSuj0XLBJTgFzGi4HkqWHbxxHF2nvn3gIzzrGJwv/3v2sRUHu0DA+JPmD
         w0RFxuCMuvRYHTqFUQa+7kNefOBfIrw9LlUoE71SJFni0wwKrrTaGjf5NOU/Ry3KtDrE
         trgkicZk5nwtl8z7/CJr/3F/zQjcWoOlmGwWVQqPH+anjyG40MiVwAtJ5osWgbr1gmCo
         BI8nA1FBfRE0z7ZUAoWVtuTpo6uCaj75gg5tT+EK56PHA/vxV+42Q+4293ijMP2D4CPf
         0XkbgPF8ipx6gZcy4KkdFeO9qyBkvyzHhdolzWv9LIz4wQA3Pz1IBWekSNGxSTQIE/mV
         F5Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=aXzx46g5xTs/+F/irf9/zzfFwXiGLYkyGF28GSv05WI=;
        b=RqjBNB4fP3YMwTmuQdqQ9URRdMVWLSUUTJwRAp5PowHcZxSEbNtCk18iwCaD7LEU2Z
         OxsVaK2sqr3kOD2mJU1knnU4oqhWjCriAie+BzyiMBgmVlXCDuQFUJxO7ZNOWFkgCxnf
         XMAgHYjpilrS2vmRfzO6RGa1csaRmV+4MFIg9i9YpLNFQCjqnHRzmZqTy32XIBrMS9lr
         2xfATgjssR4T+2+uxitn9cBWlTkH7uRp/X9He0pWvqJ7eXQL+uZWD0nLah60PNymZTGg
         EPPRbH3G7Wk8aglHwCITnyxJxBJql0GdCR6+R3i64ln7r3txsZO9RzRhxbXUtevNFuO0
         E2Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=fvgk=iw=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=fvgk=IW=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h6si43708qkn.0.2021.03.23.17.36.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 17:36:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=fvgk=iw=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CEB76619DF;
	Wed, 24 Mar 2021 00:36:14 +0000 (UTC)
Date: Tue, 23 Mar 2021 20:36:12 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Andrew Cooper <andrew.cooper3@citrix.com>, Nick Desaulniers
 <ndesaulniers@google.com>, linux-toolchains@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>, "Jose E. Marchesi"
 <jemarch@gnu.org>, Kees Cook <keescook@chromium.org>, Florian Weimer
 <fweimer@redhat.com>, Christian Brauner <christian.brauner@canonical.com>,
 nick.alcock@oracle.com, Segher Boessenkool <segher@kernel.crashing.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Will Deacon <will@kernel.org>
Subject: Re: Plumbers CF MCs
Message-ID: <20210323203612.02a5b29d@oasis.local.home>
In-Reply-To: <20210323221246.GB5208@worktop.programming.kicks-ass.net>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
	<YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
	<a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
	<20210323195358.GB4746@worktop.programming.kicks-ass.net>
	<20210323221246.GB5208@worktop.programming.kicks-ass.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=fvgk=iw=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=fvgk=IW=goodmis.org=rostedt@kernel.org"
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

On Tue, 23 Mar 2021 23:12:46 +0100
Peter Zijlstra <peterz@infradead.org> wrote:

> On Tue, Mar 23, 2021 at 08:53:58PM +0100, Peter Zijlstra wrote:
> 
> > Another utterly disguisting option is to align all CALL instructions on
> > 8 bytes and have it followed by 3 INT3s to make it 8 bytes long. Then
> > have every function prologue round up the return address. This should
> > work with tail-call optimizations because the round-up is NOP when
> > repeated. The obvious down-side is that it will utterly wreck the RSB  
> 
> Slightly less horrible: "CALL func; INT3" + "INC (%RSP); RET; INT3".
> It still completely wrecks RSB, but isn't nearly as wasteful.

I'm confused. Why is speculation after a CALL dangerous? That code will
be executed on the return of the call anyway. That is, it's not
speculating something that wont execute in the future, whereas code
after RET and JMP wont be executed.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323203612.02a5b29d%40oasis.local.home.
