Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZGKWLVAKGQEV7C3SQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 203F186D5C
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 00:42:46 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id o202sf41003292vko.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 15:42:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565304165; cv=pass;
        d=google.com; s=arc-20160816;
        b=a0HsarXxR8vTeB1Kw2M+Vdg1nXNG8sjkWSv5oE20COyO0ym5Xmzo2LGLDcwOXY0f8T
         NMlAuNo8FG3MKw6rFA6NCO/P4FUZHCZrhYiX5cVccTGM39WV4ktXAvjIVUCilH5WF15O
         8DC73aAAGHA3qf4ZshCaNi51+OaYlovXK1Sh7xx4RSyhF5dawKJJSLQpaOkHjsZSK506
         tk5KpLwxZuQUGbnjW99/KmCrcKr6BHYOH+1Loqkx/Oo5kGeFn0sJXXd+yqoGV0iDxCJl
         rFoBesPJPuJ//oniQL501kDfdjkUnkBzebLq26UJ1ahUiZWZU5FWkcVQpLvu3jqkqcpe
         jdQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ClCYQhUnaRzJnToulNu3GlkpVtdYJrM0bppcApmNcnc=;
        b=SOsCYlvn6uOyAvwCol6xaXTW48o2RdEIBFk6yKAFq94OzS7WQE6QOCYllCDki5X2ru
         gkACm54tvJjYIeRhgpIlCAfUCEre68lRn/mhUPZApFxIm3kVCciEPZvqAXscEhpo/Xx5
         ZH4rcrLXoM8d9GAuyvGTuSHIjpNKfDQicwNGOpZoRmUUGWCChXa7U0iSF25QLte+1emt
         ct4fSV9aBIrMhGfhz1Hp/ZE9gnnoqQ7N+Tljq0LZoY/C7zJKAOHoHalrzd5C3gQCI1hd
         KMEagtgQYh5NBGxIe+ykZagVHouiT8elG8U6kBS+yhBmRXFM4bS3oQrOk0SDew1yd1KT
         e5Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nRY/jvQR";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ClCYQhUnaRzJnToulNu3GlkpVtdYJrM0bppcApmNcnc=;
        b=RYYUMQhsOGzIDqcBabaMWgMAjzuRhxEjls/5jHcin4v4uBU9c2eedqJ/DXi6ygwazG
         LpWvvG2aSdHEcUPRcSKuK8HbsElTCwZ9w+0kjNVj48ZCNtow0m4EMcDeOasZII6mcgsV
         cXIGhVLcbS7LmTrr6JW4U67lKnMX/nbwfS6gnoxHes/t9Crzchuc2+p4cRGpBfeAH3ZP
         tWgCPyzlPZezanxduZrqoNvR40lrk/rsEnww9piF/h/eAMnPQ8TDCRfKZZ+5lYqF+WqC
         S9HQlIJdfKfD43Srur8vqN3aWPCdHYhiNiNtILHKBpTU+lKfgyEuTdPlrMFM414nctWZ
         tGfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ClCYQhUnaRzJnToulNu3GlkpVtdYJrM0bppcApmNcnc=;
        b=Z91+F6iKzX6QAEwYsHeLdtRhWS/47RWT4mGLdXYl8etVVLsI9maAJc7GAaWhAduS4u
         NdHYWJYlFdxfSu2/b0CUE9WshzXdlBeILqLegBCQYqdnNPTkdxUTQGs4J7guLgcchn69
         zcTSbRk2O2W3oX/v180qpXWOCoQPQ2y1P/4EbV54BlnsCQrNo9l5QlNeHLyQr1AfQGPf
         CRuBuy4xqEUd8xvRglLPkGCKAnxU3d1BW+T2ISMjU1Ko+2qnf0ChpC2wZ955TmzPKs7o
         b3iAf/eQqwud5wPY3ys8n0ucQHHKvSnVjgDpgQqlvi6tS1Uik9MfjqSKkvZGvlpHMju/
         5Ecw==
X-Gm-Message-State: APjAAAVVZ4zWjaV4SNe709NM+utxUkqrQj/UxtAvKN6jCoktNEIIJVbw
	f65wKfLumcJBZYtnU/9wLEI=
X-Google-Smtp-Source: APXvYqwiYl2ZA3yDpg0vBi0AMohN8+tnmyfvINlaqqzP3m7kgydDp71I6JSRiPc5wI0TDWuRDFKd8Q==
X-Received: by 2002:a9f:3770:: with SMTP id a45mr11405447uae.64.1565304164888;
        Thu, 08 Aug 2019 15:42:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bd14:: with SMTP id n20ls3536929vkf.6.gmail; Thu, 08 Aug
 2019 15:42:44 -0700 (PDT)
X-Received: by 2002:a1f:d507:: with SMTP id m7mr7165286vkg.11.1565304164607;
        Thu, 08 Aug 2019 15:42:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565304164; cv=none;
        d=google.com; s=arc-20160816;
        b=vR/ooC/zgGJ8cLblSjcKqmUtT8Q3s9umQoyRwkrFrMX+SSIbB9FHBFkg+t6NPNnsLI
         Cqhrci0jqNXQYuq4Ka+ONZzt4rj9Wa9Yi56C/uGjUXps8lSmOg727XILcZk4vGqCFSGT
         gY6VK6vBXvvl939oacAAo3w6N37glvyCLzkkX1PsPoBWE0mB+CwQQlDsQ+EWd1gA30R2
         Uf6oEOsCcU8m15pWbcFVqJsdxoOBx2yoI1yf1aLbFySuNnM3NmfXmr5hkwZhB+dDa84F
         Ae4aRRXdJgZ8cxr9Wrpx6puQh+WvDAPioUGEf9eILfMVCYkPEnrCWFbRqsoNWtrFPp+q
         gQwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JkOjhYqmVRygeXcaYXbju3SjcUYO0g4hzKDTnSbIWT4=;
        b=XJOFzwhDJYO8PijulNceHWkw7RQzMc9DxSOhUuAWFvqcX5vcOLIW/tuJSf/UD7IGNS
         pBGYhjENg4bURRMc1y7D/XvkUmkKheisJNZh3X7+tzF0rUv46X9nZsXo859rut1YpxoM
         boKQlyOqmmK6ll9jFnBi059rGr9U4/wnR9CX9ZHNLxq73u2KRpfQSQ+mRM4K0TXbFIHf
         6o9h71EbBQU8NK9YDpDsC2iVeW0gtie3FWp0QfIFguI/ejIIbV5HtdQ5hxDXFGUcafua
         kLbGh5kBOehPWSnh/ZlJMYG2XRQvkh9AM0KR+ypOC/HDuU9o54D4cYXlL/kaWTV2zPum
         j8OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nRY/jvQR";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k125si5058701vkh.4.2019.08.08.15.42.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 15:42:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id g2so44909162pfq.0
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 15:42:44 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr729148pff.165.1565304163344;
 Thu, 08 Aug 2019 15:42:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565297255.git.guillaume.tucker@collabora.com> <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
In-Reply-To: <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 8 Aug 2019 15:42:32 -0700
Message-ID: <CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u=HG6peov8Htw@mail.gmail.com>
Subject: Re: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the environment
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, 
	Mark Brown <broonie@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="nRY/jvQR";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Aug 8, 2019 at 2:07 PM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> Only use gcc/g++ for HOSTCC, HOSTCXX and CC by default if they are not
> already defined in the environment.  This fixes cases such as building
> host tools with clang without having gcc installed.
>
> The issue was initially hit when running merge_config.sh with clang
> only as it failed to build "HOSTCC scripts/basic/fixdep".

Thanks for the patch.  I don't quite follow the exact error.

When building with Clang, I usually do:

$ make CC=clang HOSTCC=clang ...

are you trying to fix the case where you do:

$ make CC=clang ...
<no HOSTCC set>
when GCC is not installed?  Because if so, I think it would be easier
to just specify HOSTCC=clang, but maybe I'm misunderstanding the
issue?

>
> Signed-off-by: Guillaume Tucker <guillaume.tucker@collabora.com>
> ---
>  Makefile | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 23cdf1f41364..c8608126750d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -400,8 +400,8 @@ HOST_LFS_CFLAGS := $(shell getconf LFS_CFLAGS 2>/dev/null)
>  HOST_LFS_LDFLAGS := $(shell getconf LFS_LDFLAGS 2>/dev/null)
>  HOST_LFS_LIBS := $(shell getconf LFS_LIBS 2>/dev/null)
>
> -HOSTCC       = gcc
> -HOSTCXX      = g++
> +HOSTCC      ?= gcc
> +HOSTCXX     ?= g++
>  KBUILD_HOSTCFLAGS   := -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 \
>                 -fomit-frame-pointer -std=gnu89 $(HOST_LFS_CFLAGS) \
>                 $(HOSTCFLAGS)
> @@ -412,7 +412,7 @@ KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>  # Make variables (CC, etc...)
>  AS             = $(CROSS_COMPILE)as
>  LD             = $(CROSS_COMPILE)ld
> -CC             = $(CROSS_COMPILE)gcc
> +CC            ?= $(CROSS_COMPILE)gcc
>  CPP            = $(CC) -E
>  AR             = $(CROSS_COMPILE)ar
>  NM             = $(CROSS_COMPILE)nm
> --
> 2.20.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmOdJspcO8jqUhqR63-MOWkV3ZrVcCO6u%3DHG6peov8Htw%40mail.gmail.com.
