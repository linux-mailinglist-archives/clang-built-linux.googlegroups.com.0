Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLWMXCBQMGQEZ4F6W6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id CED753576FC
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 23:37:51 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id i23sf126182pfd.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 14:37:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617831470; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2rEB6PhJ4fhDjR7fYeBGjafuktb8vdHp+F/Re1u2h895gaYnQSBX64t8V5QJa8Elj
         IXfeN71RjOorzUPbl1nP0qlGPRv7o5XJ4fHZHFpMs4jPF0/XSCNKhVJcqR+lPTGfXt3z
         CfjxGkPkhVEO2dSZYwniofTu6FTgxU9sbyqbfS0QFlBl2Ef1dp5+F+5Fp2IjGAid4fP9
         5HEqp0PXVWIhYlcRdkXgHKybBu+PjsrucO1uiYHX9gKwY8mqiZq0DTrklDCQldEgjJY5
         GxHwH+fJlVyGkjEuEUPm8Llmw/DsJbNxNixMzaTCSUxpK+Y0re+WLaAy0ESv+/pNv44V
         8+dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/f92DWY/TqT14aT7m5DgTM7stZN4H+T3YoXgMq6Y/nM=;
        b=zFMk+nMW3htYQcg/1jSv69H+Ogj9mYvPRhh674ckeLvlpnqxYCv/UrAuP1aW/ii/5W
         6etu00nPOVbtuMOUA3uQdEXeVVEqZMVEOeaUJpY1w/LCRSTEEEhD/KubAsq4PRQSCOIK
         RG3RFQqILVSUzFk0gOuMDuWVplqzIrYYOtIbeY2Zs3ccDsteWiPPWNdaCNYY23u36HCX
         7LU8xMLO0jfBnlxjucK0eGptpXB/T9r7gtnWkYxbLn0PTXnQqI2TuU+peIhZ6LBfDrqn
         snVYZsRWTxmV8fpRbGdtUv6gxAoAqF6VDa5mceyEQ6DwW6/mef6Ozhd9jfqd3iWXt5uC
         KiFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/f92DWY/TqT14aT7m5DgTM7stZN4H+T3YoXgMq6Y/nM=;
        b=eZ+1cDpJR66O0lCpfPstwK4bYcdNwjSBRq5I/os2/m8jrVsnB3FvTkYjQXGhUmZ9vn
         xAv5PiqwfCIcJMSDLh6tFsve1nySpCMcuDuV+OVeSyHAv6WrLQbyVtJQ2c8qr7z6NPzH
         BntQZHysh8uR+wnFdES4hLaeJe2KXUUV2dJnTlZ7ZGfDyh8VJON8trHAXjiJLdZloKo+
         caZAQoSpSF9dG4URBM3s1rG+96Q6cGIB2nA720tUDwu8ZxcGDCYGyCRmVFpXt7myNykJ
         0F3zPra70cAUajJHEVPnaYCjJ6yRgehcaXO4M8u14mmU+LQoToV8x8ajBX1Ovu/V/9hm
         nvBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/f92DWY/TqT14aT7m5DgTM7stZN4H+T3YoXgMq6Y/nM=;
        b=IAiSjrshSNeup/3f5Mg7nEBOAnEV67olrxpZaLoKTr+d1/ICWYFmThiI937Wa0mCBP
         zmVmxduuEq3dkPdJ/M9yhKzj2DVGE4FtFcuGk0cQzzPU0m4gvnzrvuvfdvUYahs2WGG0
         z4PdxoJtjR6Dc79Oqs/yDUC5g5RC4Sokkiw0JNjqVocK7BI964+c0aAWHnhusjUQ7c1S
         dO0dUw4zxPZrvhqiHRsBXs4ko2UqKcg/zvtD2DEHJ7ioUDPJyheiWzrnGKPnm4T5xG90
         kgCLbvwX9CXpCoAMBitqyo1c0p190qugVx0sHw8eC/iKnovI8Ga4yIJfTrrmfSoYENU7
         8pIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SFk3jti/haJxFAN5D2+pj+ra+Hd2deLm2X5mEfvbdkL70027q
	D9mDhOpmBBi/u5pAFaJuQ14=
X-Google-Smtp-Source: ABdhPJwfMFIu/0T3J1iBeEo+IGv4cTLYddpvL1LRN3d13jXChiX+EmdQRkannN8rC9aTbxdcFcsIDA==
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr5148916pjp.166.1617831470508;
        Wed, 07 Apr 2021 14:37:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2cc5:: with SMTP id s188ls1255442pfs.5.gmail; Wed, 07
 Apr 2021 14:37:50 -0700 (PDT)
X-Received: by 2002:a63:3102:: with SMTP id x2mr5107502pgx.123.1617831469874;
        Wed, 07 Apr 2021 14:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617831469; cv=none;
        d=google.com; s=arc-20160816;
        b=iGlaoQnz1fNpseVP/0Tx/J2/17mfAYpOtW2n0pvPM4Vkf4wbCFptFYNcTmgIw93SSX
         toTrsZ4oaZJ+3RlvHgsZzA9AyZTmKMqXRX+HccwenyqW8xUKoJUsn0+ow9WNFuNq6hEA
         gq7/n7qlNkYhLj4t7FJ2/t9yopOd/9o3Zzm7Rsam5fs2d16kIp4BC65g8ceD6364dHJv
         WbNeao+Mh5jrYDJD6q2ywWhYLNupsuYn0/orG5JZeXgTmNOZMaJwSQSANFH0v6OqLM35
         0ULWAodJtSVafk0l9aJLekLw/tfxRa73dD7e6IgMaudXEbLChCumiJZkh+gPZ1bi290k
         kkyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=TPsFdJtj0VCXeFXouICFk8oU7clLy3EuVgltpOH/MOA=;
        b=BLY3zJIRrlp9LPJsG3o5wJsGGyqD0cTSszPVk3uSvXRHxIsGPvoQSwehniKgpZWZDN
         gg+1wHthGyKmfChEv2AoDUsSZgQDgdz4DzTCTasvWkINR1Ka8AMWLIZAj+ysNqw86u+3
         Dp5bPqD4hsr0zEDDbjCVhABxODrd2yzSDbzvjRo5/nhmddbKuJLZIvdAzMPACslSq0JH
         Jd91TAmFY8ZOEJj6E4ZRxNeMDUeCXpbkSUkU7rXlPAml3ocgD7353RFXSET5VA6Jg5eV
         QFQIquZkcSSy1cH3h1jfin33RNBVKQG62AJj8pUZvaHgyh7f60ki1Tc9Let0a7RTta0Z
         Wj9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id 131si1891868pfa.2.2021.04.07.14.37.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: ULeO8xswAVJnyERMg0OJkeOfWJTMXW2QehgtqjN3DqkY7lfwepnrWN6ejejdEr2xlPKbtEAWrF
 aSJ5LMiz58FQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="278667214"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; 
   d="gz'50?scan'50,208,50";a="278667214"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2021 14:37:49 -0700
IronPort-SDR: JExzZJtE0J/qVkTkUw823aKPr3scanhtRdILo2/JFRbpsF/THXKgm094cToyQfitku4k+5wX6H
 1EeRNSd1G/oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; 
   d="gz'50?scan'50,208,50";a="396815028"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 07 Apr 2021 14:37:47 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUFru-000DpD-E1; Wed, 07 Apr 2021 21:37:46 +0000
Date: Thu, 8 Apr 2021 05:37:36 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	devel@driverdev.osuosl.org
Subject: [driver-core:tty-test 9/9] drivers/tty/tty_buffer.c:604:40: error:
 use of undeclared identifier 'TTY_LOCK_SLAVE'
Message-ID: <202104080528.43H9TctQ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git tty-test
head:   bb57c5de81c6feaad869acce7c38b1049115ac75
commit: bb57c5de81c6feaad869acce7c38b1049115ac75 [9/9] tty: move some internal tty lock enums and functions out of tty.h
config: s390-randconfig-r032-20210407 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c060945b23a1c54d4b2a053ff4b093a2277b303d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=bb57c5de81c6feaad869acce7c38b1049115ac75
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core tty-test
        git checkout bb57c5de81c6feaad869acce7c38b1049115ac75
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/tty/tty_buffer.c:604:40: error: use of undeclared identifier 'TTY_LOCK_SLAVE'
           lockdep_set_subclass(&port->buf.lock, TTY_LOCK_SLAVE);
                                                 ^
   1 error generated.
--
>> drivers/tty/tty_mutex.c:59:43: error: use of undeclared identifier 'TTY_LOCK_SLAVE'
           lockdep_set_subclass(&tty->legacy_mutex, TTY_LOCK_SLAVE);
                                                    ^
   1 error generated.


vim +/TTY_LOCK_SLAVE +604 drivers/tty/tty_buffer.c

1d1d14da12e79a Peter Hurley 2015-01-17  600  
1d1d14da12e79a Peter Hurley 2015-01-17  601  /* slave ptys can claim nested buffer lock when handling BRK and INTR */
1d1d14da12e79a Peter Hurley 2015-01-17  602  void tty_buffer_set_lock_subclass(struct tty_port *port)
1d1d14da12e79a Peter Hurley 2015-01-17  603  {
1d1d14da12e79a Peter Hurley 2015-01-17 @604  	lockdep_set_subclass(&port->buf.lock, TTY_LOCK_SLAVE);
1d1d14da12e79a Peter Hurley 2015-01-17  605  }
e176058f0de53c Peter Hurley 2015-10-17  606  

:::::: The code at line 604 was first introduced by commit
:::::: 1d1d14da12e79a6c05fbe1a975401f0f56c93316 pty: Fix buffer flush deadlock

:::::: TO: Peter Hurley <peter@hurleysoftware.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104080528.43H9TctQ-lkp%40intel.com.

--+QahgC5+KEYLbs62
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--+QahgC5+KEYLbs62--
