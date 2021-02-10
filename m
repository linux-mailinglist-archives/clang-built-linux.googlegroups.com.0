Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBLUUR2AQMGQEWMV4SAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 09377315FF7
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 08:24:32 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id bc13sf784239qvb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 23:24:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612941871; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ycd3O6IR6WjX8HwYOeu4AqjaO8VE6p2X+6PT2cMG1M5FDXzeLKYY66r1QHcSd6flT4
         qH5ZUahQRcA7lP3pvvSav9YeX072pot41/p37ZBcXDujctLiQrylDYkcUrR69gnSngx7
         xPT35hXYHO0DGpWwox3+Ts4CE5sXkDkiJg6tXPFS3OZcj6iRgnSJTff1jMWoA2E82QGE
         HZjh9V8bXBkZqGszFmyDcIu7ZFV0jewKf4XPIXzusGNCi1jCxTtkh+l9EDrvVff6FDGh
         dI/2isp3sqL03yuePIAdY+dcYB/1Kia74xl85BVBllAJGzGdXrLaq2OrS8Fnj2JOZC5M
         u/3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wBDxr+f8WP51m+uiRx4j3T3hVLUqoDjXo2wqKc6xtXA=;
        b=O9wo2khlJ/0sKqVp8WW84YANsZjTAO6voz/VpBai8RImuscdw0HBd8RP1wcGX4Kh1Y
         /ohEz8lseLGS66wSr/geSakjkpABP+6EUFtMj+aiQg6k81trXQWIWbVDQ8LQYPiXIvgC
         CySNNFXpaNZW45faE4B3NiRhVJix+Ur2Y8ooOi/j7lyFKE8CkQmjVbjk/76lpHQikVCi
         M8jcBBRYz0ScXEBuukjtR+f6lqf1GsGDTU3ZazQpz3TFcO8gDvhfN2MX9DIX5Ak+0eXp
         EFyGQo4img28/BPfctaNa6plen6tzGh7BqkF39Qc3kFDKlxft6Ior1PCo57qak8KdHxS
         3KWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wBDxr+f8WP51m+uiRx4j3T3hVLUqoDjXo2wqKc6xtXA=;
        b=LGu5C4/XfxH5ExQaZ7zd+KA1jiEf476iH3xIbOH457De+HxV2xqJNPaY8bsLRVzSsf
         c0uwg/2OoBgfwJvP+a3geWKL82HKqZABSjh4qfh/RCpLjoRbjJEsht0AEw07pQ0tzkC/
         m1HM4uoMkpyFRBnxGbq5MBKRC4g/SxCKf7foxFn6keRBqc9rwjTXAv9f7mal6eIrxH+v
         t3zS9rZETvhi6tAM3/LILxn7E1kLI0SOZlM7wdI8ajBq/XMQQ/lZ3dBpklDd8BJVZbWv
         ZiMuFn24E49lOwAsZyPBJ9sDt65e66GA8rS8gs8FhXso0xCRETW3FLzP4VdKAYfwYZ6/
         WsHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wBDxr+f8WP51m+uiRx4j3T3hVLUqoDjXo2wqKc6xtXA=;
        b=DhnS996/0PhprE33jIagy9KnbR5ulLeil6lIptF+nwTKFcuCL5+gMZxC05y7kjCuGG
         cgzUaOFyBJHhioLL69k6CIsZCIE4qGXEk5jJaQo0HvBJCSB9k3dW9EAOzCPeNtBX0rnz
         t1jXhOuu4Re409oTPD/3k4gsdHTmVFoHwPlLl3uE8wm33eN152Dg+/pP5BM/61Vzqwrf
         UZ8x37P1C6IdS0kLHTdFDiNAqD0++kZnRPUZB+8Ao4kuPEJ8Z6pqBd75dPu9XlAgQTyA
         AQueZMfrRb8ltYt7DdialZ3FeTDe6bwLe8Qlf1qHZGk4fbm0WFsviTIHz/WZIyJlo7Rj
         7/LQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ps8IfdwFcSCQw4EbscGgxUESE0vPKMnZmhZKMH+OB59F047i/
	b6DNphSBYTfh4tlKW2djGug=
X-Google-Smtp-Source: ABdhPJyjJmZ2O5gqZwgwKLVTo+qpv93ijaRj9SC6WoON33u7uqBW/utGHGo7nAWbtymZYTmLKR+KJg==
X-Received: by 2002:a37:4695:: with SMTP id t143mr2099576qka.357.1612941870760;
        Tue, 09 Feb 2021 23:24:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1674:: with SMTP id d20ls688029qko.0.gmail; Tue, 09
 Feb 2021 23:24:29 -0800 (PST)
X-Received: by 2002:a37:cd6:: with SMTP id 205mr2263381qkm.73.1612941869932;
        Tue, 09 Feb 2021 23:24:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612941869; cv=none;
        d=google.com; s=arc-20160816;
        b=zXRR2w2Kmog0in+HHnolh41NYsGI5eYoJX+VgUyo6HxTbBGvY163dOPKmohX+VkIKO
         682mcroM6chDWepXP6a1z81ufyV1RXD9HifWfxhFSGIqV7EBeZ77LaJBpW0ITYIf4FjY
         GXfLebiLXpd0INE8nmPjeJWOphmNGjTZgsnn4CM3h7iwGwf31IhwQf5RL+nOkdoAoYGO
         r/cW0sYFYVn4PHRk2QDvV1CRYRQLi+oQ0Jm6b2JR+hBOsX2/BEGMPytWfanWM3Zhze7L
         AWadvdyCkWJIAPDtjpxVoDoRgnzHzH0EzM75vD5jc83St93eKWzWHYfOZunvzAepwFFz
         oQyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ULkeuBvqQyJ8a5qZvhaMUW8ZD86C9qVtBgO54FGdQC4=;
        b=oozxVwkErBmHg1nhWUZgsxFvKJjCY81C3K4N6snJyRiUlFwYFBVVJN/oeLojRkmgQV
         mxRSpGmtHJY7rpufnq1ERYwJPRtlrDWMKOOWkzlbXnKBDSQXGtU8Z1ZaDwNZYSXR0kHK
         qTzNVzQd0SyEyYI9G+JIt4LBDUBIrLv5W9oUMZ7HzW1RbtDcB0IIgeM1U7CEQuayWgKF
         rG0orRdvXxvXlj1HZ3XGI3SnCitxKcO7XZgCpsb+6ry5iJJrwAwy04snfjqzAPSLBf6g
         RJK3th59i8T4DmtCPCVxx6vnnH3OKQ3UM/uMKUMZAKf/WfKsdYOT7idqXV7BMs4Gw9EJ
         wVhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id p6si41406qti.1.2021.02.09.23.24.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 23:24:29 -0800 (PST)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.103.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1l9jr5-0001Ii-En; Wed, 10 Feb 2021 18:24:08 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Wed, 10 Feb 2021 18:24:07 +1100
Date: Wed, 10 Feb 2021 18:24:07 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Boris Brezillon <bbrezillon@kernel.org>,
	Arnaud Ebalard <arno@natisbad.org>,
	Srujana Challa <schalla@marvell.com>,
	"David S. Miller" <davem@davemloft.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Suheil Chandran <schandran@marvell.com>,
	Lukasz Bartosik <lbartosik@marvell.com>,
	Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] crypto: octeontx2 - fix -Wpointer-bool-conversion
 warning
Message-ID: <20210210072407.GM4493@gondor.apana.org.au>
References: <20210204154230.1702563-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210204154230.1702563-1-arnd@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Thu, Feb 04, 2021 at 04:42:15PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When CONFIG_CPUMASK_OFFSTACK is disabled, clang reports a warning
> about a bogus condition:
> 
> drivers/crypto/marvell/octeontx2/otx2_cptlf.c:334:21: error: address of array 'lfs->lf[slot].affinity_mask' will always evaluate to 'true' [-Werror,-Wpointer-bool-conversion]
>                 if (lfs->lf[slot].affinity_mask)
>                 ~~  ~~~~~~~~~~~~~~^~~~~~~~~~~~~
> 
> In this configuration, the free_cpumask_var() function does nothing,
> so the condition could be skipped.
> 
> When the option is enabled, there is no warning, but the check
> is also redundant because free_cpumask_var() falls back to kfree(),
> which is documented as ignoring NULL pointers.
> 
> Remove the check to avoid the warning.
> 
> Fixes: 64506017030d ("crypto: octeontx2 - add LF framework")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/crypto/marvell/octeontx2/otx2_cptlf.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210210072407.GM4493%40gondor.apana.org.au.
