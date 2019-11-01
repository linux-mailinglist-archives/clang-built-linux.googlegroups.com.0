Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBX736LWQKGQEIGYRFYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEF4ECBDD
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 Nov 2019 00:21:05 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id w2sf8566193pfi.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 16:21:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572650464; cv=pass;
        d=google.com; s=arc-20160816;
        b=yhbDzDnBUTYjotZFd7bYcCg6DGjsLoIXWUcJO7us9KuwBRtyyPT2PM+mj+hYYsPOSO
         4UKR7Q0NwJZ0uVgnow8qlkSOP5ImpUfbq0+Z1ycntoRk5ADthz7pPeGMHlos+Z+RU8Su
         jOJcTjeiTuM0kX49D6U+2Cd7WGy2ToWGAYhbVyzFvMgQvcmGhe64h9JEqWUM2/BqXFg2
         3vUjL+8jv5jTiCyid9qAyyJd12wMdvFxtcgq2NnQ/ogHPzduGNfbZ1PX1CqywWCUg9L0
         kge9wzOupyh6hfQlhHOxrdBpAKDpsgZgUmB2boRtxuu8s6D7m9pvejZtpLVLyOcS8PyC
         d2rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AEDHFgjXlHWCudpIUQD09LkiZeXELkXC9DL0P7uhadA=;
        b=f5/wN1vQ3GOBSTAG0sgDBFrE6J+nOJCZPNqgz/Bc+i21LFFLexU4ZzfEBEEbT44UL8
         p17isxxqAvCzLijXxUi0MwHFym3KtgzzJchaozvtUF9ny3OQNlXMKjIWJQM1FHGl+Izs
         C8MhuQAsrd1NR8KqFC9p1EdN2y7dkh+f9rGlPcITiLSU+4vftdUI0i/xS79Ca1bosl9h
         8dOzh7q8IW2K6ejwApqltsuq2mtjADk5LmRDmWG1A4QjWsMEiu9Q2zwTs/TZmTiwaKhM
         IP/LY5FWOeVuqwY+ExSqIWMlPzi/SfixMK/PYmMRgUeMx1g9eANHo5HqvCcoOqlW5dji
         WnFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AEDHFgjXlHWCudpIUQD09LkiZeXELkXC9DL0P7uhadA=;
        b=HhvR88FtbE01vmmjYOuStFLSR9YbR2BqtDacG0FHFN1sw/tYqTZnuyIbMZiIirN7fj
         g31mJTvuvWc0uyc+5Hd1taJYYmoCHlsESAu8ibAHrT8vqcQ7HQ4eUyqScBHKpr2O4tDI
         xQtX2tvVoJtz8DlVsFej27zGoG92hwIBLqO5hbe4YayQBjjWLUeMzkdzCEHAyRPXJOvF
         QE4lsjXDL08GI1q8tOw4BYY6cQZWZnAexPtFPHgDaJv9H/MboGkFHQKwmF1AxAezOEo5
         PP/rL8zezuX+5VdyGF982K+RU8/BEq6zHG0BPXXL30tfbHhxCYQ++5+GNONn5z47vuyg
         DbPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AEDHFgjXlHWCudpIUQD09LkiZeXELkXC9DL0P7uhadA=;
        b=Z0B835yWFIXXO7p2VPSwYOw706aS9h7NXuO+IY2q5xlPL1paSSi/JVqemBLjOl+cfR
         XYdp4oSUvS48QoVq9EW3q8+BKEDSMXjJXIMxkrmqweRKDBU+zOnKhrgP4JsQ8Fl2aGJl
         QuF9rsRns6nYpGBDz/mjHj0SvcTrYNP1LTwfSEun1nItOCL+V3niIOYvRW2gwplYLLf0
         PdXoBXryFVa/JR0zPCqjpWJsNSlCOm3YBvdFmHatiQOK4eCHN+WJ2BqvPjUcmHESgO4d
         SnJfj1HYl46FT8rwo8ZwFr3VRrTD/NCH7U7mQKOfi35EySWjkhtQHsu1A1FesD2qoFNn
         FLfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlYP1XOULeVE9Tn30qnWd/F5gmZnbe4gCBXrxC871rJYpbOEgR
	1KGDCpX7zyFVV8EFuc3v+ok=
X-Google-Smtp-Source: APXvYqxnI85lAqDUPNqfuMeVz89UcrK7pzIIgvT+kvjiQhzLoEVjNFL7txiUxKBv4l9d1ggCmI5TDQ==
X-Received: by 2002:a17:90a:ac02:: with SMTP id o2mr17945646pjq.83.1572650463812;
        Fri, 01 Nov 2019 16:21:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:322b:: with SMTP id k40ls2069209pjb.3.canary-gmail;
 Fri, 01 Nov 2019 16:21:03 -0700 (PDT)
X-Received: by 2002:a17:90a:37e4:: with SMTP id v91mr18703743pjb.8.1572650463257;
        Fri, 01 Nov 2019 16:21:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572650463; cv=none;
        d=google.com; s=arc-20160816;
        b=QdZ37VzNsPPP6qfQsspA2uv/AsXRvEWs3ClPIrl59wHFGfXerJAiJ/znusnOAT9efM
         2jCyiMwP0m1zm03Ds3FEr0zxdXrqvg9p5UWiu+s4h3uBOJMqUjkYB1e/PEj8+gdG+ORQ
         +8o1d2iH2WDDPwLJCK5CDwm2dlFxFVgad5fdiMxw3NVwOJkmnMDbfz6rZgNcyFxUuL1p
         x6ivHTtNb9NDY2wk38hLi8D4qICG4LZesc+yr0F/UeWkj2+5/aC3hmt8kUlC52QFZJW6
         N46iZkiM/deAGMBf0apNaG6Bioh4grU9RsD0CiffxuBM3dQd4xbEHWYAiQL5NHxisNLO
         +SqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=bGAa1C0nBEAOvb386zoUTTP66gE3akNNuN9ICiw/WZU=;
        b=qU6SzcfBpRdhLhgPN64l2XR4iTSJWaR4tyrL/7PkW2eKdIZj4PPO48VEBPZaTfwSb0
         Y3aV6dCzl8B5zHGI6HainvlRPAvdhyVmjEtlS/vx0eMETu4XSVocCzTRYdoDiGeEvOIH
         59NQ4AulN4/Hrg9rtAHLZPIVUjonmXgc9P7THBJumyabLErmAwahmRPwuOXwDl0eNHq6
         iIV9hMUxxubHqhgTZqrf8K40bheHxYZhoFk7q8annbHSDCME3xa2dZYpyWm+zItGLFbL
         BKcXAh6cylgDzlKzeDNHs/z1SKLJqcl3t1qTKTEYrym2DJLlhpucZHAmsWBu26n8ck0I
         ff1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id s144si320114pfc.5.2019.11.01.16.21.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 16:21:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Nov 2019 16:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,257,1569308400"; 
   d="gz'50?scan'50,208,50";a="226177997"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 01 Nov 2019 16:21:00 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iQgE0-000Eln-17; Sat, 02 Nov 2019 07:21:00 +0800
Date: Sat, 2 Nov 2019 07:20:17 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/5] net: stmmac: Split devicetree parse
Message-ID: <201911020649.Wc1KeY6B%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="apmx5tii5yjliudf"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--apmx5tii5yjliudf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
In-Reply-To: <20191030135347.3636-3-jiaxun.yang@flygoat.com>
References: <20191030135347.3636-3-jiaxun.yang@flygoat.com>
TO: Jiaxun Yang <jiaxun.yang@flygoat.com>
CC: linux-mips@vger.kernel.org
CC: davem@davemloft.net, robh+dt@kernel.org, mark.rutland@arm.com, axboe@ke=
rnel.dk, peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.=
com, bhelgaas@google.com, netdev@vger.kernel.org, devicetree@vger.kernel.or=
g, linux-ide@vger.kernel.org, linux-pci@vger.kernel.org, Jiaxun Yang <jiaxu=
n.yang@flygoat.com>

Hi Jiaxun,

I love your patch! Yet something to improve:

[auto build test ERROR on net-next/master]
[also build test ERROR on v5.4-rc5 next-20191031]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Jiaxun-Yang/PCI-Devices-fo=
r-Loongson-PCH/20191102-045600
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git =
52340b82cf1a9c8d466b6e36a0881bc44174b969
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6cb181f086a5bc=
69a97c1a01e9a36f8293dea7ed)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=3Darm64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:401:3: error: use =
of undeclared identifier 'mac'
           *mac =3D of_get_mac_address(np);
            ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:402:14: error: use=
 of undeclared identifier 'mac'
           if (IS_ERR(*mac)) {
                       ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:403:16: error: use=
 of undeclared identifier 'mac'
                   if (PTR_ERR(*mac) =3D=3D -EPROBE_DEFER)
                                ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:404:21: error: use=
 of undeclared identifier 'mac'
                           return ERR_CAST(*mac);
                                            ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:406:4: error: use =
of undeclared identifier 'mac'
                   *mac =3D NULL;
                    ^
>> drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:445:13: error: use=
 of undeclared identifier 'pdev'
                   dev_warn(&pdev->dev, "snps,phy-addr property is deprecat=
ed\n");
                             ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:448:32: error: use=
 of undeclared identifier 'pdev'
           rc =3D stmmac_dt_phy(plat, np, &pdev->dev);
                                         ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:495:6: error: use =
of undeclared identifier 'pdev'
                                   &pdev->dev, plat->unicast_filter_entries=
);
                                    ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:497:6: error: use =
of undeclared identifier 'pdev'
                                   &pdev->dev, plat->multicast_filter_bins)=
;
                                    ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:524:26: error: use=
 of undeclared identifier 'pdev'
           dma_cfg =3D devm_kzalloc(&pdev->dev, sizeof(*dma_cfg),
                                   ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:527:27: error: use=
 of undeclared identifier 'pdev'
                   stmmac_remove_config_dt(pdev, plat);
                                           ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:546:13: error: use=
 of undeclared identifier 'pdev'
                   dev_warn(&pdev->dev,
                             ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:552:31: error: use=
 of undeclared identifier 'pdev'
           plat->axi =3D stmmac_axi_setup(pdev);
                                        ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:554:24: error: use=
 of undeclared identifier 'pdev'
           rc =3D stmmac_mtl_setup(pdev, plat);
                                 ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:556:27: error: use=
 of undeclared identifier 'pdev'
                   stmmac_remove_config_dt(pdev, plat);
                                           ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:562:36: error: use=
 of undeclared identifier 'pdev'
                   plat->stmmac_clk =3D devm_clk_get(&pdev->dev,
                                                    ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:565:14: error: use=
 of undeclared identifier 'pdev'
                           dev_warn(&pdev->dev, "Cannot get CSR clock\n");
                                     ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:571:29: error: use=
 of undeclared identifier 'pdev'
           plat->pclk =3D devm_clk_get(&pdev->dev, "pclk");
                                      ^
   drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c:581:36: error: use=
 of undeclared identifier 'pdev'
           plat->clk_ptp_ref =3D devm_clk_get(&pdev->dev, "ptp_ref");
                                             ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=3D]
   20 errors generated.

vim +/mac +401 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c

0060c8783330ab Alexandru Ardelean  2019-09-06  386 =20
732fdf0e5253e9 Giuseppe CAVALLARO  2014-11-18  387  /**
af5ab092fba22b Jiaxun Yang         2019-10-30  388   * stmmac_parse_config_=
dt - parse device-tree driver parameters
af5ab092fba22b Jiaxun Yang         2019-10-30  389   * @np: device_mode str=
ucture
af5ab092fba22b Jiaxun Yang         2019-10-30  390   * @plat: plat_stmmacen=
et_data structure
732fdf0e5253e9 Giuseppe CAVALLARO  2014-11-18  391   * Description:
732fdf0e5253e9 Giuseppe CAVALLARO  2014-11-18  392   * this function is to =
read the driver parameters from device-tree and
732fdf0e5253e9 Giuseppe CAVALLARO  2014-11-18  393   * set some private fie=
lds that will be used by the main at runtime.
732fdf0e5253e9 Giuseppe CAVALLARO  2014-11-18  394   */
af5ab092fba22b Jiaxun Yang         2019-10-30  395  int stmmac_parse_config=
_dt(struct device_node *np,
af5ab092fba22b Jiaxun Yang         2019-10-30  396  				struct plat_stmmace=
net_data *plat)
6a228452d11eaf Stefan Roese        2012-03-13  397  {
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  398  	struct stmmac_dma_cfg =
*dma_cfg;
2ee2132ffb83e3 Niklas Cassel       2018-02-19  399  	int rc;
6a228452d11eaf Stefan Roese        2012-03-13  400 =20
6a228452d11eaf Stefan Roese        2012-03-13 @401  	*mac =3D of_get_mac_ad=
dress(np);
195b2919ccd7ff Martin Blumenstingl 2019-07-27  402  	if (IS_ERR(*mac)) {
195b2919ccd7ff Martin Blumenstingl 2019-07-27 @403  		if (PTR_ERR(*mac) =3D=
=3D -EPROBE_DEFER)
195b2919ccd7ff Martin Blumenstingl 2019-07-27  404  			return ERR_CAST(*mac=
);
195b2919ccd7ff Martin Blumenstingl 2019-07-27  405 =20
195b2919ccd7ff Martin Blumenstingl 2019-07-27  406  		*mac =3D NULL;
195b2919ccd7ff Martin Blumenstingl 2019-07-27  407  	}
195b2919ccd7ff Martin Blumenstingl 2019-07-27  408 =20
0060c8783330ab Alexandru Ardelean  2019-09-06  409  	plat->phy_interface =
=3D of_get_phy_mode(np);
0060c8783330ab Alexandru Ardelean  2019-09-06  410  	if (plat->phy_interfac=
e < 0)
af5ab092fba22b Jiaxun Yang         2019-10-30  411  		return plat->phy_inte=
rface;
0060c8783330ab Alexandru Ardelean  2019-09-06  412 =20
0060c8783330ab Alexandru Ardelean  2019-09-06  413  	plat->interface =3D st=
mmac_of_get_mac_mode(np);
0060c8783330ab Alexandru Ardelean  2019-09-06  414  	if (plat->interface < =
0)
0060c8783330ab Alexandru Ardelean  2019-09-06  415  		plat->interface =3D p=
lat->phy_interface;
4838a54050284d Jose Abreu          2019-06-14  416 =20
4838a54050284d Jose Abreu          2019-06-14  417  	/* Some wrapper driver=
s still rely on phy_node. Let's save it while
4838a54050284d Jose Abreu          2019-06-14  418  	 * they are not conver=
ted to phylink. */
4838a54050284d Jose Abreu          2019-06-14  419  	plat->phy_node =3D of_=
parse_phandle(np, "phy-handle", 0);
4838a54050284d Jose Abreu          2019-06-14  420 =20
4838a54050284d Jose Abreu          2019-06-14  421  	/* PHYLINK automatical=
ly parses the phy-handle property */
4838a54050284d Jose Abreu          2019-06-14  422  	plat->phylink_node =3D=
 np;
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  423 =20
9cbadf094d9d47 Srinivas Kandagatla 2014-01-16  424  	/* Get max speed of op=
eration from device tree */
9cbadf094d9d47 Srinivas Kandagatla 2014-01-16  425  	if (of_property_read_u=
32(np, "max-speed", &plat->max_speed))
9cbadf094d9d47 Srinivas Kandagatla 2014-01-16  426  		plat->max_speed =3D -=
1;
9cbadf094d9d47 Srinivas Kandagatla 2014-01-16  427 =20
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  428  	plat->bus_id =3D of_al=
ias_get_id(np, "ethernet");
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  429  	if (plat->bus_id < 0)
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  430  		plat->bus_id =3D 0;
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  431 =20
436f7ecdcc08f7 Chen-Yu Tsai        2014-01-17  432  	/* Default to phy auto=
-detection */
436f7ecdcc08f7 Chen-Yu Tsai        2014-01-17  433  	plat->phy_addr =3D -1;
436f7ecdcc08f7 Chen-Yu Tsai        2014-01-17  434 =20
5e7f7fc538d894 Biao Huang          2019-05-24  435  	/* Default to get clk_=
csr from stmmac_clk_crs_set(),
5e7f7fc538d894 Biao Huang          2019-05-24  436  	 * or get clk_csr from=
 device tree.
5e7f7fc538d894 Biao Huang          2019-05-24  437  	 */
5e7f7fc538d894 Biao Huang          2019-05-24  438  	plat->clk_csr =3D -1;
81311c03ab4dca Christophe Roullier 2019-03-05  439  	of_property_read_u32(n=
p, "clk_csr", &plat->clk_csr);
81311c03ab4dca Christophe Roullier 2019-03-05  440 =20
436f7ecdcc08f7 Chen-Yu Tsai        2014-01-17  441  	/* "snps,phy-addr" is =
not a standard property. Mark it as deprecated
436f7ecdcc08f7 Chen-Yu Tsai        2014-01-17  442  	 * and warn of its use=
. Remove this when phy node support is added.
436f7ecdcc08f7 Chen-Yu Tsai        2014-01-17  443  	 */
436f7ecdcc08f7 Chen-Yu Tsai        2014-01-17  444  	if (of_property_read_u=
32(np, "snps,phy-addr", &plat->phy_addr) =3D=3D 0)
436f7ecdcc08f7 Chen-Yu Tsai        2014-01-17 @445  		dev_warn(&pdev->dev, =
"snps,phy-addr property is deprecated\n");
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  446 =20
a7657f128c279a Giuseppe CAVALLARO  2016-04-01  447  	/* To Configure PHY by=
 using all device-tree supported properties */
ce339abc9a40af Niklas Cassel       2018-02-19  448  	rc =3D stmmac_dt_phy(p=
lat, np, &pdev->dev);
ce339abc9a40af Niklas Cassel       2018-02-19  449  	if (rc)
af5ab092fba22b Jiaxun Yang         2019-10-30  450  		return rc;
6a228452d11eaf Stefan Roese        2012-03-13  451 =20
e7877f52fd4a8d Vince Bridgers      2015-04-15  452  	of_property_read_u32(n=
p, "tx-fifo-depth", &plat->tx_fifo_size);
e7877f52fd4a8d Vince Bridgers      2015-04-15  453 =20
e7877f52fd4a8d Vince Bridgers      2015-04-15  454  	of_property_read_u32(n=
p, "rx-fifo-depth", &plat->rx_fifo_size);
e7877f52fd4a8d Vince Bridgers      2015-04-15  455 =20
8c2a7a5d2c6ec6 Giuseppe CAVALLARO  2014-10-14  456  	plat->force_sf_dma_mod=
e =3D
8c2a7a5d2c6ec6 Giuseppe CAVALLARO  2014-10-14  457  		of_property_read_bool=
(np, "snps,force_sf_dma_mode");
6aedb8c06df732 Chen-Yu Tsai        2014-01-17  458 =20
b4b7b772e8b018 jpinto              2017-01-09  459  	plat->en_tx_lpi_clockg=
ating =3D
b4b7b772e8b018 jpinto              2017-01-09  460  		of_property_read_bool=
(np, "snps,en-tx-lpi-clockgating");
b4b7b772e8b018 jpinto              2017-01-09  461 =20
2618abb73c8953 Vince Bridgers      2014-01-20  462  	/* Set the maxmtu to a=
 default of JUMBO_LEN in case the
2618abb73c8953 Vince Bridgers      2014-01-20  463  	 * parameter is not pr=
esent in the device tree.
2618abb73c8953 Vince Bridgers      2014-01-20  464  	 */
2618abb73c8953 Vince Bridgers      2014-01-20  465  	plat->maxmtu =3D JUMBO=
_LEN;
2618abb73c8953 Vince Bridgers      2014-01-20  466 =20
4ed2d8fca7979a Joachim Eastwood    2015-07-17  467  	/* Set default value f=
or multicast hash bins */
4ed2d8fca7979a Joachim Eastwood    2015-07-17  468  	plat->multicast_filter=
_bins =3D HASH_TABLE_SIZE;
4ed2d8fca7979a Joachim Eastwood    2015-07-17  469 =20
4ed2d8fca7979a Joachim Eastwood    2015-07-17  470  	/* Set default value f=
or unicast filter entries */
4ed2d8fca7979a Joachim Eastwood    2015-07-17  471  	plat->unicast_filter_e=
ntries =3D 1;
4ed2d8fca7979a Joachim Eastwood    2015-07-17  472 =20
6a228452d11eaf Stefan Roese        2012-03-13  473  	/*
6a228452d11eaf Stefan Roese        2012-03-13  474  	 * Currently only the =
properties needed on SPEAr600
6a228452d11eaf Stefan Roese        2012-03-13  475  	 * are provided. All o=
ther properties should be added
6a228452d11eaf Stefan Roese        2012-03-13  476  	 * once needed on othe=
r platforms.
6a228452d11eaf Stefan Roese        2012-03-13  477  	 */
84c9f8c41df9f6 Dinh Nguyen         2012-07-18  478  	if (of_device_is_compa=
tible(np, "st,spear600-gmac") ||
f9a09687a87887 Alexandre TORGUE    2016-08-29  479  		of_device_is_compatib=
le(np, "snps,dwmac-3.50a") ||
84c9f8c41df9f6 Dinh Nguyen         2012-07-18  480  		of_device_is_compatib=
le(np, "snps,dwmac-3.70a") ||
84c9f8c41df9f6 Dinh Nguyen         2012-07-18  481  		of_device_is_compatib=
le(np, "snps,dwmac")) {
2618abb73c8953 Vince Bridgers      2014-01-20  482  		/* Note that the max-=
frame-size parameter as defined in the
2618abb73c8953 Vince Bridgers      2014-01-20  483  		 * ePAPR v1.1 spec is=
 defined as max-frame-size, it's
2618abb73c8953 Vince Bridgers      2014-01-20  484  		 * actually used as t=
he IEEE definition of MAC Client
2618abb73c8953 Vince Bridgers      2014-01-20  485  		 * data, or MTU. The =
ePAPR specification is confusing as
2618abb73c8953 Vince Bridgers      2014-01-20  486  		 * the definition is =
max-frame-size, but usage examples
2618abb73c8953 Vince Bridgers      2014-01-20  487  		 * are clearly MTUs
2618abb73c8953 Vince Bridgers      2014-01-20  488  		 */
2618abb73c8953 Vince Bridgers      2014-01-20  489  		of_property_read_u32(=
np, "max-frame-size", &plat->maxmtu);
3b57de958e2aa3 Vince Bridgers      2014-07-31  490  		of_property_read_u32(=
np, "snps,multicast-filter-bins",
3b57de958e2aa3 Vince Bridgers      2014-07-31  491  				     &plat->multica=
st_filter_bins);
3b57de958e2aa3 Vince Bridgers      2014-07-31  492  		of_property_read_u32(=
np, "snps,perfect-filter-entries",
3b57de958e2aa3 Vince Bridgers      2014-07-31  493  				     &plat->unicast=
_filter_entries);
3b57de958e2aa3 Vince Bridgers      2014-07-31  494  		plat->unicast_filter_=
entries =3D dwmac1000_validate_ucast_entries(
c3a502deaf1f0d Andy Shevchenko     2019-09-05  495  				&pdev->dev, plat->u=
nicast_filter_entries);
3b57de958e2aa3 Vince Bridgers      2014-07-31  496  		plat->multicast_filte=
r_bins =3D dwmac1000_validate_mcast_bins(
c3a502deaf1f0d Andy Shevchenko     2019-09-05  497  				&pdev->dev, plat->m=
ulticast_filter_bins);
6a228452d11eaf Stefan Roese        2012-03-13  498  		plat->has_gmac =3D 1;
6a228452d11eaf Stefan Roese        2012-03-13  499  		plat->pmt =3D 1;
6a228452d11eaf Stefan Roese        2012-03-13  500  	}
6a228452d11eaf Stefan Roese        2012-03-13  501 =20
ee2ae1ed46251d Alexandre TORGUE    2016-04-01  502  	if (of_device_is_compa=
tible(np, "snps,dwmac-4.00") ||
026e57585ff159 Christophe Roullier 2018-05-25  503  	    of_device_is_compa=
tible(np, "snps,dwmac-4.10a") ||
026e57585ff159 Christophe Roullier 2018-05-25  504  	    of_device_is_compa=
tible(np, "snps,dwmac-4.20a")) {
ee2ae1ed46251d Alexandre TORGUE    2016-04-01  505  		plat->has_gmac4 =3D 1=
;
7cc99fd29b9829 Niklas Cassel       2016-12-07  506  		plat->has_gmac =3D 0;
ee2ae1ed46251d Alexandre TORGUE    2016-04-01  507  		plat->pmt =3D 1;
ee2ae1ed46251d Alexandre TORGUE    2016-04-01  508  		plat->tso_en =3D of_p=
roperty_read_bool(np, "snps,tso");
ee2ae1ed46251d Alexandre TORGUE    2016-04-01  509  	}
ee2ae1ed46251d Alexandre TORGUE    2016-04-01  510 =20
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  511  	if (of_device_is_compa=
tible(np, "snps,dwmac-3.610") ||
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  512  		of_device_is_compatib=
le(np, "snps,dwmac-3.710")) {
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  513  		plat->enh_desc =3D 1;
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  514  		plat->bugged_jumbo =
=3D 1;
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  515  		plat->force_sf_dma_mo=
de =3D 1;
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  516  	}
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  517 =20
a3f142478a5aa1 Jose Abreu          2018-08-08  518  	if (of_device_is_compa=
tible(np, "snps,dwxgmac")) {
a3f142478a5aa1 Jose Abreu          2018-08-08  519  		plat->has_xgmac =3D 1=
;
a3f142478a5aa1 Jose Abreu          2018-08-08  520  		plat->pmt =3D 1;
a3f142478a5aa1 Jose Abreu          2018-08-08  521  		plat->tso_en =3D of_p=
roperty_read_bool(np, "snps,tso");
a3f142478a5aa1 Jose Abreu          2018-08-08  522  	}
a3f142478a5aa1 Jose Abreu          2018-08-08  523 =20
64c3b252e9fc82 Byungho An          2013-08-24  524  	dma_cfg =3D devm_kzall=
oc(&pdev->dev, sizeof(*dma_cfg),
64c3b252e9fc82 Byungho An          2013-08-24  525  			       GFP_KERNEL);
277323814e4956 Mathieu Olivari     2015-05-27  526  	if (!dma_cfg) {
d2ed0a7755fe14 Johan Hovold        2016-11-30  527  		stmmac_remove_config_=
dt(pdev, plat);
af5ab092fba22b Jiaxun Yang         2019-10-30  528  		return -ENOMEM;
277323814e4956 Mathieu Olivari     2015-05-27  529  	}
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  530  	plat->dma_cfg =3D dma_=
cfg;
a332e2fa56343c Niklas Cassel       2016-12-07  531 =20
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  532  	of_property_read_u32(n=
p, "snps,pbl", &dma_cfg->pbl);
a332e2fa56343c Niklas Cassel       2016-12-07  533  	if (!dma_cfg->pbl)
a332e2fa56343c Niklas Cassel       2016-12-07  534  		dma_cfg->pbl =3D DEFA=
ULT_DMA_PBL;
89caaa2d80b7bf Niklas Cassel       2016-12-07  535  	of_property_read_u32(n=
p, "snps,txpbl", &dma_cfg->txpbl);
89caaa2d80b7bf Niklas Cassel       2016-12-07  536  	of_property_read_u32(n=
p, "snps,rxpbl", &dma_cfg->rxpbl);
4022d039a31595 Niklas Cassel       2016-12-07  537  	dma_cfg->pblx8 =3D !of=
_property_read_bool(np, "snps,no-pbl-x8");
a332e2fa56343c Niklas Cassel       2016-12-07  538 =20
afea03656add70 Giuseppe Cavallaro  2016-02-29  539  	dma_cfg->aal =3D of_pr=
operty_read_bool(np, "snps,aal");
a332e2fa56343c Niklas Cassel       2016-12-07  540  	dma_cfg->fixed_burst =
=3D of_property_read_bool(np, "snps,fixed-burst");
a332e2fa56343c Niklas Cassel       2016-12-07  541  	dma_cfg->mixed_burst =
=3D of_property_read_bool(np, "snps,mixed-burst");
a332e2fa56343c Niklas Cassel       2016-12-07  542 =20
e2a240c7d3bceb Sonic Zhang         2013-08-28  543  	plat->force_thresh_dma=
_mode =3D of_property_read_bool(np, "snps,force_thresh_dma_mode");
e2a240c7d3bceb Sonic Zhang         2013-08-28  544  	if (plat->force_thresh=
_dma_mode) {
e2a240c7d3bceb Sonic Zhang         2013-08-28  545  		plat->force_sf_dma_mo=
de =3D 0;
c3a502deaf1f0d Andy Shevchenko     2019-09-05  546  		dev_warn(&pdev->dev,
c3a502deaf1f0d Andy Shevchenko     2019-09-05  547  			 "force_sf_dma_mode =
is ignored if force_thresh_dma_mode is set.\n");
356f9e74ffaafd Olof Johansson      2013-09-05  548  	}
25c83b5c2e8256 Srinivas Kandagatla 2013-07-04  549 =20
02e57b9d7c8ce9 Giuseppe CAVALLARO  2016-06-24  550  	of_property_read_u32(n=
p, "snps,ps-speed", &plat->mac_port_sel_speed);
02e57b9d7c8ce9 Giuseppe CAVALLARO  2016-06-24  551 =20
afea03656add70 Giuseppe Cavallaro  2016-02-29  552  	plat->axi =3D stmmac_a=
xi_setup(pdev);
afea03656add70 Giuseppe Cavallaro  2016-02-29  553 =20
2ee2132ffb83e3 Niklas Cassel       2018-02-19  554  	rc =3D stmmac_mtl_setu=
p(pdev, plat);
2ee2132ffb83e3 Niklas Cassel       2018-02-19  555  	if (rc) {
2ee2132ffb83e3 Niklas Cassel       2018-02-19  556  		stmmac_remove_config_=
dt(pdev, plat);
af5ab092fba22b Jiaxun Yang         2019-10-30  557  		return rc;
2ee2132ffb83e3 Niklas Cassel       2018-02-19  558  	}
d976a525c37127 Joao Pinto          2017-03-10  559 =20
f573c0b9c4e026 jpinto              2017-01-09  560  	/* clock setup */
ddfbee9e3204a0 Thierry Reding      2019-07-26  561  	if (!of_device_is_comp=
atible(np, "snps,dwc-qos-ethernet-4.10")) {
f573c0b9c4e026 jpinto              2017-01-09  562  		plat->stmmac_clk =3D =
devm_clk_get(&pdev->dev,
f573c0b9c4e026 jpinto              2017-01-09  563  						STMMAC_RESOURCE_N=
AME);
f573c0b9c4e026 jpinto              2017-01-09  564  		if (IS_ERR(plat->stmm=
ac_clk)) {
f573c0b9c4e026 jpinto              2017-01-09  565  			dev_warn(&pdev->dev,=
 "Cannot get CSR clock\n");
f573c0b9c4e026 jpinto              2017-01-09  566  			plat->stmmac_clk =3D=
 NULL;
f573c0b9c4e026 jpinto              2017-01-09  567  		}
f573c0b9c4e026 jpinto              2017-01-09  568  		clk_prepare_enable(pl=
at->stmmac_clk);
ddfbee9e3204a0 Thierry Reding      2019-07-26  569  	}
f573c0b9c4e026 jpinto              2017-01-09  570 =20
f573c0b9c4e026 jpinto              2017-01-09  571  	plat->pclk =3D devm_cl=
k_get(&pdev->dev, "pclk");
f573c0b9c4e026 jpinto              2017-01-09  572  	if (IS_ERR(plat->pclk)=
) {
f573c0b9c4e026 jpinto              2017-01-09  573  		if (PTR_ERR(plat->pcl=
k) =3D=3D -EPROBE_DEFER)
f573c0b9c4e026 jpinto              2017-01-09  574  			goto error_pclk_get;
f573c0b9c4e026 jpinto              2017-01-09  575 =20
f573c0b9c4e026 jpinto              2017-01-09  576  		plat->pclk =3D NULL;
f573c0b9c4e026 jpinto              2017-01-09  577  	}
f573c0b9c4e026 jpinto              2017-01-09  578  	clk_prepare_enable(pla=
t->pclk);
f573c0b9c4e026 jpinto              2017-01-09  579 =20
f573c0b9c4e026 jpinto              2017-01-09  580  	/* Fall-back to main c=
lock in case of no PTP ref is passed */
9fbb9dd8eee459 Thierry Reding      2017-03-10  581  	plat->clk_ptp_ref =3D =
devm_clk_get(&pdev->dev, "ptp_ref");
f573c0b9c4e026 jpinto              2017-01-09  582  	if (IS_ERR(plat->clk_p=
tp_ref)) {
f573c0b9c4e026 jpinto              2017-01-09  583  		plat->clk_ptp_rate =
=3D clk_get_rate(plat->stmmac_clk);
f573c0b9c4e026 jpinto              2017-01-09  584  		plat->clk_ptp_ref =3D=
 NULL;
f573c0b9c4e026 jpinto              2017-01-09  585  		dev_warn(&pdev->dev, =
"PTP uses main clock\n");
f573c0b9c4e026 jpinto              2017-01-09  586  	} else {
f573c0b9c4e026 jpinto              2017-01-09  587  		plat->clk_ptp_rate =
=3D clk_get_rate(plat->clk_ptp_ref);
fd3984e6e78a56 Heiner Kallweit     2017-02-02  588  		dev_dbg(&pdev->dev, "=
PTP rate %d\n", plat->clk_ptp_rate);
f573c0b9c4e026 jpinto              2017-01-09  589  	}
f573c0b9c4e026 jpinto              2017-01-09  590 =20
f573c0b9c4e026 jpinto              2017-01-09  591  	plat->stmmac_rst =3D d=
evm_reset_control_get(&pdev->dev,
f573c0b9c4e026 jpinto              2017-01-09  592  						  STMMAC_RESOURCE=
_NAME);
f573c0b9c4e026 jpinto              2017-01-09  593  	if (IS_ERR(plat->stmma=
c_rst)) {
f573c0b9c4e026 jpinto              2017-01-09  594  		if (PTR_ERR(plat->stm=
mac_rst) =3D=3D -EPROBE_DEFER)
f573c0b9c4e026 jpinto              2017-01-09  595  			goto error_hw_init;
f573c0b9c4e026 jpinto              2017-01-09  596 =20
f573c0b9c4e026 jpinto              2017-01-09  597  		dev_info(&pdev->dev, =
"no reset control found\n");
f573c0b9c4e026 jpinto              2017-01-09  598  		plat->stmmac_rst =3D =
NULL;
f573c0b9c4e026 jpinto              2017-01-09  599  	}
f573c0b9c4e026 jpinto              2017-01-09  600 =20
af5ab092fba22b Jiaxun Yang         2019-10-30  601  	return 0;
f573c0b9c4e026 jpinto              2017-01-09  602 =20
f573c0b9c4e026 jpinto              2017-01-09  603  error_hw_init:
f573c0b9c4e026 jpinto              2017-01-09  604  	clk_disable_unprepare(=
plat->pclk);
f573c0b9c4e026 jpinto              2017-01-09  605  error_pclk_get:
f573c0b9c4e026 jpinto              2017-01-09  606  	clk_disable_unprepare(=
plat->stmmac_clk);
f573c0b9c4e026 jpinto              2017-01-09  607 =20
af5ab092fba22b Jiaxun Yang         2019-10-30  608  	return -EPROBE_DEFER;
af5ab092fba22b Jiaxun Yang         2019-10-30  609  }
af5ab092fba22b Jiaxun Yang         2019-10-30  610 =20

:::::: The code at line 401 was first introduced by commit
:::::: 6a228452d11eaf1f1577261540ec0903a2af7f61 stmmac: Add device-tree sup=
port

:::::: TO: Stefan Roese <sr@denx.de>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201911020649.Wc1KeY6B%25lkp%40intel.com.

--apmx5tii5yjliudf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICIimvF0AAy5jb25maWcAnDxJd+M20vf8Cr3kkhySaPPS8z0fQBCUEHFrAJRkX/gUW93x
xEuP7O6k//1UAVwAEHT6m6zNqsJWKNSGgn747ocJ+fz6/Hh4vb89PDx8nXw8Ph1Ph9fj3eTD
/cPx/yZxMckLNWExV78AcXr/9PnvXw+nx/Pl5OyX5S/Tn0+3i8nmeHo6Pkzo89OH+4+fofn9
89N3P3wH//wAwMdP0NPpX5Pbh8PTx8mX4+kF0JPZ9Bf4e/Ljx/vXf/36K/z38f50ej79+vDw
5bH+dHr+9/H2dXJ++/vscvZhenl+OPv99vzd4d3F7ewwnR3fHRbnHy7n7xZ3x8PF8e4nGIoW
ecJX9YrSesuE5EV+NW2BAOOypinJV1dfOyB+drSzKf5lNaAkr1Oeb6wGtF4TWROZ1atCFT2C
i/f1rhAWaVTxNFY8YzXbKxKlrJaFUD1erQUjcc3zpID/1IpIbKwZttI78DB5Ob5+/tSvi+dc
1Szf1kSsYF4ZV1eLOfK3mVuRlRyGUUyqyf3L5On5FXvoCdYwHhMDfINNC0rSlhXffx8C16Sy
16xXWEuSKos+ZgmpUlWvC6lykrGr7398en46/tQRyB0p+z7ktdzykg4A+H+q0h5eFpLv6+x9
xSoWhg6aUFFIWWcsK8R1TZQidA3Ijh2VZCmPApwgFYh6382abBmwnK4NAkchqTWMB9U7COIw
efn8+8vXl9fjoyWZLGeCUy0tpSgiayU2Sq6L3TimTtmWpWE8SxJGFccJJ0mdGZkK0GV8JYjC
nbaWKWJASdigWjDJ8jjclK556cp9XGSE5yFYveZMIOuuh31lkiPlKCLYrcYVWVbZ885jkPpm
QKdHbJEUgrK4OW3cPvyyJEKypkUnFfZSYxZVq0S6h+n4dDd5/uDtcJDHcAx4Mz1hiQtKEoVj
tZFFBXOrY6LIkAtac2wHwtaidQcgB7mSXteonxSnmzoSBYkpkerN1g6Zll11/wgKOiS+utsi
ZyCFVqd5Ua9vUPtkWpx6dXNTlzBaEXMaOGSmFQfe2G0MNKnSNKjBNDrQ2Zqv1ii0mmtC6h6b
fRqspu+tFIxlpYJecxYcriXYFmmVKyKuA0M3NJZKahrRAtoMwObIGbNYVr+qw8ufk1eY4uQA
0315Pby+TA63t8+fn17vnz56nIcGNaG6XyPI3US3XCgPjXsdmC4KphYtpyNb00m6hvNCtiv3
LEUyRpVFGahUaKvGMfV2YVk5UEFSEVtKEQRHKyXXXkcasQ/AeDGy7lLy4OH8BtZ2RgK4xmWR
EntrBK0mcij/7dYC2p4FfIKNB1kPmVVpiNvlQA8+CDlUOyDsEJiWpv2psjA5g/2RbEWjlOtT
2y3bnXa35RvzB0svbroFFdReCd8YH0EG/QO0+AmYIJ6oq9mFDUcmZmRv4+c903iuNuAmJMzv
Y+HrJSN7Wju1WyFv/zjefQbvcfLheHj9fDq+mMPT2HDw4LJS8zAoCIHWjrKUVVmCVybrvMpI
HRHwB6lzJFwqWMlsfmmpvpFWLrzziViOfqBlV+lKFFVpnY2SrJjRHLbJABeGrrxPz4/qYcNR
DG4D/7MObbppRvdnU+8EVywidDPA6O3poQnhonYxvTOagGUB07fjsVoHlStoLKttQOCaQUse
S6dnAxZxRoL9NvgETtoNE+P9rqsVU2lkLbIEj9BWVHg6cPgGM2BHzLacsgEYqF0d1i6EiSSw
EO1khAwkOM/gooBa7XuqUFKtb3SU7W+YpnAAOHv7O2fKfPezWDO6KQuQbDSgqhAspMSMTQDv
vxWZrj14KLDVMQPdSIlyN7Lfa9T2gX5RCoGLOrIRlmTpb5JBx8ZHsuILEderG9sDBUAEgLkD
SW8y4gD2Nx6+8L6XTpBXgKXO+A1D91FvXCEyOMyOr+KTSfhDiHdeVKKNbMXj2bkT9AANGBHK
tIsAdoLYkhWVjuSMGhuvW+2Bokw4IyFXfbcyMW6qH1h17pSjy/3vOs+4HRVaqoqlCagzYS+F
gM+NDp41eKXY3vsEybV6KQubXvJVTtLEkhc9TxugfVsbINeO+iPcjt2LuhKu1o+3XLKWTRYD
oJOICMFtlm6Q5DqTQ0jt8LiDahbgkcBAzd5X2OZ2zOAxwq3UliQJ6cvO++8nCb3l1NsAiHmc
gAeIWRwHNbAWVZT+uos0tPFtkj3l8fTh+fR4eLo9TtiX4xM4WATMLkUXC3xuy29yuuhG1prP
IGFl9TaDdRc0aMe/ccR2wG1mhmtNqbU3Mq0iM7JzlousJApioU2Q8TIloUQB9mX3TCLgvQAL
3hh8R08iFo0SOm21gONWZKNj9YQYlYNzFFarcl0lCcS+2mvQzCOgwEcmqp00CHkVJ6mjDxTL
dAyKeTCecOrlBcAKJjxtHe9mP9wMVS+B2bmlR8+XkZ1HcaJ2TWom7juMBgUfqkEtHQnPMvBx
RA5an4M1zHh+Nbt8i4DsrxaLMEG7611Hs2+gg/5m5x37FPhJWlm3TqKlVtKUrUhaa+MKZ3FL
0opdTf++Ox7uptZfvSNNN2BHhx2Z/iEaS1KykkN86z07mtcCdrqmnYockq13DGLoUKpAVlkA
SlIeCbD3JpDrCW4glq7BNVvM7b0GZhqvtM3GrQtVpvZ0ZWaZ9A0TOUvrrIgZeCy2MCZglBgR
6TV8145GL1cmyaqTY9KTmc6Br3TWzU+ZaEdvg2qyBtPTJULKh8MrqhuQ8ofjbZPR7g6fyQhS
PCyhcMmgVzy1TVszmXzPPRhJS54zDxjRbH65OBtCwe8zgZsDZyLlTgLGgLnCxNjYDCNBM6ki
f7P213nhc2mz8ACw8SBLlJT+xNPVbOOB1lz6a85YzEGCfErweu0dN7AtKGwftvc58B7O6WD9
gpEUBhlbvwCBlsRfKnB34+Y5zc4xolTqr1YqTKXuZ1Mffp2/h0hgkPtTbCWIT1va7q8hW1d5
PGxsoP7pqnJervmAegueInj1/vL2eIw92I0vpjcw/ay0lX7gPNjuQNLH5xoMenxyPJ0Or4fJ
X8+nPw8nsNJ3L5Mv94fJ6x/HyeEBTPbT4fX+y/Fl8uF0eDwiVe80GDOAdyoEYg7UwikjOWge
iEV8O8IEbEGV1Zfz88Xs3Tj24k3scno+jp29W17MR7GL+fTibBy7nM+no9jl2cUbs1ouluPY
2XS+vJhdjqKXs8vpcnTk2ez87Gw+uqjZ/PL8cnox3vn5Yj63Fk3JlgO8xc/ni4s3sIvZcvkW
9uwN7MXy7HwUu5jOZsNx1X7et7cZikqjTki6gQiuZ+t04S/bEkTBSlAEtUoj/o/9+CO9jxOQ
s2lHMp2eW5OVBQVzAiaoVx6YdOR2VgI1acrR/nXDnM/Op9PL6fzt2bDZdDmzw6zfoN+qnwle
f87s8/6/HWCXbcuNdvIcv99gZucNKujaGprz5T/TbIlxzBbvgjreJlkOTkqDuVpeuvBytEXZ
t+ijB/CsIwylcrBoIVNr8ieZk2s1MJmF4vhc6JzT1fys8zQbjwnh/ZQwz2h9gb8kG5+586Yx
soIQC6eos5JIVHPL2JikP1MmQ2VuEcBoWt1ivrlF6WgR3DABsQkFW2RZ73WRMkyRah/wyr0I
AtkKxZc39fxs6pEuXFKvl3A3wKipy+u1wCuTgefVuIFN5AmSpaOmgTHGi0HwLhundRTdh3mu
l5AyqlpPF51YP/tjnM4kx5DA2YqdFyr3QVo/9yZvmfhGfUcgYEJkXWYgVxA4+hPH3IA2n1jU
wHS+KuykyzLlSndTqiYX386EUQyGLLebCIK3T/YmtjD/oimwdRu2Z86p0ACQrzSUSqOCyHUd
V/YE9izHu9+pA7G0HF7/6rsJlMpCoEfVh3lVjiFeE26ASmfp1N4qDL3BQya5jhHAXaUQXg8I
WDoHRwtR0lcWUkbW9opCh9mY/ApcCXhqTe5qpSIxBW6GnXckUmS1wsRsHIua2NbIRKxWRKUz
w2uWlu31aN/P9nIkfdt6cV8uf5lNDqfbP+5fwe37jHG/dRfjTAgkmCRxlPmMgEX4oBQUE1FF
xumAbds18+zQW1Owpjn/xmlWpBhyvIQTO8ppkDys4xmsgublcKqj07CmuvjGqZZKYOJ9PRxl
tAdPBrcDdxl0UoVpo1QF7HIpWRUXmNMNMEMwnWRytaJJZmEaHDObIXgzoGArTG432V8/uZc4
XIqeYeTnTxhlvLhhN06S0JKjntng9RoEw6qgRRrSGFmMug7vD3prbWBGNQTasIRDTGdn9gDS
f8Q62d1N3pmnpbB1EZN/DG0li6pa57/sWhyTd3j+63iaPB6eDh+Pj8cnmw1t/5UsnQKdBtDe
etneYgTaDRM1mFXGWz05RLr5vgxWH5tMoXJrwRCVMla6xAhp8je9Ccj0bZHGhUsrMjBYG6bL
YEJVFZnX29gtGaBounEm1OaoTEWQtdzd+7osdqAHWZJwyjE/PLDgw/aBJfsURWJpXsyyOrNH
4lXjCIym7fudwKsXyYduh01ibukH3o2RAat9H7qPiVRbidJQZB1FV7wJOH73cOyFT1dMOJdF
LcRcOJVYjSX41rM0HdGq2NYpmKzw5axNlbG8Gu1CsSLQPlaGAmtOWHdhgZFMu5BJfLr/4lxP
ABa7dteEwFJSbmGcwGjYnVV8YjjW8S85Hf/z+fh0+3Xycnt4cAp7cElwaN+7zESIXiRRoP7d
u2cb7ZeHdEhcfgDceh3YduxWM0iLx0aC6xq+cQ81QYdDX19/e5MijxnMJ3zXEWwBOBhmq5Pb
395KRwiV4kGDYbPXZVGQomXM1WMQ33FhpH275NH97dc3MkK3mKu+rAyicU/gJne+0AOZYYwr
Jw0MfAOiYra1zgNaXFqiUTNUMB/bKOP9047nOV46VvnZlHe95dtRxwr/JTGpFxf7fdfvV69f
Q3K5aQlGupJmgpV7mhDT5LhrspVhAp7tbX54C2vz1KHxHUKddBld9TjpejeyJHA6S1D64tpa
2aNNoFPJ82l4VRo5my/fwl6eh9j+vhD8fXi5lo4LaDUbPTAoWjqT+9PjX4eTrYUdxkia8bcc
um6nWxp3VQaljXxXPuz2j9kPvANLSND5A++OO9EYAEzRRHAvuaRYkRwloSyOvX0JF9nOhORd
42RX02Q17L3tG6aZ9rcLNWoC7iprn0TIKtCRFjZgrJceBEitr2v7fW/BcbHL04LE5gqu0Z2B
nhXwhjp70fWlKiG4hA72tdip0PlvUiEwYkYpDVjeZOfvnjHIWLEUdB4UgxAk3yuv5aooVuAS
tFswCHHBvZ/8yP5+PT693P8OFr2TUY5VBR8Ot8efJvLzp0/Pp1dbXDFO2JJgrSSimLTvaBGC
eZFMgurG3GzsIQXmSDJW7wQpS+eKFrGw+EFI0gJBZUU17pbtESKeklJi2NXhnKmPPhPB4n9l
3ktsIDhRfKWdziCtnjnl81qHhEFV8f/hbpeX0dMv7QV1IFy2u872Qtg5GaDSY1mGjhVgpF1t
2wDq0imZlOBmy6w1qur48XSYfGinbqypVZ6NyrTmW0uKDSgq3Su0cD96iJuvT/+ZZKV8piEl
2fRqLuWC2sRDDSOmbhJvjtQSDTDhTCq6Ba6T4LkMbay0kj6GUgKy9r7iwst/IVLPfhU85Rov
SyrqNg/hNmU09HDDpiDUm0oE0s7EtQ+tlHKuohGYkHwwoiJhn9WsBELcsYk0ZfOF8AIqjczA
OIT8r5RHHrjrZjAzXgbTOBoXvFEw61kzcLpSD+peNnQZ5YYDmNKoSpD52F+Hjwts9Dj3SlD4
Mi1CxsdwpMgVmHknGNaLC8gUraQq0J9T6+KNDYtWwdpKjQNRrfA5EaZ+9Skr8vR6MNA6I6Ee
jMHTAlgy/zSMgOrV2ilX6eDAGEYGy9Yoad/e9ODmQiIhPK2Ev0magvH8t8FiDAbve8a3CqQM
i2FNfm+cs+bP4+eSO2VNRn2o2AeVpfJf5222GdZHuSUbNibxL7waeC2KKvAGZtMWENrtEJhl
duFoR5vZyq2DYpyGpVd743Fiba/b2zYJ9mYKPdKoTtJKrr0i0q2VfuJCXeOTCv2QFJ0wRkc4
U0fXJbHrQDrkVs+yyk2h+5rkK0s0+pY1RKlkZcsb3vBUJOU3Xv4QOnWni44bvgYdQku7IlDP
NIc14eVZf5/Sv3HCPrCAPShfBmtefJpr2Bqr72io6rzJ3INfbr9mNd94cTY/O6+9UsYeeTab
N8jHIXLW9s2C/b6J7TpGfKDvxdiw2cJu16c+WvSyQwev1DTVao03a6PTo4Kq2TTmyfgMCZMj
TOswoZ5tJHgE2dsEkZ3qHRBgqaAm8ecGYg3/QJysiwmHPMrXZZFezxbTM00xzqZ+rEhePbqP
ta3LmOPPd8dP4EcFc/fmEtOtyTa3ng2svws1xYqB6fxWgaeXkog5IRcm/UAtbBheF7M0GXno
rY9+nwKvcjjEqxyvESllQx3hV0waqGAqiEiqXJdEYlkJujX5b4z674yBzHkx0N+J60rXdVFs
PGScEW3p+aoqqkD1qgR26LSveeY7JNBIfEVgKh0CbkwCtocn1+2DkyHBhrHSf6fSITFiMvZ1
BNnotYz4Bqqp6tMqHAL5Coh2a65Y87bPIZUZBuTNY3yf82B8QTjz2NQkN5sJ1ttndFP/H9w0
/GGB0YbOPYuGrHd1BBM3z4c8nC5kwDmF4Po22szTvc3vWeKI+BtY+yGFs0yI6IzniXdig10x
MmheJdKs3NO17wO0p6LZFLyq8xli2pmfSBjBxUU1vMrRpRpNUTleE5qH6O1vLwSW25RdYF2E
8zBwDG61RCansEceUsMbl8GuaWh+4MJF6xfS1qgjbb1GwLhi4FnhKcb6Njzpm6HjNfKQ2aP6
50fMrTbJsViHNYUxgS000oBFM9vh0YSz1lb8MIovI6z8gL7Qlrq6Ct84oRAGTr5GtbfgoaGd
twpeBy6uf+QQaG09UBjrxCbx3jlocWwvSFRRYvbPNEzJNfjHlnSkWN6Pt8gQ/MTWWAX+EAhf
NVeQVvFkM2yDJ54t0C9E9FYOWizmQ1S/ctwtI2+WQxqA9TpYgRlQbamP2O1tsR1F+c3bOoZA
8xBKsETLp/fezaoBA7lZzNuqClepm7puqZ9MCIZrw6Nl23u8PLffOY0+Q8AVwBiizWataLH9
+ffDy/Fu8qepvfh0ev5w39xM9nlTIGvY8lbPmsy8EmJNsNK/E3pjJIcd+Js9mI3gufPrDd/o
XHUMh33A14O2W6Jf20l8W9b/GFBzfG1mNvtn6sUwYxpYckNT6dz4aGODDkYplvUew2M/UtDu
F3dGngK2lDwckDdoPEtY//8WDVZA7uqMS4nKtnt1XPNMZ/jCDxFzEEw40ddZVKRhEjgVWUu3
wWePo/yU5lcRUnD7bM8scisP8amwvmzBlCGzfaP2EXEkV0Ggky/rXxxjgpYrJ3nTIrFUMLyB
LQU4bIVSqVfU6JC1ZUbauItRsl0UDmj7B/o1x1+nYLkby4YJaRF0+c20seY1kf6CcYOKkjhi
ZsqQDqfXezxfE/X1k/uzC11xEL6Uxevx4GmRcSGtOiL/LqQD91Uq3oiOKAyKqXDy2XtMhA1g
6EbYqRUEl10ynxf970JYgRm044WpHo7BG0+dB1kWcnMdubcpLSJKwpel7nhtj/2vz0DcwZ0b
HyJzq1C/ynluCnYh/tDaZbyw2RRU1iKzfj9Ka0TTGDYMbLvtKYqdZNkYUrN9BNeZJ/3bW7Em
09VcPck4xm/8X87erDlyW1kXfT+/QnEe9lkr7vZ1kTXvG35AkawqtjiJYFVR/cKQu2VbsaRW
H0m9l/3vLxLgAICZYHk7wt1dyI+Yh0Qih/KCfzpKHw5kZSbdPZcNiEEDTr3t/fn45cfHAzw8
gTe7G2k+/KGN+i7O9ilo/uo6XB2vNCaJH/Y1XdoNwjVmUOoVbB/tSKXNlgdlXBjneUsQWzHm
MAmKaS9Lw9sa0TrZ9PTx5fXtL+0FHtEjdKmqD3ruKctODKMMSdJIoFf/kpYINjetCimkb7EK
K0bcCwSjE2EkUKZIe98mDsS4ULV5SLOHMX3PeNUcRgIBuOv332orSTVBdxc0nKaGYStmA6KU
6iu1l4F1x8LKdwdHsb5RtglqPlqsM5aGeHULpNSkscwciuM9V1rjFWKl3W9JmoCKa2PdTXM5
ImmcyZx+Wcy2K6MT+02JengYpQ+2Hpcij+EFVsmPsKd+590Oo4o+uLB74/hDYaly/nBFmVIm
0NkjDtsBmCnKVPS43otLcQV+elBtZWbklDLHm0tPRd9TgApmPPyXtfZEXOQ5zk5+3p1whucz
H3tl6K4HrWxNPr/D202k1pfm32EflaUpQpGuXXBVmrDzZNDJBlyXjkKanpuX9n3JwGdeJ5UY
uBVl/iTdkKFFiw2g2QkG65gywgGEFM/BW5/g/Arp7QV/xdKrJ6UGzLgO0VvysI/qnvWiSvTX
wbTg5bc72CmjrBMCys0+e/wA6ztQ9Rvt8mKfuI0sCx1IacKYYZ0sGA7tEgu/Wu0hjf8XafbX
w7IirgT1vkyl6A+lQmNvI+y9JjY6JS7UOdO6LBzmT9Ezo/JVD9UdEKAiK4zMxO8mPAbjxF0u
9nKrBEgvWYnrtMvhKmIX8SAVM9JTjRn9SURTnTJx4dZfKaDFskW4E5B7OCDy25iwklTZnitM
DwBopxArEyj7/ETmKGhDZQndOMAx3PmXpEUc76pYVRlOOGI2DBXWE2FCaqMocUHRJZvZQ6vJ
CSwRJbtMIIAqRhPknPjVDEoX/zy4bkk9JjjtdAljL49r6b/87y8/fn368r/N3NNwaYkA+jlz
Xplz6LxqlwWwYHu8VQBSPq04vCSFhBgDWr9yDe3KObYrZHDNOqRxsaKpcYJ7fpNEfKJLEo+r
UZeItGZVYgMjyVkomHHJPFb3hal6CWQ1DR3t6Bhi+RJBLBMJpNe3qmZ0WDXJZao8CROnWECt
W/lkQhHBxB2eFOxTUFv2RVWA02zO470hOem+FoyllNmKszYt8CNcQO3nij6pXygaD1zG4SHS
vnrpnIq/PcKpJ+49H49vI8fjo5xH5+hA2rM0Fie7KslqVQuBrosz+aqGcy9jqLzCXolNcnyb
GSNzvsf6FLysZZlknIZNUaRK55zKSETf3BVB5ClYKLxgLcOG5IoMFAjNMJ7IAIGmmm65bBDH
HsIMMswrsUqma9JPwGmoXA9UrSul2NyEgc4d6BQeVARFnC/iuheRjWFg9YFvYwZuX13RiuPc
n0+j4pLYFnSQmBO7OAcvk9NYnl3TxUVxTRM4I3wwmyiKuTKG39VnVbeS8DHPWGWsH/EbvKiL
tWwrLwrieFMfLVvl+b/XFamlrOb95svry69P3x6/3ry8glTQkK3qHzuWno6CtttIo7yPh7ff
Hz/oYipWHoBZA0/2E+3psFILH3yDvbjz7E6L6VZ0HyCNcX4Q8oBkuUfgI3n6jaF/qxZwfZVu
KK/+IkH5QRSZH6a6mT6zB6ia3M5sRFrKru/NbD99cunoa87EAQ/+5SgjBRQfKS2bK3tVW9cT
vSKqcXUlQC2qvn62CyY+Jd7nCLjgz+HJuSAX+8vDx5c/dEcC1o5Sgb+5MCwlR0u1XMF2BX5R
QKDqCepqdHLi1TVrpYULFkbwBtfDs2x3X9EXYuwDJ2uMfgARWP7OB9es0QHdMXPOXAvyhm5D
gYm5Ghud/9ZoXrcDK2wU4AriGJS4QyJQUF/9W+OhXKFcjb56Yjhutii6BIXra+GJT3E2CDbK
DoTndQz9d/rOcb8cQ685QlusvCzn5dX1yPZXXMd6tHVzckLhqfNaMLylkNcoBH5bwcZ7Lfzu
lFfENWEMvvrAbOERS3ATZRQc/I0dGC5GV2MhFs31OYNjh78DlqKs6z8oKZ0OBH3t4d2iBXd4
LfY0901oZ1jtknoYEmNOdKkgnY0qK5WI4r+uEKbsQSpZMilsWlgCBTWKkkJdvhRr5ISEoMXi
oIPYwhK/m8S2ZkNiGcELopUuOkGQ4qK/nendk+07JokQcGoQ6jTTMWWhRncSWFWYnp1C9MIv
I7VnfKGN42a0ZH6fjZhSA2fceo1PcR7ZgDiuDFYlSe6864TskNDltCwjIQEwoO5R6VjpihKk
ymnDLg4qj4ITKI85IGKWYkLfTiXIsd7aBfnfK9eSxJceLjQ3lh4JaZfeCl9bwzJajQSMZmJc
rOjFtbpidWmY6BSv8L3AgMGeNI2Ci9M0imD1DAw0WOn3TGPTK5o5sUPoSGpT1zC8dBaJCkJM
yHizWU3sNqtrt5sVtdJX7lW3opadibB2Mr1a1FamY7KiIparazWi5+PKOh/7K137zoC2s3vs
2DfRzvFktJs4Uci7HvAFFGdWhoQir7jSoARW4cyjfUtpk3lVDENzENvj8CvVf7TPMNbvJj6k
ovJZnheGtUdLPScsa6ft2BhEvtVyZr3sQBJSTZnTZuZ7mqudIa05nEtN4q8RUkXoSwjFIRRh
h12SBPrUED99ontZgt+dan+JdzwrdiihOOaU3ewqyS8FI47LKIqgcUuCHYO1bsfuGtofYBFT
wgwsEXgOEWUN1UcxmZjUJkYzy4soO/NLLLY3lH5WRyDJisunM/IxPy0IDQYVLQsv8shpNRZV
U8elsEnmsB8By2+hWsxdWWn7L/xqeBpaKdUps+RDTRZw1G2nHmOu3Ms4jbqqZ11gIdbkg28Z
52grNIwS8RPC7KaEsID8vjFjOO3u9B/FvvkUW4pPezBLUFGOTR2nm4/H9w/LVEVW9bayYl72
+/foS4ugq01pQ8xScVxQ7Ufd8u6042cH8YSi0Jznoj/2IM3E93XxRRZhm6egHOOw0Icbkojj
Ad4W8EySyAymJ5IwS2GdjugYKgetzz8eP15fP/64+fr4309fHscu5naVclBldkmQGr/LyqQf
g3hXnfjObmqbrNyKKjMzop865M7UWdNJaYUJYnVEWSXYx9yaDgb5xMrKbgukgecuw5eeRjou
xsVIQpbfxrjgRwPtAkJEqmFYdZzTrZWQBGmrJMwvcUlwKgNIjrG7AHQoJKUkbmEa5C6Y7Ad2
WNX1FCgtz66yINrObO7KZVcwb+YE7MXUcdDP4n+K7KrdaAiND6tbe1ZaZGg9ui2SS1jjQgRT
XpcUB7hvbgPMtRtMm8TQtgn2B2AlPOPASmSS9EQGtgf4Ptt+CAdllOTgAOzCykxweajac4du
HUvJWIGgEBodwt24NtIGpTP8BIh0noDgOm0865wcyKQedgcJypBpobvGeVyiGmMXUxZ0HWel
KLNO3Si5I5QBqOXzqtTPeJ3aa/Bfg/rlf788fXv/eHt8bv740PQPe2gamTySTbcPnZ6AxldH
cuedVjglmzVzlH6DXRXiFZMvRjIugAyDMBvyusQiFeOh9rdxop1V6nfXODMxzoqTMcpt+qFA
jw/gXraFyf5si8GKzWBzBKG22RyT7LAZYDH+CBJEBTwC4ZtXtseXf8GZYJ1JmXYT73EapsfY
3Q/AiY8Z4UnwmaJ6RhROeXuLzsDVazYtMEnAwEEzCGBxkp9HjhGigd+UnEyoNj/ULzRLd5ph
v3Lqx447K0fDBtH+MXZEriV2VhQmcRSfFbx9wc6xOxkrqXPhBt8ABOnRwU/YMG4qCTGuMSBN
FJSY3Yf8nFse2ts02k/7ABiFxuxpbjfTJgz20qvAgw9noloQ+MGuThMSR576gJB8SOIO8+YL
A2Q4CWsTpCuL3lOtRoPT65Zb1XJ5YAti+Z6X5EEXYAA4ZRILjkNJIoShtegalVXWVI4Clpop
rVQmSk/mHG7i/Gy3Sdww6Yow/F4JNNs3zLAU0MTONyW6dpT3uR0+qjowKAgOTgfxozl5lDW1
+PDL67ePt9dnCEc/uizJarAyPLPyttuYgoevjxDqVtAetY/fb97H3mjl3AtYGImJLt2toRzf
ZI5WhjVEfq2b7ILzplDpfSX+xOM7AdmKdihzLQNWmvNCeW+zvNn3hGGPxGpHFGwFOeyTRusw
ssNpDmnSDTpsHyhxnBGEmhy1ViWOl79sWhvPUWxTqYM6WmEREqLSSFYe916sDutcmdO7V5rv
4nMUj70BhI/vT79/u4BHWJjK8iF6cIpsbJ0Xq07hpfP/Z+2xF9m/yGzVd4y0xp6kgAS8epXb
g9ylWj4H1ZYxDlgq+zoejWQbS9QYx84RvZV+G5fW7h3JHBsVV9VojfQrTJ1DyiX7djEati66
Jz1sLEGXu3PQeq8L+M7U71rRt6/fX5++2bsNuFmUjr/Qko0P+6ze//308eUPfB80j6dLK0St
IjwguDs3PTOx1+AS6pIVsXVxHhz6PX1p+cGbfByD6KSc7ox1yDouNjpXaaHbOXQpYn2dDOP3
CswAEnMSlyr73pPz7hQnYXcm9H6Zn1/FXq75oN5fRk7A+yTJHIciI92TQS1uVIMn6SHKz/CV
FjQMy1QjQ6xJGV1In/ADEvdDY3uablvUCxGUW6qz7vmg48ylzxqcZqVqDzJwNVSBafAXCwWI
ziXx7KYAIK1osxEcV5oTDKiEMX6fBR1Y+kvEHsbueXO8L8C7P9fdqfWxtsEdmuDl5Pc4+XxK
xA+2E+dhFeueF3gOEcD1C2p0MGym1e8m9oNRGtc9APZp6TjRdIrb5VhqXgbBf6OMSCjn4N68
jgBxL9kW6f4R6aGuqcqrW17kSX5Q5me6m6jxklVy6h/vrXhLF023IUEOMYiUS2OfTvO6Ql/u
hsirSWEwI+BB/hLFmCRMhlSIdrEWm5XHcGuGOFLGyLRRU8LIH6XXgrfnRh3bi6j4lVFXOAU5
oP6/uwMF5l4VWRXpgka37pqNFc2TJpUzCpcnal2tyRZUJXN81R0yjrqGqkwHW1UoV9T4GWLw
GfT94e3dOkrgM1aupbchQswkEJqnJtSHGmDyvSLblWJ7PpG7mPRgSY6hRm6PuibINpzeIX6K
MhC6YQJavT18e3+WOgc3ycNfpvMiUdIuuRW7lzaSKjG3dmVC4p5RhJiklPuQzI7zfYhfoXlK
fiR7Oi/ozrQdZxjE3qcUuKJhtn2B7NOSpT+Xefrz/vnhXXAOfzx9xzgQOSn2+EUPaJ+iMAqo
7RwAsAHuWHbbXOKwOjaeOSQW1XdSFyZVVKuJPSTNt2emaCo9J3OaxnZ8pOjbTlRH7ymPQw/f
v2vBpsAdkUI9fBFbwriLc9gIa2hxYcvzDaAKc3MGP6T4JiJHX1wlRm3u/G5MVEzWjD8+//YT
MJMP0jRP5Dl+2TRLTIPl0iMrBMFe9wkj9AfkUAfHwp/f+ktcKU9OeF75S3qx8MQ1zMXRRRX/
u8hy4/ChF0ZXwaf3f/2Uf/spgB4cCU/NPsiDwxwdkune1qd4xqQLU9NLkNwtsihj6FNw/1kU
BHCfODLBp2QHOwMEAgGJiAzBKUSm4rWRuexMJRW17zz8+2exuT+IW8rzjazwb2oNDSIYcy+X
GYYR+OZGy1KkxhJHEaiwQvMI2J7awCQ9ZeU5Mt+GexowUHbHj1HAL8TE68FQTD0BkByQGwKs
2XK2cLWmvdEj5Ve4PESrYDxRQ8lrTWRi3/zHEPt1aIzoxFGj+ZU+vX+x1578Av7gMb3KJUjw
1jm9S6mZFPPbPAPJEr0XQYwYa0rIOiVFGJY3/6H+9sXVPb15UY6QiI1VfYDtGtNZ/S+7RvqV
SkuUT78L6e/CjjQBiE6SendiofiNMzJF3Ap6iCkOADG7nJlAlU47miZvhhbD3V2cKu3SJmPQ
9l8KdlXw+BURAUBQxcFUVYZjdJGoPHmhpNt898lICO8zlsZGBaRVqfHqL9KMe6D4nem+nMTv
NNQvj/lehh8T+w6smNQmgN6gkQavewm7N0s4mW7UBFtoW5V1FN0VlPQD1T4fyxfn3rdW8fb6
8frl9VmX1meFGeuqdQyrl9v5is0g3vuO0OXsQCDF4xw2o7iY+5QySws+4QE1O3IiWOhRzWSq
9NYnfUX/shlnq4JcAM5ZeljuUNWrrrm70NDdapP5rdujLq83TjrFqgQhhNMrbqsgPBNBnSom
50kTVZiaQh1l7c1J+eaLzNNdI4N8C1c7Uy/1bXiS/tMhVXoudjdv5+6ekptzQilEntNoLISH
VMUrvYzGRpAMDRyAKrtLRhmLAoTY3yStomx/JVHq1aNbuVH5/hDTRDXDAIZLf1k3YZHjko7w
lKb3sNHg8vEjyyrivlPF+1R2FX7xDfh27vPFDOfxxfmQ5PwESkYqMid+gTkWTZzg57qKApvH
Geg30AhwUkqqYBUh325mPqOcsPHE385muHsYRfRnKFHcArk4GJtKgJZLN2Z39NZrN0RWdEuo
zx3TYDVf4nrwIfdWG5wEB5Xod8F4F/NWWoXJV0v98ayXboGOxd64DuiPGnR4zPZJlId7+2mi
y+ZcsIzgGAPfPoqUl+KogCs58qyrKGIP8zHmdqAu9WXdJo8DYNmIlNWrzRq3Jmgh23lQ49fT
HlDXCyciDqtmsz0WEcdHv4VFkTebLdC9wuofrT93a282WsFtyM4/H95vYtBc+wGuNt9v3v94
eBNXzQ8Qo0E+N8/i6nnzVew6T9/hn3q/Q2RbfN/6H+Q7Xg1JzOcgdMfXtHow5hUrxu+wEDX1
+UZwXoILfnt8fvgQJQ/zxoKAQDbsYpUqIUcQ75HkszjzjdThEBNcg8V+WoUcX98/rOwGYvDw
9hWrAol//f72CjKZ17cb/iFapztL/UeQ8/Sfmqyhr7tW785ky9FPQ+sOUXa5w3f/KDgStzFw
CcgSMens67cJKSteX4GgVIaPbMcy1rAYnYXGWdl2q2AxWhHKu80TyMgJaa751StZHEKQ35IP
bAKgtIcH+CY0eWmZJpUfEIsAWYO26JuPv74/3vxDLIJ//efNx8P3x/+8CcKfxCL+p/YI07F+
BsMVHEuVSsdFkGRcEth/TShAdmTCkEi2T/wb3mUJmb6EJPnhQCmjSgAPwJwJnv/wbqq6zcLg
dNSnEHQTBobOfR9MIVRg8hHIKAeCt8oJ8NcoPYl34i+EIJhpJFUqq3DzvVURywKraScDtHri
f5ldfElA5dt4aJMUiuNUVPnYQkdsVyNcH3ZzhXeDFlOgXVb7Dswu8h3EdirPL00t/pNLki7p
WHBcxCSpIo9tTVwbO4AYKZrOSD0JRWaBu3osDtbOCgBgOwHYLmpMnUu1P1aTzZp+XXKr+Gdm
mZ6dbU7Pp9QxttIZqZhJDgQ8I+MbkaRHonifeLIQzJncg7PoMjJbszEOTq7HWC012llUc+i5
FzvVh46TSvCH6BfP32BfGXSr/1QOjl0wZWVV3GEyakk/7fkxCEfDppIJ4baBGNTzRjk0ARib
YhLTMTS8BGJXQcE2VIqRX5A8MN06G9Mqmo0/3hHnVbvyq5iQyahhuC9xFqKjEu7Yo6w9TVqx
h2McqftMyyPUc2/rOb7fKxVnkhuSoENIiCDUgUa8CitiBu++TjqzVFStBlaRY2fi9+lyHmzE
Fo3fQ9sKOjaCO8EwxEEjlpCjEncJmzpuwmC+Xf7p2JCgots1brAtEZdw7W0dbaVVzBXvl06c
A0W6mRECE0lXQjFH+dYc0FkFi7vt9XKkCQaI+cbquga/ApBzVO5yiNoI8WlNkq0hziHxc5GH
mMhPEgvJ8rT+qAdl6n8/ffwh8N9+4vv9zbeHD3E3uXkS95G33x6+PGpMuSz0qCusyyTQwU2i
JpGmDkkc3A+B6/pP0K1PEuBlDr9WHpU6LdIYSQqiMxvlhlvKKtJZTJXRB/RjnSSPXsp0oqWy
LdPu8jK+G42KKioSrCVhfyRRYtkH3sonZrsacsH1yNyoIeZx4i/MeSJGtRt1GOAv9sh/+fH+
8fpyI65OxqgPAqJQsO+SSlXrjlPqUqpONSYMAsouVRc2VTmRgtdQwgwRK0zmOHb0lDgiaWKK
ezqQtMxBA6kOHmtHkls7AavxMaFwpIjEKSGJZ9y7jCSeEmLblZsGYYrdEquI87EAqri+++Xm
xYgaKGKK77mKWFYEf6DIlRhZJ73YrNb42EtAkIarhYt+T0eZlIBozwjldaAK/ma+wiWIPd1V
PaDXPs5CDwBcBC7p1qZoEauN77k+Brrj+09pHJTE078EtGoWNCCLKvKBQAHi7BOzPQYaAL5Z
LzxczisBeRKSy18BBA9KbVnq6A0Df+a7hgm2PVEODQBnG9R1SwEIjUJJpEQ6ighPyiWEqHBk
L3aWFcGfFa7NRRKrnB/jnaODqjLeJwSXWbg2GUm8xNkuR3Qrijj/6fXb81/2RjPaXeQanpEc
uJqJ7jmgZpGjg2CSIHs5wZqpT/YoJ6OG+7Pg2WejJnfK3r89PD//+vDlXzc/3zw//v7wBVUn
KTrGDmdJBLFVLqdbNb58d1dvPUxJK8tJjcfvVFzd4ywiNr80lCIfvENbIqFe2BKdny4otcJw
4slXAKSNLhFvdhTbzuqCMJUWK5VuFDXQ9O4JEXthnXjKpKdzysNUqjQWKCLPWMGP1Jtx2lRH
uJGW+TmGSGqUNBdKIYP5CeKlFMe/ExERqmGQM1j+IF0pSGksLyhmb4G3RbC6kRGaqUzt+9lA
+RyVuZWjeybIAUoYPhGAeCKk9DB40oqJou4TZgV706lir6a8a8LA0o7A2j6Sg0IY8aRD7GcU
0IehILQC9ieYLqNdCZyl3Xjz7eLmH/unt8eL+P+f2IPuPi4j0qtOR2yynFu16561XMX0GiAy
sA9oJGiqb7F2zczaBhrqSuJ4IRcBaFiglOjuJPjWz46YfpTuiIyrwDBZW8oCcKxneDw5V8zw
fhUXAEE+Ptfq0x4J+ztho3UgXCGK8jjxuA+8WJ7xHHWwBQ7ZBl8RZoUFrTnLfi9zznEHXeeo
OmpeB5X6UGaGbsySlGAmWWl7HOy0tT/enn79AQ+gXFlMsrcvfzx9PH75+PFmKrd3ZqNXftKr
IVRH8KGjR5EFrb4XfbqJzSDMy2ZuaeGe85ISvVX3xTFHrWW1/FjICrH/GmIIlQTv5+XeWmlI
BofIXAdR5c09Kj5j91HCArnvH43rKRiHodZMxqeJ4OUy0wSOn7JF3ESWY33s4yoyww6Lc4CS
zbZqBBV6v9YzTdlnM9MoY/2YTn1rSO/Fz43nebam3cBPwQw1LyrDl0190O0boZROIGTsGsqK
/4zlotdMbExZFZsSrbsqnpxQpTGZYEx6o/qJL6HHckOTmFUJ5dwzwTk7IGDjBemG31CWTM3R
k+AfzObLlCbbbTaouwbt412Zs9BaqrsFLlbeBSmMCPFcn9V4DwTUtK3iQ57NkepBVrWm0wg/
G14qlyJd4kGMl/UTfyWSho9ktAmR+cTMFz0UWCHBdhkm2dS+aZXKtW2SBTvzl1RLP15k+DrD
WgFo+IOYUcA5PmlXrM5/hOjrpjAUxHXKGQspqAN2hxrPs5SEYUxl8Q0V8C2J7062xf2IiNdG
b+MxSrjpFqtNaip8TfVkXIrTk/HpPZAnaxbzIDf30XhiQxdMmLgnGav0EKVxFqP778CPTW7M
oXkmSm7rlExtYWHrUmsoKPFxvXVxYoWETyUtP3AAFBlTZBf5k3WPPreOTYaOlClNVsBrdCaO
bIgG1dibzjinfRlF4ElLW3J7s2PAQmmfEg6QgVjcSWaGpNdyiyEhh5hllPATPoc24PtgT7VW
BAKwSx93xCHPD4mxWR3OE2PXW7sPfXeM6+Ux9Jt2k+3zkjoYe5t90cjFbEFo3x8zbpmAHHVP
aUAOOdubKZHBa4qUufmrOQaJGcl1SEUXsSSbueo9cWKXyPQdFU+u7HjjL+sazU85xdWnN/U2
HdkCMD1dm9TxYWf8ECeI4UlJJJ2N7T8WvBZaIhAIbXigEFMxXsyIjwSB+oaQYOxTb4bvOfEB
n1+f0ompPBgydqfp2ZxzKdzMmP67KAyD6qJm3mpD8rX89oA+Yt3eG7nAb4fEKw+Au69qv2Fk
qKq+SbS2iYFKxG0416ZhmtRiKep3a0gwrUVkkqym9R3A4D5t2pon9ZKWlggqvzjJe8xfnt6G
OCjN5XLLN5sFzlUCiTDJViRRIv6Qcss/i1xHCrt4ffLRAZUF/ubTiljFWVD7C0HFyWKE1ov5
BDcvS+VRGqM7SnpfmmbC4rc3I4JM7COWoF7TtAwzVrWFDZNPJeETk2/mG3/iTiH+GQlu3bhp
cp84N881uqLM7Mo8y1MrKu8Eh5OZbZI6B3+Pp9jMtzOTtfJvp2dNdhbMrcHniRtJEIX4qah9
mN8aNRb4fOLkKZgMBxRlhziLTHeh4qovZi7a4fcR+FTaxxPX4yLKOBP/Mg6TfPI0VPpP+kd3
CZtT+qJ3CXk7FHmC3hpFvqNi6vYVOYHmfmrcBe8CthbnaUOZ6HZ02492TwbjFWCJtOt5mU5O
pDI0OqRczRYTKwgcfIo9X/9q4823hDo0kKocX17lxlttpwrLIqVuO6zWI8HFley8QzcmkJzo
zsM0EmepuEQYBlgcWAyiCP3LKLrDs8wTVu7F/8aeQFpn7wNwWxZMSYQEG8zMTSvY+rO5N/WV
2XUx31IKiDH3thMjz1OuiTV4Gmw941oVFXGA++CEL7eeiZZpi6n9mucB+NKpdXd1YsNkugk2
JIhPeBTgA1LJc0vDVylcl5Sce6iPSu0iUaB6zArSi3L0V6wLUECF9y7nxOxRmM6P6IuZHBd3
m9mqHufpYLI6AM8zOzu1H1RHURub1DvttNJFV++LAxslgy4dkriJkd6bPIL4KTMPg6K4TyPb
c2SXqViaEWFxDdFeMoIRiDHH63ol7rO84PfG2oChq5PDpPS7io6nyjgNVcrEV+YX4MNXcKTF
8R7mGy6BxF+WtDzP5lEufjaluBPi/BZQIXRBgEcu07K9xJ+t1x6V0lyW1A2xB8wJwD4MCY/F
cUGcdzKE0Y64esLFqVGvi+ZzT2P5JldpQaqc5eLcfwc5ZTE++goRVzumR/XqimvSU42nDgWP
q9QiCF/8Bkau7+bg+drSNAFpLK42B7IQ9byeRDXqJ1RCe5mtmQPtDAaoExIXiRGbPMSBoJy/
AETdOGm6fJeiKt4Kgq0BsN0uH+8tN/2QoDEL/CJS9NYnUQi6UocDuMw8GitGeQmI4xtIp31z
8T3OELEQFD6O+EM2PECRtPYtiQbUm816u9rZgI5cbWbzGoiGZ4wgBYspMlNB36xd9PaNhgQE
cQAOi0mykj2T9FBMTFf2YQGXPt9Jr4KN57lzWGzc9NWa6NV9XEdyzIy7SFAkYu1ROSpPcvWF
3ZOQBOy2Km/meQGNqSuiUq2oqR1rK1FcyS2C2l9qGy9FHm3TtDQpdrCn0UCo6J7uxQckQlzv
BbfHEhpQixI+McFK0lPyDiuiuyOoy4td/faaQX3UuTO3hhk4WLIWvIq8GaHwDE/i4nyLA3qO
tPrcJL11AHEQG5Ffwp9kj4sxvOWb7XZJKc4WhFUX/lADcclk6BPpT9g4bIEUMOIlAYi37IJz
xkAsogPjJ41bbSOgbbzlDEv0zUQQYG3q2kwU/wMv82JXHrZKb11ThG3jrTdsTA3CQL6I6VNH
ozUR6hFJR2RBin2shPsdguy/Lpd0h7r57Ycm3a5mHlYOL7drlKHSAJvZbNxymOrrpd29HWWr
KKPiDsnKn2HP0R0ggz1ug5QH++dunJwGfL2Zz7CyyiyM+ciLP9J5/LTjUjIF8UnQMW4hding
xDBdrggVd4nI/DV6oZWRAKPkVtdGlR+UqVjGp9peRVEhtmR/s8G9UcmlFPj4fb1rx2d2Kk8c
nan1xp97M/IdocPdsiQltME7yJ3YaC8X4uESQEeO849dBuIoXHo1LisHTFwcXdXkcVSW0jaB
hJwTSuTd98dx609A2F3geZis5aKkMtqvQScstaRkImXjk7loCjym8s7R8VgjqEv8mUpSSEV7
Qd2S321vmyOxiQesTLYe4WRJfLq6xS+zrFwufVzx4RKLTYLQIRc5Us9wlyCbr1A7fbMzU/PV
RiYQZa1XwXI2coWC5IrrJeHNE+kOu3npAZ66PwFxj99I9dp0Ch8IafTGGxcXn7rEA41aB/El
WWxXuOmOoM23C5J2iffY5c2uZsljo6awkRNetsUBnBJ61cVy0QbwwcllzNMlZraoVwfxOCsu
i1FZEU4GOqLU5YdQFjgrBh1BKJmml2SDyfeMWrViQOOOLubszDvheQranzMXjXgMBZrvotF5
zub0d94Se0rTW1gyW/GnrPwaZVeMz8bvEZJBJIyoFG2NsflVAhtcaByaEr71CTWBlsqdVCKm
KFDX/pw5qYQahGrEJnKW66CKc8hRLrQXH2Sg1nVNES8mw4INlul6Qvxstqies/6RGbUpuHj+
5KQw5a2XxPOJB3kgEceIZ1wnLkmrn6B9KlURrAc7i2iooF9iGQO+ez+QztnxnfvzfchGd6vP
oWg53gwgeV6JaTHo2UoRUpSZun53VbZvZffE8u1jvV4oL84mF35JCJYQrAka+0RQzge/Pfz6
/HhzeYK4p/8YR0T/583Hq0A/3nz80aEQodsFlZnLt1ppjUI6V23JiHPVoe5pDXrjKG1/+hRX
/NQQx5LKnaOXNug1LUTocHTyEJX/nw22Q/xsCsutb+vM7vuPD9ITWxcaVv9pBZFVafs9eEA2
oygrSpEnCfga1s1hJIEXrOTRbcow6YGCpKwq4/pWxQDqw4w8P3z7OvgqMMa1/Sw/8UiUSQjV
APIpv7cABjk6W+6Ru2SLwda6kIrLqr68je53uTgzht7pUgS7b7zFa+nFcknc7CwQ9jg+QKrb
nTGPe8qduFQTvlINDMHHaxjfI7SJeoxU1m3CuFxtcBawRya3t6jL5h4Ajw1oe4Ag5xthg9kD
q4CtFh5ucKqDNgtvov/VDJ1oULqZE5caAzOfwIi9bD1fbidAAb61DICiFEeAq395duZNcSlF
AjoxKQcEPSCLLhXBWQ+9SwYh6CF5EWVwOE40qFXNmABV+YVdCNvQAXXKbgnX1jpmETdJyQjz
/qH6YtvClfSHTkj9pspPwZGyLu2RdTWxKEBi3pja4gONFSAId5ewC7BTR9tQNek+/GwK7iNJ
DUsKjqXv7kMsGVStxN9FgRH5fcYKEH87iQ1PjZBgA6R19YGRIHrbrXSebFyUenqUAAdEGO5q
lYjg6hwTD5tDaXKQY0zkOID2eQA3FGmmNy4otV+sJYlHZUwoRSgAK4okksU7QGLsl5QfLoUI
7llBxAyRdOgu0kWwgpy5uBEwVyb0K7Jqaz/g7oIGHOWttucBuIAR6tsSUoHsFxu1lgz9yoMy
inRT2iERDPYLceePTc1GHcFCvt4QHqlN3HqzXl8Hw48IE0aYs+mY0hPMvN3XGBBkZU1aG4Jw
FNBU8yuacBKHeFwHMW6HokN3J9+bEe5uRjh/ulvg8Q6C8cZBtpkTRz+FX85wvsbA32+CKj14
hBjThFYVL2hd9DF2cR0YQqGIaTmJO7K04EfK9l9HRlGFS48N0IEljDCdHsFc25qBroP5jBBF
6rj22jWJO+R5SHBzRtfEYRQRL7YaTFzixbSbzo5WOdJRfMXv1yv8Vm+04ZR9vmLMbqu97/nT
qzGirugmaHo+XRioZ1xIf4tjLLXL60jBE3ve5oosBV+8vGaqpCn3PPwkNGBRsgdvszHB4hlY
+vg1pkFar05JU/HpVsdZVBNHpVHw7drDHyGNMyrKZJzn6VEOxT2/Wtaz6dOqZLzYRWV5X8TN
Hvdjp8Plv8v4cJyuhPz3JZ6ek1ceIZewknpL10w2qbeQp0XO42p6icl/xxXljs2A8kBuedND
KpD+KO4EiZs+kRRuehso04bwMG/sUXESMfz+ZMJoFs7AVZ5PvKKbsHR/TeVs9UACVS6mdwmB
2rMgmpNWGAa43qyWVwxZwVfLGeGTTgd+jqqVTwgUDJw02pke2vyYthzSdJ7xHV+iYvD2ohjz
YCw2E0ypR3hkbAGSQRTXVHqnVMBdyjxCYtVK6Ob1TDSmouQPbTV52pzjXcksx6UGqEg324XX
CUJGjRJk0IfEsrFLS9lm4az1ofDxe1FHBiVdwXIQjos0VBgFeTgNk7V2Dkgsw8VXEb78eqEm
L8S9TyFdwLr6hHPfnYz4EpUpc+ZxH8lnPwciSL2Zq5QyOpwSGCuwJqiIO3vb/rrwZ7U4Gl3l
neRfrmYF+82SuFa3iEs6PbAAmhqw8nYzW7ZzdWrwy7xi5T0Yek5MFRbWydy5cOMUQhngjHU3
KMxm0Q06PKrc7kLqzaV9KsiDdlGLW2lJSPEUNCzP/koMnRpiIszYgFwtr0auMaSBk3ruci5b
O0aZxuPbmXw7OD68ff33w9vjTfxzftNFWGm/khyBoUcKCfAnESFS0Vm6Y7emNawiFAFI2sjv
kninRHrWZyUjHBGr0pTfJitju2Tug22BK5symMiDFTs3QAlm3Rj1QkBATjQLdmBpNHa/0zog
w8ZwCOyEPK+pF6s/Ht4evnw8vmlBBLsDt9JUqc/a+1ugnLmB8DLjidSB5jqyA2BpDU/ERqO5
nrig6CG52cXSx56miZjF9XbTFNW9VqrSWiIT2wCe3socCpY0mQpcFFKRXLL8c05ZcDcHTsRI
LAVbJhhM4qCQ0U0r1LIpCWWkrBPEFGWaqFrsTCq2axt2/e3p4Vl7UjbbJGPSBrozi5aw8Zcz
NFHkX5RRIM6+UHqkNUZUx6nwr3YnStIeFKPQUB4aaDTYRiVSRpRq+PvXCFHNSpySldL2mP+y
wKilmA1xGrkgUQ2nQBRSzU1ZJqaWWI2E93QNKq6hkejYM2EMrUP5kZVRGwAYzSuMqiioyMid
RiM5psxsZHYx7Yo00i5I/c18yXRrMWO0eUIM4oWqeln5mw0aq0gD5eqZnaDAqsnBiuVEgNJq
tVyvcZrYOIpjHI0njOlQWYWJff32E3wkqimXmozPhrgmbXOA007kMfMwFsPGeKMKDCRtgdhl
dKsa1LAbMBohtMdbuLKztUtS1jPUKhzsy9F0tVyahZs+Wk4dlSpVPsLiqU0VnGiKo7NSVs/J
6DU6xDEf43Q890Wao1Rof2JJZay+ODYc2cxU8rBpeRscQA6cIpMbf0vHNtjWp+040dHOTxyN
99T2K0/H046nZN2l7fchysa90lMcVeHxPiZc1XaIIMgIy6Ye4a1ivqYCrbVrVLGYnyp2sPdx
AjoFi/f1ql45dozWaqrgMqtR95hkRx8JttZVj7Kg2HFBBI9pSYGWP5AcZUtQnIEb/6n+CMBz
AsvETSc+xIFggIhwLu2gFSUaY6idcBBoB+82RdJr3MVLMrkq+7OgKpNO68ckSV2805hjkgHi
4StxagGnoLG956A1STPT1MGvJdT6m26bgF5RZY4B9kja+kQeLb+4SGNxmczCRJqI6akh/C9l
OBYcjslOD3S4nkoKxG9uRv7LjVylBbzSnwe5pVUoNzw0qCSxuvEbMVAvrAqOYY7r3KhKwS04
35N57EZ1Quou7iIluO8xTOH6xAb4SHFhS1FjugHW8lNDmweSfHlryuzg67ZsA12yRGjZ48Bg
48zFgSWyDrCMZWg9JF3ZoyMEy3fHQGgN8rFPqlssOarvM93Xh9baoooMxWXQHQGjanQQS3Zp
FxLSC1Ug/i8MDVSZRMQkaWm0NL2lx34wtsxBMGBekVm+p3V6djrnlIQYcLT1D1C73ElATUTI
BFpARD8E2rmCIGplXhO+/gVkD5CK0Njvu7Gazz8X/oJ+ZLGBuG66WKLt5tl/KU6+5N6KsN1v
42ORhj5d1JotT7ySUW/hlm3OHaVMK6o8VkP2NY89EB9FjmIuLs6H2PAcKVKlNpsYotxMhnc7
Vllp4sqn9Hy1ROWlQzlv+PH88fT9+fFP0SKoV/DH03fsKiKnZblT0iWRaZJEGeHOri2BVnUa
AOJPJyKpgsWceIvtMEXAtssFpu1pIv40TpWOFGdwhjoLECNA0sPo2lzSpA4KO9hSFzvcNQh6
a45RUkSllOCYI8qSQ76Lq25UIZNeZAdh5K2A9EVww1NI/wNCxQ9RijA7ApV97C3nhF1bR1/h
T2s9nQj4JelpuCaC47TkjWVzatObtCCecaDblJtckh5T2hWSSMWxAiLEZyIeP2APlq+TdLnK
B6FYB8TrgoDwmC+XW7rnBX01J97dFHm7otcYFeGqpVk6VHJWyNBNxDThQTq2ZpG73V/vH48v
N7+KGdd+evOPFzH1nv+6eXz59fHr18evNz+3qJ9ev/30RSyAfxp745jFaRN7p0J6MpiSVjt7
wbfe3skWB+AkiPBCpBY7jw/Zhcnbq36vtYiYe3sLwhNG3CvtvAirZYBFaYQGXZA0yQItzTrK
+8WLmYnc0GV0KXHof4oC4rkYFoIusWgTxBXNOLjkbtfKhswtsFoRj+pAPK8WdV3b32SCNw1j
4nkSDkdac16SU8JoVi7cgLmiS0tIzewaiaTx0Gn0QdpgTNO7U2HnVMYxdp2SpNu51dH82Iag
tXPhcVoRcXEkuSDeHSTxPrs7iUsJNdyW4KxPanZFOmpOJ/0k8urIzd7+EPymsComgsbKQpVX
K3oTU5IKmpwUW3LmtQFNldndn4Kt+ybu6ILwszoeH74+fP+gj8UwzkEn/ESwoHLGMPmS2SSk
5pesRr7Lq/3p8+cmJy+l0BUMDCDO+GVFAuLs3tYIl5XOP/5QvEXbMG0nNrfZ1sYCoiNllr08
9KWM9MKTOLWOBg3zufa3q7Uu+iC5EWtCVifM24AkJcrJpYmHxCaKIGatYyvdnQ601vAAAQ5q
AkLdCXR+Xvtuji1wbkW0LpAA3xotZbwy3hQgTXuqE2dx+vAOU3QId63Z5xnlKMEhURArU3BN
Nl/PZnb9WB3Lv5X/YuL70fGsJcIzj53e3Kme0FNbr4IvZvGuU1t1X3dYkhAlS6Ru3h1C7IYh
fkkEBHjbAjkjMoAEywAkODNfxkVNVcVRD/XGIv4VBGan9oR9YBc5PnwNcq42DpouDlJ/ge6h
klwaF1RIKpKZ79vdJA5P3LwciL0jVuuj0tVV8ri9o/vKOnf7T+CEJj7h8wB4EfszHngbwWnP
CMULQIgzmsc5vnm3gKOrMa63BiBTZ3lHBG+KNIDwG9nSVqM5jXIH5qSqY0LwX7RR5Skl8x7g
zxq+TxgnYjjoMFIvTqJcLAIAMPbEANTgKYWm0hyGJCfEA5CgfRb9mBbNwZ6l/fZdvL1+vH55
fW73cV3fQg5sbBmWQ2qS5wWY5zfgnJnulSRa+TXxSgl5E4wsL1JjZ05j+cIm/pYiIONdgKPh
hQvDFEz8HJ9xSgxR8Jsvz0+P3z7eMZkTfBgkMUQBuJWCcLQpGkrqt0yB7N26r8nvEMb44eP1
bSwuqQpRz9cv/xqL7QSp8ZabDUSODXSvqkZ6E1ZRz2Yq7w7K7eoN2PlnUQWBsKULZGinjDUG
kT81Nw8PX78+gfMHwZ7Kmrz/v3p8yHEF+3oo0dRQsdbldkdoDmV+0q1ZRbrhxFfDgxhrfxKf
mRo8kJP4F16EIvTjoBgpl7ysq5dUT8VVXXtISsQub+lpUPhzPsP8sHQQ7dixKFwMgHnh6im1
tyRMnnpIle6xk66vGavX65U/w7KXaq7O3PMgSnLsIawDdMzYqFHqMch8ZuxoGfdbwfC4o/mc
8I/QlxiVYotsdodF4KqYIULQEsX5ekIJmzQl0jMi/Q5rAFDusHu+AaiRaSDfc8fJLbvMis1s
RVKDwvNmJHW+rpHOUPoN4xGQHvHx49TAbNyYuLhbzDz3sorHZWGI9QKrqKj/ZkU4ytAx2ykM
OO703OsA8qnXrorKkjxkhCRhu6AI5BebMeEu4IsZktNduPdrbIglCyqPVThSsU5UCL5TCPdO
E6wp7149JExXqCKIBtgskN1CtNhbIhN4pMjVEdp3VyIdJv4K6SjBGBf7YJwuEptyw9brBfNc
1ACpYk/dIu0aiMg4a0Tnp2tnqRsndeumLtFTB9dI6ckyMgX2nVQZZ4Q5toZa4rcHDbES+czx
h5IRqiGYtQG3ETjCGstCEU5jLNRmjrPCY9i1dbsKd8Qi49qQpiSGRlDPc8J/44DaQr0nB1Ch
GkwGqw/zTMDQZdjTmpKkHrFtoiUhi6knYVlaAmYj2fORGqrLIHakqm+w/VyJrGvwoDyiaSq7
o/7sJdZJ6D5Re6Bgra5E8iTE/S5gebqPwAFZExYfSINWmJgVwXnItquRfWQg9PrMex2Dx69P
D9Xjv26+P3378vGGmBZEsbiYgTLP+NglEps0N57gdFLByhg5hdLKX3s+lr5aY3s9pG/XWLpg
3dF8Nt56jqdv8PSl5E0GPQCqo8bDqaTsnutuY+loG8nNod4hK6IPf0CQNoIhwZhW+RmrEZag
J7m+lPFchuujuJ4YlgNtQrNnvCrACXQSp3H1y9LzO0S+ty418lUTnqrHucTlnS1oVLdSUl9F
Zsbv+R4zi5PELo5VP+FfXt/+unl5+P798euNzBd5QZJfrhe1ClpDlzyW21v0NCywS5cyhNS8
FET6BUcZ3I4fypWCj0Pmrmxw2VmMICb8UeQLK8a5RrHjSVIhaiIys3qlruAv3AxCHwb0AV4B
SvcgH5MLxmRJWrrbrPi6HuWZFsGmRuXaimxeIFVaHVgpRTJbeVZa+zZpTUOWsmXoiwWU73Ct
EQVzdrOYywEaZE9SrXN5SPM2q1F9MNGrTh+bxchkKyjRkNbw8bxxiF8VnZC/SiIIYB1UR7ag
VbS3dX/6nZpc4b3Si0x9/PP7w7ev2Mp3+b5sAZmjXYdLM1InM+YYeFJEjZIHso/MZpVum4AZ
cxXU6XQVBT3Vti5raWAk7ujqqogDf2PfUbTnVasv1S67D6f6eBdul2svvWBeUPvm9oK4bmzH
+bZKc/FkedWGeGdr+yFuYojJRfjl7ECRQvk4P6k2hzCY+16NdhhS0f65YaIB4jjyCDFT119z
b2uXO553+C1RAYL5fEPcZlQHxDznjmOgFjvRYjZHm440UfnU5Tus6e1XCNWudB7cnvDVeMFU
T6VtQMPOGhvaR06K8zBPmR7+RKHLiOvx7rVE7JzWyeShZoPgnxVlKKODQXmfbJaC2JJKjSTl
VwUVeEADJlXgb5fExUXDIdVGUGfB4Ji+MHWqHQdPI6nzkGqNorrNPXT8Z+wwLCNQCBfzSLd6
aXM2aX2eGRhl60Sy+fxUFMn9uP4qnVQwMUDHS2p1AUSqAwS+EltWi4VBs2OV4FAJhX4xco5s
QD0d4grCYTgjPL+12Tch99fEvmFArsgFn3EdJIkOghU9Y4KdDsJ3RmSErhkiGc1ZxTMf0a1M
d3f+2pAYW4TWRmBU344cVs1JjJrocpg7aEU6py/kgABgs2n2pyhpDuxEqPh3JYNruvWMcCZl
gfA+73ou5gWAnBiR0WZrb/wWJik2a8LlXwchd8uhHDla7nKq+YoIo9BBlDG9DKJSe4sVod/e
oZXMP93hpjMdSgz1wlvix6+B2eJjomP8pbufALMmlP41zHIzUZZo1HyBF9VNETnT1GmwcHdq
WW0XS3edpAqjONILnDvuYKeAe7MZpj892gplQqdKeDRDASqD/ocPwfyjoU+jjOclB/9gc0od
ZoAsroHgV4YBkoJP2ysweC+aGHzOmhj8NdHAEK8GGmbrE7vIgKlED05jFldhpuojMCvKyY6G
IV7FTcxEP5Nv6wMiEFcUjMvsEeCzIbAUE/uvwT2Iu4CqLtwdEvKV765kyL3VxKyLl7fgi8KJ
2cNr5pJQotMwG3+PG2UNoOV8vaS8p7SYilfRqYID04k7JEtvQzjj0TD+bAqzXs1wOZ6GcM+6
1loD56w70DE+rjzCKKgfjF3KiHDyGqQggnT1EJCZXagQYz2q2uDbfwf4FBDcQQcQ/Erp+RNT
MImziBEMS4+RR4x7RUoMcaZpGHEOu+c7YHxChcHA+O7GS8x0nRc+oVJhYtx1lr6GJ3ZHwKxm
RAQ8A0QomhiYlfs4A8zWPXukTGI90YkCtJraoCRmPlnn1WpitkoM4QzTwFzVsImZmAbFfOq8
rwLKOetwUgWkg5J29qSEfecAmDjHBGAyh4lZnhLhATSAezolKXGD1ABTlSSC+2gALKLeQN4a
MXu19IltIN1O1Wy79OfucZYYgsU2Me5GFsFmPZ/YbwCzIO5iHSarwMArKtOYUw5me2hQic3C
3QWAWU9MIoFZbyhFfg2zJW6jPaYIUtqrj8LkQdAUG9JHwdBT+81yS2jWpJbZkf3tJQWGQLMF
aQn6y5+60SCzjh+riRNKICZ2F4GY/zmFCCbycJg59yxmGnlrIrhGh4nSYCwbHmN8bxqzulAB
BvtKpzxYrNPrQBOrW8F284kjgQfH5WpiTUnM3H1z41XF1xP8C0/T1cQpL44Nz9+Em8k7KV9v
/Csw64l7mRiVzdQtI2OW3jgC0INZaulz3/ewVVIFhIfjHnBMg4kDv0oLb2LXkRD3vJQQd0cK
yGJi4gJkohs7WbobFLPVZuW+0pwrz59gKM8VBGF3Qi6b+Xo9d1/5ALPx3FddwGyvwfhXYNxD
JSHu5SMgyXqzJJ186qgVEf5NQ4mN4ei+OitQNIGSLyU6wun4oV+c4LNmJFhuQfKMZ4Y9cZsk
tiJWxZxwOt2BojQqRa3A3277DNOEUcLum5T/MrPBnfzOSs73WPGXMpYRsJqqjAtXFcJIeUk4
5GdR56hoLjGPsBx14J7FpXK7ivY49gm4aIbAoVRYA+ST9rUxSfKA9NPffUfXCgE62wkAMNiV
f0yWiTcLAVqNGcYxKE7YPFIGVi0BrUYYnfdldIdhRtPspFxOY+21tbRasvSIjtQLzFpctepU
DxzVusvLuK/2cGL1L8ljSsBKrS56qlg98zGptUUZpYMa5ZAol/vu7fXh65fXFzBHe3vBHES3
ZkfjarXP1wghSJuMj4uHdF4avdo+1ZO1UBoODy/vP779TlextURAMqY+VfJ96ajnpnr8/e0B
yXyYKlLbmOeBLACbaL0HDa0z+jo4ixlK0d9ekckjK3T34+FZdJNjtOSDUwW7tz5rB+OUKhKV
ZAkrLSlhW1eygCEvpaPqmN+9tvBoAnTeF8cpneudvpSekOUXdp+fMC2BHqM8UkrnbE2Uwb4f
IkVAVFZpiSlyE8fLuKiRMqjs88vDx5c/vr7+flO8PX48vTy+/vi4ObyKTvn2aofmbvMRLFZb
DGx9dIajwMvD6ZvvK7evSikydiIuIasgSBRKbP3AOjP4HMcl+OLAQMNGI6YVBPDQhrbPQFJ3
nLmL0Qzn3MBWfdVVnyPUl88Df+HNkNlGU8ILBgfrmyH9xdjlV/Op+vZHgaPC4jjxYZCGQpXd
pEx7MY6d9SkpyPFUO5CzOnIPsL7vatorj+utNYhoL0RiX6uiW1cDS7GrccbbNvafdsnlZ0Y1
qd1nHHn3Gw02+aTzBGeHFNKKcGJyJnG69mYe2fHxaj6bRXxH9Gx3eFrNF8nr2XxD5ppCNFGf
LrVW8d9GW0sRxD/9+vD++HXYZIKHt6/G3gLBVIKJnaOyHJR12naTmcMDPZp5Nyqip4qc83hn
eX7mmPWK6CaGwoEwqp/0t/jbj29fwKK+i1wyOiDTfWj5eYOU1v22OAHSg6GeLYlBtdkulkQA
4H0XWftQUMFpZSZ8viZuzB2ZeOxQLhpAr5h4KpPfs8rfrGe0TyQJktHKwN8N5Rt3QB2TwNEa
GXd5hurHS3KnoTvuSg/VXpY0qcVkjYvSbDK80WnppW4AJke2dXSlnKMaRafgtRUfQ9nDIdvO
5rjgFz4H8tInffxoEDLGcwfBxQcdmXgr7sm4fKIlUzHmJDnJML0YILUMdFIwbmjAyX4LvDno
obla3mHwkMuAOMarhdjQWttok7Bc1iOj6WMFXtZ4HODNBbIojNKVTwpBJhx8Ao1y/gkV+sSy
z02Q5iEV0ltgbgUXTRQN5M1GnC1EJImBTk8DSV8R3ijUXK69xXKNvUi15JEjiiHdMUUUYINL
mQcAISPrAZuFE7DZEnE7ezqhxdTTCXn6QMeFqZJerShxvCRH2d73dim+hKPP0u8wrjIu9x8n
9RwXUSndPJMQcXXADYCAWAT7pdgA6M6VPF5ZYHdUeU5h7glkqZjdgU6vljNHsWWwrJYbTLNW
Um83s82oxGxZrVBDR1nRKBjdCGV6vFivavchx9MlISiX1Nv7jVg69B4LTzY0MQCdXNp/A9vV
y9nEIcyrtMCkZS0jsRIjVAapuUmOVdkhtYobls7nYveseODiPZJivnUsSdCuJUyW2mKS1DEp
WZIywjt+wVfejFBsVVFjqYDyrpCyslIS4NipFIBQs+gBvkdvBQDYUMqAXceIrnMwDS1iSTy4
adVwdD8ANoS75x6wJTpSA7g5kx7kOucFSJxrxKtOdUkWs7lj9gvAaraYWB6XxPPXczcmSedL
x3ZUBfPlZuvosLu0dsycc71xsGhJHhwzdiAsWiVvWsaf84w5e7vDuDr7km4WDiZCkOceHf5b
g0wUMl/OpnLZbjF/PHIflzGYw7W3Md0r6jTBFNPTm1ewmzo2bMLplhyp9jkT9scyMq7/UnLF
C2Qe6d75qdviIL1oA++asosuGi9lgjMg9nENUfzypGKHCM8EArKcVCgjfqLc4Q1weHGRDy7X
fiCYyQO1fQwouONuiG1KQ4XLOcFbaaBM/FU4u8W+6g2UYSohJORSqQ0G2/rEJmiBMKVrbchY
tpwvl0usCq07AiRjdb9xZqwg5+V8hmWt7kF45jFPtnPivmCgVv7aw6+4AwyYAUIjwwLhTJIO
2qz9qYklz7+pqidqy74CtVrjG/eAgrvR0tzeMczogmRQN6vFVG0kilCWM1GWLSSOkT5GsAyC
whOMzNRYwLVmYmIX+9PnyJsRjS7Om81ssjkSRShbWqgtJufRMJcUWwbdDeZIEnkaAoCmG45O
B+LoGjKQuJ8WbObuPcBw6TsHy2CZbtYrnJXUUMlh6c2II12DiRvKjNC/MVAbnwhxPqAEw7b0
VvOp2QPMn09pfpowMRVxzsuGEcy7BfOuqtvSaun4VBw5pNAOWOkq9QXLG9OHakFBdwXVnuHH
CVaYtSQuMQFYGbSh8UrjVTYumyzqSWg3CIi4XE9DVlOQT+fJgnie3U9iWHafT4KOrCymQKng
YG534RSsTidzipUZ30QPpSmG0QfoHAeRMT4lxGyLxXRJ84oINFA2llKVTnIGKFL1draJil+v
es8KCGF8XQnuMCY7g4y6DRm34fqMwioiWkvpjEcH3R6FJauICFFiolRlxNLPVEAX0ZBDXhbJ
6eBq6+EkGE6KWlXiU6InxPB2Lrepz5XbpBibMlB96Z3R7CsVxpNsMF2VepfXTXgmIruUuP8B
+QIrbf0h2t2L9g72Ak7Hbr68vj2OvVurrwKWyiev9uO/TKro0yQXV/YzBYCAqxVEVtYRw81N
YkoGDk9aMn7DUw0IyytQsCNfh0I34ZacZ1WZJ4npH9CmiYHA3iPPcRjljXLdbiSdF4kv6raD
6K1Md082kNFPLNN/RWHheXyztDDqXpnGGTA2LDtE2BEmi0ij1AePE2atgbK/ZOCbok8Ube4O
uL40SEupiEtAzCLs2Vt+xmrRFFZUcOp5K/Oz8D5j8OgmW4ALDyVMBuLjkXROLlaruOonxKM1
wE9JRPiklz74kMdgOe5ii9DmsNLRefz1y8NLHw2y/wCgagSCRL2V4YQmzopT1URnI0ojgA68
CJjexZCYLqkgFLJu1Xm2ImxSZJbJhmDd+gKbXUQ4zBogAcRSnsIUMcPvjgMmrAJOvRYMqKjK
U3zgBwxEKy3iqTp9ikCZ6dMUKvFns+UuwDfYAXcrygzwDUYD5Vkc4IfOAEoZMbM1SLkF8/ep
nLLLhngMHDD5eUkYZhoYwpLMwjRTORUs8IlHPAO0njvmtYYiNCMGFI8o8wcNk21FrQhZow2b
6k/BBsU1znVYoKmZB38siVufjZpsokTh4hQbhQtKbNRkbwGKsC82UR4l5tVgd9vpygMGl0Yb
oPn0EFa3M8L1hgHyPMIfio4SWzAh99BQp0xwq1OLvlp5U5tjlVuR2FDMqbDYeAx13iyJK/YA
OgezOSHI00Bix8OVhgZMHUPAiFvBMk/toJ+DueNEKy74BGhPWHEI0U36XM5XC0feYsAv0c7V
Fu77hMRSlS8w1Vitl317eH79/UZQ4LYycA7Wx8W5FHS8+gpxDAXGXfw55jFx61IYOatX8NSW
UrdMBTzk65m5kWuN+fnr0+9PHw/Pk41ipxllCdgOWe3PPWJQFKJKV5ZoTBYTTtZAMn7E/bCl
NWe8v4Esb4jN7hQeInzODqCQCMrJU+mZqAnLM5nDzg/8VvOucFaXccugUONH/xO64R8Pxtj8
0z0ygvunnFcq5he8VyK3quGi0PvdFe2Lz5YIqx1dto+aIIidi9bhfLidRLRPGwWg4oorqhT+
imVNWDe260IFuWgV3hZN7AI7PNQqgDTBCXjsWs0Sc46di1Wqjwaob8YesZII4wo33O3IgclD
nLdUZNA1L2r8ctd2eafifSaiWXew7pIJoqUyoczczEHgy6I5+Jhr5jHuUxEd7Cu0Tk/3AUVu
lRsP3Iig2GKOzTlytaxTVN+HhDMlE/bJ7CY8q6Cwq9qRzrzwxpXsLcPKg2s05QI4RxnBgMCE
kX4b29lC7kD2eh9tRlwJlB6/3qRp8DMHRck2pK5pxCK2RSCS+2Jwr17v93GZ2pE+9ZbtTnvf
Er0P6YhsRaaL6ZgXHKOEqRL1xPaEUvml0kixF6ZJwcHDty9Pz88Pb38Ngc4/fnwTf/+nqOy3
91f4x5P/Rfz6/vSfN7+9vX77ePz29f2ftqQBRETlWRyXVc6jRNwzbanaUdSjYVkQJwkDh5QS
P5LNVRULjraQCWShfl9vUOjo6vrH09evj99ufv3r5v+wHx+v74/Pj18+xm36P11gPPbj69Or
OFK+vH6VTfz+9irOFmilDGz38vSnGmkJLkPeQ7u089PXx1ciFXJ4MAow6Y/fzNTg4eXx7aHt
Zu2ck8REpGpSHZm2f354/8MGqryfXkRT/vvx5fHbxw0Eo383WvyzAn15FSjRXFALMUA8LG/k
qJvJ6dP7l0fRkd8eX3+Ivn58/m4j+GBi/bfHQs0/yIEhSyyoQ3+zmamIufYq08NPmDmY06k6
ZVHZzZtKNvB/UNtxlhDHvEgi3ZJooFUh2/jSZw5FXNck0RNUj6RuN5s1Tkwrce8nsq2l6ICi
ifs7Udc6WJC0NFgs+GY27zoXpMr7dnP4n88IEO+/f4h19PD29eYf7w8fYvY9fTz+c9h3COgX
GaLy/7kRc0BM8I+3J+AeRx+JSv7E3fkCpBJb4GQ+QVsoQmYVF9RMnCN/3DCxxJ++PHz7+fb1
7fHh2001ZPxzICsdVmckj5iHV1REoswW/ceVn3a3Dw118/rt+S+1D7z/XCRJv8jF5eCLitbd
bT43v4kdS3Znv5m9vryIbSUWpbz99vDl8eYfUbac+b73z+7bZyMuvVqSr6/P7xA1VGT7+Pz6
/ebb47/HVT28PXz/4+nL+/i553xgbYRXM0FK6A/FSUrnW5KyIzzmvPK0daKnwmkdXcQZqRlP
lqn2iiAYhzSG/YgbnishPSzE0VdLX61hRNyVACZdsooDcm9HwtVAt4K7OEZJIbcuK32/60h6
HUUyvM/o3gBGxFwwPOr892Yzs1ZJzsJGLO4Q5VfsdgYR9gYFxKqyeutcshRtykFw1GABh7UF
mknR4Dt+BH4co55T8zcPjlGosw3tCXwjJq91mmlfCaAYx/VstjLrDOk8TrzVYpwOwdZhf95u
jPDpI7JtoKJFjKDqpraUMkUFBCL/Y5gQkn85X1ki5mvMBeeL+zuXPZ6LrZ2hNdMLNj8qxa2X
kL8AmaXhwbwxdE5Zbv6huLDgtei4r3+KH99+e/r9x9sD6KzqoQ6u+8AsO8tP54jhdx85Tw6E
J1FJvE2xF0fZpioGocKB6W/GQGjjSLYzLSirYDRM7VVtH6fYrXBALBfzuVTnyLAi1j0JyzyN
a0JPRAOBy4bRsEQtayp52N3b09ffH61V0X6NbH0dBdOL1ejHUFdeM2rdx6HiP379CfFSoYEP
hJ8js4txaY2GKfOKdDyjwXjAElSrRi6ALhTz2M+JUjGIa9EpSDyNIMxwQnixekmnaCePTY2z
LO++7JvRU5NziN+Itcs3LrQbALfz2WoliyC77BQSzmxg4RBR3+UOdWAHn3hDAnoQl+WJN3dR
iskf5ECAHCo82RuvSr6Mam1DoH/MHV0JtnhhTleZCt6XItCrsU4akHOZmSjRlxwVq2IDxXGW
KhCUFGUhksNKTgb6403cTye7WoIkdwqMUIkUeKOxS7yr6dHd5cGRkLnAfhqXFYR/QsVHcgJw
m8fiKcClo63I3m2AWEaHmFcQ1CA/HOIMs1PooLKXj2FgjSWQjLWkJTaFxQH2BH+TpRD0nqDO
nFT4FqJI0xBv4crAQ7NXsc+swVJMLWXCAYiCZVHvKCl8ev/+/PDXTSEu+s+jjVdCpcMTkJiJ
IzChuUOFtTecEaC/PSMf76P4Hnx07e9n65m/CGN/xeYzetNXX8VJDKLcONnOCVcDCDYW12mP
PipatNhbE8HZF7P19jOhGDGgP4Vxk1Si5mk0W1L60AP8VkzeljlrbsPZdh0SPly1vmtFv0m4
peKYaCMhcLvZfHlHqCqYyMNiSTg8HnCg1Zslm9lic0wIzQYNnJ+lhD2r5tsZEUJsQOdJnEZ1
I7hZ+Gd2quMMfyjWPiljDkFLjk1egVn6dmp8ch7C/97Mq/zlZt0s54Qvw+ET8ScDZYigOZ9r
b7afzRfZ5MDqvmyr/CT2x6CMIppb7r66D+OT2N/S1doj3Oui6I3rAG3R4iyXPfXpOFuuRQu2
V3yS7fKm3InpHBLe+cfzkq9CbxVej47mR+LFG0Wv5p9mNeFzlPgg/RuV2TA2iY7i27xZzC/n
vUfo6w1YqS6e3In5Vnq8JnRgRng+m6/P6/ByPX4xr7wkmsbHVQl6PeJoXa//HnqzpaUaLRyU
7FlQL1dLdkvfrxS4KnJxI575m0pMyqmKtODFPK0iQkfPAhcHjzCY04DlKbmHvWm53K6by11t
P0G1N1DreNSPs10Zh4fIPJFV5j3FOGEH6dhwxzIZ5e7iwLJ6Tb1uS644zLjNAJqCmlO6k+Kw
kNFHHJzUTZTR9gWSAYkODG4B4IQ5LGpwhnKImt1mOTvPmz2uxy9v4XXRFFU2XxAanKqzQIzQ
FHyzcpzbPIbJGG+smC4GIt7O/JHsBZIpD/OSUTrGWST+DFZz0RXejAhgKaE5P8Y7piyw10TI
SQSIaxJKoDga9gUV/qdF8Gy1FMOMGv0ZEyYsxlIpFp7XS8/DJFItqWGnEHUSauDmc3OK6xmI
G4xJHG4d5nxUyQ077pyFdrjY5wpHZURfnfTL8st4HY8XoSFDDBZ2iSJpqsioytg5PptD0CZi
vlbl0JVBcaAuRdJJq5hHaWDmKdNv4zLO7Fp2+gzkbPpMWPrIj2u+x8wCVMbKbsZOokb6kHr+
aU449Kri7F62o97Ml2ucre8wwKH7hL8cHTMn4kN0mDQW58z8jnAv2ILKqGAFsQt2GHEOLgnv
ChpkPV9SIqNC8Myj5VhHWGRruT3HKTM7Xhwu+zLnlZmawA59b8+vKtzT50fpEUptrUjGcZ2n
aZydrXhGGMceZZV8pGjuTnF5y7szcv/28PJ48+uP3357fGv9h2oiyP2uCdIQIiYNu41Iy/Iq
3t/rSXovdK8Z8m0DqRZkKv7fx0lSGhoLLSHIi3vxORsRxLgcop24RxoUfs/xvICA5gUEPa+h
5qJWeRnFh0wcz2JdYzOkKxF0QfRMw2gvbh5R2EiD/iEdIrK2zybcKgsu9VCFyhKmjAfmj4e3
r/9+eENDB0LnSGEdOkEEtUjxM16QWJkG1DuG7HB8KkOR9+Ki5VN3bchasA+iB/HlL/PmFfYU
J0jRPrZ6Cjztgr4O2UbuhdJhHEVvXSYT1DI+k7R4Tdz3YWyZYNXJMh1PNdA/1T21GSgq2VT8
GgaU0UZgUAnVROidKBfLIcY5VkG/vSeUxwVtTu13gnbO8zDP8WMCyJXgLcnWVIKXj+j5w0r8
zJUTnsw0EDM+JgxsoY+OYr3uxLJsSGeVgEp5cKJbTYnkYTLtxEFdVwvKekNAHDqi0GXKtwuy
bsCDq3pyFkdVVoH42lxDaQT3yjwlG5/uxHCgHjiBWM+t/JQ4kewjLhYkYdAju3DtWbtSyy+i
B5LyLP/w5V/PT7//8XHzHzewabUudgb1hL4AEGYpqzllhI00CUT8SXw4VgZQcy3f01s36po3
+p4ELic0tkIjpJvtwmsuCaF+PCBZWGwoYzsLRTgOG1BJOl/NCdsvC4VFvtEgxQZcx6BNI8Mi
a5+fl/5sneBqwANsF648YoZoLS+DOsgydKpMTAhDm9E6hltS+3rXqtJ8e399Fkdse2FRR+1Y
+0Vc8dN76SspT3QhhJ4s/k5OacZ/2cxweplf+C/+sl9gJUuj3Wm/h7jEds4IsQ0a3RSl4GNK
gwfF0PLdlbLvwLNvmZmK3UagwoL2/0SPdfUXN2XDxxH8bqSoWWy2hLBZw5wPzMPu4RokSE6V
7y/0OA0j7aXuM56fMs2ZP7d+SH/+pZlU6N4T24QmSsJxYhwF2+XGTA9TFmUHkHiM8vlkvGh2
Ka2pr+VxGKg556BshHRGV4Gu9sZnx1ImE5+ZltNmdUChSxyZIf9l7uvprX1HkyehaZ4u61Hm
QbO3cjqDn1IeSeKe2zUcqHFG+IaQVSXe1mQWKYPHSTtnHt2dwEyEbP3Y0kEmw2ol68HAzQNJ
TauC4VJbVSHw59CcvNWSCgUGeRSnBeo/SA10bNeXhd6GcHclyVUcE2YZA1leVYhYvwA6bTZU
0OyWTEXebclUrGEgX4iYZ4K2qzaE6x+gBmzmEZapkpzGlut5c0XV9wfigUh+zRf+hgg5psiU
Gb0kV/WeLjpkZcIcPXaQIepIcsLunZ+r7Il4dF32NFllT9PFzk0EdAMicdUCWhQccypCmyDH
4t59wM+EgUxwIAMgxE2o9RzoYeuyoBFRxj0yHHtPp+fNPt1Qofdguw45vVSBSK9RwcJ6a8eo
gTFVsqnpmncAuojbvDx4vs286zMnT+jRT+rVYrWgAqnLqVMzwh0LkLPUX9KLvQjqIxEdVlDL
uKgEK0jT04gwbG6pW7pkSSWcQKtdn3CYKY+umG18xz7S0if2Z3k1zDm9NM41GUJcUO/TPRaj
4xj+JNVAB/5XzUJD+6VNUrOHOLSAPlKb6QjHSxi55jxrykglOEGKcdpFE3kVEE5Eql8TkucO
CC90gSgagnnQXMmAVM9CVwB5fEiZ1VcE1JL8ohj7PcCkOqSDFhD8tVAiOwsqTl0HM2ACHatK
A8qXlKv6bj6jwpS3wPbK7ug3FT2Qg0/fNkKiDODVXh76ST/ubt1msEtl4qqagfekVJf99kXB
/ElyqPjn6JfVwuCjbd75xHc2aweG4KOnuxHixDzHkQKIgMUM99jTIVZgieFEHOM9ZYkrObUg
JEXCXRZFToRMHehHN6IS05T02dWBzkyw2ZgsS3Z7HpjdLhL6cHn2fc3cxwWQpRB2xsVNp1Iv
g5p/XQgnyCv2ub1ww0jsDpl8QBHU0YbMX4PWnhKMgfZvj4/vXx7EJTwoToOJo7IKGqCv30Ff
/x355L8MA9u2hXueNIyXhHMCDcQZzd/2GZ3E7kQfbn1WhFaFgSnCmIhJq6Gia2olbrz7mN5/
5diktaw84SRAsksQWy23+qmLFOkaKCsbn4O7Zt+b2UNusl5xeXvJ83Bc5Kjm9CEE9LTyKT2k
AbJaU0HGe8jGIzQXdchmCnIrbnjBmYejqc6gC1v5jexE9vL8+vvTl5vvzw8f4vfLu8mVqPdx
VsMT5D4392mNVoZhSRGr3EUMU3gfFCd3FTlB0mcB7JQOUJw5iBBQkqBK+ZUUypAIWCWuHIBO
F1+EKUYSTD+4CAJWo6p1BY8rRmk86ndWvDCLPDbysCnYzmnQRTOuKEB1hjOjlNVbwvn0CFtW
y9ViiWZ3O/c3m1YZZ8QmjsHz7bY5lKdWXDnqhlZ5cnQ8tTqV4uSiF12nd+neTFuUaz/SKgJO
tG+RwA5u/PR+rmXrbhRgsxxXi+sAeVjmMc1byLO9zEIGEnMxkHNPcHYB/O04hPWJXz5+e3x/
eAfqO3as8uNCnD2Y9Ug/8GJd62vrinKQYvI92JIk0dlxwZDAohxvurxKn768vUqj8bfXbyBC
F0mChYdD50Gvi24v+De+Ulv78/O/n76BZ4BRE0c9p5zZ5KSzJIXZ/A3M1EVNQJez67GL2F4m
I/qwzXS7pqMDxiMlL87Osez8lTtBbZDeqTXdwuSlYzjwrvlkekHX1b44MLIKn115fKarLkiV
c8OXypP9jaudYzBdEI2afjMItuupSQWwkJ28KX5KgVYeGRhnBKSC7OjA9YwwMelBtwuPMG7R
IUS0KA2yWE5Clksspo8GWHlz7GgEymKqGcs5oQKoQZZTdYTdnFA46TC70CeVUnpM1fCAvo4D
pAsbOj17Aj5fJg4JyYBxV0ph3EOtMLhqp4lx9zU8iyQTQyYxy+n5rnDX5HVFnSauI4AhQhLp
EIdkv4dc17D19DIGWF1vrslu7jle0DoMoZVrQOiHQgVZzpOpkmp/ZoXqsRAhW/vedsy5hqmu
S9OlKkVvWCxjWsTX3nyBpvsLD9tRIr6ZE4ZvOsSf7vUWNjWIB3A26e54aS0OFt0Ta0tdN8zo
iRhkvlyPROk9cTmx50sQYSRhYLb+FaD5lBRAluaeUClvg6cH4STHZcHbwAFOvLg7eCvHS26H
WW+2k3NC4rZ0oDwbNzV5ALdZXZcf4K7Ibz5b0SH4bJyVH4ISXcfG66+jtF7i0Pwl/YoKLz3/
z2sqLHFT+cH12XctoDIRR7yHCBeq5dJDdhqVLnlH7Gov7ooTu426TrpqRAoO+KFKSJvmHiR1
MRsm/oz3U7cAHpf7lrkfsSejGyIhHeE89akAcjpmNaPjf9q4qeEXuMVyYtPiFaMcT+sQh+aN
gogbGxGCtr+SMe4vJ/gWgbFDyiKItVdjXSxJDgWPFiNYZ/deX4mTeEF48u8xe7bdrCcwyXnu
z1gc+PPJodKxU8PfY0l/zmOkXy+ur4NEX1+LiTrwOfP9Nf0GpkCKq5sGOR4y5a0+ZN58gqm/
pJul4ym2g0zcaSRkuiDCY70GWRP+CXQIYfegQ4iQwAbEvRUAZIIZBsjEViAhk123nrgySIj7
iADIxr2dCMhmNj3xW9jUjAepKmHSb0AmJ8V2grWTkMmWbdfTBa0n541gfZ2Qz1KstV0VDk2Y
jmVdL90bIkTIXE6+os0nhBIZO22WhImRjnHpXvaYiVYpzMRxUbCVuGfa3iE6lW9DZmacZooF
gYep5lTFCbfYqIFsEhQjcihZceyoRp2kXUtr0aJXSWknxeFYQV8k6u8i4mezkxLMexkfLjtU
R7QHBJAKkHc6opaMkHVnHtL5Uvv++AWcesIHo+hQgGcL8AdiV5AFwUl6LKFqJhDlCbtvS1pR
JNEoS0gkwsNJOieUgiTxBForRHG7KLmNs1EfR1VeNHtcdCsB8WEHg7knsg2O4LpFM86QabH4
dW+XFeQlZ462BfmJCqgO5JQFLElw/W6gF2UexrfRPd0/Dm0lSRa9V8UQMHw3sxa3jlLuyu3G
iVl4yDPwsUPmH4FPUrqno4ThOs2KGFmPrxYZ8xEgKZ9Fl9iVPUTpLi7xRzVJ35d0WcecVKyT
3+b5QewZR5ZSQcklqlpt5jRZ1Nm9sG7v6X4+BeDmAT9ugX5hSUVYAgD5HEcX6cSIrvx9SVvm
ACCGMBfEgMTVaNF/YjvioQio1SXOjqhVs+qpjMdid8xHSzsJpL4cmS9l5qZoWX6mphT0LrYd
dunwo8D7t4cQ6wDo5SndJVHBQt+FOmwXMxf9coyixLnepPFsmp8cKzYVM6V0jHPK7vcJ40ei
o2Tc04PunVR+FMM7Q76vrGQ4LcvxWk1PSRW7F0NW4UyjopWE/i1Q89K1lAuWgT+OJHdsFUWU
iT7McL0+BahYck8Yx0qAOCwoc3ZJF/uidK4U0Du7NKmjiyjBipZQIpf0PAgY3QRxarm6qdWO
oOniLKSJEO0GomXRiCoiolS1VDHPBTNDqOdLjCMgmWw+4apU7nXgi41xx7HJU1ZWn/J7ZxHi
XMXf3iQxLzgV80fSj2KHo7ugOpYnXilLMvpQADaxKQg7fInw958jwmReHRuuE/gSx2R8aKDX
sVgnJBUKdvbf5/tQ8JKOrYiLcyAvm+MJd08r2cOksAro9EAQ9lfyxRBTCuXWlVrxiGMvCEWd
Fj7y9t6WbxfT+yBHywalAChb08sYYXudcD1XrTL5MYgbcOIhOBXlNMQMzzqKdix1sWUUNb3N
kJqAwa21x2rkU1LEze7E7c/EP7ORWbZGZyUcpIw3xyA0qmHWybIqlF9mmdiQg6jJoksXz3x0
BzPDlcAAtNrG5hi3avYNGGDHvLKLouP36n1dHezvRFJzOYpNNYkJb8cdapdIo3JekTO7Q+45
HcpPjBGXg3SISkggwpwppf0qF3cscayBUnfC7n/xzbysQHrDOnl9/wDj6i58QzhWUZHjvlrX
sxmMKlGBGqamGnTjQ5ke7g6BGYbZRqgJMUptgzmhmR5F99J9KyFU7PcBcI52mH+uHiCV5MYV
U8ZFRno0dICdWua5nAhNVSHUqoIprwIZjKnISpHpe44/QvaAtMYeW/Sagqem8cYQ9e1zfd66
w0d7gBy2vD753uxY2NPIAMW88LxV7cTsxcoBBXYXRjBW84XvOaZsjo5Y3rfCnpI51fB8quGn
FkBWlicbb1RVA1Fu2GoFXiydoDYSm/j3kTuRUFsZTy3N0SvfKLcu8gHsGcpTyk3w/PD+jum0
yQ2JUKCVu38pldZJ+iWkv61Mz/+y2ExwMP91o8Kj5iW4Jfr6+B3Cy9yAYQqEJvz1x8fNLrmF
c6Xh4c3Lw1+d+crD8/vrza+PN98eH78+fv3/RKaPRk7Hx+fvUhH25fXt8ebp22+v5lHT4uwR
b5PHXgRQlMvqz8iNVWzP6E2vw+0F90txfTou5iHlVliHiX8T1wwdxcOwnNGht3UYEaBWh306
pQU/5tPFsoSdiDiROizPIvo2qgNvWZlOZ9dF/xMDEkyPh1hIzWm38on3H2VTN+Z2YK3FLw+/
P337HQsNI3e5MNg4RlBe2h0zC0JV5IQdnjz2w4y4esjcq9Oc2DtSucmEZWAvDEXIHfyTRByY
HdLWRoQnBv6rk94Db9GagNwcnn883iQPfz2+mUs1VSxyVvdauanczcRwv7x+fdS7VkIFlyum
jSm61bnISzAfcZYiTfLOZOskwtl+iXC2XyIm2q/4uC7apcUew/fYQSYJo3NPVZkVGBgE12Aj
iZAGUx6EmO+7EAFjGtjrjJJ9pKv9UUeqYGIPX39//Pg5/PHw/NMb+AyC0b15e/y/P57eHtWt
QUF6Q4cPeQQ8foNobV/tJSYLEjeJuDhCeC16THxjTJA8CN8gw+fOw0JCqhKc9qQx5xFIaPbU
7QUshOIwsrq+SxXdTxBGg99TTmFAUP5/yq6tuXEbWf8V1z4lD3sikhIlPewDRFISY4KiCUqm
54Xl41Emrvgy5XFqk3+/aIAXAOymlEpNbHd/AHFp3BqNbugEmwV7uGU4Q4njHZdmeO0XRptB
lUZ+QjXs5LYRkHrgjLAIcjSAQDCUOBBbGu1NB52l7XMpkT7hKXE13XJ9/NZebafiY0W8DdVF
O4mEFp0s2R0qUquuEBN7xW6tix6WUUivBtGD8oJM91BMa63Vpr6KU/o2STUC3DJORTpTTZHK
c/DmRPi3VXWlqyqHVx4lp3RTkrGjVFUO96yUhyca4cb+c45YQoqo2n5v07o6TizAqQDPdIQL
dgA8yNS0XCRfVMvWtNjBsVT+9BdejXmHVhCRRvBLsJiNFryONw8J2w3V4Gl+C05+IMLpVLtE
e3YQckVBh1jx+98/np8eX/TKPr7vViu2GTsn17HqmzpK0pNbblBhNacNobrspomAsLNWu4la
wPcmJAAi9DgIc8OXFc5Uq3RucI3X6vAsRSNRfTO9nvpGNdUT4vTaYoLAwTGhlR9DqfWnRUEL
wx3z/X98hNttj/Mjb7RTQCFxQ4+fP56//37+kJUeFFTupArv60F+L+oKjoSPVVWecpLdnb2v
OSerVeyVYFtPkpTA1swn/I0pGTtNlgvYAaXdELne2zsaYkmVWSpNxWhrDpX0iew2cdQu0PZm
E91gAhhT8fJ4sQjCqSrJU5rvL+neVHzCMFD15OEWDwqpZsOdP6Nnn1YoJ3zi6mMHuNYcqVbM
kYqK7UiNLn9FR0/1UCSWibsiNFVEuOLS7GNEuLRoUxdC9u2qRmfW6u/v539HOt7y95fzX+eP
X+Kz8deN+O/z59Pv2JtZnTuH4FlpAAI+W7jPy4yW+acfckvIXj7PH2+Pn+cbDjt6ZJulywOR
erPK1WxhRSFytIYv+CgV92llBq3n3NgMF/elSO7kBg4huocciWk22cF0xdmTOq+YgaG6F2Cw
dqS8lEFSd0XVB1se/SLiXyD1NRp+yIfydwk8VnL5I7XLDMe0JuaZTVUvsWWxrcZQjHjv5qBI
cjMFFmlyg3mwXWMOCOfgNOKzqEBzLrJqyzGGPH2ykgmW498DtrrgJht9wFVr7KmFhUngN/JL
8ljHxR7T1Q8wsMvJowSrisocfMNgzO6aAmvTmp0w5c2A2MLPYIZ2GXhWtRntab92v6bp4LoG
DwgzZApBIt3ENb5SKLlPt7wR2OqnsixSvN6uHwIzR65eqZTjdsbySlVohpizia5LtXeWXB40
AWjn272id/OONkvC/Ba4p5Tp0UV8Nb63vxLf98PAHu73ctI5Jts0yaj2kBBXSdSS92mwXK+i
kz+bjXi3AfIpegRLZu+AZZzuC74Qq+bdww/i9b5qqaNcjuiGPDqDzmHKzgvl1I+ZU6qvt2pE
s9/u9tFIULpQUXQDtB66RqJvX12O5HhTymmj2mCjs07yAzWzcYZbuBmTKQ+JhyI8kV9MI6xc
cGcPt9VDcdTdtXJ3b5ZkoDYjCzQbtCnh4JuD3mF/DyfDfJeMbbLBGBDZBqgcWB7M/AURL1J/
I+JhQLwPGQCETb2uSjmbeXPPwxtMQTIeLIgHzgMf3/B2fMpjQc9fE8/QFKCI2Nr5gsmGk/Co
i7IiWM+nKiX5xHu0lr9Y+PjZeeDjqqSeT+jKWv5qQZzNOz71CHhok8WFRguJ51kKELPI8+di
Zr8BsbK456N2LZPdMSNVS1rmYnm+map6FSzWE01XRSxcEKEONCCLFmvq+Vsvkou/aH4qAm+b
Bd56Io8W4zxMcwatulj9/5fntz9+8n5W+3KIU95a+P759hWOBGMjr5ufBuu6n0fDfgPaJsw7
i+LKNTuyJ0dF5lldEvpTxT8KQneqMwVbqQfCik63eSob9diaYqENUn08f/tmKbRM65/xJNqZ
BY287eOwg5xJndtUDBan4pb8FK+wnYIF2SfyqLJJbN2CheijbVzKKiqOZCYsqtJTSoQtspCE
qZpd6dZaTMmF6pDn759wFfTj5lP3yiCO+fnzt2c4NN48vb/99vzt5ifovM/Hj2/nz7Es9p1U
slykVIAhu9pM9idmemOhCpanEdk8eVKNbBbxXOClEq5vt9ubdAmrT27pBiJu492Ryv/ncguU
Y8KTyGl0bLUIVPuvNv4dDF87oINiUkdXxdztk3EKpYwWESvwMasw1f6Yx0mJz3EKAUYbxAsI
XTG5eS4E8bJHIWp40YWUvKxkGVNjdweEbjdlkPaR3GA+4MQuzNC/Pj6fZv8yAQLubPeRnaol
Oqn64gKEamfg5Se5PezGjyTcPHcxOI0pDYDyRLTt+9Gl2+fKnuyEJzHpzTFNGjdQiV3q8oQr
ScD8FkqKbCC7dGyzWXxJCBOIAZQcvuCGLwOkXs2wF3UdYNjOj9LGggxuZUKIJ60GJCT0qh1k
/8BXC+KCr8NwVodOWPExYrkMV6HdjYqjVAEn+eegIO945e1qtjK1nj1DLKLgQsFTkXn+DN+m
2xjizaoDwq9hO1AtIbj9Uocooi35Bt7CzC60tgIF14CuwRDOcfvumXsVoVnvpfQu8HFbog4h
5GFmTYQF6zBbTjqX6ntdDhdvSsokYLHyUIGRSYmIsh0k4fJkOD2iypOETEtUeVqtZpgKrW+L
BcfGs4jlcF6NZiN4Qn9hNoIeIrb+FuTiTBAQBwwLMt2GAJlPl0VBLk9c62lRUDMO4fKm74o1
5RJxkIr5gnDJNEBCKsyANRnNp8VCz5DT7SuHo+9dmCB4VCzX2OFSrX5jD5MgP49vX5FVbdTm
gR/44+lZ05v9vfNaxC70FcNmHfkj6e7vCy+IuBQIn3C+aEAWhN8PE0I40jDXw9Wi2TKeEo+z
DeSSUMAMEH9u2z+4M44dZbafCqpbb1mxCwI1X1UXmgQghKtFE0L4mOghgof+hZpu7uaUdqKX
gWIRXRiNICXTI+3LQ37HsRcjHaB1etlJ//vbv+WB8ZJ0pbyOMT1svzKJrNlWHGyKS+PiaA+h
O0QAnrOi8biRDLRvceVmP5qyWTC1wAHfQz52zENUlPhpIjMwaY5ZsKqxlO3l0vSSXcnfZhdm
x4KvajSk67ALd66j+sIT9zwGvzlhGsy+WfKTGG8qVcSECNsk8GoZ+lMZqoMZVtRy6RgF9b5B
xPntBzjMxubeWLa/ftJm5jlQx0crlS2YJo/ipDN5rJSn07pJcrYBNyd7lkPcdfeOWiZudHAR
m9aG9e3SCZtr36UCRdmKDgd+deaVc8UuJszkGYf7jmy2wk/OrE6pW7NNxBshE5csNRy3QBm6
SxKLqMeC0bvx/VTuKlyH5Jm1AdodVREQH4dncISTlYpHBUaOLMRWgtug0Qnav7mUsUPp/i2l
3Lq4qQVRAl4HTao0ZDahScs78Z8+7k+RBcGscUoKV6BEtmqE+rOGFRs3lWZ5kke1V3eh2XC3
B3qIGlbutweudux9ga2XBhL1hc4Awn/sxRQ3IoUBuGCHIZsGbzplDrFh3O5mRd2DVDR8xyuM
Yc0I9yPpdXmkGTlc11Klb3mQFlU3tSZqVtHh6aNzbW2YsmnO6zBPRS/P57dPa9ntZyqyWBCY
TGCq4GHy0rPB3/2HNsft+NGv+hDYLVpyfq/ouKy2ORGlkqxGJNkWSoc/PndKYlT6WE+aKKP6
6NM2PTTpgfOjMmEyFn7FkVP23Ta2iWZNFSg/qAyo3C3L/o7ScM4KhCwns3r0ge51I1ovheCU
2hnWnC78LVZAyTbDmem/G57kxxHRrkdPazXEI9YG4qHZB5qWowL4kYXpAqy5qbgyEuHg+yKZ
eKb+9PH+4/23z5v939/PH/8+3Xz78/zjEwtmcQmqsPX5jQwRDj7LhkoaRBGVx01TsJ3aXui4
cxYAtKfJSe4ZnIRwRZOYoaol0dTWAkbOXgWrMA5onvdShstTKswFDnjyHxgEdy7WbOYur7Se
16SVLFfRqRsV1s7sD4MN2xZgI50pN0WHKtsA2k1cnMAxl0AdvqHAtl2QryiUlG4pF3b59bnP
IMA7/aaWAykxDbyR/h2KsCuTB8pQXVRMzpH4xeXukMXbFPXyw7excYBqidG+PPCkH+XWTlXz
ZIJqg1oejTNrYxKAu2Yzn5ZcFnIDSedjxyrsiEV5qA6j3G43yifU5MViHyFhz0pLxjqGSrgx
n/p3nNMGqZXarZuC35fbvZ/iSZax/FCjk2eXOLsFCZcj+PZoTMbq1Cl5ENSxYKZVmr5GBl63
LrZB+KKX96c/brYfj6/n/75//DFMEkMKCH8uWJWaRqlAFsXKm9mkU1Lrhz8HYXdiprZRuCLY
+FJ3E3AFbj1H7SgMkL4gQJoAgtktFjXKEpFtBmiy0gUVvsBBEW43bRRhAWSDCIsaG0R4dzVA
URwlSyIMuQNb+xeaNRIQRLOJCrz9fF4Iz7PF4u5QpncovDs0jzmOLYwpjhGutzIgm3jprQh7
FQO2Tes2Lio+xgxLu3Fix6K1hTe58MdEUdq0koliA+4klct2TEClDIXRKTCtJV3+mmKFIZkq
XJKssXmmPWJ832DJQZ5U4E/FDBBbyc0DBjYYdtlASaOnJJsgR+HRbjB5fF5xjtByhHY3pt3V
hriC+3Qwkc4sw5WBCsvGBlwiyPOW/Y5Oz5xqyjTMkfj56/Njdf4DYmWhE6jyxlklt2jTQrRL
zydkXTOlPJNGAWNwynfXg38tdnESXY/n2120xXcPCJhfn/HpHxXjlOQuGsOGy+WabFlgXltE
hb22YTW4SK4HR+wfFOPqltLocUtNNceV3avA7Bhf1Qfr5UQfrJfX94HEXt8HEvwPWgrQ18kU
qIHJ+gCzSar9VV9V4H26vR58XYtD3FtiqoF4t2ThgakNt64qkYJfK7kKfG3naXBxVE8rLm5u
HPzFvZeBZzFuBETlnuOWb2P4teNIg/9BE14t0hp9nUiv5GaDlgrJRARv8Lk+uRyiqyEY9ZTJ
zlIkjQDgbCFOTxMIXmTZBLvYM5Gg26uWP5lawK/wfTqDk/LZmjXTpWQH+COaQCTJJUQkpS9+
yKkP7erNBmWwekfR9UBHa2c7YNE3gQ0rZCmafZIVSTliBsu6tndyfarVLBxMqG1mVHjebMRU
au5dLCKHVBY8wtvI9v6iwGwRWN2riKrmRSS68FwIW/AYPoRwJNXyA82Ku2YXRY08Y+JnNABw
PoVI2yzmMyL+Tdp/I8TPMgDIEMAo/XJuqRgE1/QwRF8rdey1PS0MdOKhBACySUCsc1iHHn6G
A0A2CZCf0K06VQhdSsK+0chiid27DRms58bRZKCGNrXNyyW34JUpS6Ltb6s3hKyzXEYBPifC
g7TNFhJVhoyrY5nmuwY3KukykB9wv7wrjhe+LKe55HABA/cXFyBZwYQYYzpEW0BvMbMvHnna
FOB5FVReKX5VoC/GtnLAo+zbQoimjlAlJAxsfUPlHNBXbLmcMw+jRjOEul5gxBAlotAlmusK
pa5xqtW3ir5ms3A3Q19yKT7c1+2SXG7jit0oMTDBT4b8C56aiwRzZGW0IGQiJX+k6+huCtNT
iE7fQ7D4lqefkMIqEc5tzaUDkJsSoXVS5gKiLquxZIohIgj2aDNUKeznmT1J115gnKIE1U5r
XkNyV5PctalA0d8zdR9tqG8GDYHQ9yFFLlvGMJJUfHG2CirgYCNQAfbBKEdJjRMfI5c2EWqn
fdhsCm7qWxRN7ae21p5LUrAnzYZsjI26hn0nrsDudeH3okjz1m9Cn/VAHT1sHSPafQWWGI1N
r4si3v/8eDqPDXrUsyvLjZqm2OYzmqYUUFZDiTLq7hdbYvcGWidxW9shyrGkHW1P0uFuD2IQ
MU4iDoesuT+Ut6w8HM3rOGUqU5asOkr4bLZarIxZDvSEGUTK6SFe6M3Uf9aHpJR3AJnB2vdG
kt2xj/ltfrjP7eRtEYXccxoLN9wutu+FBDwBj0ybCrDRcJpEzRIuzcmj4uZY6NrGyrmnWti2
J5EbFQ1WZkLyY1GlR4R1xnIkq68DS7PNobabgu+Nr0Ku3IJ0d0strhfxIgv8mcLie1pju1/e
V5xGwujywdE/DekF2EV0ZYmsO6TOjAwHt5p6p5pVCgcoAR6jOMvlj9IUSlBGOwm06rojDltG
3cSjR0HWkQNOFmkRuSNxL4pRftqoSWQplyOdbiG4OijiaKLOzTZL6lL3g2nXpiyTeHxH593a
RKVFSmWvjUvSw8k4DGoaM2csTRpe5GmHmue388fz0422Lykev53V88ix76fuI02xq8A20c13
4MAG0jLWQQG9DQ5+XnKTSIE+LXG9xqUquLm2N7wT3+1jDMiNcLWXE+gOu2k/bDXcbQnb0qob
Ow5Ui1zbJZrTF6LdNY1MfozTJCQ7cYEZq8GkIqxvdRTY/KvG3DxAzeSPsfFIjz3Zvj6kmFIm
SGpQddUbWeK4ifQjwvPr++f5+8f7E/KWIYGoJe2d3VBlOTMOHKoUJTC7qBivFusuPC0Gjn0k
UTwWC2ybMQDkjhnLUzYlnuF9JDCFngLIpQMryH2Uy34p0gwVdKTVdGt+f/3xDWlIMMQw21AR
lKEEZieomFqno5w65irynCHJLsBSv4y4At6MviJsweNxobS04LW2amfsk2Ffc5/aDjb1cxkp
ID+Jv398nl9vDnLj+fvz959vfoCzgd/kNDH4yFJg9vry/k2SxTti290q9Vh+Ykbft1Sl9GPi
aDkVal0lQQjMNN8eEE4hD+Fy0U1z4TKTZILJzTz7xsFKr6sl63v+6tRqSDbmKvbm4/3x69P7
K94a3dKtgrgZXT/ckbssCAQ68mbTEpqCmzVBP61DANTFL9uP8/nH06Oc1e/eP9K7Ub2MzW1c
MGxaBNbuWJkm8RLow4lUdF6d26Jc+qD2I/B/vMabCaaqXRGdfLQ39cOFIzSN+c1RdtrY0NDQ
Y/Xtdg+Ycgxm7Hxbsmi7c2dypae5L9FjFfBFVOiX54MpI1YQVZK7Px9fZLe5ImPPa+wgpzX8
0Y/W28p5Gd68xYaY6LkkyVO5U3CpeoYR5WgC3YkNbkGtuFmGKpcUj8dVkx1YnJTuJM/TVps+
nudLXm0FOE+iFyRbGd0TC9wmseMXmCliO30mrtYb14UDEIwIK7f1BJcb/hHN9tCmiXq+oQuq
lyt5BML1ee1uu0SndVRuzHljpO5Th9teE+bSR3pAg2wqAgeyqQk0qCFOxcFLPOcVTl4TZCNv
uGRBKmOQzcoMZDwPszImFQcv8ZxXOHlNkI28S/DsbkVZ0kCL1O+Qd+UWoWJzKIgHpYzUrutH
5MLcEPc0JGul2hOlrVkBrYrasHvgANO0JjN48ICG4nmrkOat5zZPhc9WrO3RnPsMena4h2GH
8QqOZqVW5p2cDRydnyrIbQC+4ZASSsavS99LkAJaujBlkYW1Z8tK8woelqUtoDt91s8vz29/
UUtH+yjohGpB22Oxs+HoqGZJBlPs8dfM7WTUfHH9PHXRCK/aUPbqEA5W7dsyueuq2f55s3uX
wLd36/WgZjW7w6mLbX7I4wRWQ3M+NmFyJQKNEKMedlpYaB7BTpeR4AZLFOyaPOXZMT2Nt91d
LREntHCqbAed8hreIgnNVSuxl1DlbRCs1/K4HU1Ch+5okpPjp6mfD6po8BCV/PX59P7WRcJC
aqPh8sAYNb+yCLeVbjFbwdZzwvNGC3HdWLl8CHYWEFGVWkhR5QuPCEDUQvSCDpd0PBX4u6kW
WVar9TIgXB9piOCLxQy7q2r5nRd+c8btGNH4QYHcqBxKK8owdG+ReUu/4QX6KEFLiDnTpebn
UngdpLzOWzqEntoQgZ0MBHimlEeDo+OCzQDebtOtgg8bRiC3jrXg2YIuwaudv/4V9Q9uJLfr
0pVEwODvIb6dsehia5JVk4g27Wjwsqen88v54/31/OmO3TgVXugTz/47Lm4XweI6C+YLeCoy
yRdEVCXFl1JwiU/lv+HMI0afZPmEo4INj+RoUv7P8I1tzCg/9TELCP8VMWdlTFj2ax7ehIpH
vM5XotE+T1GlbV/K0QJQtbiA1SmuAb2tRYyX5LaOfr31Zh7ufINHgU94/pFnu+V8QUtBx6d6
GfiURYXkreaEu1LJWy+IJx6aR1SljuYzwkeO5IU+MRuLiAUzwi2xqG5XgYeXE3gb5s7fnarG
Hph6sL49vrx/g9BWX5+/PX8+voDHQrlKjYfu0vMJo6d46Ye4NAJrTY12ycJdmkjWfElmGM7C
Jt3K3YXcPZQsy4iBZSHpQb9c0kVfhquGLPySGLbAoqu8JBwzSdZqhTvNkaw14QQIWHNqupTn
J8q1QuHPathzkOzVimTDBZR6BkMjklJutn2SH0WeFG2P5Cf5KckOBbybrZLI8YJrH7uYHQts
n67mhIObfb0kZtM0Z35NN0fK62VMcrMq8udLwsUw8FZ4cRRvjXe43KV5lOMx4Hke5a9cMfEx
BTzKRRy8rAuJ1uFREfgzXJCANyd85QFvTeXZPo0BI/zFcglv4Z327YHKKlcOc7ufc3ZcUv6F
ht1p+j/Knm25cVzHX3H1027VzI7vcR76gZZoWxPdIspuJy+qTOLuuE4nTuVSZ3O+fglSlEgK
kLMvnTYB8QqCAEgA1KK1KLvzKBIDDa9ljAp17yzJTChygZS5PUGcS1XzcDHC2zdgIuS3AU/F
kIifrTFG49EEp4caPlyIETGRpoaFGBKHYo0xH4k5EQxRYcgWiIedGnxxSegbGryYEA6RNXi+
6Bmh0NG3KYQyDqYzwr9zt5qrMCZEiBJtUPAJtz1r+85V++RdvZ6e3wf8+cE5bkHCKriUAvxc
hm711sf1DdTL7+PPY+fsXkz8U6659Gk+0F88Hp5U/jAdpsitpowZJDOrBE8FQdbLhM+JgzEI
xIJiweyazC+bJ+JiOMQZF3QkguzklVjnhMQockFAdrcL/4Q0T2/8WXAUKOPErWZB6FQgTz0Y
Ha3NqyCOJMNI13HXDLI5Pph4UfLD+vWbffmGI+ibS5EbkPWdLcCLvO7CZrtEp6FbhTbO1AQt
aftOkyElMs6Gc0pknE0IKRxApGg1mxLsDkBTSpCTIEpIms0uxzglK9iEhhGJDCVoPp4WpMQp
D/4RpYCAUDAnOD7UC4ZfUpCdzS/nPcrx7ILQNBSIksNnF3Nyvi/ote0RgCfEVpY8akHYBcI8
KyGRAg4U0ymhlyTz8YSYTSnxzEakhDVbEFQmhZrpBRE1FmCXhDAkTxrZ/+Fi7CeC8DBmM0KU
1OALyiBQg+eEUqhPss4MmhBFfdtZR8CWrOXh4+nps7Z12xyoA1PAFaRRPjzffw7E5/P74+Ht
+B/IyBCG4q88js17Cf3CUb25uns/vf4VHt/eX4//fECsJJeRXHbiJDuPJIkqdEjRx7u3w5+x
RDs8DOLT6WXwX7IL/z342XTxzeqi2+xKahMUK5Iwf7HqPv1/WzTfnZk0h/f++nw9vd2fXg6y
6e5BrQxpQ5KLApQKrWygFC9VJjqSde8LMSVmbJmsR8R3qz0TY6nUUDadfDsZzoYkc6utUeub
IusxRkXlWioyuGGEnlV9DB/ufr8/WiKRKX19HxQ6K+Dz8d1fhBWfTilmp2AE12L7ybBHwwMg
njsR7ZAFtMegR/DxdHw4vn+iNJSMJ4TUHm5Kgg9tQKMglMVNKcYEW92UWwIiogvKegYg3+hq
xuqPS3MxySPeIUfM0+Hu7eP18HSQovOHnCdk70yJ+a+hJP0rKGkljuQG6LEvKzB1wF8le+Io
jtIdbJF57xaxcKgW6m0Ui2QeClwu7plCnaHm+OvxHaWmIJfaWIzvTBb+HVaCOttYLA9xIlQ8
y0NxSWVvU0DKYXC5GV1QjEqCKBUmmYxHRHxwgBHShgRNCAueBM0JAgfQ3DU5I0qECkkFviPO
U/B1Pma53B5sOFwhFRjNIxLx+HI4cjIquDAiuL0CjghJ6G/BRmNCFCnyYkim/CoLMlvXTnK9
aYDTj2SKkpvSHBOAuPyfZoyMYJ/lpaQsvDu5HOB4SIJFNBpNCI1Vgih/yfJqMiFuZ+S+3O4i
QUx4GYjJlAgtpWBEYgyz1KVcTSo1hIIRKSEAdkHULWHT2YTKiz4bLcb4q7VdkMbkYmogYeHd
8SSeD4m4WLt4Tt3e3cqVHnfuJGuO53I0/ZDy7tfz4V1foqC87or0QlYgQg27Gl5S9tL6EjFh
67Tn+GhxyMsvtp5QuQuSJJjMxlP6clCSoKqclrAMOW2SYLaYTsiu+nhUdw1ekchtQZ9tHlqn
NvPsFFs2vaBtaumODS7Z4ieh800tXtz/Pj4jZNGcnQhcIZicboM/B2/vd88PUgd7PvgdURli
i21eYtfu7kJBcEEcq+4K3qCjX7yc3uXZfkTv8GdU5vVQjBaExAta9bRHGZ8Sp6qGEZq61LiH
1HWHhI0I9gMwijWp76gI9mUek8I3MXHopMpJd4XOOMkvRx2mR9Ssv9a67evhDeQwlA0t8+F8
mODxaJZJ7j07QESLJSsyJ256LqjzaZNT657Ho1HPdb0Ge3u2BUp2NXNc3MSMvKiSoAlOKDX7
UlEq8YWdUZraJh8P53jfb3MmBT7crN5ZmFY8fj4+/0LXS0wu/ZPNPoSc7+rVP/3v8Qn0HEjo
8nCEvXyP0oIS10jZKgpZIf8tuZc8oZ3a5YgSbYtVeHExJW6QRLEilFyxl90hRB35Eb6nd/Fs
Eg/3XWJqJr13PmpvsbfTbwha9IUHD2NB5BwC0IiyJZxpQXP8w9MLGKyIrSuZXpRU5YYXSRZk
29y/AzJo8f5yOCfkPg2krg+TfEi8H1IgfBuV8mQhaEiBCIkObBajxQzfKNhMWPJ5ib+t2yW8
8mIdG8n8h/XYWv7wUwhCUfOCoVNcJ49o5XwoVq8ZcDUAwNoDCe9K8z7Rq7NOIENWuomWO9yZ
FaBRsifUEg0kng7UUHmKYS4mAFXX7X5fwYkHIr2QdZrbfBJBJUlGA/cCVL3g99o04UPKHHuu
rTDaZPD2YjcP+Z3q/MANNmibTq1wrFCk0894PSojHhA50WvwppD/IRHcDPVaYCyuB/ePx5du
rHYJcccGb1jXUdApqPKkWyb3W5UW30d++W6MIO8mWFkVlYIqdyPrsziHCPeJcAIoM0neEZG6
5WI4WVTxCAbZ9eOLx245pGrJl1UUlJZ/QhtZQuLKwylacysSjKEdmETXVU450llPhXd8uYWB
5X5ZZAc40UVZmER+WW6viC4S3MKKRSWC1bqenMZ0UJRRCVfWOS8COzWL9n2WI5J/l3JS7Xe7
srRJm8KikNvRLNQbGcDwU7SrCnP0YQ1MB6SAKbkTRaRxsCi6NGh7X7TAVr3xqdmSPnIWXBH8
WnmGbJiogwvL0rLI4tjxCT0D0Qy6U+q7iupieM3ll2m2hxXqeHmyk0snO5RCaJwRcbmoxcFX
QCNoNw2/bS8skS7U8++4OzflKpoe2YgVbgctr9bxthuP20R7RiNLGyAWINqJBqQF1c3NQHz8
86a8Xlo2B/EwCmBiGysfh/zhBwiHIsWn4c2/w9s1YA6OCHkk9ZMN/ly5xrtUFWAHgYSr9V4s
VfArt2njbR2fg01Q2GjM6A9r4ERl3HExdAhxf8hQepWlusqqb8A6LrnC+wIOlqAUMFIxRvoG
pSq5TxF6nVYRrljJkGI9ku4I6+qdjtXJ5uSSkn1vUXomwSCJCIIIEWMEaUzHEMcILIn2PMYJ
zMKqY8gg39chZ2jKk8eZPPmA6Xc2Apx0kuOmmaEgd/UU41PTTa+wxumhe3VusckFhPfPkk4X
bPi2TKLO9NTwxb7+vLcdHf2zacepKd+zarxIpfQrIlzjdrB6CVuFeOojDJWniwjcYuB70Uta
UqzN/Yl162B5vslAOgoTSQK4LgmIWcDjTLJ9XoSc7lLtAn29GM6n/YuuJQmFuf8CJmxAzAOr
QbiWrPypW6po8gmpcIt6JLVgyTk2wl9+C9Sz/MZnm+pvG92wy7VaWJcfO7CJP6rmsa/LjzAM
ntieZA5IbeQNCJJPNBzpWuO+DCPCP4VsYIE/ow2U3v31M/ow1wE/3YZroGJ9Buw0YHyf8Wxx
6tTVChkyKv3tDCCdU6QRTLqf2aCJ358G2NMjLZ3sO4eRKgf36Xy89ZefJfPZtG97QuCzfoZU
Suho7FtPjeHKkY+sD8HjllI7E9fvUAtah1fInqzMXk/6CYiTTMxS6ALlZI3HhNJwTKBUzpR+
PKgcooN5KXSs2E+9zYRi68NrqDmVqzAsVJsN5atT0emFjsgxxgonbmG52aYhL/bjusqmMzo6
W19XRY7AzQr2THwjHasAFPXT74fX0/HBWZM0LLIoRGs36LbNdpnuwijBDQ4hw0K7pTsn3If6
2c1EpYuVfhhhdqIWngVZmfv1NYA6nUtLrvJA5RCDAKlTHyervLBDercc1Y1coNsB2RHtQB10
wQ7b0LAFr6Y6UpIqtO8YTIykTne9SYJswlWcr/2oJA5SN5ipfnr1Y/D+enevbPrdDSoI26BO
HltuUCpBqmz2Ur528ofWYRVzqebnFfnyHr6qknXRoAvyqtZHDXbYQdlgibJgZbSvg1w8IfXU
7hVn24sCPqWfNDVoCQs2+6zj/GujLYsoXFvnaz2SVcH5LW+hLcPQPZRzGHJtpMf81FTVBV9H
dhC5bOWVux0OV7hHYzOaOjIF/MYRBTbKknPDf+R/u7Gmslxj2D8rsZEa4jZRaQt1ksjvI8t6
b9XTHKZyY+a5TW0iIsJRQixMKmWhuu+W/095gFvC5ZwDCn5l6sZb0E+Sj78PA33E2jEzAkkZ
HKLbhsqdWTjMcMfgcqzkckbBcCfwJVbhFe20FnxfjiuXrdZF1Z6VJe7PWE66n0xUw5mI9rJz
OFEYLMGDbRGVmPolUaaVfQlSF7Q1e81OqQpdpE4y8hr49zJ0dFX4TSJDzKulWgTXtBXJyZYw
QkX7mwbtadB6JcYULAu6wBq0LHVP2g1sSvAZbKByUMGVouQ1OZMNcrEFVT6VeBWSTtjB7syl
B2dCTh6+a9rm+AoiEkcrvFtpFPdM1mpMTzL0D5U/vOlqKAlCyPqUr8uqpQ7anWOrAmmcK4BH
duQmCHYDPpc3PtzuH0+D4iYHIzw1ApgZdC+tRJqVctKsKwq/INIFKgpOW7piPp4pqfkO3Ack
kZDM0o55dL3NSufoVgVVyksVt05xyZUXaccw4kJCa/wfrEi9edAAmpSuV0lZ7fCLRg3DdHBV
q3NbA6lsV8JlQLrMKQJZy9ljgSeW1UFg0R2ayfWK2Y3+vt3STamk9jAq5ElSyT+937eYLP7B
bmQfszjOftgTZyFHUpcgQmG3SHtJEGrE5xATLqcuyx2y01Lh3f3jwQtOqVgmevjV2Bo9/FMK
1X+Fu1Cdf+3x156zIrsE+ySxm7fhqgMy7eB16xdPmfhrxcq/0tJrt6H90jvtEiG/wVd312Bb
X5u4ykEWcpBLvk8nFxg8yiBIreDl92/Ht9NiMbv8c/TNmkgLdVuu8IcnaYmwOyNq4CPV6vjb
4ePhNPiJzYCKoOBOgSq68sVxG7hLlLOp/40uriP2VOEWDY6pMOGmyN6cqjBXodIzefRkRadu
qYLFYcExY8AVL5y03t5TizLJ3fGpgjPijMahpKTNdi0Z39JupS5Sg7BVO527mjshK5vLxnW0
ZmkZBd5X+o/HmPgq2rHCLJXR97sr2zQdiUAdPnI6Su7mx84Klq45fXaysAe2omFcnWcUdEN/
KEEqXj8BXvb0ddnTnT7BrUesCAqWoBxAXG+Z2Di0VpfoY74jP7pgzdF76lUqnNSoRARu2GhF
NUYiGQXxWhnDrC/5+z+gqL1BuI2jJdqp+JZ4Xtci4KdO2/ZtP/xWlPirrgZjegWMZ6myUt/i
hoQGlydLHoYce4zTrljB1gmXkovWzKDS7xNLDOiR75MolayFEvCTnm2Q07DrdD/thc5paIE0
apirKDM72rf+DWdRDAonkFDhaaM1ilzTBozbmw3e9Kt4m+BLmIvp+Et4QDQoootmjbF/Erqp
BbwaGoRvD4efv+/eD986fQp0bO6+bkP0+D645E44ed+IHSk/9XDJIqOIQ4r3kG/HO0YM0Dug
4Lf9rkn9du5GdIl/5trAqY8ufqARvTVyNfJam1b2NU1q+K6Ua7Nt6UGUTmddYynsmO/tL578
9ir1TgbYAlNvp6LQRH/99q/D6/Ph9/+cXn9980YM3yXRumC+puciGUOHbHzJLdmoyLKySj3r
+ApeS/A6Np7U/dDVq5FAPuIxIHlVYPxPdhMimkm9M7NM1zBX/k+9WlZbdSaK9mzcpoWdkkb/
rtb2TqvLlgyM7CxNuWPBqKG0chjwfEOe4hEFyEJGSzfEVrjMPSlZFZyRIjVOj0ksje0NFFsM
xFISLLDRMiqpZTiLacMuCPcDF4nw/3KQFoRrqoeEXzd6SF9q7gsdXxCetB4SbjDwkL7SccIf
0UPC5R8P6StTQEQB9JAIN1Ib6ZIIneAifWWBL4nX+y4SEdrG7TjhjwhIkciA4CtC9bWrGY2/
0m2JRRMBE0GEXU7YPRn5O8wA6OkwGDTNGIzzE0FTi8GgF9hg0PvJYNCr1kzD+cEQvh8OCj2c
qyxaVMTdpQHjqguAExaAfMtwG6rBCLjUgvDnPC1KWvJtgSsqDVKRyWP8XGM3RRTHZ5pbM34W
peCEO4PBiOS4WIprRg1Ouo1wI7wzfecGVW6Lq0hsSBzSahXGuLi6TSPYq6g1y7kk02HEDvcf
r+BTdXqBmDqWBeuK31iHKPxS8jgr7e2rigt+veWi1uhwCZsXIpJyrlT75BeQ1JgwOtRV4raj
YiurCGmE2u7fhyIBVbipMtkhJTZSns61yBgmXKh3z2UR4RaGGtOSvOoSV6ppaqxF//5m5SRj
WeQ2bMflP0XIUzlGuH8Ac3LFYik3Ms+410FDW1xlhbqiENm2IIKBQ1qYKFDVJJKsdHqb/u6L
hAp136CUWZLdELYLg8PynMk2zzQGiXhywoGrQbphCX6V3vaZreB1u/9Cp9ualNCzHymEUUFW
qLkLtJeiKaxEtE6Z3PCYAbjFAqcEZ5NFROf5DuuDMXe3RMwsZUH2+/s3CKr1cPr38x+fd093
f/w+3T28HJ//eLv7eZD1HB/+OD6/H34BV/immcSV0sEGj3evDwflp9oyizr31NPp9XNwfD5C
9Jjjf+7qCF9GMQiUVRbuSCqwtUZpZGmN8AuoLLiq0ix1s0G2IEYkAlco4MkBm6AZO3HzZ5Dh
0QeJ26SxQsdkwPSUNNEVfc5qBrzPCq0lW7dhTNyk8izYN3kX82t4neAmiOwgQU0dLMUDM/MU
JHj9fHk/De5Pr4fB6XXwePj9ogK8Ochy9tZO/k+neNwt5yxEC7uoy/gqiPKNfVXqQ7ofSWrZ
oIVd1MK+HW7LUMSuncl0newJo3p/leddbFloXXDWNcCh2UXtpK51y50HFjVoi79PcT9saEM9
MuhUv16NxotkG3cA6TbGC7Ge5Oov3Rf1B6GQbbmRZ7R9h1tDiBy8NVRESbcynq6jFG6Q9VXc
xz+/j/d//uvwObhXFP/r9e7l8bND6IVgyHhC7LQ17QRBZ015EG6QUfCgCN08q/o16Mf7I0R2
uL97PzwM+LPqoOQIg38f3x8H7O3tdH9UoPDu/a7T4yBIOu2vVZnffLCR8hcbD/MsviHDHjWb
dR2JkRv9yZt0fh3tkJFvmOSiO8Nelio+49Ppwb2/Nj1aEhHia/AKe7dugGWBjbHEjEhN55bI
J3Hxo68T2Qr38GhIvX8Me+Ilj+EI/MZPnthZilCqCOUWF+bNyCCNUoewNndvj83ce/MkRbDO
4m0SFiDUvz8zxF3iRhY1MU8Ob+/ddotgMsYaUYDeidwDg+/jKUE5GobRqsvT1HHRXfiv7IMk
nPaw1HCGVJtEcg8ol7HeWSuScEREV7MwCKNbizH2Ayt0MCZjLNCL2cUbOzWg2RHREgCy6g6I
Lp6Nxh2CksWTbmEyQWZNalCcLzPC3FyfAutidNlLJD/ymRt4TjOd48uj89TVGifj3UNQl3VZ
oqiIu1+DkW6XUQ//Ue0VwRQZPhT3VS3lwR8rygxgdgBLeBxHuC7Q4Iiyl+ABYd4/hJALZASU
b0wNXnVEgg4r3LBbhqtXhkZYLFgfNZsTDqMvzvvr5kXuZXTroCS9S1Ty3pmXar2/gJo4T08v
EC3I1YjMnKqLUIQYqYv9GryY9m4T6t1AC9708i7/VYAOrXP3/HB6GqQfT/8cXk1IZmxULBVR
FeSYZB4WS3i8k25xCHFAaRjr3x0KKUAfWlgYnXb/jsqSFxyCD+Q3hNBdSSXobPsNoqhVhi8h
y0n6Eh4oV/TIoG+Vm0PcQH5g88l3Ul0odpKbVAEXvWQNuOCqFTDidtzCE2zDirO11V6FZ0au
6pv1Ck6AwkrJE0FG/xoiHG/D6dkuBsHZhpO9qEIKje2ibSK3QC+7gVrSSNLdvgrSdDbb4y9N
7W7pem+js727Jox5Dgqkjz6/CMZPq2dfSSz9ercjCwBIhQHIt+iRslN2tz2VPM9ZEik/nENS
noOCnyUGhXeLjomJmyThYO5VtmJwvHUMMAaYb5dxjSO2SxdtPxteyo0FptUogIcu2rfEeetz
FYiF8roBONRC+p8A6gV4rQm4fcOrulAaNNSDmy+jNZiCc67fbSi/AOiZ925Cn1cQAvqnUlbf
Bj/Bz/H461kH8Lp/PNz/6/j8q+X4+vGKbZkvnOf6Xbj4/s16x1HD+b4Ep7J2xigjbJaGrLjx
28OxddXLmAVXcSRKHNm8df7CoOsQf/+83r1+Dl5PH+/HZ1vxKlgUzqv8ut0DpqRa8jSQR1tx
5SwbU64LyIIvJVPgco1sX0Zl+lfvWzGoibQihew0yG+qVaF87W3zko0S85SAphA2poxiVz7O
ijBCY9woCmJxt54cIgm5TlOq8/BsJvi/yo5lN24beO9X+NgCbZC4RmoE8IGSqF1lJVHWw2v7
IrjB1jAap0FsA/78zkNakRSHbg8GvJwRRQ7J4bxVNdfploNdWp17GGgozhUWo8X4yqZ06toU
9RS871VCAt0QE577sA0p/eAoNOm41iPTseiH0TEMgrrqvQK/563LXLRVEQIwBZ3cnAceZYgk
mBGKavfS5meMRPA4AlQIlUg9xWNptuokgdQ/Ke4Ok05D5iHW0+1cj6zo54X3m2lJ2Wsooayg
xwG0qs5MFac6hs6i5FM6geC3rMZ4rXZgpdvKIb1++1mw3Ql+XA47NVv4R8D1LTZblwP9Hq/P
P67aqB5As8Yt1MezVaNqq1Bbvx2qZAXo4NpY95ukn216T60CpZe5jZtbu3CYBUgAcBqElLe2
i8ICXN8K+EZotygxcxvbATrPRbWtumEmYt/fnUkL4FrETAHBZrCU5mln0HMTpqqNDifDdsfj
UoPuOXb0/d0ReOum33owBGAJCfSl+vkKCFNYA6EfP54ltmMMITD1UlF465a0lAC37HQ/NIRs
mi4AB721JZeljEJ+JQTnpp3STN7CckrbHVEQCgvVxMaLODN4RDNdbsc27gvTl4lLhFY79Ce6
8D0QgKS0MmyjPPx19/L1GcuzPj/cv/zz8nTyyF69ux+HuxP8/s4nS3uFhzEafaySGzgDF7+f
riAdmv0YavN3G4wJARjGuhHYuNOV4LZ2kYLJloiiShDrMGb24nx5lrYT1rIS8nG7Tcnnxbrr
mmFsXTpe2nd6aZzsBPwdY8l1ifkOVvfl7dgra0mxlmFjbHdT1RScArHcR3lm7R1TZJRMD8KL
dWSHtDtFecaROElQmhnDVdZZbGRu3ei+Lypt8sxmALmpsTJfg+fdni62B/NTEf/89dzr4fzV
ljY6LPJirJl2cMKZ1FaABc4gSFGrQrQndrpu+Vkqp9bvPx6+Pf/NNZIfD0/368geyhzdjUgE
RyLl5hS/uRw0o3CIPQhumxIk0PLoTv1DxLgcCt1fnB3XeVJiVj2cLaNIMCx7GkqmSxXWaLKb
WlVFMIR5IplIhqNV7uHr4bfnh8dJxH8i1C/c/sMi2vJOfBeZWQLE0TV5XasB46AwL9zaF62q
NKXoXpy+Pzt3V76BSwnLtFRSnUmVUccqGG/CQ3JDjbbwiMYPvNRw3ZShlADTwNIjfynqsvDz
hrlL0LUoEL8qukr1acgv46PQDEdTlzce098rOBdMhMZQRnPnE2dqX48DrpoUaKfVDjnruMq1
mvW3/7qcx52osOIt6Ih2NVqr8Rgdwut68f71QwgLlKjC1n940JwY4Ldi4uB8M03BJdnhz5f7
ez67lmIIJwQ0Yvz2qRDHwh0iIrHyIA51A9e+YIgkMJC9M7WkQfNbWpOpXq2kQg/LJJ91KrhC
u3JIZjQhTgsxUDgKMVri6BNhQT4rYS+s98kMiQyR44iGTrqaGSsYUrXILoxTtP2gyvUoJoB4
UGGQWLpgin/yl5P3NwqKIhloIDvVqdq78RYAiFBw3W5srxeHXzF0pYU50OXZ4+AIEBjP9AAS
9eL9T37Y1LKzVzTcpeZq9XroC5rHnrNkHDUQ8WPLusXSxCv3NL7/BL/R+PKdWcH27tu9w847
k/dog0DhOfAheus1CBy3WOeuV114i+0vgc0BE8x8D+exYk14PPaBrIGtAD814XoYDhyjvgbg
Si6QpJqhp+WYJwl3USYLgwSdHAfuM6vT6HXJp0nXGd92kQXCUe20buJsBrQGXbkGcza4YXzJ
cTed/Pz0/eEbxpw8/Xry+PJ8eD3AP4fnL+/evftlEXCorAj1uyHRai3VNa25OpYPCQ6L+kAq
xHgjmql6fS24RqcNCjPHziIob3ey3zMSsEqz98OD/VHtOy2IE4xAU5NvDkYCfRoFrK6EpXuj
L6Qxeb4mETb8bnorHDKMf5Wvk2WiUXn4f+wKW96CPUssJvxqlF+ALONQozcZNjlboCKz3/G9
F7+14O9Kt4mxLbYBiE/YInrhNm/AhVRXBlJhmgLksAhO2gIJ6r7wvurIruB0CMsuAMB7LJfX
FzGkTWCh4EVI4uuRqZ1+8DoR1xGh+jJYRmn+hosz/tVZu5zEzjYgcLrrR3saZDU0mgiWWZjI
1vRNyRIIZT1Tpfsg9rwwo25bg4HSn1nIDiJPBVCiOGgBrdOb3oR8XbRH86FmOZ4I2npyxRG6
aVWzDePMulhOUL8DvtIrKucG6gw6EzwULFpCK42YpAl0HkY6Pci9LEB8QmDw+Wp/zLsDeoAt
RZsPn52iERaK7TKhOiO52MiV1Bmh/BahiNBkZj/E3CJnJMFgqQic7I2mNFiqX8QijQqjw+Od
cQULGc73AJakDjJke+Jbfe0Xp/Eow6YOziERknwmvC4VUlbY0QkYvVB1kBDIgJDLcDbDROFw
DstwSBFhDIOQK0JQtj/LcCwLlcNVLmO06GbpUfmMEFyKSSFokYUDHXgf7yKb/KqSpQOePMal
iFlFTMEmRn70ym7RVASMM8zcChAtYRUW56ncW160FVzeEUJxXaTIfGRL07QhKQlKTk2jTVmZ
yI4A3S9VsDGjL0FZSnDxzZ34CLNVQleIYXMyVrhHUt+Be+LHJaVrolNYf+ENtXOTOXZg/B3T
lYeEFEQseYi2JlU6CjNBA4/zU4tpO+A/0FyJuCMRdq+t64TT9CYM+230gUALFuZ0bQVsrumR
h/EFL31AoECliS5yuPuLLKw3cncsQiIBEHc0ed7pmNy2DzO1SSZHskwWmdg7NeZCibwai4l1
+FnpoGzkGZX/BTtiFGz0FQMA

--apmx5tii5yjliudf--
