Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYGZRCAAMGQEIDIG7VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1FA2F89B5
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 01:01:38 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id l18sf17820489iok.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 16:01:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610755296; cv=pass;
        d=google.com; s=arc-20160816;
        b=o71lduUMCyFTIw8N1YkD0ZNXc5kApk5bzWQK8aPJQCME40Utf+8PKn6cin9wtw2ZAT
         dsi6Ab2jotrD4UnrBr0h6GJaPk1bE5n9rUhc6Kmk58iLThyQu3S+fM7Kb9kLmfHPzc7G
         lOHgq5ddaEFAwzC6q0IOKCzRpLl6d5dMdSGJgMNsLbFH8r00T/19iKMQFlRFrJwFNTWb
         WCkzEjb9DRf9YOiaNiAtXMY0dcxdMeydNJCFoPhR5scoiXYKHHExQq7rLRDsnG9gbf9f
         GGwL3MXqLFHw8xADCEk1UuUKnRJoICxgyzaAgdkjLLoGKF9g6Q/A4yarnxzAusxpza7T
         pKsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=KxrU8cumv0j1viypkZcIb2J8JogrrtSDrlvr0lsEsVo=;
        b=zVBKL4N9Dynr3xJxF66nJdwLWRxqck3YBIFwK4jv/MK7Kyx33Ef6BTjdfaGCQ3NzKh
         9YU36BmUv+RYdJyhnU6hRtOshkMpRM2BKbweQDuiZVVF0jywMotoLvEgYWl1hnKN4TMX
         Giq+M4SWLAZ5XHOKjoqvzciUxz1LeJ6WWOt+0jtJGkEGkf3U3avTR3TJWpEqAKidgcys
         jMRKE7CABqA6XOog6WiesLlSkj6Med9nfEB6w8lkSJ6vpVxTqquLkU6CX0JPk9mWZe04
         fR8kNhEBPf+Dkyg3pxZH2XduwrVyCo6nNA0d8CYKuOcTmcYJRhNbwxpWlOEr1thgS0GV
         T26w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KxrU8cumv0j1viypkZcIb2J8JogrrtSDrlvr0lsEsVo=;
        b=kqQRKD1GRj7ympUHbGPcL9toS+6EcVQ2Ax+4IPgGUMmVzlWJ9bMH0x/2wyp3NxLDzf
         zgND/7BYlWWSqQr4TLVsI80oPDr7Ulpos/S+WYgkDgB6GLV2tixMHt/3EjEPzRnqWUuS
         cVOO81bkc2mho9p6uBanwKz/WbB0hW3JZM5EzzzhAtFddodrz2ZAu0UnM4tgJvGDpUxx
         cuVOAFdu4HfG8hO0Uhmiz/jJ/DDitTr6F82+qL5YUFUZrzPl+e+ulqmy41nC1SytHPhl
         xx//Ay7f9yRCQNK7hXNz0NqCwz/9opD5dhXynGvBUg22caMA1EoHQHQf4GSstlAe70ny
         y5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KxrU8cumv0j1viypkZcIb2J8JogrrtSDrlvr0lsEsVo=;
        b=ndUhubFm1f+fe39jABqerid1CL206XSZZnoRroH6DolwcI9OpuR6z+q3injiIfk7Bi
         SGpCGpNr7fdcrcwDdygj9Qa/q10D03wyy2Bxpvp301VwpbX9IGBD54LR+PUIkxwagj1h
         eo3fCTU2AeGQckpuK7sFqXH4ph9kKMF1vUnwYXWwtLnRiVaLYNJ7BKXiyQ4pdk/5DZF2
         AjVef46LBJsfBbyoJ8HnxBz2gixTZcR3BW3GnsvQmWcKAfd5YwZgGVpi0yrNJMDs3A/Z
         HuhxTsIkqzA9FUWPaGk1gA3OGIhT9SBVe4H9qNhEe7AYfXMDg8L9FC50eLGG4PkRmXsx
         uVHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532q8kKcSBWSTSothYjKOgaI/Ec1Hi2TEUqf4Tckeeh623xekYI3
	vJISWlVwRVDL4Q/bEKMW23s=
X-Google-Smtp-Source: ABdhPJwCrKOrzp1JEFjkCtahL2SZ4X3OgP883mgXm4JUJPswp/SW6R1mv/cX/cduRfW7COQ3iFztPQ==
X-Received: by 2002:a02:211f:: with SMTP id e31mr12488017jaa.46.1610755296119;
        Fri, 15 Jan 2021 16:01:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:d81:: with SMTP id l1ls1332122jaj.2.gmail; Fri, 15
 Jan 2021 16:01:35 -0800 (PST)
X-Received: by 2002:a05:6638:69b:: with SMTP id i27mr12403626jab.143.1610755295542;
        Fri, 15 Jan 2021 16:01:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610755295; cv=none;
        d=google.com; s=arc-20160816;
        b=GaDY+dRq56grcBJk0YubaMwBKIUW7Qj6237dB9OlsOyhWy0tv9ihl037FVqrmr0ERj
         FOE1BAoT4x7YDv4gfokv9YrZRSdHSA3c3pE6TuTGozprEK9IXRDYFnuIuKDPCE32JLfe
         46a3FRX5IARrO85/BWnZMGus+q6J/wQV8IVxtn9KrIhKUL/vs1xz7raFgUxGTh2/Rn4+
         hSpXyJvCb2FOIbF1u5KNYxgbUlbWTDVWoMYNqN+JIwrq55Nb0stNYPGKL6kiBfFrh3ot
         rQhAlyeoGLiwO9x66bAf1pKQTNVkaCEsZJHkFBQ2oXTBesI7QNiBWXrZm22I40wxTwNi
         uJRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Cfk02GMJwOPGp3Eb6+JI0ayw37OT6VOuQYQROZ+kdCY=;
        b=dCJg3OSkvMKZQipuTCdE0k6E++JK9Gz54cFQUHrwG6Bc3pwG5WtgoHvQHlz1GNl2m6
         +AytiEYvVw2tWSBzTHHTAKu8HS1CZIdP5fQt13P9HUrtQ7ltx8h93NWRVz/27Mi6/EFp
         wrCxUCDq14yOIYF5bQa0FglGvrI2ygRCLaZJuUJvwn1GrnaZbeHD6fOJ4Hf9U+1WYYSF
         EzttGK/r8UauAp1ON0JA0XkJZ7rMrcCKz6VAMvca5xnONxLdRY51B5V+0/v3vRhtJLUp
         C6l1ayJNmIbaLUQ5FyDhim04VFkddbf7Stzbd1gaHs7vaJmRI8KZ7OJ9zVDgRVbjUPUV
         NxRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id e26si716037ios.2.2021.01.15.16.01.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 16:01:35 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: mnlJAnzq+g/3lP7Il9UmP/iFOKPiG2LSepkgzXAsEMSIW5H2idJaVxriMlbskyg8VfVFBDwQdd
 Pun+41uWxwlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9865"; a="178711580"
X-IronPort-AV: E=Sophos;i="5.79,350,1602572400"; 
   d="gz'50?scan'50,208,50";a="178711580"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 16:01:34 -0800
IronPort-SDR: /XDZE/tVYu/8ks2FwPu/SKeuMb4A4rYbH/erNPjjcTsNJjyjZf5oQol4tiaxmEua+Lmn2Bb07P
 eNcA7a6O99fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,350,1602572400"; 
   d="gz'50?scan'50,208,50";a="382843201"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 15 Jan 2021 16:01:32 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l0Z23-0000ao-DF; Sat, 16 Jan 2021 00:01:31 +0000
Date: Sat, 16 Jan 2021 08:00:41 +0800
From: kernel test robot <lkp@intel.com>
To: Johannes Berg <johannes.berg@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-wireless@vger.kernel.org
Subject: [mac80211-next:rtnl 3/4]
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c:2444:14: error:
 incompatible pointer types passing 'struct wiphy to parameter of type
 'struct wiphy remove &
Message-ID: <202101160830.WVuoo34k-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="opJtzjQTFsWo+cga"
Content-Disposition: inline
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


--opJtzjQTFsWo+cga
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jberg/mac80211-next.git rtnl
head:   24431371abdbc37e228fb7041e3b6e0d7e9be359
commit: fd7ee4407f4ffbf7c318f8d87cce7f4a151cbe13 [3/4] rtnl-fixes
config: arm-randconfig-r033-20210115 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5b42fd8dd4e7e29125a09a41a33af7c9cb57d144)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/jberg/mac80211-next.git/commit/?id=fd7ee4407f4ffbf7c318f8d87cce7f4a151cbe13
        git remote add mac80211-next https://git.kernel.org/pub/scm/linux/kernel/git/jberg/mac80211-next.git
        git fetch --no-tags mac80211-next rtnl
        git checkout fd7ee4407f4ffbf7c318f8d87cce7f4a151cbe13
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c:2444:14: error: incompatible pointer types passing 'struct wiphy **' to parameter of type 'struct wiphy *'; remove & [-Werror,-Wincompatible-pointer-types]
                   wiphy_lock(&cfg->wiphy);
                              ^~~~~~~~~~~
   include/net/cfg80211.h:5259:45: note: passing argument to parameter 'wiphy' here
   static inline void wiphy_lock(struct wiphy *wiphy)
                                               ^
   drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c:2446:16: error: incompatible pointer types passing 'struct wiphy **' to parameter of type 'struct wiphy *'; remove & [-Werror,-Wincompatible-pointer-types]
                   wiphy_unlock(&cfg->wiphy);
                                ^~~~~~~~~~~
   include/net/cfg80211.h:5268:47: note: passing argument to parameter 'wiphy' here
   static inline void wiphy_unlock(struct wiphy *wiphy)
                                                 ^
   2 errors generated.


vim +2444 drivers/net/wireless/broadcom/brcm80211/brcmfmac/p2p.c

  2432	
  2433	void brcmf_p2p_ifp_removed(struct brcmf_if *ifp, bool locked)
  2434	{
  2435		struct brcmf_cfg80211_info *cfg;
  2436		struct brcmf_cfg80211_vif *vif;
  2437	
  2438		brcmf_dbg(INFO, "P2P: device interface removed\n");
  2439		vif = ifp->vif;
  2440		cfg = wdev_to_cfg(&vif->wdev);
  2441		cfg->p2p.bss_idx[P2PAPI_BSSCFG_DEVICE].vif = NULL;
  2442		if (locked) {
  2443			rtnl_lock();
> 2444			wiphy_lock(&cfg->wiphy);
  2445			cfg80211_unregister_wdev(&vif->wdev);
  2446			wiphy_unlock(&cfg->wiphy);
  2447			rtnl_unlock();
  2448		} else {
  2449			cfg80211_unregister_wdev(&vif->wdev);
  2450		}
  2451		brcmf_free_vif(vif);
  2452	}
  2453	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101160830.WVuoo34k-lkp%40intel.com.

--opJtzjQTFsWo+cga
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--opJtzjQTFsWo+cga--
