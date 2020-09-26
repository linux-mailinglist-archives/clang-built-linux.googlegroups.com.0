Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBY7WXL5QKGQEE65ZV3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 985D8279676
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 05:54:12 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id g1sf3973478iln.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 20:54:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601092451; cv=pass;
        d=google.com; s=arc-20160816;
        b=d0ftqjYfcSXbb5DiZ4RHStnjFkjXkBUauSxHu3S5foVet3G1wZXfGcWroLcAV16bfO
         KrNZPx1UCs7A2QlgIBRlc6vOQYSLKkmGLrOnwoPUg0AmeX1Cee24vbIr8OXxp4psNBVb
         AfmtJ032I856Lu8Boz1V3gIxZJu2RzRFcYlNTf3NOxkhWxzJRtidglhX2EXV3y4PQSWl
         Rb77ouLWAEP56u3aGDENiyhq3QuMPjUAmBBbktK4fyLOxpv8yF0ftRkEiSZ7s+SJ3GMo
         SMM4POwNDoUasLmpdJZyqQFqemhIapsmPmIoXqBJ9LcPNer7kLU0eLZw1pqbWIBu/eKl
         Q0TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=W867FnXcSGhd58TJc78MO7ebZ90w33yn+/XFsJPtYaA=;
        b=Pc81af273Z7/k7VFrYZLhWCOxxNmcEepQ2FbebYotTMhfCL0UeHZWN/+6TanDgU7Zc
         wCAYVBUgQq/YI7+9DjmN+hNMF1QCG4QbnG0hCNGCAEQ4qLtpvzTuEGET0MblStV+bnND
         N90A+gNvSz4ISMU+lJkWuDuNlUqToydZS82wjRnf2orAJe9i43WR5SHzvSBRJDlY58GC
         ZoG31RHQs29mbYCE6AH+zUGQ3HTPH22iRuJ4TR2TEYeHH4e99JsMbH+Pcsb/0Wi66H9w
         QEXoAxdm89og1wf/+DmeCKl2k9UDGBWEvbpljqm6IYkMjRCJj8nUDFde4PJCayPyaIUN
         rYLA==
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
        bh=W867FnXcSGhd58TJc78MO7ebZ90w33yn+/XFsJPtYaA=;
        b=F/kM16ROzyYczn2RrASnllS4XCwuzD7MN9rQ6AIaa7/7ZTsgEKSL8tQkV5CFemzAEY
         SmfbV4ISQJAZr2ARsuMiZffnzax+AFOIHk6F2LcZznKOeGzp82WwSWNqYzNRJJcZI2S8
         k446EkxMWspe+Yw6i88c0BZVr35zSp1bBZjbzsT9KSWr5xYdEWC4HybrtvFOK8ong+X5
         k0VtZL46mwVIX7E7embre1niahkyBO9KNNQFhj4KWEVAlToSQl1CHlQLbHE+bFARmuL2
         a+IPbkXKQTVR/aF9EQDAZU6TxQLCAVDZsbgq2b/u66ga5O/EW/yzhVwG32OOsBHi48I4
         Z2aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W867FnXcSGhd58TJc78MO7ebZ90w33yn+/XFsJPtYaA=;
        b=VPed9Iw9vNsgQJ+GSOlVvbxMtC21MvVYGXW7WXp4PjCv5lRsEMXWwiRmGcXiIkopFA
         1XIKFvoEUmO2LgeuWn+nJ+GKOu2jIEwFjj483NcNMFijD0WWHJs3TWL64A2nEo8lLYe+
         MFdkQzxOGoh5DRhZbpQox5GG/QwZVpRO5228agWGT+fMscuVT9YOPGcmKrmPMCuHHon4
         V6eGmBhKzzVYm3BgHPl+Mi+95FS3Z2IJ1j8n1TlEWvoPtdTaPUMHN7dIbqrqIJAtoQfy
         EeJ0bn6RtB96eaiGfYR1iW8GXXucOt9E8X+9eiS+5UR7WNeS4dtbqVKP0NrvfAc8fOXT
         WE4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ial0QzjIMUyo1JXBsIFWhZKI6FUesyKDfMygmR2+RXLB5hPWT
	8gEg4+Wp58+Rg16HreNXQSg=
X-Google-Smtp-Source: ABdhPJwiog4Q/4HEWGUjfuRm0pdpTbRC1vSK4SrEUN6je8C4HvejvdRJLvYWo8AC/3gZwMReTZaCtQ==
X-Received: by 2002:a6b:da19:: with SMTP id x25mr1220985iob.12.1601092451350;
        Fri, 25 Sep 2020 20:54:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1307:: with SMTP id r7ls635282jad.7.gmail; Fri, 25
 Sep 2020 20:54:10 -0700 (PDT)
X-Received: by 2002:a02:91c5:: with SMTP id s5mr1705580jag.133.1601092450820;
        Fri, 25 Sep 2020 20:54:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601092450; cv=none;
        d=google.com; s=arc-20160816;
        b=yCPIw+9/3+E1wHuLO8TnseyVHMnccP2OEScZ2FItJdZLO/FxDYSuIBaGhv28plUas/
         QJEUeqpOrB5B0u5tXbDgYtW0uxUSvfuDDHIcSpQzO6nrjXQf+5B+O0ZeKDPL1zLE73fC
         WPdYCxbT7WdZcKq6+0tifqxV2GOfzRYQQ4GdPG+5LCjIZ9xz4ubmdUAQaIRUCk18Um7H
         C9Ow8jAkbZ57wasbY/8CTJqttm7vVy6ylgVtDdRCPPNV6kx2a8PM1KgfFjGd5809LXU1
         W9h8A4EENZStFtpphOOhw2HApxJGROuUwG6OiB3iXeJGzmjFdn/1VAFqWgyPSpWVjK5+
         rStw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=bS9V+oNtLNvFUX0DksJ/67gEldJEdXQ3wQYPR5UE5no=;
        b=dNcieUexzGA1Q5J/KzlAbgsLRURaVyde31aU7KNpGYJVAUrmLOg70B8LCOS7gQyQkI
         8ALyhygdo6QuznPZhZzJRFcOcn/YKIc+TLPCtbTzs7eICtCySvt+iQYmZ+w6zwS8asW2
         KY+lGnMKXu598/EhdqasvKRjrr/bzOPL6J9oPwAUd4UeDm7K+d7GacZmFgWeaLHdKXrj
         YcnEe70dqDgH75GkBaXFKUu119xnz2vbXutIMcmF3CxK0Sn8AzohDfyC2qF/+z55PumS
         /4hs6f4Jpjgjfl34n1tFCzH68AYjNUtjjnameT5S76Xm+9IXGyQbZ15S20lYhdUOar1P
         sitA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id y1si397464ilj.2.2020.09.25.20.54.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 20:54:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: B69tHccXrImD7VvRBbADfkA8ukx+GLArxnEl3izNmupIOsxa6562VBD5zOwYnk1KDzEeugM771
 ZfRvEdoSJ7lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="149356957"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; 
   d="gz'50?scan'50,208,50";a="149356957"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2020 20:54:09 -0700
IronPort-SDR: yLn9skJ26OXHlxcQyvjh7VY58T3dQ79pfVYiWiPkfvFDX3M+jcLhZOvRFQG6ZUqC+SgYyP0u/X
 MTL1T76nhWWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; 
   d="gz'50?scan'50,208,50";a="339752761"
Received: from lkp-server01.sh.intel.com (HELO 2dda29302fe3) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 25 Sep 2020 20:54:06 -0700
Received: from kbuild by 2dda29302fe3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kM1Hi-0000Mu-B3; Sat, 26 Sep 2020 03:54:06 +0000
Date: Sat, 26 Sep 2020 11:53:17 +0800
From: kernel test robot <lkp@intel.com>
To: Puranjay Mohan <puranjay12@gmail.com>, bjorn@helgaas.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Puranjay Mohan <puranjay12@gmail.com>, linux-pci@vger.kernel.org,
	skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH v4] PCI: Add support for LTR
Message-ID: <202009261136.wg5bpy98%lkp@intel.com>
References: <20200925180356.13093-1-puranjay12@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline
In-Reply-To: <20200925180356.13093-1-puranjay12@gmail.com>
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Puranjay,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on pci/next]
[also build test WARNING on pm/linux-next v5.9-rc6 next-20200925]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Puranjay-Mohan/PCI-Add-support-for-LTR/20200926-020527
base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
config: riscv-randconfig-r004-20200925 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a83eb048cb9a75da7a07a9d5318bbdbf54885c87)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/8d07a88c56c747b6c2217cad501d3b0d5cfe8ca6
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Puranjay-Mohan/PCI-Add-support-for-LTR/20200926-020527
        git checkout 8d07a88c56c747b6c2217cad501d3b0d5cfe8ca6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/pci/pci.c:3064:5: warning: no previous prototype for function 'pci_ltr_decode' [-Wmissing-prototypes]
   u64 pci_ltr_decode(u16 latency)
       ^
   drivers/pci/pci.c:3064:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   u64 pci_ltr_decode(u16 latency)
   ^
   static 
>> drivers/pci/pci.c:3084:5: warning: no previous prototype for function 'pci_ltr_encode' [-Wmissing-prototypes]
   u16 pci_ltr_encode(u64 val)
       ^
   drivers/pci/pci.c:3084:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   u16 pci_ltr_encode(u64 val)
   ^
   static 
   2 warnings generated.

vim +/pci_ltr_decode +3064 drivers/pci/pci.c

  3059	
  3060	/**
  3061	 * pci_ltr_decode - Decode the latency to a value in ns
  3062	 * @latency: latency according to PCIe base specification 7.8.2.
  3063	 */
> 3064	u64 pci_ltr_decode(u16 latency)
  3065	{
  3066		u16 scale = (latency & PCI_LTR_SCALE_MASK) >> 10;
  3067		u16 value = latency & PCI_LTR_VALUE_MASK;
  3068	
  3069		switch (scale) {
  3070		case 0: return value;
  3071		case 1: return value * 32;
  3072		case 2: return value * 1024;
  3073		case 3: return value * 32768;
  3074		case 4: return value * 1048576;
  3075		case 5: return value * 33554432;
  3076		}
  3077		return 0;
  3078	}
  3079	
  3080	/**
  3081	 * pci_ltr_encode - Encode the value in ns to a 16 bit register value
  3082	 * @val: latency according to PCIe base specification 7.8.2.
  3083	 */
> 3084	u16 pci_ltr_encode(u64 val)
  3085	{
  3086		if (val <= 1UL * 0x3ff)
  3087			return (0 << 10) | (val & 0x3ff);
  3088		if (val <= 32UL * 0x3ff)
  3089			return (1 << 10) | ((val >> 5) & 0x3ff);
  3090		if (val <= 1024UL * 0x3ff)
  3091			return (2 << 10) | ((val >> 10) & 0x3ff);
  3092		if (val <= 32768UL * 0x3ff)
  3093			return (3 << 10) | ((val >> 15) & 0x3ff);
  3094		if (val <= 1048576UL * 0x3ff)
  3095			return (4 << 10) | ((val >> 20) & 0x3ff);
  3096		if (val <= 33554432UL * 0x3ff)
  3097			return (5 << 10) | ((val >> 25) & 0x3ff);
  3098		return 0;
  3099	}
  3100	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009261136.wg5bpy98%25lkp%40intel.com.

--C7zPtVaVf+AK4Oqc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICHajbl8AAy5jb25maWcAnFxbk9u4jn4/v8KVqdo6+5CJ7b7vVj/QFGVzLIkKSdnuflG5
u52Mdzp2l+3OTP79AakbKUFOauchEwPgDQSBDyCV3/7124C8n/bf1qft8/r19cfg62a3OaxP
m5fBl+3r5n8HgRgkQg9YwPXvIBxtd+//fDpsj8/fB1e/3/0+/Hh4Hg3mm8Nu8zqg+92X7dd3
aL7d7/7127+oSEI+zSnNF0wqLpJcs5W+//D8ut59HXzfHI4gNxiNfx/+Phz8++v29D+fPsGf
37aHw/7w6fX1+7f87bD/v83zabC+vdg8DS9vn5/u1jdXL+ub9fBmffdydTG6fXp6efpydXl7
e/V8e/PfH6pRp82w98OKGAVdGshxldOIJNP7H44gEKMoaEhWom4+Gg/hP6ePGVE5UXE+FVo4
jXxGLjKdZhrl8yTiCWtYXH7Ol0LOG4qeSUZgYkko4I9cE2WYoOjfBlO7ba+D4+b0/taonidc
5yxZ5ETCmnjM9f3FGMSr0UWc8ojBtig92B4Hu/3J9FArQVASVQv+8AEj5yRzlzvJOGhOkUg7
8gELSRZpOxmEPBNKJyRm9x/+vdvvNrCD9fzUg1rwlLpTq3mpUHyVx58zljFUYEk0neX9fCqF
UnnMYiEfcqI1oTNEB5liEZ/ACut2JIOzgEjOyIKBnmFMKwFzBzVF1QbBbg6O70/HH8fT5luz
QVOWMMmp3Ww1E8tGlS6HznjqG0YgYsITn6Z4jAnlM86kmddDt/NYcSPZy+iMMyNJAAZT9uw1
VSmRipW0WlvuMgI2yaah8ndjs3sZ7L+09IMpIQZj4eUEZDOs1TgFm5wrkUnKCjPrLEjzmOWL
ZlNabNsBW7BEq2rH9PYbeChs0zSn81wkDDbMGSkR+ezRHKlYJK4GgJjCGCLgFLGaohWHNblt
CmqYRRFqupaNmSCfznLJlF2tVLbHUr+d1TgnSTIWpxp6TfCTUgksRJQlmsgHZOhSplFH1YgK
aNMhc6sjq2eaZp/0+vjX4ARTHKxhusfT+nQcrJ+f9++703b3taV5aJATavvl1mfXE11wqVts
s8PooiYqgMkIysAJgLhGhYyLVZpohetFcdSWf2FFtf+HyXIlIuJqRNJsoBCzA9XlwOvq2CPC
j5ytwOQcrStPwnbUIpmF2qbliUBY/hCglihqzN3hJIxBDGBTOom40j4vJAmEwPvryy4xjxgJ
70fXjX4LntJde/dEJkKg4cvORdCJUbJrJcWCtCTUqjO3QTWeoFvpb0XtXOfFXxx3O6+3RFCX
PIPOi6NYR08TJkPw9jzU9+OhSzfWEJOVwx+Nm73miZ5DbA1Zq4/RRdubKTqDLbA+rbIp9fzn
5uX9dXMYfNmsT++HzdGSy2Ui3BZCgcFH41sHuEylyFLl6hVCKZ0i+1CIFpNqOggJlznKoaHK
J+DmlzzQM8d8dI94QU154M2mJMsgJv1zCuEkPNpo0m43y6ZMRxMcOaSACnp8Qtk8YAtOWf/A
0IVxOp1V2BDpxBTARRBXwUm5U8y0yhOFgxUJHFcW1ILLJky3REGtdJ4K2GkTQ7SQ2PwL0zKo
z07YbQ/BFXYuYOCVKNEswA8siwgWPybR3CjNRm/p7K79TWLouAjvDoCUQT59dIERECZAGLuT
Alr0iJoAcFaPHVGBS0aPl944j0oHblvwQSbUmb/jZkFzAVEv5o8sD4U0iAD+F5MEN5KWtIK/
OM4cQIyO2r/B51NmA2vh2hxQnobNj3ZksKjK2I3TH1h+DD4yb9BSa49LBjLzsMBnToiyML3G
I54zc/MGx+gnBGCkwT6Os8ggc2z9BNN2cemClWQapys6c/pjqXD7UnyakCh0bMzOLvT200LB
MMAOwAz8nAM/uXDbcZFnsDbMDZJgwWFhpe4cZUB/EyIld/dgbkQeYu98VrQcV33Ntvoz50zz
hYcqwRDObJ0xApuRuaqBqbEgcN2t1bQx37yGy42zoaPhpdu1jTFldSDdHL7sD9/Wu+fNgH3f
7AAQEYg+1EAigKYFFiz7abpHo/Iv9lhNeREXnRVYtALG1X5G2aRwu/jBhRSZ6Hwi5yhbRWSC
GQl06g8icDEyge2XU1Zlw46ZGp6JTwZE5RKOlYj9Ll3+jMgAgj/uc9UsC0PI2lICA8HmQ/4O
3r1nPZnFSyArNSd4+gEYJ+RRy8rrzfFLEdVyri8nblomuaKLVhIXxwTidQJOHLLnPIa0c3R7
ToCs7seXXoe5mjg+IY4dyPoIyU0OWOBi3NAWxPZ0f3FX+6WScnXdUEBnIgwh4N8P//lS/nc7
LP7zphfCiYOznLOETFwXaJlFdtzPZhGjuqpGxCJgUUtiScCALcAjUYVO2p1kaSqkVoU526nb
3fZCRSNVdhI6rghAPZ0XyLgUc7MGQ4ZMHNY5VV1+BT49X+4Qa5eUW4zhxYM6DScRn0gAD7AE
wAmIgMriLnW2ZJD5OnMJIeYwIqMH+J17/jqdaqN+SDYWDJxwDZ0NVgbo4iyrgM17Cob8unku
S5rNQREAs3kIy8HPEbBNNoqeEL9T22v6uj4ZXzY4/XjbuOPYjZWLizHHQkrBvL7kHo6z5gPL
DiKxxNBFzSeJo2KgZqAYBXYIIMKNT2SVzh6Usd3x1HNrDgeSgynq4mIHoCXSYuf7W6c6InQa
ZRZTI611Bqe2k5EWZ50rklN3NqHfRa1uX7duSPJSoWpCj/loOEQ3FVjjqyEyTWBcDIetog/0
gsveXzSOo4DTM2kKG553Z9REHgyMVo4uXwxHboWnvSa7qMkeWu/fjKEdnYp8HNha84cPTXNP
srDJ/d+QEEJ4XX/dfIPo6vTThIIYV3lfU69YvT48/7k9wTGA+X582bxB455h/sjiNIeAxzDg
0hRerYuaCeEgS8sEv2/AuebTTGSI2wEjtSW4ssLecqsm/QX3XzrnHmbApXXgJG2NbUr7cLTK
erm6R4CUZFOUbtM565LzIIs7HZvhG8Wc57p4sCNWGht4zUi7INRK2PEh4mtYnpCtUPFTOvyU
wr1YsX2avWArbfdrzjvsnjIeFhBNDAMjDADjENleHKi9Cr6Mgq+mbWenjIpzFoVWPcjOWpaF
Xl4G1qjOgyTn8Ewby9jZV1cgWqSBWCZFC4h7wrsiigx0mYCmlgDynEFKaHoxhv5tDtMaX9hs
ENDCnMnEmMBy9XOJLhBtzFzDWdFobxirPrwmtLoAXHUyhCkVi49P6+PmZfBX4cXeDvsv29ei
9tvcJYBYOUZfMDTztGIFRrVw13WS50bydtdcH5rAxBOvjP6LrsupWcUmKWXOttn0TMVmYsOW
OXqxtQjHkP5TU/AjOLQvpbLknETle871oCStr/R6bh0qyZ4SR8k2VimZOjuYQaVLQPhKmaNd
F7lyHltkijbNEjircM4f4omIcBEwwriSm5tUGC/8G3vEbjBIQLTjBLKkuJEF78ETq2E6b52K
GkpDPhVDHJGxc4FnN75oDEqF4+26VrmEZKCPaQ9MD6+28jjmYulkAO3fTWnTHiH2z+b5/bR+
et3Yi/2BTZxPDiaY8CSMtfF4TvYfhVS4brUUUlTyFHMRJd9kQp1GvcRcRH4trWA9Gh5WKSzn
YBx+gPcKluUhQ7MIE0FRrNKnGau2ePNtf/gxiDEQVEO1M6lblRPGJMmIX0mrE8KChxXTisZ+
b3kCI+RFOwcSNN0t4A8TR9p5ZjlB97apbhtBBEm1tTsL0C9bBRCbEuC1AJMfS2aOAV72ivlU
tsYroFjeyk1NJpGTIJC5blcL5spRQhU07SJjOCSmzf3l8M65OaIRIwklAK7R/If46RLp1n/a
PDdJNkSwPaLub5peHlMhsD18nGQOnny0fl94xlnR6tQU1pXiuqxFzZ1k06uFrnYjuoAqlMRc
fFcgzS2xGYTVf7k5zdJ8whI6i4nE3GV95lPNCoBFvEjbf3LqbJDVaXayOf29P/wFURhNMmBR
DHMF4KIdEGJ+gWvyqmSWFnCChyzdE0hWoYwt+sZv35lBOtglBi+W1FSD06K+TonC75dBgAQL
cwsQ5BJQnz9iI5Qm7vsP+zsPZjRtDWbI5iYi7RvMCEgicb5ZF0/5OeZUmspMnK16LpRgCEjZ
E9a6M0jgyIs5Z7i2i4YLzXu5ocjO8Zph8QHMtuRk1s8D+NHP5GlPJm659XJdojG4FknTtCL7
3WdB2m+gVkKS5U8kDBf2xeRaD7ihw+jw12ltbVitpZKh2cRNleokpeTff3h+f9o+f/B7j4Or
FjCsrW5x7Zvp4rq0dfN+IewxVRAqrsAUHJ886AG3ZvXX57b2+uzeXiOb688h5ul1P7dlsy5L
cd1ZNdDya4np3rKTAGCLDe/6IWWd1oWlnZmq8TSpKWKYKNJzEqyg1X4/X7HpdR4tfzaeFYPo
gD/PK7Y5jc53FKdgO31H2zx+NLWJdgDqyABysPkvBLO4HTld4aK+gScF6RkmuJeA9syTm/cI
PQ4XsnX8NPa9aQS4h9Kjcc8IE8mDKYZxbA5rXYPywE5JQjtbRCTJb4fj0WeUHTCaMDyMRREd
9yyIRPjercZXeFckxR9dpDPRN/w1ZJMpwfEpZ4yZNV1d9llFUYPFl0yxknaQKPNAQpg3sPff
nM2A7SMGji7QzkTKkoVack1xd7VQ5gliDxqDeUIuOu+PA3HaE/yKdx74kDPVj3CKmQYMX4yR
iC4Aqirjx/ukPkvdP0BCFeY9ZepAbRnax3lugF2l2DMf02EquUBHc2RoRJTimAu2kdY8vVIP
uf9gYPLZgzPmFv0P9AWwhSOmslG8tPax7eC0OZ5aBS0767nuPFEsIXSnZYvhwmVnU0ksSdCn
ip5jMsFPFglBJ7LPW4X5nMaIHpZcQk6s/H0Kp+YYjjq1v5qx22xejoPTfvC0gXWafPzF5OID
iDBWoMm4K4rJXkwKMrOP5uwjmWEz4pIDFffL4ZyjTyDMfty591X2t61H+888SsaZZwOE48iG
snQG9oH7uCTseeuuILBFeMi2EDXEeVjsrZyYgsNgEmTnNkQKmF7xNKW5VCM8Egs0L2F6piHp
rXxTqzzOynNSHYNg8337vBkEh+334rWHK5xS596+/aN8ba5QonM72KiLcluQgLOM1fmAS1Qa
e91ZilP79vqyvFQsmVSk577XFzOFwV8Sxl+BeYKQX2NnzKggVi1F9b3aN7zPGZfz1msdfsaC
DVfprCcYA5ML3OkbHrjifh5pOeDGc5V3wSDVcROG9rzfnQ77V/NM9aU2I6/vUMOffde3RsB8
bFKZTL/KV+Z1y6ozh2Bz3H7dLdeHjZ0O3cNf1Pvb2/5wak0EsuRlnppq3Uz0pP52vwBF4K7/
3FBFYXL/BBrYvhr2pjuVqgjTL1XMeP2yMa+nLLtRr/lOAF8WJQEDa/2Ftf1xMx4xRKR6I//T
keu7ZHzna6tgu5e3/XbXnmvOksA+NEGH9xrWXR3/3p6e//wFO1PLEh9pRnv77++tOZeUyMA/
kzHl6INlEJxk9ccpKf34vD68DJ4O25ev/gOGB5ZoHOBLkvIWMGju47fPpW8eiG4FLiuu72Ys
StFQAABQx2nouZeKlsfm0g+dEMTvJCDRme9O7LAhl/GSSFZ8XtaZfrg9fPvbnJTXPRjVoQkt
4dJenLnXJzXJ1ksD84reue5YaUnq0ZyXxk0reyVfqMGLkpgAxM4oMve2WGm/blDdl7m10/aK
amBVXBov6gsN5wrGXqnhvBbV2SHzLCuQfNGT+JYCbCF76gmFgPl8sOwGEqNY9IQ9K0bUQ0Ir
4VSKCZa9Sjb1LjeK3zkf0w5Nua+Aa1rcJZr7sW6P7gdsVWsw18BAWEeBManum8BgQtegDCu0
LrH16rp6W1I8TBGQUojpQ+cquXvqimc778fBiwVMDlKKxUr79eV4xvMWyGne8zhdOPBTAB6k
rdef1YwT5b6NgV85GDP3r60sOTYfolhWTzcAxmXYtHY52WTVYcT+Y3r4aY2l+1AgXR9OW6On
wdv6cPRwpGlE5I19uKq8rqvnThhLhDXVGx622j7pt0zcw3emYmeYwV8h7JqPaYrXyPqw3h1f
7SfRg2j9oxVM7BxEiuFUw7KvcM3lGVhekWtXAUCS+JMU8afwdX2EGPPn9s2JVe7aQ+6v+A8W
MGoPnk8He80RMrQ3FY3yqUhbscBMhFqStK0/w5mAw34wl0PAx2sWpWDUI9gSmzIRM+2+wDIc
c2QnJJnn9nOhfHSWOz7LvWyvosW/7V1FexJ4zRiRvMDrZtWS+eiMPvi4uxv8EqHdttfVuiFq
yyca0veVRgwhDorvXlp0iOOkS8009884AJC4RRAtApkolmjXTZ4x9AIIr9/eTCGkJNqSgZVa
P4Pra58GYfLoVXXF2jJn+5bVjTsOsXxthfNg/dI8D7/1X4W7IhFz/skBl2GMofjSbYyxRdje
vIpjnusQUDEebF3JKYt5gtXaPKGUi+IqvT0exXM5w7Omki8keAEsotjmkCkU+95kJT/ZsuLl
9eb1y0eDndfb3eZlAF2V4QzD5HagmF5d9Z0X87QnjIia+RtYk/Ol5Nrck0sePvTJwLFp+Q86
S8cX8/HVtU9XSo+vorYiVQR66N2FSkdu9zpotSjS0O3xr49i95EalfWVVezMBZ1eOHVM86E8
+HCdx/ejyy5V22cf1Rv1n6q/KG4CgPcHNZTcfzVkXU7CDKfjiQpyqfhiF3qtrRI+l7+7cn0X
4a7MeGWi3rSlZx8LkKVdVc/WAQLN66VVBVqjFqugKIUjNfiv4v9jyNviwbfiZUSPGRcNMMTx
865a9mYm1vOdj+Fnkz6fMHuA9GXivpQOtAO9fZ8EECpLuO75N0SAa14tmU/O3Q6KrzNw1lxM
/vAIwUNCYu5NwHoq5uJVoHloHn4XrzGa39CAyYWBUixurcCUOPEPUwGClR+ENHlpQcrJ6vb2
5g6P9ZXMaHx72d8r7A9gTFpfFSxihpVxPHoR9bbH526GQIKr8dUqD1L336VwiGUG1VTwHRZY
C57iZXH8YFTbcysHKanAz47mYWw9AX4xR9XdxVhdDkcoG1KqSKhMmg9S5ILTngR0BjlchH2z
S9JA3d0Ox8QvZ3MVje+GwwukRcEae59xABhRQqpcA+/qCi8rVjKT2ejmBvvioxKwU7obOi+W
ZjG9vrhyYFygRte3zm9zPGDtOSD2i/Lz4oapWiHDLXr1/ZM+RWUzV0HI3Nfw5uEBJDrO1NJF
ShK/rE7HxmQ74YgxcKAxVjEsODnRY+wINNwrpwRTECM2JfTBHbxkxGR1fXuDXx2XIncXdHXd
P97dxWp1ed0ZERBYfns3S5laIcMyNhoOL1Gv3Fq+o67JzWjYsf/in5bZ/LM+DvjueDq8f7Pf
rR7/XB8gzJ5Msmj6GbxC2B28wCnfvpm/umrVBnCjc/l/9Nu144iri15v4AmBN8FOnnlHQQwm
Tpt//Wh32rwOwIdD+DpsXu2/L9YYTNlwIdLcCzpAcIPquU6cAgVLlp+xohKjM+8Ozxo9iaj5
Gr8P4lbnoi3R4WfK+zBuRgDWk5zg/z7Mfyi7ki63bWX9V7xMFrnhIErUIguKoiS4OTUBSlRv
dDpxv9jn2Wkfu3Nf7r9/KIADAFaJvgsPqq8wEVMBqMFavLWwC2/hvXw1+y4Agl6x+S2wBMZ1
ZMsdfV3dC1mWvfPD7erdT4dP314u8s/P8+IOrMn6668pw552q07Epxo5KCWNiaHiV/Sz3K2e
8SSrfWsY40Q97Fd2jXdVuadUgdSWhiJQwWObNPj7VPbYJjl7uqMWKjJKjkxSUK/Bd8KahM4d
hYAMTNyz7pIma/e46HukROIk5e5TxtQuOB9UxEFTtHgFJf12Vj2j/KwRqc+ZILRh1Js7OZrK
vCAU0pPGVVMaDk1v3z79/jcsGlw/zCSGDY8ljQ9vcD+YxHgPB9skYQ/Ms9yS5RITprb5/llu
pRmuniCu9amyWzfPL9kntcgcaU6R1G0EzLaFDI6ZPWMy4Yc+pdg7JMqTFI5o6cmSknKWVpxy
MjMmFZntGC1Js5I4xfV7iOBLjSiSJztTeaobO2IprXUalT9j3/dv1ICsYVjZ13VInnKFKAVL
0CEgRyZOh+pWlpiaiJxSqMtxeRkAfIoBQn3lpe5um6qx9Ac15Vbu4hi1bjYS75oq2TujfrfC
1fB2aQELGj7Xd2WHf4yUGj6CHasyJDPDpx2/cpEVrohrJlwYULLB8DxutbfE3nKNNP17uiWX
JKjWoZXozFrru4pTW8JjovwgtxpXPDJZzsssuyOxOBk8DcGTs8fWfWiegU4lkFaespzbalc9
6SbwOTDCeNePMD4GJ3ixZlLsq+xFh6G+HY0kyj7Kmkr6VhZdrCZJZXEV29t7gDZJyBl2v2+m
6hW2poLygHBwI7ub8FJl5JcVbZ5ZB6ddFizWPXvqHZtOH1JRbmUN7l1KuUUV8P7vrgzznI5V
dbQ9aB7PC1U+tcklY+iCzOIg6jocggtvq8Y+ug4C2XP5POIm5IgrWUk6MVFZRyWRAFEIIFR2
K6pmEqDSECprh8L38JHEjvhi/b5Y6Kkiac6Z7YasOBfU+sIfjoRLlofrwu5dyFKSsrLGcZF3
qxvhQlRiEX3BJVF+uQsfMO8sZn1Y2tij7YHHcYQvfhqS2eKWFg/8KY5X1EHWKbSazcsyDeL3
a/wCTIJdsJIoDstPulmFC5KGKpVnBT4hi2tjebiB375H9PMhS/JyobgyEX1h08qpSfhpg8dh
HCzIO/K/4ObXkkZ5QIzSc4eabdjZNVVZFbZf4MPCwl7abWI3Wc5/t5TG4dazd5TgYXnUlGe5
p1vbm3JcsHek6XnC6sGqseSvFrZSbQ0qW3Jkpe0y4SSPA3Lkoh/8moGC1IEtHKvqrOTg78O6
M64Wt/fHvDral6WPeRJ2HS4fPeak5Crz7LLyRsGPqOWeWZEWbrQKSzh8TJON3HzIO70BbxNC
9H1M4QqUsvRqisUx1eytb9OsvdXCZGoyOAJaIkrsh1vCCAsgUeEzrYn99XapMDmQEo4uPQ0Y
5TQoxJNCSkeWRSeHXdY9QiIps+wRz7LK5dld/rFmPSfMAiQddAzTpbsCzuQabGWYbgMvxN7K
rVS2n0TGt8QKLyF/u9ChvLBdMmQ1SylFbeDd+j5xTANwtbQY8yoFrakOv4zhQu03VvNEIQf4
D3Rdazt3T+r6WmSEo0QYHhl+IZiCHVJJbDcM84VmVuJaVrU8r1oS/CW9dfnRmaXztCI7tcJa
czVlIZWdgt3SWgo3YHjJCdNO4dxczvM82xuG/HlrTozQBQZUSoGyWwX2Smtke2FPjhm+ptwu
ETXgRoZw6VJDv5+ZmfcvaknH6CWy58lz+a0pnsN+j48GKYoRCzfIwIin6enK6nSlLI20aAlC
43YbFbi6eJ0TvgDqGqdz/NzZ8p22O1VKv7YnawmlicC/CIAP8pBGXMgBXGfHhLsKsAbeiDz2
iXfbCcdvlwAH2TUmdnHA5R/q6A4wq0/4gnJxFuTBYu522WPXqMA+XfwWemPEMGHdy8qfdwx8
JBpRkp2daWHaX5qQccWHoMM1CQINx2gCajizjj1gRULokNYN40WEvS+bmU5HSAzMpOhKflPz
PITATWLbvlnYKMRgoGm8ZQJmyASTLgj+p+velF1MSN1GZ6W6d9Jv9cqu8t3lE5hG/jQ3I/0Z
7C+/v7y8e/s4cCFqShfqtaro4I6cEmzlSsUZvhsqy1nE0nCSwfkeec/86+vfb+SzKSutSEvq
5y3PTA96mnY4gEJQbmkTaQTsgGWtXbL2tfRgqYpqpEhEw7oeGfXBP0MIkE/gk/p/ni19nT5R
BR7LVDFTey0EDEBRnysOG5eLujw9dL/53uQZGee5/rZZxzbL++qK1iI7U/bdA+4sMUbnUOqJ
OuVDdt1VjgXUQJMLHb4tGAx1FMUx8lkclu3UTRMiHnZ4uY/C91AvrxbHxiMSB/76buJ9b8ff
rOMIqVf+oOvl0kE9lyCrYZphiUSarFf+GkfilR8jiB7CWM2KOAxCAghD9HPIBWQTRtv7/Vik
+AY+MdSNH2CnlZGjzC7CvnkZIXC7AJdw2L46Mk1HuRkiqktyMV1RT1Bb4n0lzxJ1htAruS6s
sM4ogpuo2vQkKWgbxCVfeeHdYdUJvC5pUsuTFNafu7TAul9ImcBStjTWj4mofsplKUBItyR3
AsOMyO6KatGOOFyjyH/rGk8uzz1JLViKmsvMueRZ0dInmljSa21rj06QcqGmdOjwOmQ57Klo
rDijChkIOLbD2bEA1dOMyP4AwfWW8+8b5mRA2mRpWJ5V80wVP08qR0O03eAvY5ojvSY1flDQ
OHwYVyXMYTnzrusS7ElU4/Yi17dp7E3L/M8FHQWscUcD91GYAaZmUK6STB/36reS3ZM0S01X
0CbEauduygCPIsX0UQ2OU1JerGCTBvawkz9QpD/qIKXqXpdSmZTEMUG4byr0u978jfwnIqjB
Q2gYZt+pmhzJnm/iFaZbaXNt4s0GL0Nh23uY3csIbhl82jiVsJHikH8nYzjg3IpOkO0eGG4i
3Cy1vpX7MetS1uCF7drA9/zwDhgQ3wfOIOAJmqVlHPoxVdn0GqeiSHz0hnXOePR9jyjvKgSv
HVMOhIH8rj1OdpjGV4slrJaKWNFl7JOtFwXUtwLDAjns8fsrg++UFDU/4SpVJl+WCaIecvLm
SUfVQ6P08m3xdmmo35YR8NC+Z4K3VDnHqtoz7BxhNZbts6zG82c5kyOUbAdf8+tmjUlqVi3a
8ikjP8WDOAR+sDTNMn2BgiIVDqj18XaJPc+/x+CYSJgMUpr1/ZgwWLAYUx7h0R8sroL7/gqv
i1xwDuDkmdUrsjbqx0IZrOjWbX4TnJhArMw6W8fGKuJh42Nv5ta2kZVFH+IT79C9PGGLqPOW
9g31/8aO4zLDL4zodgHWqWEYdX1b0bq06U6ui/h1oNUmtYAv1PeyF/Gm6+jF6VJsNx05VwD1
oqUyJJMf0NlTG4m6V60KCL4myKlWpH64iTFTGDer+6uXkk6SEveJ5jKGxb1sGOEAcVYh0Ta7
5XVbyWOw2vxAxfZFCkOH2g1V7ZqZ8Dxj2es7vx+rWh/N6UcmsuKvREUszAC/BwcBxFhUHy0n
J7qCA/yVweV7uoJiAvoiPu8mcBu7ihzh3GVTa9CPZJfw69AD1ALBREBNCtm7aosl9gcJB57X
zSwJ5jyYkD3niu4Vs7lfwubGFr9IU9xMbxbWPsxyHcYG36UZJ89pFp/wA1Th2WYqDmQ17HsQ
C2qblUdWsG0O8vg1s0LCWLt4HRF7qKj5OvI2HY4+ZWIdBMRQeVLaK6SIXUGUMnY7H4inJaub
qlPRC/b4zbi1HT/yiHhu6q9hGMcmXlOw1WzgKiJuo6UgLTTb7LzAdI8VdPCMjzVQ3Aml6MG+
txNz+X1/RglcSujNKKtZNQ/oi08PRcPd++n52wflRon9Wr2DxwEraoNVb/UT/rZj2mlynTTO
ZXFPT+GyCqmIhuUgsS7INLVJLi6pt3ZAmCWpsKNC6gRNinEnNVagviI26a3T+GNSZE4sv55y
K3kUxQg9t/pkJGdF63sPuIA8Mh2KmQzdW9xgHTZZ/yGPPfpV6uPzt+c/3sC/mmsQLYR1oXqm
gghs41strmaUbmWAShL7qPbBFCcyV867IS4y+PUaRiB/+fbp+fPcM09/ZTOEKLS7TAJxEHko
0QivPHfJY/L56yjykts5kSQnSqvJdoDnVux+zGRKtfkXXpDlrdMEsi5pcKRslK4ZhBlB0AYi
fhXZyILWO+tEVu6peKcGY8JrCEd/JpXbrI97WWRpRBDHhGaSZgOXUnkiwLHn7FGsfP3rF8hG
UtTAUCa5iOW0Mz6moH/3CpbH05BUqTJZ7lZfnhjHculxAZ8zd84WDjQMm+VMpgHhOxz21ZBB
NMakW/57jjlZ6UEdshNJpYHlOvM0Lbsay0ABP5KBv2YcDo5o40aYRtwrihmOi009W7/ZvBcJ
GLoKJCOHY7lJfYI+OxJT4UIrbN6bTLuk3UME2N98P5KSMFW7H6sZO3Trbj1fSnuFrJrjlbZh
cv3TBn2zCsrNefmTSSY56vXn8Gd5NDUlVkjwwPNbXqMVn6A7E0QxsfKQZ527KroTTZ7MlMtJ
dmRS6LUjCJFMWOtng7V2baxHv0PWjunUqEhFkzvPRD1Ugg8jcCdqqxMo/V1BWvWl1zRP9oRz
kaLqEq2qlBNq/IqDF+Clj7BGuZYpPPgTMUYG+HYk4gOhLvLL22mf22ZftyMnNGuqp4qyamhB
IVEQEWN0EGhZN6QCp/PgwnPqBqAhQbj73gHNE+st1qCrPpX1cN3sSBKod5UCv01REKEuVNeU
ykpvV05PUFYXDJ7o9rnZOkVVTo/7IIFTFykEfKXoGJdUllpPU6u3HSxPoQo2tcE0Qe5IDumS
QESG6jgvHpyOVwcqlk6xm5WOdeplijLvklR4FXlmcBwnTfguWYW42D/x6E+/wJTK0UC4bYDn
a7nC4ONcNrAgVK0l9OBgE+LEOE/ln5poo6ixPFQSxufXRpp+J4X9aDURb2ljSv8DInf9URfT
LUWBcklnZUa4RTAZy/ZcCVS6Ay60jLMAd/VN1VHxpfraizB8qoPZtQPNiMsqcgPOr46Kw0BT
jsjRzEeOypkJg8/x2UHR2Cf6Pm5aLlQMNe2eea7WJhs2VzU0nwDgCytdGtkfth1RkPZeJLE1
AsCTTGWpG0pi0XbDabL4+/Pbp6+fX/6RLYB6KAeAWGWkeLHT536ZZZ5n5TGbZTrsolb1NB2P
7zbguUhXobeeZ1inyTZa+RTwDwKwEhb/OdBkR5uogs7R/EXepXVueci5+7HsVvfuuuHwTrR7
0LcZh0Dy+c/Xb5/ePn757nz4/FhZoSsHYp0eMGJiVtnJeCxsvBYBn85Tf/eO4N/Jykn6x9fv
bwue63WxzI9C3IHWiK/xm8oR7+7gxX4TESHTNAxeNkicUc+rCuRE6CQAa8Y6XH1JLXnqQhdX
9Fe4sl+UYx8PNKjGAONRtKW/nMTXIX767uHtmrjalfCZ4bpVPeZoKUxL0X++v718efc7OPvu
van+9EWOhM//effy5feXDx9ePrz7tef65fWvX8DN6s/umEhhzYTlgBj9Uj5mx1J54LfPrA7I
8+RMo8OliLvmmCyEcylgy4rsjB2KAMOWMrX86ciFrHxP+TwHzkqph9r1ljPTrLCBNA9hZ1M4
K6x3N6CNdkJ98GW56fwljzUS+lVP1+cPz1/frGlqfhJWgTJda5/zFZKX1EeYHFWata12lTi0
T0+3ypYnJSaSikuZ1WmfYOW116ZTda/ePuoVtK+4MdRMZ0nkOuXMAieijAn1o8fmz1UsIe1j
jxoaOgoB7WlyZIE1d4GFcqdv7vtjrUOj11MICycpk5/2Qci8oGTn9QXkPioKMWBI8t6Nqb5o
lmJU8fwdRlQ67QH7+R4A6fQVClEQGLLBv9q+2i5Q7my7xLF4BXIr4FiRY4Z5Sp4dndxYjR2m
/ewzXCCqAn5e1jC1TvQwhHogqgLzxy0Pru3gMoS4NpMc7voCtLzYeLc8xwzeANaXLDu7zUBE
+r3Ss45sUt0lQYeJZADCBYfrrgHoPPVjuSN5+J6nONSVJwkXHcOeDgHqehNzkzQseAbt6Vo+
FvXt+Ii0WQoCsw1NDWJDbMMuxqFi7Tw0EyStv72+vf7x+rmfCOZzS63GtGPdonqxqmoI0UL5
SwUekWfroPNmHzhPUB8zdvSRE7d/WEcD/UrJzfhG3wfBTpE/fwIvnkawNJkBnBKmLGtb1V7+
nC8jWlCs+ZAfGt1JJkxzBj4iHtRhn7hXGbnUgxfSfINltiMZWD+lxqr9CdFQnt9ev80lXFHL
ir/+8b9otUV986M4ltlWtp63ae/WG8KCGRYZM9YwfHv+8EFF9pAbtir4+7/MnW5en7F57vFk
iAHTAzcVh9KMY8dKfbyb88Op5tDKZPYTH+Qk/4cXoQHj3gM2tL5srKf6WiVdHXhbaxT1SJHW
Qcg9zMRqYOHy29m3zCPS+ZGHrVojgygOnd00VWjSbTZr2w/zgNVJLjdCfGj2LFWa5RU2lWHE
WStyT5BCIhc12MrqsJ2RPwZiqA7OXfOQhDWP7pqrv7YrRU+v3yCO8is/YDdCCpwCGZpUZUHl
TVcA2uH7l+evX6Vkr0pDDnoq5WbVdbOt0GYhBQF9d+Bu24q6vyS1pc2lqPDYS5dzEPCP5+On
I7P16NOpw9kQRxWFnvLLflY75Z3ljN9I6a+8i9d8gw1W3W9JkUT7QI6xatfOcr+zj/Z4Red8
5altuKbI8wCEVrcV+9uh10McbjvocTGeFRX15Z+vchm0dsc+8ocyppzVpKe7DuBtlrJ2BskR
oh/u0aHszYpQ9IBsrbo9Ms9cJrX3+W9nqDDUFXsPH+Jo42YoapYGse+5FzLOV9Oz8LBf+JoN
e6ocd39A3+03XhRg62kPy3r7xeXszrnBimFGjFyilm+twV+H21U4nxN1vInWmALy2Cn9Kmx9
O7UAz6cAaPrRM0Br4sWYBviEx+t5l0jy1ncbJB6LLl67RG0i6VB7hW9rpsz7boz/OOtTp/cE
5QuiH1fspjxbEuGfBqZMcwX4bZXiavZpGLgOcIzQklgDQAS+OyjlhuCvV/NJGfpb3/30eq76
LjUNwziejQnGK944xK4BE6TQzWAKYTe8985rre3m+Q7rjj4Vgrrr1vHYZMeEiHSn65I+tKZX
B3/YZP1f/u9Tf4sxHSXG7C/+EPYcTKXRpX1i2fNgtfXMQkwkts6iJuZf0MDaI4d7Ip0QfsSd
ziONMhvLPz//29SckxnquxdwT1o4RWmEUw9uIwe0EbVxsDliNHsNgRONPRFE02I1tb7tPNYE
EIRUubGHX/NayYm7XpsHv8y2efDLdJsHDz1n8uCytsmxiT2qwZt4uaJxhiq+2yz+xpzc9tgy
ZHUVJDs5E5K8QiFYDybGjwG269zS7TTp5E1avU80o7WDDZE69+ltl8BVFvHICfFLVWokZziV
H6FRUl7y1r6Zf5/nLZVyCa4GMnJcAs/H5svAAF1lqjOZdLt3LQSzyLMYgnmWeXaUYv05nCOj
XZND5zvjoDp8D00cq6VdUSrynTrtHgNZQoe1p4fIB2aX77TH5Nax8TPz0KHeEqEcRxmJKZZx
NMDRGpuXQx6awayAppDjDGApjh/aLL8dk9Z82B3yBDPFjbdCh0OP4ZeCFtNM/HCaxngNOd2Z
CjKbeOuF2NdFHFrMeEBAte1AZyzEQXCqgBpsWAVyEa7RYIFG5f1VZNqxjyMjE+o1SbOszdh/
A4scfCs/6gjAlAdMIIiQ0gDYhBHWBglFspQ7jQCOGCuOF7twhZSmBXUshUICf4MNKjUOQS8g
2K7uLTWNiLwQHQ+N2K4ibOEbGNqU+54XIN9Hn6jQ77PfbrcRLmWfLlT8ECXvoFbYhvqVQ3Ge
RUdyWV2Sa9XazggHUOuYKV0TiFqxy1HfriM7+LFRN5aQn4fkN7tcUuLd5fntj48fXv98V397
efv05eX177d3x9d/v3z769U8IIy51E3WF3I7VmekTTYDuH/87csSU1lVNfoNHL46we0KMf59
ph93jfztBlOup3h1EEhfWmSjIGN91UMNVcPTG8kIoSNLH9hRHoNjHSKVUweWBbKONM5KJtLE
8ZaelYfA3xXp/fr1Ws93eZ4Ya0DYu9MIhfMaqW5/oYgg+wtC7DcJBIEocGHX4Yi6tkA7SfZp
e795XIDvI/8+U5KzYuN7PliA46/J69DzMr5zGabuuCWBSj6+gKTsl9+fv798mIZv+vztg3Xu
BGuz9G7FZIbOy+hwlKYy7xNKjilrY0qAYXfFOdtZyu98Z7Pw2grjrFKlDHw24qkH1Mllz6r/
p+zamtvGkfVf0dPuTO1uhffLw3mASEpiTIoMSdFyXlReRzPjKsdKOc6emfPrDxokRVy6qeyD
Y6e/Ju5odAONhv7N3C8SA3bkBve3hT8ypC3uh1CpqGzLaal7/+ukZGiyABiNLs4xf/vx+iQe
fjdeLp6GwiY1HEeBxpIu4isiGikJ4NYNbdv4iFMdXLODUT1s5aKBk8XXrHOi0NKf7gVEhL+B
E3Il1OcM7YpEDfANkAgoZaHH1gI2tzpFgpM+bND0Wy+AlOCiSQSvhRqDPEVfHrii8q4qpDjK
ce3AWkLw+7RXBh/7LMBcdq6ga5TAlt1/BU3zWgDalnUZnGS2py16DivaJ7FdzY6SyITvrcyB
tXntBA4WUB3AXR54XLKpAeR2HTgntXniqjSe+OSzOVKLmlMJHz/AKP8/yDr/1AbEy04Af2T7
z6ekrKhnQ4DnLit5gUg4iuoyIu7XzTi+c3TFA9QcHAazbnGMVOM0dKajcSpnWOySI5/FWNCP
Kxx5rlEGbkWESFpR7ND1FXiMW3Azju9sCbwLXDSW5gTGeltNeo5c0uyzcEDG/HSE9AVMr1mf
w/vXlfYOpMQAmoT+UZ1sfD6bsaYdjyFQUY9s9cuoYTIJauJ3foTvGwr8LrLodm32fhfY2CEU
oG2WIGtAm3thYMbGEFDpW5jVJ7C7h4gPaknIsvXRt/RVhq3h4ipOrLpaK8oYVWI49OjK56e3
y/nl/PT+dnl9fvq+Gs6i8incLmIAAIPqsz+QJqk/HU38fNpK+aYjXYmmRCdSAtUBap7QDdQo
jOhe7MAFDXsnQIzF6ZhuUqW59W5bvhrCR9j6NhqlyoicIXIcT/EwamwhVG27YCo1rxe6KEu4
HxgL6ZgiNWylI0TzsxitpQQbq+tEX1jvryzKPZ4R4euEK4cZG00Zc2JNCDukWhyu+wKeSTHc
WqVv7wvbCV0k0aJ0fVNqdInrRzHZ8tOpqioJj5FPS/iiSnZ7tmXYRqXQ3K7H4CZRC+cpAUZ7
Jq0XFo6nEu9L37aMfgMq2dn3JaxHejKwBpnJRFScsBF2bXoPWmKh3tyZWHzrVipxjO2xCjku
IsukoR0dtZk6IfrOmPoV6ocwSFhhBRtid2PMrvskjV0PG1LTLsB1xZCv5VB20fXjbHso4Ox2
LsKVNJztYMAmP0Kkh6ro2FYNhHNlgSuIh+HScnugnBxndgiU0tZwERb7wGDnCt5W8WKYITDo
osBHodR34whFBpMMr8qwPC6WZ5pQRVrZaPojzjsbzs2IfISteaOhyHOOmWUejhikjmEZMszE
GZx0N3OIaJadhvh4TQdrbLESnMWxiQ4RGKYISSOU7X3Xp/IXaBThYmdmI10MZ5bBDFssysDS
+y5Rm7wtYhc9u1d4Aie0GdbQoNOENp62wPCNCpkpClGnMJXFR+fUrEOY0LAMUlAQBhgkGWdI
WQH1Ufcmhccw5BQ0Cjw8UL7GRbzCqHJxc+1WaaJYPfnUi/pT9YldorW4GWktJR85N5IfdyBU
5UbFwwjPnUPcMMWh2ubaKlWw2vcI3y2ZKYqIFw1UJuKyn8z0KYzR/TiJh5u5Niq8AXHw+nPE
RwWtbjTPiOnXJ2EJiz3ioFvi2hw+64/hYmw9l3A3h7DguikJBVd8kwt1pZpx8brheGkD+VzA
EH2y166GGZygWWFte7XhDaR1yppZhJQEsL2xoLR+GYUB2qOm6S1hxdbXHyiW0EH9W86YJ24F
jEjgIYoc79bwF1whfgg7c3FbyrcD99ZqMRm4P8Hm4JtKKhOXES5euck2/okkInQpMQ1mDbNd
tNMkk5rAPFSFMp1rNUzxsFWwyYrFmoF8kkTStsfbMNSsKtg6X6PxJvUtqAbuTyoKapE3xHOk
cJMzqVKuueMpD6FQVFkHkTVyXryy6tCYMKAvHf1dqiwcnJpTXgQjBtEeKbxMMnBjJdAmgyhY
xD17mKNNxsrPhD8Z5L6tmro4bBeyyLcHtseOmDjWdfxD+Q0D3kTTXbmZmDfjTZG80RqGDGUP
mJbucV0dT2mfakl0FXafNDG2J4Gyr7p8k6uuPuJZN4E26BbOFQbbRws9JHLZhS5xnAYwqYaL
cNiHos0i4CNZGpbv2x1Lq3udTSkgUjgF4FZv0aF26cS2TptexLZosyJLrkfO5fnL8+NkgL//
9U12/h3bhpUQaW0ugYLyoVNU21PXUwwQD6yD6NYkR8PAD54A27ShoOmOEIULR0254a6XZIwq
S03xdHlDXpHr8zQTj2zqmfD/dA08vCVf9e7X5oaHmbjItH/+cr54xfPrjz+n1/f0XHuvkCTz
TFO3ziQ6dHbGO1s9vRwYWNqTbrEDx7B/UuZ78azhfivHRBg4usNerq7Is8xKh/+oTSSQzf2e
i2EtjfVhAw63CLUvWVFUidx2WBspPXa96T63oD7/r90EvaPORq2HjMREaunz78/vjy+rrscy
gR4vS/R0CaC9/LiQ4GVH3hOshjcu/8cOZAgeI4FjadEB6tO+gIoAOG0mLoRyUdy2cKsN9zPi
7Iciw57+HGuM1EmWCYaXgmhJEFrzpBp8rc7/fnr8KoXdVSTcMGaSgrXYSiwC2rdTBByJWPra
pXUJa7veCuSdIpFKEck+0deET+ts/wmjJxCyEAXqnNl6eQYo7ZLWwg/3rjxZV5Utli7E5apz
NMuPGXhdfcQz/VhAHPl1gp9Jz3x3PP0EjW08s0DIfoaVoGQNWuiyiUPXttBv9veRhVan6n07
JgA1jrcGnTCXgpmnZoljhVjCHAld2TNUg2yiQ9vMQ48tJY59zDOVtyx1DG2Clrf0cU0iRFfD
Pz66n6vz2GjSAvJpKKChaKFE6GM+Ko+tHTJI6KeYcIfQeGgt6crkotvLEkt3Z8mP6SiIbbt4
04A4Ue9NSOBhzxVo+m3pgasLbFxJl1gq6o0pmedQ44G4JZ4+8l10oPeJ5TpHvBrc2GHYBsjM
ccwbEYM0Ud8knBk+Jy7qxyU03ftE/4iTSE1jwqWXZU1VBcQwtQJ8btzA01cA3sX32ZrXUy9K
6zioW/mQD+fo+mktY6+PL5ffYUkEkwlZ0oZv6r7hOFa6Ad+lnEPXm8QQDOAstywrXfeZUJ28
rUJLFnkydQzQhCFD3EL6M9Em1ml6d1eq+4cvs1qw2AbsYOGHh2P3HR1XeXJUIZ8aQ3edEFa0
DBkNI6qpb6piWgbadpZMFwmjE1Dh0jLQtT+iSYS2RRjZI3bqcTMSYGFon9aHdEu8Iz8zpYQ1
2Zbt8IJRg4e8hRTWTuKMLpz1YnFZa6val6To/ROa4ZdHZbD8qrWL0rDcNIjMgTBQUetmhPCB
MIJL42BkEUNs8A+6/PYuQpJ9Of/2/Hr+snp7/PJ8ofpyeNyzaWv8AuDweGdy1+CBdoXy2uaO
T3kODMZrkk9qNHpsnoqICqOFIO9RDcZy7oVE/P6ZgViRZgbiaEJUoKFcHMUQa9fEmblIm1s3
ufhrKf8da/CAzhKOzxfxQGqW7fFIA8OmCuzh7enVtmQxEWByyL3LmB8G+J2hsXyMhaEV4I6o
UyKbIAqILWvBMXjuLEpQzzYmTtcPgfCkva/hHWNuYDTlGEpNM6sdbbdspiPzT9C5MV/Vuukv
kLQc7Ol8i6Z3td/RD1v9o2GToKuVKxqcNm/vDG74mPEIbNeNh4FLT33elxBBrwumvucEsm4p
o1m6ps0i42A4l8kHuJ+wAuE0hnZUw+5xGQ0MupCW6iN2rYjK9Lnq1DpR+e+FdY1/5eA39Ccc
9skTozab57fzPVzc/iXPsmxlu7H364ohtYJG5EMvSztt5VE33ORANAPp8fXp+eXl8e0varOB
dR0TEW6G6DWNCMUy8K4ef7xf/vVduGVygf7vv1Z/Z5wyEMyU/64vSrDz7VwXCPYD1oMv56cL
RJH45+rb24UvCt8hDhmEC/v6/KdW52kqCoc9WiFJWei5xvrGyXHkGaoeJ9txHB4RBSZjgWcT
BpLEgh4jjxOhrV3PMvJMWte1IpPKbXEfoxauw4xyF73rWCxPHNdQRw+8Tq5ntMB9GYWhkQFQ
3RgZ4bUTtmWNGR+j7lztH07rbnPiTPLO4c91q+jXJm2vjGZHc3Ef+Lob7piJ8uW8qbuQGkv7
0I7ovhpwV28eIHuRsR4AObA8ggzHChgUmZ0ykrEv1l0kb+hciX5g9hYnB5hXx4DetRZf9Myv
yiIKeIEDzGHl2geh8ky1TMYmDXj48OlHz86+9m0PWV852cfMiL7m5hNt9HX3TmT2Q3cfx5bR
l4IaYFQbybmvj67j4ArZ2HzsGDuqr440FGGwPypzQReHohVDzFrzI0+JnKQNbimX8+vC9Alt
4ha/xBHRRrqYEqHR+QPZECRAdlVfeglA773MuK/uFSoAcUg38cRuFK+Rj++iCL3bMfb6ro0c
C2nka4NKjfz8lQux/5y/nl/fVxDG2+jJQ50GnuXaiOk0QPqNESVLM/l5ffwwsDxdOA+XouC5
O5UAEZeh7+zwIMrLiQ0GW9qs3n+88mXeyAE0MT7aHd7taOr6p4O+8fz96cwVgtfzBYLkn1++
YUlfuyN0LXqMlL4TxsZIRA7jWnios87T0dFs0oboogxlefx6fnvk2b7ydYoyqblhmO/hCLQw
Mi1zVtcjotVsl/s+LZnzkjeqZ34l6Lir28zg41dUZoYQt6ZmhpheDzns2oheAPSFjb2qdwIP
kaZAJ3z3ZoaF5VnAhsypej8wdTpBxXmNTb2qDwIfTcEUfIKKphsj1NDxEZnG6bhv7RVGKxQG
IdqoYegttVkU+cZ6V/Ux0UMxfqlxgm038g2ttW+DwDHW37KLS0s+LpHIpmoOZBtbADhQW0Qg
rytHZ6GHSTNu21iOvWVj5evx8vW2yd02lmvViWt0176q9pY9QXqJ/bIqcHt3YGhSlpQLRkXz
0ff2ZmH8u4Ahy4+g03KVw16WbA0dhNP9Ndvggs7YOuyi7M4YGa2fhG7pymIYF7NCAhechsXT
nVZ5P1poEnYXuubETO/j0DaGJlADo7CcGlnhqU9KubxKoQb7/OXx+x/kApGCizOiAcGlMNTz
8QoHXiBnrGZzjTG5vIZuWzvQt76kUI/mqjdsCACG7TAkx9SJImuI3a/vbyu7DEoK6mbC5LYy
JPzj+/vl6/P/nWEzW6gLxuaD4IdnPWo5coWMgcGuvtGroZETL4HK1Uoj3dAm0TiKQgIUO5fU
lwIkvizbXBGTCtY51pEoLGABUUuBuSTmBOpNQxW1CWkrs33qbPzuqsx01M7vVcy3LKL0x8TT
jpOUEh4L/qlPvBlpMIZ4DBiJLfG8NrKo1gKNV77KYo4XO6KKukl4z6KXs3UmB89AYETJxsyJ
LzOPbN5NwrVGunmjqGnhQO5Wu3UHFluq97w6fx3bxzYVZKa8i22XGN8Nl/aI4+W1b13LVk+C
sGFa2qnN29AjWknga15ZT1miEBklC6/vZ7HRvHm7vL7zT65vRojLld/fudH/+PZl9cv3x3du
bzy/n39d/SaxKtu3bbe2ohjXiUc8oG51DHhvxdafyzgR+H3EA9teTiCgXgwTHnV8khFRmQUc
RWnr2qpVhzXWk3gp4h8rvn5ws/QdXqFdaLa0OeKHWOK4dpTiiZPi2/OiXjlMa7rc+yjyiEty
M27WimP/an+u65Oj49kLXSNwBz9LFEXoXJsu4OeCDxsXv0014wsDz9/ZHrHzNQ0sh4iPMA1c
68bAdRYHvhiYNwY+jcM6b+y4aIPE0mKiGwk4AT3w+6y1j/FCBqOAS+2lZhi4hqGwWFheFnqW
cVG8KCWG9Om6Dji+TTgPxYXO4JNpQQh0LdcD6K+5gFhqIngcgi0UfujJ0EbnYrf65eckSltz
1W6hhgDTNeQN5ITLHcBxeraK2UbcshrlHS3KisCjAkjP7UPcBxNe0sducapyQeMvCxrXp8du
mq+he0va52XiwE/ZRo4QOG4x4NdxRoZ4cR4OjUTLM7aJrYUZmiW3Vmk3WJpf3MxyLNy348rg
2UTEBOBousKJiJC+M05344jDLu/ymkk30efU5joZuMpX9GAdLUp0siajGrAwTUHqRguyZOhH
59ZsWFhWh4UpNArIupaXb395e/9jxb6e356fHl8/3F3ezo+vq24WMR8SocikXb9QCz7jHIvw
IwK8anzbWVC6ALcXOnOdlK6/sHgW27Rz3YUCjAy0fjQyBLhf38DBB8vClACJZ9HrPztEvuOc
DNcGk6X3iuVcbHNpyNv0v1kb4oUBxSVLdHP5cizTaUWUQdUV//ZfFqxLINDGDS3VU6M9KX6V
Ujary+vLX6O186EuCj0vTrqhxfCW4OvwLV1HcMWmAGizZLoENG16rX67vA0aNaL/u/Hx4SM9
+vbrHREb7wrTg4/D9UKXC5hudYjL4S3MHYEvJD/gtISC3S0aLbZttC2WZi7HF5Q11q250baw
knAJGgQ+bTHmR8e3fHraig0GZ2nKwFpLPMsB8K5qDq1LSx7WJlXn4F6K4vus0JwYh+F1+fr1
8ipFl/sl2/uW49i/3njXe1rWrCVzpsY3ZakdBZF+d7m8fIeXEfl8OL9cvq1ez/+7YBMfyvLh
tMnQfCi/L5HI9u3x2x8QX8+8frll8Ji9tFM+EMRFum19UC7RyU818/+IM9hTus4xaqtckQR6
WnOBfhTR49OMGD3AJt75K7ErFTPcZsUG/PnUnO/Kdnxr3qRv1jOE5McLV7YdXCWpimr7cGoy
9CFB+GAj7oBmJdy0z+XbBjNY9VkzOGtyVcSEi4yJBzJb8cSPmgBcLzhlaZ4iPqdjKypeREDb
ZuUJgidTdaewNtll1zsK4AA4ukWsuFTWTiGkr8SL5juujQdqasNT3YXyBNZEhyeAYXc9jo56
+yuwHgVFeieOKtuguzWleV4jql+VWcoUzzWJVS1Jw9KMCDcAMCtT6vl6gPfVoc8YFjAS0H6r
d3R/V7Z6WxxSYgmG7Fvi/gJMuS3bOujlNlGvhDUQAX6XlsakFFjRp/hmO3B8OtJlWlfJjv4S
gsHBW4U11Sg122fFNP7S5+/fXh7/WtWPr+cXrRcFIxdLPM2safm0UwOESyztoT19tiw+k0u/
9k97btn6MeaZMX+zrrLTLoeATU4Yp2onzRxdb1v2/YH3cxFgPNCGeJmGcy6ylQamrMhTdrpL
Xb+zqZXxyrzJ8mO+P91BjPy8dNYMdZ1T+B/YfnvaPHDtzfHS3AmYa6V4cfMi77I7/iumojMg
vHkcRTZh3s/c+31V8BWgtsL4c4IFxph5P6b5qeh4ccvM8rWzopnrLt9v07ytC/bA286Kw9TC
nWGkfspYCmUuujue8M61vQCPIIJ+wouyS7l9SugBc5+zsj3wFi/S2EJ9N6TUOdfacv1PatQs
lWHr+eh1hplrD1E6isjyol2hellIPFXPoCJiVlDWI8YdW9T23JW7KvIyO56KJIU/9wc+QDHv
bemDJm/hpZ/dqeog7HfMsGlVtSn88JHeOX4Unny3I6YZ/5fBBeDk1PdH29pYrrcnReLwScPa
ep01zQM8Ql4duCxLmizb4+k37CHN+fxvyiC0Y+zMD+Ud/Q9Nlmq/rk7Nmg/x1CWG9zSK2iC1
g3S5LjNv5u6Yg2UpsQTuR+son4gSXOXNkmVRxCy+Nrae72Qb1EkH/4wxtF3aLL+rTp5732/s
LcrA9cf6VHziQ6Kx26NFjPWRrbXcsA/Te+JSEsLvuZ1dZLcqkncNXDY/tV0YkkVQmJanr8Ib
xT2RInjjs+ToOR67Q2NiGKx+4LO7EmvIroaLEZYTdXwW2gscnlt2GSMqKXjqLR4UWGJrDsXD
uByHp/tPxy063fu85Sp1dYSZEztxjOfJZUud8WF0rGvL9xNHP8a7RuFQNAo5t3WTp9sMXesn
RFFKZptx/fb85Xddy0zSfYuZPMmOd2rHUwV9eWFZn9YwTtqLt8+ItgQl4yTuFGkmV7Zl8F46
Nyi6tD5CXMdtdlpHvtW7p829Xqz9fXG10oicQCOvu73rBcYsBTX5VLdR4BhS5gr9P2VX0uW2
kaTv8yvqNLd+JgCCS8/rQxIb04WtkAAJ6oJXLdG2XkuWpiy/af/7yUgszCUCNXOwVYwvkPsS
GRkZsXXWDXkykP9x+RU1UCR63Pi9mSYQfdOxxUgGmWrqLCK99sxLCK8a7QLZbt7Gt84lbSXO
/MSm1ww7Jw8LJ5T7LiP2cFuxyU0mrbee0zQSEOUulJ1B3VZOX9ex5ws8gKU6ISiPUXINYWW/
M14Z2ejeeDVsoHFtFw8OaJORPnUmx88WE3lg59NAvebS+bgvFjftCDwee53Z7U5N/eOkLdmF
O8vpRF4JRqcapYnqrLOmWi8cQnpyJj5vGnkSeUkK+sCYFZ7fBcRVR8vLGzCd+0MQ7rEwGTMH
CN++r3W2DgRbY9nWoS3qf3bmKLjcGIKXFvu6SWpWoy7RZg65iYWmr3sN2QchcQMFKxysZJhf
OtVr/eiRDdwjJqIV2PotxcqkbJVmZnjpePNsceUcXjGXsXrlO1p7vr1+vT/9889ffrm/TUHt
tOU9PQ1REUuJVtstJE05xLvpJO3vSXGj1DjGV1EK7znzvBn9xJlAVNU3+RVzAHk2zZJTzs1P
xE3gaQGApgUAnpZs0YRn5ZCUMWeG/CvBU9WeJwTtNmCR/7gcD1zm18rlekneqoXxHDoFRwyp
lMqTeNCXAkkv5M43KbLMD0AhAJWSoyxDu/W317dPo5sCV7sLraymK1W7usDPwfDhTZ4fSFV3
CqpqOddYiatuVN+KlgQhJCW8LidLJrxYeXGm8PLCZYtTaMMvJMatJwc65oZlN1KltWjQHu3N
8/Eb5hElq4pLT4CwC8tw/QqgnGy9MqnkbOC42kLizzfCrZDEgjglW+BSVXFV4QcOgFspBJG1
aaVIk9DjhfLtoIYpmWjEmoITbh2gjQoRdSn2XkWCXZwbc42f5NbVt9tQP9dCtcbQD+aETeBU
UxWJtaTAlamPujxSPTbZhRtFFGB7gMtgqgZ721RuNrLHVnc1/U+vH//15fOvv/14+s+nPIpn
v5XOFQmoNJSTvcmz7aOGgOTbdCNFS781AzErqBByD81S4qZQsbSXINy8YC4LAB739t7MUe3r
/sYktnHlbwu7BJcs87eBz3ClGHDMnheIAsjzerA7ppmu65+qFm6859St9CiwEMlVbRFIWUXb
lsDfbc6zc2s38ZLog2OMuoNW5cGEeyN/4G5E8gemnCZf8TjBDy4Wg/P5DZ6EAvfYEUfjccOO
GJXcBRt8Xba4MI9+Gkt9CM2AVFojgQDUYBrYB4/m3xxJYXaWvV5RJ4zmAyPd+2o1uIT+Zp/j
Nl8PtlO884iVQStKE/VRiYknD54ppA7RL0mMri/vrCLLtSo83sHll+noNE+TKjPCVMHvQSlU
B9vxjstxyZi3M9OakCjvWt83jOCdS+H5M1F1pSa3qp8DOEQ1Pd2YdIjoLKcw1wPVGqmUsYqu
3ZikOiocwpDksUvkSXTUXyYCPS5YUmZwzHfSOV/jpDZJDbsWUh4yiT8bDrdnyuQ/z/C5K8ba
wsWvSSx4nzQA6f02F7tCnbPOKNIi52YmGmmZ3mvR0Q5ss9fqKo/BTTGVdVNFQyrMjC8QklEk
CqQxXrZWe83xosziqlv16TOytNAEfdOVmCtdjS1q8+HC4IYMjnVEnS4FE63bbiJ56SAoNnZc
VZ1Xd9uNN3RMd3MNAIuOe1vXpmpmexBSRDDNsL7Px6Dpel5tzS52AYtW7LAIZGPhwcv70Hm7
UH8L9yi3NU1kzxes9PutnYmqTF1d4dmOXOXIEcmdD2PvcMBvuxTcct7jC/QDVuc23LRXMXWH
A3EZNcOEkmSGCVsmBV/xsxtgp5ay+FaDjm28Da6PU3DBrVjgBlz1tyzBT0Hqa7H1CYvuCd4R
p7pxPvQpnXXMmpyttJhcL9fgnN1WPx+TxyXKJXkaHpOncbnJ4cLPuNLSWBKdq4BeQ3gZ8wyX
OB4wIZI8GGLcIFFPge62OQmaIymFFxAGlg+cHjdpcSAuutTOEgt6qgJIz1Epk3v7lV4DF3D5
oadLPjPQWTxXTeb5xIMnNXKqnO79vN9td1tCUzJt0qzBj9UAl4Uf0pO9jvozrrNUcgWvWyne
0XiREKbcE3qkc1Yo8Thj3CGIV0NqS+Ts4K+sIxP+zvqsDvaVoKfGpfcJSxFAb0VqLZTq9H2O
/6a81RgOaNQ4ZONgQaXt5av/sD6R0qcyuBsE/5D8Y7e1WomUhAw/vxPBvoQwyBCzciVCxczb
Mc/enYEcMc5eCPIoc9obMMA78AFIV2A489Tyvqi2tyi2NZPWd6DV3mEZ1hV2BNbQc+xWoq3K
xIwWMiMXJsWY3s4IKnWlKyYqS/CShFGOOXXCReRuK4WlaO1IAGyzgacjJkLiBQhK2LX6KMsU
6lo9wj4t+HNTKdG5xY5oY3cUu6Dv1S3X9cxF64ybOBE8K9XNgWRyJeoFlTVz5pP4Fk1O+cCm
Pn273//4+Prl/hTV3fJ8eTKAfrBOwSmQT/6uhfOe6pgKsK9rkF4BRDBHdpyh4oU6Ai3JdvIM
3BMJC04AdcxTHErWSsOjlOMmjUYSUNWVYvOiV8XuDLeIq72gJwGj4Mx3vrfB+nrMAPPvvgy4
9lnKr9FFxG4LiCqFcZ4nlyTHUgbcWpIRjiqlvh3PdnKsn1b22wezLEVVJ82KU2aN/x+rcefl
Nir5Jod7D0XtOxHl0a/c0vYQKETNz5UiTkzjVgCKU9a29jzW+OYx6mbWpnXG7MwWtg/90MaY
InMZHXApP+5sc5ONvmYdf6/G0omcZxUWs27oWp4jCytg3t7ezB5ITyK7FcT06uagokbnL+C2
o0icyfMOwxk37HT48BD0C9vz1ts4B+oZ8TBrD41ha6usJnoYUklS8S50lu07LfAcBoQpicYS
hqtlz6NwZ8ZonKFT7JM3WAtPO4iI2gqBwYotvZBFEOaBj2U7QpgZncmxpVIN6VQxU4gHx9bP
df8iBhAig3wCpjGOZAkwZrJtcjii2QKhtsA6x46o69ZH7yYMBqJCe2LOTtg4YxGs75EZMAFk
ioFn2sTq0BYzQzIYjlia4GEZT7P3N7i3vpkjZnvfQ6eCFFvW1o7Rbmlac52PE7H3AlL1NzL4
pgHPAzkE3tqgBQYfafiRjrf7hKE9mUEMD7QoYNU/NM8B5YtkkVhYfzxsDmtrjmIJwj1z81dQ
uEHmtkJ011sGcPQpJNijPTpj7+wKC5uIr3QyROxks+hrE7IQxeHo7YYr3MUqEz2kNhrPFBPS
ZZJHBm93QKY2APsDMmMmAB8qCjwiEvsEUEvfDNMH8plrDKiLJiChd3pn5kKHsgQDw6+aBZA1
ViCZpGxeZNzOyEqDjPi7LRJ6/r+JFAB6v0UUF1p8OXvRxaLJ5TaPTvqmlQv0AQb/Sp5NG+70
60idHiBDEegHZJ8d6dRMa1opEb5bkr2HZijJK+l64TvpiqzNTS93C8KzgsUCkXBmBB9mC9ok
WYEJSJPlM5P/nyPyOhxNOh1QCHGfODkLUfiBHuNOB3YbpGcmgBLXZ9gamhjfNkT90y8cLQt8
ZLkBun0zNtL5IBhymmmZ8MMQlS8VRESV0Xn2Kwr6iSek/E7pPHvUcbnB4SNVk4CU/9HTgwqK
4WFmIQtHyo6H/RH9+BFr4t0O03mthYvmDTzU4svlQ+4vHYZ3ljuTF130HizoRjPBcdR76AO+
hU8EzPf3CZKBGKVcNHXAQvo+BXhUgI9gnUfu+ccgwB4ELBzFIfSQYQR0PyDoaPsDgvru1hgs
cx8dQQPa6QzYlqDoiAQH9C3Bj60Hio7Xdr8n+PfI1gV0bIuS9AMmnI50fKmfMGLtlOgRfTNm
MFAddVyVKhUDXovjHq/FcX+gsjrg5o0Li2B2jAaH50MeHDarRf6gdG7HXe0j5QY5eh8iMmzR
7oIQHZEKWT2LtLsdJiSW4JRoSwAHbKYpwEe3nBFaOwK2NdtJUYsZgQ5MTZ/xySgdRKyJUX3e
AzaBUVzIGlafLVS7cRnv7XjsmsieufGYXP4cTkoxepM7cZOUWXtG6ijZGnZ9ZNWd9ecSkMh0
qbMohb/fP4IjIyiDo+cEfraFB8VmGiyKOvW41yY3XY+QhjS1qLVljbwQOWZTpFCh31ApSgf3
kybtlOTPvLRpbVU7RTjx7JSUI9koRnSG18vo1BphLn9hr2kUWjWC8cbMKqq6jDV2PgWLWJ5T
CdVNFfPn5GbVOVK3pBat9g1H/Yomm6blYHp52oTmw0EFjyH4iLzlCMqqEp6S6989qLLRiC8T
cArjtGiSo29YRiiJqsL9ANNyKuSDbBN7PBcn3tiDPG2cVLO8anhFPEkBhnOV4+GM1dft7hBY
HSvLMs8CI6HnG3YBC0gXwYvAyP7gynI5RsmCXXhyVc/wqbLdGsttDlB5xGJnkvGWKtrP7NRY
I6u98vLMSrvSpeBy9alKO+08UtZwRPp5YvVRnpTVpbJosnXc5WamDvHPBCB/1IaR8YKkeNxT
wJuuOOVJzWJ/jSs7bjf4iAf0ek6SHBv06hVMIYcb1d6F7PPG7rOC3dKcCWdENck4/ai0eNRU
okpbK7UKokgmN6dsXd5yNXKJ9MqWmymVbcMzO5mqoadLzUp4ByqnnLGLaWR6FamTUjZcaVWm
TlqW30prf6nlapxHMUoczDekOrLYoFNFmPjIpOVoFlTiEbmJ1XIlVD4JImtdrxtwlmPSGnjo
487gpooihhtdASy3H6tXLFh5iyDKBw4ONCEG3B24I1vUSQKPN6muF23CCrMqkiRniRQ7EqfR
kIj1emULayBm4EyECW4EbFmI9JgSBWvan6sb5GVIjRqdWgXUUsgv1J4kV26RJI6wBk/lM9wC
bISbTrSjfTXJ1IEwN9QCO7Mo3E8/JI21hl4ZsqVeOS+qFrenA7zncs4RuUAWU7tN1JniSFUf
brGU+OxVTcgto2qGc3dC6ZFsiKqYflkyXl47I6aQAo9ve4KcjRUQaVaJuRA8GxWzR1svp/dq
IkjtxO4425vyt7NZvMCheYPBwZy35pXN4F2s9PRUtcJU54hTb4EBnyxETKIcIIW5fyvTtSSG
p5LY4qDM7/Kam3ZiY1JlqR4emWTWwK7MxHDWV1DDMlCZvZnW8erLspSLf5QMZXKdnq4hsYuN
sHTQ6pPZlR0ZPU5SJne7AZ4HcYEt94rLeAhil6hqlWVO3EVtzgmPcTNfzAU7QVf0cl6XLIdB
T2QKW4hq7yxpgOB2E5OHLHnskfshmKrl7PYP38yxMCWCx0j/9sePp+jhfzO2D3aq53b7frNx
OmjoYUSNVCMzRY9PWcQwc76FA+nSmS63tDIRDFvsH2zT40mzTAlRJkVvqqqFdh6IV98LY9vC
oFIeGokiJEQNFD0VmFMLvXhE6au+873NuXbbmova83a9C6RyMIEhmwNIMSHY+p4LVI8mQqhT
pTBE2JOyQmpjtEY3MVALhRf4bklEfvCQYi9k2RaVnVFzAK+5x/1KZo8amGs0vN+F4ORgh43O
kfHd8lP05fUPNH6amoARvoGrpatRMdqJYl1jawy0xaJyKeVG/PcnVfm2auCd/af7d3BO+wSG
pJHgT//888fTKX+G5W8Q8dPX179mc9PXL398e/rn/en3+/3T/dN/yWzvRkrn+5fvyk7y67e3
+9Pn33/5Nn8JdeZfX3/9/PuvrltPNbLi6GA6BZRUXquXiEQtwUdTYDe9Ig4Zi7OEno8j07ki
l+RC9WLcRHbyI/DOh2Pu6Kdxx8BTXO6OivrL6w/ZdF+fsi9/3p/y17/ub0uQIjViCiab9dNd
C72mBgKvhqrMb2Z/x9fIaRmgqW2UbBbFsVI5heOVU9D/tXLjhvAkMGloLAOrhVuhoUqdEHMT
5rsUVZF50Gevn369//gp/vP1y9/krnRXLfn0dv/vPz+/3cctfGSZpRxw4SwH+v13CA3wydnX
IX25qfP6DG6B1xrUx1sFSQ61332kYr/JXJC1J5kLU9vAG9iCC5HAQQt1hWzmpepXxdyZAuCW
jMcJ/nJn3lb2pu5/WQNU2zqaXrVuC2Hcjqp1Rb2WtAswvaGUFGG1qsv00De7mOuWQgMZbyKQ
pdaTZ81z4Hk7Io1RH0y201yPM24Ap7Fcz/JYfU5Yi9YDTIRAKZ7k82sNNJta7ujYda3OM2pm
h+KAZpQUdZKhSNrGXLans4VO8EXurvg5U2PiNXtZL56u2taLJRckV3y1wKHleMkPnh/4FBTq
ke70YaXcr6AQr684veuI1gFFe83KoY4x/w0uI5r8cy7wCj5XJ3DUF1HjoohaeZIPMONVnQvU
QWj6RSX2xMQdMS8EP4JkBwHPYWvv/Avad8QTA42pZJeCaJY69wPdK6oGVS3fGZGRNewlYl1P
FOlFrudwhF0vk6ij+tCH+MLD0oQEZGPJA74tp84rVtI0DJ5Y5YlwTooz0604VfSeNHG11G6z
LAWnpJlcKWDf93J9rN5pg+uV6JWqNi8MdKgoeenKF9qHEeGLSi8caHOG4p1hc+XifKpKoitE
523wUf3S4utFV8f7Q7rZB9RgdnwiLNuiqVFA98ek4DsrX0nynb2HxV3b0ev8RdhLeJ5kVQtX
J45Ghjz2zPtEdNtHO2t2RTflgtFOjMfUdYQ6cML+ATd1lgoCLmUnV6p6goo+FKk8FTPRQvwJ
1GeoqjEX8p+L7pxW1c05zEsJqYySCz81DHfXqmpRXVkjxSKnreC0Rx7PRdKOx8GU923XOCIH
F3AZkOKPW4DhJj+iujT5oBqw9+1UQSch//VDr6eUQGfBI/gjCO01cka2O90IRrUcL5/hzX8y
umx0pUNWCblRocO8/u2vPz5/fP0yHm/wcV6ftbNMWdWK2EcJv5jlAK3fcDE0gi07X+A5r3Ee
X4jqQDCcbrNWjupiKb0Gk2G8plclim6UCD0ZjdQVfyg2E/iATCj53GS0DkkTCI0yKEMMH0Gn
s/pQdsVw6tIUPJ/4Whfd3z5//+3+Jmv6UOHZ559ZP9TFuFWhyq6xYQ2cVSuWPrZnY5xv89x8
WUkIwMDeLMvacmw0U2U6Sq1kKbWgKNbSeorBXG9RmiznV/TMCsyYLrmIwzDYrTWS3Ol8x9m1
jR9w61TVyNUz7o5WrQyZv6F1INNwGJ81klyjwm+9p8coRpaSzJw86KCyFg71Z+pq27vH4fz7
2/3jt6/fv/1x/wQBnn75/Oufb6+o5h3uiMgCO66LzWYzTZvMRhvKFaXc2KQpbuOh5k1XRiD5
rLBkk7BA9wiXW+U7+q0M0w9aGrAI7mHqSnDiXm5M57xyE5WBPh63Gxnha3KKGN1ccLuIVUQb
OO/3+7L232rzTZYiDG1E+EAZ4S4SuDpshM9xIETgUx6dxxzAb97x4Absg/K3f32//y0aA2d/
/3L/9/3tp/iu/XoS//P5x8ffjJfPRuoFRFfhAezRm9D2OaI11P83I7uE7MuP+9vvrz/uTwVo
xhCN9FgeCPmVt7ZaGysKkaKxC1RSihNX3uomN0WhaWvqayOSFynoIkRbFSiULw/D65f8bBZS
RkVqEf0k4p+A8/1bKvjY0boBUcRnwk+Uyo+nBajN3f1KfWvaBgMpOu0JZ1mAXjiTqRUFtgEq
vINIvGaVO3GO7Fw6WWq+ky1OZwUGjRAeBjoRzyx6OUdO+c/ihW6MyZE+rtwEjkJ3PlckhZAH
PISy9MTYj/ev397+Ej8+f/yXK0Qun3SlOk/Lk0pXJNin9BB4VGJOTHVrga/bC9PPyhSqHIID
vqMujI0UON7hWO0MuJ2ejIAmirrPVR5X9f55UAdl2YXmqTEp26yoygltneI8NXBaKeH8d76C
vF9m5o2maj/wrul0jfqelcHGD4/MKSe7+la8ZiNb8Laiv2l7UEObOj9Ft6rYbDYQWpbwnQss
Se6F/oaMba54lNNazLL9gfpWeUY/t06BwOfrFlO8LejRcBUMVDBz992kZIWPIarEU7BpIjEm
XwfH7RYhhk7p6zDse8RsY0F9TH/9QJGaS/KOrnl9CHX3FDPxoJvvP6od2m00Uedauy21C7DT
tIIXb8ImMfL8rdgcQjc51Duxgpokg4iSprJgHLWxFOrp6rdBeAzsfv9fyp6tOXGj2b9C7VNS
lZxIQgh4yIOQBCiWkFYSLN4XlWOzu9RngwtwnWx+/eme0aVn1GN/5yEb091z0Vx6enr6Etjj
6UyHVoHvTazpoIEqCSZz3jurW5CTf/Qmos3SsRf0qBXwuBzby2Rsz/eDdhqUFpJMYwDiRfjv
5+PpP7/YvwoRoVgtRk343bcTpoBkLKdGv/R2bL9qLGSBSoh00JvyvgxYK1X5ecm+iFaDQtvS
ICbLKtHq6N4gIsuhjmE0t83uMLWNQqJtiYXaDU51OX7/PmSPjU2OztpbUx0tvqyCy4Apr7Nq
uBoafFpxYolCso5AgFrIlya+kveMVxXCIN8aK/HhGrSLK87/QKFj+FaLam2rBEsSg3p8veFr
7XV0kyPbL6/N4fbtiPJoc3sY/YITcHu4wOVCX1vdQBf+psTMI4b24WYTUZN1BZn7G/XhVMHC
rd6UL1erBT1uzIuqHcwmuF2vHg0COJ3jBSZz5H1JYvh3A4LZhlsQEbA7YrnXFSqqQIoJbJVh
6pvs5QC12C6JkVwrsd9vAqHtIkL8FwElyhhZmPZDQuo020VN1hZTh5CsTSxs7DUSwbLPNYI2
KZHa97Zb/nbf66Ub2Dp03emMHFFxusLM1nHcWHJ3ra4r27tjA980L2VdItUOLBMiymc0SwMX
mRjEiQqWkhlw9bL0aWa0vMmAmlUd7tOnvm+oTRdG6kmdGUySKQm3Ogm+9Segbfc/G0Iy29oT
Mnq8x5xVNWLysNjhA39cfNYLhSBHNyhe/QA0fmRQaQEOzoQgMyQoEU0HcWtaYKSBXW7Qq2EF
xdawjxCbLj3WhxADdw7DVcusvHQImjy9cKDz2sFdmHNPzTuhIY+zKqHpwwWwkHl4FBhWr7Qq
oOgLUjbGwEzyp8aA9vFyvp6/3Ubrn6+Hy++70fe3w/XGBYD7iLTt0qqI7heqdX0DqqPSEAKg
8lfxhlfKr7IkXMYl66KCSQWChFxS4YdIAp5ld1sS4KElxFCmsHXJFpTCQlNJv62AdF2GnGdD
XwA1stOpN/O42oTfrKtKqQRbxhPe1ESjoRGwVJTtmjCuEUO9sQkmCINoavGfgbi5Y/qMoMQo
qHXAqx5p406al2yOO0KU+0lK40pQ1JfU0IVdwLtIE5JFOLVnrAROiJbxPgrrNFW3rxy4ZcyG
dV9/AZl0k2RCSyJVFc/nx/+MyvPb5fEwvHMLgVHGflQgItpjDyziMtjVg0QFQqGBFl91Hlee
u2DPSLYDnTrGj5NFRq5orV1vna4V9oH6jsKv00XGDVpTTavOa09YGMotkVWksd/hdLgcH0cC
OcofQMhDuZC83fQZMz4gVdsROqhl5zhdHF7Ot8Pr5fw4HPUiQocXTLygSFAdFJa4wYmDqVW2
9vpy/c40lKelcqkRAHGyMqMokSIrzgrvUGT+NQwCdCw5aNrOKp3qhDjMI4JWKu1IwdI4PX05
Xg7DbHwdrWi7K5AFo1/Kn9fb4WWUnUbBj+Prr6MrXhK/wWz1ejpB7L88n78DGEO1UsV100cO
LctBhYcnY7EhViaZupwfnh7PL6ZyLF5aXu/zP/oAsp/Pl/izqZKPSOV953/SvamCAU4gP789
PEPXjH1n8f1MBdKITpTYH+FC/49WUUPZhErdBVu6VrgSnefUfzXfHQdJ0TZ9WUSf2940P0er
MxCezrQzDQpO9F0bLSHbhFHq01w2lCiPChEGdqMG4FZI0FzGkHaD0qFuocx9mmFMqQbuUsDk
9Y9g1ND9F9fRTksm197a9lXQ34Wjf25w1W3dDAZvG5K49sOg1m28WlQRf9USN6gEy9IHUYOc
7Q1cvbI3QJBLbHcynTIN4QvzeMIFvOkJptOZOx5Uqp/cLbjaTOzJsGNFNZtPx/4AXqaTCQ2F
1YBbGxPlLSIryH0vpkj40ZhTcLA6WLBgVKBnG3yf0IrdLeOloFLBzZUfZAauLfkntQohZQak
otUSl3tHQhy8kKhsXeCYyWnwfeWSpT4+Hp4Pl/PL4aasNx8uy7bnqPEmWyAX3soP94mS8LgB
6FH3WjAfbE9gp45Wy3QQ3qwFm6JkLVLfZgMlAcJx1Lxvqe+yIfoXaQCrUtpp9x2iUDWokIJR
4l2FvkP3XeiPaSi8MPWLkMrVEjDXAPYgLEfjDysbHHOKITHnVUvh72NtpXU4dC19D49a1Rbf
9eFuX4bcUrjbB3/d2ZZNGEAajJ2x8ujpT93JZADQV0sL5lcLYpUIQQCYufQxAADzycRurYto
vQjn6wSM8gCS7gNYIRzDA4zn0M8oA3+sBiOs7mZjGm4FAQt/YtGDVtuEcmOeHkAKQq+Wp+P3
4+3hGTWhcCbo21SGK0R/z8pXd8jUmtsF12tA2Wp8MYTMuecNQDieR7fj1JlrPAEg/HVdoPhE
s4Byp1zwXEB4ltog/K5Fdg2R3T5J6G5U0MqeA8zU87SewjW85iYdUTNLJ57zeXwEilMFAmI2
mypdmKtPaQhx+VReiJrz6ic/nLsen10ROHIN2xLlAq5D+9yx9ogknQLYbKbCgsCGRWtrQHyS
VUGhP0cOt8pVaLJxVLpoIxMOwKqsokB7T1vHIBrwl/H1fspe/jGd1V77jqQKHHeqLEUBMoRC
EzhDkh+J42JfohRk0fDFCLBt1e1Rwvh1jjiH1eAgZkxNsVET5Kmx+9IgHzusCxBiXBqHDQFz
eqps/C0sacXGWIpfcvqYOsVVcudLO7OUWvsLTJmncR0rc9DDdwY4gCl3DIUAm2Zh98zaccUU
lotSSSVKWzObgdH3+hbmlpZj62DbscezAdCalbY1qMJ2ZqXyktyAPbv0HE8DQwX2RIdN51SK
lbDZmCraGpg30ztVyudqFZqCnL0fjEqVBO5EjUlefUlca2zBGjJYfQKBhwSmud8tPdtqWuoK
NbfC/aDS9th674iih9jycj7dRtHpiZxcKF4UEZyXjUOfWicp0WgMXp/hZqldsvxwNvb4Pb1O
A9eZ8N3u65KV/Ti8CEPx8nC6KjdRv0pgv+TrPtZI37RARV+zBsfKj5FHxT75W5cZBUw5uYKg
nKl8IPY/617V5KJZTi3LkAkiCGHODQ7Z2O+4iPE+tcqpbFbmJf25+zqbKwl2BuMlgxIenxrA
CKa2yXOkhgZs5FV5m1E5jIbuLyl9QBO2frqa0rKpomzGWCqmyrwtp/dJSLhl3pWSndJF4I5A
xqPpNSCDijXJWe0Mj1MmXsM1MqvUNDQbDPbag9whvDQ4sTzCbeD3mIrH+FsXcyauHhuHoFxe
RAPEXKl1MnfQzqCMBlANMNYAltpbz3ELXYybKE8n8vfwOjjx5p7xNgjoKauwEIiZVtPU40VE
QLg66dTidj5i5jbt9HRsaYLgTEsT2QpTeYYJ0ql4VbparGmQV2yPDdWKkoxHD8fUc8bKb38/
sVV5ZjJzdKHDnTrsbQcwc0c9IKGr1szRDa0kYjIx5MmU6OmYFfYapEcvTfJ4ksPSP/S/tydk
JCVgFE9vLy8/G/0l1ZwOcAK5xAgDh9Pjz1H583T7cbge/0XLpjAs/8iTpEviJp5PxFPEw+18
+SM8Xm+X499vaHGgnk/ziZ6kR3mBMVQhPVh+PFwPvydAdngaJefz6+gX6MKvo29dF6+ki5QJ
LF0lILsATBX/qP9v3W25D4ZHYVXff17O18fz6wE+XD9XhR7JmimdRJA9ZkDaJU6ooNjV74f7
onQnypG7sr3Bb/0IFjCF6yz3fumAmE/pephansCVOsiRtrovspo6PaX5dmzRjjYA9qyQpVnl
jECZdTcCzapu4moFNwuLXZrmCZQH/eHh+faDCEst9HIbFdJ74HS8qfO9jFxXY4ACxJlMoHrZ
Ujx5G4gSf5ltjyBpF2UH316OT8fbT2Y1ps6YyvLhuqIXqTVeGKw9O7HrLTr3VNSkqCodeg2R
v9V5bWDqaqm2tFgZg1CnJpACiO7W0n6u/mmS+QFruaGJ5svh4fp2ObwcQKJ+g6EabETXGuw6
17OGu86d8nfrBmvQt8baDoyZHRj3O7CrdbnPyhnmFTGd6h0Brxy8S/eeKkVvdnUcpC4wD3Ol
ChFfMZLAfvXEflVeFChC2cgEoX1ls1OTMvXCcs9O7zsTSfc7zkKdxNqzRQvtnx+kOevx+48b
x5j/grU9tjUN3xa1ILyBvZ/g1jShMH0Dx6jzsJyPVS2KgPEx8xdrW8kogL/p2RGkY8eeKX1G
kCHhM6DGDqe+A4RHU6/gb08NXb/KHT83JT+USPhiy+Kt8LoLQZk4c4tPW6iQUOcJAbGdCcuH
/GQYKFVi8oI1zvir9DHRd19ZkRfWROFATU8YT4iqmLCya7KDpeAGSleAdwOfN3hnNEjuDWGT
+fZY5YBZXsGa4SXKHD5HuIGwieli2x7TzBPw21WZa3U3Htts8oOq3u7iko57B9JySnRgbYtX
QTl2be6oExj62tUOegWTPfGUURegGbduETOltQDAndBUHttyYs8cIn/sgk3iKu8UEqLmZ9xF
qdAacfoigZoqO3iXeLbB8/krzB3MDx+EVeVF0tzw4fvpcJPvIQyXulNzZIjf9OXxzporutDm
ZS71V4o3DAEbctlQCuW4BghwSYvdjEgdVVkaVVEhpT7y7BSMJ47LD1JzFIjGhMD2Dn9Yp8FE
eWHXEINcZxrakOqsoSrSsSKAqXBT3Q12kIyotQvl5lTOdu/1qikItdTOCmEj5Dw+H0+mhUK1
SpsgiTfspBAq+XheF1klAuQbjmOmSdGZ1j9k9Pvoens4PcGd9HRQP2hdSFs+quAiaOECXmzz
qiUwLpQKHTqSLMs5Srqg7stlyenT+M42wsEJpGu4VD/Bf9/fnuHv1/P1iFdTMsZk/35MrtwM
X883EGGOjM3BxJkqLxZhCRyF122i5sJl/ecERhUHJIh94QlyF45isrMBYI8HGhHgp4bStkX5
QJUn+lXF8NnskMBUUPk8SfO5bVnWe9XJIlJlcDlcUUJUZqkd3EVueRab0HyR5o6qqMbfuowu
YNrRFiZrOAb4gANhXvJHqiKdyKhYLSZXL4lxkOPocpWkeWLTS5v8rfa5gamMO0/GasFy4tGz
Qv7WKpIw3RUcoGP+WbZh5YOsKf1pPnEN63qdO5bH302+5j4ItR7LlQZT34v5JwzhOjxEy/G8
Oe7pOawQN4vq/M/xBa+XuMOfjsgtHtklJkRUg2gYh36Bccejeqfs8HRhmwT1PGYTDxTLcDp1
lVSIxVJJ/LWfj5UkUHvolKWSKzpflH3G2gWnk2km48Tqc6l2o/3umDTGxtfzMzpTmkw4yAXL
Kee8QsspbUfd/h9UKw+iw8sr6hUNrAC1xHNWlAQ+Gae1CAeWBdmWybrUbNwqSrmo3mmyn1se
9TmQEDWbeJXCHYp/thMofk9VcJSxa0sgqHSL+iJ71uTubo87Zkj6ujfVgm1zl0YYwp5pVHoa
9D/kQUu/EoHmGFKI9as0Sup1gqFdeK9kpFqWGK1Ta034go/15oSntMEAQvRx4KKgovER3tCL
6kui9gAATY4eKYgVn0ePP46vTNaC4jO6Iyh3ffiimJO3pU8DSEGqgCm6XedJzL9DD9omLCnH
KLr8FAJzjiq0q6yKLElUYUziFkWQltWieadmx00SotyW1CsuT60kwFyowte5Ha98fT8q3/6+
CgvqfrAaFzU1phoB1mmcx3C0UvQiSOu7bOOL2HFNyX5eoQwmdsIMCVVWFJopMkuH1X9IJCNb
fkzmJ2wmFKTBlR2n+1n6WQ8BJ790D2Pafa+hjnzv185sk4r4d3oVHRJHxlCBNHPi2vfzfJ1t
ojoNU89jhRAky4IoyfDRtggjIsogSpjByNh8RgSNdIyoJuGO6LHeowqAtqNr29ojSVlQXZVo
966F1kgDntkVvjHIlaK8aCw7ni7noxJn29+ERaZHn+rMOiQ5EQ99Ti+1AY5LWJ34OWStDRgN
jMrQ5xhngZ58ZV5H6LvTOamsv4xul4dHIeLobKqkLBZ+oOasyvBROw44BHSqrlSECKumgsps
W8AuCGTkaxZHHfhbriXYSaWk9WphemSeIcHKEA6tIyjZVJAdGhYg33D1QcPMade+UAwHvm12
mdNIn41LWQ4X9nxgtDtACs80/m0Aaq3TVdGVKY1JknXSYMdJNh1VYxSlP1a06DiIXNPDQUeU
+sF6nznamyNiF0UcrriPXhZR9DVq8Ox3NB3LUYshZTdOJyBaKaJVrAaGyZYUYyoXLpPBRwOs
9pe813JHYFqzy5I168aYRtD/ff9eQQOjDeNHbdFIbjWdO2QlNcDSdqlVHUI1HxGAdO6cQz3T
wKkqT+ssp0nhY+oqib9Q3NAaKZM41XydESQPgqAquEQxQhcEf2+igLCGADPdUd8QEA0xwHUY
qsH0ejfQKljAaZxjGFtekZLpOYpaRYPqiiTtI47PID+LM4ZMwM7H+x3c7ZYl2miXSv8AlJUx
TEZAJMhoj/6fy3IIqRfoKQtjTHAYLKFGsOLTjg5haEV6b8Av0ak9KO7b0NVk1WEKBj6YybKU
ASoULccwZkU3RwIj3MaUFnxjkc/bTDXUFwCMPSCcOMWsozU7L1lhkMimxBe/2Jic4SXFgB8r
2Ao4itKPZVrVO+6CJTHkwi0qCCpqh7+tsmXpKgFuJUwBLbeYDpb6bm+pzVgTBYESZDBTiX9f
qwJAD8VUl3EBW6QOY15bytH6yRcfzu8lyP0ZJ7STMvEmjPZcf+oNLrC9GiafoPewOMQYGDqe
RjCGWT6MtRA8PP6gDrdLuHwE60hdwQKEAREMYVJainVcVtmqYIWklmYQM7FFZIu/cLSGWcxa
IybZU3mhuR7ens6jb8AgBvxB+E9rt2ME3RlMUwUS70t0iQlgjoGQ02wTK9bj0j97HSch3G96
8F1UbOhaauXI5ifcdtU+CUDPrUwKCpxbv6r41SbxMPVh5HFPfuvtCnb6gvajAYlvI9wtSpdN
YmZqVdnmyVvFK39TxYFWSv6v3XX95WA4OV07cOWWAazvyypK1W1WYEAaURv7sZHgrjWbm+av
5bJ0lK3cQpr1Zg3gX4AnR52dQtdKj8fAP8i5WcYqyUqQwf3ini1vnjVJguF1UWOLNtEy4YH5
w74qlhYSJt52yFzArlMXmIToUb36C1iWDsa6XeEYBFxhARKCQbUSPHnbvvPHhqRNvmYsnU7l
dlRki3XIdWBGz1zHjPxaVqEZSxDDfvc94mLBM/Skk/9NCdrvd6LNcx/Skhs/qCP49O/19vRp
0HYwzIqkk2Ash/fwPHsHkeJLVtxpm7tFaicz/qZHvPitKBglRGeMFOn++aKRuzVvriFSMJqC
asuuiRPIiEc5QoYqAumMW8wtEZ4BcDsNN9q3tok3t2HORU4DEs6fFg5SdEMUebb6+lDy1H/i
aCgN6h4P5XZT5IH+u17BDiCj2EDNeuQgytc8ywjipVIV/pYCA6cKE1gfxSE4vMoo2BbtACsM
DKm+RD5G2sFjiFc0CKptHkB1ZvyAGVPkQCLpoQajrg6PWphcJF56h/C/6N97KzDIQt90Jvrm
43Ke8zO1SejiTAjHOF7Ps9lk/rv9iaKh+UgIQu54qhbsMNOxErlBxRnMOBWi2YQ3UtGIuKWk
kUwMXZxNzF2csXaAGon9TnF+lWhE3AuYRuKaOu8ZP4u6S2uYuQEzV23cVdzkw6GYUw8PFeOa
mpxNtU+LywyXWj0z9sR2Pu4K0NhqvSKcIt+UzYMdvQctgn8wpxScxE3xE1PVnJ8TxQ+Waovg
nbmVr/y424YA1woJ55CDBHdZPKsLdSQFbKt3OfUDFDF9PhlXSxFEGFD8A5JNFW0N6To6oiLz
q/ijxu6LONGe9TSSlR8lVAPfwYsouhuC4wCTUoXct8ebbcxJdcrYKAnRW0y1Le5iGhUTEdtq
qeyVMGGTq21i3Bx90QZQbzBiURJ/FYZmXcxTemlTdG3Sl/Hw+HZBq4NBYFY87+jF9x6VHZ+3
mMKqVR60IqPMbA5TiGQYJZJeiYstoMK2uv6iJ/VoDYb5TADX4RpuTVEhPojeulGYiKt7DPFZ
ivfQqojV5IYtCVNxi1IuzPi4s/aLMNpAj7Yi9Gd+L6SXQI/ePSDj2kBrv0BQYJ6MdZTkVIPJ
ojHU7/rPT39c/z6e/ni7Hi6Yn/b3H4fn18OlO6zbiMf9EFDHvqRM//yEbmBP5/89/fbz4eXh
t+fzw9Pr8fTb9eHbATp4fPrteLodvuOcf5JL4O5wOR2eRz8eLk8HYavTLwWSLWF0PB3RZeD4
70Pjk9ZKLoHQHqBaqt75aBb5f5Udy5LbOO6+X+HjHnZSsdPJ9G5VDrREW4r1aj3a7r6oHMfT
cSX9qLa9m/z9AqAk8wEqmcNUpgGY4gMEAQIg4rp/tVizXDkqLNCju6hirEyF3vVMVeTT/EED
CpaEexPZR+qtAUR0+MYVLrH2kDR7JatI0WFiPjl9ud7n56hH+6d4SP219+HF5IddkvdOi+D1
58vpebLD0trPrxPFHNpaEDGMaSmM9G8dPHPhUoQs0CWtVgHVO/Yi3J9ExuO/GtAlLfW79guM
JXSN5L7j3p6sioIFuk2goe2SgiwXS2bsHdxQMjqU/bA8+8PBcqQnqp3ml4vp7DptEgeRNQkP
dLte0L9MB+kfzi7tp6KpI5kFzC/taofqyvb8+fth98e3/c/Jjlj14XX78vWn7tPvl7Di0ng6
ZBgxH5RB6DEOe3wZVnz4SD/YpryVs/fvp/92Oi7Op68Y+7rbnvZfJvKJeo/hxv87nL5OxPH4
vDsQKtyets6GC4LUXTYGFkRwcorZ2yJP7rpcFHvXLeNqqifp9PtL3ujFD4chRwKk020vHuaU
AoznxtHt45xbxWDBlZbpkbXL7AHDoVJ/2a6DJeWa+Vy+4ANFBjadc4pbh90wnwYtYV0Kdwtn
kX+O8VXqunFXB+9ph6mMtsevvplM9TO3l2ip4OZ3Y43Ixt/CzxxmDA8P++PJ/W4ZvJu5Xyaw
A91sOsFrf3GeiJWcjS6DImFvgIZP1tO3YbxwuZ4V9961SMMrBvae6XYaA69T9NYIh5RpyG0e
BOsZoxfw7P0HDvxu5lJXkZhyQK4JAL+fcucBINg8wQ6bvnObQqfqPF8yjdXLkn9ircOvC9UJ
JX2p+KLLzEJWTNMAbT2xOT1F1sxjz4VYR1EGnPE88Fi+XsQMr/QI53qz5z2RSjDwBINA08T3
o6rmuArhfNhwfxLJ0TEu6N8xilUk7sXIAVuJpBIMu/VHBcdEUo41KMvCqFgyMNcVx0Ny5Biu
1zm7RB38MtmKw54fXzBlwLQO+mkkn5J7StznDuz6ypVmyb0rJ8gn40DRk9L3qNw+fXl+nGTn
x8/71/5lDK57WOWlDQpO/wzL+bKvcsBgIu4sUBhe/BIu4O+pLxROk59iNHkkBhYXd0yzqGi2
oN2PXKFbhL3G/lvEpScqxKZDq8E/Muwblp2xzZnvh8+vWzCfXp/Pp8MTc+JitrmQ7ulPcBAz
hlPigvrlOYZEaqP1EdHM1F6IxqaAqFj90qXDsN5HBt4fk6Acx/fy43SMZLy/Pdkve2wppOP9
Hk47u6mIL1suqrs0lXg3Q7c5WD3UDU3Blwj+Ir37SEXCjoeHJ5VUsfu6330Da1m3HpTXEVcW
K1BVw40TH0zyG213SU0+BkziTIqypagF05EsKDaMmbB5DEc2VmfRxF0fbw+neRYUd+2ipHBt
3ZjUSRKZebCZrNumjs3k/CAvQ1YtKso4pSrfc6NYjLpQE4nbPNa0ifPUVKgDsG9A/Big6QeT
wlUHgzaum9b8lamnwp/mLaWJSeJAzu/4RzANEv6quyMR5VrUXESQwsNiWZ9mY2wCFDJ61zUv
GewMVzMPNC10UMWH6c/CPDUH36H4aAeEYgSuDceIEZSn5tF6r0SMBdUjNUwo1zIfseEL1UBq
tn98eAaBOfrNfWvFnCpIu7nmvCkdkhISCu5nsWAXs8OKMmV+A9A6gg3D8lRHUxVw6Pgbngef
7DFZJUsug2+X93HBIuaAmLGYzT0LNnQkDd5pRNZO16+2e8Gll2CGPyiOpKYnkvU4D1FVeRCD
CLmVMFulUf1MVCg+9HwLBaJ6ZoZYQXiYalo8/GGG6Gag5hIUfkc35nbQGuJEGJZt3X64UhtZ
awtmIBEUDBOR4nTBVmurvBWSB9QXZX7v/9qev58wB/J0eDg/n4+TR3W/u33dbyf4Qtl/NBUF
fozHNbpB0I2FwXPTt5pI6fEVWq9YR5JVSHQqraWfvoZi/vrbJGITYpBEJPEyS3FWrjV3EyIw
N8oT5FstE8U2mqArGrCX9XUNb7RjJUswJEMjT+7bWhh5UXF5g9oKFwGUFrEREgd/LEI9MjYO
KbsATsy7iz5Frpyey2/DKnd5fylrjKvLF6HOvIs8q7XAHR16/UM/7wiEngyYYyOSntwOoSzM
8pvonMqWg7BnNRVHAbG7HOelVPNs+mx6BYmgL6+Hp9M3lUD8uD8+uE49ivZetV1UoRY6S2AM
X+Hvq1VAWZvkywRUm2S4fP/TS3HTxLL+eDWspaoy6LZwdekFlSPsuhLKRHhKOt5lIo3HApgM
Cu9btXfpPAf9oZVlCeRGdRb8GfwHOtw8r4y3hL0zPFjAh+/7P06Hx07DPBLpTsFf3fVQ3+pM
IgeG0eVNIA3Xs4atiiTm7x40onAtygWvIS1DUOmDMi5qTiLJjHwSaYO3KpHUC7Iv4ECQlC3w
cfb26tpk9QIOCEyw89RJL8FCpIaBigtmBjRWJInh5BG6e0MNqYL9hs7tNK5SUevnlY2h7rV5
lty5s7fIMUtu0WTqJyQM23cz7iacDpq1gA2vBl3klE5R2ZPRwe3+qi+p8DatHG5vn/wuv/xD
L2nW7f1w//n88IDOxPjpeHo94xtuegaTWMYU8U6FMV3g4MhU6/zx7Y8pRwVGSKwbCi4OXRMN
JuZiBVFz8JUzHX1AoFpae1lUDCURpJiUNMLbQ0voKub4SJB2Aou3AjbX1Q4d3t5ssAJPsTIE
NmLYTzfzyo4+sWrIja6NORcqjNSeIYyd74V851QeGtPEOIpSuanxvW0zEUm1gng6qTmbEH+b
rzOdWQkGLFzlmcp30sxcHQOzDRZV5qsobBF7fe+qk2UeCkwass5EfeORkkjE6407yjWn3QyW
bI1Rm8ZQCNIX8BvpmMpRYd/KSpq5Cni1OKpbUtB8E9jrbld7DNNmJ9goYqExq/RWIHfDDiWz
0BbD1hTdpm2xrGkzO9+/TUfGe/nhr9cB86kawWzeDjHyGVU6i6IpRqg6MYlKP7cC2v4VlXAD
TAiqXY6ZWAxeV2xMXIx6MhoQVo4AtcFuc2dH2r2vIqvacGdQAP0kf345/muCLySfX5Scj7ZP
D2aJNywZjqEmec6O3sBjjmQjjULQcUCqXd5o9aExdrwp9LopPXfli9pFGtoYmX46IX2Du/Py
Eg+91GYKP9ZG+CZBLSpuT6xv4MyFQzw0/V4oKrrxsMszPs8q3g2O2S9nPFsZsar2mxMpTmAm
L64P3WGaNDc3rslKysKSrR3Dl1KmhRtKgQPQDpJ/Hl8OT+jeh7E9nk/7H3v4n/1p9+bNG716
PSa6UrtLsjncNISixJLpXWYruw+pDRzumOwGa76p5cbjHes2Q1ej1iv0uiYYyb5WOBC4+RrD
4sa6sq6kR9dUBDQe32moSESdo8FQJbBIbm+6yVJeE66SvD5xsIswL7q1LzUvQxq1A//GohtW
Z10Ks1Qlqb8YAddk6C8EvlbXjiMTtVIHn0d8fVOqzZftaTtBnWaH9+iG9Opmy0ntNNndxpss
w2wQynuOQedmW6UDO2tJlQBTD1869D2zODoOsx8BWF4yq2P1Cq5yJgYNJzN86w3kVEXU0W8M
Cv3XXqJSLlqqauPTlZAIz0wymYYTYDa1vlUKtooj4uSNniHTvwtmjNicIJDQyrYpL1ZNvw0E
6KXBXZ1zj17Q+T1YXtSl0tKlBuyyFEXE0/Qm/qLnez+yXcd1hPdEts7WoVN6/wAI0ItikWDC
ME0pUpKJZ0Q2i8AjZBfOXF8OE4HlZytnk70ejrv/GgymX/TU++MJBQKeZgHWt90+7PWtt2oy
PhC92zt4y0FPln5SZrJ2ibagofup9XFlssYi9ywdO1plYg6fHdMvV0F+6yhsoIgBWM1/a97x
Iz3HzbCY6PTCrYKr07nuL9y5CmteCCrtAn2KFSynnySNM7ym4CvPE4X39/NeUtMpMLLr5xj1
M4LHq/EqT3KsIe+lohsJUL/a8cbwthmEh88Oo6PxwxXrqaPRRnKDhtXIdKgLUBXlzh2cPVUV
mLENBF8Bos75MoZEQDeG/PPohJ/HdTq2WoAHZk74BGqiaBr7DSoduyEniB+PDzQsrEchTIoS
/YOOAWbNsi+ug7BxyAcnKJ5ejTA8jN6yNUz8beqoTtbkYOyHnQZhfaMYWx505Ud4dwyihRci
Mdi+0M92DudKlIqS0yiprUVcpqD4SIeJ1MsPI4Pw3zd3zEkJG94cUCUYZBoI4Ec/h1PMQOxu
Ifil1ywGnFddHD0dnOQD5Sv4P1Cw85i9FAIA

--C7zPtVaVf+AK4Oqc--
