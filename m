Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDGT4X7QKGQE7ARG4GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 386972EFE9C
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 09:30:06 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id k16sf9963500qve.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 00:30:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610181005; cv=pass;
        d=google.com; s=arc-20160816;
        b=zMn+CTEIropORYCvNeuVv3npKQnreKvhdyH4QhSnjtjMl4E5ES1vZSkFD+gto2zY4h
         4fOg7iGukD6BPleUveAkQy0F1EHAewac5lBskGVcR/RPBIaNLIJWMN3KDDDXatbdaJQm
         G/SP4Gj/VhD+OGcgrttL80gW624fsi/abIGwklgFkVWDEcwlC9akU4RTZl0MYIGO5sYX
         g52PXNFtNIl3KalspIJ448+q+Es+XFr94vajuVJYNkjM7k9EqLdfdDbBAC4rx3S+WS2S
         Ev6SAXT8p644ugfh0b332gwmjIvQ4dnYrTmznnoiufNkCmODpiVe/q+FfyJmZCjxfBYJ
         pAPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Nd78uKl4upvOrdYBv/c4S7z82wqgf9cJsHC98GOiwes=;
        b=NimabDgFoBnfORhNKwAGQsqlW86Yi0XmELuqroG3xnhruoIURAetxGlZeGudi2I7pP
         7xnOHd04OVAxjCcpv+77z1shY3bZo9yvFCCcYi5mBKFlZOwJm8AonVhOzCPA8KdjmWDX
         UYyhLBNSpN38MK66L8hYh/gAcYoXUQONQagzRDBPVVSMcs/2OY1SWCnksb7RpofV5Vki
         o02KELp1R3+HtkaWytVXV3niAD6tvPfAHnl1BzB1X1zCoTK5YMNU3wR6rA4PM16jEgVP
         yuUzqH24Hb4WYjSuZnK368RJ1Ij1DFbrElWp2yKZ6JuuZ0lvJ4fcibbvQAN+xWsegie5
         248g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nd78uKl4upvOrdYBv/c4S7z82wqgf9cJsHC98GOiwes=;
        b=VtALuKzC0XG179pmw1rXJTd3ywbjcJhliyzMNRK8tdGNT6vbLIqC5R2HV4rb7Sjasc
         dPB9g/prfL3UGWmQhli8VP1EXfF66WNtDY9KbiOva9d2JDcZVdPHPVET/Dbl4NTmXfVw
         /Qmxockmq4Y5CVk6hj2HE7KtaqepsDHsT9E6y1AJzDmoDL49YyygAy+Vweg3C927pfs/
         w+c7jYKuu9WPjxYTgGpQQNGOWeEwm9E0k8i8adiUj7WF1ub138jss+wdEHbybJcQ+Ou+
         9YtVoGNsCG+zL73q/ZYAeJ+SxJQQ4LnsJzyM4E8pWw9QwsNxQ2jP1WJYbmVBLeafv29b
         owYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Nd78uKl4upvOrdYBv/c4S7z82wqgf9cJsHC98GOiwes=;
        b=SPCn+LVuy1BiZjHJiEsDtRsQFxjPh0jReyTJLeXTfW33egto+RRnKOAY1A/qzG8fy0
         415aE1WI79XogQe0hzkBODTwu2uIKUXHoH+8Q2benBEj1xHxqfOSRZjbjQtqyU94AaBD
         tBv5aKKIEFT493fAk2PaWCv4FU1jTp4cN4P3TkgX5vtCOE43PV/xVbZhvuQSFbx63YVK
         FhVND8/JkPCWhPYVFANIdhcZa0uDxedNLGLnJpvvDA5w16HValpjwwL4O7ZVjI4wHDsP
         9w0955wwf3NQVOpbHHRi5XGx0uTBnrTy+RShrgV0rMm+FRCdvgV/tnUPrIm+TNus5CQk
         gU4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y8IIGIRQ+WVmpbIuH76ikwn4BIJN8f6I2dcWH1S0FB9mQNd3x
	Ioog9ZhXeKv5ASol2JsOofA=
X-Google-Smtp-Source: ABdhPJxG5eW3e2r7mhc2l0f0CGL/+R/4MFj1Lxr/j9C5epmAERzP9R8yPnLTYmgBi2hIeYLcIC/Thg==
X-Received: by 2002:ac8:7a9a:: with SMTP id x26mr7196089qtr.382.1610181005159;
        Sat, 09 Jan 2021 00:30:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4787:: with SMTP id z7ls3214958qvy.7.gmail; Sat, 09 Jan
 2021 00:30:04 -0800 (PST)
X-Received: by 2002:a05:6214:1904:: with SMTP id er4mr7258902qvb.49.1610181004593;
        Sat, 09 Jan 2021 00:30:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610181004; cv=none;
        d=google.com; s=arc-20160816;
        b=aVW/DmKUKZTMQdgPWjyJj21Ouh9oP26AFdb7cLwHz6fHnLhCwj6lnKa4to0g5u2boe
         W19kFYYGGqQhNlN+QXIuVSfd9OgMu6fDHUL3DorXIehn/AO9zHMfFrrIGZHvm1Jyb8qF
         9ejqRNHda6cCA63cgyJHNZ7tyP1DJiMY4LN0ME5ZNvlXU05rUjo8Qx5v9ONrQs3KBqqW
         3zBBzJcqq/RARad/HBZDesPe374pnf7rVIg1jb6VGIXW9l+UiC9haZFCZ5nds8Qv5cNa
         HgUbmYYr8Rgb9nqvRVCf5we+TYNjfRZppMHEJUoB4z8KfJykL/s3Cd9ea/x8wd9SHWfi
         4p/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=zkLTxiCe1VdMdbJldvfARgQV9OPP/6JWBQnpOrcKb+k=;
        b=NNf/DonsRijzKkXJumfG6iydu2ZpzCCGjOiT3jvTgeVX76/MEmvm8cwWB3oz+AiyzL
         pN0CJJvD1Y9gw21dug8f8eixb7gPZTJMLHqsmMtcWwqZAKjvIAEFyepC1rmMUuLZh4v7
         nr6DbFZAfyAH4JAnp93ZwfackS2Is6GUfgXRRZ6IPU1I7Vl1FNy9CFItDbFXNX5lXuYX
         6fJZ+ZuMfLzmtz0l09kuz31k1UMivML6yNFukaTvbCeYHZVpW09WVVPAIfS14mgz574V
         nlZcGEQkh+BRMQ+RJrlpoOz375KqxyBGsv0P3/TKjrZyrDIvTtjymEhOOF+E6X21cyFs
         aLxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id y12si78032qkl.1.2021.01.09.00.30.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Jan 2021 00:30:04 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: Xlh1uGS4542KxJRfAo4FLbc5jkTM3NK5MBHf3oDuOmWfpGXD337fMlJQ+AqMiQG4iQxARPBNsu
 Yig5ULWkq7Uw==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="157475626"
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; 
   d="gz'50?scan'50,208,50";a="157475626"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2021 00:30:02 -0800
IronPort-SDR: 9mdu9RSD1Yu3yMWV6du2yzyY93xiGbDnncAA4b6rWnkiMedItbVUrXg5VwDZcxXIPFLKM624o6
 cEEACWiLVQXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; 
   d="gz'50?scan'50,208,50";a="351096136"
Received: from lkp-server01.sh.intel.com (HELO 412602b27703) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 09 Jan 2021 00:29:59 -0800
Received: from kbuild by 412602b27703 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ky9dH-0000yV-6J; Sat, 09 Jan 2021 08:29:59 +0000
Date: Sat, 9 Jan 2021 16:29:04 +0800
From: kernel test robot <lkp@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: [linux-stable-rc:linux-4.19.y 4058/6859]
 drivers/usb/typec/fusb302/fusb302.c:51:27: warning: unused variable
 'toggling_mode_name'
Message-ID: <202101091658.wH6LNQ3I-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2oS5YaxWCcQjTEyO"
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


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   3a10b2060ca30843d9251b80a2e1ca71e68035bd
commit: f66a52d991de7ca6c6dc7db768b50e6a28916d1f [4058/6859] kbuild: clang: choose GCC_TOOLCHAIN_DIR not on LD
config: powerpc-randconfig-r022-20210108 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=f66a52d991de7ca6c6dc7db768b50e6a28916d1f
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout f66a52d991de7ca6c6dc7db768b50e6a28916d1f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:13:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:25:
   In file included from arch/powerpc/include/asm/io.h:632:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:629:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:117:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:570:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/typec/fusb302/fusb302.c:12:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:13:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:25:
   In file included from arch/powerpc/include/asm/io.h:632:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:629:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:119:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:571:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/typec/fusb302/fusb302.c:12:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:13:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:25:
   In file included from arch/powerpc/include/asm/io.h:632:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:629:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:121:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:572:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/typec/fusb302/fusb302.c:12:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:13:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:25:
   In file included from arch/powerpc/include/asm/io.h:632:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:629:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:123:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:573:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/typec/fusb302/fusb302.c:12:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:13:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:25:
   In file included from arch/powerpc/include/asm/io.h:632:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:629:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:125:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:574:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   drivers/usb/typec/fusb302/fusb302.c:178:12: warning: passing 'u8 *' (aka 'unsigned char *') to parameter of type 'char *' converts between pointers to integer types with different sign [-Wpointer-sign]
           scnprintf(chip->logbuffer[chip->logbuffer_head],
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:488:21: note: passing argument to parameter 'buf' here
   int scnprintf(char *buf, size_t size, const char *fmt, ...);
                       ^
>> drivers/usb/typec/fusb302/fusb302.c:51:27: warning: unused variable 'toggling_mode_name' [-Wunused-const-variable]
   static const char * const toggling_mode_name[] = {
                             ^
>> drivers/usb/typec/fusb302/fusb302.c:1181:18: warning: unused variable 'snk_pdo' [-Wunused-const-variable]
   static const u32 snk_pdo[] = {
                    ^
   21 warnings generated.
   Assembler messages:
   Fatal error: invalid listing option `6'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)


vim +/toggling_mode_name +51 drivers/usb/typec/fusb302/fusb302.c

c034a43e72dda58 drivers/staging/typec/fusb302/fusb302.c Yueyao Zhu 2017-04-27  50  
c034a43e72dda58 drivers/staging/typec/fusb302/fusb302.c Yueyao Zhu 2017-04-27 @51  static const char * const toggling_mode_name[] = {
c034a43e72dda58 drivers/staging/typec/fusb302/fusb302.c Yueyao Zhu 2017-04-27  52  	[TOGGLINE_MODE_OFF]	= "toggling_OFF",
c034a43e72dda58 drivers/staging/typec/fusb302/fusb302.c Yueyao Zhu 2017-04-27  53  	[TOGGLING_MODE_DRP]	= "toggling_DRP",
c034a43e72dda58 drivers/staging/typec/fusb302/fusb302.c Yueyao Zhu 2017-04-27  54  	[TOGGLING_MODE_SNK]	= "toggling_SNK",
c034a43e72dda58 drivers/staging/typec/fusb302/fusb302.c Yueyao Zhu 2017-04-27  55  	[TOGGLING_MODE_SRC]	= "toggling_SRC",
c034a43e72dda58 drivers/staging/typec/fusb302/fusb302.c Yueyao Zhu 2017-04-27  56  };
c034a43e72dda58 drivers/staging/typec/fusb302/fusb302.c Yueyao Zhu 2017-04-27  57  

:::::: The code at line 51 was first introduced by commit
:::::: c034a43e72dda58e4a184d71f5502ef356e04453 staging: typec: Fairchild FUSB302 Type-c chip driver

:::::: TO: Yueyao Zhu <yueyao@google.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101091658.wH6LNQ3I-lkp%40intel.com.

--2oS5YaxWCcQjTEyO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICIJf+V8AAy5jb25maWcAjFxbd+M2Dn7vr/CZvuw+tM1l4pnunjxQFGWxlkSFlGwnLzwe
xzPNNomzjtPt/PsFqBtJ0U57dtsxAIIkSAIfQGp+/OHHCXk77J7Wh4fN+vHx++Tb9nm7Xx+2
95OvD4/bf09iMSlENWExr34G4ezh+e2vX152/9vuXzaTjz+f//rz5cfJfLt/3j5O6O7568O3
N2j+sHv+4ccf4H8/AvHpBTTt/zXZPK6fv03+3O5fgT05v/j57OezyT++PRz+9csv8O+nh/1+
t//l8fHPJ/2y3/1nuzlMvmyurqbbq+nnq83Z118/bT/9+vXLpy+Xm+nX86vN5upsenH/5fP2
cvpP6IqKIuEzPaNUL5hUXBTXZx0RaFxpmpFidv29J+LPXvb84gz+6XmiUJWsaSWkGlpweaOX
Qs4HSlTzLK54zjRbVSTKmFZCVsA3c58ZYz5OXreHt5dhiJEUc1ZoUWiVl5b2gleaFQtN5Exn
POfV9eUFWrAbUl5y6KBiqpo8vE6edwdU3LXOBCVZN5kPH4Z2NkOTuhKBxmYaWpGswqYtMSUL
pudMFizTsztujTRIjFlC6qzSqVBVQXJ2/eEfz7vn7T+toaglKe3eB8atWvCSBkZWCsVXOr+p
Wc2gr8EaUiilc5YLeatJVRGaBjXXimU8CrJIDZs60KWZN5E0bSRgbGDArFtT2AOT17cvr99f
D9sna9uxgklOzRZRqVgOdvE5OmMLloX5NLUtipRY5IQXLi0RkrJYV6lkJOb2llYlkYqhUFh/
zKJ6lqgx02zhxTBVj01hE81h2EUVaEtzoXRdxqRinZGqhyc45iE7VZzOYeczsEQ1qCqETu9w
h+eisFcZiCX0IWIe2htNKx5nzNM0/Ez5LNWSKTNB+yiXkrG8rEC+cPZVR1+IrC4qIm+DW6eV
Cu3Xtj0V0LwzBy3rX6r16x+TA9hlsn6+n7we1ofXyXqz2b09Hx6evw0GWnAJrctaE2p0NOvb
92zs57IDowgo0QWp+MKZa0gKFtXWZ4YvaT1RoaUsbjXwBqPCD/CDsGLW0ipHwrTxSETNlaun
cUcRLy6otfPnzR+unwaXh6IJnCqeVNfnn4Y14EU1B3eWMF/msnfwMynq0t4QZMaaVWNyoIKD
odb5irJ529K2ozlVFi+wIA1DLyWvWETo3HFlDU/RlMXB3dYKlDxWx1XLOCcBrQnsxzsmj7dL
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

--2oS5YaxWCcQjTEyO--
