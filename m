Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBOMY5CBQMGQECYSESUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CF9362ADE
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:14:17 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id p10-20020a5d68ca0000b0290102982b78eesf5120039wrw.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:14:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618611257; cv=pass;
        d=google.com; s=arc-20160816;
        b=bCZqcSEBWB+CIvTBBWtHk4iZrJNIJeHlDIZhicKnC1B5Z+CyA3H0QB3+CQVExJAjin
         fDz1FwVgWr3EC4YyczP0spLPgjRuRBlpuXh41RX4xoF3HV0UY88hVhZolzB51ZzvR/IJ
         a4CAFgfN1cZ0xQeWazHGqCqww93X4QiZmxYU3yDnL2GDqkDP+rdMwCfy3flzfvMVtikW
         b+w+6KT4hSd0sJXmrmMdQFoeUWmtDgJX0wvcQV2wk9rd6aCb1ReLOjrDlYAWdV29bOgL
         QLHubYsM9vu9U/zk6ZdVPeARn2A+V4OikV2YkQ7BZnUCI+V7DGKkaGwTLGwiV4wEBCBz
         E6og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=j2YzgD43KwBIHJY02oIz8GqXKHY2/sEjn/YVxPAnabI=;
        b=Mb4IAamXz2y6oX9eBauvq9mf7RLPaUm8RPSwEfK8ejrsy8fMt/5MFCo2z+etQI2yI6
         wDBqjA8luSbC8IHgfkyDHdV+/ldy8A7oeXSWDb2zQ2e99R6Wq9SdQlmn0s7zrzIEcF2S
         SjEyhEB7XE0r+CetxFey/7tjozxzpVKPG1rsl3RYb2ivRoe+yC3UHfgzTTkOhZznvMrM
         6Pz/NSNKCX89D8XjeysyrmkeTrPpAZhf/yPcWFRcZyv39gLq6dwGSqggFfWzVEiHXT8H
         q44rNkmEgjrG/xpGSk7oOjc6t5T8NsBcB86A6hmKAJMbbAaFtA+B+EmdGVZArpGwrJWl
         XxvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ZOuI4CnK;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j2YzgD43KwBIHJY02oIz8GqXKHY2/sEjn/YVxPAnabI=;
        b=K464ypjD4WiSOlJJxoZa52V2Kca6Zdccla6W+Pw+cN2cR6UXdAxnbuqUrUoXIbuA8z
         kpyVVE7jWvGRKJ+IkBGotRYCf0c02ym/LDGJeIYojfitjl9WBseR8P7XU+W+KIsXwQNN
         OA04YC7xkxpDwQfKZY3CxUfJqCYJj95R2A/MslilIBZ5KYidqKfYKGHX0Woxh7xBaqUJ
         edzUyIu7Cn8NBZuTzxK/Er/Uy3dIFE4yFNPqTkiNshnVfZNi+OScWfFbz2kY6Xfbm/FQ
         hozxGYsbTg5Ow0iEemwOa1Nhp6WVJR/2vc5BzBiTgW97RapcBfFOVTEtYwUwlUxAm/Xb
         9OQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j2YzgD43KwBIHJY02oIz8GqXKHY2/sEjn/YVxPAnabI=;
        b=gLdVLRFkKpm8aQ/N5QqPEXZfPDJfRt1fd5WUrvnLQ9ZHyYIoxaG2McMLIU3/hcF1Iy
         pwUFEXCTkIETdFa6QJT/rNYZ3HBFNY8OCBf6cvfTZ4aa07IrRTtl+47k+BRce0WWSYNQ
         0KwfuprmdFhLj2KT0HJW0R4lQL4y476wdqsUlIE5Lzg4TV/znHZiznSIFg2X66GgYSOO
         enOpNRFVjzMPouMXhgdArkwPgziQNNfybPj0W/kJsP30HyRe3UTClyVpebilhg1dL5mk
         06MeJa7ORsWOh4oJ22EcNv16HUOAiMXXpyzHWONqf70T0T5BmvgN2RrQhXuELZdAI7+e
         dGIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305mDlNWVdDNhsZyqTiVb7z+FlfThnKktAms9WGlkrrYySgoBlX
	wHMtBcfyoV0OfqD8PgqzrK4=
X-Google-Smtp-Source: ABdhPJxgv8gD6VETG0f3K00DSg4mZDPp2QdfskyoKHiGSBHLUl+JuXh7c5Oy22txARFaPLDWIU/vVQ==
X-Received: by 2002:adf:d219:: with SMTP id j25mr1218710wrh.187.1618611257590;
        Fri, 16 Apr 2021 15:14:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1e5:: with SMTP id g5ls183430wrd.1.gmail; Fri, 16 Apr
 2021 15:14:16 -0700 (PDT)
X-Received: by 2002:adf:ed0a:: with SMTP id a10mr1247449wro.61.1618611256765;
        Fri, 16 Apr 2021 15:14:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618611256; cv=none;
        d=google.com; s=arc-20160816;
        b=0utIhJVF4LtNkqRhl6IPBGYUQTUsn7M8R/C3xAYV0wS6mp22i7nXEphTM9d7UyZBVP
         Y9DlPIA4xc5N7XWof+CCwF5zQZUtULZRfnLtrbaAbRyFxPIcGCJlPS9HyMdaV6aclf2R
         bKHCYYZM7XPJvEvKliQ0OSTKdpeMMSwWNkQSlBJL0bbbmRZOkOTPjSW6P2QDRO0zlgpD
         EP/UBvavLYN0w36oVdyLfrRpwrEyWUbzmgDVPy/hgeX7dJo8PNUdwqdohv3lbi+9/1Ng
         mH/24vjM4B9g7gWyXCQAh1B2j4pq5MKaG+Itf9MpfkOJycYzOCGNIR48ZIcDsZ+71uxD
         MJ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JIXRbZ9jZSmDqImsBeHy13rD+N8TDEMwdfms+ef02FI=;
        b=wVMoqcEipUpAYFKUxss7dxL0CC9IIjgQ9woEvFoLdNREE8ElVFxL5ztUEVvVM4Kwvk
         3gnCSktvdXNAdV1mm2FD/ddvj4n5mNYSItsvcJ3fqVsHCrAP343AKFtEc7/pQjVbUEfC
         1aLK7c1NnqGukATXJNIoRYdCIsATbnbp2BxLmLJ1I7UkbPqyKF7cMJfHkDlDWIEJUa+V
         GyWBMlzsbRIpoGME+4e89+Rwbb/bpuZ/qdPM3sLHOz7n+oW6CnAHk6j5wyqJfMZlNWmZ
         Qc9vpZl19pt1cJ2gInTk8fY6FYxgBodcK6tkRHsEhhpMSCzHg/54bymI294UWoVoaVmo
         QMMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ZOuI4CnK;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id s8si399239wrn.5.2021.04.16.15.14.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 15:14:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0cc500329c23fffea6a903.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:c500:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4988D1EC047C;
	Sat, 17 Apr 2021 00:14:16 +0200 (CEST)
Date: Sat, 17 Apr 2021 00:14:14 +0200
From: Borislav Petkov <bp@alien8.de>
To: Andy Lutomirski <luto@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Message-ID: <20210416221414.GF22348@zn.tnic>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=ZOuI4CnK;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Fri, Apr 16, 2021 at 03:06:17PM -0700, Andy Lutomirski wrote:
> On Fri, Apr 16, 2021 at 3:03 PM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Fri, Apr 16, 2021 at 02:49:23PM -0700, Sami Tolvanen wrote:
> > > __nocfi only disables CFI checking in a function, the compiler still
> > > changes function addresses to point to the CFI jump table, which is
> > > why we need function_nocfi().
> >
> > So call it __func_addr() or get_function_addr() or so, so that at least
> > it is clear what this does.
> >
> 
> This seems backwards to me.  If I do:
> 
> extern void foo(some signature);
> 
> then I would, perhaps naively, expect foo to be the actual symbol that

I'm just reading the patch:

... The function_nocfi macro always returns the address of the
+ * actual function instead.
+ */
+#define function_nocfi(x) ({                                           \
+       void *addr;                                                     \
+       asm("leaq " __stringify(x) "(%%rip), %0\n\t" : "=r" (addr));    \
+       addr;

so it does a rip-relative load into a reg which ends up with the function
address.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416221414.GF22348%40zn.tnic.
