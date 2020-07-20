Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEV7274AKGQEJFNPRJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D9B226E1B
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 20:16:51 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id l7sf11760530ioq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 11:16:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595269010; cv=pass;
        d=google.com; s=arc-20160816;
        b=iOckDRa+X/Lmdxp5DwpLIR3E8KWff9QG93FSX1S27Z95KOnFisE5U2gBOQdnW1PXcM
         oH7AhHsn6KgXJQYVCCH6ZlFCGG+14T57xiuTH93jrA20nj/hWheRRh0vzCiiOkSaaNZ+
         vFfHdTxnLsEtz38efb421M33tRvUE7t5VVjcAbSC3H/+m49Z8ZXT7Q15Hg/DFaTdmyFQ
         SCh2joyTC9Iu5iFKK9gnybE+tM7QY7rCjzTpTjq6kKo8t21PBZBePwA1VOcrcAIwB5Nj
         4YO40IOrjyFLftSvxXkrCeznxtboEQU8deqoRqEW2JHBE1kGTtuCNDWrQ7p8KTWQhftS
         7Vgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=So1ydb6WiNXE0keYX98MAc5+t8MgGkzv3YA0YH0kqqI=;
        b=dZDaVF9tVIedg5NCyPCRshfFzKE02QAlz26hMazdo/UjAMuTr8SC++2yKgEOpbbdRQ
         jmltMnjCjBPCDWHK5ld6HZ1TZorIa26o5c8kgkRsnqcNz60BEjjQ3KPbypzbkfEaXZY1
         ZEQcWVYBkc4LLwbcKbRBm9ruzXo5PKvOKCT3BcOBguoWDTjYMKESIWlymi/RELgM2n7m
         3aYuLBonlzv2PF2gODULHzSK1FbalhqKjkJ9xUES9ugW1t3bz3OlXWfsZ1nUY9cbTbCL
         FPnmz5eVZLvj9dzm2MQt5MScwcJ/ZC8aq6dL5LYRiYPw2fChRpSHbXoOPBaR9AYCFmDP
         Iskw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PYgaz8uk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=So1ydb6WiNXE0keYX98MAc5+t8MgGkzv3YA0YH0kqqI=;
        b=L37Xl4+XKIgrocuA0M+Dj7SkUXcJACjQNph9UqR5qZ2R2I/wOpuF6qrPTbh9f8+oM/
         DcBUOzZJMXTQ4v6dOdRUiZPNW4gdOAQzlWI71zjw5GssuXPmN4dwJbXKz2cKlF73YO3g
         Ec4PBQnPSASlEPlAKju+wchuSleyQ/zf4bKeYh8KtJZvTuBSDR1JMlFkCFleywoRTdeX
         3hw/6Dt54V8czjKc3pUH3rR6JXwd7rpR7/kC1v6er7liEO2lzl++clL/e1ahupw+ewlV
         wvFh1Z/3jXJzwm/Yn9JiF1Mx6LoOjK4if524bhQ3/A0pWgXf+SLzQ/gNpRAg9Po4ztVp
         y9vw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=So1ydb6WiNXE0keYX98MAc5+t8MgGkzv3YA0YH0kqqI=;
        b=djBgISeLEFQkhys+JQp+CY+jtsIU6WF5fSHQQVW8ki7uDI5JGKQ2YO93EV0Uj9XFz2
         2pu0Q3YfmBrZtniHwSP+EN1C9UnF5dS/hOGR+gPZNCbgJpMNfJkRYloaJnIeKep4Ft8m
         Q4rfQdw0nMUq9tNnV7vpa5QBQGVkdzfqctQTn0U2Z/hveraxpKF25Uj6UBbC/VTs9FH/
         hxIpmgcyVLSHLYZPKXhiYUFx0I+2TGVc/U/Oz886U6kX/ad/5lzG+XDXn8OETdYrecXA
         C6hADq3C3Rwc//S/m9pLdhlEeEmxOJzvsI5gwiBqlePE0Uz+ir0BfgPinUqyI983JVi7
         zkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=So1ydb6WiNXE0keYX98MAc5+t8MgGkzv3YA0YH0kqqI=;
        b=h6LwfTPTm1kRvS3jToWu42ZzPKqY0Jbyf6xR/Vfi2jZmLtDvATZGIW+q3CKraQ5/ld
         ITAKIlDGGbrm3pGYbQLNfCJQt6pswVWqa7C7APfo5QC4S8GQzZKDKW/NCyHxz1IzjJ5+
         9SnTg/JXnVUldyKf0SWcTy+uCkrUuSyiMxEhPwWdMNuxnh0LrX92DSzwwtZc7g4iJD6r
         614UrXzEX5wp6eO0jf9AdX9Ls0uvlAKcen91pnygENRKAxpchCvr4ygJ54uBnHucMbyt
         qFYzeRUTbYy8KNHHBEq9R1Faw+VFC1Rl+jnzscxy3oUf8n+Jie/ck9tyje+/BB1ZHL99
         j9Zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310j7nOywoAmyUHSOLWGHn9dZC1jM/NwsSM9ZO+5R/HoqaAeKdS
	JWlL2PKAEofnBtf9gcwVcwU=
X-Google-Smtp-Source: ABdhPJwQU5eevOUU4Y6dhIPqFP0XW2nYmgN9uBmn3N6OIApX6ZMQSfTWOKL9FDHCKbbCGRviA3D9uQ==
X-Received: by 2002:a05:6602:2ac8:: with SMTP id m8mr24662543iov.36.1595269010727;
        Mon, 20 Jul 2020 11:16:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f13:: with SMTP id r19ls2549725jac.6.gmail; Mon, 20 Jul
 2020 11:16:48 -0700 (PDT)
X-Received: by 2002:a02:3905:: with SMTP id l5mr28405725jaa.64.1595269008914;
        Mon, 20 Jul 2020 11:16:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595269008; cv=none;
        d=google.com; s=arc-20160816;
        b=digdJJks4uFaLKEU3p92fISoBoebmwOp5VgrfNptJVz12mkKYTBAsPBf1gYnM6YgHe
         1Av/NdNYl7FDAuBGJ9A8bfeTvxamlLm+MFOLHtEdttzqz6PDyl1dy2kJ6LCSntFWQ/In
         Q+veRuPu9z/SzL0KD5eW3GIKKtDtRLHPbsuPJjkA9IkAG7JLKVWK9llaL3sLJBXlyRKG
         cBB/ZRx2EdOEJLwjxWhVJZ/mxP/XUjIZDcVRC24CcrPeMe7Z/y1HH70htDo4i6yHt8yg
         NGGkSNWCM8Q5FWrdXhKgowudDr5GyvNlhhy9Ox5ZTa+vyOUvW/J+WmxqDELJLZQMGlWc
         EgeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ETJ2D0RbiCTVneTSz7ImUhHwcWQNimPW4gdoAxG1jvE=;
        b=eK8VPrIp12UAT+1doVHmA9A8+Wlg91uHlrpI+U8AJCB3d04u+0ncB+mKGi1dSniI19
         J7JQZMZMQWYwLYj3wTV+KjyClUZlI0pbB/ZvJ7AuTXInbavZrCX24yuzJ2kBgilf8Cnt
         q7p4daxI9Yg8OsH1ikdEM8xKNwxmWP+LeE7jx7sk05IeKq/ltSmnRjDzjXEPHcH5oPHo
         SkjCAHLV8uhkCE1gS9Cm9mmOIlzq+IPcgT4D5Rr3Y/BwnWKwRffg7oRRs5I43f4ITavh
         /9kTppj8oXxYaPO29sQN1pVwj7Mujs6fbX+qf7R1+7P4d4teg0ATl2tcmWvIQvZQZ8u7
         iiUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PYgaz8uk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id e20si818686iow.4.2020.07.20.11.16.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 11:16:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id g13so13904170qtv.8
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 11:16:48 -0700 (PDT)
X-Received: by 2002:ac8:6602:: with SMTP id c2mr25099661qtp.243.1595269008281;
        Mon, 20 Jul 2020 11:16:48 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id h81sm299996qke.76.2020.07.20.11.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 11:16:47 -0700 (PDT)
Date: Mon, 20 Jul 2020 11:16:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Fangrui Song <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross
 compilation
Message-ID: <20200720181646.GA6160@ubuntu-n2-xlarge-x86>
References: <20200720181237.3015826-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200720181237.3015826-1-maskray@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PYgaz8uk;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jul 20, 2020 at 11:12:22AM -0700, Fangrui Song wrote:
> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-,
> GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
> /usr/bin/ and Clang as of 11 will search for both
> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
> 
> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
> 
> To better model how GCC's -B/--prefix takes in effect in practice, newer
> Clang only searches for $(prefix)$needle and for example it will find
> /usr/bin/as instead of /usr/bin/aarch64-linux-gnu-as.
> 
> Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> appropriate cross compiling GNU as (when -no-integrated-as is in
> effect).
> 
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1099

Sorry that I did not pay attention before but this needs

Cc: stable@vger.kernel.org

in the body so that it gets automatically backported into all of our
stable branches. I am not sure if Masahiro is okay with adding that
after the fact or if he will want a v2.

I am fine with having my signed-off-by on the patch but I did not really
do much :) I am fine with having that downgraded to

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

if people find it odd.

Thanks for sending this along!

Cheers,
Nathan

> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 0b5f8538bde5..3ac83e375b61 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>  ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> -CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)
> +CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>  GCC_TOOLCHAIN	:= $(realpath $(GCC_TOOLCHAIN_DIR)/..)
>  endif
>  ifneq ($(GCC_TOOLCHAIN),)
> -- 
> 2.28.0.rc0.105.gf9edc3c819-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720181646.GA6160%40ubuntu-n2-xlarge-x86.
