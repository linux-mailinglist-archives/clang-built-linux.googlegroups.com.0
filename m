Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGNP5P4QKGQEQTTX76Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4062474DF
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 21:16:42 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id b6sf3928725uak.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 12:16:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597691801; cv=pass;
        d=google.com; s=arc-20160816;
        b=l2xK1/9vH0t9Ih2oA442trZjuOzj/bMrckhNnSYEMJOLL4vnyydjSBdBV1TgTD9hFv
         3k9lGhl5uDFrW+M4l/4OT8lCMbvKAxLb/HjYJ5Wv2/CNVWkuB4ylvI4/YhRAIhl8J/E2
         31opjVWtS++J2fKdzqG29NUVwc1TBr4eO4HswDVTOVNmb3Qf4XWwFtqG3+4JVs8Rv8xt
         umyBcvflv7PpvnjgV2ygZzLKXoifVKmIfD5XjazbrfoAYfj7fFPUze/omOeK/TJN8GnP
         eVFpN877iqgbEvEwDTQSrviQUMSkdRLwkYzgB6MRqmWi3BUc0xbqJmcO95nEl/ucBjsA
         ElGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=J8IjZh0JoTWlm54RY7IarajNRONqQIUoHhoinPGgC60=;
        b=MWMEfjQeaaDVtXeJURIclYJvMBwgn1R6nlxEvtJU50HycUYftGpugxVz5Wq4AQNfzc
         /pFNEB+xtpj7EyNLTqowZop6qQEwILcX875LFbV4L4GlaQ0aCrQaymyO1MqifDOJhL60
         ASA5rfuLpo5Ua8Hw82bXjxPfplAzpTMrGgLWW2yLmnxkuwWw1vzit6EyUgt4dfoUiDt0
         nWO/z6/ucUZD5+O1ixF/SOm1tcw5IPXU9DYzcSq1FX6fYfbA5brrq5sjLEZ7QtkA+JBQ
         d77cTnQuFZLduOq77Z+e70aX3/wBP016REwGnJkZU67zepRZSGYVZo9GpH1QYEQjq/a5
         JrCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AOzQ2918;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J8IjZh0JoTWlm54RY7IarajNRONqQIUoHhoinPGgC60=;
        b=jn0ztmaARwLVJt5UtS9Xl8dOSGKQVZQ4jsspsBDexux7SFeG6ZlZUBSm7Ymn7vjsV9
         O3EICk4Uw4CxUuf2aLmNXXyKEZY706Ntmdocwzs0p5yhhkzhtQ8FKhUIJmlkE3onbgDJ
         BS1VL8KNqPj9IhmJdqr/CtHR2lT0aspXwN9mMl1IMIPUwMTr3mcvlw8L7ez/oA8xvUCl
         RHQmdIkiDshcqN1K1Y3NEaFxXAHT0bFiROo3wLsprwgxkRocxjPQF0w6kCQdQVNvyLUz
         cN0PpJifRkgJHAh0h+B0fs4gdxKG3COGhbgxHkxaHs1VavUP0+/vlfMjqlBhJ+O6D5z0
         i4MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J8IjZh0JoTWlm54RY7IarajNRONqQIUoHhoinPGgC60=;
        b=FQ7w4JUrOhWjT5ROVwFY4v+KMPh1fEt7bxkVew38NhnDy9sCtY7J1KbR4n4N0ICPVH
         +psrrMbXXLJYr8hbXKwTQ5RaqlNY73CQV+ljjcdAyUxAa0yBhG5bFnyhiqjE589xQ83X
         3VMAILglA8K32fhnAQvZS2MrzIbSv+EfOshoHr6bfFxZbOd1/F7ymB3i7gdZTmTdMcAv
         bxOPl/xTFg0/XgWoccICtN34DAn4ucLwfjTU96nmiD4GnhqZ9amW98Xdj4JrSad2pK6T
         wUfNaFkuALh474TjNC9pGsktVbfvOnXoNv5JJE57RKrpOCYO3K5pw1UjeC5Y6zhJwth/
         hQcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YgC8JgF/by1sm300kwFFVORdnJBl6aGfLKybyrkrEUs3VwaxP
	iGGTxQBL1TIrUTN62ynuxOE=
X-Google-Smtp-Source: ABdhPJwDQHqt8Z0ipJXYJPosErfe6EEbsRxa4QHjTvvRuYJ4364vgR4XwKjvFsZRzS2vYvCwNdttWA==
X-Received: by 2002:a05:6102:3025:: with SMTP id v5mr9378962vsa.194.1597691801131;
        Mon, 17 Aug 2020 12:16:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e40e:: with SMTP id d14ls2015747vsf.5.gmail; Mon, 17 Aug
 2020 12:16:40 -0700 (PDT)
X-Received: by 2002:a67:7d8b:: with SMTP id y133mr9869855vsc.87.1597691800799;
        Mon, 17 Aug 2020 12:16:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597691800; cv=none;
        d=google.com; s=arc-20160816;
        b=gwvHnUODZ683o3bvr0wnZ91i/b6gbh214IURTN981g0oggF2E4WGQe6P5AuZw9TwRG
         03L6WHiNOyJcYRpOmb36zmsR6KEjemJiPybqsX0LMU2l0JQGiNY7H/HikkODYXuVlJkN
         UqZZ6SooX6HHb7HlhkGmUfo7LihBPEOsctmPQrEgmj4LiNetJnD/wo1Zx+6UGvML2VOJ
         myIL/oTiOzWWFqBGoabqbpafKX4qhH8XldK5egVtdLacyDXmoNQmJlWrfu9a9tw7h0Nq
         owJM/0mSa2+A6SfdD1UfpmEJmZwL36mYjzxyBTlz75CC/PNjYQLtiM40175A4ko+gL5f
         cwOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iGRzfPyw7ESx9wXeagb3xJwksI9OtPsVQy2m4SGV5Xo=;
        b=u0NPdq2sR40ZINbbkAgkZPrVhK/uGB1YCJOhP1vHY3vAh+fPXPkCqZKLYEjybB8/78
         XEbBI+bpcM+pusZZ+vwbZ/ZulOAlXYuYuxsojd5iHYkqTQ9q+0c9QY+BvSQm+XkoGvI1
         gjOC8kHKrM0Ua2J8ESGlsw6gtsJclWe2yOTa4+2ztxQk4bJUdZVQTxlNfvPrC+6tPbMb
         YSqUz2mLDuhkfc3ETnZyTnwd9yY/iJmklSo4KK1BL05uQzJchqa11ZoreLJDnbRZfo/I
         Bp8SDKycrnQf9R9UwJe+CzXPtPinNmSdiYbFALbbcDziPVynAgydO3YKOjODjs2ayf6W
         kS/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AOzQ2918;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j18si1316445vki.3.2020.08.17.12.16.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 12:16:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id f193so8692116pfa.12
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 12:16:40 -0700 (PDT)
X-Received: by 2002:a63:ff5f:: with SMTP id s31mr4115897pgk.333.1597691799926;
        Mon, 17 Aug 2020 12:16:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s4sm20767427pfh.128.2020.08.17.12.16.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 12:16:38 -0700 (PDT)
Date: Mon, 17 Aug 2020 12:16:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Joe Perches <joe@perches.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	=?iso-8859-1?Q?D=E1vid_Bolvansk=FD?= <david.bolvansky@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>,
	Yury Norov <yury.norov@gmail.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
Message-ID: <202008171216.945D6D7D11@keescook>
References: <202008150921.B70721A359@keescook>
 <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
 <20200816001917.4krsnrik7hxxfqfm@google.com>
 <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
 <20200816150217.GA1306483@rani.riverdale.lan>
 <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AOzQ2918;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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

On Mon, Aug 17, 2020 at 10:14:43AM -0700, Sami Tolvanen wrote:
> I just confirmed that adding -fno-builtin-stpcpy to KBUILD_CFLAGS does
> work with LTO as well.

Oh, I read this out of order; sorry! Yes, if -fno-builtin-stpcpy works,
let's use that instead. Doesn't that solve it too?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008171216.945D6D7D11%40keescook.
