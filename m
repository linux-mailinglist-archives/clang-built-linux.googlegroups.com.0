Return-Path: <clang-built-linux+bncBAABBIMH3H5AKGQE5A6YCLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4AF25FC09
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 16:28:51 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 8sf6031132pgm.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 07:28:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599488929; cv=pass;
        d=google.com; s=arc-20160816;
        b=kJZd5Tqx3SlwQabYYsU5I65PKdDoLQTzZlFZfdHzT5RIzpF5RaahW4KXQlrgNbUmat
         ic7eDVOp2BM7ec5mIdRmr+EJKNDmKhKp0QbAhcpTsQAb8RYQYuIV2TiwH7Vifw06oqcB
         RJHe1ppYmrM/H3nK74byoDot0njCvhyA1FUzdJVA2bqjAFr7F9v4lytCIfHnbzWY99EO
         wTznULDXUd6IfBp8Y9W+s6NhvbXZbuJvskZxoDcrXb9Te3VBFotihA7TERY1iLWw/B3M
         oNAymViOReqKgtSdhB/VKVdDuKGXmAtu1kSDKNXRrNuZ3TTo3Mzq3otLZR4BxaM33ZVA
         66qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9OJZzE7VouXv4uNUdtXa9gPiWYCxeks2eUfnHIEkI8o=;
        b=fbvEs+7j2bfQxx/CB2UxmL/tzT2myyW7m8u20qAb9bC9zJfVZQbJJr9VsGtUWnG4YN
         wr4xxTgFA2n0ZtaObc3ILrEJzWJvCuX+ueZf6wODuXuaieRbl7Nn+xNIhRRAadUan+II
         j7TSka2KIIYFkN4lIZTVHlM5kcf6XpCjzOZfz5H0dLIiTS70JEHaTi8ZuDz7GyuCGCp4
         YKMDZmm+A/UHaj8RVQXBi7epjcsWoAbTmfKbItX9DXj9hnDWJUKBHVjr8Vh3SQ6/e2QG
         EhS6OmTtRHg/D+lKdCvM8QXPZEqeVfHzgTiMZ1EKczldpuRoZWz8Z9eKJc1ghKJuLB4h
         sXYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SP3rwR+E;
       spf=pass (google.com: domain of wsa@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=wsa@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9OJZzE7VouXv4uNUdtXa9gPiWYCxeks2eUfnHIEkI8o=;
        b=jPwdLYFq5UO2YFa1k338BMCInUPHRwKQacsTXgRlhg97/d2dQHHA7pRYaDsOe29iPx
         0KUFkA/aSYfrvop2C8yKNINIw9ujq8IfZEKDb5WNzOYrUCfS5X9zb8VFMl6kdouC5IaH
         100fogbzunngY7HqmADdm4BwYhLETCna/lVH8E69hQDeP7XtP70Mz9aCY976gNTlM5KB
         HTsnKgOj88kyGyNGXmsEi9xVdyCynoi8dLtHlZ03Mvz8F18yjlUqg4d9NV34m+1V6mxI
         zGjrYlJtUbLGKtetSjwhzAjrYyBG/cihmLvDs5Tje7PR84Pl8DyKbtmjaiI1UEYDFEk8
         MGBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9OJZzE7VouXv4uNUdtXa9gPiWYCxeks2eUfnHIEkI8o=;
        b=ldSQ+PTN+rkMv0rwkXuhWwBw+hts3/NoEzfGzfmr+p1ro0aipgdciYE5q3os+z/Wuz
         aJS4Rk+CPcdwxKl0T8X8fjktQgEboTj7LzmuNlMuY9jOTjolRU0DtNGmaodflCct8ZI2
         R/m00iOov+7MOz8tBXFAtTNu6KHi/Y6p75wdX5msK5xHEMLK+P62tsFdKo/2AzqG9LLc
         OznZipnb5MJnHqF4d5TTorHmxMlu5h+6MzMJWQgtmF7iOOdMp0ApQBvBK61MdsHbhkgW
         vDCFtZ/BYxn5xKuWf3JV/5NFY2opdZCAP55NZVckRRnrefovcx0M/XxOsAzJ4h/raHZR
         ojPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dL5OfiF8h5Uc/K9qsj3Jr6swiDkyb4zji75GErG3g5npVuUDL
	0wFzTXsBmxnZCLz644MKryw=
X-Google-Smtp-Source: ABdhPJzq8Rlpk/QSUxMiCW4d6mRo74X0gukEIdRpnS8Dxy2+IeY07vhMmSSQfpGzxItS0KdXLKoKTQ==
X-Received: by 2002:a63:224f:: with SMTP id t15mr17602430pgm.251.1599488929513;
        Mon, 07 Sep 2020 07:28:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d3:: with SMTP id gf19ls3845521pjb.0.canary-gmail;
 Mon, 07 Sep 2020 07:28:49 -0700 (PDT)
X-Received: by 2002:a17:90a:8981:: with SMTP id v1mr21306038pjn.54.1599488929095;
        Mon, 07 Sep 2020 07:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599488929; cv=none;
        d=google.com; s=arc-20160816;
        b=v28uUiwlqutHzNFyP4K+m9yW39rQHjHvnzgZLV6+3dVwGH2R94LWnqTa54Z6aF8GVb
         VpPYqrTvaS3ArA34L41BJ0tKqVkdG5xJMJqRbScBq5DZzjWmI8BpQOqxbhdztttM5j79
         yJvSQXsHsygWe05Ad/hjKWKsGr4lnlEaBTSzkda87qo3YKGdAv8TiDtjGR7CFcNMZ31A
         PxPenlbYCHl5qseboh3+9UkMd6iuL6T04vROazhll2G/rAOkELdL7jsmwVdchIl6lRZ8
         xPGOf7ibGB+ZN+0PAX9IqqvMQtfSoePIIW7uNBVDtNjCfZ12huGc5OXvI/TgRIETrqtM
         AFKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=V+q8TMloDPgvA9muDykYhdZOUIYh2f/gSCt973NE/YQ=;
        b=AJ9hMv0q3+3l+fC99A11YV+kUGqX024QH+EJ+ChRwRsdY0hOtou4LbQgoxW+5g7JMV
         M81Jw2WMqdzoy4By7JWmGP0n52F6s6rkxoRBAHlp79ccVAXYauMaJgPvChUsKdDnm8tT
         B0071QgQrQTjOvl9pgfgLFCsDjwmqBXGVkKW0ma7ag7nl0ajeq3Nj63pY11zQVFaErPw
         bdyDwiyWjhrxUeV2C+qaueGxTmQNHtUBG9jUqCBRk/T3mKCidMG4ONuIoHCf8WnNF93c
         WGrHM+5BPno/V8p9OdTucHsmm9ea/1VEIL+whH+f79hIoaCME5SAlqA0NtxR37S6WZ4L
         sbuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SP3rwR+E;
       spf=pass (google.com: domain of wsa@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=wsa@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bg1si770380plb.5.2020.09.07.07.28.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 07:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of wsa@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (p54b331dd.dip0.t-ipconnect.de [84.179.49.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1D6662064B;
	Mon,  7 Sep 2020 14:28:47 +0000 (UTC)
Date: Mon, 7 Sep 2020 16:28:41 +0200
From: Wolfram Sang <wsa@kernel.org>
To: trix@redhat.com
Cc: syniurge@gmail.com, nehal-bakulchandra.shah@amd.com,
	shyam-sundar.s-k@amd.com, natechancellor@gmail.com,
	ndesaulniers@google.com, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] i2c: amd_mp2: handle num is 0 input for i2c_amd_xfer
Message-ID: <20200907142841.GA3931@ninjato>
References: <20200904180647.21080-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
In-Reply-To: <20200904180647.21080-1-trix@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: wsa@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SP3rwR+E;       spf=pass
 (google.com: domain of wsa@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=wsa@kernel.org;       dmarc=pass (p=NONE sp=NONE
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


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Sep 04, 2020 at 11:06:47AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> i2c-amd-mp2-plat.c:174:9: warning: Branch condition evaluates
>   to a garbage value
>         return err ? err : num;
>                ^~~
> 
> err is not initialized, it depends on the being set in the
> transfer loop which will not happen if num is 0.  Surveying
> other master_xfer() implementations show all handle a 0 num.
> 
> Because returning 0 is expected, initialize err to 0.

Well, it is not expected. The core does:

2019         if (WARN_ON(!msgs || num < 1))
2020                 return -EINVAL;

Dunno if we should apply the patch nonetheless or add a comment that num
is guaranteed to be at least 1.

> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/i2c/busses/i2c-amd-mp2-plat.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-amd-mp2-plat.c b/drivers/i2c/busses/i2c-amd-mp2-plat.c
> index 17df9e8845b6..506433bc0ff2 100644
> --- a/drivers/i2c/busses/i2c-amd-mp2-plat.c
> +++ b/drivers/i2c/busses/i2c-amd-mp2-plat.c
> @@ -155,7 +155,7 @@ static int i2c_amd_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
>  	struct amd_i2c_dev *i2c_dev = i2c_get_adapdata(adap);
>  	int i;
>  	struct i2c_msg *pmsg;
> -	int err;
> +	int err = 0;
>  
>  	/* the adapter might have been deleted while waiting for the bus lock */
>  	if (unlikely(!i2c_dev->common.mp2_dev))
> -- 
> 2.18.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200907142841.GA3931%40ninjato.

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl9WQ5UACgkQFA3kzBSg
Kbb4lRAAqR+qYYGfBuYJNz9IlZD4fINTsBtP7KTjVgiMDIn11bUyT1xVHbld0Ut7
Mj0juR4/0NVyWKL59HW/zU5qxcRs5q0VYK3VBfYlTYRaGMTrDkRjr6dK1s3TksFp
3BF0nmwIL6H+UaBdWuh4nPuIJC8KOM6CpxfpukWoGlQlrgbDiDrnevA6QaA2i+br
D+UynwNQ4naOYJ2JDzWeAZZ/ca5OTbezVhKWb5MqSIFzs188pSopFJlHAAjJsWhz
2BBWibXh2syLzuTsFXgGaL0S5Bbs/reBG2Uit6H2kOSNp+EUZGWkE6ewAgV8Tm5d
e4Jfww+NmrzWm28rPW4asVz6xI9BZm3kgWZS/BqZiahVu0cTFvgUtQntxRRNxg2U
n3Xcxru2iMQn5/tE08Z6iKk8vsefAiC1MyoeRS4VqytAg8i/7Xjn61m/lC+X5XU0
VkV/im6BfMFZ1s+N5R8gZ+nPcxkbvzw8ZA5hNJImbyu2F1rKwiipjtLtd/nMw12+
C95ZqawbVsCKtYDPJFWYhyMeR0LpZd2gMskWzBHI6i5Um7Ba0lON4R9YbpAfc8X7
8TYHB/xVnsIe+c1Sd857ZOOAm0otamj/i9FilxGQbgYVqRs83Z8dvRCc4+ikiQJR
+7MGAu1AJkKaxm2xNW6BW/3iS06vBFTreKuSkDxV+JRedsq8Gjc=
=r3dn
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--
