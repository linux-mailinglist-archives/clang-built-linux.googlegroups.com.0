Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBLU35CBQMGQEZAIPS7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id B4844362B01
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:20:31 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id q26-20020a4ad55a0000b02901b6b9f33e6dsf3077783oos.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:20:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618611630; cv=pass;
        d=google.com; s=arc-20160816;
        b=IsRLATYiCxOjsOcsgMppk/HbFMC/qm1EK/d57zyFkxxfeW+3P6/r9dqKpjE4ABK5HT
         jSwRTlHgvr07TyTAedu1PCz5459t9vYV/ym8Wb6NAfmbYUC2DsuY7eJlOz/AUeJfeaK0
         6H6Wjf4VAXxkZ1B5DgweS8hDvfQ0WVZ6/IT6RRmYMQxMsugxkB+hfOUa+QuZgZyxXhp7
         Sj+Ug+NRdhOi9DX9cDsI/TK2reBlXKRpavpSJtqQ1TL4zP4VCvSAuY1NckEGt7nMskND
         vUxA0oGen1aC3qni5hsFtR/5UHvlDmVpdmC9IKl5nEYalPM7N/QrGcdiewIsIGPedFWB
         NTUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=xfqqea3DpuTg7A8M5PSOEvdjQ8K2afeb86uawOe50mE=;
        b=SGluzRzh1ysJV/pl4chFi1dd8FmmbspgosQuZUF8mQK+Perz7tbvV/fMzmIqzXCKy0
         M9Y4F89A38Le/uKSB0Il52Q1jgBFcyViCIlaIXSo6TyGYbVHyFPlsUGq6hbtsfihcMU3
         L4A6qYrZpcfBWSWhkQOvUxfe2LNM1cQ+YYKRKL9fGwQ8IRZCEcSl/JaGaCHETIyBPjdK
         6nSJRtWUT++px3RniX5XG3IUcGCcOPT+0elKhjK+/Kq9L492t6jjmrH3xX4Uye11VVqb
         iq7lBsPGpNITXqCJpk8H+0nQ+tKZAM81VhM43Pb3snAcumGQsn5G/Gz+gpFvidDY65Ro
         bEnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jxKsP0Fr;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xfqqea3DpuTg7A8M5PSOEvdjQ8K2afeb86uawOe50mE=;
        b=sKWcZNcvPeX021E4sIwj7VEJKjtHTlzGCVUUzu9VwIUdQIw5amhlqp166RmKFQmy3j
         0AoOTHUwb3Z4A84roVbZIZ4MLP3YRXQw8wMOO5bdWUaALHFB2t8kWrs7nB3R0WvlLrEW
         milMzd/qqiVTE8AN331Wk7H3PXybp2bHL+gcWJdoRC8QPpcNPM9h8CtaiitVoHTJl9v1
         8Zu2cAhk3II4TFC1idv5mh3uuY1NV6pvqdDRVc/m9rIQljsvp+dciEJn5yVi/NSfVlhY
         eOAYxXgdvTZfCL4n4JiSLwO2Q/RohdZerC1yJ+S/115r1xngAh6+zzaJff04NMGbKz0R
         8jjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xfqqea3DpuTg7A8M5PSOEvdjQ8K2afeb86uawOe50mE=;
        b=JzU+KCDeqIw89Qb8/mVDaKqPr20zi0Bz7n9yutlPTN2YipFluzfoBWH5Mwxgv2d2Sn
         tobxli246oE3eFqi+rL6DPi6jP1qFKGCABR7rOYnFuRXp1vDO/xu2NdMzcHdivIMH9Yv
         O7kZQr5YEHHx1qJnQvY/Fc//Lnu/w/+UD/wrrd8eRm15OAUer13QuqOHmBFAGCqSVl21
         e7KEGJgCwE8iaAhiq2y/YhrxdW6YHBDeH6fW5K8gk4m6lym8w4+XMAkxc/Ds46CHxlab
         G7jBlCy0ouDhEgIhtUbKkJhiPjnwcruymJbL0oriGs4FAjpSRpxPIbC21K0G581auwwZ
         iy4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aO1OV6J1CmIIMnnvNxVZtn5uJ5G9XFL4ButchtcAqWHQSPFAN
	9eI2bCGq6kSVONxOAe8Uj6E=
X-Google-Smtp-Source: ABdhPJxoFz/DcYf0/bqy1ty+Y2DL9PPlc/CJX+yPFdyfdHXFk3UOVwlzTF4I++7P0MnszAzpq1J8zg==
X-Received: by 2002:a05:6830:809:: with SMTP id r9mr5568613ots.3.1618611630724;
        Fri, 16 Apr 2021 15:20:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4514:: with SMTP id l20ls1979892oil.5.gmail; Fri, 16 Apr
 2021 15:20:30 -0700 (PDT)
X-Received: by 2002:aca:f09:: with SMTP id 9mr5791593oip.88.1618611630399;
        Fri, 16 Apr 2021 15:20:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618611630; cv=none;
        d=google.com; s=arc-20160816;
        b=k+YQtH4+AlnzuIDbknpX2qzFgQ/ipvU5lYLLDYaMPGNRa+/dXiCxU+kqSFGJU7hD73
         toxVNApn7GLYAE7mpdW/pGDQKbf4r+GschMh9jTNJMQT9xLy7E5Z4ijwfXQ6+cV9Nm9V
         OxHa0YaSprciBkz9cgDr59lME8Pwcf1JtXrHaFlrf4hAKuLZBOGIi8Ny4nb7ir0jk3Dg
         D8ncw/UbEQMAoaxhM9LbJnKM3P79mp5Uk+l9WKkqDI4ZW8pXj4kvq2x2q/Y5QyBBCwIn
         NWtQr0Gc1Y0a3jiMA09aBviYDhmkE4rRa01oHnbCf9xzGnaGFRv5wRU2Kgoxtci5tmAD
         FGog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1Y8X/9tzKNDBLbhj4hdWEjv4HZ2ztBOxnrwMv8b5hbk=;
        b=I1ceA2dGnegJ+z42q2RQDIiVGMjAPx6RR+ui9iCDdUJOI7cjtPN42+Yxmnbjl85sOE
         OCGPPLBGwZGoZvPecHCXTBMB2AgxgX7E6ZIyQi7EFmPRFWJwivBFiVhnT6T3Nimx/rxc
         6kp17PJDdQalPlUYkSOOYxG0efiY1LWZb0shqlmgp0FXmJj+9FqjqpxRDZWw7BBeZZm9
         5zm+iufEuo0WhCBFz3GkFPxccBGy19vHoCbFR/Ka80LKst6Gad8gFGheFhHKPY87SQ+R
         D/+J3rd18G/gsm3c1DVka2Uc0+lislgx6lwBTK6SdxMfwpXWuRkBPbYnwFYr7agiILJd
         yprw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jxKsP0Fr;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b11si686309ots.2.2021.04.16.15.20.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 15:20:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9499A613D7
	for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 22:20:29 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id bx20so32878324edb.12
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 15:20:29 -0700 (PDT)
X-Received: by 2002:a50:f395:: with SMTP id g21mr12764633edm.238.1618611628139;
 Fri, 16 Apr 2021 15:20:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <20210416221414.GF22348@zn.tnic>
In-Reply-To: <20210416221414.GF22348@zn.tnic>
From: Andy Lutomirski <luto@kernel.org>
Date: Fri, 16 Apr 2021 15:20:17 -0700
X-Gmail-Original-Message-ID: <CALCETrUo+tR+YmfoBPWV9z_7QhU74=7tmCBD_zsfa24ZxNvfxg@mail.gmail.com>
Message-ID: <CALCETrUo+tR+YmfoBPWV9z_7QhU74=7tmCBD_zsfa24ZxNvfxg@mail.gmail.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Borislav Petkov <bp@alien8.de>
Cc: Andy Lutomirski <luto@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jxKsP0Fr;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Apr 16, 2021 at 3:14 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Apr 16, 2021 at 03:06:17PM -0700, Andy Lutomirski wrote:
> > On Fri, Apr 16, 2021 at 3:03 PM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > On Fri, Apr 16, 2021 at 02:49:23PM -0700, Sami Tolvanen wrote:
> > > > __nocfi only disables CFI checking in a function, the compiler still
> > > > changes function addresses to point to the CFI jump table, which is
> > > > why we need function_nocfi().
> > >
> > > So call it __func_addr() or get_function_addr() or so, so that at least
> > > it is clear what this does.
> > >
> >
> > This seems backwards to me.  If I do:
> >
> > extern void foo(some signature);
> >
> > then I would, perhaps naively, expect foo to be the actual symbol that
>
> I'm just reading the patch:
>
> ... The function_nocfi macro always returns the address of the
> + * actual function instead.
> + */
> +#define function_nocfi(x) ({                                           \
> +       void *addr;                                                     \
> +       asm("leaq " __stringify(x) "(%%rip), %0\n\t" : "=r" (addr));    \
> +       addr;
>
> so it does a rip-relative load into a reg which ends up with the function
> address.

This is horrible.

We made a mistake adapting the kernel to GCC's nonsensical stack
protector ABI, especially on 32-bit, instead of making GCC fix it.
Let's not repeat this with clang please.

Sami, I'm assuming that:

extern void func(void);

results in anything that takes a pointer to func getting a pointer to
some special magic descriptor instead of to func, so that:

void (*ptr)(void);
ptr = func;
ptr();

does the right thing.  Then void (*)(void) is no longer a raw pointer.  Fine.

But obviously there is code that needs real function pointers.  How
about making this a first-class feature, or at least hacking around it
more cleanly.  For example, what does this do:

char entry_whatever[];
wrmsrl(..., (unsigned long)entry_whatever);

or, alternatively,

extern void func() __attribute__((nocfi));

void (*ptr)(void);
ptr = func;  /* probably fails to compile -- invalid conversion */

(unsigned long)func /* returns the actual pointer */

func();  /* works like normal */

And maybe allow this too:

void (*ptr)(void) __attribute__((nocfi);
ptr = func;
ptr();  /* emits an unchecked call.  maybe warns, too.  anyone who
does this needs to be extremely careful. */

--Andy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrUo%2BtR%2BYmfoBPWV9z_7QhU74%3D7tmCBD_zsfa24ZxNvfxg%40mail.gmail.com.
