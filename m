Return-Path: <clang-built-linux+bncBCS7XUWOUULBBAGRRH7QKGQEL7MX7WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B14E2E0FE2
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 22:43:29 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id w17sf9934261ybl.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 13:43:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608673408; cv=pass;
        d=google.com; s=arc-20160816;
        b=UaImwPLQBsOoa+2kXhd7ejxkvHUOf+c6veU0oh8aa1RiLA44XqcR2SmhYRSbw7ZGhE
         +H5T/SMIk0XFZMVGa/RQ0Hn0QSBBYz/dfCTra41A/x3yHS/+/VTClS4MLw5LLddctyZQ
         AU4yOsVQ+tRv+We+RXzT+UWkYadnueIxWiEy8A4hcERrUk+KFI2JCSbMmOvAxUhV+EwN
         Y//oeGx6R7c/hyZFIF4AxIFd/EixP+fC+z0LtRhs5yd1xLaCMV9r5bASAdFF51GxomDi
         212I+L3m7qZlLlYVm7klmxn+JQEvSENYUbfaDGWoJBVZ7YDJkQA0CpK90OWUfdhDQWXW
         U4Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=e+4BODYosBUKZhmjp7G+1VQqzhclw5QJXK9shnODbCQ=;
        b=Ivwk9J31p1wUQvj4at5qtimpEe6T+SdH+F7hhPSs9/6wwGtK1cbuDlLzUJ9cxliSp4
         wt2NFz6pKqbWVohQxBnSAOprNudGBeicX77aCHWPC0Ho2ny/SB3bQ8xBklg01VOBgKP0
         rxT56YmgD7SpQbooF/tY5/br11GFUS6phuGEHiiIK++HTG7g9Stu9h1a9TKHI15g5sce
         B1FMsu6TtxJG1SZlp3HXBQ8y1Ing3/++DulXjkKNsJYz6VpDtxYc4n9yEMNyRXYrRD0+
         6hsXTAuzkiyKSGiUgSyA08mN1n8Mv2qvliYqvcayjyk0+ms1ndqgqs5F/77usLo3yTcJ
         xaeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MoFoz97i;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=e+4BODYosBUKZhmjp7G+1VQqzhclw5QJXK9shnODbCQ=;
        b=aKsBfy4IRxh/qA6xXSj/selJx/JWXjbkeruT5yMe75RX1Cb+WTm6FOqSuwCZLKCx82
         6zM9WkVYBU2hacydw8vmcvVo/yo7OhOzsnB2xQg8BdYjd9OD2aZDW7lJC+45JOufn/HE
         Cnw5d/QJXPSQpY3BIUY9e+jiHFXH6nLsY/fiG97o31SokxDY1dppWUA1XOY/V0JnFHc0
         5+zahc/IqfwUXNVc2tJnxZBlIm/bMNoe+PSTrhsz5InmPz3ciER1SUIQabevbVUK9efQ
         MyrIcCyAGksTmEi8VoILf1FMZ0w3zHMQzuB4HK9xSPKKIt0wNFMMyzit+vSiAoqo9jgt
         24lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e+4BODYosBUKZhmjp7G+1VQqzhclw5QJXK9shnODbCQ=;
        b=qphhhPF5tqISKlvUJC3L/zLl/uy2y/xb84NxkCPcsq5UupaALy8KFjX3x0T3Q42Vr+
         2HyuXhKsu9q/tn4gdBidOthkQ3DHDiYhteXF0BvGpqsfrpD2cX8QYlAn1inx48Bqrtfz
         YTVWDzmzO+YLxkkdTxHS4PZ+Cm1HUDg+LfWOJ4uRiqnQE7sT5uPvujPrcmT1pskiInxa
         OzHMYCqr85pbrbHCru3CG+vBcFHAE09sbzPvdRJdxioq1vyPljlpqJUJhyWFMM6nJ8VY
         IadcUUx0UF3Ba/Xj72dYQe6Q55urZE6hCGehP2RBaD1TO9Lc0rJ0q6cORi3L6eBoJ8W1
         yWsQ==
X-Gm-Message-State: AOAM531ZrIbPtxNQXLFGbZlgdtAtXjOn4tz6jd+Fijsy5FfdrvNjkX29
	Vlq9KpLY0aYzYMyD5FfOO5Q=
X-Google-Smtp-Source: ABdhPJxV3gMVNdjEbnPcufdv26wyU6ph+krXKbrtv15NXtCCEEqFnGWbJTIfYxc7ABZ8cDnKZz8r7g==
X-Received: by 2002:a25:141:: with SMTP id 62mr1969892ybb.426.1608673408470;
        Tue, 22 Dec 2020 13:43:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:df91:: with SMTP id w139ls21697291ybg.5.gmail; Tue, 22
 Dec 2020 13:43:28 -0800 (PST)
X-Received: by 2002:a25:2cd6:: with SMTP id s205mr31613350ybs.279.1608673408089;
        Tue, 22 Dec 2020 13:43:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608673408; cv=none;
        d=google.com; s=arc-20160816;
        b=NDhgixObDwtrJIduzHHcaD99XDOakNWQ2+HwGBswL8a4/hJQBibRoA9rC7ZN5mMxZ0
         NhjTTZeLIum4WbvRHWoUfgUKcL+8o+5UPGg+NT3MEwqCNkT17B28LDuxb3T62eWmNQy4
         9ub2R9PZL2/9fZqbRbWWiyDCAXLabQn4z8zssTvC6ur9YdtBsJzursKPMl+kZ9GR1iO3
         swqVaHZorNbbNqp2x3c2t5wlcmreb4ODRZ6ttCDxalzGLkljMV9PZZmLkoB+j6guNuAD
         +ViR764SqBmpHkLmJ3IMnANfepGw4boZyaGUanmIEh71HAifYyjEQ3ThQCENWwvBVm8h
         fuiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V18RJFVoSD2HfPTrMybJhWRx+16Y//JP10XUyAiF9C0=;
        b=C6lomzVvINaz3842qaSw/Xcdtvd8cK8NDskIMfyCElZvmFvJvcPtECqNIQ167B6OqP
         Fynk0F9tN27gU9tZpyizrOMUJsakzliOBG6pYbAsHRE5stIcLlZtd4sTsYiOYja7xhW+
         ozg27oTJxhEhFoqzjLSIXHE9PpX+MHkXv5+MX7KGJVHJF2QApId6hzYD85GWZPIlwhUx
         gPfsbtBdUJ/gqbQsVeZEd3ltkSjWeasOAek/uLVSOXs8q82Jn3AQA9A70kZ5ceNwGznc
         L11DwqvCmbbN/rS31UJgNSu9zLbqh+ZVhfAKBqFYv0daxrMMPMg7n77GZC6XS0sNqzSv
         CV7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MoFoz97i;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id 23si1761978ybc.0.2020.12.22.13.43.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 13:43:28 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id m5so2050069pjv.5
        for <clang-built-linux@googlegroups.com>; Tue, 22 Dec 2020 13:43:28 -0800 (PST)
X-Received: by 2002:a17:90a:fc83:: with SMTP id ci3mr24052182pjb.145.1608673407151;
        Tue, 22 Dec 2020 13:43:27 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id s29sm22665086pgn.65.2020.12.22.13.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Dec 2020 13:43:26 -0800 (PST)
Date: Tue, 22 Dec 2020 13:43:23 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Guo Ren <guoren@kernel.org>, linux-csky@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: building csky with CC=clang
Message-ID: <20201222214323.655tjdqdvxhw3722@google.com>
References: <CAKwvOdmnhsPU0UA9uEd1HTQ_yoBO8h741+sKrtebcPsXpXn8_g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdmnhsPU0UA9uEd1HTQ_yoBO8h741+sKrtebcPsXpXn8_g@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MoFoz97i;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1034
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-12-22, 'Nick Desaulniers' via Clang Built Linux wrote:
>Hello!
>I was playing with some of LLVM's experimental backends (m68k) and saw
>there was a CSKY backend. I rebuilt LLVM to support CSKY, but I ran
>into trouble building the kernel before even getting to the compiler
>invocation:
>
>$ ARCH=csky CROSS_COMPILE=csky-linux-gnu- make CC=clang -j71 defconfig
>...
>scripts/Kconfig.include:40: linker 'csky-linux-gnu-ld' not found
>
>My distro doesn't package binutils-csky-linux-gnu, is there
>documentation on how to build the kernel targeting CSKY, starting with
>building GNU binutils configured with CSKY emulation?

Note also that the llvm/lib/Target/CSKY has not been fully upstreamed
yet. It is a WIP https://lists.llvm.org/pipermail/llvm-dev/2020-August/144481.html
I will not expect clang csky to work currently.
(The latest committed LLVM patch is https://reviews.llvm.org/D93372
Normally committing an important piece of a large patch series like this should take
a bit longer time longer after someone in the community accepted it
https://llvm.org/docs/CodeReview.html#can-code-be-reviewed-after-it-is-committed )

I do want to raise the recent LLVM M68k target. Its patches ([M67k] (Patch */8))
are very organized and the main proposer shares updates to llvm-dev regularly.
There is a lot from the process where the C-SKY target can learn from.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201222214323.655tjdqdvxhw3722%40google.com.
