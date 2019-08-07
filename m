Return-Path: <clang-built-linux+bncBAABB54EWTVAKGQENDONTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA0D87155
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:19:52 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id 41sf81902030qtm.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327991; cv=pass;
        d=google.com; s=arc-20160816;
        b=vpLK02NYMLqt4J7aIA3C9wXJ4DEOt8oUwK+zQ1E7MpksAnrB4XbxZfVQaDRIDr3Vn4
         NIkblHQiFsUbtnaF2pvcRYxU2WzvB3kTXAxe3ldq+aiBG2nHITysXf6KHDhpS6KjLfcm
         r8c0nwUazAOharkfStmS90pnF6E2V4WMgv0/2IF+2ZnF8oDeoeYJ1+KiT5qGzJuiL7lk
         XdE0rRKGkCs4fePGs4/peWUwF4rV0FuvuFj+KW768CINkTCtFzy139A+4bDG1+V7+tAI
         aJoicZ7uZy88iZAB+EiLFo1q7ooEHtQOnNtwz2ilEzYc70dKfF6Yhi05ZuBNu+AD6ngR
         y2Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=q3JVEDX/MSwhddz6k2p7lJ7QBXKR+/5MtTbHR3JpLQs=;
        b=CyfAHYyYjOVD/qzqbGLcZ7p0LUcazS0aZJOiz+1NvBFD7m4JEKOLJumyLq6sGstm9I
         9m+UDtuASq/HUiXQ9E0HRGNCMNVcWL4VER7nWdNpb7VP61f43wjrj7XMAstf9ghUEQhH
         claLj9GJVAXGyqjv8xcnjQTKSFemaQkx31eX0sqvew1yWLkeZMNDAnaSCORI+pLlFwLT
         VtHpjFXPNsG2Kw/QgN4AtwCi0D24LvcB0x71/PXsZBtDP2BfuHfobo7KqXoTcEVDaTdY
         y9CJ8PXO7KiK7LUgnEZjU3VBo+KQQhlDdP/d2pxkFN2Wamlt7GkethN5d0q1vEbp8tBM
         mEiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=KwHg8t47;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q3JVEDX/MSwhddz6k2p7lJ7QBXKR+/5MtTbHR3JpLQs=;
        b=mM/u4cyG4SrcQVpNU+4w3jWlEhFXvPuGCO5Ffu1R9GHpG3v0Xx24vFwNFTghYmQCgx
         5CnbjQ+I0K+/c508QzQA9a/As36Rp3qdBvxDwlkQpaODOTn70D3Gro8F13HpZjpkOMJf
         LG/YUA196uku7ILNwAH6b9nBzaSWpzAWbvaNNWCA2kmbFmMaOu8YJWGhxOJXnfB/kI+b
         5e6osZ1gd0lZaSBfPeTdmpclTVlxtOKrXO8Q3eVRA9NuIzMDI5YkYBRMQTSH7wuhtnby
         3Gpijx6Z+Nnv8kujQ/snQ5GY5L4y0w6/FNxWFC1jdz2feSKQU4DeHBDRduDvc7uU7Wwp
         cgcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q3JVEDX/MSwhddz6k2p7lJ7QBXKR+/5MtTbHR3JpLQs=;
        b=hID/Y/Ofnn0XrvqZcy9U46n2UKpD79SzY0FDd6lZcgjiz3fEX1O/wSLXp3phXAv5Mo
         xipNACXHSQxuWem2yaVwW2/9g+X/YfB7wcVN3k8pR4Y1GRvkuhGtlUDTF96lh77UUrmK
         liYvBHFEeDNbX5pcNxMVg3lu2eeu5jaL2PZRXQez2aYkP3h507hRwSn6JtoJklz6wF1S
         dUb5dhugCXk+tmhmG7bQ55gWGYDbVu5PEBF5wqlgGjks6X1GVDv3vX00AhePoLLkQsHM
         WJ25astnLvvc1Q8TIKHq1JjH1txrbCbw3DJQfCvN5AKgtDyf+13pZRWpjJXlDDXvktC+
         cCnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjP9LaNTb/FjXnjWSnFgCNHxm6y4heA0WqgY97UoZqIw+f1lBU
	icQyGA2O4e2TPTlyjdUF58s=
X-Google-Smtp-Source: APXvYqyJSLEXWSwn6UpRX9mYm0GROQGl9qITfHdgx6tcT93vB73+UQHxXAxDTWsHko55rEfKcXziEA==
X-Received: by 2002:a37:6d85:: with SMTP id i127mr16640942qkc.74.1565327991683;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3507:: with SMTP id y7ls2452135qtb.0.gmail; Thu, 08 Aug
 2019 22:19:51 -0700 (PDT)
X-Received: by 2002:aed:3923:: with SMTP id l32mr10950130qte.339.1565327991575;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
Received: by 2002:a37:4c06:0:0:0:0:0 with SMTP id z6msqka;
        Wed, 7 Aug 2019 06:05:30 -0700 (PDT)
X-Received: by 2002:a05:6000:1043:: with SMTP id c3mr11334995wrx.236.1565183130371;
        Wed, 07 Aug 2019 06:05:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565183130; cv=none;
        d=google.com; s=arc-20160816;
        b=pbmk35fAU70E6u8jczudbtt7gcYa6PwgFrxt2+KvpsxeB48S4U75MIiOcU/dPtgzWl
         /mpyJXiGPXkKm9vtB021q4oAM/vFfvBF7H1OTDCzdqEBXTQka/rhZGA05h0TbrWcNYwa
         VhlD0O5KtHqNWDzhttD/JuqirL9WQcJJ3T5u67EdNa6+xeu+7UaQvUfY9Fli1pwJojaA
         rRpTKuG7sT9YEoR/QkMpusduGlEY7+i4Fz1Rtm0cuheXY8EXGS1aiA4HGZPrj4TzUbtr
         NcvRtqa5pFh2eN4/lQscz6MbgGh6cvMtPAnEYptN2MrFO61J+qKF7Q8J+BR6ok0iIxm+
         YoWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aMELl7eZ6o9h3lDoCfPQPbyogz/QHSph7+YWLc1ijL0=;
        b=zQVnbTHJiIDu68gESjvP0GTBIbAJdX312E8NKbOKmuF8eUL6+4BKaKswXAsWpL9T3o
         IpIBDieIoDJLl8c6wvNFgDoBe+R39EXx8LXuoHkrD+o003me+XkCRTEKJdjsOJyVZ314
         371OH+3FHuVu+ki0kYROkkOeYm/KSDBFfQWat63hVTYrnkzMTZSUAYXnCmTM74oKsWs2
         oaR5yKBNXl04oCrt7vAFepSqcsHn0lG+zc2hCvzegOXbuf5E+liP9jCfzvGIiY8gAuNp
         CTmx0ZwcqsFp9DuPYBoRAV06g8o6ntBHWZ85GguDV1vx3EECnrHra2vteRJLTNXU3E/+
         DdTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=KwHg8t47;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id z24si74684wml.0.2019.08.07.06.05.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 06:05:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hvLdA-0007bu-Qj; Wed, 07 Aug 2019 13:05:28 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 6E5D32742B9E; Wed,  7 Aug 2019 14:05:27 +0100 (BST)
Date: Wed, 7 Aug 2019 14:05:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tri Vo <trong@google.com>, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807130527.GD4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wLAMOaPNJ0fu1fTG"
Content-Disposition: inline
In-Reply-To: <20190807130111.GE54191@lakrids.cambridge.arm.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=KwHg8t47;
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


--wLAMOaPNJ0fu1fTG
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Aug 07, 2019 at 02:01:11PM +0100, Mark Rutland wrote:
> On Tue, Aug 06, 2019 at 07:39:18PM +0100, Mark Brown wrote:

> Judging by the kernel log linked in a reply, this is with:

> * clang version 8.0.1-svn359952-1~exp1~20190504004501.65 (branches/release_80)

>   Is that the llvm.org binary release, or a custom build of clang?

It's from a llvm.org .deb.

> * Linux 5.3.0-rc2-next-20190730

>   Could we previously build a BE kernel with clang? If so, what's the
>   last working kernel?

As far as I know this has been broken for as long as we tried building
and booting big endian kernels in clang.  The compile works fine, it's
just that the resulting binary doesn't seem to be working so well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807130527.GD4048%40sirena.co.uk.

--wLAMOaPNJ0fu1fTG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1KzJYACgkQJNaLcl1U
h9DYhwf9E0PI153LLixWIQl6KYCRRVz4KTHCzN5UkOAU3JEAXoxXaLv9U9YSa3/n
vvYR4o/xUbkHnOZacPhw5KXyyxj3HftPSa2ojSub04S9eI5NHCAO+BzvOLNt6MRf
pyuBw2MRCzJsOok5jjFgBYnk9jzabMuEd1F7Zp6x5B0+Gm1GXt7moWY78FCujzdC
yQDIQ2jwlEIIOiUXWwj9juzgcQrTnp2k7TKexpnKam5cWGvUq92SM9rUD+dbqJ9V
/woI57YMZ5pEZVSp5rmFaQYDkla0BIpLYgJLh7NmlrouU0VJ5ywLKYYgGR1QdhN8
MUwxEa0xfagvc49QKPC9Deh+drGO9A==
=dn9v
-----END PGP SIGNATURE-----

--wLAMOaPNJ0fu1fTG--
