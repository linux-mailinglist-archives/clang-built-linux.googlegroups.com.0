Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOMN5WAQMGQE63OLMWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 398CF327169
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 08:31:06 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id s22sf1496267otg.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 23:31:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614497465; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vy1OR3e1PE6rbVnSaKVuC+Rcp01xSnGbHqOKbkqJUchGsiM2KZp1HNsQcwTon+0KSj
         qnN5KWE25P0BZWMi+BWSDPfwBi6j0O/uW+zRwO9wF05DQD0uOJP/rMEokrVhS052RYut
         3Ly8vwturs7+77WOFLfFGIpfgKUlWJDINBRYOBpYrOVlX7s0IEsGSBa1t9ktVLoniX0P
         OvWWXRnpDxwMaF4b7dvJsOxhdoQ1nHpV4wtuxOnQtN8qz/6qCoX8D2D4x6PTFw4pRCCY
         qdqON57aeYzYGmJliNEGYLu9fx2DGDSV6LnK6yAuGXMt0km7bCToUxf8hoTjbkK9O3Rx
         sWrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=MQGP01ap4dI3obPWbO2EWTFwLAzJoeING6seJcWd4xI=;
        b=nCgjMin8a1RJuCz3ZKFHyeEuJP5cpv/NlqbCro2w5DNva8BrBb3rgbToOaB3NxGf0C
         k9tIqxpedxFfF1xgeNMb5m08idir7hXnGA2HTZ7ySt6LtX58wSMdTIXrlR068ssUi8C3
         M5m6GPbx5259DJxE6dAzPhpY4MqRQtzIUsGZgAlxRbBO5K0DByHWhgFiFLSl4L0sh/Zv
         E3gPzcLwgXWUcDzBkG77u0skIMVeZTcjOzSrze9rgAN5EhOtz/xfxjwwwW50vJIdDbMc
         7tUjsj012FcqqSP++RJRdAV0MKW5SG71BfzJXhu3M9TMjoL5epMWyV2ZjS7l9xeyBYbL
         g93Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MQGP01ap4dI3obPWbO2EWTFwLAzJoeING6seJcWd4xI=;
        b=MSYaWDI6Rqurn0JN+fPZ2bHWFBGBqLdyIs7+RYHFkMA0zr1Jk2X+7JibHLUiLiz5oy
         NSKnrQpbfb/tL5Xt6V2pfDI29ZY1biC2qM/Jdqo092q88UX4lRJbQ9Ks/weIUosZUXAf
         L5qZyBE3QCoRpasVZHMwNtZ/YvfBz0gsN0GZnTRzqw2M1rboTfZ52ZE0Lvd7irfWjxGr
         BWZ+c7T5R/dCNzDq3A20juFe66cjNhpO00EHTt0aBA/UsQVb5M1nwP7onqiOQ35lHQlT
         QLm+ZxVAH+We/hbKVyGdJIgOgkH7jmeW3WwXa/z+yvcDq9gPVq0AuzEMzO9esKHB6lRc
         4vWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MQGP01ap4dI3obPWbO2EWTFwLAzJoeING6seJcWd4xI=;
        b=OlVEUfO1cMU6+pJwlMMBmWDXKAqLBPod1cON8JjlS6DfilaYc6on5ISxKJC8HIvPZi
         UuhplxpgS92z/dW9Qq+USwKuY/DjWQdEgnOFCg4gvEIZWkT5jq8S0PznABKu0RfDm++v
         JmwSThTgOzt1jZXuLp5IPfksx+yzr28zNisyGwO0aHD9GVpiGyebNtSX23LFzzkJzbOS
         PFFE/0KmJ4D19zBQqpnkDvferKvieem6Cz3bpoiy7upaz1Yzc2xBL4s94iUubyIpLg2D
         cW8Gq7b5hlgWIAdKnU9JxYCmuOi/DybagAc9w63Jvxq7fLFdpWgfcFosq6DhhNISGe83
         JZUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VtGFQHOoQxbyqDaszAOGjdkz4pvf6x9QlzamYFXBsgiLsVsnk
	L++ETdbWjh72XHmDR+ZoAfw=
X-Google-Smtp-Source: ABdhPJwKEPwwJ7ii584nB0MbuTXo6I39/mBrE9itoxCATrU983Mr43vF7uNJuXI5Qwv7a6ug1X2Mjw==
X-Received: by 2002:a05:6830:1688:: with SMTP id k8mr9093097otr.45.1614497465149;
        Sat, 27 Feb 2021 23:31:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:70c:: with SMTP id y12ls3410356ots.10.gmail; Sat,
 27 Feb 2021 23:31:04 -0800 (PST)
X-Received: by 2002:a9d:4b99:: with SMTP id k25mr8787807otf.327.1614497464713;
        Sat, 27 Feb 2021 23:31:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614497464; cv=none;
        d=google.com; s=arc-20160816;
        b=kXsrtpT+KnRPgOSEeeW2J+nC4y44ugPWJfFglUidcXzMXSlxiKiiOhTEbmsOp/pI/J
         DqCTLwXdp/0C4B+9YPcU+iyubuwP3I9XlWU4yvTDi1VcqOECvV4pUDEpMFChyxu7MhiQ
         88qrbb4lJhKAPvArhmfZVmF1i1EBUmRo74u0NPMgT2XrjQ04fUdawTBszmpRVpwswoz2
         mtLPcggsgGx5dyyRWvQ+JQsN3Sf+GLmpjh08J4x19I7/OqO616X0C61UAjAOWg/79pMm
         USNpqT9PA/HRJJSm7mIlPOFx18hsfj8aS9z+UJ6rWXzrmBm48BSK19N9lvYmmra0GfAQ
         szZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=K+GLGJDr0Ixm63nF7fwsdRMjZL36ypwEfxwYg5dURQY=;
        b=usdSAqpxcKL++NqbASv35spcrlE5bPzjCBVTR+sWMLtVos8wf1hnxX5NfoUrVv1PEQ
         5hOY0Pp2RYxxDY6+mPzi7twS6pztETyGwJzcWpNfl511iXxhaB9zjkfmwz1OJ/13sa6C
         llhUa1K5k0vFRry3wEOUMYTJHYKkUAp0YcFvJCJ0rjS1PSJYPaGAMMkDmTIHLnfTJW2d
         B1qgI9TEIo5RHs5gfnxJY0+jrnCYq4jVLueZsAY8Ka8OLBl+pCBp1A+P5aJ3iSyGqlkV
         hF/4Efr/F64QdPsPpqB3mRr+Z1b8V5tN+dBtzfxm2ash2CqsYXoU4DKza6A/vLtxGj+0
         4YAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id y26si952366ooy.1.2021.02.27.23.31.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 23:31:04 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: WUrE6GceQRHQQ+YxP1hCEYyWBoo0J752SoywAtY46bDCpCeofEqOGv6tZTqzHAy+kyq5E27Ooh
 mcE3lflll85g==
X-IronPort-AV: E=McAfee;i="6000,8403,9908"; a="166079293"
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; 
   d="gz'50?scan'50,208,50";a="166079293"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Feb 2021 23:31:02 -0800
IronPort-SDR: gYlcQn73+5KbyLPlBPsfS1jcojy4m9sU5knX75xMsBhzhUkNYjtzmn7LHmQUQKpAbMi3MfQH+T
 oAtTaak6dUnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; 
   d="gz'50?scan'50,208,50";a="366360100"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 27 Feb 2021 23:30:59 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGGXa-00045Z-C9; Sun, 28 Feb 2021 07:30:58 +0000
Date: Sun, 28 Feb 2021 15:30:26 +0800
From: kernel test robot <lkp@intel.com>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
	Quentin Schulz <quentin.schulz@free-electrons.com>,
	Yuti Amonkar <yamonkar@cadence.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c:1403:12:
 warning: stack frame size of 1088 bytes in function 'cdns_mhdp_link_up'
Message-ID: <202102281524.h3wRFjaA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
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


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   5695e51619745d4fe3ec2506a2f0cd982c5e27a4
commit: fb43aa0acdfd600c75b8c877bdf9f6e9893ffc9b drm: bridge: Add support for Cadence MHDP8546 DPI/DP bridge
date:   5 months ago
config: powerpc-randconfig-r026-20210228 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e0b1df924ae06d6d88582334087d2eacc6702e8f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fb43aa0acdfd600c75b8c877bdf9f6e9893ffc9b
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout fb43aa0acdfd600c75b8c877bdf9f6e9893ffc9b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c:26:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:95:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c:26:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:97:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c:26:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:99:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c:26:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:101:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c:26:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:103:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c:26:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:105:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c:1403:12: warning: stack frame size of 1088 bytes in function 'cdns_mhdp_link_up' [-Wframe-larger-than=]
   static int cdns_mhdp_link_up(struct cdns_mhdp_device *mhdp)
              ^
   7 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP


vim +/cdns_mhdp_link_up +1403 drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c

  1402	
> 1403	static int cdns_mhdp_link_up(struct cdns_mhdp_device *mhdp)
  1404	{
  1405		u8 dpcd[DP_RECEIVER_CAP_SIZE], amp[2];
  1406		u32 resp, interval, interval_us;
  1407		u8 ext_cap_chk = 0;
  1408		unsigned int addr;
  1409		int err;
  1410	
  1411		WARN_ON(!mutex_is_locked(&mhdp->link_mutex));
  1412	
  1413		drm_dp_dpcd_readb(&mhdp->aux, DP_TRAINING_AUX_RD_INTERVAL,
  1414				  &ext_cap_chk);
  1415	
  1416		if (ext_cap_chk & DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT)
  1417			addr = DP_DP13_DPCD_REV;
  1418		else
  1419			addr = DP_DPCD_REV;
  1420	
  1421		err = drm_dp_dpcd_read(&mhdp->aux, addr, dpcd, DP_RECEIVER_CAP_SIZE);
  1422		if (err < 0) {
  1423			dev_err(mhdp->dev, "Failed to read receiver capabilities\n");
  1424			return err;
  1425		}
  1426	
  1427		mhdp->link.revision = dpcd[0];
  1428		mhdp->link.rate = drm_dp_bw_code_to_link_rate(dpcd[1]);
  1429		mhdp->link.num_lanes = dpcd[2] & DP_MAX_LANE_COUNT_MASK;
  1430	
  1431		if (dpcd[2] & DP_ENHANCED_FRAME_CAP)
  1432			mhdp->link.capabilities |= DP_LINK_CAP_ENHANCED_FRAMING;
  1433	
  1434		dev_dbg(mhdp->dev, "Set sink device power state via DPCD\n");
  1435		cdns_mhdp_link_power_up(&mhdp->aux, &mhdp->link);
  1436	
  1437		cdns_mhdp_fill_sink_caps(mhdp, dpcd);
  1438	
  1439		mhdp->link.rate = cdns_mhdp_max_link_rate(mhdp);
  1440		mhdp->link.num_lanes = cdns_mhdp_max_num_lanes(mhdp);
  1441	
  1442		/* Disable framer for link training */
  1443		err = cdns_mhdp_reg_read(mhdp, CDNS_DP_FRAMER_GLOBAL_CONFIG, &resp);
  1444		if (err < 0) {
  1445			dev_err(mhdp->dev,
  1446				"Failed to read CDNS_DP_FRAMER_GLOBAL_CONFIG %d\n",
  1447				err);
  1448			return err;
  1449		}
  1450	
  1451		resp &= ~CDNS_DP_FRAMER_EN;
  1452		cdns_mhdp_reg_write(mhdp, CDNS_DP_FRAMER_GLOBAL_CONFIG, resp);
  1453	
  1454		/* Spread AMP if required, enable 8b/10b coding */
  1455		amp[0] = cdns_mhdp_get_ssc_supported(mhdp) ? DP_SPREAD_AMP_0_5 : 0;
  1456		amp[1] = DP_SET_ANSI_8B10B;
  1457		drm_dp_dpcd_write(&mhdp->aux, DP_DOWNSPREAD_CTRL, amp, 2);
  1458	
  1459		if (mhdp->host.fast_link & mhdp->sink.fast_link) {
  1460			dev_err(mhdp->dev, "fastlink not supported\n");
  1461			return -EOPNOTSUPP;
  1462		}
  1463	
  1464		interval = dpcd[DP_TRAINING_AUX_RD_INTERVAL] & DP_TRAINING_AUX_RD_MASK;
  1465		interval_us = cdns_mhdp_get_training_interval_us(mhdp, interval);
  1466		if (!interval_us ||
  1467		    cdns_mhdp_link_training(mhdp, interval_us)) {
  1468			dev_err(mhdp->dev, "Link training failed. Exiting.\n");
  1469			return -EIO;
  1470		}
  1471	
  1472		mhdp->link_up = true;
  1473	
  1474		return 0;
  1475	}
  1476	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102281524.h3wRFjaA-lkp%40intel.com.

--Dxnq1zWXvFF0Q93v
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
W8n2XpJn3nNx0i87/wd0DRuEbMMBAA==

--Dxnq1zWXvFF0Q93v--
