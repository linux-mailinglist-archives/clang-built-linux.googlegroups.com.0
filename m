Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBT5L73WAKGQEFZAVODI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id BD690D3223
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 22:34:24 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id w1sf11595926ioj.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 13:34:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570739663; cv=pass;
        d=google.com; s=arc-20160816;
        b=MCAl8usGNuohSgI+YwZfTg716zo3SaNtphxRGDxFVRAFK+adJ5n5woTm5fANfk4bEO
         QVukclOJgU6aKy/xtGOfdAhd5N21ur79cMqi9P2OAfiuBLs4c0ttF6kMZ2UasAE+KwVL
         096UKcWeQMkZPUI3jUnP2+7Ge+pd1m/VAr+DFSseRQeCyFaA1erTxdQhSogYqX7/hgxA
         CYZ8Dhz4PQrOBUjSVQuDGVzqvU+C36rpcdnMqKgeP3dfHsxUSm61muZCVjxkAeyBJ4uh
         aW9TEvQs/vTxm7QBhkAUAfUH68haqVIK/aIRXv/W+Sy+3rapPUGBH5L9Hd4seQ9dKr+d
         oJ7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tLCMOxDPo+WJ2WkqA+2CHrtGfvr0h5pxivkZHd9BAn8=;
        b=LQQuFOwcMyx2eOs+GRXWZKCZMajaRXTrGnf1r9d5Uneh5W8zIM6DWZGz5v1+dtWrM+
         wgqK1dBgbm/4z/e6Buzw3xi392S4YUxjuxnfmnkSp9AnzJaiqGNNEjiKn1CJGewUb9Km
         /5rcnxIaEDlMjaoVALw5c/gbouLcxZUTq4JPySQqJt/OUKKCnisCcWjIrbIkFMhGjsxJ
         GrvuejQXS1UMJUt1I/XwbF/As2PBUOC83V+mEjbl6MAsGP5dbupAD2aXY+b0kZD6YJ7i
         dGHEHajfIOSPb0iTWNpfWmOZqbCwcxT+5JwM3jeOIV9iajPs3fVDS0d4cYwtybvjliDF
         X5dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="a8/BUQSR";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tLCMOxDPo+WJ2WkqA+2CHrtGfvr0h5pxivkZHd9BAn8=;
        b=klNsgs+ITr5Ghp5oihelYL2h6vKVGgVdTd/dsfQcfaZOU2L3s/COSXATQUcY8p68PE
         4HRVyh95n8HIUqAVREESjU9v++2A65Mzta2bbQpnhFjPPhp1YXeejzpN8SkIPNbZeK2N
         2JoZbrlGAzfd0k92mtTsDk1VVgvawk5igXNtzob9wqnsz3I7kaAQvD6RrLK2M31Sl0jv
         hoesgmGYdB8nN85If/2Q0vf3xlcPmoaW8fldkGVNo4Qqxr/XJor+ox6C4QeMcbIsJP/I
         5ijOBuqUd6ricY1Ow57Of4Y67mOUoLaMM2Bk2kkhsnj3PbFaZbYtddLAtPXKw0XDVUry
         OCxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tLCMOxDPo+WJ2WkqA+2CHrtGfvr0h5pxivkZHd9BAn8=;
        b=c0+TsyjEVWHvaLu82KA+YXQn7qh355dnL1bcS62EjCFAT+gb+neRIAhwAoMz9TUfTU
         Bq4Jhnv/xVGa6fQ8naJ8Oq+/eWYH6h/L5Fsx+XKq8v/GKIolEos+jTFZd6SPh4uBX2KZ
         LX2CQ+FFBHcNn+d6FDpBLzpsTkHNBsx/Dc1VIcmjR5/nvq4CcQpiDBgyHqXjossPqQBg
         ePoRq7K9cpMefw6MZK5VePSe3PbYQ1/61Y+uPrrrzNCQENOkXaVhEQV/gii8DjueER+t
         JfsbDkRato5IXXiVuwZECM5RDoOAw6Cp1TcZhxzP0/YJJ/hcCm/L0tpkY7/T5cqKUxza
         cd0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYHhZRMl9qm1m5pAWhwH/gIcsEwisP2i1U1Bh1auKbWzqcX4rU
	iZOrjkZ8HmT933qxvKNy3oM=
X-Google-Smtp-Source: APXvYqyFkT7OwuCeGwsUP2H2BqJyF3rtX6Qr6OeVo0hsROfZMmTmFkapVcvBdNOMJgBbZJDEgS+LOg==
X-Received: by 2002:a6b:ef0d:: with SMTP id k13mr531415ioh.232.1570739663688;
        Thu, 10 Oct 2019 13:34:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3f8a:: with SMTP id m132ls1348985ioa.13.gmail; Thu, 10
 Oct 2019 13:34:23 -0700 (PDT)
X-Received: by 2002:a6b:7417:: with SMTP id s23mr1263339iog.221.1570739663304;
        Thu, 10 Oct 2019 13:34:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570739663; cv=none;
        d=google.com; s=arc-20160816;
        b=o72cxFKZntBfSA8wDSvIyufT4AkHze/SZOm6kSu+MCQiGO4AS75gGy1EbVTlz16J2L
         8Jtc0v+6OYpl+by3O97Lffd8UfoO2ppWlQ2Snm9x5Pp7bncrc4+97nb3OXNhqZSCAeyF
         2sj65Ygb8n3V8D71p0QtnYCkVTM8kE3y64ws2xutUxoNNL3n1x1kb43HuhViK+5XEagr
         vJokTOSqJ7TZRiG6Owv1TrYpl7licJKEiw2mq5pWDb33k8Ee2GlP9YFocuD+fLNnFPtA
         qi4zO/5k4kIQgJMfLpz7HzKMApN12lxI+AePQZ3hKe1V0KXmbbigu87qeb4kT+mSWjYP
         93lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qLN+ZaDKXKKqy42TKsmx8NFeuacgz7hdpKcKP23ADmI=;
        b=PBYR4JpigzaT2o2qNEVSkeg6pGr/vTNx2Pj8OX0SwWU5G8x7bliM8XiVG1TFXo1sae
         R8Y/qMH4wqTo1REKnwKSSwiq2tcvDoa2bZemrY6k3Kp4DhdxRGLQoSgH4lV1m+8wA3y4
         aWWbNQeTC3QpH2LhQBHTOAZEyOKiYyNt0mFBPK8QJUvzo8tGpX0pv+F2bxFCTw3dzGcr
         /se2ckpRQLFs4Ia4gXJtKkGRIlEzfF3YzPPga3oJYTY867YuLGlXxdkKVl+k0dAft0kj
         0rPruJfimMvK7kuHWLErBOnIQwl848vFInPiTl56rusmvEELGT4OAAl6iQfv3U3WSRi+
         KeAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="a8/BUQSR";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b206si19891iof.0.2019.10.10.13.34.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 13:34:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id q10so4649132pfl.0
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 13:34:23 -0700 (PDT)
X-Received: by 2002:a63:311:: with SMTP id 17mr12928079pgd.327.1570739662653;
        Thu, 10 Oct 2019 13:34:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o9sm5965017pfp.67.2019.10.10.13.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 13:34:21 -0700 (PDT)
Date: Thu, 10 Oct 2019 13:34:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Vlad Yasevich <vyasevich@gmail.com>,
	Neil Horman <nhorman@tuxdriver.com>,
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>, x86@kernel.org,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Miller <davem@davemloft.net>,
	clang-built-linux@googlegroups.com, linux-sctp@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH 1/4] net: sctp: Rename fallthrough label to unhandled
Message-ID: <201910101334.22271AB@keescook>
References: <cover.1570292505.git.joe@perches.com>
 <2e0111756153d81d77248bc8356bac78925923dc.1570292505.git.joe@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2e0111756153d81d77248bc8356bac78925923dc.1570292505.git.joe@perches.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="a8/BUQSR";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Oct 05, 2019 at 09:46:41AM -0700, Joe Perches wrote:
> fallthrough may become a pseudo reserved keyword so this only use of
> fallthrough is better renamed to allow it.
> 
> Signed-off-by: Joe Perches <joe@perches.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  net/sctp/sm_make_chunk.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/net/sctp/sm_make_chunk.c b/net/sctp/sm_make_chunk.c
> index e41ed2e0ae7d..48d63956a68c 100644
> --- a/net/sctp/sm_make_chunk.c
> +++ b/net/sctp/sm_make_chunk.c
> @@ -2155,7 +2155,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  	case SCTP_PARAM_SET_PRIMARY:
>  		if (ep->asconf_enable)
>  			break;
> -		goto fallthrough;
> +		goto unhandled;
>  
>  	case SCTP_PARAM_HOST_NAME_ADDRESS:
>  		/* Tell the peer, we won't support this param.  */
> @@ -2166,11 +2166,11 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  	case SCTP_PARAM_FWD_TSN_SUPPORT:
>  		if (ep->prsctp_enable)
>  			break;
> -		goto fallthrough;
> +		goto unhandled;
>  
>  	case SCTP_PARAM_RANDOM:
>  		if (!ep->auth_enable)
> -			goto fallthrough;
> +			goto unhandled;
>  
>  		/* SCTP-AUTH: Secion 6.1
>  		 * If the random number is not 32 byte long the association
> @@ -2187,7 +2187,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  
>  	case SCTP_PARAM_CHUNKS:
>  		if (!ep->auth_enable)
> -			goto fallthrough;
> +			goto unhandled;
>  
>  		/* SCTP-AUTH: Section 3.2
>  		 * The CHUNKS parameter MUST be included once in the INIT or
> @@ -2203,7 +2203,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  
>  	case SCTP_PARAM_HMAC_ALGO:
>  		if (!ep->auth_enable)
> -			goto fallthrough;
> +			goto unhandled;
>  
>  		hmacs = (struct sctp_hmac_algo_param *)param.p;
>  		n_elt = (ntohs(param.p->length) -
> @@ -2226,7 +2226,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  			retval = SCTP_IERROR_ABORT;
>  		}
>  		break;
> -fallthrough:
> +unhandled:
>  	default:
>  		pr_debug("%s: unrecognized param:%d for chunk:%d\n",
>  			 __func__, ntohs(param.p->type), cid);
> -- 
> 2.15.0
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910101334.22271AB%40keescook.
