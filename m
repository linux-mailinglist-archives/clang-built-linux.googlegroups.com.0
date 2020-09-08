Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBP4D3X5AKGQETUNHFZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C93260D98
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 10:33:04 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id 189sf1052550wme.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 01:33:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599553984; cv=pass;
        d=google.com; s=arc-20160816;
        b=C5VAl4oQx7w8v/NnSZFgmTgXMYRYEMOBQvXxKCXZw7LpvXjfTq+sUpgmdebO8BjWfw
         l0nnPGs10iXcrgyQeBTFQVdB1p5cj23mAk7zto5eScgGKFC8AuPi1TVH5yAAmz1Ta8XO
         /uMrofSewfMZdMbeOxXXiYz9tCi5pXbnPWjQ9CHXczLjrKccAyAeAas2WfFZXWIZs0f6
         cI2hidT+TouaKpHEPt9BjQft9fw10zMoEjOOccfOCS7AlkYa1lzaifse5/z7NTK3gSky
         QkfPXQ4AqhpLEnHsP/0pKIj/koBvUmVS9zDyjPntOyIy7fdh/eiO4GYWMI1Ndr3nJCas
         Wq5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=E6OEUhvNMOIL4rf3xJoDhBq/dtqq7KADLHF/9yV/U4M=;
        b=jMkxDgH+isDfpP3tHk3sEGp2uWq4bdu7VLEUXlghLvdvS+qhO7SmgRNUCik1Mmy14L
         G7MxZqeDmn609Wjf5TJtBqWJNHhTUqTptGpff+b0BIM9g3gy2F5eGLzoMd2BVyWCsjbD
         s7eIFbtimGZR6euiZyrRGAA8KAGJ1h4TVq6edGCuvY/jQmLE4I50jaYmiOasN6MbTDCv
         nKW4wK3cE2q9ixTaSWzDLODeNgKzjtycNgKIJUQAM7DdOXlISJB67qgCKs5t4GGq3Pqq
         2O84lLMsTQ6+ObAsoFfk60uYJGHcwN1UJyVDw/Y9WcKgApdM56lqfjxNBKxPUxx89gVE
         6XFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ELTt9gTX;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6OEUhvNMOIL4rf3xJoDhBq/dtqq7KADLHF/9yV/U4M=;
        b=JeYSUryfrdtSs7of/pmkjy8YQ0jkSizDcbRRiOnxl4kQUT8sYLtmxMfImCLoWbnUz9
         MGxtFBWyfJ4mfzsczDLazzrnT9oWPd22Yq4pHkqMb6xq0Uq1Udc+9MJo60rn5yzi6DzW
         z9m2AMWTbQgNVH9nuNMModrLxrID0V6sxsWNMUgaE3C0pjPiEMBOjUOK7nUueXiuumsf
         vKCMHMHJ/0yN7QVdQRw4gUksxstgLMgMMJDpaaqz88JzeT6vhzZjvdVz1o8ZAOY2bB8F
         bvcdN8EJH61bcTnDYdhtpeP9tAIrAj7xuNIFskgaGxiKTmdyNm8pHhG8+vkEZ7LH3ANl
         6ZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6OEUhvNMOIL4rf3xJoDhBq/dtqq7KADLHF/9yV/U4M=;
        b=kHIsqxLidyQye2SGXWrHXQXScx1mpBipnO/srnMdWTPHkuBInWK3f+rSicBU5njxsg
         F8M+YLljfKXu9ku4fXfU5HV0ZvW/kiDUN9yliVYKeHzcAGXvajiuYjSuavLzuDe8An6o
         PBcMg8enPR7/M4r3yTjxLdd8pIqB2yveSeD38Ahjvz45CPilbfkK8G5XcEPlsTL1OTpB
         qe07TM1wNy6Rr0Xo6Aff/2n4UuwFuBvmpdHbOoaJzsnuwJ7ZIbm2UNnQAqnxB8Xh/S62
         lvGQpFhPzhl80KuwpWvhy05RK3qfTDB92zLlSVTNk03JBDYrsZcEQAxGoNCyz10tK7yV
         a3Hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JH3TKiRU1rEvb6uUBzUHS4rd3hxs0TjmU9iS69Qh1Ur58Y7hL
	Kv8iC23rMv+lNTzNTfegTwk=
X-Google-Smtp-Source: ABdhPJwy/URyr3/k7+Sd/Xlp+Xhrz4HPCl4tDBlwlVjY0xYSmcEK5WmRbKxDfYzpnVrb9cGMh3/l+g==
X-Received: by 2002:adf:ec47:: with SMTP id w7mr6996230wrn.175.1599553984412;
        Tue, 08 Sep 2020 01:33:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2cd4:: with SMTP id s203ls67105wms.1.experimental-gmail;
 Tue, 08 Sep 2020 01:33:03 -0700 (PDT)
X-Received: by 2002:a1c:5906:: with SMTP id n6mr3367520wmb.160.1599553983418;
        Tue, 08 Sep 2020 01:33:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599553983; cv=none;
        d=google.com; s=arc-20160816;
        b=jYtHVOQX5b4HnAc+HBfSfd9B6Hleii/ug+7JKU6BF8dcMEta3wOpcyU+xZ5mubWlIj
         34Pn1WF+oSzCWfQpFqP3mlzYOBRW4PK/pMYVTUKynJSnHQcxXW9vc4dKCAz1FLhbCimc
         fdgmPn+zL+9z+v5OUAuLEBlNg+lmx7v+opDP3+N/PhRsjUtw017s9wbLYRE4txEWIxVf
         L/Bqk/N9sYUJNN/q38tZjsvFMzDVm0dg1e9NozB2U63oBceC4nLBQORLSxEBxU1oz5+g
         yTR4GiENufYf790rDU1UwqKU3dPvcr1NrN60CZpuomX5+cF7BRNJ4tAueUZWS5axe2Up
         d6pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=JvnEFMaNjXHqhwG8miaL0ooeJ049Cf9xiGq4BaBNqiE=;
        b=phR0P1tAvqnXmiBeOpihZpX2D1FA4/QPFbg73OtxyLqLOBqkW+0mW7iYZtrtSre8KC
         QWb1NWWDxyMycxBoqSokj6D+HjGIDWrfZj8WYxBrb5kTSTtCl17kdh36Izbz4hugRhmE
         hy5KUWf9U15gqQYPtc6gEtdl/goa6ITFBl8Gx01EpvA2tPmqcfIjZcBhUn+IIqdZeE+X
         j9XpkRFczlBpTUOcHr+eoqLvKvA4QcS7zPsYO9KUnLknRJ5/wUxFZ3TmI3lJXZRrY+0t
         gvO2A8zWCS/d0fjTFdEWv+FW7kJ+Yq6CcfJW/N05gnOI59Wjg0BB74j0673NqQV/PQak
         38wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ELTt9gTX;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id x1si21849wmk.2.2020.09.08.01.33.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 01:33:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id b79so16256022wmb.4
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 01:33:03 -0700 (PDT)
X-Received: by 2002:a7b:c210:: with SMTP id x16mr3121744wmi.37.1599553983045;
        Tue, 08 Sep 2020 01:33:03 -0700 (PDT)
Received: from dell ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id t6sm7476120wre.30.2020.09.08.01.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 01:33:02 -0700 (PDT)
Date: Tue, 8 Sep 2020 09:33:00 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-wireless@vger.kernel.org
Subject: Re: [wireless-drivers-next:master 127/131]
 drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c:361:25:
 warning: unused variable 'lcnphy_rx_iqcomp_table_rev0'
Message-ID: <20200908083300.GF4400@dell>
References: <202009012305.vGKHlIAu%lkp@intel.com>
 <877dtc61lu.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <877dtc61lu.fsf@codeaurora.org>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ELTt9gTX;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 02 Sep 2020, Kalle Valo wrote:

> kernel test robot <lkp@intel.com> writes:
>=20
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-=
drivers-next.git master
> > head:   2c92790b12033797474b9ba1b2e56a95360f66cd
> > commit: 38c95e0258a067812311e84d2a170fd56f05431d [127/131] brcmsmac: ph=
y_lcn: Remove a bunch of unused variables
> > config: arm64-randconfig-r012-20200901 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c1=
0e63677f5d20f18010f8f68c631ddc97546f7d)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         git checkout 38c95e0258a067812311e84d2a170fd56f05431d
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Darm64=20
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >>> drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c:361:25=
: warning: unused variable 'lcnphy_rx_iqcomp_table_rev0' [-Wunused-const-va=
riable]
> >    struct lcnphy_rx_iqcomp lcnphy_rx_iqcomp_table_rev0[] =3D {
>=20
> Lee, please send a patch fixing this.

I'm just back from vacation.  Will take a look at these shortly.

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200908083300.GF4400%40dell.
