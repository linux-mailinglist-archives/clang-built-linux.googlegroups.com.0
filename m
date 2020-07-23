Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBD4L4X4AKGQE6OB3MAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A80622AA5A
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 10:08:48 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id z12sf755437ljm.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 01:08:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595491727; cv=pass;
        d=google.com; s=arc-20160816;
        b=hWnQWnqfDPMxzAN6Kd5Jhd/5l7sFuRufJsG7rklIbbDkmcjH2sCChBT0SnlUIKH5YD
         pbAMZDmaZDXMUrx806vo2iNcQcYGlRPYoQnxtcRTzgbVYjERuGX3VdGL/eOA6KlZqR/y
         KIuq9Q8++O+ZMnGEa5CiRt+FJCgrHlibPXbWrSHYsBTQu2L/QDoLv7IMGG7BrlEYic3W
         z45RKg2m1SMROK5AmIC3UUpC7SwXwG6YOActh6i4vwJBCGCWTEhgcu/OOX8x5Hl/ecOD
         21ZtTRB9XrZSsQTVdcDPbVN6OSmDZECVq+rR+jd7RtdfTD3mMc3AlKVQUHFQazklOH0V
         vsqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=qeJtxAGRQDIxUTKScLbVcOCXlr7/JWxNSeZwhZcD5N4=;
        b=F8teF+ScPOlrjQtRe87bKd11I352cugW9D1cDDc3LRfQ2ukNL3ofvMMU6zXanOEy/w
         rpSYk48xiS2fyCmOFZq3LwNGzuuLb7KdKHlVhyXJd73sks0ZXIfcxss2rsOOUsQrBg4r
         hp2DOop63Kb3DtLHVLnqhf5U0svPripiG14aJcr3gZwAY+J8Di4VxFoRLUOb8OHp52Cn
         v6IPAjuTh3khPy9q27Bdx8AhjgwnhvgYEwMldk6ROzBHQ+sftXnfV0YdXL2oLYE0ZuvU
         D9r0iFUIgzO7FmQ5sWBDSe5B9l7ktp6O3AaNhc2SL9MPMiLulkvZBw4pVwv9735+L10M
         bl9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dVjkvqgS;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qeJtxAGRQDIxUTKScLbVcOCXlr7/JWxNSeZwhZcD5N4=;
        b=n2bZN8oeFSRVn9IENM+fxTCPqxxOaszMBFV352RDHIMKxW4ahxw7RvJGMP5ipY+/cA
         cz5H6auqcZP+nueCrZbADdGqHnufwOqSH6+fZUg+QTm4C047JOYIwwfVLL3z8lZpw6cl
         NtOya2oQVrWp6+5BO0nYTEU5MRyd9gMBfymFaBnVgMWXbajd6qbiwm29lTtkTbhR9qpi
         yrElOJYmaDS0jbsHhMkpGkpn5+Kt1kIwvnoZ/P8VMeRZJoNHz72PFQTbrArR8zgCMWyH
         H8sVn+5Lnfa6DjQwxGWwDIlDIkIcGvOLsGnLBh/HBEKaEJdzdXsjiKbxozmqmddyB9de
         4vxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qeJtxAGRQDIxUTKScLbVcOCXlr7/JWxNSeZwhZcD5N4=;
        b=H/BR0JNHxbdn2lKw1gvaFfdzx6uw8jevzY5oaL14vOBVIiwKTANNIa0I+N5pVvQmop
         zjZsS3s2h/1h8i1EDMUDbgs5UHQ9rb0+rdfDOIDCMGUYZZCbPU+0Ew/hqvaSRmxADsKe
         +Ql6C7frVDmyzUpalRhw4WTdQU8MyqNWoMBjdYxwjBd5SSJ3dzEws0MEPvHgyKQXPftZ
         sfAjj6JC2QO8nbSPrgkqNJ70k8pt+de/1n706ee/tdzDlvkGMUWbJviS6GrT2Po69ZXf
         0tXedZRtDrH6YZ8RkabIyshrHwsTpqmzXgAWkBrbDSOl1nbQNZ3a7qaQuvzcrlLlQimR
         9JpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ALKIW/VPsPFKYtRUh3YWpGLY3dC90v2ZRid3wdeUIk8DXGWRb
	MIFMGzHcgjEByG+z5OPzhMs=
X-Google-Smtp-Source: ABdhPJx/H2kbWFiHzbu6Dg/p38jCHpSAgLcKuzPtXYgyxP2vxcRlH+uU/QhiZgk50FxKwYmhSEEBFg==
X-Received: by 2002:a19:8c47:: with SMTP id i7mr1670606lfj.32.1595491727616;
        Thu, 23 Jul 2020 01:08:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:230:: with SMTP id z16ls900685ljn.4.gmail; Thu, 23
 Jul 2020 01:08:47 -0700 (PDT)
X-Received: by 2002:a05:651c:222:: with SMTP id z2mr1494046ljn.395.1595491727059;
        Thu, 23 Jul 2020 01:08:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595491727; cv=none;
        d=google.com; s=arc-20160816;
        b=hQT+pAtRdTBW8JvtBfx5kVnIsLR2N6ZBoeb9tzJKDOZX4S+j3SVxmABtqT+Aj56We3
         hA7DoUYObJohA9SylMXepcN8EMqWiyZbBRc48yU6QoXNawAWjLsVmXop4k0baQX8By/T
         uKvGiueh6e3UK8TvNfDNpTfEbnbI/IhtnCir5X8EyF+WycRCDdWoukuSMX1G/MF/WknQ
         dIqF33yJ7QWSp36IjgHLdA3Jq9BNNnBuxrTLDkB6hbL1HJo9/xoLadhbjz+/2FgQG3nM
         n/FgFWWwqqCaJWlVoIFvmbHVZilu29iE6AEBo3gBbyrWVgbHoLDVhxQ0CBRP0tL1mdlu
         TBLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=1Eh1e6IdsygWAhj8pwFudecfRoO60O3uXPwMkvwG3W4=;
        b=yBaDno0QE3UyZ6lbFwhcmchNgn8XDQV94xRNUIBxr/zNpFuHfhztzdN3ojgd1xVE7G
         CnktyHGXpOXjQA5t1h+ajxrDIfekeiac7dfHOZQ0zWpzmYDuzY5mNRXMjMuD3KxMY5bd
         prU8wRihziQFuy5iP/ROkNKymnWQW8Q3S/tI2m2dKkC9bhqJW3YHEb9eZzzh7/pYSreS
         pNUUvdaADGs6MZctPWIPLFdo1GBIPKXaLaj4K6E2kMvSKhQ+z9Y4wAdeBxsxeEaWOMMz
         zZmPdK/wqgD23vxYHd5t+bjEv4RKCHj7n+yDUQlMRlELmZzLXBJQ+OkW1jE1f5DZXRrG
         oKvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=dVjkvqgS;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 69si101915lfa.3.2020.07.23.01.08.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 01:08:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id z15so4219591wrl.8
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 01:08:46 -0700 (PDT)
X-Received: by 2002:a5d:664e:: with SMTP id f14mr2950537wrw.6.1595491726448;
        Thu, 23 Jul 2020 01:08:46 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id h11sm2980566wrb.68.2020.07.23.01.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 01:08:45 -0700 (PDT)
Date: Thu, 23 Jul 2020 09:08:44 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: Adding branches for testing
Message-ID: <20200723080844.GM3533@dell>
References: <202007180528.vD5KVnHi%lkp@intel.com>
 <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86>
 <20200723063243.GJ3533@dell>
 <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com>
 <20200723064625.GK3533@dell>
 <440716db-2411-e4a6-6e6b-0f8d679e558b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <440716db-2411-e4a6-6e6b-0f8d679e558b@intel.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=dVjkvqgS;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::444
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

On Thu, 23 Jul 2020, Rong Chen wrote:

>=20
>=20
> On 7/23/20 2:46 PM, Lee Jones wrote:
> > On Thu, 23 Jul 2020, Rong Chen wrote:
> >=20
> > >=20
> > > On 7/23/20 2:32 PM, Lee Jones wrote:
> > > > On Wed, 22 Jul 2020, Nathan Chancellor wrote:
> > > >=20
> > > > > Hi Lee,
> > > > >=20
> > > > > On Wed, Jul 22, 2020 at 07:03:19PM +0100, Lee Jones wrote:
> > > > > > Good evening,
> > > > > >=20
> > > > > > Is it possible to obtain build-test results for successful buil=
ds?
> > > > > >=20
> > > > > > If so, what is the process for adding branches to your system?
> > > > > >=20
> > > > > > Thanks in advance.
> > > > > >=20
> > > > > > Kind regards,
> > > > > > Lee
> > > > > >=20
> > > > > I filed a pull request against their repository and I get email
> > > > > notifications whenever I push to a new branch on my repository:
> > > > >=20
> > > > > https://github.com/intel/lkp-tests/pull/64
> > > > Of course it's on GitHub! :)
> > > >=20
> > > > There was me thinking it was secret source.
> > > >=20
> > > > > Looks like there are a lot of trees to look over in case you want=
 to
> > > > > customize it in some way, I am not sure of any documentation over=
 it
> > > > > though:
> > > > Docs:
> > > >=20
> > > >     https://github.com/intel/lkp-tests
> > > >     https://github.com/intel/lkp-tests/wiki
> > > >=20
> > > > > https://github.com/intel/lkp-tests/tree/master/repo/linux
> > > > You've been a great help Nathan.  Thank you!
> > > >=20
> > > Hi Lee, Nathan,
> > >=20
> > > We have updated the config file for repo/linux/ljones-mfd: https://gi=
thub.com/intel/lkp-tests/commit/deff2b285b141ac462b3a7091566ce2ea218c9f0
> > I was just doing that.  Thank you, you've saved me some time.
> >=20
> > Would you also be kind enough to do the same for 'backlight' please?
>=20
> Hi Lee,
>=20
> We have updated it: https://github.com/intel/lkp-tests/commit/c0286b0f24d=
04bf11f83e253df7e237a49858243

Excellent.  You are a star, thank you.

I have added one more repo:

  https://github.com/intel/lkp-tests/pull/73

Please see to it at your convenience.

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
clang-built-linux/20200723080844.GM3533%40dell.
