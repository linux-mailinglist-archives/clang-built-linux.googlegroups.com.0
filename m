Return-Path: <clang-built-linux+bncBD747RFBYUPBBLWBT33QKGQE5CJVFGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 559381F9D38
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 18:24:15 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id m10sf8267632oog.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 09:24:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592238254; cv=pass;
        d=google.com; s=arc-20160816;
        b=0IxhTWmj1WkWn+3wYxaW47nkmxqROCpvW+J9F20GfPCKFXT2/ybMvLiK19kpYz4P69
         M6HLu0tmmaV7wblbMGMk2p2VMooK7I2jTapRhxDBcMn2q+88iaDGacJ0l4jXnfAgEhj8
         lWfmBX0p5p56kka8M9HYRMHWszX8anD7h/xuUvBQUJCLz4Pe50s9yjiGBC6l1JjUeGRr
         AT5JWHwXphJ7J+2qGVIG+OBiSW6Br03p+OTrmiakJbfDUqEiLLHG4pHVNeSCrCkQC7SL
         hXZDV64rcHhoZNAfTSK2Gy+WtzQD021za3H1SfmJHtUG2M7zkOoR2rjCoL0ErqsxdTE4
         uBHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:cms-type
         :content-language:thread-index:mime-version:message-id:date:subject
         :in-reply-to:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=jwpCc+AM0/cELdCsPBN7OY+cXeTadomZ8CEnUXJ5fmU=;
        b=RWw/+6V/2OTsZm4NtEDnwjJ2WNcTJd1G+5ix0tfZN8aJQWWRZaOULUq4eFeso3JOTW
         DQgvrLQax43cksv6wusmpNWMW0WLJLbAQJ+Zg7ZrMgu2aPB8q0PiixPm4K9LyijX1GU5
         52GfQmP8/tbJzInjMh2kYn6ADfS3lb8osJio8FQ6Su0isdx9FLWKDO+GCofvB693lBo3
         w2toRTDEiGVDLo2NibOlMLswqIfVxtvniOgPmYX7Ve8mqbYf0M5ZYCtEiE3I8EcLFKz6
         L2kMnmPM3smP5cr3mcoJgmRP8Q9Z3JJEtTJxEogeK3J+Or+P1CSyMIGjLF50U+e5HpwX
         7eZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=nk+CrK+q;
       spf=pass (google.com: domain of alim.akhtar@samsung.com designates 203.254.224.34 as permitted sender) smtp.mailfrom=alim.akhtar@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:in-reply-to:subject:date:message-id
         :mime-version:thread-index:content-language:cms-type:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwpCc+AM0/cELdCsPBN7OY+cXeTadomZ8CEnUXJ5fmU=;
        b=gwHEL5QV91c7Xwu6T1OpNjf/8if+3OCE8A2Vzhrrt3hvcYrWUwwOdd/bUMdv637gG7
         jvsPnUtWKSeSqKBafxaap7QwChWOgC36XmknGjwDJeMuGIQCCmxp7TGKLBQ2UagCTREN
         NyPK78pOgZ6ormcrS31hZFM9qrSEnB3fJ2qM5hES638kDDR8ihIBQ1wzjPzDxTPRzLs4
         HNHdBALggWkGwbvhAr+/tNRyX74z7jVdNtGtcNasddzrvpo1dKux2OtzpnABrexLFL5D
         UrRwEJhJFRZSW4o7DyCo0/MiJJby4gBrqtrauhkrYWPwPKc/UP/T4qiU2I+46C1shiJm
         hYRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:in-reply-to
         :subject:date:message-id:mime-version:thread-index:content-language
         :cms-type:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwpCc+AM0/cELdCsPBN7OY+cXeTadomZ8CEnUXJ5fmU=;
        b=K1q8CUNaYJk9uM25i2eDqvXhQoZDRvY2Yq+roLfta7CljOYpSgf4XdhuQLkRacqHw9
         jbPOpINOPGz0mTqUGjq0FkukJYcPg2zUcpEdVDoyJkOyEl/3fP2crsPHQKcHNyCSfOxp
         bz+J3BbF/4QhjHMmSc2QnwXwhGEce36dM974LtrKFRqy358t7bH4AwppEDpuDH3mneoC
         zLeXOjzM8Y7KIvwrXd4LSSqULMXkArJPrm9/FMdInWIhlIs3JXw8WVjNLrt49siuQ6DL
         Gk12T0DOY+z9xTvPieIIhkf79Ef1BdUCt7v5EOsnZGAf5SCoqPOhozzZ0MeRQuREUCo7
         8OiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IM0kWq6J/+j5NUFLKjttvFPhMsTmW1BXON7PYf24vj9X6+5zv
	8s7zp8S1agx/l92v0SJ1nLs=
X-Google-Smtp-Source: ABdhPJzIxd1xijQJ67mHgv2LUrfPUmOfBVk0dvuC0Z1s0S18GJM5LpzmO1WT8TVeVoRHEBW1gg3y6A==
X-Received: by 2002:aca:849:: with SMTP id 70mr63906oii.153.1592238254289;
        Mon, 15 Jun 2020 09:24:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:308c:: with SMTP id w134ls781347oiw.8.gmail; Mon, 15 Jun
 2020 09:24:14 -0700 (PDT)
X-Received: by 2002:a05:6808:2d0:: with SMTP id a16mr131997oid.52.1592238254006;
        Mon, 15 Jun 2020 09:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592238254; cv=none;
        d=google.com; s=arc-20160816;
        b=DFLxYi5awxMBxEotfzPYyq5/v//VKUFJ/kVLHrxOURhd+OP0VgMRUwhZQ0yaXUGAyX
         fvUhuK7kIWbyGVWn89QZAmpu4mC4qUnHwxuxUpYXtUcDS42kpsmFZpz5t2q3nGVFX+nx
         I5NmRmefaAC31aAVZjLsgClOmEusySuD2lrWhat/Idtz9GgW/am0MoqDcXhUjXrGaJkg
         vo1WAwBw/cQKTXFf+KgOhM9+q+9ho7fTG/iIppu9vW1jjj80lW6c7n5qu0xS+wsjA+ZC
         hJhYM1CFMHyddTPXhYsgZ8uR5ifkQ/tLtSWt/1vAGmEef8lZa/KRFzvvs6KOZznZlTjS
         13Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:cms-type:content-language:thread-index
         :content-transfer-encoding:mime-version:message-id:date:subject
         :in-reply-to:cc:to:from:dkim-signature:dkim-filter;
        bh=BEyEvCjpVeZ0zAtPUpZTgBK+qidw68l28PlKRvrd7jk=;
        b=Boi817aqJSZk/Yn6xr8N9MzU0KYPUMn2QNED9L0LuOllBVXPCWr1SfytZMPXdtJlRn
         TWVuSGPUaf+LkNVO8FT7OKHHDkp5c+lHl3cwydXXlWQ9NL1weQlUW9V0dE/FOZNiMDiy
         /8ikJrl8rfAhAfwTmeTiiUWr/UrwE0j0NEu3Dk5bcetB20N9xopdUPaNEAuVndyf9odU
         29iLThaML0xZeGFMxVL9wHa9ZrbGKqZAu53hNhZuvmpkkNlFq631WLfQrXwk0LV8WYzI
         e/8dCoocZK6rc2/uwUP81Itu1HAoCTA9g/rA9cvunO1ApNZ6sfwI1dAvRhV1Lim1Mibh
         nGTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=nk+CrK+q;
       spf=pass (google.com: domain of alim.akhtar@samsung.com designates 203.254.224.34 as permitted sender) smtp.mailfrom=alim.akhtar@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout4.samsung.com (mailout4.samsung.com. [203.254.224.34])
        by gmr-mx.google.com with ESMTPS id h13si1446198otk.1.2020.06.15.09.24.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 09:24:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of alim.akhtar@samsung.com designates 203.254.224.34 as permitted sender) client-ip=203.254.224.34;
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20200615162410epoutp04aba934edc449cf309e6a4057a233204f~YxECsPjp80764407644epoutp04U
	for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 16:24:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20200615162410epoutp04aba934edc449cf309e6a4057a233204f~YxECsPjp80764407644epoutp04U
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTP id
	20200615162409epcas5p1076dad5980246b4ed9585b73bdd7d4d6~YxECOMLhF0740907409epcas5p1h;
	Mon, 15 Jun 2020 16:24:09 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
	epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
	47.26.09475.9A0A7EE5; Tue, 16 Jun 2020 01:24:09 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20200615162408epcas5p3c8bfc7f248fa72fd01156d39851e628d~YxEBRa4iD0964309643epcas5p30;
	Mon, 15 Jun 2020 16:24:08 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20200615162408epsmtrp1a573006830526845280bb8711ad00873~YxEBQlGE12292522925epsmtrp1F;
	Mon, 15 Jun 2020 16:24:08 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-c3-5ee7a0a9c69e
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	9E.2E.08382.8A0A7EE5; Tue, 16 Jun 2020 01:24:08 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20200615162405epsmtip19e7d7fb67d9663b3e7591a2ca5be9e08~YxD_UUEA-2560325603epsmtip1s;
	Mon, 15 Jun 2020 16:24:05 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: <kishon@ti.com>
Cc: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<devicetree@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<krzk@kernel.org>, <avri.altman@wdc.com>, <martin.petersen@oracle.com>,
	<kwmad.kim@samsung.com>, <stanley.chu@mediatek.com>, <cang@codeaurora.org>,
	<linux-samsung-soc@vger.kernel.org>, "'kernel test robot'" <lkp@intel.com>
In-Reply-To: <202006131334.EEnoEaXS%lkp@intel.com>
Subject: RE: [RESEND PATCH v10 07/10] phy: samsung-ufs: add UFS PHY driver
 for samsung SoC
Date: Mon, 15 Jun 2020 21:54:03 +0530
Message-ID: <000101d64331$65230260$2f690720$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJxKJl1qzUofIPujdEacJl88XyIuwGkdPiqAy1Y4e2nfYD4sA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNKsWRmVeSWpSXmKPExsWy7bCmuu7KBc/jDK6c1bJ4+fMqm8Wn9ctY
	LR68mc1mMf/IOVaLs93XGC0uPO1hszh/fgO7xc0tR1ksZpzfx2TRfX0Hm8Wr5kdsFsuP/2Oy
	WLr1JqMDr8flvl4mjz0TT7J5LN7zkslj06pONo/u2f9YPFpO7mfx+Pj0FotH35ZVjB7Hb2xn
	8vi8Sc6j/UA3UwB3FJdNSmpOZllqkb5dAlfGm7sLWAo6eSp2nnnF1MC4jKuLkYNDQsBE4t9d
	6y5GLg4hgd2MEt0nZjBCOJ8YJW5vPssM4XxjlNi1YD9LFyMnWMfVKW+hEnsZJS41b2eDcN4w
	Spw82cEMUsUmoCuxY3EbG4gtIiAssXnfW7AiZoHnTBLTnr5jAklwChhJvNrdwgpiCwvESOxs
	fAzWzCKgKtH4bT2YzStgKXGv8QWULShxcuYTsDOYBeQltr+dwwxxkoLEz6fLWCGWOUmc3L2G
	DaJGXOLozx6wUyUEvnBILP24jh2iwUXi+9wfUP8IS7w6vgUqLiXxsr+NHRIy2RI9u4whwjUS
	S+cdgyq3lzhwZQ4LSAmzgKbE+l36EKv4JHp/P2GC6OSV6GgTgqhWlWh+dxWqU1piYnc3K4Tt
	IbHp3jb2CYyKs5A8NgvJY7OQPDALYdkCRpZVjJKpBcW56anFpgXGeanlesWJucWleel6yfm5
	mxjB6U/Lewfjowcf9A4xMnEwHmKU4GBWEuE9JP88Tog3JbGyKrUoP76oNCe1+BCjNAeLkjiv
	0o8zcUIC6YklqdmpqQWpRTBZJg5OqQamQyffFsQIMrx4+vho23v5KzqOzB6vztp1fVlZLxl0
	X/Nve0nRfpUilyL3fzumKBbHqWVOvlNvXX6bXWLv5tP27tdfnncq6ujiYY1bN2WGgI/Kef0c
	Ycm96XcPs2RzHapYv+bg7G/lCfNnywuqGuqEu6UvjDY4MPexhqnah03KBtd23/S7FRFx3jss
	d0pTAsM0ifA10ze2dwZovvRdv7WUJ/pdfdIhM72ij3MEW/1u/6+relC/NH3h+lP2V1R6jLss
	/q0SWFJ4XjevaIGXyabcn0/FkkP7uZrvm8y+JCVbInAywcPv04I92eJ+t09ZG7ef+PdR8fq3
	0zUpxr55Obuqn72r+dGuucr2WGryd0YlluKMREMt5qLiRAALl04q7gMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPIsWRmVeSWpSXmKPExsWy7bCSnO6KBc/jDDp3aFm8/HmVzeLT+mWs
	Fg/ezGazmH/kHKvF2e5rjBYXnvawWZw/v4Hd4uaWoywWM87vY7Lovr6DzeJV8yM2i+XH/zFZ
	LN16k9GB1+NyXy+Tx56JJ9k8Fu95yeSxaVUnm0f37H8sHi0n97N4fHx6i8Wjb8sqRo/jN7Yz
	eXzeJOfRfqCbKYA7issmJTUnsyy1SN8ugSvjzd0FLAWdPBU7z7xiamBcxtXFyMkhIWAicXXK
	W+YuRi4OIYHdjBIHXrxggkhIS1zfOIEdwhaWWPnvOTtE0StGid3LnzKCJNgEdCV2LG5jA7FF
	gIo273vLBlLELPCVSWLisr+MEB1bGCXaPuxiBqniFDCSeLW7hRXEFhaIkmib+xFsHYuAqkTj
	t/VgNbwClhL3Gl9A2YISJ2c+Yeli5ACaqifRthFsMbOAvMT2t3OYIa5TkPj5dBkrxBFOEid3
	r2GDqBGXOPqzh3kCo/AsJJNmIUyahWTSLCQdCxhZVjFKphYU56bnFhsWGOallusVJ+YWl+al
	6yXn525iBMexluYOxu2rPugdYmTiYDzEKMHBrCTCe0j+eZwQb0piZVVqUX58UWlOavEhRmkO
	FiVx3huFC+OEBNITS1KzU1MLUotgskwcnFINTOfqeOY/EUhj+jbdVCjr3OQvTyP/5pelzf26
	oVdz61H37Ovf2w/n89zlNm/+IRe280v6n8S+LV4bbh9LPcS3IbPT+yTL2T9lJTP/9F2W2dN9
	WbuHZ5/46i8zPyuIPbh5+EOC+ZbT0nLWF7bPSC/Z7Hq77oJFnHkK0+szgt5Juow79aa5LShm
	+MWg2rfO4GNqccrxzQef2779upQ/+8KNCT4zP/TGr9WNTJni7Lixsv/XqdaF3NO+BIlM65rP
	nup7Pv+pyJmtO25vSNLV365/48N83fCTdzcqRP/OWq17/gLHg2114l9ffV3z++veyyd3bhfb
	vylJeYPax8vvN52dfa7pWFbC3VkvFcsPB+hpd1nvUmIpzkg01GIuKk4EAJd1RTVSAwAA
X-CMS-MailID: 20200615162408epcas5p3c8bfc7f248fa72fd01156d39851e628d
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613052521epcas5p140d979df19fae20c858c485409596a7a
References: <20200613024706.27975-8-alim.akhtar@samsung.com>
	<CGME20200613052521epcas5p140d979df19fae20c858c485409596a7a@epcas5p1.samsung.com>
	<202006131334.EEnoEaXS%lkp@intel.com>
X-Original-Sender: alim.akhtar@samsung.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=nk+CrK+q;       spf=pass
 (google.com: domain of alim.akhtar@samsung.com designates 203.254.224.34 as
 permitted sender) smtp.mailfrom=alim.akhtar@samsung.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=samsung.com
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

Hi Kishon,

> -----Original Message-----
> From: kernel test robot <lkp@intel.com>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/phy/samsung/phy-samsung-ufs.c:47:5: warning: no previous
> >> prototype for function 'samsung_ufs_phy_wait_for_lock_acq'
> >> [-Wmissing-prototypes]
> int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy) ^
> drivers/phy/samsung/phy-samsung-ufs.c:47:1: note: declare 'static' if the
> function is not intended to be used outside of this translation unit int
> samsung_ufs_phy_wait_for_lock_acq(struct phy *phy) ^ static
> >> drivers/phy/samsung/phy-samsung-ufs.c:77:5: warning: no previous
> >> prototype for function 'samsung_ufs_phy_calibrate'
> >> [-Wmissing-prototypes]
> int samsung_ufs_phy_calibrate(struct phy *phy) ^
> drivers/phy/samsung/phy-samsung-ufs.c:77:1: note: declare 'static' if the
> function is not intended to be used outside of this translation unit int
> samsung_ufs_phy_calibrate(struct phy *phy) ^ static
> 2 warnings generated.
> 
Not sure, how to handle this here, is this something that you can take care
while applying this patch? Or
Shell in send another patch to fix this warning reported by test robot?
(Other patches in this series is already taken in respective tree)

> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://protect2.fireeye.com/url?k=9d5936bf-c0c2cadc-9d58bdf0-
> 0cc47a31cdbc-
> 6ed890c1e74d92a7&q=1&u=https%3A%2F%2Flists.01.org%2Fhyperkitty%2Flist
> %2Fkbuild-all%40lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000101d64331%2465230260%242f690720%24%40samsung.com.
