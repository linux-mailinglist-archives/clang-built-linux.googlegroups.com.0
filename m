Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFXYQ6DAMGQEBG4YRQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE473A2AA8
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 13:48:39 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id d12-20020ac8668c0000b0290246e35b30f8sf7310454qtp.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 04:48:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623325718; cv=pass;
        d=google.com; s=arc-20160816;
        b=1JKOvIyZOSR5gprXYKqhRZbSsdG3BiwrhUkMQJxkMUmkR8ijTrcapUEX6uPP3W00aI
         SG/iaIsX/Yie23nshSgklAt1TkXGOD3uVJ7x6JyN5cQMO6AnR4LihJ61ehTOnWFiyiqp
         jhTvZmXdolLI8E5+kitkx2bpgyhOo7eFe7mTKbc5A7ZI4B34Z5iMNjbtYLtDWKyhoVfB
         4zjUDZ4KMuXkrLCU+pxSdSxgOp4EWzT/cH6Em5Oc+IvXaY003dLWrScOeFLL1lodaO1Z
         SomtDUCMTXzEtHneYWbmRNOxhawqgDVx6n2oNjJW2ecnh54VFm7gHVw5dgcdvKvN3k8U
         54Pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=YHRbgyCnvXOQ/m8VCpRkKmw/RfrhywMOyptGDjCkRbc=;
        b=WmJfHV7+J2patTIGQaJJn0IFStD8QTLt8sW9HQ0DEmfmD1gJgk35r1uu8koTq3n6xn
         jfyfCsFn/uMCZR5j3ajv+mbg886wPaKwO7jOhr03WHiA96nJLqi/kCKew6WIfbD+bnGb
         FTvXW1by6tq+VnjWGgE6Na2PBN0lXKADWaE3hsyHGdlmt/hZUu6zBfvv2RgXSSAkrXnu
         2TDa1pwxxaq17JrGvePkFpbvunBac0Oqsmq1c/Vy6eNfNv3xKf8SFJ+5okF/OALr/AJl
         CTcQDj9iGE+eUUkxuNV6cIohWBnrVdCatOHY62O9P0tSAoEQqbfPYyHu3UCcF3xVUkA6
         HtpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YHRbgyCnvXOQ/m8VCpRkKmw/RfrhywMOyptGDjCkRbc=;
        b=e6VMshv5R/6Iqwcl0So9q/+fUP7YN7kZWOiLOfxtF5UwSporCIk8jG9epeB3T2bTTJ
         CoFQULwL/PALjYkPaSVxp6qt1vIRVDSohYmvpyXP9SSmQ7d9h2cfnmxvxn/SqO+TQ5mh
         rffNDfyvbAAS70Qv4qM4R47rUJLhPQTgtGMh4fB5zoJthr9usYxVTGtSSKbsxUVnrGwO
         nNs3lFHEyOBf6DurkHxRFQ7+CH967yCE398Sk28+dF5N4Cv/RRsUR0P7CJ+Bp0+dmQqR
         v4OwQEj9mmclwOS+0amfTt7hpYqRZuch/RKnBD6hnART1i+eIfnuHfwAt4Ekzlcs3l/J
         kKAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YHRbgyCnvXOQ/m8VCpRkKmw/RfrhywMOyptGDjCkRbc=;
        b=TuUaYwFDD1btcGSKILfj2UDwbsbNx0BisTtwiAhDy5mA39tLo/giE1SnYzl3wl2PS0
         UFbyTKCmf7bvGRANvhkaxc62wt11kLbBG0qe/w8q10y1IvhyeJWNVcJcrb7eg9CUB1rR
         0Rymp6dW3OyYidxYxmBLgtzAiRhe+FXip6E542GZJYtbxnzKmxdCrvlHnrFoaMFo3WYi
         RwRnLJ6XhsT4r99/iBHxuUI3sKDZpZj2lK5eSh2vocyncJuC5aCmC3ICb3bSkLcoqXUP
         OMKQ6sCaxWnq/3p+EYe6WQKPjdkqmBzFCxfZUirEvG7ufWiO7uuFDnEEjaVM4qmN2wcw
         Aahg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533m95pR+oQJNBgz4FLfL8rPeaXmb+JCQcEBjkd+gnvaBekrX4+n
	fRr5O10xxRcZcuMr5ohItvI=
X-Google-Smtp-Source: ABdhPJxgMqX0uLwB8G0aIVLEliT7a/EplWAK9+Q7E3Eu+EfZOzBAZtJRKm88L8bXue4M39VNcctjzQ==
X-Received: by 2002:ac8:4a0c:: with SMTP id x12mr4768912qtq.124.1623325718655;
        Thu, 10 Jun 2021 04:48:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:80d:: with SMTP id 13ls3128483qki.4.gmail; Thu, 10 Jun
 2021 04:48:38 -0700 (PDT)
X-Received: by 2002:ae9:f105:: with SMTP id k5mr4096663qkg.63.1623325718016;
        Thu, 10 Jun 2021 04:48:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623325718; cv=none;
        d=google.com; s=arc-20160816;
        b=VoyiUagUcwY6YGjIrVIKK9eLk6+aQKANNs98M/m3rss+XFDGp2eW5V0F7YfMF2GS7H
         ZRGqebCIbJ0NLilW0Q4TJ3MKuAiv3T54g+8LwcqOWkX3EcQQ+1oqpcRenSLf/RDeQBsI
         /3dD2xz1ZwT7ygXqLz7rvnVAKWdV369flu8XI+QpLYamfphAA51Q0hvilqusFsJsZAk8
         TSPLVmOIlwesBlM4Wj2UhXlzUQ++pOeOs83mhI8xvTmq3LD4n1UXnv5BrXUuqkf74TTu
         3QYbdDqfbBz3Pf4fQMcxPmDTy+tS4PbC+HCJuQSHmtk8hblW48e2pdW6ckwWmTqsUo5p
         yMVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=HhoD4wMLSCePvZ89ItwnXUDqpTM64EoCeugOTzX4G6Y=;
        b=SCSu4Fq9dlBPTnAJ4FTN3+5AWm+UMI8+jfTeA1Vk2UigE5Bw2aa/eA2HrDOoKmoHBf
         My7UiU+DMXjVTHKNebLbsbab/I80HAk+IIYu+erNcnwFdeqCpb5CERrUeFq3vBwqSD+a
         aD+Dc/3/OGxvPrq3zz+d1XTbto6MvYdciR7yrgYsH1ClhXQlfhGm2VkUmOtvVHgh5lBQ
         Qppo1T+DvCEF6c49omNu31VJRqsarhY1hcto2WC6X2txVIhySsfMj06wr9EK0/wmb/Yo
         +ri4r6+1fwBXwAukkl4bbGdEa72V3Sy3owriqUrayXxmhjlyJNeRfIetNO8Ht9nZ3YkD
         dFaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id p5si382131qkj.2.2021.06.10.04.48.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 04:48:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: isPBJ7eioDthYM0/NgLytouAldGMIHWKB6SUVq+Fk2/6t95rwAXTNOD00FRkYj8u8FvSeh2Y/n
 XZ/BvRq2wJxg==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="185655555"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; 
   d="gz'50?scan'50,208,50";a="185655555"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2021 04:48:20 -0700
IronPort-SDR: zCbGO1nbIvoAvz8dhbnToJJuc9/NIkZDgMArz+ivpWwRqiThCuJm6szGsxQ0kGVLZENSxipktr
 EpCTf9aq6v8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; 
   d="gz'50?scan'50,208,50";a="448688672"
Received: from lkp-server02.sh.intel.com (HELO 3cb98b298c7e) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 10 Jun 2021 04:48:18 -0700
Received: from kbuild by 3cb98b298c7e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lrJAY-00006n-05; Thu, 10 Jun 2021 11:48:18 +0000
Date: Thu, 10 Jun 2021 19:47:44 +0800
From: kernel test robot <lkp@intel.com>
To: Takashi Iwai <tiwai@suse.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	alsa-devel@alsa-project.org
Subject: [sound:for-next 164/168] include/sound/memalloc.h:63:17: error: use
 of undeclared identifier 'PAGE_SIZE'
Message-ID: <202106101931.75goUdXd-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git for-next
head:   83fbcaed24d797528de00c024674fd58e8f1634f
commit: 37af81c5998f4b0f23fb452cffa4b8a1c00ce95b [164/168] ALSA: core: Abstract memory alloc helpers
config: riscv-randconfig-r002-20210610 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d2012d965d60c3258b3a69d024491698f8aec386)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git/commit/?id=37af81c5998f4b0f23fb452cffa4b8a1c00ce95b
        git remote add sound https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git
        git fetch --no-tags sound for-next
        git checkout 37af81c5998f4b0f23fb452cffa4b8a1c00ce95b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from sound/core/pcm_iec958.c:8:
   In file included from include/sound/pcm.h:12:
>> include/sound/memalloc.h:63:17: error: use of undeclared identifier 'PAGE_SIZE'
           return (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
                          ^
>> include/sound/memalloc.h:63:35: error: use of undeclared identifier 'PAGE_SHIFT'
           return (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
                                            ^
   2 errors generated.


vim +/PAGE_SIZE +63 include/sound/memalloc.h

^1da177e4c3f41 Linus Torvalds       2005-04-16  57  
4cae99d9b5305a Pierre-Louis Bossart 2018-07-25  58  /*
4cae99d9b5305a Pierre-Louis Bossart 2018-07-25  59   * return the pages matching with the given byte size
4cae99d9b5305a Pierre-Louis Bossart 2018-07-25  60   */
4cae99d9b5305a Pierre-Louis Bossart 2018-07-25  61  static inline unsigned int snd_sgbuf_aligned_pages(size_t size)
4cae99d9b5305a Pierre-Louis Bossart 2018-07-25  62  {
4cae99d9b5305a Pierre-Louis Bossart 2018-07-25 @63  	return (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
4cae99d9b5305a Pierre-Louis Bossart 2018-07-25  64  }
4cae99d9b5305a Pierre-Louis Bossart 2018-07-25  65  

:::::: The code at line 63 was first introduced by commit
:::::: 4cae99d9b5305ab8cccc839fccceb81ec9e5abda ALSA: memalloc: declare snd_sgbuf_aligned_pages() unconditionally

:::::: TO: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106101931.75goUdXd-lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ew6BAiZeqk4r7MaW--
