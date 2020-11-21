Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTWC4H6QKGQENWHSF7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A12C2BBB25
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 01:37:35 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id k196sf13807146ybf.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 16:37:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605919054; cv=pass;
        d=google.com; s=arc-20160816;
        b=UDUdmN9B0wAcegdOr2CDhvl14bqNdtaCXfvjeWYyxl1W/Aac7K6IoLn86WW3oYX7T9
         k9luYMXXXLisMNITzwzmMtzS8RjO5+Rcq7mKYiJDUJS3h4OreXLbJQLbjJEjcnWnplCw
         IzFtzJ77auJsuQHzaIJDgG9RRhnfdus+uK4neyOngN2mq1ezb5192HQyGBvsCYUNEALo
         5Cm4DD6s9qOth2nijoX/PVGnPVAqR2LrnH+BfEF3Mt8J9+VksJXy5sm9lOKicJzJ01Jn
         XRHt7nVvlgJXm/WjhEY1muG9yS4sD1/w7695wvlLl4CqAPV41UsAa54t5EYgGqFiU8Ch
         4GfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=rYOevjc5mJq1NCkWTU85RYifts/zNv7jJ9x7K0sL6bU=;
        b=plJleT2OajI7AK10lg/wVrzAFNVkEdeuColl4/Wo3ck4T8SgZPyDkmgsIckg5CZf1a
         zhYi+vY+0u6OE1pJ/lqboEUUQ1dQ3RifopYDd6rUwZmteAPYLBen176XFxgi0mOAE/4t
         qOsVW/WMPAUzavuT7ExeGfP2tAsPcfRXDaRCQJuk3kdTp0qQseDjXlFisosVQJxKnNAK
         KlIN5hgjWvDkKBrdQA3BKP11hucNIPwb4XxveRWGkUNqGcgtSN3PfbvZ2sD+iV4cu2B9
         cw3rnH0ILjLpUduiDN19sVynTq+q9UgM3Cj5JGWq7lgv9lHo21vHqPQXhDvC0SXAu/+0
         NZQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rYOevjc5mJq1NCkWTU85RYifts/zNv7jJ9x7K0sL6bU=;
        b=Vx6P4XxrvgD0FSwrIAm1bL12w0TKYozfRZmMHZGVeH+fqSToLyygnIURiwmDLH3ib1
         r9nqqUvsHreAB3EAUDGW8vB0OWFnJ9FHmI9J1vWGon73vsxWzVRlFrv/3gKqBKTXlTPb
         C1wOUcS6KlWkll0c6rerQCfC9SURvgi1mIalI1BgIMob1LHTz6ebzWgCdWd0zTYTjcCQ
         Gbpq2WQNl4N/q1pLa48BNx2jyVetGXSnXUAjoTnLcWh2SnBOcmDdc0S2yuASLdOaXIgD
         +D/Hhg7Y5pSe3HegffYJueVf2GsjSGxEThbsrdMAzWQ+HSZoChFffp/6W9aUpbgQEVuy
         2bcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rYOevjc5mJq1NCkWTU85RYifts/zNv7jJ9x7K0sL6bU=;
        b=fgd/sSi5+SENp+VS2YOL2vUUAE9xxUnunFFFp0WNv0uzPGOavD8GQMUHC+5dB6ji6b
         hWGDyTe2krb4AKIJIkW7ReYjxqQHNAHlLeHXtbgTMADKajWRqMbr8EQR/hhXyRvgSpzh
         /N6R3RWWI1bW5qYdQP662WscMZ8tjiKqOyuKW/GZB7ZgrbNYFaHgjtgAhtK5qMC1r3eX
         QdfRM7YuWuFyGnRHMkhNMVm/5KWN9hU7Htuaz/mVYOHYWsKnDiq5Cb5ssi3ZqrqreQRD
         IBFe2y6MWCM+nNj/R+GWv+E6nWoi09AcGUWrUawrbkU6hwm6nwqmNDaqv+mmIgIyQquM
         UMRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339daKRho4lOxvZLBgQtlCEtBqtUf2j+MB1TKSKijyqkfqUQyGx
	KDCGnK61qN3baGzrWOXRcFw=
X-Google-Smtp-Source: ABdhPJyoyeA4sW/n/SbEcKfCA9brpHugTJvE8aP5XN5OWqWMIstFGBIVeNh54qMP3bvM49burrjAbw==
X-Received: by 2002:a25:8b89:: with SMTP id j9mr20894660ybl.302.1605919054328;
        Fri, 20 Nov 2020 16:37:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:610b:: with SMTP id v11ls4161503ybb.3.gmail; Fri, 20 Nov
 2020 16:37:33 -0800 (PST)
X-Received: by 2002:a25:4946:: with SMTP id w67mr39877881yba.143.1605919053649;
        Fri, 20 Nov 2020 16:37:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605919053; cv=none;
        d=google.com; s=arc-20160816;
        b=i2K1IURG0Mu56imhaamaHN+0oHMaUOx+SLg5u8ERoGksu9C75aGet7bxi6FDouB5NA
         tr35BqYqnDFIxdl9gYXqCCVO3ptGliojOThMnXerlErYaVOKXF7/GvKl+dHZssQpNNxK
         FaqMaz3tZTssktThu1CBzjmrGzqb6VtC1jenKFX+zBliUJPoU+1239gleImeN12zbJNY
         IIj3xFPkcOgW3gmdaKvrw/cmsdCGE2Ng5wNR1wrw3U6MpZzIsLUXHmCdKNckodewHvwF
         aHJUmP363dj/ckR5RhNjSzo+iWeSVETevQccDpvmK8MgyILsrRNkvwEonAd5UGvFvS+D
         4G3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=6mGEXz23T7dTj8EWdyyxL2ya/1KINIpfei4IlNjRZkA=;
        b=C62GmxZn4gNsqHlgJGiu/CWp+ZcjhH/Pb6aDqVRs1JrZnKDQwvxo3bsFCi+q2McNuV
         onZ79mxaFbWRoeR0LHu9kAjbnp2sF+naoPkWl2ZknymJYVdyVThvnCkGzORkKK0xJZJV
         AYUJKQsBfGsQFqRNSvl3+IMm1BSq8L3kRRVynuvCaRhaqQPdmrnbj5PQLmzO6hozJQO7
         fHwosdplGJ3qPNBM3hgKKeGNUBKjHH4pyqfoPfC8d5cB0eepJVfJK7K7ONxn3nUFi+F4
         bmI0NYhuwnZOll7oTmmOr3KxSHd3z40xQb/7dSK0qletS/sAXmu6FxEey1XQZ8o2l5pY
         SrcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id m3si511755ybf.1.2020.11.20.16.37.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 16:37:33 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: JzyuBnCqP3TVn188T57xuhieuW27BFffznyQ/0QpXWt4x4bKf2hq8thtQKsRJJdywO7ZaDUY1Y
 MTRMTPXiziYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="158603473"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; 
   d="gz'50?scan'50,208,50";a="158603473"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2020 16:37:31 -0800
IronPort-SDR: LbQnR6/KmqZz9QFg3mgsdLyVeA+1wsfFpCgQafFLWTGUUuT/Cas5DJAxaynUyBM4xR8oFXXDY1
 1iQeWeSaOnDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; 
   d="gz'50?scan'50,208,50";a="342223924"
Received: from lkp-server01.sh.intel.com (HELO 00bc34107a07) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 20 Nov 2020 16:37:27 -0800
Received: from kbuild by 00bc34107a07 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kgGu6-00008O-OI; Sat, 21 Nov 2020 00:37:26 +0000
Date: Sat, 21 Nov 2020 08:36:27 +0800
From: kernel test robot <lkp@intel.com>
To: Casey Schaufler <casey@schaufler-ca.com>, casey.schaufler@intel.com,
	jmorris@namei.org, linux-security-module@vger.kernel.org,
	selinux@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	casey@schaufler-ca.com, linux-audit@redhat.com,
	keescook@chromium.org, john.johansen@canonical.com,
	penguin-kernel@i-love.sakura.ne.jp, paul@paul-moore.com
Subject: Re: [PATCH v23 19/23] audit: add support for non-syscall auxiliary
 records
Message-ID: <202011210807.nc2aEN7W-lkp@intel.com>
References: <20201120201507.11993-20-casey@schaufler-ca.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201120201507.11993-20-casey@schaufler-ca.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Casey,

I love your patch! Perhaps something to improve:

[auto build test WARNING on nf/master]
[also build test WARNING on linus/master v5.10-rc4 next-20201120]
[cannot apply to nf-next/master security/next-testing]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Casey-Schaufler/LSM-Module=
-stacking-for-AppArmor/20201121-044616
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pablo/nf.git master
config: x86_64-randconfig-a011-20201120 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3ded92=
7cf80ac519f9f9c4664fef08787f7c537d)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/3b464b0251cffe5ac73c81b70=
1fd8d146664a7a3
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Casey-Schaufler/LSM-Module-stackin=
g-for-AppArmor/20201121-044616
        git checkout 3b464b0251cffe5ac73c81b701fd8d146664a7a3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c:68=
:
   In file included from include/net/xfrm.h:15:
   include/linux/audit.h:563:1: error: expected external declaration
   +static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   ^
>> drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c:6693:30: warning: shift =
count >=3D width of type [-Wshift-count-overflow]
           if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(64))) {
                                       ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MA=
SK'
   #define DMA_BIT_MASK(n) (((n) =3D=3D 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c:6695:43: warning: shift =
count >=3D width of type [-Wshift-count-overflow]
                   err =3D pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(6=
4));
                                                           ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MA=
SK'
   #define DMA_BIT_MASK(n) (((n) =3D=3D 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 1 error generated.

vim +6693 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c

76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6606 =20
1dd06ae8db716e1 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Greg Kroah-=
Hartman   2012-12-06  6607  static int init_one(struct pci_dev *pdev, const=
 struct pci_device_id *ent)
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6608  {
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6609  	struct net_device *netdev;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6610  	struct adapter *adapter;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6611  	static int adap_idx =3D 1;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6612  	int s_qpp, qpp, num_seg;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6613  	struct port_info *pi;
c8f44affb7244f2 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Micha=C5=82=
 Miros=C5=82aw      2011-11-15  6614  	bool highdma =3D false;
d86bd29e0b31f30 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-08-04  6615  	enum chip_type chip;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6616  	void __iomem *regs;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6617  	int func, chip_ver;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6618  	u16 device_id;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6619  	int i, err;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6620  	u32 whoami;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6621 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6622  	err =3D pci_request_regions(pdev, KBUILD_MODNA=
ME);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6623  	if (err) {
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6624  		/* Just info, some other driver may have clai=
med the device. */
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6625  		dev_info(&pdev->dev, "cannot obtain PCI resou=
rces\n");
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6626  		return err;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6627  	}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6628 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6629  	err =3D pci_enable_device(pdev);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6630  	if (err) {
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6631  		dev_err(&pdev->dev, "cannot enable PCI device=
\n");
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6632  		goto out_release_regions;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6633  	}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6634 =20
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6635  	regs =3D pci_ioremap_bar(pdev, 0);
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6636  	if (!regs) {
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6637  		dev_err(&pdev->dev, "cannot map device regist=
ers\n");
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6638  		err =3D -ENOMEM;
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6639  		goto out_disable_device;
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6640  	}
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6641 =20
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6642  	adapter =3D kzalloc(sizeof(*adapter), GFP_KERN=
EL);
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6643  	if (!adapter) {
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6644  		err =3D -ENOMEM;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6645  		goto out_unmap_bar0;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6646  	}
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6647 =20
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6648  	adapter->regs =3D regs;
8203b509c5b7aab drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-10-09  6649  	err =3D t4_wait_dev_ready(regs);
8203b509c5b7aab drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-10-09  6650  	if (err < 0)
e729452ec333042 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Christophe =
JAILLET   2018-02-06  6651  		goto out_free_adapter;
8203b509c5b7aab drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-10-09  6652 =20
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6653  	/* We control everything through one PF */
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6654  	whoami =3D t4_read_reg(adapter, PL_WHOAMI_A);
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6655  	pci_read_config_word(pdev, PCI_DEVICE_ID, &dev=
ice_id);
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6656  	chip =3D t4_get_chip_type(adapter, CHELSIO_PCI=
_ID_VER(device_id));
286183147666fb7 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Dan Carpent=
er        2019-09-25  6657  	if ((int)chip < 0) {
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6658  		dev_err(&pdev->dev, "Device %d is not support=
ed\n", device_id);
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6659  		err =3D chip;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6660  		goto out_free_adapter;
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6661  	}
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6662  	chip_ver =3D CHELSIO_CHIP_VERSION(chip);
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6663  	func =3D chip_ver <=3D CHELSIO_T5 ?
d86bd29e0b31f30 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-08-04  6664  	       SOURCEPF_G(whoami) : T6_SOURCEPF_G(whoa=
mi);
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6665 =20
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6666  	adapter->pdev =3D pdev;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6667  	adapter->pdev_dev =3D &pdev->dev;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6668  	adapter->name =3D pci_name(pdev);
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6669  	adapter->mbox =3D func;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6670  	adapter->pf =3D func;
016764de8b0d17e drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-03-07  6671  	adapter->params.chip =3D chip;
016764de8b0d17e drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-03-07  6672  	adapter->adap_idx =3D adap_idx;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6673  	adapter->msg_enable =3D DFLT_MSG_ENABLE;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6674  	adapter->mbox_log =3D kzalloc(sizeof(*adapter-=
>mbox_log) +
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6675  				    (sizeof(struct mbox_cmd) *
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6676  				     T4_OS_LOG_MBOX_CMDS),
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6677  				    GFP_KERNEL);
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6678  	if (!adapter->mbox_log) {
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6679  		err =3D -ENOMEM;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6680  		goto out_free_adapter;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6681  	}
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6682  	spin_lock_init(&adapter->mbox_lock);
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6683  	INIT_LIST_HEAD(&adapter->mlist.list);
aca06eafd09f48c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-09  6684  	adapter->mbox_log->size =3D T4_OS_LOG_MBOX_CMD=
S;
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6685  	pci_set_drvdata(pdev, adapter);
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6686 =20
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6687  	if (func !=3D ent->driver_data) {
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6688  		pci_disable_device(pdev);
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6689  		pci_save_state(pdev);        /* to restore SR=
-IOV later */
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6690  		return 0;
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6691  	}
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6692 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01 @6693  	if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(64)))=
 {
c8f44affb7244f2 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Micha=C5=82=
 Miros=C5=82aw      2011-11-15  6694  		highdma =3D true;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6695  		err =3D pci_set_consistent_dma_mask(pdev, DMA=
_BIT_MASK(64));
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6696  		if (err) {
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6697  			dev_err(&pdev->dev, "unable to obtain 64-bit=
 DMA for "
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6698  				"coherent allocations\n");
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6699  			goto out_free_adapter;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6700  		}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6701  	} else {
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6702  		err =3D pci_set_dma_mask(pdev, DMA_BIT_MASK(3=
2));
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6703  		if (err) {
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6704  			dev_err(&pdev->dev, "no usable DMA configura=
tion\n");
baf5086840ab181 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-16  6705  			goto out_free_adapter;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6706  		}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6707  	}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6708 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6709  	pci_enable_pcie_error_reporting(pdev);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6710  	pci_set_master(pdev);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6711  	pci_save_state(pdev);
7829451c695e5b7 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2016-08-11  6712  	adap_idx++;
29aaee65bc28cc7 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-08-20  6713  	adapter->workq =3D create_singlethread_workque=
ue("cxgb4");
29aaee65bc28cc7 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-08-20  6714  	if (!adapter->workq) {
29aaee65bc28cc7 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-08-20  6715  		err =3D -ENOMEM;
29aaee65bc28cc7 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-08-20  6716  		goto out_free_adapter;
29aaee65bc28cc7 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-08-20  6717  	}
29aaee65bc28cc7 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-08-20  6718 =20
144be3d9f72fca5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Gavin Shan =
          2014-01-23  6719  	/* PCI device has been enabled */
80f61f19e542aed drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2019-03-04  6720  	adapter->flags |=3D CXGB4_DEV_ENABLED;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6721  	memset(adapter->chan_map, 0xff, sizeof(adapter=
->chan_map));
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6722 =20
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6723  	/* If possible, we use PCIe Relaxed Ordering A=
ttribute to deliver
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6724  	 * Ingress Packet Data to Free List Buffers in=
 order to allow for
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6725  	 * chipset performance optimizations between t=
he Root Complex and
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6726  	 * Memory Controllers.  (Messages to the assoc=
iated Ingress Queue
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6727  	 * notifying new Packet Placement in the Free =
Lists Buffers will be
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6728  	 * send without the Relaxed Ordering Attribute=
 thus guaranteeing that
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6729  	 * all preceding PCIe Transaction Layer Packet=
s will be processed
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6730  	 * first.)  But some Root Complexes have vario=
us issues with Upstream
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6731  	 * Transaction Layer Packets with the Relaxed =
Ordering Attribute set.
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6732  	 * The PCIe devices which under the Root Compl=
exes will be cleared the
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6733  	 * Relaxed Ordering bit in the configuration s=
pace, So we check our
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6734  	 * PCIe configuration space to see if it's fla=
gged with advice against
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6735  	 * using Relaxed Ordering.
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6736  	 */
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6737  	if (!pcie_relaxed_ordering_enabled(pdev))
80f61f19e542aed drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2019-03-04  6738  		adapter->flags |=3D CXGB4_ROOT_NO_RELAXED_ORD=
ERING;
b0ba9d5fded9590 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2017-08-15  6739 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6740  	spin_lock_init(&adapter->stats_lock);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6741  	spin_lock_init(&adapter->tid_release_lock);
e327c225c911529 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-10-29  6742  	spin_lock_init(&adapter->win0_lock);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6743 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6744  	INIT_WORK(&adapter->tid_release_task, process_=
tid_release_list);
881806bc155c0d5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Vipul Pandy=
a         2012-05-18  6745  	INIT_WORK(&adapter->db_full_task, process_db_f=
ull);
881806bc155c0d5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Vipul Pandy=
a         2012-05-18  6746  	INIT_WORK(&adapter->db_drop_task, process_db_d=
rop);
8b7372c101a5f9f drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-03-16  6747  	INIT_WORK(&adapter->fatal_err_notify_task, not=
ify_fatal_err);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6748 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6749  	err =3D t4_prep_adapter(adapter);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6750  	if (err)
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6751  		goto out_free_adapter;
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6752 =20
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6753  	if (is_kdump_kernel()) {
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6754  		/* Collect hardware state and append to /proc=
/vmcore */
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6755  		err =3D cxgb4_cudbg_vmcore_add_dump(adapter);
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6756  		if (err) {
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6757  			dev_warn(adapter->pdev_dev,
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6758  				 "Fail collecting vmcore device dump, err: =
%d. Continuing\n",
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6759  				 err);
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6760  			err =3D 0;
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6761  		}
1dde532dd0520a9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2018-05-02  6762  	}
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6763 =20
d14807dd8e7eaa4 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2013-12-03  6764  	if (!is_t4(adapter->params.chip)) {
f612b815d75b054 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-01-05  6765  		s_qpp =3D (QUEUESPERPAGEPF0_S +
f612b815d75b054 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-01-05  6766  			(QUEUESPERPAGEPF1_S - QUEUESPERPAGEPF0_S) *
b261272276777f0 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-05-27  6767  			adapter->pf);
f612b815d75b054 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-01-05  6768  		qpp =3D 1 << QUEUESPERPAGEPF0_G(t4_read_reg(a=
dapter,
f612b815d75b054 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-01-05  6769  		      SGE_EGRESS_QUEUES_PER_PAGE_PF_A) >> s_q=
pp);
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6770  		num_seg =3D PAGE_SIZE / SEGMENT_SIZE;
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6771 =20
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6772  		/* Each segment size is 128B. Write coalescin=
g is enabled only
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6773  		 * when SGE_EGRESS_QUEUES_PER_PAGE_PF reg val=
ue for the
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6774  		 * queue is less no of segments that can be a=
ccommodated in
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6775  		 * a page size.
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6776  		 */
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6777  		if (qpp > num_seg) {
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6778  			dev_err(&pdev->dev,
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6779  				"Incorrect number of egress queues per page=
\n");
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6780  			err =3D -EINVAL;
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6781  			goto out_free_adapter;
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6782  		}
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6783  		adapter->bar2 =3D ioremap_wc(pci_resource_sta=
rt(pdev, 2),
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6784  		pci_resource_len(pdev, 2));
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6785  		if (!adapter->bar2) {
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6786  			dev_err(&pdev->dev, "cannot map device bar2 =
region\n");
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6787  			err =3D -ENOMEM;
d6ce2628f32271c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2014-09-16  6788  			goto out_free_adapter;
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6789  		}
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6790  	}
22adfe0a85ca380 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Santosh Ras=
tapur     2013-03-14  6791 =20
636f9d371f70f22 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Vipul Pandy=
a         2012-09-26  6792  	setup_memwin(adapter);
86e8f2988786cb7 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Vishal Kulk=
arni      2019-11-05  6793  	err =3D adap_init0(adapter, 0);
5b377d114f2b9ce drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-05-27  6794  #ifdef CONFIG_DEBUG_FS
5b377d114f2b9ce drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-05-27  6795  	bitmap_zero(adapter->sge.blocked_fl, adapter->=
sge.egr_sz);
5b377d114f2b9ce drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-05-27  6796  #endif
636f9d371f70f22 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Vipul Pandy=
a         2012-09-26  6797  	setup_memwin_rdma(adapter);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6798  	if (err)
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6799  		goto out_unmap_bar;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6800 =20
2a485cf7db2815c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-09-08  6801  	/* configure SGE_STAT_CFG_A to read WC stats *=
/
2a485cf7db2815c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-09-08  6802  	if (!is_t4(adapter->params.chip))
676d6a753066e9b drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-12-23  6803  		t4_write_reg(adapter, SGE_STAT_CFG_A, STATSOU=
RCE_T5_V(7) |
676d6a753066e9b drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-12-23  6804  			     (is_t5(adapter->params.chip) ? STATMODE=
_V(0) :
676d6a753066e9b drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-12-23  6805  			      T6_STATMODE_V(0)));
2a485cf7db2815c drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-09-08  6806 =20
b539ea60f5043b9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2018-11-20  6807  	/* Initialize hash mac addr list */
b539ea60f5043b9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2018-11-20  6808  	INIT_LIST_HEAD(&adapter->mac_hlist);
b539ea60f5043b9 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2018-11-20  6809 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6810  	for_each_port(adapter, i) {
ab0367ea42217d4 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2019-11-07  6811  		/* For supporting MQPRIO Offload, need some e=
xtra
ab0367ea42217d4 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2019-11-07  6812  		 * queues for each ETHOFLD TIDs. Keep it equa=
l to
ab0367ea42217d4 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2019-11-07  6813  		 * MAX_ATIDs for now. Once we connect to firm=
ware
ab0367ea42217d4 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2019-11-07  6814  		 * later and query the EOTID params, we'll co=
me to
ab0367ea42217d4 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2019-11-07  6815  		 * know the actual # of EOTIDs supported.
ab0367ea42217d4 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2019-11-07  6816  		 */
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6817  		netdev =3D alloc_etherdev_mq(sizeof(struct po=
rt_info),
ab0367ea42217d4 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2019-11-07  6818  					   MAX_ETH_QSETS + MAX_ATIDS);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6819  		if (!netdev) {
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6820  			err =3D -ENOMEM;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6821  			goto out_free_dev;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6822  		}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6823 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6824  		SET_NETDEV_DEV(netdev, &pdev->dev);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6825 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6826  		adapter->port[i] =3D netdev;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6827  		pi =3D netdev_priv(netdev);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6828  		pi->adapter =3D adapter;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6829  		pi->xact_addr_filt =3D -1;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6830  		pi->port_id =3D i;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6831  		netdev->irq =3D pdev->irq;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6832 =20
2ed28baa7076083 drivers/net/cxgb4/cxgb4_main.c                  Micha=C5=82=
 Miros=C5=82aw      2011-04-16  6833  		netdev->hw_features =3D NETIF_F_SG =
| TSO_FLAGS |
2ed28baa7076083 drivers/net/cxgb4/cxgb4_main.c                  Micha=C5=82=
 Miros=C5=82aw      2011-04-16  6834  			NETIF_F_IP_CSUM | NETIF_F_IPV6_CSU=
M |
012475e3c59cbe4 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2019-02-28  6835  			NETIF_F_RXCSUM | NETIF_F_RXHASH | NETIF_F_GR=
O |
d8931847488d250 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2016-09-20  6836  			NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CT=
AG_RX |
c8729cac2a11e4b drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Vishal Kulk=
arni      2020-06-19  6837  			NETIF_F_HW_TC | NETIF_F_NTUPLE;
d0a1299c6bf7d80 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-10  6838 =20
e8d452923ae6cdc drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-24  6839  		if (chip_ver > CHELSIO_T5) {
c50ae55e41ee226 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-11  6840  			netdev->hw_enc_features |=3D NETIF_F_IP_CSUM=
 |
c50ae55e41ee226 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-11  6841  						   NETIF_F_IPV6_CSUM |
c50ae55e41ee226 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-11  6842  						   NETIF_F_RXCSUM |
c50ae55e41ee226 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-11  6843  						   NETIF_F_GSO_UDP_TUNNEL |
64f40cdd07e19b5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2019-02-28  6844  						   NETIF_F_GSO_UDP_TUNNEL_CSUM |
c50ae55e41ee226 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-11  6845  						   NETIF_F_TSO | NETIF_F_TSO6;
c50ae55e41ee226 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-11  6846 =20
1435d9970378999 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Atul Gupta =
          2019-01-17  6847  			netdev->hw_features |=3D NETIF_F_GSO_UDP_TUN=
NEL |
64f40cdd07e19b5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2019-02-28  6848  					       NETIF_F_GSO_UDP_TUNNEL_CSUM |
1435d9970378999 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Atul Gupta =
          2019-01-17  6849  					       NETIF_F_HW_TLS_RECORD;
ad166a8ec26521a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Jakub Kicin=
ski       2020-07-14  6850 =20
ad166a8ec26521a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Jakub Kicin=
ski       2020-07-14  6851  			if (adapter->rawf_cnt)
ad166a8ec26521a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Jakub Kicin=
ski       2020-07-14  6852  				netdev->udp_tunnel_nic_info =3D &cxgb_udp_t=
unnels;
c50ae55e41ee226 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-05-11  6853  		}
d0a1299c6bf7d80 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-01-10  6854 =20
c8f44affb7244f2 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Micha=C5=82=
 Miros=C5=82aw      2011-11-15  6855  		if (highdma)
c8f44affb7244f2 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Micha=C5=82=
 Miros=C5=82aw      2011-11-15  6856  			netdev->hw_features |=3D NETIF_F_H=
IGHDMA;
c8f44affb7244f2 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Micha=C5=82=
 Miros=C5=82aw      2011-11-15  6857  		netdev->features |=3D netdev->hw_fe=
atures;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6858  		netdev->vlan_features =3D netdev->features & =
VLAN_FEAT;
a8c16e8ed624f24 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rohit Mahes=
hwari     2020-09-10  6859  #if IS_ENABLED(CONFIG_CHELSIO_TLS_DEVICE)
a3ac249a1ab5755 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rohit Mahes=
hwari     2020-06-01  6860  		if (pi->adapter->params.crypto & FW_CAPS_CONF=
IG_TLS_HW) {
a3ac249a1ab5755 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rohit Mahes=
hwari     2020-06-01  6861  			netdev->hw_features |=3D NETIF_F_HW_TLS_TX;
a3ac249a1ab5755 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rohit Mahes=
hwari     2020-06-01  6862  			netdev->tlsdev_ops =3D &cxgb4_ktls_ops;
a3ac249a1ab5755 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rohit Mahes=
hwari     2020-06-01  6863  			/* initialize the refcount */
a3ac249a1ab5755 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rohit Mahes=
hwari     2020-06-01  6864  			refcount_set(&pi->adapter->chcr_ktls.ktls_re=
fcount, 0);
a3ac249a1ab5755 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rohit Mahes=
hwari     2020-06-01  6865  		}
76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6866  #endif /* CONFIG_CHELSIO_TLS_DEVICE */
76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6867  #if IS_ENABLED(CONFIG_CHELSIO_IPSEC_INLINE)
76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6868  		if (pi->adapter->params.crypto & FW_CAPS_CONF=
IG_IPSEC_INLINE) {
76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6869  			netdev->hw_enc_features |=3D NETIF_F_HW_ESP;
76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6870  			netdev->features |=3D NETIF_F_HW_ESP;
76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6871  			netdev->xfrmdev_ops =3D &cxgb4_xfrmdev_ops;
76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6872  		}
76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6873  #endif /* CONFIG_CHELSIO_IPSEC_INLINE */
76f919ebffe2f66 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ayush Sawal=
          2020-09-09  6874 =20
01789349ee52e4a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Jiri Pirko =
          2011-08-16  6875  		netdev->priv_flags |=3D IFF_UNICAST_FLT;
01789349ee52e4a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Jiri Pirko =
          2011-08-16  6876 =20
d894be57ca92c8a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Jarod Wilso=
n         2016-10-20  6877  		/* MTU range: 81 - 9600 */
a047fbae23e1d94 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2017-10-03  6878  		netdev->min_mtu =3D 81;              /* accom=
modate SACK */
d894be57ca92c8a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Jarod Wilso=
n         2016-10-20  6879  		netdev->max_mtu =3D MAX_MTU;
d894be57ca92c8a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Jarod Wilso=
n         2016-10-20  6880 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6881  		netdev->netdev_ops =3D &cxgb4_netdev_ops;
688848b1493a0a5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-06-19  6882  #ifdef CONFIG_CHELSIO_T4_DCB
688848b1493a0a5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-06-19  6883  		netdev->dcbnl_ops =3D &cxgb4_dcb_ops;
688848b1493a0a5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-06-19  6884  		cxgb4_dcb_state_init(netdev);
ebddd97afb89cb1 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Ganesh Goud=
ar        2018-08-10  6885  		cxgb4_dcb_version_init(netdev);
688848b1493a0a5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Anish Bhatt=
          2014-06-19  6886  #endif
812034f11628aaa drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-04-06  6887  		cxgb4_set_ethtool_ops(netdev);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6888  	}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6889 =20
ad75b7d32f2517a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2017-10-13  6890  	cxgb4_init_ethtool_dump(adapter);
ad75b7d32f2517a drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Rahul Lakki=
reddy     2017-10-13  6891 =20
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6892  	pci_set_drvdata(pdev, adapter);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6893 =20
80f61f19e542aed drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2019-03-04  6894  	if (adapter->flags & CXGB4_FW_OK) {
060e0c752b5047e drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-08-02  6895  		err =3D t4_port_init(adapter, func, func, 0);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6896  		if (err)
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6897  			goto out_free_dev;
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6898  	} else if (adapter->params.nports =3D=3D 1) {
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6899  		/* If we don't have a connection to the firmw=
are -- possibly
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6900  		 * because of an error -- grab the raw VPD pa=
rameters so we
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6901  		 * can set the proper MAC Address on the debu=
g network
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6902  		 * interface that we've created.
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6903  		 */
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6904  		u8 hw_addr[ETH_ALEN];
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6905  		u8 *na =3D adapter->params.vpd.na;
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6906 =20
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6907  		err =3D t4_get_raw_vpd_params(adapter, &adapt=
er->params.vpd);
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6908  		if (!err) {
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6909  			for (i =3D 0; i < ETH_ALEN; i++)
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6910  				hw_addr[i] =3D (hex2val(na[2 * i + 0]) * 16=
 +
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6911  					      hex2val(na[2 * i + 1]));
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6912  			t4_set_hw_addr(adapter, 0, hw_addr);
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6913  		}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6914  	}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6915 =20
80f61f19e542aed drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Arjun Vynip=
adath     2019-03-04  6916  	if (!(adapter->flags & CXGB4_FW_OK))
0eaec62a91ed9d5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2018-07-04  6917  		goto fw_attach_fail;
0eaec62a91ed9d5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2018-07-04  6918 =20
098ef6c28a956ba drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-06-05  6919  	/* Configure queues and allocate tables now, t=
hey can be needed as
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6920  	 * soon as the first register_netdev completes=
.
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6921  	 */
0eaec62a91ed9d5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2018-07-04  6922  	err =3D cfg_queues(adapter);
0eaec62a91ed9d5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2018-07-04  6923  	if (err)
0eaec62a91ed9d5 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Casey Leedo=
m         2018-07-04  6924  		goto out_free_dev;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6925 =20
3bdb376e6944134 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Kumar Sangh=
vi        2017-10-18  6926  	adapter->smt =3D t4_init_smt();
3bdb376e6944134 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Kumar Sangh=
vi        2017-10-18  6927  	if (!adapter->smt) {
3bdb376e6944134 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Kumar Sangh=
vi        2017-10-18  6928  		/* We tolerate a lack of SMT, giving up some =
functionality */
3bdb376e6944134 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Kumar Sangh=
vi        2017-10-18  6929  		dev_warn(&pdev->dev, "could not allocate SMT,=
 continuing\n");
3bdb376e6944134 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Kumar Sangh=
vi        2017-10-18  6930  	}
3bdb376e6944134 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Kumar Sangh=
vi        2017-10-18  6931 =20
5be9ed8d49754c2 drivers/net/ethernet/chelsio/cxgb4/cxgb4_main.c Hariprasad =
Shenai    2015-07-07  6932  	adapter->l2t =3D t4_init_l2t(adapter->l2t_star=
t, adapter->l2t_end);
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6933  	if (!adapter->l2t) {
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6934  		/* We tolerate a lack of L2T, giving up some =
functionality */
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6935  		dev_warn(&pdev->dev, "could not allocate L2T,=
 continuing\n");
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6936  		adapter->params.offload =3D 0;
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6937  	}
b8ff05a9c3237f6 drivers/net/cxgb4/cxgb4_main.c                  Dimitris Mi=
chailidis 2010-04-01  6938 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202011210807.nc2aEN7W-lkp%40intel.com.

--FCuugMFkClbJLl1L
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
La8x/wc8jC1FvJkCAA==

--FCuugMFkClbJLl1L--
