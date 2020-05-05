Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3OZY32QKGQEDCMVUKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D30FF1C5FD2
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 20:14:06 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id p1sf3014735iof.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 11:14:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588702446; cv=pass;
        d=google.com; s=arc-20160816;
        b=HcUC57+CEpd3T5SBl4EyvjlxAu56mZX3jql8fmtof4G4uVL85uOH5UO8Bkopq0z75d
         9OWcix3sTt1YBL36Lw6dx3gf+TEkgmzgnHGyq5N9f/G7pKm0BGfsoc0vnGshWEQH7Vaw
         cBs3iSAFxace7Z1SPWZVKQiUzkXrIUvpqTYgCe+JFmleIjrJNlUMaK9UfyyPUunYoXhE
         qnYxuZniz/mIpIf/gU5X7HRfcV5BH5G1kcZsNyNKAxSwbOpyzMb826dwFMnYy6RXll7B
         +k9NZlOdWTcylwClL0kE+iy8LTH9SnNJCNiu8WVeCLVTFBohnVZWMqCalzb09dcovL5M
         /WEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CEokyxu8BS6DFz85xmTXbdBIZiW0qx9SMvBfym62kzM=;
        b=mLSFeyK2qV9AaT0WHf2Cx6Wlgpt8Vo12HEsbRJxci1nTPNPxD6OGZ1RqWPUPxwnjUc
         VjOMdL7GjAcR1+Y/JnF3KtALMHiXaQM1Y8+rCwfZp+PyGwDma4EluVDiOthpuncfyS3x
         GNw8QfBk0qX/oqXiWrwLByq0SMzNyV/4EWSZCqEal3zEyVu15Qu3xT81/+QK02Pxd6yz
         DUQhnM+fSRw0/qj6q1tm9xxxl9GfZ1UKhtAMOBB1KLww5MjKu90dVLBAAJ0vrKYru3hI
         8ggYDPT6vB2Uyo0Mo+GuDwnRL857Tapdd9FkdsKfqQ8AX6LRJUvCHMCSVEqL5bgc5Lc5
         5NuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LkiuAwif;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CEokyxu8BS6DFz85xmTXbdBIZiW0qx9SMvBfym62kzM=;
        b=RtHux9b9ZIVW9yzDIGL1lSsXYyI8FoSCv0Ns1IGefSOERTX+15sb6yvPIgOPYYyNTw
         0sLfsC2mTikGe1S6528rWw6zAYEmRNyOVoBD4F7P4hHVMOzoEG9/77s0EGQZ4RDUdcFa
         gskZEHPS3IwMy4FuMYGkoQzpZT+lpQCTLb6L5aJ4iLkaSD1XgjuZznStvHzDDPu7OzaI
         AhO09zX+GxPWumhsNjkiRYXpAlBqjFLFDF6mhn5nLyV5WB7Jdb2hFv9V+q4kMNcpGgDh
         6N7p2gC7rsqgN8rh705Dl+s6Jf5xGupYw61wrW+KPoOlT0EhSgQdXMjPdprkHevqx7za
         qSSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CEokyxu8BS6DFz85xmTXbdBIZiW0qx9SMvBfym62kzM=;
        b=Le6OnSm3deLXvD0KgVNCGiGS62CpO5JJjC0IPFzELcemocYaMORQCVTweU2dK6HN7A
         H/Bx3cFNfPiSJKthyxAhrtJPJsrJNOVIzUVlfsFE+Ja7eTQMhWjeMEVurJuZttAMnnad
         ADk5RFo//6clPeXxMqxAJG31TEUIrVwmBn46UTigGPrv7FOGNMh0dA75WLXywnby1acl
         nEYuQVF1VRisDRp6G1Z62gh0bu3XzVzeACzRdVm+Kk6fxboiy2BduI1OGdYEprZ1BhsA
         ML2SUC94ZFHfNs85nvxgUX1QCDf4Mb/NKinY7EGEeEYmG3vfc2Do9nUiwQA/hhyoG4IE
         UZcg==
X-Gm-Message-State: AGi0PuYabRHPy8IDMLnxewkYnI5tbCpRQSP13xo7x3T8tU59ogoeiJV5
	M3EcByM3F0TrKL/QjFoZgt0=
X-Google-Smtp-Source: APiQypInmEydyAFRU+RsTlUiMCuz1HCY+ziXU6Lp9un4dr18919BOSbvyUe7YSb1hsnwmShAas9ZJA==
X-Received: by 2002:a5d:87cd:: with SMTP id q13mr4689080ios.61.1588702445805;
        Tue, 05 May 2020 11:14:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cc75:: with SMTP id j21ls739813jaq.1.gmail; Tue, 05 May
 2020 11:14:05 -0700 (PDT)
X-Received: by 2002:a02:7085:: with SMTP id f127mr4885027jac.58.1588702445406;
        Tue, 05 May 2020 11:14:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588702445; cv=none;
        d=google.com; s=arc-20160816;
        b=GjI3Le9g2vkw9tu+EghUqvyRQi4xNfLYYf23DkWVT3vISE2XmWFTs/G0Lf420ddYqU
         DyRrnDTP3IHlK/Q7XO2VQNLt1DBuLweTYvfGcCUMLwWo6bagakWbEHtiTVkpVKz3weR9
         O6l6DcBht2c/ZmiqUW0TjHgG9CcGo3+jn6MUI4mXxJeYajfY+COyLBJaHYSxItZNHkoG
         whLEa57nBC8X/c3/m0W1/G+/5OW4s2eN1BZkBKxjA65mPZGv+Vt1ezA7wchAy8as21ez
         NNg98MgIHHWL9bOWgMtRrIbX5ASUxMI0lZTxiVMiJ4UQ7K1WP75xvIia+gbW4fZkDmy4
         o2ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BknEIppg1Ynh2tov0u7vQIfBYbIZWF2nZLAt9CbIAXc=;
        b=kWhIlhptTymT86YJKqEwIY5wmstGfpa2L3j6+xy/lj7DCKGbyZ2ZztFY2gZiid6SO0
         mal+oAYopm/GYdVZc0W02XYUPzHFHJCkcfDdrwvtLCZifeO3djhFMWmHFo5VJkxVX92B
         qJN0LZEPbgelN/7su78kj9lzz9/Ao2GjDDdlT5sm0I32mqLCG8kvNV4z/0CrGCS0OFh0
         e22NR0Itc1YpXU0JIbt6Yzt0xWu/qb0DKdZoH7N1SaSHHTBterWHNr+5TUZig/HH/RhQ
         sKsEdX+re+hFYNUj2Gc1dOrHgty4V0VcHXHbwNylQ79GSzuir+JjkyvYpQp30jgChVq3
         ae/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LkiuAwif;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id h14si230926iol.1.2020.05.05.11.14.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 11:14:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id ms17so1505077pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 11:14:05 -0700 (PDT)
X-Received: by 2002:a17:90a:e382:: with SMTP id b2mr4533709pjz.110.1588702444398;
 Tue, 05 May 2020 11:14:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200501202849.647891881@infradead.org> <20200501202944.593400184@infradead.org>
 <1238787e-d97d-f09b-d76d-2df2dc273f4b@rasmusvillemoes.dk> <20200503125813.GL3762@hirez.programming.kicks-ass.net>
 <a53369f3-665a-af0e-efad-09ae456af847@rasmusvillemoes.dk> <20200504201445.GQ3762@hirez.programming.kicks-ass.net>
 <20200505093625.GE5298@hirez.programming.kicks-ass.net>
In-Reply-To: <20200505093625.GE5298@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 11:13:53 -0700
Message-ID: <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
To: Peter Zijlstra <peterz@infradead.org>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, bristot@redhat.com, 
	Jason Baron <jbaron@akamai.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	"H.J. Lu" <hjl.tools@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LkiuAwif;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Tue, May 5, 2020 at 2:36 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
>
> HJ, Nick,
>
> Any chance any of you can see a way to make your respective compilers
> not emit utter junk for this?
>
> On Mon, May 04, 2020 at 10:14:45PM +0200, Peter Zijlstra wrote:
>
> > https://godbolt.org/z/SDRG2q

Woah, a godbolt link! Now we're speaking the same language.  What were
you expecting? Us to remove the conditional check that a volatile read
wasn't NULL? (Not using READ_ONCE, produces the direct tail call I
suspect you're looking for, but am unsure if that's what you meant,
and understand that's not a solution).  I am simultaneously impressed
and disgusted by this btw, cool stuff.

i.e.
void *func = &name.func; \
rather than
void *func = READ_ONCE(name.func); \
(I'm surprised that `&name.func;` and `name.func;` also produce
different results).

> >
> > ---
> > #include <stddef.h>
> >
> >
> > #define READ_ONCE(var)                (*((volatile typeof(var) *)&(var)))
> > #define WRITE_ONCE(var, val)  (*((volatile typeof(var) *)&(var)) = (val))
> >
> > struct static_call_key {
> >       void *func;
> > };
> >
> > #define DECLARE_STATIC_CALL(name, func)       \
> >       extern struct static_call_key name; \
> >       extern typeof(func) __SCT__##name;
> >
> > #define DEFINE_STATIC_COND_CALL(name, _func) \
> >       DECLARE_STATIC_CALL(name, _func) \
> >       struct static_call_key name = { \
> >               .func = NULL, \
> >       }
> >
> > static void __static_call_nop(void)
> > {
> > }
> >
> > #define __static_cond_call(name) \
> > ({ \
> >       void *func = READ_ONCE(name.func); \
> >       if (!func) \
> >               func = &__static_call_nop; \
> >       (typeof(__SCT__##name)*)func; \
> > })
> >
> > #define static_cond_call(name) (void)__static_cond_call(name)
> >
> > static void inline static_call_update(struct static_call_key *call, void *func)
> > {
> >       WRITE_ONCE(call->func, func);
> > }
> >
> > volatile int _x;
> >
> > void bar(int x)
> > {
> >       _x = x;
> > }
> >
> > DEFINE_STATIC_COND_CALL(foo, bar);
> >
> > void ponies(int x)
> > {
> >       static_cond_call(foo)(x);
> > }



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DcP8UCX0%2B5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg%40mail.gmail.com.
