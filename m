Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB3XESD6QKGQE6TUL6LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B522A847C
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 18:12:16 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id w4sf2304493ybq.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 09:12:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604596335; cv=pass;
        d=google.com; s=arc-20160816;
        b=OIaMd1oXfKsFS6/ELR2qs43/LXZQ57yOT60rVMqO+CLlm1IB1he+9FztgQbj4kMt+y
         dziUfbq49iJiS4vZvLPjWpS6PS/F+BZ5JoFDWDcBKsf/YsKfB2ZN3CKYrsM5KtJ26pz/
         B6lx4Y2PaKvaiWdWuUc/cIvo471Q2z14Hz4OTIrmUhoW6l+KnM2m/bohWzAIezSPsSCh
         7kfBoXkPhgVIGVasGkQn0Cn8oOVuzYC5ztV52u5qGLNq12v5VSmGVbvR9vUqZ/6VkGs5
         Hc8BzqY3An5gOUUc6BF+4HtEWuy0+Mq98AovdMzscNohKbbw7UxrR9LBf0zSD5af8Mki
         uE3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GYjErPnVlNj4IDbqPKj6OPsbPekNMSJOsWmQbMRQhLM=;
        b=y7uDbH6u+/J1/6SYX4YtGZF5bDWMbzN53VkJL0rzEOfF6TUJC/do+qyLhN0pMbk8Ih
         XTuIEawYQ95GtkD57Loa8gF/+4jIo8vVY910fq9y8BbQ77eHsSEB5tm007ds88Nd1TLk
         ZzvphOXF/bFeDags46oAOHxX6yVbAFF/Z5Eq79YBkuhGDc2+I6bt2/XORfnz80UuCjH3
         tw7uxXfmeZpX6y0WTa2VxwUaWlOE9JG94tIrXe5BFi3rIHydPfjAPCxPN0QOovHoUNG7
         TKvsjQEEIe5+tXm+1G9A3fONKPaLi/5ELoEMLH1e2Enotl8GDVALG9lBJZCuMh2QuNqW
         88Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2hKjTD3Q;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GYjErPnVlNj4IDbqPKj6OPsbPekNMSJOsWmQbMRQhLM=;
        b=h+qvQ+2NOFSZBwG1gGYWUCT6CuWNURBEDuCeMDceTKShGyFZZnvT3BZcIQRhjM3iQN
         6gXL21iUykEIlhSwfwPmDwkXYQoN1M+wU/KpE1MAl/kjBhhFJBwgzdAgOSkLv6nvhqo3
         voV92Xuz0eD7zW0JxBraZhL7DhVntUyU0UVcBBq3dKiFq1yq9/An+cfcoRBvmx8MC3Fd
         QtPxVgo+2V0cSYDmJnIcGjUHMpbrn5CQ2ep131xG2O5Xa0YPQoNWWY6oIHssukTm5oAZ
         QMzBs8RxHfOc3izZf1sX+DbJRKXev9WjqBjG8BudqlEH5rwkm/edSotV8rVO+dp0X/9p
         ixhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GYjErPnVlNj4IDbqPKj6OPsbPekNMSJOsWmQbMRQhLM=;
        b=G/XrWgjldT6WMAszPQZxabsvXQlLklO22bcxB7OMe+PwsKLi2vhFkZdEGBlt835JCL
         EEEoiY6IzoFD2euYZZ4y1ojnVmrXIRmQP90Mn9u66j1cIbpDrM53LNkb3Vnd7ovAuAGR
         Qp4WXuJbQxvWWaz+EwC++KSXdiicB1LAG6q89W+u2+8pM8kjtZ/lgn0EbcY4gZNBLbPu
         /HW+YEHB2FiWppbF4W9Z4sqBMlt8tAvmRFnDeIDvBRJiZohUK22VEuTcJUtXZl+QL1+6
         c2nBIdSNC0E/Ek8kD8VIlS47t4PsnRS7m//vQC9+/0Wr0tsXGL6uFJIwQQ1Zy/NVE7wx
         Xw9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZzNCWBZtbC/Pe8LuweDXM71GXF+Pxxd1YXzMWq9MSrfJXx2hn
	/CMppEkuq2scrwZkBXXx1O8=
X-Google-Smtp-Source: ABdhPJwUZGR777g/sChACH86gPQcuHzGC7Z8amGQmIBBIqQ9BakoQFid1z03J+VpaGSFK8B3wKFzoA==
X-Received: by 2002:a25:3883:: with SMTP id f125mr5048449yba.29.1604596335136;
        Thu, 05 Nov 2020 09:12:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c387:: with SMTP id t129ls1194033ybf.7.gmail; Thu, 05
 Nov 2020 09:12:14 -0800 (PST)
X-Received: by 2002:a25:820d:: with SMTP id q13mr5181185ybk.67.1604596334545;
        Thu, 05 Nov 2020 09:12:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604596334; cv=none;
        d=google.com; s=arc-20160816;
        b=zvgBO1LUgefEGjWQA5wipMrDdeNXBKzbHEz667519HRfGsQ49NJhjoKkfa49cnVpFH
         NGWWifZHCxZspJsUef6H2HS15jo38Q278EOy2/KpkgkBBhFZTsyIfUvEiNbKUwHd1sZf
         Cn+ATB7g4Ow04yPZlq+fytgZFnS156fTSJ9Abqsvcgv54CT6BmHvZnedv/zVetfVBb4o
         w9FtW5xmPV1ndiMViC2adXm+u9aHhQIpfvuWtFtwkFG/FKiulo3ALzrBzUaivQubGbuS
         mo9XkLWqFSjuUcMXImzkFyMgdkg/YenUaNKFIVLTrAghv8bBRkDvOz2AAF/bKiyTayM5
         /uIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2mrkodkR3wq3M9TrWeEj9xRIpwxIkJwPLZTTMb2VEO8=;
        b=mBJu0C3cjjgcQY7Qpw9YQqkaEQOBtvg8iumwmY7B0vNW7J2OBsjfQJT9Q5abcLFZTl
         2uBzKa7dEgPIV8Ssoj9McbqFGZiwXBOxE4NQ8p2pE75JLuEsjTbIc40GOkz6LB4xsi0N
         rgETjoljgna3IjlJyHV24tzHyV9MYCq5sedAwBrd3rXGJNhQ9VVmdx8rHe7ijZT3YZms
         JUBlWwD62scRtjxPlQAznUaui16OXrTwwIc8SHneVLI1ZihsrGqTxoMF9v0wGMupY91C
         sPDjNQ7aUXX2yWMWlUsvhBScO0PJwVTQfG6ZtkAJpJVxpJLj9iZghXno2KjZwmLsWj+a
         YmKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2hKjTD3Q;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q4si180794ybk.3.2020.11.05.09.12.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2020 09:12:14 -0800 (PST)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C3649206F9;
	Thu,  5 Nov 2020 17:12:12 +0000 (UTC)
Date: Thu, 5 Nov 2020 17:12:01 +0000
From: Mark Brown <broonie@kernel.org>
To: Saravana Kannan <saravanak@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Cheng-Jui.Wang@mediatek.com, kernel-team@android.com,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Daniel Mentz <danielmentz@google.com>, linux-spi@vger.kernel.org
Subject: Re: [PATCH v1 2/2] spi: Populate fwnode in of_register_spi_device()
Message-ID: <20201105171201.GF4856@sirena.org.uk>
References: <20201104205431.3795207-1-saravanak@google.com>
 <20201104205431.3795207-2-saravanak@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dWYAkE0V1FpFQHQ3"
Content-Disposition: inline
In-Reply-To: <20201104205431.3795207-2-saravanak@google.com>
X-Cookie: It's the thought, if any, that counts!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2hKjTD3Q;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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


--dWYAkE0V1FpFQHQ3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Nov 04, 2020 at 12:54:31PM -0800, Saravana Kannan wrote:
> From: Daniel Mentz <danielmentz@google.com>
> 
> This allows the fw_devlink feature to work for spi devices
> too.  This avoids unnecessary probe deferrals related to spi devices and
> improves suspend/resume ordering for spi devices when fw_devlink=on.

>  	of_node_get(nc);
>  	spi->dev.of_node = nc;
> +	spi->dev.fwnode = of_fwnode_handle(nc);

Why is this a manual step in an individual subsystem rather than
something done in the driver core - when would we not want to have the
fwnode correspond to the of_node, and wouldn't that just be a case of
checking to see if there is a fwnode already set and only initializing
if not anyway?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201105171201.GF4856%40sirena.org.uk.

--dWYAkE0V1FpFQHQ3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+kMmAACgkQJNaLcl1U
h9BOhgf+MWUPQ9E7PEgdJdwUqM+ffCc99Cl/O061oCqIkejrGFzDQBe1C51Mwua5
YqXAvXKEIkITeDVDKeaHM5Jf3bO6Xe1MxaASDZ40nbv+U2qLqG3MleCqwzOYBug0
7dB69Y4Wm7vB8VGN3CzCkkW3wa6AUKTXrPzSM1/lmZ1KPk+x7OtGvjsbtGBMTqEw
kQopqW/5ol63N7M4G9h37IfNzJgPkrpwdDJnWG5OzzWynyj+qPwQ/xku20aGBRp8
ARW3QLNqQERVhfP45O3/Wgppk0SUUFYx+RFUFyaZHbvn7tFrSFtpaPNKySGdVRQ7
Gxj9X9vuN+18Olyswofjx9rqRTiDRw==
=eA6X
-----END PGP SIGNATURE-----

--dWYAkE0V1FpFQHQ3--
