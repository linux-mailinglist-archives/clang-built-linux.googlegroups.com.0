Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKNI43WQKGQEGKOQ3XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id A401DE9C92
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 14:46:18 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id x77sf2087244qka.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 06:46:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572443177; cv=pass;
        d=google.com; s=arc-20160816;
        b=P4RocUeAJXAqWHTS3BO16OzusOThgLL0P6FRhOr7p9Aa9mx2UsPXMrTHeAGVizSEvf
         is5uoy13MyQmpJQx+HsH6iM9LafRbJXkMMNCAP5gBuIg3/fwAj+EZVpiH9Cke4eQK8Mo
         MYmKseJKB8LbJP1n8XpDbxXfxslZF7lLyLgAVsIwMng3qc+bRBGEr4zHQm6ilEJOwpTA
         GfJasnWAseBRNR91vKt1ZfFRX1uGEBrOR9TlM2mIMQda+LMeLADX7O2mrVvGGKv6fnAs
         qW/bj7rkUwE4TY25JLP/L1CzNeeT9STW9tAmh0kEjU19QATkOaBOS7PyNF+b4WQtoma8
         ewbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=WReSVPSDFB4KNWNVMTZqBCnhwlpvHK6D2mN3V1UKttI=;
        b=Oapn281LdwIj9GJePwwpWPStHvI8GXnWHa71AZrJb8xdr0tQskRkDz45iyPniHLhr3
         UpWBbvjbmuVq6T5HcST9mBYI9b+cavkcLDpSX+9rHE4OMOUizVvIGhmkA/hTlQ3/6eA7
         HiFR1vHyk95IQGM7wu8PzCNym6yWzLuwCLRQv31xRmOS0kKE5GfFTefIkHMY6A9ANnAp
         kveyK/CJWF6+8oae2QXorJVQAB2tlgRA9UHzpnF7jUmt5dNRFrc6eigEUx/xEaMtyId5
         F1w66ERJd/BYmdsw5p2azpA/vMjk9EyYop8abjv46Zq0nlapRpPlS5T/g4ADppV/SsE8
         ghKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WReSVPSDFB4KNWNVMTZqBCnhwlpvHK6D2mN3V1UKttI=;
        b=cu3MyEnycA5B96joYMkWSU0FG0QVLeyBXa18oIJ4cz7MoKULHDYAVbAeVl1ZCqqk7U
         JVi3MofDJ+5lUHj/U6bQJYM4WsHVr11EbuAZPxwk48NWAs0ritFUh9H+zWomoeLLthO3
         TUIGpPHrVZeI6fF3OHESCJwMPqrIXMg30l+8S9pRoCw+3wH44zCixXwzpuLhVAup9pIA
         GqEwtvroEPXavKb8fkltby+zoFUDm6BFFPJHT1rY4w95neb/SdY8ozazr0zfJwPgFUN/
         YImUeEK3bnv1nOQbFCL13MlKy924Qtgez9Ij7bc4apX3Rf5UmUn7QjZWdJ2NW2Gn2iyH
         3gcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WReSVPSDFB4KNWNVMTZqBCnhwlpvHK6D2mN3V1UKttI=;
        b=QOi8pg/LRv7GV7yo/mjc1SPZw6aUws5A6ayunwc+gymTM/EZDrGSteUMUnKu8a3YGC
         7uD/2u3SPSf1Q9l8R3QaexqqLX+PhLdflSkqP0qQoKJSXdeVrzp5FoUaEn69dIcnYCqn
         DADocxTZ8j4NctYVdT0EkVeFVmzrSO2XeMjUrgIVI0WdnagizIlfwuIHxWJfTCqzBgYY
         gjq6aGIDt05TbzAdC0ibqmoLs1Znaz2QTCXX4lElLH4sTxCYjTc4zn28ahybe1FFJ1R+
         lo5Jfmaxs9jcy5VHNEVD3cDKKCENWigZmrl08bSIpTj1x/867bQPFZTFj6e7J6okSaD6
         gz2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVM9vqe5JRy50dPXQzzPtN8+k3jQZXnK1VTM8JWPcLv1rz9YMgH
	cAm0oD5UBbQ5HRGSccXWoek=
X-Google-Smtp-Source: APXvYqwuSCeuujj2u50rI4yC5WeK3mcueVYHUPnLdEabzKks6cy3UAoEYJ2kEwspirzU8j8N/fRjDw==
X-Received: by 2002:a37:a387:: with SMTP id m129mr27566360qke.70.1572443177098;
        Wed, 30 Oct 2019 06:46:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2fc8:: with SMTP id m8ls336052qta.9.gmail; Wed, 30 Oct
 2019 06:46:16 -0700 (PDT)
X-Received: by 2002:ac8:38a9:: with SMTP id f38mr102177qtc.108.1572443176567;
        Wed, 30 Oct 2019 06:46:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572443176; cv=none;
        d=google.com; s=arc-20160816;
        b=CNImBam9Qu7UmAjcGqBuaH7d6X7EzOWkBc1/VkOQ0nQe8lC+pZ3/LkYJ7i2O+Kt5n0
         HU5kXXqxXtA0rjEcK6bgaT+BruIW3dvuXRFgIQ09d9utBEbWoKFMFveC7f9n9+QYWEXV
         cCMoQ9zrmxxnqtejpOuj+LZrxXRT1GAZreS2od7o/JBswKT2+PnmjeE3IYGfpT3pG5nt
         PYmYWlTIceFF7WDNgWlx26KLJ4P2CriD64ROaeC5g2NnA8uMKimmkcgCt4KhhBkYvONl
         Ve5V03yfHy/YpKnPGOal0Ayut0Q728R+rE+M/jeqSwlJiR2h3V4MCEfbPmsmkFXb5RxZ
         nqOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=inpyOUGZnMZ207l+oETVWkzGsIgR1RwZe/ClxyaFiFw=;
        b=a630bbvjac9Fu9oPE3TESw5hMI3qXbzbrTzZoRsygqXyUi2KGfAC1GhkGkaLRl6ES8
         xjH4iBpUIT/KVdrRA8cGC8wQ2F92P7d2piQWpMO7N7VRRbj5JcQ/l84wxHG2+ZAoHvml
         g7Jp6cHhh0b7SxBwrdQxVi1aHiKGoJbkESW0BsChklEakIGDd6wRbbvF3eMnuq/Xh0x5
         2FU1JZAhy5rNOm82B3FObcfPEu/KNR20p2sq5VELDoRwSSDj+Nm6yOuo7l8LCYqaD1pu
         bvROode15XPv+cxXUxrYINR1rqIY7Xwb1s8Gmz/26r1rH7Bs2d8uwyFUHqMSJyplZeDV
         4r7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id u200si108781qka.2.2019.10.30.06.46.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 06:46:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 06:46:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,247,1569308400"; 
   d="scan'208";a="211325228"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 30 Oct 2019 06:46:10 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iPoIb-0001Al-FV; Wed, 30 Oct 2019 21:46:09 +0800
Date: Wed, 30 Oct 2019 21:45:04 +0800
From: kbuild test robot <lkp@intel.com>
To: Joe Perches <joe@perches.com>
Cc: kbuild-all@lists.01.org, Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
Message-ID: <201910302156.ztNhOS2z%lkp@intel.com>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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

Hi Joe,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.4-rc5 next-20191029]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Joe-Perches/compiler-h-Add-__-prefix-and-suffix-to-all-__attribute__-defines/20191030-054036
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 23fdb198ae81f47a574296dab5167c5e136a02ba
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/hda_codec.c:111:49: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_codec.c:111:49: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_codec.c:111:49: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:141:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:141:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:141:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:421:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:421:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:421:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:719:37: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:719:37: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:719:37: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:726:32: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:726:32: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:726:32: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:874:41: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:874:41: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:874:41: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:960:67: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:960:67: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:960:67: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_codec.c:1404:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/hda/hda_codec.c:1589:20: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:1808:48: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:1839:47: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:1839:47: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:1839:47: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_codec.c:2016:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:2097:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/hda_codec.c:2174:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/hda_codec.c:2393:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:2400:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:2406:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:2413:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:2578:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:2660:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:2668:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:3338:37: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_codec.c:3471:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/hda_jack.c:254:55: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_jack.c:254:55: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_jack.c:254:55: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/hda_sysfs.c:156:38: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_sysfs.c:156:38: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_sysfs.c:156:38: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_sysfs.c:585:45: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_sysfs.c:585:45: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_sysfs.c:585:45: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/sound/hda_register.h:319:16: sparse: sparse: cast from restricted __le32
>> sound/pci/hda/hda_controller.c:567:33: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/hda/hda_controller.c:567:33: sparse: sparse: cast from restricted snd_pcm_format_t
>> sound/pci/hda/hda_controller.c:745:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_controller.c:745:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_controller.c:745:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_controller.c:1351:69: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_controller.c:1351:69: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_controller.c:1351:69: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/hda_proc.c:816:54: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_proc.c:816:54: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_proc.c:816:54: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/hda_beep.c:209:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_beep.c:209:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_beep.c:209:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/hda_generic.c:67:44: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_generic.c:67:44: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_generic.c:67:44: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_generic.c:69:50: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_generic.c:69:50: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_generic.c:69:50: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_generic.c:952:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:955:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:963:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:1974:47: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_generic.c:1974:47: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_generic.c:1974:47: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_generic.c:2271:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/hda/hda_generic.c:2313:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/hda_generic.c:2404:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:2516:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:2678:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:2846:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:2901:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/hda_generic.c:2992:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:3428:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:3485:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:3509:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:3990:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:4739:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/hda_generic.c:6115:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_generic.c:6115:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_generic.c:6115:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/hda/patch_realtek.c:314:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_realtek.c:314:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_realtek.c:314:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_realtek.c:1030:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_realtek.c:1031:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_realtek.c:1112:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_realtek.c:1112:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_realtek.c:1112:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_realtek.c:2762:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_realtek.c:2764:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/patch_cmedia.c:41:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_cmedia.c:41:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_cmedia.c:41:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_cmedia.c:70:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_cmedia.c:70:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_cmedia.c:70:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_cmedia.c:94:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/patch_analog.c:37:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_analog.c:38:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/hda/patch_analog.c:206:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_analog.c:206:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_analog.c:206:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_analog.c:497:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_analog.c:780:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/hda/patch_sigmatel.c:829:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:831:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:833:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:882:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:935:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:1079:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:1082:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:1085:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:1088:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:1091:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:1094:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_sigmatel.c:2962:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/hda/patch_sigmatel.c:4464:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_sigmatel.c:4464:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_sigmatel.c:4464:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/patch_si3054.c:120:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_si3054.c:121:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/hda/patch_si3054.c:176:20: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/hda/patch_si3054.c:176:20: sparse: sparse: cast from restricted snd_pcm_format_t
>> sound/pci/hda/patch_si3054.c:267:59: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_si3054.c:267:59: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_si3054.c:267:59: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/patch_cirrus.c:574:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_cirrus.c:574:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_cirrus.c:574:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_cirrus.c:937:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/hda/patch_cirrus.c:976:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/patch_ca0110.c:48:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_ca0110.c:48:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_ca0110.c:48:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/hda/patch_ca0132.c:2613:43: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/hda/patch_ca0132.c:2997:51: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_ca0132.c:2997:51: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_ca0132.c:2997:51: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_ca0132.c:3001:63: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_ca0132.c:3001:63: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_ca0132.c:3001:63: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_ca0132.c:5199:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_ca0132.c:5213:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_ca0132.c:5280:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_ca0132.c:5332:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_ca0132.c:5386:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_ca0132.c:5437:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_ca0132.c:5482:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_ca0132.c:5538:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_ca0132.c:5602:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_ca0132.c:5659:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/hda/patch_ca0132.c:6060:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6096:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6111:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6123:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6140:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6157:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6174:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6190:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6208:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6225:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6237:17: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6298:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6299:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6300:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6301:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6302:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6303:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6304:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6305:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6306:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6308:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6310:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6312:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6314:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6325:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6326:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6327:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6328:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6329:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6330:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6331:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6332:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6333:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6334:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6335:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6336:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_ca0132.c:6337:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/hda/patch_ca0132.c:6347:9: sparse: sparse: too many warnings
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/patch_conexant.c:52:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_conexant.c:53:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_conexant.c:500:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_conexant.c:507:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/hda/patch_conexant.c:980:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_conexant.c:980:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_conexant.c:980:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/hda/patch_via.c:104:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_via.c:104:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_via.c:104:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_via.c:244:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_via.c:254:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_via.c:255:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_via.c:485:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/hda/patch_via.c:584:25: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/hda/patch_via.c:584:25: sparse: sparse: cast from restricted snd_pcm_format_t
>> sound/pci/hda/patch_via.c:879:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/hda/patch_via.c:914:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_via.c:916:19: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/hda/patch_via.c:928:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/hda/patch_hdmi.c:328:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/hda/patch_hdmi.c:387:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/hda/patch_hdmi.c:2377:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_hdmi.c:2377:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_hdmi.c:2377:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_hdmi.c:3132:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_hdmi.c:3132:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/patch_hdmi.c:3132:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/patch_hdmi.c:3326:20: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/hda/patch_hdmi.c:3326:20: sparse: sparse: cast from restricted snd_pcm_format_t
>> sound/pci/hda/patch_hdmi.c:3326:20: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/hda/patch_hdmi.c:3326:20: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/hda/patch_hdmi.c:3347:38: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/hda/patch_hdmi.c:3347:38: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/hda/patch_hdmi.c:3347:38: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/hda/patch_hdmi.c:3347:38: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/hda/patch_hdmi.c:4025:37: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/hda/patch_hdmi.c:4025:37: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/hda/patch_hdmi.c:4025:37: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/hda/patch_hdmi.c:4025:37: sparse: sparse: cast from restricted snd_pcm_format_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/uapi/linux/byteorder/little_endian.h:50:17: sparse: sparse: cast from restricted __le64
   include/uapi/linux/byteorder/little_endian.h:66:17: sparse: sparse: cast from restricted __le16
   include/uapi/linux/byteorder/little_endian.h:66:17: sparse: sparse: cast from restricted __le16
>> sound/pci/hda/hda_eld.c:569:19: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/hda/hda_eld.c:569:19: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/hda/hda_eld.c:579:44: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/hda/hda_eld.c:579:44: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/hda/hda_eld.c:584:44: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/hda/hda_eld.c:584:44: sparse: sparse: cast from restricted snd_pcm_format_t
   include/linux/unaligned/access_ok.h:45:26: sparse: sparse: cast to restricted __le32
   include/linux/unaligned/access_ok.h:45:26: sparse: sparse: cast to restricted __le32
   include/linux/unaligned/access_ok.h:40:26: sparse: sparse: cast to restricted __le16
   include/linux/unaligned/access_ok.h:40:26: sparse: sparse: cast to restricted __le16
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/hda/hda_intel.c:815:23: sparse: sparse: cast from restricted __le32
>> sound/pci/hda/hda_intel.c:1071:42: sparse: sparse: cast to restricted pci_power_t
>> sound/pci/hda/hda_intel.c:1706:37: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_intel.c:1706:37: sparse: sparse: cast to restricted gfp_t
>> sound/pci/hda/hda_intel.c:1706:37: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_intel.c:2104:58: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_intel.c:2104:58: sparse: sparse: cast to restricted gfp_t
   sound/pci/hda/hda_intel.c:2104:58: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/ice1712/ice1712.c:269:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/ice1712.c:718:33: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/ice1712/ice1712.c:718:33: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:718:55: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:718:55: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:737:33: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:737:33: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:737:55: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:737:55: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:755:33: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:755:33: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:755:55: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:755:55: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:1122:33: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:1122:33: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:1141:33: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/ice1712/ice1712.c:1141:33: sparse: sparse: cast from restricted snd_pcm_format_t
>> sound/pci/ice1712/ice1712.c:1324:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/ice1712.c:1368:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1377:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1391:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1400:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1410:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1422:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1602:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/ice1712.c:1629:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/ice1712.c:1654:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1706:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1715:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1743:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1865:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1930:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1961:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:1992:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:2152:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:2160:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:2172:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/ice1712.c:2202:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1712.c:2212:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/ice1712.c:2235:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/ice1712.c:2524:37: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/ice1712.c:2524:37: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/ice1712.c:2524:37: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/delta.c:424:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/delta.c:717:61: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/delta.c:717:61: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/delta.c:717:61: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/delta.c:757:1: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/delta.c:759:1: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/delta.c:761:1: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/delta.c:763:1: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/delta.c:765:1: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/hoontech.c:163:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/hoontech.c:163:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/hoontech.c:163:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/hoontech.c:308:61: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/hoontech.c:308:61: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/hoontech.c:308:61: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/ews.c:439:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/ews.c:439:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/ews.c:439:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/ews.c:534:61: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/ews.c:534:61: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/ews.c:534:61: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/ews.c:602:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:610:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:709:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:718:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:796:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:797:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:798:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:799:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:800:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:933:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:939:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:941:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:942:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ews.c:943:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/ak4xxx.c:118:47: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/ak4xxx.c:118:47: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/ak4xxx.c:118:47: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/ice1712/ice1724.c:917:33: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/ice1712/ice1724.c:917:33: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/ice1712/ice1724.c:935:33: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/ice1712/ice1724.c:935:33: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/ice1712/ice1724.c:956:33: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/ice1712/ice1724.c:956:33: sparse: sparse: cast from restricted snd_pcm_format_t
>> sound/pci/ice1712/ice1724.c:1570:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/ice1724.c:1597:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/ice1724.c:1699:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1724.c:1732:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1724.c:1741:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1724.c:1777:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1724.c:1837:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/ice1724.c:1951:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1724.c:1982:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1724.c:2013:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1724.c:2130:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1724.c:2138:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/ice1724.c:2150:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/ice1724.c:2174:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/ice1724.c:2528:37: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/ice1724.c:2528:37: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/ice1724.c:2528:37: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/revo.c:150:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/revo.c:150:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/revo.c:150:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/revo.c:473:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/revo.c:473:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/revo.c:473:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/revo.c:518:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/revo.c:518:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/revo.c:518:64: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:629:47: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/aureon.c:349:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/aureon.c:735:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/aureon.c:785:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/aureon.c:838:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/aureon.c:935:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/aureon.c:1021:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/aureon.c:1179:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/aureon.c:1232:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/aureon.c:1250:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/aureon.c:1394:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1401:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1411:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1419:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1430:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1438:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1449:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1457:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1468:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1476:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1487:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1495:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1509:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1516:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1526:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1533:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1543:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1551:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1558:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1565:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1575:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1583:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1594:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1602:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1613:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1621:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1632:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1640:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1651:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1659:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1670:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1680:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1688:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1699:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1707:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1718:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1726:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1737:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1745:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1756:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1764:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1775:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1782:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1790:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1801:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1812:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1819:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1826:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1833:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1840:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/aureon.c:1847:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/aureon.c:2091:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/aureon.c:2091:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/aureon.c:2091:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/aureon.c:2106:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/aureon.c:2106:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/aureon.c:2106:56: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/pontis.c:102:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/pontis.c:157:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/pontis.c:442:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/pontis.c:534:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/pontis.c:544:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/pontis.c:554:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/pontis.c:562:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/pontis.c:570:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/pontis.c:577:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/pontis.c:584:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/pontis.c:745:56: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/pontis.c:745:56: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/pontis.c:745:56: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/prodigy192.c:135:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/prodigy192.c:227:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/prodigy192.c:351:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy192.c:360:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy192.c:371:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy192.c:379:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy192.c:390:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy192.c:399:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy192.c:410:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy192.c:583:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/prodigy192.c:724:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/prodigy192.c:724:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/prodigy192.c:724:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/prodigy_hifi.c:244:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/prodigy_hifi.c:289:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:353:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/prodigy_hifi.c:401:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/prodigy_hifi.c:452:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/prodigy_hifi.c:575:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/prodigy_hifi.c:746:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:756:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:766:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:777:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:788:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:799:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:810:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:820:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:828:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:836:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:843:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/prodigy_hifi.c:850:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/prodigy_hifi.c:1079:56: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/prodigy_hifi.c:1079:56: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/prodigy_hifi.c:1079:56: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/prodigy_hifi.c:1084:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/prodigy_hifi.c:1084:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/prodigy_hifi.c:1084:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/prodigy_hifi.c:1162:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/prodigy_hifi.c:1162:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/prodigy_hifi.c:1162:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/prodigy_hifi.c:1167:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/prodigy_hifi.c:1167:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/prodigy_hifi.c:1167:39: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/juli.c:348:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/juli.c:375:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/juli.c:383:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/juli.c:391:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/juli.c:417:21: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/juli.c:585:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/juli.c:585:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/juli.c:585:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/juli.c:619:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/juli.c:619:64: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/juli.c:619:64: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/phase.c:128:56: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/phase.c:128:56: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/phase.c:128:56: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/phase.c:321:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/phase.c:415:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/phase.c:415:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/phase.c:415:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/phase.c:421:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/phase.c:421:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/phase.c:421:56: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/phase.c:468:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/phase.c:524:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/phase.c:628:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/phase.c:750:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:757:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:767:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:775:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:786:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:794:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:805:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:813:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:824:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:832:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:843:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:851:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:865:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:872:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:882:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/phase.c:889:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/wtm.c:184:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wtm.c:319:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/wtm.c:482:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/wtm.c:493:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/wtm.c:501:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/wtm.c:510:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/wtm.c:518:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/wtm.c:530:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/wtm.c:538:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/wtm.c:584:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/wtm.c:584:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/wtm.c:584:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/se.c:423:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/se.c:588:22: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/se.c:663:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/se.c:663:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/se.c:663:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/quartet.c:725:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:733:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:741:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:748:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:749:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:750:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:751:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:752:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:753:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:754:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:755:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:756:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:757:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/quartet.c:775:21: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/quartet.c:991:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/quartet.c:991:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/quartet.c:991:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/quartet.c:1027:59: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/quartet.c:1027:59: sparse: sparse: cast to restricted gfp_t
   sound/pci/ice1712/quartet.c:1027:59: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:629:47: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/maya44.c:163:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/maya44.c:430:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/maya44.c:442:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/maya44.c:454:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/maya44.c:466:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/maya44.c:476:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/maya44.c:486:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/maya44.c:493:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/maya44.c:501:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/maya44.c:508:26: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/maya44.c:677:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/maya44.c:677:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/maya44.c:677:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/psc724.c:191:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/psc724.c:342:22: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/psc724.c:389:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/psc724.c:389:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/ice1712/psc724.c:389:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/wm8766.c:32:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:43:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:54:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:65:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:72:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:79:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:86:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:92:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:98:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:104:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:110:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:116:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:122:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:128:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:187:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/ice1712/wm8766.c:282:22: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/wm8766.c:294:14: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:299:14: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8766.c:306:14: sparse: sparse: cast to restricted snd_ctl_elem_type_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/ice1712/wm8776.c:42:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/ice1712/wm8776.c:135:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:146:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:155:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:161:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:173:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:180:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:189:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:195:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:201:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:207:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:216:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:222:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:233:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:242:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:248:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:254:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:260:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:266:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:272:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:281:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:290:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:300:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:311:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:321:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:331:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:340:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:351:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:362:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:372:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:382:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:394:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:401:25: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:461:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:556:22: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/ice1712/wm8776.c:568:14: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:573:14: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/ice1712/wm8776.c:580:14: sparse: sparse: cast to restricted snd_ctl_elem_type_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/korg1212/korg1212.c:1226:31: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/korg1212/korg1212.c:1226:31: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/korg1212/korg1212.c:1247:31: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/korg1212/korg1212.c:1247:31: sparse: sparse: cast from restricted snd_pcm_format_t
>> sound/pci/korg1212/korg1212.c:1718:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/korg1212/korg1212.c:1782:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/korg1212/korg1212.c:1908:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/korg1212/korg1212.c:2023:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/korg1212/korg1212.c:2023:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/korg1212/korg1212.c:2023:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2024:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2024:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2024:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:33: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:33: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:33: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:57: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:57: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:57: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:81: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:81: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2025:81: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:9: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:33: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:33: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:33: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:57: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:57: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:57: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:81: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:81: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2026:81: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2029:33: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/korg1212/korg1212.c:2037:33: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/korg1212/korg1212.c:2164:47: sparse: sparse: cast to restricted gfp_t
>> sound/pci/korg1212/korg1212.c:2164:47: sparse: sparse: cast to restricted gfp_t
>> sound/pci/korg1212/korg1212.c:2164:47: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
   sound/pci/lola/lola.c:92:42: sparse: sparse: cast to restricted __le32
   sound/pci/lola/lola.c:93:46: sparse: sparse: cast to restricted __le32
>> sound/pci/lola/lola.c:125:26: sparse: sparse: cast from restricted __le32
   sound/pci/lola/lola.c:126:23: sparse: sparse: cast from restricted __le32
>> sound/pci/lola/lola.c:572:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/lola/lola.c:572:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/lola/lola.c:572:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/lola/lola_pcm.c:193:34: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/lola/lola_pcm.c:193:34: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/lola/lola_pcm.c:194:34: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/lola/lola_pcm.c:194:34: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/lola/lola_pcm.c:195:34: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/lola/lola_pcm.c:195:34: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/lola/lola_pcm.c:196:34: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/lola/lola_pcm.c:196:34: sparse: sparse: cast from restricted snd_pcm_format_t
>> sound/pci/lola/lola_pcm.c:320:26: sparse: sparse: cast to restricted __le32
   sound/pci/lola/lola_pcm.c:321:26: sparse: sparse: cast to restricted __le32
   sound/pci/lola/lola_pcm.c:324:26: sparse: sparse: cast to restricted __le32
   sound/pci/lola/lola_pcm.c:329:37: sparse: sparse: cast to restricted __le32
   sound/pci/lola/lola_pcm.c:373:14: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/lola/lola_pcm.c:376:14: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/lola/lola_pcm.c:379:14: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/lola/lola_pcm.c:382:14: sparse: sparse: cast to restricted snd_pcm_format_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/lola/lola_mixer.c:505:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/lola/lola_mixer.c:571:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/lola/lola_mixer.c:602:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/lola/lola_mixer.c:637:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/lola/lola_mixer.c:664:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/lola/lola_mixer.c:718:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/lx6464es/lx6464es.c:77:30: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/lx6464es/lx6464es.c:77:30: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/lx6464es/lx6464es.c:78:30: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/lx6464es/lx6464es.c:78:30: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/lx6464es/lx6464es.c:79:30: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/lx6464es/lx6464es.c:79:30: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/lx6464es/lx6464es.c:80:30: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/lx6464es/lx6464es.c:80:30: sparse: sparse: cast from restricted snd_pcm_format_t
>> sound/pci/lx6464es/lx6464es.c:861:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/lx6464es/lx6464es.c:892:18: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
>> sound/pci/lx6464es/lx6464es.c:975:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/lx6464es/lx6464es.c:975:39: sparse: sparse: cast to restricted gfp_t
>> sound/pci/lx6464es/lx6464es.c:975:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
>> sound/pci/mixart/mixart.c:259:45: sparse: sparse: cast to restricted gfp_t
>> sound/pci/mixart/mixart.c:259:45: sparse: sparse: cast to restricted gfp_t
>> sound/pci/mixart/mixart.c:259:45: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
>> sound/pci/mixart/mixart.c:524:14: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:528:14: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:532:14: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:536:14: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:540:14: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:544:14: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:548:15: sparse: sparse: cast to restricted snd_pcm_format_t
   include/sound/pcm_params.h:313:17: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:671:31: sparse: sparse: cast to restricted snd_pcm_format_t
>> sound/pci/mixart/mixart.c:671:31: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:672:31: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:672:31: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:672:57: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:672:57: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:673:31: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:673:31: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:673:58: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:673:58: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:674:31: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:674:31: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:674:59: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:674:59: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:692:31: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:692:31: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:693:31: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:693:31: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:693:57: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:693:57: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:694:31: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:694:31: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:694:58: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:694:58: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:695:31: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:695:31: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:695:59: sparse: sparse: cast to restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:695:59: sparse: sparse: cast from restricted snd_pcm_format_t
   sound/pci/mixart/mixart.c:1042:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart.c:1042:39: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart.c:1042:39: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:690:38: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart.c:1191:23: sparse: sparse: cast from restricted __be32
>> sound/pci/mixart/mixart.c:1194:47: sparse: sparse: too many warnings
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
   sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_core.c:41:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:42:19: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:52:22: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:58:9: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:58:9: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:77:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:78:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:78:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:78:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:78:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:78:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:78:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:78:32: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_core.c:78:32: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_core.c:78:32: sparse: sparse: too many warnings
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/pci.h:165:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:168:34: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:171:40: sparse: sparse: cast to restricted pci_channel_state_t
   include/linux/pci.h:178:32: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:181:28: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:184:27: sparse: sparse: cast to restricted pcie_reset_state_t
   include/linux/pci.h:190:47: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:192:32: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:194:35: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:196:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:198:43: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:200:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:202:38: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:204:37: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:206:44: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:208:39: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:210:46: sparse: sparse: cast to restricted pci_dev_flags_t
   include/linux/pci.h:220:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:221:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:222:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:223:36: sparse: sparse: cast to restricted pci_bus_flags_t
   include/linux/pci.h:741:32: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:744:39: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:747:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:750:38: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:753:37: sparse: sparse: cast to restricted pci_ers_result_t
   include/linux/pci.h:756:41: sparse: sparse: cast to restricted pci_ers_result_t
   sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast to restricted __be32
>> sound/pci/mixart/mixart_hwdep.c:45:24: sparse: sparse: cast from restricted __be32
>> sound/pci/mixart/mixart_hwdep.c:103:31: sparse: sparse: cast from restricted __be16
>> sound/pci/mixart/mixart_hwdep.c:103:31: sparse: sparse: cast from restricted __be16
>> sound/pci/mixart/mixart_hwdep.c:103:31: sparse: sparse: cast from restricted __be16
>> sound/pci/mixart/mixart_hwdep.c:103:31: sparse: sparse: cast from restricted __be16
   sound/pci/mixart/mixart_hwdep.c:104:35: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:104:35: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:104:35: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:104:35: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:104:35: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:104:35: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:104:80: sparse: sparse: cast from restricted __be16
   sound/pci/mixart/mixart_hwdep.c:104:80: sparse: sparse: cast from restricted __be16
   sound/pci/mixart/mixart_hwdep.c:104:80: sparse: sparse: cast from restricted __be16
   sound/pci/mixart/mixart_hwdep.c:104:80: sparse: sparse: cast from restricted __be16
   sound/pci/mixart/mixart_hwdep.c:110:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:110:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:110:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:110:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:110:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:110:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:111:66: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:111:66: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:111:66: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:111:66: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:111:66: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:111:66: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:112:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:112:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:112:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:112:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:112:54: sparse: sparse: cast from restricted __be32
   sound/pci/mixart/mixart_hwdep.c:112:54: sparse: sparse: cast from restricted __be32
>> sound/pci/mixart/mixart_hwdep.c:137:49: sparse: sparse: cast to restricted gfp_t
>> sound/pci/mixart/mixart_hwdep.c:137:49: sparse: sparse: cast to restricted gfp_t
>> sound/pci/mixart/mixart_hwdep.c:137:49: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:329:13: sparse: sparse: cast to restricted gfp_t
   include/linux/slab.h:336:24: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart_hwdep.c:138:59: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart_hwdep.c:138:59: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart_hwdep.c:138:59: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart_hwdep.c:139:51: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart_hwdep.c:139:51: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart_hwdep.c:139:51: sparse: sparse: cast to restricted gfp_t
   sound/pci/mixart/mixart_hwdep.c:339:25: sparse: sparse: cast to restricted __be32
   sound/pci/mixart/mixart_hwdep.c:339:25: sparse: sparse: cast from restricted __be32
>> sound/pci/mixart/mixart_hwdep.c:339:25: sparse: sparse: too many warnings
--
   include/linux/mm_types.h:673:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:674:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:675:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:676:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:677:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:678:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:679:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:680:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:681:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:682:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:683:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:684:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:685:36: sparse: sparse: cast to restricted vm_fault_t
   include/linux/mm_types.h:686:36: sparse: sparse: cast to restricted vm_fault_t
>> sound/pci/mixart/mixart_mixer.c:332:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
>> sound/pci/mixart/mixart_mixer.c:395:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/mixart/mixart_mixer.c:439:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/mixart/mixart_mixer.c:811:23: sparse: sparse: cast to restricted snd_ctl_elem_type_t
   sound/pci/mixart/mixart_mixer.c:889:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/mixart/mixart_mixer.c:942:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/mixart/mixart_mixer.c:1015:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t
   sound/pci/mixart/mixart_mixer.c:1082:25: sparse: sparse: cast to restricted snd_ctl_elem_iface_t

vim +111 sound/pci/hda/hda_codec.c

a12d3e1e1cb67b Takashi Iwai 2011-04-07  105  
ee8e765b0b6c92 Takashi Iwai 2013-01-03  106  static int add_conn_list(struct hda_codec *codec, hda_nid_t nid, int len,
ee8e765b0b6c92 Takashi Iwai 2013-01-03  107  			 const hda_nid_t *list)
ee8e765b0b6c92 Takashi Iwai 2013-01-03  108  {
ee8e765b0b6c92 Takashi Iwai 2013-01-03  109  	struct hda_conn_list *p;
ee8e765b0b6c92 Takashi Iwai 2013-01-03  110  
a2d4560f0be9a4 Takashi Iwai 2019-05-31 @111  	p = kmalloc(struct_size(p, conns, len), GFP_KERNEL);
ee8e765b0b6c92 Takashi Iwai 2013-01-03  112  	if (!p)
ee8e765b0b6c92 Takashi Iwai 2013-01-03  113  		return -ENOMEM;
ee8e765b0b6c92 Takashi Iwai 2013-01-03  114  	p->len = len;
ee8e765b0b6c92 Takashi Iwai 2013-01-03  115  	p->nid = nid;
ee8e765b0b6c92 Takashi Iwai 2013-01-03  116  	memcpy(p->conns, list, len * sizeof(hda_nid_t));
ee8e765b0b6c92 Takashi Iwai 2013-01-03  117  	list_add(&p->list, &codec->conn_list);
ee8e765b0b6c92 Takashi Iwai 2013-01-03  118  	return 0;
ee8e765b0b6c92 Takashi Iwai 2013-01-03  119  }
ee8e765b0b6c92 Takashi Iwai 2013-01-03  120  

:::::: The code at line 111 was first introduced by commit
:::::: a2d4560f0be9a48cd342992fbec0688ea05d564b ALSA: hda: Use struct_size()

:::::: TO: Takashi Iwai <tiwai@suse.de>
:::::: CC: Takashi Iwai <tiwai@suse.de>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910302156.ztNhOS2z%25lkp%40intel.com.
