Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBPHJ5D3AKGQECI5MTFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0497D1EF6FA
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 14:04:14 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id f16sf11717479ybp.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 05:04:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591358653; cv=pass;
        d=google.com; s=arc-20160816;
        b=YJcm72KiJ8jS+jtY66aUa8JS66NnR4P/dfXgEgf22JuNWT1zBDU67EJ7Qp6XVWebUQ
         MqMzca5//Mj1XOS82KXnQrMKH7QoOhNF29k5CoaOsphyOm41pYQgEo+/3SLNBRh+bacS
         Q1+SqRvQlRgnLz+MpYLTS+96ZF8plhRa1n+hphgtA5VMKPi/z/pnmnUh1T5vGFhqOgEf
         wmr6HBGlxGuaKd8piWe0A3Z/urXwxfNInRnicdZ5XgmxBAkeKSq1dGNb+amWejBhMJc0
         +nOwZ5SbI6cl18Arn76JcVkE7GSVBVyNffQtp7yLLKp57vv3EkO3MiZNCqBjVRdNL1qE
         aefQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qv6D6jpP2Ly9fj5NUAQ0Uw7IYFs/ZXOCzmD0o7C/fz8=;
        b=yHZ+5L1hj2+7AogOQHFkvduQRqzbtcU+PJHRVn01MAuZApmcGDQ7p8F63oSxiMJMj/
         SLrk3dKOUEDkidR7oLAl4pq2aXz+0lcyCFITbc2PHkLRZMR7QrriaDmbEACHyvPPdEq4
         hlb9YpUn9MuaR/dfQ4Ahi4itLHBWhzKLHXveJFqO+A+5SaUK9s8Ljlddx4JPfKA63H00
         9UdmWW1KUvf+iuOFjKs8nIEITVSQMpE+1idIAsxOiyBIe7VYi5gMcS+HP68YfQhAu5Y1
         vc6obvxSiwuxC//i453rfJwxHTgeARSagFu9t3oX8uU2pXKBsZ7frVTUq0Yp3eW5KvZ5
         YlRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=KaWM5eMS;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qv6D6jpP2Ly9fj5NUAQ0Uw7IYFs/ZXOCzmD0o7C/fz8=;
        b=cwrovhM2btDHdGhhNFInjjHQb7NLdQR8bgW/Kvyxu/YE5eT9NzyqsxHxcXwt3+sHaJ
         Nc8MVz6rQnxUHOc13TBJFTAVQeZMUCtH32FSCf9HxrsYx444XXM1oKyAcwNtNTahu/og
         LYN8JtTynxNVtRzDfT+PgzjZF2mWOANYSzqeO9pZAamXAlwQ6Z2k+Q3NkbXyRLa4XX+I
         9arELDz8yFufiRwaV6klDVIfbX+l8Y6IA9HfrjudfbvcPSD8A7rvhpitC1NHJFAbSG83
         GKweTrNlCsF8KSHwUQkVX9yR4L93aIeLpC0CUO2hEhPxtnShPtmOASYrPuMuOxaB810N
         LAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qv6D6jpP2Ly9fj5NUAQ0Uw7IYFs/ZXOCzmD0o7C/fz8=;
        b=Rs+hzHglMtoS2gaucIdVIh2YGrbxToRTE58HB3Z1LM/aTrZlPbTOUAz7pjQ2KwakL/
         ZwTAx1BeFrHoVJ0CXNiLTfj8pANKj1tr8kUvef/1QFyR2NLIZbC7oLUGd9KfSs0/Ksme
         pwbvaKApNWb6Nrt6i6ywPWSzjiOyl+TbgVeKoX2LiUJeUB1GKkwzygP+KxWmZzOA3BIq
         3487ERGvw1mKdh3upYCWIGKdHypwh5hsSM8GFwYX2WrKO6K5Vmm6t1ST9frnml/xL7ff
         Z4WI5bYG4DtpaDqSzx0/pY+fKGmU0LIULuHxyGvLnS8yJB1h9is/wKBPHCaL1tBGRGzZ
         elgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302CLDWKT3Q6kgNlt1UNlF/6QPTaKFCnVIN3SJ6oxTdZFXvDeDA
	+r0tF0zEX+1kcYz4WMKrtEs=
X-Google-Smtp-Source: ABdhPJzTstFHN8URjrk6JDuJJzWX7GpnVmzt8If0H9Zd8xOvKdgQ32pY/1lmp4FRVBb4/H+jrZMUgA==
X-Received: by 2002:a25:2604:: with SMTP id m4mr15339796ybm.470.1591358653027;
        Fri, 05 Jun 2020 05:04:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b982:: with SMTP id r2ls3724440ybg.11.gmail; Fri, 05 Jun
 2020 05:04:12 -0700 (PDT)
X-Received: by 2002:a25:ba13:: with SMTP id t19mr16619298ybg.8.1591358652642;
        Fri, 05 Jun 2020 05:04:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591358652; cv=none;
        d=google.com; s=arc-20160816;
        b=uLgc7FFAqigppPKPHgnU7PR+7WdCz7lhf/zXnZX9rGfBoOZvYzsioEMW/om1rXtnuk
         A8DxsUHuIWPtNRtRYzUoUvD5JNxlhKgM0JDI4SAkArM2ICdK18y118JE4xbFYJ4G4RzO
         x+ulAx3cwJaFgqQOJsg7KtH2sEEC2f+YaTIpDO1cYYf44lpL3DvY8ficjDG2VeUq3skG
         X0QfUU/xtDBK++piEmNFAgF1KDB5Pmzq1TU74PlkucXDhu8w8IVZiTZswXP0+rTDVhB7
         L/KQDdvACpTTTg7l1b/L9aQE6W4V7+Sj06ZZLyA5530qxhT2gn0CYc/ma2NitaBkgS4N
         CEbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KZz+sQK4LPHja6YFeoddpUkcV49dBXnT6yLG+sR4tCM=;
        b=bAaaJgboISQUKTjYUbjQ5mGUoOolHgcHxiTnRhJ0EyZlG2irPYXhfcCmRVePLE++iy
         o9+HJrvswO/dVpTCFdYOfEBTrHibyX9CqTVksx6LQZT7ClYmFpcHlLaxm3f1AEhSbksg
         Ap1WoEYlZqtafsNzR98jE3T9qin6fPBmaKVf53OB44SXQDl58SFQzTmhujqj+EOCsQ6A
         7LRLWSYP4kyOikTz6JaJvdyckXNOm7yq/nqfyquiItkK35m7Znx2he7CuAzsk9+abWwJ
         I55KnNBYOGMoKabee5OjGDyXkhbL8uhCB9amlrYtWv4hJW4WmHRMCpXpJZwUUherD9Q4
         nzdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=KaWM5eMS;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id u126si659473ybg.0.2020.06.05.05.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2020 05:04:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhB4l-00084B-Iy; Fri, 05 Jun 2020 12:03:56 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id BFF74301A7A;
	Fri,  5 Jun 2020 14:03:52 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 8847A21A75216; Fri,  5 Jun 2020 14:03:52 +0200 (CEST)
Date: Fri, 5 Jun 2020 14:03:52 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Marco Elver <elver@google.com>, Mark Rutland <mark.rutland@arm.com>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200605120352.GJ3976@hirez.programming.kicks-ass.net>
References: <20200605082839.226418-1-elver@google.com>
 <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=KaWM5eMS;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Fri, Jun 05, 2020 at 12:57:15PM +0200, Dmitry Vyukov wrote:
> On Fri, Jun 5, 2020 at 10:28 AM Marco Elver <elver@google.com> wrote:
> >
> > While we lack a compiler attribute to add to noinstr that would disable
> > KCOV, make the KCOV runtime functions return if the caller is in a
> > noinstr section, and mark them noinstr.
> >
> > Declare write_comp_data() as __always_inline to ensure it is inlined,
> > which also reduces stack usage and removes one extra call from the
> > fast-path.
> >
> > In future, our compilers may provide an attribute to implement
> > __no_sanitize_coverage, which can then be added to noinstr, and the
> > checks added in this patch can be guarded by an #ifdef checking if the
> > compiler has such an attribute or not.
> 
> Adding noinstr attribute to instrumentation callbacks looks fine to me.
> 
> But I don't understand the within_noinstr_section part.
> As the cover letter mentions, kcov callbacks don't do much and we
> already have it inserted and called. What is the benefit of bailing
> out a bit earlier rather than letting it run to completion?
> Is the only reason for potential faults on access to the vmalloc-ed
> region? 

Vmalloc faults (on x86, the only arch that had them IIRC) are gone, per
this merge window.

The reason I mentioned them is because it is important that they are
gone, and that this hard relies on them being gone, and the patch didn't
call that out.

There is one additional issue though; you can set hardware breakpoint on
vmalloc space, and that would trigger #DB and then we'd be dead when we
were already in #DB (IST recursion FTW).

And that is not something you can trivially fix, because you can set the
breakpoint before the allocation (or perhaps on a previous allocation).

That said; we already have this problem with task_struct (and
task_stack). IIRC Andy wants to fix the task_stack issue by making all
of noinstr run on the entry stack, but we're not there yet.

There are no good proposals for random allocations like task_struct or
in your case kcov_area.

> Andrey, Mark, do you know if it's possible to pre-fault these areas?

Under the assumption that vmalloc faults are still a thing:

You cannot pre-fault the remote area thing, kernel threads use the mm of
the previous user task, and there is no guarantee that mm will have had
the vmalloc fault.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200605120352.GJ3976%40hirez.programming.kicks-ass.net.
