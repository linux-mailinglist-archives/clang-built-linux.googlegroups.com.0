Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBXM34L3AKGQER5NGPKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4491EDCD8
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 07:59:59 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id m7sf3220944ill.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 22:59:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591250398; cv=pass;
        d=google.com; s=arc-20160816;
        b=pMDOx7wA2ogAfyWBhVzI+XsQ4PC70d8gaC1KHdL06m6SYjmHuSrYbCGHz3OKeB+Sks
         6jtkbWhGa0xYSeRyEB0sC2/PCj0WA/VPT9lGtE7O1wyCweVbQj7thvHzPpW5dg5ttV/u
         X92/9OfQN//W7TAIRYmgJXc8+eahKygcHLZ2ZWdlYQh6qG2T+iUD0n/U0QJxgsTjOmYd
         MCY7i+mK9qAhQQsugVHXClZcun6USKQj357N3DH+Oi22jrybF6/UnacWFl7VtdGQb6LD
         2Z/tStQQRVem9R1Drbvz4FhvaU6rpvYflLMAsRdA1OlIwTwSk8vTtlz3JpVE5xhfdGJl
         S2nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KJKr3lFSrnUaIuNzKKF2XrHyL19ttLPoDTMzUi/jigw=;
        b=LJABlI3GFM5al6c65zYBI2WQfkRW5T8fZHYTl09d0WvYApTbNAgbli1gMe9ya/uplJ
         9ELGc3OfKShfUBlmW2ovaVUAZJqyAALTAIZC4IQLYOCKEamVEXCXhzl1YUrYmHeNhQLk
         jdE8wEFdleCokDv0KPgJZi4BiVT/Q6CqK5Tid4YiIrb/uId7BE2ZkdFSq1rV34S3hhbr
         jJQli5JDzUomW9AwbQbT0awIM7mfQEVooka8SPncr9F6fs54tLjXb/2N6GSZk8PLTk8s
         uztekhGGteyF0OniZ7UZrZmsKHcQArdwPYtogzUoZogGntowufDkk1SO7fkSzLQNn6uR
         xUtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OHcY6D7S;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KJKr3lFSrnUaIuNzKKF2XrHyL19ttLPoDTMzUi/jigw=;
        b=LAcAVl37RD/xm/XNLnDgFkpCtCHZXEbdiOmu2U18o80ZCU5gSnRv3enhknvBvXanYm
         rQX8WClE82vWIAqWBtUJlKHIyVwwsMM1mi14Lom/FV6LjGFNXPgV3xHYoMTKurtltjbF
         X0KzEwDT2R57BN0m9jQriMPj2i98KT+ec9bEgtSCx/7AbMaNGPSvdeJorXWVaAL+FWQw
         RKD2ZKfPM/h4mWxDugeqK2KmjPlR4h9J+YH1kr1TknUByegxZpiQ/azTiIIoNtrXLNgs
         4joKWPVvQ50ZuDQKwGG3+jd+Lr0FREBmaKBOkrIGb7NNlfuvPj0MiFSpAg5UgDgPK0bG
         7gWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KJKr3lFSrnUaIuNzKKF2XrHyL19ttLPoDTMzUi/jigw=;
        b=I79dAslJ64XIcKoQHYSAbUVzNsd+nsMqZPjfa4w74IvpmpZRr3WygilBUVawiQFnyC
         10/zSO/WLS5ATaLThwkMAotGJWDnPcG4094lBpTYeJPDjfE/IC+pJ/RMnB8yALeALSZ3
         37mc5n+n1YFQgcfl4aZyqsdU+Dg5uVzGgtKHxwPaq+1iibFrTgYsWrMGF+y/szn0633R
         HpYFEVQRw+TjEr2KSmvvJ3WaDzRl6R70cWGnN8YEjO6XfrGFDSbPG8yrjBaBV7aDX5gh
         rtwq3oJSgAUv7r/ulpV+jKCTLmlR+Jw/7EBcbOdTW+M2ILLEEzMzSAw8ldd2dgspiXIY
         HDrw==
X-Gm-Message-State: AOAM531Fb7Zny8MXzVJ4lk6q0IEFgIlH+e9T734/gNepvQo7bLgV7FOM
	yKepBu4hENn2yOQ87obhACU=
X-Google-Smtp-Source: ABdhPJw6lh9FDbDadkb++lvssTYxb7x632Prouh68f+OwieOSqEEcACZuOOJxL0MaSoZ1xEDCYWJVw==
X-Received: by 2002:a05:6638:dd3:: with SMTP id m19mr3069118jaj.106.1591250397902;
        Wed, 03 Jun 2020 22:59:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3007:: with SMTP id q7ls606400jaq.4.gmail; Wed, 03 Jun
 2020 22:59:57 -0700 (PDT)
X-Received: by 2002:a02:ab94:: with SMTP id t20mr2985651jan.13.1591250397529;
        Wed, 03 Jun 2020 22:59:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591250397; cv=none;
        d=google.com; s=arc-20160816;
        b=fLccrtH5NEkjI01G+64GIeLf4PE9waoAu62taLcJC/pztY+aW2vsp0zJoHZOJoibHi
         a5Nys0yrb5W4KMGzLbKhhUyiUsiR0/vUJupHCboytTe1HsgSJzNpbFpxBvT2EPBgRAM5
         04y4jx2dftfmvsk98jrfeeyn1Y05RuEuIdvuVAP56xKoCzmQiUBt1OXvnrwDun1nj9nC
         ulR+9qSLeZmW5LoUJ4C/yNSRkbVVkx2/AvztB210RinrQhxLN/dSWx8vo+Npn9EYxCGH
         CGJXLjFIoq/f9TkFXaC6i4Zgcb2bxsjlXD2vdfUspv3A6jJX86UQ/E2IDqlNHJcsg7iM
         lF7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0+kU4eqI2FNaJfdh4S9BVeiYnuZgar4HG9ySm5E8SrI=;
        b=e6KziooD1SKCXdpDX+gtQ/mL0Wr45r7AYcMiGsfn67sBGz/lzKDg+QoMcNa89R0WNN
         7MVAm7gl53//E+K9qFu3GP0PN8F7Tx9vt5QjbuvKsZAZ5M9vslWsLIQzzKC3d/hz+g1Q
         PvS9AX6vR/gmzLWMxsUUFCsPOJvYA7Km3psTdgHDYv+FI3WiTvbd8wy2H9N0wYwXHQoT
         QQwYosjnbDpgEci4i0Fwo+q+S8gFbJbe8kkcxjR1htg9ze3WOvfxy4WkVo9R3u7SRNbW
         wx/INZTQKKGa05r3Gd/DV4eBp7KkdhanKv9GbzASq1Qz3L34kr0j0kEmgW0gTERcAmH+
         GRTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OHcY6D7S;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id h14si253282iol.1.2020.06.03.22.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 22:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-oo1-xc42.google.com with SMTP id e12so1021997oou.2
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 22:59:57 -0700 (PDT)
X-Received: by 2002:a4a:e836:: with SMTP id d22mr2646851ood.54.1591250396888;
 Wed, 03 Jun 2020 22:59:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <CAAeHK+yNmGB6mEQoogGhUh_F1fXFF_baA14G3=4NyYv=oz8Fdw@mail.gmail.com>
In-Reply-To: <CAAeHK+yNmGB6mEQoogGhUh_F1fXFF_baA14G3=4NyYv=oz8Fdw@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 07:59:42 +0200
Message-ID: <CANpmjNMoOOr1irxkGHz9S+dP4M4h+mpGu_Ve6tmaGDb0zN-bMw@mail.gmail.com>
Subject: Re: [PATCH -tip 1/2] Kconfig: Bump required compiler version of KASAN
 and UBSAN
To: Andrey Konovalov <andreyknvl@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OHcY6D7S;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c42 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 3 Jun 2020 at 15:35, 'Andrey Konovalov' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> On Tue, Jun 2, 2020 at 8:44 PM Marco Elver <elver@google.com> wrote:
> >
> > Adds config variable CC_HAS_WORKING_NOSANITIZE, which will be true if we
> > have a compiler that does not fail builds due to no_sanitize functions.
> > This does not yet mean they work as intended, but for automated
> > build-tests, this is the minimum requirement.
> >
> > For example, we require that __always_inline functions used from
> > no_sanitize functions do not generate instrumentation. On GCC <= 7 this
> > fails to build entirely, therefore we make the minimum version GCC 8.
> >
> > For KCSAN this is a non-functional change, however, we should add it in
> > case this variable changes in future.
> >
> > Link: https://lkml.kernel.org/r/20200602175859.GC2604@hirez.programming.kicks-ass.net
> > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > Signed-off-by: Marco Elver <elver@google.com>
>
> Acked-by:  Andrey Konovalov <andreyknvl@google.com>

I've sent a v2 of this, which limits the compiler-bump to KASAN only.
It appears no_sanitize_undefined (for UBSAN) is not broken GCC <= 7,
and in general the no_sanitize attributes seem to behave differently
from sanitizer to sanitizer as we discovered for UBSAN.

https://lkml.kernel.org/r/20200604055811.247298-1-elver@google.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMoOOr1irxkGHz9S%2BdP4M4h%2BmpGu_Ve6tmaGDb0zN-bMw%40mail.gmail.com.
