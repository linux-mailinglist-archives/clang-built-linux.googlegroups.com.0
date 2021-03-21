Return-Path: <clang-built-linux+bncBCQ6FHMJVICRBQ7632BAMGQE5POW2HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A9B34350B
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Mar 2021 22:48:53 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id f13sf25651132plj.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Mar 2021 14:48:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616363331; cv=pass;
        d=google.com; s=arc-20160816;
        b=AzWAp8iAiYTWasnla1qZJCfQHbrLdRnEXQjNFkO3eTNWh4GT9lX+s0iVG1zyf88vXd
         aez0S8OC1qFeqU55rvzaZR0JJuh3owRM/Ybok0axb/Y9Nulahn7/PMLclimAWEoipomi
         edOsrLCxKhIMJZazQjyuyeB5WYFELTmiLXe4dxFpUQjsPFVynty7lkyFHqSsg0mWRLH0
         da9N7s9Bavf3lUKm+yfCN24ZFCbJ4dYxDfxTSuG5a1/Ot/8Ln8sPExl+jkPV2LiVXmW3
         xP8NgJ06Co4yGtwLUW0VzccKnSXzbnIK7Js9npaOO1D4rKH4a5Ze/p3uAuadLBbjztlX
         e/DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=hyk6KhoqgOOBCgZYjKuieLJt9LHT92buos4zM2jmIx4=;
        b=uLDxBOI+eyQR860OFisx9BlNYqnjLi0YD0iwA+uldzU1HfEBKr4kKiiHGGyMpxvf+a
         sMJGju+G1Ep/+08n6Idpznx/mEule+nJlV+7FARhw7fdkxsBcWy77jj8t038ZDS4bBo0
         VyjBD0VXM0dWxeQ0VdqpdfjwwLkaotvDuberdQ8vTxeueHFGFt3zJs6/ZaWOYTy8ZRDz
         Q1o36lnHPo6lHxE7DbsTuqB+nQA8G5EbjhV10MiL7ff43n2VQ52UMRkiXi9jSGJRJT4f
         W7DooQT2iC30o3pvEz9+10RVh/ZzbcsEXaBAwrGaS7bqklZN1x1cmA2iXTT2nv2u9TMe
         sYww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=WlVoyOk0;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hyk6KhoqgOOBCgZYjKuieLJt9LHT92buos4zM2jmIx4=;
        b=Po+RVs3tUlL2BRmS1+PS4DkWvJjT1CsYeBpE7oY2Mx9odTRq2U5UAhzGrv8bWJBrwT
         bozgqZlqHKnyPBNwyfhEmC9YLdOdBGgNJMpUCVD2ZnuQlmUTSpeEYxeG6F+0IMWQC5Be
         JaSCBaNBzG2XzLnRRnHPBi5xj8fwV4QeBVdweHJ0eynuwZZglsZwLZw+QcdaQGWUc4by
         JtJk5Gn867/sfnFIRYOacRg6YJDqmngxKuOlR/+adhcoVaL707+TIvDqYaeIHLTVzzqV
         r2+oII+zTUf0f1rO3l0iSfOClAnDdn5XKLhiH93FvEo41TJXTCwYDxHR9JeypDxVL3Iq
         bhAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hyk6KhoqgOOBCgZYjKuieLJt9LHT92buos4zM2jmIx4=;
        b=ouWtr6GKblOJy2MetrVfrdUnTd27z1R6TqYEScja+eh5lvD79N6fAzYtv6GB4zmmH2
         Mo18lv3xCUYMdi5ukFpvyDZKueDJ5it/YM7LC9UHjYhsT3Yikv7W0hRdDfg/NkU4Cbw4
         1uilWHsG4nzYE6hidsUa3n8++Qsre0+f41wkZRJ2ETcUeSNG4sgOZjd3cllPIJJZUMRw
         w/MI+sXL3hPHUJo18Mrf4FZrV4wB7K5g+D63fuep73eY6dGB8yUKKHdJBOU1iJQ6PHXa
         ECPZjuriZbIkdD/d6mFrNijNcNhr0Tmi9abuPLWuLSjIVS7H0QQXlMshyW287xEfxLYz
         yiUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MNMo7XTo4YhM4wxnRAMeZlPmisrAPYNHRTPkV4jFXRQzvP2a1
	8IAOkIFMr0fgDmrOngIFmMY=
X-Google-Smtp-Source: ABdhPJzPffuH0g96BzR4F92qrp3N/YzRAFegfq8lfuKuXqtdCV5LtZXq1igUl5ywUqHXIqA2eGAiYA==
X-Received: by 2002:aa7:969d:0:b029:1f5:b02c:eed3 with SMTP id f29-20020aa7969d0000b02901f5b02ceed3mr18462203pfk.75.1616363331681;
        Sun, 21 Mar 2021 14:48:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5302:: with SMTP id m2ls3695313pgq.5.gmail; Sun, 21 Mar
 2021 14:48:51 -0700 (PDT)
X-Received: by 2002:a65:654e:: with SMTP id a14mr19974958pgw.328.1616363331143;
        Sun, 21 Mar 2021 14:48:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616363331; cv=none;
        d=google.com; s=arc-20160816;
        b=jLKIi6RyIKBCmFLgGdD9/7rEV5wPmHFlrc/JyYSo4OHLdO/eq/eE3ANCgsiul4M1rJ
         CjFSnlQ59WgW+KJhFKGuMvwb/LWTTfy806mYpPef5pMcuy6WlOli1F7SrnsAUYdVlnkH
         ziDJuA362VvB9sSEeQ8TUNYndS8HS005uCUK0EtFBkQSv8XartN5YTSj0mxWhpp+RP6e
         I8AyFutzoQ+1MALpELx9YUoabqFQf7Mtfp1ni2YmHCUCXZRb1jWJCWgh0q80ibPRTX3t
         qZL6rG4j3Clc+xNZpIxPmEJC0SXSq9d5INkID8ANpG53Fp39i3WBviDwgC4cYd1bTQ8L
         LaQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=J+om0Usz4EplawdXhpSUGn2dLu2JHa1z1yWoXcWqgms=;
        b=m8ebEElnhp32N2pnFJmzkS8913PLLSX3XnaHniINclk6B8JwOGPyQwuXckFsLkxm+M
         rF63f+XKquJdBqR/h5ynQb2OVjXRndgRed0ODUAHwBwdXCZdy3POVRqCdddtedzkEmWj
         UDYqCNfmDOE/fQgJMVFrVMVr4teJNJUZqB9j976ZJ5Z8qy5obFl2TT9O2AVuEiK5rHgm
         peKAZAsIZGTwRaMKkV8uW6QpKNFvyOZn0qCJf+31pNryECDgOrI00/B6+W8YaPtkPQ5G
         lXOVT6TW6Ku6XfsPgX4ueHbqE9iPodtWp+RTqvQF7UdgKtp6HZCiOMa0Z3ax7yRw9XWg
         5Mgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=WlVoyOk0;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id 131si614223pfa.2.2021.03.21.14.48.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Mar 2021 14:48:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4F3WV36cX0z9sVb;
	Mon, 22 Mar 2021 08:48:43 +1100 (AEDT)
Date: Mon, 22 Mar 2021 08:48:42 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, Linux-Next Mailing List
 <linux-next@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 lkft-triage@lists.linaro.org, glittao@gmail.com, Marco Elver
 <elver@google.com>, Andrew Morton <akpm@linux-foundation.org>, David
 Rientjes <rientjes@google.com>, Arnd Bergmann <arnd@arndb.de>, Catalin
 Marinas <catalin.marinas@arm.com>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra
 <peterz@infradead.org>, Will Deacon <will@kernel.org>, Miguel Ojeda
 <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>, Luc Van Oostenryck
 <luc.vanoostenryck@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: arm64: compiler_types.h:320:38: error: call to
 __compiletime_assert_417
Message-ID: <20210322084842.23f9ce0e@canb.auug.org.au>
In-Reply-To: <53cc267d-aa0a-071a-f9f8-0b47ec4b2b9d@suse.cz>
References: <CA+G9fYu-t_JwoBVXKhiDUY-FRdX3F3LgbDw9bFeiuciwC70TaQ@mail.gmail.com>
	<53cc267d-aa0a-071a-f9f8-0b47ec4b2b9d@suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/xwA4.Gdm1ru6LnNX+E1nfnF";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b=WlVoyOk0;       spf=pass
 (google.com: domain of sfr@canb.auug.org.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
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

--Sig_/xwA4.Gdm1ru6LnNX+E1nfnF
Content-Type: text/plain; charset="UTF-8"

Hi Vlastimil,

On Fri, 19 Mar 2021 19:01:28 +0100 Vlastimil Babka <vbabka@suse.cz> wrote:
>
> Andrew, please add this -fix
> Thanks.
> 
> ----8<----
> From f97312224278839321a5ff9be2b8487553a97c63 Mon Sep 17 00:00:00 2001
> From: Vlastimil Babka <vbabka@suse.cz>
> Date: Fri, 19 Mar 2021 18:56:50 +0100
> Subject: [PATCH] selftests: add a kselftest for SLUB debugging
>  functionality-fix
> 
> Remove a BUILD_BUG_ON left over from original resiliency_test() that breaks
> builds.
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Signed-off-by: Vlastimil Babka <vbabka@suse.cz>
> ---
>  lib/test_slub.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/lib/test_slub.c b/lib/test_slub.c
> index 0075d9b44251..b7ad6c0b07a6 100644
> --- a/lib/test_slub.c
> +++ b/lib/test_slub.c
> @@ -97,9 +97,6 @@ static void __init test_clobber_redzone_free(void)
>  
>  static void __init resiliency_test(void)
>  {
> -
> -	BUILD_BUG_ON(KMALLOC_MIN_SIZE > 16 || KMALLOC_SHIFT_HIGH < 10);
> -
>  	pr_err("SLUB resiliency testing\n");
>  	pr_err("-----------------------\n");
>  	pr_err("A. Corruption after allocation\n");
> -- 
> 2.30.2
> 

Added to linux-next today.

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210322084842.23f9ce0e%40canb.auug.org.au.

--Sig_/xwA4.Gdm1ru6LnNX+E1nfnF
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmBXvzoACgkQAVBC80lX
0GyPswf+J23Z6wvsxqMz+OJYmNuDS4Z6KKjBPPtwcBELjSE/fcSvgEQYrD5VkzXT
NGcoSk70rtbit2693ClReevlcs8YvJCSVIsg4k+otGq9xil6PrlMeDy4QU0m7x42
ARDW+5ivwSez9VZOrn/hEBOUqf1qjz6qo2l75z842EwByjCqWubpoFRU1vWAdOmE
SPWp97eBenTKq8Jo1B1g9mmrbF9G/J2p3vKicctGO8zI6HLy+uu/3hki+fY5rX8Z
wnekVdcTuJIIueiYYJWdv1plrVGY2iKciAao0OkIX5fHOpC9n1yq4v7XSlmtTDbA
NktLLuuGxlEGG1Ry2Gxba7+4/D57OA==
=80aU
-----END PGP SIGNATURE-----

--Sig_/xwA4.Gdm1ru6LnNX+E1nfnF--
