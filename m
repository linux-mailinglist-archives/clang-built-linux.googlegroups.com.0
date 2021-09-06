Return-Path: <clang-built-linux+bncBD4LX4523YGBB5XB3GEQMGQED47EFRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFA6402086
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 21:50:15 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id p188-20020a4a2fc50000b029028b072e133dsf4553136oop.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 12:50:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630957814; cv=pass;
        d=google.com; s=arc-20160816;
        b=gQWRrtwdkrJdvfodO3ZGQXEw1SmimkRSX8X8ssubyr18rHKXXN1xAAHNZ5wToFxfe7
         7qNsMzdR4fPg1ihAjEvLJ57mY5dT1+6jXlpXxLgsqfmcnc0Uweg4hIIgXp4VWgc6Crd8
         AQr5Dn6WQa0JTTxGL9tF+pns4IcTxqAgxWFt3OTFiNzpr5y8dGuCAgCpG5+3d2RxsMq0
         30MpxZIfEJyCqfSiuWKvKxkoOKk10n/RKA8q/XIBhQGtGD1Lp8PMAflogyBKYZL/yeZp
         HX3gXBhl+Ka9TAU+sHq0Cpk11z0jHFWN1XsWGNCUQA/uhb4SGNcYocMGSvHuRHncMD5/
         on6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=b7SX/UV/vGA2yYow4pOSDoiue5GB5nfirjhl/XLfp0c=;
        b=Vi9YWmHucUIn0U610lddskGumq/hQfALS6cvqeY36gKlH0Y4IgZzD+WSN69Hm76ag9
         5aSyJbX7+CsG6szoSqLv/LsJ3qh72/qT1M3d2Xpe4YpUn5rsk8TqWq3KWB3tBjh/i1An
         mw8RH7XS/xYHbVYMtEbGmKSoDAq38+UGhh7yZ16kdkpKyuB5izJLk3ay6gxiT2aZ/LXG
         wT14+cWjOsgK7dBH9MkJG8rQu0N1LqVhEKACNO4E/vJZPa8IH4wn3YrR7ZAjQhgBXBru
         O9hoA+PRPhusSVL7ySuR2q+vIANXHy97zMwOS3ugQfau1LbIZRJ9wR3iXvS+duGAp1Ar
         Rc9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b7SX/UV/vGA2yYow4pOSDoiue5GB5nfirjhl/XLfp0c=;
        b=byXtWOCp1seI4w/MRDQODhVByZyX3Ppio1hNmaz3D1+zoKd7VyVjp8jWdr8itZhiAX
         jlcfP66YFfo9mDQ8a8n8gYaqut9SeDDyAW9U+PmGPGHgKzS9+BzLcLNNuXrVH1M4xRXJ
         Iw4+3LlWom8MOoc1zlTg7R0nCpH33HQJb0LyZPLS1TmPWvtxubl00+UiyFfW+eyWyxSC
         yiL9qMMbEKtEvnUingGPTBg5oClpZgFZCyE7wngH7SkSOPyUwG7II4001Dr8LJgHQUDV
         4L29zmRjm07shAC42KWKCAP+Szlo8v+h35V9tcl5SAHz4VM8iCRXkbT4O9IhyJrxfZFu
         CBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b7SX/UV/vGA2yYow4pOSDoiue5GB5nfirjhl/XLfp0c=;
        b=QZBhPPU7+pMhmiyRfcxXxy90vBzYFTZF58CzOgyqZylT42g1d605oPJGAov8oKC7gm
         24TvsnyQhvK3FZefqLaO9NEAr5OTan5bBsTKBcZOjvU+qDzEWf+WA8M90qyqbgwi4/3H
         QOcbi3f9/C2skCHe9O0p5QD1jZHvIu3e+qCxT4jLKBSl1YU+596aAPznc7ACTrSZGkeY
         5QWBXhkevoLDIbALjxEE2HUJ7eTFraUXf2pXRJRKq/swxdpLSoO/oPcVPKvV/KvXAX6F
         d0WMIgsXoXdo/ldFlYwIGn4E3BEao6yD4AqCqRvZYPrWz8Wd5YeAzRgOhVgBLGW+8H4/
         xuFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326iVAPLMWk72DGw8DFObhOEc2CIqB7oSH8WHowAuGOEUhQLKJn
	w6WSsnXLVKiH0802E/zd3aA=
X-Google-Smtp-Source: ABdhPJxFhHOUMhqp/yZ6VsSlFZCrZJtnZSqo/ORNRDPmhW5uqQCsvXDe48bmZMC2a+E5kQSdwwYQuQ==
X-Received: by 2002:a9d:4711:: with SMTP id a17mr12445182otf.127.1630957814470;
        Mon, 06 Sep 2021 12:50:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:62c9:: with SMTP id z9ls1961520otk.6.gmail; Mon, 06 Sep
 2021 12:50:14 -0700 (PDT)
X-Received: by 2002:a05:6830:1213:: with SMTP id r19mr12292860otp.373.1630957814054;
        Mon, 06 Sep 2021 12:50:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630957814; cv=none;
        d=google.com; s=arc-20160816;
        b=Jt6OSl5r7wrcn+seWgIMKHGiFjcpcPGmVzlm1Dmo/8vXFAi+lcsOozmaeSbwPo7oMI
         jETOu8J8eJ1N+2b/pVjjcY+1WVyESB35vP25HuTOxjtu8bROdAxV2a2S0CdMF6mqio2n
         hcGTF70Oxfbq2Hw4f0Ay0B4BEnHEjBeNmryK63C1MZRbwmM+XX0m6wvZZe6SH+6DAday
         qoFC870kQXSHPNEcmfQh8shH7gsVpdr/RcGIcBInlxWErogEs7niEo3KEuUbznGI/OQc
         BSsQET1QAX0wyrDjP27hhYKKzMmYjoaC5z85kfSBDLXCEjQ28fwQC2FERov7oFlpyHru
         3tNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ljt32P5qq2QYTemxygv2Pmixe56RvpxSssc8KSjNKdw=;
        b=hqiLPCTTZZWyVV6nlgDBZ4gV+stM/5dZ6wVwQ1MoPutLKgol+ijmDdzElqG7oJQ0Lz
         qDymTGlZRnFtzzkDU4Cv7a4NyDGUiFT/8kbf8Un3zq/4b9bLBs05NF80I3NeObTnA97o
         elrHOY67ADPMV1pSlxUPlfv2Z2zv4Vhal+1dZjpYVQpGMfQ/butNaLDKZmDjkvynHFRS
         +MG0bWvPlphBp0UedzjbJsDV24tPa1loYTYkgIkR7afa7zn3ct5uzA5Y6SsTNDIn+Gp9
         xzfev7edVR+QoVblLk1ly/cMkw1P/WCiau0+z+dDD1BvDQs7vOKmWBxgr0l3BDhVlNFn
         vNiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id a9si262550oiw.5.2021.09.06.12.50.13
        for <clang-built-linux@googlegroups.com>;
        Mon, 06 Sep 2021 12:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 186JmAuS020071;
	Mon, 6 Sep 2021 14:48:10 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 186Jm8MM020070;
	Mon, 6 Sep 2021 14:48:08 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 6 Sep 2021 14:48:08 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Linus Torvalds <torvalds@linuxfoundation.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210906194808.GY1583@gate.crashing.org>
References: <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com> <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com> <20210904191531.GS1583@gate.crashing.org> <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com> <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com> <20210906172701.GX1583@gate.crashing.org> <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com> <87lf49wodu.fsf@oldenburg.str.redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87lf49wodu.fsf@oldenburg.str.redhat.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Sep 06, 2021 at 08:27:25PM +0200, Florian Weimer wrote:
> * Linus Torvalds:
> 
> > We use the compiler intrinsics without the C library header files for
> > everything else, so doing so for <stdarg.h> seems to actually be a
> > clarification and improvement.
> 
> This is an exaggeration.  On several architectures, the kernel cannot
> use the vector built-ins directly.  Some of the implementing headers are
> very special and intertwined with the compiler.  <stdarg.h> is currently
> not such a case, but it's just not technically not feasible to avoid
> dependencies on all compiler headers.  I think this considerably weakens
> the case against <stdarg.h> because the compiler version is so obviously
> harmless.

Exactly Florian.  Thank you for so clearly making the point.

> What the kernel is doing here is imposing an unnecesary constraint on
> compiler development.  Basically, you are telling compiler writers that
> implementing features with the help of header files is a bad idea
> because it makes it more difficult to use them from the kernel.  (See
> the proposed exceptions for vector code.)

Either it will constrain the compiler development, or perhaps more
likely, building the kernel will break in ways that the kernel people
will blame the compiler developers for.

The compiler headers (standard or arch-specific, same reason here) are
there because it decouples the user (that doesn't mean "userland", it
means the kernel here) from the builtins.  Decoupling has many
advantages.  The most obvious in general is you can use nicer names in
a header file, names that can step on the user's toes (like "bool" vs.
"_Bool", which is essentially all that <stdbool.h> does).  But another
huge advantage of decoupling is it allows the compiler more freedom in
bugfixing (or any other maintenance / new development).

It is low probability that there are bugs in the compiler's standard
headers, and it's not likely the kernel's ad-hoc imitation of it has
bugs, this is all so small after all (but have I mentioned the
c46bbf5d2def commit?)

So there is no big pressure for changing anything here.  But OTOH it
clearly is not a good idea to remove the existing uses of standard
headers.  No upsides, various downsides, and some of those can be very
costly.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210906194808.GY1583%40gate.crashing.org.
