Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAWTW3ZAKGQETSBJIHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id B325A165199
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 22:32:51 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id 71sf916879pgg.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 13:32:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582147970; cv=pass;
        d=google.com; s=arc-20160816;
        b=byNi801DufkT978YFkOaC2aBw+hxBIXDvqadmb8sLrR9A5cghD6F1KgQcT6y8uTTA6
         ubWYUPrJ+FA+N6kL43gZrPZSGv9mbWkuiKa3Lu5uhUf9e5b8t+fO29gM6Lg+iCee5M0k
         VP7CCpa2F5QJJ59VynL4/kFniBiKGFsFr7y8L+NzrfVnuRhWVCcWU633PcevjPabsaMR
         7LbEBiT1VZ8bFWZHbAj+zXhAhT2ldFM0Lpd1wI0ZhxF9DcVn47OpZKjWltIpymHwvzAh
         JJlxfDk1J0NuPRCr6pmy3JJLKyPHdemunibi8/cqHwt7EkXPxvqcDa81QjrKC8aUPYqD
         1a0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+pLKbAmn8U7lJS+ErOQccsaaiHsuJhEjRQYX2t7BELI=;
        b=ARkLNjQ65I2IJfMFvwGldyMMfICnqctUk8U1FO/prBJEKO1wdr1cUbm7i77qNiErWJ
         ywfjNZFlB7qAnKYQAoHXKMLNv+aFyijylKVfsqD6KsEgksAfWIr+PpOPgNxKlGtHtcEW
         QbAeX1e/5waAOgR08EbHWigvcj5phy+0XfjjxCZfxQxxEx3U0QqsuKxjQC1on/UG1lv/
         TeWFDEqLs2wxGvfk2sRlS1kyJ7Pckuvy9f6MgdhEYATWjcO8HidUzk1eoNk0HTXUYY67
         2RgZLO7+r9VObX+Hf+VlnqG2rb+f926ga2qOMVtU+Pmj8Sl6wbeofo+Idn3hL3vw6pBN
         glsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aAobjYpF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pLKbAmn8U7lJS+ErOQccsaaiHsuJhEjRQYX2t7BELI=;
        b=ayRuJhIZ2sN0jIXl5mEmytq8kYe/mILrQ9sLsOnqE6miCQetKR+Vcm+hud1A/IuuPM
         28fSKghzlpNZLfPNOYEIQ+dK+dMhUMeEqkBz4fa9rbrmu5ceoMyStPQwuW2PMZGxgw+b
         QuaQjJs4/iKYBqWZlxpWJhaIb1AXeNO2v6Tq4//SgfRUHIHpAe4FamIi9PTImDGAFs+o
         DwnYVQfnlTU+UuvhTTZJxrIz2B/26ub9cVDMfzJUF/f3CHoPNA/OsTjmaL5fA04QkXsV
         muIkMHJ2dV5WmGLaJPjBRNL3sywvD9cVuEpc0ylrMnb6MLOV2+vGihcByd4kYaDtbZhm
         eSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pLKbAmn8U7lJS+ErOQccsaaiHsuJhEjRQYX2t7BELI=;
        b=Jnl+J1PtPxsFf6cyApFDSd389mObNu/Yvcu2Cy+kToMT2ZPUKdb9n2g2u6BtWGW6Zk
         3Y7iSwemchRDY/McVyQ9ZRraqlvJQz8MFSEHr6Bc2o6eV2s4FwH7m0eYajguzP6TuL+I
         cyCNnqAh0TRDdOE7wRtXxCo6hpSfzDVWRGlyVi9wRNPjRURax45L5wo+KayYoHcXjIWc
         YvcWhC1/7Dbmg6GYn/SvRGTizaaoOmHTz7uWuFuxQHUgVv/+kumrcPRQ8kI/OW9FuZPD
         BR4bQZ6jrXsPflQGBf7MjFOCDFZCBwyMqSv94S1nlr75KfXRkLxCXmP1kevybilwUYQu
         nVPQ==
X-Gm-Message-State: APjAAAVJtqCGl+3wJaYAqsRvY/PPG4C25OMBClDBXzAFegTAvkQICzjl
	sCXuYmeFBQL68z6z67OnbRw=
X-Google-Smtp-Source: APXvYqwTTdkKGryKqaDXARCYWSsBlVmLCLQF9iPKfYML5YIPikIUa9GXxV7m/+aUyfLFmd24c/VUJg==
X-Received: by 2002:a17:902:bf41:: with SMTP id u1mr27330758pls.207.1582147970346;
        Wed, 19 Feb 2020 13:32:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ed49:: with SMTP id m9ls8361511pgk.0.gmail; Wed, 19 Feb
 2020 13:32:50 -0800 (PST)
X-Received: by 2002:a63:fe4f:: with SMTP id x15mr30516452pgj.30.1582147969897;
        Wed, 19 Feb 2020 13:32:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582147969; cv=none;
        d=google.com; s=arc-20160816;
        b=JyPIv6Gb8x+pbbjaxerOMM4eXIGqWpZtzL4V34J0xTTJ6YtgeGAP4MV81nCT8KEbe8
         xAAr4J7rH74tx9hGk7Ax4tKna4EF5ngrzbDj5bb2UO3RSbte7s6naD++VKZYpX8i6zSS
         bVNR3mQISA6UBrM6mi8mSe7HDo+1ZOWswlSKOdw9YO8pYw9zk70Yb6aShpdhLKHWNuJc
         nrwXx4flrgivRYA9jhb1+DVoSnnQf2k459Qic1yJ88FCGSmbg2uXd+AQDQQZbrEIiKYA
         glT7IanLgDH3NcjlBgrWwRWvg+PfLXRP37oDriLeQXl295BIfHIp18KgvMtTeIRglFnz
         YHbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EmqhwxfTOPH5Jwang1lE3QOy4zcv0gzG5lBl/plns9w=;
        b=fWeaD82hT0bYq6vjOdnnRGzP01RugQ5Bc3GlAD71jwYFt6/NUkuLdxseV7mBIjfHEB
         hL0mWXuhFH03KSXD1Wb2TQg8hOyly2Ao1fbS7qYw0EoBixqhlbDOha0QiFBDR5wdXlMi
         8H3O9YfOo90ciH2LWqBCiWka+xRLAHxVUD0FbOaFwCOaqQWKKN0qJ/X0/iUzufcMKbuZ
         SbJKS1Q0pC+27gxVasB/SNGaRQa1XST5gK9xHj2ph2jnFORhiyIJLaBktu4ZaSgAIfjA
         mCQoTOwWpfuj251oZrpNE1gMVu7w8Ku0j+IGYcRdx+EnSMgqFqAqVFaXoGlllPCUzXu3
         22nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aAobjYpF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x78si73665pgx.5.2020.02.19.13.32.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 13:32:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id j9so720880pfa.8
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 13:32:49 -0800 (PST)
X-Received: by 2002:a63:af52:: with SMTP id s18mr30581478pgo.263.1582147969204;
 Wed, 19 Feb 2020 13:32:49 -0800 (PST)
MIME-Version: 1.0
References: <20200219045423.54190-1-natechancellor@gmail.com>
 <20200219045423.54190-4-natechancellor@gmail.com> <20200219093445.386f1c09@gandalf.local.home>
 <CAKwvOdm-N1iX0SMxGDV5Vf=qS5uHPdH3S-TRs-065BuSOdKt1w@mail.gmail.com>
 <20200219181619.GV31668@ziepe.ca> <CAKwvOd=8vb5eOjiLg96zr25Xsq_Xge_Ym7RsNqKK8g+ZR9KWzA@mail.gmail.com>
 <20200219195424.GW31668@ziepe.ca>
In-Reply-To: <20200219195424.GW31668@ziepe.ca>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 13:32:38 -0800
Message-ID: <CAKwvOdktG0vZOZVtNJBk1COhOnLYv3MU5KNQ8Z40L4ph5QcnRg@mail.gmail.com>
Subject: Re: [PATCH 3/6] tracing: Wrap section comparison in
 tracer_alloc_buffers with COMPARE_SECTIONS
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>, Jason Baron <jbaron@akamai.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aAobjYpF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Wed, Feb 19, 2020 at 11:54 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Wed, Feb 19, 2020 at 11:11:19AM -0800, Nick Desaulniers wrote:
> > > Godbolt says clang is happy if it is written as:
> > >
> > >   if (&__stop___trace_bprintk_fmt[0] != &__start___trace_bprintk_fmt[0])
> > >
> > > Which is probably the best compromise. The type here is const char
> > > *[], so it would be a shame to see it go.
> >
> > If the "address" is never dereferenced, but only used for arithmetic
> > (in a way that the the pointed to type is irrelevant), does the
> > pointed to type matter?
>
> The type is used here:
>
>         if (*pos < start_index)
>                 return __start___trace_bprintk_fmt + *pos;
>
> The return expression should be a const char **
>
> Presumably the caller of find_next derferences it.
>
> Jason

And the callers of find_next just return the return value from
find_next, but suddenly as `void*` (find_next()'s return type is
`char**`).  So it doesn't seem like the pointed to type matters, hence
the recommendation of `void` and then address-of (&) used in
comparison+arithmetic.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdktG0vZOZVtNJBk1COhOnLYv3MU5KNQ8Z40L4ph5QcnRg%40mail.gmail.com.
