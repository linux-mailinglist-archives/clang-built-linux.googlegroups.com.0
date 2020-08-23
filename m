Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6OERP5AKGQETYAYJZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A513D24EFE7
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 23:41:15 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id x194sf4498261ooa.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 14:41:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598218874; cv=pass;
        d=google.com; s=arc-20160816;
        b=bNzv4p3ZmI5DAaG9FTLbphcrjtneh/DA3Svt7U1Ef8NOOFjUNzzwhn145GyInMDmy6
         2fT+fIiZsLd5OP+oYrUn3yOIN8eYqXj8wVv/lSq3zxqET4TwgRURCBBfqUhRZqul/D1l
         oLsyw3GiK/Ks40/Gq6YU4d1bTxL0zDuE77qzN+XFJHZ2lh8rg9JnopLcGQPiie6VE7+1
         nX4lwYyKMHoN7RUr+62UFCk/QBe8E7Guf/DMZ1jy01xyr87cG+w5kIZUMNGW+6+4AKue
         GbY79qp//RvrqtxBEY8vwaxPomMRxdPNoyHCcNO+NvwsMBiPshqLR5IQRGnNZKTWhTQp
         l6Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=msR32z1ZIgIXKbSmfxLBf97kDjuzCVQVBdFehBB7fzw=;
        b=ePQwyShqe+W8izuPNDEGhFtODG4IwCXe07qIIAzf+Ci4lco3I4L5KbSyH3IUAShgZK
         PKGgPtPAWiKmwEdsvjWppD9s+jyj7lmPyoqXsLI7wA6fvSqYJgNNZCRnhgNvCDhrS/ZS
         5/j31q4g9mlPYQ6hQPfEPAJ5eUXvuyMUvjb/7uogSbEdYyc/Bo5x16hBCf9aCMZIk+VO
         KMSnVE8EJXmANrbezZp36cVtoXD9WqwnkbgA2ZqHNO331HvNGr+wYb3A9J9S7b7Xo6VY
         m/q9XJRplpjPkVBkoVrQ7M78UpaBiOhiQcL68/rj/YYcEPER3UQ7T6unFQvC4NSVEZD4
         +NkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=msR32z1ZIgIXKbSmfxLBf97kDjuzCVQVBdFehBB7fzw=;
        b=pdiWIRBq82lNIEzCSQ/+2tU3Dnmbv+1Ub6pSIOdESg1P/RDM1ddLBzDN4dL2peps1w
         +KMHSzIJ8xO2N1c+lHhmh0uhN/mcceQ5FMnyh7710t2A2gx8vluax40yEsHoVBVMcL2O
         Wy2tkrC1sKQQODLitg4ctFPGFVeiGqvWNcb2n/5Szx2whdfTYEIK4g8ejvGcNPU0Fktt
         DIxAscPzJusANtYykF8tee4DUwfZ+2AwDgpGHC0HTVkxsGuugx5cHN/molacV794p6wJ
         3RHd6QEoXlOFSGM9CbhH1sECEFHLmBPN11yneYNZipEolAE6BtGeUMyvtn1YpjYUqFhN
         tQFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=msR32z1ZIgIXKbSmfxLBf97kDjuzCVQVBdFehBB7fzw=;
        b=lYUgQ9yx1bS+hZd/1TASQv7F7M35JZbUKolOxTQxoqW6GaSf7Usj/q8N4HLiwONxWR
         HDZclxqXC/dQ+hGFb7b37X7jaB0Xffkqt7pLlP5fz3to3XDgGaLCb2u0SlMXBp8Jvfuu
         Twl471TIbsiWmI+9a2l521G2SzwaGaffk3DzABS2hwaZldqhAlmzO198cJV8kymFXDdr
         HPEQZr89yrjPYXhm63a9C65duf8e2ZQ67/z4rAmcKzRvDrcQh2oDRhTs8txNTCrElZKV
         SwvUvWioKVlyXBnOhGeaNNBcelrSxYhV04KR3CBiN5E3VhONiV2kbneSmrIjV7OuWdkX
         5ExQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oa9U7PYyUpFeo7cXhsr5Dji72yNZhR8uwk8F20h1P0/vDLjoI
	ubEPvTXgqKGnTJ1dUjH/zo4=
X-Google-Smtp-Source: ABdhPJytJPCyiGTNxS083kCd5q4RnEu9Kb54IWuxFfT3s/nRcGy9u5RbqZiBZSRRq07w0g1UbcUduA==
X-Received: by 2002:a9d:7192:: with SMTP id o18mr1741707otj.277.1598218873168;
        Sun, 23 Aug 2020 14:41:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:cb18:: with SMTP id r24ls457666ooq.0.gmail; Sun, 23 Aug
 2020 14:41:12 -0700 (PDT)
X-Received: by 2002:a4a:2f4b:: with SMTP id p72mr1909927oop.39.1598218872675;
        Sun, 23 Aug 2020 14:41:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598218872; cv=none;
        d=google.com; s=arc-20160816;
        b=MvGLkVmRM1QYLDX3Du6AnCdXsQVoGPdLyB71WWdbdZD7IlXVEnpAZ5ybvGmmgvxRXy
         lyyOVUbmf9+Hp6Z96DeM3eCbS+lu7mmM09nGLeC2sTq1bFfisb5SvGMzKTat9jToCYdZ
         9LFlJziJGOBlE94s+/DDHTrP+2oLpHle6Gc79lx0/LLb0QjTFSav7fOuu9oJywrwghsO
         cNr1TsbjFFHV72VX6poSWX//r1loHCklfobweNyzWM2yTcuoUY/i76A/ryOR1oYnYWea
         Fbi0WscpD8Awju0MovN1Pz6Ta2hPN1MskiR8sGusBG15u/OTgmRzr8R13D1NDvHduYde
         0O0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=QidRy+yEAS14/fGp6O+rAbckYatpVV41Dd7p6wuR+Mk=;
        b=DuCWJxL58sP0UOL8LFs0RzmkDZDi50LP5mMEgHSOdM3zbk4TZTwHj6b8XIYkV9LRb7
         +97bbNam8BHu/cDHFmhOuNLslEreRav5v4e28MTxr56x39km5USESRXEtFVqItmPJGw9
         Bp7uMvJOcLky5gfqhlsF0GPeAe084ejzA1Sb+P96ueDBMblyjrF5AFb4Qte7E5MNcxQz
         XfxofUm72pFalzzYIQBGceBAFR7C/AmAE/I6R7O1t8px1A2H4nsGuZKc/Qwox+rFz1oP
         MInq9HAH8MjCrHFhYjkqbLU3/AydmYZ5Lc4B1r2L9o6eU2jXQ2awH25tFAQU+4LWPdjz
         50rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id j139si115968oib.1.2020.08.23.14.41.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 Aug 2020 14:41:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: EMgTO//q8Qj0F4MJbrRXjPhp3etBn5/d28paCUL4KNismKttpYaBR61FxNz1ZR8lMCMRwBkjje
 +xw7rueY81fQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="156868825"
X-IronPort-AV: E=Sophos;i="5.76,346,1592895600"; 
   d="gz'50?scan'50,208,50";a="156868825"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2020 14:41:10 -0700
IronPort-SDR: /G4Ko12igKd8BWEfW00I1PCa/0JLKlOgn0ffxp2UMAQJQh15D4UwrXdBDFtcJKZ3U7AM9bK/bk
 jQ6Tl1brvLcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,346,1592895600"; 
   d="gz'50?scan'50,208,50";a="442969029"
Received: from lkp-server01.sh.intel.com (HELO 91ed66e1ca04) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 23 Aug 2020 14:41:07 -0700
Received: from kbuild by 91ed66e1ca04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k9xjf-0002Gi-4H; Sun, 23 Aug 2020 21:41:07 +0000
Date: Mon, 24 Aug 2020 05:40:58 +0800
From: kernel test robot <lkp@intel.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Subject: drivers/scsi/bfa/bfad_bsg.c:2748:1: warning: stack frame size of
 2688 bytes in function 'bfad_iocmd_handler'
Message-ID: <202008240547.M0gTjLiH%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline
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


--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   cb95712138ec5e480db5160b41172bbc6f6494cc
commit: 3bbd8ef9f780749426d4e52be0dfa3f70656d92b scsi: bfa: Staticify all local functions
date:   4 weeks ago
config: x86_64-randconfig-r003-20200824 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca93be114d07ec3bf654add97d7872325281)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 3bbd8ef9f780749426d4e52be0dfa3f70656d92b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/scsi/bfa/bfad_bsg.c:2748:1: warning: stack frame size of 2688 bytes in function 'bfad_iocmd_handler' [-Wframe-larger-than=]
   bfad_iocmd_handler(struct bfad_s *bfad, unsigned int cmd, void *iocmd,
   ^
   1 warning generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3bbd8ef9f780749426d4e52be0dfa3f70656d92b
git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
git fetch --no-tags linus master
git checkout 3bbd8ef9f780749426d4e52be0dfa3f70656d92b
vim +/bfad_iocmd_handler +2748 drivers/scsi/bfa/bfad_bsg.c

e6826c96ced7ea Krishna Gudipati   2012-09-21  2746  
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2747  static int
b85daafe46eeb0 Krishna Gudipati   2011-06-13 @2748  bfad_iocmd_handler(struct bfad_s *bfad, unsigned int cmd, void *iocmd,
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2749  		unsigned int payload_len)
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2750  {
9afbcfab74d260 Krishna Gudipati   2011-07-20  2751  	int rc = -EINVAL;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2752  
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2753  	switch (cmd) {
601380669baa2b Krishna Gudipati   2011-06-24  2754  	case IOCMD_IOC_ENABLE:
601380669baa2b Krishna Gudipati   2011-06-24  2755  		rc = bfad_iocmd_ioc_enable(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2756  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2757  	case IOCMD_IOC_DISABLE:
601380669baa2b Krishna Gudipati   2011-06-24  2758  		rc = bfad_iocmd_ioc_disable(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2759  		break;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2760  	case IOCMD_IOC_GET_INFO:
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2761  		rc = bfad_iocmd_ioc_get_info(bfad, iocmd);
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2762  		break;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2763  	case IOCMD_IOC_GET_ATTR:
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2764  		rc = bfad_iocmd_ioc_get_attr(bfad, iocmd);
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2765  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2766  	case IOCMD_IOC_GET_STATS:
601380669baa2b Krishna Gudipati   2011-06-24  2767  		rc = bfad_iocmd_ioc_get_stats(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2768  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2769  	case IOCMD_IOC_GET_FWSTATS:
601380669baa2b Krishna Gudipati   2011-06-24  2770  		rc = bfad_iocmd_ioc_get_fwstats(bfad, iocmd, payload_len);
601380669baa2b Krishna Gudipati   2011-06-24  2771  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2772  	case IOCMD_IOC_RESET_STATS:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2773  	case IOCMD_IOC_RESET_FWSTATS:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2774  		rc = bfad_iocmd_ioc_reset_stats(bfad, iocmd, cmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2775  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2776  	case IOCMD_IOC_SET_ADAPTER_NAME:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2777  	case IOCMD_IOC_SET_PORT_NAME:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2778  		rc = bfad_iocmd_ioc_set_name(bfad, iocmd, cmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2779  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2780  	case IOCMD_IOCFC_GET_ATTR:
601380669baa2b Krishna Gudipati   2011-06-24  2781  		rc = bfad_iocmd_iocfc_get_attr(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2782  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2783  	case IOCMD_IOCFC_SET_INTR:
601380669baa2b Krishna Gudipati   2011-06-24  2784  		rc = bfad_iocmd_iocfc_set_intr(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2785  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2786  	case IOCMD_PORT_ENABLE:
601380669baa2b Krishna Gudipati   2011-06-24  2787  		rc = bfad_iocmd_port_enable(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2788  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2789  	case IOCMD_PORT_DISABLE:
601380669baa2b Krishna Gudipati   2011-06-24  2790  		rc = bfad_iocmd_port_disable(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2791  		break;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2792  	case IOCMD_PORT_GET_ATTR:
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2793  		rc = bfad_iocmd_port_get_attr(bfad, iocmd);
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2794  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2795  	case IOCMD_PORT_GET_STATS:
601380669baa2b Krishna Gudipati   2011-06-24  2796  		rc = bfad_iocmd_port_get_stats(bfad, iocmd, payload_len);
601380669baa2b Krishna Gudipati   2011-06-24  2797  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2798  	case IOCMD_PORT_RESET_STATS:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2799  		rc = bfad_iocmd_port_reset_stats(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2800  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2801  	case IOCMD_PORT_CFG_TOPO:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2802  	case IOCMD_PORT_CFG_SPEED:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2803  	case IOCMD_PORT_CFG_ALPA:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2804  	case IOCMD_PORT_CLR_ALPA:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2805  		rc = bfad_iocmd_set_port_cfg(bfad, iocmd, cmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2806  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2807  	case IOCMD_PORT_CFG_MAXFRSZ:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2808  		rc = bfad_iocmd_port_cfg_maxfrsize(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2809  		break;
bbe37a67d9da18 Vijaya Mohan Guvva 2013-05-13  2810  	case IOCMD_PORT_BBCR_ENABLE:
bbe37a67d9da18 Vijaya Mohan Guvva 2013-05-13  2811  	case IOCMD_PORT_BBCR_DISABLE:
bbe37a67d9da18 Vijaya Mohan Guvva 2013-05-13  2812  		rc = bfad_iocmd_port_cfg_bbcr(bfad, cmd, iocmd);
bbe37a67d9da18 Vijaya Mohan Guvva 2013-05-13  2813  		break;
bbe37a67d9da18 Vijaya Mohan Guvva 2013-05-13  2814  	case IOCMD_PORT_BBCR_GET_ATTR:
bbe37a67d9da18 Vijaya Mohan Guvva 2013-05-13  2815  		rc = bfad_iocmd_port_get_bbcr_attr(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2816  		break;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2817  	case IOCMD_LPORT_GET_ATTR:
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2818  		rc = bfad_iocmd_lport_get_attr(bfad, iocmd);
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2819  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2820  	case IOCMD_LPORT_GET_STATS:
601380669baa2b Krishna Gudipati   2011-06-24  2821  		rc = bfad_iocmd_lport_get_stats(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2822  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2823  	case IOCMD_LPORT_RESET_STATS:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2824  		rc = bfad_iocmd_lport_reset_stats(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2825  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2826  	case IOCMD_LPORT_GET_IOSTATS:
601380669baa2b Krishna Gudipati   2011-06-24  2827  		rc = bfad_iocmd_lport_get_iostats(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2828  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2829  	case IOCMD_LPORT_GET_RPORTS:
601380669baa2b Krishna Gudipati   2011-06-24  2830  		rc = bfad_iocmd_lport_get_rports(bfad, iocmd, payload_len);
601380669baa2b Krishna Gudipati   2011-06-24  2831  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2832  	case IOCMD_RPORT_GET_ATTR:
601380669baa2b Krishna Gudipati   2011-06-24  2833  		rc = bfad_iocmd_rport_get_attr(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2834  		break;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2835  	case IOCMD_RPORT_GET_ADDR:
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2836  		rc = bfad_iocmd_rport_get_addr(bfad, iocmd);
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2837  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2838  	case IOCMD_RPORT_GET_STATS:
601380669baa2b Krishna Gudipati   2011-06-24  2839  		rc = bfad_iocmd_rport_get_stats(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2840  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2841  	case IOCMD_RPORT_RESET_STATS:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2842  		rc = bfad_iocmd_rport_clr_stats(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2843  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2844  	case IOCMD_RPORT_SET_SPEED:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2845  		rc = bfad_iocmd_rport_set_speed(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2846  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2847  	case IOCMD_VPORT_GET_ATTR:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2848  		rc = bfad_iocmd_vport_get_attr(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2849  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2850  	case IOCMD_VPORT_GET_STATS:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2851  		rc = bfad_iocmd_vport_get_stats(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2852  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2853  	case IOCMD_VPORT_RESET_STATS:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2854  		rc = bfad_iocmd_vport_clr_stats(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2855  		break;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2856  	case IOCMD_FABRIC_GET_LPORTS:
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2857  		rc = bfad_iocmd_fabric_get_lports(bfad, iocmd, payload_len);
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2858  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2859  	case IOCMD_RATELIM_ENABLE:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2860  	case IOCMD_RATELIM_DISABLE:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2861  		rc = bfad_iocmd_ratelim(bfad, cmd, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2862  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2863  	case IOCMD_RATELIM_DEF_SPEED:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2864  		rc = bfad_iocmd_ratelim_speed(bfad, cmd, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2865  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2866  	case IOCMD_FCPIM_FAILOVER:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2867  		rc = bfad_iocmd_cfg_fcpim(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2868  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2869  	case IOCMD_FCPIM_MODSTATS:
601380669baa2b Krishna Gudipati   2011-06-24  2870  		rc = bfad_iocmd_fcpim_get_modstats(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2871  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2872  	case IOCMD_FCPIM_MODSTATSCLR:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2873  		rc = bfad_iocmd_fcpim_clr_modstats(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2874  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2875  	case IOCMD_FCPIM_DEL_ITN_STATS:
601380669baa2b Krishna Gudipati   2011-06-24  2876  		rc = bfad_iocmd_fcpim_get_del_itn_stats(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2877  		break;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2878  	case IOCMD_ITNIM_GET_ATTR:
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2879  		rc = bfad_iocmd_itnim_get_attr(bfad, iocmd);
b85daafe46eeb0 Krishna Gudipati   2011-06-13  2880  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2881  	case IOCMD_ITNIM_GET_IOSTATS:
601380669baa2b Krishna Gudipati   2011-06-24  2882  		rc = bfad_iocmd_itnim_get_iostats(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2883  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2884  	case IOCMD_ITNIM_RESET_STATS:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2885  		rc = bfad_iocmd_itnim_reset_stats(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  2886  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2887  	case IOCMD_ITNIM_GET_ITNSTATS:
601380669baa2b Krishna Gudipati   2011-06-24  2888  		rc = bfad_iocmd_itnim_get_itnstats(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2889  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2890  	case IOCMD_FCPORT_ENABLE:
601380669baa2b Krishna Gudipati   2011-06-24  2891  		rc = bfad_iocmd_fcport_enable(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2892  		break;
601380669baa2b Krishna Gudipati   2011-06-24  2893  	case IOCMD_FCPORT_DISABLE:
601380669baa2b Krishna Gudipati   2011-06-24  2894  		rc = bfad_iocmd_fcport_disable(bfad, iocmd);
601380669baa2b Krishna Gudipati   2011-06-24  2895  		break;
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2896  	case IOCMD_IOC_PCIFN_CFG:
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2897  		rc = bfad_iocmd_ioc_get_pcifn_cfg(bfad, iocmd);
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2898  		break;
28d358d01e1d27 Vijaya Mohan Guvva 2013-11-21  2899  	case IOCMD_IOC_FW_SIG_INV:
28d358d01e1d27 Vijaya Mohan Guvva 2013-11-21  2900  		rc = bfad_iocmd_ioc_fw_sig_inv(bfad, iocmd);
28d358d01e1d27 Vijaya Mohan Guvva 2013-11-21  2901  		break;
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2902  	case IOCMD_PCIFN_CREATE:
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2903  		rc = bfad_iocmd_pcifn_create(bfad, iocmd);
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2904  		break;
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2905  	case IOCMD_PCIFN_DELETE:
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2906  		rc = bfad_iocmd_pcifn_delete(bfad, iocmd);
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2907  		break;
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2908  	case IOCMD_PCIFN_BW:
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2909  		rc = bfad_iocmd_pcifn_bw(bfad, iocmd);
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2910  		break;
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2911  	case IOCMD_ADAPTER_CFG_MODE:
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2912  		rc = bfad_iocmd_adapter_cfg_mode(bfad, iocmd);
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2913  		break;
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2914  	case IOCMD_PORT_CFG_MODE:
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2915  		rc = bfad_iocmd_port_cfg_mode(bfad, iocmd);
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2916  		break;
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2917  	case IOCMD_FLASH_ENABLE_OPTROM:
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2918  	case IOCMD_FLASH_DISABLE_OPTROM:
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2919  		rc = bfad_iocmd_ablk_optrom(bfad, cmd, iocmd);
1a4d8e1bd81c01 Krishna Gudipati   2011-06-24  2920  		break;
a714134a857d39 Krishna Gudipati   2011-06-24  2921  	case IOCMD_FAA_QUERY:
a714134a857d39 Krishna Gudipati   2011-06-24  2922  		rc = bfad_iocmd_faa_query(bfad, iocmd);
a714134a857d39 Krishna Gudipati   2011-06-24  2923  		break;
148d61039c625f Krishna Gudipati   2011-06-24  2924  	case IOCMD_CEE_GET_ATTR:
148d61039c625f Krishna Gudipati   2011-06-24  2925  		rc = bfad_iocmd_cee_attr(bfad, iocmd, payload_len);
148d61039c625f Krishna Gudipati   2011-06-24  2926  		break;
148d61039c625f Krishna Gudipati   2011-06-24  2927  	case IOCMD_CEE_GET_STATS:
148d61039c625f Krishna Gudipati   2011-06-24  2928  		rc = bfad_iocmd_cee_get_stats(bfad, iocmd, payload_len);
148d61039c625f Krishna Gudipati   2011-06-24  2929  		break;
148d61039c625f Krishna Gudipati   2011-06-24  2930  	case IOCMD_CEE_RESET_STATS:
148d61039c625f Krishna Gudipati   2011-06-24  2931  		rc = bfad_iocmd_cee_reset_stats(bfad, iocmd);
148d61039c625f Krishna Gudipati   2011-06-24  2932  		break;
51e569aa1f0c10 Krishna Gudipati   2011-06-24  2933  	case IOCMD_SFP_MEDIA:
51e569aa1f0c10 Krishna Gudipati   2011-06-24  2934  		rc = bfad_iocmd_sfp_media(bfad, iocmd);
51e569aa1f0c10 Krishna Gudipati   2011-06-24  2935  		 break;
51e569aa1f0c10 Krishna Gudipati   2011-06-24  2936  	case IOCMD_SFP_SPEED:
51e569aa1f0c10 Krishna Gudipati   2011-06-24  2937  		rc = bfad_iocmd_sfp_speed(bfad, iocmd);
51e569aa1f0c10 Krishna Gudipati   2011-06-24  2938  		break;
5a54b1d576d188 Krishna Gudipati   2011-06-24  2939  	case IOCMD_FLASH_GET_ATTR:
5a54b1d576d188 Krishna Gudipati   2011-06-24  2940  		rc = bfad_iocmd_flash_get_attr(bfad, iocmd);
5a54b1d576d188 Krishna Gudipati   2011-06-24  2941  		break;
5a54b1d576d188 Krishna Gudipati   2011-06-24  2942  	case IOCMD_FLASH_ERASE_PART:
5a54b1d576d188 Krishna Gudipati   2011-06-24  2943  		rc = bfad_iocmd_flash_erase_part(bfad, iocmd);
5a54b1d576d188 Krishna Gudipati   2011-06-24  2944  		break;
5a54b1d576d188 Krishna Gudipati   2011-06-24  2945  	case IOCMD_FLASH_UPDATE_PART:
5a54b1d576d188 Krishna Gudipati   2011-06-24  2946  		rc = bfad_iocmd_flash_update_part(bfad, iocmd, payload_len);
5a54b1d576d188 Krishna Gudipati   2011-06-24  2947  		break;
5a54b1d576d188 Krishna Gudipati   2011-06-24  2948  	case IOCMD_FLASH_READ_PART:
5a54b1d576d188 Krishna Gudipati   2011-06-24  2949  		rc = bfad_iocmd_flash_read_part(bfad, iocmd, payload_len);
5a54b1d576d188 Krishna Gudipati   2011-06-24  2950  		break;
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2951  	case IOCMD_DIAG_TEMP:
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2952  		rc = bfad_iocmd_diag_temp(bfad, iocmd);
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2953  		break;
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2954  	case IOCMD_DIAG_MEMTEST:
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2955  		rc = bfad_iocmd_diag_memtest(bfad, iocmd);
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2956  		break;
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2957  	case IOCMD_DIAG_LOOPBACK:
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2958  		rc = bfad_iocmd_diag_loopback(bfad, iocmd);
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2959  		break;
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2960  	case IOCMD_DIAG_FWPING:
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2961  		rc = bfad_iocmd_diag_fwping(bfad, iocmd);
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2962  		break;
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2963  	case IOCMD_DIAG_QUEUETEST:
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2964  		rc = bfad_iocmd_diag_queuetest(bfad, iocmd);
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2965  		break;
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2966  	case IOCMD_DIAG_SFP:
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2967  		rc = bfad_iocmd_diag_sfp(bfad, iocmd);
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2968  		break;
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2969  	case IOCMD_DIAG_LED:
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2970  		rc = bfad_iocmd_diag_led(bfad, iocmd);
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2971  		break;
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2972  	case IOCMD_DIAG_BEACON_LPORT:
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2973  		rc = bfad_iocmd_diag_beacon_lport(bfad, iocmd);
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2974  		break;
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2975  	case IOCMD_DIAG_LB_STAT:
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2976  		rc = bfad_iocmd_diag_lb_stat(bfad, iocmd);
3d7fc66dcd8d51 Krishna Gudipati   2011-06-24  2977  		break;
e353546e447feb Krishna Gudipati   2012-09-21  2978  	case IOCMD_DIAG_DPORT_ENABLE:
1a898a794d5913 Vijaya Mohan Guvva 2013-05-13  2979  		rc = bfad_iocmd_diag_dport_enable(bfad, iocmd);
1a898a794d5913 Vijaya Mohan Guvva 2013-05-13  2980  		break;
e353546e447feb Krishna Gudipati   2012-09-21  2981  	case IOCMD_DIAG_DPORT_DISABLE:
1a898a794d5913 Vijaya Mohan Guvva 2013-05-13  2982  		rc = bfad_iocmd_diag_dport_disable(bfad, iocmd);
1a898a794d5913 Vijaya Mohan Guvva 2013-05-13  2983  		break;
1a898a794d5913 Vijaya Mohan Guvva 2013-05-13  2984  	case IOCMD_DIAG_DPORT_SHOW:
1a898a794d5913 Vijaya Mohan Guvva 2013-05-13  2985  		rc = bfad_iocmd_diag_dport_show(bfad, iocmd);
e353546e447feb Krishna Gudipati   2012-09-21  2986  		break;
1a898a794d5913 Vijaya Mohan Guvva 2013-05-13  2987  	case IOCMD_DIAG_DPORT_START:
1a898a794d5913 Vijaya Mohan Guvva 2013-05-13  2988  		rc = bfad_iocmd_diag_dport_start(bfad, iocmd);
e353546e447feb Krishna Gudipati   2012-09-21  2989  		break;
3350d98d6d072f Krishna Gudipati   2011-06-24  2990  	case IOCMD_PHY_GET_ATTR:
3350d98d6d072f Krishna Gudipati   2011-06-24  2991  		rc = bfad_iocmd_phy_get_attr(bfad, iocmd);
3350d98d6d072f Krishna Gudipati   2011-06-24  2992  		break;
3350d98d6d072f Krishna Gudipati   2011-06-24  2993  	case IOCMD_PHY_GET_STATS:
3350d98d6d072f Krishna Gudipati   2011-06-24  2994  		rc = bfad_iocmd_phy_get_stats(bfad, iocmd);
3350d98d6d072f Krishna Gudipati   2011-06-24  2995  		break;
3350d98d6d072f Krishna Gudipati   2011-06-24  2996  	case IOCMD_PHY_UPDATE_FW:
3350d98d6d072f Krishna Gudipati   2011-06-24  2997  		rc = bfad_iocmd_phy_update(bfad, iocmd, payload_len);
3350d98d6d072f Krishna Gudipati   2011-06-24  2998  		break;
3350d98d6d072f Krishna Gudipati   2011-06-24  2999  	case IOCMD_PHY_READ_FW:
3350d98d6d072f Krishna Gudipati   2011-06-24  3000  		rc = bfad_iocmd_phy_read(bfad, iocmd, payload_len);
3350d98d6d072f Krishna Gudipati   2011-06-24  3001  		break;
61e62e21afe469 Krishna Gudipati   2011-06-24  3002  	case IOCMD_VHBA_QUERY:
61e62e21afe469 Krishna Gudipati   2011-06-24  3003  		rc = bfad_iocmd_vhba_query(bfad, iocmd);
61e62e21afe469 Krishna Gudipati   2011-06-24  3004  		break;
61e62e21afe469 Krishna Gudipati   2011-06-24  3005  	case IOCMD_DEBUG_PORTLOG:
61e62e21afe469 Krishna Gudipati   2011-06-24  3006  		rc = bfad_iocmd_porglog_get(bfad, iocmd);
61e62e21afe469 Krishna Gudipati   2011-06-24  3007  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3008  	case IOCMD_DEBUG_FW_CORE:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3009  		rc = bfad_iocmd_debug_fw_core(bfad, iocmd, payload_len);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3010  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3011  	case IOCMD_DEBUG_FW_STATE_CLR:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3012  	case IOCMD_DEBUG_PORTLOG_CLR:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3013  	case IOCMD_DEBUG_START_DTRC:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3014  	case IOCMD_DEBUG_STOP_DTRC:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3015  		rc = bfad_iocmd_debug_ctl(bfad, iocmd, cmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3016  		break;
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3017  	case IOCMD_DEBUG_PORTLOG_CTL:
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3018  		rc = bfad_iocmd_porglog_ctl(bfad, iocmd);
f2ee76017b30c8 Krishna Gudipati   2011-07-20  3019  		break;
42a8e6e298f395 Krishna Gudipati   2011-07-20  3020  	case IOCMD_FCPIM_PROFILE_ON:
42a8e6e298f395 Krishna Gudipati   2011-07-20  3021  	case IOCMD_FCPIM_PROFILE_OFF:
42a8e6e298f395 Krishna Gudipati   2011-07-20  3022  		rc = bfad_iocmd_fcpim_cfg_profile(bfad, iocmd, cmd);
42a8e6e298f395 Krishna Gudipati   2011-07-20  3023  		break;
42a8e6e298f395 Krishna Gudipati   2011-07-20  3024  	case IOCMD_ITNIM_GET_IOPROFILE:
42a8e6e298f395 Krishna Gudipati   2011-07-20  3025  		rc = bfad_iocmd_itnim_get_ioprofile(bfad, iocmd);
42a8e6e298f395 Krishna Gudipati   2011-07-20  3026  		break;
37ea0558b87abb Krishna Gudipati   2011-07-20  3027  	case IOCMD_FCPORT_GET_STATS:
37ea0558b87abb Krishna Gudipati   2011-07-20  3028  		rc = bfad_iocmd_fcport_get_stats(bfad, iocmd);
37ea0558b87abb Krishna Gudipati   2011-07-20  3029  		break;
37ea0558b87abb Krishna Gudipati   2011-07-20  3030  	case IOCMD_FCPORT_RESET_STATS:
37ea0558b87abb Krishna Gudipati   2011-07-20  3031  		rc = bfad_iocmd_fcport_reset_stats(bfad, iocmd);
37ea0558b87abb Krishna Gudipati   2011-07-20  3032  		break;
a46bd300e191d5 Krishna Gudipati   2011-07-20  3033  	case IOCMD_BOOT_CFG:
a46bd300e191d5 Krishna Gudipati   2011-07-20  3034  		rc = bfad_iocmd_boot_cfg(bfad, iocmd);
a46bd300e191d5 Krishna Gudipati   2011-07-20  3035  		break;
a46bd300e191d5 Krishna Gudipati   2011-07-20  3036  	case IOCMD_BOOT_QUERY:
a46bd300e191d5 Krishna Gudipati   2011-07-20  3037  		rc = bfad_iocmd_boot_query(bfad, iocmd);
a46bd300e191d5 Krishna Gudipati   2011-07-20  3038  		break;
a46bd300e191d5 Krishna Gudipati   2011-07-20  3039  	case IOCMD_PREBOOT_QUERY:
a46bd300e191d5 Krishna Gudipati   2011-07-20  3040  		rc = bfad_iocmd_preboot_query(bfad, iocmd);
a46bd300e191d5 Krishna Gudipati   2011-07-20  3041  		break;
a46bd300e191d5 Krishna Gudipati   2011-07-20  3042  	case IOCMD_ETHBOOT_CFG:
a46bd300e191d5 Krishna Gudipati   2011-07-20  3043  		rc = bfad_iocmd_ethboot_cfg(bfad, iocmd);
a46bd300e191d5 Krishna Gudipati   2011-07-20  3044  		break;
a46bd300e191d5 Krishna Gudipati   2011-07-20  3045  	case IOCMD_ETHBOOT_QUERY:
a46bd300e191d5 Krishna Gudipati   2011-07-20  3046  		rc = bfad_iocmd_ethboot_query(bfad, iocmd);
a46bd300e191d5 Krishna Gudipati   2011-07-20  3047  		break;
45191236b17987 Krishna Gudipati   2011-07-20  3048  	case IOCMD_TRUNK_ENABLE:
45191236b17987 Krishna Gudipati   2011-07-20  3049  	case IOCMD_TRUNK_DISABLE:
45191236b17987 Krishna Gudipati   2011-07-20  3050  		rc = bfad_iocmd_cfg_trunk(bfad, iocmd, cmd);
45191236b17987 Krishna Gudipati   2011-07-20  3051  		break;
45191236b17987 Krishna Gudipati   2011-07-20  3052  	case IOCMD_TRUNK_GET_ATTR:
45191236b17987 Krishna Gudipati   2011-07-20  3053  		rc = bfad_iocmd_trunk_get_attr(bfad, iocmd);
45191236b17987 Krishna Gudipati   2011-07-20  3054  		break;
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3055  	case IOCMD_QOS_ENABLE:
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3056  	case IOCMD_QOS_DISABLE:
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3057  		rc = bfad_iocmd_qos(bfad, iocmd, cmd);
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3058  		break;
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3059  	case IOCMD_QOS_GET_ATTR:
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3060  		rc = bfad_iocmd_qos_get_attr(bfad, iocmd);
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3061  		break;
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3062  	case IOCMD_QOS_GET_VC_ATTR:
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3063  		rc = bfad_iocmd_qos_get_vc_attr(bfad, iocmd);
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3064  		break;
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3065  	case IOCMD_QOS_GET_STATS:
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3066  		rc = bfad_iocmd_qos_get_stats(bfad, iocmd);
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3067  		break;
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3068  	case IOCMD_QOS_RESET_STATS:
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3069  		rc = bfad_iocmd_qos_reset_stats(bfad, iocmd);
3ec4f2c8bff256 Krishna Gudipati   2011-07-20  3070  		break;
6894f013a71b1b Krishna Gudipati   2012-09-21  3071  	case IOCMD_QOS_SET_BW:
6894f013a71b1b Krishna Gudipati   2012-09-21  3072  		rc = bfad_iocmd_qos_set_bw(bfad, iocmd);
6894f013a71b1b Krishna Gudipati   2012-09-21  3073  		break;
c0350bf57445b9 Krishna Gudipati   2011-07-20  3074  	case IOCMD_VF_GET_STATS:
c0350bf57445b9 Krishna Gudipati   2011-07-20  3075  		rc = bfad_iocmd_vf_get_stats(bfad, iocmd);
c0350bf57445b9 Krishna Gudipati   2011-07-20  3076  		break;
c0350bf57445b9 Krishna Gudipati   2011-07-20  3077  	case IOCMD_VF_RESET_STATS:
c0350bf57445b9 Krishna Gudipati   2011-07-20  3078  		rc = bfad_iocmd_vf_clr_stats(bfad, iocmd);
c0350bf57445b9 Krishna Gudipati   2011-07-20  3079  		break;
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3080  	case IOCMD_FCPIM_LUNMASK_ENABLE:
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3081  	case IOCMD_FCPIM_LUNMASK_DISABLE:
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3082  	case IOCMD_FCPIM_LUNMASK_CLEAR:
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3083  		rc = bfad_iocmd_lunmask(bfad, iocmd, cmd);
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3084  		break;
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3085  	case IOCMD_FCPIM_LUNMASK_QUERY:
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3086  		rc = bfad_iocmd_fcpim_lunmask_query(bfad, iocmd);
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3087  		break;
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3088  	case IOCMD_FCPIM_LUNMASK_ADD:
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3089  	case IOCMD_FCPIM_LUNMASK_DELETE:
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3090  		rc = bfad_iocmd_fcpim_cfg_lunmask(bfad, iocmd, cmd);
4c5d22bf7bdea6 Krishna Gudipati   2011-07-20  3091  		break;
7ace27ae28a5fa Krishna Gudipati   2012-09-21  3092  	case IOCMD_FCPIM_THROTTLE_QUERY:
7ace27ae28a5fa Krishna Gudipati   2012-09-21  3093  		rc = bfad_iocmd_fcpim_throttle_query(bfad, iocmd);
7ace27ae28a5fa Krishna Gudipati   2012-09-21  3094  		break;
7ace27ae28a5fa Krishna Gudipati   2012-09-21  3095  	case IOCMD_FCPIM_THROTTLE_SET:
7ace27ae28a5fa Krishna Gudipati   2012-09-21  3096  		rc = bfad_iocmd_fcpim_throttle_set(bfad, iocmd);
7ace27ae28a5fa Krishna Gudipati   2012-09-21  3097  		break;
e6826c96ced7ea Krishna Gudipati   2012-09-21  3098  	/* TFRU */
e6826c96ced7ea Krishna Gudipati   2012-09-21  3099  	case IOCMD_TFRU_READ:
e6826c96ced7ea Krishna Gudipati   2012-09-21  3100  		rc = bfad_iocmd_tfru_read(bfad, iocmd);
e6826c96ced7ea Krishna Gudipati   2012-09-21  3101  		break;
e6826c96ced7ea Krishna Gudipati   2012-09-21  3102  	case IOCMD_TFRU_WRITE:
e6826c96ced7ea Krishna Gudipati   2012-09-21  3103  		rc = bfad_iocmd_tfru_write(bfad, iocmd);
e6826c96ced7ea Krishna Gudipati   2012-09-21  3104  		break;
e6826c96ced7ea Krishna Gudipati   2012-09-21  3105  	/* FRU */
e6826c96ced7ea Krishna Gudipati   2012-09-21  3106  	case IOCMD_FRUVPD_READ:
e6826c96ced7ea Krishna Gudipati   2012-09-21  3107  		rc = bfad_iocmd_fruvpd_read(bfad, iocmd);
e6826c96ced7ea Krishna Gudipati   2012-09-21  3108  		break;
e6826c96ced7ea Krishna Gudipati   2012-09-21  3109  	case IOCMD_FRUVPD_UPDATE:
e6826c96ced7ea Krishna Gudipati   2012-09-21  3110  		rc = bfad_iocmd_fruvpd_update(bfad, iocmd);
e6826c96ced7ea Krishna Gudipati   2012-09-21  3111  		break;
e6826c96ced7ea Krishna Gudipati   2012-09-21  3112  	case IOCMD_FRUVPD_GET_MAX_SIZE:
e6826c96ced7ea Krishna Gudipati   2012-09-21  3113  		rc = bfad_iocmd_fruvpd_get_max_size(bfad, iocmd);
e6826c96ced7ea Krishna Gudipati   2012-09-21  3114  		break;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  3115  	default:
9afbcfab74d260 Krishna Gudipati   2011-07-20  3116  		rc = -EINVAL;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  3117  		break;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  3118  	}
9afbcfab74d260 Krishna Gudipati   2011-07-20  3119  	return rc;
b85daafe46eeb0 Krishna Gudipati   2011-06-13  3120  }
b85daafe46eeb0 Krishna Gudipati   2011-06-13  3121  

:::::: The code at line 2748 was first introduced by commit
:::::: b85daafe46eeb0a9ad32c4b2c3a4e09ffcae9599 [SCSI] bfa: Add BSG interface to support ELS, CT and vendor commands.

:::::: TO: Krishna Gudipati <kgudipat@brocade.com>
:::::: CC: James Bottomley <JBottomley@Parallels.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008240547.M0gTjLiH%25lkp%40intel.com.

--IJpNTDwzlM2Ie8A6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
yilJIwNm/gv3qa20TTYCAA==

--IJpNTDwzlM2Ie8A6--
