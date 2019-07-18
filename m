Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB4FZYLUQKGQE6CIWHUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2ED6D1FD
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 18:23:13 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id y130sf7174687wmg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 09:23:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563466993; cv=pass;
        d=google.com; s=arc-20160816;
        b=lSZWlwhKC7PfVv81FUC9mygZxEicQBAwbYaCO3xRXvZS/e9NBR/x6Mu1Fx++L4m+6L
         KNMf5xagiVyGI1k5bINDcIAuTrp+TnHolzdWLUTdE7hJSkszxtN6xQul6FbAM+XQPqRN
         22SOJ2ysQsld8R+D7LNTVD3GzToqZ57wnhwj1j04qlkp1yRaTAc912YI/vzksQH5PoFO
         usIEW3cDMde1oZrYdhOm1xk+LKq6Oer1pYZbdklljahwyGYbVkYtFKZGaHQrKCQk+nFS
         qd8qR8+OLtzTgn0wrs6FbtuI+e4eSZ/JR5o7CjPZsFL+MjLVt6Jt4WnM/slZDxjScZIF
         nDTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1UNSzJhBJwLqtjEoI3uunffYV1FMS/bBHpQhjsCDjiU=;
        b=pa7RFb18HaacluDKWxRlKJU3TMj3N+ER4QM3ZI/IjoP59gqkyvqBbzwrGdPCpj/mHg
         IDBd4NHflPzCE27qMBCFIO/ghh5B85UZnCuhoMwLCdlm2fR7sxpPto1vCAZsiaP25mK8
         W/P9/Mub015URZQ81SGHaa/hk29PGjcTbo4nIRzMiMhZ4Z2ycU5gJRhp5cnNs7krs5LX
         NSCD1j47VDN3cer4gvWPupJbJdVJXhY9SSUFWDdZcCegeA6gAQF8vZWWfSYYCRx/JZS/
         QhTUfT7q4Lp2J5w6LZa5SnIJR9mAC3GTOqXNDLfiy5E6vBUUBysA+YJJkQ93WJawXZA6
         TrVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=qYExk+w1;
       spf=pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1UNSzJhBJwLqtjEoI3uunffYV1FMS/bBHpQhjsCDjiU=;
        b=pRXQmPEVVTb01ZhOC2B8c30WQWoKkAKq0ReRcIYdLdrgrnblJ7Mn11vI3GHShuvhzd
         OgmuFN1rRbe0s5yebHVsbA89RbiOvgHe+DPfBIYJJaSa3mMKtcLaOckegI4RwFhsy6ZV
         vumkv/qppWgmXzZPJ7cw1IIM1hBZtu1PcGMBsb0gWtJbWOB2jlXNMXNVzNe/FsTb8BT+
         VYZq5OP65MiuPqg4z2x9mgQdIZp+IcCALpBudF8ADOIWpbCC2THSJtRIqmFqM1V5gNR3
         BzO/90X0Aoo24nSxAuYXa9aZzHgUXv4cSu+IOmWtQWAtJaGsxSUQBLGiX42Frq36sakQ
         2zzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1UNSzJhBJwLqtjEoI3uunffYV1FMS/bBHpQhjsCDjiU=;
        b=hMBmUKCr8XzuipQF5aBAJ1imiz/QKts/RTAh63NJMP4dL+Y0E4yji22mFY1fl6htlW
         dnPF0tvuzDlP7Sp3rGMLNtOFXSGe+zUk+MTZiR8ABZ3XSSBj2SVPazeLjqHgZTc5VmWA
         qjVkbog937hYW4rhlYwwYDwi35HUVjzHdbQjoXa9KVOAM4Zi1fk8tbMek9hVnJ846SKG
         N4kRbf2k+kY733oCV8JmyHn6RaswAOaQIQ0lpE3QJKhNsvaGfR7sdHTs4B+C5ub3Guya
         HeiVSRtEGfqhyZpMMfG7TSGC+Aj9OdwbzF6hCe/wwAkmlCu+yN6PfDgQt4YmWzaIrJZs
         6JmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXAIxiXTxBw8yjqD3ENGIOimfZQYWwEkXaB/lNS/ZzsE9K13aZe
	6LaWCqdulpNVMldaMkAxtDU=
X-Google-Smtp-Source: APXvYqzqXD7AY4EYT8grmwllRVB++IrFm7GRF73m4oqdRCm/qLAVREYE+xyGzLdzFrUpKwjg2bkkYA==
X-Received: by 2002:a05:600c:34d:: with SMTP id u13mr15465640wmd.48.1563466993037;
        Thu, 18 Jul 2019 09:23:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c8d0:: with SMTP id f16ls10675431wml.3.canary-gmail;
 Thu, 18 Jul 2019 09:23:12 -0700 (PDT)
X-Received: by 2002:a1c:f61a:: with SMTP id w26mr45649332wmc.75.1563466992450;
        Thu, 18 Jul 2019 09:23:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563466992; cv=none;
        d=google.com; s=arc-20160816;
        b=od7+xdal0hl6rF+5OcyD1s2k3+5E6pAKakJExxWN6kyceKhwORYfRAD4QPHdS82UH+
         0woQIHcX5dG/fBeFSXJpS9AbTZ756GMRcNYO8S83SNRlt9ZP3sE2jxpnMi53aiMTlLk+
         unJTN74szbuUZ8YN07ED7U1uRYIg4rHcTGZ23BnVOEtR9uFsMpX7oisK/ylPMzlUBsWn
         I9Kno4jOX03wHHTY6xr4xfOl65YNxrIapDrx4s1MacQ6SFNepj5sU3Bl/WMjYwCvYNjr
         4QfvVFflhosr8RibYwaSYc58Nb/QV4NijfsgG+oXxMinsi0pnLcJAFKYQqXiIoGUaEZE
         HH/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=u88OQSng8pqPv+xn+R4kAUlsl3qCV7o4uVNlPX15ue8=;
        b=P6JqZZ7cu6lgkgEwOyrjZ+T+BBIwpRoMxMd3pSJn7PHkxifPf9RYfJpoKTRfiiVhgh
         G+Hw1UYMBOnKBC79QdL/kZB3GiSwwy8AL/zbL2THS87EsLp+19rYjDGZX7lUC2RVBwFJ
         ocuBUhMpW4xWGrJtQ3mEAgN6y/9eikDWvOaGZxlQenjT4qukiWIeMVD7AEUbN2FLipyF
         4bLf6DM3TauXbku0kcm6VapNnFv4zlhMtjjIjoKHqEMDi8Zapg3nS0UF+BKVfqIESL3P
         y/UtdvKFSlN9I48Z7APnoPXtkpnog5YxY6GuuvjSDKsUeRHcmXeb5qPlBRaR1uTs65Dn
         y9+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=qYExk+w1;
       spf=pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id s13si1844857wra.1.2019.07.18.09.23.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 18 Jul 2019 09:23:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.org.uk>)
	id 1ho9BX-0005Yo-7M; Thu, 18 Jul 2019 16:23:11 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 25436274175C; Thu, 18 Jul 2019 17:23:10 +0100 (BST)
Date: Thu, 18 Jul 2019 17:23:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>, Qian Cai <cai@lca.pw>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kasan: push back KASAN_STACK detection to clang-10
Message-ID: <20190718162310.GG5761@sirena.org.uk>
References: <20190718141503.3258299-1-arnd@arndb.de>
 <0ee5952b-5a76-c8a5-a30a-ee3c46a54814@virtuozzo.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qp4W5+cUSnZs0RIF"
Content-Disposition: inline
In-Reply-To: <0ee5952b-5a76-c8a5-a30a-ee3c46a54814@virtuozzo.com>
X-Cookie: Oh, wow!  Look at the moon!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=qYExk+w1;
       spf=pass (google.com: best guess record for domain of
 broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted
 sender) smtp.mailfrom=broonie@sirena.org.uk;       dmarc=fail (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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


--qp4W5+cUSnZs0RIF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Jul 18, 2019 at 07:18:28PM +0300, Andrey Ryabinin wrote:
> On 7/18/19 5:14 PM, Arnd Bergmann wrote:

> > asan-stack mode still uses dangerously large kernel stacks of
> > tens of kilobytes in some drivers, and it does not seem that anyone
> > is working on the clang bug.

> > -	default !(CLANG_VERSION < 90000)
> > +	default !(CLANG_VERSION < 100000)

> Wouldn't be better to make this thing for any clang version? And only when the bug is
> finally fixed, specify the clang version which can enable this safely.

Especially if nobody is currently working on it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718162310.GG5761%40sirena.org.uk.

--qp4W5+cUSnZs0RIF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0wnO0ACgkQJNaLcl1U
h9APYwf+Kzm6iVj05bK6tW2kdTEo7s2zm8djsU0Lw/jReO/2k4adbVVkiYeVBcvr
mfOHmcwEl9KdUAAhqhAXKmhUHjAX92Tiz8uPmlYm//5K2+0nAkq8T+qbZK6HGnSZ
qg/7w6bG7SL/nEgQKjbxNz2ZRJJPRsFR69hPewzSmO+MEPEmsfBZbk6/2wcLS5+P
AFO3X8Sn8Lx8b2ZszQ+gyr6z23CL9t4MnkaNY/3j/bWqhwZs1oXS6Ij8ALgU576K
nhTH7/9p5vDpOayPI4tT+5WLCAKIjb+xkbUQcfDTlFxvbH0EAA91c2L1JfgAAwAq
d324QrrbSFQ2A1y1BmntIQKfCBB+fg==
=tOEW
-----END PGP SIGNATURE-----

--qp4W5+cUSnZs0RIF--
