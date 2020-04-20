Return-Path: <clang-built-linux+bncBCU73AEHRQBBBH7N672AKGQEPZHAXCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id D96FE1B15D4
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 21:23:12 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id t10sf8443570ilf.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 12:23:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587410591; cv=pass;
        d=google.com; s=arc-20160816;
        b=rQEdFqZJbNslmORavP2bqhfCxUrGlreKUXqBJNpYyK6XGBaFkSE35dcmaPpwIUiDt7
         c8qNitR0F7eV/m27NCNJkHyeS34yC3Nmmd/L4F9VtgTewTeItSkdgu8fZ76DJTt4pzRH
         0TG3oSTHuoHk1gAYR15+B/60320bqvgtDH/xxVSwTQ8oWzqLB8NRYzb/uOSyi4lUa0PA
         g1PQuTwIy4wLHMKwnPOw3q/mwAqTUDyugg06uFoVuHDRMjaSHcDOSRgTGXendnFGVwgW
         QrvyWOvTovWnX7XRbbZIFYIEql582iwO9uGt68cMN76kks7a9EVwOSiy5yFTVM5b3Ygr
         ZuVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ug3mBamGcIjldQFM2SJPwveYkhZ1ZiRxA1hZ6kb7E78=;
        b=bPEVF1fH5LY4Ul9E6VmKVuAxBCdL8AcjKyOjOpRx4lkeXfp9xIox7kSf5ZAgmJH9y8
         N1twSjwa1XC4zMIQj7n4SX85YvjcicoREJ3cTtS8j/DJ6pMjCKWUgfFIR0FWDc3KIU8B
         WD48F+RcWLoNGjfpQXYVdjceQb0pgLt8awZp/9FeUlSI0+ZSF68uLKI+wi+WwLqnq+ph
         l3kiBhunEncSjKPnsWVPY5uJKkjKEN4q55gWo9wBU36srNdkd2eKZqeZb8uiqFM9a1JM
         OoAt1Jd2szf1k8r3/hrt13jzRET4PuHAxzSmFuPpqIfmM4siElucC4WAx2gvkA2sySUI
         6+7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=cfoi=6e=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=cfoi=6E=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ug3mBamGcIjldQFM2SJPwveYkhZ1ZiRxA1hZ6kb7E78=;
        b=dLbJmhm8fRIkvdrujme8nEB/2nGa81e0RQnIrwtwKtiuGB0h6mqtGFBx/XhuqQe9Gi
         UvqBwzZ9xWyOJpqxEDiz2MA861sOipjUtBca+aq/VVzUPbP3ENOU3nJ36mAnhDdgZooV
         bxLLLpiAD4AX8J+7yZaNemxq0xh8hkuO+pWiMxWtSaM6qOwXnQIZm6ye0/chjbdoxBgg
         mZ/AhOcg5VdhQG+Zx+Ur3EQnVALDWczrcT6QsNkegUIVlfir7jMqdOqmD+bSIJc4gsu/
         75aA2/NrPPdIwfwimw94quHlHNlCZPj2IA1rFQuOcbg9Sn1bJ4RpWe292zjTNwRCy2qU
         mZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ug3mBamGcIjldQFM2SJPwveYkhZ1ZiRxA1hZ6kb7E78=;
        b=ra/JunEnPyH5NnKVZHMhEHxzCi6nwPVOLjY6B4D70waO6dQViJ3QlzN8Dm/jw872Yi
         Ly/TI19udpOCqf5rC66bK+OaFDohkr0VtkCPgisAXvWJZ5zp++70iugO/N1XeUHJzNVB
         46UT6AqpLKCs7Ju834IMxl8QyNlV3tUDYPdkZ5DiEi7PilaWs6MB18ki5kHmbQ1VxocR
         qSxwh3DliUFJpOefgfVR0dTzhZq6fU8nFGNKH6M6Q7ufaUv0COie4Jcz3NOwnPtZv5mG
         1VEvPV/cgjOYsWh/5ZiTnKIGdKYhP6BTuchnP/7B8hPl/yvM0Kn41sOIuAPVagxpJ5UB
         rgKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZs64xcdyuEQrZzyXjjAXv0Y9IrT2JA6DM692zm8dyGod7Pm4pD
	aAnfscuE1N57NsLaBrdDa/A=
X-Google-Smtp-Source: APiQypIXyNh+4Ghn3Dq6riQfBEZle3kadUW/pBjGv6WSM0OAZ/BKs54AniYbdxohQYIl44j3dcdgKA==
X-Received: by 2002:a92:d801:: with SMTP id y1mr10821891ilm.308.1587410591557;
        Mon, 20 Apr 2020 12:23:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3a9:: with SMTP id z9ls2535957jap.11.gmail; Mon, 20
 Apr 2020 12:23:11 -0700 (PDT)
X-Received: by 2002:a02:cd03:: with SMTP id g3mr16388826jaq.61.1587410590456;
        Mon, 20 Apr 2020 12:23:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587410590; cv=none;
        d=google.com; s=arc-20160816;
        b=sleSje4Uu6TDeFYmya5Qb3mkcgGgUpkifRtaIaqi8NujWeGSU/OilzZqnW5DDcmJ79
         dDR03AU3lOUJ3dyEVs6rNPvgZ06CqYp/oWQJF9RnS9cgRYUbCtCk1MjJp9l6SSrUdAQb
         53ERBknYOAp5CGdyODpMezu7gI0Ciqj30nHI7wCVhsTLHJHQOTgyzZh4etF8t2bJq6Qe
         zrjRAT6rY45uE9llncQ8uacz27GBvSn6msRcSlVk1tnnuDHnHMj3SGWVS8ngIAm+FdQY
         q7OEIeAcCS/bHlg0d0xqsGZXotaDFD8lpKvd40FFp2+5iamHK7AhXCXXe6dRtlUXdX4J
         1pjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=GzfzOoyXgNqA0QKTYs8CnDSrpA/P12Ud9BwF/5nKjYE=;
        b=FFUsVU3s0CC7IySMAYV/jnQ80NUTNRxtet9tekpAlUI3GjZBpkNlO9s2gsXdDpwtg2
         wV1QjTfhhry68OngfiRraSfrQb2J689tXCcLfTQ+pDjjlnRyHLebK6K+v2apKDLDDJ//
         VDpoZ3RE1NCgf81pSxp3TEpwnMvRM4fWxUF4zsWtkoJiBh8EkBEnzAClj4DlNzqrs6BM
         tRqVL2I00DRoljN70rt0L80h7Q1reVHnVgkF6sl5Yf6iRHtATqM0lkstx4+n4o+KP9vY
         8x2yRk52fcCzIiW0qm0/dskGB9gGg89UuJFluuuADl830Ooi+BXcg8d8Bt6Edm2PCABF
         TbFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=cfoi=6e=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=cfoi=6E=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g17si72405ioe.0.2020.04.20.12.23.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 12:23:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=cfoi=6e=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A3B5420736;
	Mon, 20 Apr 2020 19:23:07 +0000 (UTC)
Date: Mon, 20 Apr 2020 15:23:06 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen
 <samitolvanen@google.com>, Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>, Masahiro Yamada
 <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, Ingo Molnar
 <mingo@redhat.com>, Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot
 <vincent.guittot@linaro.org>, Dave Martin <Dave.Martin@arm.com>, Kees Cook
 <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Marc Zyngier
 <maz@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200420152306.2d45e3c4@gandalf.local.home>
In-Reply-To: <20200417154613.GB9529@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20200416161245.148813-1-samitolvanen@google.com>
	<20200416161245.148813-5-samitolvanen@google.com>
	<20200417100039.GS20730@hirez.programming.kicks-ass.net>
	<20200417144620.GA9529@lakrids.cambridge.arm.com>
	<20200417152645.GH20730@hirez.programming.kicks-ass.net>
	<20200417154613.GB9529@lakrids.cambridge.arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=cfoi=6e=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=cfoi=6E=goodmis.org=rostedt@kernel.org"
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

On Fri, 17 Apr 2020 16:46:14 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> > > > And doesn't BPF also do stuff like this?  
> > > 
> > > Can BPF mess with return addresses now!?  
> > 
> > At least on x86 I think it does. But what do I know, I can't operate
> > that stuff. Rostedt might know.  
> 
> Sounds like I might need to do some digging...

May want to ping Alexei. It appears that if BPF adds a direct hook to a
function, it will prevent the function graph tracer from tracing it. :-/

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200420152306.2d45e3c4%40gandalf.local.home.
