Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2V7WKCAMGQELNOJT5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 562D537045B
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 02:25:15 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id 65-20020adf82c70000b0290107593a42c3sf14794823wrc.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 17:25:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619828715; cv=pass;
        d=google.com; s=arc-20160816;
        b=hIG8B+8cg7fNYg0f29v78+Pp2aeVxdRfbDWEWliWiVIhfZMoKI/zKwOLC658i/o3V3
         lpbpq3RjP+uf541ulXw27tRmD1Y1H2DRavDo3wJeVQ4CcoCz96+WDfStmGaeEPbgi1mx
         rF4QU2/N84e36bGPSw48yq+WsZBK++p/NnyKuqeftKU5yAzE6jR7aw4jz4hFi+mV3oEy
         UrWE8Q5GO6t9UWEQBtofgk6fYEXQ2w9V6driUUtd8mAsbI9Fo+xSt6nHXZTl7gtRaNPV
         ob0K+PrJKqyDj0rQj60pxond/9tI4aSwYwWPDTcrOSTVJh3OIWe3SQn9RI7/kJTHcfZA
         ZR5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fl1IAqhNN5WTM1THB8CpkCPCZJFE+TeoA7TBeB5Xn88=;
        b=BnIXnfoFhkw17OPEjyZOt1/peZ7lVKs8rm0ZCal0NmDIFjMU8zneaiPevQj5iFUQ/a
         UbU0OURHIbA4AXAj0nJaJhkdoO5b0ASsDfThMafvGbTq8EIV0B09p0mWTzx86svcC+2b
         xVkyoiXJY4Xeggs3gpGb0+smJzNXCgjINsKU5ukFE0g28P015KcwQ/qCnvVXaPlev1wq
         xCXTypEdGjmKpZsjgLN4kptx5P5H8k8kSm9aM8tN8j4PLZNxgMxnSc8GujycEyigrxAC
         oH+IqW2z5T6VNHnaNpxKT9i1I5c4HaG1QyqjzWCSTfxdS49inVivnjHa54pEKVM3M4vU
         xg9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ovfeJotq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fl1IAqhNN5WTM1THB8CpkCPCZJFE+TeoA7TBeB5Xn88=;
        b=ZqwaSUy+sK1Tja6MQr3SYeD+lOmuoaiO3uAGfty6zkRpEUfja2UUcnP15ond7ftWOK
         tAHKqJw36dfCpbFS6EmxmBZHpsnfzfT+hPPv2EaaOq8aHfwmeGKyhZd+bvVhwdo485oB
         6WbV0E4egFYKXQyr3+C6uWQyi8wNcr0q3n4eb1mUK2UK+WBzybLLE6mjyMaHB6ce8GLV
         9s/UG90G6YTcif1HSOkgiy3wn3s+0aJL6c9LpKBUByS73PunbH/1LMCZxqAAiywflCl5
         aMh2zOTvve0saeyYRkzJ7iPWQNsNOTQg5Xo5VJU9wiMLccSeb7Evcm79i0QyQj3Q7oLH
         TguQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fl1IAqhNN5WTM1THB8CpkCPCZJFE+TeoA7TBeB5Xn88=;
        b=IgGo53XudWC6alRodw3k4/dMQDq9ggiUDKw1jFu2Rn+MU5TGJ6UCYz6BW4IhhiVf0R
         +kMkxsngK0+XJau3c1IEsfDenFciuhcXVytLlV/pj+EfUZuKXtp/4h3Vw+RUBR5S0XsG
         FhnGbkBmdHCHY1vZ0rNZ1Psg9iSi7yiiE5V4KGnwq3jYcf7PC70CnlcUHzU+eIS4CMmG
         VqPCl0OXi0HsYcOOK5BSjaaM5T8pC1cqpEb3dGIpG0ifdVYmSDE9VDA5kcTrHxteuFvL
         B2J9BSKrl2JbqnrJlvMQ7NRFq6JL7JO9AUUM65Y/MzGVKj36WuFvNRP6emFbxAa932Y8
         Rihg==
X-Gm-Message-State: AOAM533/O/deZGTMC71tvlp8XNTn0+BlJRWLVbckq+2zkaSTz+C1H6YG
	kjCZh3bCmy17olmXhhYTs48=
X-Google-Smtp-Source: ABdhPJwIcrjkFvyEsSyth8fQFkGsO04roaKok4zSFbsmdamlXBGtAwq8Gdxe1ccsFcDSVeNXwhI5Ww==
X-Received: by 2002:a7b:cc11:: with SMTP id f17mr8969985wmh.159.1619828715166;
        Fri, 30 Apr 2021 17:25:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2314:: with SMTP id 20ls3577324wmo.0.gmail; Fri, 30
 Apr 2021 17:25:14 -0700 (PDT)
X-Received: by 2002:a05:600c:b4c:: with SMTP id k12mr19405063wmr.186.1619828714375;
        Fri, 30 Apr 2021 17:25:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619828714; cv=none;
        d=google.com; s=arc-20160816;
        b=ms6vD3bof17t3hk8lWS1AbNsnVzgJsYJrTX0AS5HvxvJiDw6Ep/oQtzAPgVh/k8yhv
         UVCXzS6Cf40hFrTMH6925+6Gvbw59pKJz9e1CnInYlBLQqYuGXyj6AAcibpIETWoSeFE
         4TI9ba/NKlkTBoq0/e7bgoGHfgn4pR9JzPcmvH1wJllnn5RmKmvgAiJ/IUNQ0miIKZKG
         3B3AdGWj4KD6CSQ0eYVaL6sZiGL1DM9VyU7zWfzPl+vdgtkaYPR5cH7RnfVtbU2xRO6Q
         JVFgtuzEQWCNXmGyXj5V8b8E7MAoZ4L4IHq118lyIXX/+ko5BVaqJcoqjS2ExmOgbpjz
         BPOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nUs/JERTrW3HUrDL/wVgoAkdrrpfaLfIyhV+eubJz2w=;
        b=DT7URqHqNot0W/af07fISHXI7+NLmAt+N9w4fmd6QRIFLJH+17GfF90vvEe5uC/3zv
         Bpg7s8sI1/VjW7LSrdSdLROp4hxL+4R+h/FLNHyat4EFKttjFWsSm3aKlOF3gkBkENBy
         wn3cSGXYT2xYdsSDoXmRycODtmekTwU5nGeF5bTVkTLnFBNu3jmIILZK75hPkKqmZMiZ
         GYQlOsr40LYUwmM+Dg3NtNyBrLyF5QkKwx/8BIRy7cwyhc4+iR63mgqXvdEVSu52Gfbj
         fY3Ks1FfBLbkmVibboWElJjSRqm6WiMYHtdLj8xxVPF7rnB3kUBhYV//QHZ7ePrSqLfs
         TsAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ovfeJotq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id p65si713339wmp.0.2021.04.30.17.25.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 17:25:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id x20so82408476lfu.6
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 17:25:14 -0700 (PDT)
X-Received: by 2002:a05:6512:94d:: with SMTP id u13mr4794407lft.368.1619828713748;
 Fri, 30 Apr 2021 17:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com> <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
In-Reply-To: <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 17:25:02 -0700
Message-ID: <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Linus Torvalds <torvalds@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ovfeJotq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Fri, Apr 30, 2021 at 5:23 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Apr 30, 2021 at 5:19 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > A quick:
> > $ perf record -e cycles:pp --call-graph lbr make LLVM=1 LLVM_IAS=1
> > -j72 allmodconfig
> > $ perf report --no-children --sort=dso,symbol
> > shows:
> >      2.35%  [unknown]                [k] 0xffffffffabc00fc7
> > +    2.29%  libc-2.31.so             [.] _int_malloc
> >      1.24%  libc-2.31.so             [.] _int_free
> > +    1.23%  ld-2.31.so               [.] do_lookup_x
>
> ^ bfd


> > +    0.63%  ld-2.31.so               [.] _dl_lookup_symbol_x
>
> ^ bfd

Ah, no, sorry, these are the runtime link editor/loader. So probably
spending quite some time resolving symbols in large binaries.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkp_P8BCtFuKqDrtC_%3DA89ZfDf66Yr3FL2e%3Dojwv4KaMA%40mail.gmail.com.
