Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKN55SAAMGQENTYAVJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id C600A30E5A0
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 23:07:38 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id q3sf1042989ilv.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 14:07:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612390057; cv=pass;
        d=google.com; s=arc-20160816;
        b=YoZNzHvdpv+DcD0hcFQyWQsvlk/9+Hal40kkGgbKG1XEWi/J+22DGm6ZVV0OY8DRmW
         AMeHVhNrEGX/oVC8ulx7O8r2XmV6UZSua6gG3WGN2cbds7KQTETiySmiKGWUa7X7fZQA
         sf2TDYB6PzFarN5tmaNzzlIB4yvPX8jwQn1LlPeFefD5wg/c6NYhUk5RQVVbKwDIXeik
         mwNboypXjVwJV+xO5pLF/o9LZjlntK2ixhcgdDpd3L8S5pQoZnwyY2zouDvjv/5lub8h
         CRmT8L/nc6x714RlFweAQeppyjAi6wwidmme0UWLpevYFcOWLY2rC1PlsZ6Is9Jkh74r
         mV2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=393r1WwRXaWRkOXUcf+/NuW6b3pCIyUZzBDkOfU0Okg=;
        b=jnBX/V2Kt7Cm/ZlI1B3GZehEOeW4Yh8xq7Dh2u0DzoX0p3FwzplFeep6FI0ccjimiN
         cJtVOgs6cJSJi9Tvv9fvGo6D3dskkDp+BkvZykTKBSkbL3h12uXwTuAQHsUb6uBfFtQK
         KeTHouSG0OGcx7tA4CoswEH3lcRmcyyBMIPr4G/t8RwPSxZesW2SXTxMUXmpzefAttez
         uyZ5Z/xtCaQxa+oHGEqmvPfgY5kvlIWrFr499XrsoEzi9xVhdJ8t/Fq3bZ0WoqMh3oAV
         w6IOFyXZOZbF9G+p3E2cTqnW9hmhrtY7rq6sUCEe6t9z9GGm7ixNqFhq/gNYasONMQbP
         LMRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MDAP/eOy";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=393r1WwRXaWRkOXUcf+/NuW6b3pCIyUZzBDkOfU0Okg=;
        b=XNRHn57KobTh/SYn9+iSiEB2yWfJQckPFx2EoQnTvUa3dzJnxw9CaIWgxozx6C1EKl
         hqFHw6Fqmdn5Esg5X/3VVNDB0ras5+usP6BU/s7df8EcPOlLfc55P930lkD64u0YRL8F
         G+JOKc2E9QPFSHhYUug8YXsB4qS4nAWKlwFkI9bBYMr0pCNlTZwC8yJmhcZueabgq770
         LrWEqvos6T8UvBQ0NLJjZKsRkQU6sSljvZKIZUxIkF4iVFOvkDazVQ21rPbHpUQdXOt/
         8wuEt8DELotoDzv1RfEzfRrJUxXAj+mCZzSLrR33aJRUkjoektZqveGuI7UeNqPbrCSu
         GvBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=393r1WwRXaWRkOXUcf+/NuW6b3pCIyUZzBDkOfU0Okg=;
        b=jTGpZb6vu0Lg/yZtYOmHUbMQkBpjbyJLfbLCcP4gbCsgTTzRa0Xx6dMvYenerwBInN
         +JutulY0ej0+HfFaB8NCblZuJtOWnCkURmSljXb5byBvg2hkXOgvUnnZjpgsF88liddg
         U0SlzyqasGNL4kOP6qlfr5smdA1Kq+wuuABkhmkk4X9GWbYBdeqWYxTAKJgsMvnW3hez
         gtz5a7ZejvgqUIEAo7JQTuBLHrZvk8QE2O6sTcoGKoZUFFx2yJAYtkTat052EQjsbjOU
         /DH0OsDFXG2aOisk8xDAHawloJpqOEI21YJ1xMTJ0QDD3qJhkKGPV31ALa6fijvlyo2K
         MC1w==
X-Gm-Message-State: AOAM531LqGsZVHrZiMb2XfDByrEwQbU/MF8zVku+HtQiPU9WvA5oWYC5
	pACjbPTr4XRtVXcKtlefQJM=
X-Google-Smtp-Source: ABdhPJy803zW9yoULmmdoYLqAoTunjWjrFLqw6ADl8ELhxsly7pioySIyS6QnJ2jGnYVz/uZpQibQw==
X-Received: by 2002:a5e:d706:: with SMTP id v6mr4252010iom.206.1612390057838;
        Wed, 03 Feb 2021 14:07:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ca4c:: with SMTP id i12ls431319jal.6.gmail; Wed, 03 Feb
 2021 14:07:37 -0800 (PST)
X-Received: by 2002:a02:cbb0:: with SMTP id v16mr5011098jap.126.1612390057433;
        Wed, 03 Feb 2021 14:07:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612390057; cv=none;
        d=google.com; s=arc-20160816;
        b=iXf182kJdmNG2BstkzAnInTVmUEyF2TcOAHnzEzHPoNnxCY8Nqi3CrqLUcR96GXWoN
         VYFSJYu3n5m26n2rvoadkakPWhDWjVVRbM0x3fpY6vUjRZqcUMPKb3fz0eYPYE+vGtQB
         STRAehcCpPLwDW83ry82R8kGihN0lA1ORr5MQLg6wO4WmXeeuc18ioMuoq7K3qenyKrc
         Zqq07dBMV2Pb5TQvRG7HYel8zBEleDsxVdY6/3X06G64avYcecTzEwTiLIJt1El5MH2Y
         GD7SZmGFOspmRbdMmwhmYNx+bBAqtHIaImWVDofij6l9j8oGEXFJjGGGwgqWcbqR5KNl
         bzsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O6nZdZyk4cH0guJm7TA6JaoVqo+CNeeIlXeJNiI+3dI=;
        b=GafNt3rsMbnvKSkJRD7EKX7VOqw8PsKIK9zHpy9ZCXIqe/s1om6TgY9eqRWearCifw
         ABSSWaxW8Tt7rfjMgjqQnQi9ezAGPiM5DiV4aEAD0Z/CM2lim3w8HuqXwmE+Tgw//3Z6
         7qinmneGRvrWa6dW9IouVCYmFHNd1OjM332C6Ced5wLUbZiGN4ZQjboO7BMZS0XCFziQ
         rI3A9eOvxWmg61tT5Kxq34SMhbOOqMRlGDrGWHxCxsPe4FsNnjldK6j+6XEJckrPNOp4
         o5A4zfDWmMmzXYIbnEtd6TYKSEk3iDtxt+1W21MOAWkCCZcxIUAIIwAjFETX65HlZQYI
         xFdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MDAP/eOy";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id o7si224327ilt.4.2021.02.03.14.07.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 14:07:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id x9so629233plb.5
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 14:07:37 -0800 (PST)
X-Received: by 2002:a17:90a:db05:: with SMTP id g5mr5288285pjv.32.1612390056670;
 Wed, 03 Feb 2021 14:07:36 -0800 (PST)
MIME-Version: 1.0
References: <20210202060604.711160-1-masahiroy@kernel.org>
In-Reply-To: <20210202060604.711160-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Feb 2021 14:07:24 -0800
Message-ID: <CAKwvOdkA7q-n4uwK3u3tvgMmVhypsE4xSCBcd-oFY0XHLnQ7Qw@mail.gmail.com>
Subject: Re: [PATCH v2] scripts/clang-tools: switch explicitly to Python 3
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="MDAP/eOy";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633
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

On Mon, Feb 1, 2021 at 10:06 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> For the same reason as commit 51839e29cb59 ("scripts: switch explicitly
> to Python 3"), switch some more scripts, which I tested and confirmed
> working on Python 3.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Nathan Chancellor <nathan@kernel.org>

Thanks Masahiro.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v2:
>  - Drop the spdxcheck.py change. The same fix exists in linux-next.
>
>  scripts/clang-tools/gen_compile_commands.py | 2 +-
>  scripts/clang-tools/run-clang-tools.py      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> index 19963708bcf8..8ddb5d099029 100755
> --- a/scripts/clang-tools/gen_compile_commands.py
> +++ b/scripts/clang-tools/gen_compile_commands.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python
> +#!/usr/bin/env python3
>  # SPDX-License-Identifier: GPL-2.0
>  #
>  # Copyright (C) Google LLC, 2018
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> index fa7655c7cec0..f754415af398 100755
> --- a/scripts/clang-tools/run-clang-tools.py
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python
> +#!/usr/bin/env python3
>  # SPDX-License-Identifier: GPL-2.0
>  #
>  # Copyright (C) Google LLC, 2020
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkA7q-n4uwK3u3tvgMmVhypsE4xSCBcd-oFY0XHLnQ7Qw%40mail.gmail.com.
