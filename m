Return-Path: <clang-built-linux+bncBDYJPJO25UGBBANQ4WJQMGQETHJLXCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D111152041E
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 May 2022 20:05:54 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id x29-20020a0565123f9d00b00471c2bbf57csf6146673lfa.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 May 2022 11:05:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652119554; cv=pass;
        d=google.com; s=arc-20160816;
        b=qmoDhEXUWYleyf+fV27VS1EtZiLI+dEGNGd8rYNKaS6r/n6MyPU4LAg1Y0W6KIRsJr
         AEcOwFNhKfftBVm6NN592JkhatIRn+9DrITBtdwA4KfPf79j4YJu/H+nYuYMDctU3PIv
         cjbVaVAr3x1pZefGbs5XSPq9X1dv/Qryxs7873iFdMAOArF9Qfi6jTCe2j7iIbi8NAlP
         OdgpAZ02aFZ2dZl906NkimMTTr06VIQVuWvaES7zquIT4ZzFjZUBTg35z+oSzUP96AFH
         bGQrMMO4QRWmEvAOr9Y1dt6uICoySOkjl+RC5sRF444maA24902f1IaJiYZxFx6mPJC9
         W6IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6JjeYFStlrAOuTvrz6RzY5bcibuNar/gRfo3yk4fYy0=;
        b=Fv7x2pKxF3DAIPGA5+fhX7qUcZ7fah8QSqO/YJhm8TwLcTVjzKvomUzCKgUrH8y7cA
         +x8br6xbizJJa0k4NBnIbYc6m5Pcz44Fec6SWylka18mgwQlwBDnGLT4+fB2b5+KfJWl
         OrpE1/ICqcBdVQxOqrNdzPI+m1pOEqHvX2IC47b3/ko+Ejy4f1tfUlGvPicKxwkeK6hy
         dc7Rv/VMjxQ+16E7Qz+gL25WZ+8l8jkOco8uZB7KcKFPYh+iEbKd0MZtXL1qH5PAcm4d
         4tat5mCr54cbSGviQpeMqIJIUB6u5FFXVYE2CU6emeo367eH2htvjy20EsAsAF/HYkGw
         a2aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=cdkkVkNw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6JjeYFStlrAOuTvrz6RzY5bcibuNar/gRfo3yk4fYy0=;
        b=aT26RSKLT1V4L8K6526yFVs1DDD1qGNoCEYzmq3e6PHeTQRvBsi+Kk3VIELZSQ7IfC
         07IfrNAobzhJiZcih7VRhPx2/ogRiZIOocmpWY5XohcJya92y+BxQVwRJVODECMTbJYo
         9/qpqXjrln8Df4nEhzZ3KflXVPJPO/9wY4Imj2d/fv/xtRfrf4WKRLvLJtlwZD9uiS9i
         NAjcB/e7IvU6+Fw0bubOAcsmGtaiUvBKKW/IrwQgx3Es5RmEfW07JTg752vo2XoX6W9p
         LdtISjaVwBrSRJ+C1vpHffmBGnRSxN3qj9ptakaMTHgyL+cxIH6I5PaPzyJ/2Sb5aS1A
         EJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6JjeYFStlrAOuTvrz6RzY5bcibuNar/gRfo3yk4fYy0=;
        b=iFnoJY1UGoukaUPPfHyQ2PWXG/N0lZj7F5uZeRYBTj7kfKSa2jSg7JP+dL6K7wAfeB
         X3ugnkgJon2a05dJauud9HsRFk0tTZyXFXA/0hDWuYGXMtLAQL8lfVej7amTa0Zzev0v
         P8AmVAj0XsiAghr1DZkC+PU4sAbvV2m0NcsAZsAPPjeXjy+wK0Zg6EF/26KunMvfDJwc
         s+PzjpuL4XimmEzSlohWn7F5oDVkpimIvKgKe6aDd4rq12qgDhVGYjH8dwIvZdAi5GaR
         IkP6Uwwyr8guyNyIYPz6WyoUgkkiAbE7hIM/VC1hc2wQkfo/sahXFMYVE1/sO65cNf62
         VWNg==
X-Gm-Message-State: AOAM5314O+nj5W3Rf3Mn6Qwu7pie4FQVWl321NjrtYtmRZhpj/1rWUNV
	4+JI7bcvM7gYG9yhpyMVQH0=
X-Google-Smtp-Source: ABdhPJzpjnLb3cLrWy9E3s2RC71T5/AJuI3FVsYrib2i9bbgDwaOeKCGPDg1X3VJtaKbQ9p3yz7WeQ==
X-Received: by 2002:a05:6512:3987:b0:472:5e91:ad1 with SMTP id j7-20020a056512398700b004725e910ad1mr13954179lfu.458.1652119553350;
        Mon, 09 May 2022 11:05:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf11:0:b0:24a:fdc1:7af4 with SMTP id c17-20020a2ebf11000000b0024afdc17af4ls3037376ljr.1.gmail;
 Mon, 09 May 2022 11:05:52 -0700 (PDT)
X-Received: by 2002:a05:651c:2046:b0:250:cf36:eb77 with SMTP id t6-20020a05651c204600b00250cf36eb77mr2480649ljo.159.1652119552200;
        Mon, 09 May 2022 11:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652119552; cv=none;
        d=google.com; s=arc-20160816;
        b=IfJKJpR8QHdJhfepi0G4fVaNwEsztSaNttyH/kay5oIveCdcwEjaC0vvjrrHzW+kFg
         gapTQRC/2caztWmM9vRWFtYDGWSljVu29T57HNAcLSNz0yyh1vVNnxhq/WvnB95JjpDs
         HZMFHfrH9Du/PAEyIbMvJ1YX8dT77/wSllrMrayH2IAoLrdyg2EI7eW6T/nlQFoWeOni
         VGfre7KKY+bqEP31AUaF5c9OyLgxwIaY1AkUeg9P0Raix8ZsjYjsgDL2F6xzTQPACJUU
         SlzEitQpEF+4Bgjt1viN3R1kiU9EOnN3yQ2Ft2CSU0luhOiPl4mFfhnr9cPg7FLN8Bx9
         6JwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AN921NaxNkeCgd+/kg15uAVOqAqbEenfNO325PUsS6k=;
        b=goseMCI0gYEO1S8YHyswBt3h+dA1ZGyjd3HMNMljy44F0syM1ANofCVdzofLESDG9+
         /0V9UKBPxY9BC6MCVi97QsOZp4QZKpuUqcuAvryLwBpLU7ybOMUp2mUamuEo4F23Om4u
         7T/PzzD2D5R6b/wlKH52qPYUZVJX0oAQ8aUMQmdpZFNLP2UbZNs9oG6/rQhObf171MdG
         lKR+gqvB3HSr1JPL/pJ2syKfoF3s2H1sBFWXQpQrV3E/89FmBA+kW0jZsUQVuYNO07i4
         euQBpGlMhY75kMUSy5QkoRjlhbAZarNCpIKVyeH2D30aLTav19zD53grJa6Ot0qxnlXe
         sUOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=cdkkVkNw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id h13-20020a2e900d000000b0024da01a8c6dsi558018ljg.1.2022.05.09.11.05.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 11:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id q130so18010161ljb.5
        for <clang-built-linux@googlegroups.com>; Mon, 09 May 2022 11:05:52 -0700 (PDT)
X-Received: by 2002:a05:651c:552:b0:250:5c23:d0f2 with SMTP id
 q18-20020a05651c055200b002505c23d0f2mr11376317ljp.239.1652119550281; Mon, 09
 May 2022 11:05:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220508190631.2386038-1-masahiroy@kernel.org> <20220508190631.2386038-11-masahiroy@kernel.org>
In-Reply-To: <20220508190631.2386038-11-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 May 2022 11:05:38 -0700
Message-ID: <CAKwvOdkhcJB8Bnrt51siRefWe+ZSvHagCs2G011PzkkrD3cxQw@mail.gmail.com>
Subject: Re: [PATCH v4 10/14] kbuild: check static EXPORT_SYMBOL* by script
 instead of modpost
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Nathan Chancellor <nathan@kernel.org>, Nicolas Schier <nicolas@fjasle.eu>, 
	Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org, 
	linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=cdkkVkNw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Sun, May 8, 2022 at 12:10 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> diff --git a/scripts/check-local-export b/scripts/check-local-export
> new file mode 100755
> index 000000000000..d1721fa63057
> --- /dev/null
> +++ b/scripts/check-local-export
> @@ -0,0 +1,48 @@
> +#!/bin/bash
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Copyright (C) 2022 Masahiro Yamada
> +
> +set -e
> +set -o pipefail
> +
> +declare -A symbol_types
> +declare -a export_symbols
> +
> +exit_code=0
> +
> +while read value type name
> +do
> +       # to avoid error for clang LTO; $name may be empty
> +       if [[ $value = -* && -z $name ]]; then
> +               continue
> +       fi
> +
> +       # The first field (value) may be empty. If so, fix it up.
> +       if [[ -z $name ]]; then
> +          name=${type}
> +          type=${value}
> +       fi

Consider adding examples of output from NM as comments where you're
handling special cases.

Aren't BOTH from LTO?  The first case is:

---------------- T strncpy

while the second is

                 U strncpy

IIUC?

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhcJB8Bnrt51siRefWe%2BZSvHagCs2G011PzkkrD3cxQw%40mail.gmail.com.
