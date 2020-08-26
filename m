Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4XETP5AKGQEGDG7TXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 022FD253AAD
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 01:38:27 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id f19sf2432634iol.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 16:38:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598485106; cv=pass;
        d=google.com; s=arc-20160816;
        b=rUQweiHBmy9xPjMriSmgSkn7xmhFar+T329XmzVjxpnUHV/RU4uaxUI2f8HlxBkS/q
         79D8JVPwAP6QP0l4MB4acQG6YHBWsdUEzX3nJj18dCmu5ZOPP4g2J+7MwLQ3sL7Nmzkt
         lcSCFdY06+ZV9yjo8aq/iW0BPDl8TLoLI5HKyAS2XNRhJaLzHnbnT6iqfFTg3Wg+pcIQ
         bnBhNm5YCdu8AWdyyNE1Q+h8wNvOZVe4A+zxXV9MgoVemqEBweWkWRhhNdxWVXoXzCFM
         In5f3I3cxzXEYbuKGpyqpZvQJNA89xlnx7dHrMe0QEG9edyQwpWJLf36DEx+sS1WzRpk
         DF0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OU9i1gomShdD+3nZt7tk4G5GTZhaaG+KS58jTEEoxZE=;
        b=ZsDww4MHHVsYUrPhFZkjoiq0ypZfC9jir9zd08ZQ3vnI4Lr0cuGasUaMqr0y5j9jyx
         ccTKzJf3HUoDDe7pmV2rcByUAMvdEneRr2JXhmGe8YnbeeLmQK+/peM+joVnfwAl/TXl
         3FkxzmgXn+lCiPyUZWHnGhTcD2GGkrNSA7+JEJiI8DZ8KbbIuNmpw7ZzwEajUNLO5vFc
         y/eGjd4mB880I7t6ozvAj4VbwmUKmpIlm6awkqqayIehw7zJrO6+5u81SteLmbI5CpVs
         Ia4I5+qIoiW3cPZpWS15CTC4ZXoCbhkc31RepWd7fsPUB+AKjyQBdDZ5Ue58LrsvLWI1
         kQiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oWdw0mdh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OU9i1gomShdD+3nZt7tk4G5GTZhaaG+KS58jTEEoxZE=;
        b=QPnZfemE7/pjrx2c3R8U8EUHk7X0RYLYtEgflOX6xVD0KIdjwu21f+nC5wPwU4iQ4J
         j6bG0QQzWbrkLrv0RTvJYB63tHxGA5CWFKZANECMyGmnDEv99tGdDSApta+nQfoa4UW2
         zmHLT0FfQZoVTY1FL23VIw+NawjxZdT34bH3SAYc2xF9UN0DgNwaF5R7aKb/3VaTtk2L
         AbnCY8d6ZxH0s6itJqe14jshpBI9lhJZU0E5FYAlXmsYHfXp4SMtUas2Z8AeTpPfsvn4
         +AtPkgp2/x7PGGF95UFtqXZvjRvIpgOUd0idOgX7QHRdgbCFQfF6hA8Z+nvjRMCS3mu+
         mmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OU9i1gomShdD+3nZt7tk4G5GTZhaaG+KS58jTEEoxZE=;
        b=SBE6MnGWUYxJRduPZ0tFtkKY0kHvBG0C+3BdBCQJxgWuh2Hw0jc8wAPA77iNwcupY7
         0QpIFK63CKfhti0iXDfkS6DtCU7sDPxOEgVMjEgB+qa26Q4pzuWuBpa3ObQwcwaKEPQo
         7xGiCyqK2ft1JDV4yBWn6Wt28DzjfMn+Lo59k1ztj0wc9LisS1DvSxx1ET6s3sNDO+9H
         bZMj2mv8ZKwfm4vLb19dJNBASZNkpKhZfZzaORQUrG4fT+uiVIZNlIfyVTcokx2/KPbw
         tDUSACE28RSiqjdYoq9q8oTa4HHTLsBYIWY4hHYAyrEaGi2Ky1ZCdvAl7OCkbY0EboKA
         p2ZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WqCuCiIQX/NRrjBOI2OhhpClRsEIT/lXr6n2hcQYEoeWmhKww
	5pg3xwGSthHDqu7bs6mLxF8=
X-Google-Smtp-Source: ABdhPJzD5tQ5318jL9mMcoTEkOxRkdfHMw2AwOXXqYxyAP1FFXHJlwU0ssYGsK7rARu0mr7xk0cIYg==
X-Received: by 2002:a02:1988:: with SMTP id b130mr16675364jab.15.1598485106699;
        Wed, 26 Aug 2020 16:38:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d9ca:: with SMTP id n10ls76825ilq.6.gmail; Wed, 26 Aug
 2020 16:38:26 -0700 (PDT)
X-Received: by 2002:a05:6e02:1088:: with SMTP id r8mr15180603ilj.291.1598485106361;
        Wed, 26 Aug 2020 16:38:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598485106; cv=none;
        d=google.com; s=arc-20160816;
        b=Xusd8Ue7BJjRMxa7GSWnMHmXwwwvNqN7pvH+UBn07EuAP+1y3EGYWqY/b4CLAnTYc/
         OsMwH7/2G8AhnjaIwki1Oxd6YpITVS77k9JrRs/73nfRz9gJfMTW90wVAvKpc8KkJcj2
         sdmVogQK+x44qaykXhKhvakdzrRgFeII7b0gQugnPHy4kF1g1o+d7mpEgIETw+/uRGvU
         9gIO/WSpdVSB7IZ1HwQUs3ahfFBfFARbPmtSSSO0snLvCSf1JXv1FNvN2OtSI4XqGPdO
         mU0B5fx7aOSz84u9dOKAludHZZiIe6AU6WpHBjGrHAUKj/IYn235z4djxatth6/fDknj
         sh0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eV0GIFTuiQm5ErvJErExla4nXTXonFJmiqihB7uxsxA=;
        b=qjwAKQP6kYGgZ7KFml5dbQyfNJCuzC2OSxbj9XVgDxZxC4ShI3Lhujm26AQOfFK5Q5
         12FjOH2f+vscUH5RmoMvLAr112fqk5xXBt2WrxBR+rA0CVe31bgNnK+Lnit0swHFAcHT
         Hh1xVcGpaVnlxVmfgH3fJ7Pu3Q1R4EnZspJ4IthbqQo1RFutoWYriB/kS/zotzxgJaHA
         NgmNojY0Env+sdmai3CsjE/7QycBi0oWn/FkAFuNF96FONuS6bKrh6cxh0SmnqBWil/T
         xD7MVA5xywV09uc68P4OGwDVCpZyHvhWf4SJEaZBO2FTFEZ7iRaG2ZbmDK5ODXb7H0rm
         xgdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oWdw0mdh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id m13si25374ilf.5.2020.08.26.16.38.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 16:38:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id m34so1980837pgl.11
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 16:38:26 -0700 (PDT)
X-Received: by 2002:a63:4451:: with SMTP id t17mr11449209pgk.92.1598485105726;
        Wed, 26 Aug 2020 16:38:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g129sm295099pfb.33.2020.08.26.16.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 16:38:24 -0700 (PDT)
Date: Wed, 26 Aug 2020 16:38:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Joe Perches <joe@perches.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	Yury Norov <yury.norov@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
Message-ID: <202008261627.7B2B02A@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oWdw0mdh;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Aug 27, 2020 at 07:59:45AM +0900, Masahiro Yamada wrote:
> On Thu, Aug 27, 2020 at 1:58 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Aug 26, 2020 at 9:57 AM Joe Perches <joe@perches.com> wrote:
> > >
> > > On Thu, 2020-08-27 at 01:49 +0900, Masahiro Yamada wrote:
> > > > I do not have time to keep track of the discussion fully,
> > > > but could you give me a little more context why
> > > > the usage of stpcpy() is not recommended ?
> > > >
> > > > The implementation of strcpy() is almost the same.
> > > > It is unclear to me what makes stpcpy() unsafe..
> >
> > https://lore.kernel.org/lkml/202008150921.B70721A359@keescook/
> >
> > >
> > > It's the same thing that makes strcpy unsafe:
> > >
> > > Unchecked buffer lengths with no guarantee src is terminated.
> >
> 
> 
> OK, then stpcpy(), strcpy() and sprintf()
> have the same level of unsafety.

Yes. And even snprintf() is dangerous because its return value is how
much it WOULD have written, which when (commonly) used as an offset for
further pointer writes, causes OOB writes too. :(
https://github.com/KSPP/linux/issues/105

> strcpy() is used everywhere.

Yes. It's very frustrating, but it's not an excuse to continue
using it nor introducing more bad APIs.

$ git grep '\bstrcpy\b' | wc -l
2212
$ git grep '\bstrncpy\b' | wc -l
751
$ git grep '\bstrlcpy\b' | wc -l
1712

$ git grep '\bstrscpy\b' | wc -l
1066

https://www.kernel.org/doc/html/latest/process/deprecated.html#strcpy
https://github.com/KSPP/linux/issues/88

https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings
https://github.com/KSPP/linux/issues/89

https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
https://github.com/KSPP/linux/issues/90

We have no way right now to block the addition of deprecated API usage,
which makes ever catching up on this replacement very challenging. The
only way we caught up with VLA removal was because of -Wvla on sfr's
-next builds.

I guess we could set up a robot to just watch -next commits and yell
about new instances, but patches come and go -- I worry it'd be noisy...

> I am not convinced why only stpcpy() should be hidden.

Because nothing uses it right now. It's only the compiler suddenly now
trying to use it directly...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008261627.7B2B02A%40keescook.
