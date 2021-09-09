Return-Path: <clang-built-linux+bncBDYJPJO25UGBBREE5GEQMGQEHLGROPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CDC405BE4
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 19:20:05 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id q9-20020a2e9689000000b001b964fa10b3sf1073650lji.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 10:20:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631208004; cv=pass;
        d=google.com; s=arc-20160816;
        b=x17l9+khr5eBHYMF9eLHnpN4teIgpMFWaI+onJH/xs5Gw4CcgMkWX4V37ltukHU0eA
         waj6HsXpiq6JsUNtGBg/Fy244URk9YTuAhvnroB5Ws3MUA0E1XdneO+PsCPQ2fippZcJ
         zq+ieuZplNmzws3MuoFD38aSurb+OsiTAD6XPtOxVjIzpUSRWCU03wcrPoXwnMTACRf5
         XxBqoR5Mnavc+CT0O6xkjbWIXFus1zata7proIW07WdodGb8BDdIxVN+quQa9LGP1dVb
         cdxB7FOY9I1yWSgFgmoXAvdlX0OeH3EutL16pEpML8UdU9QXRf65ZmXwgxp5CU4xlDmy
         tf6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Owdm0GQoY7DtixUrzu9XutdZgB/rnuKQQRP+LdbzyGg=;
        b=A/L1sIhRUfB1ZQvgJd6EvC1m6ZPrO6RcwqIp8Oosu57CplaeEo5HJSovYBJN0NY8Nn
         GOzmvJX6MxV9xihlUV+gEsmaQvjExYejm74NyB/YqHm+UDmVLvsuOBhaBogv2PRBpwry
         eWPQVtIGNaSF6i08TLIFlnVXkKr8RZFMqet1QiLY+0zSaeYeN4csf2iK7OMxldidcQP3
         In0T4/j80TB0wXTe7e05VkyTRhEPlPvlFd2hueRcV7UhdTj/9uqr2ENEpiDTjSIBxEqd
         S8HHFJ+ZSeOOZLHAnk6IvMVGwu6j/h9fl1mdzyVXqTB7VhNnD2sQlZ7/UlgdKathoXws
         0WZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=H77m2xie;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Owdm0GQoY7DtixUrzu9XutdZgB/rnuKQQRP+LdbzyGg=;
        b=g6NPU67bciv5A5YybHTEbSx/ejZB2Y1p48grHWUuFcr4cy3zEQGT3dpatWhNFAil0a
         F+T2iAPPCSl6kcN0LKg6pgjlmhYzUayUqkJAtiRX2it1IjASqC8wBttFhgQrWXWg72Qp
         FiBoM7bDFgzJMdqlIaDupAIVFypp8WlOTEU8P5d5E3gJQpj2Xj910miY4TuGUBKP2JhS
         ck/HMYNtnZsBd6czzm0jKWlaq8a59iYqz/NFUDKLDW4CCXXBhxqNZQVoVszCaeX1nx/1
         qLJc/hHS7u7miyS/RJ1s3Hav/Vyq8kQp870Ed39hWmTDdTi6NyrFziUQQyw1v0J32DJf
         fs1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Owdm0GQoY7DtixUrzu9XutdZgB/rnuKQQRP+LdbzyGg=;
        b=NosiGLh1nvxVlWKRxGdjBWc5+fn0oTekBxjtZd8+YzktBi1vJnBRVcbkDt/wK1/K0r
         X3oR8+0VtgJj/JY2/j5xXJTQXAqzwvsBk3bOFTalNBjyvwmA6IwgdpC1iq8dM3UmoBm6
         KOeh+TPAFJw35WlNfFvJT8tJIB/pvapvRLd1Y51dPjABy+szsL6Fnt2YlLLjK63noeE3
         yk292UOX+1n9iEnfwpsFLqLSbsWk2szw+KMfRCRVtFPGEGg52SFrv0hHnZdbLEdPZ5tY
         2trrp2iGJ7fIKE9tNqrSG+x2/7F65R7WlioDrG7Rxx0OZgw8G/KlxW7Sn/yNR7lfQfpm
         vVLQ==
X-Gm-Message-State: AOAM53201VIKaA5oHFK5k6Ti98ShBEJ2p+JXJv7TqqQp0Xox0gLYyXed
	9jMzMX7Tmw/AOWYyhNs0OOw=
X-Google-Smtp-Source: ABdhPJwsJSp1Az7bykHHP6lxH9BgYulvDUTJjBfcwAWsC/a7kMkoOQR2ML9wIAqFsJbTFKAO43Qfpg==
X-Received: by 2002:a2e:b60f:: with SMTP id r15mr775786ljn.330.1631208004617;
        Thu, 09 Sep 2021 10:20:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls1082858lfi.2.gmail; Thu, 09 Sep
 2021 10:20:03 -0700 (PDT)
X-Received: by 2002:a19:7b1c:: with SMTP id w28mr662530lfc.555.1631208003617;
        Thu, 09 Sep 2021 10:20:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631208003; cv=none;
        d=google.com; s=arc-20160816;
        b=oZkr6m6vbzTyHnJY7mFa4m5lpnNYTA7Ia0fPLiKGzQKmerwsDejXpN5IGNlSClK2Ll
         GsAq7oDDjVTuOmMGGdXKLrSsCx2v9cFQsYd9L+E27rkph1HrflKRp5l8HnZAXBmWldad
         KcmWXz950wx+Ug34ic20WMXobPUrHvNTT2TnN3Ld9LOYQ/y6aX59ovd/ILCBnc5h0M4q
         TwTj7XBIiVfAHpnGAesK4CynO6AntMRK2ISIknKgUm8iDxGT415Ch7Ww+PXMY+M7eKsY
         T/sjXByB+LWR4TjRQYOSyH3mvTKN4qb/YAmgfq+uxGjjaAn/DPxq31gB9jPQdj7aw6xp
         I2Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kqUD7oeU8HrXDjBJQpN5xhdFutamIM3hkjDh1/885jM=;
        b=X2vVTOAX5k9KaPw9VR1iomLnqtvQDljtcHFaSZIEm0bYTdttRDF6HsGBmp3Wiaf06L
         GFjJYMi15qdOCYzEXCs0Top3hCMYS7pfhcU4ARXfx7fCrbBWZw9ok8j7OuBi42hqOvdj
         XEmL1aaVKY4SCVgLQbRoyL/H6W9/Ot9MwCDclKqMCCpSqRCvVZsEBWk7X+kzB+OBLBzS
         BAYYD4FJO1CGDrgZcsAefhYBphfgG/+zyVJwPuzf+0b0pgfQiNj5w79/w9P9tydxoKB7
         eim4tNdizlKYB+KM3dicJen8MI4lNYpAvIBj++iM+gL83KxOewp6AvrlMyB2ndMqlkB8
         Uomg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=H77m2xie;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id h20si139541lfv.7.2021.09.09.10.20.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Sep 2021 10:20:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id l11so5148713lfe.1
        for <clang-built-linux@googlegroups.com>; Thu, 09 Sep 2021 10:20:03 -0700 (PDT)
X-Received: by 2002:a05:6512:139c:: with SMTP id p28mr642656lfa.523.1631208003105;
 Thu, 09 Sep 2021 10:20:03 -0700 (PDT)
MIME-Version: 1.0
References: <1631173363-40160-1-git-send-email-ashimida@linux.alibaba.com>
In-Reply-To: <1631173363-40160-1-git-send-email-ashimida@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Sep 2021 10:19:52 -0700
Message-ID: <CAKwvOdnuiV3mHxxCpWbMaZn9vggL4B+PPrMtuX=QOO-yUQj2mA@mail.gmail.com>
Subject: Re: [PATCH] [RFC] kbuild: add CLANG_TRIPLE to prevent clang from
 compiling with wrong --target
To: ashimida <ashimida@linux.alibaba.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, nathan@kernel.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=H77m2xie;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Thu, Sep 9, 2021 at 12:42 AM ashimida <ashimida@linux.alibaba.com> wrote:
>
> Kernel compiled with tool chain CROSS_COMPILE=aarch64-linux-android-
> will panic during the startup phase.
>
> Clang's --target option comes from $(CROSS_COMPILE). At the time
> -fstack-protector-strong is enabled, and compiled with command:
> make CC=clang HOSTCC=clang ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-
>
> clang will insert code like:
>    mrs     x8, TPIDR_EL0        //default value is zero
>    str     x8, [sp]
>    ldr     x8, [x8, #40]        //access addr 0x40
>
> instead of the code that accesses __stack_chk_guard to get the
> canary, which will cause the kernel to crash due to 0x40
> address access.
>
> This patch (from android) is used to remind the user that current
> tool chain cannot be used as the "--target" of clang, the user
> should specify an additional "--target" through CLANG_TRIPLE.

Hi Ashimida,
Thanks for sending this patch; I recognize it from Android, which we
had to carry for years due to:
1. reliance on GNU `as` ie. "GAS"
2. not distributing binary prefixes of GNU binutils with a target
triple that clang recognized. (ie. Android's binutils were prefixed
aarch64-linux-android- while Clang expected something more like
aarch64-linux-gnu for --target=)

We solved this by working out the issues in clang's assembler.  With
LLVM=1 LLVM_IAS=1, we no longer rely on GNU binutils, and no longer
need such patch.  You'll find it's been dropped from Android Common
Kernels now.  With mainline, LLVM_IAS=1 is now the default when
building with LLVM=1, and CROSS_COMPILE is now inferred from ARCH for
LLVM=1 as well.

So all you should need is:
$ ARCH=arm64 make LLVM=1 -j$(nproc)

Is there a reason why the above doesn't work for you?  I do not wish
to see this patch upstream (or downstream; it should be unnecessary).

>
> Signed-off-by: ashimida <ashimida@linux.alibaba.com>
> ---
>  Makefile                 | 6 +++++-
>  scripts/clang-android.sh | 4 ++++
>  2 files changed, 9 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/clang-android.sh
>
> diff --git a/Makefile b/Makefile
> index 61741e9..09bb314 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -586,7 +586,11 @@ CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -
>
>  ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
>  ifneq ($(CROSS_COMPILE),)
> -CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> +CLANG_TRIPLE    ?= $(CROSS_COMPILE)
> +CLANG_FLAGS     += --target=$(notdir $(CLANG_TRIPLE:%-=%))
> +ifeq ($(shell $(srctree)/scripts/clang-android.sh $(CC) $(CLANG_FLAGS)), y)
> +$(error "Clang with Android --target detected. Did you specify CLANG_TRIPLE?")
> +endif
>  endif
>  ifeq ($(LLVM_IAS),1)
>  CLANG_FLAGS    += -integrated-as
> diff --git a/scripts/clang-android.sh b/scripts/clang-android.sh
> new file mode 100755
> index 0000000..9186c4f
> --- /dev/null
> +++ b/scripts/clang-android.sh
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +$* -dM -E - </dev/null 2>&1 | grep -q __ANDROID__ && echo "y"
> --
> 2.7.4
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnuiV3mHxxCpWbMaZn9vggL4B%2BPPrMtuX%3DQOO-yUQj2mA%40mail.gmail.com.
