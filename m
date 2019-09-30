Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXVHZLWAKGQETWBDANA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 92060C2B13
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 01:46:40 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id g15sf34184063ioc.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 16:46:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569887199; cv=pass;
        d=google.com; s=arc-20160816;
        b=ziydNS3gCSWa14TuKzXhv0V1Y1EVLe9dFG9NH4G6gNi9mhYqkvS1dJ2nI3ppRnUGyt
         Nw+Ked3oSFOY/XiuXaz15VMKSn9LHDsWR/xYBNlZXPJXaUzN/7XkivoLoofEX+IPd8Jt
         /djnzU4nSGZZX4+4Wsw506mXVM3ec2TquyHy55dkHXZ3BHj1kbp5cHaXAmxRxgnSo+Rs
         ScQ111QRtUPqzKQDEIzR9do0eDsPOOkOEN0M16i4eSRtu4mvbrpHARGa2uTof6r3VrL7
         R4fw4fsUlsWTw3hB9XJkW+iYRasMahjK53c4W8ObylUZseKuUcOLskYfrOPXMCPjMmpQ
         SYmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NQFWSLy/qgHjm7lRdQt9DDF04/Xv52DF7VAHsh1TK6k=;
        b=wlrYaX3H59enIHY6uKqAIzjcdpOMPzzin5r5iOqM07mK+ISKOC4D2BWJIpRHwlSkQf
         +WDxDwgRktaTVD6CtN2adzy+KNBWyyi8VneOr/tCx6P3cteLPImYAc7CSaAnrJv7xaQJ
         3YEjZBUPC3d1ku6q0lU+ursD/i7V8x3F0uyAqihOBKLLf75AsnEdQbU0bxx4P9K6T2W+
         f4QHCoJYFVoHJbaafqH0rArsi/GxVTQiE60dppbhBuHATEl3v1VQ33lG9gEYdAeOVcmP
         XA8xdZa/JDTFjMYho24RH9POCXprbuj5CxjoOh7YIJXTkPY/zleC+0EPxuLAJuPBvI6/
         DkTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WJzpPI87;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NQFWSLy/qgHjm7lRdQt9DDF04/Xv52DF7VAHsh1TK6k=;
        b=rK7JaiGU60AVUBK4peZlXACh3YWZ6ywr6kRnKmhmejTqGhSHLt4wz0lijedaqIErMZ
         W9LW3mH0N17qlyHJ0HXB7o7QNWkvAHkDIICkk832Pb9sR7dgSH7wdQI5pEBNAZAFERtw
         a4sFaeZtwf5m5D8BzEL//4+OmCHb5vP1Q+HVaUwQyBJtdMAi7TFgv06s4ik5mZ/fNsV2
         reiAmNcEgwDgxgFTEjfo+z1Rk1Pxk/Vc8UDNpaQwQq0B8KmEqPH0qWaSbVV70bjHGdSH
         jbGOL2itWBRbD9LoR7UDgOofmDVbl6t7HO6DJ6usXR1gaJHWKjDO6S9q+nyr5wyUiRVZ
         hgBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NQFWSLy/qgHjm7lRdQt9DDF04/Xv52DF7VAHsh1TK6k=;
        b=dBaCDAzdhmlm7R/SrRs5QKGBShfGg9Qfgz7afONPEgTmObNsUF5uq/wxSa4ihUoBCb
         ZNO5GTZLszNaZsMkTW8/uySLLqRmCmsr+ZNVMcC7z3L74/QQXl2ClDTuggsWynG/lerc
         Izr6E7VH740XePY7DGcIXASHMutgiTudkOftSE0pkRFEPMrcUjxaqMZi0iLsU6JWpAWI
         pDSzP5Ks7u8NhNG7wTvANJpUOirhIPtB/2uEi3ojBEy5UqHJrI4P49CpdTWIqi12gSHN
         I+lIyNnE2ls9ZtPaPpzbfKyKH/TYtSbgOG0nms+2hnv7Kpb25WfkiagmGRqC9pZYg9qo
         kHYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NQFWSLy/qgHjm7lRdQt9DDF04/Xv52DF7VAHsh1TK6k=;
        b=kTSZ3Jnc6nHUp2pAhvkElUfzgnJYJqFsz6OJcz6W9z7z08yPfQm4wvLVGVeeaNTAF0
         EO2nNNquhLUL9rse/ky5XkHS8ItsBjRviVQzbkSbFLOpb4FF+ptX1LXnzOB7MLMdUmKp
         l393rDTpi/1MFPzQKZJyFFXMVB2SWVF/Xv6+xUMAXeo32gMQu9qV/NNW4HzOjMKGu0+U
         kOMueekGycTI/Oq0L9c8dBjOnwHVhxwweD3byVYwqghzYgLJj9cFsQjsZ0SDGgjDX5db
         C0L5ALwKYPd54y8WlHFWiMAhLJS3JepUoMCA7RUlh0IEalcGWpJAvgbstu5TSMKtmkvl
         jIEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX9NOFtPwft1VaUQUl11BqNzM/tphaKhc48ZTvmk/FqpkX1xDpT
	pP0Ais5VhaFLdxwt0RJPSx4=
X-Google-Smtp-Source: APXvYqxcwmSEQ6eWwbudvSXpT8Fi7CO2MGWXde8j2fkGIA+IQtTgj2DIgW6vvxyHLc9m3kQ/e2ljUg==
X-Received: by 2002:a02:1785:: with SMTP id 127mr8997663jah.15.1569887199103;
        Mon, 30 Sep 2019 16:46:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:c7:: with SMTP id w7ls1586700jao.14.gmail; Mon, 30
 Sep 2019 16:46:38 -0700 (PDT)
X-Received: by 2002:a02:c787:: with SMTP id n7mr22053425jao.91.1569887198731;
        Mon, 30 Sep 2019 16:46:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569887198; cv=none;
        d=google.com; s=arc-20160816;
        b=G2uhvnHTHh3lbpWqZ/YDoDksls166ZTuGVVx/yKcly9Wmd1V5U63ZteJ+AxKu2aF9n
         2i0Xj+KNrU8Ta/et4Z8WRjx7tZzdRtYi/eea7bUTJAn9MSGUEgld+FFTEVjBUrjh3V6f
         obrRgdbJBwn63bEXsiytIGbny0fsdaqztBFz82ciYaXXaTL1p7Et8UlipMPOi8bhXXU4
         IeoZfw9sArAI+QrAh3Hl0rEKJE4z/NLudfPdSVq7yPPplEvhsJhZqm0yCMGh4vulzKAi
         QIy//QT6/ZCMZ350kSMCCJhmgeuCbeYKh9q6vdP/yRJ0ffI/EAi3lZteU7jE0qqNiqkK
         wQTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=QDNPcDd+mQTrvTxvVhCpB6pRuYih9OPWEUHccUdHrZg=;
        b=QbpI1RQwwnxpB9WfWsml9rxeInFwCp5o5Fw3xqBoSou0rcJgtrf+Wb3AI22bh2Y4Qg
         PaMBuypNZu+Ehpbnlf53IU9QdsSME5HzMMGBHrGq669ZgbF3BvOmWdIedAROU60O2FbV
         Tv3EFQoE17+lIH02IrPsvfCsqj9m3c/thRDd99cKyUDZ5hKW/xSJKVjv0JBW/28lrzfy
         grsxkE1Ka0eV+kbJwax99GFspeDF0I9nOa/IkjJgS5k/SrM+FIgI4MJaxZ3tHkPoH9ZG
         4u6BLqjxMEG9VfQfw5dHEQFUp8F5qEraz+flrCNZ3UVHfS80JluQamZRt4w92ccAbtrb
         jy8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WJzpPI87;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id n201si1138853iod.3.2019.09.30.16.46.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2019 16:46:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id m22so8054426vsl.9
        for <clang-built-linux@googlegroups.com>; Mon, 30 Sep 2019 16:46:38 -0700 (PDT)
X-Received: by 2002:a67:f053:: with SMTP id q19mr11339687vsm.174.1569887197908;
 Mon, 30 Sep 2019 16:46:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdk+VUAdDzCMUoyOKtstSKMx1CpyQziWTWQiiiWbeu6W-A@mail.gmail.com>
In-Reply-To: <CAKwvOdk+VUAdDzCMUoyOKtstSKMx1CpyQziWTWQiiiWbeu6W-A@mail.gmail.com>
From: Nathan Chancellor <natechancellor@gmail.com>
Date: Mon, 30 Sep 2019 16:46:26 -0700
Message-ID: <CAEVzpN=cEH7M4KFjqbkGsePobydGHJSS8rCEbzcWHNTcd51GUQ@mail.gmail.com>
Subject: Re: Phoronix Tests ClangBuiltLinux
To: Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WJzpPI87;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 17, 2019 at 10:23 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> TL;DR
> "When running 97 different tests across the two systems and the kernel
> builds from GCC and Clang, the race was very close. In looking at the
> geometric mean, the end result was a wash for the Core i9 9900K while
> the Ryzen 9 3900X performance was ever so slightly higher using GCC
> over Clang. to build the Linux 5.3 mainline kernel. There's still some
> shortcomings as mentioned to building the Linux kernel with Clang, but
> it's great that it's now largely working with the mainline Clang
> compiler and mainline Linux x86_64 kernel."
> https://www.phoronix.com/scan.php?page=article&item=clang-linux-53

And now OpenMandriva is getting some attention as well:

https://www.phoronix.com/scan.php?page=news_item&px=OpenMandriva-Clang-Kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEVzpN%3DcEH7M4KFjqbkGsePobydGHJSS8rCEbzcWHNTcd51GUQ%40mail.gmail.com.
