Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKHN52BAMGQEXFUUG3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EAC348449
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 23:01:13 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id z21sf2561699pjt.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 15:01:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616623272; cv=pass;
        d=google.com; s=arc-20160816;
        b=A8DlgCM997XuERn7awR6ZafKo8A9q9/r1h2c9bpw4b1n4P/8A1KJWTJNWj52OlAKq3
         KCnqy+XuBuxnApE4SyuVjSmn1Im9m5Xv86SWlxQfIZaYn/0ueKmxF/eeQE1A35E4ky3v
         ummTNu0bQqiPw5FxoTpgfxtDECJRiWbV2YaJNncfHiy9YjQNKR7S/lfbxFion9uAHGjc
         N0CN4uU+K9T9vLgC5ZD6WmF2Wid2G/Qf+mtwCuJLmpwSq1a3Yv+4XDj5pgXEax3Wj2yn
         NGt11c5fgr66VU0Ut0A2CmM1cBkQU3+DhRGJfj83lrOIqXYwAWTERpiCACTOeerN/WJP
         o8bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=2EvDuR2HsY4eQtq0EMuWfltemLKY4vnenKsK7ZgymFA=;
        b=xRYWb8Hf64eNmlGsGpOe5vLyIN8wjY1dCrS4kdUOIN4776+WAeFv2bI1AdrSBjxkQ9
         kGh5MaGroWpEYOT5lNGG4WuVCmhn0oaUjyXREg5P806MfUZFemmq+QB3roEmkNBcu0j0
         IHV5Y0Ln7cVp88VrOeUDkJf+qleqyuiew2q9bRmN15b0+xIGAyewl6RMrMWysryZgDFL
         K9VMrH1DnsmsWh2IrQEx9c2XXoeiE0IBX7mTM5F8OxnPvMgDhB8P7iCmYXo62XhRwUgm
         23xCtHDLyyqnQwqnkQJQDZOfp5Xb7LGj2YwQ5usqVU/nI+6CPez2Oybyf5ufQhhPIQMW
         wGPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2EvDuR2HsY4eQtq0EMuWfltemLKY4vnenKsK7ZgymFA=;
        b=hV/LvQJD2XdIEvGVxcsvdAwcA1OoxoB5nLNCW2ueCuW1380BKrPBqjzX5lUKFOlP6p
         7D9pq3ex0NzS5VLhQgU5u6IiTH31cq3be+M0crJYweNbIlPDCsjwporEWbhp9K86/1c+
         IeBmP8kq+ZuXHHydkSsmm7joygrHhtXc+2wIKiDTTBkPt8OpfLEMjlhryONDflJAHW/z
         ZZarYEm49RX/1NOV4uFsQ+GOOSqacX3S6Pg/JZKLzd8UP/CHi2dNVzDXBWgFa9qEdJ/a
         l9q8cdg+B1Avvq/WIWc2eAp5udEP7fV/mnSQGK+DgGkDujSeQyidlh0xZWTefhqf4jsz
         OPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2EvDuR2HsY4eQtq0EMuWfltemLKY4vnenKsK7ZgymFA=;
        b=G+8dL/dRkMD1srgyzPryeqCBTdbvAeaPtTIk7nYEY8Uro4TI/06pg6YJWMD/cjOWZY
         X8d0d+6Au0CQY1WZkb0WaunnRsGQ02j1oX+K/VckVvlAlzO51+Fq9xhMNLhK84F/VCkF
         JcjMNYc3tnHdoe/9u+2/qNOD/27HfMZ6LADO+yKEikPMG1UJ8lCuxWZb+wurgcKCUzc6
         nhDGMVupPha1cZCMS/3IgOTIF0tZgbuKyyL1xdBp4/n+0JVFwY1NgCRENp/vdKuo3Rle
         G8/Xeq9rboAI9/muSyWWejuwfQZy3Ut87P9/Yq2TxMfo+aX/RbAjWQMMjVc13awn8lFE
         xBFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314xBGdmbp2xBVBxEwLgHxmlW5lCyxC3Y85OkfqxPn1Xs2FDMfo
	nx/T4mXeoJG/HfqKFcCIgTQ=
X-Google-Smtp-Source: ABdhPJxEYG6vDCrriH83dCil5z9oJBCYvDnb7D0ygcFet5vmwf8i7ub06P+UhDn8Yx4v5Gi7AJaCDw==
X-Received: by 2002:a17:90a:aa81:: with SMTP id l1mr5610450pjq.190.1616623272251;
        Wed, 24 Mar 2021 15:01:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e845:: with SMTP id a5ls1249031pgk.9.gmail; Wed, 24 Mar
 2021 15:01:11 -0700 (PDT)
X-Received: by 2002:a65:4347:: with SMTP id k7mr4838881pgq.88.1616623271565;
        Wed, 24 Mar 2021 15:01:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616623271; cv=none;
        d=google.com; s=arc-20160816;
        b=FVMOi6mRdtxD3nvsiSuSBDp/Ddy81BzMA06BsZ50ovu7jClKWXvMZQuGuQdCLygGcT
         KOTR1YXMqhWDguTFR/gUAXReKvfQJABTGxUYHff/MkZ7inXqpvnaKUVPoMmfkFAz23kl
         aQRmo9R8RFPX95RbS+clHAJhXu5HwzJUJWTDkR+NvGjO+5OyNDcMhc6G/AuQeonP1TQb
         kehN1JILYWx9eXI+NBZYOf7FFvWD1WTTK8iXFnzfRgG2LZQnDv8LtbWBM52rgz3Yd1L8
         yFTQgPihzB89b89qYCJhgq4vcN0ZW0k4ZdGIgX/fME2+C+fB/Of7amG1dl2dUncNfHbi
         RyCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=H3CvmNrS43oypQLLLryzlW9F5GM80WbVD0c8fcpoVIQ=;
        b=P5uVgOYM45kUca3CrLnfAJwbVBmGqPJRB6VMWxvZCFhNqhJcn6CxaWkH5uVJ+fZm8H
         GMmfXU7azCiu6XgFG9jPFAxKK/Pa3DUm0oQLQwTRFbybHZbSGsFHXgovc0/LzDT64apM
         Fjaylrp44QKeCoEykbyTiI9i+tfBuecs2HstpcyP57pDP3rdgl4VBf4PyyUUUyxym1FA
         s12gmaNEnFtCC2LCCYLhhsHb8Hnm/P0mU30P+vi5Rwpfkj31SW4A3Ne1UIVJr0fXCGsR
         ZchCpZRdxtZmC4x5LH0O6ZDP9ggxkpesmXOEs383+gfSUmFU9NpNDxpyCB+Di45kEj8U
         /oNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id j6si118326pjg.0.2021.03.24.15.01.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 15:01:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: UL4RqFbaTQpfDx/pbQLHE7LLizeHcZ+YSIPH2zIYXht/zZUgrnyFPzH0INMc/HjUi8TXnz7rIv
 OO8hVGgndy6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="252149897"
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; 
   d="gz'50?scan'50,208,50";a="252149897"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2021 15:01:10 -0700
IronPort-SDR: zabYN6Vlmpv2ih+cskb7/OKyEsPg5+ywtrNEstHn7WH5cTV2w66gLJe+CkL5y5eJFJPQXe93X0
 xiN5l5TFmipQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; 
   d="gz'50?scan'50,208,50";a="374805827"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 24 Mar 2021 15:01:08 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lPBYp-0001YU-NZ; Wed, 24 Mar 2021 22:01:07 +0000
Date: Thu, 25 Mar 2021 06:00:11 +0800
From: kernel test robot <lkp@intel.com>
To: Lukas Wunner <lukas@wunner.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [l1k:pciehp_dpc_v1 1/1] drivers/pci/hotplug/pciehp_hpc.c:575:30:
 error: use of undeclared identifier 'pdev'
Message-ID: <202103250605.2WSCFbd4-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
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


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/l1k/linux pciehp_dpc_v1
head:   a0b9f6e639a1ab50faab2ed7a4b06994e9742b2a
commit: a0b9f6e639a1ab50faab2ed7a4b06994e9742b2a [1/1] PCI: pciehp: Ignore Link Down/Up caused by DPC
config: powerpc-randconfig-r034-20210324 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a4fb88669cd98db6fef7dcac88e3ec425d40c00d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/l1k/linux/commit/a0b9f6e639a1ab50faab2ed7a4b06994e9742b2a
        git remote add l1k https://github.com/l1k/linux
        git fetch --no-tags l1k pciehp_dpc_v1
        git checkout a0b9f6e639a1ab50faab2ed7a4b06994e9742b2a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/pci/hotplug/pciehp_hpc.c:575:30: error: use of undeclared identifier 'pdev'
                   pcie_capability_write_word(pdev, PCI_EXP_SLTSTA,
                                              ^
   drivers/pci/hotplug/pciehp_hpc.c:577:32: error: use of undeclared identifier 'pdev'
           clear_bit(PCI_DPC_RECOVERED, &pdev->priv_flags);
                                         ^
   2 errors generated.


vim +/pdev +575 drivers/pci/hotplug/pciehp_hpc.c

   565	
   566	static void pciehp_ignore_dpc_link_change(struct controller *ctrl, int irq)
   567	{
   568		/*
   569		 * Ignore link changes which occurred while waiting for DPC recovery.
   570		 * Could be several if DPC triggered multiple times consecutively.
   571		 */
   572		synchronize_hardirq(irq);
   573		atomic_and(~PCI_EXP_SLTSTA_DLLSC, &ctrl->pending_events);
   574		if (pciehp_poll_mode)
 > 575			pcie_capability_write_word(pdev, PCI_EXP_SLTSTA,
   576						   PCI_EXP_SLTSTA_DLLSC);
   577		clear_bit(PCI_DPC_RECOVERED, &pdev->priv_flags);
   578		ctrl_info(ctrl, "Slot(%s): Link Down/Up ignored (recovered by DPC)\n",
   579			  slot_name(ctrl));
   580	
   581		/*
   582		 * If the link is unexpectedly down after successful recovery,
   583		 * the corresponding link change may have been ignored above.
   584		 * Synthesize it to ensure that it is acted on.
   585		 */
   586		down_read(&ctrl->reset_lock);
   587		if (!pciehp_check_link_active(ctrl))
   588			pciehp_request(ctrl, PCI_EXP_SLTSTA_DLLSC);
   589		up_read(&ctrl->reset_lock);
   590	}
   591	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103250605.2WSCFbd4-lkp%40intel.com.

--1yeeQ81UyVL57Vl7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
iJ1CZeftY735EKaw/wc1dcqgKncBAA==

--1yeeQ81UyVL57Vl7--
