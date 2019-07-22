Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBVO423UQKGQEUS3G3TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C52106FFE0
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:38:45 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id x2sf19054528wru.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 05:38:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563799125; cv=pass;
        d=google.com; s=arc-20160816;
        b=lyADi+qvoYeojzEtmXnfGJNg9/t1baP+rnWYs6ICM0AHbaDWv1DZU0GlR0uJsOrtKs
         oAvP6ATtQKI2xxdgfG7SCpF7UX/MQV2ioU5exxOWrfbNdGBV5F0KOov3JIrhP3UUVYYr
         KjHZwtVLyNxUlICFwBrOeWACCrLeuRO+gAPX+pkW27/G09bAJOOlJlhdrZy1N8iqr2N+
         kHufhGkdKKw3P7Cb+1yqaHExogYYau4VBb4T6EEMFKIGdFrHxtmvDTvly1fxWJnK7XqG
         B1NrafUK5j9jCvH/Qh1ZLBwtiI0TvsRp5AYTTBZI6VxhcBZ5HUubA2woEnlPrsGyKLxL
         zbpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3NGVTSGZbWv2hBNTfvItY9qgfBGy/DMtGKUsM5GXT38=;
        b=A2wFCKdnCBq7mjbjGN2b3QNZIjXeVPU1DT4ToEwD0UA1bj8ysjFOyokeu536E466Vj
         TqngPhPW8tT/riNazZi3fj1oi8rh0CxPOEU0kgXhnshtGoOUIeAbStezLMSZRQmZqKCS
         bKQiN9r2qWtyrO6BBNyZPEuMw3h9iGe1hKBDZJIki18H2eIVHBHPFfGg36Q9weZTNH+8
         x2bQmbkLRGKbpFVK5GyHOyj6F7I2QOPoSITHsrl8Ad1nhkPoxY757uaBQmia3hFkAeUG
         SZ8Nt0jlEXvLSoHay+lh1zuYrwVxCRu4N0aqfRKg/rJzb7JkILUQBDcPYtCQ8/SfVmzk
         iatg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=C60VjZZM;
       spf=pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3NGVTSGZbWv2hBNTfvItY9qgfBGy/DMtGKUsM5GXT38=;
        b=LquaxjwR58E3aWKH25hTENm84M5FhSnDbw8rqpPxdUQwzm2cigHf+JvKGDWVodcqcB
         eEe8AGWJxArLj75tUiY3QVcyYjetMktjrA0GCgZmdEm6kYRe38LGZSfMuKvZp415y827
         6kMUDexOUMk4C3Z2cYdDdQzr1stxwFts1fzZpCdGzC1iziqMU6LoUN9aOOE03mFToT3s
         wSlq+eHH1/GuLCfHI0MJ6BcDg+eKwjtwQOgipSUHN3UTL/s7eBsqWm/ZIZTkCHOXRRXA
         i++6jKlwBMkuBl1mQCnkyWRnFeGygr3YbZGcdJ64JrPIVZsrzD8SBavteXTAK/RptTHf
         A1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3NGVTSGZbWv2hBNTfvItY9qgfBGy/DMtGKUsM5GXT38=;
        b=FHCJp62MrVc5XJlNVTROVkjI5eJuxQRfg5/wI3spEJJl7i9VP2JJUHjA3c5ucm2I2/
         I4V2rvk0Mo7cqdg9Qp8IF90tX9KnubtRkACbSevBcDcgn2NQQGKWGIfVQ846b9wr9aiJ
         OIOr3o4I03A/iSQ6r5gzuiUaZqmZyOSZOhfwCulxdasmb5Jof5znExj23qQS8R6zsNTW
         Z8OpjCT7ZNkw9tky93tOiij/HIUw5vRoY3hT9RpEbj4KtY6V34SRpuNq3z1szuoizZ/7
         5o3l4p5xIIr5w8l1pk68zgrKIWAddOWnkDsI+vrAjMqUgwHr7iesPF1bFCDT309SGGYk
         LswQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/3TWQDtAjCW85GixTLVQlpIHpZG4MtsbNB+uShlE/6T/vQq0g
	V3z/mpFWJjZwT+l/xhV/7bU=
X-Google-Smtp-Source: APXvYqx4xKXi2dPnc/KSCrEWldpna03VC0JUigVJJVXf8nyE4b4+KxNP4WZquvx5j/SX0BO2Vvc1pw==
X-Received: by 2002:a7b:cd8e:: with SMTP id y14mr63401578wmj.155.1563799125574;
        Mon, 22 Jul 2019 05:38:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:96cf:: with SMTP id y198ls14104393wmd.5.canary-gmail;
 Mon, 22 Jul 2019 05:38:45 -0700 (PDT)
X-Received: by 2002:a05:600c:2117:: with SMTP id u23mr63811610wml.117.1563799125062;
        Mon, 22 Jul 2019 05:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563799125; cv=none;
        d=google.com; s=arc-20160816;
        b=f6YuFZOu2nhBLs710JnQZZOqsC3qe3QqzS9/c5JqjERVBgYNDzTPkkVHDE8Bw/wGIB
         uGGBlW1InkBxrfO4j4isCkEhZ98RFCatnCFLPDPXFs/E2bditlDdeFfrB3GMh4dWU9pj
         GYRvQBqVkRNW6MpGEwdU6E2ldWsKZGkNroAob9DRWvD32R8uMZ9t8RJNoR4shyRT3F+Z
         zbjCE1gkfMqVZ1RnRXOasy1Xz+SJhjQ21Wxqw5PDLAhU7wNNvn5fi5HiDbQ5VHwGUljQ
         Buc/XcrywUALcvvxZRrR77RbE9azdzHcNEM+rvzrfkEY6nKlDcvPbpZh+zFNWzuDaNwM
         mB7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GEkGLo6H5lqpjsiZnQeV/ZHgCI1W32utWFYTDn5ZlaQ=;
        b=yZmwYvR9ERZhchhAvHSRdxj6piIuVkTfS7clyqm0apqe0j0Po/rBiHiRFIT4tF7VSi
         92vi84Q9jChO2qgVhQoE0yiogvqdoWdTSbvmFOGVjCmbOjoAOdKTOFknuna6WifSZL9M
         JqKbZYp/kcRCzvM7g5IGF8jOnqNV6+OUU4pTxiM30rBVlyv93PKYXXhOBpSS6vJLDZgb
         erQS4NAf0tYSEu+lWjospHuNyoEK0xKM0xTZrYBFKvpGuV3BU0FxYMJ0H27UMK8/DE0s
         v3tZ6kGRXuMpr6UXuABhUPdEKmP8P27GOlC4ER4w/V19M4FdrdpSW5cecTjQcBfx1hR4
         dDtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=C60VjZZM;
       spf=pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id o4si1406336wrp.4.2019.07.22.05.38.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 05:38:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.org.uk>)
	id 1hpXaV-0007k1-SQ; Mon, 22 Jul 2019 12:38:43 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 5FE33274046A; Mon, 22 Jul 2019 13:38:43 +0100 (BST)
Date: Mon, 22 Jul 2019 13:38:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Morton <akpm@linux-foundation.org>, Qian Cai <cai@lca.pw>,
	Andrey Konovalov <andreyknvl@google.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Vasily Gorbik <gor@linux.ibm.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] kasan: remove clang version check for KASAN_STACK
Message-ID: <20190722123843.GD4756@sirena.org.uk>
References: <20190719200347.2596375-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uxuisgdDHaNETlh8"
Content-Disposition: inline
In-Reply-To: <20190719200347.2596375-1-arnd@arndb.de>
X-Cookie: No skis take rocks like rental skis!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=C60VjZZM;
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


--uxuisgdDHaNETlh8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Jul 19, 2019 at 10:03:31PM +0200, Arnd Bergmann wrote:
> asan-stack mode still uses dangerously large kernel stacks of
> tens of kilobytes in some drivers, and it does not seem that anyone
> is working on the clang bug.

Reviewed-by: Mark Brown <broonie@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722123843.GD4756%40sirena.org.uk.

--uxuisgdDHaNETlh8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl01rlIACgkQJNaLcl1U
h9AMdwf/cTbheHdxyepR8MP8hqtk3YqkwtBTUpzuDAyZT8PHKcPsQBq6HaTt/Yh5
qhMtyDkazgIc+JMiMCpyGYrS3jvqxMgxbX6QF/tiEOfdK+A/RAH3YrGQxTUI1zYx
jl5L4OqPk3Pa7m4vhaZJ1nq0naBu8dIV38m+fprFauU1UBfTqFHmua1j1pq23HDt
WmSObYpdH5bTVgr06glLOi0CCbNoyenRx21isHoEbiTtDmuoYwtpejj20XyGVhr8
+vk7kCDUNN2vXckLC8E8e5K63/rSeP4MXcQcEvmBXP0dwbgAG0CNoPtH2YEjXm8q
h7o+E/ty9fV8bEfGm4GgnR+Y3BuYlg==
=N10E
-----END PGP SIGNATURE-----

--uxuisgdDHaNETlh8--
