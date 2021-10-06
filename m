Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7V46SFAMGQECM2RAYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AE04236BD
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Oct 2021 05:56:48 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id r10-20020a17090b050a00b001a0106020dcsf833686pjz.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Oct 2021 20:56:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633492606; cv=pass;
        d=google.com; s=arc-20160816;
        b=v2RqkKr1gJOcoxkf+tYA07q2X6ryRGlgpuD77TrCEVTtQzNvV1/ZX08QrKFuVnUNWZ
         4dyJY2YCovTdCwJFunusmhpkdfvcy2KMUHl25PRAUyvOtwq4wzZeIK0fs6mQ7MaPkAx6
         YTduhQXIDhMIxnbDhfLcgDw9HmIcPtyZP7UOFoFUp/3ARPzKf1FDk0tKMtgU6+jOE7Bu
         JE1/wpiDyr8ZIc1Kdp4bjrvrJXbpmGb7h7Tw8MVMUx7yqSSxJFpcA5AfqMuQNuaGTsci
         lk6AdIhjzcOES7A55oi4ss3KWfWgnYcij88G4giTHE2vDfuelxh0qdivXVkwkGle/Jbs
         2MoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CxFuVyPxPx5dRjlwOUs1I8jP5rNwO+DgXJZuKcxnUKg=;
        b=RVj0fWl9cgbRQPP4kvdeK+rkP3hjedWhOuvHHUXRFsyiTWs6GbQ1yDG+QGwAyvx617
         lUtrZRWtog77huGw6nO+zXYKMu2Q4T3vyWJdIWhrnM1jLg3NXaW+5ZaeP54hiR/HRGdv
         iMFL2o3sfTsOK1s86HVfRD0ehCynNDofNPqkvA7NGBhvBDv4rYXsaH5kDyzmgItj9iN0
         ikPF0h3PX3z48THgghlzSIWhzqzwjPQycUGDf3JOLZGAXniu8w+t9V+BVacZU/MlxuKR
         b1s9lT2QXLaJ1rPIY1BwfXVoh2Rkm08YijN2frJYbJ0RLkwTzn5ScRCarpmDWMx4xdK1
         hTug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LURrqYKe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CxFuVyPxPx5dRjlwOUs1I8jP5rNwO+DgXJZuKcxnUKg=;
        b=qSF1ZWOlfm3l4xW80Mihaf0ZrnVNRqOlBKmqSgQ1bS25RPslTme1j6+0gwBKEUtbjv
         u4jxjF3up8G+/gk3c6/QOHODvFZIl6mGWKPwsbq/Y7F0qynpxu6rb0Hps3i6xxPSGJAP
         XkQuIEzqfY/M3A8oKP1/ZzywzPT0zWrHN8UmxIzaeVXBqx5WcbFDITPjSpVAkS0cyxyp
         HbLJsSUY5S7ayrvnymEjAhakfb7CMaTHw2ETolOEsksdB//4iIKOwIBrrnNtR1A0sr4W
         NQWxhF4qscQzmJMQNBsuXLNktXiPc7iKxXL/WehniLlXv4SvAyfUQbGBNGRi8hw9XKgM
         UShg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CxFuVyPxPx5dRjlwOUs1I8jP5rNwO+DgXJZuKcxnUKg=;
        b=Goqyn4QE18tLLmywrfBYiY25+Vew1GreVjTHmyK/IkySzQ6U7upTgj5XyTMNwqSJBV
         9jvdmE963LVbc/iX0C6ag401t3AilhlX4AYn1bMj/rAVT/7oYxYl2+2ChrWglOmZ+BT/
         fPdQFISkTRci2SZOOamq5nO+7cRi9quAu5nsv5GT448MLwwpNoghOSGRdHYz2m1LOKvd
         B+ceK36hgk1052JEKROUes6OnSk0q4FSoGn8myrpDBOs5IWk6/A1NlWGpp8+2f1yQ0IP
         4YEKajSXdcPH18Qr7E9XrlRaYZs+wbE1zPRsnaitbBtHOzg/wPjzcssVJTF3NJhw7Xv0
         z3ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301NgOyTt1k5sxk3Fdn/Et4wiCZw5Yv4yprsDduVtwPEeRffnpP
	d0EsFl+BxZRYGafCAXtFvDI=
X-Google-Smtp-Source: ABdhPJwrbdYnLrDKq+p6LyFw6EqpCB2LCgG3EfHISLZ3r6MvGvtVpdBhhxPOAStMNzvc1bu/aFSBkQ==
X-Received: by 2002:a17:90a:9908:: with SMTP id b8mr8266110pjp.203.1633492606681;
        Tue, 05 Oct 2021 20:56:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:505b:: with SMTP id q27ls8579233pgl.6.gmail; Tue, 05 Oct
 2021 20:56:46 -0700 (PDT)
X-Received: by 2002:a63:c:: with SMTP id 12mr18766229pga.477.1633492606111;
        Tue, 05 Oct 2021 20:56:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633492606; cv=none;
        d=google.com; s=arc-20160816;
        b=XaDCreEIi465sEunik/WlGxEPArGxl5CpPDOAOdfA0Ym3PwVCTwT+jYx091Qxt2y7y
         M+XBSkjGnCWy6BHlvbHszf1MZFf0wC7jFGGWKLmlgIkmz7IvJICJSdT1ueCB6Nc+jy4b
         2d1VjlyTyARzx2SLceVWDxACkvgN7XPJWzTgms91Dlk9bsXUgaypteYkDLXsDu1+Ts4M
         jtt44A7y9UyWA6mlLXsFzV0F91HSBJRif17cQBDVzO+vu7nbonxyGbJNs8fYhiRE68mq
         YXnyEra/+fPWw8I+/hnMH7l76Ylq+kBz8hQ57DqLmvkwUHwsHb20VUSFgL7MjU0NTbQc
         11fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=b84QyZzxdfWttrk72IQ61VKUmWrKjM777rszm24bGaM=;
        b=fVzX1FL+vm6/XJGxoUCN2kri2DlLqpoJm7OeMrc7SjlAP9nQDdQMaBzAiU+Te4tZ1c
         A9XxhMnUxBWTCADrwDVivLI90kjfeBnysBEDRnIfoTjucjOqyI66LqAQ9ZR9c+yszBVQ
         PJMlM8xmXc/IhyAw8IEwR3A1CRlqdlCCv2fGYIIeryLJrupN7KK9o8wk5m+7SQ6RE8mR
         IlzVOHS8bXFJblVwMYZww4AEpHRtEk23vCwCgoXrdlOAfFO+JrkaSq/ojB2r80DbouE1
         PW90BDcDM838PsA0ZnzjcaOmic61j0MRgDHmE+XyMe1aaZYnHzpykIZ+XBD5blU5DUjU
         NNBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LURrqYKe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id o2si421796pjj.1.2021.10.05.20.56.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 20:56:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id q201so1227446pgq.12
        for <clang-built-linux@googlegroups.com>; Tue, 05 Oct 2021 20:56:46 -0700 (PDT)
X-Received: by 2002:aa7:9209:0:b0:44b:e5d4:d8cb with SMTP id 9-20020aa79209000000b0044be5d4d8cbmr34958352pfo.65.1633492605823;
        Tue, 05 Oct 2021 20:56:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z23sm19421948pgv.45.2021.10.05.20.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Oct 2021 20:56:45 -0700 (PDT)
Date: Tue, 5 Oct 2021 20:56:44 -0700
From: Kees Cook <keescook@chromium.org>
To: Jann Horn <jannh@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Andy Whitcroft <apw@canonical.com>, Dennis Zhou <dennis@kernel.org>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Joe Perches <joe@perches.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>, Tejun Heo <tj@kernel.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 4/8] slab: Add __alloc_size attributes for better
 bounds checking
Message-ID: <202110052056.F09CD8A@keescook>
References: <20210930222704.2631604-1-keescook@chromium.org>
 <20210930222704.2631604-5-keescook@chromium.org>
 <20211005184717.65c6d8eb39350395e387b71f@linux-foundation.org>
 <202110052002.34E998B@keescook>
 <CAG48ez19raco+s+UF8eiXqTvaDEoMAo6_qmW2KdO24QDpmZpFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAG48ez19raco+s+UF8eiXqTvaDEoMAo6_qmW2KdO24QDpmZpFQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LURrqYKe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Oct 06, 2021 at 05:22:06AM +0200, Jann Horn wrote:
> On Wed, Oct 6, 2021 at 5:06 AM Kees Cook <keescook@chromium.org> wrote:
> > On Tue, Oct 05, 2021 at 06:47:17PM -0700, Andrew Morton wrote:
> > > On Thu, 30 Sep 2021 15:27:00 -0700 Kees Cook <keescook@chromium.org> wrote:
> > >
> > > > As already done in GrapheneOS, add the __alloc_size attribute for regular
> > > > kmalloc interfaces, to provide additional hinting for better bounds
> > > > checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> > > > optimizations.
> > >
> > > x86_64 allmodconfig:
> >
> > What compiler and version?
> >
> > >
> > > In file included from ./arch/x86/include/asm/preempt.h:7,
> > >                  from ./include/linux/preempt.h:78,
> > >                  from ./include/linux/spinlock.h:55,
> > >                  from ./include/linux/mmzone.h:8,
> > >                  from ./include/linux/gfp.h:6,
> > >                  from ./include/linux/mm.h:10,
> > >                  from ./include/linux/mman.h:5,
> > >                  from lib/test_kasan_module.c:10:
> > > In function 'check_copy_size',
> > >     inlined from 'copy_user_test' at ./include/linux/uaccess.h:191:6:
> > > ./include/linux/thread_info.h:213:4: error: call to '__bad_copy_to' declared with attribute error: copy destination size is too small
> > >   213 |    __bad_copy_to();
> > >       |    ^~~~~~~~~~~~~~~
> > > In function 'check_copy_size',
> > >     inlined from 'copy_user_test' at ./include/linux/uaccess.h:199:6:
> > > ./include/linux/thread_info.h:211:4: error: call to '__bad_copy_from' declared with attribute error: copy source size is too small
> > >   211 |    __bad_copy_from();
> > >       |    ^~~~~~~~~~~~~~~~~
> > > make[1]: *** [lib/test_kasan_module.o] Error 1
> > > make: *** [lib] Error 2
> >
> > Hah, yes, it caught an intentionally bad copy. This may bypass the
> > check, as I've had to do in LKDTM before. I will test...
> >
> > diff --git a/lib/test_kasan_module.c b/lib/test_kasan_module.c
> > index 7ebf433edef3..9fb2fb2937da 100644
> > --- a/lib/test_kasan_module.c
> > +++ b/lib/test_kasan_module.c
> > @@ -19,7 +19,12 @@ static noinline void __init copy_user_test(void)
> >  {
> >         char *kmem;
> >         char __user *usermem;
> > -       size_t size = 128 - KASAN_GRANULE_SIZE;
> > +       /*
> > +        * This is marked volatile to avoid __alloc_size()
> > +        * noticing the intentionally out-of-bounds copys
> > +        * being done on the allocation.
> > +        */
> > +       volatile size_t size = 128 - KASAN_GRANULE_SIZE;
> 
> Maybe OPTIMIZER_HIDE_VAR()? The normal version of that abuses an empty
> asm statement to hide the value from the compiler.

Oh! I hadn't seen that before. Is that better than volatile in this
case?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202110052056.F09CD8A%40keescook.
