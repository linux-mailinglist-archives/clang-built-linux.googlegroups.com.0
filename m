Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW6D2L7QKGQEC23TJCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3542EB15F
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 18:29:01 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id w3sf16853oov.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 09:29:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609867739; cv=pass;
        d=google.com; s=arc-20160816;
        b=vZBXu3cV94LY1+W4o6WfNUy0O9BU4J4FLDoKgQgLokh0XPrr4d/zVpfXGctsVTel7l
         e6H26tqQz8554vgKu4jpzT2fgBzjdkonFz6CBOMX85Sj+lwRtxVxgX8kxKwDyQ/UmklE
         qx3iSJdo0/swrAqNFA+o+5XVD9Wu4lJlvVgZUE0Z3wFGq8T2jWsbZBh9/3b9cD0MraOH
         7/19Iy8FqtI+p2LJFRIIw0MaE/SJWzJgzm2R/IvAuv7Jh7vaMFSuN1VyPMqt/kPDGnUi
         IinkC0ClHW9tnU/KORvR5qqbCYWq7gZlHR1oKQ0TP7FCgRPO+DMETjrCzxqSXl0erpBT
         Co1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=VQ+pfPZ9DJktUmnouap/k3LMPwe9r2jTMNM0w6e0bXY=;
        b=y4GFm6oCpFJsv7lGQEJn9sj64BLuieu090pEzsdcU99wp2iAe/sW+ucIOT4YgFWl6j
         kvpYar3eJG7+kpQFqYIxDcDrPby+ZuAnDLptkRC1fE/F0H0vO1ymlWsZceYYeh72uqpc
         YTFw14QXOtfYVc2MMDx2DLIpLMfAglUFeTFZY7/RfZSttMs0GM63rI4YCC8VzpQnqC0g
         zJUDiNp59B9g5tOwVz8eKWfzcHGHxN+8ToP8uTDuTuq0ag4Vh+rIlNTjKHOa/T80SOch
         +z/QpsdQcyuTnIyn90y/Ab7lx0Su+/akc3XtOIGR9p7+sDuavM/t0CI44RTkrxPsSo6o
         gyBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VQ+pfPZ9DJktUmnouap/k3LMPwe9r2jTMNM0w6e0bXY=;
        b=EpW0tt+e1fKIQn2RPCL45FaTrgf5dmYedQ3lmJPcvzLj/Vh5gG1X4RbVdgI826GBwF
         V9KvMuAwYVEb+qxX7d59vK/SScMUEA1MuxEr5aRH1EPZMJqufyiWOo0la89ybJy27x8L
         JceZURfzOJXA4BcFGBMdSXtRxlvBi4ENPq0qv1WVi50WC54XRQNwdVdhRvnqtu5X3Je7
         9DmeMfeWKtzQaoufiCYPQ+OWyzCIwH/t494LQ16XVG3dRpQvU1u+9LB9GskjvJs+kH4U
         sY7mGStRZ9kuwa48UpPJ/m3CdTZduVOQ3BQwBH82SOpPeecUXSxH0KWbtHxWd8ACsb4G
         rlLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VQ+pfPZ9DJktUmnouap/k3LMPwe9r2jTMNM0w6e0bXY=;
        b=A5JH1xQnDTTuPqboYZQssP82kvVglJV86cvzuefeWu1zwNUFnDPqLX4A9vKvTDgRuP
         X1bjxShPjlTBpcBSfujNGJt0LYZoyHPrlCEyrsaM1COGjtg7HQTxSSZR82pnvVdVRhMM
         qo5xADMOWn4j9PWWiFrzIsg/+C3P8ufSERw4nEDJuz5wgvgzUmVOm2mYW1np3KKmGSVo
         4OT8Md/H/pFhFV/UnQo29A7Ek+UhPSFoCnhThycjOvZNP3s6QWLNwE/rfJEDZbKXvMCQ
         EDKAmtgPKJxiO6oiYaVXTC5M8GB89SWYxksIry/lGZS91ci7iSSvhJjzwf2oE48BassJ
         hqmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533M33c2mHKhOtqT5MBrMIsxdVMxtDtxrs+A1Jf0kcNP+v3cPyrR
	HfxwBtCeKYWukCOzAEGsfPY=
X-Google-Smtp-Source: ABdhPJz3nGhmVkzUxhNdbd7SlVmFFkeMFWiV5fAZj3goi1IAvHYzFDVmGmdObZbkhP63MBtmWro8lA==
X-Received: by 2002:a05:6830:1d71:: with SMTP id l17mr360555oti.269.1609867739648;
        Tue, 05 Jan 2021 09:28:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e1d3:: with SMTP id n19ls6774oot.5.gmail; Tue, 05 Jan
 2021 09:28:59 -0800 (PST)
X-Received: by 2002:a4a:4f0f:: with SMTP id c15mr44400oob.75.1609867739073;
        Tue, 05 Jan 2021 09:28:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609867739; cv=none;
        d=google.com; s=arc-20160816;
        b=kzQ+B5u4VVL3eI10H9vmbEJ86is12VHzaPFXqrz6l8XvtA3BHg7mTJLqnCwkG1aytI
         A0yyrB8hAjhLGFd3gjryaZt5Qb9w8e9G1/EPQ139GGgCIkVvAP3PJGzad/w8l4gHSFL0
         fd7PIxLK8AI7uC29hx2OfCB7M8QLVSqu45PntfSdDQ/ICKdyJUhkBab0Tpl69joH3+x+
         PYi//refsKK6sWBawafW10R6muPBO+XT1C3blC3POG6NyUCE1UKxXD1baG5IrPpP7Is7
         M9NR4rZAYo0G+0VWaXLHkIGx4HpmZ20nzdLs5bB9u0ktztJvDK3vObGC+laDsOSTQNYs
         2gkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=u4ZLu3RNzMQOnjvX+U5xtIhcJUZIqqlGfgCwns8x9C4=;
        b=OxCsz+Zg3p6NpaPY+j6CWVDRTiPfCK44pX9mkwkRmJAkIKxKzbGNGPu3whOGG7CFCn
         bUAseabMsM9u6tj8aqSK4ZWMfr1nIGGNSHeRM36/wnivXqao43wieXLcH78/cWSaCXjt
         PmBJ7f+vI+HZRWFgeJzU/vU1UKFDkzG0XpMZyrFu+H2QUs/PF6QjNkEixCLpEPtDp8+V
         2EiFV8fEpwfeHzAhfOxb9i+PkdE27Vf2EObJ1bqVMcThTgwvyQOffNo6riwR4o7eoG2i
         zUVp3saI3GBP3KM0/1CIbSoJMVuUaxmVmRmfTZWg+CWa9J4IBUqfL06xmeNGcwqRyRN1
         69aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id v23si68418otn.0.2021.01.05.09.28.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 09:28:58 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: lf7Vcu6P1ytsaPt01SIOQcQUsWjfzRwl5M1QBml1kVWookp/2OGcpdK1LMj0USsWUdQx97CYQn
 zQBL/tYKAOfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="177299217"
X-IronPort-AV: E=Sophos;i="5.78,477,1599548400"; 
   d="gz'50?scan'50,208,50";a="177299217"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2021 09:28:57 -0800
IronPort-SDR: XjVrVLOW/9K7VKEuuVGIsl4BtzgrjFPgRb6/Ei7Z4FI77CYMa7lqFciiO3ZrPgQnpvbIFU9IYF
 09efxu7J3CCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,477,1599548400"; 
   d="gz'50?scan'50,208,50";a="349937443"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 05 Jan 2021 09:28:54 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kwq8c-0008I7-5e; Tue, 05 Jan 2021 17:28:54 +0000
Date: Wed, 6 Jan 2021 01:28:00 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	bhelgaas@google.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	devspam@moreofthesa.me.uk, linux-pci@vger.kernel.org,
	dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/4] PCI: add a REBAR size quirk for Sapphire RX 5600 XT
 Pulse.
Message-ID: <202101060135.iyLcESHb-lkp@intel.com>
References: <20210105134404.1545-5-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
In-Reply-To: <20210105134404.1545-5-christian.koenig@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Christian,

I love your patch! Perhaps something to improve:

[auto build test WARNING on pci/next]
[also build test WARNING on linus/master v5.11-rc2 next-20210104]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Christian-K-nig/pci-export-pci_rebar_get_possible_sizes/20210105-224446
base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
config: arm64-randconfig-r006-20210105 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/6838a45fc2394ec88455e1fb3998ac865a077168
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Christian-K-nig/pci-export-pci_rebar_get_possible_sizes/20210105-224446
        git checkout 6838a45fc2394ec88455e1fb3998ac865a077168
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/pci/pci.c:3611:7: warning: equality comparison result unused [-Wunused-comparison]
                   cap == 0x7f00;
                   ~~~~^~~~~~~~~
   drivers/pci/pci.c:3611:7: note: use '=' to turn this equality comparison into an assignment
                   cap == 0x7f00;
                       ^~
                       =
   1 warning generated.


vim +3611 drivers/pci/pci.c

  3587	
  3588	/**
  3589	 * pci_rebar_get_possible_sizes - get possible sizes for BAR
  3590	 * @pdev: PCI device
  3591	 * @bar: BAR to query
  3592	 *
  3593	 * Get the possible sizes of a resizable BAR as bitmask defined in the spec
  3594	 * (bit 0=1MB, bit 19=512GB). Returns 0 if BAR isn't resizable.
  3595	 */
  3596	u32 pci_rebar_get_possible_sizes(struct pci_dev *pdev, int bar)
  3597	{
  3598		int pos;
  3599		u32 cap;
  3600	
  3601		pos = pci_rebar_find_pos(pdev, bar);
  3602		if (pos < 0)
  3603			return 0;
  3604	
  3605		pci_read_config_dword(pdev, pos + PCI_REBAR_CAP, &cap);
  3606		cap = (cap & PCI_REBAR_CAP_SIZES) >> 4;
  3607	
  3608		/* Sapphire RX 5600 XT Pulse has an invalid cap dword for BAR 0 */
  3609		if (pdev->vendor == PCI_VENDOR_ID_ATI && pdev->device == 0x731f &&
  3610		    bar == 0 && cap == 0x700)
> 3611			cap == 0x7f00;
  3612	
  3613		return cap;
  3614	}
  3615	EXPORT_SYMBOL(pci_rebar_get_possible_sizes);
  3616	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101060135.iyLcESHb-lkp%40intel.com.

--+QahgC5+KEYLbs62
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
A9TlubHrEgIA

--+QahgC5+KEYLbs62--
