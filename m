Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7FSW6DAMGQEB7NO23I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 716993AD9DE
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 13:48:13 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id b23-20020a17090ae397b0290163949acb4dsf8513252pjz.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 04:48:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624103292; cv=pass;
        d=google.com; s=arc-20160816;
        b=NosCuLWIH3l3UbCBgD/a+9KU45H9uFoih0RoeF0E6KDBealuA80KBjsHjoLuikCR8A
         BFEoHign6aWnd7uLEd73/Lr3zweNvKnWUzk5FZyvJLvilasOE80lE3e3cvP2VoEvLv/B
         owGovDkbPMUjMXfZI0bJMuSfXNZ3UcZRDKIhhQONskEa45Ssl4LdpkfpaHXAnUoB4HlV
         YJFXFJZiMkEVXUNDNV0WbSktWhaT5rTKDNMGePg3nfBszYTilq36WX0a/7M6ivI73eM4
         hVncq/RwRuFLHqrxl7v1347XLJVG4NUiAZw0HqIrnyuDwMyaOHNC/ccl2jQgPct1Tdun
         BY7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=soKg6SMOZFmF3gnQsoWYojFQhsIlTpxURpmy3TjHny8=;
        b=WIGcTdMKiqIfRTafQnshnjrdADMZpIJrtl8tWIwZN/yLOYVRFZcjvTRFOBwavJkM00
         HA8i6g46sdTR69PteMmaX6UGUMEx3OQeyK4WtBjLppU4Gklv6+Md3ENqWc27T+af3OF0
         j5QaIA2WdNVVal1UKzuAB0TP0LNQYPpCyG2p2oMFjmXh9v7Or5VlzY3zP4hOi1cGfavz
         U7HrMUFYCoPziPSGfg8ynRvmAJ8UfL1IfRGtfCpbOFUf/+LTW75Mi6nkK22QsuCAm0GA
         PiIBQtb775S8gbOUwy3gptxSXRU/TvxLGs+2G9GQCdIrNEzDqk1Y2bitbIFOQZb5szAk
         ueZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=soKg6SMOZFmF3gnQsoWYojFQhsIlTpxURpmy3TjHny8=;
        b=NKQPx3o76SYInl+C4a0D9QZCsyMT9xVLFGuaou9pQ0A7RLsugGuKQdtFM122ODkShU
         Nw9vRT63lco+w3mcvA4CTUgc5i3Iaeo67+RN3zrQycCoaCNoK2jxAKG8In9nEd1ApjUC
         44UEWHvjhnONo9hbtuC/xCvjV/sDQ5Fs0pnEdeELh2aTWQWSXjOLKTQo/EiNwJ+NhQsA
         Q2uFzo2PzkRvzM5HZStLWOi2tggWB8a994XGn6RKDrB0qfOK75QX4QS6HqajHFmRygIz
         CCcMYtsDDp8u5gswmvPbeNBE3A4WcWTq827PXk2ZxI5ADxWkVPrsmRqrohORAnMekSWP
         U+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=soKg6SMOZFmF3gnQsoWYojFQhsIlTpxURpmy3TjHny8=;
        b=IHr10fUC5S5dNfZVcKC5RTlZh7Mn9nfyRrfApH+JG8vhJo6+wi+6FeRd91Op5LcCyp
         qPbyy5J9gdK453x20FTamEk6Q19jFc/9QCEl8nUm1FWv1fDXFjt1VolgBcWEZtSJLlph
         VeBnjFHUnIeS22KmAJsCC2U8Vt7ew3vNxm6I8IhZoQVWq7A2t/I0fvB8SZsJzCShT57K
         PGJmvXebOnHEtZZQniQ8tbQ4vGukz+heroXDQUOpCsX57a63ALXr4xrQzCsQAw7OZp/S
         CJyo3Oo7GlvMT1n4NYI20/prYJ/nCu1G1BXZU6or45dxhHf3MvR7lrNxsDVg+Qb61/s0
         Yw5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VegQ0mIhotfhSuIt/7zlDzXf3gkQ1Dz6zBUTYL0tVHwcG4l9N
	yPPCKUmfWyNJqEFSUgnuWvI=
X-Google-Smtp-Source: ABdhPJx5cEs/AQY/yw9P/tUqtpKEw7zwT8EenNqs6ZPY6dmyNeLud6bfEqB1w9uMz2JaL4MTtKlFHQ==
X-Received: by 2002:a17:90a:4d84:: with SMTP id m4mr26414363pjh.136.1624103292108;
        Sat, 19 Jun 2021 04:48:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:d418:: with SMTP id a24ls2141649pfh.4.gmail; Sat, 19 Jun
 2021 04:48:11 -0700 (PDT)
X-Received: by 2002:a63:4145:: with SMTP id o66mr14728776pga.4.1624103291489;
        Sat, 19 Jun 2021 04:48:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624103291; cv=none;
        d=google.com; s=arc-20160816;
        b=uVsAVfSLccfuJudJvXmHMImr+k5o7Qgl8Mo89YZnUK0gY5pdDwaiBDFnBkbw1HDlKF
         ip0EsRvMAEjub/Enw1voxucFAzJRY1+l0xQR5j/J+WkzrPlGeCdXjFc0QBuDKyMo8riJ
         n7AEt+9j6S9cO3trCHjSZNu85ASicY4aOQGD7cWUIsBvbyddJ3GhQZ16YZAasDFuLiON
         mD7UwSVyMs12zydc0Kx6ZhWk2i80cJja2kHBg32ZohKZoBiCHXDABfpxnW/NgGccpIlh
         ddwjHq9BVsqoHWy7RBP6o7SKMkbRsVivoG4VkM2asdHz4cM8DynMkp5aN4MLvYVaTDHw
         L2CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=JuivygZOJEihaybAQ6NqAYiKDbwbamDgKYC928lmzhM=;
        b=N58ULOYb/CndiaiRkr2CDZ0Nj1QbmnrBNYUAck9E+NxZHsYtmBePDoI9Wprgknr3/0
         m8Mc1AmRT/SEd/zUkx6PzDKGYauwYgD3jBcvQlzVYK6B3CqmON9IZyxo3Fu70B4+tkWw
         n9zwI1vwhi3QLQqBAy/mppAOglmFjI08xPvH8q4cE4dyelZDSWT+7CYcnI0jzqs75xhx
         rUPH2qYZuuTTLdyHEpKdYvxTFcVpO2zctc/sEvqSK7nQxFxyc85EW2Gcx2X4HgwYrnKQ
         Nkd4JfJDrtapJnikSS9rMbxkjsn2Arf+CFmAkpMn+QkQsVHXNAvu0YF39RHGml4Nzge3
         NaoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id z10si606025pfk.4.2021.06.19.04.48.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Jun 2021 04:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: XG4YhbK2u0TJeP0/F0rN2dwG+2NDSS2q1QuqALTzIwI2fRTQeA6Tvy5HbmDW5lkwtBCe3T9gPn
 HIgfME8eG5ZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="187042399"
X-IronPort-AV: E=Sophos;i="5.83,285,1616482800"; 
   d="gz'50?scan'50,208,50";a="187042399"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jun 2021 04:48:08 -0700
IronPort-SDR: whqmtFj39iVSKXPNHsClOvcKy9hshi10nXk7gmdd/+IrdjLAH1uBLKT3IKz77/QAiP7viO/4Lp
 dsB2VH9vihow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,285,1616482800"; 
   d="gz'50?scan'50,208,50";a="422474439"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 19 Jun 2021 04:48:06 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1luZSH-0003XI-LK; Sat, 19 Jun 2021 11:48:05 +0000
Date: Sat, 19 Jun 2021 19:47:12 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [kees:kspp/memcpy/next-20210618/v0 54/82]
 arch/s390/boot/../lib/string.c:11:9: warning: '__NO_FORTIFY' macro redefined
Message-ID: <202106191905.vm6wpDUn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="OgqxwSJOaUobr8KG"
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


--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git kspp/memcpy/next-20210618/v0
head:   fd2aa2a169de8bde9502e7a2fc48cd03d4bfd996
commit: 245fccabb5777708f67afa04fc6b99a3f794986f [54/82] lib/string: Move helper functions out of string.c
config: s390-randconfig-r034-20210618 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d1baf2895467735ab14f4b3415fce204c0cc8e7f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?id=245fccabb5777708f67afa04fc6b99a3f794986f
        git remote add kees https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git
        git fetch --no-tags kees kspp/memcpy/next-20210618/v0
        git checkout 245fccabb5777708f67afa04fc6b99a3f794986f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/s390/boot/string.c:7:
>> arch/s390/boot/../lib/string.c:11:9: warning: '__NO_FORTIFY' macro redefined [-Wmacro-redefined]
   #define __NO_FORTIFY
           ^
   <command line>:4:9: note: previous definition is here
   #define __NO_FORTIFY 1
           ^
   1 warning generated.
--
   In file included from arch/s390/boot/string.c:7:
>> arch/s390/boot/../lib/string.c:11:9: warning: '__NO_FORTIFY' macro redefined [-Wmacro-redefined]
   #define __NO_FORTIFY
           ^
   <command line>:5:9: note: previous definition is here
   #define __NO_FORTIFY 1
           ^
   1 warning generated.


vim +/__NO_FORTIFY +11 arch/s390/boot/../lib/string.c

  > 11	#define __NO_FORTIFY
    12	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106191905.vm6wpDUn-lkp%40intel.com.

--OgqxwSJOaUobr8KG
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--OgqxwSJOaUobr8KG--
