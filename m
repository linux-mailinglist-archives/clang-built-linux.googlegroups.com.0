Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAVH672QKGQEHGKLFYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D66E1D41A7
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 01:25:56 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id 3sf235993ois.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 16:25:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589498755; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnNKKYSHRmUsrynWvtubt9Yf06OlLcxuzz9dSeTImxckDjo9pVeKopQAfe6UprnMZ8
         Y/eZp1CuD/mxGcO7+iinafND8F3b8J7LhBaZjwfAanIrp0j3Dy4vrpCZFO5XaPEfwKLU
         U6IEx2s2AH9LFO8pNvC7b0dhM9qSo6/hyChcQ2chtEupBtN8W9npUBxaKJnLEJpSxENs
         lTSHpafKf+NlIOsJ2a3ktc9dGWWskhs2wPHEQ27SNw0jQIpINFtUdtYAEFGDcoeA0zFh
         SYrN7TXgdEDuYAyBehRs0je6pCYL3uYI/BPe4gjJ3MKGpQHUYJ9ljfJI37Mq8fRG1UJc
         IZ7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ajpd/3KGIMd8PpP3NFqfL8mNgiMeCrC8koBpIyDsJaU=;
        b=IkSjALwt9UqddV5rmaksnmSqI8hW4ck1lbr/+6pmSpmQz+fQttme+Z5ozGb3OAb4Cc
         QfGdEkRBjoBiinRCU+mrYY8Nnr1C2ZReQ1olV2JAIIpYSq/c1OZfO+NzCfqYHA1JR2Zf
         /DsBkXh6fniDjrfQA+6N2tw/lNNUi5wJa0NWs8GX5HsO3F/Mzz1Wr2VZgwNWEJglsQaW
         9SWN0qyW4oQSoPcJoHM1ygg3fq+TedLqQ+WqkMO2FR41bFdeAmznmn2HhFlbJBVNCTuo
         rozrgZtcC7d9YZTt+x7nrcAQqeoiPNYnpP7WJ4DTyQXFykNr099fBvI1Cp1UMF7QwoFI
         YfKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sUu77TjW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ajpd/3KGIMd8PpP3NFqfL8mNgiMeCrC8koBpIyDsJaU=;
        b=aYb3UhBqharEudAJE40pjx58+MMV3HmIVm6TnxLoglSBuDbDNj7Bs43NjbDD6VDEke
         pSAKjwFCg/t+LTpz9w64YeIbc2h0mYB6GzL9F/0z1N83M/4AbgXvXsw+dlNkMe94bdPJ
         dVtNQNgntmfOV+Vu1PI3YttsPm4zNa3SXsRyP+fQXd6PbdHC1EG1ySWMS0u61TRD+Mn3
         wvsopnfyzWnbod6dHcFgg1xWWeOxXPEWAo5/sZAytu+DviD5+9p5GD6SQe8WsgpjLj1L
         jcas+llxJIFz2L9Vs2Jc8EnQixwLy/WI+2m0HEtlKOY2h9DLxep7Y4XVpHC7s/xf51Cp
         im0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ajpd/3KGIMd8PpP3NFqfL8mNgiMeCrC8koBpIyDsJaU=;
        b=VD4rlj98vtZ/W7Gp4NWcr5RqjGeiOWsCXnMB2i245T5V+dmYHCLJMsMr3VpfNCu9Fx
         2IQjcOBpFWKL8BiTBSY1Em1YuL+ShxiuZIcQKjR8jCY4jYHMfWkR/gBzhmjA1eGgRLG2
         4Vt3bwDkl+25Xgf2iKydr/ZN1WrXivuVUFYr5NhDUjikOPudkGO7REbcvOOpz3zULAVU
         1furaLOvrGNjf6mBWq9i1kwzf6f3/LC2Fm8u+SZRC59EPt31szRQtcHSmdpVanUg4rM2
         0ME93fh30BLHH4aVkwh37vILkHmqEvVWz1NnwJF0yGxiUiYCuKm90GWDjrvPdE4g8F1T
         vyow==
X-Gm-Message-State: AOAM5314Ro/KcMzXWhMfEsnGX1L1zTTS4rscLGkai2QZNaXjIyXgNX8u
	AfvXxuEsCjOG4UE3LLAzb78=
X-Google-Smtp-Source: ABdhPJyk7jBFIiOQbZmx36OyFpJQatFKx2G3F9SrhVWd1RIILM6thRKK/MGy+ullepg1XG6Ghd6N2w==
X-Received: by 2002:aca:c2d5:: with SMTP id s204mr245783oif.83.1589498754835;
        Thu, 14 May 2020 16:25:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1eb:: with SMTP id e98ls125086ote.3.gmail; Thu, 14 May
 2020 16:25:54 -0700 (PDT)
X-Received: by 2002:a9d:20e2:: with SMTP id x89mr288127ota.110.1589498754529;
        Thu, 14 May 2020 16:25:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589498754; cv=none;
        d=google.com; s=arc-20160816;
        b=mYT7jpoNlGSVJSscpbG4s+oIsrUwOP7BnPtSn6OL2QuLJviWxpsJZaX+hJanCQnEUV
         T8q28/Ytr+wCMNuRxjRa1o2EXPTfuSJwGF9ybXctjE1d7cGrmvl6YF7Usk/BCynEP+3K
         cdz23GMAxOPOyc4asaF1TB9iQ8nIyLogGR7NgP0wFXFyJETuoa2o5VMkNjc+sCkvPxwX
         HC2BDpF0FtzI4HXVHMWyEr9PCX0lNZ+KPbDMgNpnoHfWadNCAfIRBlfyy3OuUB1BdIv8
         DJbV8sgqASBmUWLQJsc/KABQ2XfxkO3Fge5t6+Btw4KP7AWX7n7Xt3Be4ErXqqLdn6kD
         tiNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rQrnCHYLO0Vg5jOwAUNb34HO2tHD8mNTv/oZ6XDZtGw=;
        b=evmlsIjtd8YYUDy+pr5EeEvxSGgh9zlsZ55HST4fjq9Dw7TcD4U5LPj1i5exvWtaY7
         ySXN1XqXPWmVrFWGcqUQlZ7rKWCXYG8gM0sm4Vy8cuQI4sW4zEsNjWLMZH02mrwYdf1s
         9yMjL43Og6hHdi3xsVesWR8to85nQZ9a0wrlzjjvCnRTNlR52G40YMDIWJ/pznx5VVYz
         GQr/210soTiVwgwNLkWpkE3cU+l9Yg+pxt3CrBvUrEBhd2E2MNLkpDxSEMCMHGyRCmZi
         kP2F4qsda/TDlI7QtXYzwvsM5WS0W+rvDjUUzkXtOJWIc/GQEvd9ZB3JoT+N3w1M4B/O
         m9HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sUu77TjW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h17si56064otk.1.2020.05.14.16.25.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 16:25:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id n11so85186pgl.9
        for <clang-built-linux@googlegroups.com>; Thu, 14 May 2020 16:25:54 -0700 (PDT)
X-Received: by 2002:aa7:8c44:: with SMTP id e4mr967827pfd.108.1589498753790;
 Thu, 14 May 2020 16:25:53 -0700 (PDT)
MIME-Version: 1.0
References: <87imgykunh.fsf@m5Zedd9JOGzJrf0>
In-Reply-To: <87imgykunh.fsf@m5Zedd9JOGzJrf0>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 May 2020 16:25:42 -0700
Message-ID: <CAKwvOdnJ9p+iGYP31TJcaCLBqk2gOes4=5z=K8Tv_jytn6+RgA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: compile_h: fix compiler version detection with clang
To: Yuxuan Shui <yshuiv7@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sUu77TjW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, May 14, 2020 at 3:43 PM Yuxuan Shui <yshuiv7@gmail.com> wrote:
>
>
> In some setup clang will print a line about CUDA version it detects,
> like this:
>
>     Found CUDA installation: /opt/cuda, version 10.1
>
> So grepping ' version ' matches 2 lines, and results in a broken string in
> compiler.h, which doesn't compile.
>
> This commit adds a "head -n1" to fix this problem.
>
> Signed-off-by: Yuxuan Shui <yshuiv7@gmail.com>

Hi Yuxuan, thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Might be worthwhile for Masahiro to add

Cc: stable@vger.kernel.org

if/when picked up?

> ---
>  scripts/mkcompile_h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
> index 5b80a4699740..8e6b4fc6fdd9 100755
> --- a/scripts/mkcompile_h
> +++ b/scripts/mkcompile_h
> @@ -62,7 +62,7 @@ UTS_VERSION="$(echo $UTS_VERSION $CONFIG_FLAGS $TIMESTAMP | cut -b -$UTS_LEN)"
>    printf '#define LINUX_COMPILE_BY "%s"\n' "$LINUX_COMPILE_BY"
>    echo \#define LINUX_COMPILE_HOST \"$LINUX_COMPILE_HOST\"
>
> -  CC_VERSION=$($CC -v 2>&1 | grep ' version ' | sed 's/[[:space:]]*$//')
> +  CC_VERSION=$($CC -v 2>&1 | grep ' version ' | head -n1 | sed 's/[[:space:]]*$//')
>    LD_VERSION=$($LD -v | head -n1 | sed 's/(compatible with [^)]*)//' \
>                       | sed 's/[[:space:]]*$//')
>    printf '#define LINUX_COMPILER "%s"\n' "$CC_VERSION, $LD_VERSION"
> --
> 2.26.2


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnJ9p%2BiGYP31TJcaCLBqk2gOes4%3D5z%3DK8Tv_jytn6%2BRgA%40mail.gmail.com.
