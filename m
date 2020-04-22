Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFXDQL2QKGQEI3RYQJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id E81341B4EC3
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 23:05:27 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id t9sf2914970plq.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 14:05:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587589526; cv=pass;
        d=google.com; s=arc-20160816;
        b=vvj4RvMNGSBCDZfPbLg6KiGIv+gRVLptnx08Tb91yja8c19PaYdUtiQiVReKS7e+hY
         ymiSivy+SihqEXRjIXdI0+UMZgc9kI4apWYHsNN3m3Lzer/LC1Whay3ltmE+rYyiM8DU
         R8+lVk3xh73+DvibSWpva9oe5LLIfhbII0eBZFo3+4gXfuyHw0OzDCg8Xckc3mT/JBc2
         uD9E64tNdS/GtT5EMue27k5rFeBD7re4Ov85ZjqTSm/6tAwXLm4Vhyz1x5LZgL2n0nZ6
         adkAJ2S1gM89p8zgAkqLDJek9V0cpmEeMMXquatAftMO6Ov/hBQbvMKl2FM6hoK2fvgk
         iBOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=K2o8reAKibD0xo82xr500AlUL1IbA/d1bMngZO1RMtU=;
        b=O+kEYvYsqjpiStLCQBEPvpVvBkgAEYsuyD5GKyIWhp+FpTtlooZ0z+QL0vLJsOYBbo
         REMWxpZarpD7U/cyl/Md2Gqx3FbqFTk6mgIjt8KEoxZQafb5hzq8j0flCveopTYgk/bc
         ochc38jqofyPUQIV7/c4nx50lROl86q//sI1bmmYRFjGDGMMoBkB/ruzQ8N7Oa1Bmwvw
         NuWyjTUCw6LvTH7ZcYFNeWeAuGWTsom2ktOIS1VuwYG+7hGDYcDevvCtxRtmDSkOAkdt
         6MYqQW0NAI9nTRKMf56P+dpqKyes7eFT1VBZxAeXXNI1RsvLECjFmxxsPLNJve50aF4V
         o7Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k53gcYui;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K2o8reAKibD0xo82xr500AlUL1IbA/d1bMngZO1RMtU=;
        b=XyKzu+RvLVLVa+lGqx0Z13tGh0ptsBQ1L+SmDe7ney3yTLDRW71MjbVqyTa2tEv9DG
         kEt525o4vlj77RyB9CipNCsz2haDV4JSLp9F2plQJGJaNciGKTL6ovCpk3+B/ROlzqmM
         Eigk7pOfmLDlM1Nwii3PCyjUWJ6nhSigigykXIuNjb1WLliKN5nGVohjYrbWRYHgKAVz
         A2OLsgh8oAtxALLYHGJQLYtV8MO/XKZq3P2c5N9bgvamWcVlAy2duvLhM6fI8oQXz0Bs
         8sNBGqC9awYowEl9p7Eu+BZpokzZK4GguNv8jp3QikbcXj9Jf552eE/QEM8HLr8yyMbG
         KIFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K2o8reAKibD0xo82xr500AlUL1IbA/d1bMngZO1RMtU=;
        b=YEdWoQk8VxsaiOJYo5KFAh0rBld0JDO7RCAFe1l95TmkyAlixeQPRQ/dbbo+SDmm7S
         1nMr3UX5FiFP8b5+/xlC3Az2vBQ7mYiFFs2or1jyt+XUf1GyYVfK/NpiSZ3C6fnzPyuF
         mk8mcLGQ5ykzZ9U1UYRy6mi+yDVJgWCD+jUy7rkNr2qyDblnarDej85d1M7YXJHEXS18
         3qv9TMs3jLLBJ7j7iy63BOb1w8yiPEr8g47QRLH1EOxxG3Z0xMKpq5fPhzwdOYWqRjec
         R7Ntqs3UhFriqHLmUT2GH/aKnp3axzJoAX9g+WmynQlxgfyTpT4TV9pYlQyPUl+fsBud
         sSHg==
X-Gm-Message-State: AGi0PuZ0FZ64Zvh/4PW2Mda//NQQmQr6nmduB6QKGLpc8TKOtuXqoHGk
	mGcJXQbaDPpCdfypfm5eQ4Q=
X-Google-Smtp-Source: APiQypJT6fnrD0hclz3Xx7J78z0t+68bDa384sfzm5BmngIek0dbEVYdORmZKJbVv2BwgV2QCfCKqA==
X-Received: by 2002:a63:f50c:: with SMTP id w12mr880824pgh.253.1587589526629;
        Wed, 22 Apr 2020 14:05:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c85:: with SMTP id t5ls1730219plo.9.gmail; Wed, 22
 Apr 2020 14:05:26 -0700 (PDT)
X-Received: by 2002:a17:902:9682:: with SMTP id n2mr629827plp.44.1587589526209;
        Wed, 22 Apr 2020 14:05:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587589526; cv=none;
        d=google.com; s=arc-20160816;
        b=1BuY8A5ZlVBTZ7eqGQczcbyLoDUdOxciJPG/TB38GqpzeUEnDGXUTcGVlyOxBg1W8Q
         k/28W1ix9Bo6hf/+8yEjSJfo5OJteXA/pvNYwKjqBzmoFU6u1tclWDuVkXFQf09YADIf
         ZdGj07HXFC8Ygy1Nn3CuRheqRHlkvL9GU9MVeMSx9PD0uBql0BJtDZHZkZsnutb3kEgh
         xB1OdoUq1DLpWYptGHAUFrwuDvcNpCafFOzOZN9ANpntlfigkBQyyCDJ0a2iZegHQVh8
         h2VjdNQG7rrMgqj0XXjE+hgkbXR9CDcIcUzPKi3KboYYBeM4iZE5yRo3ifyQUfEuTYdk
         TVXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zUKNu7tEP2Ew6mpJstVWpghTc6pfH8SZlsjBVVy2IUE=;
        b=LceQNf7PmiqRo9U9rTpKRxWooi0yi2bU38WJ+R2Wqd/mHI86WPM2KVnKf4npsdq/Qe
         yieERX9X0gtfsNcF2wVO8Ku7Cu/gvlcFZO/6rJ8lXNGR3Wp3vepl9zP3J+eTbu10YLpk
         weCOuwY7fDZYmzNL2pGfyL1WPrlbV+CYu4pXWzL3pSL9Ag0XVLP+Nm+qcRlwfKhKBikv
         a/fLrUzQ2VMm7ETg08yMQ28r4A6eE/bto2Y+lg+CvDrrBYWp/iy4mYxlUiocIfQ29IQA
         yeyO36ciuFlFwAyl7tBv8wRvguJYa1MujUKJDVMXH/7ht0+pfo3fuDlKOU50TZYqEskG
         xMQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k53gcYui;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w18si68030pfi.4.2020.04.22.14.05.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 14:05:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id k18so1430171pll.6
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 14:05:26 -0700 (PDT)
X-Received: by 2002:a17:90a:266c:: with SMTP id l99mr616512pje.186.1587589525583;
 Wed, 22 Apr 2020 14:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200417084224.GB7322@zn.tnic> <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic> <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak> <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de> <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com> <20200422192113.GG26846@zn.tnic>
In-Reply-To: <20200422192113.GG26846@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 22 Apr 2020 14:05:13 -0700
Message-ID: <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
To: Borislav Petkov <bp@alien8.de>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>, 
	Sergei Trofimovich <slyfox@gentoo.org>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k53gcYui;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Wed, Apr 22, 2020 at 12:21 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Apr 22, 2020 at 11:55:50AM -0700, Nick Desaulniers wrote:
> > Can you add by whom?  It's not clear to me which function call in
> > start_secondary modifies the stack protector guard.
>
> How's that
>
>         /*
>          * Prevent tail call to cpu_startup_entry() because the stack protector
>          * guard has been changed a couple of functions up, in

s/functions/statements/
or
s/functions/function calls/

Sorry to be pedantic and bikeshed a comment! *ducks*

With that you can add my:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>


>          * boot_init_stack_canary() and must not be checked before tail calling
>          * another function.
>          */
>         asm ("");
>
> ?
>
> > Another question.  Do we not want a stack protector at all in this
> > function?  I'm not super familiar with how they work; do we not want
> > them at all, or simply not to check the guard?
>
> Not to check the guard. See the beginning of
> arch/x86/include/asm/stackprotector.h about how they work.
>
> > But if we're not going to check it, I think
> > __attribute__((no_stack_protector)) applied to start_secondary might
> > be a more precise fix.
>
> No such attribute in gcc yet. But yes, this came up a bit upthread, you
> can go back in time for details. :)

Filed: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94722
(Maybe a link to that might be helpful in the comment, for future
travelers? But I don't feel strongly about that either way, and
trust+defer to your judgement).
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkbcO8RzoafON2mGiSy5P96P5%2BaY8GySysF2my7q%2BnTqw%40mail.gmail.com.
