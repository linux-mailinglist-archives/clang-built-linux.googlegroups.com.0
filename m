Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZMFSWEAMGQE7WLDHNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D043DC5F3
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 14:32:38 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id p1-20020a17090a3481b029017757e8c762sf9522903pjb.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 05:32:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627734757; cv=pass;
        d=google.com; s=arc-20160816;
        b=D8JIfdARUkJoMttNj/GG8MJI3OJg2sWdfbW8KZ00HEe6q0WtZ31+1sZVvEQ7aNfqT6
         wT2jguPdBJ4zN/HqU9QbOz1jfniC4IhbwDNhX8Uoh5s+sKC4U+G2raGs99hh7sPGddLt
         jy4aBTdP6x9PvwaOfg7FLcg+zl6GE6Rc06+XiWIqbnal1mB2Uafp5swe9EYe+LWCbJoR
         vmOWAGGgczkFqnfCUtLB2HM5k7s1BBrRMvBGFJa5h57swuxVJxllBsnfCWkIlGe6kFcT
         AAhZpgvPNXr0Rxz+baWk+0W+D5hbjWEA8vZyTxNKsE80kneUIla7rP1rxpBjDbO7JacU
         jQLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PEUoPVhqIi7Xu5zrdHBHMAwmmYHeO6muf+Q4R9HzHWo=;
        b=RqJMRz/x7cXriZ0el3c67p9PfBc5gftCdVkcTPBdtoQ6/aIzoCmdT4j+Fuotz18QdS
         UK8kmYi5d1uRvI7707bWJO2zE5QBf/+qR6Dj4rHkZcRzsVkovaezm/tXZHxAWBLg5p5b
         RnTyTHCYJkO6qntqNwkp3mahcyQpSYERwe/gEeQADhhkF2A5AMaNuaDGYYAerCaWRLgO
         H3oc/Gv5fTQXxEFjdZLIIRDR5gtjSdM4Ubq+PfvOI0oulW5AngOCjWlylhR9oGi1y2zl
         aypJi+ZlKOARAXVQwNMFFfnFON1GdDdIuh15RkM20gIIzKW+ANbZpbl1jzoao3Q+H7s0
         140A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PEUoPVhqIi7Xu5zrdHBHMAwmmYHeO6muf+Q4R9HzHWo=;
        b=IvUxUtS+iC3zRyewUQhawAMsZMCEFOD7KGlsX4oK/Nv+zaNLMEq3YETiOmJx7/uZdj
         Y+sxH2zBF2xEsfPfp3cvUEtokAph0sTZAu3IRHz616YvW2cHv7Z9kQ80XvSRi9PxceJt
         +Z2pOKTLQsXd1skVKgADYnpxr3e0DkVl9G3O2oKtMdIqqQLBHtQO0hDOe7Uctwsser1b
         P5Ytw4UA15+29XcxtAfR4DQWnqzI4Aqh0i/sDJ3LV/hc4l2cUph+1j9nlG1hymKXSeXi
         1fdAsldqaWd/zyri2yd7KzGsR1gkgUtvXfHysADJVPzotNoaIzyEdwy22hxpsHsAd7Id
         H/+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PEUoPVhqIi7Xu5zrdHBHMAwmmYHeO6muf+Q4R9HzHWo=;
        b=t2jMRHd0r9pQkcxTml1bIGwRadiVlqq3oRLVwByXodkhR+ytEpEVVhQSTkvVUMwfSf
         U77sZ5ZlJsaFbjx2gNFG6tKbXCVpPv/Drz6yYU8NK1dc/3FCSudQpDKbV8VDrBDjjQ4Y
         Fvcp2vPzUM8HpbovBSgZ94qrTeOv/TT15QxMLJhAOg+wJTqtxI1vcZePE7/0LD0yzH5U
         uEBUKezuAjWZoyXbe680h7UVVyz9V9xV5YxeLsDNwVxV6Pc+3OuOPVIpPV9P2M+xgVNg
         vlS/pB2cFrSmaZDNa8aAbL04Y3sEdov7BcgVC/UsqTrT+YS7i4SYQtCLcko3fyKoqWyv
         DRsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HNsZLd9uAuKhChUPDmt66sW5OoIBB5eCYUlRbdvI3WEQx1H4L
	Z5xX2guVzbiEPbP4ojsQwV4=
X-Google-Smtp-Source: ABdhPJymvBULsSvIwPoMkQBgxDmbCIYan0SXV9Qfpt3q/gbBNXmivbx/Bg0LzEjZoz5vzxWQp6XjNQ==
X-Received: by 2002:a63:6ca:: with SMTP id 193mr2007936pgg.265.1627734757160;
        Sat, 31 Jul 2021 05:32:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5348:: with SMTP id w8ls1953405pgr.10.gmail; Sat, 31 Jul
 2021 05:32:36 -0700 (PDT)
X-Received: by 2002:a63:84:: with SMTP id 126mr5757173pga.221.1627734756329;
        Sat, 31 Jul 2021 05:32:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627734756; cv=none;
        d=google.com; s=arc-20160816;
        b=NxXKw+qOLsV+AJ18eZ/Y6jswAPAqhhKoQ06OkOqrj6HZTBCj+hU7lOuDoahuKy/qGf
         vQsn2j8uDSZz70ELFIUZiqEoA1Df0xHqKFd2Gb10IVBYbx3NtrMNHEx+6uD+Rt6Zm//9
         mmNW/3e2aWiq2evJnB0ku2AV83dvDtmuPn8DNyMkUsqXnCKZ+YrHe90gw8WHzaSrfdAw
         j0jbQuh9VPcabI8jZRByQZXKdQrlMIXFsc3AvItXnWtsvhZKu0gW7cVGGhjfdkbqcoVU
         Qrp/Q5tnCfzgIIMFFxZnjEr5mbEZMZbYyoDJHfBQ+OQXjRcudnbvnCQXF6alCod2eHP7
         51Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=GY2TP36OxSTrs8f+pRX8piz80G3FVhRGvvmsZzgTMMg=;
        b=GQsADQzTxIfPjMuf6V0yygNmbB460hTWL7U/LrAQUZzdLjPLN7Yu9fQt1w208iBXHo
         k91U3EoU7iiCj26HJXslfSL/AvwkLA1mLQRuwBnLrChgB8K8fYRBt69bBWL3DDUakW16
         XtCug1C/nRU7mdgvtxz/zf47BczjK/BmbwejFhRgy1mJVQ8nlWh4CpcZSOmUhZ3AO2iA
         BHUn2tC74o3zvKEiGNOcudg/AEk2NdPimEbFvwfTo7rrAQ8gahw55q5L864keAgTGGjn
         ZnQtNThRofXw/dApqGOub6XOu8XZkHGAGKUMRTExj6G+7qyDXKLV33dZl6jeod9vkkj1
         deQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id u5si347791pji.0.2021.07.31.05.32.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Jul 2021 05:32:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="200407327"
X-IronPort-AV: E=Sophos;i="5.84,284,1620716400"; 
   d="gz'50?scan'50,208,50";a="200407327"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jul 2021 05:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,284,1620716400"; 
   d="gz'50?scan'50,208,50";a="457426420"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 31 Jul 2021 05:32:31 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m9oAJ-000B9h-2G; Sat, 31 Jul 2021 12:32:31 +0000
Date: Sat, 31 Jul 2021 20:31:47 +0800
From: kernel test robot <lkp@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Javier Martinez Canillas <javierm@redhat.com>
Subject: [linux-next:master 3254/4668]
 drivers/firmware/efi/sysfb_efi.c:190:35: warning: unused variable
 'efifb_dmi_system_table'
Message-ID: <202107312030.EmrCaXwx-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline
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


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   8d4b477da1a807199ca60e0829357ce7aa6758d5
commit: 15d27b15de965043d6f8e23bc7f34386fcd1a772 [3254/4668] efi: sysfb_efi: fix build when EFI is not set
config: x86_64-randconfig-r004-20210730 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4f71f59bf3d9914188a11d0c41bedbb339d36ff5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=15d27b15de965043d6f8e23bc7f34386fcd1a772
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 15d27b15de965043d6f8e23bc7f34386fcd1a772
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/firmware/efi/sysfb_efi.c:72:6: warning: no previous prototype for function 'efifb_setup_from_dmi' [-Wmissing-prototypes]
   void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
        ^
   drivers/firmware/efi/sysfb_efi.c:72:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
   ^
   static 
>> drivers/firmware/efi/sysfb_efi.c:190:35: warning: unused variable 'efifb_dmi_system_table' [-Wunused-const-variable]
   static const struct dmi_system_id efifb_dmi_system_table[] __initconst = {
                                     ^
>> drivers/firmware/efi/sysfb_efi.c:240:35: warning: unused variable 'efifb_dmi_swap_width_height' [-Wunused-const-variable]
   static const struct dmi_system_id efifb_dmi_swap_width_height[] __initconst = {
                                     ^
>> drivers/firmware/efi/sysfb_efi.c:331:39: warning: unused variable 'efifb_fwnode_ops' [-Wunused-const-variable]
   static const struct fwnode_operations efifb_fwnode_ops = {
                                         ^
   4 warnings generated.


vim +/efifb_dmi_system_table +190 drivers/firmware/efi/sysfb_efi.c

2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   71  
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25  @72  void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   73  {
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   74  	int i;
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   75  
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   76  	for (i = 0; i < M_UNKNOWN; i++) {
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   77  		if (efifb_dmi_list[i].base != 0 &&
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   78  		    !strcmp(opt, efifb_dmi_list[i].optname)) {
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   79  			si->lfb_base = efifb_dmi_list[i].base;
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   80  			si->lfb_linelength = efifb_dmi_list[i].stride;
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   81  			si->lfb_width = efifb_dmi_list[i].width;
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   82  			si->lfb_height = efifb_dmi_list[i].height;
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   83  		}
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   84  	}
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   85  }
21289ec02b41c4 arch/x86/kernel/sysfb_efi.c      Ard Biesheuvel           2016-04-25   86  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   87  #define choose_value(dmivalue, fwvalue, field, flags) ({	\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   88  		typeof(fwvalue) _ret_ = fwvalue;		\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   89  		if ((flags) & (field))				\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   90  			_ret_ = dmivalue;			\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   91  		else if ((fwvalue) == 0)			\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   92  			_ret_ = dmivalue;			\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   93  		_ret_;						\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   94  	})
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   95  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   96  static int __init efifb_set_system(const struct dmi_system_id *id)
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   97  {
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   98  	struct efifb_dmi_info *info = id->driver_data;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02   99  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  100  	if (info->base == 0 && info->height == 0 && info->width == 0 &&
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  101  	    info->stride == 0)
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  102  		return 0;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  103  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  104  	/* Trust the bootloader over the DMI tables */
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  105  	if (screen_info.lfb_base == 0) {
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  106  #if defined(CONFIG_PCI)
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  107  		struct pci_dev *dev = NULL;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  108  		int found_bar = 0;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  109  #endif
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  110  		if (info->base) {
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  111  			screen_info.lfb_base = choose_value(info->base,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  112  				screen_info.lfb_base, OVERRIDE_BASE,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  113  				info->flags);
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  114  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  115  #if defined(CONFIG_PCI)
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  116  			/* make sure that the address in the table is actually
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  117  			 * on a VGA device's PCI BAR */
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  118  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  119  			for_each_pci_dev(dev) {
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  120  				int i;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  121  				if ((dev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  122  					continue;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  123  				for (i = 0; i < DEVICE_COUNT_RESOURCE; i++) {
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  124  					resource_size_t start, end;
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  125  					unsigned long flags;
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  126  
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  127  					flags = pci_resource_flags(dev, i);
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  128  					if (!(flags & IORESOURCE_MEM))
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  129  						continue;
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  130  
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  131  					if (flags & IORESOURCE_UNSET)
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  132  						continue;
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  133  
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  134  					if (pci_resource_len(dev, i) == 0)
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  135  						continue;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  136  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  137  					start = pci_resource_start(dev, i);
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  138  					end = pci_resource_end(dev, i);
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  139  					if (screen_info.lfb_base >= start &&
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  140  					    screen_info.lfb_base < end) {
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  141  						found_bar = 1;
c10fcb14c7afd6 arch/x86/kernel/sysfb_efi.c      Wang YanQing             2016-05-05  142  						break;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  143  					}
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  144  				}
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  145  			}
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  146  			if (!found_bar)
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  147  				screen_info.lfb_base = 0;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  148  #endif
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  149  		}
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  150  	}
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  151  	if (screen_info.lfb_base) {
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  152  		screen_info.lfb_linelength = choose_value(info->stride,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  153  			screen_info.lfb_linelength, OVERRIDE_STRIDE,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  154  			info->flags);
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  155  		screen_info.lfb_width = choose_value(info->width,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  156  			screen_info.lfb_width, OVERRIDE_WIDTH,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  157  			info->flags);
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  158  		screen_info.lfb_height = choose_value(info->height,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  159  			screen_info.lfb_height, OVERRIDE_HEIGHT,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  160  			info->flags);
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  161  		if (screen_info.orig_video_isVGA == 0)
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  162  			screen_info.orig_video_isVGA = VIDEO_TYPE_EFI;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  163  	} else {
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  164  		screen_info.lfb_linelength = 0;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  165  		screen_info.lfb_width = 0;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  166  		screen_info.lfb_height = 0;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  167  		screen_info.orig_video_isVGA = 0;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  168  		return 0;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  169  	}
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  170  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  171  	printk(KERN_INFO "efifb: dmi detected %s - framebuffer at 0x%08x "
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  172  			 "(%dx%d, stride %d)\n", id->ident,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  173  			 screen_info.lfb_base, screen_info.lfb_width,
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  174  			 screen_info.lfb_height, screen_info.lfb_linelength);
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  175  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  176  	return 1;
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  177  }
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  178  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  179  #define EFIFB_DMI_SYSTEM_ID(vendor, name, enumid)		\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  180  	{							\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  181  		efifb_set_system,				\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  182  		name,						\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  183  		{						\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  184  			DMI_MATCH(DMI_BIOS_VENDOR, vendor),	\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  185  			DMI_MATCH(DMI_PRODUCT_NAME, name)	\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  186  		},						\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  187  		&efifb_dmi_list[enumid]				\
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  188  	}
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  189  
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02 @190  static const struct dmi_system_id efifb_dmi_system_table[] __initconst = {
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  191  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "iMac4,1", M_I17),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  192  	/* At least one of these two will be right; maybe both? */
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  193  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "iMac5,1", M_I20),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  194  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "iMac5,1", M_I20),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  195  	/* At least one of these two will be right; maybe both? */
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  196  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "iMac6,1", M_I24),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  197  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "iMac6,1", M_I24),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  198  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "iMac7,1", M_I20_SR),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  199  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "iMac8,1", M_I24_8_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  200  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "iMac10,1", M_I24_10_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  201  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "iMac11,1", M_I27_11_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  202  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "Macmini1,1", M_MINI),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  203  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "Macmini3,1", M_MINI_3_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  204  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "Macmini4,1", M_MINI_4_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  205  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "MacBook1,1", M_MB),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  206  	/* At least one of these two will be right; maybe both? */
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  207  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "MacBook2,1", M_MB),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  208  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBook2,1", M_MB),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  209  	/* At least one of these two will be right; maybe both? */
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  210  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "MacBook3,1", M_MB),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  211  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBook3,1", M_MB),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  212  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBook4,1", M_MB),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  213  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBook5,1", M_MB_5_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  214  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBook6,1", M_MB_6_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  215  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBook7,1", M_MB_7_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  216  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookAir1,1", M_MBA),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  217  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookAir3,1", M_MBA_3),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  218  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "MacBookPro1,1", M_MBP),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  219  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "MacBookPro2,1", M_MBP_2),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  220  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "MacBookPro2,2", M_MBP_2_2),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  221  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro2,1", M_MBP_2),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  222  	EFIFB_DMI_SYSTEM_ID("Apple Computer, Inc.", "MacBookPro3,1", M_MBP_SR),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  223  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro3,1", M_MBP_SR),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  224  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro4,1", M_MBP_4),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  225  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro5,1", M_MBP_5_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  226  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro5,2", M_MBP_5_2),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  227  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro5,3", M_MBP_5_3),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  228  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro6,1", M_MBP_6_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  229  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro6,2", M_MBP_6_2),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  230  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro7,1", M_MBP_7_1),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  231  	EFIFB_DMI_SYSTEM_ID("Apple Inc.", "MacBookPro8,2", M_MBP_8_2),
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  232  	{},
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  233  };
2995e506276bfd arch/x86/kernel/sysfb_efi.c      David Herrmann           2013-08-02  234  
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  235  /*
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  236   * Some devices have a portrait LCD but advertise a landscape resolution (and
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  237   * pitch). We simply swap width and height for these devices so that we can
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  238   * correctly deal with some of them coming with multiple resolutions.
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  239   */
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21 @240  static const struct dmi_system_id efifb_dmi_swap_width_height[] __initconst = {
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  241  	{
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  242  		/*
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  243  		 * Lenovo MIIX310-10ICR, only some batches have the troublesome
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  244  		 * 800x1280 portrait screen. Luckily the portrait version has
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  245  		 * its own BIOS version, so we match on that.
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  246  		 */
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  247  		.matches = {
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  248  			DMI_EXACT_MATCH(DMI_SYS_VENDOR, "LENOVO"),
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  249  			DMI_EXACT_MATCH(DMI_PRODUCT_VERSION, "MIIX 310-10ICR"),
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  250  			DMI_EXACT_MATCH(DMI_BIOS_VERSION, "1HCN44WW"),
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  251  		},
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  252  	},
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  253  	{
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  254  		/* Lenovo MIIX 320-10ICR with 800x1280 portrait screen */
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  255  		.matches = {
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  256  			DMI_EXACT_MATCH(DMI_SYS_VENDOR, "LENOVO"),
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  257  			DMI_EXACT_MATCH(DMI_PRODUCT_VERSION,
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  258  					"Lenovo MIIX 320-10ICR"),
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  259  		},
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  260  	},
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  261  	{
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  262  		/* Lenovo D330 with 800x1280 or 1200x1920 portrait screen */
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  263  		.matches = {
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  264  			DMI_EXACT_MATCH(DMI_SYS_VENDOR, "LENOVO"),
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  265  			DMI_EXACT_MATCH(DMI_PRODUCT_VERSION,
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  266  					"Lenovo ideapad D330-10IGM"),
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  267  		},
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  268  	},
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  269  	{},
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  270  };
d02f1aa39189e0 arch/x86/kernel/sysfb_efi.c      Hans de Goede            2019-07-21  271  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  272  static bool efifb_overlaps_pci_range(const struct of_pci_range *range)
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  273  {
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  274  	u64 fb_base = screen_info.lfb_base;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  275  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  276  	if (screen_info.capabilities & VIDEO_CAPABILITY_64BIT_BASE)
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  277  		fb_base |= (u64)(unsigned long)screen_info.ext_lfb_base << 32;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  278  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  279  	return fb_base >= range->cpu_addr &&
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  280  	       fb_base < (range->cpu_addr + range->size);
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  281  }
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  282  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  283  static struct device_node *find_pci_overlap_node(void)
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  284  {
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  285  	struct device_node *np;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  286  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  287  	for_each_node_by_type(np, "pci") {
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  288  		struct of_pci_range_parser parser;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  289  		struct of_pci_range range;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  290  		int err;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  291  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  292  		err = of_pci_range_parser_init(&parser, np);
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  293  		if (err) {
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  294  			pr_warn("of_pci_range_parser_init() failed: %d\n", err);
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  295  			continue;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  296  		}
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  297  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  298  		for_each_of_pci_range(&parser, &range)
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  299  			if (efifb_overlaps_pci_range(&range))
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  300  				return np;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  301  	}
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  302  	return NULL;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  303  }
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  304  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  305  /*
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  306   * If the efifb framebuffer is backed by a PCI graphics controller, we have
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  307   * to ensure that this relation is expressed using a device link when
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  308   * running in DT mode, or the probe order may be reversed, resulting in a
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  309   * resource reservation conflict on the memory window that the efifb
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  310   * framebuffer steals from the PCIe host bridge.
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  311   */
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  312  static int efifb_add_links(struct fwnode_handle *fwnode)
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  313  {
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  314  	struct device_node *sup_np;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  315  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  316  	sup_np = find_pci_overlap_node();
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  317  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  318  	/*
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  319  	 * If there's no PCI graphics controller backing the efifb, we are
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  320  	 * done here.
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  321  	 */
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  322  	if (!sup_np)
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  323  		return 0;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  324  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  325  	fwnode_link_add(fwnode, of_fwnode_handle(sup_np));
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  326  	of_node_put(sup_np);
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  327  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  328  	return 0;
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  329  }
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  330  
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25 @331  static const struct fwnode_operations efifb_fwnode_ops = {
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  332  	.add_links = efifb_add_links,
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  333  };
8633ef82f101c0 drivers/firmware/efi/sysfb_efi.c Javier Martinez Canillas 2021-06-25  334  

:::::: The code at line 190 was first introduced by commit
:::::: 2995e506276bfdc7311eb02db8b2aa1a61a4b849 x86: sysfb: move EFI quirks from efifb to sysfb

:::::: TO: David Herrmann <dh.herrmann@gmail.com>
:::::: CC: H. Peter Anvin <hpa@linux.intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107312030.EmrCaXwx-lkp%40intel.com.

--TB36FDmn/VVEgNH/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
YvVIX7j/Bz8kNNtvPAIA

--TB36FDmn/VVEgNH/--
