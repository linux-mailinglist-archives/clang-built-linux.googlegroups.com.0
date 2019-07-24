Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBXES4DUQKGQEXOQWEIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBBF72911
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 09:31:42 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id k13sf38637753qkj.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 00:31:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563953501; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z6rN/5o9qTgTBhYAn2CHFdMxeQqz5ouCUKHbf+JC3tUiXh2LWbLgpjdZfABiR6vkhh
         D4j0XQQr/gj3ZEWWdKOa6vz9vzUYv/NOIpXkRKPxNoxbP1d0VCbGasMcw5SOmXTZLlXC
         TLh31znYMy9twIYlmP+/X2Q3bP1yDR+r6HaxMjyM9nYOC7U41d/QI/rfnbvr33TWQ6vm
         4ZnqbxqkXNKDBDzunQZdiNBCQe6zG/WHZlK+uJlMBoqbpC4WJ6J75ePPfaDNowzMAbEu
         G2/fVVcEvbJ1m3iVCJ7PSkBbbGitTr1h1BzDhUuELknDBM28xfQQ2Teckj86ahT0mwV7
         HY/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qI8lRcv+qAYJwCpBghaduHSfAK9MSgjRhNIto2UWzHU=;
        b=pxbi9dpilQ5bVuUCyHGfgfy/IFNcgujPPjHAWMuqGv1ca7c7tAhTYVYaKLfDAriFjz
         OSQbjfIsjC7fF+jKdKWRHcZGDTJUX+3FIT91N16TB4amwdOCf132mK86mXBwJ9Gf8nr/
         xWO8NUIc/V7zBe5R5M8Li1ojIfL/plM7yDv1o6PowOMf0yzu9+eJYFGWW21zXUFTXRsO
         zXB+LGRW4AK2KitMC55it3Y+MMrTfFdx8X/D6LNGIt0UTOnOjSXrEYpSi5UIOWca/OX0
         J5TJ526PgA0RRyjgnJ5dGuHE7gQsn88rJaaXa2HIwouT9w0Kpqk4zPFNGIJgyfYyxYzl
         IXJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="gU+U/zF+";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qI8lRcv+qAYJwCpBghaduHSfAK9MSgjRhNIto2UWzHU=;
        b=TeSnu68sXBqI9bqNt2j/vUnfsMnPczCgVE2p2OkREUbGZWmTvBxkpCprtimXZLcbeI
         DRvBpJzJojPXREc3iiF5cWMjTa0XSCYDxSK0Yav54H5EriH3xtcYtkyctGdg91dZcB48
         ocfcDS39FAnzdnLMcAidA8+q98EOWWGq8Uma347xZe0ogvAhbudHB9im3zj85i1f1uh/
         8jRMyJ8NjPF0eZOpeBzcR7qDsKVcdJ2dHk7nooAxVHD5KuklBpyiGUxBSIUxoEMEAIgd
         sc51jykgc+IAZsDXv4TCXTuLlR3phTesBuBN6EcfkA3OB1H3zGFov1fg0bmI+M1vjWHc
         JS/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qI8lRcv+qAYJwCpBghaduHSfAK9MSgjRhNIto2UWzHU=;
        b=LQsjkqCoPRWCUIb73VHKOfCZ+bWVouraakQ9vNJ98Mn0N3t4MsfTuDqYR5F0Vreepe
         b5O8lk7UTRPaLxt/p3qNnVhmz7FX5IAtg5ryQ1mDKYlifd495iINVuAk+CRnZeks3fOY
         2mBC62p2iVxYRL3o37gdL9R7wTfHcxzPUfCdj6MMegiduPW2yzEUkaDnEcnWuoM2HybG
         Hp6cI38jpj1qTjkdwTA6cssVI8PwNaKRAEmgzkbNXs7gP95Q9Z6HOP/0ZhEB4RFgb8g6
         xxqVUuyHzJut9mJzhmiBM+SvTjiTek4jIX2VkXKzzjDgOgdcPFe9PVBLyYsw+6jtrnzT
         iZIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVgd+nE81AaoSva4NbLoqN8vO746Bov3RFHMW3IBfC2Fy5hcje4
	Y16Gss0szasYPHz7tDwAnS0=
X-Google-Smtp-Source: APXvYqz5eQ8TNpQfZ6LcoQMxZRq3JP2h38WdWtVdse46HijkJMEgUqbH2QMyFxrPRACyp/ZWNt4+Jg==
X-Received: by 2002:ac8:1848:: with SMTP id n8mr22034247qtk.147.1563953500914;
        Wed, 24 Jul 2019 00:31:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ae51:: with SMTP id z17ls7386189qvc.10.gmail; Wed, 24
 Jul 2019 00:31:40 -0700 (PDT)
X-Received: by 2002:a0c:99e9:: with SMTP id y41mr56572164qve.186.1563953500675;
        Wed, 24 Jul 2019 00:31:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563953500; cv=none;
        d=google.com; s=arc-20160816;
        b=vebYXawGmKUw8ak1+4yR0OMCPgLnoseNvQrnWgo43gYCOTTgsjkXNRBTrIUVEonkZG
         GHY/6mCZyqMdLK0YqFbmMpl363PgqObstka11fUE7HkAoRzT0FfSi7N/YbjLeunBReO7
         3Ntp4hwDkexuxdoxPrqP8qUzJerpHFdxNKtyETteKdRCpgWWz5oI05iTPlVcO+/wg60S
         oRu3MC0YkQg9NTNqNl6gp4Rx/tquL5KhKio/LRHGL9+FV01nM5KY3o2XRcC/6HorGOvi
         lVlsjPYC8L3bD9eUwnLjAdkK292rmfm61hxZKoTq1FoDJ0zkwF7DQZBcYtE9JvKnfbV5
         VkFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rK6nQW5CxubGjo+KYKz34q25ReCu2Bwr2lGkque7Bz8=;
        b=homZvozBEEhlcbuMNgEw3nhuMxqBoFqva1KQEFDj2l4zO46JmezTLd5dCypv6sJffh
         rir4iqTVIAL7xyDfyFGxN/qSxELnmD292PL/hanmPih16+k4f2jT0spJ9CSOWG0gG2Fn
         /EMGog+pipvvW2CaZnV3JzAjOz8nc62Amh/LYZPj1XbMV/LVolsvx4I3C38Af9YXfI7/
         EhpWrlL0sVEeBitAcnCJUGJpMOCiG6Co0IinNItY4WoWEBBReGaqVW5z26X+2at7hKIG
         zawJe5jMFLDreyStZJYvn1ojqMeX+MT6B5RI9FkF2nT+5T2ga4NYIFGI14HtS9JOOp+B
         nJ5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="gU+U/zF+";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id g41si2113721qte.4.2019.07.24.00.31.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 00:31:40 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=hirez.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBkK-0001Tn-Tk; Wed, 24 Jul 2019 07:31:33 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 5C2F8201A93D3; Wed, 24 Jul 2019 09:31:30 +0200 (CEST)
Date: Wed, 24 Jul 2019 09:31:30 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] [v2] waitqueue: shut up clang -Wuninitialized warnings
Message-ID: <20190724073130.GH3402@hirez.programming.kicks-ass.net>
References: <20190719113638.4189771-1-arnd@arndb.de>
 <20190723105046.GD3402@hirez.programming.kicks-ass.net>
 <CAK8P3a3_sRmHVsEh=+83zR_Q3+Bh9fd+-iiCxt4PU4gkx0HZ7Q@mail.gmail.com>
 <20190723202159.GA79273@archlinux-threadripper>
 <CAKwvOdnbDFkDhCz3VMM_A8D7VZQH5FubJpS0OTHBJJdS-WKPww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnbDFkDhCz3VMM_A8D7VZQH5FubJpS0OTHBJJdS-WKPww@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b="gU+U/zF+";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Jul 23, 2019 at 01:54:03PM -0700, Nick Desaulniers wrote:
> Note that pre-clang-9 can be used for LTS x86_64; I don't think
> CONFIG_JUMP_LABEL was made mandatory for x86 until 4.20 release, IIRC.
> There's only a small window of non LTS kernels and only for x86 where
> clang-9+ is really necessary.

Given all the code-gen issues we've been finding, I wouldn't want to
touch a pre-9 clang. Irrespective of wether it builds or not, it's
absolutely unreliable crap.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724073130.GH3402%40hirez.programming.kicks-ass.net.
