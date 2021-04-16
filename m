Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBZ4U5CBQMGQEIE7CLQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6161D362AB8
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:06:32 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id h2-20020a17090a6482b029014e6c039e61sf9717332pjj.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:06:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618610791; cv=pass;
        d=google.com; s=arc-20160816;
        b=OYAuSsbzi2CiOQScd1MlOpAuZPsKBWu8hFmuk80hCTTi9Vb8phmaEOqkNFMLQC7b0+
         WGv5E60isWaDhZ/aRxjlQdpoFz75JCyICX7Zprqm+TvR0zrxs3T/MO30AVL82yGerhYP
         WsTBMtllQbOk+LtZh3cnCuR9gNj2ug74URjb6eoB5fYUu9QeMookwqmLZpgW8CyIkT1u
         GdCWAy7NUW2iiWHsIQyjJXeL1XU6EfKc9pMqwlfrpLUp60nJpEQ0Sm9D1vUCnR8YYR27
         HEzTLInq4Nk55pj8TJweIXnKe+icRAqQ5shb6kimAHY5MHYsvVtRmdKG2D13hPrWhj+u
         jomQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ulUUgYCNcmkUl71Ry/z/Xo2as5y+KMadg/Kc5ST4aoM=;
        b=bwCHXjbNQNjwdSUEhP9JIB24WAQxTWJUI6JPNJoCnyovDqXpe9C6C/f8YuxY1pO2KK
         VP9wXG+zFhgMQWdqXpXuRbBjHgFg+qbd7Maq0HS1fBLdDtxjJOd8jH1w79E1kuIvwizF
         AAl7AFpl7i40IhPMApivrgIX0r17VnJ0cmuYq+FEovj//kRF5zWghA6ftpSji5kFeVev
         JYKX8XnoUBfuELrTQwHkP0BMd9H2TjwdINbTR4VjEgVTeP8qW767xJe9kYKWdFMb1dm4
         ytSJ2iHS9F5EUPu1g6pgFfGhKjlTbsnnd0zz7fcU+j4jwNHIZvWv1iFbGcUKOTQbDz5x
         GF+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y3R2rSFS;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ulUUgYCNcmkUl71Ry/z/Xo2as5y+KMadg/Kc5ST4aoM=;
        b=YVt1rO95IRkKAizIGvxC42UBylx6Wwg+c6L2F6Rgc6KGZaW/JhAq7QS6aD7H0AjlLH
         6Y6Tnxm+dwXXwcXhiXnPiP+SNBoYdCA/tNDR1JzCnJFSlCBL1sS3Ah4D1cJY0YKbkYqR
         Y6ROAj4w/EpzeR2rIIIT4vRv0U4sLkHloBUZjCBGG7gr5pbKsmQInaLw5LkmcPyTwhuo
         w6h1OSAvVXI5c6gdqTW+r83urbx339tdvseW9zya1KR1/nPmC+2D0ChyqD/IuEs/t6BY
         S7zq5vCVklFp8vVa85RmC5SmXnnHpDirV3xavUeAtId2WxccXpMhtA8kBYZBFYyq35M8
         7/Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ulUUgYCNcmkUl71Ry/z/Xo2as5y+KMadg/Kc5ST4aoM=;
        b=GAfo4tiVYJadi4hrCJCRK8/T53EjmtutoatjYPLMNOOi0YfFCVAuHHnyLg5OOE4DxC
         7ywZLf4EuK+t8LJpUEg7EU+Zz/PztX1QPTGjEafa4VDYNl7fp9HhLFioOQD0ETj7qkA6
         Qxt1JOlrui0LydQOIpmeA9hNu76bEUzUMzCwCNdYoeFu3vPfTV98buht3WbNOztGoA7M
         +h8Ajd9icwh7qnk2Ogdyf47DV9zzi+sb81VPvB06w1fmTeCfuJiJpqyr/Yr9p+RStFPj
         pl/+kMN46JVHeNTqOnFSLKEoK7pIN1tXRQko1cZI/mRLG/aV63H23NRDUohwO8qC+dc4
         KTzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533p8EO6l2L1ANb9Lcq3a96lj+t80UcWcS8v5l+9CC5hMw+eTe1Y
	vNl7Y5EcvUZdFM/6NdVhbck=
X-Google-Smtp-Source: ABdhPJwSCKTE55uX+sDj3W+fi3tKSvTBSNUh25+nEo1/YMNfz/c8mbdqfQYmUsYMsEYAETfODNGYLA==
X-Received: by 2002:a17:90a:af91:: with SMTP id w17mr11944723pjq.205.1618610791156;
        Fri, 16 Apr 2021 15:06:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1315:: with SMTP id i21ls4107357pgl.8.gmail; Fri, 16 Apr
 2021 15:06:30 -0700 (PDT)
X-Received: by 2002:aa7:88c5:0:b029:24e:8807:e4f1 with SMTP id k5-20020aa788c50000b029024e8807e4f1mr9571371pff.9.1618610790629;
        Fri, 16 Apr 2021 15:06:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618610790; cv=none;
        d=google.com; s=arc-20160816;
        b=HQIQ9uZ+bRWZ5xdFLRtf0H6LPMDfWkQU4zb6Uj9hijF3j+T7hrOxe2G5m/bPq/15dh
         DuoOwGQhoH/VUc8WsJVuMhEfz1ouA3TSjHPktAQpG0iMyWTBtxMS0e8jvc7ZScwMN7UH
         koLztPKeWeH1LnIO1+v+MX306pndcTLw8Vr+6Xmy9DOoth6uUgm5l/M/uRbKyIomkS6s
         BgDVW+/dX/6WDt5LTDQ0OQ6lGiV7YB5rOB/Yn8U47YWJM/oq72L88VxRJDBDDZJG5Eao
         qa3NP6W6+7m1LLGZ1dBtjXl+8pvvj6LOsjpUPb3clEINP4m5uam1EyTjMtph+DotCzSh
         askg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BHf4UvsT+tp1w5uysV23zNNg2+SFrSc3uh4pmNnApJ0=;
        b=Ouze3nAE75GTzDdAst9igBOfiBElUTkCTbyK4iKPoqiwrGygmTDGNJZt4SUGpMQU/1
         lMqepnvckUsZ8iG+yxQjtvNyVlXZSyIv9D6O7CG9JrNMBEmJSE3kqxnYUW9Ky0hESdwK
         ZhlNKwIoCKQsF6PWvnWV7hgJuYiVYz79pgPOloLQURqXgtcc8YrhcWpiiSOurDNTKw1b
         XSY0kccDZ/3stsKIfOWUOTHeAjyCqS2B2m0wnNgg2yenuYPEuTQBeydNil2axUOPL2LM
         SgPeTTRTljyW+l0DdcSJ/czVgZg6t69VAs2KYoqcAZIqISIij0PIP2FZpZ57RsxXiwvq
         ELTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Y3R2rSFS;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 7si507044pgj.1.2021.04.16.15.06.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 15:06:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 36298610F7
	for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 22:06:30 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id x12so23428874ejc.1
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 15:06:30 -0700 (PDT)
X-Received: by 2002:a17:906:c010:: with SMTP id e16mr10503154ejz.214.1618610788798;
 Fri, 16 Apr 2021 15:06:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com> <20210416220251.GE22348@zn.tnic>
In-Reply-To: <20210416220251.GE22348@zn.tnic>
From: Andy Lutomirski <luto@kernel.org>
Date: Fri, 16 Apr 2021 15:06:17 -0700
X-Gmail-Original-Message-ID: <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
Message-ID: <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Borislav Petkov <bp@alien8.de>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Y3R2rSFS;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Apr 16, 2021 at 3:03 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Apr 16, 2021 at 02:49:23PM -0700, Sami Tolvanen wrote:
> > __nocfi only disables CFI checking in a function, the compiler still
> > changes function addresses to point to the CFI jump table, which is
> > why we need function_nocfi().
>
> So call it __func_addr() or get_function_addr() or so, so that at least
> it is clear what this does.
>

This seems backwards to me.  If I do:

extern void foo(some signature);

then I would, perhaps naively, expect foo to be the actual symbol that
gets called and for the ABI to be changed to do the CFI checks.  The
foo symbol would point to whatever magic is needed.  I assume I'm
missing something.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm%2BA7XKyjn3W5g%40mail.gmail.com.
