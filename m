Return-Path: <clang-built-linux+bncBD5JTM5V2YCRBCWLTSEQMGQEZ5Z3QNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF3F3F8202
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:24:28 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id o5-20020a6bf8050000b02905b026202a6fsf952145ioh.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 22:24:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629955466; cv=pass;
        d=google.com; s=arc-20160816;
        b=AYb5YtNJ43i7WTgJ9rwAUwIeEACMGtJPXdiwA+6ZPv2+R68Q+B5PpKhc28oE3EkOFp
         qewjOq+Z+D8t2nAtPTJ5a5dksHu/NXmHjmIiTQdiklgl3heuBNasMsqnXeO+FXtj9X59
         bF651WN0q5GGclsMWomsiGhn6Ct/cRLrjZsEO/CgnV0o/S4RrruPVOXINhKmreG9CAI2
         mfzyZAfz9zzR0hOGr/bJJl6/tVlANidcHfOUmS6r2gU1g4ivIv/dBsMcAl2X1FtuIBLD
         M1TsuQMnCY9JrdWiA1YGpYs5ryY2rDqBbYGETlnS/hhpJxFjKhAPCdqKiLk4dW3QIrWN
         V3MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:references:in-reply-to:subject:cc:to:from:dkim-signature;
        bh=uo+mwHsLNGOMPhXtMgxYsFeeQlIL4ahWFp3ykD8JruM=;
        b=SnI1Zg0cCbqhtj3a4IaubHcpueSNgNgEbSHZVvptq+7eK5XDEVDGKdGrnR9SN5Pc5C
         6nZwpVvS1MrR6KxbvRVyyyL+UyZWFF+Q0geR0SYnyq5F/Bo4BtVzbLby+eCbjvF4Ba8y
         T66Gz0dF7thCAshMf5Rq0mLXToeEoz6wBSrKC1p8kF0OCr3eZ610xGJFRV7b+ogKBYNw
         gOUUcqXueCIbcgDetdtkMZoT0tJoP1hivEyvXy5vkQ+nyhGx5KVO6LiNhvL+83YlN6g4
         71KtHK26D/zoTOLBDGbcPdNKXPplF6Tbab0oKN9DmfQ+ZM6K+IXqvKuym8SlJ0Eu5ho4
         bBFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@keithp.com header.s=mail header.b=V8ZHAWsN;
       dkim=pass header.i=@keithp.com header.s=mail header.b=oucPIc+p;
       spf=pass (google.com: domain of keithp@keithp.com designates 63.227.221.253 as permitted sender) smtp.mailfrom=keithp@keithp.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=keithp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uo+mwHsLNGOMPhXtMgxYsFeeQlIL4ahWFp3ykD8JruM=;
        b=nsfDyyVUP4od9FbGlclilV6emLi1XzJlBcWuWjIOumoFMayfKYVsGhG17w1DOPnMeo
         qQWBFrUc8UtAQLIS++Py8+b0TQQyCLJsaiNm/ti0zVZ3j+HSofY5TimTEjozWTAXuhr6
         mRNLPaRtLie/sc5InA9lI9SDmmotvHZ+BLIrTcMgYMoiRlNipAnbOiUJh5V+LI6Qu9D9
         marETvpmdZwvmJaGGEVcO/J2PVHqYMOdA2yo0NDQSLQmA/cV2SGJiZOIxInn8kfzu3Ik
         1lZvJE3LJTQwK9Qz4+6ZWFmY3XNwGW7XOn8CYsatyhD63dZeY8xB6bFhkUPmsvGHr55U
         fpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uo+mwHsLNGOMPhXtMgxYsFeeQlIL4ahWFp3ykD8JruM=;
        b=Op/aBoJp7rGH3ppfsUkUE0Qt+spl7KY36a1xC0jiuWIQgLYTx3PIo+D39rcB6xv14J
         asdX239bYqS3GN4KQTWPW82xfhNTQ6zBDzcPGj4EaqZ8hV+h2lHuMAQXdcqfUZkmKFtF
         lNxQ6j9ngrHpt2lGK2StLte9esAn56ElwOD5tVxHO1jNMfu5UYUjF7mAh9aXVHsbHF7N
         UrTvVzAq8xK+/bHGyxmuC/swWzTvXPIk/GhHuc39vevlHADCd9de4cAiYFLRBTscPEyh
         x4vmvZpSuutjvPK8pm88zcecpHxmnJ2By7PxSJOlbgkIA3TKov9FqwpwRjx68hRb1SII
         0hBA==
X-Gm-Message-State: AOAM532/EaGq6z7UteSPoo4kw1BtTBlDidi/49HU7tRabR2JRwMalXbK
	U3d9fuHtchb9jM//rbxc9N4=
X-Google-Smtp-Source: ABdhPJxSwFdlbqeuSOCqHe+4jp6okR6CY4bvzIOzciK6MXsyUuUlvLpUnv8d8hf6pi3kD8StnAMA4g==
X-Received: by 2002:a5d:94c6:: with SMTP id y6mr1705222ior.202.1629955466750;
        Wed, 25 Aug 2021 22:24:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:fa18:: with SMTP id p24ls741491ioh.9.gmail; Wed, 25 Aug
 2021 22:24:26 -0700 (PDT)
X-Received: by 2002:a5d:85cf:: with SMTP id e15mr1670371ios.208.1629955466330;
        Wed, 25 Aug 2021 22:24:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629955466; cv=none;
        d=google.com; s=arc-20160816;
        b=zIEqAqS5S0KurIGp08NQWtruvQA5463SMTqNh86FAT0sdrTT5srtajMMeXH8BLz1ob
         lB88PXvSDbpantYXswJE5OGomXFOSGfMzod7R/C0oriK/qly/ZltzjHB3RTIfrwsS+L5
         UnSSLQAVPYcKlRUHyZeJiVGAgeGSzIgK2XLMGuv3fi7GsKLost4Rknm2A049OFVoRTcc
         HyvPn25Q3kMD3INdnMJHYMvdDXCQ8fU6PC0zERq8b4GewS+mgYRPTepanHe099x+qT+G
         7k3AYMA0quKcrwmM2SSKwObD0qANbFeKPADXlAwDkLxKLXjOYQVqGWPDlD4QH1zPmu9M
         cYwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature:dkim-signature;
        bh=MXOlUFf1qnU1xdyssbdtBfru9c1cRrJQNX9smg5v6wI=;
        b=LzdD9zEJs538bJ6pmDU+Js4+WEt7cc2HlqILbKYka43DNpg0OBlA53oGiJd69Zx/vm
         oDfIEBior4HYv8V7xlhVMSA/9QPCC9l/N3zQUSzCbwVweJ7LeTWnLXJyDJbh3O+lV3ZQ
         Y67rwbymxA/BePTMGNyZFhDhsMRslpMlcP/Bx09eUlNF7U/4/beyXCKLvl5lowT2lBeS
         WUsYTdwpNKE2G2xBdIM6KRQ5WTAnHxe3VpDkmVImmDWh2EnXepzdS4uOVFj9+J4c30zf
         vGbhfmqokJ7F/eBncPUoyiLMYGTn+jo5iQuCToo3FK04vqDp4kpvT8x6cvaAJPhTzrWo
         q5Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@keithp.com header.s=mail header.b=V8ZHAWsN;
       dkim=pass header.i=@keithp.com header.s=mail header.b=oucPIc+p;
       spf=pass (google.com: domain of keithp@keithp.com designates 63.227.221.253 as permitted sender) smtp.mailfrom=keithp@keithp.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=keithp.com
Received: from elaine.keithp.com (home.keithp.com. [63.227.221.253])
        by gmr-mx.google.com with ESMTPS id c81si171953iof.3.2021.08.25.22.24.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 22:24:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keithp@keithp.com designates 63.227.221.253 as permitted sender) client-ip=63.227.221.253;
Received: from localhost (localhost [127.0.0.1])
	by elaine.keithp.com (Postfix) with ESMTP id 5899F3F3072E;
	Wed, 25 Aug 2021 22:24:01 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at keithp.com
Received: from elaine.keithp.com ([127.0.0.1])
	by localhost (elaine.keithp.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id d8LHxscT6hWs; Wed, 25 Aug 2021 22:23:56 -0700 (PDT)
Received: from keithp.com (koto.keithp.com [192.168.11.2])
	by elaine.keithp.com (Postfix) with ESMTPSA id C066C3F3072D;
	Wed, 25 Aug 2021 22:23:56 -0700 (PDT)
Received: by keithp.com (Postfix, from userid 1000)
	id E3F3E1E6011A; Wed, 25 Aug 2021 22:24:18 -0700 (PDT)
From: "'Keith Packard' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Kalle Valo
 <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>, Nilesh Javali <njavali@marvell.com>, Manish
 Rangankar <mrangankar@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com, "James E.J. Bottomley"
 <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, Phillip Potter
 <phil@philpotter.co.uk>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Johannes Berg
 <johannes@sipsolutions.net>, Christophe JAILLET
 <christophe.jaillet@wanadoo.fr>, Fabio Aiuto <fabioaiuto83@gmail.com>,
 Ross Schmidt <ross.schm.dev@gmail.com>, Marco Cesati
 <marcocesati@gmail.com>, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>, Dan Williams
 <dan.j.williams@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 3/5] treewide: Replace 0-element memcpy()
 destinations with flexible arrays
In-Reply-To: <20210826050458.1540622-4-keescook@chromium.org>
References: <20210826050458.1540622-1-keescook@chromium.org>
 <20210826050458.1540622-4-keescook@chromium.org>
Date: Wed, 25 Aug 2021 22:24:18 -0700
Message-ID: <87r1egpym5.fsf@keithp.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
X-Original-Sender: keithp@keithp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@keithp.com header.s=mail header.b=V8ZHAWsN;       dkim=pass
 header.i=@keithp.com header.s=mail header.b=oucPIc+p;       spf=pass
 (google.com: domain of keithp@keithp.com designates 63.227.221.253 as
 permitted sender) smtp.mailfrom=keithp@keithp.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=keithp.com
X-Original-From: Keith Packard <keithp@keithp.com>
Reply-To: Keith Packard <keithp@keithp.com>
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

--=-=-=
Content-Type: text/plain; charset="UTF-8"

Kees Cook <keescook@chromium.org> writes:

> In some cases, use of the flex_array() helper is needed when a flexible
> array is part of a union.

The code below seems to show that the helper is also needed when the
flexible array is the only member of a struct? Or is this just an
extension of the 'part of a union' clause?

> @@ -160,7 +160,7 @@ struct bmi_cmd {
>  
>  union bmi_resp {
>  	struct {
> -		u8 payload[0];
> +		DECLARE_FLEX_ARRAY(u8, payload);
>  	} read_mem;
>  	struct {
>  		__le32 result;

-- 
-keith

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r1egpym5.fsf%40keithp.com.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEw4O3eCVWE9/bQJ2R2yIaaQAAABEFAmEnJYIACgkQ2yIaaQAA
ABFJwg/9HnuEf5sIRlyVndEk8XKVsPy1mM63I9dwsOPTB031099GdKund7uEfybJ
1kjf3GQv9nMAM0Cq3Uoiqfqv2liuTW2dGKBY2wHAVOtWjQXyTiN3NP3iNx1kVd7X
txLF08RakTjjbca72QM9P47VuaJMHchiiYQfGrUxaQY9/lUuyR1DawpZLomXT9kV
fUuBUpYUO/Xta1zs/e6IudCJRL0h6Hlk2nLqV+zrjTNsbEhI+Ztd0Lv40VrIVfUJ
ZXMCNHomviUCwybnTodcUdtWYU5JqokjGWqYZawyErshiEew6AiM1e5CHkl0fDQU
OUSteni1sY0nJ32L74MN0A2vjPcOeY3lzE8FTxeY7BzbAorxELYD4jBXhopA0+MW
CPXS0xfn6crMm2vyFH+6YB2udPlLr1+n0qfxaYr36Tr+dZ81D0lJ5g5UjX4J6q3G
nqx/vxHjWYvTQpHVZCstuABCHad/J/0X9SRS4xwu4983bMwDOCfKCkF+RNitHfpO
/m+mzWJYEQokqKtj/V8i1PDUYhpWO9Kx7G2zQZ31le75zrcfKmBccid3m65Z0OAD
e0w8NfJ1NDwSFTl4duKB8gE5gNKuppuzLlDBQWhrqIK+5mKCapZ0sCjSqJjVxNjK
Q41Bm6/blVaF0IaP2fnjEbyQYhy9tbuVEwYZ630P5ctqCHxsZ40=
=cojg
-----END PGP SIGNATURE-----
--=-=-=--
