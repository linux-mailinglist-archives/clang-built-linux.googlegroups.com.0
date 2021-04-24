Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBB6FSGCAMGQEROGACNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACB836A293
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 20:25:13 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id d1-20020a67ed810000b02901a9fcd861fasf9622679vsp.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 11:25:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619288712; cv=pass;
        d=google.com; s=arc-20160816;
        b=VirtRxwUe1bxkSuurVqdOjbc1hNF3Xy1diYZHgEX+narnBWcYfiVxo54hJRQOS0ubn
         Wt4KxqvR4mAlmMAa4Bav6XtdkxV9P2coca0YEuwznsAgnCjlKCUL94ciPebTaM8CCygv
         io/Puy5MH/AdybvzIBMzR+GPVvKHsPx8atmrNCc1EeQT1w96oa64zvNE8sML6VjmFSyl
         ruzkPkwz2F6dAPuIweMTxlsXBbhIDYkfe0+MMvbaj50HPHhovlKqHRplinlGxHrZ8+BU
         5gdu9viD7iSvFTie6QNvrFyP6tuyHpxiDrAjiufHfdGH8Dm2nbxUs93Z/SkHY7N8j276
         fJbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=oys9MBqsRhQ3U0HLAf2OUsdJnldjWkJ2r8lncvwGHbI=;
        b=fLGf+adrbU3PwEcqcWTnRSDfE0n+CYYrQ0fwql50hqE/O92fdY17+FSg/Clk+5A5jV
         K7KS93k7Tkqt3Hu33aD3LxXAv0uOedYGhMR0mSjcpvIno1tvSsvxt7t0bg412r+8Aj5c
         cFaXt0p4q+JPnKwV30yqUWxnB57ckZsDf8Ps9vt64vmTe9v2cg7yTJBmSNWnlKXZJ1JP
         2CWHlBspLJpwblqcH7snm6F2R0N4sbVoheyf92caAsdZjycTpnl6SWk7nRDGr6pl3lZR
         gHi++VczM1mK4qqfKpvTDmDV03Oqjo6phy/hPobnUFwZ2C1CUwED9MjXq1W20r+NI/dl
         PHhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oys9MBqsRhQ3U0HLAf2OUsdJnldjWkJ2r8lncvwGHbI=;
        b=s082Wj0r8D/qqN8VB5Swi4is/BC/ALub2DHiN9gQNgoUFWKpmwvoku6C10CIUyPC9f
         zeWbfil6R2vR8mvfidi99jn1WgqFnnJ82RwwFn6kM4EpY9nhcBCwII3FmUM5sSbghQLA
         P5H0lfzA+j8ZaY2ur1BSV0LZPAOleg0s4v7Aywzzoe4JVm9u8jBtEXmBrWdNtLOyBPpA
         kHJ5yd0mRO+RpKbA6eYCniOHYPlg9rt2akrrxqnK4K2ubaH6snrZPXgsK+QjLy/aATLJ
         /+9W2aXpAVwZOi3NKw1vDOr5VtPhL7EQa4XzfNP8RMbhgCKIJ4lYVLZg7LsMqEZsyuYH
         cJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oys9MBqsRhQ3U0HLAf2OUsdJnldjWkJ2r8lncvwGHbI=;
        b=FNbJLYGvMfbQ/mC1W8s6ikK8GtmswI14df9cEUuUPLUawcEVDN+w95OnHQaTu0lclK
         t/CmCxqCbm2Ie3Bq3k6nNRasKmTaoMra/cWnfAuFZegEbB+iNMfafVCAvlz8SAq/R+bN
         J8+R7zQ8ApRe+BdcauU1F+CtJJtx7AsmCuivuJj6409fWkzdGLLiuDp1lneP8oYqLfbW
         rOGyhD3m/iSI52C3G03HB+fKFDB1GBWlAa2nlPnGxwP26RW8onV02PSW5rgAp41jjSra
         LmAcwVKMEwLDhDos38CcEkTSmla0DuNUZ90ooWu4I1c66GMk7/89JbyrEsQvXlPM0I3u
         uSlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531saeniYm9aXsd5zvgLGuDbKliW2TrC5ZRV8nIaxek5s8D6Hod5
	0iLQ6ij14ONu6YQUUQx6D84=
X-Google-Smtp-Source: ABdhPJxX0eEvjTNY/ef2/vK9KEoqxdXAfBAIqnuJa64WJ529oj5ZMzAG0NMunnk8wu7+BpEto9SM8w==
X-Received: by 2002:a67:2245:: with SMTP id i66mr7706568vsi.36.1619288712021;
        Sat, 24 Apr 2021 11:25:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9985:: with SMTP id b127ls914841vke.4.gmail; Sat, 24 Apr
 2021 11:25:11 -0700 (PDT)
X-Received: by 2002:a1f:1c92:: with SMTP id c140mr7963043vkc.20.1619288711290;
        Sat, 24 Apr 2021 11:25:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619288711; cv=none;
        d=google.com; s=arc-20160816;
        b=Sr/ZZ1SsmwckTWNPA3AedWhiZFEGhaQ0iQJXehWai60LvyeJDIwyrR2vS25ETD2VYD
         PL4W1mzSC/OVtu6WZ5vSRNMNMygpal7iG5mzFdPzY7h+q0IqOuIEP6dM2jhCQsmuLA1k
         lIC3DUJCIwpSAhWOSA+xBMY9yxRwVZYNZ/Cz99KCpgpTnmy9N0lei1bwgYO8bTJ3JGmk
         EG2SqlVJDFfiBSkv1cIERvmPChPYFf7JpOqKJ0Tk0P3LAiXeOj/XDkg3vmehM5lMvdyT
         UmD6TNYHzLFsJk98XWUB3Cvopvml7kau23X9tRDxHMVazNTHZtCRE92nW+/rj2aWi1K8
         pYBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=UxGGJr0TYxHHFPYEIpE9W68snutuvnevPGuu2Kduk3k=;
        b=jtMaeKR5giOmBz1xs2JM6/NkFDowHRVhfAOmXRahOa4XaQWFMb/QUy3ZeeqD3jtx9Q
         J8QZpFtQdi9hZs5jMELFNQeS/b+0ozAx0ryjaBmDcmFszH1iHGJh93uP0RIMXAZkY3rq
         OqoVb/z4SffgqRD0O11do30Ez40ahuFiXCGSMKJrT9bf11PaTIAi6fvZRwpXBXOjGvlS
         yXSmNFQdcLxTYxWCyRo5XfAUko08DaAPiic0drLNQ9ij/vo4x2S7Q/jQuA/tnxaqHlS+
         tCHEoZwjJt1yBOTtR6zo8batOnoHzhfRo8utwkaiL936bHZYjL06dcaPUDJcH9zdw3lT
         hBTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id x24si717965vsr.1.2021.04.24.11.25.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Apr 2021 11:25:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: +C3lMemZh8t7f2AbRik8pr1iIs/xd5b31li4lGeYqcDUi6Z4gIlyVRSY2kAcu5P4TMUDEOPD3g
 qXVK/lIpW5Dw==
X-IronPort-AV: E=McAfee;i="6200,9189,9964"; a="216884118"
X-IronPort-AV: E=Sophos;i="5.82,248,1613462400"; 
   d="gz'50?scan'50,208,50";a="216884118"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2021 11:25:09 -0700
IronPort-SDR: 1w0EIUVg/L/zRX1aj5O9U5XTWBI0tI3oVY94EvrBNJLEFVsbtf70c32wD0Y8Qe3gcK6rMeHDvw
 jzwecTFfF0fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,248,1613462400"; 
   d="gz'50?scan'50,208,50";a="453859571"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 24 Apr 2021 11:25:06 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1laMxl-0005Cj-Kq; Sat, 24 Apr 2021 18:25:05 +0000
Date: Sun, 25 Apr 2021 02:24:47 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1948:12: warning: stack
 frame size of 2896 bytes in function 'amdgpu_device_ip_early_init'
Message-ID: <202104250240.VCqn9Cnn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   8db5efb83fa99e81c3f8dee92a6589b251f117f3
commit: 97e4910232fa1f81e806aa60c25a0450276d99a2 linux/compiler-clang.h: de=
fine HAVE_BUILTIN_BSWAP*
date:   6 weeks ago
config: powerpc-randconfig-r031-20210424 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8e9d17=
fd4243faa954ae35a4da94e5e922e458e5)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3D97e4910232fa1f81e806aa60c25a0450276d99a2
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 97e4910232fa1f81e806aa60c25a0450276d99a2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D=
1 ARCH=3Dpowerpc=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:39:
   include/linux/efi.h:1093:34: warning: passing 1-byte aligned argument to=
 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer=
 access [-Walign-mismatch]
           status =3D get_var(L"SecureBoot", &EFI_GLOBAL_VARIABLE_GUID, NUL=
L, &size,
                                           ^
   include/linux/efi.h:1101:24: warning: passing 1-byte aligned argument to=
 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer=
 access [-Walign-mismatch]
           get_var(L"SetupMode", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size, &s=
etupmode);
                                 ^
>> drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1948:12: warning: stack frame=
 size of 2896 bytes in function 'amdgpu_device_ip_early_init' [-Wframe-larg=
er-than=3D]
   static int amdgpu_device_ip_early_init(struct amdgpu_device *adev)
              ^
   3 warnings generated.
--
>> drivers/gpu/drm/r128/r128_state.c:1203:12: warning: stack frame size of =
2128 bytes in function 'r128_cce_clear' [-Wframe-larger-than=3D]
   static int r128_cce_clear(struct drm_device *dev, void *data, struct drm=
_file *file_priv)
              ^
   1 warning generated.
--
>> drivers/mtd/ftl.c:862:12: warning: stack frame size of 2624 bytes in fun=
ction 'ftl_write' [-Wframe-larger-than=3D]
   static int ftl_write(partition_t *part, caddr_t buffer,
              ^
   1 warning generated.


vim +/amdgpu_device_ip_early_init +1948 drivers/gpu/drm/amd/amdgpu/amdgpu_d=
evice.c

e2a75f88c3ad4b Alex Deucher   2017-04-27  1937 =20
e3ecdffac9ccdb Alex Deucher   2018-03-15  1938  /**
e3ecdffac9ccdb Alex Deucher   2018-03-15  1939   * amdgpu_device_ip_early_i=
nit - run early init for hardware IPs
e3ecdffac9ccdb Alex Deucher   2018-03-15  1940   *
e3ecdffac9ccdb Alex Deucher   2018-03-15  1941   * @adev: amdgpu_device poi=
nter
e3ecdffac9ccdb Alex Deucher   2018-03-15  1942   *
e3ecdffac9ccdb Alex Deucher   2018-03-15  1943   * Early initialization pas=
s for hardware IPs.  The hardware IPs that make
e3ecdffac9ccdb Alex Deucher   2018-03-15  1944   * up each asic are discove=
red each IP's early_init callback is run.  This
e3ecdffac9ccdb Alex Deucher   2018-03-15  1945   * is the first stage in in=
itializing the asic.
e3ecdffac9ccdb Alex Deucher   2018-03-15  1946   * Returns 0 on success, ne=
gative error code on failure.
e3ecdffac9ccdb Alex Deucher   2018-03-15  1947   */
06ec907054c5a4 Alex Deucher   2017-12-14 @1948  static int amdgpu_device_ip=
_early_init(struct amdgpu_device *adev)
d38ceaf99ed015 Alex Deucher   2015-04-20  1949  {
aaa36a976bbb9b Alex Deucher   2015-04-20  1950  	int i, r;
d38ceaf99ed015 Alex Deucher   2015-04-20  1951 =20
483ef98588aa9f Alex Deucher   2016-09-30  1952  	amdgpu_device_enable_virtu=
al_display(adev);
a6be7570518f85 Emily Deng     2016-08-08  1953 =20
00a979f3d69e0c Wenhui Sheng   2020-06-23  1954  	if (amdgpu_sriov_vf(adev))=
 {
00a979f3d69e0c Wenhui Sheng   2020-06-23  1955  		r =3D amdgpu_virt_request=
_full_gpu(adev, true);
aaa36a976bbb9b Alex Deucher   2015-04-20  1956  		if (r)
aaa36a976bbb9b Alex Deucher   2015-04-20  1957  			return r;
00a979f3d69e0c Wenhui Sheng   2020-06-23  1958  	}
00a979f3d69e0c Wenhui Sheng   2020-06-23  1959 =20
d38ceaf99ed015 Alex Deucher   2015-04-20  1960  	switch (adev->asic_type) {
33f34802686c8b Ken Wang       2016-01-21  1961  #ifdef CONFIG_DRM_AMDGPU_SI
33f34802686c8b Ken Wang       2016-01-21  1962  	case CHIP_VERDE:
33f34802686c8b Ken Wang       2016-01-21  1963  	case CHIP_TAHITI:
33f34802686c8b Ken Wang       2016-01-21  1964  	case CHIP_PITCAIRN:
33f34802686c8b Ken Wang       2016-01-21  1965  	case CHIP_OLAND:
33f34802686c8b Ken Wang       2016-01-21  1966  	case CHIP_HAINAN:
295d0dafd31c9a Ken Wang       2016-05-24  1967  		adev->family =3D AMDGPU_F=
AMILY_SI;
33f34802686c8b Ken Wang       2016-01-21  1968  		r =3D si_set_ip_blocks(ad=
ev);
33f34802686c8b Ken Wang       2016-01-21  1969  		if (r)
33f34802686c8b Ken Wang       2016-01-21  1970  			return r;
33f34802686c8b Ken Wang       2016-01-21  1971  		break;
33f34802686c8b Ken Wang       2016-01-21  1972  #endif
a2e73f56fa6282 Alex Deucher   2015-04-20  1973  #ifdef CONFIG_DRM_AMDGPU_CI=
K
a2e73f56fa6282 Alex Deucher   2015-04-20  1974  	case CHIP_BONAIRE:
a2e73f56fa6282 Alex Deucher   2015-04-20  1975  	case CHIP_HAWAII:
a2e73f56fa6282 Alex Deucher   2015-04-20  1976  	case CHIP_KAVERI:
a2e73f56fa6282 Alex Deucher   2015-04-20  1977  	case CHIP_KABINI:
a2e73f56fa6282 Alex Deucher   2015-04-20  1978  	case CHIP_MULLINS:
e1ad2d53bc438d Alex Deucher   2020-05-18  1979  		if (adev->flags & AMD_IS_=
APU)
a2e73f56fa6282 Alex Deucher   2015-04-20  1980  			adev->family =3D AMDGPU_=
FAMILY_KV;
e1ad2d53bc438d Alex Deucher   2020-05-18  1981  		else
e1ad2d53bc438d Alex Deucher   2020-05-18  1982  			adev->family =3D AMDGPU_=
FAMILY_CI;
a2e73f56fa6282 Alex Deucher   2015-04-20  1983 =20
a2e73f56fa6282 Alex Deucher   2015-04-20  1984  		r =3D cik_set_ip_blocks(a=
dev);
a2e73f56fa6282 Alex Deucher   2015-04-20  1985  		if (r)
a2e73f56fa6282 Alex Deucher   2015-04-20  1986  			return r;
a2e73f56fa6282 Alex Deucher   2015-04-20  1987  		break;
a2e73f56fa6282 Alex Deucher   2015-04-20  1988  #endif
da87c30b174e7a Alex Deucher   2020-05-18  1989  	case CHIP_TOPAZ:
da87c30b174e7a Alex Deucher   2020-05-18  1990  	case CHIP_TONGA:
da87c30b174e7a Alex Deucher   2020-05-18  1991  	case CHIP_FIJI:
da87c30b174e7a Alex Deucher   2020-05-18  1992  	case CHIP_POLARIS10:
da87c30b174e7a Alex Deucher   2020-05-18  1993  	case CHIP_POLARIS11:
da87c30b174e7a Alex Deucher   2020-05-18  1994  	case CHIP_POLARIS12:
da87c30b174e7a Alex Deucher   2020-05-18  1995  	case CHIP_VEGAM:
da87c30b174e7a Alex Deucher   2020-05-18  1996  	case CHIP_CARRIZO:
da87c30b174e7a Alex Deucher   2020-05-18  1997  	case CHIP_STONEY:
da87c30b174e7a Alex Deucher   2020-05-18  1998  		if (adev->flags & AMD_IS_=
APU)
da87c30b174e7a Alex Deucher   2020-05-18  1999  			adev->family =3D AMDGPU_=
FAMILY_CZ;
da87c30b174e7a Alex Deucher   2020-05-18  2000  		else
da87c30b174e7a Alex Deucher   2020-05-18  2001  			adev->family =3D AMDGPU_=
FAMILY_VI;
da87c30b174e7a Alex Deucher   2020-05-18  2002 =20
da87c30b174e7a Alex Deucher   2020-05-18  2003  		r =3D vi_set_ip_blocks(ad=
ev);
da87c30b174e7a Alex Deucher   2020-05-18  2004  		if (r)
da87c30b174e7a Alex Deucher   2020-05-18  2005  			return r;
da87c30b174e7a Alex Deucher   2020-05-18  2006  		break;
460826e6a061c2 Ken Wang       2017-03-06  2007  	case CHIP_VEGA10:
e48a3cd9cbb707 Alex Deucher   2017-09-01  2008  	case CHIP_VEGA12:
e4bd8170407dc5 Feifei Xu      2018-04-20  2009  	case CHIP_VEGA20:
2ca8a5d2ebd12c Chunming Zhou  2016-12-07  2010  	case CHIP_RAVEN:
61cf44c1dbb66c Le Ma          2018-09-11  2011  	case CHIP_ARCTURUS:
b51a26a02abe92 Huang Rui      2019-07-24  2012  	case CHIP_RENOIR:
70534d1ee89cea Alex Deucher   2020-05-18  2013  		if (adev->flags & AMD_IS_=
APU)
2ca8a5d2ebd12c Chunming Zhou  2016-12-07  2014  			adev->family =3D AMDGPU_=
FAMILY_RV;
2ca8a5d2ebd12c Chunming Zhou  2016-12-07  2015  		else
460826e6a061c2 Ken Wang       2017-03-06  2016  			adev->family =3D AMDGPU_=
FAMILY_AI;
460826e6a061c2 Ken Wang       2017-03-06  2017 =20
460826e6a061c2 Ken Wang       2017-03-06  2018  		r =3D soc15_set_ip_blocks=
(adev);
460826e6a061c2 Ken Wang       2017-03-06  2019  		if (r)
460826e6a061c2 Ken Wang       2017-03-06  2020  			return r;
460826e6a061c2 Ken Wang       2017-03-06  2021  		break;
0a5b8c7b9490e9 Huang Rui      2017-07-19  2022  	case  CHIP_NAVI10:
7ecb5cd451b7bc Xiaojie Yuan   2018-12-17  2023  	case  CHIP_NAVI14:
4808cf9c2a8242 Xiaojie Yuan   2019-05-16  2024  	case  CHIP_NAVI12:
11e8aef52ef854 Likun Gao      2019-03-19  2025  	case  CHIP_SIENNA_CICHLID:
41f446bf52f36b Jiansong Chen  2020-02-10  2026  	case  CHIP_NAVY_FLOUNDER:
144722fa3ac32c Tao Zhou       2020-10-02  2027  	case  CHIP_DIMGREY_CAVEFIS=
H:
4e52a9f8d5706b Huang Rui      2020-09-25  2028  	case CHIP_VANGOGH:
4e52a9f8d5706b Huang Rui      2020-09-25  2029  		if (adev->asic_type =3D=
=3D CHIP_VANGOGH)
4e52a9f8d5706b Huang Rui      2020-09-25  2030  			adev->family =3D AMDGPU_=
FAMILY_VGH;
4e52a9f8d5706b Huang Rui      2020-09-25  2031  		else
0a5b8c7b9490e9 Huang Rui      2017-07-19  2032  			adev->family =3D AMDGPU_=
FAMILY_NV;
0a5b8c7b9490e9 Huang Rui      2017-07-19  2033 =20
0a5b8c7b9490e9 Huang Rui      2017-07-19  2034  		r =3D nv_set_ip_blocks(ad=
ev);
0a5b8c7b9490e9 Huang Rui      2017-07-19  2035  		if (r)
0a5b8c7b9490e9 Huang Rui      2017-07-19  2036  			return r;
0a5b8c7b9490e9 Huang Rui      2017-07-19  2037  		break;
d38ceaf99ed015 Alex Deucher   2015-04-20  2038  	default:
d38ceaf99ed015 Alex Deucher   2015-04-20  2039  		/* FIXME: not supported y=
et */
d38ceaf99ed015 Alex Deucher   2015-04-20  2040  		return -EINVAL;
d38ceaf99ed015 Alex Deucher   2015-04-20  2041  	}
d38ceaf99ed015 Alex Deucher   2015-04-20  2042 =20
1884734a03904d pding          2017-11-06  2043  	amdgpu_amdkfd_device_probe=
(adev);
1884734a03904d pding          2017-11-06  2044 =20
3b94fb101f4071 Likun Gao      2019-01-31  2045  	adev->pm.pp_feature =3D am=
dgpu_pp_feature_mask;
a35ad98bf9d37b Shirish S      2019-09-12  2046  	if (amdgpu_sriov_vf(adev) =
|| sched_policy =3D=3D KFD_SCHED_POLICY_NO_HWS)
005440066f929b Huang Rui      2019-03-13  2047  		adev->pm.pp_feature &=3D =
~PP_GFXOFF_MASK;
00f54b97d7de97 Huang Rui      2018-02-27  2048 =20
d38ceaf99ed015 Alex Deucher   2015-04-20  2049  	for (i =3D 0; i < adev->nu=
m_ip_blocks; i++) {
d38ceaf99ed015 Alex Deucher   2015-04-20  2050  		if ((amdgpu_ip_block_mask=
 & (1 << i)) =3D=3D 0) {
ed8cf00ce4dcdd Huang Rui      2017-05-03  2051  			DRM_ERROR("disabled ip b=
lock: %d <%s>\n",
ed8cf00ce4dcdd Huang Rui      2017-05-03  2052  				  i, adev->ip_blocks[i]=
.version->funcs->name);
a1255107212675 Alex Deucher   2016-10-13  2053  			adev->ip_blocks[i].statu=
s.valid =3D false;
d38ceaf99ed015 Alex Deucher   2015-04-20  2054  		} else {
a1255107212675 Alex Deucher   2016-10-13  2055  			if (adev->ip_blocks[i].v=
ersion->funcs->early_init) {
a1255107212675 Alex Deucher   2016-10-13  2056  				r =3D adev->ip_blocks[i=
].version->funcs->early_init((void *)adev);
2c1a2784039442 Alex Deucher   2015-12-07  2057  				if (r =3D=3D -ENOENT) {
a1255107212675 Alex Deucher   2016-10-13  2058  					adev->ip_blocks[i].sta=
tus.valid =3D false;
2c1a2784039442 Alex Deucher   2015-12-07  2059  				} else if (r) {
a1255107212675 Alex Deucher   2016-10-13  2060  					DRM_ERROR("early_init =
of IP block <%s> failed %d\n",
a1255107212675 Alex Deucher   2016-10-13  2061  						  adev->ip_blocks[i].=
version->funcs->name, r);
d38ceaf99ed015 Alex Deucher   2015-04-20  2062  					return r;
2c1a2784039442 Alex Deucher   2015-12-07  2063  				} else {
a1255107212675 Alex Deucher   2016-10-13  2064  					adev->ip_blocks[i].sta=
tus.valid =3D true;
2c1a2784039442 Alex Deucher   2015-12-07  2065  				}
974e6b641f1428 Alex Deucher   2015-07-10  2066  			} else {
a1255107212675 Alex Deucher   2016-10-13  2067  				adev->ip_blocks[i].stat=
us.valid =3D true;
974e6b641f1428 Alex Deucher   2015-07-10  2068  			}
d38ceaf99ed015 Alex Deucher   2015-04-20  2069  		}
21a249ca02415c Alex Deucher   2019-06-17  2070  		/* get the vbios after th=
e asic_funcs are set up */
21a249ca02415c Alex Deucher   2019-06-17  2071  		if (adev->ip_blocks[i].ve=
rsion->type =3D=3D AMD_IP_BLOCK_TYPE_COMMON) {
6e29c227a49764 Alex Deucher   2020-05-15  2072  			r =3D amdgpu_device_pars=
e_gpu_info_fw(adev);
6e29c227a49764 Alex Deucher   2020-05-15  2073  			if (r)
6e29c227a49764 Alex Deucher   2020-05-15  2074  				return r;
6e29c227a49764 Alex Deucher   2020-05-15  2075 =20
21a249ca02415c Alex Deucher   2019-06-17  2076  			/* Read BIOS */
21a249ca02415c Alex Deucher   2019-06-17  2077  			if (!amdgpu_get_bios(ade=
v))
21a249ca02415c Alex Deucher   2019-06-17  2078  				return -EINVAL;
21a249ca02415c Alex Deucher   2019-06-17  2079 =20
21a249ca02415c Alex Deucher   2019-06-17  2080  			r =3D amdgpu_atombios_in=
it(adev);
21a249ca02415c Alex Deucher   2019-06-17  2081  			if (r) {
21a249ca02415c Alex Deucher   2019-06-17  2082  				dev_err(adev->dev, "amd=
gpu_atombios_init failed\n");
21a249ca02415c Alex Deucher   2019-06-17  2083  				amdgpu_vf_error_put(ade=
v, AMDGIM_ERROR_VF_ATOMBIOS_INIT_FAIL, 0, 0);
21a249ca02415c Alex Deucher   2019-06-17  2084  				return r;
21a249ca02415c Alex Deucher   2019-06-17  2085  			}
21a249ca02415c Alex Deucher   2019-06-17  2086  		}
d38ceaf99ed015 Alex Deucher   2015-04-20  2087  	}
d38ceaf99ed015 Alex Deucher   2015-04-20  2088 =20
395d1fb948d98e Nicolai H=C3=A4hnle 2016-06-02  2089  	adev->cg_flags &=3D a=
mdgpu_cg_mask;
395d1fb948d98e Nicolai H=C3=A4hnle 2016-06-02  2090  	adev->pg_flags &=3D a=
mdgpu_pg_mask;
395d1fb948d98e Nicolai H=C3=A4hnle 2016-06-02  2091 =20
d38ceaf99ed015 Alex Deucher   2015-04-20  2092  	return 0;
d38ceaf99ed015 Alex Deucher   2015-04-20  2093  }
d38ceaf99ed015 Alex Deucher   2015-04-20  2094 =20

:::::: The code at line 1948 was first introduced by commit
:::::: 06ec907054c5a48f28ff6856885522e3a7103bb7 drm/amdgpu: use consistent =
naming for static funcs in amdgpu_device.c

:::::: TO: Alex Deucher <alexander.deucher@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202104250240.VCqn9Cnn-lkp%40intel.com.

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--PEIAKu/WMn1b1Hv9--
