Return-Path: <clang-built-linux+bncBAABB54EWTVAKGQENDONTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id A763687157
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:19:52 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id l14sf84521269qke.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327991; cv=pass;
        d=google.com; s=arc-20160816;
        b=WAQW16KIknGXN+336OFLUJJn9bVuIhY60XBwxESPS6lA/zX+w76C/zlVarYmcRXGgT
         41m4qSm8elTADFQHyfghZnh4nw0pOFO92JgU5ECKD+o6n+MLgvt5NopNInYbWeXKIBYh
         qdo9dNUN9Rx2aD68BMTgrB9nRtZRrSxnlMPRmgu8OG6IPrzaisVnqVQ15A7AuMX5jNlD
         41pqCDl3JWrINVp3BuLpBJ2KeOHMffUfMc8gRcfLloSVNw08ISJwCimFPaFOnS7tJre3
         yGgd8izY+TwoKVbvRYLS8mScx4n8bTGoGzC4xPtbL8Cht1BmMuOPbbYHSedhXMFgBQOU
         ljBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=lDG9u7JtFKvavPmEznmKaO06ygX1zWgm4SemJepS2wo=;
        b=IjMlxdaz352UYyVcxtp8o5V4ppsdPzkyuy8Eyzq5PCfja0olO2ocSx9XWw5R2fMyI+
         tOTCO24DtTNjWvMV0D5eZbR/+NoJtrE5C5JAj5xddqlzPDuOVtyOCqCLWEmCS1NKHfcG
         Ox/RQSczWkT63rhCnmIuBtpAZmFEjboUOyHK3MbfzFrxZxDDHVF4U2ezUaFihyWezn8s
         Y7syv//x4gGWiI373lKMxXBAR3Yi49JhmOvUFeJyRhBalGKG9AWk1XYxMcCP+oYGo8SQ
         vtTqV3G/ecb+UJyEdp/D1F8P+O6m59yOHO3XH/AGtqQHYmSUxtZJ+Rzw32Fnvgv0wDvw
         rMSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=b42HRCOL;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lDG9u7JtFKvavPmEznmKaO06ygX1zWgm4SemJepS2wo=;
        b=KRSYLSE0hApQgVlhAAKIlBl9L/m32++M9HAKmaqGWx5uOk+HhcB0gvmpsm7AKNNx1b
         1nkkfVyqH3QU1rS7P41f9gMiqKEGIwkXsbTys0EJb1hVcS8fmgtMhZkpfOGP/+isNcqp
         i5GBoraXXOR0Akv5E9L3myj79AEFc1x9cECY+hJf8KG+VbKxRlhxuI8rZAHa4h+lN80K
         LCct4A3tP/B00aZz7vxd11xHhOarfwBz3QX4NZNK7fcdIyvyR0JQ6Vcrgn8wgI+wiwIw
         zI0cRSxjBXVhAKS9cb2LCpx457on/XpuDSVHP/2AWg87Oxnj6w1hGz5pYr+PYWrDSRWx
         HRjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lDG9u7JtFKvavPmEznmKaO06ygX1zWgm4SemJepS2wo=;
        b=g1RIQ/UCzpO3k0HXVxzRAbbEvtduEq8A5cGyG2vjrZ4geISYzpAxylt97QhZAKHsFr
         0yqZO8pRxSrcSZPmWA6RVmifJ4nG+PzB3o2LTgdX2pSkcpw51BOIwRxqmrVbbhcIB+AW
         av0Q+gGZQAyzn9M9vNjy3qRb1VyEZ4E754JitQeEFCp1FXxTW6vamN2WYhqTlUaq9rnH
         STjSsRxClsivDfNWVj9lOyElupVbRefRotn0bP8ATHQRmrW37NS6yzPWYF76sSM+KS1o
         D/PFJc5g7cuXVGEJmMp3vidSIF3qoZRTWVN662BHut7n74XClK2k6b+yxCeIzpnVLe1j
         UX4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9bxOsi4BvHGiqnIZWeINhQ3k6XePFgNv/5jjbnQTOySWnujQ3
	tNlrhhkqBetTzcJboUP313o=
X-Google-Smtp-Source: APXvYqyhp1S04xbT4JsPZvsLD1d3nQRxUi31IrtmErzOG0XUvRi/zBr6YVrRQwgUZpR/28We6jhdhA==
X-Received: by 2002:a05:620a:705:: with SMTP id 5mr16702624qkc.330.1565327991676;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls3117976qki.1.gmail; Thu,
 08 Aug 2019 22:19:51 -0700 (PDT)
X-Received: by 2002:a37:4781:: with SMTP id u123mr15080402qka.263.1565327991574;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
Received: by 2002:ae9:c317:0:0:0:0:0 with SMTP id n23msqkg;
        Thu, 8 Aug 2019 15:35:16 -0700 (PDT)
X-Received: by 2002:ac2:4a6e:: with SMTP id q14mr10229195lfp.80.1565303716030;
        Thu, 08 Aug 2019 15:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565303716; cv=none;
        d=google.com; s=arc-20160816;
        b=xNz1DKplB8uPZeThTXBk0TBWFRyG8aKYYl+hdMmEeJkK7ezBmjXPskV1nugfLIHD7K
         jlOVY3fUcL42x6gbNuhzhJU0h6JO2djit/iC//CI0r/Y1OL+sCVK1AszL2kKD8O1DUa0
         IkH26HagE+4JNiuvep4jp4BKPICUQf1lis/Bz1jWiwzVQJ80kIQfCp4YiIbyiIgD4/Kl
         rk04+Sfjlmu6KMbSzNbWCYtZFt4/nIwkZDst+mMdVUoueETcyJLhfMq4ifUFC3TIB4VN
         GqUCRBUpljMU5qWRtp7rgDuugxWgo/KSxs1PxIRvVf3FNmw/HcnrEOgb/ROIOuEBjPvg
         Mrgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CULeUPa1BMSuvflWwsS/V9+jPS+b222j4xO8S7h4kAM=;
        b=uJ/u3h2vDhUHc4GjSowEaNN8czcGbeusRcdZ2b0IIGhWVZd8RAPewwVtQzbxaj3T9E
         mzZqe1ugkYxDbXD3KcpsYOY+rT0CATONn3UjudsRPkXmvzecZ0kLOGPWHeffKNJp0JJy
         zjE2IgGSwTOaQrDoX1L+dbG6y2w4w1WaLWBWAuvZR8spv+ULGjRfHs1cZNjn2Iltbg5h
         984gFFFEvufUPf8F/QD3dSlGUlfN3ZQyyIlr9KFVbv7E/oJFmEN+CUpcl8BCUoT0Skjc
         HP8LYfPAXyYpRLkSAsI6rKG3pm0RJsJTGy/eIKRQPv4d+1Yfi269MTcZu3FWF00ZH0iH
         5TMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=b42HRCOL;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id s14si5902941ljg.4.2019.08.08.15.35.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 15:35:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hvr05-0004GA-TO; Thu, 08 Aug 2019 22:35:13 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id A83E62742BDD; Thu,  8 Aug 2019 23:35:12 +0100 (BST)
Date: Thu, 8 Aug 2019 23:35:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Guenter Roeck <linux@roeck-us.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH RFC 1/1] kbuild: enable overriding the compiler using the
 environment
Message-ID: <20190808223512.GT3795@sirena.co.uk>
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
 <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cUjMc5fB5G+GsIM6"
Content-Disposition: inline
In-Reply-To: <3885ccdcbdbe83eb367e8344584df944adc76e34.1565297255.git.guillaume.tucker@collabora.com>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=b42HRCOL;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates
 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


--cUjMc5fB5G+GsIM6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Aug 08, 2019 at 11:06:52PM +0200, Guillaume Tucker wrote:

> @@ -412,7 +412,7 @@ KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>  # Make variables (CC, etc...)
>  AS		= $(CROSS_COMPILE)as
>  LD		= $(CROSS_COMPILE)ld
> -CC		= $(CROSS_COMPILE)gcc
> +CC	       ?= $(CROSS_COMPILE)gcc
>  CPP		= $(CC) -E
>  AR		= $(CROSS_COMPILE)ar
>  NM		= $(CROSS_COMPILE)nm

Why only for CC and not for anything else here?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190808223512.GT3795%40sirena.co.uk.

--cUjMc5fB5G+GsIM6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Mo58ACgkQJNaLcl1U
h9BaLAf/e7MJPA4HRxrJPnjXl318Leh2xBrAYLIYTNOL0fJw4Ta9QJ973EnCm6pr
GIxR0FAF4wD6mYhAKP79hFm9WjAxFB+kWkHAURytsReoxppp8fI/z6X3I7GETz5Q
kxzDulHxtWtkB5VCa/v+iaiN+PcS5hFFz/4IKl9nfu9o5ExqeaoJVZ8Uvsc0A3Uc
2+VUP2BBa0fWzEFUcXMD0py2K6KJL97XAMoDQWK7Gg+nsJDCjcepKZqJaS65co+X
B6orfTZ2bJ2kuQPvIgG95ElGopkY99lYP+ZHsn8OvUtcQOVi59xAxqv5m0jGPmHt
xfM/qUeX/YK5OZoeYECYlfnBnODqCA==
=FXa8
-----END PGP SIGNATURE-----

--cUjMc5fB5G+GsIM6--
