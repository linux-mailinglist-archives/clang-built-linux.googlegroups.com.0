Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBSPI6HZQKGQEKNSPKKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B887193BA9
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 10:22:18 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id v6sf2701383wrg.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 02:22:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585214537; cv=pass;
        d=google.com; s=arc-20160816;
        b=onxyR+M8k0V+EGScRmPLci5lSbUa40Z0D7B14uFhWoo14RUrNeT5C9g/Ow+lL8eVl2
         XxIojbZNBBiR1ZgLcJkhHCyxOPQLcoByzbIfAK20hhtKbNs+8u6LQ94ntdprc3eHT8h9
         wkAWi4Rhb+0ALusKKi6y7nldVC9vjwaPC97w76CJJuk9ZAqsMy0dCCHhH5/Ts2RYjTgk
         PdYalD6KJfMSroxH4x0s1QUnvpK5pfV8XAAzjRABuQaCY2/Hlv4H5a+eVSCZAuQ3zxvK
         3cg2CquVdrsAwrs88T7XPfdwPJyEj40hW8XOPtBMYndlpCVqYaNBIVjHs5A0o3nnSise
         fXGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=E1nezhl+11Mf069PzNBz1CNpyvOQlfTV/4dyg5RQKig=;
        b=ihMzli9LdETlHxFeqZMdbMTQxSUjT4/Dj6GgKIF4oGbxIljWKffJ0eVI85F1x4M/Ed
         rqxOKrbO7yp4plSzaJpRaZj3Mk+pcgKT8c/6EES3F5sGSNMMGfc+KJwtHkWw4aS5SEhu
         rUMqj2+Gse9WFwqUJjqSnCCA9luKu3iy8CtmOmMkWBAVynBdNNiZNMpbJfeAGZU8uhOL
         fsAvBo9IUuGEYXjVHS5Vo2L9O+ZyXnSErtgVvIPdryj9w/TwI+9kgMWRcb/PdiXpZSET
         iqIaCBFS+Y3RM1Q+984SL8J4mLe4mZGPFd9P7eKlIDzpmbuqWrU1CqVIrP8R0Iw6fqR5
         WxuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dnfFO30O;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E1nezhl+11Mf069PzNBz1CNpyvOQlfTV/4dyg5RQKig=;
        b=KtDcu2WZLvFLTOtxwwmfQGlr5TsoTWdXEgb7K8edVZ65jpSPPpwlerWKdgdI39OJLj
         IeZds4GcdrdwvbbASdKAxsE02zd4LpEzZ+ulobLvToW4hGC8PfdFAlnyMwVjqSR68yka
         xVNWTZeBpyYZ+PxBon3n6D+a45Sr4d2/OqYKBy1NbvtXlS4yIJTyeQ/RghRRoR5L3C5q
         SsimheiANj8NDcz+UWuPPVg2/hysQNUadczpkly2FHi7KglQzUTCNMxCR2TvjlnMQ7ky
         2JRvns+A4PyV5r8oxo+DIiN9kdeBGSpAhn5+I2sSYiOTLowkZsC0SesJ2fXUEvwS1hEe
         09/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E1nezhl+11Mf069PzNBz1CNpyvOQlfTV/4dyg5RQKig=;
        b=mCWlPr2cJhoDGORTdRieBamWIK0mPqVqdxFFmclHPS5x1RHBA530GaTRNAYS7aFLbD
         wdg4vjm2G1Waj2++5oEmyE66l2lcR8p1INonp8iwD2gnsqOZ8n2bofoqiFJHglMPkjcp
         GjkJe8JbqKgeyKjVOWzu4EnUOAUYewNhGeLECfsytsZpLT1KD2pastvSnlR530LM6YEh
         3QHtPU7uWlqlvKwbpW3yI5wWItLu3L8B7aYRs4ZEjZN06Ajgld2I9Uz+Qix5PYYN7dgJ
         B/fQS5B9kQHgUrt8ejg9Rp3fjrBQUVr7NF6Ju16mVnkSQa9QKDdAufWvJp9bwk/RX9ut
         EYIg==
X-Gm-Message-State: ANhLgQ2K6OI7o2pEnVKK//Ai5/QOBmmGP2ydp6JSQFZUeNrrvvjP30wx
	bxm3KtRHhMQ3X3IfzbkMPaw=
X-Google-Smtp-Source: ADFU+vuqBtFv/PMZy3iXzsZ2Hd0GDT4nzbQqG+L8CmFSSA/IcrgpU6I6C6f3W1aBsa6ys9BKexSkrA==
X-Received: by 2002:a1c:4d16:: with SMTP id o22mr2284275wmh.56.1585214537796;
        Thu, 26 Mar 2020 02:22:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1f49:: with SMTP id f70ls1443845wmf.2.gmail; Thu, 26 Mar
 2020 02:22:17 -0700 (PDT)
X-Received: by 2002:a1c:acc8:: with SMTP id v191mr2212334wme.185.1585214537003;
        Thu, 26 Mar 2020 02:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585214537; cv=none;
        d=google.com; s=arc-20160816;
        b=bGu1izz9oXG/imTbIPbp1HlWD4N8RR5PTi8Tc9juiEchCkf1kQsRXkcyC25FOrWbX7
         HPrK5cNbkyucAKyzQiMyqGGEtgqIPLw5gJOTy5Ht1ApVcrdTxSEf/Fu2r+7eClZO7RGt
         ptBb5rkZ7XhgQKMYFwtQAupW9znuiun89sf4XaArC8c6fpLvuuWhjYikm4IYPnWO3Y8s
         JFA8IGmalg6dKx6zmjuh+rGklanURMtML9wli6VsA6YjsW+ehdTwI8M4z1aEzihcszum
         /8kFvklVGEsGBT9kubDCmLJ/8hvFjAG/OJG7pBzmzMuj6o+Aj1ZX38zT6dzWzF8ziSux
         FDDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=FlDn5DLuAGFwOKbYCG6SBICMqVpoIS+lwTO53ZZDDjM=;
        b=D+Pm9HJ5bddux5N/JoHOpYRlVSnNm2qQiECxG2T32EqiNjnL8FjQ1m5FkCgKpRdYIq
         P7IpnbhetpFkWmnkeln639CIEwCn59k7csUzE8iO42U1cvZiE+XfzSZNd6mlqVQpr4NY
         478QbnP1Y8v07sssGfWP/3wsgA7RGSbFdfz9Fj4LnvHgZd/RIRlG7a1nM/8SxMT3cbwV
         bp4dCjEj42tqNb/4iqsd4K8R2Z7VltTDrSqZJiyPVBAdW/elRSixc7J5AGABcoHnVhTS
         SqPlqycO2AHGwmz2CXY1rhxg98FTK715I87ux9yp7680rfatXHkIgrcFkh/aGJqVwhd7
         Ll7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dnfFO30O;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id l16si102618wmg.1.2020.03.26.02.22.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 02:22:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id w25so4097448wmi.0
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 02:22:16 -0700 (PDT)
X-Received: by 2002:a05:600c:20a:: with SMTP id 10mr2201122wmi.135.1585214536655;
        Thu, 26 Mar 2020 02:22:16 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id l8sm2728757wmj.2.2020.03.26.02.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 02:22:16 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Thu, 26 Mar 2020 10:22:13 +0100
From: Ingo Molnar <mingo@kernel.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Peter Zijlstra <peterz@infradead.org>,
	"H . Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
	"David S. Miller" <davem@davemloft.net>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Ingo Molnar <mingo@redhat.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Jim Kukunas <james.t.kukunas@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	NeilBrown <neilb@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Yuanhan Liu <yuanhan.liu@linux.intel.com>,
	dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
	linux-doc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 00/16] x86, crypto: remove always-defined CONFIG_AS_*
 and cosolidate Kconfig/Makefiles
Message-ID: <20200326092213.GA100918@gmail.com>
References: <20200326080104.27286-1-masahiroy@kernel.org>
 <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dnfFO30O;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Jason A. Donenfeld <Jason@zx2c4.com> wrote:

> Very little has changed from last time, and this whole series still
> looks good to me. I think I already ack'd most packages, but in case
> it helps:
> 
> Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>

Acked-by: Ingo Molnar <mingo@kernel.org>

> Since this touches a lot of stuff, it might be best to get it in as 
> early as possible during the merge window, as I imagine new code being 
> added is going to want to be touching those makefiles too.

I'd argue the opposite: please merge this later in the merge window, to 
not disrupt the vast body of other stuff that has already been lined up 
and has been tested, and to give time for these new bits to get tested 
some more.

Also, please get it into -next ASAP, today would be ideal for test 
coverage ...

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326092213.GA100918%40gmail.com.
