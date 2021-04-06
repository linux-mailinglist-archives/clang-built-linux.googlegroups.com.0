Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB352WKBQMGQE5PVURXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id F3228355A94
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 19:42:08 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id b8sf2509788vst.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 10:42:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617730928; cv=pass;
        d=google.com; s=arc-20160816;
        b=fKXxn2dphFsnlVtNdFmVQGt9ebRmtHQ5vtodc4QcqAeNNccHgJG5m+k6E1xCwj4Jwv
         WfcnuPMLn5J4DUV7+LG8egZOgGZ5ESt+4p+J0zOCBypIQE++fqRKStC7+T6FGkzNTe5g
         Iv7JNf0D6D+RHv/azZ5+U68FJ0cTBqLI0bGScaagFGxcUW0dzvgLEOKtmAaHaPXs1at1
         Ekvr1KeWOKxvnfkEx+3eRy6BQw22ZkeVq4jOQQMgKfAWv1K4pfc4drvXM7PjL5/J6dIb
         eK5SNDmCZER/ue2fmKr6B0bjYSRJx+QguIx6lhsaoIuk2+n5SR1s0wvjUQudC3UxvV4o
         hZyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=DjMLXQp6/sgWpRRy73hK6THYGcbWzz83TEoapydEQ/E=;
        b=Alw8/oHnP4OzUoDZFXjIqLw3DreWbSZ/c33mOOk/qGKyYfh1MPgNYy+SHW7phsp9Nb
         KOqc7BeitPG5+W3uoFRN3Ht/SiatC5Fdj+9CBjugH/t12B3o1G9davUiLXgi4CQ6kVQm
         6iDMmBGZsR67XWI7HANVTDSKroA9ztlFer1X6A0xgn+eTNPmrMf1xaOiYEc8Cj2KD1jp
         iMcbFnDVO3dgHA4twre4z9o3xmju5LYMcf3J7mFVeMiuJfreDTAVrirs1Dc65TwG+ZpJ
         hp+9/2IBZlH5ZeoMl+fn3HXpEv20AGwwylXzc7tm+mMxdQTq2w3CrP1r3dmFooJNUmx1
         f+9g==
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
        bh=DjMLXQp6/sgWpRRy73hK6THYGcbWzz83TEoapydEQ/E=;
        b=c1iY8GS9NRB/g1777rOnRAUiz4gEUcYhMDH9Jho+dsYkvCYObChMyi6JX8PSYQM6Ul
         ezyyVaW8s8kwOqmnMz3wlywutBkxdjhzgLmyNIt6MY2mn4wABJ3y1bOAzHrYtg/NdHB1
         yKorsVZ2ggCNzFVeNIrbMxQXZoRiW5jel0VV9McBN1LsWzb+QIkS9/emVi+bR77jZG43
         nLnSoxVjEgJVjs4T8nvZKDOfeTJhTOScxAxB9oMVG2J5+fWHkErAquRldaSv+G67W6Hg
         1kW+uVizKOc6X5KBjc6kWS0Ux1tlHlImZUvVKeaFRT/t2eVCmTIVLpN5+jSNBN4FiBW1
         m8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DjMLXQp6/sgWpRRy73hK6THYGcbWzz83TEoapydEQ/E=;
        b=T5EOb7luq5ueEPXffvqlds8mPcqpXOc+X8v3Dfh5XsTHB7475WsBOo+r3wPYEeI+gI
         FWcDAgf5I5waRrUwqh/il9iNhaQW4qFZSp44Wl1SpnO8CYJUK9MFjryg9mUXxOHg9df/
         eSUw4EsikBOmgOX5oqx37ztMoKeCcxWVG7aeOqTqY4vHjjZf9WE9hMFF45GKq3K2Daiq
         HQ9g4UajkgweFa/eK/25Jpt0LkIgI9gGY/s9uS8lznTNZTdl8eYb3JxsUKTSSeMqPJO6
         rGFb8aeFwsVrwvgeyOJBKUw82MgttFY029CZEr0qp6Q3xTezG/qt6mEa/gB3j4txoRW6
         d+qQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Nf0UWvM41ctwN5WPJ2AupopbnUYXmUxJ2tWkiLrRKqvxo1AkB
	uZBi+xv2fVfvIkJY2tCqBTE=
X-Google-Smtp-Source: ABdhPJwxyamKsizvy84BwLRHzpkIwx9Irkxq2GpBN2uuIgyqXSLX7d/VQF0EfuGMm+oChpzDqNxCig==
X-Received: by 2002:a1f:2ec5:: with SMTP id u188mr18333952vku.16.1617730927993;
        Tue, 06 Apr 2021 10:42:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fb06:: with SMTP id d6ls2008440vsr.7.gmail; Tue, 06 Apr
 2021 10:42:07 -0700 (PDT)
X-Received: by 2002:a67:b005:: with SMTP id z5mr18317822vse.47.1617730927127;
        Tue, 06 Apr 2021 10:42:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617730927; cv=none;
        d=google.com; s=arc-20160816;
        b=nf2Alec3cNnHPeoPN43YtsmC3L1Uzp6Z3yovnmu3nwTthu0+6/a4OmA1bRBHcp/Js4
         OvGzu4PMhjHdfOsuiPujp2a1/PNoYiy0wZ7pp66DgdLBQVZzCquenaCxlVPVebfE+lt/
         7SZK0KhJBXWK30alu/X0q3Bv85QbxefTEJupDjNAJZtys6oqfXz/iZDQ1XEv9yzSaKzF
         yIqufX5o53u95xsFF9reSzMekjPssMUzgJgjf11YA5eC18x7082Y9t5io0rZ08m8NE82
         //kU52wTrLhRAGmmbVrE8AVu7LH7d9Fp6HyxgWJ8u1U3VNe/bsyZYWQWp9yicBC++rfz
         h5nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=V9j++P9UbTYmBkZremRYZm2s//1rxrdFK6zxFoJ4RIU=;
        b=0s8+jh0uRWARLFeKsFbFDf0ouyOHHgiCPHmFqEa3qZncQxIKeMbFWNWNXc5ZyBl1Sc
         0OlGLAsBSrJWqkK+RvUOYO1ZzPbvYQZ+a5YtSuyI8f9w4kXxuDjgk6WEuSN/niyykYz4
         RwJgChcDJFCYXjwTjMLqRlddYW54PG7KjPWspcB2C1+G5y7K7FEqZQNKPdPVFjqaO3Jx
         n/jxu9CUaZdd+pCF8KIJCW3Q7yw+8S//Kjx5rJq3gltoPu+TxPHM0IAtsTujKJNVcHi8
         3ul+jcQPLpfPo9d9iF5pwZdL/kr1wghvdbi3cNoYw4EQguCvaAAO3S7O8dg7ORZRmcY0
         Buzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id u21si1026104vkn.2.2021.04.06.10.42.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 10:42:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: 0BkTjuzKFiCvREb6Q3OWTtEWXCg1iOlcEfK7VfJkIFbuUgFWH55QonJ61X88mfvhIJOIqu+Y3R
 WYQZhy9G0n8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9946"; a="193235223"
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400"; 
   d="gz'50?scan'50,208,50";a="193235223"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Apr 2021 10:42:02 -0700
IronPort-SDR: fHy4++UFLHqdv+PG2mxGYf4GdR6zCld13MZRiGrGiHnVMlzW0t20vX5NnttfEZFBBjz5wwRLxJ
 BhR2ac53LjBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400"; 
   d="gz'50?scan'50,208,50";a="441011813"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 06 Apr 2021 10:41:49 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lTpi0-000C3K-T9; Tue, 06 Apr 2021 17:41:48 +0000
Date: Wed, 7 Apr 2021 01:41:38 +0800
From: kernel test robot <lkp@intel.com>
To: Marcel Holtmann <marcel@holtmann.org>, linux-bluetooth@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Bluetooth: Add support for reading AOSP vendor
 capabilities
Message-ID: <202104070105.D3aQ8W32-lkp@intel.com>
References: <20210406133632.241599-1-marcel@holtmann.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline
In-Reply-To: <20210406133632.241599-1-marcel@holtmann.org>
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


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Marcel,

I love your patch! Yet something to improve:

[auto build test ERROR on bluetooth-next/master]
[also build test ERROR on v5.12-rc6 next-20210406]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Marcel-Holtmann/Bluetooth-Add-support-for-reading-AOSP-vendor-capabilities/20210406-213836
base:   https://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth-next.git master
config: powerpc-randconfig-r012-20210406 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a46f59a747a7273cc439efaf3b4f98d8b63d2f20)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/71e8a18c61c482db0f170ec897450ba76c18b7ec
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Marcel-Holtmann/Bluetooth-Add-support-for-reading-AOSP-vendor-capabilities/20210406-213836
        git checkout 71e8a18c61c482db0f170ec897450ba76c18b7ec
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:42:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/bluetooth/hci_core.c:33:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:44:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/bluetooth/hci_core.c:33:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:46:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/bluetooth/hci_core.c:33:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:48:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from net/bluetooth/hci_core.c:47:
   net/bluetooth/aosp.h:13:20: error: redefinition of 'msft_do_open'
   static inline void msft_do_open(struct hci_dev *hdev) {}
                      ^
   net/bluetooth/msft.h:33:20: note: previous definition is here
   static inline void msft_do_open(struct hci_dev *hdev) {}
                      ^
   In file included from net/bluetooth/hci_core.c:47:
   net/bluetooth/aosp.h:14:20: error: redefinition of 'msft_do_close'
   static inline void msft_do_close(struct hci_dev *hdev) {}
                      ^
   net/bluetooth/msft.h:34:20: note: previous definition is here
   static inline void msft_do_close(struct hci_dev *hdev) {}
                      ^
>> net/bluetooth/hci_core.c:1590:2: error: implicit declaration of function 'aosp_do_open' [-Werror,-Wimplicit-function-declaration]
           aosp_do_open(hdev);
           ^
   net/bluetooth/hci_core.c:1590:2: note: did you mean 'msft_do_open'?
   net/bluetooth/aosp.h:13:20: note: 'msft_do_open' declared here
   static inline void msft_do_open(struct hci_dev *hdev) {}
                      ^
>> net/bluetooth/hci_core.c:1787:2: error: implicit declaration of function 'aosp_do_close' [-Werror,-Wimplicit-function-declaration]
           aosp_do_close(hdev);
           ^
   net/bluetooth/hci_core.c:1787:2: note: did you mean 'msft_do_close'?
   net/bluetooth/aosp.h:14:20: note: 'msft_do_close' declared here
   static inline void msft_do_close(struct hci_dev *hdev) {}
                      ^
   12 warnings and 4 errors generated.


vim +/aosp_do_open +1590 net/bluetooth/hci_core.c

  1432	
  1433	static int hci_dev_do_open(struct hci_dev *hdev)
  1434	{
  1435		int ret = 0;
  1436	
  1437		BT_DBG("%s %p", hdev->name, hdev);
  1438	
  1439		hci_req_sync_lock(hdev);
  1440	
  1441		if (hci_dev_test_flag(hdev, HCI_UNREGISTER)) {
  1442			ret = -ENODEV;
  1443			goto done;
  1444		}
  1445	
  1446		if (!hci_dev_test_flag(hdev, HCI_SETUP) &&
  1447		    !hci_dev_test_flag(hdev, HCI_CONFIG)) {
  1448			/* Check for rfkill but allow the HCI setup stage to
  1449			 * proceed (which in itself doesn't cause any RF activity).
  1450			 */
  1451			if (hci_dev_test_flag(hdev, HCI_RFKILLED)) {
  1452				ret = -ERFKILL;
  1453				goto done;
  1454			}
  1455	
  1456			/* Check for valid public address or a configured static
  1457			 * random adddress, but let the HCI setup proceed to
  1458			 * be able to determine if there is a public address
  1459			 * or not.
  1460			 *
  1461			 * In case of user channel usage, it is not important
  1462			 * if a public address or static random address is
  1463			 * available.
  1464			 *
  1465			 * This check is only valid for BR/EDR controllers
  1466			 * since AMP controllers do not have an address.
  1467			 */
  1468			if (!hci_dev_test_flag(hdev, HCI_USER_CHANNEL) &&
  1469			    hdev->dev_type == HCI_PRIMARY &&
  1470			    !bacmp(&hdev->bdaddr, BDADDR_ANY) &&
  1471			    !bacmp(&hdev->static_addr, BDADDR_ANY)) {
  1472				ret = -EADDRNOTAVAIL;
  1473				goto done;
  1474			}
  1475		}
  1476	
  1477		if (test_bit(HCI_UP, &hdev->flags)) {
  1478			ret = -EALREADY;
  1479			goto done;
  1480		}
  1481	
  1482		if (hdev->open(hdev)) {
  1483			ret = -EIO;
  1484			goto done;
  1485		}
  1486	
  1487		set_bit(HCI_RUNNING, &hdev->flags);
  1488		hci_sock_dev_event(hdev, HCI_DEV_OPEN);
  1489	
  1490		atomic_set(&hdev->cmd_cnt, 1);
  1491		set_bit(HCI_INIT, &hdev->flags);
  1492	
  1493		if (hci_dev_test_flag(hdev, HCI_SETUP) ||
  1494		    test_bit(HCI_QUIRK_NON_PERSISTENT_SETUP, &hdev->quirks)) {
  1495			bool invalid_bdaddr;
  1496	
  1497			hci_sock_dev_event(hdev, HCI_DEV_SETUP);
  1498	
  1499			if (hdev->setup)
  1500				ret = hdev->setup(hdev);
  1501	
  1502			/* The transport driver can set the quirk to mark the
  1503			 * BD_ADDR invalid before creating the HCI device or in
  1504			 * its setup callback.
  1505			 */
  1506			invalid_bdaddr = test_bit(HCI_QUIRK_INVALID_BDADDR,
  1507						  &hdev->quirks);
  1508	
  1509			if (ret)
  1510				goto setup_failed;
  1511	
  1512			if (test_bit(HCI_QUIRK_USE_BDADDR_PROPERTY, &hdev->quirks)) {
  1513				if (!bacmp(&hdev->public_addr, BDADDR_ANY))
  1514					hci_dev_get_bd_addr_from_property(hdev);
  1515	
  1516				if (bacmp(&hdev->public_addr, BDADDR_ANY) &&
  1517				    hdev->set_bdaddr) {
  1518					ret = hdev->set_bdaddr(hdev,
  1519							       &hdev->public_addr);
  1520	
  1521					/* If setting of the BD_ADDR from the device
  1522					 * property succeeds, then treat the address
  1523					 * as valid even if the invalid BD_ADDR
  1524					 * quirk indicates otherwise.
  1525					 */
  1526					if (!ret)
  1527						invalid_bdaddr = false;
  1528				}
  1529			}
  1530	
  1531	setup_failed:
  1532			/* The transport driver can set these quirks before
  1533			 * creating the HCI device or in its setup callback.
  1534			 *
  1535			 * For the invalid BD_ADDR quirk it is possible that
  1536			 * it becomes a valid address if the bootloader does
  1537			 * provide it (see above).
  1538			 *
  1539			 * In case any of them is set, the controller has to
  1540			 * start up as unconfigured.
  1541			 */
  1542			if (test_bit(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks) ||
  1543			    invalid_bdaddr)
  1544				hci_dev_set_flag(hdev, HCI_UNCONFIGURED);
  1545	
  1546			/* For an unconfigured controller it is required to
  1547			 * read at least the version information provided by
  1548			 * the Read Local Version Information command.
  1549			 *
  1550			 * If the set_bdaddr driver callback is provided, then
  1551			 * also the original Bluetooth public device address
  1552			 * will be read using the Read BD Address command.
  1553			 */
  1554			if (hci_dev_test_flag(hdev, HCI_UNCONFIGURED))
  1555				ret = __hci_unconf_init(hdev);
  1556		}
  1557	
  1558		if (hci_dev_test_flag(hdev, HCI_CONFIG)) {
  1559			/* If public address change is configured, ensure that
  1560			 * the address gets programmed. If the driver does not
  1561			 * support changing the public address, fail the power
  1562			 * on procedure.
  1563			 */
  1564			if (bacmp(&hdev->public_addr, BDADDR_ANY) &&
  1565			    hdev->set_bdaddr)
  1566				ret = hdev->set_bdaddr(hdev, &hdev->public_addr);
  1567			else
  1568				ret = -EADDRNOTAVAIL;
  1569		}
  1570	
  1571		if (!ret) {
  1572			if (!hci_dev_test_flag(hdev, HCI_UNCONFIGURED) &&
  1573			    !hci_dev_test_flag(hdev, HCI_USER_CHANNEL)) {
  1574				ret = __hci_init(hdev);
  1575				if (!ret && hdev->post_init)
  1576					ret = hdev->post_init(hdev);
  1577			}
  1578		}
  1579	
  1580		/* If the HCI Reset command is clearing all diagnostic settings,
  1581		 * then they need to be reprogrammed after the init procedure
  1582		 * completed.
  1583		 */
  1584		if (test_bit(HCI_QUIRK_NON_PERSISTENT_DIAG, &hdev->quirks) &&
  1585		    !hci_dev_test_flag(hdev, HCI_USER_CHANNEL) &&
  1586		    hci_dev_test_flag(hdev, HCI_VENDOR_DIAG) && hdev->set_diag)
  1587			ret = hdev->set_diag(hdev, true);
  1588	
  1589		msft_do_open(hdev);
> 1590		aosp_do_open(hdev);
  1591	
  1592		clear_bit(HCI_INIT, &hdev->flags);
  1593	
  1594		if (!ret) {
  1595			hci_dev_hold(hdev);
  1596			hci_dev_set_flag(hdev, HCI_RPA_EXPIRED);
  1597			hci_adv_instances_set_rpa_expired(hdev, true);
  1598			set_bit(HCI_UP, &hdev->flags);
  1599			hci_sock_dev_event(hdev, HCI_DEV_UP);
  1600			hci_leds_update_powered(hdev, true);
  1601			if (!hci_dev_test_flag(hdev, HCI_SETUP) &&
  1602			    !hci_dev_test_flag(hdev, HCI_CONFIG) &&
  1603			    !hci_dev_test_flag(hdev, HCI_UNCONFIGURED) &&
  1604			    !hci_dev_test_flag(hdev, HCI_USER_CHANNEL) &&
  1605			    hci_dev_test_flag(hdev, HCI_MGMT) &&
  1606			    hdev->dev_type == HCI_PRIMARY) {
  1607				ret = __hci_req_hci_power_on(hdev);
  1608				mgmt_power_on(hdev, ret);
  1609			}
  1610		} else {
  1611			/* Init failed, cleanup */
  1612			flush_work(&hdev->tx_work);
  1613			flush_work(&hdev->cmd_work);
  1614			flush_work(&hdev->rx_work);
  1615	
  1616			skb_queue_purge(&hdev->cmd_q);
  1617			skb_queue_purge(&hdev->rx_q);
  1618	
  1619			if (hdev->flush)
  1620				hdev->flush(hdev);
  1621	
  1622			if (hdev->sent_cmd) {
  1623				kfree_skb(hdev->sent_cmd);
  1624				hdev->sent_cmd = NULL;
  1625			}
  1626	
  1627			clear_bit(HCI_RUNNING, &hdev->flags);
  1628			hci_sock_dev_event(hdev, HCI_DEV_CLOSE);
  1629	
  1630			hdev->close(hdev);
  1631			hdev->flags &= BIT(HCI_RAW);
  1632		}
  1633	
  1634	done:
  1635		hci_req_sync_unlock(hdev);
  1636		return ret;
  1637	}
  1638	
  1639	/* ---- HCI ioctl helpers ---- */
  1640	
  1641	int hci_dev_open(__u16 dev)
  1642	{
  1643		struct hci_dev *hdev;
  1644		int err;
  1645	
  1646		hdev = hci_dev_get(dev);
  1647		if (!hdev)
  1648			return -ENODEV;
  1649	
  1650		/* Devices that are marked as unconfigured can only be powered
  1651		 * up as user channel. Trying to bring them up as normal devices
  1652		 * will result into a failure. Only user channel operation is
  1653		 * possible.
  1654		 *
  1655		 * When this function is called for a user channel, the flag
  1656		 * HCI_USER_CHANNEL will be set first before attempting to
  1657		 * open the device.
  1658		 */
  1659		if (hci_dev_test_flag(hdev, HCI_UNCONFIGURED) &&
  1660		    !hci_dev_test_flag(hdev, HCI_USER_CHANNEL)) {
  1661			err = -EOPNOTSUPP;
  1662			goto done;
  1663		}
  1664	
  1665		/* We need to ensure that no other power on/off work is pending
  1666		 * before proceeding to call hci_dev_do_open. This is
  1667		 * particularly important if the setup procedure has not yet
  1668		 * completed.
  1669		 */
  1670		if (hci_dev_test_and_clear_flag(hdev, HCI_AUTO_OFF))
  1671			cancel_delayed_work(&hdev->power_off);
  1672	
  1673		/* After this call it is guaranteed that the setup procedure
  1674		 * has finished. This means that error conditions like RFKILL
  1675		 * or no valid public or static random address apply.
  1676		 */
  1677		flush_workqueue(hdev->req_workqueue);
  1678	
  1679		/* For controllers not using the management interface and that
  1680		 * are brought up using legacy ioctl, set the HCI_BONDABLE bit
  1681		 * so that pairing works for them. Once the management interface
  1682		 * is in use this bit will be cleared again and userspace has
  1683		 * to explicitly enable it.
  1684		 */
  1685		if (!hci_dev_test_flag(hdev, HCI_USER_CHANNEL) &&
  1686		    !hci_dev_test_flag(hdev, HCI_MGMT))
  1687			hci_dev_set_flag(hdev, HCI_BONDABLE);
  1688	
  1689		err = hci_dev_do_open(hdev);
  1690	
  1691	done:
  1692		hci_dev_put(hdev);
  1693		return err;
  1694	}
  1695	
  1696	/* This function requires the caller holds hdev->lock */
  1697	static void hci_pend_le_actions_clear(struct hci_dev *hdev)
  1698	{
  1699		struct hci_conn_params *p;
  1700	
  1701		list_for_each_entry(p, &hdev->le_conn_params, list) {
  1702			if (p->conn) {
  1703				hci_conn_drop(p->conn);
  1704				hci_conn_put(p->conn);
  1705				p->conn = NULL;
  1706			}
  1707			list_del_init(&p->action);
  1708		}
  1709	
  1710		BT_DBG("All LE pending actions cleared");
  1711	}
  1712	
  1713	int hci_dev_do_close(struct hci_dev *hdev)
  1714	{
  1715		bool auto_off;
  1716	
  1717		BT_DBG("%s %p", hdev->name, hdev);
  1718	
  1719		if (!hci_dev_test_flag(hdev, HCI_UNREGISTER) &&
  1720		    !hci_dev_test_flag(hdev, HCI_USER_CHANNEL) &&
  1721		    test_bit(HCI_UP, &hdev->flags)) {
  1722			/* Execute vendor specific shutdown routine */
  1723			if (hdev->shutdown)
  1724				hdev->shutdown(hdev);
  1725		}
  1726	
  1727		cancel_delayed_work(&hdev->power_off);
  1728	
  1729		hci_request_cancel_all(hdev);
  1730		hci_req_sync_lock(hdev);
  1731	
  1732		if (!test_and_clear_bit(HCI_UP, &hdev->flags)) {
  1733			cancel_delayed_work_sync(&hdev->cmd_timer);
  1734			hci_req_sync_unlock(hdev);
  1735			return 0;
  1736		}
  1737	
  1738		hci_leds_update_powered(hdev, false);
  1739	
  1740		/* Flush RX and TX works */
  1741		flush_work(&hdev->tx_work);
  1742		flush_work(&hdev->rx_work);
  1743	
  1744		if (hdev->discov_timeout > 0) {
  1745			hdev->discov_timeout = 0;
  1746			hci_dev_clear_flag(hdev, HCI_DISCOVERABLE);
  1747			hci_dev_clear_flag(hdev, HCI_LIMITED_DISCOVERABLE);
  1748		}
  1749	
  1750		if (hci_dev_test_and_clear_flag(hdev, HCI_SERVICE_CACHE))
  1751			cancel_delayed_work(&hdev->service_cache);
  1752	
  1753		if (hci_dev_test_flag(hdev, HCI_MGMT)) {
  1754			struct adv_info *adv_instance;
  1755	
  1756			cancel_delayed_work_sync(&hdev->rpa_expired);
  1757	
  1758			list_for_each_entry(adv_instance, &hdev->adv_instances, list)
  1759				cancel_delayed_work_sync(&adv_instance->rpa_expired_cb);
  1760		}
  1761	
  1762		/* Avoid potential lockdep warnings from the *_flush() calls by
  1763		 * ensuring the workqueue is empty up front.
  1764		 */
  1765		drain_workqueue(hdev->workqueue);
  1766	
  1767		hci_dev_lock(hdev);
  1768	
  1769		hci_discovery_set_state(hdev, DISCOVERY_STOPPED);
  1770	
  1771		auto_off = hci_dev_test_and_clear_flag(hdev, HCI_AUTO_OFF);
  1772	
  1773		if (!auto_off && hdev->dev_type == HCI_PRIMARY &&
  1774		    !hci_dev_test_flag(hdev, HCI_USER_CHANNEL) &&
  1775		    hci_dev_test_flag(hdev, HCI_MGMT))
  1776			__mgmt_power_off(hdev);
  1777	
  1778		hci_inquiry_cache_flush(hdev);
  1779		hci_pend_le_actions_clear(hdev);
  1780		hci_conn_hash_flush(hdev);
  1781		hci_dev_unlock(hdev);
  1782	
  1783		smp_unregister(hdev);
  1784	
  1785		hci_sock_dev_event(hdev, HCI_DEV_DOWN);
  1786	
> 1787		aosp_do_close(hdev);
  1788		msft_do_close(hdev);
  1789	
  1790		if (hdev->flush)
  1791			hdev->flush(hdev);
  1792	
  1793		/* Reset device */
  1794		skb_queue_purge(&hdev->cmd_q);
  1795		atomic_set(&hdev->cmd_cnt, 1);
  1796		if (test_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks) &&
  1797		    !auto_off && !hci_dev_test_flag(hdev, HCI_UNCONFIGURED)) {
  1798			set_bit(HCI_INIT, &hdev->flags);
  1799			__hci_req_sync(hdev, hci_reset_req, 0, HCI_CMD_TIMEOUT, NULL);
  1800			clear_bit(HCI_INIT, &hdev->flags);
  1801		}
  1802	
  1803		/* flush cmd  work */
  1804		flush_work(&hdev->cmd_work);
  1805	
  1806		/* Drop queues */
  1807		skb_queue_purge(&hdev->rx_q);
  1808		skb_queue_purge(&hdev->cmd_q);
  1809		skb_queue_purge(&hdev->raw_q);
  1810	
  1811		/* Drop last sent command */
  1812		if (hdev->sent_cmd) {
  1813			cancel_delayed_work_sync(&hdev->cmd_timer);
  1814			kfree_skb(hdev->sent_cmd);
  1815			hdev->sent_cmd = NULL;
  1816		}
  1817	
  1818		clear_bit(HCI_RUNNING, &hdev->flags);
  1819		hci_sock_dev_event(hdev, HCI_DEV_CLOSE);
  1820	
  1821		if (test_and_clear_bit(SUSPEND_POWERING_DOWN, hdev->suspend_tasks))
  1822			wake_up(&hdev->suspend_wait_q);
  1823	
  1824		/* After this point our queues are empty
  1825		 * and no tasks are scheduled. */
  1826		hdev->close(hdev);
  1827	
  1828		/* Clear flags */
  1829		hdev->flags &= BIT(HCI_RAW);
  1830		hci_dev_clear_volatile_flags(hdev);
  1831	
  1832		/* Controller radio is available but is currently powered down */
  1833		hdev->amp_status = AMP_STATUS_POWERED_DOWN;
  1834	
  1835		memset(hdev->eir, 0, sizeof(hdev->eir));
  1836		memset(hdev->dev_class, 0, sizeof(hdev->dev_class));
  1837		bacpy(&hdev->random_addr, BDADDR_ANY);
  1838	
  1839		hci_req_sync_unlock(hdev);
  1840	
  1841		hci_dev_put(hdev);
  1842		return 0;
  1843	}
  1844	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104070105.D3aQ8W32-lkp%40intel.com.

--jRHKVT23PllUwdXP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
GSbcsMplcHP0f+LjGjH2TQIA

--jRHKVT23PllUwdXP--
