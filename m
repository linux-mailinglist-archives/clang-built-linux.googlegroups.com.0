Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLVN6H7AKGQEKVQXJRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B93C82DDEE2
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 08:13:51 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id a1sf1121178ioa.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 23:13:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608275630; cv=pass;
        d=google.com; s=arc-20160816;
        b=xvHAvIuL42JGT+pPxGKqgKCpLXRYJ62jafiJmCbqtY5L1kGizygpwyoyz/6L2FRNq0
         cv8mEViPYPdQb2pDx/kfiDDEsDiD6HH2Lk13g1gXMc97ugYNyxm2/UO2tDM+akTM5xDf
         bXmhLAT8jl1sF8MqzWbS5Y54DXieH6y3pqa1acp7n72pHR6yaZ3gzaogiXlmYivj6qYg
         Jy0YrmQmUoqc+eXTTLZARj0Ax99UlC38839CuOT7UAAGbr08nYhBjU0m6HWIMJvRbWY2
         dwHQPfXj/IGwGtKtvNaObVqMJsudpS1K6Z0NwIeek3Cm5XfU1Q45hvSkDvrBER+2shsv
         BpmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=LGVcYZtwiTMUIDJQLMFmxTPDLuTJZH2U2zL5Yk+3GH4=;
        b=0Czh98JumVPN3Cj2IDo5Dvsw2ABCDiwcgTq+NEXdMibXaoneYccw7k607NRo3IwLo1
         NbRVirP/7rOlaxNjqQs7up5KJ4x9pmgVtecXTNyAjFJxOM5k6ZvYARgzg9LqlFYKOXkb
         ttMu9+xGdfVvmtQvUbT1KHtelPra+96dYyDcchOcgtJB9vGGoF7QnfFmotg/X2fQd7HV
         uttc5W+xssgAYlxvgiF+J7nBkkIoz2so2jLqqahclxZf39wixNwRVVWPDBnhAZTF3PFG
         GLg+15eLdyfm8wj9p0DVd1jzBfLYxCl1jbzAOJ3qZsOzOyYoKHFOYO+diuqx2t0V6+GB
         kfDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LGVcYZtwiTMUIDJQLMFmxTPDLuTJZH2U2zL5Yk+3GH4=;
        b=JD/IbtUEABJWRggtaoFncIM9YLFLQkdRRqNjsSqzaHZDEGdX9fgC6wTnvqxHndCDJG
         0nn8dNmlciHprj7JHzV6Q40v3YcoNxBMtgQlK63h/B8Vf/n0wIayouRL8pgmsUOBCYOs
         NXY5bijrcwHMh3ZCZLvbv1B2GUcZx5Hw5rUAbV7UJBE3BgRZMUy0MJcX8ZfkZuf0t431
         4Aspi64cj88QGMBtcHJPFtxMpzWyidTMQABvCy9Rw/lTHicNnm9EoIQ+FKynX5r4m0Py
         jRSexiwi7MxFtS5a8ZM8UG0KmmcOMpPpsXiuckndKIUHuSEHRMU1gvlFkaCeX7gN71Nq
         6hcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LGVcYZtwiTMUIDJQLMFmxTPDLuTJZH2U2zL5Yk+3GH4=;
        b=opdLe7G9l1z3gqma+o3XlHXaquEB0NY1FmhtwfHjIpM8gH3dJuadyY3TFKR3alG231
         BHJlcp7cWcIxCHNM4WtPxhZJq5Q8tfH86kRqaJBWD9yHjSPGhhAFmycplb+PMipgyhC/
         UzfX9ABBQnj42coEPSa96dV9gWccNV+63pc329beJkvtdToJM56XK490T6lgdgmdtnPE
         bUo2YF/VZDGCjOhmsSCp7oKsWfggRaAFlqR21Wb83SOwslrh2miIkEH3+jEwg23ncFYP
         97IKC3OJPWWFt4Gyw5csrme+Ki8eKnv+N+U3Sfa9rLvAS+Q212FKy/RyR+0COPAhUAIq
         e+4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533K9UdbyC53uEh86KNZb/At3Vl8aCXeR0bAPaIt7kUwTW3NR9Nj
	Il8PAoEY93nLe+iBpmdkscg=
X-Google-Smtp-Source: ABdhPJztrgb7W9LD9MahxKuiBbB4loC10z2JK/I8A1x5MWk+2O7MLm1YcRdCKlRTuIFFfrUeAlXYLQ==
X-Received: by 2002:a5e:8606:: with SMTP id z6mr2599637ioj.91.1608275630693;
        Thu, 17 Dec 2020 23:13:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:845d:: with SMTP id l90ls7803321ild.5.gmail; Thu, 17 Dec
 2020 23:13:50 -0800 (PST)
X-Received: by 2002:a92:ba96:: with SMTP id t22mr2537819ill.262.1608275630188;
        Thu, 17 Dec 2020 23:13:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608275630; cv=none;
        d=google.com; s=arc-20160816;
        b=IW5l4ZvSTzT/nvyMK99O21QrvYMXxbww90qEWBJkrW4Cliu980w+oTW2ZdXkrwBPrC
         fJNfC0RNJTp/GeTWp2uXLjDBJJ+fw5B5cuoQuZPefYha+RmsdqvOvGqOrRhIR0/4m0fD
         RmYkQQxD/YgwfYtokMucCZTBnMnTwRlm85BD28LCBt8GCgLC/xA7tQrQNz9uCaYtKPM4
         Qdbz8heVvNXTv37fzzcpuY01GyPUPAFFLAnKKqpWiuNcFsbC0NW/aFc0ixPX22W0altU
         g67IDgXeIZSnPvx8HJDXey1gT++8i5ez4oihfZtQ6Ydblmp3vfeSmKIqEDV73pwd8b/1
         Gigw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=oUe8jijBBUYRyR6fty9/5EnGgMYHeVM5gtE7xQ5H8Gc=;
        b=ViG+4KpF9yFGOTz5GS0qd3AO+DddIPmb+1HLz9pjC9gygnmi/9hZHkQWwcm136tvNv
         SlLDEn41vK3tBXDpVzb6O1qcywJKA8GVyN8yIcTkjIzOBXszd6OxfKGxxFg3s61B90nX
         cBCgijbbW81ju3RoeFEscA2Q2r1WlJf+jdrzgPIoxndSnPlglOcDkvO4n8WpwnR4sraG
         nHPDpDYxwDSabzcPfV/DwHQyjdt1jAlPtL7wY2i3cvddjvr5sxaRR6JI89vJ9LsUFtCN
         7RESudGoVH5jxcUrWYFXRhdSWqXFYbJHgHTnjvdHjvHqHMWc4+5694tv+vttdpDcN40Z
         fjKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id i5si506057ilu.5.2020.12.17.23.13.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Dec 2020 23:13:50 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: dBzk2U3DMPQ3wNJJr2DhYSgdSZt5xt15dM/w6SZjqKG5TBQgKQRcRfvAMAFMLOBnIfTRyI0HfT
 yW//zFyUXUVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="172825849"
X-IronPort-AV: E=Sophos;i="5.78,429,1599548400"; 
   d="gz'50?scan'50,208,50";a="172825849"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Dec 2020 23:13:49 -0800
IronPort-SDR: frz7RMyIkNiuD3VDUIPIjRFjffFMq9S/CS/KpfvDQWx0CiMHyiPqKxEvAdsgoXFYQDZ8A90yt2
 I5FAsEUt2h4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,429,1599548400"; 
   d="gz'50?scan'50,208,50";a="338738671"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 17 Dec 2020 23:13:45 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kq9xQ-00004l-LP; Fri, 18 Dec 2020 07:13:44 +0000
Date: Fri, 18 Dec 2020 15:12:54 +0800
From: kernel test robot <lkp@intel.com>
To: Saravana Kannan <saravanak@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
	linux-kernel@vger.kernel.org,
	Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
	Kevin Hilman <khilman@baylibre.com>,
	John Stultz <john.stultz@linaro.org>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v1 4/5] driver core: Handle cycles in device links
 created by fw_devlink
Message-ID: <202012181505.m7nw6A6L-lkp@intel.com>
References: <20201218031703.3053753-5-saravanak@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline
In-Reply-To: <20201218031703.3053753-5-saravanak@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Saravana,

I love your patch! Perhaps something to improve:

[auto build test WARNING on driver-core/driver-core-testing]
[also build test WARNING on linus/master next-20201217]
[cannot apply to linux/master v5.10]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Saravana-Kannan/Enable-fw_devlink-on-by-default/20201218-112111
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git accefff5b547a9a1d959c7e76ad539bf2480e78b
config: riscv-randconfig-r014-20201217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/7bdc87ea0400318d827410f454ec7e5fbaf470c3
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Saravana-Kannan/Enable-fw_devlink-on-by-default/20201218-112111
        git checkout 7bdc87ea0400318d827410f454ec7e5fbaf470c3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/base/core.c:27:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/base/core.c:27:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/base/core.c:27:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/base/core.c:27:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/base/core.c:27:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/base/core.c:27:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/base/core.c:1522:5: warning: no previous prototype for function 'fw_devlink_relax_cycle' [-Wmissing-prototypes]
   int fw_devlink_relax_cycle(struct device *con, void *sup)
       ^
   drivers/base/core.c:1522:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int fw_devlink_relax_cycle(struct device *con, void *sup)
   ^
   static 
   8 warnings generated.


vim +/fw_devlink_relax_cycle +1522 drivers/base/core.c

  1507	
  1508	/**
  1509	 * fw_devlink_relax_cycle - Convert cyclic links to SYNC_STATE_ONLY links
  1510	 * @con: Device to check dependencies for.
  1511	 * @sup: Device to check against.
  1512	 *
  1513	 * Check if @sup depends on @con or any device dependent on it (its child or
  1514	 * its consumer etc).  When such a cyclic dependency is found, convert all
  1515	 * device links created solely by fw_devlink into SYNC_STATE_ONLY device links.
  1516	 * This is the equivalent of doing fw_devlink=permissive just between the
  1517	 * devices in the cycle. We need to do this because, at this point, fw_devlink
  1518	 * can't tell which of these dependencies is not a real dependency.
  1519	 *
  1520	 * Return 1 if a cycle is found. Otherwise, return 0.
  1521	 */
> 1522	int fw_devlink_relax_cycle(struct device *con, void *sup)
  1523	{
  1524		struct device_link *link;
  1525		int ret;
  1526	
  1527		if (con == sup)
  1528			return 1;
  1529	
  1530		ret = device_for_each_child(con, sup, fw_devlink_relax_cycle);
  1531		if (ret)
  1532			return ret;
  1533	
  1534		list_for_each_entry(link, &con->links.consumers, s_node) {
  1535			if ((link->flags & ~DL_FLAG_INFERRED) ==
  1536			    (DL_FLAG_SYNC_STATE_ONLY | DL_FLAG_MANAGED))
  1537				continue;
  1538	
  1539			if (!fw_devlink_relax_cycle(link->consumer, sup))
  1540				continue;
  1541	
  1542			ret = 1;
  1543	
  1544			if (!(link->flags & DL_FLAG_INFERRED))
  1545				continue;
  1546	
  1547			pm_runtime_drop_link(link);
  1548			link->flags = DL_FLAG_MANAGED | FW_DEVLINK_FLAGS_PERMISSIVE;
  1549			dev_dbg(link->consumer, "Relaxing link with %s\n",
  1550				dev_name(link->supplier));
  1551		}
  1552		return ret;
  1553	}
  1554	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012181505.m7nw6A6L-lkp%40intel.com.

--NzB8fVQJ5HfG6fxh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICAU/3F8AAy5jb25maWcAlDtbl9s2j+/fr9BJX9qHNpZ83z3zQEuUzVq3iJLtmRcdZ8ZJ
vfWMZ21Pmvz7BUldSAmadHNO0xgAQRAAARCkfvnPLxZ5u52f97fj4/50+mF9PbwcLvvb4cn6
cjwd/tvyYiuKM4t6LPsDiIPjy9v3j5fj9fGbNf7DHvwxsNaHy8vhZLnnly/Hr28w9nh++c8v
/3HjyGfLwnWLDU05i6Mio7vs7sPjaf/y1fp2uFyBzrKdPwSPX78eb//18SP8/Xy8XM6Xj6fT
t+fi9XL+n8PjzXo8HOzD9MkefRlNnNnTxJ6OPg+Hk9HgaTxwPn/5Mvw8Hu0Po/FvH6pZl820
d4MKGHhdGNAxXrgBiZZ3PzRCAAaB14AkRT3cdgbwpybXGJsY4L4ivCA8LJZxFmvsTEQR51mS
ZyieRQGLqIaKI56luZvFKW+gLP1UbON03UCyVUoJLCTyY/iryAgXSDDML9ZS2vhkXQ+3t9fG
VIs0XtOoAEvxMNFYRywraLQpSAprZSHL7oYOcKnlCRMWULAuz6zj1Xo53wTjWjmxS4JKOx8+
YOCC5LpuFjkDhXISZBq9R32SB5kUBgGvYp5FJKR3H359Ob8cwBFq+fg937DE1UWrcVuSuavi
U05zioiecxqwRSPYimwoKAFGkBy2AzCGNQSVUsEC1vXt8/XH9XZ4bpS6pBFNmSsNxFfxtmGn
Y1j0J3UzoSIU7a5YYtrai0PCIhPGWYgRFStGUyH2vb6UyAOblQRA26B4QlJOTZgui0cX+dIX
rveLdXh5ss5fWkvHBoVgJFbOmjZ8pTJd8IU1j/PUpcq8nWklBd3QKOOVtrPjM0QQTOEZc9fg
wxSUrbFaPRQJ8Io95krJS3AUCwwDqVD/kGjEM1ZsuSpSymGykKaGLjqCNdySlNIwyYBrhLlb
hd7EQR5lJL3XBS2R+jCpBzfJP2b769/WDea19iDD9ba/Xa394+P57eV2fPna0gwMKIjrxjAF
kzGvnmLD0qyFFhZAFbPgHogUu5RzQZ6hRAlnJrxU0b+QWa4tdXOLYwaO7gvA6bLDz4LuwMJY
COKKWB/eAkFs5JJH6XEIqgPKPYrBs5S4tBavXLG5knqLrtU/9IWw9QqiNvgUso5qO3B3RT21
KartwB//Ojy9nQ4X68thf3u7HK4SXE6PYFuJhkWZ7cx0QdxlGucJx7cFRFoIE2B9REoQzl0n
MXAUOwSyFNXZKtlFwJf8UfYQWH0OcQZ83iUZ9VCilAbkHpl+Eaxh6EZGktQzs1hKQmCsQo2W
RFKvWD7oARYACwA4hod5RfAQElwWr9hhYUKOiQ2+wcPI+P3AM03IRRxnRe0UjYniBAINe6CF
H6cijsH/QhK5hmbbZBz+gW0GyFpZAJvFpUkmqzLhsJoIid/8UFuq+S3DOKTF1DDpkmYh+H5R
JsR3bPoeha+yAxYYY852eqitYyI42RqPT/kShdPAB/2m2CwLAlnPz2VCb4TKoWjFOSVx31LZ
MiKB7yFzyDX4msFlUpOAejhhMcqWxUUOC8bXRbwNA/FL/WLbMqThgqQp09PvWtDeh7wLKVRh
04ZKHYmdl7GN6TNFUw01RgAw7OEgJpguQB7qeVRThqyvhHcXda5vbO3ag1En+5VHj+Rw+XK+
PO9fHg8W/XZ4gVxCIPK5IptAMlaJsuTTsEdz07/kWIm8CRWzQmbMln+KyphkUFavsX0YkIWx
i4J8gbtTEC96xoNR0yWtimCthBM4HyqGgHGIwrCv4tCcS8evSOpBZsHDLF/lvg+VYkJgIrAv
lO0Q0jH/CkkiCbZFHolgy0gAEcgzN2zss6Dlw9XWEGFIpg2jnDKPKhXxZLTQ68SUcXfTqiql
PGkEkRwq9SKEWtmevUdAdnfOyGBYhEUYe0aMDcMcEf0B6rnCC8nQaWTYEMn3bjivo1gJGU8a
COg09n1Os7vB99lA/TGE9GGrwc6F4xdZBLS1xC0Bx5NFAQmKVQ5hONBOKzwj7lpVIzxPkliP
4woMhTnwX/Iuvi68wYaLFHIw+BikW4SA52EXutpSKJA1fskyE/IXAWyWAJSinQLXkOc1AVQ1
c3ZBvyc4+hutBB5D7cN8FXoaDwWoKF2xPQIoONF66X3WGVLBi7VjDwovW8hzJxSHaFgwJZJC
Jqf9TcQI6/bj9aCHGGmbdDN0GCJSiZyMmJbghZsFsJm9QJ4PmwBSI0iE1TqAzkGrXB0dtTAO
3pys7rnwHGdphpkwwTZfDh7cqX3VLmCcFMaZyU9yVEemQvT4bNSkzYHMHgyws9VD4YwH+oQA
GZqkLS44mztgU3uCLDtXqTgC6eGlLaCUcHEGVudXYeqr1sgKPdmI+fChGW5QKq84/wNlNiSO
/dfDM+QNjU8TBkNcf31D5Vj/eHn+Z385WN7l+E0ltcoeLA23JKUixUNM0zW3jOMlOEhF0cmf
2eHrZW99qVg/Sdb6yaGHoEJ3hDLaS/vL41/HG+wZUO3vT4dXGNSjkT/zMCkgKdEAs2TddpFh
axXH627IAb+Wx/iy7dWKlOKIA1FWaChO73uQHoPzBtAQ7SSg5uYyE5TdKn6HFCwpXaJwUSur
SFx4edhhLKZv1v4+Fqm7GjIIAaLaeAcFThBkrcJdYfpULsWGlJ1R0WtsJRYd3jA0MPAzjdFc
L9nDv0VDWBp1zfT2q0T3dCOwFChSH2wqD4oVkrbVA4Yr9ZBQF5KHFt9U+OTCSPJgIBSsd3xF
Wl+AcLB1PKywGzqQ0GVN3xfoY3nEguy8pmkkTLjddas1kQT1KrLucS3dePP75/318GT9reLU
6+X85XgymjqCqGSP+LXEqrKLFq3yvI1Dg9J7Mhh6Fh33JMiXLELrt5/EgjrlwP4TRy6q7SZ5
6OChkH7QMl3bluLgC4WNOHF0UHlUgptqTh+j0GiS0fb+O0k4det2tqnnioBhW6FECo9KKefI
uAolexQ/51DsHjpLV2V5yDgXu6ju3hQsFFWXpsU8gr0A++g+XMRBR7uiuUWFduN1bqSZhXBh
bA/wyL57bpirqwzYiSyS+nbXLZct60A4fmZxCFEd0hbi1GHI4u2i2iX0++Hx7bb/fDrIGytL
nttuRnpZsMgPMygCUpZgdWLNuSQUVbexvgaMdxsUHhTsItxFv6EM/vW26BNaSh0ens+XH1aI
FRFVzlfngkY5AlBEUC6KHGfmMJ4EEKaSTMYZiKj8bi7/aAWJOIikVKgeP5yJYrIgnpcWWfvs
FcVwKCrKAx84CAtlbwlc2a5JKPgUpEMZztehHmIpiVwCtVkDe0jiOGic5mGRe9qvoR8H2u8q
+1OSBvcFA0UbK/dTcPVi08pfIIkQBJKV2WJY5knfJVbtIElGVSIhgW7OfotpTVPa7d57h2/H
R6SkUwWEy8wOCEOdL3FdyE8d1jLwHh9L3lbcLbpylXNWNACNIIv26CYLE18LAxUE4gHkqVbm
jzwS9F5syJnqQlXe8FX7t64hT+f9k6w+K+ttZSDXG1ZQL6Sk5qNK8Ta1qrm6q0Ioq5iJZr62
XLUvyGAqWszaxq4VtMjh7xSqNKMwKuF0k6Itc4UWvleOhc0YxnqlJ3GE30duRQGJe0GbnQAF
qOH66nfBHLdNU2ztDkhE1O5Y/QbQC4kqrzywnu+3lgdIn0aQUWSFjhcSuD+qA9fb1XqSW0Hb
A+GKwVRmRlQgpS90Fp1THSQiCEbPGpcMa0d6mVYZxr4+beyL3JX1xAbAiuArUqPOoIxJKGod
L/40AN49JGVmCCDDraoIGphhklhUrODrG7CJygW6xOA+KX5DkpDU7PaUgILsZrPpfNJF2M5s
1IVGMWQVt9rG0QbKYP72+nq+3PQTpAFX6e14feyam9OIxykvAsaHwWbgeLrJiDd2xlA6JzFm
AdiD4b3UTe3XzOXzocNHA83XwUGDmOepaJikGwY5ypgi8fh8NnAI2j1nPHDmg8FQm0FCnEED
qVaQAWY8RhCLlT2dInA59Xyw08VZhe5kOHbQAOZxezLDURwyHiL+TnRddwX3fGq0cpJNQiKG
Fi2O3pCjFMJNaF0181ZKlRio15wRwqXEBnRJ3HvNEgockt1kNh3ryy4x86G7m/TzY15WzOar
hPJdhyml9mAwkjyrWssUvmx8fN9fLfZyvV3enmV7//oXxPon63bZv1wFnQVHnIP1BL56fBX/
NLsi/+/RmJuX0VlyJqcbnJMsP1kSrd1y/udFZB/r+Syub61fL4f/fTteDjC34/7W7B0iTvZE
JOFEK52ou4qNIkXfd6rP6nJWQjTbVpICUhT+OgtsgHr88vL6dutlxSL1uKm5yxIAcAsP3WsS
6fsiqAVGBFQY9UBlLdLds4kJCdSfuxIj5cqvh8tJvDA4inubL3sj5JSDYnHmoZv2NBW8SDjJ
d71YOFRQGhW7O3vQ3B/gNPd308nMJPkzvkemphsBfG4DIelV61L67isf1YA1vV/EJDWOvBUM
Iir+IkojSMbj2QyxT4tk3gjaYLL1wkPgnzJ7oEdGAzHFEY49wRCiGbsWPbvJbIygg7WQ4EcH
vkyg0nlG1isQhbjTpVh1UJNlLpmM7AnKAnCzkT17X6/KR9+bIghnQ2eIrQkQQwwBgXQ6HM9R
oUIX22MNOkltx0Z4RnSb6c/RakScQCKFypcjgzgJeR4tEcwSzm0+46vqahcTlWfxlmzRmqWh
ySNl2O5w9olPHPyyvhEeYgOWqBobhk6Rxbm7AgiyjF3p2F3OLklse/eT6Rculp0bY2TrIhF1
YDuuiUBitoZEzzLhDsJN4aDEUWdUA+rek4Q03BWQBiQqU1Frggoj/uvpjBlkPITqvFekDd/t
doR0pxFbr38hUBonGdRzbRHrAMrFpQ7+ZEKSyKtHvHFTEgh7qxj9DlVPdycN2UieBLXzkwCZ
Jy8BAe20ID4UlD/aEGm6WLe2wtg2/vZIIfFyUCGH2P1YiRq1BRiS7tTjcae9sNpfnmSNwj7G
lsj2RinfWoAEiHMDbB7smlaiA7YAh+4OS8kWL3Ultix98K1Qzsud0HweoUamboFOSJJFi12L
QKWKHpJc0mCv90goO2xa96qEFBGHPKr7do0JRuYkZR2Gab9+jIuVYqpkhyJ1/wh1kHb6qqfM
svveJZNA9jvwzS1fYdFUFz9I5Cv1uOdVbZIAN6zwg9hXvxF+NqCJaG96JNPuZxRcHF9UTkEx
PEtbr1wlEuZn8rUxCO63OhY6HWctOThnfgsk35B78bItcbylaeyb1IvOzMaZb1u+1cFPfRRO
0r2odR8uc+G/9o1zcywM7ltWbV7pdrylDhRSyCJLc57JJ4t1m07VppAsukcAPRyKXCEznvg4
wTAOINTlGh6IBVo+V0LdB7BhvqtK5PDtdIPD1+E7rECI5P51fMVOsGIYSRdqVwN3qACjJeoR
in9VQnagau4WOMjc0XAw6SISl8zHI7sP8d1IdRWKRW6WYnfkFUVKlyZHj2oDMZ5hsHOTwENd
4F0VmqxUv1U+7O0RTxYH9fkFuJHT1/PlePvr+Wq4CYT0ZSyuGJ7bwMT12ytQYIJK35qjnrcO
nqJZ2DhE47vylbb1WbQS1cnK+vX5fL2dfliH58+Hpyc46H8sqX4/v/z+CFr5zVyCK7qUXT/x
qHgbKlvgsmJoLUZD84Bs+nxQIxNhUbwFNqehId04beY9RZZArWmY6LcqAhZXJb7BBFRdz9nD
LF0Pd+1hnIUZxYongVS9qcox6HeIOC/7k7DER3AZMML+af8qw1DnmCskKpuZ5fD49pfy1XKs
ZkS9gdPrBobDZvnCVIq0SjteSWDZfeqNWopIdJBFJ7nXsOIawG29mG8wwtl7Z1AkfcFcj8na
uCFe1vMEv2rikNjwZ1gce+uWJOYT3gTt3JfYKEsERafQFLDH01F12dpZRbB0AyYul9bybbXu
eRqy9BJcxopI7tcfzazll5DnSydKJFkCMp0f/24j6Iu80k1W91DNyi9bIpqJz/LEDap8KcIz
EibikvV2BjEOFvgrOPjTUdyGgNdLrtc/dF/tTlbLXkb1zmOoElGoTzi0zj2LQr2VpdGLVODn
UfshoeAE/8KnMBDK/zoiVaJ4ZD6YOM12quChmzhDPpiZBUIba5i1xIm3DH0FZkWShT5+Iq8o
0vVsMMbcosTHLg1io3VZi8bcNBbf5RW8HVrVx0vgPdf91Xo9vjzeLicsCvWRdLQgqivS1anL
R9NgOO5BzLXXyEJC41PGElD4hGdQba3K7zrHtlNRxH61IVpDWPrJ/BxRWb4kbo4wopySX32g
BlDVFl7ISVznNaqEyk7XoKnx1L378/71FZKytEMnS8hx09Fup245nw24Oj4aRy8pGGg8Qo8F
Eu1t4YzY4uRn4n8De9CSuN4wVapuoVOzTJDAVbD1WqAgXjJ301HHYjbh012LlpOQjD0H3CFe
5G1c9X66ZSb42aIs87JJSUKv8N0V8vYBs0FdUkno4fsrRMTW9xiKa7fX3CaI8E/FlA63RauC
7brMoLU6CXXampO1t1m/6HDh+33TSBLZwm4P9WfjKdbwlegsYa4zswf6hRWiMeXtvtfVpKGm
lD3EEWktql3eKX9KhvPRsAOcTYdtnQjgeDLuLExFpX6rCA1PJ2Os91SunAN2NukwlgjHxq4e
GvzcdlpybsPZfG5c/CH6MtW1XMJ5iRiPg5TosSteuNX85YsJaQL793+OZckY7q/tj4u2Nqya
Q0QpPO6MZlhLSiext6E+R4UwA0ID50umrw4RRReRn/bfDm3pyjJ0RdHyvSYQHw4YEiiwWNRg
3IcwknQLVYg32eIp7XuzClJ72Md+0oNwekbMeiUdDvoQdu8ShsOfST7sXf94gO1+nWI66xFp
OrN7VkflHTeKsaeIm5TuoNUxoj8lH5CgZbHEiueYgfkZugbvFvMVkUcUYbdsJJ5bLEgG7qzd
rsjHTa0Bos2zFA0FSA2DiaaFcnRB3Gw2H42N3F3h3K0zsLGyriIQqp0MsKHKGj8ZOkPkkXCn
C+cL7aKsWpUBDElEOsBq+OKTM93ttDTcQrRvRdrolYdlrDaVlxU5WA0MUUSbsGsFqN5t/d62
XnQPHGK/PR2M+jGIoiTGsXddbQFmNtff3lQIkZqcaRduRtCGjdQzwiYbTsa28cC/WjctP2UQ
wo0m4wma7jQ5OxmvQwQqH9lj/FRi0MwxL9QpnDGydIGYDo1sraHG/2Lm8Wz+0xWM5+geqd07
XAxH066Jl0R8qRFkrjMf2ZjXVrfE7/BOM9j14+7Cc5fbg4GDaMSbz+djLVqutqFe7MqfxYYZ
17oKWDZkVua7e/XcbX+DGrd72qjfdHnTkT3SWRoYvNZtSEJ74NiIFkwKTQ0mYoJPLFDzn3E1
s6COsqfT9wfPnRH2vM37P8aurEluHEf/lYx52OmN2IjWfTzMg1JSZqpLlyVmpsovCo+77K4Y
Hx12eaO9v34BUgdJgap+8JH4QBKkeIAkALJwsA2AZwYMcgAU0Jd9EgdpZscBn8y1d0OqQ694
GgaymcQCDAXsoWvuzNTJdutryjbPM7JMNrR7nziFv5ICjea7hko/421P+STPXFkfUDaKaELo
kA18Cm1QnU67/RN5IudEH+StTL4b+tSN4cxx7lNKgiq13TBydRMlPXHp21FfURkA5Fg9fRi7
8MD6T29eJI69biY2/Um9bdtLcQls16IkK45VYrink1janFIYFwY8IJimsG1qFoW72f+Weqar
bcEAelhnOw69BKzWi3WekJdkCwef5IkJSgChEVAPAhUwJttUQHufCu/gbJ8YvQg4NjkjcMh5
LVfHUEPPCYhBJwBy1KF+4ezNrsgQWAFRHEfs2AAEkam4+JXiXDukOzGa7QYObY2i8Ljx6zze
XhNzDsqSmgNxaJAOJCeVp3WCaV2Lms1ZGsiKwsKf1yfHPlaprjosDF0IM45L9qMqoLaOKxy6
REepQqpfVSE1bKowoqgR1QGryCBk5O+P9+qVaaWsDEqjxLA7mKqYbIfYd1zii3DAo0Y0B4jG
a9ModKlBiYDnEA1bs1SclBQYxIrAUwaji2xPhMKQ2oBKHLDNdMjEbVqFBkPCVehT5Mf0EGwN
RnhL2ns1rVubbPsjIy/yFvzCbKJtgUzrEgC4f+3nlxIfMatymHvI0Z2DcuBZeyMKOBzbIjoT
AAGeCxDyV33qhdUOEjsm7OjGRN/pGetDn26TqoI5bVd/TW0nyiKbGNZJ1oeRQ07pCVQv2t0z
FHXiWMQ6gfRhIOmuQ0+TITEm2aVKqbmaVa1tEe3H6cR34nSyioB41l4NkYEUuGp9mxypN2Y7
BsPKmeUeuWHo7uu6yBPZtG3jyhHb2VY2DjgmgGgfTid1FoHg4NathCjWMox8tjdRCJ6Am3NT
GQROeDntpweW/CKZwPH5NFG84ycSd8ct0JSXEmlmynnAqzp9XMzrRGCiser/ZW3zbCjxZvDe
FSIoEesK+ZJ8xufQsufmBsLl7XgvVCNsivGEOzLuJ0kb4xFJRIiQlrZCnBOoeW+F1YUk4CMG
MD4qcY5leBVDdVy9nbr8zcy5W6m8umKAkqbeqYd6BSuMApZesd7nSKfFK7gerk8Wl1Tf648Y
LrAvlGhZQJXGEbD0WdFgyGCad4FV6uR4q96KH9MqkXNZj7RSNVjkapP44ccXHkZqttHdnCFV
p0yzKEeKdOAtU1mVl+OpzIe0UTbDK3gpU3InjRwgpR9bw6CnPGaxH9rV/UZ+cZ730DrWoHsG
SAy61cJK2zgbYH3RZIE8s19QbumwTWRQXRec3AqsqKNKqNupLDR3Q1NOvpF2TliOxj7zyYZc
8dR2B3mRlYhUc1StEzj09gnhSwEbJ5v7ihCVA61qbJO+SDWZhYOMSlsuh5X8o6iFDQSt0a+4
ueH5cblPHhdOMD8o15qDU9UL4ZUeu3ulRbFlLIwFiuI/02S9jdPmXZ5K7nJ21SUC9duHHmGW
qGO+RV4ZcvAhUvUbTqx9FhiOhRHvCy8MBlPsUs5R+ZatdmZO0iYsTn94jOD7SN08OQ6+ZRGz
zmQaotBYAdqm6/rDyPoU5mi1wXTLgilFWSnNiJf4tuVTB13CMEA+FxaUUOu6lAHBQndsU39A
WTQ7B4nsy0csUm4RQVVsEGQqNaLvpe2E7t4HLCvXd91Nbd5UQ0T5QvNJeDL4+EkQ1YO0ZcJz
PJX7Xvmonm9otqXPttzAgj4GWGDKaGMBPb1uhH2ebHluWijnjLv8jBqHGoNsIRqvp1eOUzHk
GcZbZ8lZscZeWTAM2RUUFwD6a0XGSVmZUYcSkZVmdiWoxsQFk+c5Cga6PFzlI3J/qPKomoCE
Zb4bR3Te82K/m7m+AGqIS2eNy6HhSFBhgq3532F6LSfY4viu7+83E2eK5HOwFVPnxJVe9GXs
ypYjCgTbGZtsdRi6gWv4ojgfhtSuVWMh25zfcA8mxDUiPlkFwpRLAlnq+hGtc6hcQUjfg69c
uP775Kyl8GhKgIJFgRfTgnIweK0fcaXAp84cdRGiwCBCOB3RGTCHTjcpdZODB4mHkWEYIRjF
Bl9Oiau1oeFeqVvrCz91AokiPzYhAdmnqvZNGDv0twJdyrZNiGOqKWA+tVqoLKqRjoqRFxgr
Cxpker4hfXuKBoN+KzNd3+Z0kFqJ6QZTTEC2DIfo+YdDMQ3dK1rmLunbY951j20huyzDLg+f
tNgVcqNyShDzIvJQTWapbvS33yqSElaefYzNS2KQzAoSWiIAI8fbX6U4T1jTGYAa5tvQ9XZz
QF3NMfYvoVs6lAqvM4XkgJGUUxqzXbLVJHXTJFZscvZelRbj+d/KIzQymindqKmr2pZnRTKm
eTrHaqQUPs4zx/T+TJLXcLQaesy6G3cj7PMyT5cIRNXT78/vZkUQA0wrpq2TVEnFw+BsBdMY
kzopG9hW3P4Gb1acC4aRDUlmhbVLMjSm14OpTzXLOhM0uwZIuCYEt5AkZV2M8DfNM5dxK7K8
GZWAMlNzCZuVcvXcvT3//vTV40+8bUNOinxuXin125XGdxs/CTp+0Ry+aKsEMxQMSXYzaumC
Q2joVVHz+a8+yyFfefZVXjkY8VKpH0dOZdJfMMYQvt3W9zp6x2CZ/5IMZanKS13v/dcvL9++
fsJHdOQA1kr7Ezxy513O+UTsx8m39MMzhn56+v3w7vtBhJjH/78c/nniwOGznPifcq8X/S3J
kpbRDwbxNjxeT46mjax04nNyOgbKbnsKwVh/2HOKM5lfxd+IUBp77d/iBLXfdgSzv83UUWYr
KoWqOFwL0uJMSlBh/1s43aAGA1QYWGvuiRPLjWmVWzrgUjdVxqV/cpf/UnP5x1lBb569AS47
1gjSuy/vnz99evftJ3GOLCY7xhLusSPijP34/fkrTBTvv6I/xP9gNOf3T9+/o5Mjuit+fv5L
yUJUgt3wwbtGb1aWJaHnOtvmBCCOPFq9mjhyDKPk0+6nEotDKV9Ty/at68nqxdSVete1oi3V
d2WzgJVauk6yqVh5cx0rKVLHPerYNUts19vMgbCchqpt4Up3KZvLaYpsnbCv2k2P7Zv6cTyy
0yiwpRv8vc8nHBCzfmHUP2ifJIEfRXLOCvu6GhizgLkbLQV1wQXZpchetKkmkgPL2zbbBKCi
YZ4UgCfyiO43AbuJjyyy421SIBuMvBc8oLa1An3oLVs2JZk6ahkFUJtgA8BXCG1704SCPBDD
CjfoMOKM5bNb69veppU52d+UA+RQsZieyHcnoj4Ju8exRR95Swx7jYcMtnlA39rBdZyNmLDZ
jh2uSEu9Ejv7O2UsEF08tMNNW6SD40ee4m6n9XOplKcvO3lvPzQnR5tZhg+JkB4pIcntei7d
q93Y/PGTLHaj+EgkfIgim9pOTV/l0keORbTIUnupRZ4/w4zzvyLENca92DTNtc0Cz3LtzZwq
gOngQylnm+e6Uv0qWN5/BR6Y5/AwmCwWJ7TQdy79ZrI05iAiYGbd4eXHF1CztGxxYYae59jT
pD4HwNT4l4C2T7AGf3n6+uP74Y+nT39u81vaOnStzexY+U4YbzqIdokwVRQDkbVFZjm0mmAW
RdS3LXQB17rpmKpH4BtB3TwK0x/fX75+fv6/pwO7iQbZ6B2cH0N/tKWkesoYqAl25CjXgCoa
OfEeqFwIbfINbSMaR1FoAPPEDwNTSg4aUlbMsQaDQIipJw0b1HCXqLI5AT29amy2S5+fy2wY
cJOci2WmIXUsJ6LrNKS+crijYp4Rq4YSEvq9sTU4Hpp32RNb6nl9JA8lBcWRq9zkbbqHbajX
KbUs29ABOOaYJOcoeem7LdyhC8jN7XZKYeEytWkUdX0ASTenLVOh1yS2LEOlYFNk+4ZOXbDY
dg2duoNVg+18RdeyO9qNROmHlZ3Z0HCkHfiG8WhpsZ3JeUjdM203SOJ9hG/v/vzj+T0RVCaT
4ynBDz7hjlmvHGAgPWvH5DrsRCTjTNyHrM/LEx7iqBk/VP0UOGtLPx1nSC9VvCXQwgYIQ1e2
TdmcH8cuP5EvC0CCEz+AWayzpMAdC4jB4sXG3V4fIFzhMk8exBsgvfLoCHJg7LcRvlO2Psuw
bSZaE0fwDHtjNKFa6qo1gwnDdP0Fd9YLukSbmBSXw9dv27VOykJEkwMVmJ5UZ5a+KO2APiid
Weqh5ctKHNFm2xs+3UdUCvxgEl7oRF21jZzPm6rBRwIV5UdilTlv51zr3jdoZ3kcI61Lk27M
7uMlM0R8WpjKGxnEG/E2EY9SieOu5+9/fnr389CCbvJJk54zjgnKknc99FJZY5AY+ms/voVZ
bmSV3/pjzVzfjwNddsF8bPLxUuAtIOhW5IMPCiu7wXp4v1ZjXQZU2VhNuiCh4ewWkJdFlowP
meszW7XwWHlOeTEU9fgAYoxF5RwTXcOjUjyiTefp0Qotx8sKJ0hca7+qRVmw/AH/AR3ITmlR
irpuSowaaIXxWz243ob7t6wYSwYiVLnl028xrsz40FtW9C3a7D5kVhxmchwDqbnzJENBS/YA
mV5c2wvur/BB2ZcM1taY4qubW4J8vMvYFl1viQl2606yW5MqqVmB4ROTk+WH91z2L1u5mrKo
8mEs0wz/W1/hEzd04U1X9OhtfhkbhrZ38X7xTZ/hH+gtDPSCcPRd1lMCwN9J32Ao1NttsK2T
5Xq1rGKsnIbrRZr1MStgrHRVENoxWXGJZdpdblma+tiM3RG6TuaSHFM48bEPMjvIDF9tZcrd
S0KpESRv4P5mDZZhMCp8FX2QSXJHUWKN8NPznfxEXqvSyZLktdo1J8hwf3D1efHQjJ57v53s
M9meoKm0Y/kGek1n94NlG8oUbL3lhrcwu79WjZnbc5ld5hbZHfoC34KE8dKzMPw7LC7Jgqei
STp4jpc8tLTwLMPzW+hT9/7ivvblWHctH6d1JBzvb4bz/qi7FfjAXzNgt46dOKZFgEHe5vDN
hra1fD91Qnqvrq2IcmnHrsjOuarxTGvVjCiLajG/bnE4fnv+/aOuHaRZ3XMFVmnT9ALtzSBP
VIJcrcHnSRpItXg/TatqiXdAMMBLFgcGe60t23Uw6YG4vkJhWZ6qclT4dMylaNGnKmsHtKw5
5+Mx8q2bO57uulT1vVzUdaNMqIa1rHY9gxGRaO0uyTDEfhSQXsAaj6fNX6A0wp8iEs73Ss5A
ji3DOwUz7rjUIwUCRW1j7gZKmeyCjyuySxq40Jr4HIleNGv6S3FMpoNk0r2dYNMWaA0Nd9Fo
D1XvSzgOS8+p9QxGghNHXwc+fF7SvGzOpM1sp7fsTQHi5h8mmaQeAtejDAh1tjCSj3UUNNvM
QUrCwDHlz0MXZ7fQtzdTsATtbJv4iK4uWRv5XiCr/eYZQalBl7bnqzbShl6dcIBwOqo8+SBs
N9AUBXazPTVDgSKT14xvNcc316J70PQSjCEpIojPs9jp27vPT4d///jwAXY7mb69gY3w/PT2
T4lWN6w4PcqktZjloUHclyqpUvhzKsoSX3qW+AWQNu0jpEo2AGwjzvmxLNQkPeyHybwQIPNC
QM5r+fAoVdPlxbke8zorEsqFai5RuZc/YUT5E2hteTbKFq1Ax3BrZXG+6AXhm/LTppnauAEH
7r9QQiZC52+/0R9z6GQ5qOmafnkhxlALO9OcYZDIvRdkSnGEXf7APF/WHoE+xwjSqjUZatNF
VjnqFrBHVssE/dm1lGhpZFcUbxS+e/+fT88f/3g5/NcB1PntW1eLMKjsc5OTKdg/IdLybRTG
VbgVf2CZ47sUsrgLbBDNgnAF3qRNNd7pF45WriRDM1CLyplDIQlxE2grMUIxicD85Q8UIlkW
EhUxBDOXMr75jhWWLZ38mAW2RXsySHXt0iGtqZEoFTOF9plfn9zvI3N6fpMjD8N13OJ5y/oL
lhIlpi7+Hvk2EkZxTbWAxHE7J3ag5jUhaXllDvcDWV/n1E9DJROV5lpvn5e9FNn25PRSSDY6
8GMNgsc6UIjZRa4M4KanXa6Y+7ZymOMcFni6h+r/fHr//O4TF4eYjDBF4uGu2pBdknZX9d3F
mTieKOdhDrfiRktNc4XJnpp9eDPk5UNRq02TXnCvrdMK+KUTm+s56VRalaRJWT7qQqT8wNwg
RPooXhhXMoJPcG5qPHpQ9ZCZam6FHM+oT2puaLHZVBrtrXhJSxH0nFfHoqNfW+f4iQxQyqES
FIzm2utZ3opbUmZU9ApEQQZ+pqGnenikzVwRuycla+iww6LA/M5PVsy1eOw2/tAKQ4F2bwaJ
C5arDflbcuwSlcTuRX1JtI71kNcYGp2pAaIQKVPuNW8osFTDlAlS3dyoaYaDoOfiyFJLn6n4
o5VC6C7000mb0YruWh3LvE0yh+5tyHOOPUsklYj3S56XvUIWg+NcpOLJNK0+FXzRjvRPF+gj
txlVKwSaFR8Nm7ww/nvfnKiLSo7j3rrLtcGMD1EVc0+U6LBJ1gsARTun4uUiBpo2+sXDUJAm
XImotTJPkrOkfKzpfSdngLkHFy1DiWVS8/OZdDPy2g6P2Y359kmhVUSD+QGXoVhu94kvParN
1bM8qTYk6AywNuQbASH/ttQfxpA/selVCxzDeAaa9AV9Cs5zr5KO/dY86kXI47S4NdrIBS1e
sWjlRNjAnyudhq8siQjQcr1kunmSvuISO7a9q2Z6L4qq0eeXoairRm+6t3nX7Lbd28cMlkvj
mBKxQMaL/JKKRE+hDqCSil8qR1K2ijEPtdKvT/oo2sgiIH+YqKDfNtokW95Wk4izQNcedjWX
tBhxV1Tm0yZNHmLIseMfIHuVt/euz9/AAkoQN+YyVTpO98bC1KhKf+2zXzFAxeHy9fvLIV1N
zrOt/oPJTQb2iPUZVEr+5gsRBjw7UWswclBbMF4Urc4hdIVci6BrStLmBBjSN4Qol56KXoxI
xR4UZlBH9GcgJ6jO7/ylYWntyPGskTsFEDThOKAsUivG52+YJxtqFeV8xw53BjVoWvieW3pB
p4Vs3kXj1otQU3nCJGG2Y4iiJhhq13J88l5I4L0bKF7Bgooxr5RrDiFmWgWuQzngrbD6JiGn
800n9QlX1KETUYYxMxrI9tQLMXYGKqvAsunFhjMIn0NTWeIdh62EE920r+Q8qsuwkAZDHXhb
IYFMep5OqK8FXJnJPncbrSpyNp2Y1J35Kry8i5aplNgIBe4mwb3S+Fb/epXzmDmKY6wQjbl+
7G6GzeTuaqoQPqfsW6GWFytTP7YHXcKtx/DSvfy/dN5tNA9Ox/OUINaFL3rXPpWuHetFToCI
j6YN4cOHr98O//70/OU/v9j/fYAF4NCdj4fpdOUHvjdBLVqHX9alXno1TjQsajqVJsISgUNr
2HKA72NqV4xEoDcqj8ExdTBquOlfAYmOHOlNiHOuXJtfdyzNwb49f/yoWICKAmEmPCunGzJ5
FO910VgD8+elYZtBMuOXHHSuY254JlJhXQ5rjF1wYkzbq0GaJAUFrmCPeoNOsBptXoHmOF/8
+/H2ev7zBZ8I+354EY229pX66UW4gqEb2Yfnj4dfsG1f3n37+PSid5SlDbsENnvi8VO6+sIn
8rW6t/hYqjGPlp/i0NtYtaHQS4hkS9I0xxhZaH9CuSrnoEVu3SM7lo7Ks1VI0BZuJF1S1sAw
IYnz2eo/vr28t/4hMwDIQKlTU01EcyquTqlp6puwihNuNyw9PM+XL9KQQMaiZifxJpaaAaej
ByNJHa9Fzs33VBj9ZLlqKFm+YeEbN7CZOTke/bd5rzrkL1jevKXclFaGIbJkT+eJnvXLETqJ
jCn0zmtHuqdLjPI0I9EDJSrGRL88VpEvx+OaAYwKHCsO5yvw/5RdzXPjOK6/v7/CNafdqukd
W/4+zIGWZFsdyVJE2XFyUbkTd7drEzvPdmon+9c/gtQHIELueZdOG4AoigRBkAR/aOI8FJzy
YnyTLIdun3t3IMOe07hKT1jsYXFDhKnHVtGHNlnjvDpsj2lWW9w4Eer/HSEWpZhITLgWH/Sy
SZernuHkDx5nd0uh2X3fubNLlcpdnOKjhJIxV1NPn+nfVOlmj6cPca4WLO8wze1HysNmlTnd
KA4LV4EEqGNZcyYTFrG2+lxPjZNJtaOdBO3DWB8Or2BbJMDycBvql8Pfk8oxZlTa0Atoa8vC
qK53yFUn0iJTlynQcKoCTcbM191VuUtvjSpyRsPhcWNqATg0t+oJ9CE7UMCMTAAVNQrCX5ih
8cDhSnYGXc48NVABq+7M7nrjTLA2IhpMspufBwJ9RjOBTjBbSrqMRs6A6YTZ/WDSZb4mTYZu
lxkS0GfMCHp6XN1HSdmLp+MX5SXdVrPiKjeB5CqHb6b+x986qb6niZNYMRqIfdX3jPvdKjsb
uNlyf7wov/xmHav9CxypDtiUMOfbKWgVa7ae24gI8nHlQgQA+Vj5oOlc3IYuJo/ijV9HL+D3
A7e8KMDGVBsR5fxivFpM1e6L9kXqgBBa+fIpsd4WIV4021PoooCJpTcYjCfdcs2Ad5QNh6lk
EC0gXUoQwDk42tLLeqM7Gvus+A73mUWy3ip8vCKbeFaT77nbIKex7ohhXbxhmA0YtRyUkk9Y
UXy0WnvlMd01xxze+UUSetOIFdL1YF4MAQs5gxqQZgHZhjUUWNByeV42XiIInoKGtW0KF9cU
n8+ny+n7tbP8fN+fv2w6Pz72lyvZOK2uEd4WLd++SP1HyOqO9T8Ti4Ddz+dGXUnLkyBh04ms
0zng6ZUYCfioHBLeueEd0t/wTt9WiWPI3mgJKiXxlfqgMCKj141CKhrjNlLmdIAv+yJew6tE
HBkM+zhvQYNFIeMps8eFBFKRwaCtZByzgTiu5/rjLv+BwJs6w5YKudLpAmBocrtSCU5xiegb
t63gAvElYjfiQMCE2M2CTOYPaRKqIR6unMkycYkiWIlua1o+Xw8HXaUNLgq1WD4oR2oVxu5d
Odm5Oue2PH2cOYxmvXuhLAYC09YUZYhm9K0ydQ3sNSKqpV1z/6POJ50E2WgwwzacrUr1oAjC
WYwyBFZ4ItEShfiZTMd5RESLZ8k6Mt2/na57AJZgHTUfTo7UVzaOvauU1tbDptD3t8sPZkJO
Ioki1fXPfCWbFB23tKDHgE0OEJpcZEzL+pF6NIJcHgIKemX8a/Wl/5Cfl+v+rRMfO+7Pw/s/
OxfY1/t+eEZnLuZ+1tvr6Yciy5PLJfzm2Ca47HzavTyf3toeZPkmD902+WN+3u8vz7vXfef+
dA7u2wr5lajZn/pXtG0rwOJp5v3H7lVVrbXuLB+1vBmTIZsdJnbVMCkVc3t4PRz/sl5TyJb4
PO6aVUzm4frZO6fX1fusWcg+/Pd0oBp/UQmbX4Xpm5+dxUkJHk94BJQA+xrA38R2xyvPj9Qq
D7l4SCjxUxjcYoXjBYkAxHhIsWFx/Euk/7Z8A6QgISWY0Df6EV5zENffm/sbsxdZcPxt5tZr
QP+v6/PpWERV2sUYYY35/1W4aKQXjLkUasLtWnR6wFEQIQtUfzi06Em2olAoBT3NJtNxX1h0
GQ2H+KijIMNpbzPhfc1SSqv+7bfkUANoLXY/LMDbyJDlTfntczxF1LTcnXGisBZoo/urBYRQ
c1w4pyzxign/bh7MtRQlF9u9apouaki45r9zyT5DP6Z8qwStrkQcLKKWU1VwbH2ubxjFA3xT
oloarSzUWDw/71/359Pb/krUT3jbkEBEFQQKo62JeGOwIFCpWSR6dFtMUQYteKMzteYddvUO
ObdM8ISDld4TBGxVdWzqYQfOEOjFJCCxq24UiaFfn/c92mtqKVEwxDaQLTzYlCr5tUndSo/H
Er7bul/hliuLlOD2HZp0LorEeDActuWZUNwRAfePxITgkSrCdDjsNQDwCmqTgNEkNIbFkBBG
zpDm3cnuJv0WME7gzUTLPe+GDhq9PO6Uc9C5njovhx+H6+4VjoGUhWxq6bg77aVETcfOlCwb
FGXUHeWBWTgJuNjPapaSm0639MlAZzRtZN6s3XQXAF17LZk5TUoMZRdJSgB/tfHDOPGrXMpo
T2A7xrps8lDl5GlI7jjASC6aMCHdoEltwPRi22vb/4YVXOPqWqWGSX/g2EAfcDnYoBK3NtFK
rAE1mnNmPD23RbFXHarX0Vy6zbuTHteumil7XZx6rU7BYJqrXv/PR7322hVO0tbil4p5Swmx
ms7Pp+O14x9fiA8GZiH1pStC/1bx6OHCa35/VZ4UUfRl5A4cAr2EpMw7f+7fDsqVLXb8SEVE
Fgo1qSwL68Ypv5bwn2Ir+GwW+SNscc3vJhqT68pJy7XHQNy3wudK1+t325JAQE2CFO5NyUWC
zzlkIvHPzdNkSlABraYwu6GHl3I3VHVMx1U++OlIgvVL42/mYhoX0GCXkzN6K18+niIiWSeT
c+qYfZmUz1V1ql1ti9mYc2iBPK8w9sUVWaPIVwCN0+pH7CqyfcNuC8wH5FRg9zoVYzAYUQs6
HE77aVsxo+moOZPV03QSZ8qGtjDlYOBwG0DRyOnjUx1l1Ia9Mf09odkZlXUbjNmricqqqAoM
h9jgGoOiyLjrbzaqOY1WGvHy8fZWou7Uegd95a2j6FH5ZQuML6A70SyBNL+dYzw6su1oiRjX
lA/9bNatuOG2/9+P/fH5syM/j9ef+8vhvxCu43nyjyQMyxW+2YpZ7I/78+56Ov/hHS7X8+Hb
B+yuYz2+KWeOxH7uLvsvoRLbv3TC0+m98w/1nn92vlf1uKB64LL/v0/Wl9tufiEZLj8+z6fL
8+l9r5quNK+VQVz0yPUw/ZsOyPlWSLWo7vI0KosszeIxjYkTGiXrfpcgxBkCO/zN06ynqlms
oxpkC7VS4/209sYwBna/e73+RPNPST1fO+nuuu9Ep+Ph2pya5v5g0GWHslqzdntd6v4aGg8g
wL4JMXHlTNU+3g4vh+un3acicvqN29LLrGV+W3rgBnKAkorjkIN4EgIeBR4JolpmkqQXNb+b
E+0yW7flmg7G3S6bSVUxHAJoaX24sVFqcF4hPO9tv7t8nA0C5YdqSKLsQUPZg1rZq6rMt7Gc
qNq0LFPuoi1N+x2sNnngRpAmvO0ZEFHKPtLKTnYGMINWo1D2UEYjT/KJlW58s4nn09cXbf3w
vqqe7PcaC431VukmOzMC/BvRZEUBTGVONvHktI/jdjRliptdyHHfwYuF2bI3xnYBftMltxup
Jyacew8cPGeq3yZPSf171B02yhqNhlxZi8QRCUHRNRT1qd0u3jeB3Htq5RQi21S5MjJ0pl2a
84Hy2NATzerhOBa8ng8lS0/SmCz5vkrRc9oSSiRpd3gzpXDzDnKYpUOKKhNulB4M2KSuyrYN
CrxDbO+AxkWirWLRI6mZ4iTrd+nbEvUxTheorFnoNdC3gMJiQKjVe7+PDZkaVetNIHFjV6Tm
KMxc2R/0eFdS85p4MI1GzVS/8vFYmoPjsIAwxttRijAY9tE4Wcthb+KQm30bdxUOeKAuw8IB
KBs/CkdduidjaGO2gHBEQMGfVCc5TtFJhQmiJsYcTe9+HPdXsx/CGJ+7yRQHCOrfZHyKu+50
yi7li921SCyQp4mIjSx5YtHvtUxgIO1nceTDjSvio0Ruf+hgBJjCDuvyeX+kfHWTXeoA5NKe
4CyKDUZT50p2Gim1taaU+lyfa+f/qTLTvr/u/2osi/Qybn0jSV/5TDGjPr8ejm39iJeUKzgE
ZRoTyZh93zyNDZgIViH2PboGZSx650vnct0dX9Ti5Liniw+diCFdJxla1OLegfhcbr3LF13M
mkflixlU8uOPj1f1//fT5aCTF1rNoKeCASQNpqPi10UQD/39dFVz94HZyB46Y7J35cnepAW5
HZaHAzZTEqwSuwQkVxGIacmSsGsyu1sOc6NubL1VG2JHK4ySaa9Lccj5R8zqCcC8lf/CWItZ
0h11owUe7olDd3TgNx35XrhUNg0popfIPvVgyCzqS/ayZ4KBywI36RUOfbV6CXt4G8/8btig
JOxTITkcUcfLUNr2xBWzT4JYC5tjVbqelYYDNkJ1mTjdEaraUyKU4zSyCJU1Kheozc6pXcvj
4fgD9RmdFAiz6ObTX4c38NxhYLwcYOA9M52ufSGCIAOQmync1/TzDd3JnfWcPj8DJ43ApdoT
mnvj8aAFkVOmc3Y9J7dT6kNsp0Pq7cCTnGcH03C/S6HDNuGwH9oJt1Gb32ypIrTjcnqFm0tt
pwwojuOmpDG1+7d32N2go7DWOjBzXaGsrB9xUUJoOIEE0vdwO+2OeoMmBbvsWaSc7lHjN1H6
TNnxLr9w1CyHvxbMfVT5EnJDTv2ornLUCvQQtd63Bd5chvk8Q3EqQCwaiviximzyKLcUpK/w
4egzXZ0y5MnMxem9hg62YVoUBwKN6m8RqlaBi8OCTJr29B4FEAfS3cDcieSK2I0kLC4PlbNz
883VixPh3uWzNQ7w8aWf0VRkKNYIeLPUjWQ2Kw4WuNhhLRZoKMPFg10AQMbpO3RWbE+yfOzI
j28XHdlRt0+BMQOI1/W3ImKBMGjY9TmuCzDMKwERAA6IcV2nHi4CpPMsTlNzLs0wdeEsRwbK
eaHKgrki3PA3sEAK1C+ItpPoHirZKhYFWz+sP7LlO5KtyJ3JKsqXEusOYUFT0M+IXT+MYac+
9Xzi/9C+qB6BYBZXJCQlnstXPRV26LY4vpxPhxeyAbfy0rgFFKAUr5wAgYLlymte+GdlAsz+
2kPnet4961msOehkhp5VP2AlnsX5TMiAevIVCy6vcbdnQKKxQQ4kGa/TIvN0TPGJEJe9OGmL
zbNU4PgiM7iypU3JFyxVstRIrhlqkgUMtbxnV+/h2Y1bPjRPFgJbMx3pmKhVRtLIaG+xdLAk
2qJWBVngq8VD89T3nxDyZvNQNYEVixuvk5ANSdFFp/4ioIH08Rxz2p7z5igQvqTkYr4mm5CS
Qz/SiAWqTts6eQtatzFJ49ZwprwYTx1iZIDccjseWDrAFY1m7hXVmI7yOCEjWgYxf6VfhkE0
Y2FV9CLONeC0JGg/XgOHq2YsceZNCJN3zZ3Ler1BQ9PMsdDhVXkC2ioR92YjwMNU3qVaLCYi
lXynS1jmARyoizrQoGjiS6AlJZ9BBHIe4/sdcK8hB7JBY0RLt5UHcQSPRIJtRlWwmh3Sx6QV
jUpJbNT0xt7NnUvmtooh8effhqfjDLnihF1cSSvuCUM4WBRIwFrmFyz36zhjt5LXWTyXgxxH
nxkaIc3XgGxGjoFcRWq5pKFWT/hhyJUByMg8DfCiAkAEzdWfuhM5ARE+CA3oGYYxcVuQcLDy
fO6kBYkApLz+SPZtkZ8JwCKtotp3zz9p7ty5cqvcJR+wUUgbZ+my/3g5QbrSPTMcICI8Z1OQ
aI7yN0NPuTt1He/8dIWHQONatEgBQ0zIfBEsAGlfOV5iQa5uwB/Tr2gEM5VEI0a5sHqwmFtS
XGVXIaqD+lHe4P/zt8PlBGnTv/R+w2xArIaK5YM+OnQnnLHifPIcnP2NcCbDbsszk6GDVaXB
4/ayGyJtlQFckTYO2Xxo8Li9o4ZIv+0rR4MbBf/6W0aj1oKnLd8y7Y/aOPg0qfFMe5NPB3yQ
I63OmNseAJFAxqBU+aTl1T1HKwJfrGLy61uQ0lfwWrnle7kdc8x3aGOV5D5PtnqzZLR1Zclv
9GNJHvOvmfLSFOSIcH7V/L0hfdNdHEzylL5G09ZULhJunsaRWDXfDAy10FFmq+XNRkB5Kus0
tst001hkBmCsyXlMgzDE662SsxB+SFcSFUc5riwwVsEPVE3husGbxVitMeQ1+WK2dtk6vQsw
gCIw1tkcqfd6FYACY6UuSPkKrjWEwZOBDi8vwrLzEnHKTFDZ/vnjDLtfODl3NdU8crZe+u4a
XJ7ci3ypNwsytcBHPmIpYFPork9V0MrPHuKUxzqshBKRsWi0cEtRZxJb+Z72nWDaznVWLh0u
iu4zNoRusJRnFYYAgUMu71pSYE9kInjfUML5i6uFAbTYYBbf/sZHEfGAiZWEFHPYnGmuw5ti
4NV68cMKYhpanM3MX7Q4riX6Tt3RAg0cVeKfv0GU1svpP8ffP3dvu99fT7uX98Px98vu+16V
c3j5HZBcfoBe/f7t/ftvRtXu9ufj/lWDoO/1jnWtcmZ5tX87nT87h+MBAi0O/90VsWGl5+Jq
vwY8NrWIgKOwICshdpB/w0kBGiMJegOi6h61ZFjFK85/RRJKEdBruDJAAl7R0tAB4BgZhUTA
Rm0vhRs7yvBQCCSUmo9to5Ld3sRVnGhzvFcNB8ucuHJ3z5/vV8j+et7XGdVQX2hh9U0LkaDL
oITs2HRfIGuJiLaovHODZInvvTQY9iNLgz5oE23RdLXgaKxg5claFW+tScmxHrlLElv6DsP9
liW4ccSIqvlDLJhGKeitD0BWGjFTi91G8olCajHvOROCk1QwVuswtOoGRPtN+o9nN8U6W6ol
NFkxGk5zjqLc4tZViYLy8e318Pzl3/vPzrNWzB8Au/5p6WMqBfMmj5s2yve4rvWBvustGWLq
saXLiD/dKttlnW58ZzjsEX/X7LF+XH/C8ezz7rp/6fhH/WlwbP2fw/VnR1wup+eDZnm76w7P
y2XRLm/ay151ORjS8tmlWrsKp5vE4SONDqqG5SIATBnui/37gMvaWbXUUihLtil3zWY6ovft
9IJRvcpqzFxbk+Yz5qVuxk+dFZvzVKoazchWl6GG6UP7IzFOi1LQEqhtk7jF6ePKEe0/PqQi
sYfTsmpua5wALm62jph6Av7bxlKe5e7ys61RI2HXc8kRt9wXbSI925exB/vL1X5D6vYdpueA
bL9kuyTg4AV5Foo73+E6xnBu9Kd6T9bresHctmTsJNCq5JE3YGiMXKB0Wh/t2M2VRh4ME2vm
UGS8M1CTneGII/cxjFA50paixxGhCIY87DET6VL0bWLUt5/PlNcxixcWI1ukvandrQ/JUGdj
Nobp8P6T7IZXVsSebRQtxycXVa/HDwXKCc+o0XQa2iAiXy3tBMOArerG9RzEG3JmRtE5nKly
KvHt0T7Xf+32FKEUTJ+WltfuFD9NzLmmPcXwQZFlBz3E0D6WiXBPb+8QUFLesGh+yjwUGYvs
U9jHp9iq42Rga1j4NOBoS5cZ2k8ys1OipLvjy+mts/p4+7Y/l1c/qOtfaM5KBrmbcN6bl84W
Gr3Ham/NWUbCNleG08CsxrzGnGNLWC/7GsA6wYdDebR1bHzp18O3M2TTPp8+rocjY7chwZcZ
MNZUpTi/tIogZJSrSvZidUslYtVcsypfBaWLuSXGsrkxAvTSCisvLXjy/+zdErn1Aa1zaP11
N/waEGqxoMsHW0X8TS6yyFzWtlWr4ho30h5iJR/e2B1wJy9ItEJdsVmw6t+6ftjyEhcyzt4u
XESQ+cPNF9uQU3cqYcficA/c+X40ExCaILVRb5gpo/twa+K7dnEvGvf5cvhxNFFCzz/3z/9W
a1Ry++tviJcfNwtWIn2ELBqrbF6OtbB1kEEiPJFCBr0FHWMQW8MDb80CNScCzBjZdnPj1GP3
JyGfh6+WR9GMIJOZXDYCra6qkBg3yIM4op6iq3pTWRFC6hFldXPb+3HzIFvnZBZy+8RWq5/V
3iDVAM0JA9efPU5a+hyJsGhaRkCkD2pGsQtX7dhW7qilODKluBhhO5jZ3qeLNkoLdxNHM+mk
iejzmVeqiQ1cBZPp6RNTITahSX8CKxKs9ASKNsaeYqYMoHJlqCmSlVYTJ0/na6ImVJaxfcpJ
TljzO99ORk0ZEyuEYcAKeiBGA4soUrJGqanZUik+07KFhExEar9i5n61aEXajoJYf1u+eMKx
d4gxUwyH5RAfhtAHLB2aE+8KSxifOHjJkDTMIhm3QAcQmXpr3/c9oICY3gnGgTFwRgs84Xlp
nuWjgRohqD6Ko+oUihSikpban6DcVbwqGYDAkVCugPgzirZNyLlEHLkIzdYkMk9hTJZl8PvW
2HHDpzwTCG08SO9hlkYWL0oCwCPHo3juoY+KdcKoRaAWISg6a11ENagecPFuPZw3QGrv0pqR
2wAN+9+0uUGc+qbF6J50ORVp6vv5cLz+2wQEv+0vP2wIU9dEi0E6rVBNEWG1SzhulbhfB372
56BqEoOsaZdQScj/q+xYdhu3gb+SYw9t4LRA0cseaJu2FUuiooeVnIQ0awRBu2kQO0U+v/OQ
xOHLu73ZnBFFkcN5c/hQLA0w3UHXdQlGjvQDJ0c4a/4vfx9/Ob98GwXniVCfuP09Fuxh0gCm
Fndj65IciEWHNtVOR2+M2dQwyqFXdfkFtJ0/5HJVg2ow6U8Woqy1WlOnAHLCLBrTaDGHA/ZN
Hq3tw2SsVxTxKrKmUO1KWI4+hMY0mDJ/kLse+9gYStvrSn5A5XiV7G+/Lr3N2ivYafx5laEU
KploJNvlh8hX9FrtqVoTFgKOpoz86JrRopGV9PI00e/6+OfH8zM6/LPX0/n9A0+nuhca4d1u
mCtSxy4GGgfaRAbfEHfoh0sLAUjoYCa8AvPILvSTiLdQFI+mer9dLyVfle3D3T3W3ar2gnWM
+DZoiXipSsAE3MsXwJ851MI0/mXxeSOh8LPNyg54sWpVg5bdDiyTuY5ut2xkSJf+4v0SUqnj
mBSDllgxsUkAVV2DQj2j2FCveDS6PRkBQ555BM1BanbZpg07X2eHdBCLUboStiyYV8s8toRj
77CBQPJhJtXGS8+aOvFQkl2Z5S2me5G16M3v0pjcbwPj32EjSAMMihHCCh/Zr8xhWNZmr50g
2w9tLncLYFaWLLrMrZg4NUmaMXI3dybqAKIY0PctVrFxk1y5F4STiI4nnuPTpi+jOYMEBM6E
9226WZC2a+DDsWvw5kQyxuzv/Y/j5WkSzdLWiMIxyJmCUYnXZM+YKpCC1auO5EcKDhwYGPCU
7ZrCGoXdJJFvXKwmVz6HGokAFJUc+Lzf7ffaUcGBVTI50/rN74vFIoHpK8cOcA4Zy5s9PRwK
jDcrFaEzDmZ3fr1vm1wAcn89YulynVQDPMo5wLdtW+Ks3qAORTgIwMYARJhZ6WPVMWNDvBGM
s21AQqUpim7MGQ+AXGCSovABe94r5BehW4qhSJGokZYGsLIWFpFUezbI/Ni95QAeWe343BAH
XhDpyvzzdvr5CgvWfLyxNrB7fH2WJUTx/iFMGTBO6rPTjBnXnfC3MRC3mOlEPXjMGOkqW23O
KlNm04ZAe3zHmBaL5RUSkd4R86gkkcdRLuRK48uGXQcTC4I3nh3U34FuBhre2sQcOCQC+C3S
SLg8uZwWBRrY1w+6HVIwbJtFEQG7q4nzu9e6YrbLvimMg1ph8tPp7eUVY6Mwim8f5+PnEX4c
z0/X19fy2irMa6cut2TzzFc9yQziQzSNXfaAFqhP72jDdq2+18FOECW93R0SR+97hgBnND2m
aYXbuu6beOIwg2mMnhlKKUy68l9mm71XqNYUqOPmMOsXWMc4UWQORy+NmPFpUEDtbVfrVLqC
/fRA3DWrjfO04BrNmjvvVdaGB3b+D51YGwu4Mh8+EhNDZg9mJ4HSpfUauDf7wi5Mz55l4Pcx
gIuCQGnCwt+8u/5i3enr4/nxCpWmJ3TiOvWbaTGyUEGoYo1NRHmhow8ZKAoxRoPSHJRaUNnR
YYtVCzI3k+riMN2Xr2qYOzACVD6fWAM9I6bKxdcblRIq7hhp956wTssVyqmNeC52ghM7GBdd
NOm7JqQqd8T+XAIfZTu1DizUEa80Fb/Lyag8COP5MnQLJtEugUOtQ0FaGXw1etg9FDyIioRM
mGRqCy7Ej69cjkUuIr8SNNW/I/zMCSKCiQcK+ND0GXoL/EEG+JMzKYEYXsi38VYJ5SBKCNG1
PVfizmcqtRR5UxoBVAmQsJuLfZA6FyJM097nqrVfaIfHsz0uSKIuAj01NKWq8DrKmGSmTpbA
jmC++RIabxocmE75DSawKkssd4Kltek5L8QzYQEFTfDEoIhqbBfuYPz1Xj+UCmXOXFZxmtqH
st0FrfzNTIJZeesdwLOUPSw1vKxQdUy5FmRt8Zzz++NbVE6uZ/zuSDdbtHynafGpc1riQKRN
gFYB06o8bmb3VoBhvYgCh5SzGBlFvjT+xgpMyAIYe30HXAzPbbnWkVgF3LHD7Cue4ArLXsYp
mFPaMcwJVkEg4t5fTk//OvxfOpPb4+mMghtVyhXeXPD4fHTS6rsyi+2JSZ6hv5dK/dyyG1Mc
l9sQd0xjO8dayRace7lkqKEfJDBqwJRBIuHFkuEhF5t8KKPBjHEUVaO3wdl+hILe3LorcDHi
vkTGgrVUtVZsCS8+sd6WsAlqEBDENmEpkTz8+5qsv1MXyUMQF5cpyKTmwMB/F1yf8vAbAQA=

--NzB8fVQJ5HfG6fxh--
