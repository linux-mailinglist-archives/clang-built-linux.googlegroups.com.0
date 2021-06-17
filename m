Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJWTV2DAMGQEOZYRU5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E5E3ABD39
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 21:59:34 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id e8-20020a2ea5480000b029015b5329f488sf3878054ljn.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 12:59:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623959974; cv=pass;
        d=google.com; s=arc-20160816;
        b=VwuLSiZ903W2gYx/TEoo94kK4Kzae9Mm6kffdBKp/kQR6O4MO77SUcJDrQTUhUZcGY
         v96vfMZKFJCid9O59muJ0r4x3MPirfSLaGmMuPFs5R6dRaKQxirBdOm9aQ7plThvf/2D
         Xg8gH4e7dG4pGlRUkIW2yx204tN+j8FWxY52g8s7I8SX0XrHVXdcqWnClGLYEcdBq4nm
         55uvEHDifE0iZ6fthjoaNdNYEYMBo/comT95JK9iNewwOZWFAf4YjFQFBKLS9K5ktOvm
         FHqQ2Lt7VMmZlYoN84Zd8XPS/Bf7olmD0W5eeFbSd124rt/OQAfxE9ENmy/iy25Y2fbQ
         ckzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sKWb/Pr7SIZshfmDpQt+LHAbdKk6YypYPdMC/XqkxJA=;
        b=KXGInWMjWrSWRMnP4aGKMuNkZzEHhFkKKmFker+8Z61xTSf0KwTb/Ui8zWTPypyIqS
         NtEPh9p7xYGSdhBjejP+U/u9kdqE0Hrw8Hu8j5t+bXWJ9Vusns6d7RVglkRTs4CW09Ng
         l38iBeaRAPVaA4Xe/nKvCAgsWyopcAOjToWuyM3BacwUgPJ5uXDgQHMFJlRDVng1eiwd
         eJmDBXQ0zrFTwN/dPtXZPd/dGykJwuELw1bWR1n+ZCtLaK3rAS4qUs/RRXvm/GdOQXb3
         sGYq3NdEPknUWK6id2VMv42z5sTcC9aAVWRm7Medxmr/auj/nGosytpHndfxgUIxGgB9
         aI7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sa9UsKs1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sKWb/Pr7SIZshfmDpQt+LHAbdKk6YypYPdMC/XqkxJA=;
        b=dHnCzrrv0TQ5tZ8iR1egge3GwqMlqGFNiouk6oQ4D3qFoEx6hoH1vyYqihQ0meIv0K
         Btb14hwjmSjeQcesH9UDpwQxU5fMC0U1PARpVVai1NV446ZmEhlhyeJluoog7HC6mmNx
         lz/aQ8Us1rBnARp6hF3camjpH+CPSoDKa+r/q5lAvt5cS5Xol8WNRI3yz0cDQGGRWNiV
         yadZj3SKFZ1EWuFMWNJdMDiPrJWBVWh6yfW40+yA46gQk9CpWTjCj0vlIuUlf3s/+/uF
         1UY4F7YzLp5s+j+Xgj0WLEhDeBc8dgs/jXNSHelYsNExTbgJLVoKaM4y4gtEry8jMskQ
         j3HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sKWb/Pr7SIZshfmDpQt+LHAbdKk6YypYPdMC/XqkxJA=;
        b=SayUZ5gbe4v5gIaNDYZ91PEh+VZ5Rl+gqUyz48DVUWiG3wTdN1JFjNu4Vxtuc1kixM
         IS+1t1IXW0W9TH1FXjRHuV6S86EQRqTD0AF8TlvG836xu4rJ8f6b3QIGudDuJ6hXSJqu
         BKz5mvNV08kS50mWQmWMe6CIiu7OhCk8fh6rjDxon+UKuQdS4urYJ7aq4k00GXPz0SRU
         mmbw0aF19aZqUSpD8idAy8SPiO/BmydeKs1x+x8T4obp0Ge5d0YD+JjFantqo69dOf6c
         n/OcalXXcxRU80cubZq8Nhw0CrmZUEMFGr0zmpZ9Zd4NgXiwGM8jGbp7GUFhMlvdWxX4
         JncQ==
X-Gm-Message-State: AOAM5325KUZOuby7Te9+epsRh3ek0E1Muqb009HrCY4SYaEgXB7J4Xla
	DWc5pesVNrpnyRTX1XMTEK8=
X-Google-Smtp-Source: ABdhPJxi+MBimp/MFZ6fAyFK5IA98JJ/QgggeyAlxGyZ338UXzqzW3CtExu5awVoBa4L4NNatVcxTw==
X-Received: by 2002:a05:6512:12c9:: with SMTP id p9mr22099lfg.74.1623959974442;
        Thu, 17 Jun 2021 12:59:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf03:: with SMTP id c3ls2188105ljr.10.gmail; Thu, 17 Jun
 2021 12:59:33 -0700 (PDT)
X-Received: by 2002:a2e:8647:: with SMTP id i7mr6168513ljj.502.1623959973394;
        Thu, 17 Jun 2021 12:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623959973; cv=none;
        d=google.com; s=arc-20160816;
        b=0I6WJdt3p8LOKRsXBHJhm5lPVzlxKmz4tz18ngX44O5qv9cO2zin9hWtktgknr1835
         OWn1hARH1IfE7jofSI+fQvxX3x/un1Sx3wp2HnGpVgfiWtgX91ygdF9SyZEz8wQecuSh
         bWsteXM3o8UsrFIAfY3U98/nFHXODfeSPq+9UrhASu+iUdJORi9EmVcNW4G0AiBPdshC
         +5naoNJO2ZDAv1+Dac/KZfR8ZOSCwQhmbrR7YhhyhFn2/j5R5aMVca4WGe6o/cnzy4LN
         ri9izbiIOSu5ZJ2bOW+EAk2XJaQQ5K7rsu45P1cVSjoS9k+DI0sug6+YTD7d4TBbjc3S
         lq5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zcyy0+lIJvFeXvehJWIwg9rBNfSRvCsx4qwdpO20ymM=;
        b=if3VoSxbqcrbRQd2m4O9VQwQh0PGwRZTLy3WqyvPPvZv4UFDFwgGEuQIH/kS5x2mJX
         +tRiL0NlQNixLijD2FTNoFoGM/TRF3eNufbSF/ABNEgjKUaUIs84EuOGtrPJWTl3fkj0
         X+kZtnAzacHpIRjn9bQc5LvGqidGjK+lyeDKXC2HNxwv8yOmkgOHpweFRkK7ta783Zax
         xj7Hck+vNCbGEDKkp9PAFaAjiZcvv4qU2Oc92ae6MmyKnmnxEuleQmPu70mOo1ejWipu
         an2I0p3YkOqml6rRr2vks4eKoAOiRhOrLs6w1ZvVsWmeQvPFIywy/NoXblIDqAyehu3/
         w8kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Sa9UsKs1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id f17si334699lfl.4.2021.06.17.12.59.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 12:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id z22so10678464ljh.8
        for <clang-built-linux@googlegroups.com>; Thu, 17 Jun 2021 12:59:33 -0700 (PDT)
X-Received: by 2002:a05:651c:1181:: with SMTP id w1mr6271031ljo.116.1623959972826;
 Thu, 17 Jun 2021 12:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <YMtib5hKVyNknZt3@osiris> <20210617193139.856957-1-nathan@kernel.org>
In-Reply-To: <20210617193139.856957-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 17 Jun 2021 12:59:21 -0700
Message-ID: <CAKwvOdn9Z3JrVJzkZuXUY_5aBP5Ttxw6g9ALb_XM-bkY=iU8KQ@mail.gmail.com>
Subject: Re: [PATCH] scripts/min-tool-version.sh: Raise minimum clang version
 to 13.0.0 for s390
To: Nathan Chancellor <nathan@kernel.org>
Cc: Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-s390 <linux-s390@vger.kernel.org>, 
	Linux Next Mailing List <linux-next@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Arnd Bergmann <arnd@arndb.de>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Naresh Kamboju <naresh.kamboju@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Sa9UsKs1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Thu, Jun 17, 2021 at 12:32 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> clang versions prior to the current development version of 13.0.0 cannot
> compile s390 after commit 3abbdfde5a65 ("s390/bitops: use register pair
> instead of register asm") and the s390 maintainers do not intend to work
> around this in the kernel. Codify this in scripts/min-tool-version.sh
> similar to arm64 with GCC 5.1.0 so that there are no reports of broken
> builds.
>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> This should probably go through the s390 tree with Masahiro's ack.
>
>  scripts/min-tool-version.sh | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/min-tool-version.sh b/scripts/min-tool-version.sh
> index d22cf91212b0..319f92104f56 100755
> --- a/scripts/min-tool-version.sh
> +++ b/scripts/min-tool-version.sh
> @@ -30,7 +30,12 @@ icc)
>         echo 16.0.3
>         ;;
>  llvm)
> -       echo 10.0.1
> +       # https://lore.kernel.org/r/YMtib5hKVyNknZt3@osiris/
> +       if [ "$SRCARCH" = s390 ]; then
> +               echo 13.0.0
> +       else
> +               echo 10.0.1
> +       fi
>         ;;
>  *)
>         echo "$1: unknown tool" >&2
>
> base-commit: 7d9c6b8147bdd76d7eb2cf6f74f84c6918ae0939
> --
> 2.32.0.93.g670b81a890
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210617193139.856957-1-nathan%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn9Z3JrVJzkZuXUY_5aBP5Ttxw6g9ALb_XM-bkY%3DiU8KQ%40mail.gmail.com.
