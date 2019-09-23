Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4EDUXWAKGQE4P2E7QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id AD321BBE44
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 00:06:41 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id w21sf1401984vsi.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Sep 2019 15:06:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569276400; cv=pass;
        d=google.com; s=arc-20160816;
        b=B1EnK3iBOZ+sTnx11XjilrZCkJn4jOuq8azud7SiY+mpS/qYvTf4Tdef22dYtySB2y
         mLkVfg57l1GN/A5tTDmdyvol5SSeFxu5H0jOwWdm8GnrQHzD1+IcIB6VEBNEfsUyMcxW
         00KCePKV3gLxAiQ3Cfj7YMFKXQCHu2jaE73FdHKf3bS+T7rc3ww8fsMzs35V8HKBElfU
         F4d9YePEuunN1rOdvzME49Ds8kXX8u4eDNcRYjAtJfj+ZK2xnWClnmhgu7hy444QaGHA
         XOqm/hEuj80kyYRpGF35YuuGq5wc94uqC/7Npl4cPQ+GMVKhc9Zg3XqJ4e72BvCq/nmB
         MeBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OeiRLysxSQCxIx+FZm12n/8lePSlyJovOqx5al0Q7iY=;
        b=yJHtkyTFQ1TwORYNObJoxKgXfRSjIhHJcpp1wZ3VWjnD0xYH8Dbv2a5ndiqoM6Wrk0
         U55vrVpvD1RZ46SFwwS1e4kPpjt17a+YHD+gi5oCLr43QsrTH5Xp2Bv+H4qTMSvqQQ+J
         Wna324pxpyoyKOkbsURNqJeSvz2U67/J/so0WGaXUzd/nnwFoqi63WwvBmdmgiNEg/1p
         AYCU57KzgEhrlCLDTdga0Vq01ywn2rI9ZtHwbEeW7M7yo1a2bii/YgMliEcnt+thygr/
         HZQjVdq75m+E8SIw0oux4RsqPJzqRvKKmR5MJ6OmSUr3xvurdiunx8ZE4DDk2tfOcuB/
         mfOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKsm2kFN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OeiRLysxSQCxIx+FZm12n/8lePSlyJovOqx5al0Q7iY=;
        b=ezwe7Q2ZOirIKf1ex6IM5Sm5adqf1AiXSGGE8VRh2fDQabOuMiyq2REEtGd96uCLJ0
         nqD2+acnymPqJl0EaP0bgAmU5M4/bqPmKLaqSDF9XLmE2pvQHXvWlNtnfjmIVbwOGRH7
         KMhCbm46hnv2M1uXIL4+Kb+GKPodsblT6HhJBbkGr4M+pkbFN444oWQt7iCaj1i7lPPM
         bDZTvujv+dB7qbwC4vcIQVeYUTB0D7k4/qzRuvzu3o8xjJs2lHNOQ57UWPL2usOsprQl
         SFwRbYsA+2rHwfPm8/Gs6lLyezBRaA2c27e1XPUZaY5L+KgDUvri3YPNWLEegWkeScAj
         Emeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OeiRLysxSQCxIx+FZm12n/8lePSlyJovOqx5al0Q7iY=;
        b=ZqxQQFm2Z1zLV9DezKHbtH89IWYWBuyjsAmOGrSIirQVclorCIiTyQnLdemIb83H1s
         nVTSlFuHsDfWtf/xH1NlZjGU9IPKuu+ARvv+GBp67hROlUFd3OQO4A596QUyRNQOolQ8
         Yc8oJ8NlPjon6ru60CMBE/+af4VuKRwS6YQSYmu1l1AD3wpbWffclS2nBF7zxHv/TD4L
         3gI9yGvNGPU7KJky/iwH1QuHOU+ZvumU3pYw4Q8IlOFbZFoyXkUKI8XT4Mq2GLsAmOId
         JGUpkMokKWsNVeEnT5nXEv/25NzZ3cgZOd2LwPnbnMTZoR5awIHQOZxj1M1afXiZkd6+
         DuRQ==
X-Gm-Message-State: APjAAAVvYIM+9aHdsbj4OZxwvOcBw62Ds/1XSg+IoeY4zCWbuHoi86Aq
	eAKxGrey6QRSZODP6umJifs=
X-Google-Smtp-Source: APXvYqzSl+TzCkyFea2ojDgxY5vJu+asmYxmACcr2uzNd9oosigaZjji0WIfTJTTmaoY4LaGp1Csng==
X-Received: by 2002:a67:ee14:: with SMTP id f20mr887258vsp.88.1569276400501;
        Mon, 23 Sep 2019 15:06:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c883:: with SMTP id v3ls1627124vsk.2.gmail; Mon, 23 Sep
 2019 15:06:40 -0700 (PDT)
X-Received: by 2002:a67:6a85:: with SMTP id f127mr918814vsc.140.1569276400262;
        Mon, 23 Sep 2019 15:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569276400; cv=none;
        d=google.com; s=arc-20160816;
        b=arpXBD6GNNKsLpUfd/c/qbncYNnNx/urtZ11OlieobFNEXSXNZ+jL7EOaOFM49nQ1V
         9p/IGq6prCKkbLlChW/7/efR6224YyWkMU0I2CXrglBe2+Ws9C7pvYKY0YG8n7x1dWM7
         URa3WlyofbH8EhCGtQs1DhG/1ypgVESLkqLVwt7uAcJxM3/l/exd7ogiVviTGjFltMKI
         lAXgvcT9Lj7up4dHIHzegeh+jFzOMmFy7sc4VwqKmYPtL+PYE2vXtlz8L0b8N+ZZ8Mww
         bstiCFBWLHChtK1eVStQ4EdQPz/N4wPv8C1Eof5M49HHeY/NYfwJ40gktuBqfBZwrYSJ
         I/PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qqx3nwmhmvUj1INmgkpz5JOsEs9scYiCKN5Ub764u7Y=;
        b=aAkzR4gWzAM936Mv6Gkhw3olgZ5ztpB2A+MUkbPPxZF3IxbYaIwztnYdxqalM84rrr
         mrd2G0GALDU/szoj6lDiysHhbA+NfVZTim+pJUwvY0PzSQTiz/3UCzffbQt4K2RIpJZL
         JaVP++fVxcA36XGoWzFH5riDntFftRG3t94ic1c4Gd5YQITmlsB4yMwXwCHq8X/sDtZo
         CNT7NFE+qisDncihVZVXekRab5bmSWr4NBd5mV8cNgkWKUv4WEVW41gklXvd4g5I0x2I
         gUZwXO9z5Y0+6GmQWpLadS23WZJk/zFlPZEplBkomm7eKMMBPRrLzf8kQo1pWDVBqnft
         n0qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKsm2kFN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p18si138458vsn.1.2019.09.23.15.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 15:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id u17so8802190pgi.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Sep 2019 15:06:40 -0700 (PDT)
X-Received: by 2002:a62:798e:: with SMTP id u136mr2009080pfc.3.1569276398816;
 Mon, 23 Sep 2019 15:06:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190712085908.4146364-1-arnd@arndb.de> <20190712174142.GB127917@archlinux-threadripper>
In-Reply-To: <20190712174142.GB127917@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Sep 2019 15:06:27 -0700
Message-ID: <CAKwvOdkhe=WMMTevMd7m_URjuOcjAkHc8zBibUD2_gX79U+p3g@mail.gmail.com>
Subject: Re: [PATCH] xen/trace: avoid clang warning on function pointers
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Jeremy Fitzhardinge <jeremy.fitzhardinge@citrix.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Petr Mladek <pmladek@suse.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aKsm2kFN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Fri, Jul 12, 2019 at 10:41 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Jul 12, 2019 at 10:58:48AM +0200, Arnd Bergmann wrote:
> > clang-9 does not like the way that the is_signed_type() compares
> > function pointers deep inside of the trace even macros:
> >
> > In file included from arch/x86/xen/trace.c:21:
> > In file included from include/trace/events/xen.h:475:
> > In file included from include/trace/define_trace.h:102:
> > In file included from include/trace/trace_events.h:467:
> > include/trace/events/xen.h:69:7: error: ordered comparison of function pointers ('xen_mc_callback_fn_t' (aka 'void (*)(void *)') and 'xen_mc_callback_fn_t') [-Werror,-Wordered-compare-function-pointers]
> >                     __field(xen_mc_callback_fn_t, fn)
> >                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/trace/trace_events.h:415:29: note: expanded from macro '__field'
> >  #define __field(type, item)     __field_ext(type, item, FILTER_OTHER)
> >                                 ^
> > include/trace/trace_events.h:401:6: note: expanded from macro '__field_ext'
> >                                  is_signed_type(type), filter_type);    \
> >                                  ^
> > include/linux/trace_events.h:540:44: note: expanded from macro 'is_signed_type'
> >  #define is_signed_type(type)    (((type)(-1)) < (type)1)
> >                                               ^
> > note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> > include/trace/trace_events.h:77:16: note: expanded from macro 'TRACE_EVENT'
> >                              PARAMS(tstruct),                  \
> >                              ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/linux/tracepoint.h:95:25: note: expanded from macro 'PARAMS'
> >  #define PARAMS(args...) args
> >                         ^
> > include/trace/trace_events.h:455:2: note: expanded from macro 'DECLARE_EVENT_CLASS'
> >         tstruct;                                                        \
> >         ^~~~~~~
> >
> > I guess the warning is reasonable in principle, though this seems to
> > be the only instance we get in the entire kernel today.
> > Shut up the warning by making it a void pointer in the exported
> > structure.
> >
> > Fixes: c796f213a693 ("xen/trace: add multicall tracing")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Nick suggested this as well, I think it's reasonable to work around it
> in this one location since this is indeed the only instance of this
> warning that I see in the kernel tree across all of my builds.
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>


Steven, Ingo, would one of you mind picking up this fix, please?  See
for multiple reports:
https://github.com/ClangBuiltLinux/linux/issues/216
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhe%3DWMMTevMd7m_URjuOcjAkHc8zBibUD2_gX79U%2Bp3g%40mail.gmail.com.
