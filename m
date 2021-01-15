Return-Path: <clang-built-linux+bncBCIO53XE7YHBBSPXQ6AAMGQEJHAZF3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F035C2F86BA
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:32:10 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id a5sf5710935oob.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 12:32:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610742730; cv=pass;
        d=google.com; s=arc-20160816;
        b=xplKpqa2BevLQLcHihRbiqgwoVBWleGlLPshqYS2L23hewnF+6ONfTeDBWucLOXAA4
         DmWZzf3N6TJhV2SE86mrYMI13eGFY2m7p8PhI6g1VdxUUHC3FfoYowKyWD5B7fv46fqK
         usGRQUR0OkH7SAygbA9pxDZ2LQGOqLsHMHot0OfEYUsn7YT21eel6de6VD41zcZFT/qt
         ETezZL0CBTni1PWIDrlGxN54Dsc4f3TZUtaBOiZvByk12GtKkj+jQKvIJ+k/S/hu46yQ
         ajR0/gG+w1WxCR5nIpAY+nUWX4V+mjao3zF4fo0NaPIAFcUvEW0/5GwLG8mqbN3ZE5AS
         PHAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=FG5i8QhfiGayDHGpVHqL9qWCJXc45WIBlw7OQp8EEX4=;
        b=Wt54ppVhMRv3G/ypZR4hl1VA+zEBIDNo92v9CR/oe93A3NYk3on6zqbZltry5LJmJW
         47taKlNMGCaf2YFUCIZtKqjHx2Vv4VYwWYDP8hIkihJK54M/3g2CPwSqSnM9ujEKDvAY
         CQ8k1VZuujCgLC/UIel0dSwHgM6X9dipmpozc110F9Q8L8cB0c61BRw27DPYpGE0KdNJ
         xu2RDZN5WZI6jI9dRasxab35zJJwIkwC3SKdPhtYiqAgJcGX4HvNr/m07+jf1e27w7vV
         6bIaZ2f8uQQ86RJ5J3Gzgj6nTXM2Nmsiifs+Fk1OEWSPSN6YUr5rNDkOqHCDUxkLUEo4
         T4kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XjSJapW7;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FG5i8QhfiGayDHGpVHqL9qWCJXc45WIBlw7OQp8EEX4=;
        b=Jr+B0qLvJz6fh5alLvkPp99UfTJSBC5t0fJQ67OGMyX2yqWgowQG3wqA9JIE5BymeB
         7VDkO0rUCXcUBYJCuPcVtce8e1eyFckTyeh55Fp35OaEP12JPrprGgv91QOIdOykVXZC
         juNns8GOE8UME46wU3nIohnVWDc/m9r+SL/g/G2zuMyh3j/bOulvz1ETbC1hkvWfdb06
         x3mVnDCF5+9fJy1Z+ilTODYY62dRB0PG9oUtcnmW2LRSQ12XlVSs5WUAZxwLQ2bIXPlH
         TeT2/Mp72vIwaqjrVkitoywPMzDy+7BThVA5RcGppfASFsgDtNAejbeAQM3YN5Ciceu+
         ym7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FG5i8QhfiGayDHGpVHqL9qWCJXc45WIBlw7OQp8EEX4=;
        b=XfO+j0PRJerRUJ+9IQJCt6JisiKE06PoTWWvwxX9yYaBGGxjXn5MBUc8OF3lFvZiDU
         O/huYzEZidFYdrSUhEE+flRz6uk9dbc1DhnrzmEAKrOI8z6pxOqbBXv+IRx+M0B6j3at
         qil6e+p1ZSOOHaw2p2g+nFhfRYNL83G20jJXfSV5Uk5e8p5FxwB+0xLYDB+nzd3AqUrZ
         qtJW9JVaarm8oLmhSAcpESZqUIr1hInZRKIJAVt2z7cSjGUp8e21U5jynTWWZ7zgsdjB
         sIDBGCkYr4Q0ZhF2yWWuvM2J7nzmhkRLwPYCkIh5ZrL9E/Nb22Zpbi/pgDjqeLmTwHmW
         h4SQ==
X-Gm-Message-State: AOAM533YAzKNHeyEa4sktNuHvEY0ddJFTLQnVG04w8Prd3qxvkX+cDRj
	3kCAgPD4D5zmjrOKbzZcWQI=
X-Google-Smtp-Source: ABdhPJx0z0Id782QpHTUXPn+t1pMfLpSkzuQTnLy+0EN8esl/SHtIlr2Q2kJx0Gv1r+Yb+MCZsRXXw==
X-Received: by 2002:a9d:2254:: with SMTP id o78mr9575126ota.24.1610742729937;
        Fri, 15 Jan 2021 12:32:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls2464958oie.2.gmail; Fri, 15 Jan
 2021 12:32:09 -0800 (PST)
X-Received: by 2002:aca:d6c8:: with SMTP id n191mr6501536oig.69.1610742729574;
        Fri, 15 Jan 2021 12:32:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610742729; cv=none;
        d=google.com; s=arc-20160816;
        b=BjvSqmGYW07aXs00N+amIP2RKICn+pfjuaBNLRfbpVK34LEX+4/nD5kc0D2qZ4ch3k
         jqgP8Ag77xidfoVaytR76U6uBxxBCYj2eWn5R2S4P9OXw4gTRLvH6ywmAeIebhMEvb1E
         g6CBnFCgfH4EhZRdUgRjar6YxQy31rJfaBhpmBKLVjPF54RNLiaPcLgoP9KCxGfZy+Fy
         a9ovgEAevL/P2laW3JnsweOhqg35MJqPtcvW+hqbi8dC6nvRBwT5+W8B3BCGxR3drT9b
         LuPXLEL3CKjhtwK6Nz8HFqfBAqkx6iCsxFEp7Q+BkjCbMVIiTCLGdzslruyZ5dvwIGqi
         sIrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=BVIgSjuV976cGlpOjqUg4jAiYaTKabic/p9h6hRPsiU=;
        b=ZbWvUKKGo7dedp4taxvVJsC98I2f9NjjTBGJCBpwPcGCqjk31NMRIk3XC4Shs9ynyl
         x0lRIoX55h/A2X6Z+0tHJdvdP6M6Sv0Ra/OkjgXGN87ILIwS9z7+4HREh5MQ1yHSyPZo
         xqIkyZ0sB51aQfdfek3+FquGgSZ9icctgh5fQqm7hXXz2UKKqAiefmfpVsREJQsymU+7
         LIL61QI0AyLMbJRr1kPyaVn55ls+rU5vBxkeL1B79qRmKPa5suKIfIe2zQRAdBQsODzv
         6bWvAR/n9R/4G3LUKZQlVTpkG9jvFXPCytLwaGXWMc4erw/v4a/4+/OVIKJeY4RCzFt5
         dmuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XjSJapW7;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id u2si924415otg.1.2021.01.15.12.32.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 12:32:09 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Received: by mail-qt1-x82c.google.com with SMTP id c12so1442416qtv.5
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 12:32:09 -0800 (PST)
X-Received: by 2002:ac8:6c36:: with SMTP id k22mr13626091qtu.62.1610742728990;
        Fri, 15 Jan 2021 12:32:08 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c62sm5599633qkf.34.2021.01.15.12.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 12:32:08 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 15 Jan 2021 15:32:06 -0500
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arnd Bergmann <arnd@kernel.org>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	Platform Driver <platform-driver-x86@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <YAH7xlaHZN8i8ORK@rani.riverdale.lan>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <20210115182300.GD9138@zn.tnic>
 <20210115183203.GA1991122@ubuntu-m3-large-x86>
 <20210115190729.GE9138@zn.tnic>
 <YAHo3ZEMu+6mESZA@rani.riverdale.lan>
 <20210115191833.GF9138@zn.tnic>
 <CAK8P3a39vtF8GvRVQtEYssc+GvX-75j9-4pwXj4qhc7LK2RgNw@mail.gmail.com>
 <YAH3KY0I2AWudkc9@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YAH3KY0I2AWudkc9@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XjSJapW7;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::82c
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Jan 15, 2021 at 03:12:25PM -0500, Arvind Sankar wrote:
> On Fri, Jan 15, 2021 at 08:54:18PM +0100, Arnd Bergmann wrote:
> > On Fri, Jan 15, 2021 at 8:18 PM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > On Fri, Jan 15, 2021 at 02:11:25PM -0500, Arvind Sankar wrote:
> > > > That's how build-time assertions work: they are _supposed_ to be
> > > > optimized away completely when the assertion is true. If they're
> > > > _not_ optimized away, the build will fail.
> > >
> > > Yah, that I know, thanks.
> > >
> > > If gcc really inlines p4d_index() and does a lot more aggressive
> > > optimization to determine that the condition is false and thus optimize
> > > everything away (and clang doesn't), then that would explain the
> > > observation.
> > 
> > One difference is that gcc does not have
> > -fsanitize=unsigned-integer-overflow at all, and I don't see the
> > assertion without that on clang either, so it's possible that clang
> > behaves as designed here.
> > 
> > The description is:
> >     -fsanitize=unsigned-integer-overflow: Unsigned integer overflow, where
> >      the result of an unsigned integer computation cannot be represented in
> >      its type. Unlike signed integer overflow, this is not undefined behavior,
> >      but it is often unintentional. This sanitizer does not check for
> > lossy implicit
> >      conversions performed before such a computation (see
> >     -fsanitize=implicit-conversion).
> > 
> > The "-68 * ((1UL) << 30" computation does overflow an unsigned long
> > as intended, right? Maybe this is enough for the ubsan code in clang to
> > just disable some of the optimization steps that the assertion relies on.
> > 
> >         Arnd
> 
> That does seem to be an overflow, but that happens at compile-time.
> Maybe
> 	AC(-68, UL) << 30
> would be a better definition to avoid overflow.

Eh, that's an overflow too, isn't it :( Is this option really useful
with kernel code -- this sort of thing is probably done all over the
place?

> 
> The real issue might be (ptrs_per_p4d - 1) which can overflow at
> run-time, and maybe the added ubsan code makes p4d_index() not worth
> inlining according to clang?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAH7xlaHZN8i8ORK%40rani.riverdale.lan.
