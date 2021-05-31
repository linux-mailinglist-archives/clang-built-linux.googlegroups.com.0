Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVNC2WCQMGQENCN5V6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7DF396933
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 23:12:55 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id a10-20020a65418a0000b029021b78388f57sf7634614pgq.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 14:12:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622495573; cv=pass;
        d=google.com; s=arc-20160816;
        b=qeFiPW3eV8dHv4113qt2uqp4fsvsGM0pCHzQmSoV/JzDokT93cJLbQI/UsMu1lxcps
         PgjopjxJd5mxsPYQa/MdTj9pIM2+Q9CbVNKa/m0olBl5OdVm3iMICz2SEQZ797mRuOpx
         9fyNoHLMGV3ZTw1g6bUZVZFxc1H8cF7psExmV1ocR5UNirb9P8CkUa4/11F3fK+Gj+1d
         SHakeOGC3Z6k+l6AtRzPxralzppZph+BKodbAfBBWOef75HShY9DXn+kUjN7MKTf6kid
         GLZbr/VcUZ77KKKDTG9EIbygBJ0ROIoDtB2lKPZyIOlGcKhw6X93OBYIeP4VjsKlvIzm
         uRnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BcJ3vaD+GhHPd4CiZRhw5bcmqe+eeXONJPkfLFpgm2g=;
        b=Tjz8poVOJXyihBTewtnD7CNzmiMqaaFcCiqrFv3gnbJeRrhERS+EjLorlZ8yiqFfds
         yJO+1sus6WKZSKGt18NecFBv7aq4rG9fdiEt0pIHMq+1Wbo7AdOvD303g2F982heI/iO
         4br7QNCBRPq88A9XBFN8caCwOum//qh+tpai3X6LB+Ad3cRiFFXJsZdN1OAWJh6j3evg
         8cgaFOXtBhyU06Kp31hcj+EhfJa6Wq7l+NO1srvCP6BU9zrJ+dqOR7DEFO3XNFHXmuYT
         mCxyimgWfccEBMcMUtMA7Qd10XSmn/5cNn9Hf88+rT9Jd9G9AjRomDdI5/cKAIr0IINs
         PdYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cGb59gez;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BcJ3vaD+GhHPd4CiZRhw5bcmqe+eeXONJPkfLFpgm2g=;
        b=oONtjGrXDydfmqpsNmDU/QoP+d8ku1cbQTkHjbeUjluGysN7aZZiW4kwVfplni7FDy
         LYou8xd7VgRfrwFS0EXNiTFCDfCVOb6xqkECYP6SDZdGlyIpGp9/a19Jr9qHohXU/O6d
         hyulBjy4roVfukH1NyEe33Mz8VBQivA2cP6+b37y/CzK7XmTSn1bD2TdtgwJq2jfdhas
         kWXwcTkADKnOQmW92ygu9s07uy+4amCVB+k7Rxyj5Cj8XU8ZWUkjcnbFl51zIj1Meh5l
         GIKEPhkKFIuStX8iX0jVZ7or190BGdWFoiwRvYG51Wym43AcBpB8/HLXENzwOMUFMOO3
         +DBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BcJ3vaD+GhHPd4CiZRhw5bcmqe+eeXONJPkfLFpgm2g=;
        b=hj+2iRePmJnp4XZT/rSfOqMUY9+IrenQPv9IQ8YuHZy/FoedjrSV7ZXyLxEB+voUoF
         qIebg1jGUtcqnYp7E1YQT5ojbleyyUQnEeKxDLoAZjMQpOzFhqY51qo24H3l+MF4ArWt
         RHQJEzXWVCwhcvWu5txu1eDAd172u+y0waa+q7RMQjFiaOLmKyoh41bt6m5+Tq7gcFUW
         pXBIgyCGTMQKi4xDpUjGyi0Hjg7+hxzAaqZIs9A3ndKgWDEq3pJXH2q9xeUk5RtRPZSR
         hU019RNmzdNW2TUnT3RUkpH84UhZ9+y6ZOYeWV6VBKJZszU9zaohlZSQG2uv3HtCpMsE
         jUQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ayNwMeg/0PDoODvfZkJO+9f3/hb3Zpees9TDdjRJ/zYaL3Gk4
	K4SSLq+Lxgbu9Qz+PH7Gv1w=
X-Google-Smtp-Source: ABdhPJyL8kv9N05eQm6AXlTYeMz9wkK8WgAXfQam86Nk0zAVUK726utzQKz2+LyTZvuapmLnQ5NRHQ==
X-Received: by 2002:aa7:92cd:0:b029:2c4:b6dd:d389 with SMTP id k13-20020aa792cd0000b02902c4b6ddd389mr18787168pfa.2.1622495573269;
        Mon, 31 May 2021 14:12:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c40c:: with SMTP id k12ls6912766plk.11.gmail; Mon,
 31 May 2021 14:12:52 -0700 (PDT)
X-Received: by 2002:a17:90a:1c17:: with SMTP id s23mr1028538pjs.120.1622495572797;
        Mon, 31 May 2021 14:12:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622495572; cv=none;
        d=google.com; s=arc-20160816;
        b=asbJjbAPz4zG7yXaE1oOnGgnBP82smIj9Pbv8prZDt7IKk2LFQ7icRzIncgFXnMcQw
         tcjU4XMeH983SB9tioQM7fyYyufBpUZyHPgD88t7QXrn48zeJJowTkhlK02zoeysthZB
         6agZM5/07schmaNPiRbXw2T0EUPGqcQ/EW0swYW+p1u6PrAxa+j+SB691giAKcz/caQK
         sJ+TntAYYm9aNychBT0J+nDSO8lmUZF60fvIZvxS1z+enDk163fwFCQI2V2mDbVBAOP3
         zvibTYkPkiIWChdEtyeQ6+W908+7h79Kj6C10D39wENu8bc5AmyelFb8J4z9k4gSN/eS
         bwTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2IPrEduQEcZJqHs1ZjFlDEMkmTy8eu5XR7vfVM1BI3Q=;
        b=K5QzqSRSfj8mDNkRIuBNx0y4b+JoZl/6r0QsXOGw+XUFlTnQ8oNRJx7blVSefFDgOw
         XsFMtDXmUmjqeNlh1euVwAXc/5nHgSFPVmW+VBtpvEYc5JTDmRXpPB59BXcW1e55vYIV
         r50iQB3ImLgLSEJbM2VmrvZlemuc0LmgHu+xE67gs3R5g4eZBOIJFjJgWzmBEmp3SEBh
         UzWaXZi3iYjnENbFOd9zbp/Lf8jKhgX4HXxrqGT2fWAZ5D+9On/Ym9XzUhWhMZbgrSO7
         RBeRyZSvK0JqWWmUp58DTIZ/7MA/cbSlHqLN2Of81Xul0SkAaARB4+ymXNiVL8C+F7v+
         +0uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cGb59gez;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si1021353pfc.6.2021.05.31.14.12.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 14:12:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2DA1F61260;
	Mon, 31 May 2021 21:12:50 +0000 (UTC)
Date: Mon, 31 May 2021 14:12:46 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <YLVRTilQ5k5n+Vmz@archlinux-ax161>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
 <202105191422.2E6748C4E0@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105191422.2E6748C4E0@keescook>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cGb59gez;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, May 19, 2021 at 02:37:26PM -0700, Kees Cook wrote:
> I've added this to patch to my -next tree now:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=for-next/clang/pgo&id=e1af496cbe9b4517428601a4e44fee3602dd3c15
> 

Would this be appropriate to send? Someone sent some patches based on
this work so it would be nice to solidify how they will get to Linus
if/when the time comes :)

https://lore.kernel.org/r/20210528200133.459022-1-jarmo.tiitto@gmail.com/
https://lore.kernel.org/r/20210528200432.459120-1-jarmo.tiitto@gmail.com/
https://lore.kernel.org/r/20210528200821.459214-1-jarmo.tiitto@gmail.com/
https://lore.kernel.org/r/20210528201006.459292-1-jarmo.tiitto@gmail.com/
https://lore.kernel.org/r/20210528201107.459362-1-jarmo.tiitto@gmail.com/
https://lore.kernel.org/r/20210528201213.459483-1-jarmo.tiitto@gmail.com/

Cheers,
Nathan

======================================

diff --git a/MAINTAINERS b/MAINTAINERS
index c45613c30803..0d03f6ccdb70 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14378,9 +14378,13 @@ F:	include/uapi/linux/personality.h
 PGO BASED KERNEL PROFILING
 M:	Sami Tolvanen <samitolvanen@google.com>
 M:	Bill Wendling <wcw@google.com>
+M:	Kees Cook <keescook@chromium.org>
 R:	Nathan Chancellor <nathan@kernel.org>
 R:	Nick Desaulniers <ndesaulniers@google.com>
+L:	clang-built-linux@googlegroups.com
 S:	Supported
+B:	https://github.com/ClangBuiltLinux/linux/issues
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/pgo
 F:	Documentation/dev-tools/pgo.rst
 F:	kernel/pgo/
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLVRTilQ5k5n%2BVmz%40archlinux-ax161.
