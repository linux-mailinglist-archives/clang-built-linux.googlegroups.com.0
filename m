Return-Path: <clang-built-linux+bncBDZKLXNI4ACBB6PPW35QKGQE4IVHP4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 019882783EE
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 11:27:22 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id t10sf608572wmi.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 02:27:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601026041; cv=pass;
        d=google.com; s=arc-20160816;
        b=09q8BJ3t7ZMGXFisXFPt+RTrtVKfuKxVueW8dPzcXw3pNu1JT100hUL+fnGhXjEyDj
         A+egJ14ZdWnKFUUShr9bxVC3pSgRt1W2IEg7ryctqLc0znfJI6dAlr3pQ3+9xRH0tZT1
         6W9M8LRj232ZLmbBFjdu1BI5lmvhIImlGSs+W70y8vYambpCJ9CXvcooAD02poX62vww
         OWHgT1P6xIOW1bImJ3tn+sZjPFgb+phioRgKYDfbehY1OP4oOvuuOLKaDLriY3RmPYrt
         1/+Y7fxII6X4NBWQq21HnET4KN9TthWVUGmN+TeaWtZuvEN20PhuDbAwVacdetoK4BeE
         C5vQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=NZrCUxCw8arfxfZuBwHHiZHC/Gbq3CDN8r0pCWI9Jn0=;
        b=vLWyiFhhWuesi0ndQnSLLVeFZyYh1BmQfHQSh+UrS0Lty41Cm/zUZC39EQfc7stbqL
         AMCtT5zveNdGSEJiy3u1hKdSGdVbeRz2ZGJDWuylZ7JObDIR3CGJs2Wk6qRxdA5jkoGT
         1eZJVO3d8aly5h2taabqwza486kv6i3IrQwayg41ZW3XkvuKFApIvLShJ/6Ez6BSAdi9
         5Lpy0FVoAObYdFPyWfIBnbMZXl4+7B6ZYrjGMRVVZr8awtN39b+oA9bn0xiiRA4i1t5d
         g8CZihFs5pQiLKdvLpEhnEau9iQsz0aKQcZms7KONYrW6xyul5uzttzNDYa3xrhFELch
         sSZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NZrCUxCw8arfxfZuBwHHiZHC/Gbq3CDN8r0pCWI9Jn0=;
        b=U4+DGUKnbP3gkeiw9aUb+3mCzFtR+O6e3RFN7Z0riW+BzAPXIcIF5AqDd6pZGjY424
         e4D7Xa5fcOOMIYp4p1t/iFRL4t1KJEKXktgb5Zg6fzYINxKAjVnnyu9/XtGxBeo2rk7/
         E7t0vjaxQaWtKBe+7Nqn9T8dFxBXqp5CwGwga3ek3N0cYzlSVPo1QI1T7+iMVV2skQv3
         4+pYOQMNBT0al5tB9/mzj61dsr+TW6uLg+3lsmrj5XheRkIlwy4v8sWQYWzryvUc+dHu
         QZeKUuzEWzT07vn6K+NrKkFd6S/Kl0kSIVoTCzmhK/zgGggJUSLusietXS0zkVVjA0l3
         QzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NZrCUxCw8arfxfZuBwHHiZHC/Gbq3CDN8r0pCWI9Jn0=;
        b=IItqLaHGzkI0wuXmb8CDccy7zJsyNPyH12f6vboNMwzTtYEYWo1zx7K9W3Lh6HQ513
         6gNTzDCl2tuxbAjliDmJSmxS7UknvDgr6FfktHStfGHbMUa/KOprJzz9XQeQW8HJW3VF
         a6T6W0IrtPE1fEyIn0leqbaJNZDNdhBOIpV3GgKflP0Co3fgZpixcF0lsWIBgXEEHoxj
         HNIqBbDys+GZp2mpIlAHSJ7pK+JVDGVea9QpZJY/kB2xJU7HhVfJQpZPCbPVbLo9i4oS
         fuvQDCijMwIbuAg9yJU6PAbj5ps+GXKZhfeRYBP/tWLREAAGGvh98pfvM6iUnxMcwUnX
         n8Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Cx5ejcwZj0e/y4PzMPc63xffv/eigQKQ+hgWvmOk2GkGFS4gl
	GxC68UCYyL+LjLidkc0q3Ew=
X-Google-Smtp-Source: ABdhPJxLlsMDMmCz/qez2ng69ezCwXZuAsJTEBIC3MMq/uGpqQYpTDqbNyfYaG5FqLdjGMwvmpx1tw==
X-Received: by 2002:adf:dfd1:: with SMTP id q17mr3718138wrn.347.1601026041780;
        Fri, 25 Sep 2020 02:27:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:428e:: with SMTP id k14ls2658268wrq.0.gmail; Fri, 25 Sep
 2020 02:27:20 -0700 (PDT)
X-Received: by 2002:a5d:6912:: with SMTP id t18mr3608427wru.326.1601026040781;
        Fri, 25 Sep 2020 02:27:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601026040; cv=none;
        d=google.com; s=arc-20160816;
        b=1IENbbZryqf1pqPCtYnsmc24w7+MS0tq064EtfcLI/KvCWdKu8s8NEeOB1/45g90WR
         UP8QfR+xJv2xVloimSncIDtshaH0DoGxanGr/ZBPN6Tfbrg6xKwTH1wyEpf5BUOdycZJ
         EHYuoZXBwi3lR90v8xs0soGoW6oMhlnxnlYaoivcU2B2mKCI5ET9PAwMiLpu6qNGEQtj
         K04Q/eNBYLUqR7TklmLAEUwEsVq1vI2gAnCss8GnsX2SrrOlURwlkTUZZPHtFaJIlzvk
         6mbgidxGpGjpEk0UUPH3Yt+3aKzrjbg2X8yeuY9H5aokpnmSAm8eCGz64wqsdwc1W/Xt
         mTaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=B+ePXbBEiIrz1+riR7UVZSe+rl9V+LpRSjDdNczPtTs=;
        b=nd+7h/UfnJUI85zN/zST31qCp+mDrZhCRH2YggxNdQKKVGx0nTmmWhZIxHxc7dnxCh
         l+MWqH6K6gKAhG6W5WA3WnIzuYFWX9POPVmvd5EKSOj1uAwaTKXudXzgvmzAxXH+ZS1Y
         f+R5EQCLinWfcwOsoXf/xyR6k/s+qM0qniN66XnoomxNRYnzQgsCCEFuMC6wMmkUxYAs
         SHTPs5LO2jibVoaQ2Kzuqy4dCXo6bN1nmReicGHc5p5YGNOw+yCwzRCFV1iZhJP25EOv
         p7fvUC9Ec0e4Yb7ngWiEQVWaXw/7GpnjajngY5iKMIQ1+CA+VcVyGz8ThE3HeV3gMHO/
         DyFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id z62si60947wmb.0.2020.09.25.02.27.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 02:27:20 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 04B891C0C44; Fri, 25 Sep 2020 11:27:20 +0200 (CEST)
Date: Fri, 25 Sep 2020 11:27:19 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel test robot <lkp@intel.com>
Cc: Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-leds@vger.kernel.org
Subject: Re: [pavel-linux-leds:for-next 61/70]
 drivers/leds/leds-tca6507.c:750:34: warning: unused variable
 'of_tca6507_leds_match'
Message-ID: <20200925092719.GA20659@amd>
References: <202009250524.By2seNuP%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cWoXeonUoKmBZSoM"
Content-Disposition: inline
In-Reply-To: <202009250524.By2seNuP%lkp@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: pavel@ucw.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pavel@ucw.cz designates
 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
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


--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi!

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

I patched it up and pushed the result.

Best regards,
							Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200925092719.GA20659%40amd.

--cWoXeonUoKmBZSoM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl9tt/cACgkQMOfwapXb+vJQKwCfRJbcAjEaW2PontJJL80p98i0
rboAnilm7g1cAjY6ia1OVwipmDXBSmGd
=O4cc
-----END PGP SIGNATURE-----

--cWoXeonUoKmBZSoM--
