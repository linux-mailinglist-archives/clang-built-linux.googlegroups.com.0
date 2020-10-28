Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGPT436AKGQEZLPACGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B25629D17D
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 19:34:03 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id w3sf53060oov.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 11:34:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603910042; cv=pass;
        d=google.com; s=arc-20160816;
        b=aCMNPud4fG9FeO00pOAj22SI4gKRKPwawCpiVkPAthJX+2orH/MyxzT4OHtQEVN+Sf
         GlMtQLYuvhLCEXkXf9JGQnztBlf+kn0P3Qq0a/jIGHk5jSVwyvZUwTXyCbbboVzyBBgr
         O0bJXo2ZVz8uDSg3h9Q5nLjJ30D1Ckl18d8IPmRHe3Vvc+pMjgZFy59mHFRRMnEzk4/P
         hsgq6mlZUvcm1vgMP4qMIT+8BolsaiNRlOrBcBobQrrQvBN4A/h2FJHRy6po1CsmlSYw
         sCuQH/eNBlMx9BO1iUHhTQrRM/hOhlpPZkfO8gLEJ6SLSCNnZfTKNursL6tDH8Oug6cQ
         aDDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=AUA/0bv1fmFJja7ILOyWm2qn8V4l5BG5aX8EPI4YOlI=;
        b=W9Dsl64wb+7/Bc2NP6A8Y1/YmZWFE9UWIRPk2YB9OkT5WIcYvwnNG15P+PXcJ5e3NY
         wTDjejq4kpNseaiX1tsFdbUUQYujuH1+SQvEMmX3VqYWq5Rcb7K0XdlHtGcYJRc8YLWS
         VtuHiDZ4+zcn29LH+MWcz8IcyzER/Jj7zAwSbmL7I7Q6WPGWIOvdJFaX21ph/sc8fHiP
         36RDZ02m4JddrZPlTMinolrGzzcOW/PJgDTQht/IxveRftefKAUlShOi5HuSbAkvXROF
         KfD+K2l8olhvtZAtoZKxovu1GxDN9wVQfeOfsscCOa+elK6qPgTvX8iRvh7hhar8ZYel
         wZtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AUA/0bv1fmFJja7ILOyWm2qn8V4l5BG5aX8EPI4YOlI=;
        b=DLJ9SZmmfmn8JscOH20ZIdPDs5Rlq+LYSKT0PUdYV1+xch+y2rqoWgcKgvBD65gsek
         ugmu7nl89lu+2AwXVdskw9Yvzf088l+ojC2vzONRUz8G8vsCV85it8aFqR59ZDqU+ybP
         BlGnm9eMRjsR3P6M1D4MIRDkGJYAuHMTbd06yiv/MZq/w4OqOKlm0+VdiZMg6HI6yclZ
         qwpiQo+Hlljh5/U64BDtlXCAQmdyyaBxjRimOnor4h6vIn72pgEmrsHSuRIFUIkEpi3M
         nwpFWlSR9DuRXkDxwICwvoRz5oL3yvlFKK3EJ+Rvo+JWQrpiWZt8RuOP53/r0C8zuXGM
         PCiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AUA/0bv1fmFJja7ILOyWm2qn8V4l5BG5aX8EPI4YOlI=;
        b=OAMH/8bFOv7SU6KRSLB5CvZbhIZjoWPENHgHI8EYFH5EDy+olJCGXXDZOobYGvsMD0
         oNvGgeWJ5Ftzc9qwirPO9cv/RDRVz+JzgfHLd/HHp7vnWgBA1rrmKPn54O701yQOi8gL
         FHOZB6nyxTiWaq74C8pEJAsEmyYwfRjATbJ39VKuEryFil2rZei4iV2ALKnT3wPg5JRg
         +f+eLGoUxLuXkoOVFrFxaqTtMxd0qP2L32NSkLx69QoZYraY+4a5FsAZ3oUHlg9xo9n4
         Mf2ecJ0O2DZdcRBujGGzpeOfVppNpmQk9YdUAdnqdrzifpwwGXrKQrqRbJv2RwS6eCQb
         b45A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HroQpKKtEndWEe5FKpqY81Urue+Pl86/sO3Wxu/XEunBVt6hS
	TfTnwCS++xHcJxQ5QlCRv+0=
X-Google-Smtp-Source: ABdhPJweC96LBClsi34y53H77/GRytdN27PPH33+ck+A8vYZWT97JLfvr38oG9knkSZsoo3gikhECw==
X-Received: by 2002:a9d:bee:: with SMTP id 101mr445964oth.157.1603910041765;
        Wed, 28 Oct 2020 11:34:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:198c:: with SMTP id k12ls75701otk.3.gmail; Wed, 28 Oct
 2020 11:34:01 -0700 (PDT)
X-Received: by 2002:a9d:744e:: with SMTP id p14mr444255otk.135.1603910041275;
        Wed, 28 Oct 2020 11:34:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603910041; cv=none;
        d=google.com; s=arc-20160816;
        b=NFw8P0/5muwjmA+ILKUekYQwjzCb/Wd9nYlXa4RbPhZqnwEEJUex6CAposhpVuZLwU
         /SXwzcFdvH+wTkJ1QMZleCtQshCd9aCk8uyXRT4gHmo6oZq225Iep4bjC43/RudSnZ7L
         gzMC2wrcAvNwL9wnPjOfptWMhm7Zh/T/zvdFPkEpyXGZBswrBAzByDKieMoP5neR5Go9
         chVqSf2aI/3lKE1lPJqxWQBEM6Hg5dJ3Ac2CrXMaL20VEpZN3D0plUKAx/MgyRRRuWyW
         c0n+Up+s5NM0GSw0onM2vg5xmBfUMwrd+sSvFHAvD57LbAbrbJjhjOSRE4yZgOuDIXBH
         +H8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=EtdRC8NwTmJp8EL+ds6d84T1z1ox+Q/Ma9s5cSK9TV8=;
        b=bjtGbJCTTuVsY1Z13eAU+rjtOmdSuUbc3Hcl32sjHOfgFjlBvCs9AELgSvG1LF57st
         B4J8UAhAxQoRZX1iFis7884NtD79Oo4PhzmmOs6XI8CoIOP2VGiMqtN+CNYdh7gtdb/h
         Q5K/qUwUaau0hw+Jbd0FL7qKCxXnhGvR2fc2x+UBPvly2MtxzRv7DzZFoHbzd6E1R2il
         KMqQVdqYmlvmIESY+Pahys+XyVaY67RZowu8UIT1Wf8wU5ei+sej0njRRz+tZPRUVkfF
         B7s3rvD++cIcd/8M+h6NbDrK0IKGYNQd0ge046MT+dRK0LbBzhli0qhOs0rSQRxQMbme
         O09Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id d22si52863ooj.1.2020.10.28.11.34.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 11:34:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: r0/OEl/Fe6zserCo77DmrQb+/ZW2R4PsXkiQneLCSPsvv2GWBWB9TVB+OBOUcPnLvPyic+8kR2
 xR4gCDeA0nlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="229955237"
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; 
   d="gz'50?scan'50,208,50";a="229955237"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2020 11:33:59 -0700
IronPort-SDR: 7oX+Rj3jz3gmKPkj1ds/RI1q0/l7XnX/beiSF7gFM8E8GDokIVxfZs+BZtE0UcGPNtCySwkusG
 wfCHev+ita2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,427,1596524400"; 
   d="gz'50?scan'50,208,50";a="361218073"
Received: from lkp-server02.sh.intel.com (HELO 0471ce7c9af6) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 28 Oct 2020 11:33:57 -0700
Received: from kbuild by 0471ce7c9af6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kXqGi-00008O-KB; Wed, 28 Oct 2020 18:33:56 +0000
Date: Thu, 29 Oct 2020 02:33:14 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [Intel-wired-lan] [RFC PATCH bpf-next 6/9] xsk: propagate
 napi_id to XDP socket Rx path
Message-ID: <202010290232.JftelDvD-lkp@intel.com>
References: <20201028133437.212503-7-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201028133437.212503-7-bjorn.topel@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi "Bj=C3=B6rn,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on 3cb12d27ff655e57e8efe3486dca2a22f4e30578]

url:    https://github.com/0day-ci/linux/commits/Bj-rn-T-pel/Introduce-bias=
ed-busy-polling/20201028-213715
base:    3cb12d27ff655e57e8efe3486dca2a22f4e30578
config: x86_64-randconfig-r005-20201028 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 50dfa1=
9cc799ae7cddd39a95dbfce675a12672ad)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/1afaaf92cb23b16994ac438c3=
6d00ee0b2f1aa4d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Bj-rn-T-pel/Introduce-biased-busy-=
polling/20201028-213715
        git checkout 1afaaf92cb23b16994ac438c36d00ee0b2f1aa4d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:3496:29: error: too fe=
w arguments to function call, expected 4, have 3
                                rx_ring->queue_index) < 0)
                                                    ^
   include/net/xdp.h:214:5: note: 'xdp_rxq_info_reg' declared here
   int xdp_rxq_info_reg(struct xdp_rxq_info *xdp_rxq,
       ^
>> drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:4529:45: warning: shif=
t count >=3D width of type [-Wshift-count-overflow]
           if (!dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64))) {
                                                      ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MA=
SK'
   #define DMA_BIT_MASK(n) (((n) =3D=3D 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 1 error generated.

vim +4529 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c

92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4504 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4505  /**
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4506   * ixgbevf_probe - Device Initialization Routine
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4507   * @pdev: PCI device information struct
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4508   * @ent: entry in ixgbevf_pci_tbl
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4509   *
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4510   * Returns 0 on success, negative on failure
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4511   *
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4512   * ixgbevf_probe initializes an adapter identifi=
ed by a pci_dev structure.
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4513   * The OS initialization, configuring of the ada=
pter private structure,
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4514   * and a hardware reset occur.
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4515   **/
1dd06ae8db716e drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Greg Kroah=
-Hartman 2012-12-06  4516  static int ixgbevf_probe(struct pci_dev *pdev, c=
onst struct pci_device_id *ent)
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4517  {
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4518  	struct net_device *netdev;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4519  	struct ixgbevf_adapter *adapter =3D NULL;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4520  	struct ixgbe_hw *hw =3D NULL;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4521  	const struct ixgbevf_info *ii =3D ixgbevf_info_=
tbl[ent->driver_data];
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4522  	int err, pci_using_dac;
0333464f5f7c33 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Emil Tanti=
lov      2014-12-05  4523  	bool disable_dev =3D false;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4524 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4525  	err =3D pci_enable_device(pdev);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4526  	if (err)
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4527  		return err;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4528 =20
53567aa4e00399 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Russell Ki=
ng       2013-06-10 @4529  	if (!dma_set_mask_and_coherent(&pdev->dev, DMA_=
BIT_MASK(64))) {
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4530  		pci_using_dac =3D 1;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4531  	} else {
53567aa4e00399 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Russell Ki=
ng       2013-06-10  4532  		err =3D dma_set_mask_and_coherent(&pdev->dev, =
DMA_BIT_MASK(32));
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4533  		if (err) {
dec0d8e462322a drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Jeff Kirsh=
er       2015-02-10  4534  			dev_err(&pdev->dev, "No usable DMA configurat=
ion, aborting\n");
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4535  			goto err_dma;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4536  		}
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4537  		pci_using_dac =3D 0;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4538  	}
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4539 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4540  	err =3D pci_request_regions(pdev, ixgbevf_drive=
r_name);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4541  	if (err) {
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4542  		dev_err(&pdev->dev, "pci_request_regions faile=
d 0x%x\n", err);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4543  		goto err_pci_reg;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4544  	}
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4545 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4546  	pci_set_master(pdev);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4547 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4548  	netdev =3D alloc_etherdev_mq(sizeof(struct ixgb=
evf_adapter),
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4549  				   MAX_TX_QUEUES);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4550  	if (!netdev) {
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4551  		err =3D -ENOMEM;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4552  		goto err_alloc_etherdev;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4553  	}
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4554 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4555  	SET_NETDEV_DEV(netdev, &pdev->dev);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4556 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4557  	adapter =3D netdev_priv(netdev);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4558 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4559  	adapter->netdev =3D netdev;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4560  	adapter->pdev =3D pdev;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4561  	hw =3D &adapter->hw;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4562  	hw->back =3D adapter;
b3f4d5990bfc8b drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c stephen he=
mminger  2012-03-13  4563  	adapter->msg_enable =3D netif_msg_init(debug, D=
EFAULT_MSG_ENABLE);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4564 =20
dec0d8e462322a drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Jeff Kirsh=
er       2015-02-10  4565  	/* call save state here in standalone driver be=
cause it relies on
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4566  	 * adapter struct to exist, and needs to call n=
etdev_priv
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4567  	 */
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4568  	pci_save_state(pdev);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4569 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4570  	hw->hw_addr =3D ioremap(pci_resource_start(pdev=
, 0),
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4571  			      pci_resource_len(pdev, 0));
dbf8b0d891bd3e drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Mark Rusta=
d        2014-03-04  4572  	adapter->io_addr =3D hw->hw_addr;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4573  	if (!hw->hw_addr) {
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4574  		err =3D -EIO;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4575  		goto err_ioremap;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4576  	}
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4577 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4578  	ixgbevf_assign_netdev_ops(netdev);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4579 =20
dec0d8e462322a drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Jeff Kirsh=
er       2015-02-10  4580  	/* Setup HW API */
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4581  	memcpy(&hw->mac.ops, ii->mac_ops, sizeof(hw->ma=
c.ops));
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4582  	hw->mac.type  =3D ii->mac;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4583 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4584  	memcpy(&hw->mbx.ops, &ixgbevf_mbx_ops,
f416dfc0e07120 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2011-06-08  4585  	       sizeof(struct ixgbe_mbx_operations));
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4586 =20
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4587  	/* setup the private structure */
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4588  	err =3D ixgbevf_sw_init(adapter);
1a0d6ae5795c37 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Danny Kuka=
wka      2012-02-09  4589  	if (err)
1a0d6ae5795c37 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Danny Kuka=
wka      2012-02-09  4590  		goto err_sw_init;
1a0d6ae5795c37 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Danny Kuka=
wka      2012-02-09  4591 =20
1a0d6ae5795c37 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Danny Kuka=
wka      2012-02-09  4592  	/* The HW MAC address was set and/or determined=
 in sw_init */
1a0d6ae5795c37 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Danny Kuka=
wka      2012-02-09  4593  	if (!is_valid_ether_addr(netdev->dev_addr)) {
1a0d6ae5795c37 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Danny Kuka=
wka      2012-02-09  4594  		pr_err("invalid MAC address\n");
1a0d6ae5795c37 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Danny Kuka=
wka      2012-02-09  4595  		err =3D -EIO;
1a0d6ae5795c37 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Danny Kuka=
wka      2012-02-09  4596  		goto err_sw_init;
1a0d6ae5795c37 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Danny Kuka=
wka      2012-02-09  4597  	}
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose =
         2010-01-09  4598 =20
471a76ded87d33 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Micha=C5=
=82 Miros=C5=82aw    2011-06-08  4599  	netdev->hw_features =3D NETIF_F_SG =
|
471a76ded87d33 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Micha=C5=
=82 Miros=C5=82aw    2011-06-08  4600  			      NETIF_F_TSO |
471a76ded87d33 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Micha=C5=
=82 Miros=C5=82aw    2011-06-08  4601  			      NETIF_F_TSO6 |
cb2b3edbece804 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Alexander =
Duyck    2016-01-13  4602  			      NETIF_F_RXCSUM |
cb2b3edbece804 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Alexander =
Duyck    2016-01-13  4603  			      NETIF_F_HW_CSUM |
cb2b3edbece804 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Alexander =
Duyck    2016-01-13  4604  			      NETIF_F_SCTP_CRC;
471a76ded87d33 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Micha=C5=
=82 Miros=C5=82aw    2011-06-08  4605 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202010290232.JftelDvD-lkp%40intel.com.

--/9DWx/yDrRhgMJTb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
MMi8j34GK11cidJcsZvef43Hres8CgIA

--/9DWx/yDrRhgMJTb--
