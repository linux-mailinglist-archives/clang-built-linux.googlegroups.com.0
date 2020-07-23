Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBW7X4T4AKGQEDEVNZHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 485E422A9A8
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 09:27:24 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id k11sf599212wrv.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 00:27:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595489244; cv=pass;
        d=google.com; s=arc-20160816;
        b=NBiF5BCDJqX+PFMEkAXlkWKgWBxexUIKTPGY78HqP/oZ6hs/XBOGxlChgmbboLAMGe
         3lOtJl/MjR98hu05p6ckcuGuu+r2nvU88GEf8YjmRzE6e2Zdd4GlmLb+GCqC9DbETt0U
         saKVVhAyeKC4s5iIWRLXenM6L+W9rBXTmM1NML3HFRpkVh6aBjCzTt/owdjAfpaA+BlB
         DvM06S9hPB9yFWXzxvGIHfnrx7ddrXZtdIGVxFUxB1iAI0MWa4FB49OMQMtI7HTjT7mp
         SgDojU2gWwerrflhlTBvNjLk/hgbz6/fiHQKb4tLrECXRhXMSKUj7Ypm26Mwnu2VJiKf
         uEGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=sI8CXy2WxL31q3i5G8f5AcyhM42OTwSLuqVIc2rEJC4=;
        b=hJMa31wVxZJGvEg5pR27+bK/sxbthdG9JREMdKO1L8aDzoOVQ1AM84bUBhRtm22LuL
         d7PBbjl8Op1R8Dm5zY5LFEz3chXqXQvBmGmY4btESnBURDPF8VdbhgodGdT8wgHU2Ubm
         2e81cM1jzVnFm/zpd8wymZseZHumjgseiknQX99up79mesrYsGcteskp1QARFltK/Mt2
         ts2NJt7qftyZk00u1wk2/LrxNb1S8QjkN+lbArzp2rDixXRqAyoh2+RuzdI8q3T7hyiC
         VEUN0iqLec2nq2LvdpO8p0P+k3wC54oBrYJfvn8+G/+0NIynvxn+F1bFAetNDamRot60
         AY0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LOUD1UTu;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sI8CXy2WxL31q3i5G8f5AcyhM42OTwSLuqVIc2rEJC4=;
        b=Tzx2XdTB/3hFyjdWWZV/4Gu6tmizggzDkgbqqArq0fnnKAhWEafiSRs9e7wDrwhaZK
         cmhiFPwYBCO6lGaAdvS16WjPfd/xY8M7DuBJiRtkkkCwLmoAHAgtAzUHochKfgGqS5GS
         nilVf5jeM0Jl+NV0mvn4nk5zk5UcgS9J2ZkG8ynjAg5qDusPYJX6wuSlpnnaABKMUq4o
         JQ898da9jQ+Iq0mLr7OmuX4Mz4oxbM0Ua+MR0edjsj+Pvw+gj277shQWl7bUqnLyb8X6
         6nQ56Kp73RAAyism2/XwN9/mWxoaDwIXIBqmFv/hN6Y28yGoAwF50Lv6pixRjMGFJtY5
         XsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sI8CXy2WxL31q3i5G8f5AcyhM42OTwSLuqVIc2rEJC4=;
        b=XoNf/3fve60RHyInNnDcrVKAPmsyiTgvLLthwKFRHb6h7T2uCJj4xZsDNrsyR4Z00A
         IH9howlZXSxhW1nQvcSBZdmhhNCj+onJ1SQ/rYktfzVWQX1xXYRMKHtLNSp4+n2hduj2
         I06pU75x2wr6bhztdHqRWE2BQTRbKAfKeSdVgZDNKod3bKbYcXkAd6iySfHpFNgxDhHO
         sZ3Mk+P3pt+YTgvcM7ttxcqN3a2mkqeC9+UdnWd6Ig2ZLtr9wf4UAtZBI1VnRq/rw3nX
         7CQUHmHgUkZJOc2K8ffyv8+hUWvZGKgOCj8LyXimsHHKLETi4HFrLYM7nTGm8jY+Uti7
         hcsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53291c+rgCTgrs2Se/KmbgzYoAEFKF+bKbs+14VvhT5E6YZTzfgM
	gpAjcZA38XYl8NR2LQQuqJs=
X-Google-Smtp-Source: ABdhPJzqqAoF8L3S0y3mhrJWiUym4hYUrLi6pMirkHF3GOJCpW0hVdmOJgI79I1ncLvBXaJeKjzwiQ==
X-Received: by 2002:adf:c108:: with SMTP id r8mr2124522wre.41.1595489243977;
        Thu, 23 Jul 2020 00:27:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:81f4:: with SMTP id 107ls5116623wra.2.gmail; Thu, 23 Jul
 2020 00:27:23 -0700 (PDT)
X-Received: by 2002:a05:6000:1cf:: with SMTP id t15mr3025359wrx.180.1595489243487;
        Thu, 23 Jul 2020 00:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595489243; cv=none;
        d=google.com; s=arc-20160816;
        b=woOoAERuR4wYrrru2NC6MGXsHWourNa67s+yQ1VI8LGt73GsP6xTdaaT5r3Ww2pZmA
         TupWI2DC6nI33nk8/6is5C7OG/eAMzKuPoKdDZa2zMlqAc5bytQQOk53KpStAuwUDca0
         3Ik+LL1fd5P9Fx6sJhPu9S3/LGOrXfSGFjCJZ4JiXmcXxjnSaIp2NHH+hbf2AJ+R0yqf
         mCjHjzGWqhxy189Ydn2qgilsSc6ifFmiDBbi2nQSMrYkcO7t8belD76ifSrB0xisYdRb
         gHt8efVP52HuczsUe3Trp8z1AkmOwA4NvwZKc6CQSMcPdmgiT7t2mY3ZH9H8P73Lj1XZ
         01IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=+WUpyg/XoMk3a1s4aRGmDuS4P4iPqZPFed9u5dlnWRc=;
        b=bhwa9iqS0irf9e40+4xxQslTDSFWP52ihyZv2xgBKzW6e4kcPs6uGKPoYIyZXLW0O8
         +zEi1lQ+n5z86E5qurcffnHTuc79emmUQyX4SRWhv/fgR4lXyC+AN0jptkRvz6UNuoZm
         +Jfw+F2QUscQQOlG9fXGAdclXKBhMB1absjNglXpy3UnzDevMCbXcxYd1lh+3EcBLGf/
         RReR60uj9bJZUaQlFUwFvu7LE1iYtT0h/trakmN2cNN8n7YHhsiUeHp193rPPIOSB9OW
         Iw/qbAyqFaIkPZ4pP/RUlIYJluxmHncuHXek3skWWTYtauyG1sY+5BDcWUqELq6umcsx
         dfbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LOUD1UTu;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id o134si119268wme.0.2020.07.23.00.27.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 00:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id c80so4028189wme.0
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 00:27:23 -0700 (PDT)
X-Received: by 2002:a05:600c:2907:: with SMTP id i7mr2812280wmd.40.1595489243010;
        Thu, 23 Jul 2020 00:27:23 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id a10sm2620886wrx.15.2020.07.23.00.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 00:27:22 -0700 (PDT)
Date: Thu, 23 Jul 2020 08:27:20 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: Adding branches for testing
Message-ID: <20200723072720.GL3533@dell>
References: <202007180528.vD5KVnHi%lkp@intel.com>
 <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86>
 <20200723063243.GJ3533@dell>
 <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LOUD1UTu;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::344
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
> On 7/23/20 2:32 PM, Lee Jones wrote:
> > On Wed, 22 Jul 2020, Nathan Chancellor wrote:
> >=20
> > > Hi Lee,
> > >=20
> > > On Wed, Jul 22, 2020 at 07:03:19PM +0100, Lee Jones wrote:
> > > > Good evening,
> > > >=20
> > > > Is it possible to obtain build-test results for successful builds?
> > > >=20
> > > > If so, what is the process for adding branches to your system?
> > > >=20
> > > > Thanks in advance.
> > > >=20
> > > > Kind regards,
> > > > Lee
> > > >=20
> > > I filed a pull request against their repository and I get email
> > > notifications whenever I push to a new branch on my repository:
> > >=20
> > > https://github.com/intel/lkp-tests/pull/64
> > Of course it's on GitHub! :)
> >=20
> > There was me thinking it was secret source.
> >=20
> > > Looks like there are a lot of trees to look over in case you want to
> > > customize it in some way, I am not sure of any documentation over it
> > > though:
> > Docs:
> >=20
> >    https://github.com/intel/lkp-tests
> >    https://github.com/intel/lkp-tests/wiki
> >=20
> > > https://github.com/intel/lkp-tests/tree/master/repo/linux
> > You've been a great help Nathan.  Thank you!
> >=20
>=20
> Hi Lee, Nathan,
>=20
> We have updated the config file for repo/linux/ljones-mfd: https://github=
.com/intel/lkp-tests/commit/deff2b285b141ac462b3a7091566ce2ea218c9f0
> and there is a introduce document for these items:

> https://github.com/intel/lkp-tests/wiki/Repo-Spec

Would you be kind enough to expand on a couple of points for me
please?  The Repo-Spec seems to be lacking in a couple of areas.

What are 'integration_testing_branches'?  Will lkp-tests only operate
on those branches and exclude all others (except those mentioned in
'whitelist_branch' of course).

What are 'subsystems'?  If the MFD case, these do not appears to be
directories.  Do they pertain to something else, regex for instance?

Any help would be gratefully received.

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
clang-built-linux/20200723072720.GL3533%40dell.
