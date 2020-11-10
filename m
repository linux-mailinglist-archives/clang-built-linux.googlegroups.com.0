Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVOIVL6QKGQE3CW4HNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id D71012AD8D7
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 15:31:50 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id t13sf3253188plo.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 06:31:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605018709; cv=pass;
        d=google.com; s=arc-20160816;
        b=t87stNteFruzta35N6+uIac55a/CtaKCfr7Odv5BxZX7AasqjK/dTSMuB8ng6fcAQj
         wPFd7R4WKNvIENjg4uVDDRFWP5jKYoswSy7GtAGmSCoFlFnA+W3PMzsQdRa+VRKcNz1K
         BVU6/JiV8S81isTj0o4XSySlGFIKxFHJAzsRVYK8au+YyvB+ch9aeKnuA9p+My0K/v2e
         jEoNltYH3vIRdj12L1e9+l09GVwzKgEus5VHj7PmRuWXmDl4hQws9rOBLy3+Zdo9Rmd1
         0VkSSh/O8pL6u3cjVZOFnhKKvy/Ew7+q17OvyaYHokSJ4BhZA60xp3bHj9ReTi7RNaXW
         KY2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=38XvBJ7o/JtK38AacxF/g+LfJpZJ3eRdi+taJ8fBMFs=;
        b=PyXjOySInEJhW3Hy0sX4UeLd5sNj6KhhX0bJjJlwzAZG95pAMwLH/qLY8e1OWmFqnO
         3B0H/S+DVP1S/5DFd13aDefutsb/tEJOZh6tFU3wJ1Lipnoass4Ad86peiey8xQoxD99
         DatH4KHrx1UAksYcm2MrN1fScijqJmU+wIJrMC37475QxoFZf4LwsVmw0+dCBFKGk1sl
         dSW0t+sbPKOLMMdUvkVhDpHSAKh6sJhUzyxJ+d6yIJ/O/Uvkb4r1N4eAHCPNw5xgmmdA
         J9M5z/vkyiQacSStp/9Z54XNPWeVWd9AhWxhpCxakjn55yATer+6PopnO+oQqS+XD9rG
         /tSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=38XvBJ7o/JtK38AacxF/g+LfJpZJ3eRdi+taJ8fBMFs=;
        b=EKGKqsidWHVhKC9qY3IFt0pPoWOsNVmvlSZJtghFXvwJkTX60kmwVgXWj3iCOfzoJ+
         SyMlqZY3GGArDikDhYSWwdb7hhGQDtkVcSd+c3CyCYes94zVdsBwrXC4TacdJMvcgIaX
         1ktTRAG4aJ5oV2PhnO3lrrxyhzmTdyn02s7NcDXHJjdchgfl4Ny4AE9wywYYnQL0s4Rg
         uS3vGWx2pyXREA0vBvV1PAK+yaYH48hCq32Ii8khm2lZA1m51tzhJGxDLuoJOzDbTc9O
         xxXfozPLbuhSjMPhmBiEyQw4dE2TlasV3xybI/A+m1G+S1Z8Ox48W04G/IETZbkXO5wU
         eBXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=38XvBJ7o/JtK38AacxF/g+LfJpZJ3eRdi+taJ8fBMFs=;
        b=qcA5/hs8ZWjuBB2DitmiKTQ5PbdmVanCo7MbK4IrDAfjxWQ2vZsxSp93SjKjx3JAv5
         Ttfx3TFM4wRIVHkWVGUrrAJOAGe1a4ILHlPjayRxesvuOR1INDWoyWoYcM2KJ7jov7Sn
         GNvfvgqYJcn91LrH7QKrUscKdP8F2qbmdb5noaq6phSNpmsYPA27FW5t7bdqqWlbOvbj
         D7g/m8F0gZQPyY14T6S6webWVkIFKaqdYp3ouewFn+umPtV9tj9qUMb8/Yb0LE7iYhSk
         xyfquRVIpWi/mcr6gEAwWs5UdGa4D8Y4P8P7b1RplV4fTvIS81Bgx+8rdj9H6cryiAOf
         dYlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LlJKz/ZljsY3BjbaFCA7gTrglJkryplhvAkk35NghJW0LBFKX
	FECaZHwGDS1hy+fT8ALdWW8=
X-Google-Smtp-Source: ABdhPJz/dF50pAXhjnasKgY4DzIp1THYdIrgf35trLlhmgQQNeL48ND/tRpaD5fbQJLFcLpKMtwOCQ==
X-Received: by 2002:a17:902:eb4b:b029:d6:a26a:17ba with SMTP id i11-20020a170902eb4bb02900d6a26a17bamr16947410pli.16.1605018709424;
        Tue, 10 Nov 2020 06:31:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6647:: with SMTP id a68ls4271013pgc.11.gmail; Tue, 10
 Nov 2020 06:31:48 -0800 (PST)
X-Received: by 2002:a63:8c49:: with SMTP id q9mr17966017pgn.427.1605018708639;
        Tue, 10 Nov 2020 06:31:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605018708; cv=none;
        d=google.com; s=arc-20160816;
        b=oTyagUW3r1wNPONyJpH6VZA3AQkjCfKxWq5P8T+bOQ1K1iUKwA6NPsyisQqcsROb59
         JFIv0A8dTgMUZ3fbUo+4/TK9PW0HqDG3o2Fa9RML/ixsOsqZmNepAXi9Z4eJ1HNXajIi
         dK+uUrwX97tZ7EKnUFkt5drr5mTzarTr4mZjR7SDRuD7+wPPGUu1ubbloUr5jhgzPf2v
         s/Jt6yb02v+8gnTeHwvbXMf3WZOdYb0Q8KKAooEq53kt5M1GZCaHTzfpxdhp3HB3Ylcy
         qn+1P3oAdeTEdxe8C3rc2neCxdcticzucs+H5xt1hwX8nKwk7HaDUS+hM5mmn6EE0fEt
         m//g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=iZ7njOw25wZIBVe6lVpX56tOGEwf1lonz0IApO48HCw=;
        b=R9qDJUb23jZE0EMAhy2kqAlnQqtCYmNV9QUo8cLX9vlnlhbGZO2btoRtUNZu7e9Cx2
         UDlG2yWrxloUHPqDa4I41mAPjQ7qf5X0RsqY2xGSZf3C68FTtqZLK767cknGoYQ09tFX
         BiFHimutFqHVWaSLKbyDrKugMV3dpgDCJ8wsJhgl+irvTuRJUDG9CXepPaHVpyTC57oE
         +PTwHF6B102b5ablcic7W852M8nbT9lSHKMxrUYmjjG1fXTqDQHqC7tydEnR1z7tVh/g
         fHnJ7fJ+HjTUFwZ9OP0/ZSS5AYy+v991QbWEaJpPE/x+w+/PixbQ0+Y1qt4kYuji0QXR
         JGpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id z12si248454pjf.3.2020.11.10.06.31.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 06:31:48 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: LL6vNkneiwb9CHb0jbJ3HjLj602W6vEYOfw99708Yi7HycRJ1+vz3pGa7ZkWi1LNNVLuhGEuyV
 GGIRm58JjVKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="231607095"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; 
   d="gz'50?scan'50,208,50";a="231607095"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2020 06:31:44 -0800
IronPort-SDR: 3VC6lGPFyYkCREhqeVoFTfjiYewXW4s5FkRtdpHoEoPDYm7iPHhEd100ZUm82FJDw7Np1p5BPF
 /3gUfat0Ybng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; 
   d="gz'50?scan'50,208,50";a="360159094"
Received: from lkp-server02.sh.intel.com (HELO c6c5fbb3488a) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 10 Nov 2020 06:31:41 -0800
Received: from kbuild by c6c5fbb3488a with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kcUgO-0000I1-MS; Tue, 10 Nov 2020 14:31:40 +0000
Date: Tue, 10 Nov 2020 22:31:08 +0800
From: kernel test robot <lkp@intel.com>
To: "xiao.ma" <max701@126.com>, Guenter Roeck <linux@roeck-us.net>,
	Jean Delvare <jdelvare@suse.com>, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org, xiao.mx.ma@deltaww.com,
	jiajia.feng@deltaww.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v8] hwmon:Driver for Delta power supplies Q54SJ108A2
Message-ID: <202011102246.rEkk7NaQ-lkp@intel.com>
References: <20201109065636.4092-1-max701@126.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
In-Reply-To: <20201109065636.4092-1-max701@126.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "xiao.ma",

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on hwmon/hwmon-next]
[also build test WARNING on v5.10-rc3 next-20201110]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/xiao-ma/hwmon-Driver-for-Delta-power-supplies-Q54SJ108A2/20201109-153125
base:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-next
config: powerpc-randconfig-r024-20201110 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d81c8adb6ed9840257f6cb6b93f60856d422a15)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/f47495409701f52f17c950668c73b20ba8ab3f66
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review xiao-ma/hwmon-Driver-for-Delta-power-supplies-Q54SJ108A2/20201109-153125
        git checkout f47495409701f52f17c950668c73b20ba8ab3f66
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:127:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/hwmon/pmbus/q54sj108a2.c:13:
   In file included from drivers/hwmon/pmbus/pmbus.h:13:
   In file included from include/linux/regulator/driver.h:18:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:129:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/hwmon/pmbus/q54sj108a2.c:13:
   In file included from drivers/hwmon/pmbus/pmbus.h:13:
   In file included from include/linux/regulator/driver.h:18:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:131:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/hwmon/pmbus/q54sj108a2.c:13:
   In file included from drivers/hwmon/pmbus/pmbus.h:13:
   In file included from include/linux/regulator/driver.h:18:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:133:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/hwmon/pmbus/q54sj108a2.c:293:13: warning: cast to smaller integer type 'enum chips' from 'const void *' [-Wvoid-pointer-to-enum-cast]
                   chip_id = (enum chips)of_device_get_match_data(dev);
                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hwmon/pmbus/q54sj108a2.c:333:56: error: too many arguments to function call, expected 2, have 3
           ret = pmbus_do_probe(client, &q54sj108a2_id[chip_id], &q54sj108a2_info[chip_id]);
                 ~~~~~~~~~~~~~~                                  ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/hwmon/pmbus/pmbus.h:492:5: note: 'pmbus_do_probe' declared here
   int pmbus_do_probe(struct i2c_client *client, struct pmbus_driver_info *info);
       ^
   13 warnings and 1 error generated.

vim +293 drivers/hwmon/pmbus/q54sj108a2.c

   275	
   276	static int q54sj108a2_probe(struct i2c_client *client)
   277	{
   278		struct device *dev = &client->dev;
   279		u8 buf[I2C_SMBUS_BLOCK_MAX + 1];
   280		enum chips chip_id;
   281		int ret, i;
   282		struct dentry *debugfs;
   283		struct dentry *q54sj108a2_dir;
   284		struct q54sj108a2_data *psu;
   285	
   286		if (!i2c_check_functionality(client->adapter,
   287					     I2C_FUNC_SMBUS_BYTE_DATA |
   288					     I2C_FUNC_SMBUS_WORD_DATA |
   289					     I2C_FUNC_SMBUS_BLOCK_DATA))
   290			return -ENODEV;
   291	
   292		if (client->dev.of_node)
 > 293			chip_id = (enum chips)of_device_get_match_data(dev);
   294		else
   295			chip_id = i2c_match_id(q54sj108a2_id, client)->driver_data;
   296	
   297		ret = i2c_smbus_read_block_data(client, PMBUS_MFR_ID, buf);
   298		if (ret < 0) {
   299			dev_err(&client->dev, "Failed to read Manufacturer ID\n");
   300			return ret;
   301		}
   302		if (ret != 5 || strncmp(buf, "DELTA", 5)) {
   303			buf[ret] = '\0';
   304			dev_err(dev, "Unsupported Manufacturer ID '%s'\n", buf);
   305			return -ENODEV;
   306		}
   307	
   308		/*
   309		 * The chips support reading PMBUS_MFR_MODEL.
   310		 */
   311		ret = i2c_smbus_read_block_data(client, PMBUS_MFR_MODEL, buf);
   312		if (ret < 0) {
   313			dev_err(dev, "Failed to read Manufacturer Model\n");
   314			return ret;
   315		}
   316		if (ret != 14 || strncmp(buf, "Q54SJ108A2", 10)) {
   317			buf[ret] = '\0';
   318			dev_err(dev, "Unsupported Manufacturer Model '%s'\n", buf);
   319			return -ENODEV;
   320		}
   321	
   322		ret = i2c_smbus_read_block_data(client, PMBUS_MFR_REVISION, buf);
   323		if (ret < 0) {
   324			dev_err(dev, "Failed to read Manufacturer Revision\n");
   325			return ret;
   326		}
   327		if (ret != 4 || buf[0] != 'S') {
   328			buf[ret] = '\0';
   329			dev_err(dev, "Unsupported Manufacturer Revision '%s'\n", buf);
   330			return -ENODEV;
   331		}
   332	
   333		ret = pmbus_do_probe(client, &q54sj108a2_id[chip_id], &q54sj108a2_info[chip_id]);
   334		if (ret)
   335			return ret;
   336	
   337		psu = devm_kzalloc(&client->dev, sizeof(*psu), GFP_KERNEL);
   338		if (!psu)
   339			return 0;
   340	
   341		psu->client = client;
   342	
   343		debugfs = pmbus_get_debugfs_dir(client);
   344	
   345		q54sj108a2_dir = debugfs_create_dir(client->name, debugfs);
   346	
   347		for (i = 0; i < Q54SJ108A2_DEBUGFS_NUM_ENTRIES; ++i)
   348			psu->debugfs_entries[i] = i;
   349	
   350		debugfs_create_file("operation", 0644, q54sj108a2_dir,
   351				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_OPERATION],
   352				    &q54sj108a2_fops);
   353		debugfs_create_file("clear_fault", 0200, q54sj108a2_dir,
   354				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_CLEARFAULT],
   355				    &q54sj108a2_fops);
   356		debugfs_create_file("write_protect", 0444, q54sj108a2_dir,
   357				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_WRITEPROTECT],
   358				    &q54sj108a2_fops);
   359		debugfs_create_file("store_default", 0200, q54sj108a2_dir,
   360				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_STOREDEFAULT],
   361				    &q54sj108a2_fops);
   362		debugfs_create_file("vo_ov_response", 0644, q54sj108a2_dir,
   363				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_VOOV_RESPONSE],
   364				    &q54sj108a2_fops);
   365		debugfs_create_file("io_oc_response", 0644, q54sj108a2_dir,
   366				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_IOOC_RESPONSE],
   367				    &q54sj108a2_fops);
   368		debugfs_create_file("pmbus_revision", 0444, q54sj108a2_dir,
   369				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_PMBUS_VERSION],
   370				    &q54sj108a2_fops);
   371		debugfs_create_file("mfr_id", 0444, q54sj108a2_dir,
   372				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_MFR_ID],
   373				    &q54sj108a2_fops);
   374		debugfs_create_file("mfr_model", 0444, q54sj108a2_dir,
   375				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_MFR_MODEL],
   376				    &q54sj108a2_fops);
   377		debugfs_create_file("mfr_revision", 0444, q54sj108a2_dir,
   378				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_MFR_REVISION],
   379				    &q54sj108a2_fops);
   380		debugfs_create_file("mfr_location", 0444, q54sj108a2_dir,
   381				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_MFR_LOCATION],
   382				    &q54sj108a2_fops);
   383		debugfs_create_file("blackbox_erase", 0200, q54sj108a2_dir,
   384				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_BLACKBOX_ERASE],
   385				    &q54sj108a2_fops);
   386		debugfs_create_file("blackbox_read_offset", 0444, q54sj108a2_dir,
   387				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_BLACKBOX_READ_OFFSET],
   388				    &q54sj108a2_fops);
   389		debugfs_create_file("blackbox_set_offset", 0200, q54sj108a2_dir,
   390				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_BLACKBOX_SET_OFFSET],
   391				    &q54sj108a2_fops);
   392		debugfs_create_file("blackbox_read", 0444, q54sj108a2_dir,
   393				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_BLACKBOX_READ],
   394				    &q54sj108a2_fops);
   395		debugfs_create_file("flash_key", 0444, q54sj108a2_dir,
   396				    &psu->debugfs_entries[Q54SJ108A2_DEBUGFS_FLASH_KEY],
   397				    &q54sj108a2_fops);
   398	
   399		return 0;
   400	}
   401	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011102246.rEkk7NaQ-lkp%40intel.com.

--MGYHOYXEY6WxJCY8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--MGYHOYXEY6WxJCY8--
