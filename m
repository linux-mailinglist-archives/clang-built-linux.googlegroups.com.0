Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3XE5H4QKGQEPXV3NIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id E64342465EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 14:05:03 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id d1sf10085494pgn.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 05:05:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597665902; cv=pass;
        d=google.com; s=arc-20160816;
        b=WvCcCbb06FPwpIq4zQPBttC/1PG0jAqejiGwcuC8t3X6bbnDAOaK0TWlenmH3lWABV
         Yfq+kua0RAqBfmVo6vXgc1f8v4tEZA2lVUZ90Gwt1EqpCcLwArZ+ykHmvmAjLTYJ7Xje
         WUsQllvStwBgL+EP3cQ8bPKNLXqAQTJsm0RhSgeJPtd2tJRaK88AYECnHgdQN+x+LJ5I
         cq7aSEmM/d7eAPElb+Mjxywz1s8UC2VgBQfmr0fPI+OTvLaUMdjsCkJmNuSYgd3TYFjd
         6DgIHy3W/1fBLgLhzZyz4KFA5OSbmye7rNyGyphl0P3DUyctWEtK85Zplybb924bI3tC
         RziA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=E1jaV2937NjhYMGJvjAuprKzFeZ7ELILyW5pamY2KGE=;
        b=ELwusdggiaZHU4OkuLU7RfDLjoIj2+GQCR3wo+5VPmHAPAax7Dy90KD3hpa5WxKuSA
         Pg2f9RYQtVpQXZpxVDg/K0o39WxJPXlwjdTNUoiMvNGXicuh4pZIUrdNfy1VyfdHLFBA
         iq9VQuDlE0RfmnpelrMxG06BaRIWbWxCSUX7g5X2C4bWx3/y+eGOczqQnxfd14eEPzIc
         tJPixSmKOkSoDv7MxJWOg2ukYS8UbHNFItq5Ik/iwe7GFc7nVPNdRVGgm1lPQUY0RcXh
         uc/KbIXA/silW2IKkro9DPYzusYK6DhyGqgIhJZ+HCxMcyP3F1/rDxoUqLIzru8QQKwH
         WIeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E1jaV2937NjhYMGJvjAuprKzFeZ7ELILyW5pamY2KGE=;
        b=lHW9S7nsCsCzK5wQESNQFtxjeJYphHm/72hqHMZbZ0wftGlKiywxLfU8U/nK6vOyRB
         YtyRGryhxEX7iFfT8fd6pviIEgOu2vF15V7bg43e5l39tNfD0mtzbW1JSr7bbqhzPjG1
         nAdyZlCABHiMPrq+ENM/uWQWDVcd1/XUnV22vpt+PdzCE6WrhmzyNA1WPzO6Sa9jFyq5
         +OWpqyUGgmXn6ayE+aFYJgl/eV9noEHLJQiU6EJBzuXcHdP4U3MFtDuhdaK7/C1s2N+z
         4PoVSf1OpAcro/qiyFmrCXgTHZtTAbgp2vTvTqkrHuZP26nq3rI4EOq4O2hlkxxNcGKr
         RUyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E1jaV2937NjhYMGJvjAuprKzFeZ7ELILyW5pamY2KGE=;
        b=tczAKuH5hCDtH44L5C/zg0Bh4jlzf/WDtm4kXftvc1Z4OX7/A/Ve1StfZaA+2k5Z2G
         8OOk/y7fkZCp1ONgoBfhviI111OSu/J574KNMJGQlMKleSxqy2E/DJNlCXDW94MOZIp3
         jFqxG/2vWruth5/SYA9UHsqukkIRPPS+8lzOdWU0yt5hmYiAkZuMAWFQXam0cGDWTDcZ
         oyyQK2FPHRdj706yXRqVewoPvm4fOR5fxZBHS+QrXdbR+8/j1AoLZyWtvRBxrGxuNBrH
         9jsVHefkjpy5qSj3/f7xKM9IPU5dauKzFbwC9Od8WlYhjZ4SAD2AZaToLxPJP8Y7duw2
         9dEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YwbVfPjhkjcjsLP+rVxKdfhFNdg6IU5Bw3xA+gRMDAOyRJDLG
	xV07peYalLaVJG41aGrptCw=
X-Google-Smtp-Source: ABdhPJwZJ6C0kSvXNstYI0ZOUsZr4hAyc8W2IXgGF7FA5YQiIloBOuDFbxVAA5gvF/6+HtY8Vp7jqA==
X-Received: by 2002:a63:4450:: with SMTP id t16mr9646304pgk.3.1597665902358;
        Mon, 17 Aug 2020 05:05:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:358b:: with SMTP id mm11ls6775995pjb.2.gmail; Mon,
 17 Aug 2020 05:05:01 -0700 (PDT)
X-Received: by 2002:a17:902:fe10:: with SMTP id g16mr11031284plj.43.1597665901807;
        Mon, 17 Aug 2020 05:05:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597665901; cv=none;
        d=google.com; s=arc-20160816;
        b=uMp3TVWgAGBv2bW2Np5OMHqGkePZqVKg7yu59VSwxxxUUafl+ULRJFokaxOUcZAWr4
         JEC/z6RejxbQtpOVso3roAf9JEHHeAYH7Dp5N6FpoyP8j92fZ4SLV2x51ajvnWCfJ6P1
         rDKoTuN/MYB/wQZXh0w7/lUOKz/UDy4xnphb0mkLYJHCVEKA1xykdFidkROt7QA+hGQT
         UP57eyvYNSbXNRL84QWNeGZLg/1hnCJ+2gLG2F14rtGVeprbrXFs7jsoQtS7zBBtzhHT
         ci/zn45670OsiSNs88BV1UPyOCXxTVizn+MshZGwC4PjZrFG+FvBtbH1aCWz2gI3mzUP
         v3Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=AWbTkzDUGaZ/KPqvWfhS86lPJAvYoswEnzlZ5+84IYc=;
        b=HXkzMCmcfcSm8vkUDTalf/p1J7+9Aj27CpRZxc+q/DmG5A00xJC0hKq7itMHk9HDM/
         FkuP9yw2EB+l0MJTvPQavjJpJRiGgNR3bZJzJ/lQur10EB+3FGtDa/RJbwpDMVkV1nxN
         E3ylOaFWpmRLbiIhNZg8GlIYbnKsWOMxnDCWlM+r1FSZxTsj3R2d/oRGED2yBPGLwOAg
         AzTFzCa2ShfdPRnDzM/PEpH3V+ZC3x9w545oSuo30lJ9stOXJUTbfIxnBX5vmRl398pm
         7pOFKWRkIiObIdoa80ZMYogwFQN5hSqBWnWNopNwgpOYJD8dhJm/ZZjoTyjleB2ytUkU
         sWAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id q137si832503pfc.4.2020.08.17.05.05.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Aug 2020 05:05:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: ROLOcuxmowoBYSar4hKSQD/KeJmwXeWXf62T5r08Qh/zBLkQ5WeRR6R88GyFSgBIhpSd7xT4y7
 3RUJXA1fHNHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="154662315"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; 
   d="gz'50?scan'50,208,50";a="154662315"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Aug 2020 05:05:00 -0700
IronPort-SDR: 5pNNNYPZAOVVYb3YF5TwX5fFmD8j52jdcX3ChnlXF4zOQ8PdyOs/FMT5ghU5cuTIsyX6LA6vJq
 syRi0J9aGA/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; 
   d="gz'50?scan'50,208,50";a="496460911"
Received: from lkp-server02.sh.intel.com (HELO 2f0d8b563e65) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 17 Aug 2020 05:04:56 -0700
Received: from kbuild by 2f0d8b563e65 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k7dsl-0000XP-Tz; Mon, 17 Aug 2020 12:04:55 +0000
Date: Mon, 17 Aug 2020 20:04:46 +0800
From: kernel test robot <lkp@intel.com>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, lorenzo.pieralisi@arm.com,
	robh@kernel.org, bhelgaas@google.com, amurray@thegoodpenguin.co.uk,
	jingoohan1@gmail.com, gustavo.pimentel@synopsys.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCH] PCI: designware-ep: Fix the Header Type check
Message-ID: <202008172048.aDk0pZTA%lkp@intel.com>
References: <20200814080813.8070-1-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline
In-Reply-To: <20200814080813.8070-1-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Zhiqiang,

I love your patch! Perhaps something to improve:

[auto build test WARNING on pci/next]
[also build test WARNING on linux/master linus/master v5.9-rc1 next-20200817]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Zhiqiang-Hou/PCI-designware-ep-Fix-the-Header-Type-check/20200814-161623
base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
config: x86_64-randconfig-r013-20200817 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project de71b46a519db014ce906a39f8a0e1b235ef1568)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/pci/controller/dwc/pcie-designware-ep.c:509:15: warning: & has lower precedence than !=; != will be evaluated first [-Wparentheses]
           if (hdr_type & 0x7f != PCI_HEADER_TYPE_NORMAL) {
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/pci/controller/dwc/pcie-designware-ep.c:509:15: note: place parentheses around the '!=' expression to silence this warning
           if (hdr_type & 0x7f != PCI_HEADER_TYPE_NORMAL) {
                        ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/pci/controller/dwc/pcie-designware-ep.c:509:15: note: place parentheses around the & expression to evaluate it first
           if (hdr_type & 0x7f != PCI_HEADER_TYPE_NORMAL) {
                        ^
               (              )
   1 warning generated.

# https://github.com/0day-ci/linux/commit/819b7848e81d962a90377b2988abf5862ab35d01
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Zhiqiang-Hou/PCI-designware-ep-Fix-the-Header-Type-check/20200814-161623
git checkout 819b7848e81d962a90377b2988abf5862ab35d01
vim +509 drivers/pci/controller/dwc/pcie-designware-ep.c

   498	
   499	int dw_pcie_ep_init_complete(struct dw_pcie_ep *ep)
   500	{
   501		struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
   502		unsigned int offset;
   503		unsigned int nbars;
   504		u8 hdr_type;
   505		u32 reg;
   506		int i;
   507	
   508		hdr_type = dw_pcie_readb_dbi(pci, PCI_HEADER_TYPE);
 > 509		if (hdr_type & 0x7f != PCI_HEADER_TYPE_NORMAL) {
   510			dev_err(pci->dev,
   511				"PCIe controller is not set to EP mode (hdr_type:0x%x)!\n",
   512				hdr_type);
   513			return -EIO;
   514		}
   515	
   516		ep->msi_cap = dw_pcie_find_capability(pci, PCI_CAP_ID_MSI);
   517	
   518		ep->msix_cap = dw_pcie_find_capability(pci, PCI_CAP_ID_MSIX);
   519	
   520		offset = dw_pcie_ep_find_ext_capability(pci, PCI_EXT_CAP_ID_REBAR);
   521		if (offset) {
   522			reg = dw_pcie_readl_dbi(pci, offset + PCI_REBAR_CTRL);
   523			nbars = (reg & PCI_REBAR_CTRL_NBAR_MASK) >>
   524				PCI_REBAR_CTRL_NBAR_SHIFT;
   525	
   526			dw_pcie_dbi_ro_wr_en(pci);
   527			for (i = 0; i < nbars; i++, offset += PCI_REBAR_CTRL)
   528				dw_pcie_writel_dbi(pci, offset + PCI_REBAR_CAP, 0x0);
   529			dw_pcie_dbi_ro_wr_dis(pci);
   530		}
   531	
   532		dw_pcie_setup(pci);
   533	
   534		return 0;
   535	}
   536	EXPORT_SYMBOL_GPL(dw_pcie_ep_init_complete);
   537	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008172048.aDk0pZTA%25lkp%40intel.com.

--xHFwDpU9dbj6ez1V
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICFZTOl8AAy5jb25maWcAlDxNd9u2svv+Cp100y6aWo7jm757vIBIUERFEiwASrI3PIot
p7517FxZbpN//2YAggRAUO3NIokwg+/5ngG//+77GXk9Pn/eHR9ud4+P32af9k/7w+64v5vd
Pzzu/z1L+aziakZTpt4CcvHw9Pr1568fLtvLi9n7tx/env10uJ3PVvvD0/5xljw/3T98eoX+
D89P333/XcKrjC3bJGnXVEjGq1bRrbp6c/u4e/o0+3N/eAG82fz87dnbs9kPnx6O//fzz/D3
54fD4fnw8+Pjn5/bL4fn/+xvj7O7/b/mHy8ud+/nv9x9PJtf3O5/Obvcvfvl/sPubD//eP7u
/f5+/v7yw49v7KzLYdqrM9tYpOM2wGOyTQpSLa++OYjQWBTp0KQx+u7z8zP444yRkKotWLVy
OgyNrVREscSD5US2RJbtkis+CWh5o+pGReGsgqGpA+KVVKJJFBdyaGXit3bDhbOuRcOKVLGS
toosCtpKLpwJVC4ogd1XGYe/AEViV7jN72dLTRyPs5f98fXLcL8LwVe0auF6ZVk7E1dMtbRa
t0TAebKSqat35zBKv9qyZjC7olLNHl5mT89HHHhAaEjN2hzWQsUIyd4ST0hhb+TNm1hzSxr3
ePXeW0kK5eDnZE3bFRUVLdrlDXP24EIWADmPg4qbksQh25upHnwKcAGA/hCcVUX2H6ws7IXL
ih5tv7hTUFjiafBFZEUpzUhTKH35zgnb5pxLVZGSXr354en5aT9wq7yWa1Y7DNI14L+JKtzN
1VyybVv+1tCGRhe4ISrJ22l4IriUbUlLLq5bohRJ8shOGkkLtnAnJg1IwQimvj4iYE6NgSsm
RWGZBvhv9vL68eXby3H/eWCaJa2oYIlmz1rwhcPHLkjmfBOHsOpXmigkfIeORAog2cpNK6ik
VRrvmuQujWNLykvCqlhbmzMqcHPX47FKyRBzEjAa1l1ESZSAe4STAm4FkRXHwm2INcF9tiVP
qb/EjIuEpp3IYq78ljURksZXp1dGF80yk/p69093s+f74KIGqc+TleQNTGQIK+XONPrWXRRN
999indekYClRtC2IVG1ynRSRK9dSeT1QUADW49E1rZQ8CUSRTNIEJjqNVsL9kvTXJopXctk2
NS7ZkrJ6+Aw6O0bNoNtWoAAokKszVH7T1jAWT7Xm6/mo4ghhaRFnTw2OsRlb5kgP+pCEd3Wj
hTnSQlBa1gpGreLTWYQ1L5pKEXEdmbrDGXZmOyUc+oyaDVPqI0vq5me1e/ljdoQlznaw3Jfj
7vgy293ePr8+HR+ePgWHCB1akuhxDUH3C10zoQIwXlZ0U0jimpYG3CjeQqYofRIKAhFQ44oY
TQC0X2T8/CTz27s7+Qc71yckkmYmIxQFR9kCbHzmprGfH362dAt0FhPN0htBjxk04d70GB3d
R0CjpialsXYlSBIAcGA4uqJAc6d0ZTVCKgrCS9JlsiiYZsH+8PxD6UXeyvzHEYKr/nB44jYb
u8mREgVH4ycDhcIydXV+NpwqqxTYpySjAc78nafgGjAujbmY5LBsLUYslcvb3/d3r4/7w+x+
vzu+HvYvurnbTATqyU/Z1DWYoLKtmpK0CwJ2duIJc421IZUCoNKzN1VJ6lYVizYrGpmPzGPY
0/z8QzBCP08ITZaCN7V0qQqsgyTOMgbZnMIphJqlMkKRHVSkrsXYNWZAnzdUuOvoIHmzpLDb
6fFSumYJjfQENpxkbLtSKrLpkRd1FhlW688Yw3GUYR0OUcST+2D4gV4GYRObLafJquZwNSjj
wR7wNmNoDk15PXR0N6A1MwkLAzkBBoV/OZbpaEEcO2ZRrPDgtNIWjq2kf5MSRjO62zFkRRp4
CNAQOAbQ4vsD0OC6ARrOg9+e0b/gHFUL/j92UknLQceU7IaiAaSvj4sSmMa//wBNwn9iF2bt
a4/XWTq/9GxxwAEpm1Ct3IykC/rUiaxXsJqCKFyOc8qagLofRlIPv4OZSnASGFjejjUogfJL
kK/tyCoyFz5qznJSpa5xZRyG3mrwBF/4u61K5nqLngYOthg5zQUBozNrvOU0im6DnyAcnCOp
ubcrtqxIkTnkqFfuNmjrzW2QOcgrR9oxh7wYbxvhi9N0zWCZ3cHJ4B61qMQr0B5blrabOhCM
CyIEOAUxfxTHuy6dIW1L611R36rPC7lSsTX1SGZ8r4MWsN4kov3q2tvOsoN+qBSGpcPgFVi4
gZABh+G3yKagF01Tmob0DlO1oS2uG2EV7brUjo0DSeZnF1ZfdvGyen+4fz583j3d7mf0z/0T
WEcEVGaC9hHYs4MxFJ1Li+DYjL3i/YfT2AHXpZnDWLUes2CwhsCBu2EkWRDPPZZFs4gL5oLH
NBf2hzsRS2ov1B8NoKgQ0TRqBbA0L+Oj502WgVlSExio9ybjkk7RUmsljOKxjCWkM9UdZ4Bn
rAis5d56BKGnNZTne/hBMYt8ebFwCXOrI6beb1fdmLAdStaUJuDlOuLPxP9aLeHV1Zv94/3l
xU9fP1z+dHnhxrtWoPesgeNckSLJypilI1hZNgGPlGhTiQoUGjO+4dX5h1MIZIsBvSiCpRc7
0MQ4HhoMN78MvVAjgceNvdBo9Y14xNp7sOBxLwS63Kmv93uJgN4UDrSNwQjYHBi8pVp1RjCA
UmDitl4C1ahAOkiqjGVlPDZBHXtAm/0WpKULDCUwKJA3bvzYw9PkHUUz62ELKioTJwF9J9mi
CJcsG1lTOPQJsJas+uhIYe3NAeUG3OcWbNZ3jqGjo12685Sh3YkoWHogDVdEkgpYl6R80/Is
g+O6Ovt6dw9/bs/6P96J4i0XrdqqqckaHUZz6CADrU+JKK4TDB65CrJeGlemAHkHCvB94D3A
2qjhHbxZmpjolJbc9eH5dv/y8nyYHb99MW6t5/IExxWXWGUslosiIqNENYIaS9mVSwjcnpOa
JRM9y1oHvBwm4EWaMdc1ElSBpWEyBt7AhgvAxBPFxOh0q4BykBoH684bws420d/cXcnSsJ8B
FLWMxxYQhZTDtJ2bE5mFcZm15YK5E9i2SWcFh+/Jp4sHZ4QVTcz54CUQewZuQS9yYjGqa+BX
sK7A3l421A2rwfUQjOCMW8zyfF2Rr1F6FQsgQdBViRce3VJPZcHPtl7HdqcB+br0ugJxr6nj
YjkQw62Z9FthCIdvwUYINmZCoHWD8TzgnkL55qzXvd9yEJuKYNj4Qr/PX+Fico6Wjl5AlF5I
IqoT4HL1Id5eyyQOQBPxPA4CKyPmAfTKp278K9UkU4Fy7zSLCbJcuijFfBqmZOKPl5T1NsmX
gVWBYdu13wL6l5VNqdk8IyUrrq8uL1wEfe/g4JXSoTIGol7Lo9ZzDxF/XW5HkmqwnzCWiO4m
LYBuHQsSZgdeMxzv+akdAPg8HqTo4Pn1kseDnRYjAduVNDG2tBg3OeFbNyGR19QQowjaKHii
aDkI5Rw7qRchcuq6i5VW1RKtVVDWC7qEqeZxIOZmRiBrBoeAoQH2oJflpxk07WDOs0UNEZAd
jzQKKsCuNHGBLnurYw6YPAqIJxmpC2jCQGFBlySJBcs7nP6mg2ZM1sicFyNdYPpgUmtiUJVT
MIKLQSAajex4N5+fnx6Ozwcvqu74Tp26aarQ8xvjCFLHlOEYMcHIOHUdgokFeRzUObcdmXlJ
PHNpdYF/UTeOwj44Rl/JEmA1kxAbZJJtNGuLy60eJ2C4EZxjDQQKrcwL9uirciVFZ0Kw1G96
r40rvy1lAu6uXS7QJBwZOElNTJ2EVCyJxQiNvacNHdDWwEMkYuX24MGp9OBaLlltjynFMMTQ
gYKkrAaheGtXSD2mkmW4mwLZobCWASb7GooW7X53d+b8CTaMMU/wfrjEWIRodHBtgvhNIhRj
9BsU38N9KhGTeHq5xmsOj1mC9zUxSVOyOkTvbLf+UJTJOrcreh27o6GLklt9vmjfxwcdMOKC
PYKJIeBYjCZzA2oZAzpqvOAEtpVsOxGylzRBVzQKy2/a+dnZFOj8/STond/LG+7MUTc3V3PH
1zHGZi4wGejYXXRLvRyqbkAPdKrEgci8TZuop1Hn15KhtgBmE+h3zX13CzxiDKL4zGVoCYPJ
GLPz2Vo7qrqXawrYWcALX1Ywy7k3SXoNpgOWChjCAv+cu2VOw3QGYRoyTFSTVBcBnH3dBXGr
dSqdiKjRXKEQ9iRpiLLlVXEdPekQczLPnJSpDiaAop2QzDxlGZxEqmzsc6rWpGBrWmMmzFM7
JzzTUegCTqq1MtiFGZFqTzbnqi6aMBE3whHwv3UoKjssWRfgNtXow6nOoo9gYbhBBzhKthSB
PnTxVF57KMYAeP5rf5iBvt192n/ePx311klSs9nzFyxE9BzzLggSLS8wERTae14uMZetLCit
vRaURbZ1MCXKdkNWVBd+xHiv9Iawrp/bnaRrzOWkk26rXcy4d6pnN0Uq8WR9abPUKhZJAHBS
rLwVWn/GlPJ4OnvzG+i7DWg7mmUsYXSIzMeHDoYKT9SP5uAFOrDRL8t4WkxJUIt81YSDAank
qstqYJc6TYJBupiw2Ya25OQ4Uqox9Vkv/eSsB9DJhwmvFGeqE2EWG9PWekM1U6PR0eLIpFng
9OCCrltgQSFYSvv43tQ8oDfc6icXRGJEoSELosCuuQ4OZdEo5fEqNq5hETxoy0g1mkyRGBua
M/UlBTZp71VQIDkpA9DgdPbGeBzMvLSgD5zsRJZLAaSmRiidOxIJDHfbQ4nV1CCt0nDWU7AR
U5v1JAzzKFNhDzwgDt4vKJgTZNLJ8050Tx2+xWLcdxwNGS/C08/dzJhZSSMVL2EWlfN0tJPF
UpzYhaBpg7IPSxk3RKBpWMRWOjA1qakjGvx2P5sbQR8wlzmN8ANCKDilU2dlEDAoHwTx0lpl
hmt96c4wKw/0FDf07UXC/7PAEUfJ7YcepLZ5bZXZLDvs//u6f7r9Nnu53T16LrDlHT8ao7kJ
GSaMxmiAzbEu+dqtMJgIroy74NYx1Pi3g6PY1FUhk7GdURdepRRWMx0vGvUAWFdHuj65hWC3
kQP7+839D5v655s5tYmeBO5DEpjdHR7+9DLJg0tVD4ELl8wSHbrEOSecOyuNO4LyXcuM/U1v
fXQV37SrDz59g1lGU1DGJownWMUD+r8wIeFSixS95Zffd4f9nWPlRYezRdxDWWKEVfojZHeP
e59xfKVhW/SFFGBGB+VaLrikVTNBbD2OclWlBxmH0m2LjbaH29Jrd9If+prHZbbWX/hbs1kf
yuL1xTbMfgAtNNsfb9/+6ITXQDGZsI5jNkJbWZoffqvJXViHR6NgTHp+lvt4SbU4P4OD+K1h
wssCMEnA6ohnixCWlgTjnVPJnmuZedQwsTuz84en3eHbjH5+fdwFFKaD4xOxu62bIu38z3HT
CAVDsc3lhfGWgXLcLH73FKLvOSx/tES98uzh8Pkv4I1ZGrI/Td0yInACg9hMxkSp1S6YCEGY
aHAySsZilhu0m5IsLzreSnwDVZIkR+cXvGMdisk6F2tAzTZtki3DAdxW60G7611yvixov+yR
VIS5Zj/Qr8f908vDx8f9cDIMS1/ud7f7H2fy9cuX58PR9RJxiWsiYg4cgqh03QNsEZjHKuHY
iOcMmq2uYscZ6bwRpK69SgaEWq8JI1pdpWIfSyg4CQQQ9khILZvCQicmVX4Sr66xhEZgyFkx
3xLCyKMy72RW4FIptiQTcUq9mYSdtzZ25C0rBf5Es1dLjDA13hH0/3JfdtZG77l2TaO+yS+0
0asAVwm4KG91nFj4QFstYDWM2n867Gb3dhFGm7qlzRMIFjxiRM9MXa292CymPRtg/5up40XP
Yr19P3dLMCQWUczbioVt5+8vw1ZVk0b2jzls3dLucPv7w3F/i5Gin+72X2DpqA1GWtWEFBMv
a2yikH6b3ho3hVROs21Bk7y3ZIdwpqndiGz616bEnNfCTxqa55Q6Bo0R/WzifaBeyxCdaCot
XbGSOEHvLnDdMLeM7wMVq9qF3JDwHSCDfWLlUqTcZxXWnphWLLmIAXgdb++GwaeUWazGNmsq
E3wHVx/92dgTsDX1vZ6hqFOPmHO+CoCoM9F7ZMuGN5E6Kgk3oM0S884q4vCC8lIYu+zKpccI
KEHCQK4H7DJD5ejQzcrNm1RTJtducqZo92LCHQsrmGQfWFa6Zlj3CIeUJQZbuwei4R2AcwZ8
VqWmAKijFLQpQjzpOlT+9eCL18mO+aZdwHZMsXsA0ykKByz1cgIkdC6wmqcRFShUOHjmpa+D
4tQINaBzjba0ruM39U26R2yQyPy25FR0R4Rphtiteax7AhopAC7LpgU1k9MuZqYrQaNgfEcT
Q+moy3CDed7SVUwEi+laTQJ9ApbyZqJgrrPe0DwzLw7ta+QILiZUB/zYmXR5qK6yMIqBJ14A
eQTAUbWaldpdRZsH1kmKQJw64JNPXDdMgSXX3bwuhwrJA0UJ3SotblZecY8GTzxjC2Xt+AFb
yCocSbEMy7KtpKswEYxC3+YW/ileWzfRMRGORdZhkFlfrQZilgM070gZmovjmZZy6nq0j9Rm
rmmCRckOmfO0weA2KiZQcppPIvJTg2xWLDa3V7cbINAtU3HB7vcaSoEj4zp1vFODuCiRoTqw
RscE45io6murBtTozYKhxu6F7Vgfwrkxk43q66EHjM6j9AU1sqpkyy5b9G7krXVwEmjf3t1b
MFNWFLsNpCGzEs/661unsvmGj0EhK/sEX2ycwuUToLC7oato9xhoWHoNJwmeb5cg9pVnb0KB
no/ZSahw3PcFYdfuhUZLq0Rc67e2xkxN+Pqnj7uX/d3sD/Oc4cvh+f7BD3AiUrfzyKgaas1P
/131GDLU9Z+Y2DsZ/NAIBsxtdix4F/A39rUdCoRiiU+DXMrXr2MkvusYvlbSyQSXdLo704/h
tdM3lV5GrKY6hWFtolMjSJH039YoJlPZGpPFs5AdGLkFnMuTk2Hd+AbMIilRT/QvCFtW6jRh
7LsNFRAhcOd1ueCuoLDCVD8C7tOFw5s7pM+o01XNHceyMh9dAWENShDPcpTSHjKYiqMdKspN
hEn01ylSPYxOFU+jiE0MAekagymY9SvAe8fTIWmKx9nqE4pxv3301C5ohv+gDed/VMHBNeUM
XUzCicj0b1RNgOXr/vb1uENfHT8YNNOVb0fHbVywKisV6qiRmIyB4IfvTnZIMhGs9jIVHQBI
I167i8OEBTBDnGFi2XpP5f7z8+HbrBxCoyNn+GQV2VCCVpKqITFIaAPY6ir8aIeKjQQGFQhV
GgOtTXBpVA43wgi9FfwOxdJNmnfLYJKHgc2pghC/vZtyEmwzMrwK43hhMUns+ZapJNFVJKYq
9iKYZoHCwn/P1TUZiksm4ioDcFi5tgQFRU72TM9IgYpxndvwvV9+rctswIEJH4OZCniOVofv
0jjO3BAZkbEqc3uS+uLNVzxScXVx9sulx8n/4HGDD4k/e4vZ0sPXIWI2NCk2JFoeGMUuzYvU
qDuPJT9+LMZ7FrVyWCkBv6jSBfROW+k9QYefk2U1PcwNQGMjvt6SV//yzsyx5yND3dScO2x/
s3Bdipt3WVD9fCPN280Tzwl0ZNJGoNy+OjCjT9H6W6fsx1o/hvO9GPOmJXxlAgesq+bxux+O
wYQfBAALLS+Jn5fRhjnm6vWFYTIjm6zgtQvRDo8rHstOkeljbXNa1MF3XqYl80AcrvhcLczT
JRvn0eK92h//ej78genRSIEYSIIVjcUSQfU7NjH+AqXkBXB1W8pI3OgBryVe5JqJcrp2CPaD
Uc54z7TW31ugUTuImaMYCKU2r+vxq0Dx9Fk9lJ7p5wGxQAAg1ZX78Sj9u03zpA4mw2Z8VBBP
InUIgog4HPfNanYKuBRIy2WzjSzTYLSqqaogcHyNyoCvGI3fhum4VmwSmvHmFGyYdiJJiXgk
n4aBgTsN/H/OnmW5cVzX/f0K11mcmrPoGkt+xF70QqZomx29Isq23BtVOsmdTt10pyvJnDvz
9xcg9SAp0D51Fz0TA+BDfIAACICicP2UTWz/uSYQF6QDqljRge3qD3HhX8CKooxOVygQC/MC
+mROL1tsHf7c9auNOiY6GnbYmBaR7tzr8J//8fDnt+eHf9i1p/FCkqkzYGaX9jI9Ltu1jsLX
1rNUgUin0sDAhCb2qE/49ctLU7u8OLdLYnLtPqSiWPqxzpo1UVJUo68GWLMsqbFX6CwGubrB
cLXqXPBRab3SLnQVOQ1eKWr3zAuEavT9eMl3yyY5XWtPkcGhRKsCepqLhKyoO3uKipmiMP4c
rRcNxXb8aSthKjHdJtpy8ZC8SANCojITwSmbFr4cXUCs7cEkdlNcQAIvihnzcmDJPNy5jOkp
gzmlRziq6OQMSehpYVOKeEeJm9pkj3xE2smDNIis7JhEWbOahsEdiY45yzg9WUnC6PDOqIoS
eu7qcEFXFRV0+otin/uaXyb5qYg8Kdw45/hNi7lvVVzIQRUzKuNGnOF9Emh3R9AxfphaUgWa
KvJjsrK84NlRnkTFaN52JIQQs58qAa730EgLz0mJX5hJusm99ItLuqcg5XopkhmImhKZvo/q
rqz8DWTMTXnXKQs67xXSFKWgs6caNCyJpCRdadRJW6OCeG5sH7DNnSXOtBlwfJwBrbo8Sltf
h5F3TCsJTz6e3ttMhNZ3FreVL7+g2o1lDkdtngnnyqiX1kfVOwhTAjemNkrLKPaNnmezbDwu
xVsYxtLHs7bNLaOU65MoeaLdA4aGtzvcjMHY77JD/Hx6enyffLxOvj3Bd6Jp6RHNShM4LBTB
YDzqIKhcoTK0x9wnOsmIESB4EgClufP2VpDBQTgra0tTxt/K3qAyQlnTB4j6wuyuiRxvxjQI
WlZivNijxyVd7ZaeiELC6edLBopC75bGXTjNY0yTYlsCYN9B93S+q74KNHugCZVyZqr2FWjx
HQNzr82G3FNqGcRP/35+IBzuNLGQxr3d+BccYBvkGKllalIYdJaiCmhfIZBdzSsWhcqIK1mo
xdDsnR9GaM8AVJYvbaAa5gnAETlWCiOLdEQti/RSTFBHQjpU21i0ZWkaeg31xBd91ZGsKdJR
O03hEWAUcnOiq8I8x/ZQ+hIfI075sroDemGTIbbUiXO6+DdP9KsKDnECXhGmDoADJQmoxB5M
oDPctsT7ejNVNBa1rD4IQLMrMsU2PMFGCjPnhGq5dAamiKRwmnA8QxCk06eYn9GZjtE312W9
CHt4/fnx9vqCyUUHX3fjUpU6XYeWrPj2dh+/P//x84Q+e1g9e4U/BgdRc1HEJ3vDAKCxAgRb
GOauGS23Fq7yofuWaUfjxBfiKgMZLiOP3Evd13cbr99glJ5fEP3kft5gZ/NT6eG9f3zC9AYK
PUwBZmAe1XWdtvdIp+ezn2v+8/HX6/NPeyIwk0bnSWUNUgfv42k8K4HDLmmdYa2e9K317b//
7/PHw3d6yZk78dSKoBVnbqX+KoYaWFRaOyVlInJ/q2vehglbRoGCjm982/dPD/dvj5Nvb8+P
fzwZvT1jwpShavWzyUMXUgqW711gJUaQXO7FxuxqvLwJ15btYBVO1yE5Edh5vNHsH8oYxJ2o
EI48ODiwPj+0Z+4kH9tyD9rdQBuSyVuUY5UWdhxkBwPJ9pCRKaWrKIujxPGgKkrdVu9Arx6a
GPW5dwh+eYVt8TZMxfY0OHO7IGXejzEzs3HU11UZ9a0ZCWqHUspDT3+7JfJQBL1DPvHBQ4Hu
wt7qYydmjZ2e22/sxWqduvPY38wa9z3qlp/GOVBjojBbVVyKo8f40RLwY+kxQGkC3PttNc34
8nEwfSBZpK7QW2Llq0stkLM08oAZAuiQGUod5J5XHxB9PCSYh28jEtF643d7ge+suxv9uxEh
G8Gk6c/Uwk7BCJSmZrLYrj7z2YSuPsaMfIDoM6x83dS63NopkWBh8ozxPk2w7RMz3rJ9oNGj
kqKtPZzuxTjgx4je6YoYbDAHpcDjx7jLbLUOfzcp5j+HsY8oTUJRSFFuW5JR6cOm9pdOK+ui
D36qhUTw6Pu3j2ccjcmv+7d3R4zBYlF5g2q8x8qCFF1QyGUqmDGV6omg6s6pUVdUXw7wJwgG
mMhd54+t3u5/vuu4o0ly/7d1DmJLeV6Y99tVrNoUeHkOq0YbYDqxq4zS38s8/X37cv8Ox+P3
51/js1V9o5nnBQFfeMyZs5MQvkMBdwyG8mjmUuZ8y3utQ2Z5e9lsDy1gNsDTz3hrefLERXWE
yX9KuON5yisyEBtJtCtkdtucRFztm8DurIMNL2Ln4w8VAQEL3Q93ru9ceowwtPIg9WOcggYe
j+FweEZj6KESiQ2F9eAA7DxGakds0FmGXMIXlpOWgu9//TLCY5WdRlHdP2AOFXfv4bkH39nd
T/s3Fzp9+MLmVJfT+GZZl2TiQMQLtq/1lxpALjfhCMhuV9N5TYyKZJuw2SaRx3CKJBmvPp5e
vOhkPp/uaMuT6qMKKz2iEznFYdUwgNqiZ3DQKK6MuH5G4unlvz+hbHz//PPpcQJVteydZgZF
yhYLZxlrGGYI3qrrent6NNKvciMR5ocejZ+5tdi+CGe34WJptyxlFS6cZSyT0UIu9t3ImHVW
MUBHh0L8/P4/n/KfnxgOlM/CpPqcs53hpLxRDtUgSjfp52A+hlaf58PMXB90i6lnPIsyZ2e3
QJ1V+9ycSlFxmmJ4ZMVmMy3az246irBGtr4jxhBvpjNfHL2ajEKMCNQwJ0Ucl5N/6v+HoC6l
kx/a0YQwKagdogpQjOd6Vf/l9igvR1tYg5UT6FxdJOKLfpSkWbQ8uBX2+loshGs7oWlGzzZg
Tw4bMQI0p8TI4Wi6nHUEG75p3/sbnpnpcOh0aEmwHWKXHLidvhcxSo72xXvn1KslbuIfHZjT
JvQZ1DUNojRR07tFubYoLSEFtafNl9Xlgf54fXh9MXX/rGjTFOnLlWPKKduKBden0fP7gyH6
dvPDM1AfJIyknCXHaWiGZ8SLcFE3cWEafw1gqw8MNx0GSpLB8aBcpWdb7BebFCPljMHYgwJn
Hzh9XuemIL0PKrFNnfBQBbqpa4NvCybXs1DOpwYM9Ickl5hhFlNeCGaZtEFBScwMQ0Us16tp
GJnu3kIm4Xo6nbmQ0Ei91w1xBZjFYmrtoBa12Qc3N1Qev45ANb6emuESKVvOFoZAFstgubJE
K9hsFXxTA6LrzP/Qi7QOD8umZUdv1/hkAWgh8Zab0UPowQFCvnUMFsciyoTHYzp094R28eYF
SizvRJi8wjRRFdJ31AOevjJv8d5Msi0+jerl6mZhLA4NX89Ybbln9PC6ni/99YFI3KzW+4LL
elQn58F0OjclF+fzO3q2uQmmztrWMCcTkAGE/SQPaa96tCHmf92/T8TP94+3P3+otznatCYf
qF5hk5MXOJgnj8Aknn/hn+YMVChSkyfR/6NeivPYpoUIPU1UktbCcjPTGUIFAWpMn/UBWtUk
eB/bboRHbUs7poT1HzMCvExSWMv/nLw9vag3i4k12rEo5loRuo9lYts4F13HvLhAbe4wjKeQ
lqB7qVuG5YBnpzva0MTZnrrjUbs5ShiG6poXeP0u94EP0jDb7CPQCqMmsg5afCCMzhFjnUxD
HRifGfdXJhLdIVqR8d29KkFkk7ZpwDqJkyhg2CcP0nHT19PNOZ8Es/V88tv2+e3pBP/+NW5u
K0qO1/eGhbKFNPmeWV/dI3zOOQNBLs/k8FzskyHIRAxWYY4JWZXlkFpY0An9toFxhCkfESdT
9SbPYp+jmDrESQx+xu4QlbRwzO9U2okLHsgVj+jrUfg0dL6iHZgKL+pY+zCoIHgssBtgBYeY
Vq53Hjcz6B+Iz77vQm0o9zgeVAe6gwBvjmpm1CvCntJHXnl8pZQvhnfNZUnqyYUMcq1TqFMR
P96ev/2JbEbqy6XICDi0NJjujvA/LNKfjBhnb/nV4+cfQRYBXjRjtkTIk5nnMltdW83Y4oaW
FQaC1ZoeOZBNOG2WqM7FPidDe4yeRnFUVNyRixVI5UHG3X6lgh239yKvglng8z7vCiURQ3W4
zdXbccVEwLnh4QND0YrnTtpM7pPd2pO5ktc+Io2+2pWCXt1P8bWydjbHNF4FQdD4lnqBC3ZG
u1e2s52lzMcI8NmXekdesJhdAtaVVcLyFI3uPHFeZrmSkctZ5ZTI7USQVeJzEU0CL4JmC4jx
zd+1hXQo89L+TgVpss1qRWYaNwrr56DtnbqZ0xtxw1Jkwh6fwqymB4P5FmYldnlG8wSsjN7Q
Oi2vq42YBa8sVfhgFtmPI2yy6HIZLOC8oQnHB+U9YxU6ioM1rtX+kOFlKQxIU9BecibJ8TrJ
xmONNWlKD00i7g7u7fkI6XSC+Mo9T6TtQtiCmoreAz2anvoeTa/BAX21Z6IsbeGdydX6ryv7
gYF0nNtMUFDRd2YRFQlqBxPWDb40S8tiV7lpbJ9FOn4nEZQB1CzV+iIODSUh7acuYXF4vOCM
+jCJIbcsBBseXu07/8r2oiA56PbwRVTSeqG7Zfbb9PglWF1hczqhn3XJSkYDG0X2h+jELdF+
L65Op1iFi7omv2D0QhEPSP7K23ccLLqpJ5ZlR7vEAtzDAETtK+KeijbGV93c1zNA+Mp40tdu
02BKrzmxow+BL+mVOUyj8sgTa9TTY+rjW/J2R/dM3p4p7yKzIWglynL7aiip543HFRpwC6WE
+bDydBG9pVxHzf4IVtqr7VauVnP6kEXUgua3GgUt0kFSt/Ir1Fp7rgKc/uTt5ja4IwtXX5b0
SyeArMM5YGk0jPbNfHZl16tWJbfe0jKw59K+GIDfwdSzBLY8SrIrzWVR1TY2sF8NopUyuZqt
witHCvzJS+c1WRl6FvCxJmOf7OrKPMttT+Vse+V0yOxvEiBBY3R9BqoLppRtXLluXMNqtp4S
vDuqvRorD2/dZeWWLlzVlej5EQQR63RV6WxiR7kYF8xvrW/GnPNXWL+O8Iax2InMTqSzj1Se
WvJTzhx91LbiimJR8ExiKi7rliS/ehzdJfnOvha9S6JZXdNC3V3iFbehTvTt9qHvyGhbsyMH
tDGmlkR7x9Aw7guuLNOrk1vGtkPncjq/spvQ773ilqCzCmZrTygjoqqc3mrlKliurzUG6yCS
JO8pMbStJFEySkHGsoKoJZ7ArkJMlORm6kgTkSdRuYV/dnY+T9wMwNFvk11TdqVI7Oc3JFuH
01lwrZS1N+Dn2sPiARWsr0yoTCUj+IpM2Tpga/q444Vgvqe3sL51EHjUR0TOr3FsmTN0Ratp
w5as1KFkDUGVYuTv9ek9ZDZXKYpzyiP6ZMYlxGnjKsPwwMxzJgkqtbzZiXOWF6BHW7rCiTV1
skvJZ16MshXfHyqLrWrIlVJ2CUzADMIRhjhLT+h25Rh/xnUe7TMBfjYlJhKnT1WBD7snMK1k
Uhaj2pP4mtnZMTSkOS18C64noJ91MyrXt7Fm5e39bFQLPxttaZIExvrqBNWidKw57X5CRFjQ
7hLbOKbXEkh7hT/fhdygWkPLt2g7GD/JPHRqf/bFAmq5F8XW9XrheSe7KGh2L2kt+SA3bVyq
umSxbrgABZo6PfKIvAUV0mPGRHTBd5H0eKEgvqySVeB5CXDA01wO8SgkrzyHPeLhn0/+QrQo
9jRTOjmMv4tsbU4xZXxG8sFcnuoDmMJVljUbs6n7feoAuxhJiGSlqRkOZqIM8yWB7Yw5BMp5
gtZFlVJYqhdGY3m8N4tSyNQOxScqHdRYCslBwvWOaRnZUaYWrpeGKKQZg2giTA8RE1556L+e
Y1MIMlHKys4z2/zVspwyOrOxPztXEdCT0zMGMf82Dvj+F0ZKvz89TT6+d1SEs92JPB+UgKvu
S83gxeEYSFFZoe2OrXWq8USEtFGBfl0HG5WCPq6R91DxxIMeIGPiXvvnrz8/vNfnIivMVzHV
zybhsXRh2y1mJUus4ByNwfwB0GsXrFP13Vq+eBqTRlUp6hbTu/6/4PMwz90rDO9OFzFaSnLd
zPC9FgbDvMlcTQ6ZhIMBJrj+HEzD+WWa8+eb5cpt70t+9mV10AT8eA3vsDJjnnxOuLrkLT9v
cit6r4MAOy0Wi9BSrW3cin6a3iGiNJmBBB/xsMJ+BlR1u4nJxu+qYOo5uSwa0gnOoAiD5ZRo
OG6Tf5TL1YJsP7mFnl2qeleYAUoWWK1tTg13xaLlPFjSmNU8WBEYve7pTqarWUhzFItmNrv0
JcDkbmaLNdlCymiONBAUZRBSKltPkfGT9Rhjj8D8LWijlARuUGJHA5wn8VbIffuMANlrWeWn
6BRR0vZAc8j02hvNRBo2VX5ge4CQtVenZD6dXVx3dUXXjebExr5gMViIlwkB75Dtw8uD7bqF
NVEWJTnlpzlQzGK6pEfw7glYvilpGbgn2W1DKjhzwJfmhYwFblISc8BHy9O8IrusxKOIUYad
nkaKmJ9E5rxA1KOrNKbUmKEJZeEjeqYRreMa0TWNDj2uBT3dKSpL4aamcYnSaKduBC5+J+ZT
zssN0VWF2lg5xQccZo71jc1JxF9yat/0JF/3PNsfInpBycU0oJhBT4GnoBMw2+Pqgnx5tccX
EinsAFIC2Wy3FL4uGdnqVopoSd2m662nEsUZoo7+rdQbGGJmvk5gokRhCcYGaleZWoGB2EcZ
yJU7Ene7gR8kplUBRzgd+gmLDfST+ZjfKAanxZULIoebxLpFlqmYOy7GCmSH+yLEDvZVkHTj
QLamM3wHUf3PHXgYtz7ALn0QjCChC5lZQk4Lo6/5NdKT4KxFLkaS2P7+7VG/CfZ7PkFx2Qqa
sL6GCAZxKNTPRqym89AFwn/dsBGNYNUqZDeBxzCpSEDdLSR1FanRidgAelxzGVHXhRrXenjp
cnZjMsR8iy4YPt6mbrWbsZSq6bVEZXfroFBEn3ZRyu1XsjtIk0kQVAl4MieAPD0E09uAwGzT
lQoI6f0WqXkfvK4JLUprkt/v3+4fPjDThhthU1WW3HH0Zf1dr5qiOhtbv3163AfU71t8Dhd9
ZFSismli0D9mUujUKvn09nz/Mo5tbFmK8RidjViFiykJbGJelOiSwuNxhLNJp4OcrMXXoYLl
YjGN8PVDgfm3vWu8o9+ipEBJJiYR0462nk6nkaeXpkO7ieB1VPr675GjTZIUVMeUdOwyqbKy
OWCM/JBm3sR2bzZ2JGRDKvd0TF65WQNw6t6oJZFXv6eswhXpV2MSJda76dZwiH5FZq8/PyEM
KlFLU4WJEEEVbXFQaGbeCxqTxHNNo0lwCBNRkak0NIV9BBpAY2G5tX6RtJWmRSfoNkqnC20p
JGNZ7TFAdxTBUsgbj922JWrZ9pcqQgd82q5kk14jE9t6WXucMbqaSs+NoUaXBS06t+ithPEp
rnVDUYlsm/D6GiluuK/BjA4C6wazcKMT+vhki0s6qyBlVZl0NgK3Tp1OKIt9gQ+9iltVdNxE
1uw8yyjLv+Y+d5EDXuJ4alQpUUBzyiiWuT92yWWMQxtgVlwmAqxnlFsAkcitHQa0mFlvTRhw
NXzQWVfSARDavLOKdvRqwxjYhQAKUaQCZe048SYnTjft7dGQh402y57a982IMUOjl9B3A22y
K7RKTx6IY39YHueMKbsUo25BMBMVpsOda/e+EXRuHr6sDOeWzUgU3SULuZq93TOuxk6+JIf4
coPnrhhQtw6uW45HK4wUCN253hceezfM3o7tOeqr+GArUXnF4F9hVK8AQrpBvxo6JnPi1g1w
w8oFZfrpSEAH6q+MRuURCaxJZJz0jTDJssMxt8xmiMwkswFkS1dasDYpAphpQkDAscKElWVe
n4mRqWazr0U492NsNXCEdYeWJ8x94sq8fE7OvixLYwnaUNLUtgSudpDqUUdKiTVJMPVQn+dM
29VDRlx7WEGnDDMVwFTlINzurKd3EKp0GZiK3Aa7z6wrGD58al2FADA91F1f0j9fPp5/vTz9
Bd+K/VJ5N6iYUl1MHTuUQaNFJxWbz6bLUXMg2EbrxTzwIf6y+EmLgk+nuWiLT5OaFQl9hF78
LruqNh2cJ9EoUshUnyX97EUvf7y+PX98//FuTSCIM7vceveoAxZsSwEjU9lzKu4b65VAzP01
TE3L+ifQOYB/f33/uJIZVDcrgoUtlbjY5cydCwWuKTu/wqbxzcKZcQ1r5HxlJwFocRhD5Z1Z
jIJKC8qQoFjcauosIlAz9y4krdxWCyFq2uiiOKKyr/ra1I6asPQPdjtSgNq/XrhNAXhJmvBb
5HpZ2/U4Hj8tCJjkyA6EfGGsPKt6WSos/vL3+8fTj8k3TBfX5h/67QeskZe/J08/vj09Pj49
Tn5vqT6BCoSJif5lV8nwiVD7KgrBMZfi/xi7kua4cWT9V3yciZh55k7w0AcWyaqiRRRpgrXI
l4oaS92teLbksOV57n//kAAXLAmqD7Kl/JLYkUgAiczdQTxSN1/qGjBrXKu6wTh5YnG0mcqp
7o8Bq2h1CnSSXWRxzCOjqMj44boDGmC5q6glShS4FZdJTpjP5LcqwWpqPMUEqjSBsk0JfvG1
55lvATjPeznBbw+3b6/uiV3WLRgvHAPsUFUwNAdrKvbtph22x0+fri1zeDcHtiGHm6WTq2ZD
fbg3by7kGAZHNq2xExEFb1//lHJ5rJwyTPUxOIp4Y02TN11qqCNFhKLi0pihuIdoATW5GpR7
Jo3OMuzRDj4unK8hFhaQ92+wuJQRVV2YyxVqQ6mAMBecNroYxNXls4Nj0uvV83TQRg2nHkCa
PRiqtGreiICjHXr7AcO0WJYiy3IAvpIbfz0lMBaE/6WZuo7xVXWj3WAIfdl+vigLPskLvJrW
XBDepy7dFTb2uLMg4NDlClBaOfh1YnfJA/WZ1UIzTvc4HUytzZcnQGeFT/gq4qHH6YDX2/pk
1ZteascZCAcvYOLuRi05pICf7g8faXfdfURcbuXUnt1iGCj6F3aaBsU92oIPPp38TI1DyRg4
/MewuQFq07Yd+PJ1xygCrqGpkuCCujaClPWpP5OMqNYLXT7ZFcEw+1YLeaq+6tkz/Q9Ne5e3
O0x1Av5j0u0E+csTOLJRmw6SAK0eqUXX6b72O+aM/HgYupFd6pEdm/KytyaQTtHU8JrmTuyK
zUxGUBz5o42vMJkbiDn7P0Tw6NeX77aSO3S8cC+f/xcbSRy8+jEhV2urpxrljWa5YNDlDESl
WOfdHh6EO1i+AouMf/yP6k3CLs/cUvUBTpeW/uYEudlSGPhvyt3P6AJ5AZTzDVgVxiTxZpWY
OQktvMwzL0F9kI8MtOiCkHlE34VaqLZEmKg2KEaMXfzYcRI+sWzy+6HP6/UKFvuq7+9PdYXf
DExszT2X4uAsbK2qPCWIOKsqFRNmPYOdC9m3lwE99ZhLmB8O7aHJ7yrs+6Iqc4jRgR9FzN1U
HU5Vv57PrqL1oXblUxcVQKu5fMhZBwG077DVcW7J6lyzzbHfob16PPQ1q6yWthiHevdmThRO
RnK7LwoWpY0fO4DQBRAFAFEjr5l0gvDI2IEJt3TZGPuBynEdXRoaH9X9R/0FuJyf5jm8SIGv
DGjwBQEuDkFVqrCU85ZzGelC8+vt2ze+UxNCE9H8ZXFp2WEjXoDlOe82VvngNvGN4iHuMQVc
q7ttWfINSVh6ManV4ZMfpAaV1a3JeLqQOLZK6FRIpipft6N/GT1OLtZgchHhcvrfIwq36UaT
qqn7XgT7qWtEKqtcgAn/ET4el1Jl4gm4KrBNfULMlpDtZjX4QFJ7gDni0k1g6KNeegR8rg/g
UsvI5sz8pIiI2qSrTTafNAjq469vfG21m3K08zXyGqnjJY9eeDkP8Ku+hcHhREXac8CJYrjK
sCVx6myfoauLgPieubE0Kiqn6bb8Gw2gOuCU1L7+1OpPCwR9U2Zx6tMzbqstJzRfy2NsLZeo
3NmopA/54dN1GBqDLA88rBI0XZhF2FHf2PajsDa6hDk2HgLti3iIiTPNoWNJ7JHEKJ8gZ75Z
m+Ejvdi80mrWHNGUhL45xzgxyzRnl0gXzuFv1rtWHmSa03XyD2vJQ1vvkABfttu91aYixpQt
aAyWSvKodyayzcsiDPyLNpvt+sxbrtV6CnuGzGpJOVF9ezAUYUgItsmSha5Zy3pb3ve5z/sQ
vw63SyjfaLCNXXI9WfwMak4ZScFcXHe7vtrlVrxHrcZ843HEnueJ2COiTP6//+9pPJKydrVn
fwrNCeb4up+OBStZEKEvjnUWokwYFfHPFAP0M42Fzna1OnaQ4qvVYl9u/33UazTunLneTo36
jHtn/OZ2xqEuXqwVTQEImqaE4OlY6Yjro7H6oSv5xJl8gIkxlYN4sfPj0PHMVuPBTJx1jtCd
QXgtHGYwOh/+8EblMbZtCEdKPLz9UuK7SkgqD31PqLH4KTL0xiGm7DFEhMT8hMY4E1hfMdW6
WiHCv0PeWyA7dl2jGUiq9LW4hSrb/uxyaNmVuWRFyszFKcmCWOJKw4pF7Arj+dhZ5IlZufJm
gzOLTT7wuX1/JaSjJFH9d8N50g6ak2srXqJ13/RRcQ48H7s4nBig5xMP+1QOljc+JcpCqtED
m842zC67RpQOYAzi9PnmY5BeLhesqCME5yBoD5p8+/LjWr2ErmYXgPe1n2pGNQbi+mZa0o2q
Tx2KWfaMLDXrIGHsazHyPEywTRxNR1J1KzfR9dVjSU+0PZZVM4RJjEm4iYG3a+THaCUFhK6A
KkcQI+UEIA1jR6oxWU2V0U0YIYlKvTVDOnGXH3cVmEIEWYSM6skEz06yH7Iojm26uPDiukpX
olUosyxD32lPHOe6UR+GCAFl/Mk1JS1xSRyvt/a68wFpN3t75RtBzJJ7DBKwqYfj7tgrd+YW
pK1kM1qmoY/VRmGI/AhJFugEo1PfC3w8L4BcRpoqD6aE6xyZI+fQmbOfpuupZkGEhG7IyyG9
+A4g9NGYDgBFPnrzoXE4ysqhxGU/q/CsR40QHDFSbBamWG1YkSaObrtAVJXDdPOyWrA7Am5V
18tOS3AT1u+wx2lL0At4aUwLrKDgLgSjd1VVIvTh0vk2uWQJFqgDImkEGHvVNFw2UQQRqw5v
b6SsdXzHq7uxATiQ8uIt1trirCrY4prPwhSHaYzGDxg5aOGHKQnxcm1ZsadIW+2a2CcMqSQH
Ag8FuBKSo+TApu7rfeKH6Iyp4xj1ejPhcOcPIwv9diDpamt9KBzuDicGrsL1foC6c1pCVRwq
vs5i+culZ12sSZ7UqemYfMzhL0fjQxdShYOv7eiEBihAtUuNI0C6UAARIlYEkCAzSgLIlAIV
SzvQUYHES5BMBOIjol8ACcEqC1C2JvnFgUsaBI6POYaalyksiUNwCijEPCpoHJEr6yRx+E3Q
eLL1wS+rsDpUaNGFHib1hiKJkaWfVodt4G9oYeo2y+JT6Ar/PBhogjs5WBhWVzUOo1oMp68O
Z5qmyMikKaK/NJSgEgq8L6xmobufUOhrg6+hGTZnuC6CUh2Vz+IgXNPhBEeEdLAE0IJ3BUnD
ZK0zgCMKkIY9DIU8i6rZoD7xnfFi4JMVrQtA6Wpfcg6+vUWa59AVNNVMgeZybkmcaTO0o66Q
b9NHbD+sSkiO45OeA+Gvt5IusF3ZjM+GrqaqQSsujJAGr/hqH6mPrxUg8B1AAkcMNgKuDaOU
riAZKq8kuglXZS0bBpbGaNo0wSQ+lyR+QEqC7zRYSgIXkCK55LzWBBN09SEPPGRdATouyTgS
Bqi7lEV4phH25bCnxRtyfaCdj1ujqQzoBBIIdhGqMERYvwMdH9Ecif11sQ2OEYvuaOr+NldC
EkRdPA1+gGkCp4EEIUI/kzBNwx0OEB/RbAHInEDgAtAmFsiabOAMTUrigaGpcig54GVPgnS/
dSHVHt0vyLNJ68AAt12fJwK8eLGOM5ct053no9tXIdX1EOUjCULcDDU44sB2JRNTRfm+rzrA
K3bIvN1uYWeV318p+80zmQ3lYiJD8FfwjHEd+lq3wJs4ykpan+/aEy9W1V3PNXPEYEK+2OZ1
LyPPr1RE/QBcGEg/LVhh/naSWmntagMMNrlX3TBXhdcLAoEYcjNwjRLoDozEv2LeAuQdq+iw
oslVVz8Xkly7OzgHp50yNrTvWFtcy4ELzJZtjUd7OsPy/TKAOUcYeRekbHP1Rpbpc/TicTUt
LSmoaLFfTQxvLeUGJh+KfYn6cWLg5qVlrN5orgrU+HnAwjotGrf4qqjBd6T69TJtF9yVp3gT
aiaAMhglKet2Nd+JAV8dOIN8bex6yLYpaI6mDYA1ToWV8+8/nz+Dsag7cPe2NMYZUODYS11i
OgitaJmLCM58CEjqWc9tAOPFijPvgh39C3gyKDG/yy9d4Fn3HGqBx0cW2uNBAGwbkIW6kt7I
oJmQinxMO7+ZGGJEfU8zkzNcfVlwR0wuaHM4L0OjNcyoeocDSY4nbIY5vIK4DlVmFmyxnsAE
yU1/lDdSffS1sAA1MyDR/IUfXtS9iEK0O2UCjKDKAuqCJMBOEPge4trlrC4U5R5oPA3tBQ8k
IuXax2Pe3yFPtpqu0M0MgaC/8pvltOijYj+UheGM22Ch/dbxvGspD/gLEYrI3+HDvfsuTGAT
ZbbdKM5pcd1ccAEluD6yJHBNaGHNVdC2VBsMgNmeS6GJe0HPw4gxQpRXwsa0vvhRnOIHOiND
miYZdhAxwyQKTRECN44pQgys6S3IjhOlBccNGgQ+JKHDc8gEoxtEAU7HSmqhqk/i0TK2rYBv
FosjvXp9NRzNunXFNuZT29V4qhGXSh5iz/2NNLbT82ZVgSxArI7S5IIBNFb3YzPJmKaCfndP
+AAJzDLC3htt83xziT3PejGnfnrPCj2mDFAHeGoUhjFXq1iRo14WgU2aL5ofw/21w9nsmHZD
j064yxuao3uIjiW+p99Wy1thfKsioNSQwbb540LV49JMReWVcVi3zl+S5A2GDC2hAgdIeThV
fyCiIdYiwhEufNTd8miniQy5CcmPpW5OzwEInbI2YM6NH6QhkmhDwzg0poJpPyqm7GiBrqpH
s4GuTcRWxQnCXw/OakgQmR+eaWwcrFiww+uehFdlo4Cxo5cRjMy1YTaZNZMBYyO3bjcyIPoQ
ILG3/ulkjztSe2Ee2CGPalXXDi6le0obgj83ufHQeyY6n8UtHNv6UvGh0TaDvGSzGMAf0FE4
5TqwI1VtthYe2P+K7a/KhRSHL787Y85iPONijicA6ze2kC1MeTEQop5pKlAZhxlBEbn5wLOV
e5jVTNUdiN0Nk3KNdZHr0ZrGEqiGEAbi4wlv80McxqgKvjDpS91Cr1mThR7ahhxKgtTPMQzW
JfX810ACHCFpcMHrANgbNWiGIoxJhqbMoSRNMAgUvpi4IJJEaIICStCeWHQ9pBqjzrdaD8ET
oy00KZ/OxLnuiVruKEzjTsdwOavhKXHlwEHi2FoqXB0hMR7gW2HieugbM6nbHj9VmqWJgp0I
8fAOEBBxQxkOqfbiC1nERdPfNy+gpXsuEAtol3voBACIueYqiylJk3WxpuigNtbsYt/D24zr
J7GfhOh3imqHYkGIN7bU2wK0DWz9z8TweYfpggbqOxyDG2xBhKuFBhvX5lYb3FbsFMx8irNA
5nscDYnwPprVgwkxNzI9eLTQjHCaukcdS8NRVtGWMkzSSKwh6uQMaHQ+mB30RKEvxw399cNp
TgltZThxbw/3b/Lkh/sWY1JY9nnfoaWjXNW425QodqGdo+S1tPVcLVZfULrKIxoYPBuiDgat
HShQDu0AT6KUYoqAQQLTXaovdDCyN4Kkazwjbn88Alyxa1wuUibGTdmfhD8wVjWVHhBgfJz7
8HSbNM/Xv76pb1/GkuZUnHbOhdFQGVbhOpxcDGW9qweuW7o5+hzefTlAVvYuaHrV68LFAwK1
DefntVaVlab4/PIdieRzqsuqvRreOsb2kZabDTrCy9NmOevW8tfyEfmfnh4eX6Lm6fnnrynO
klmAU9QoMn6h6XtZSc/L0+z3Zi6yhOSGgNYHEbnqsEPHuWQdjgd1UIvMaEUD/qOfpwtkez7w
SWWUZHPcwktshFpS3sE7BDjRvGnaQm01rHVEs5VPfzy93r68G05Kq80Vhg6gFD3iAuigPqsR
vPmFt1zeQXix3/xEhcr7Qy7OX6Hd9MiMgFbgx4/xOVZzCdS0jF2NeCMa+7GpsEc4Y2WROqmz
1bqVEQMR4hwsw13wnx//8/n2FXOiCsyyh4smN72dKjw71hU50ngiqMJZE2wjaeVt0cTxViSn
sWBdnbuD7n3qwyRCL4tEOwx352pTqK5TBTkIxPGIvAR9vn15+QPaGN5OWv7lZSG6U89Ra9KN
ZOkdwQXyfnZC0Eb11pq0+5JzmEReGd9P4OCIapf2GqrX6v3DMoL02hmNnB89EmDnKmMfXAKu
6FzMPEeysbLpGK+9W6rQxNP3/yrd/NSc5o4KiWnF8ICVI3Y94QMK4GEAhs2x3Dn86S5MXHfA
72SpeNty5WuuM4VNUATCO1fRdqvFzZlxmqbM6H9BM/zjpnX1P9eGMZfYxO5GSZ1WFaMvRtDo
C5xJV1PlW+yX31+F77qHx9+fnh8f3n2/PTy9uPpORoPpWYf73ZaBX4q7HvfsBzBldYCbuY/a
QlGb0nFciG/fXn+61/zhHJMkMltuOAuDaDuZ97dZqjgSrE/DyUwOaGr4h7othsaSK9sN+vG+
utRHOrrTsftxhNu+Rr3xSCZ6sURVOYT+IiyxSr7/86//fH960OtqSQN/VbrEmsngRFbdbCy0
66bhY2BT9yUmdTi+JnIEA+0qU924bgYSEXM150R0bRlFbp6nfmgNipGMSsUJW59OgiuJXFr6
IgLhyjaXbjQtGZifUtdBu6iakHBuR4+WkDKuhzXGruFbC7dMhZdhHv54Q3w94L5zJYZbRVII
/cDWi38Axz/uQpWbvuZt4GRgtAZ/FO7kq+HYQWyZ9c6su2N4LeoWPYEQe55Z0fxLpw9VHqfa
iY3cItVRqj51FhrNRFs2uMJDK1Dxve2clI9dvApR2huH82JNYxtsgyOT41pzLX6zisy393co
MdDrcVdVqp9MEXY57yuu77Q6leaZdvi2NFhi3L0owPUy6AZnenn4rEu9ZG+nuk2IasIiyfKS
DlOJIt9aYofT7G3V2OQExinCQkd2eYLO91xtZ64KAoGNFOxDa2QzFSi7KfRDawcmxVCUOMjX
k77tWzbiSOzusXHybXUtiho7zZo4LP+nGnAt+Pre40PaZhzcstt8yggVmDe0c/n1xXHe74pA
F41hAyrloN4EuHpY9quMUtTT4j0Y/r0D4XJDRDwomUyEbndomVAjcfbhymL79P3xDJ4o/lFX
VfXOD7Pon87VZFv3VTkYOeknKaobLUm6PX9++vLl9v0v1141H4ZctYIaJWY/HmTIncxPUBgf
Hj+/gDebf7379v2Fa40/wKsmOL/8+vTLKO4048TNu3vvUeZpFCIKLwcyEuEL58hRQVzaGFf+
FRb0seM4llgXagfE4+BlYejZSg+LQ/U94EJtwiC3RE1zCgMvr4sg3Ni1O5Y51z+wtUjiZ0rS
1MoLqGFmUk9dkDLaXexcxKnwZthyTeuCDpm/16miV/uSzYx2N3NhlFhhl8dMtC+Xs7WV1PLy
BK+G3VJD4KFdYQASD3fHv3CQlYbnqqaf2Qlzcozd981oktgf3TGPr03uwdeQhBc3SZGOA9mO
WtKoONLj4mo2Rf2sTfOxi/0IWRg5ObYmAiennmedtwzngOguPyZ6lpmutmwG3L/hwrBS71N3
CYNgPl2R4whG6k0byOYmTzRXip2bxCTS3PEZI1PJ5fF5JW31aaBCJtYMFiM3tdpZklHuMLKU
G0HOHMM/dkTAmDiykGTufVl+Rwg6rvaMBKbzRK3N5vZR2uzpKxco/338+vj8+g7iQFiNd+zK
JPJC35KeEhinuJaPneayPL2XLJ9fOA8XY2DFg2YL0iqNgz1Tk19PQZ6ilP2715/Pj9/nZDVt
guvdgZ/GaCOZn8rl+enH50e+Mj8/vkCklccv35SkzfZPQ88aCTQO0swaTYYZ2XQweeUbqbo0
bcIm5cFdFFnN29fH7zf+zTNfHdwHmPs6jtfmd015E63JZ8GA2zQsDDFucrkwpG9l4TDrnxnC
t8oQxvhGWjK0pyCJ3GIM4BhZZYBO1komGN7IOF1VmtpTnETuNak9wUt8rGRxkr6VLvqYeYH1
gDYTPQ1Qv00zLC2VTGoSWaMeqLZkhRQitEJkbUVvT1mCf5a5PBVMDH5IYvch24klSYAsnXTI
qOetiW7BEbo1F8B93dxlBjovfCPp4c3MBx+13pjxk+fI/PRGqU+aa4xRWvVe6HVFiHTBoW0P
ni/AtQLHtG3cF6n9hzg6IMVl8V2S5yvpCoY1FYczRFWxW9sbc5Z4k+OH5yMHrfMO9y0kGaqB
VHdrUpDFRRpS3O0pLsuFMG84DXt6OGkPMQnWWj2/S0NzAdQYynOWrsp/zkC89HoqKFp0rXxy
+/zl9uPPlRu1svOTeK3DwJjb8Y5jZkiiBC2Onvns9dZYyY30dsxPTKdXikNae+2Vu3jAlGOB
McniUgaEeDL6TH/67at5HqB9Zphk/D9nz7bkNq7jr7jOw6lMbZ2KLV97t+ZBF1rWtG4RKbed
F1VP2km6pm/b6dSZ7NcvQEoyL6CT3Zd0DIAkSIIgSIFA702gWPz+7e358f5/TnihLS0Vg3Wt
BGacqj2JSnUyOMHPZALkXyDc+HZkh44Mr+02q/vEWtirzWbtQcr7SUMtuGjyTY9GVfBsOvXW
UYhg6klybJOREUkcojndFcAFq5UXN5t7xueDmE11z2cdd4iDqR6EwsQtDW9IE7fw4opDDgWX
3DteEr/2PGrTCePFgm88p0+DEK30FflO0pGi2cbH1zaGSaYMF4couFgF+dzK5SOgR4/5B3Yb
g5k89Q7rZtNw/Lrv93fr22/DqwvizLNgtvzZisjE1Wx+8FXRwJbyC9N7yOfTmeeLsyHAxSyZ
wch64qA5pBEMwoLeJgmNqKvKbyd5K7x9fX56gyJjeiX5jOTb2+3T3e3r3eTdt9s3OFjdv51+
m3zWSHt+5BcuEU03V1egu03gCn2yLeB+ejX9mwDOXMrVbEaQrtDaMoC4xA4HC7bZJHyOgVce
yU59ksmP/mMCuwqck98wq7i3e0lzuDZrH1R0HCSJxWCGa9PipdxsFuuAAo7sAehf/FfGOj4E
i5k9WBIYzK0WxHxmNfoxhxmZryigPXvL3WwRELMHm7U7z1NqngNXIuSUUhIxdcZ3g5cnzqBP
0RPcIcWYdQZwz/jscGWX79dyMnPYVSg1tG6rUP/Bpg9d2VbFVxRwTU2XPRAgObYUCw4blkUH
Yu3wj4lmQrtpNV7rmS5iYvLuVySe1xt82fTowA5OR4I1MQ4ADAh5mltAWFjW8snhbL+ZUf1Y
WE2XB+GKHYj8khD5+dKa1CSLcBCLiAbHDniNYBJaO9ArV7xUD6yFE26vpra0sZhUmfOVI0Fg
NQfThoAuZswCNyIPNvMpBQxIIF4GEmrN4v9jMoMdDT1Vq4TgYzPVBS/uVa5X5HDJbmxZVwMX
kAJhqzulctZDo6Hg0Gb5/Pr2dRLCcfH+0+3T++vn19Pt00Scl8D7WG4Eidh7OQNJC6ZTS/yq
ZinjYDnAmT2mUQznM1vr5Wki5nO70h66JKGr0AYH6KfprrKppXbDdrMMAgrWQbdJ+H6RExXP
RlWS8eTXdcmVPX+wRja0Cgum3GjC3BH/+X9qV8T4gpLadRfzwyiavQ+UVuHk+enhR28uva/z
3KwVANTWAV0CVUvuKhJ1NS4GzuIhpeVw7p58fn5VBoBjd8yvDsc/rHkvo11giwjCrhxYbY+8
hFlDgo8zF7bMSaBdWgGtZYcn37ktmXyT5o4UA9De30IRgaFmqyZY36vV0rL8sgOcxJeWuMpT
QODIEmrWucXUrmpaPrfWUMjjSgTMomQ5Og/18xU/Pz4+P8lIUq+fbz+dJu9YuZwGwew3Oqm8
pQanjhFUB/odh88Ul22L5+eHb5h9EwTl9PD8Mnk6/dsQd9MRrS2KY7f1PA33OFLIStLX25ev
95+IBKdharwgg58qVAt5NEEsz6g7S8SoXO49QMV7SYX2XGKfhl3YRA5AvqFI61Z/P4EofpMJ
zH5ZaR5diZ6UD37IL0ZdEmUUlFvQpAb1d5CpAYynKBInw/0XBQXlLN+ig4yJuy44SlKtP3cZ
4NvojDpP4VghMFJw0YmqrvIqPXYNI1MmYoFtBKyew8WZTSlktWeNctiCTdNF5yyUGV+5TDxk
M5RXYdLBiTNBx53CThxt8l7jKzQPn0JYQwcA6S1Whynr6kpPEozofRMW5PBhOQqeYrphqM83
5D4cluM7dMeisBwELBkuGDFUQ/+ReAIKm/7aiaVkJvYdGIcreziVM2Vu+eRaBJhvG2/5rvQ0
iA5y6WTh8/GmzKGmMO6Yh2/GGthktQkTRnp4IzIsEliRdu8UFDrolZGeIs7odK8aCcaHqIUn
X/uZLA0boVbN1nVMC+N68k55CMXP9eAZ9BtmYP98/+X76y0+hTKnDhMeQDHjs/ov1dJbE99e
Hm5/TNjTl/un08/aSWJiAAHa7ZKY/nSi1MM1a0pQnklMKvqLPJyr2vHQTo6sMVJW7Z6FxgT3
INAXaRgfu1gcLjw4HYjVg8ElCR7icv4+dxsZ1C0dekjjUKZ/yrN0R3Eh18yVHkFvgHTbqolB
7zRVxH7/xz8cdBzWom1Yx5qmcpS0oqiKumGcKxIvm5KWkGWbJN2Pz0juXh/f3wNskpz+/P4F
JvGLpV2Q/mbgzEYMTzRJOIyoGUPIQqdk5rmRiN+AdYE+sYq6iv5gsR441yUE9Rlfd0no5yht
Y6oCckuVqLy6ARncwwIQTRirVMv8Qp/2UR6W1x3bgz671DlF3bQlZj7v6kJXAcSUmFMFauHz
PRwj0+/3d6e7SfXydg82HbHulfDJscF2qlbgrmzuy6PMqLC18rV1y2tWJr+DCexQ7hjowIiF
QhpVzT7MkcylA3FlRS3GdsHod2jQ1GrYhxbdfaOWH2/CTPy+ofjjYJ3oXXAIZAL5PENpaRtl
nMyIEb00coZBkDLLgtjDtm5Bipt0e6BgYOvEtnWUFuFS//bQw1bmW4UeOl95Eu9Kc5IlMn2p
R7zaJHcUPRn+VdaVhmlgs/XhYJlHURXv7M5njZCZklsTXoclGwP1DptDfft0erCsFkkI2z6v
I0wpDxayqFpoJga5KfXVYFVi8CVfwhAMnDEGH+dTVfR6f/flZLGkogFkB/jPYW08ODSwSU2x
59atF2aiDPfZ3p6YHkwHFdbo4qyB42T3gV3YotJiFrRzj7uByMojEu0Om/lyTYnOQJHl2VUQ
aJuYjpgvjC9bOmqxof3YBpoimwab+QdKEAeShtWhYRMPCC7WRigkDb6eL6196cBKe5gB1G2b
CvRV6Vs1+6g6SHcD50giDRBPKXZQkSww3gooMU6JYtVkrBRSJXUf2qy5tqgwpX0Tlol8ZaNc
NF5vH0+TP79//gxGdWI/iYXTXFwkmHToXA/AZAiPow7S/t8fpuTRyiiV6DmgsOYtvpnI8wa2
WgcRV/URagkdRFbAsSrKM7MIh0MeWRciyLoQQdcFI8yytOxgArPQmF9ARpXY9RhinpAA/pAl
oRmRs4tlZS+Mh0s4bGwLSks+dTU7sE9DmE8DVlQJ6097ZiUiy2VHQZpTcuq/3r7eqUfI9nUP
jrtUCVZ/6oL+iov0R9CzeHflIwjJaD2IgCMkDI+w2soKLujv0ICEcZjR+mAr795plzHAsS19
nEMJX5AOBHi7kYYWcxXYL/hAjbrIwHmaJVYUZqwf1n8WEiDbQfiM8AeLONOQRwadrsn23uHI
1qRbLIou20yX643FVxw2sOIqVCjxji7o5rYegaCk85yVWVv4+BnojlxkYLf9hIwK7HjGuqPq
XgIYAiqOs4D24VNYz1zPrVb4HNWehzjcG1EmRxDBbY8I49hzQYk0Gf2YDldBRkUmQblhFejA
zFTM18fGVDXzZHtwAIoZi0+JoAN/IhtVlVTVzKhqLzYrPXQaKiswqFhpKmXjcazUPmYZEMZC
bVOWiCIU9r6wwHMS9bLVoIlbsP4Lc07MwMgSwuPWGhFlCWuLKQIr6SAWhh0OcDcPrJweGVVU
Z16aEfIW84IxgfLNQL7LqjDlCL84BZbK6WEyvEOa2AI2YH1B7FHzHWFb2XtkWbod2kJbrGe0
LyVpdchNKbr99NfD/Zevb5N/TvI4GYJPObf3gFPxePr4Y+euIiZfbKfTYBEI/VmGRBQcLMN0
qwfzlHCxny+nH/YmVNmnBxc4D4yTFIJFUgUL6o4Bkfs0DRbzIFyYVQ1PXO26woLPV1fbdEo5
wffdAKG83prJlxCjjG5PsUoUc7C3tX1n3DA8g3nGY6CAxoxuf0aqoMtEq1r9+m5BNWAEnzyD
3XTaA4aIHX9GysytpCSfaWRcy5ucUUvrTMXDXdiQQ2bHNtRaHzN6UKwl9Wbj8Wq2qMgshGca
KoC/VoMK4vuTdtCDej6ljQKLikoAoZHUm+WSHI0aTxz0ELphPDX+h1wpBD92IheK5T3MwDqn
4pmdiaJkNdNzEmitN/EhLo3bgZ/opqEOsEcxC5W2inZJYYSbgbN9RepF52vlUAOv2tKI5cLN
DUHqzl2WuIpyp5/C4MeYkZyLhpWp2BnYJrw5/26dsmcloD74v5w+oVsBNuycG5A+XAgWmy2A
2dC0hsSOwG67JSZLomtrd5HAFs501I4ue8ny66w0W8ZPqs3RhmXwywZWDQ+zxga2adjYTBRh
HOY5ZQ7KMtKl1S4TH+X9Oim/iIdZSKuysbKFaQQMP7Ru7WoxbGVFW9MS/fGa0TGj1MwWGC7I
j982/qrTHGMmtdQBCNHQrrxvsxm+Pvo6eBPmoqrN8d9n7IZXpbkFydaPjZNQzCDIYuuC3MQK
Hxd/hJGutRAkbrJyF1pydc1KDudqUVnwPB5y2+lAltgdgGNQtafCMEhklWb9IjIL9XD8UVNK
biTYarn8ENi0RZSzOkwCS4gQmV4tptY6NPA3O8Zy7l+p8jRRgCwws9sFzGhjD1ARHrdgdlgK
omFqAThLLcP0VNWWutaTeLSTG2at5aLNRTaInwYvRWYCqkawaxMEGxfeloJ0a3pQAxpDKwsw
EebH8mBBQcXAfkEC1d2Z0c8Bc+n7n07nrRpEjdOYOHMUGdiiGJ21tDInmjRNBkaXhx3QmGoA
jSIcbNm2pO8tJB5jzORZee2rVTA9NGUPAhGEfYhZvYOG6ry1gE1hzXOKl/4h129fRhChVdWp
p5Mi7eOxCBvxR3XsGz/v0Rrcv2JEtq/sRkH5ccb82ljsQN9Qhw2FbOAUW4ARYtxva1BHblvc
+Luaz03wTZYVlbBW8iErC4fhj6ypsJtejj8eE9jjSa8LOYQy52e3ayNrShVcHcv7X5Y5kddG
qADKJpHGCsZTNC2kkUEZNDGjjgFq0Yx+MkMd0TOQ1a/Pb8+fnolUlTJMV6StShmOq1eKI6c/
qcwmMyIg4zGdNPfQkUaZbYYDjVuBTB+Z8Z2nGunEBmjTfjyDx2v+pLop0ZWq9/gyslM61Q9o
gx1tjKpdnJkX5eYYOvGrEWgHe0UYqD68RkpNaJvXGX78tcuXpZX6QwbZbHBzDXm3i82Z1GW/
VUkvCcmRVZQl2O0x60p2M8RJH0TJDOqAk+xEslYBVNWncrzRz7jVcyfOsj6UIrUZBVB3swMt
nWeeVJkDlQwfiVS4Ij2dQ7otL5xx53LgU4aJcCJ3trRv/irp7u+BuUpKY7E9f3tDR5/BGTVx
nz/LKVytD9MpzpS3WwcULYtAQ7MebTIroU1VyXHohCCwQuDsDt50NnbLcwK689z9yGE9tMFs
uqsvdibj9Wy2Olyk2cIEQU0X+gx7+XwRzNxuV+fBMHkbmOfcKxVE//QFnG9mRIMjGHpWUajY
ku5mg37UV2u3qp49FygDvRUq6PooX+rucRI/3H4j39ZLibXfu+trv5GeKV78TULt0ogRxXiM
LmGP/c+JCsZdgenLJnenF3SDnjw/TXjMs8mf398mUX6NOqTjyeTx9sfwoPH24dvz5M/T5Ol0
ujvd/Re0cjJq2p0eXqQT/iNG0b9/+vw8lMTuZ4+36PLjxkKW4pHEbnTLzM3Rpa/DpNRtiBHU
pSGGUrXlSeG8iXslE3L6EvJ7oVSBN7HVIEKkpifAfWphowWJUPx5uZA0CSb+airzWlEOZf1w
+wZj/DhJH76feh014fae2lcUOHwFA1/KY/327svp7X3y/fbhX6D1TjBzd6fJ6+m/v9+/ntRO
oUiGHRS96EECTk/43OfOll5ZP+weWb1DZ+lLXQzoLjpEdqqEEbPHJJieHOcjEfq2XcOWxTns
0XCc80fUP7cmO1AlmU8K4h2GT2KhI2A9HAzcnxXtzLTTBqqwt7kRc74Qs7TzWk8VpAFdhaUQ
M2TRZn8sg7mv7WkhKZUcX5rCgXKcal0dSnHyqEE8cZnyMxYzbRlPeVZkZGa3Hhes7N6HSSta
b9oCtufMkcKcpZXAOxdPqdwe/P4qDv6uYzPdssJKZynfSCZnk17fd0WSdWDY0PdRsmN4m5nA
RID1QxJJgq7Ygv0A5zV8tZH6phOMQvizT0OzX7mzdwv88AImaNRgjiW/IFVg1cNa842g6bqq
LBoOEid31212QN9iW77xDmN7Y0KPQGcFaGYf5fAdApt1tL3gb7CcHXxmx46DGQz/mS+nziwO
uIUVfVIfrqy87mA2WDN0cJTt+uuPb/ef4ECZ3/6gXkNJK2CnXTqVKltBd4iZ6YSHQDxmdPuI
vCoV4W5f9QcMG6RUQHQcPcsdFTLvA0Fop0YP63rJcV92YLa7tYbp1by/FLpiMe703aCgRkBv
A8aok58jAgLbWzdd2RZwnttu0d0p0Obs9Hr/8vX0Cl0/nx3MKRus4zaxlHfauLDB2jSh9SEM
1pYMF3u3NMLmznossEZ/0pYoiS9sWiUTQbB2FkoPxtdHfoNKGv3TC5Wrx3aD+a/LEzms5jqK
8PVAxTNhice2a/exDTLuFlp1FIf/bh3RGeDEJkTTXbLZR6IqYnS0H4Oq/JWq2C8SYZ4xfsHQ
HGmbMvG485hVsl9od9vlsFH8Qm1b/7LUaLyzNk6yr3bitDSu2d6mfXk9YYDP52+nO3yEen7g
49gTeOXo7RITOy8uvTilSsNcsEq3bSkzV10gSX8mp+lPD45xEnfjUrpQj3VtaWGTKKWfWym0
SvzkJcA7YepgpKmEn8/auJUda2bIhgR0Iq5pBhS6jT1P7hR6l8w5x6jD1Haq6pe5LeVzw1HU
xI+X079iFTbn5eH09+n1fXLSfk34v+/fPn11b0VVlZi9rM7maG1Ml2Z49DOBuimtC/ol2/+H
C5v98OHt9Pp0+3aaFHhAdAwTxQu+/M1FYeSaU5jeZfSMpbjzNGJsjnCG6F8sW7smIHg/EHj7
dsYWhSEJMkZ/GzaeSFNFLI0yR2uo+P8qBYD/nlCrxbJoEMQTxZjRmgR6rnXP+DCuM6Kyrs7F
tqAQW/yrZ0lFVJjH5jM82d1sW+A9D92860Io23C5gYNptVNXZ0b1cbQm43gjbi8zSaoJ0sEt
ho+xK2r5jkzxLlHJLluBCDiF0GlDsOsL4ztQGKawZPyDLUZg3H8wAaLiuyySWaxMRCGuqVk5
sFL/eFCwgossvnYho/j0cR8fn19/8Lf7T39RmRv6Im3JMZ8HHDHbglFFfy63Q1VSJvRnYSPm
D/lhvOzm+qPqEduAlUmBz7NwAWvMAH7EMD8py9t+6TioT/IZ2smv+5RvApJEDR4MSzx+724w
NkGZnl+ko1eeM66ymOb0poND/XWYhEinxCkFDBx2XQdGB78iMxNIbB2HV0s9p7QOHT4tmRXa
DmxGY/X8arGwGQfgkmAcHQ3p6MBn/KWOAd4OeGriN0tP9OF+ntkesxpllCPWeRiWB4fzHn5x
JJBmNXfLKs/LDt3syKO0JLI9R3tgPAsWfKqH/1dN6e6nEjImpLbgURJspna9apvjfGG8cFSS
OTqD6tBzjnkdKuIQ04Xb0DxeXhnJJUehXf5t18vKbTCLzl8XzitJfgf48+H+6a93M5UDsUmj
Se//+v0JAywQX88n784eB79ZazHCi5PCmZ4iP8Q1+Wh0QDd6djkJxFfBFqjM4vUmsnstMuh4
63z1VbhzBvex7+L1/ssXV430HyltbTZ8u8Q3vjY/A64CnbWrhNPtAV8Ib9cHkvFls7eSS94/
BmFsRqswcCGcVPYZ+VrFoDO/fhuo4QP0+bvs/csbfmn4NnlTI3uWnvL09vkeLcb+EDB5hxPw
dvsKZ4Tf9PObOdRNWHJ8t+jXMmNfZYbtn9PVYZnR7xgMspIJX2Jdqzp0maV8V8zRbhNT0+ML
Gc6zKMutORgpMvi3BHOFfN7BQFl1oIDwEz+PG903RqKIrOcIJ2pqRNwZbwURABposdrMNi7G
2dIRuIvBtDrSh17EA05UO3rUEe9/v4bYcl+YVxlSXAAzuR8eOxs3AFgGdO5W5RX2VitJ6qby
DYrEW8nKdXjXZkzGIPKUx5zx+o0x+tog047pMhC71ouBoRBhFC0/Mv276hnDqo9XNu8Kc9j4
0hr2JAmfzafUSxGdYL2galeY7iahl+z/UnYtz23jTP6+f4Urp92qmV3rZUmHOYAkJHHMl0nq
4VxYGluTqMaRUrJc35f96xcNECQaaCjZQ8pRdxPvZ6P714bYw5SM6dgKpGz3MDf3S4Mxm99P
qbxbr48bqZbVJBxh5ahmxVUyGN7Tfn1YZnir3DshMHFLXYSL2WRI9JNk3OP3JcQbPdBHNCT0
QDnYIIkZmUM6HtRkwC4tEDyNho/Ul2I7nd1b4Snsxg4n9WRG1LkSB+r5PXMZi3Q0GBF9XooR
O6Dpk9mAlh8SvcDT0b0Z86mT34wUQrpTzXIz84GTd7WZUK+AHTcSM6mLcgyo/jfXAOiQOdFk
kj526XKmDj30iW+CkoHGkADRSECf0xPyYT54IFp1Pr0nO2esOs1t7N0DHT0NTd/xzFMGqh3E
2B8OqHmXhsV0bg0RMJAU222rL+k6DAKV/XTxjqrRcEQuLIoj7rGpxw8Bl3V6U0aO1HnohjTv
7ExuljJM88pti434D9nfwxnRrYI+GZD9B5zJT4bWw2zSLFgaJ8+eFHyBkpAI5W5mCEyHM9/Y
n45/nv50Nru1ichUPF09HHvCGHYi8ub5U5GfLPpV/TiY1oyKV9SvGLOa6j6gj4i1EegT8sCQ
VunD0IPL3+8T45kdosweusUkvL+1X8DQJtaXzpXSSRF8PhoMvijnwvn0u7j5WDPB+XpRi//d
e2J898uEBGhwsoBLcKUC8dyccNs4CfOGm2hfKevNfbv8eqp7GFbYQSlzMVgASpJnS4TBArTW
aVwqzjKeVJiLtdOgzSvBjmkpeD25NecWNBwRWtN39NtSy85Z7XtoLpKd/QjdcqTP7QqybNJl
alge9AyjIltIJbTCP7dU1LKtIK1TFlxup8slQmcYm84N1bpBYi2h1ZH2zxXiRmFVruu98O14
OF2N3mPVcxY29a5N2RwL5KOGoAfrhWsLLpMBs4q+eNVWUs1U1+3nVJ8oVpPmG94C+FBNpYQ0
SJ09fIG34qywLlwangqXvWuC9a41djKaNhqPpzgESpxCa4VxDFZa9KiSGEdKUdyk4mbNPKHp
wWJKelAlTU763ZgCyM/MYPh0161IX5c18hyI8yaMkRcRkApYJ5Y8i8sn6oEdYlQDUKuSwKkx
c2EBQsXLMMdIIzILwHVQ5oieLDJe75yvyrXPMgCi1S/EpuDlrjZUhp3IZuHx0YaVqyFCbhts
s0lb+LeUZ2uHiJ4velqLpOWwAkALxj3ecuKsWNO3WZ196qtNVFAL3UZabLWF7oUlNfNYgCgu
7HhV6/5CQIK13iMvl/P7+e/r3erH98Pl983dl4/D+5Vw/5bua8bEU+5slnqzpZrN08UevZ2R
LM3ucNIqZsK7CqBM2pSJdgKuBHre1OEK9Yz6LnyksU8EF9sJgThYTLBa8Tx5AcaWqm6MfMmA
J/6B2ZlGXLFTX2a2utBkliyrZU0UIvUPggn7MmZW2zivk8AGkoNvig14lle38F+kmJhHYRrh
/PgixgTwuml2CUIlkHR1TOi6m+hJLb4s+XOAHRxbUsMrSltS1Wyp4Mb65TUHh3jPYSyZDeZD
GnNQMJM4oFmz6cDzlYKgwUHuNG7B/p+P76ClfgcL+/fvh8PLVxM82iNhHAJU5VTMKicDdnq9
nI+vCI66JRkq5po34jw2HY5pRd0iLvlW/LtlTKRtAZTumeiEpRhAxZIFeW5aeWaxmAZVgeEM
FLWR88JSnxMScsE0PwfgpoXHhEMua2DNlPGsprebx2rqO6frYebU0ZGAapYeDAQtQ6G9WyLa
gdIi+55jOn6+JD/L8wLWsZulKmyrdUeiZNsbeWvD7r6TuzaR8KQRNlLWTPzwo6kKf8wuoflA
qomV9eLR0Qt6lmu+19qnEyA9zIp4PBr90TnKvP9zuLq+S3pqLln1yGuxfrKUb3MTP0xLsILv
2oOIuQhaCf9HNx95EkmzZDOEwmMRDlGgv5ZgXVo0FZnpaKKF96bJvtvVU0K6A+xmD53XneFt
qk/hYqUX12x0kxE/myDNqRMyS2KeSQdf65vVmm25TOnG3RASruAMvYVo8YxE2Ogl69U6i8Cm
3LRrT3epnXXB2ZOdsa57zPLUqR8LebmKyOoJTgOLa8Ir1EhANhEDlCvGMsWQNayCec2KOqeQ
NyTXSLy/QYVRwMh4FzxJxF4VxDmW78meeksJVRDjegvEMlhblCrNZ5ZDn6TfSBl6h5krREdN
THfXxfrPuBaX5a4g/abQcmoWJJxcOwuxMuWhnKgIV6Xo8AV7itthQMR9DsB74rhADk6FHyDW
98i5wrYSYObwWDAZKYFqFTVo5ZtsVQwVljpiSaSdDccIpq3CJKvFrB42G4/Fi5ISN4Yk39rJ
boLaaJxqXS7EUB3hodpSm1ETrOsa33J6ntxomrwo+TImD+RatChzKqW08k/+IlSKKmmNRR4J
FRqIM2I1/WmAhqe25Qvqplw8xgndq1pqZXWqxXbWBrEehmnhMRNY+qd3wTImgYiI8Q6P4Dyd
PvjGDwB71KwkvoR3CYlVI3pciGR1TC+babIjfcfbMUY2geKVpudWa68ECCWCkinYZAMZQhyA
D6931eHt8HK9q8XZ93R+O3/50b/G+zAjJKALKJBEkgq2H0aTub3+fzOw67iWaLtiX+dP4Fwg
DnzU67ySDVd1BPa04vRSoinUTrZFEmlAdIcH0B9ysriToLPu9jlDtwLiwCwaoQiddg/XHjIl
aekfDUY7Dm7sxG1OzbomLfSgCgwhnnY3iiIujPNLuoi0Kr4nhitx2OZdMdDepXj5jW2ykyjA
nYuTH9dBSl1E3JIogn2S6sjVqiaL0PLRqUwTk4LIQKyKdW6RHwOJtdSbbLmfOZG3ukxAPmCl
y2lD/7gMtYshqJyOBcYwLtnxvZAMccQuJI7YkvSXNWRsvHfjwaM/S7Y0KmSRLSI3yIr8WoxZ
Dpi2tLlUKo4fLMt35MjXRwK24U2YGMd98UOGA8vzx7UJKtcKQvgQcRU2BruyLbQS6WgO7qfB
StluPjZtSw1eFU9UTAOaNfGyTFtggxNGIZ/eP9C8St1B0BZjpjpMi4qEODeE0I1vtRWTRBxN
pGm8Uu+9nV/+uavOH5cXwv1EJMA3YvGbDScj1BWBWHItarQVB4agU0r2EQSpHIzRwOIkyCkP
8VhUQqx7+cZ87MpZhbCMpAwzZ74i9WZ16pp5OEGI1TvJvCv2Xw7S/NHAd+gvjj8RNRZnmZN/
qmh+C/7DqqoWS+J6iWAAIaaWyop8yCnVqdveUeQXJLGpNs55Fhckd3ZQxV8keVE8N1v0xIVS
DlkChVERCvrkqKqXT03JU2bOVKWe1iVXpoGHb+fr4fvl/EK+/3IALrMN/7qOIj5WiX7/9v6F
eOgt0gqpdiRBLurUU7dkdq8YfaYo8e7oC8iucLHRFRPD/fS6PV4OxlOwYojK/Gf14/16+HaX
n+7Cr8fv/wWKyZfj32LM9Z4jSgP5TZymBLk64/dxrY0k2Oq7d3Uu83zmchVq9+W8f305f/N9
R/IV9s2u+J/F5XB4f9mLifJ0vsRPvkR+JqqMk/873fkScHiS+fSxfxNF85ad5Pe9B6dL3XW7
49vx9G8roVZyFydxtms24Rrp24kvOh30L/W3cfuSWh84FhODku/gnK8Lyv99fTmfNPoRAaql
xJtFxcR2RllrtQJYf9gSu+vuaDxHqB4tH1zQRxPaQqcXmU5npAlbK1HU2WQwuXcyL+vZfDpi
Dr1KJxPTeKwla1AGihG658xUrCslsmqKybt8ViOYOPETLs60IKzjfQ5AiKPaIkCL2gkqn8ua
DEwKfLFdL4s8W+KkahWQFKUkVlfaZkB+AOb5djDE/slSnP9pOAt0ehA/usNpP2C3qWsIY/Cc
1geidI4a2TRTJ6Qp+HG4pxKXZ2BKXyOP3Rjw6y2tfmh5jYUjr+7S5ZOMVOpelsEUqGSNeu3v
r8a2fLcpFgCahKALg1xcKZpaVHKIlXrquUh8koc1iY9dckBsCdXVOcGhehUvKMO0En0vfoU3
khD3atGpxrpSrJ7FYeevd7lo9ZVtrQTaJ4guryBMm8c8YxLcBZjUOFg9A9BGM5xlqURyQd1m
MiERuoOElLQuUmAwvyJDvn6BjFZUQWZ2SWpBHAw9b1ggoNZFnnqcwnHjdbmCCiJkWFek9Dms
IBUfkThmxdmfKBJWGqL1SPy0baUQLylcg7vicAHb0/3pBSDJTsfrGb/261rcEOtGD7MRPsZO
duYTqj7vZlGZ23gH9vOqPv8yM6Qe35CE5jE1Qy9KHxTrp7tqteQCnjgi5vqsrLZ318v+BWD1
nFlfmbGixQ+lTmgCVpkYYj0DXltrzJDoLGi6C6I4RELQV0GpaOQvQ4h0PVMjygbN0Gitbo0M
DX+xpMxfzKditGxVcb7DvxrjIbKvVRKn9L4idYphp7Psrq3rDOEdpxrqTxun4bOO7KoFhOdU
8800uAxZuOLNFgC+lQdXn+qGJTG8Z4mTkbiVlchnEUh5BSEdQ0OZqML24SGkaU0A9+kmJ5W2
YOzXAD82t/BUTAJ453328AETJgvL5wLHTEfkhiVLHM2tAkwn2k9wUXXan/7ZyGs/GCuO9ubs
c2DuJ/175jqvqTEERiuLatyYKi1FQ6SFyAwRQoQ+39pvmQIQNz5hzw3ulZ4KEPQxhBJsxB+i
YJQkS7ZMhu9L0PONIRpnkQl5ZnAy6J6d7ctnCOxEu8qqk+1nCKa8ZhDu0FmVwv3LV+xBt6jk
OCdnfCut1v33w8fr+Q5C2TpTBS7YqGUl4RE/fUsanBPqxCIWgOGV5lmMDBckK1zFSVTyzP4C
EL8BmFm5fvdciBxuFsTShNZpgTtbEvr5Sj8sSZkdq8kA16v1ktdJYObSkmS90J1BKs85sr7q
4KWX8RJee0LrK/XHGup8EW9Yqcet3nHdDuqyjitlNazepfBwL8GOVmZA3bLkYoEz16TW9hat
O38uFtUQiWtKi5tx3+fccbZizeEKv40oghKrxH7H8JWr+97XNUpAxzGHFS+XC59Tus/I9VXR
ks+5TSpBM+mWoFwHMaXBarOXqq4sz4gvFa8AnEWfZ7ApWMWfaUNnU2jBNmKDF6WnduMgtkaS
pjQs2gAwZKSaixBQ7dEf1jT9s88ir5eoSEd4xWcyGLkL6K4/ln1LZlzxcO3ZrPparesVh1nF
8D4YlizFC4GieHz2yzy12k1RpFlqBHiM4jubCeoLk9o9b6HfoAQFe8xumKLrhBIRTd+xqQuJ
lhrfTmS8CslkbMnZePgL2UGvmvlhrpdhV9dAsiRK7IjdKjcqEfUBXcSuBJ9eD3+/7a+HT46g
PE4TJQQN760SlYx6mcp4DXZo1oKsmdZAg9+bofUbGf0rir17mczxH98s8XFDY7lIjHsfpB18
CWcsZYsuTn/U6NBCsBGLq0SUWXWJ4ko+AKyjggIuECLUBFyW0hRFoj/36cGp1/4JtUUZ2gAh
4t5emi+66nezFGPVaKWW6gcrCHmxorfMUKw9ZlLwW55TSOtoyQVr8C0YfMCSxnuvBZzGljN4
jIPTAo1qKKXWBdiL+/m+zVIyHUzvnkorVXo+3EgLiPFFDx4l+JPy5RFrPIOPOSeUjjUv6I7I
TGc48aOf6Mf382w2mf8++GSyRfZcHkXHoyn+sONM/ZzpxMOZmdppizP0cvypITgEzHugVPSW
yMCX8MPwRsKUBt4SGXsT9tbl4cHLmXs485Hvm7m3necjf9Xm4zm92KHiTCnEaBCJqxxGUjPz
ZjAYTmhVoC1FvcKDjHSGwzXTuQ7sXDWDnqymBO1zbErQDl+mBOU4bfIffMWj/d5NCX+ndHX3
DclOYOxpNGs4PubxrCkJ2hrTwLFUnOxM61RNDnlSY5V0z8lqvvYg1HZCZS7Op4y6Q3QizxA2
19QOas6ScZpecjOOnSbHIWDSR1RZ42wdU+clVPmYqn+9Lh8REiUw1vUCzYoo8UDMZjFMA9L6
odmidxGkqFOP4YeXj8vx+sP1lIWdyNQLPIOS5mkN+PRS4YGOcyqqkugrECzFjZa0IIXIaTyy
Um71aQ5d/GqilbhxchWW0lRKtDcXcPas5CNKXcYhOgfduNxoFtK3wBoizTxgmCf6tmPrdXdk
DEGwf5J2aZmoxFq6lRbPykOtdSXp0nHEKE2hONKB7k/pmbGKmtUSg5+XcFVd8aTwOLvEKWva
wxCAdORl1/jg2kPZubSmJH3TMmNOJFX6xycwIno9/+v024/9t/1vb+f96/fj6bf3/d8Hkc7x
9TewOP0CY+mTGlqPh8vp8Hb3dX95PZxA6d0PMQO/8+54Ol6P+7fj/0qgY8PwKZRqHelxB8qa
OIuR3W0M8PXwmmerBgyWdVAyBaT6VvSQxyZHSSzEGoAFeodOuvSa7a98Z5Zgz7z+bi2mA+gK
lJbx8uP79Xz3AmGHzpe7r4e37yYGvxIGTTTDtpcGeejSOYtIoitaPYYy5I2X4X6yQqFIDaIr
Wpq6r55GCroxG3TBvSVhvsI/FoUrLYhuCnDLdUXFQi5WDDfdlo6OSy0LZi1pHmp+2F3vNGoA
llouBsNZuk4cRrZOaKJbdPmH6H2p6QmJgtv4CtYwiFM3sWWyhgcyWJ7AnUqP5eLjr7fjy+//
HH7cvchh/QXidP9wRnNZMSfJaEUUjYeR5yan+WVU0c5fujXW5YYPJ5MBfWBypKA67hvrx/Xr
4XQ9vuyvh9c7fpKVE3P67l/H69c79v5+fjlKVrS/7p3ahmHqNmCYEtUNV2LjZcP7Ik+eAbLq
VpEZX8YASuTvOS0h/lNlcVNVnJj9/CneOFQuSiGWyI3u10Dal0J8rXe3dgE1psIF5ZaombU7
sUJiNvAwcGhJuSWyy29lV6giYuKOyE+cSLYlc9eIbKU75AaLbl+DzzY7YgED8IJ67Q4Q0Md3
7b/av3/1NX/K3MqtKOKO7qlNylwbhuj45fB+dTMrw9HQTVmRO+MrgklTRc8k1GK327U7jF3W
IGGPfEhr05GIR8WCROyZ7hSwHtxHGKHE5rUV8KeyJLdK72jqxgq4qJr6Ar2JRBRtQhQxjcUU
ls45tN+WXojT6OYSAvyHeyJ9wRhOHn6S9IiMN6FXnhUbEAkDWUylitP3715KZO/KOVKTwVBJ
uSufTIIii28o8ogqbXor+1qcLoPcPQDVy3Iwd/PYFlTOcgg1cpw1WdxNMnV2lGGG3EWBcXdx
E7SmJk6QvDKTtZjZOogrot6sDCmFTzfB8i0OvGAxHJ2zzfeMf4A1Fpd89/CgGT/7sN0KxVL8
65JDv6hCa6BqAjx3fkvq7dyr2h2Tknrrs4job0EbNTzivm8W8q+7B67YZ+LuULGkYiYgnXVi
uXGYaQtwY55wTmTIy0J5B5N0udv6qqZlbrSYIeJPJnVpNXcHX73NydHe0n1DRLM9uWN2M9qa
sGCWDKqoWhnO375fDu/v+MatR8YCA9zooxV+wG6pMzKcQ/eJW3D5jupQ4e1RF67cn17P3+6y
j29/HS7KGUjrBpyFJqviJizE7dBfiKgMlhbqlckhD0OKQ23OkkOdUIHhEP+MAfGcg4Vw8Uy0
HlwKwXfqxpuUJaiv3b8kbLWLVw6u/v4GlDtMnC1sncTb8a/L/vLj7nL+uB5PxOEziQNyr5F0
sUWgV76eRZzRXCG1fBiBY6mUlNCtJpBS5B3QlaOWUaB3x7ISDEz+GAzsbVKZKG04kr6d1O16
/coFsK8/fWF0pbsjj53UikLMYdVzCh6mcShVteAb21fJYBbrIGllqnXQivXPkr1gXaSmFJHl
bnI/b0IO6lGwSOG96WiviX4Mq5kE8wI+JKdkKDMGITrV+IeepKYqIKtIh2zqKl6CMrfgyooU
jD8Xra2Mazl4uFzB42h/PbzLCCLvxy+n/fXjcrh7+Xp4+ed4+mLCVIJZg6kxL5GZmMuv/vj0
ySiY4vNdXTKzxWh1eJ5FrHz+aW5iXoJjdlX/goRcM+B/qljaHvIX2kAnGcQZFEoG+FvolSfx
LjlJnHFWNtIYDyn2LcPeIBbHbkBMNEar9qsQJ/IsLJ4BKi61AqmYIgnPPNyM1xIhoHJZiziL
ADMLws/GyOC6jMznJ1HfVAZkDVBQFfUGYqIrdM4gYQwenaZeQrMsslyHwLYkTItduFIGHyVf
WBKgdYd4yQpGo0his6ZdGmLeit03y2v7cUbcfpswFPseIg0esER3eTZocb1u8FdYMwAqAY2o
ilcpyRGrDA+e6aAESIR+mG1FWLml54ni474rQwz4G/ruPSEyOoDwrlInQssamO2dqqMbBlmU
p7gdWhbYEcIujc9un9XGZVFNgzhMjThFH5PSpj0clqZS8di7STIlv/sMZPt3q07GNOnbU7iy
MTMPzi2RlSlFq1diyjkMwPZz0w3CPx0a7oy+Qs3yc1yQjEAwhiQn+YxQlnvG7rNHPvfQjerr
RcF8l9RrohlyUvyQFnvgLl8y07ROeoxsWNKA4sJoAFaW7FmtFuYJoMr/r7Ij240bOf6KH/OQ
GHIiOE4APXDInhlieImHxtoXQmtPBMEr25BGgZCvTx1Nsqu7mvI+LLzqqumL1XV1dVWaA3MA
tYcQFhAyGGBN7hshbsJgtlG+WId2kUu6oqw4nJsb+PCu33swyoidNHRX6oeJU+LQLGvHHkwh
cZJt/lBnFwE1pYHZ4Xn6z93LH2fMY3l+uH/58fL87pEvAO+eTncgxv53+rej/uLtK6iCY7m5
Bbq4uggAHfreGOiyDxfcmBaDH6K5mUVXuV4tQSIlWoqHlJKpgh5Tojn9yQk3QADYBrGXpd2u
8LOwpnuTHkgpSmT9+uzaFVxFvZF/KdysKmzc8tR18RvezzvE2F6jGuz0Wza5CEOv8wxrz4EO
0jrEN6QYDN9L9YWU8+mA3GRdHR6bnekx0rreZi4pu7+hvBujKwq3NXoi/NBsav306kpEasKb
bs73pAjkBh/LiSveGTTw46pxW2AdURuaEUMqU6yk6SHQZfkxKWRqx/SQmcZNd8q7JkWwVewC
vUxGAEzaLbX+fHr4fv5GlUK+Pp6e78PQE9L5DqP/WsA2Y/ijfpXKccaYiqcAFa+YL4z/GcW4
HnLTX13OJGSNgaCHy2UWGEAxTSUzRaKmf7+tEqw25lXKFc1eYkvQpzY1GkqmbQHLPTyEDf/d
YG7HTuQAi+7l7OV5+OP0t/PDo1Wwnwn1C7c/hTvPY1lbP2jDV1pDakTwkwPtQFfUA8wdpOyY
tFtdA9tlG6zPljeR1Lam4tQnA/pVkdVowTOYpXSEMaorTIPskm4DMgnfoboirTVJRp0CyGEH
Bl+Vd5xBzmUxvA6wmOj5X5l3ZSLKNfsQmshYV8Wtd7KmB5BemBH3v63xfSlHK3NhQv1x2a9+
XZF+x57J7PT7y/09Bqbk35/PTy+PstxCmexyemzmZtF3GuegGP4mVxevHzQsfkKv92Cf13cY
U1alBu1EuQudx5+JVR2ASNwdw78158TM9zZdUoFWX+U9ykH+ms5bmC6p1M39pe2SE+aI/fBz
4uOxwBtgw4fmfh3mhwwIDHdTdSp1IJzkrubSwN/Wx8q12KitqXNMtejKPNk+VjXv0m0U4zfT
BlyBUIQJye1tDcSdeErx/FEY5/g5XNxRU1FmS7fHEHlnfvT3xEcXMcHN8aRQPFS9waf9nT9z
26wamhIDg8NWuN2ERtm4dIYmEfFNy1uzHdt0IPYUnxbqjc0wPeR+s0PLVCdB98HvtisS7YDR
ibR0D6pJAczK38m32vFBJ5BXXYzsNv14cXHhjz7jRoKQPKw5VG8bUOSMQwGFXZooR4tZ8+DX
Q5kYN8iczOKYKmMRFKXuG1jbbkoc5o1zowfy+j9c42sWl2sX+Wtdmn1WRGl3KLxR6dxC6YV5
DoIHNJG6DVJgOLw46USqYQnAyBHPPOCIToYuDm4N2h1B29+50cByLL+PRR4QoB569Acqa2R4
XhW5DBq1w9qPG9l9B2mx6fzFzl2y5ziJSZhAAnhKxp5z2ljzE5De1T9+Pv/1XfHjy7eXnyzq
93ff78Vj9AYL9mLkaq0nQxBwVEIGs6yEgWTlDP3SjF7CAflpD3Tgug26etuHQKEokwvBRWz8
isJvIvuzxBBqb1RKvOQS4ozBFikuCb5a2ag44cKWyThoNJlfwbETFpwURxj3mPGmTzqNyx+v
QVcEjTGTtQ+IhrhzlYjWCYMj/EE1/PqC+qCibDBP88wUbpRGALXRIzzX/ND6lmSMW38wphGq
h9UdQH6WzZwfEqfv6Fl/ef758B3jCmFljy/n0+sJ/ud0/vL+/Xu3ejrm/aDuqBCB8iCyabFQ
l83voWw89YALC1QYdID35rMJVAQngafkrjO6r9UcGQbCtD42Sa+Vw7KDHjvxmpVbaY4eM6XH
mqYJB7OA6BBTIezCmEYbiAs65KJ2mbtXcFLQuePpdssSNe/An/i0U4c9vVgFHrgthCAg7ktA
d+lkZ8EOjUOF4SJAvuwpX5GzB9aAwthGOlLfWO//ene+e4cK/xe8pAoMZbrg8snaNvq6hUZ8
DJoErpuUDDW0aiQlGvTbdmhmU1Gc/Mg0/cFTMNzxGX9SdMF6QaPUOIP+mVH9RGY7+qoxAtyf
KItFFNRMyaaexczfP7jw6cM6TebafVY75QAVkw7O27W1odvAep4oOQH7Kr0VyfMpGmIhr9Bx
V9UNT9Ct+IVKz3ao2O5fh+7apNnrOJNnaOttgAIcj3m/R8embx9raDapDlXA8qfFaCUZCtAf
XkR6KJhshr4VYoIhWPVBJxjacus1prY37noB8srRD+1/Z55KKpkqORs5q8nSSCmvCV9IFPgH
mE9vczkGe+x0Zd+Kd0f3msGKIvQpq2sNxptMUn8gi6g4fQOWhQoEeYztb1RW5VGWHoRASmuI
IPbWrhDO6G4nchm316BwbYOFzPheO+sGc+vysO0IRyo+Caz6531zS3+WxrqATLoqabp9HdLP
BJicY9633ADnBxIAuU8xGf7rsKnd3l3jizj6gYlUbwT8jbGZ1lc8vXMqdo8QxG1Wd1vBmfRR
9xgv0bc55o+XuZVog5ji2QqLfV6i13EDLG1fJq2sQe+Q/owQJROD13t4fSZLpO7S+mbeuZCU
p0/ZJyAAmoD/q3N5E3kmmTiKc2zJEx/HdHYez24cUXyMlfQVqFbmmRnrfZp/+Me/Lum6zLer
l+HB9iiMRj+O0ZyG1jS10aV5XgRRGOwGoCyKuU2BYeYYytdPH1WpLrSqkE1hlKi9ZiAGNQgF
0yRtYSNyNBIy2xxdF6P00lk7oNjQ/ZS3wOUjq1PBu+wMiSW4H8RKr/TJLz575W8XgImUXZ4w
huD6JsRB9rGiRPJlEN2T6xewTRK9QOUeJgHqdVyViwau9szbQ45yVcPhmimo7Pvm3VAdMYVe
O9atLHo8tfMdCvEUX+RY9UtSl3vX15+ez6jjoxGa/vjv6enu/uQ6KA6D7ntSnU4i5VRTRj1T
c++VwcqiOp52WUTOQneshaUleRFxfSKIHd+By4dAW7SDdGkux5svOtYcfQdgvYGTDLgCcmQr
2h2rUGLjX5ODl0q6tujL7zwEvOVqh5LC3d3LLgYCb01aw2EEVxevlxfopZ34Oah3pMEAkXIR
T1mltzhkvW6CsV8DeW0Xy4hNKGVeUaHsOEb095tFkYdztCKUNhjOsgKniJO6qLGcRxRLxMas
SCx2zkfhbJx/vFw/+7TwvfmMjHZlZ/i6np/hqvkYLFaXyth0dlwCoFeLghB4Dst0Gzd5X8oM
y1Mz1XyMT3UY/HTELpQDjOJwzNu5BekXx2gxii7wqXv7GYvAJ2ie6WHkTMiHFSqH1dexKnkI
t57jlc1Bu9TPFeGN0eh55xmIQbn7mi55bnS+hLGpMM91BRH7moq+eh9+zkrqzTwuYC3tUT6L
aM4rQhJXGiucwpQpWCCa32saC31beR/MEn4ZvxDx/RxT3W/meKpwXJWEQX4IDo35P3aprBRZ
CwIA

--xHFwDpU9dbj6ez1V--
