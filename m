Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBUHJ4GAAMGQE7L3QLCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 455B330B22C
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 22:38:25 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id o24sf5855567uap.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 13:38:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612215504; cv=pass;
        d=google.com; s=arc-20160816;
        b=mcONZ//yeS/nYRKX0qRYaHY4dWR3J3Y5u7Wnh1ta3ZUYqVmVucJ+7M68seZ9PfTdBK
         jil/cMe33KoOcVegpCrgu6gKRCMcIeWGtQ9i2MXw0ou9dD2z7POMH4CVov1N7RZIr9xj
         tvfF7ES6p0RUe9xFLN2fgWdJ+f9apj2OZ1XAeOfMCgqOiwTTbJp2UTMtGRNsX8Wl9I/D
         m2/31GgldFGLKNEGl2vnW7aBppcLmeoidIllIZr70NFmz9C5HrNYTG5LinVhvmtK9lRW
         9JHk1VUy8Fme2PbFp+XgQU69Esygnyuv/TGYKIXv33gBNhsPi+mC9mKtI65N4QSeT83u
         3WQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6E8bAY2hinj8aqmCjzPyJS++c8rMTVrg/+V63RplBek=;
        b=XffZNCl9V/zjJdg49MZJpPrvfjRmnCxbFPvsxBvOcAB2ZiWGVp4Grk1E2srVJdVgIq
         /dM5KXbdZB19/nVol+tpUKzC7UbqkglCSqNRfdmFE9e1/MtkM6GczbDI4C4upED+3m+i
         t/6llJRgm/5Ss3eLQMgsJBXGeX5zcZcdhLbqMEVpiefWmQmou4FeYus3rSnhsy6G0Csw
         keoCllmHLVvPczRTd1TjDMFL93rXb8iIiBuaeKlbW75ncV8/Hlc+s45xnuVxK4EuGSoT
         PO8U5udrvJsfdyl/pxj9Tn69s8ZhNbL+XxBgJVTI/zehEANnrsviqqjdg7XJNDu6ZRjD
         uy1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6E8bAY2hinj8aqmCjzPyJS++c8rMTVrg/+V63RplBek=;
        b=dqA22naAA5whw1jComBqbIT7S6MW/NoEkiob+e2wGiQzY8fyz/U1FG9ige0N90IJHz
         JQ7bjvQfzWXko981FASwYlgv84M0b+jVYy022tEfx6IkW+gkwrmnUlsaUPCjmhOj+Pj1
         +ZTpr98stL36wR8jWgPfI6ucNj3cuGJPM4B49evF3SkeCr7QbAYkFBFDRD2zyfY8KX+K
         RlqtERmLVJO4nMz9yfKyNT5Hyr7GLxKgXgGp1dBLUvD3qCY8v0jV0ivC1cAuee4B3hbz
         P/ckyEfZSdApdNYEWLVIAnsmzHVWWg7WVhbVWRJN8rq7GgqCvmb+QAj/LFqmG/RTokje
         Qgdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6E8bAY2hinj8aqmCjzPyJS++c8rMTVrg/+V63RplBek=;
        b=S3PeWiymRETQ8EW43D8XI5cSBysiCsJchFPgD/swgYhoEPH+tXZvA0MjsS1j6vrY6c
         5JRZ+jwUSdgdU979K5Zlzx+cSHfNhn3gBo7ZuprjOfx/E3lMcAz+rsiwrhEXBn5grkOH
         3BN3iPUdfrSygzo/9uULL8EfXl3cfMHLxfYQXb9EsKCkKj8HtxWtxNqaxx+taK/vb7Nv
         /lWW+Vwej0jB6NR6BkuntXM/fOjyrubtdFcEs63lVh06wJ2DNHeNXAic04WvXQo/AQF1
         jG1epL0PEq6MFHWS0ClscOsJzaZaP8EDj7SQuay3eRsvTwgCqyRK3U7v1Ma0ynWRojgU
         fsHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sOH1DvdViHxXzi5IDJSauOb7kbtAum4aMBVxEfBSXrTdGtCUH
	dYlrZxxgjOfufATIvwSqSpU=
X-Google-Smtp-Source: ABdhPJzlxjew3m5ZkunJHR0qagLzy0K18U26kyPakV0YEqH+nv6rWmKlrKV1ngR3JPm8gkrlpUPKYw==
X-Received: by 2002:a1f:3889:: with SMTP id f131mr10666947vka.22.1612215504315;
        Mon, 01 Feb 2021 13:38:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f515:: with SMTP id u21ls2137572vsn.2.gmail; Mon, 01 Feb
 2021 13:38:24 -0800 (PST)
X-Received: by 2002:a05:6102:30ac:: with SMTP id y12mr10639533vsd.48.1612215503945;
        Mon, 01 Feb 2021 13:38:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612215503; cv=none;
        d=google.com; s=arc-20160816;
        b=SVg7qmqiziLQhhlU9LgO+h4hv+6qQBRRsIpZz73Z8IMI1i95M4Wn9Ro5oM4rNJ1qxo
         bvw3Xe2dndSAi8gnWAmdV1Pz0Mv/ldUu7hXX/Pi8KiskO0EbwH5ga0POkT+bJGW6H/vd
         exGbQMLTenXZn2L7bZ935/qnjalpb2EtHXAY8qD4beeAYqiS/i7v2qJH2sOj7SkPWuoV
         SE1EbojXHAtQZgMqunlPRGXrt6NEIPVRxpvbg58DmtBstTRHcoJng/seYu3WGZLauixR
         StKdaSAjtdBijRNUTX1mEsIOAeEZ0JI8d8IoC7tgSH/dv6KmQ6SzIo095k7WEtzrEjuE
         ab0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=7hLLuBN3vJnPglMTwqCa1N6UHLHq/lHYgpCcr6vMqlc=;
        b=S4btm0sYAMDdnY3iHd6gYYJ3hz/+EkvN63dNuqmK6u173o5ZGIhBkFSrAJSZ+GMrMh
         pOQPPqrOTe1CDM2vVzakH4WcKz54I6IdyWmbU78VyIE1QA8Wsshtt9BHLZ6PabPjgaay
         lCcZIX5kS+/1vmQNeY9rlL6f4HzKQG1T0i3DzuzbnT3vdZbL3ZOGLgHptG2FqCelQGnK
         R5EmqUn4ZDkmN7GCaiPTI0mH9CidV3LGsWzKIUm+GXhNk8ardNRq63FfxudgVnYT77PI
         Z8SR8gfpIdk2fSV9R+CkuShXIG7WoiXf8Joac9YBRWMz6avWXLtMIqI90suV93nNfhyb
         eunA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id y127si822755vsc.0.2021.02.01.13.38.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 13:38:23 -0800 (PST)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 111LcKLj027550
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 1 Feb 2021 16:38:20 -0500
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id F0DAD15C39E2; Mon,  1 Feb 2021 16:38:19 -0500 (EST)
Date: Mon, 1 Feb 2021 16:38:19 -0500
From: "Theodore Ts'o" <tytso@mit.edu>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Vinicius Tinti <viniciustinti@gmail.com>,
        Christoph Hellwig <hch@infradead.org>,
        Andreas Dilger <adilger.kernel@dilger.ca>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Ext4 Developers List <linux-ext4@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Message-ID: <YBh0ywVzkUIR3fXg@mit.edu>
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com>
 <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
 <YBg20AuSC3/9w2zz@mit.edu>
 <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
 <YBhuHJgZ3QPqHheV@mit.edu>
 <CAKwvOd=ny2TeYV8SGZMD+aj8Yb6OSYGKAzSb-45r-HKk6WTUCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=ny2TeYV8SGZMD+aj8Yb6OSYGKAzSb-45r-HKk6WTUCQ@mail.gmail.com>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Mon, Feb 01, 2021 at 01:16:19PM -0800, Nick Desaulniers wrote:
> I agree; Vinicius, my recommendation for -Wunreachable-* with Clang
> was to see whether dead code identified by this more aggressive
> diagnostic (than -Wunused-function) was to ask maintainers whether
> code identified by it was intentionally dead and if they would
> consider removing it.  If they say "no," that's fine, and doesn't need
> to be pushed.  It's not clear to maintainers that:
> 1. this warning is not on by default
> 2. we're not looking to pursue turning this on by default
> 
> If maintainers want to keep the dead code, that's fine, let them and
> move on to the next instance to see if that's interesting (or not).

It should be noted that in Documenting/process/coding-style.rst, there
is an expicit recommendation to code in a way that will result in dead
code warnings:

   Within code, where possible, use the IS_ENABLED macro to convert a Kconfig
   symbol into a C boolean expression, and use it in a normal C conditional:

   .. code-block:: c

   	if (IS_ENABLED(CONFIG_SOMETHING)) {
   		...
   	}

   The compiler will constant-fold the conditional away, and include or exclude
   the block of code just as with an #ifdef, so this will not add any runtime
   overhead.  However, this approach still allows the C compiler to see the code
   inside the block, and check it for correctness (syntax, types, symbol
   references, etc).  Thus, you still have to use an #ifdef if the code inside the
   block references symbols that will not exist if the condition is not met.

So our process documentation *explicitly* recommends against using
#ifdef CONFIG_XXX ... #endif, and instead use something that will
-Wunreachable-code-aggressive to cause the compiler to complain.  

Hence, this is not a warning that we will *ever* be able to enable
unconditionally --- so why work hard to remove such warnings from the
code?  If the goal is to see if we can detect real bugs using this
technique, well and good.  If the data shows that this warning
actually is useful in finding bugs, then manybe we can figure out a
way that we can explicitly hint to the compiler that in *this* case,
the maintainer actually knew what they were doing.

But if an examination of the warnings shows that
-Wunreachable-code-aggressive isn't actually finding any real bugs,
then perhaps it's not worth it.

Cheers,


						- Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBh0ywVzkUIR3fXg%40mit.edu.
