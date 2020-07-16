Return-Path: <clang-built-linux+bncBCYIBK4PW4CRBY55YP4AKGQE4ITL3PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FA8222ECC
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 01:12:36 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id o201sf1916190lfa.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 16:12:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594941155; cv=pass;
        d=google.com; s=arc-20160816;
        b=ha1zw3dVhynIszUOmLsWHaMicXLCv+7h3ZGUYxFH+BuHeGxbuaPVdjVvrm+iukHH0w
         xccPakjBDnJz9zpNVOaneyqJYQuqC3V7TtLiAmYfl3A9DuI5Vtvrsr9a0hAcV0YN2T51
         +hN4QDUfa17ZwC+ukdPs4xx7sLbbVs+TnjRh3a+wF5sulqmOU1T0WCLSum2KxwOZ1Gbu
         RBZbr8kuzLAnLbwnddoNAeqdYAnK3JfzanLtJU0gcUafw5kz/vyBlvsBFi4L991JIxTn
         XtTsxqA6wU+PpI8MSsJMK/qmVWrpN46xMbKy7id6yt33FMs1HpcAxnkhPzDCI4mMKGtT
         vvYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3nqDbH8v8zKnqXYAi3glJABdCIHgKka5y8YZpwFW8Ss=;
        b=dBACRT7NrKUwxlyH4ypd1JAr/HkGWM1vAtY3blWjiVAKdOniyU/XCkmCFTvAvVPi5S
         DypDtgR2vM+SzYOqFL+VNQSPiJBkqqHKhD8Sk4t6MeHs+VbDhHAk9aTDBfMdic8SAlUG
         rdgLb5MnAOezVPhKtwDrMYjBsOrkEBYyeiijDEl7agdnCgld0EaEZAXS4u3TUPjvstPa
         dca4EoOAv7pPAWPYo7l+n5gsEHfybDHq6KswB15zdhiNbTIqCo7JcLoCWJqw4AlSv4CZ
         OFEeyDDrmRJ+SSXgeeXnQ8DRTJOmsFYdg6qUhE0Gvx0zbpP208LhNviUtKCGfXuie2qy
         Odvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.200 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3nqDbH8v8zKnqXYAi3glJABdCIHgKka5y8YZpwFW8Ss=;
        b=sPnA6QhLwIsnoNd5aTlQUWVB16wU8hUlPCnh0oJWqs0F2wwWuHLBwbmQd+mMMIoq3F
         ZqTlPeG/8KZ/L5abvbKOr0pIG7UKeo8BZs8w8zknvXaqdJIlki5Ool4dJ99rhwaVtONG
         x06nvwfzvl9uWt7HNKVPiaxRZ78rvAXrpUvfHzdC9S5fpH0H/w6qIEfviS7m2BBdjbmh
         bOsTQHN/JbQm4oNLMgh7BF+dCB8pG2zQvWdbSYWePq99lw0fJF8g/gfxJvmilswaERmn
         YFneg6GeF3qY5+DFP/bG7M9MDXyg9I0Mj6nLrpk4HS9Njnv8BEr3ybAvYhbRJwGQeTLq
         YHfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3nqDbH8v8zKnqXYAi3glJABdCIHgKka5y8YZpwFW8Ss=;
        b=ddl2DCa22y5Z4BnswCXnACOiVy4ucdJ6nOHwYWth7TrbFywPfLsANvRyPrxm0dF/8d
         a26Ykcqne8MQFil9tVt4/Z5sAjwQ84xjSalINTYt/plnOfOm7S6byujEDTCzoZx+ymXS
         DkKMdcHHUwZqXh+rV2xrwzg7D78sm+2mWNyw6wplDrkAVtl26htCuzRpEjBXyvvagvvq
         wmHQAfpPr0PIuPmRluTm1lKRAhRn5XiT2iAU6VZVyxq2qW1UnIPvRvKdEnK0qjMXKJ6k
         1agdk/u+6xN5WWyptZDbRVXpcqkUabX5RxXElY2J21s6zKwgPKNKYgaKaGhKDMPmdsRJ
         s5fQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hDhIxeZ1HaWzySF9D/NQ3A/qANJr/0tTOqPEpJsWoazccpuNL
	mn3ArBilBhBqjLVQMqr19ZQ=
X-Google-Smtp-Source: ABdhPJzWzc4w/tux46/afw9i42JA85LpNuBh2osHng8Pr72jyoJ9Sg5RrFYBTXzoBwUI5ntbp7/uPQ==
X-Received: by 2002:a2e:9a0f:: with SMTP id o15mr3232242lji.450.1594941155769;
        Thu, 16 Jul 2020 16:12:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:230:: with SMTP id z16ls956352ljn.4.gmail; Thu, 16
 Jul 2020 16:12:35 -0700 (PDT)
X-Received: by 2002:a2e:b5ab:: with SMTP id f11mr3124655ljn.438.1594941155124;
        Thu, 16 Jul 2020 16:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594941155; cv=none;
        d=google.com; s=arc-20160816;
        b=xOv0Fkvk40NY7mfjD3tBcL83tU3QtBN6iiEIcmyf9FfVjM4Qp46LAig+ZwX2xu/6JO
         r7ZogZGF38TAx/SlMAlTKpbbUOU9ihQARlMS2LYCluCPgm9vyrKveCj5ah7AtdWJeDtv
         W0LtZ/L81Tjit8kZheb1Wr/kldm1GpzxsIVJLkjophFfINFLvErJY4uBIVgMuSj3Vql4
         GopbqPb9X+dYUQQZg6cScb6zt9iQMjuU+i2S8sc4jUOHJJfzzD8/rbITwo1ymrFCCeKo
         LreMmBlIALKK1j93OeL2BRdW3DrK7zdo/nbp5r6YVVdtomP8C0g8UzcJQqIjVEjxHxP1
         2IKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=67D0gnyVcAvjicSNnZM8QkcvyP0UrYI4yIO1C5WKp+4=;
        b=VlRxf2j/IKBVR8im2J2ApPtSeWPhY+KT+DPjfc368MZA1SFZNCnkiql1JOrTsLTDja
         OSXe8hYZal+jQyzRpT4ZkBYwz5lFZx0CU+MdWzOLgh00Ct1pFaqPYHnNYxfCH2tdJdWV
         nhp9md5rsYy8cHtOzL+BYT/HleQgwJbX6tx18a7/n6m5WCruBssCkbrM8TbSaG4Kzq9b
         HK3tZN+ZkCO6j1SCfDReI16eSNLzYhGeARLEzkwW3WbeHZiox2qFZz2tEjGhog23NW6O
         E3owAmJNUicb+GCgouKQWqijqS3jnFfx8Iog8aJqEf2XAA9PNUrqy9xzoGvx1293H7IG
         RAig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.200 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net. [217.70.183.200])
        by gmr-mx.google.com with ESMTPS id u11si442689ljg.6.2020.07.16.16.12.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 Jul 2020 16:12:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.200 as permitted sender) client-ip=217.70.183.200;
X-Originating-IP: 50.39.163.217
Received: from localhost (50-39-163-217.bvtn.or.frontiernet.net [50.39.163.217])
	(Authenticated sender: josh@joshtriplett.org)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id D26B420003;
	Thu, 16 Jul 2020 23:12:22 +0000 (UTC)
Date: Thu, 16 Jul 2020 16:12:17 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Adrian Bunk <bunk@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200716231217.GA378765@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200712123151.GB25970@localhost>
 <20200712193944.GA81641@localhost>
 <CAK8P3a20UQvQO0U=p1kBEUvRdwm8VFBa31aCe7C70hwTzcu_yw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a20UQvQO0U=p1kBEUvRdwm8VFBa31aCe7C70hwTzcu_yw@mail.gmail.com>
X-Original-Sender: josh@joshtriplett.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of josh@joshtriplett.org designates 217.70.183.200 as
 permitted sender) smtp.mailfrom=josh@joshtriplett.org
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

On Thu, Jul 16, 2020 at 03:06:01PM +0200, Arnd Bergmann wrote:
> On Sun, Jul 12, 2020 at 9:39 PM Josh Triplett <josh@joshtriplett.org> wrote:
> > On Sun, Jul 12, 2020 at 03:31:51PM +0300, Adrian Bunk wrote:
> > >
> > > As an example:
> > > Ubuntu LTS releases upgrade to a new Rust version every 1-2 months.
> > > Ubuntu 16.04 started with Rust 1.7.0 and is now at Rust 1.41.0.
> > >
> > > It would not sound good to me if security updates of distribution
> > > kernels might additionally end up using a different version of the
> > > Rust compiler - the toolchain for the kernel should be stable.
> > >
> > > Would Rust usage in the kernel require distributions to ship
> > > a "Rust for Firefox" and a "Rust for the kernel"?
> >
> > Rust has hard stability guarantees when upgrading from one stable
> > version to the next. If code compiles with a given stable version of
> > Rust, it'll compile with a newer stable version of Rust. Given that, a
> > stable distribution will just need a single sufficiently up-to-date Rust
> > that meets the minimum version requirements of both Firefox and Linux.
> >
> > (That would not apply if the kernel used nightly Rust, since
> > nightly-only features are allowed to change before becoming stable;
> > that's one reason why we should use stable Rust, and try to get Firefox
> > to stick to stable Rust.)
> 
> I would expect we'd want a fairly tight coupling between kernel
> releases and minimum rust releases at first. Whatever is the latest
> stable rust version during the kernel's merge window might be
> assumed to be the minimum version for the life of that kernel, but
> an LTS release would not suddenly start relying on features
> from a newer compiler (thought it might warn about known bugs).

Agreed; we should be careful that any backported fix to an LTS kernel
does not increase the required Rust toolchain.

> While Linux used to build with 12 year old compilers (4.1 until
> 2018), we now require a 6 year old gcc (4.9) or 1 year old
> clang/llvm. I don't know whether these will fully converge over
> time but it seems sensible that the minimum rust frontend version
> we require for a new kernel release would eventually also fall
> in that range, requiring a compiler that is no more than a few
> years old, but not requiring the latest stable release.

I expect in the short term that we will likely have a need for features
from recent stable releases, especially when those features were added
specifically to support the kernel or similar, but the rate at which we
need new features will slow over time, and eventually we'll go from
"latest stable" to "within a year or so".

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200716231217.GA378765%40localhost.
