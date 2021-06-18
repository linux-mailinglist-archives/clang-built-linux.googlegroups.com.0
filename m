Return-Path: <clang-built-linux+bncBDUKXHHSSIJBBEUDWODAMGQE67G4LTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F623ACF7E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 17:53:55 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id u7-20020a0565120407b02902ff43b1e7f4sf4675813lfk.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 08:53:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624031634; cv=pass;
        d=google.com; s=arc-20160816;
        b=YfPspj+qg2862IBhRv3SLjKAg7ve8oC4O0DtceN29Azp7GX5D25TYv8gBkUOljnFqv
         EkDnaVc2ESpDv18oqwGvu/LAcYMVK+LlUPXIxR7DgxPqgvsea8Re5S3MzBMPdM0aO9a1
         4tcy3M/ITqYDindhGJNK7NtW6kX5U3tokctdEsLlwI98a/fZXlDrTvsv2LQN8ZzboCw9
         733SiOtYR59rb/MWhinxa7n/3lhh00uyRV8CRMpX4pTrYbnHCvJAIvxTF62+kkaethwN
         XffuOtSSSeMoWjtGuJZL4bcpSImh6YUv+MsCdnfedh/7YY3AnC1cqXHKstUpkvfMC/Ty
         84cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=c3wAUmYadZqLuCOh7fEm/G6QCp4XTkn0NTSVyCbov1Q=;
        b=StoIrNXeyh31J4KRPH3DNZmzQAF+0MzWScbDLrkXx+z00HGyXAtXVbU7EZyoKWqztc
         3KsD8iZJFeZXwbg5cBmzX8ATrYmtXDrvaLBJrFq/tiMhT6nUlFa+o5afvNrdeO6Q4vA/
         1dxsEn7sVgckh75XsTLzfnTN80b/1vMgZozIEhAToJ9gem3Dv4EACSLX8jU4zgfOvDoh
         v5aOelQuGx88UI4j3EpohJHjPwlK5ZI8ge0/h01MKEfFmvtTe1yvvRet/lXDnWxOOYZF
         B4QOwE1B7EhT0fG5duyV261ZzCZgHyhtTTqccLkAxq8dmXbAarTqgCkz1RcVrgnHvr+j
         BwFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c3wAUmYadZqLuCOh7fEm/G6QCp4XTkn0NTSVyCbov1Q=;
        b=p1Z9Vv7G3uZIgcWTZuX9F9WnG2u+uGBmFC9rxTMbDUsrg9/gJE6JsQvzOMXv58jfIi
         ifXC1yw5wuYLBBHNXtwagbtAx2ZJQVb4tUJt5YtCV+nYwEmjFEIwCIlFqgmdaX714Fz6
         vrcNEnKkJCfDr7BO/JOP53lWeIEiZAbitX55J+ruTc4VKjnAh6mmKdpx++h8mCW3LjK5
         uc9/VkZuFHg9/yFYwvFHiRGWVVOjo+sAbjU6RrLdT6/g2oJfdWa0h+CDB7eI6gTb9Qiq
         JlzJPmOL1xrzGqlUjvZIf6AOL/6EDWr1x1QmwEuyCi8MFTjucZQAqc1E+6aX1Nbt1jKi
         7xPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3wAUmYadZqLuCOh7fEm/G6QCp4XTkn0NTSVyCbov1Q=;
        b=HtMhngoJFQEeZZ3u456IxQERdgYfDuL29CuOnVrC7SH4oj6egXQnol1QB9NDHUw6Ng
         0wGk91McNlwuPjwEtuLZlnWgf5A8rmCJKqeL0Gxpt84QUb/p/d6i0Cq54QJFu9f/whIM
         9KDNc14iWhMFcR/Ma/NQiye9gsOsHV9eA02cs9OPIP0/AUUsMZaAGsAPa3h3yECfKmBX
         1Ml5Ngi2CZebEQfPfedqjsyuuckJ0HUncddOpRKfQe9ViTsEvNlFzqnvSpluP5mo+C4X
         5bt7Lp3tg5692VfwHpYlg8qnFIuXNeXc0Be9F0BEblc51nNVydYfHjAoMJNUTas7AmmF
         gotA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533N1OrXmlFs+PAnUy74988J6uey0OAR7m50j8YV0fyAu6jT8Kn1
	/hYlA8owwpJ+/IOEyZOfDis=
X-Google-Smtp-Source: ABdhPJzRuwqzXlB+D/zCaCe+mIcm1AJ97Fz165EiFV2lh/xc3GuGgtk9zz8eVOtcOJHdRBJf/9bLDA==
X-Received: by 2002:a19:48c3:: with SMTP id v186mr3186525lfa.141.1624031634714;
        Fri, 18 Jun 2021 08:53:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8155:: with SMTP id t21ls2689948ljg.1.gmail; Fri, 18 Jun
 2021 08:53:53 -0700 (PDT)
X-Received: by 2002:a2e:9d59:: with SMTP id y25mr9831309ljj.399.1624031633552;
        Fri, 18 Jun 2021 08:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624031633; cv=none;
        d=google.com; s=arc-20160816;
        b=Hwd8Mh9GQLpPySk2V2rK1R81lknHuwgkak3oWpMaC9JVQl369Y4dufEGgJrZMe9Onb
         sM0HiV+vqcOxBfJkCjDS8+rysKJAscIrgJMWnjronIPJPuIjzBs0+5Y2JzZiUY6bONyj
         dkLQvXEKSEIAlChBcbcPySaJEMdEykBl+MmbueZlFhky8mxddz4GVTZij1eLshHCTbCd
         p0XnDcMCUl5rnb9DICtxCdwE5/5tSPUeMGndwpfQxi9jEAVsLSwnKB9tN/+2L+0jLKQ0
         SJX0B8CMhWtaE+Cu/Bz3y/2myIU/GNKc+Y08zOhoALhaKUR42rV4WM6IRwb4Auc4jpwE
         rhwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=lOej6SHb8BJfhZTZMfFq0hKq7xig2aO5/2WX7DThy2Y=;
        b=ZbwzE44SFRXv9ELcfJZt4qjtYw3+6E1TZRmbsEc9ep1UdrOD0NDzw073434isplDym
         6l9PwEPYRRYnGY+398boV0/D/oUkgYy2SWom7F/QjXwkm13fcgS4ol4Zlk5dtRwcOu4s
         QQB2uZeeYs/ahUeCM+mHMWIT3rDHIcs2q3W/BlYiU6NWsiQebu4ZHrFLIMeEUmKu2zBx
         bgpSatGYoWeJtDSAczlA9Egirvo+TWkv+5xFd7G3csnnIaQxq8bLeqKIhXDSkzhYh6+K
         Tx9At50NLQeH/ysWLfPFlX2M1CJKfsARTVvjsNizihq7I8K+Yf/MOafzul3JqcEhvIPr
         +EMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id x23si325870lfd.5.2021.06.18.08.53.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 08:53:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1luGoV-0007cC-98; Fri, 18 Jun 2021 17:53:47 +0200
Received: from pza by lupine with local (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1luGoT-0007JO-Tu; Fri, 18 Jun 2021 17:53:45 +0200
Message-ID: <5455875a86b33ecbbc94156c0c799e7224bba93a.camel@pengutronix.de>
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Thierry Reding
 <treding@nvidia.com>,  kernel test robot <lkp@intel.com>, Olof Johansson
 <olof@lixom.net>
Cc: Dmitry Osipenko <digetx@gmail.com>, "kbuild-all@lists.01.org"
	 <kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	 <clang-built-linux@googlegroups.com>, Linux Memory Management List
	 <linux-mm@kvack.org>
Date: Fri, 18 Jun 2021 17:53:45 +0200
In-Reply-To: <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
References: <202106182243.KgZxMD9A-lkp@intel.com>
	 <YMyzKmDO+SJt8n4N@orome.fritz.box>
	 <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: p.zabel@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
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

Hi Krzysztof, Olof,

On Fri, 2021-06-18 at 16:55 +0200, Krzysztof Kozlowski wrote:
> On 18/06/2021 16:52, Thierry Reding wrote:
> > On Fri, Jun 18, 2021 at 04:21:45PM +0200, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   e71e3a48a7e89fa71fb70bf4602367528864d2ff
> > > commit: 56ebc9b0d77e0406aba2d900c82e79204cc7dc32 [5946/11253] memory: tegra: Enable compile testing for all drivers
> > > config: x86_64-randconfig-a001-20210618 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=56ebc9b0d77e0406aba2d900c82e79204cc7dc32
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout 56ebc9b0d77e0406aba2d900c82e79204cc7dc32
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > 
> > > Note: the linux-next/master HEAD e71e3a48a7e89fa71fb70bf4602367528864d2ff builds fine.
> > >       It may have been fixed somewhere.
> > > 
> > > All errors (new ones prefixed by >>):
> > > 
> > > > > ld.lld: error: undefined symbol: reset_controller_register
> > >    >>> referenced by mc.c
> > >    >>>               memory/tegra/mc.o:(tegra_mc_probe) in archive drivers/built-in.a
> > 
> > Ugh... more fallout from that compile-test enablement. It looks like
> > that compile-test stubs addition patch for reset hasn't found its way
> > into linux-next yet.
> 
> Does it mean reset tree is not in linux-next?

No, it is. It just has been merged into arm-soc/arm/drivers a day too
late:

  $ git log --pretty=oneline arm-soc/arm/drivers | head -n2
  25da503ecce8f523c1c1c678659cb484d3bcd73f Merge tag 'reset-for-v5.14-2' of git://git.pengutronix.de/pza/linux into arm/drivers
  1eb5f83ee936de6a69b2bcee95088a6e0ab7c202 Merge tag 'memory-controller-drv-tegra-5.14-2' of https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux-mem-ctrl into arm/drivers

memory-controller-drv-tegra-5.14-2 contains the offending commit
56ebc9b0d77e, which depends on commit 48a74b1147f7 in reset-for-v5.14-2.

Is the arm-soc/arm/drivers branch still mutable? IIUC this could be
fixed by reordering the two merges.

regards
Philipp

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5455875a86b33ecbbc94156c0c799e7224bba93a.camel%40pengutronix.de.
