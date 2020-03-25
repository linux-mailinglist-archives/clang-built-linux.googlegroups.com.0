Return-Path: <clang-built-linux+bncBCR5PSMFZYORBJ7L5TZQKGQEUZLQK2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 660EE1925FE
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 11:42:49 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id s2sf1618087iot.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 03:42:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585132968; cv=pass;
        d=google.com; s=arc-20160816;
        b=quWFsBhpAxX6ytfLBBCUcecSezCX6X8jZW89QFJ2TxLgBqr7lhqXwLoUq/FTCMsaR+
         fo5QEsxGUZYV1+DXhaPizPOQYBMZwghZeJt+0sFcx8tsOeXXgtAqZIRYf3iGRYOu2AHR
         g1HB+unVOpBOMs6UuDm8gLJzgnz5jUkkTJAiljHt/IUjgxp+lSkdD1Z69WHMvI1eqafz
         G7e2MxLPtQwPajYbgb9K5amXaqrOkZUlH9Uugw8ap5RcZ4AruJVM84uHQoi62zyjoGop
         us9gzGMfqsDGiNGi0XOR7ZufpsqsU7JwdZTFOqrh0RGlB0tdwwakQJQgQbGQ8lVEs7ag
         7b+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=SnTSfoH9KA2VDdixVQm7BP3bSZJdPQBhX1hWz+68NF0=;
        b=wlIkBwPcFvUUPQvi4PWx1sMeJ8bJhUhSC1uTOKWXWjhJykYgGg8PRgojjqfpWxHxZI
         l5QRUbOGRBg3i1zOlVowe4qMsm8quet9Eu2xfq4CupjnAUxJtnwqJGU6NiAykHda29tp
         JDTZSNmgYGGNVdwlc4GJ5MukXhFRQx1l5oj1gc0d3+/q9cU5w3vySRwM0v+3Bzvffw9R
         mQEtvC6MdctnRUcTu8KsYkid6zaGb4ZYyPkwVkBhYMRV/or7vRggiFuMPTJKJkUL2IQy
         l7xU0T7ojgWbmXTXku59dO2sPTM6ZrumHvZhUB5fraRr+nFulDiMT8wifMw+cnxEApDt
         yISg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=PPAh879i;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SnTSfoH9KA2VDdixVQm7BP3bSZJdPQBhX1hWz+68NF0=;
        b=XWF0sjJZ84Mh4EMM82pSCe101NxvMdA7SQTYjeWomGvJNciLibaI0hwOL3aHgfVi8X
         j7no5ElAgx67AXQDs3/uwNBNG/Y2jj7AaPQB1g2/6gNi9uH0bk4Bz7SP75jyTcNu/Tr+
         M8lXKYAS5ye7wtoJ1IJdEEgLiKLUcfkPkk/Ef9I6/wfrJmy3ATP03Szi/P0HJZpR2VMx
         X1xJriV605vz/3a03OsCDg+chAzaUcTkQUsV48EOXSOLzIFJJ8C7tyUakfBL80Pc08XX
         5VgbAI+00QzXrfO8RuI3P4U/dLKxTa3s1HQgYYK3n+LvdgunUKbZFWi5aRcZhyhB19s3
         LIaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SnTSfoH9KA2VDdixVQm7BP3bSZJdPQBhX1hWz+68NF0=;
        b=T5sKiRDGef/EFUQ58secB94SvDw0vAjj6EHOmiZQIERT5YLmrS+hEOXYEV+uPaCD4b
         JBN73fHQCjtpR+rKB4afVE7DHRTXV7otzFCO7y+y1l0vceSL756KHchIShPxwJlSjupK
         Zmyhwk4uc05ht/L2I5hL0Wfy1y+f+QKrSj1H9b/m1gKqa1fBqydsW3up0m7e2kOGCVcD
         Awc4L5hpt/8t+62Qh7U5GC7RJSFzPiCE104OGqhIK5puckxXoAlH4JY3gvXELLq1jtzm
         T5Hs70h+QcCikPDYOytOzoaTspbXPEnzZiG08F07d+BoGB8j8jmJQOonaubj736TrzFH
         IyDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2C4/7Dboc6dpVctGVEnD0xEloReXQbw22kHLAZ7UFiQ1mpB77u
	1njWbG/V8iYhkBlh/a1N4/I=
X-Google-Smtp-Source: ADFU+vtWUGUbzd7+gqu5YIZ4N7qbjuy/q0vjDu/zeDlWgAQrY24zQEdz1fRItPkJFjwwZhkulUejMg==
X-Received: by 2002:a92:3d10:: with SMTP id k16mr2681038ila.274.1585132967909;
        Wed, 25 Mar 2020 03:42:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cc93:: with SMTP id s19ls257748jap.8.gmail; Wed, 25 Mar
 2020 03:42:47 -0700 (PDT)
X-Received: by 2002:a05:6638:512:: with SMTP id i18mr2290988jar.101.1585132967529;
        Wed, 25 Mar 2020 03:42:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585132967; cv=none;
        d=google.com; s=arc-20160816;
        b=Ht9E/7/ZuseLpx3H00GAHyWup5qmygUYUTAfwqnym4aQ/Abo0rXLZHiWmkztWkHk77
         KMUqQWEHeO37REQPq37DHdPzjH3Kh5Z4Hvur5Y9p+brg/M0diXXora7G4QAEmWQGQSTh
         ou1YQSmltEHgjWDytmBa8gH/8bPKzxAn3SfpvcvDfXddacNz9WVJG80M1FEtXLyWv+B5
         dQ9s1A/GOxVFPstfuFXNIoF6o6Q+7tx3D6OUt3nJRorZu3QBCZvga+7tbMbNAIA4yUdA
         5nhxdwTugWRC2B7Jx5slkswCoD2Lhr7N8qrAb46mPlzdaAiyfY/qHfQAytatVGo9H6wx
         budQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=BiTg7WYP0y3hvhd3ATDk7wjC/TgjHEEvciDyuCqqqCU=;
        b=RRHalEGPfSS2wrmNyAar2rkVMlAa8wJ8rEu9JASq0eqs6eu9j6OMpCApulBkZfhMl5
         KYhbXd07NT+T/8+aBKLJsLehXt930sFUUXATOg+qi2mmFcQykK0tqg7GnkYDYZr7it0Y
         rlt9qdTGnt7KouJxZd+732JorJcgTeJQywBubD/g3KVKyAS13Wy3DGqNJj/AHFjufr1J
         d3dGw5iR1Smq6Uog02RLb6op7Otwrc+mnFQBtldOs6cSHKsYO184DsV6lhzt5TH96ciG
         d1wQ1ROf/Exeq27dfnwPzhCug4QnqgUAXwFtw24PQATscZdEd2vqGkObmLNwNUBifJop
         K3Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=PPAh879i;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id a3si1691322iog.2.2020.03.25.03.42.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 03:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 48nPp65x6Mz9sR4;
	Wed, 25 Mar 2020 21:42:38 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Fangrui Song <maskray@google.com>, linuxppc-dev@lists.ozlabs.org
Cc: Fangrui Song <maskray@google.com>, Joel Stanley <joel@jms.id.au>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] powerpc/boot: Delete unneeded .globl _zimage_start
In-Reply-To: <20200325051820.163253-1-maskray@google.com>
References: <20200325051820.163253-1-maskray@google.com>
Date: Wed, 25 Mar 2020 21:42:46 +1100
Message-ID: <87sghwww9l.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=PPAh879i;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Fangrui Song <maskray@google.com> writes:
> .globl sets the symbol binding to STB_GLOBAL while .weak sets the
> binding to STB_WEAK. They should not be used together. It is accidetal
> rather then intentional that GNU as let .weak override .globl while
> clang integrated assembler let the last win.

> Fixes: cd197ffcf10b "[POWERPC] zImage: Cleanup and improve zImage entry point"
> Fixes: ee9d21b3b358 "powerpc/boot: Ensure _zimage_start is a weak symbol"
> Link: https://github.com/ClangBuiltLinux/linux/issues/937
> Signed-off-by: Fangrui Song <maskray@google.com>

So it seems the patch is OK but people don't agree with the explanation
in the changelog.

Please send a v2 that captures the responses from Segher and Alan.

cheers

> diff --git a/arch/powerpc/boot/crt0.S b/arch/powerpc/boot/crt0.S
> index 92608f34d312..1d83966f5ef6 100644
> --- a/arch/powerpc/boot/crt0.S
> +++ b/arch/powerpc/boot/crt0.S
> @@ -44,9 +44,6 @@ p_end:		.long	_end
>  p_pstack:	.long	_platform_stack_top
>  #endif
>  
> -	.globl	_zimage_start
> -	/* Clang appears to require the .weak directive to be after the symbol
> -	 * is defined. See https://bugs.llvm.org/show_bug.cgi?id=38921  */
>  	.weak	_zimage_start
>  _zimage_start:
>  	.globl	_zimage_start_lib
> -- 
> 2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87sghwww9l.fsf%40mpe.ellerman.id.au.
