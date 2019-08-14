Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYPG2HVAKGQEHBUR65I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 838008DF3E
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 22:47:30 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id d15sf124497vsq.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 13:47:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565815649; cv=pass;
        d=google.com; s=arc-20160816;
        b=0KTWtGdiAj5qznKzZhjVnoTk1fka0YwWIMP2MSFJmRyFCSSxxzD1Lyuuir9N+MfVF4
         lcSUtguwsBeQwZENbaG/m6NIYl5lJ3HxRZ92RMbbT8p1PppDH64O6k/IAQMbm519Ig86
         9UgXX3lnzzH4XCokI8tKnxIj7mdZ780+2BUtHEKGSluMAHqqc+jTpxdjdsPy1xvnXTpE
         VXTn3TNAtM/SXbEM+/u7YH7lXaaqYO2ZBUmn311BaCnSXWfBoJJf7ZDzd5VEOwAiKMh4
         o31UtjuK72cBfdnFIa5oo5ro/zzoNA/aPATs66qV4dpk3k2zX+nvMPfL5vTAq7zSOXsh
         zbhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8VyqQJlyJf8OjAeK7WDremwxQhbPQtA53wLKxMAUL6M=;
        b=CLqDSc6UFSvA0SGdUC3gfp0c7UU/1RqgD1q1uR0+awuhq8+SZcA9OPNLsbRnw6uBrc
         +CHbl1d6JOMULxo19CNGoKZXCyAV0PrWsXiRIjyUCoE94nki9p/NTm22u/Hk6si2rTEN
         FPyqEdn/B3MnR89j3Hu9RUnwOW5hu/udgVCrPRL+jEGZbMC87cpQ60GnrjXQaXA3HAvf
         t+U84a4TTWyK2DxdtgHPSZ2UpZQI0jeXDYTZbWm9NhUDuZVb0qqRiUiVuclsGjxMQjka
         sDQdcKp12dw32TUFz1iye0LynzcaxkF2xWlu1dWGlfi6YFWtn2tXhkNAQhVoCbOQ9DbU
         z7Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P0DnvGoS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8VyqQJlyJf8OjAeK7WDremwxQhbPQtA53wLKxMAUL6M=;
        b=mtjFinrXnmhWtd+CfmLn8qaIM5kyLtqplDSti/a/YGAgBO3+qH8yHtVzOCuh4PcgRw
         C9jPCVkLOAXy7zimTcTZ3vTmoRYE7KuvyGHI76zBcCLZy4UTgMRkOfsUVKQP1DNf33WT
         1iFKITCRY46Z0EILByoxg6zf4n8e9HHF9Z1mb6K19fUqJ8OESx39hiD0Fr6GSLXFBxxj
         7pWl6mwYl4XDANrzCOOxvAzY7UOF5KOSVOmbWiEe6e21K03jPOqp4gyqEQhn5oDJwp7L
         omOpmIzyB1O0a40XS7lxXJzUBIq3v3qx9TgQUYHRR+vUwZJqwzW3rLJBChYK3UQ5TBU+
         Hlqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8VyqQJlyJf8OjAeK7WDremwxQhbPQtA53wLKxMAUL6M=;
        b=BByMkHMwOthqrhlkT0mIeo60fqpZcinATXHX8o1zyYmCpAGojEoCDvFonwzkiHfTx/
         +PrHW0IWbkTzzbLKzJQjxZugLgvQMamLKjsUx8vnvjpPDIvxmB0Uk1LVjFUbTv8B8iWL
         CRe1kDf0EEKIxKIpogBNm89U9U7vRMUpvApHwyW1sOrDLidWNUQpMKfOWj3f+hYgukr/
         OzXocXTAfNsuVbK9gBP+uR8L94P4g2VnJ3hwzwEOdSr4afQr/t59KfiZZSbekx91t2Jq
         sMcNvSgyovm5ag74OlMPXReqamnSK5v2tZ9UHI5I90i9JWOrNMQlYadgJzSR87YOSCgn
         2WKQ==
X-Gm-Message-State: APjAAAU+DR9c3IMAnMBuTSO2/oEXWE5I5WaCVIk446hfCz/YSTVOfcM4
	7P1yVX15zvNmB/Y1FXoo/30=
X-Google-Smtp-Source: APXvYqyzDDaUui49ltS9nsAexZROpMDdjeYGGf/UJij3mj9mgfYK+9PuomZwca1cM6ULbt8ihA1Gmw==
X-Received: by 2002:a9f:326f:: with SMTP id y44mr1554552uad.50.1565815649324;
        Wed, 14 Aug 2019 13:47:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:390:: with SMTP id m16ls466092vsq.5.gmail; Wed, 14
 Aug 2019 13:47:29 -0700 (PDT)
X-Received: by 2002:a67:fa81:: with SMTP id f1mr1360999vsq.40.1565815649082;
        Wed, 14 Aug 2019 13:47:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565815649; cv=none;
        d=google.com; s=arc-20160816;
        b=q8TMxRV97GTTNXD8xnU6e3GeKG7yggIhg4DvDIllU6n2ghdFROoNTMdYcQ4qg9ToYe
         AGCIwh+VzCyk1DdUvjqckazOY4US0EzxqXAlP6iS+1I6wpsNk3Q6m0suagv5HNxToRef
         Vj861chJRVyZ9Q0wxhl0umlXqYkw6fqWLF1MTFQFXmm1N8aepVZ86nkO2Tzg4gmnUfQI
         JvIiFxFFLucHWElPYZaRHjAtiMRBj9PyQmvXrGIuOHOASOyT2KZ3tLdDyhl8vFezFlQt
         F0ygnw3pB92LlcfuhxOOg1GOBel6vwPtOfPc2Z26GAT0u6R7FgiCpQMmqm+Kqj4TPjy2
         p1Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hnJUpTOtemwk5nBGxuXtKYKIGvqrFiWTsA3kFNPOc2U=;
        b=d2ZqX2bWmoRd6ouVW5JhxQJmWoeP3yPlreNKtc1gg7hsfflqRRqP7kuosKDvntdqzt
         Weu3tFFe0mb12rKabM0wmoL72HEBgc1Qi9mrgGH1ghUVZcMmTu1jnjeH1JduV83EloxB
         09WJW3wQUKoNaZxdJnWoL7JhkCE4CrjElKfybJNSP6u3yYG4qTM6c4iim8loZ/FU7FpW
         egQJukxGkdduU6C2DKjz/qTEJ4WPrpRjbyEcDezL8cPzZ65xr9X7JyEJewQVoUb5+X2b
         nz3ap9z8aumxurLvlgkahAvX9auX7y6vsLm14hbLeGRWrJZG4E0imu0YA0Xtg709xOnd
         iQ0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P0DnvGoS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id a8si50071vkm.0.2019.08.14.13.47.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2019 13:47:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id gn20so139776plb.2
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 13:47:29 -0700 (PDT)
X-Received: by 2002:a17:902:3363:: with SMTP id a90mr1108882plc.119.1565815647717;
 Wed, 14 Aug 2019 13:47:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190813050731.57131-1-matthew@mjdsystems.ca>
In-Reply-To: <20190813050731.57131-1-matthew@mjdsystems.ca>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Aug 2019 13:47:16 -0700
Message-ID: <CAKwvOdkVToVYnpWbvK65izUFG7KVX7J+h4NhsseHsiVU3Dpz9Q@mail.gmail.com>
Subject: Re: [PATCH] tools build: Fix clang detection with clang >= 8.0
To: Matthew Dawson <matthew@mjdsystems.ca>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=P0DnvGoS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Mon, Aug 12, 2019 at 10:07 PM Matthew Dawson <matthew@mjdsystems.ca> wrote:
>
> The 8.0 release of clang/llvm moved the VirtualFileSystem.h header
> to from clang to llvm.  This change causes a compile error, causing
> perf to not detect clang/llvm.
>
> Fix by including the right header for the different versions of llvm,
> using the older header for llvm < 8, and the new header for llvm >= 8.
>
> Signed-off-by: Matthew Dawson <matthew@mjdsystems.ca>

Specifically the header was moved in svn revision r344140.
llvmorg-8.0.0 was tagged off of r356365, while llvmorg-7.0.0 is tagged
off of r342383.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  tools/build/feature/test-clang.cpp | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/tools/build/feature/test-clang.cpp b/tools/build/feature/test-clang.cpp
> index a2b3f092d2f0..313ef1568880 100644
> --- a/tools/build/feature/test-clang.cpp
> +++ b/tools/build/feature/test-clang.cpp
> @@ -1,10 +1,14 @@
>  // SPDX-License-Identifier: GPL-2.0
> -#include "clang/Basic/VirtualFileSystem.h"
>  #include "clang/Driver/Driver.h"
>  #include "clang/Frontend/TextDiagnosticPrinter.h"
>  #include "llvm/ADT/IntrusiveRefCntPtr.h"
>  #include "llvm/Support/ManagedStatic.h"
>  #include "llvm/Support/raw_ostream.h"
> +#if LLVM_VERSION_MAJOR >= 8
> +#include "llvm/Support/VirtualFileSystem.h"
> +#else
> +#include "clang/Basic/VirtualFileSystem.h"
> +#endif

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkVToVYnpWbvK65izUFG7KVX7J%2Bh4NhsseHsiVU3Dpz9Q%40mail.gmail.com.
