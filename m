Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTUHSGCAMGQEYT5M4II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B37536A1F9
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 18:14:08 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id mh16-20020a17090b4ad0b0290150c4583229sf8037154pjb.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 09:14:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619280846; cv=pass;
        d=google.com; s=arc-20160816;
        b=qFWzXh4fKrnS7uQIMDC1Nk9iAX0KL0T8Meq7hpimCDG/xC1GmbIy2m55idFx+ArxRq
         xMDNTVMRIrKNXt4zdvdDk4AnTmQpafZAl1hFy6bFwPVElRO9lo6ZLQeyZ/fPrXPMwBQU
         /bfEaywY/OHtowEjoj9RSd3y7rfRtZGff079J5JpA/CD2E6rV/gHM7yDJtPmq7or8hNf
         //AICSyGLeQFhLnqil9XyviecubY4fKV87gdE5jbYCRc/08U0SuMoQPSAK4djD1GiNWI
         RzHxNY6rjLJb2KKCXHjwa/VXb7eO/KmiZhh2t2uCgb6sp+cfbICDGbmibNHlyxkI1wUy
         aRcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=SR1V/mgxDKe8NVAx9Ex8dFQrEb7qmYLeWfQw86EChe8=;
        b=OsOQOgf1bz8BkZ8ux1y2k6Vxf8sSRxGAjpA8GTU05xOpEItOklrtSlLzx2gSCkyYoc
         l7pCuBlnCgB16mNoqfdZeZD3zI6VsJQ/FjuvhUl6hcefFtltBsU4GtHSD/UZYXxRBOo0
         NnCqTMYwi3gaRfNTZJu09rEwgTlbg7ZbLGE3BOgFun7GXK+82jqmi4fI9Hky9tKS7BPw
         MzN0qWcnri2nhhBAuUcvqxiRvJTpoIlsQuad/Ag2bOLBv8L6QJG2QU6FI0a5yegTOuWv
         psy5Bw14T7RhGRZiZv6fS0Rp6iIsRiYGHWCewicehEL9V/2Qhc9cyrK3UY3nozaJgyNu
         66Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SR1V/mgxDKe8NVAx9Ex8dFQrEb7qmYLeWfQw86EChe8=;
        b=TjEtq+ylI9JC/AWGTzwfK7Hg6NgzdN8/fXfob7eJ8YnK0B8L0gN6OAhcQoNGvA5b4F
         aeQxEaWlZ2yulG4SK1+WqLZygjvfZSw+4H63G+andmq6wm/ZQFu8gO0g+XvFV6RHeYxA
         gUXFZRiA3BLNv4iEqbW/r9Nikr9cENvCFHaHi8dm1o1VUrOEfA4eKiYaKbxdL3OKyQRg
         q+FfZ+msEGsMTVv5U7vIlQXFSZv/mgZZn/x/rrq/74R5pnqCFYYn/C/kT1fwR+zNm3II
         OlWDoOYS8gT8qrL2lSdvmeKCQEWphsawwGxkAqnPxwEVUBueObNRhNFifDxD7Ecp+NLO
         +2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SR1V/mgxDKe8NVAx9Ex8dFQrEb7qmYLeWfQw86EChe8=;
        b=KFryFcRT2iYOC7wyva0c2RoOs9HBGTIQui+T1iJ0DfQNDbVbUbJWVi5MxyATpeR2W8
         yWxCv+zL/5lP7NeeYNhX7dYYckOFWT3HsAZM3fe3bLGvchE0tkMHkvnDoEjJNHVAc8ny
         IYWfbq6taWkQFjHFsbxKzpUmN6GUFWHrtMy/7G5AyZCVT+X2P8QJEJqGoume1I3LH2Nn
         H4/UhrKkfs+R0lbUmg/hhjDXw6caexzFeF4MKvAjUiHPXi90CQUSJ8vQr1F9RMVPzaxs
         cwf49TKf5tVdOtKEP3aehV6QEpNUyCBagA6bNofcsdqrZvOKT8u3fgSG/wWTglKdTdLa
         Etfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530N99/sDFrnBdRY3OTvYZcZS7HB3FscoEuR5A4wqN2oIJx65nyi
	TZl0VN8xHE6+VAwi9CUSADE=
X-Google-Smtp-Source: ABdhPJzlg34OdBJs5fr8b/m86suKFS5ixyWKme2701d//7Sw2jK0tRrKQnSvVwdBjALFZUWcYSHjeA==
X-Received: by 2002:a65:558c:: with SMTP id j12mr9057245pgs.271.1619280846494;
        Sat, 24 Apr 2021 09:14:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:8c55:: with SMTP id q21ls4839673pgn.3.gmail; Sat, 24 Apr
 2021 09:14:06 -0700 (PDT)
X-Received: by 2002:a65:6704:: with SMTP id u4mr8907337pgf.169.1619280845762;
        Sat, 24 Apr 2021 09:14:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619280845; cv=none;
        d=google.com; s=arc-20160816;
        b=QGQom4NQO0YH5h8Yhz/P7QUEF4Hp+1jiDI7IyN2FFrcEPXG1OejTZvS9XA9XdEmmzv
         B6EdlV8odPvvXuOMuauT6jiHbm1CMcdzIozhZmDEh2mL/ifBH96KIXkLHtqLwa4cJrR6
         AJ5q5M3ka0GCSiu3FRmskkTzki+JWmO2bLL5bIm4pjA8N+aERD5J3jNDIA4xL0NEaDwr
         mM7xH+Ozy46yDm+/yRehwanKsqf2V02RGSFQS8yux6K4NP3GUZMN7mlHUAX9EmruKDMp
         5Yp9nD9k3zMxNPkK5o2ZjvnwPp3r87QMUnNarU1Y4o4r+1lgVSsLojc1NITUyQgeyTRf
         jHjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=eIXwvCOkgNWOpkEnKvfCBShYIfDSVJsK+AsIA419BGg=;
        b=g1OGImy+3seZ/Sx7bpf6vhCfvUCWVOvnOFmPFZImLM/Ar5dq3td+f374yzKEntFT+n
         ZGLWnn9tSMGTAbM1INHOBM0k0pPxSTbSL/+c1+wBdg5wewbtzJ9WZmUMaoDoJ5vLtpI1
         bs6rcJYMVzDxgPy2AdgPnkx6Xi1jEE47NnwYp3pVEQn2gBGnmQhmhYBvQdug4bapnej6
         eHfeSJB6hpLNc8tgyoU6E4mIxZX11AMauFaawgGFZE+j9xhGAjbMhQvAtZAATWZbxdvm
         Pmv8cjriH/BeiMzYEPQRF732EX3Y71j9KJDJIAOgYliCaRRTievOVv2QGqV8mKgqTX42
         Lhig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id p18si1102881pgi.3.2021.04.24.09.14.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Apr 2021 09:14:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: xSfmUNP0vdF29JBkDARq9gFCvTpvsCaPoPwGYhRS/iGipBRhuLUAA5n+64A/cpIZIagnf0Jlbu
 yT0gYbCyg4Xw==
X-IronPort-AV: E=McAfee;i="6200,9189,9964"; a="196246049"
X-IronPort-AV: E=Sophos;i="5.82,248,1613462400"; 
   d="gz'50?scan'50,208,50";a="196246049"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2021 09:14:05 -0700
IronPort-SDR: tFJ/YGTR3OXxmpKwYxS70e0Yz/mS5ouFUuMev/e3L808SqsaROj/BZTixbKdxtS4cNJMp5WL4P
 BZ7rRZetQiJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,248,1613462400"; 
   d="gz'50?scan'50,208,50";a="424514592"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 24 Apr 2021 09:14:01 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1laKuu-0005Aw-Ih; Sat, 24 Apr 2021 16:14:00 +0000
Date: Sun, 25 Apr 2021 00:13:12 +0800
From: kernel test robot <lkp@intel.com>
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>,
	Rob Herring <robh+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Vadym Kochan <vadym.kochan@plvision.eu>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] misc: eeprom_93xx46: set size and addrlen according
 to the dts
Message-ID: <202104242321.anKMxYDi-lkp@intel.com>
References: <20210424123034.11755-3-linkmauve@linkmauve.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
In-Reply-To: <20210424123034.11755-3-linkmauve@linkmauve.fr>
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


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Emmanuel,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on char-misc/char-misc-testing]
[also build test ERROR on soc/for-next robh/for-next linux/master linus/master v5.12-rc8 next-20210423]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Emmanuel-Gil-Peyrot/eeprom-93xx46-Add-support-for-Atmel-AT93C56-and-AT93C66/20210424-204020
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git e2cb6b891ad2b8caa9131e3be70f45243df82a80
config: riscv-randconfig-r036-20210424 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 3d1aecbd285709f58168b3ad65c06da4b42132a9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/46b220709479fc35862b671390a11c6da2ec4d08
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Emmanuel-Gil-Peyrot/eeprom-93xx46-Add-support-for-Atmel-AT93C56-and-AT93C66/20210424-204020
        git checkout 46b220709479fc35862b671390a11c6da2ec4d08
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/misc/eeprom/eeprom_93xx46.c:16:
   In file included from include/linux/of_gpio.h:14:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/misc/eeprom/eeprom_93xx46.c:16:
   In file included from include/linux/of_gpio.h:14:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/misc/eeprom/eeprom_93xx46.c:16:
   In file included from include/linux/of_gpio.h:14:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/misc/eeprom/eeprom_93xx46.c:16:
   In file included from include/linux/of_gpio.h:14:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/misc/eeprom/eeprom_93xx46.c:16:
   In file included from include/linux/of_gpio.h:14:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/misc/eeprom/eeprom_93xx46.c:16:
   In file included from include/linux/of_gpio.h:14:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/misc/eeprom/eeprom_93xx46.c:487:8: error: use of undeclared label 'fail'
                   goto fail;
                        ^
   7 warnings and 1 error generated.


vim +/fail +487 drivers/misc/eeprom/eeprom_93xx46.c

   455	
   456	static int eeprom_93xx46_probe(struct spi_device *spi)
   457	{
   458		struct eeprom_93xx46_platform_data *pd;
   459		struct eeprom_93xx46_dev *edev;
   460		int err;
   461	
   462		if (spi->dev.of_node) {
   463			err = eeprom_93xx46_probe_dt(spi);
   464			if (err < 0)
   465				return err;
   466		}
   467	
   468		pd = spi->dev.platform_data;
   469		if (!pd) {
   470			dev_err(&spi->dev, "missing platform data\n");
   471			return -ENODEV;
   472		}
   473	
   474		edev = devm_kzalloc(&spi->dev, sizeof(*edev), GFP_KERNEL);
   475		if (!edev)
   476			return -ENOMEM;
   477	
   478		if (pd->flags & EE_SIZE1K)
   479			edev->size = 128;
   480		else if (pd->flags & EE_SIZE2K)
   481			edev->size = 256;
   482		else if (pd->flags & EE_SIZE4K)
   483			edev->size = 512;
   484		else {
   485			dev_err(&spi->dev, "unspecified size\n");
   486			err = -EINVAL;
 > 487			goto fail;
   488		}
   489	
   490		if (pd->flags & EE_ADDR8)
   491			edev->addrlen = ilog2(edev->size);
   492		else if (pd->flags & EE_ADDR16)
   493			edev->addrlen = ilog2(edev->size) - 1;
   494		else {
   495			dev_err(&spi->dev, "unspecified address type\n");
   496			return -EINVAL;
   497		}
   498	
   499		mutex_init(&edev->lock);
   500	
   501		edev->spi = spi;
   502		edev->pdata = pd;
   503	
   504		edev->nvmem_config.type = NVMEM_TYPE_EEPROM;
   505		edev->nvmem_config.name = dev_name(&spi->dev);
   506		edev->nvmem_config.dev = &spi->dev;
   507		edev->nvmem_config.read_only = pd->flags & EE_READONLY;
   508		edev->nvmem_config.root_only = true;
   509		edev->nvmem_config.owner = THIS_MODULE;
   510		edev->nvmem_config.compat = true;
   511		edev->nvmem_config.base_dev = &spi->dev;
   512		edev->nvmem_config.reg_read = eeprom_93xx46_read;
   513		edev->nvmem_config.reg_write = eeprom_93xx46_write;
   514		edev->nvmem_config.priv = edev;
   515		edev->nvmem_config.stride = 4;
   516		edev->nvmem_config.word_size = 1;
   517		edev->nvmem_config.size = edev->size;
   518	
   519		edev->nvmem = devm_nvmem_register(&spi->dev, &edev->nvmem_config);
   520		if (IS_ERR(edev->nvmem))
   521			return PTR_ERR(edev->nvmem);
   522	
   523		dev_info(&spi->dev, "%d-bit eeprom containing %d bytes %s\n",
   524			(pd->flags & EE_ADDR8) ? 8 : 16,
   525			edev->size,
   526			(pd->flags & EE_READONLY) ? "(readonly)" : "");
   527	
   528		if (!(pd->flags & EE_READONLY)) {
   529			if (device_create_file(&spi->dev, &dev_attr_erase))
   530				dev_err(&spi->dev, "can't create erase interface\n");
   531		}
   532	
   533		spi_set_drvdata(spi, edev);
   534		return 0;
   535	}
   536	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104242321.anKMxYDi-lkp%40intel.com.

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--KsGdsel6WgEHnImy--
