Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG7L4GAAMGQELR5DMXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id BA17A30B234
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 22:41:48 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id m64sf14407590qke.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 13:41:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612215707; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZn2YdO/Jq7AB9cVk7Jj1/FhP7dYHK08uqY11pb9mow+W4liHY/y7AoVDBjcNCUt7f
         L+Ds0oTUOVIyZM1mECW3qRpKmAxgb9iDcnqBhzv2Vuws3CQhAima1TvFKfeBhBo5gzw1
         qQBXTWVYNLdBsyPdW8FqyaluyOvv+WTawdIRUY8/qzFMc4FF0WjqaF8kM+W0sjY958X4
         23PVAQoZ/rdxgqlpyc0U0Wvhz4/Vnw4Yl7JLBr6LAwbGQrET+//d8fu7nbHUM3dEtnOY
         PR2DilcPeuukkUPu9S7ZlvlRq4ZVO1ciYYEJ00FZyVOuHe8yMEgVN/GfFsMsJCA52h15
         JcYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jgKxFcMWQHhgIoBR8fkfb4gMiO/sSCTUsF1dUm6big4=;
        b=ZDLZ9xLse4NRHKmtFArVNWolkoFIkBdK1weRtvbQKrBITa24NxbAi173D+Jm6P8iYc
         WoYIjjQBGaGitMu+TjYv7gh2vVOppbrnm2399oJFjjJMMYDYspru/dQUv4fnoy5YCxnT
         4RhI5gL+AaRbrqVnOyp8macUgQjoxzviio4GA9e55XeW+kMU3CCG70f9gdYPJyAjkE4D
         dKHGTmZ9SFEERalBE0lfN3q9IbdtYmQ13ClF+kVUNhPDrC3tu6nbZ3TUTi+sNdNMuaCw
         vv24IvlGKWtPhfHwh9CumUQqZ5bTOQoFNfDE/DJehLm5oVS6pQN3lnZepwfNPEM2Eqxg
         7ncw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XVEcRzdK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jgKxFcMWQHhgIoBR8fkfb4gMiO/sSCTUsF1dUm6big4=;
        b=V/KAu4OrFZkcpKWGv/WqFRI4KC+nFGc7Tf+VxAdDgDZSfP8jjqxtjsi+kwUOhzc0em
         tED4238mpiPD8sUYQUpWflpd4jup+HFEtopbIDkAJThKMWWSX5Lyk8ahyJFGmILBS+nz
         v1ZlJuLXfcBolPysOzG0DeL9EqfB8AmPzK+ggrCMcGhvj31bbGC+fJmljfrlU9gqFxAK
         NFn71yDa+ILuZUPK1e+9CjfJuIiXlkxvtUu1K8jLctN8LiD7o7hDMgLGxdNXXL5yqs75
         J02N4Z/1S6mbk8/CIaP2+EZl+zWF2DdYOT9i19H1q7tvtEGfu/POFKMxttHmNlNsw8qX
         4gQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jgKxFcMWQHhgIoBR8fkfb4gMiO/sSCTUsF1dUm6big4=;
        b=BgOs91OIyia6tqc0zFBOBPS0czPAi6exBl2/bxYrMjUtrNgSJfB3JY3Lo8yyvh1d1R
         gQl87Dk/5/XZiqJ8R+z84gu676MXBVwRowbYlR9YW6k+b1+/Yoh6g0prfKDmjIZxX1oO
         OXk/I/D8eLQc37YsMXoSWhOLLfQ1GfSjsYHKkZu+ZH9Nk1e1LuXdlWKhSLmj5BoJbGFH
         N+r27GjW4VxJsUDjRQEndiV7eMeAJUbNyf0dXPXlY/m9Qlqj8lHVzB96NoXNe1+0QDsn
         zLWiItjvBLKi2yZUbqoPtExb4mdyWhguDVULgBqXyXNhx/5S99HGLb+KuSwYNsLcqav+
         o4aQ==
X-Gm-Message-State: AOAM532aIF6zkKyXlkTBeuumYM/SMdgLPuKZGUz8iWzb27G5uC33Si6X
	Y0rQriPyILNarVhwYHuxTkE=
X-Google-Smtp-Source: ABdhPJxQAlup/gTSlLpbi8E8upJgyxVPBS/iC0VpvHbgeB8Z+0uXUnJE5vKqgBFeJ7Bk+Q8VwI/hRw==
X-Received: by 2002:a05:6214:76f:: with SMTP id f15mr3455106qvz.56.1612215707771;
        Mon, 01 Feb 2021 13:41:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2e41:: with SMTP id j59ls5271690qtd.6.gmail; Mon, 01 Feb
 2021 13:41:47 -0800 (PST)
X-Received: by 2002:aed:2cc4:: with SMTP id g62mr14949970qtd.126.1612215707449;
        Mon, 01 Feb 2021 13:41:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612215707; cv=none;
        d=google.com; s=arc-20160816;
        b=p/p3ennH/mk4+jAVg7kl/+z/rw28aC3Y5mCIn3MorbGr21VmPWRdsT4ijx8+ZKcyZ5
         2hX080c6nMZxTaeuejvWpVnJJEf/fQ8kqkwGtLYQfr5lganWGX+qUXHRJ47QqlqVw8dJ
         fn9onXx35IDzFgPj3zQR9ww4JDrLAcCIp44MrKG7lzzUUv5TOnUTsHUfPoK57mgQDhZW
         LQOPEBvXM7a0czMTsCFErswxgDstDzDMKmDoPaJTD2jNnkfQa2H0kDB2x6kNMNqoaM+n
         mYXhGnd/kNWkPy57yk7VSLWHXg9J27UTNQa1cYmSO8Y6USx1vuUH75k66nY125JsktJ7
         TA4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=omXjXu9fWF573tSXobtbnzQwWlvXEFA3qfAQWygo3mA=;
        b=zHY3hPMXh/7J5WO8a1F4EBhThHPMICo7nXccCMZA8xKJGWSZSguhRyUFStSp82nlF4
         +vtYU96nPZeIhedp9R/KkO6qzpdj0wxw4cIvP/G9/+2w9nJA6UxAg8Y7j1Yb72F3X4VY
         C4lJ8aILr1/Y739bSvdFLGpKGJ3Tv7rLlqNR6hglHL2Shtdy2ZHuHbQo1SdVfZePCDyo
         ZM15G3DtlH5OoXp4J/MJ5m5UOYu/CapsM/kPLtN7r+BJiRI+NzDRsS4O9wsa9jzezXIi
         nm6V2A1H+POn3DA3FgtJGPvFPoAPrOEo0RAo70xBnzJQlniTA/9COAnJsYWllf7XmKiN
         QEZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XVEcRzdK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id a26si1007144qkl.1.2021.02.01.13.41.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 13:41:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id w14so12549694pfi.2
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 13:41:47 -0800 (PST)
X-Received: by 2002:a65:4201:: with SMTP id c1mr18769495pgq.10.1612215706453;
 Mon, 01 Feb 2021 13:41:46 -0800 (PST)
MIME-Version: 1.0
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com> <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
 <YBg20AuSC3/9w2zz@mit.edu> <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
 <YBhuHJgZ3QPqHheV@mit.edu> <CAKwvOd=ny2TeYV8SGZMD+aj8Yb6OSYGKAzSb-45r-HKk6WTUCQ@mail.gmail.com>
 <YBh0ywVzkUIR3fXg@mit.edu>
In-Reply-To: <YBh0ywVzkUIR3fXg@mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Feb 2021 13:41:35 -0800
Message-ID: <CAKwvOdkZRdBzzW19sVAs+pX-7wWwN6AWrxUkkZwP8L4OT7SLfQ@mail.gmail.com>
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
To: "Theodore Ts'o" <tytso@mit.edu>
Cc: Vinicius Tinti <viniciustinti@gmail.com>, Christoph Hellwig <hch@infradead.org>, 
	Andreas Dilger <adilger.kernel@dilger.ca>, Nathan Chancellor <natechancellor@gmail.com>, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XVEcRzdK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a
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

On Mon, Feb 1, 2021 at 1:38 PM Theodore Ts'o <tytso@mit.edu> wrote:
>
> On Mon, Feb 01, 2021 at 01:16:19PM -0800, Nick Desaulniers wrote:
> > I agree; Vinicius, my recommendation for -Wunreachable-* with Clang
> > was to see whether dead code identified by this more aggressive
> > diagnostic (than -Wunused-function) was to ask maintainers whether
> > code identified by it was intentionally dead and if they would
> > consider removing it.  If they say "no," that's fine, and doesn't need
> > to be pushed.  It's not clear to maintainers that:
> > 1. this warning is not on by default
> > 2. we're not looking to pursue turning this on by default
> >
> > If maintainers want to keep the dead code, that's fine, let them and
> > move on to the next instance to see if that's interesting (or not).
>
> It should be noted that in Documenting/process/coding-style.rst, there
> is an expicit recommendation to code in a way that will result in dead
> code warnings:
>
>    Within code, where possible, use the IS_ENABLED macro to convert a Kconfig
>    symbol into a C boolean expression, and use it in a normal C conditional:
>
>    .. code-block:: c
>
>         if (IS_ENABLED(CONFIG_SOMETHING)) {
>                 ...
>         }
>
>    The compiler will constant-fold the conditional away, and include or exclude
>    the block of code just as with an #ifdef, so this will not add any runtime
>    overhead.  However, this approach still allows the C compiler to see the code
>    inside the block, and check it for correctness (syntax, types, symbol
>    references, etc).  Thus, you still have to use an #ifdef if the code inside the
>    block references symbols that will not exist if the condition is not met.
>
> So our process documentation *explicitly* recommends against using
> #ifdef CONFIG_XXX ... #endif, and instead use something that will
> -Wunreachable-code-aggressive to cause the compiler to complain.

I agree.

>
> Hence, this is not a warning that we will *ever* be able to enable
> unconditionally ---

I agree.

> so why work hard to remove such warnings from the
> code?  If the goal is to see if we can detect real bugs using this

Because not every instance of -Wunreachable-code-aggressive may be that pattern.

> technique, well and good.  If the data shows that this warning
> actually is useful in finding bugs, then manybe we can figure out a
> way that we can explicitly hint to the compiler that in *this* case,
> the maintainer actually knew what they were doing.
>
> But if an examination of the warnings shows that
> -Wunreachable-code-aggressive isn't actually finding any real bugs,
> then perhaps it's not worth it.

I agree. Hence the examination of instances found by Vinicius.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkZRdBzzW19sVAs%2BpX-7wWwN6AWrxUkkZwP8L4OT7SLfQ%40mail.gmail.com.
