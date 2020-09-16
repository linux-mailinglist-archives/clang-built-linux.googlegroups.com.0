Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBENLQ75QKGQE4X7KPRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id CF14826C017
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 11:06:26 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id y53sf5549915qth.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 02:06:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600247186; cv=pass;
        d=google.com; s=arc-20160816;
        b=TN5ziIKWiE+MMy0j/ZD7/SY6BqpWBtKZvRJJuKKejTnU8XOxRwnFAcqYi06VU4xTif
         JF8I1K2VXV+tAtNdYWLNv959gFeXAcRDBxgVcpttpo7z9yjtEKx4EDUTokBFP2m1hTTq
         p/+RErviy/FC9puWkE4TIXXfJax1qEWqJ7xoorQxxY3fuAHCEEaGGJGdgZUm5XG4HzZX
         Z6caOSceqsEDJpUrRGoGFmTuAa0Pnz2NOh1hWR1VGGjGPvpTomAxlSEj/Qmw6zVF5xxh
         dehgvO2GPAhdGVHbMjB2iHWvVObQgayxyQwm8bKZ0p5GUKv9dLa2Q+EPEXQSzhoPb+fB
         0/kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/Wj3gYuOuofRTDBxttbgqAt3EkjE+bPizfpsbbheOeI=;
        b=isFAni8+4FRVice2i47sC68edvvawVHV9VbFQZBedo88T4kSiNwocFMZ+QwID15mSq
         a7zqYOAHMVmSZDhbP0rv1jZiECxVQt7orguhfNJ8a0hsOU3LzGZ4mGeYsB5wtNbmWsKO
         nEM0yM5Nl4s0UN2btXw1TdDiHPRey5iOAMfeo0jOQqXYynl67xFta8V5uAuxJpJBkYFH
         XH5ebX+wVVjj28+OFooq1pT8WoK0rKW+zzm0WshozYfeMNkA6sTdy+AUpGxF6N8Y9WWP
         bZr9OVlBbFFfgIRsJfuA0T0w0VsLWvEYMT9AImmMk/vNI1WNNMf+uu4QanvBaG3oxx9y
         ALUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="fEezQmk/";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Wj3gYuOuofRTDBxttbgqAt3EkjE+bPizfpsbbheOeI=;
        b=DpqrqP5dnnDywR34kGCoQ4mZCyLGhAcA1R34ku8kv+TXkgJQJOcWHANSA/MsXMtiFz
         X3fBUQ4lN2OHwH6HTgM8z0v2t1+gWHa9v7VNlEkj17AFO7JM+vfmC8ELpEx26Gg8ecff
         2/EDHVLeATRTrc+rUkEVncz7x2Xw5QR8nyfsePZZ+FTnHZYfHnXxa3ZCLmJus7/pc1JW
         D4Dqr0OBgNjsYjyUy5lKUUZfLzXW7p0zVm93FPBTHst/jNrYglPbHGZfXlC0qa4q2LYK
         7o9Lc+UDqvQYgcXYhhID/L7YKL6R4IebkhQEQqQDTWc/1Zbp30Ur630qpS6d8V59YXsC
         l+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/Wj3gYuOuofRTDBxttbgqAt3EkjE+bPizfpsbbheOeI=;
        b=OEe/maw7dIHfW82ZvjFfkh8MeVE39IZtTaJitRqlGT2DioNW+HX5NlS2KQCMfEuy/z
         RQWy2QjnC/YNU9mPADlKIziWyy0i1mq4c4lnW7jNZIEaFGmLNnZXBZM4kULYWH+iUXHU
         avvf3CJ7VmBPxXcnrbQ599zHMvIKkYbfiqurgv8I1C+vkbMNaUx7lYhkqE282IPZI+XD
         u3tHGz7FR6wAlNcQ/mOr0nPG/J0T+7+/e8K1YnQAT2u3GdhRUbgiCkZZlJkgJfY8jmgH
         cI3NRN6S41+ULKkpwKFS0D6WPAP3k1dZ9/TvAyhWxL/Z/SrKdDubj+rDszJlTwDxAexr
         IF+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xW4aWU65Attds/dWYJPOrwUQUOjQiCahGqCRT0ZG5dyDYwQZE
	TO2mlGA5/oYaSFHILpi3IVk=
X-Google-Smtp-Source: ABdhPJxSYRgQ2Uxz7KNUKmbAAAOVmFNABjzCby4dUY4Y8TPTZqRcmQiBg8sAzE2J/yscSIL5AlB9eQ==
X-Received: by 2002:a05:6214:a03:: with SMTP id dw3mr5614437qvb.44.1600247185933;
        Wed, 16 Sep 2020 02:06:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:16c4:: with SMTP id d4ls327486qvz.5.gmail; Wed, 16
 Sep 2020 02:06:25 -0700 (PDT)
X-Received: by 2002:a0c:f984:: with SMTP id t4mr22373449qvn.18.1600247185484;
        Wed, 16 Sep 2020 02:06:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600247185; cv=none;
        d=google.com; s=arc-20160816;
        b=ZFe0POJA0OuhCPdVKREQzT/udbGFXGtCRIuwrq79lmKppcR445TRXghGG1DyctTUMR
         YbEOuLGHjJy37yP7pDOSJPklli6kN6yuLX/iZUxmn0vxQlgbtLklgsfNzyY787Ff8YNI
         VUXE1XPgmDSAFUPIWzzppIG4AdCFaRwEIjkwf1+IzPxZhCCo63aj9aaG9jOGsgo/BBN+
         JyL1AMUJaLMgFcQUdL/mT5vELyCLnvbUWRydfTaxY8zm1oSv2aJSSsPlsW+r82NoX3ze
         X4QlydIVfRMWylTOu32+2jGAAocgx8sLQM4DAVuyez8c31KWIQxpV2PSUC6Cid86IeXE
         d/ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XGOGWszl2fZU1wbir3hgL3wXW46VrlHkuXhbLpO08Eo=;
        b=hBs/KrXvbzBBSnPWHj/YCUp2534uTEB0ltGY7ReySMhM6QV2wUIYcYOTHTcNhl2s2m
         10uHnPzswhyqz0MM6W08Lr4Cd3u5ggheIyZI5V32+DoiPp5o32hKuujJTWW7yEAnG0bX
         +dXNPVWnbs0OxrxconaliuKlMu6dBZTLhsb+48AJwhuA67x0Rx/+sMODWscppaqLvWNH
         aC7CnrR/7qzBq7kMbewNrTjBqhNw1vPnRyXSNgYn/W+J/R0XfAgYtzl60M8jZPCZkVkq
         01ivpo7r1ntFoWBaafb6d7UBsBF25sJRGFj3JgVsPctdGgfLqbjkpJmiQomktid/mE0m
         5zNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="fEezQmk/";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id n26si929735qkg.5.2020.09.16.02.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 02:06:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kITOP-0006oH-Lj; Wed, 16 Sep 2020 09:06:22 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 4050B3012DF;
	Wed, 16 Sep 2020 11:06:20 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 3012A2149392C; Wed, 16 Sep 2020 11:06:20 +0200 (CEST)
Date: Wed, 16 Sep 2020 11:06:20 +0200
From: peterz@infradead.org
To: Marco Elver <elver@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	kasan-dev <kasan-dev@googlegroups.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200916090620.GN2674@hirez.programming.kicks-ass.net>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
 <20200916083032.GL2674@hirez.programming.kicks-ass.net>
 <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b="fEezQmk/";
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

On Wed, Sep 16, 2020 at 10:46:41AM +0200, Marco Elver wrote:
> On Wed, 16 Sep 2020 at 10:30, <peterz@infradead.org> wrote:
> > On Tue, Sep 15, 2020 at 08:09:16PM +0200, Marco Elver wrote:
> > > On Tue, 15 Sep 2020 at 19:40, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > On Tue, Sep 15, 2020 at 10:21 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > > > > init/calibrate.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > > init/calibrate.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > > > init/version.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > > init/version.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > > > certs/system_keyring.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > > certs/system_keyring.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > >
> > > This one also appears with Clang 11. This is new I think because we
> > > started emitting ASAN ctors for globals redzone initialization.
> > >
> > > I think we really do not care about precise stack frames in these
> > > compiler-generated functions. So, would it be reasonable to make
> > > objtool ignore all *san.module_ctor and *san.module_dtor functions (we
> > > have them for ASAN, TSAN, MSAN)?
> >
> > The thing is, if objtool cannot follow, it cannot generate ORC data and
> > our unwinder cannot unwind through the instrumentation, and that is a
> > fail.
> >
> > Or am I missing something here?
> 
> They aren't about the actual instrumentation. The warnings are about
> module_ctor/module_dtor functions which are compiler-generated, and
> these are only called on initialization/destruction (dtors only for
> modules I guess).
> 
> E.g. for KASAN it's the calls to __asan_register_globals that are
> called from asan.module_ctor. For KCSAN the tsan.module_ctor is
> effectively a noop (because __tsan_init() is a noop), so it really
> doesn't matter much.
> 
> Is my assumption correct that the only effect would be if something
> called by them fails, we just don't see the full stack trace? I think
> we can live with that, there are only few central places that deal
> with ctors/dtors (do_ctors(), ...?).

Not only fails, lockdep for example likes to store stack traces of
various callsites etc.. Also perf (NMI) likes to think it can unwind at
all times.

> The "real" fix would be to teach the compilers about "frame pointer
> save/setup" for generated functions, but I don't think that's
> realistic.

How is that unrealistic? If you build with framepointers enabled, the
compiler is supposed to know about this stuff.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916090620.GN2674%40hirez.programming.kicks-ass.net.
