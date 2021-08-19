Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBHMF7GEAMGQEIW6BPGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BCB3F184F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 13:38:07 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id g17-20020a056a00079100b003e1010a1ad4sf2903998pfu.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 04:38:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629373086; cv=pass;
        d=google.com; s=arc-20160816;
        b=yw4A/5W5fKL62gdn9rXtea4++Npdf1tp8FTev8JXnv4+I/Ma4ZsKSuuJpO68AL0yCt
         2OGsfPZyz9TS8ugQsC8EOVl9/uuMISfmT5a2X+iHGrybvC8Ux1RvnrxYIz0f9AowaCde
         sdp8zBE9bAVd8YUyfdm+MRDdN/D7hLNAeh4XVxO8sd7ENR0nYuuJhYfRXpZTEWd8hi52
         rdGq+6vcAfwxlSf7HklxbMNB7AoNx7HcE+/4AHTFpBNL+0p49Rd6eS+KF4c+blMKet1O
         u4Xtd9LZyUXIO5fnSWmAhpQcwR6iTHlz++IyL4JeYpr+GAE752I9cBaBak9u4MdaD7LG
         +/tA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8kpxp2kEIwlTpmZEyT5kwUc+l1ZnpBAX6S1c1N6KmfU=;
        b=vAxv51iGl5YiIJjUVHZRJqhLXZLEIKfisntcXNb6P1VHYgI2uItfCSHKCYUVhP405M
         dz1xjfLP+qCgKm2OQZYqyy6kDRPEi5WXuB5opp8y0lCyDRdlLq6pQuzUig366lM2IrA2
         qWta6q4eLFmR+9xs5z+FN/lN8lFAr2zpQgLQlMKQiS/JHvtp1kYpjETyczc9r9r5NZIT
         qdYPffHhvUJZ2a4AV/BzdhdNB6rDioGRJ8/WEyXtrx1vVpFiuSYzWZCXsyCjSm6KEUzh
         puHsBGoWJIsL5l5rRQ1GUH3qT1cXgWnlBNCAKuyfevLPrK40jXic+VLPVLnAOsTcUkrf
         iyEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QqT6CLFs;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8kpxp2kEIwlTpmZEyT5kwUc+l1ZnpBAX6S1c1N6KmfU=;
        b=DYUNzvm+l1e+2vVhmCgVd5ZxVoNt0BzVmFUs7HZGKT0zZNbTXzzVSdD3d9cFlGxNV3
         MciP2RL4n+2Km4alJ+Cb1y1EStbObbg5VDbc3a2C3Y0wgpEG80X4RucYhW7ly1NBgCMy
         xiW1b7M/wwWu+8UVbb/n1eDBEiDZqmpwSwOEIaW02bzutG4855mEShvK7l59oJ4wFGoM
         92Va1ObB+d+CO+lTPpfiYe39I92fEtBIj8y8bW1GUc+fX7cIHNnhVzmwBgj9hQTGw8Rs
         HxSOcwn9HAMDznX0AfMuMxT2m+WiQ7ysXDquA43F8NlOvLZ+uqonMYIa068Z3n2v9Hij
         TfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8kpxp2kEIwlTpmZEyT5kwUc+l1ZnpBAX6S1c1N6KmfU=;
        b=Y0wOQmCpneYmwnQxG4XViMP6gd6Tj0hHcx+C29S2t9DTbcwQPwHKIdmmAPeM0cwVuQ
         ctwOVxEVG3lL9AEiAjxY7NpkemgjyDsYj/YmR5IdU5ECb36pieskEgquxkyfsF1URISf
         Pz4I8YfmUbGVqZ0/MCPjeD1MTVPgr0LmfHjMVmKRDqgTpgM/MkblgrZoLp0jlMdrdxwr
         jqw4fy5i8BPVsmkRkqDmaf5gqSQktZrZutL+i5jHd8jsevbDkiT/9xntfjwFBLuFhMlE
         VThk6YfdGhgt5jFpuDYduA8jJckWJUiabRVY5D7YaMgDzK7eYhzVdGwOEGFhvh6Z3hqT
         FjTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FuRLHBqPJtPfvDzAWlehV4immt/nF6zSlvCc/c2jqTIabXFom
	t4km+TgklRA4njPRYaD3ESo=
X-Google-Smtp-Source: ABdhPJyT9GQMvXaEolmKaYtRZ7WHdzrJW2s1wOqx5M8TxJMizEHG+wh0ZJ2+wFb07edLW2zWaGcO2g==
X-Received: by 2002:a05:6a00:ac6:b029:374:a33b:a74 with SMTP id c6-20020a056a000ac6b0290374a33b0a74mr14442986pfl.51.1629373086060;
        Thu, 19 Aug 2021 04:38:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f81:: with SMTP id q1ls2886180pjh.1.gmail; Thu, 19
 Aug 2021 04:38:05 -0700 (PDT)
X-Received: by 2002:a17:902:bf46:b029:12c:75f6:f643 with SMTP id u6-20020a170902bf46b029012c75f6f643mr11685570pls.6.1629373085445;
        Thu, 19 Aug 2021 04:38:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629373085; cv=none;
        d=google.com; s=arc-20160816;
        b=uBkNbrPI+pywsMK+9YocContBVL72Zc2uULZJA5ao3tcf15gSQx80NYe9wo9MG3yvU
         GmTUUTbSr9SUC6rh3PkGKtBi8AEMDLKzj5frKOQKd1Dm3gMMT092gS2V2unqmX+QB1JG
         GN5FyzFGQ3fMA0iIYGBD4P2sO3iGSf77NnxwMZ0M6YJ0kHKE3tt6l42FbLHdlahJhPW7
         mVvJomE7ZPZuqdT0MWuCS6rXVT2aY4rbYVxtd1ZB7nidiICcUaxSs2lNy/YcxTEHFVbz
         iMlpzYMHojfTTeWiS++9XeqQyU+vDwpuiMe08kMXe5OmvoNdpvZ0JWPS6dyIR9UszDLs
         fdvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1pXGnQNvDxeuXqt+aYCclGcI86QRezmijIATUR1/REw=;
        b=GQBYByQG3L1t9K0dk5A5Am9QRjuhutBsjgg69tBpsiiuTrW1xMAC0hcltNo/hryAzl
         oPf9CM/gFr9kBaDGAH2vSmswZs6ezyxefzxoMyJYoML3Vkw/VI44+pXzXJ4xzl6kuBub
         /tYFC9yuIA9v8CgPXZRU+vQFxws8Z4dN3Gn33hd7+UpDrRqXLzb7vueuMUxci25mYaNe
         f+nWfY9CgXctX++t9fXMPivKriRSlOgIQXjlibJVswpFP224OuHFB4rzzJeNKTWvDAWQ
         8KkMhhbayJsFZOSYHV0gg4yVhR6Iwwy/62345WGjOcfhtnGenyieWzxzE9CvLtc6FyYg
         UP+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QqT6CLFs;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u5si634958pji.0.2021.08.19.04.38.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 04:38:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A57B260FDC;
	Thu, 19 Aug 2021 11:38:04 +0000 (UTC)
Date: Thu, 19 Aug 2021 12:37:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: kernel test robot <yujie.liu@intel.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [kbuild] drivers/regulator/bd718x7-regulator.c:531:8: warning:
 Excessive padding in 'struct bd718xx_regulator_data' (8 padding bytes, where
 0 is optimal).
Message-ID: <20210819113741.GK4177@sirena.org.uk>
References: <202108172206.9cbgvI53-lkp@intel.com>
 <4dabc78a-f9ee-4e7d-8bf3-ea1c6cef8530@intel.com>
 <CANhJrGOh+9PoMmsv-Q9petTV-hv9rv9nOitg0NCQHqXVXzJvvw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="W2ydbIOJmkm74tJ2"
Content-Disposition: inline
In-Reply-To: <CANhJrGOh+9PoMmsv-Q9petTV-hv9rv9nOitg0NCQHqXVXzJvvw@mail.gmail.com>
X-Cookie: She sells cshs by the cshore.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QqT6CLFs;       spf=pass
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


--W2ydbIOJmkm74tJ2
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Aug 19, 2021 at 08:34:22AM +0300, Matti Vaittinen wrote:

> something changes would cause quite a churn of changes... What is
> expected to be done as a result from these mails?

It's probably fine to ignore them for something like this which is going
to get very few uses in the kernel - it gets a lot more interesting for
something that gets lots of copies allocated since that causes the bloat
to really add up.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819113741.GK4177%40sirena.org.uk.

--W2ydbIOJmkm74tJ2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEeQoQACgkQJNaLcl1U
h9AWKAf+IrW5qcHIee0p98YTKEhTs8gSVTcipARBWcgS6DI8bTIyj/m0sCiimwIE
pEGDwcUXwm4S2RYDHK+LwSLnhfIQ3D3IpwiQCv8xKGan56imaoS/IZ0mzWbGl3Ed
JnkVLfvdA+PIglG136FXd6NNwWysl2mqlk8ONCPHXWoNqEhUwCRJz0sQgcBZEch9
9vvKI3gPcy/0WtGPiL4iZyTCCRphrdFKqMPnf+UmPjydbwdIcVSPwEaHwNk6DPxs
fPab0vjz5cwBNrfAPyJj2pkdx8sfxCoQVaI2vouR0kZIYsaCQbsDKRyXCgrECskZ
o/ExAOOfOWsHZ4DDXg3jusHY6tge5w==
=vI3c
-----END PGP SIGNATURE-----

--W2ydbIOJmkm74tJ2--
