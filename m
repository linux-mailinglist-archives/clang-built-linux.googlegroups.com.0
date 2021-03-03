Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3HL76AQMGQECTYIBKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C3D32BA68
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 21:47:40 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id u1sf10895625edt.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 12:47:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614804460; cv=pass;
        d=google.com; s=arc-20160816;
        b=mZirGjm0jgG0GARIazQgTnhXoqsslsEcVu75H6UIbC859vISF3wEyVOouF/SVzQFg/
         juwpscbnYOpkFL7vwIjV0xYZqXq8He4JzCTi1D/W3qYQogQX09/URN7jTGh9JXcfILp9
         rFizY33/nIDLyFhpPXFfRY1jZcTrcBSAEjEPWtdh4nXwa+H+EapsW23/N2poImKe/Dh/
         2zdAmelBLQ0gLDKQLwdfV1cIoyfzIFOhM7f6eAqJZlSndE7g6f7LtA7Do/mCSShIY4jQ
         d4KQeV4AnM/6KixH4BuFrbpRRDq6syiuEU6PhagYsSalnhwGAV7qS6EMsd1J2l3o8q/f
         ckoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gpf+KNjFM6xd0ece3cYuSv0ZWt/zf1fT7dJT970tHOw=;
        b=wUJiHLyFq9S0FVe5G0sc3dmHP2FoeaOfaQGQdIIooO5oq3BiQo82UNKejJG+F6f0TV
         lBeFDnTIjaVjQO40e3OS3jd5fPEA5zHBJjimp8sRx79EmEeD6/xvaS8lbv2Typ0bda7Y
         +uhWdR2mM8bvEqM9cMZy0qlYIkt9eoRt7rBF2rycDE37Xfmduy67LQaUABC2+aZeqykc
         rhzxAlWQln8qsmoSr8wjx4GNDJUgQCk3q2rjh1c7t6y43cKE596YFDCI8ZARWHpBFes2
         +DzMFy9KHYOa4NDJdD07sBpiyZZu0p6t7q7b0oVvnmPnrbsLRIQB1VzbLcC4n6jOMs9p
         +LYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Zl/HI38K";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gpf+KNjFM6xd0ece3cYuSv0ZWt/zf1fT7dJT970tHOw=;
        b=TOlF7mZzQ09xyC1Lpe/VS9R0P9+AmxWevVNJhOi2DhRR09NbrDPZE24UlNUfucY7Lq
         5bh7BhzCxYAsPprlzRyi57rLNRxeiQu4J2LIpK8a/77v8bXTnMHU5Ci04NkWuv4CMJmx
         gXDdxfruM7SocVbRYUiOtZunxwnSThoPMQTOrq2bK2jkSjoiYX00zX4w/tqe/0zaUhvP
         7em9IFCxK6voauEvcdClVszWgvLlMOXYDrMAd6h3TcNylxHnFZuTqoJ5BwKAerjH/OqX
         H9LAOmnuj6G24uwusqkoN39/O/NFRiH27mXrPb4QmhY/fH4W0duxbOFb85veCPvqnXwI
         +1Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gpf+KNjFM6xd0ece3cYuSv0ZWt/zf1fT7dJT970tHOw=;
        b=MOXv7kMNgeiUdQ5kQsAhFH+q9QqYjVtcOLAby/joU7zK+zLt8271gyH19mgOh3522H
         f5mNSGazG7Wk6QNwZbdJh0vjU/aHZlCEgVw6xAwudW5ndPsjOUIxssbIMAKhZs5uenjH
         i90GP3T+woDfVVZ6N+QptW4ehc9bgwZ6JNhBPS2GJMelZNpadjXvv44Y9jm4fN8NgMHi
         okiCWKAeBGMClrYksRJUwIVAEYg3KzYWxLfnTx4Xo6oNjXS33EGWsGRMEJ9jkMugox62
         ykN/5tUUxoydNfVgKzh2613O12mZBOATjo+unRvzqIwUOnFPUTNR1wUNwLrWqDE5uPip
         80JQ==
X-Gm-Message-State: AOAM531IkVYeS8iNybhXbTcCi150BTnPRD/s5kxdSHNB+CrJoEXy2Ou2
	WjevY3R81xStrJZ9XhhH+Ug=
X-Google-Smtp-Source: ABdhPJyFKMlfQybpr7drLpmUx2Y+3xXZxccQ7v/j+mdPcdKihvPaMfsTrC+leDvBWHrlaK8UpP4w1A==
X-Received: by 2002:a17:906:b80c:: with SMTP id dv12mr658710ejb.110.1614804460637;
        Wed, 03 Mar 2021 12:47:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1e48:: with SMTP id i8ls606243ejj.5.gmail; Wed, 03
 Mar 2021 12:47:39 -0800 (PST)
X-Received: by 2002:a17:906:da0e:: with SMTP id fi14mr658797ejb.188.1614804459803;
        Wed, 03 Mar 2021 12:47:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614804459; cv=none;
        d=google.com; s=arc-20160816;
        b=sXrDXYW3zV5t51zZMfWFMcxFsBp1MiPCvJXiHQGORMcELc7bVKtwm0UlG/hdrfLWvB
         JTjXsgkRliraedhx/Y37qI5smMBsjdDgO2ut+3WZcD5g1Tqu8ATE/WJGo63eyAwOr11d
         QHLQFl1ZVTWO7XRtitFN0e4gTHz6dfSSlKdExV5B+fVueBhpTiuwCfNC6rhl6BgV/YMU
         JyK0ttFgm1mNNk2xNH4vtCTT9vFRgLLmfexOmjSnF8T0q7aHMpnLnd6qxMJaST6exdDE
         pyKiZl6wRtPeesuPiBo+GpFKTBRAA6/2oQh9Z3MHAXRKzxRKJnLeBGXUaS+wfe+rrCvy
         KWKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=24KhvMDb+89hqpiv9wi+VawtF0GyMftFsFrma/aYUMs=;
        b=0YBWpoXqZL6+h4cLOTojPIaRw1iKlzxznjz7mKhLMa7Zs/fuATOD8hjgqK84JX+4oP
         SQgjQH1zmsBrenuUqE5DcSfcz6ADlLfBUvToUKpWooemKMsTyh0IZjWYuo3hH44yzGts
         1NkJ4CW0hGnHWOWOdRmxqFU+K9zWzgxZlYFMlaz7N2t3aOxwKCL1aR/nYXvaGOq7NhQa
         4Iz3f/wCZBUdHeop+84sY62owPK9j2aJuTkdvlb0y3pFufOeZo/zE9S7GFXyduv7q60y
         T7XAPjkdC4Cx88dY3huTW0SBZPrYcIY4jlCDRv4St9ECzwxHbkzWymh9EBAn1dLT8Xq6
         h8wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Zl/HI38K";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id df17si676548edb.3.2021.03.03.12.47.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 12:47:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id u4so30492096ljh.6
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 12:47:39 -0800 (PST)
X-Received: by 2002:a2e:92d6:: with SMTP id k22mr427625ljh.244.1614804459313;
 Wed, 03 Mar 2021 12:47:39 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org>
In-Reply-To: <20210303183333.46543-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Mar 2021 12:47:27 -0800
Message-ID: <CAKwvOdkhZGv_q9vgDdYY44OrbzmMD_E+GL3SyOk-jQ0kdXtMzg@mail.gmail.com>
Subject: Re: [PATCH 1/4] kbuild: remove LLVM=1 test from HAS_LTO_CLANG
To: Masahiro Yamada <masahiroy@kernel.org>, Sami Tolvanen <samitolvanen@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Zl/HI38K";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f
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

+ Sami

On Wed, Mar 3, 2021 at 10:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> This guarding is wrong. As Documentation/kbuild/llvm.rst notes, LLVM=1
> switches the default of tools, but you can still override CC, LD, etc.
> individually.
>
> BTW, LLVM is not 1/0 flag. If LLVM is not passed in, it is empty.

Do we have the same problem with LLVM_IAS?  LGTM otherwise, but wanted
to check that before signing off.

(Also, the rest of the patches in this series seem more related to
DWARFv5 cleanups; this patch seems orthogonal while those are a
visible progression).

>
> Non-zero return code is all treated as failure anyway.
>
> So, $(success,test $(LLVM) -eq 1) and $(success,test "$(LLVM)" = 1)
> works equivalently in the sense that both are expanded to 'n' if LLVM
> is not given. The difference is that the former internally fails due
> to syntax error.
>
>   $ test ${LLVM} -eq 1
>   bash: test: -eq: unary operator expected
>   $ echo $?
>   2
>
>   $ test "${LLVM}" -eq 1
>   bash: test: : integer expression expected
>   $ echo $?
>   2
>
>   $ test "${LLVM}" = 1
>   echo $?
>   1
>
>   $ test -n "${LLVM}"
>   $ echo $?
>   1
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 2bb30673d8e6..2af10ebe5ed0 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -632,7 +632,6 @@ config HAS_LTO_CLANG
>         def_bool y
>         # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
>         depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> -       depends on $(success,test $(LLVM) -eq 1)

IIRC, we needed some other LLVM utilities like llvm-nm and llvm-ar,
which are checked below. So I guess we can still support CC=clang
AR=llvm-ar NM=llvm-nm, and this check is redundant.

>         depends on $(success,test $(LLVM_IAS) -eq 1)
>         depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
>         depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> --
> 2.27.0
>


--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhZGv_q9vgDdYY44OrbzmMD_E%2BGL3SyOk-jQ0kdXtMzg%40mail.gmail.com.
