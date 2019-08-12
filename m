Return-Path: <clang-built-linux+bncBCIZXNVJQEIBBAOYY3VAKGQESVE7HLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AD88A56D
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 20:12:18 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id f28sf97541169qtg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 11:12:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565633537; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZDovwoOfvRbIyIy15gR2qSEt7L9ubJ+dJgVI0GJR8rg/XfEm1AFX4CICGWe+E5IhaL
         tQBkdRqxWr9CFJQMBEAT1eerjOO+Dyauq6euIvUF17rHFpleyLgWgMOXbVHJZt3p4Knk
         7fMUPfrlYM2ezroW5bY36wAVVfud1A7oqC0e8R0QBrSBe2k+gHWbL2QfYmTD9wkjPbsZ
         RORxRZTgv9Cp1enAc+6virChynW8E3qZX9d8rWGDXiNS7k2bN2QmERZ4ytMcpJK0459R
         Emq8OAomHV/atQU8Ld77AASQqWxyhY9eQHvsfmCLhLsZeMNYAfKItrdl2cAyvxheiujV
         y/bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:openpgp:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=lYmJHG5Vrgsf5amFi/c0ERZqKiPlPYBWya5tUzlEbA0=;
        b=bHe5EYscm0bYHMxJgKteMTrBYqSfkT1V98yAPvfwNHI7q2QyshzvLmnvq6Dgb5dwLO
         5xUUsVQIV2qsGar7PtxHhtJ7i3gVm8GK3FPS82L/cP4qBxbubK66FkMBsk4QAExv53Ep
         l23RaYZ+EYCndtnURRD4aEyzH8WNVjVdCUTG9pi6ImlYGBtpozoF81ulcuiF7Q+waVR/
         JzlxiwNlewzstsGr+jMxhTzaM+v1VcpLPA1g0ekeG7NQUhKFEjPCDBKRbFK8oMxsRwWg
         tPfF277jzegFMBSjs/+C8mtaA7HLS9wSvvxT1IgZfG/W+g5+Jzpsa3+oXT593QaeWu5L
         G0vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=fUXVnl85;
       spf=pass (google.com: domain of jukivili@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) smtp.mailfrom=jukivili@kapsi.fi;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iki.fi
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:openpgp:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lYmJHG5Vrgsf5amFi/c0ERZqKiPlPYBWya5tUzlEbA0=;
        b=f7/Dj9CGiC87/ibyZXqtTLwzN8kzLEB9gN1uPvvx5fa5zAld1tYFNr3BbEBCgYkiRn
         u+J0u/Y40yPKLeAGrGe5CaOEPLGwS6sEkAIV239OJ4FQt8ns9Qg6+LQk21GaDToYB2po
         pjvLWPG+QuC2E5YCp7Zm5UugS+vq0A7roPl2q9QGaT7wjrIb873z0B8GT9I/FMbkgfJE
         a89yfUOp2O5jLPSGKq72YHIuRq+8+ReVMd70SN4dsTcO1Ils/wjIQHnlXD498Y57fY7P
         F10VI8c6rVnBZcxmsGgjEVoQSB9RFSzGA6OvEN2iRf+wdkRQ8qJhANpfJsfZOVBwvB5C
         1nNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:openpgp
         :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lYmJHG5Vrgsf5amFi/c0ERZqKiPlPYBWya5tUzlEbA0=;
        b=BSvB9QXeq0vBQTQp0In17uQuwWfX2D7RANLE9CLi7Ab/CI4DTzOJKRr4F8/AQioZI+
         jO+kkcdusu5dP+zqBU7vvpRmKd+Mj/1VCEvi+8pYSbkxB90sm22BD65xZcoXZhTFELfl
         hqBnQOxI9Sxc7O5TzZcdjH+OHKsAS5pglbKYZlf8tRPQRtGnq63boZJaPhbVpGaYGf2f
         dDxysk+ZTxGRJYGp5TTqQI7NNopI+SFSZ8Nd4G5pVKXw3GjFDVoM9TlIkbXc6tjL2LQo
         AjgpqfII1QOe1bs+3UYJvxxucjZ/lNnQWbJW2Ba1ZLcugTBP7zT6rvnz5Limxkp9QKz2
         iYYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVDhn46an/FR2IXQT+7e8JPWJ7/iIhERXDxD87nBtlL8VsJUj1+
	5uj4BmB88O9TAhYU3clkVxw=
X-Google-Smtp-Source: APXvYqxwNMTZCv1ud2Nq5CN7RBFMIaYhZaIvjNQye8jTFEttrLGvzSx9w/oMxikx8TOFq11Qh37+WA==
X-Received: by 2002:a05:620a:41:: with SMTP id t1mr30527268qkt.423.1565633537166;
        Mon, 12 Aug 2019 11:12:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d4f:: with SMTP id g76ls3704190qke.0.gmail; Mon, 12 Aug
 2019 11:12:17 -0700 (PDT)
X-Received: by 2002:a37:6844:: with SMTP id d65mr30438607qkc.398.1565633537076;
        Mon, 12 Aug 2019 11:12:17 -0700 (PDT)
Received: by 2002:a05:620a:1410:0:0:0:0 with SMTP id d16msqkj;
        Mon, 12 Aug 2019 00:35:55 -0700 (PDT)
X-Received: by 2002:a1c:a6cd:: with SMTP id p196mr25687717wme.111.1565595354970;
        Mon, 12 Aug 2019 00:35:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565595354; cv=none;
        d=google.com; s=arc-20160816;
        b=KX8bup1ixoQgvnYrILEuMFgb2U0PAk8HOt0IWjY/v3PXZqW0FDDDE+H4lYCqzSyz3r
         Er/mKNJ8+ldE40huxVEWNWfTlYlHmjPwCYouwC18sVRCrZuEqaqO97wliNlrixFJhCbH
         9QgkN3z9XrhkbO7dJ/jCMdLqd7Ky9OOYFDk+UaZpe11WmOlsJnM4VBP6vTARShZwDL42
         MvQKrt1Ys8mdvpkYuzk5Uph6agmBwpr8lFdcAgWe1R30gUzGgxBxavClOshvzxX/KzUI
         v3okreKDuYueq/y25nbUsQNLTM44XKBoP0uZeonHtm3vhN0+mi5rx+cX7+2VfTBY5JdL
         0tQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject:dkim-signature;
        bh=fC1flKDqE8eSYHtB5rn/dx/72WFNGY6fL6pr1iNPkpM=;
        b=dgNB/QEG9kXx1J6sVb1nhiAcdv0SXg854us6VrWU/wo8PMAvd1F3vI8I4cAzWiI41M
         gc4U55YDx+jgljZANb5WhLoPebfmYOqYgsBngyPLWTR0zElpVTL30QCdRVTMrpvRVtf7
         GEx/F/kQ1F5pbYQ9QL4if9KFDtxerTIB5tpOCc3DVuVxojJjSUI9zFN1Bz6QdqbuFTcN
         X10UmtKG8MUYUsFaLajM54wOYPIl/Iv2Un9D/ODJqPKhDnWDdKNS66tcc4jl/xJZCfiv
         uO00e4Joqqy76/teTp4Fpw/fpv0fb4uz9J1th25UkfOGO+qNs1mNTMaZSqzxGAEbgyn7
         bsKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=fUXVnl85;
       spf=pass (google.com: domain of jukivili@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) smtp.mailfrom=jukivili@kapsi.fi;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iki.fi
Received: from mail.kapsi.fi (mail.kapsi.fi. [2001:67c:1be8::25])
        by gmr-mx.google.com with ESMTPS id o4si1949168wrp.4.2019.08.12.00.35.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 00:35:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jukivili@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) client-ip=2001:67c:1be8::25;
Received: from oul114-218.netplaza.fi ([80.75.107.218] helo=[10.0.1.247])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <jussi.kivilinna@iki.fi>)
	id 1hx4rx-0001lt-Uf; Mon, 12 Aug 2019 10:35:53 +0300
Subject: Re: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
To: Nathan Chancellor <natechancellor@gmail.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Vladimir Serbinenko <phcoder@gmail.com>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-4-natechancellor@gmail.com>
From: Jussi Kivilinna <jussi.kivilinna@iki.fi>
Openpgp: preference=signencrypt
Autocrypt: addr=jussi.kivilinna@iki.fi; prefer-encrypt=mutual; keydata=
 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
Message-ID: <ec4666a6-c7db-247b-de81-bb784bb9d649@iki.fi>
Date: Mon, 12 Aug 2019 10:35:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812033120.43013-4-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-SA-Exim-Connect-IP: 80.75.107.218
X-SA-Exim-Mail-From: jussi.kivilinna@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Original-Sender: jukivili@kapsi.fi
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kapsi.fi header.s=20161220 header.b=fUXVnl85;       spf=pass
 (google.com: domain of jukivili@kapsi.fi designates 2001:67c:1be8::25 as
 permitted sender) smtp.mailfrom=jukivili@kapsi.fi;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=iki.fi
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hello,

On 12.8.2019 6.31, Nathan Chancellor wrote:
> From: Vladimir Serbinenko <phcoder@gmail.com>
> 
> clang doesn't recognise =l / =h assembly operand specifiers but apparently
> handles C version well.
> 
> lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast or build with
> -fheinous-gnu-extensions
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
>         : "=l" ((USItype)(w0)), \
>                 ~~~~~~~~~~^~~
> lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
> in asm
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ^
> lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
>              "=h" ((USItype)(w1)) \
>              ^
> 2 errors generated.
> 
> Fixes: 5ce3e312ec5c ("crypto: GnuPG based MPI lib - header files (part 2)")
> Link: https://github.com/ClangBuiltLinux/linux/issues/605
> Link: https://github.com/gpg/libgcrypt/commit/1ecbd0bca31d462719a2a6590c1d03244e76ef89
> Signed-off-by: Vladimir Serbinenko <phcoder@gmail.com>
> [jk: add changelog, rebase on libgcrypt repository, reformat changed
>  line so it does not go over 80 characters]
> Signed-off-by: Jussi Kivilinna <jussi.kivilinna@iki.fi>

This is my signed-off-by for libgcrypt project, not kernel. I do not think
signed-offs can be passed from other projects in this way.

-Jussi

> [nc: Added build error and tags to commit message
>      Added Vladimir's signoff with his permission
>      Adjusted Jussi's comment to wrap at 73 characters
>      Modified commit subject to mirror MIPS64 commit
>      Removed space between defined and (__clang__)]
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  lib/mpi/longlong.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
> index 3bb6260d8f42..8a1507fc94dd 100644
> --- a/lib/mpi/longlong.h
> +++ b/lib/mpi/longlong.h
> @@ -639,7 +639,8 @@ do { \
>  	**************  MIPS  *****************
>  	***************************************/
>  #if defined(__mips__) && W_TYPE_SIZE == 32
> -#if (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
> +#if defined(__clang__) || (__GNUC__ >= 5) || (__GNUC__ == 4 && \
> +					      __GNUC_MINOR__ >= 4)
>  #define umul_ppmm(w1, w0, u, v)			\
>  do {						\
>  	UDItype __ll = (UDItype)(u) * (v);	\
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ec4666a6-c7db-247b-de81-bb784bb9d649%40iki.fi.
