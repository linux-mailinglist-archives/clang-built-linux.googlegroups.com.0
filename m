Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6ORXWBQMGQEWTOAP5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8271D358E85
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 22:35:06 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id q23sf1432406oot.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 13:35:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617914105; cv=pass;
        d=google.com; s=arc-20160816;
        b=mrTE+X6ZuYvw4UsfK5/o+imCzk15gzyCsujVVUceUmOMe0PgzOGKoAQFkqzjaMJDtg
         yvjbB+PBAO161a36phA4ANCglEpK9tCOU1BQuQL0G1QMVoFy2+iYxOOQFP8SUMIjdX8z
         Cw5+3pIlPQxZaSIoFzzBkmGBVaYAnW9gRi4pRrTlneH+55Kyvb1uquy0pDnj4bVV/max
         pfQ2uo99K0/7Ma7L+3G57kYJq6Tr+DWkpkByzZnjBbMdl50M7cpEVN7rVyqlnv6mavLN
         4U/ZMnJA0SVHyZOmWC13akJL5WUuJ4xaw0cgKAOWdNnIWCi3ZM0HKSXSdhI2xzrMwC7t
         jJ5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=T5PKGFfs6wiwI7yDGFRcge3A1ee0D9rYn2jtLpBQeJw=;
        b=P9sxypfT43CwojrMDF2Czc1yqAuKxcDYE/70j81RMtI06taow9QCI5e/BD32nQ1HQX
         0/OCyctYcRaYGScHFpw8Mw+O4D74QAdKlM8WA7+hTA3qawss/2nJSnSwioiWcyowTekb
         s1222RqdW7w/+931hnqdL1+lltUFPEUyJ5uwouAOQxuf2xAdZLM6JM/lIPqHx2x5o7WA
         qgznDpa/Arc/GA5lL+1QUtbLT0IJ6C/NnZbvBgZxDz5GZNIb5IoPDb8s3rN1OM5cmx8U
         +kSU8oInN1VWRsGs0nr3OroFTUyP5i7fS1ufqiDXYQ4pa2Ac6Vkd9STLSsPCYNGoS9e8
         jAOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T5PKGFfs6wiwI7yDGFRcge3A1ee0D9rYn2jtLpBQeJw=;
        b=ddVN+8BOg82k2bx88ahVxipXc9ujfawWuPE1GEfQgSZAtWUYts0GUVi1KWujClH3um
         3eopEsbXqFogeMW+KiMfOWJYWUnx1tvegTpBxVV8UbovQ2ij4ueQeInY8aslIOO/Z8BV
         nxKPdC4j1YLIJMrHnT31xJZKVSFfsPQg3mIc+G68AxbIH7XYwUphQdI6I1LOrYcFGBdk
         N8i1IeDkAzZgxlD0hJeDKjOakD+RBi3C4iN1NNbaobumwW5WB1+NyezxhIlOHEnJXhUZ
         wB6cF1180xBJ/RUviaHe3+ZVoTXRIsyagNYQjpmu6r8l/p4vK8nTF96F8e98eLFkUElA
         7Peg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T5PKGFfs6wiwI7yDGFRcge3A1ee0D9rYn2jtLpBQeJw=;
        b=W3keupH1yiaefPfs1j+22MvKsOESi9Q0c7Icc4+GB+UGm7S3gbBS1Sl/Url9BYhjge
         BgcDrISZOzxLrb1jCQLX0p4z9gU2oCXGc+k4frXvA0/KInodaYv5GwPlfbFBHWXXnTlh
         cy5w3BCtoOVVQYDYJ45IdyRvZGFvQIXI/BpBkiFJdAAz9U8NMZ5UQTgyl0SCKaYDdd4A
         RuJIHKdSFnyif5shA35B1GkY5NanYPPq7rrrklrUKQpnYJkPUIjLCcjq02pU1OkAFcTf
         jmJdxCoSDZWbLMwdDKUa+G3srI7Zf2JTjcvyJgFu3SnkIDc5ONPiTiJvgI+G2xvYO0ZU
         vlzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Wxk82X/aWXb0coXgjo5F946mFrWKHqwXm6ZQS/hXDfAwE2uXP
	TaZ0FyEoCMM63JNDuzvZ07M=
X-Google-Smtp-Source: ABdhPJywvRgwOEMKZ2OjEasuKiQ6MyndQNzR0tMayZbW6a3xNLSa4V6J/i7stNHyIxpjtVjljAPCNQ==
X-Received: by 2002:a05:6830:1546:: with SMTP id l6mr9597254otp.139.1617914105404;
        Thu, 08 Apr 2021 13:35:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:2fd2:: with SMTP id p201ls102109oop.2.gmail; Thu, 08 Apr
 2021 13:35:05 -0700 (PDT)
X-Received: by 2002:a4a:d0ce:: with SMTP id u14mr9105318oor.36.1617914104864;
        Thu, 08 Apr 2021 13:35:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617914104; cv=none;
        d=google.com; s=arc-20160816;
        b=XJcEmH/KwjOpFPZLwkagKi7sGT+F0fY7Jlz98N2ODTnJgUn5MgJ3KLsFk88p+TdqJc
         8c+eh7YZrwjwuYAm3J0Qtezt57qzvo4D+Yia3Sm5nIc2rctZFI5DDksrA5yTTcRlFSmi
         4fS+fAzCsr1jKqznHx0M4BVl6v/iqFyvfuUWIb1OzR6FtHzmjm8CsNSGyVBpzYsWcHD+
         NR8lC2gY1aFm/26cEEVaVTShaORtUSpUS4nHuzavlojJZ+PbH0jB0RiSyJuqZRH7mosz
         i25aA8K72Y1v9XhehNFmGCwv1iqWooWK0nMOFxLobhqDSsxqmKLZfixu31slt2hcz6e4
         7I+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=+xzoq6P/rAphpT8clKizv+wzQsdqKaxv9TEVcR5FxC8=;
        b=EeD/a8XhnI94XCxcXdp2PLjg1qAJk+ucCBKzhn4j8wEVdt5/PLNJ9tk/Mu8q1ZjgVx
         DVAmqKxLWgEq97An1NaLCwQdo0Sg4bIcVPxVO5YYMDsscLgZAgWzyJuYSneVqzQtoxDe
         r8Rojk1UYunZBCMN+pMunk92KzwPxwbpFsqaiW6df3HbGQWJxzv1YhkBjb+agVogjVzk
         +aBMZumt0cH7Rwe343dxwAT0tDLbWtZYza4iKN89OH/o38gHUHVd2DZIXTHwllpHcl7N
         J0KxJJrjifMGzCxFLQNJNxqf80FJ11Fi77XavY2Ke1KEBb2gkxjSfsSOkOgnqopAVeLu
         6FoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id h187si39301oib.1.2021.04.08.13.35.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 13:35:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: iPoFdBf3MWvtiQ5fA4T9Z+r6JH3jNl8v2jW3nPRLyYjgHoqoifxYLThEku1g4a2pneR2F67htc
 kC3NT8vCyvsQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="180756988"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; 
   d="gz'50?scan'50,208,50";a="180756988"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2021 13:35:02 -0700
IronPort-SDR: BXIpFWK4n5VpDYvHpWibax2gjqOHi5CSVMVANjG7H1LNsocGHxxnRarJLxiupKH7QZJmcN4Mub
 mt6mvquEOWAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; 
   d="gz'50?scan'50,208,50";a="387529846"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 08 Apr 2021 13:34:58 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUbMg-000FbE-3v; Thu, 08 Apr 2021 20:34:58 +0000
Date: Fri, 9 Apr 2021 04:34:05 +0800
From: kernel test robot <lkp@intel.com>
To: Longfang Liu <liulongfang@huawei.com>, gregkh@linuxfoundation.org,
	mathias.nyman@intel.com, stern@rowland.harvard.edu,
	liudongdong3@huawei.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	liulongfang@huawei.com, kong.kongxinwei@hisilicon.com,
	yisen.zhuang@huawei.com
Subject: Re: [PATCH v2 1/2] USB:ehci:Add a whitelist for EHCI controllers
Message-ID: <202104090430.DQTfCAIh-lkp@intel.com>
References: <1617889760-17733-2-git-send-email-liulongfang@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
In-Reply-To: <1617889760-17733-2-git-send-email-liulongfang@huawei.com>
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


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Longfang,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on usb/usb-testing]
[also build test WARNING on v5.12-rc6 next-20210408]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Longfang-Liu/USB-ehci-fix-the-no-SRBN-register-problem/20210408-215249
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
config: riscv-randconfig-r025-20210408 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 56ea2e2fdd691136d5e6631fa0e447173694b82c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/01b93fbbf8fb6137c7779062232c0fe8c1592940
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Longfang-Liu/USB-ehci-fix-the-no-SRBN-register-problem/20210408-215249
        git checkout 01b93fbbf8fb6137c7779062232c0fe8c1592940
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/usb/host/ehci-pci.c:57:3: warning: incompatible pointer to integer conversion initializing 'u16' (aka 'unsigned short') with an expression of type 'void *' [-Wint-conversion]
           {NULL, NULL}
            ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   drivers/usb/host/ehci-pci.c:57:9: warning: incompatible pointer to integer conversion initializing 'u16' (aka 'unsigned short') with an expression of type 'void *' [-Wint-conversion]
           {NULL, NULL}
                  ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   2 warnings generated.


vim +57 drivers/usb/host/ehci-pci.c

    49	
    50	static const struct usb_nosbrn_whitelist_entry {
    51		u16 vendor;
    52		u16 device;
    53	} usb_nosbrn_whitelist[] = {
    54		/* STMICRO ConneXT has no sbrn register */
    55		{PCI_VENDOR_ID_STMICRO, PCI_DEVICE_ID_STMICRO_USB_HOST},
    56		/* End of list */
  > 57		{NULL, NULL}
    58	};
    59	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104090430.DQTfCAIh-lkp%40intel.com.

--qDbXVdCdHGoSgWSk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--qDbXVdCdHGoSgWSk--
