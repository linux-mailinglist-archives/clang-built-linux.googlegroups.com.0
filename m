Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBAOMTCCQMGQEFBD6FUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E74338A088
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 11:04:03 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id m68-20020a6326470000b029020f37ad2901sf10107680pgm.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 02:04:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621501442; cv=pass;
        d=google.com; s=arc-20160816;
        b=qxsfN8eCwu6fj1uxvqOlq5ammzjF3S7bTq612dRQPJW0RtLv+pQR8JngUD0LWb69rp
         xJipQRNrti2UYosu36szf+sybw2Xd8Rfpg0TJrMAYjUjgt3HCxkS200fshRCaNgJCtmp
         bswU8wSsov1lPW8kLotZhgeFf/g9o0Gr+TPzBNz5xmuArEg5Xn0GmFyh2V8fpV8ReuS9
         bYHfpXRBF7Nnhnb+ym+dZOsu/I5bnBcC2U2fHcdDiTkVUntlK24NDgdI5VAyqB+Vp1rd
         zSRMK4YAL0oux0woR0fZ4U7/FaKn8SFFfc3mmgIYT/8s5fWLo5Qts1iNzAGBCPQT6mFZ
         gFbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=p28q+oH78EccI0MztI9c+W/vjtMEgFtKK2cOauiNEwg=;
        b=GMm03oCi7ffg+S2D3m/a839x4yMJWaaWLNK+kOTHiCDpw8NLmIflkxysH4oJXgyvQA
         Jj44YQBlKy5VXxP+/2ePZD7rlwhG1A+ZrzuLDXOAZ5exZBxBJW+17jw1SdbXtn42d7kh
         QZoZiXkJdGqzywPH2oIYG99Y3BERTZYTUdNafuQI3kou/DGVpm2rKjSMD3e/7JTB1LZ2
         hmqUcqErQ8jfXaDsaF2iVl54umNJgzlJm/X1s0WdGsVWBOlOVYDHZzLSN/UgguKqyobf
         XyEVn9KTS8id+HIOgzDAI7PqMvWEFubyRbCVV5Ox4unoRLaf6KA7+MFNfWJkHCbxgkMi
         lzdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p28q+oH78EccI0MztI9c+W/vjtMEgFtKK2cOauiNEwg=;
        b=taFrcRVULNoqyGMR36WVfSsdiSda3hpP1ZXZKfJyNKsl19GP7GFVGxZcHkwcZLBzZc
         kOze6zi2ivui3HqZJTYpIcrwMfSteyeu6unzc5ZGCt/Iwh1rgLX4PooLoHIgOtqM2kA6
         8LeEPB/Bkxhp94pk0nqYb/ma00ZNmA8KYxLj4i+O2+mS7bKKEFJXtZLFHz+R427Xzcg3
         4GdRlIHOQXPmRWYr4iWntjgPjKFyRgr/zeVk/4wlgH393qa5q3iZPMOvuVgBuDh589xG
         uY9T6q34mWKo71/9uNkJ9TuWJ/135pEIrwLV7krI6cPG79boaSFmk3lmUP2CG/beLJEQ
         orJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p28q+oH78EccI0MztI9c+W/vjtMEgFtKK2cOauiNEwg=;
        b=HNBTwAuBARfNV84yKvDAQY843D33+mqBH9mQu9K4VrVFzeh9NsP9l5uQmB1H5Xzzbv
         7Y1wKScurbujm6/QEoY7fdUrjCFQTxw+lonfqx/lGeUzdD/QN8nB02KTz5rd6AgZ8VWy
         sqTnpBxtXIYWPHPQZRQlnonvGPoEoWveXlRp3lym1clvk88FPA36AV5j36NU1W4TlRjb
         KFtDJxdqlPzScTuJa9yqMERY2TFPQTS8GzuP3v6EnRpUi/DqdBA7G1q+SrVPcBqwYvVE
         dQ9pRwrHtNARy1l0slwhKvxITrReCcMGLX+k9RbI4jgVEzalFNCp2BtnAQyJ67rva0y1
         onXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335P7Nfe/f+zV9gDQ4D5N3swUE3KdU6lhGn4M7R5fJSzGSUOe6P
	AChonZzzRwKwvOGTk4QIdlI=
X-Google-Smtp-Source: ABdhPJzbPJk46yabE7S5wuwjPv9c0dtnHp9vcx1XbSd4737IRIdPmY++YZv95jS00t7Apd9mWH/1Tg==
X-Received: by 2002:a17:902:eccf:b029:f0:d163:4164 with SMTP id a15-20020a170902eccfb02900f0d1634164mr4660521plh.53.1621501441886;
        Thu, 20 May 2021 02:04:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e16:: with SMTP id d22ls1246405pgl.8.gmail; Thu, 20 May
 2021 02:04:01 -0700 (PDT)
X-Received: by 2002:a63:521a:: with SMTP id g26mr3595568pgb.279.1621501441260;
        Thu, 20 May 2021 02:04:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621501441; cv=none;
        d=google.com; s=arc-20160816;
        b=B8QmhKLMKRzk35i7Tt4SnzTo2afMuV1PYjcmI48qJ9qLyJiTeirsQKgcywU9q2IJvy
         BuLSW4a6DgQuae8I+GHXS5HJZFZMp71r8YLK1Kv8U0/QRqsBGBgrH5yXf7qBtpKgTVsm
         kzZcxHZBUmjr3ZwzZfPT7s/7FDwf5YcybClmhNq6FSno2dvXZBINaOPx0UZRGC9mcZfv
         6tuHNKv5cJ8ePlTU0vQHKYkZwd7ZrMWIn1cvxG8HRd9bgWmgzEkgTLub8iYONIG4cB9+
         bW7WltOt4vKM8ajVZz1XXPsLQVRUT6G/Mff7Wqw5Io7xocO/jNXv9Qb+TinnBr39LV3u
         n4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=LFPoTNQhjZg15USm1Aq7FYGPowjQCNy0PVHAlfP5F9c=;
        b=TQ5z84p8DVc/N2GkVFlkWAUtcyMUMYs38RZUSTkwneJPCEV9yTyAD9HAyQ+eAsCIg0
         PFsiR32yZiQoGNTSKS6jRJsYuyeqGMvFsMifDH81SZriXBz2s12ZGqcZSjlURy8E7Myz
         2tE2P1Phko+ZGKCpkXMXVRqLTU38jm2JTl1j0/1CHHRqjB65vm39lzUk+Texn1dLgfIK
         R1WYV6wFG712KjiDea8uCqgATm1I1Mz10VTjhWgOP3hn0UtFdx5ZoBSmCrF1lWPX68e1
         lPw5E/1eA9JbaYxmBpFyaG30plKt/FViMu/uKi3QYuY+WHxh8B71+XqRYQDSHkPfd8bI
         Ixdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id a10si267863pgv.3.2021.05.20.02.04.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 02:04:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: TBzIrJvjp+3upXUhX1xVVfpsGFc6Mrs2PzsvHalvsvAsaxQe4MhDXyKkx6VRVtRxyxdgOi8aOZ
 NAvsE8EE7ZdQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="265094093"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="gz'50?scan'50,208,50";a="265094093"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 02:03:58 -0700
IronPort-SDR: 5C4o+zuarvBlX1ymxavIR97COV9t8XjDVNLMQuFzKbK7oKRNt5UmveA2mQcZyCZ0K5K9PYYLZH
 7SBLyhbh+oag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="gz'50?scan'50,208,50";a="461801898"
Received: from lkp-server02.sh.intel.com (HELO 1b329be5b008) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 20 May 2021 02:03:56 -0700
Received: from kbuild by 1b329be5b008 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ljeax-0000W1-N3; Thu, 20 May 2021 09:03:55 +0000
Date: Thu, 20 May 2021 17:03:14 +0800
From: kernel test robot <lkp@intel.com>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	devel@driverdev.osuosl.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [staging:staging-next 201/268]
 drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack frame
 size of 1120 bytes in function 'rtw_wep_encrypt'
Message-ID: <202105201711.QuzeTqRK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
head:   b9f38e913a926b455e5048a95f53a993b515509f
commit: 1b11e893eda0907fc9b28696271e2d9c4337e42d [201/268] staging: rtl8723bs: replace private arc4 encryption with in-kernel one
config: powerpc64-randconfig-r011-20210520 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bf9ef3efaa99c02e7bfc4c57207301b8de39a278)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=1b11e893eda0907fc9b28696271e2d9c4337e42d
        git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
        git fetch --no-tags staging staging-next
        git checkout 1b11e893eda0907fc9b28696271e2d9c4337e42d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:126:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/rtl8723bs/core/rtw_security.c:8:
   In file included from drivers/staging/rtl8723bs/include/drv_types.h:20:
   In file included from drivers/staging/rtl8723bs/include/osdep_service.h:15:
   In file included from drivers/staging/rtl8723bs/include/osdep_service_linux.h:19:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:128:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/rtl8723bs/core/rtw_security.c:8:
   In file included from drivers/staging/rtl8723bs/include/drv_types.h:20:
   In file included from drivers/staging/rtl8723bs/include/osdep_service.h:15:
   In file included from drivers/staging/rtl8723bs/include/osdep_service_linux.h:19:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:130:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/rtl8723bs/core/rtw_security.c:8:
   In file included from drivers/staging/rtl8723bs/include/drv_types.h:20:
   In file included from drivers/staging/rtl8723bs/include/osdep_service.h:15:
   In file included from drivers/staging/rtl8723bs/include/osdep_service_linux.h:19:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:132:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/staging/rtl8723bs/core/rtw_security.c:8:
   In file included from drivers/staging/rtl8723bs/include/drv_types.h:20:
   In file included from drivers/staging/rtl8723bs/include/osdep_service.h:15:
   In file included from drivers/staging/rtl8723bs/include/osdep_service_linux.h:19:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:134:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack frame size of 1120 bytes in function 'rtw_wep_encrypt' [-Wframe-larger-than=]
   void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
        ^
>> drivers/staging/rtl8723bs/core/rtw_security.c:145:6: warning: stack frame size of 1088 bytes in function 'rtw_wep_decrypt' [-Wframe-larger-than=]
   void rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
        ^
>> drivers/staging/rtl8723bs/core/rtw_security.c:514:5: warning: stack frame size of 1136 bytes in function 'rtw_tkip_encrypt' [-Wframe-larger-than=]
   u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
       ^
>> drivers/staging/rtl8723bs/core/rtw_security.c:586:5: warning: stack frame size of 1104 bytes in function 'rtw_tkip_decrypt' [-Wframe-larger-than=]
   u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
       ^
   10 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MAC80211_LEDS
   Depends on NET && WIRELESS && MAC80211 && (LEDS_CLASS || LEDS_CLASS
   Selected by
   - CARL9170_LEDS && NETDEVICES && WLAN && WLAN_VENDOR_ATH && CARL9170


vim +/rtw_wep_encrypt +89 drivers/staging/rtl8723bs/core/rtw_security.c

554c0a3abf216c9 Hans de Goede 2017-03-29   84  
554c0a3abf216c9 Hans de Goede 2017-03-29   85  
554c0a3abf216c9 Hans de Goede 2017-03-29   86  /*
554c0a3abf216c9 Hans de Goede 2017-03-29   87  	Need to consider the fragment  situation
554c0a3abf216c9 Hans de Goede 2017-03-29   88  */
554c0a3abf216c9 Hans de Goede 2017-03-29  @89  void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
554c0a3abf216c9 Hans de Goede 2017-03-29   90  {																	/*  exclude ICV */
554c0a3abf216c9 Hans de Goede 2017-03-29   91  
554c0a3abf216c9 Hans de Goede 2017-03-29   92  	unsigned char crc[4];
1b11e893eda0907 Fabio Aiuto   2021-05-07   93  	struct arc4_ctx	mycontext;
554c0a3abf216c9 Hans de Goede 2017-03-29   94  
d495c5503d1339c Marco Cesati  2021-03-12   95  	signed int	curfragnum, length;
554c0a3abf216c9 Hans de Goede 2017-03-29   96  	u32 keylength;
554c0a3abf216c9 Hans de Goede 2017-03-29   97  
554c0a3abf216c9 Hans de Goede 2017-03-29   98  	u8 *pframe, *payload, *iv;    /* wepkey */
554c0a3abf216c9 Hans de Goede 2017-03-29   99  	u8 wepkey[16];
554c0a3abf216c9 Hans de Goede 2017-03-29  100  	u8 hw_hdr_offset = 0;
554c0a3abf216c9 Hans de Goede 2017-03-29  101  	struct pkt_attrib *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
554c0a3abf216c9 Hans de Goede 2017-03-29  102  	struct security_priv *psecuritypriv = &padapter->securitypriv;
554c0a3abf216c9 Hans de Goede 2017-03-29  103  	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
554c0a3abf216c9 Hans de Goede 2017-03-29  104  
554c0a3abf216c9 Hans de Goede 2017-03-29  105  	if (((struct xmit_frame *)pxmitframe)->buf_addr == NULL)
554c0a3abf216c9 Hans de Goede 2017-03-29  106  		return;
554c0a3abf216c9 Hans de Goede 2017-03-29  107  
554c0a3abf216c9 Hans de Goede 2017-03-29  108  	hw_hdr_offset = TXDESC_OFFSET;
554c0a3abf216c9 Hans de Goede 2017-03-29  109  	pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;
554c0a3abf216c9 Hans de Goede 2017-03-29  110  
554c0a3abf216c9 Hans de Goede 2017-03-29  111  	/* start to encrypt each fragment */
554c0a3abf216c9 Hans de Goede 2017-03-29  112  	if ((pattrib->encrypt == _WEP40_) || (pattrib->encrypt == _WEP104_)) {
554c0a3abf216c9 Hans de Goede 2017-03-29  113  		keylength = psecuritypriv->dot11DefKeylen[psecuritypriv->dot11PrivacyKeyIndex];
554c0a3abf216c9 Hans de Goede 2017-03-29  114  
554c0a3abf216c9 Hans de Goede 2017-03-29  115  		for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
554c0a3abf216c9 Hans de Goede 2017-03-29  116  			iv = pframe+pattrib->hdrlen;
554c0a3abf216c9 Hans de Goede 2017-03-29  117  			memcpy(&wepkey[0], iv, 3);
554c0a3abf216c9 Hans de Goede 2017-03-29  118  			memcpy(&wepkey[3], &psecuritypriv->dot11DefKey[psecuritypriv->dot11PrivacyKeyIndex].skey[0], keylength);
554c0a3abf216c9 Hans de Goede 2017-03-29  119  			payload = pframe+pattrib->iv_len+pattrib->hdrlen;
554c0a3abf216c9 Hans de Goede 2017-03-29  120  
554c0a3abf216c9 Hans de Goede 2017-03-29  121  			if ((curfragnum+1) == pattrib->nr_frags) {	/* the last fragment */
554c0a3abf216c9 Hans de Goede 2017-03-29  122  
554c0a3abf216c9 Hans de Goede 2017-03-29  123  				length = pattrib->last_txcmdsz-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
554c0a3abf216c9 Hans de Goede 2017-03-29  124  
554c0a3abf216c9 Hans de Goede 2017-03-29  125  				*((__le32 *)crc) = getcrc32(payload, length);
554c0a3abf216c9 Hans de Goede 2017-03-29  126  
1b11e893eda0907 Fabio Aiuto   2021-05-07  127  				arc4_setkey(&mycontext, wepkey, 3 + keylength);
1b11e893eda0907 Fabio Aiuto   2021-05-07  128  				arc4_crypt(&mycontext, payload, payload, length);
1b11e893eda0907 Fabio Aiuto   2021-05-07  129  				arc4_crypt(&mycontext, payload + length, crc, 4);
554c0a3abf216c9 Hans de Goede 2017-03-29  130  
554c0a3abf216c9 Hans de Goede 2017-03-29  131  			} else {
554c0a3abf216c9 Hans de Goede 2017-03-29  132  				length = pxmitpriv->frag_len-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
554c0a3abf216c9 Hans de Goede 2017-03-29  133  				*((__le32 *)crc) = getcrc32(payload, length);
1b11e893eda0907 Fabio Aiuto   2021-05-07  134  				arc4_setkey(&mycontext, wepkey, 3 + keylength);
1b11e893eda0907 Fabio Aiuto   2021-05-07  135  				arc4_crypt(&mycontext, payload, payload, length);
1b11e893eda0907 Fabio Aiuto   2021-05-07  136  				arc4_crypt(&mycontext, payload + length, crc, 4);
554c0a3abf216c9 Hans de Goede 2017-03-29  137  
554c0a3abf216c9 Hans de Goede 2017-03-29  138  				pframe += pxmitpriv->frag_len;
87fe08d74ca66d8 Ross Schmidt  2020-10-03  139  				pframe = (u8 *)round_up((SIZE_PTR)(pframe), 4);
554c0a3abf216c9 Hans de Goede 2017-03-29  140  			}
554c0a3abf216c9 Hans de Goede 2017-03-29  141  		}
554c0a3abf216c9 Hans de Goede 2017-03-29  142  	}
554c0a3abf216c9 Hans de Goede 2017-03-29  143  }
554c0a3abf216c9 Hans de Goede 2017-03-29  144  
554c0a3abf216c9 Hans de Goede 2017-03-29 @145  void rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
554c0a3abf216c9 Hans de Goede 2017-03-29  146  {
554c0a3abf216c9 Hans de Goede 2017-03-29  147  	/*  exclude ICV */
554c0a3abf216c9 Hans de Goede 2017-03-29  148  	u8 crc[4];
1b11e893eda0907 Fabio Aiuto   2021-05-07  149  	struct arc4_ctx	 mycontext;
d495c5503d1339c Marco Cesati  2021-03-12  150  	signed int	length;
554c0a3abf216c9 Hans de Goede 2017-03-29  151  	u32 keylength;
554c0a3abf216c9 Hans de Goede 2017-03-29  152  	u8 *pframe, *payload, *iv, wepkey[16];
554c0a3abf216c9 Hans de Goede 2017-03-29  153  	u8  keyindex;
554c0a3abf216c9 Hans de Goede 2017-03-29  154  	struct	rx_pkt_attrib	 *prxattrib = &(((union recv_frame *)precvframe)->u.hdr.attrib);
554c0a3abf216c9 Hans de Goede 2017-03-29  155  	struct	security_priv *psecuritypriv = &padapter->securitypriv;
554c0a3abf216c9 Hans de Goede 2017-03-29  156  
554c0a3abf216c9 Hans de Goede 2017-03-29  157  	pframe = (unsigned char *)((union recv_frame *)precvframe)->u.hdr.rx_data;
554c0a3abf216c9 Hans de Goede 2017-03-29  158  
554c0a3abf216c9 Hans de Goede 2017-03-29  159  	/* start to decrypt recvframe */
554c0a3abf216c9 Hans de Goede 2017-03-29  160  	if ((prxattrib->encrypt == _WEP40_) || (prxattrib->encrypt == _WEP104_)) {
554c0a3abf216c9 Hans de Goede 2017-03-29  161  		iv = pframe+prxattrib->hdrlen;
554c0a3abf216c9 Hans de Goede 2017-03-29  162  		/* keyindex =(iv[3]&0x3); */
554c0a3abf216c9 Hans de Goede 2017-03-29  163  		keyindex = prxattrib->key_index;
554c0a3abf216c9 Hans de Goede 2017-03-29  164  		keylength = psecuritypriv->dot11DefKeylen[keyindex];
554c0a3abf216c9 Hans de Goede 2017-03-29  165  		memcpy(&wepkey[0], iv, 3);
554c0a3abf216c9 Hans de Goede 2017-03-29  166  		/* memcpy(&wepkey[3], &psecuritypriv->dot11DefKey[psecuritypriv->dot11PrivacyKeyIndex].skey[0], keylength); */
554c0a3abf216c9 Hans de Goede 2017-03-29  167  		memcpy(&wepkey[3], &psecuritypriv->dot11DefKey[keyindex].skey[0], keylength);
554c0a3abf216c9 Hans de Goede 2017-03-29  168  		length = ((union recv_frame *)precvframe)->u.hdr.len-prxattrib->hdrlen-prxattrib->iv_len;
554c0a3abf216c9 Hans de Goede 2017-03-29  169  
554c0a3abf216c9 Hans de Goede 2017-03-29  170  		payload = pframe+prxattrib->iv_len+prxattrib->hdrlen;
554c0a3abf216c9 Hans de Goede 2017-03-29  171  
554c0a3abf216c9 Hans de Goede 2017-03-29  172  		/* decrypt payload include icv */
1b11e893eda0907 Fabio Aiuto   2021-05-07  173  		arc4_setkey(&mycontext, wepkey, 3 + keylength);
1b11e893eda0907 Fabio Aiuto   2021-05-07  174  		arc4_crypt(&mycontext, payload, payload,  length);
554c0a3abf216c9 Hans de Goede 2017-03-29  175  
554c0a3abf216c9 Hans de Goede 2017-03-29  176  		/* calculate icv and compare the icv */
554c0a3abf216c9 Hans de Goede 2017-03-29  177  		*((u32 *)crc) = le32_to_cpu(getcrc32(payload, length-4));
554c0a3abf216c9 Hans de Goede 2017-03-29  178  
554c0a3abf216c9 Hans de Goede 2017-03-29  179  	}
554c0a3abf216c9 Hans de Goede 2017-03-29  180  }
554c0a3abf216c9 Hans de Goede 2017-03-29  181  

:::::: The code at line 89 was first introduced by commit
:::::: 554c0a3abf216c991c5ebddcdb2c08689ecd290b staging: Add rtl8723bs sdio wifi driver

:::::: TO: Hans de Goede <hdegoede@redhat.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105201711.QuzeTqRK-lkp%40intel.com.

--jRHKVT23PllUwdXP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICEAipmAAAy5jb25maWcAlDzLdhu3kvt8BY+zyV0k5kOy5ZmjBYhGkzD7JaCbpLTBoamW
w4kkeijKcf5+qtAvAI1WPPecG5tVhQJQKNQL1f71l19H5PV8fNqdD/vd4+M/o6/lc3nancv7
0cPhsfzvUZCOkjQfsYDnfwBxdHh+/fH+2/Hv8vRtP7r8YzL7Y/z7aT8ZrcrTc/k4osfnh8PX
V+BwOD7/8usvNE1CvlCUqjUTkqeJytk2v363f9w9fx19L08vQDdCLn+MR799PZz/6/17+O/T
4XQ6nt4/Pn5/Ut9Ox/8p9+fRl4dP5cOsfNjtPn3aj6flxy8P+4v95cfp+ONsPPlydV/OPu2m
H6/+866ZddFNez02lsKlohFJFtf/tED82dJOZmP4X4MjEgcskqIjB1BDO51djqcNPAr68wEM
hkdR0A2PDDp7LljcEpgTGatFmqfGAm2ESos8K3IvnicRT1iH4uJGbVKx6iDzgkdBzmOmcjKP
mJKpMFjlS8EILDoJU/gPkEgcCmf562ihleNx9FKeX791pzsX6YolCg5XxpkxccJzxZK1IgL2
zGOeX8+mwKVZchpnHGbPmcxHh5fR8/GMjFshpZREjZTevevGmQhFijz1DNY7VJJEOQ6tgUuy
ZmrFRMIitbjjxkpNTHQXkyGMcSA2n3ZxBhNzWX28b9UBC0kR5Vpwxrob8DKVeUJidv3ut+fj
c9npubyVa57RbnE1AP+kedTBs1TyrYpvClYwP7Q3ZENyulTNiO7wRCqlilmciltF8pzQpXe/
hWQRn3tRpACb4pGCFjkRMKumwAWRKGpUELR59PL65eWfl3P51KnggiVMcKqVXS7TTbcBF6Mi
tmaRH0+XplYgJEhjwhMbJnnsI1JLzgSu+9bGhqmgLKivFTetjsyIkAyJTNGaCwrYvFiE0pZf
+Xw/Oj44knC3o6/3uhOeg6Zwi1YgiCSXHmScSlVkAclZI/b88AS22if5nNMVXH0GsjWMyPJO
ZcArDTg195akiOFBxLwqodE+leCLpRJM6l0JqTnWUugtrOOWCcbiLAeuiX+6hmCdRkWSE3Hr
mbqmMW5LPYimMKYHRmNVi4xmxft89/LX6AxLHO1guS/n3flltNvvj6/P58Pz106Iay6AY1Yo
QjXfSk3ahWoZ22jPUj1MVEJyvrZubia5V51+Yrl6W4IWI+lRA9i/AlxfUBWwnR9+KrYF5fDd
fWlx0DwdEHgjqXnUyupB9UBFwHzwXBDqIJCxzOHGoHeK08TGJAzusWQLOo+4zE0ttIXSbZav
qr94tspXS7AHqM1PnctDzxWCmeJhfj352EmSJ/kK3FnIXJpZdShy/2d5//pYnkYP5e78eipf
NLhenQfbxg0LkRaZNA8IjDr1LbgiVZIumRHLhIQL5cXQUKo5SYIND/KlIcjcIe98SgXPeCC9
17XGi2DAt9b4ELTmjom3SAK25tRvE2oKuA1wi3wqWhPMs9Cz9phLOjxGW3PD/Kd4q2sUyYnF
b8noKkvh3NHu5algvtuCEtQhkGZijgfDD+IPGFxCCmY88IwWLCKGq5pHK5SLDj6EcYz6N4mB
m0wL8GRWLCYCHQH5uAdqDpipcfCBE1sBYHvn4FPn94X1+07mxsrmaYpmGP9uBcIpmOGY3zH0
vOiF4I+YJNSOXxwyCX8ZikUgkgwwIqYp2BE8KMUwmkXTalqInydLRbYkCYRWwoC7gVf1G0wl
ZdqtVObK2L1WwPpHZVCtWwwRI4foS/j0ZsHyGEyg6oUHldr0wCEsF3y2GzK23tiyU2aeYXmx
OYFgJyyiyLOksIC80JgQf4IlMHaYpXpFnYbzRUKi0KfZel2hoSk60DEBcglWzuRGuC8g56kq
hBWykWDNJWskZOwd+M2JEBACGjkCktzGsg9RlnhbqJYQ3svaaXdHbZxJJ08Af4YUi0Qbcish
BvPsADUg1gopgKWweYJxiFJiiAWpda5hykqH4phcdltUuJQ5oSv5Npm8TSCaBONl7JWaKSKE
v1bsqy2khnr2AnxZEJguRl9PvOHKDWUzOhlfNJFYXZvIytPD8fS0e96XI/a9fIbghoCDpBje
QAxZBW318I6nN1j6SY4dw3VcsavCRrg1Pi8BCTHJIZs2rpCMyNzS+qjwZ1MySocQZA5nIhas
SSR9FgGJ0HFiYKME3PY0thfRYZdEBBB7Wa5bLoswhFw+IzAN6Aak6OCzfBPdypzFlXkEfeQh
p459zEQa8si6dNryaWdohf52NaIdn9HZ1Ap4M/rhwlyKPujsdNyXLy/HE6QO374dT2fr+CF3
Bu+ymkk1m/qSAsBfXf744Uyjrn788J7BxXgAfvHDw71NwzIrcGaXl+MxAr2s2AcPth05HrtL
RVjsi1UQGUISIdjCuE+hjPD+6YthxcUoJmbTOSDNsAbP7FRkCWbrw8XcWwaQGUM3I/ncdDwA
tTnHMcTlKdid5RBczaY2qloIUhhwINfOz9Lq2BfZIIsgTcWc1ea4Vse+RrWJWSBTcxGYo83x
XJKAE0OWsymIwnAp5gK1eY1jAvFvAqEVz8HQkq2RJPgIeHI9mfgJGmPzb4wsOotfIrBEIa8v
J239E1InuqrSKllkmV1W1GAYEUZkIft4LEhAvNpHNNdhuWF8scyts3QOtnY7SQpqYuAYEdFt
LzrJSFLXSdICMqmrtghbhdVpDK41hMgX1ZCjzbYnK4L5Qk0+wKU0DgkLVlqA/eVbob8BbP19
M41x65rKX8FjMKyur+VzJqro0nNRNIksQBBwiINoLWqs9Yh0zqS9QQh1Gn9smQIbxwmV11M/
LngLtwZcK/JsUVWidW3OGAPeJMwWpHHk2ePujA7XZ7MlaKqvXmYYJki4WuPURVGSfprMJpBe
+P0nnX6aQTjBfelBNXaqbgIzEszo1eXFGPbqAj/4gD9+KOoDxj3g7IPyEfpgsBnL0E7Gk/Hg
DgE7narAJ7UKJYKVw206G+SWb4Sm8Hs8OAIB+ahvrpXkKKJuM1smmw0ZDiDfqkU2s6pjNzEK
3L8ajZu8gbvyJRCIubw0jBcCzLXJOR7ylXkriA0A1eVxNrOy+ngdsyk43gGvcsPAC7nOGsPn
hOWNyRharR2MrCDeXBTOw0oXK2Qkg0MigmDJcGAx4PwgidyCJeRmHhZnZs0Nf1Xplh0CdHDI
clesyJwhsVw45pRfTS8/mb4Pcq9kDeb3uiunjsJT+b+v5fP+n9HLfvdoVVDRp0KIemN7WYSo
RbrGJwpIR1g+gG6rfZ3YGzT4NL8UW4rGSiMjo9zw/xiUbsDsQy7z80MwU5MZoT6r5B2QJgGD
ZQXePZqEgAPea+2S3mLu7HZAsO3WvPP+9E6cHfiPsFv39VOnMw+uzozuT4fvVb7X8anEkHe1
2A6mMvDPAVubsZ5fGZs5+f1jWc8CoHYlCDY9Fi6//xRizFANMCAm426hsRVaxqYJSpTIqRWk
uh7UTJCP3/DV3hAMvrs4hZLlnZp4DRggppdjh3Q29pvlioufzTWwsUOxpcAHEMM4kHwJ2UgR
NaljZ2AtzFCxyaFablSRgK2OWAwZullfWLGtGUdiuQTSVVJFUl0RVKfLWEnE+o3/DgtMRILC
m1DoWAyi4hxEDTkBsQI1HkVsQaImOFRrEhXMCJzAdF6sdN7thGg6Fa9fCdp4qn7bbx8PmjgT
03GXVr9bYm6g7tKEpZD0CyP6p3Gg2wy6Z2q2hRBf5UQsGOTpHbwOQg3fWUeldaG+j5Arnuna
kZmfKRkxllkQrHw30C46ibXLwXTCG9HEFoumJG8OhyAVLVpQIb08dNNCf2fNKt1KP8BpZMVQ
m5vKNCoWhhyCyyT3VWfcelNzQfWlnb++9G9sHeba3jiLHUA0t4yCyanN7sCcgucDX121LDRu
mNx/x3LXvdsD0got1dVqQxmjdIOKLfUFSdPIi7ke/9CNMNgLY3R6aDwlsUqKWA/2NoqYVNcz
o5p4m5AYow0Ww178kQ7ekjQMITRwFmdgYHH7ZnGtZdB9HJqtM9BEmSOtsgenxBztW5lFBYzG
zhJaAhLxRYIEF+5MuS7yN4L3hY4Ngb3QWi+cszatS8TnSiwZsa4eRpMFrOZO29Veya2p1+1O
+z8P53KPL5G/35ffYLby+dzX5cpoOuVjtMguzM1eP4OdVRGZM/vBoFHnWwmRYBQO9B2B/rr8
dJm5u6hFoiWOT2+UMunWwCGg0f1HOU8gQdwQw2atBPMz57AhrLgAMndQvd1V0CFOQ8uv2WCT
Vui8JGl8WCRUe0MmRCoUTz4zahdmu74cPX4JiXS/oIFZA8Y0tadxSxZEolvJeXjbvCbaBLoC
hrdOuWLAzrY4Deq+L3d3WKFQBF0HVqDqc1HETFwqOmlmCN3zgV3h6OAYnNY80Xn7hGEp2xtY
z7sO1igXEIvAHFX5Az2iF43dB/9CUvl7vMq2SDcEVBYLdVqsBA4VYmSsfvbOBtacxLxqM6Bx
tqXLhcuLkRXug+E7FaE3BRf+6XT8gb1NTQOfRzSSUSwuvoFSIdwiHSB0l7jC+NxAnupOH4ef
v7PGunvipuqWGqQAvavXlTGKTxbGAaRBEcG1wksPNkUfsoc/26JaJ1X7GKqTQyPTMEcckKSb
xCVp746eoYk2fYKz6r9vFY+NSK6+QBGvekHbEq6Pv87IwcYYvGkEQlf4GLghwqxFpdiByRe9
IKmGE8e81IXmygLgeTjLr+IKcHe1fxWbrUdCMgcrlHtp3kC1w/WLBChSEFt1Gwwmzfc7X2DZ
af/QC79dc63KoHhr9XtZE18taLr+/cvuBbzuX1XQ9+10fDjUxY6uSRDI6q0MrQX3o8mqFzWm
iP1e8eZM7hvbv/jsNkPKVYxP96b70Y/aMsbZJ861sVI3DaqzDnyW9iZSNVWRuBQdvu8iBn1H
zQ2UH4IN6luOFLRtNbZzyR6lt8urRqJyC3RJtYVyB7d4t5tmkHB791Nk2DEzvCzUvA02Lcmq
VzBmuhKDhUvUUUtQOn4Afc2X1+/ev3w5PL9/Ot6Dxnwp20wPLlgMRwO2MFAru/HBhKrNkuf6
LdnIEhtDqnv+Iogt7H6mOV5Bn6bLZGLOUjW/g6GG4AuVpGdG2/tH8hRzAxFvPHYgQUMMBx+R
LEPRkCDQ4tTiMXKpNoPVd5P9KPev592Xx1J/PDHSvQFnI6Kd8ySMczTjHQ/4YYezNZGkgmdW
S0+NcHvMrEqxW2JoL/LQ2vTC4/LpePpnFO+ed1/LJ28wXtcnjL0DAOQUMEyvVExcRx4SyJAX
ZuVXS3eF6TG2iHjOpqp9NF3lyzTPosINQXo0EDina+uFOAIHkuXaZoPjl9cXlouhbs1IB06C
oVb4+2pjvhBOk4KOKsBPzAvLaKxk/EZbv3bAMSgmatP1xfjThzbZxsbSDPtqIFBZGUKmEGol
lNClXT8daIC8y5wsr8PMC789vdOGOfU9KzQhffV6Wmco5jJ0nK+lh/HCyhGe2UuD28L0y9/X
CUoy9BFI55hzVkVfxMy0UaD6cxDTrw0rcyfuvLmySXn++3j6C8vCncobqkFXzLcuMDTbrlaM
v+C+xpYh2qqAkwUQtdy2QaZ7PtmAHMBw+V8aAI4f8GDwGxPhM4P4QASJH37HBLY8vDWPqRkN
sY2Oq+Ag4mzosIC4Crp9h5GbOUMeQ15jO7O54MHCXwBdA626Gk8nN150wGjiFXQUGcE2/Jia
KyDRqjsE7F0Fax2xGtyJNQsCX8KwnV4ardckmxu1n2WamG9FnDGGi7+88MFUEtV/0W2YHKvI
xCo9GLSVAniL0rSe4sk6jqoG7pcanfvMTSKxZziN7H4/ODCCpmfdbbqDNX9dW8fZoROfgTDw
vTKqgUPjMKRu67fuA2wenPlK3yOfwDKz/xIlhRC1kKkpQQ0TaTFg23FYIpedTJbSENqNyK3s
E39DKOuLqDQqLxJ7sIqX3HhTqnq99WUV3Py6r0NUNziwNya26GluVd0D28j4xvxRNYM6dm10
Ll/OTepQ28ceykGYtrDz6LEggV5y1Yix2/9Vnkdid384YtpwPu6Pj5bpJHC9fC96xH5lBR0R
ZOMnVHMwqU8mYLExjxYhnyefZp8GhnMJEUT7FEiSUVB+P+zLUdC+/1ms1kji57TeUrNPC0HN
g6ABAj9EMbnGtnKvsiFRGDHNzN6X6IGoT1QaqN8j8dl1YAZKP34cO8wQBPIgPnDDzsbxkOOf
YWCDY9+y4p9ZVkWUw38utpdbW5ix7O1ffib4QmjT1cD+ThqEfy+6upIsTFWABGF0wCbdh92+
NGvOBL/jm00mW1fTYppNLydbf+Td4UPHVDePt/0527UUcm6vxeJ7hY5NkwxMzGLp4k2sDBA7
dbcDblIC8vJqOzBwobna8l+tCRZEEd6Tzpy8ucoMS4fDyywatTLk5cjFvn26h0x/xiPdcc41
by2k8bo/xzZrFpj+EaxsiG0gFmiesMzcag2C7ap+mNSjwmp++i+ENM79CT/gln6/CJiB7yc1
ZuDrKcDFMsSv74fQBNsmh9HDvXWAbB5UGgcxf3wtz8fj+c/RfXUa932jizukfJ77taLBSnQ7
Tw6UxtPxbNsDZ2AF+tCw0lcLuIb/W7BYrCPnpBGkcHr/6uJ81VsbwAp8rbMZYbZoc+meXofk
1DDdcKy3m49MDQQf3A0o/HLexTQIdJD2QHxt3OtwgXGnUUWpwtmJzsnw25E+Ld48FqWZbu8S
CdhW6SGiDF966gZ/lSaFj0gw/YqgP+eBJFiwRTD3kGF9vancIol+xvPQVU0ILUnAhfW9mjEt
/GBRVEREgMH3l3Qtaqzsb/ELZS68Aqly/My3qPrm+EQkAmJ0PPfXuXEuZJOu8Hl1aE8uBFje
ZjmMywZxFD/BMTS0RQ/1O9SpiaEiDUTn5oJ6EIJiqUPmwnwXM7FtVeRnqK7fPR2eX86n8lH9
eTbOsyWFtHb5xsq1WfTM0DsZk6FsShvO19j2aKBMfB9dtFSQbyv9HQK20lRv7Q2NCFfcjOir
32qR6UjbygI/+b0EJTz0pTUhtdLIECTJFxzSUn+mBfiE8kHc0sbVGcbuNAoP5SN+7/T09Pp8
2Ot/9GX0G4z4T23OjMgK+WTJ5WzW6WULUpaF7sB8SvvgqWpNbJu4/NRS2uxeEmz2cvNsHvpa
EKMNJHWJ9Q9GiFSbDrPfCjUls7pAQsKj1MrAWb7MgaRJa51yKXMSuF6uYhJnlFsVTPt4Wigl
IrDpYspJ7yQz+vt+d7offTkd7r+W7lyCZDyw9bEG+Rs8Dvt60aPUrSEX1RPakkWZKRgLXL8w
GHccfE0eZ97AA65WEpDIevXNRMUu5CIG51T1YgSNWMPD6env3akcPR5397o9szmvjX50shqZ
G5A+3wA/uzdOUzuaZhLjIaMbpZsH2s22+/ESgL5UX1T6Pl1oBzTPOg47XSD2hhfudts4gOiG
s3X7ZmCU1fSbkB83BNXBuPOBaRuiC/udr4Lr/rlqiKoq+P7acaxuUqlWBf5TQgM1Ys2K6E9N
a4b6qcq83g2cvc3J+PBO9xZWfHo9LoheFxH8IHMe8Zybr536GxMz0oHYwXocqX5r0+bCZMRj
z1h8zfLAYiOArYGbSQ+EjfT9ycVNnyGlhg0OYmwIBc3Wah/aGvx/nD3Jkty4cnd/RR/tw/hx
KW4HH1ggq4ojssgmWF2ULox+kvxGYW0h9Tzr/b0zAS5YEuwJT4RGqszEngQSuQGRp/LK5OlI
c55jL1g9F63zoWnHQdW5cuGRixyAU6IspogvEJNMnbqXyqSfQbZ0o/k/mocE/HUt2dD225yc
r6oYjr/g2tNrFgkBbDBXh0R80amr/kQXuR3HDbH1nLTdFoPCOe1J/TfaHYb5GrYB0VI3aG5D
AJRWHRL1pj3+rnYDQLMnJeUud1qMo1odGofBb02d3qKfDDrrA3dpNkWJQM210b60xVL5ebBz
wI6LNMnaS9mXamIe6fuCkYPL2YmuSabAPYNsKeepKR+4Em22iBwqXNpQP/18b3N1XkRBNE5F
p/r1KcBZxNnUpgpK6Isotf+tad7iDBPTUTGehQE/eIqwDl9q3fIbXrJgzleNydJiV/AMJNW8
dlileB1knhdSjQlU4KkD4OWVtz2fBsBFEeXhv1AcL76mqFzgokOZeo+/NCwOo0DZnbgfp1qQ
N/IxjGwqWRfOOUGopmU80fxrxDBz+O6KU6mImWhen/qBq+1XvIL/wX1SF1RZMLORtP6XcF40
SmjiMv0CPuVDoFiPNqBihJqB6PDP3lpguD7EaRJZdWQhG2N1Llb4OB5iOgBMUlTFMKXZpSs5
pQScicrS97yDKm4bA5X5wT7+ev75UOEd7c8vIhHCzz9A7vjw8PLj+etPpHv4/Onrx4cP8JV8
+o7/VL+m/0fpTVwZ4BxGSbBTttuSXVpiSU3NZffUYRAweSho37MmEVfFmhaNM14tmhtr4RGJ
fi2qfpIqoN0sq+vQYqiIkFioEw520k3vuQ6wMm8zzEgZtH3vQ7NTe4m+pNpmjZWBQF20Pcx1
zvpqKEV481ahXIGBU9cntXSTv9M9L1Tk4w1EUv1yQlD1zFH+2IOEDOLxfnkGUrQWqwYTrnzP
+Etomi53YSQnJ4HlT9WtcXSDCScSahSFnFSqUPkO8w7u9xw9jTABjHYwnvhU0mZzlJFOjWqz
EnEgj1NTqOIgAkeQ/piEKyx0rvLrKae11iIXBLTLpqrsaY2/0vNz257rV1jjcsvvZeWYHox7
opwcFRIQTfoWrTyOKpocZA2H+55KBjT5taVtPEZzf6lLcz7Jbd+9siD9PaZj4gA5BgfA0mhr
uGVD3foVsms+IJFjTuCffXttm1eW5qqXr4BfMCjsCjdi9HOwGJBqKg0zShCAvaZV9TtbgQ5E
AXRzJj9A2Clq3VDzyPJEsxXOAP3itACF9kg16mPigBI+AqKLfYOfLdVFDMrmOXdMbo9uDfTX
o1DxvOE3p1vCQlTqKZJUVFvnPYjwjp1eo2RVe6V1ySrZIFhLuYQNDe4OsFKajCehOwZftc63
17bjqrK+uLNprHHbcYzr6bVz4F69M7ZTCZnuER2cuqJDPbh+hovrYdWXZMI/haa6SipHFfn1
7WsLIWVOSlt3eSu0gl80gGIK4fdOzSx7qjA0XwPx0+rtAALBA+B2jG95I0rTIkJRXd3I+aR2
E4xpmmTx0SSY0ctJLfqu2slYEx38g+cqxppkHMe51AZMD2nqE3WliSSmq5I+OHKGN3G+Avkg
n+d007DLI9053ALkgXk49P2JdfWNO9H1ODi6Kc69abznb/VlrkGqLAff832mz8Z8ytFA3zub
I1tQaToG8J+jG/KwMypdDje9Zxt48AkMHkY6WGavyWtz/a5jN7FDNA2/577vXEekUii27uVD
6oWj3tTj2rrSTl+i8PrGUf+8xVuFYG9fxk7dMRvOjO9ygCvUqNjjUF4GBoS7ut7vokvDVC6E
pr0E8MBS33e0KIodUr1RAYwTCpjprT6BRM9B6NWA8934DBtJ0J+N+8XMEm94mmVRQ+3VKE7O
7hkKEyBQ02+2J0MgXcoZOmNZshqOucOPUBKwRgTykye5oBAX+ROe9QovI0IzNAlI86Rd9SWM
M7Rqqum/Zenu8eD5mQ1NvXhNQoiwh+bPzy9wgf34S7PpLBOD+VbsYUu4MAq6xrXQiKSfXV2O
qiJep2jQkXt1heoYt8+I5QAC9hzhf+rVn6BfyTs1OL/rpiMvRHyfet/uMDQelY6U1IlYO+IP
oU3XOewDiMRB49lJV9lqbssIUIMF6ouiTIUVFwfDfD1We44olg8UZyHqDdxfBsWLFGFdec75
zaqlH+rUJxVjGzYwC8G1JElHSm5ALPzRxNRlHHgS+8loVrahsslPUur7XchYwYRGwK4bMFNZ
NjTiygiEvOS58YhojhWBKZos9nwbzvsMJHoSnpJw+ICTaCQnBHFZNNJ3v4XoXMeBtzdfVzyY
U6JplAGOVLsN40ka0le+haYHsZOL5x/2l2rityMmMphziJAzLEl0XF5XUxPFetpMgbgGSeDu
27Gs31R01lko2zfwUd5G/fMqO95egzRNdfAbFviZZ3+J7/Jbf+PESMY0CH1vsj46RL7J66bK
bfgjCAD3u+poumBA1Ir80eAwnK05EECDV93FuA8hlFdl3+cTrY5Zu33JAoox80fmC2ceYqcI
p5JRV6x7rap38NeqJSsaEGoUc8NwsdLZa/RqenYktrz5EagkYXXoFS/CT2pJuiGM2whweVdB
gezNdLlrbQPE7KoKNROrSNxxYG052pkjBdYkzi9HE7R5AamjAYRIGdFe5d8cBTbnOIYxy+wK
ihNf3OAcMRwzHUyabvs3CO7tfQcr/YZ2CNglRycWtIw4PUAlZQdTSbHbvFqDbq1agDvOodry
YQgXMJJi/mR5X2e+7rAuIYbP1gq2vekWzOXeX3XmiN/UxqIAxPLpNPG0Q+qMpD4OhBNhLjoB
OiUur8lshfsoCijbGhTyPUUdIH9Pehb7GejwUZ2xmhw7w6hBrHDzvRmdZHecog6V55Udh13D
WD97Z9AO8+jbVKO6YeVDErPIs2w6ahHKKkASsoozmiVUKksT7aTqeUXph1Wy+fatGTExo+uQ
UxOxoKYBtlP0OqLKrUinJ6dNqd9y7rho+h1EgtzfzELgcv7XxlwWFcj+lKSukVG6c5UAdhBD
3qfJ5PX+dTrzSRyChpS9VIKh0nvrB5FPFvGDUbEtw28Q7NWD2XDiFr91TfYCM2w2d3ELWtWy
IqvbK51+97bQddgod7wr/MCj+o4I3+/vaoEF5mQ5tTmhOiyvVyVFyuZJfJfvajmkX6yGXCQR
io08SC+ho5QSkUkYQ7fidzImDLtlO3hWvLjqv+Bo6jS2aBBqOZlUX7//+WKbkbfOXrub7Zpy
ef7xQfj2VX9rH7CIcndHXyLFAE74wEiKf2kFpir1DtrdU4Jh1+g4lQdfovv8rnpxIGhWH40d
n6CkXeNsM96rFXB4syfK9my3YN4dZZsaFNUnkwa/LZO0GT3zpjS9gFbVBzXd61Ns1ALKFfzj
+cfz+5ePPxTXoLW9YSAViMIPTPhaasqyqoP7i3yIRbmPCyh+8ssTQhpcpDgX/rAkBlPiqBKT
QEm1nTzGTpjuQm+LVyaAVyd1FgVQPBtYtOTDV6J9TH7Ynk5aXcedti/35VkKGyQzDVdtU5LY
Y34IfQoh43LUvm84BnKqQ9m4EY14F+zpZAwwlIaUpGVWY6XRgcGfjiKFz6h+a7gzLrCpPZF8
anOcorqepwvu1CLv4CD9iu0NKWC2O4vmsQo/oIK8L/CZUB0sEzmpu56AimdDnih+AKxUfEo9
6aYiFf1gf3z6TnYGNoKj/Kyh7rour2eVVWWlSyiFBW1UxcQCrgd2CL3YRnQsz6KD70L80th/
QVVXYCFKClwoUA9rzFJROopa1Tf1yLqaDjbdnUK9qtn73PGMKlLwRjLgyhj55398+/Hp5Y8v
P43lqM+t9n7FAuzYiQLmqmLZqHhtbN110Ud344KNS8WLew9/Rw9eqZB++Pcv336+fP7Xw8cv
f//44cPHDw9/m6l++/b1t/cwFf+h95vhxyT4ROMezKT8xVwdjFITQQU7tm+kLJvyKdDrs1sQ
vLu8+Pq7dDY2+OFN2RiLrLJBx/QKWxQLudlrmOnXutu/CUezaZDGhpLSdyNSnu8LV5S/YLv5
+vwZV+RvwC+wGM8fnr+LPci2PIuZrFoUC28BnclIzn8Q+5ET3bfHdjjd3r2bWk6GQCHRUF3f
zlHMWuGnCphebF/W1te+/CG/mnkgCmfpbHPilcnAJLNq39JwO+pLxutcTV60gmbvS3MtJQ49
vNHT2zk5MsbCdAG0CPA7tHcgxBjO9doorYGFyrnAMPsIQECu54MqpxR3FaxmdHxiCoY0QHeV
oLgw5Q7EdcEafjpvIIgj2kWofkBLl86uemiefyLzsm9fX358+4wPZ1pxWFhcSrFanxbJVr/E
CcRYib/hnNKe50bYbNrUgYuz4pd/08a4bEE6MUyvkbNwhqLBj+QTxJ8cF1/EoXUdk1UYXugK
hRmmKGusTb91A1tqV1mEtvJDNata7OzOHnLmpxWPvcBNAddC8hUDsfijmsgTIaNwK9Pme93o
FNi7t9fHppvOjzgSDZM3a6CZYCPlHKZerMFO3EaSA7s5p8rMigbjwR+Zf0SB1W3bYQCZ2B20
WxMgh7qMg5H0xsfq9E1oBRlpODf4/IobwIdeDXoUPCf1/yqw0bwHLpyMVuwUMw/8MDX916ET
NEsCmo4/vP/8SfqKm8IhFme1yNX8Rj5O8oVAzQfyWt0/RKrLl28/LEGjGzpo7Nv7/yGagm75
UZrKB7XXA/GrSLQnHYzEW8rOJFwv32AWPj7AqQNn5odPGCUFB6lo7ed/utpBz/006NRYWpuA
NZrl3hrDWlJKm9tUL3FuM2JanwjeCmjis0KPkumSSVovgf+im5AI5d4k8qI6peelVzkPk0CR
sVb42AVeZsOLPPPiQO8TwjFvS8i9VPcBsbDat25ibQwm1FRNsCt89CNvtHvBh+ZEgFtW1q0e
qLQ0vfpacdMzRD7TDdz88/nnw/dPX9+//PisCWLLo9UOEmuUeEfM7bEwfkhqP7J7LRCpC5Ep
i4Bd17wcZ4DIHomRwBM+oTuob8y1J+NStxSp+kdTZyx5yeE5I8Tv5c0/FcaM3E4rcHqitKIC
bb1GLqBNPiaht8rJc2bCL8/fv8O1RHTLEi1FueQwjkbkpoCbAofsmSknCGhxx4x2X4xRzO+p
kQemvI4M+JfnU0eFOtAt05LemXNvL850qe+F0b26PVfsiVnT3BzTmCeUo4tEl9d3fpDYxTqW
jqR/jFzlvMmjIgA+bI83oydSRjB6jK/t6rEqAnxnRRYenM2YwoJcs6aYTuyi7sU7fLBebAX0
46/vcHjY/JEXXQR7vdlSce3sFb9PlprAZlHax2MjCJxjFhoQ/faowh1hihuJavmdoac00p2W
BHzoKhakvue8lxgzJr+4U/EXZjLwzO+sr961V/NDOxaJFwWpNVSA+6lPZbvb0IG5WMcCxu43
9ydroM47v/xwujA7hEbP6i5NQpPxEBjFkVW/3M73FzyJox2WgMOqo6TqeZ04FE5jo4sCHPjm
NAhwGo8Udeab6zKDA7OSx2ZMY2tdhnsdewfnTnZv0tC3GRfBpHvegs0yLRqSYLFVit9lPdjk
feEeak1/6Ge+ewsUH6xvTEHDwjBNrW+p4i3vLQ4Y+9w/6BG9Rh9ELD75pRHDEsNF8+/ucDed
y38p8ZBEMVHd06cfL3+CILxzSObnc1+ec6k103vPluzhcytkbUsZNWnC3Z/kvi864f/2v59m
bc52Ddtsg/6sVZgKHhwy+nvRiVLKaqWS+HdN5bOhTBmGIOHnilwxYhTq6Pjn539+NAc2X/8u
Ze/wnVhIOG3jWPE4ai/SJlhBpE4E2u6Lo/YKhkbhh66isTGBG4r0s1EpUmdPQ8+F8F2I0NmP
MMTXBl6btdAxOZEaGa8iktTRySR1dDItRWA3ifETdZPTeUW5jYg3zDCZA/m4lsCiW16taXdU
OJWWgyK73JuWMsV3GLGDhNpGOgupeYGPQg/wdZCRLfmYZkG0Fl/mQZwL4kWTmxK0MYOttuR5
IeFEIyI7jSy0ebhd8JG8XggfXqyYlea+TgxEo44A3wPPV1h0geMax1oWBhWTUoeZRuDTVaaB
3QV+VB3v5nEgUAk4wthQA7gUPz4GGMVl1zsjdCOjibwUj84q8aHOGzADzPd0fWrsTsL9H67e
xEglXI34WpYHNQm0Q/hS2CaZCSTCXHiEpul0upX1dM5vqsFyqRGY0k9AanFiiEURmMAfbQ6r
eIdlVNZYUIL7ybQeCwUKkEFiV4pwcfmw6nTctLcmBWtQc10PYUz6S20E7ODHQW13pygHYTsT
03CIo9gxWkuoNUiAkQ5+REyiQGQejQgiYoYQkYSRzYSAiFxtRKmjjShLPWpMiIodEQvrp9kc
w0OyM2oprqu+9xom8BObEwXr4ooE2YHYvc5tXZwqfrEx/RB5YWg31Q/ZISKm68a473kBMY/z
VcyeriLLskg51cS5sVUgfoIsquXFk8DZaGZYHGQWoOcXkBltOXRNWVMkoa99ZQrm4B9ILx+F
QImG2OCN7wU+XSeiqPumThG7atUc1TVUSL+UrtL4CcVOCkUGQhjV8pCMPpXuBxChC3FwI3y6
jUMc0HMGqGQvHZGkiIhaL4PvkTPGw4SW+jcKlsQBta2tFGM1nTAVu2VKWavoyrIgmx/Gbq/q
gscB2W/MnhTsL/QpicIkIlMuzhRnzqi6G+aHSRqi5LVXuI78lDf2aAEReLyx1/wMAk5OggMC
Kh0rrnb9l+oS+yHBU9WxycuG4hzAdCW9ya4kqON0yKcLze/sEFATBhJC7wfBHmfii1ZwblKl
5R68txVIisSeihkxS1yOmhOXMVelyoj5lAhibcQ5HvmOJg8BqUfTKIKAHMwhOER0c0FMfgYS
tfcFoUDhUxsNIlTJSIXHnq5z03B+tstIgiZOX+lSRqym0BpJexhVK+DCPRbD3GKwJ5D1xnGY
ORA0SwvUbuo3QeEeRkacHw3rQo/q4cDiiDx6QX4JwnR/gcvrKfCPDZvFBHtB+wQ2pJA+UZhD
9loZrIkp8XpDJzRfNskrxYhDCqAEPwI0pZtI9w8uINjvQ0p9a01K9iFzDDOjfbhXdEgNM4uC
8EC2EoGUTi2URO1tK9eBSV1XxbWEnyueDXCLJradayeyklCtCjNGRjFf1xivxq1FGsvtipC/
gjh+RfILKAbBF4i7U0l19djlU89deadWkYB3U0j7q68H5cROJ9WPY0VdeXeD22jHVT+CFduH
URCQRwKgYu8VWQVoMM/CXs/6jkcyJaZdmtdxCjLLLisGkRcT0rQ45JLUcfolqMQ832pdQ62Q
hKkwnpOnQBSSETjGQXOgj6ZYi5ZXMIGXUMKPxET09g/7cUrwE2IOhwNdWxqnxKw0HUwKOeKu
iZP4MFD6s5VkLOH4JA6Gx+jAf/e9NCfPPj50RcHivcMIzomDdwjIowxwURgn1AtTC8mNFZnn
EfOACBntbVU7Fl0JQt8uW7+rYzqX1Toj94YWcvlxUIM0VjDcY4hdG8ABwS0ADn+RYEZ+RyVI
/gdSnaRQBL4X2nUCIkbNJjGShrND0vgZsffyYeAkz/KmAfGDvuIyP0iL1E9f2WV5kgZ/gSbZ
vdnBqFJKYKmuOTooUXsRYF6RKYAkDHZvlANLaHHo0jCHUXclaTrf2zuUBUFIfiiI2RNcgeBA
LTHCKf4DeOQTzHJPwyQJzzQi9Qu7BURkTkTgQhDSh4CTnCUx+Dk6vNYUwhr204E4BiUqvlJj
k6ZqEh4pe6IQYvQc4jNoeXWCslDMFFuSA6tCjGfoz+WVvV0Dt6airPO3U8O310wW4kXlZvXB
jFgy0Pe+GsTjvkMPksIu6ZLu+9w+YXqtbrpXnM4QRJU45VUvs9vvTIdaQOSyMN5+Xuj0Cmn8
2kUajb7fk+4ArqL3Wi8bFDC0t4kXlO4/Jt0fVw5Rw88q8WjBjKHcDhRrGsFhO6F+HNMgtZxX
Rz1xLadf/GJNrpIrYM22hWSYDAe77apmfvFB5LZlzVWvbcVqrmoSM3sdb6Fo//3n1/fiMRlX
nqzmVCzu/msfEZazIc0OEe1pIwh4mPjUVr4gVU1H14gVMLyVBGU+BGniGSEHAoMZE+SLk3oo
yYa81IzU1CEFZmTMPNVaJ6CK45JanTB4UTAjuRrAV4dSrUMSitTOGZtJaJ2UWIfVJVUrJ8Dh
/zH2bMtx4zr+iqu2as9M7dmKRN0f9oEtqbsV62ZJLct5UfkkzoyrfEnZztmZ/foFqRsvYHce
nNgAxAtIggAJApgJuGJD/CM0cO2GlZRGPkRsnTn4Hs4+Y2iPGEP7CyTn+MBJTN1RHZ1XmCOP
gn7xyaF5iWkADHWgXcqc2JfDX3FgYtsZ1JkyA+XYBSJCyX3AUTXxCX5IxtDHzAdtgXMaaSQL
RFPTNoulAxsGhZpMXpCs2Oym9VEXR4ac/PFk3oVhXUghxjagp3aJg33DRfI0qwfb9eRrFZUg
CHz0jHhDe4pYmKCyW9wGj3Dvr5UgdDFVfkaHkRVolTFXCgQYBUgDAIzpihzb+Y6vdgVgUaDI
kOXoTmR3+oU/ycViqfM1K7tVMJDilSZgym5Anz8yXJN2J3WY63jvwRozsW29+pQ+amKv80Lz
WDTXoYUbIhxbep1vMGYYvk1j0yNAjs7cwB+QfaMtPMtW+8eBZj80TnJ9F8JMNskP7ja67K3w
x+PXt9eHp4evH2+vL49f368mt9JsyfiK5WnmJEbROGE12bp4Lv56jVKrF1dwAdaxp16O4w1j
18agFslY1UV3gnGfCWX4oZy8OBn5WdO8oAZFuG592/JwoTLd6auu0hISdbHnTdLcdzdoZCFQ
yUNg6ZTijyyAJ49kvZAQgUp+wStUcgsWoAQpAaC6+rFipDc9MwakuiMdcHS3uWs5lmkhzU7G
qAbIYv0EzrklmBeOp0uFLna8MDKOkObtzEuq4mNJDxR9Qct0MdWlXQCqd4Ai6oKuRVyt04Vn
G55kLmjDzJzQbMs4jzZtHYB0LWVurE7eGkx2NRPgmrqiWtkbDC1j8Q8XBXV1LKZ3AOgbFZFk
fmGAfkw0ATLjQCMfihNuXU+Sl2lMJlNDeXvGuzE9dNEmRRcTf9LokbIa7hBcT0tB4cAUzLyw
rRG2bFQ8nzW21iqEA/W1/BVofAG+UUxh8/sq76YbdY2AxYQ5UR4psT1JT0c3GmaQc3t8o0JK
Ar3vwCQYUoCmPm4oZjWGoowUUInnRCFW1WwCikwXkNySPMuV1XhDPl+swLMFbP5YWAn6+xgT
leHUVaSarc8LdLFBDRTmymQmoS2ezKVLn9vExoYJMER2GFJw2DoUZigtPccTveEUHHvmgeDm
58xIpVmbR451if/sIowENn5csZEx5SbAL+QUovNTjjuXDlhHVuUBLRg0CMzwVUhkFwwZGV6a
Y/m0//4ClR9gd7EbDb/JE3UpCaUYbRIu9N0In0IciV5oyTSTjWYoIELdBxUaj5wpwLBJqx0M
LzIo4FfryDqacATn3nyCINsuMj4IHRMqjPAa49qGISHoZ7Xn2j76VR2GXmTC4BtAUd8EETEI
CWbuXhASnATdJBiGOCaMZxDRk9V9sUrRCN8w7B2n6xk6U+/DAb3GFElOX1iSQYztdQ/izjej
QnQT5agI/+q2wBvK00CxWBVn28qpWGTKXgnLtpE0tK13adPcsbgb1Sk+tnGTpuXIMlQaEgQJ
H3duaF0Sr9NZwtl2Nl3RE5QBbX5gSZJwHNjvlk/xfgEyJOjjZ4UmKPEC2GW6DbPzbAnMOCMO
PuKTFYrP7sWsxQd3sWovVu0Zpg3H2Q4qNgQz2FQ1MZzSqGQX2CtYxaYiIoNxpZFdHAbNEhaU
ZMMt50ax3lgiX+svbHEi94LcWG0tfJXmdJftxPRO82nYNrwMUlY8UHUjQ2s5SvcMGmFV8wDP
nzFLisU25pRbHHqpgPgYOKgezpDyVdRU1lLOMwreUqUo2F3S9DygX5vmU66yOfjEt8f7xa76
+PuHlHt7ajst+O2KGkZ/wtKS5tVh7HoTQZIdsg4sJ4liMwI5TUNZMpoZbWRimzSmStbgxgY8
f24nVr+GXNB6v3zYZ0nKkw6pjIY/mE9+LmW173eLfTu/U/728Ormjy8//7p6nXOc/4dccu/m
gtjYYPLhgQBnQ5jCEMoRziYCmvRGK3eimCzcIiv5VlQexDyxE0V3KkW7lte5z2l7ZBH3xxh+
a1XsbVklk02/vqjW+y1Ms69b5DSNKypzGU/1oUJK4OUnj388ftw/XXW9XjIbnKIQj/g5hA7A
NlqzqOz/Y/siaslVwbkl+WRyLA/G2aY8mtGYV23LwpYgjGfEpzwVourPXUEaK67F9Xx76tkc
v/L749PHA0t+fP8OlbDTavb7x9U/9hxx9Sx+/A+VrzwXyTr/ecG3D//6ev+s5ybnagyfEcqY
M8ShXSJ0CsDCM0Vb49V2veUbkxQd8lB+o7rWMu7SEgsSshHELHcl/m1cZxTTlTeKpItbSwyV
taHSriqwfsMiKtM6GzDU55RFefmMonJiWd4uTjDkNRQZdyimKjOd1xOuoIbI5AJJE7EHVKa0
RBNReRtaBg5WvWdjDo4ShehzrSDGCEPVNCZWYMAEjkWMKNvGUG3qqimgZkQZQU3y2ZOKNc7J
iQb4P2jJmQTc5wsjwP7xUGVFpdFy/IhIzCRXaXyUBRwVGlE+zjj4x/aMjLuJLjWIUcRoyTeR
Y5ptbXdtoQ8iJRLbdjzT9yBkDK8XBKpTyTJuXaDqfBuzogSCqm4qvB1g2dWm3BICVR96qMGz
kfSx5RBU0vQgFQoMMWQNz/QQZ6g8+RI7eo6z+hY7sp/FP8hQLeXcl8bxXaM0hzG6TXexHMic
IwhBD+immoCi6xfdib7cP73+wTZHFgVG256mL+q+AazUOgkxRXAzVrhQTTqGhDomgFQVMz73
fGtJQoVj9cYcqsCypBMxoYefvm1qwJmexgMBk2lQ65zBI81basKx3j1r+pFcl6Ta8K0f9fQt
Wo4EG0LsJftmR2IyO5PVarYXQc/4J6v6t3up57+b2jJ1Iy2IcjE2uQi8fv/g4ZS/PXx/fAEl
6O3+2+MrzkKecS5r2vpOnZBHGl83+NUYV2najOCye9FTeeKqql5CWvKmfX19fma3VFwJMyn+
bHRcWxvQrl9jO4vw3WlPFtNCgyM2BIcXaVGJD242TFJMOnZ2QMsraJ6LydfZuLcZLauxSDrB
EoKKhYQyc15MzSqZQxAaV+H8iFlhBAsiqq0kPUH2RgBtgQ4T+MGStghTFWnx0k8wLRHspJUX
8See5giKWAKYy94njEk8Q22D3z+xFnIL9HzzRBLZVgEedL1oZ8mWgmA83L98fXx6un/7G3FI
nez1rqPxcekb/cmWzreHr68sxtY/r368vcL6eWfBbll42udHOSPtMlPpSckxNCMSGrgObgms
FFHo4tv0TJFS37U9867ECYilzZq2dlxLA8et44gq0AIFBdXDoLlDKNKxvHeIRbOYOHg2q3kb
S6jtuJj8nPC3RRgEWrUM6kQqtK9J0BY1shRA97wbd91+BCx6Zf5rgzqFg03alVAd5pZS35sD
uiyhYUXy7aDDWARN+sAOtUGZwI7eNYZwQ8MyXyl8y71AEbrnJuGuC1HLZsV6vtpiAPoa8Lq1
pOfe80QEgxba6GsI4Gdg2xozJjAyzvy6MUAdLpd1WHu2i33JEOhL6xUfWBaiPHW3JDzL3O42
igwRAgUC7Dx9Q+ss6OvBIQTRnwo6REQ+nhdmHZvM99Jc13UIzl3Uq23djL3QtbQzLHSaP7wY
V0owzQSs9hC/YheWgiFciEhxqQznzDzh+MjBVqEnp5eVEOwA+mytkRNG58QhvQ5DNGDlPBeO
bbg8hJRYv7JZYP3jM0ixfz88P7x8XLFkLdoYnOrEdy3HRqT3hFLdaaUq9eK37fHTRAK63Y83
EKPMDQltAZOXgUeOUmb08yVM+mzSXH38fAGFUSmWKSXsDa4deGKRKv20+z++f32Ajf/l4fXn
+9WfD08/hPLUNXpsAwd9kzmvOo8EEbIacfeuxQTiCTmSWaosaoq5VVOz7p8f3u6htBfYnUwG
EAUdu2RH/Lm2YcctBj5mni7BswIY6SKdYnDzbsDQnqY/MGhgKAx9GrKiHVvb6RlUPEfboJ6m
K1S9RaiNjE3VEx+NabuhPa1mBtV3Zw5FavZ8F6EFqIc1B+DY43kBrXG16ll8EKyKAIcaKo7O
CcuqD/AMnCs6IJptBlC08wHasiDAaENErWBQH2F1hNYWodyxnVB235j31Nb3CXagNq/xLios
8eRUADvavRQD2zZGXVsOBu4sC9lYGMJGb5hXfG+h1fRTo/Tyeht1iZmFUmM5Vh07GtfKqiot
e0GppXpFlZuPjrhOEtgs+6VabJPQuMD0mAmB+2/MFJ89tzzTE+/ap9o5D4ciajTA3TQ+nNOj
gcTbUSxB1ipa1drSLkyvtUXbenHgFI4o9XGpzgV+DjDdMl0UCi/U7Tp6HTjYQk9uo8A+p6oy
Ah93r1gJQisY+7hAFQOpqbzx+6f79z+Nu1TCnMQ0JYt58vtapwDqu77IM7nsNVK4spFLhRxa
2/el7Vb7QjgYYDi6HV7MJcVDQsLQmjL0NMgRg/SZfJKw3BdPO/nP94/X58f/e2DHfFw70U4e
OD3LH1fnsh+4gO3Agg4JarooZCER44tpyGAwIqGCwDZio1CMViQhU+oFvm1sOkdje55IVbSZ
JHYlXEeswdBuhvMNHeY4x4gjvm9qM2BtQ2xHkeyms/HUHyLRsFy3oThPioUi41wjrhhy+NBr
z2EDzRNmxsau24aWiS9Mr5beHGmTxDZ0Zh9blm2cBhxreOeikqGPAvV2ELwdqZlv+xiUVss4
6mHI4zpZZlebuf4TjYyztc2I7RmWStZFtmOYyQ0IedOQDblj2c0ex94UdmID21wDPzh+B92S
8jBggkmUWO8P/Fx3//b68gGfrG4X/N3J+8f9y7f7t29Xv73ff4Ah8/jx8PvVd4F0bgY7o227
nRVGgo49A1m4HvXOhN1WRtZfhnNgjhVPSWagb9vWX0hRPq4DcScXWCLypR+HhmHSOrZsAmK9
/srzlf3XFUh/MFw/3h7ZnY3Yf9kxphmwQCL8aHsWuzFJEqVfmbwOefvKMHQDggGdZcMB0H+3
vzIu8UBcW+UmB4oeo7yGzrGJyqsvOYyf46MLesPjrwJ4/7yj7aJvtJehJmJQrGXSSEt7pdSn
F58UOmWkfs42RSt0NCA0PvTVPvMdFI2QyC8j0tYeIrWoed0nttbyCTUNg94AqGhQ6Sm2ZqYC
sKPFDRtgo6yyBybcoFbZwt6l1QhrxEKvAPlk2YU+FT3/N4Zy7WKdpN3Vb8blIzarDpWnWisU
O0Kbu0cClFEAxqysdT46ytqClassyxzMdzEBwNY7VxMn5dD5ZxjVOZ5SHVszjqfMhSTbMXYX
Oxwca+CAgbUxm+B4dtCZIDI3du6isiDpPrLUqZvGBrnuoDrgNDCgbBOrUScpQF07VcBNl5PQ
sTAgQYHsuBARraHaxi+JDZss82Ks8MgXa6Nkd5p1QsfzvnBmJ2AiIjQKvYnJBJ1dqkyexF6w
LCjatVB9+fr28ecVBSvz8ev9y6fr17eH+5erbltln2K+cSVdb1xvMGmJZSlyoGo8m9i2DrRV
pu9iMOxUyZsfks5x1EJnqIdC5VcVEwJGzbhfsNXL01hK39BT6BEyQn+NIzqT9C7moL8WrfYd
9AefP4qaEtC1ya/Ls0iOUj+vvfCCRCVWK9Umb/H/ebkJ8kYWs5g5uDa+6hSuo/uYLO4yQjVX
ry9Pf88a5Kc6z9W6AGSsZ9oCofuwORhXxUbDLdvpDCCNF5fn5XDg6vvr26T9yAwHGe5Ew91n
ZZqVuyNRpx6DRRqs1geMQ007CXsZ6qrTmgP1giYwZu/wuQnGvKMujzY85J6+OABsiIXIS+p2
oNyiMa1nGeP73l9KkwfiWV6vTHxmIxFNl2E7gaM09Vg1p9bR1jFt46ojmPML/yjN03J9LhBP
fkNbxJHf0tKzCLF/Fx3ev+mBTxZZbUXYFcakQUhHRCarhxfavb4+vbPUwzDVHp5ef1y9PPzv
GXX/VBR3416JryedHuneKLyQw9v9jz9ZoBUtb3IiZg6FP6Ys78kuw6CtAk1qkHIDz/mhpGrl
WJ7Ho8ATl20EbZrvmSMOxk4gui5aNna19Phjhu93GwopGZpXtB1zHq3y6nA3Nuke90Rln+z5
W481jJ+hNXlFkxFM4GTcZ00xp3+Xq67Va1wBeWDJulnUPEOHTDj2XXtk/lYrdk1QOl/eXoGQ
wg8vWQFAyN49WaLf8gJvs5zlP3yW+8EwLPU8O6GLQlQjVqnmp6dCKlBT2ybVoin0s13OiapI
EyqWJZKKlD0wRuZUfy0+JGCQU5LLgCamIPZvx2NSZOrocVzeJ6jHGOBrWqb5wv3k8f3H0/3f
V/X9y8OT0gdOONJdN95ZoKAMlh9QtbKZhrU6bVqYdjkqvDbK9tSOXywLpnTh1d5YgqLvRT5e
7K5Kx2PGnoiTIMKymMqkXW9b9u2pGMvcUCCs/lE9udeILrFuO43WMGmeJXS8Thyvs8XcRBvF
Ps2GrByvoaVjVpAdtQjeVCC8Y6E893ew+xM3yYhPHes8E7I869Jr+C9yxGzmCEEWhaEdq+tl
JirLKgeRWFtB9CXGnoJstJ+TbMw7aGGRWvNpLVLi9ZEmtAWD2TI81RRIs/KQZG3N4sFeJ1YU
JBZ2HymMVkoT1qe8u4bSj47t+rd4KwRKaOoxAWMD3f+2caZFe4IhyJNISqImFAnIHVilN7Jf
lExwcD00CcNGVbK3o3kIJuQxF1OECBRVT1nb+XKRA4KgRL4fkPMjJxCDnepjlRa07LJhLHK6
t7zgNvVsjAdVnhXpMOZxwn4tTzC9K5SuyVqWXe04Vh0LWBNRlKpN2A8sj454YTB6TtdidPAv
Ze9p4rHvB9vaW45bWga+GB7Rn2VPQ++SDERJU/iBHaEdF0i4SxLCwaYqd9XY7GCBJA46g5Y5
1vqJ7SdoIRtJ6hypYaIJRL7z2RpQTx0DeXGhZZxEDnBmJkvaS2RhSK0R/nQ9ku4tlLUiNaXn
uVLtoRScJM2uq9F1bvu9fTCwDdS+esxvYL41djsYoiVo9K3lBH2Q3P46vet0dp6ieRjEjaVr
2Buxse2CQPaFMBHhbpUG6jAymPobOXMTpvHgEpdeYzGPdFLP9+h1gY1ilzAnaJj7t+3RMazN
rmb+3RYJOxAN57kzk7pO0aUUlZKcoj7Ih9sbtjnld7PCEYy3N8MBlUB91oLuXA1sXUfy4flK
AzKuTmHyDXVteV5MAiK/1JV0KvHzXZMlYqwwQYFZMJJathl3u7fHb38oj2/g4zgpWRI2PAIw
JzhmdVWmYxaXvhIuSqGDecLiqjEVGw0Iwi2DeWsGUMkTZapzNGfPREAo5l0Y2QSLzC1TRb66
4cm40xAraNDOoPok1bSXIj1Q1luWziGpBxbS55COu9Czemfc3xp7Xt7mq21oJgIDoe5Kx8VP
2fgwNjRJx7oNfYII6RWJOtwxGrBh4CcLfaJIMwBGlhjfagGy7EUKkGmm6CzrjlnJsnDHvgMs
tEGllCd2V7XHbEdnB3Jf64GCNyllCllwoRjc1UYnDLBngJwMtvR97doKy1gc+tL3YESVi6r5
kzqxSWuh+eEYyRSfAqQmLQefPfpQZJeID/A4jBJZUp8twSe48+Finc6+1YZauAgojkkdeq5i
Gm8Wog4c6ZEd8CpvckQCzZVbkW+6cJLLSbuS9llvaHYxtHK7ALDfySDaxPXhpJwjFDY5OeIa
YaGQGOY4hI4XJDqC2TuESOeCIspxMdaKFK4Yd21BFBlsW86N4JawYJq0prV4N7MgYBP25Akp
YALHa4zT4HAymX45E3t32JYCGndadvwoaLw5Zc31+jpt/3b//HD1r5/fvz+8XSXq+cV+B0Zy
wjJFbqUCjEe3uRNB4qRezpL4yRLSVFYo/OyzPG+mSDIyIq7qO/icagiw/w/pDgxXCdPetXhZ
DIGWxRBiWVvLoVXV/3N2Zc2N40j6fX6FYh4meiK2d3mTmo1+oHhInOJlgpLlemG4bXWVo23L
a7ti2/PrNxPgAYBJuXceusvKTBzEmQkkvmySbFt2SRlnIWUYDCVWcsyxFGE9UjAskriTEXdS
xAmJCtijVGGMAp9n251aYZTrj8SYVi08TcHawiBRoELmffj99vVePG/V3SQhmypVCjxsQ9PT
StofEkajNWJ60HXwMSl98IhNY8YcQo9uuJTloDfsp9mAKXRUcE5j0T5dyEQ5AcNRsYE5cWwd
Vz5sB/o8XjR+scBhVQSLBBXjqki0WuCF0lLgJKwk32EXRgjDW1JfVgXJica7b3N79/vjw7fv
76u/rcB2HuCEZofbaFdzSBVEFcoi6dgJObkDto/lWK3sssYZBYPFaZuqIQQ4pz3YrnFFWwIo
IFZLqh8Gri27RyARNH3LKVTaYbu1HNsKHb0Cw5PZxQqAZWd763Rr0A40/efBAPqSkmYuCoi9
QK1R1RY2bAOS1j/OSLWJpbkxSXxpY8uliptEegRuIntECiTIQ6iDJ6pADjx2nSfUajpJzcHR
Jl4f4uViepAJNDAdjUlePkoyPV4w2Wjos2wb9MqiSVFncZIIaDfucaGQZSDWSWgA1rtYihbE
ZyrhAM3o5zXF28SeafgL7ddEx6ikNpRJpke6pjPQen9cVz5ZPYZSYKnHSFzSPs69wLUtp2fp
dwmgn1Zk4bObuCEHVu1LySWI/+wQ6kqFylPpXQ17eB5mcgRvJZcS8f4V9Gwk1VExI3RJHiu5
cGKWRGs3UOlNeF1kcabmADXCuzNVssiOSYMsuYOGrIFM9O3AFbVWcts1xKfMkMPk4sNjF4VN
zH6xLZk+APfBdqeDu/HimyrqSCgT5B4wTAnDls/K9ota4IQ7phOHZAuZRm3eHUK8AOlDiCk5
sORqj7AOZFhO/M567xhmtw9ljEJe9BwngpPxHpmc8sgF26qiTq94SW0dHvTOZEmThXm3Nz2X
DjY9VnG4fd/FP/NnmvxHPzFGmtLlcYhDnGNkgPrwNfnFc5SRUkezxlqI6IQ8DSxFTVctxDLB
PgcdSA230jMRuKTaRVm3gR9CAYb+loMyURJqQLhRApXVPOmFVP4MZBGJPTSOQtvnNRS117DU
4M9SW585TksT7bpdyLpdFCscTawsYdGJkq5MrvtdfoLqUN6bYvtOGCxjE3Icmz6KHy6bmXrZ
r8ilUEZWZi2G9gETjJqFPLuFac8bs93OCDip4z1MMyh7zowzxuMdJsc2aUqMnLjfzKVSpoFA
cWzPPQMNPxZRGH+xZLboHN4Q2DC789v7KpqcS2Ld2uA95flHw5h1SHfEAUJTa/ivSUqwQRjF
7RVGedIiM+kzXBrUx71lGrual6l8dMZq0/SO88qk0EaQZs7gEYotc86oyI8aqDi5wfzqNopO
SUmQNgUhuJwPoVXLk8q0rXk9WR6Y5rx9RjK0VKWX2AToDrX29ZZXhDAtxkC8KMCha1AXmdm2
ONaEtbSKHm/f3igvJg5EhhsYuacg9zou1M9ti2gYzWXVJv9YCfSxqgm3CahQL+iwtDo/r1jE
MjDa3leb/AuuFh2LV0+3H8Mrj9vHt/Pq19Pq+XS6P93/NxR7UnLanR5fuMPd0xks8ofn385D
Svyu7On228PzNxp2qoijQL7MAlpWa0hOgnYYBh5N73CtZb8EBLNsgM9+MZWmBCaGwVzqL0y7
J4M7CuagNcjLAB5LzmCHB46tT2ZO7LZhvE2WV1YhpFdUbj8+tuIm0ketYHySUJROJo0xjktT
5fOxWj/evkNnP622jz9Oq/z24/Q6Pgfi4xhmwdP5/iSPXZ4l7GVdVea0FsPLvI7o672euYQF
iJcgoObPUEAHeqf1JC1UsKW1ZBTJCg1rcOT0YV4XuG2ybcL5kuzLbxUl4nzdGhkYuRV7Re+z
QUD06KzjSNnlLsZuRENHR9lFuqo9zI7f+D5VZHIMzZ5kafCbYbxv91p7suTAkq3+cXmyrVoM
nbzQP7m+nkc3oICiuXXjR56tZxfd8EC8y+0TF9WeVPv5ltnGGdhdurYX1jXYruK2UC6Q07si
zboUTFP0utwu5Qw6FvwDJuzs+5d2/LYJQcc7ZJsmFFeT8ldU12HTZOqNJU+UXFDlkh2D4cM3
qjQ7tnsy+JoYRGivp9d67jeQZAn3MvnKG/A4g8sE1Q3/tVzzSN2gchEGmiP8YbuGrbb8wHE8
Q8PZ5Tif0B/83TFr58tDWLEvyc1CiWGr7aYch4/708xyOoZRs1/SRJJwmyciNyXVEf4HZHL2
1d8/3h7ubh/F+kpPs3qnjLRSIEt2xyjJ6MNOvuTjKozxN6gboHB34DCjyoXNQBSLz+ZmMAsW
B0aNT2fkQ+ELHySnpHejfkVbwm3XRfCSJGGXMqGPCSQpbB0ww8Nr1TToub3S05X7Aoy2NEVb
3ZI67vT68PL99ApfOtkNar/h/QCOdr2SKQ7vRSTkQVXfx7O9ftvoOxyhvqpjuT6Glhrvg+/8
h4tbJbLtpbWIlYTexqmQJdfW9VlTYL2WEdE3kOxSbbAZr5aWpzJprcFLZU5GgM/LY0AgaVI2
kegB7VOEl//MQJDHPzku1NVqE1VFXbFMPr/kX9oher5m3e67BLcxXbKMCp3UlLAv6cR0Rtkf
NPUl7dQjQ0HrTZDZpsr/VKfWOCm2t/ffTu+rl9cTonud3073+GLjt4dvP15vNfRXzOtr0min
HkjpdmXNl3GtZH6lv7yhtbulnp63lej8VDuJSfclj2KQzpaViXOhHElo6ImlTHotckllh94Y
Fskn9UsWOmXb7ci7acEbMajl1SK8ltdhaQB/3ofSnnFTk88peAmgcHbsOmsj6c6yKKTjt/q6
YckVqIyFstL1ZBYHfkDdagx84awuZ931w0YCqhVYtcvHO5PlAsmX9h7ksRhMTLU0TgL9qwuj
CLRQ5axr4td5mxYUo0q7sAlZKAFoq0yBB7yQkjOHDyYlWtm7V2El+Jfc5Ap3l19TY0mRASOt
YLuIKrqHOZZXzomZ4r827Ss/SRVZvknCPQnIgULqtQCSDvuFHRWZe6zpk0qJd5kHI9RQvwBP
s9F3XKhGEiO6mvX+jl2phEK+cZg+5piUSmTsqRkxCAvRQWHhuWpw3KRgbRZRaBJ46gvmiDTw
8JceqmSiiRA2JKcAVS+Lqlw1JLjApkEboERLa3eN6nS5Va/vBJoV0IjjLJ5DGLYmjQUo2KVt
WO46nJUcMttzXGoPF+xrSzxF1+obFZ5tURGQJ7aKEifaYSEcqmA2hoEvgp1ZsiQ3XcvQwRFU
GX6Bvvj5nGtpvTLeuc9y8khQ5ZG7lhH7Rqph6lQ9CCIn6gFSRXqM1U45Ro5c1yISucaCu8nA
d3lwSrwoWc6bR4Sf541X+0uJMNQi3qk/UVTtqmVkebaeYIh03YbtXp9MfbRrlRiHkWk5zJDh
IkX+spMEp0whmmdjN7YCEq5CfHhru2u9z3pviFlWfXzPpbzaKMRggFpmbR65awUSROQ1RGKd
FTKPc6qPYvePeaqkTC1Ti3ItC6BTirfW50TGbDPNbXN9nOXYsywiRMK0MPHD618fH55//8kU
4Raa7WbV+yL8eMbXkOzldIfv21Gh6lez1U/wg/sZb4u/Sw5MvLvw7EHv3SI/QgdrRIyHrZEQ
Z25z0yazj2kzaLj9J3ODbQvbdMbH8QIzD1Gg2/Pr3feLy3GD/mW0a27PD1zVh3hsyPb14ds3
Ks8WNoktDecv9KNsg6/0bgb9DBr69vcfL6hcvp0fT6u3l9Pp7rt867wgMeSawHwDLafCq0YW
NfKtIGfN7mWROvUAlxE+piI8ipZcO/lv2oiDXCoEsc/K0R+BuIvaCjIkWxf5wGurHW3vIn+m
hSrc8gDqwKxngLN6GLyWJSsLU4DFkOpfONLRn4Igay/GZXq3zxL+FHv5A5rD7PBxfBGNNZ2d
cg2pRMh3ORhwzwg3G/drwmyKk1Rf13plBecYkEGtRgEe851KGjP0d7yQFAV8R224nu7JUF0D
fXdTBK6n7OYD61K07V4E1lhvvaBeSDIYzfpCnQefPOJ7lxdxSYIHqp5/csPcyPatOSNjuWkZ
AfXNgkViaWgiRIFHoLtzch2lgWvZCwxDvR5QeDYdxV4W8YiRxxkBwSgcs1VCLiv07jpu55Xc
xL6BYcaIOm6ubIsOoTVOtj7i7YWvGMLezms1BrEl+omBCromg+YNEinsQTaRawNzT0Xmljhu
QAbulpKqrqMDJynATLg0SpuDrQW5kzl0UOVRIAgMcoywGNaCYLaYoS+TupjNpxV0+PrS2OIC
9DKiBP9T6C5Nd8jKc85nK5kSzVlec0yPbMu1T773nDrQcWW0NGWlcMjuESvcpf6B2WaZ1PQu
otpfa+sBf1sk/M1GdQO6C5WjT/egmIFVtLArIAdMYFopU2vqEysljs51ROYteJ/m3Rw5wuGH
dkP/yTiMiopSy6QhYAUeOapc+RGjTHeXRpsXuF0aFtnC9b8k6S+EpZlELGch/MooEq6Ni4s3
xqLz2zAgho0TtAE5vJFj08qxLOLSKJejCCs8izTUp3XdCahJ3tRuZBDNjiOEXFGFoXqxNpei
ifciX2/Kq6KeLXPn55+jen95ygxOEbMqT2eB+rbRwl+GSa07EX9xQzBaz1775Hrk2wvv1cd6
6Cc7wtMVTDwmYNkvf97w9EZ+TliEvbflLFtgbfbpPN4duykjfmupeMVeczp1hi7ykYUFpSuq
Q9I/WiPS9UIzd+eePiA6kUgwQmSXhDUjknI6N18SGiRe+/LR/NsfJ4eJnoYOEsKdYyxlFzuO
H1CnOlmxRQCxLFM9QOCHJR3M1PxtoDid7AowOEP5qXDdo+lU7cj761+nwvv6gD3fVSkdCFEW
odZoiS9OWacrp0x1Nsyqru7nTdZckYWhTIyYUp/I4OVokm+ibltHpFsTltXsVSv1kC5cpKEv
dbcclk+4Wis5cQoe51BeEYe4Vnxc8Dfe29Blc7cDPafekfnu9fx2/u19tft4Ob3+fFh9+3F6
e5felEkxdi6LDlXbNskNumJLtetJXcLofSlC5KuM+EzWhtusVCZb3WSssPAeYWFdyvOM8oAB
RuBb9kYa1k3gm9Ze/m0GQSIR8FcX1tzhdBpzh9bzeIgVYXlDh7+99/6Zqq9XeHd3ejy9np9O
ajCEEOas6VmyF05PUgOEaen/IgWtRey8Hjry7vwMheqxIsPYD0gQY2BYgYJYdjFLudCB/evD
z/cPr6e7dx5gSi5+LKP1bRmzuCf0gDBSJQVZC/ik1+yzcvsQTy+3dyD2fHdabJ2pCXw1Ksbn
iXuIDSx9BO1kH8/v309vD1rDrwPSHOIMBTJ+MTvhbnx6/9/z6++8ET7+dXr9j1X29HK653WM
FvrcXds22ZJ/MrN+2L7DMIaUp9dvHys++HBwZ5HcgokfuI7ipSdIC8G7Bu4wAMYRvlSUOHs7
vZ0f8XD5Twx3C1Rt0yA//rNsRug+YipL+oRYi0QogNlCGj7fv54f7uUFcyDNs9hUYUM7wm9Z
l9bbEDdTemMqM9ASWB3Sz/7xAXhKpyxwD+DeMWVStvQZ6hfm0/E3hgUc64Whgz90xggL+aRz
xOv1ObnaznPBJ1j4kFFeIwZeveC9OvDR2WxWyujXOStK4J3E3AOQKA2vsi4UBoOcrOM1pSgM
XCZwM3SquiQO5KX9rc4cfYr3nGOWd+Exw75IqbqnWZLH3C8vkTBodwXeEWORrH9ANc2pJjr2
PB7KuanynOwCzKNuqjQrZbea61S5SmJ1kXW7jGW2txCGskhjEEBUXy5MteT0Un9qsJ4GLVNT
rmw7fCsb5ZIDAfzAw3YYbF/20vPcQRBf3tWh/Pi0j8EtMpGVlp5KmIlzmfGY94lmrh35clPi
scy1HXOR5ZpURZFlOgvVBR5556yK+AaZcRRHiW/Qn4G8tUV/RsRRjsFeVDqia69zD5ESqaJg
NOO/oKcvfIg23yiRQ0SfN0gim9g3aUAeSSjNjrBaqE8YhYcjFLFXjK1rmNJlXqleJWKzejzf
/b5i5x+vdyfqVKnIoqbCJw8wmFvP2ZC7GZmJlEeY5ZuK+poMvmYv3d0JiGTcex/uVpy5qm+/
nd45pD2bGwCfiU51ECVxO5lwZ2xOT+f3EwaLJk/WkqJqMUA9rRISiUWmL09v34iDhrpg8lUj
/uTmpKT1c1rJdCnJJBvKVsoYbRR8mn6dNSMQG3TN8/016HYSTI5gwDf9xD7e3k9Pq+p5FX1/
ePk7Xr3ePfwGzRprxsMTqL5AZmf1AHJQLgi2AAl5Pd/e352flhKSfKFwHuv/Sl9Pp7e7W+jV
q/NrdjXLpP/mq30WRV1SgjZDApuA6bzdt0xuvM9y59k//GdxXKr4jMeZyTMfg/nD+0lwNz8e
HtHbYGzX2ZhAQFvpFIz/xHfQ0iYnnYQI7n7TJFvxFNuZqvTnC+d1vfpx+wgtv9g1JH8aZlHX
jmfux4fHh+c/ljKiuOPV/58ahJLCgbDih7RJroiOTo5tND33Tf54B7V6eIU5e+grhEFVj7p/
akpez9K1Lp2P7uO2SyGwTQJ42yr5Gwh63ZYYqFxyURD0pg3Wvgqp33NY4boGfVrRSwxPQZZr
AxLQZ/gkQT1dLmCJa6gDxkzeXeBH/zqConWR5EcpkeMiJMWBLqYryUXfw6pk+0Iv7Asqk504
LJXIvUcK7IhUDcWfslOElGYmyktl+EJ+FLFkEXZNYOz0jD4B2U1qPZMDWD1zq+2TExpTPa0Q
RAp1JoyPuQb615MWDWLBFfdoMtG31EI5Scd30LjCHumJmyI0A0mjgt9a0HugOKRP76aIYJpw
r6JczmCi8qJojuY8vCkyIwgEjzoRDy35Jj8ObdPUTsab2CDDcHHOeiasW//yUGn7OtpoIdG2
75HF9L3Tl2P0TwRfJ6MoRrYlX9IXReg7rjIOetLCOBi4yjhAoucZWi6B4y7EeyzQ/3IhvCbn
0RZjwUNi0vox8DyLXGpZFNoabDtrv4ABRFcOeZtQvyH79084x5EPu/G2CBGBog3lKeQba7Nx
1TnkmxZ93YmsNX1a54t4ptJv2euf/7bU+Q4UyjMaGI7vKVX0DE+rIFC6LA2jhOO+gg5CzRlF
TgHXxiNNTy0DjM3OVCnyqoC/19r6BhRqkONZcuArSdeWrSVdO/TsQdaaMkfCeO14Sq4Zt/jC
WFpgwmNtGUdOk4sDKi4t5Iu9CAOmGaaaD7+m7LMZV5w1rl3bWhFMykOSV3UC46oVaMVSF++y
wFm4v94dfRJtNStD63hUSxZ+aX0FxxzyNrIcn8qDcwJ3JrymVkfBUW5zQSsyae8e5JimCoIv
aLTbHPIsEvoUObYSHDg8cqDmiRDVoAcdVYKj4h4jaU22Iz91xQckeFntGWqDFknZfTXHJu2p
Zbj3FTcAjo53QP2zxxBSOfyEKlMynuiHBTqQlbWGxVzBLapYeKEvrIkFjDB6+LY8T0OE2tBo
amz6geoww6LRaJFvWqatOL/1ZCNgJukWNCQLmCHHU+zJnsk8S0G2BTLkZLqzqjF/TQJjCWZg
O46WOwu8YF5VJjz/yYbsBWwzMaiVF9kFWAza/EM05zxyXPlU7ZB6pjaqDlmN6GWgWaj0/tjn
OMzf/+81Gg+GBbajHMkOlZQmga21D1mu5iml6M8GXh7BXNM2xMD2FIzWXRE5Okr0eHowZvBv
XJ6ZasSjP3l5Fn0/PfHn68IxRM6yzUMwAHYdS0omH9YLRvK1GjiKDpt4Aa3xRREL6MU4vFJh
BeuC+YahbGUsim2DP8Ompy5UJGsQHplta/LdEauZrBEevgbro9JcejsIj5mH+8FjBq+hRKA2
BSiOFJDHT8H6ZhruJ8b7aRYVmdTsyoWXwhPHVKweSpKqIWvTrB5LEisp5dKgSiK0mDSw52Uo
yVrtS2ieogFpvP4d/V+UIIvn1a2YUPTAdg1Pu9J0bfItFDJk4wV+YyzCD/m342lZOYsKkuuu
LXqj4Dx7mUcGOgKGZznN/LLd9QJvESgQ2evZVfzE9F1X+WBffeaHFDKSM2fozQq66lIlfN9Y
/F5QWGn11FZ9KYJAiRFTVy2+IJskYuY4luQcDDqTKewtSYny5HeDhWfZyu/w6MpRoPF3YCkG
LOgyjm9RFhRy1urzCNiSoIZGYOEbt6WtDiRc16ftPMH27YVwHT3bWzDSxO4HErTz2aX5My4y
9z+enob4i7MVQwSZIBA4pZVIyUA8vHo9/c+P0/Pdx+gb8S98NBbH/0fZky03juv6fr8i1U/n
VvXM9R7noR9oSbbV1hZRip28qNyJp9s12Spx6kyfr78AqQUkIXefh5m0AYg7QYDEIuvEqORV
Rb1O7E8vb//nHzGR6rcPNBOh2/tK+zBYDyk932kr4B/798MfEZAdHi6il5fXi39BvZgHtmnX
O2kXrWs5GU8H5qIHkD13dUP+22q6SOFnh8fgfd9/vr2837+8HqBq+/hV91oDk6EhaDg29EUN
mtlUo5nx4S6Xo6uByRoANmFFwUW8Gs6Mqyr8bd8xKZh1u7TcCTnCPM7spUpWjgf0urcG2O/2
9Zmxus3TMzdDYbECxYW/wOgfXn2qH/aPpx/k6G2gb6eLfH86XMQvz8fTi/m4IpbBZMJGKdcY
wrjwQnwwpPHsa4iRXIitjyBpE3UDP56OD8fTT7JWutbFozGfBGVdUHVvjTrGgLyzAGA0oG4y
60KO6Kmpf5uTX8OM27F1UdKc3jIEEc7UwQAy4ufL6ZlmX8ACTuia+nTYv3+8HZ4OIG5/wEhZ
Nka43Cc93mI1tkdeULjLqb2dJnMzCHoc1sufraJG81fBy10q55emKt/Aek71Fm3trU28m/HH
SJjcVKEXT2DP9zfTIOIbiySwJ2dqT1KrGANhiH4EYQk29S6OZDzz5Y4/XvonmMqPOCmmKyqF
dm8d2mVXxVLndoj/1a/kmNVAhF/iXQzlmNHYcucCCPAbzjVMZL68GptzrGBX/LKTl+MRdTNZ
rIeX5rGEENYw3Ivh0zm1LYmV8w5pJ0DGI/5m2cOwCByTQMSMJoVcZSORDQbEyVFDYAAGgyXZ
5Y0+ICM4XobzPsyIOKQoyNB0ePsqxXA0ZJ1HsnwwpfyoKdhO0RAV+ZTKl9ENTODEkwZbBj5N
g7LWkCtyO5UK0+MszQqYWlJuBi1V0S8MZjc0ssTib/PZSRab8bjnKQR2SXkTSlYoLTw5ngzJ
2aIA1Pu0GY8ChtVw21SAuQW4NEOHAWgyHXNbopTT4Xxk+CvceEk06Yv6oZFjrg83QRzNBlRq
0RBqynQTzYzXsTsY99HIjLZnbm1tKL///nw46YcKRoTazK8uyXWW+k31pc3g6oqejvXDWSxW
JIANAbLPbAphKL0AGRupC+PYG09H1J6q5o7qWyXjOCpzU985NMZTsNDNcljH3nQ+Me9QTFTP
8WNTGT1rkHk8HtKNZMLNYbJw1jFxK2KxFvBHTu0wSY2HAzfHevY/Hk/H18fDP4aYry5dSuNy
xyCsZYv7x+Ozs3DI0cTgzcNNxxJN81i4L9hN0IiLP9B0+fkB1LPng61+qchmeZkVv3wwV8EM
eKq6vXyF9Yn4DJKm8gXdP3//eIR/v768H5W5PtPz3yE3dJjXlxOc20fmtX46oozKl8M5vRBA
5Xxinl0KNO95MlW4Sx4HqvtgyN01I2Y4dm4AeJ6niK1jv8iiwdA2ObHUDGsE2NGBWTlRa6c4
uxo277U9xelPtMr7dnhHCYnhcYtsMBvERlbcRZyNei5h/WgNnJe3cvczOWbtzNeZ6SgeehkO
Ext+LIuGQ8Ji9W9bw6uhvBQKyPHQfLiI5XTGvz8BYmy8qtXsUYVJ5s7T6YSuwXU2GsyIPHuX
CRCnZg7AlHoboOU24UxSJ5A+o/OCO3dyfDWeOkecQVxP/8s/xydUkHBbPhzf9bW+U6ASraYD
Y7ljHpdcGcxVN5yAFS+GlgSZWUnqGklsiQ46VCaU+ZJGJpa7qzH1cIXfRlI3JDceklBmGA/Y
tFY30XQcDXb1SUKG+OxA/J57SsufRvLKuEpBZ5WB8Yjyi7I0rz88veJdlbk9jTfhq3mPqQec
3ZjQNcjj1EtLPh9dHO2uBjPTbFzDWIemIgbB3cxMiRDunbmAc8U0plKQERsNUezGw/nU8M/i
et6KyVvijwI/2oA83TLbxr0BKBEnihhzPVOLOgSjFeuyiE2gCtg2NmEqyNl8arUC33gbXRH9
TO9/HF/dXH2AQYNvsjigUurwjd7QuUA6OiBOgW15mfA2lfa/bLZTgAHJ4Udj3GphFrkXy2JR
vz/SgdP4UOV4XvHZkDUJ5s69lZ7pvKsZyvr2Qn58e1cGp123a7/2OgB3c5p4cbVJE6FCO5so
+NG4vFdFmudBYgSxpWgfq+SaSolkCAIRp2IbRCK6Se1qcFWE8W4eX/f76AAZ5gBrckRbDSJU
2U5Uo3kSqwjsdk0tEoejv0fKsuVsU0SWrTGfd+zHs1mPVoWEqRdEKT6h5T6bgQhplOWDjhlP
NoGJoEkcEIUmsOicZxxhxrpoqdHJC/pj2PYVGedVFXvkmgZ+wM6kYRJEm6uJeuY1eyzx8zTk
I027Xnu+4MyXVLQwos7jTzsWWA1EOxHp0zjBdQK/KkBHByNJkf4k5yKRrbcXp7f9vTqzbTYi
KZ+CH+iPVaTVQhiT0SEwM21hItTjjAmSaZnDPgCITCMjlh7BrgORF4tA8G6HhHBZ5MLjX9U1
izHjP3d3tm6/2xvMbEVt/6ICWWWWV10CHHKrZiFVQHXuVhTKrOJV3n4hzevnFl/bgRhqa4sM
vWDiPlo02Fh4613aZ9WryOyE7HVrlnkQ3LXp2kn/6tZA//xAn/A9LqJYeB6sQpNZm3h/yZkf
LqWhUMPPJjdalVgpmQhJLCS0vAl/6iIaywAXoyMx9xQLp01slicXAVqrm8DUo3ZiGIgXRmbX
3eIShd31FAHlHoS11eXVSNBCFFAOJ4O5CTW7iJDaX4y7HnAcPLK4SjOD88mQ9eOSURhbARYQ
pDmwV+Tc1KkbAPh3YuS+hnWiYp4/mTtRXxV4Cbs7YD9fl8KHRUa62vqtgRAFx2eGWU8IOjVC
aaMjsjoo/NikqTztmtoJnwiUCc+oLTcT/WB8xGCW6kwxROM6ySTwIIn2tZJ1Y0VcKkOYXY8Y
vwc7dJczYljWkGqBTn5VakZ0wTA0FSIs3YYs8Aqki/w2K3q3oMS8mWHBSQ1LaedU91sAmUQF
UoFRuTKEXcZ1mVIjavUTMz2o9C9qSaDJMRHHMFh+TbYVeaJjdBhfW0E+r5dxUd0YKoAGcZqF
KsEryCxgzsGlnFQ0sYCGGWkYltBjg8YDgHGzrKOqsPlLUhj0SNwaBXYw4Jl+iKnjK/hDB5sj
EdFWqNzvUZTycjP5Kkx8Nt8PIYkDGI80ayO8evv7HwdjhSeYdKFx7uxZVR6cOgG7l+rytMT+
fvh4eLn4C7ZSt5PaeVc5YulCAMDGMqpDGKoDhaFMKHCGeV/iNAkt01hKA4wk8vOAXIxvgjyh
tVpiFmhapsKnAN1m5nVXoNiJoiDqEAhdS7/y8sBIf6z/NAutE2DdYSKMK5Q6IJUO6cTbFcCU
bdN800fXUEVUoIxkkzvoy6fj+8t8Pr36Y/iJoj04idUoT8aX5oct5rIfc2m8JRm4eU+UM4uI
11QsIt7EySLib2BNotnvtIm1S7NIRv39nvFXKhYR719iEXGPVhbJrGdq5rOrjq0ZmCtqk2Ni
qA2M9U1/hy1PDrYx9LELMaFMcS1W8576hqPpoKdjgBqaKBWQzAQ15Q/5akc89Zin7mn7lC9k
xoONu2CK6Bu8tgs9raJvrwZ8ate0ScN5xbHPFlmaRYG6UYGeSRPuNWBQ+Qt63dTB4dQv89Su
W+HyVBSh4CK1tSS3eRhF5p1Gg1uJADBnPl6BjrPhvgSlKhIJpxG0FEkZFtynqvvn2wxC68aK
RYioslhy7z1lEno6LFhLXYNAGcpjEDjvVFbzNiwgJ5Wn1faaHiqG/KqNsQ/3H294De0EPdwE
t8ahh79BArku8bWQOeqbI1ZnoobpxS9Ajlvxp9OiLpJpdi2+Br5uw5PRhspfg0gMqip2nvsa
aZT8GXqahj7geiXKvRifT6q7xSIPqcLSENDTX8VtWYvcD5LAVyIvSkqVSp4ubAcum4yTjkGA
QuFZ31qYphXQYE99ixHh1kGUsfJ1k/S76w41Po5k/OUTmp4+vPz7+fPP/dP+8+PL/uH1+Pz5
ff/XAco5PnzGiPPfcd4/f3v965NeCpvD2/Ph8eLH/u3hoF5uuiWhVdnD08vbz4vj8xFNnY7/
2ZsGsJ6nkp6j1Az6UK7TjWcgAYFwRaQdjqrOJkb0ixCz+OFNc5KyESAIBUwEqYYrAymwip6r
IaDDsAE4n+3QsmEiG1K8IyGUhgLOj1GD7h/i1nHB3o/twOGWSFsB/e3n6+nl4h6zOb+8Xfw4
PL7SHIaaGPq0EvRqyQCPXHggfBboksqNF2ZGbjsL4X6yNgJrEqBLmlN1r4OxhK286jS8tyWi
r/GbLHOpN1nmloCBzlxSOALEiim3hrsfqMwiNPaQQQ+aoBQLUPf7or5a5MGuyIUmdmpaLYej
eVxGDiIpIx7otlb9IVFcm8EoizWwbKYfPcdSja3jRdRONNnHt8fj/R9/H35e3KvF/f1t//rj
p7Omcymchvlrp1GB5zlkgeevmVYCWPJZ4VuC3KKw1nw8cuoHznwTjKbT4VX7TvBx+oHWEPf7
0+HhInhWvURblH8fTz8uxPv7y/1Rofz9ae9026OJEJs5ZWDeGk5mMRpkaXSr7P/c/opgFWLc
8DMdCq7DG3ak1gKYoJG6VgcFUq4OmFL83W35wp0Jb7lwR6zgtoJ3buEH9I2mhkX51ik6Xbp0
GdeuHbNzQJ7Y5uaTUTOQPgh8Rcm9HjUNlFINpH5fwSw/PWMUC7cxaw64w2bb/bvRlI25zuH9
5NaQe+MRMxEINoxu62p2yJn7O7aIxCYYLZhB0Rhe5usqLYYDP1z2l79iT4szizr22YhzDZL/
ZFplGW9j3pCEsOLVO+tZsjz2h6yFdLOf1mLINADBdgt4Ckxs7R61sM+nM75cQDTfnS19OmTO
9rUYu8CYgRUgCC3SFdOEbTY1jaC11KLy67rLXwTutgMYxqNylyYiftm1RZRu68DvPMJx0W/W
pogDUCzdM8YTOr4p/5Espix05kB9pq9L9dctoObl3BQHeWYFHLLna+JUU2xTdkxqeNc7PVkv
T69oB3Y0HXTbbiwjUZyZgeguZdo9Z/MqtJ9MmPkG6PrMFrmThd/wvnz//PDydJF8PH07vDWe
d3z7RSLDysty1kCs6WO+ULEfSmckFYblzxojJCdoKBwcc+drdIr8GqJyE6B5TXbrYFGErDgp
v0Ho1thz3mJ7JfmWAqXx3s9RAvfEDXc8tjSoQpxjny1hkChxN12gOUDB3y+0vEeckwywz6Cv
LW2F6fH47W0PCtrby8fp+MycxOiHw7EjBc+9CdNP5brjnnoukd7Pbs4Nh4RHtRLl+RI6wdOe
NERz7AfhzdEK8jUGIRyeIzlXPTmi+3pnCKcuUXusWTO6dfdacKPMpTwh4j7WTGnOIt20GxzR
13ObFwgLEYVFKtmaapx74CJS2wiGjIjWYTmdpsPiuA0mgq26jjXKoaRYBjsjHBtBeh6c8Hyd
cZSuQq9a7SK2WIK3n2qFvI3jAG/e1F0dZiJnkVm5iGoaWS5Mst10cFV5QV5f8wX1qzudvmzj
yTm+JN8gHkvpfZlH0ssmuUhXlIFVThJQinFhF67wsi8L9Ks8Pqo3t46u7IMegn8p7e9dJTN9
P35/1han9z8O938fn78Tcyv1XFcVeSnra9DceAJ38dLIiVLj9YUAGSbehCqAf/giv7Xr42xD
dMHA7rxNFMqit2kdhWLF+C+uhXlwk+oBUyT84/FvjFxT+yJMsCPKfmD5pfWk7GP6UZgEIq9y
TDxjmvQKx8CirQGkXsyyQlZjY20KAnHiZbfVMle2inQRUZIoSHqwSVBUZRHSJ1kvzX3LdjMP
46BKynjB53rRV+PC2NEebGUQI+hW9YaW7uBVZ7QyrwqLsjJu2TzzjU8B2NcImwR2dbC45e8f
CMGEKV3k275lrClgevqwM15D9CbGqJCnaziNXLXZIw6gWkumzYSV5Kdxzzg0xd6lKlECOnaQ
yu5SZVnnwicd9ROFctQoDTOFKzBHv7tDMO2BhlS7ORf8rUYqM1pqDlvDQzGbOECRxxysWMMC
ZirG3BOcuF+jF95XpzQc525oum5Wi7uQ3tISTHRH49gSxO6uhz7tgU9YeK2VWNubvhm1551M
vRB27E0Ao5LTRFv4ThKmhhWwBqEJDlpdm3AjMm8SABuXKnBpBexmVawtHCKgCCVHE07mq4iX
XiRyNMtdB7UhfMO0t2FaRMas4QcouvenPm5qWgSJBypTvuGOlVWkB4e05JowsFWULsxf7QYj
/YpMc5t21FWiaboyvegOpDGjH2F+jbIrZ8sTZ6Hhsw8/ljQRbBr6yuAVWLsxezCjTRNufJm6
DVsFRQGsPF36dNrpN1WhWD3ZsLA51mq6M7TjNvS+FgWYPMAhx+Uo0FospG7ALV2ps3tXy6iU
a/WiaxGp57OtoMktFMgPsrSwYPqch8MK4ysP6KMmygc950LrLGYd0OZ7ZCMcKejr2/H59Lf2
mno6vH93H67V4b9RQ2cdmwj2RE+WEU9boWPmmAgO+Kh9WLrspbguw6D4MmkXSi1AOiW0FP5t
IjDpuSURG+CqtnYjolK8SFESDvIc6Lg7F/0h/HeDEQWl/rwe3N4Ba295jo+HP07Hp1qcelek
9xr+Roa329GqNtSuueftHJqojDa/DAejibkQMuB36MXAWqLlgfCV/g80tP/rAF2U0I4RFhq7
Q3WDQI5VgmQcylgUHuF4NkY1r0qTiJq5qjKWqfIkKBP9gdo51di86L6JQWxE42szMSVTzjYQ
GxV43MtKOiW/Pej/Q1No1PvBP3z7+K5ySIXP76e3D4w1Qm3KBapdIF7n113nCLB9uNaXLV8G
/ww5KhBPQypCujh8JSpVjtBPn6zOS2dYpWLvW/y/cXo0WHzpVAQxmozz54hZUo9hgGK7inlt
Vj5h2u6vap0maZlrK2uln1BjFyRwnl1N9Mbn8gB23HUhRQISaxIW4V1g91xhWWb4W9NtDi/a
rwbMwKKZqKOI1iYKbbmEcSLzAp0RQ1CmiVsc4tUpzanQ+G26TSwdXOnTaSjThNemuoJh+y/d
KvPUF4Xoe0jWNOniK+xvZ83VYEZQMPFL44rDxOEZkku3WQ0e7Wt/1a4q90rFw/qLARYBHKJx
l/hlgfU1aXO6DC02GAmy0tV+qFcJyAURcCS3HQ3mzL7TZ3yJ5xt/iQDSg19TBQnoIOvA44am
3R662Ju4ylaFYkROq2745Ev2h79RSZgXJWVmNtjeNip/hjL3OdOCDUpYKM9HZ4jW4Wpt+dq5
E6NGDa3xl8DY3OYY6PMsT0hqg2kh8JnYlLFrYyyNdW91NRbXOEpwSdrxMt831UhS01IdCZSV
KgjL6hxW5HR9bWXQ1U/cSH+Rvry+f77AqIYfr/r4XO+fv1M5EJrrob1Wql1oODB67pTkuhvP
gjKjwdmb9Z0uCxfZWTOmaYGB9WNKqGrirpB6ievmDOg4YGXVuoQZKITkttT2GuQZkGp8mvJQ
XVfqoo3IHGeHTluEgkDy8IFSCHNE6G1uia8aWL+2UJh6pKGCD1e2uSmR426CILOy8tbnBLDq
OHOD1GBPyEH5r/fX4zNapEAnnz5Oh38O8I/D6f7PP//8X3L3h85VqlyVM7PLW9bqC5isu/a0
ssG52OoCEhhnq60Kjl3vZeSovpdFsAucQ6tJ7WbDe8i3W40Bpp9uQdVb2wT5Vgax85lqocUL
EAZ6nQPAGzX5ZTi1wcoUSNbYmY3VB4FyyK1Jrs6RKN1R002cikI4QCORg7YVlE1pI3tp1NS9
Q64vAWCcAtrH7ltcAuo5tEmy7swo7Hh0O+yTRbqpcOQN6S2Nr+mO+G+Wbru31ZgBZ1xGYsVI
Jw2Gu2jBQVff08+UOoRWsmUig8CHzazvMXtHc6NFEUaS0AgQ5kCekEEP6/5bi7YP+9P+AmXa
e7zMJ5y7npbQFdoyDigZVqEtwK0L8o5dozSVVEq2BHUb/VEdZ0mDY/a02GyHl8PYJQXoRm1w
AFi6rKStmYhHLAusBdLoxCA7qqj93cIhmL4laRCBXE2K4PRuIELxU2nXigGnZfFlNLTqsp3r
CS64luT5tIk4Y3Td4lvXtYacN7pxs9MEaB/ebZGSTZqkma6dHMdK4GjV9PPYVS6yNU/TXLws
my1hFKD3WazEchhGfImxSNALUQ0aUoKekxS2UOTVH+pSyHSr5mAwmsqqW9fqmaeAukOzc6Gp
nGOK3jih4A/woQJva/Guw+44KapWpeWW3iXXhyxeiLLdcuprLiztimpC92RdOgwIJSJ11Vl/
w90r9U32L+bZmeK20vZDlVuYvxQkh1RuT1E9ULALVytTf4GxA8luWX/H+qHWn1oFa0nKWapb
2BYdtOuAbke9CNkgYXqVyURkcp26y69BNJdU1lJYwDEAK6geH3XlYt6oarhIgNsKfDjWHwQ9
lyZAvwj0quUa28yUJrCXS98+NLHon81vOHmbFOuu7O52Ed+o64CEfLt1BXqzhQkeb30jrbZK
99BhsGuy6869hDSViUg9muD4MlOuu/j/lV1Zb9swDP5L2zAU26NjK6sWOzbko86TUQzBnooW
3bD9/ekjZZu6DOwpiEhfEsWbFH5G02fL/B15DIWVEt2BkBCv9l/IW9cD2rp0UFqyrc/OUCxO
cQvidWJhwEpCaIHO/rKGiwbkovQh9rY/4fD3uspIMEXb0r4MRnO6TIorOAQi6PjxF6OGDRTd
NXN8ugO7E4RrjcBbeGP+d46fOJ3RKhR5N02F/AORXS98IdT6RzsHqtqyJt9e/97f3354esq+
x7tyK0N5Usaky+otEgOlGMFeYP5pFXNrmjx8lviqwQFW7DPysu5R4djBnpVhI7kHvo9NZxWF
k6qXsypIASJvU4r27B7A0dpjl1DLm17DmqAoaOIxeEnQLGx0dIy5ZHu8zU0rvC74Fxcl8aid
yN4aZKfaSyOSVyymxeFe2SDPN18EnCrt5HxmWVRh6ltosAcAOLxKr1ASCG5wscpgNw7ubOIP
Xx9SOPq6oXz89MWfw26o7IIldeuY8mTgb7j/+g2bCP6J8vXP/f35512Up45XLeaX/i7uSHDP
/USAjOrLQDU7vsCcJ7iU9LtMAdZqZSxE/E46aEkNXZNGEjXaauAOR4dYm7ISP2ln+ERAG+jI
MXop2yny9PVWeLfTyj29rBDgp5R/K2JJbWMvyJosvRvOl2pIWZHsnYLk7aEZvnjjjb7CXy70
EBruWYfcxTIGKz0l03oca+bwyy0wqk6rDUz7Plp2c0Jdw4EIpNyKtm6xbbNY1NUGYjx5s5U6
2PHvi7w1X2HnSi/BVz+qOdxT3kxxyJ3rh/twGgfTlzKPnBMb7fDQzsGoS6Pzl4dZZrQS4xg2
vJPQOS9tCX7g3ia4gYdojRN4U1H4FfU0aLWSLNFdmgjdflHbJdVnQFeveXgVZa2HNd7BjbtU
Mh2DkB/52FIYZxLbXF8rvE9aieRG3do0T4VJSQhe4LUzzkrterB8pa5CjmmU65u3c0iplOEm
SRCnfe4Ar0OvSKfMb42yqYB5zJrh54sewBNPWmSe+KmIPuwcwNxCxn3yywapZg2ug/1F2aE6
3pj2ymzUiBcPzADhzhS5EXeGBWNvE365G0qK0UN5GZWeczbNP27w+V8a1wEA

--jRHKVT23PllUwdXP--
