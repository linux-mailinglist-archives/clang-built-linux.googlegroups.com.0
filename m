Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXVQ5OAQMGQERXNM62Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE2C326F9E
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 00:40:15 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id s22sf896191otg.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 15:40:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614469214; cv=pass;
        d=google.com; s=arc-20160816;
        b=MHOsI/FoxXO30AO+5DwfggXe7FGAcwwHkPO53nxVyZoiOcD1UY1ppYhBrDurQFHPcE
         MElSdNDwQkSv7NXhcHlsw9TYZg9Eh6M4ux+YJN6hFfQUAeFHGRClJpccgPFkxyhtqcR9
         RT5n/zJumEzs5I5viG7s2C3gBBhNbFWKaV8ov7We7NShiayHuTK4tYgXA/sG8P+J4ogx
         0avPRjr6abxPvRhZFE126PMrzdgZp0Enxpcu31zvGZ6UAmTwbRcrnWLqCUCvR8InM7Ov
         XRSMpj30HMQhD7OyqHSpGp7hoK0DbqvaDupVB2vFXDdkoFK0GK2oVcWx2InjFVSfprZZ
         GI8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=i17Dn1H2AkaZw7BJGZNQ7xTGdd75tpHN6RkjxBubM/E=;
        b=P1E7zvOnoPZeu3i7TONMLshEKBOIM/kauIoYzu8oJ77IsoAvrM3znbPw3F/SycM5DD
         KYe5JMruPtbOVZQRWBC2/wHrPasoE3TtXReP45MktpP6zsJ2k2aXhL60f2dUQYg9YwaO
         Ob+RntHwsmLnAXynstjjWEDIQ+L8HtGVktzinZRgaib05eB4yaAIns6+jO4/NB1NMpvO
         hq5BzCagyunEICd7XFNDBpzL8Q/F7wzy0tRsvJf2rjjyGfsh/8TbM6yF4SL18EvUIqKA
         8nGbt+XiBcUIhfmKTCV/NFItGmu6vmCuKKWBZBzNM+KN7krpjATopp7nM7D0sxeKImAt
         Fk5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i17Dn1H2AkaZw7BJGZNQ7xTGdd75tpHN6RkjxBubM/E=;
        b=lS5dSjpQJTuTsR2DWDJRy/lWYR+J7cxWNvaA5hgxbEUWPu/I1lEtqSw985glaF+M3I
         i3dJ7RkvLwOTOPD49if3Wz3r/9h5cNt3MgTJDXMlxn8F8ibWHG3gTIyaMWpFPmW2Q/kV
         EjxoQDzptTGphJ0icQXHUM0m+BuPYaTPg5d5Frwb6+Kmp0s/r+wL3FWHk7nQS+PHSlpJ
         nO3D8xEm6qgmii4W+HR7UrqzNot6RVhmfMEK4+pnoVW3JoCy+DywbamRQRcgRy6BLOkO
         pGAk7OiEPHDdSFcQ4M67Imxbfo+VPYEyhvSQ2SAeIr5qJ4IxJt3vh//jR4DRRHnkVemp
         1UaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=i17Dn1H2AkaZw7BJGZNQ7xTGdd75tpHN6RkjxBubM/E=;
        b=fZXQAwvN9GemPuIfySiBnC0URH3K/JyFSnAruuKV9eWoRAynUQJ86XFWg491Kh2AXt
         gaYFoWSOXdPkP+HLzKzFXPO0rhrQCZ/U9XsbkyXZCBe74yUVQOiwk4OxOHpbWALVx7Q8
         aCQY5kCbrdSXGkiWbOow0p95i20y6MBUOgeB6jwkEdUmZRP1a36GAHYbhEQnrjguewa8
         q3lhdwzFamP7n/Ng2/Sxhs7bGJRneVI5zLdE4R/BWMrVrthKWDMPTQtU0cXNymq1xsxy
         ur0Vp3VM3rpBfCX8xEUg/+HaBBB//a2sk/m/MB5cd7FinnpxSpuLFj+zQ43z8BegSbJy
         Nz/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532K3BHSIW9WLUBt4tR+KN/c8O/wF4z5az8S7Nih8EVygrC86O8y
	cJsIG9z8J1omJDV2YEdl17c=
X-Google-Smtp-Source: ABdhPJy5SgHU5xTbIkjh1/9qk6N90wDVX/4ACI84Dgiwp+0vd2g7gPNvPfc/uHiQwBAOa9E+MCRdnA==
X-Received: by 2002:a4a:d994:: with SMTP id k20mr7267243oou.70.1614469214226;
        Sat, 27 Feb 2021 15:40:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c86:: with SMTP id c6ls3582490otr.5.gmail; Sat, 27 Feb
 2021 15:40:13 -0800 (PST)
X-Received: by 2002:a05:6830:78d:: with SMTP id w13mr8186000ots.98.1614469213845;
        Sat, 27 Feb 2021 15:40:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614469213; cv=none;
        d=google.com; s=arc-20160816;
        b=pjGIHW3auIRrtZcCwBEGSigKixPwJHY6C/B9Jh8yHwbHHnUJKKucLvSx/jOW9A6pU6
         kPNPAqwowL9B+cE1QCZd3BoNJIM17Vk7KM6oYUhVejnHRCaXjVdV8aGML8+7nQydn8Zo
         otbQ3h5oGpbRxD1sDeZmuUNnujj6UpcNo8cmha+VuNWjcvjnIim0qznbr9NO8LSMitWm
         3c3bfQLQfvL2IfH+7PkfJtXZc3d2h9Yj7XFzbCiZYM9xE3PVGp+0K+i+fPGVzDcJ4VQM
         aQq8U+oGjmWurqhlnH8IIMzjPtav/J9eG5QP9otd+77iCRiJuFpbrSdAJcFSOYP7KSC4
         ckiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=uht1hRsinKuzlv0lQ96Ahx+8DOPL+BojAOKMUKi8U18=;
        b=CQgz3hTP1YWsbFdI8RUa5gLE5G0cpXxYWcXAGaKL/cnC/M6Vb2C/QWJaTcU1uo+ZCB
         8z8mQGB3yUxiRPXkQetNUy9j8s1wxPCL+GpJcXuRVAuGVfLoeGYWeyT5w3Ej+A0/07yU
         v3rAXmhWvhdvBrlQ+oEq1PN5NsZzpW9h5dzQC79blCOEBOme9gAXD/eK4AoEz7pwo9QD
         O/1SAEyIePGYG7F9bfBG3DnxdA6Z4mRyz9xfa/a3oqYXR9hn3fFgyAD1uDOuNh1XEq71
         xZv6S++vvBqeAGItlwYhBu7vDjifiQRNSrXr6e/o4KBiOXQTWtsujk6YzS5taPwxHMsZ
         a+ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id x196si703001oix.3.2021.02.27.15.40.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 15:40:13 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: jmPa31ZSxo727rCBKc6IGyDaJjFvcGaHByzALaW3sXCKKLFL2xkdZKG3UC8xsxMj5V3lxSxGTM
 asNPg5uh5Jig==
X-IronPort-AV: E=McAfee;i="6000,8403,9908"; a="173311806"
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; 
   d="gz'50?scan'50,208,50";a="173311806"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Feb 2021 15:40:12 -0800
IronPort-SDR: FSwUz229dIaI/Sme7JnyGBKgJHLDchqnSciSh79OTzRuRvGQqqJzygcD6UypjWfn+OqDNbmgTm
 5948xFWx6Q1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; 
   d="gz'50?scan'50,208,50";a="433676300"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2021 15:40:10 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lG9By-0003vA-0q; Sat, 27 Feb 2021 23:40:10 +0000
Date: Sun, 28 Feb 2021 07:40:01 +0800
From: kernel test robot <lkp@intel.com>
To: Gao Xiang <hsiangkao@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Xiang Gao <xiang@kernel.org>
Subject: [xiang-linux:erofs/bigpcluster 11/13] fs/erofs/super.c:524:36:
 error: no member named 'lz4' in 'struct erofs_sb_info'
Message-ID: <202102280755.wcrorzgm-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sdtB3X0nJg68CQEu"
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


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/xiang/linux.git erofs/bigpcluster
head:   5dafd554d91bf4e2dc40e9974b920ef33a29ee0a
commit: b2125db45e12b9f5c5e7ae370cfa90bb21f5e428 [11/13] erofs: adjust per-CPU buffers according to max_pclusterblks
config: s390-randconfig-r015-20210228 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 83bc7815c4235786111aa2abf7193292e4a602f5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/xiang/linux.git/commit/?id=b2125db45e12b9f5c5e7ae370cfa90bb21f5e428
        git remote add xiang-linux https://git.kernel.org/pub/scm/linux/kernel/git/xiang/linux.git
        git fetch --no-tags xiang-linux erofs/bigpcluster
        git checkout b2125db45e12b9f5c5e7ae370cfa90bb21f5e428
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from fs/erofs/super.c:15:
   In file included from fs/erofs/xattr.h:10:
   fs/erofs/internal.h:445:18: error: no member named 'lz4_max_distance' in 'struct erofs_super_block'
           if (lz4 || dsb->lz4_max_distance) {
                      ~~~  ^
>> fs/erofs/super.c:524:36: error: no member named 'lz4' in 'struct erofs_sb_info'
           err = erofs_pcpubuf_growsize(sbi->lz4.max_pclusterblks);
                                        ~~~  ^
   2 errors generated.


vim +524 fs/erofs/super.c

   523	
 > 524		err = erofs_pcpubuf_growsize(sbi->lz4.max_pclusterblks);
   525		if (err)
   526			return err;
   527	
   528		/* get the root inode */
   529		inode = erofs_iget(sb, ROOT_NID(sbi), true);
   530		if (IS_ERR(inode))
   531			return PTR_ERR(inode);
   532	
   533		if (!S_ISDIR(inode->i_mode)) {
   534			erofs_err(sb, "rootino(nid %llu) is not a directory(i_mode %o)",
   535				  ROOT_NID(sbi), inode->i_mode);
   536			iput(inode);
   537			return -EINVAL;
   538		}
   539	
   540		sb->s_root = d_make_root(inode);
   541		if (!sb->s_root)
   542			return -ENOMEM;
   543	
   544		erofs_shrinker_register(sb);
   545		/* sb->s_umount is already locked, SB_ACTIVE and SB_BORN are not set */
   546		err = erofs_init_managed_cache(sb);
   547		if (err)
   548			return err;
   549	
   550		erofs_info(sb, "mounted with root inode @ nid %llu.", ROOT_NID(sbi));
   551		return 0;
   552	}
   553	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102280755.wcrorzgm-lkp%40intel.com.

--sdtB3X0nJg68CQEu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
vAAA

--sdtB3X0nJg68CQEu--
