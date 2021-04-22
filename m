Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGM4QOCAMGQE4FTCQYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEB43676AD
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 03:15:06 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id e4-20020a37b5040000b02902df9a0070efsf10925647qkf.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 18:15:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619054105; cv=pass;
        d=google.com; s=arc-20160816;
        b=qbPQ0RUF7Px7z2YDvqdYH5QoSad5W9FM6d6El2i/BB1PMH6SOH3ehzTdcuIPxl8whA
         rPAPB1IBASA7zd0yQka0n4jRhAw+naEAfUCky+1upU8XPpsp09hNdIKS/a9oMz6hGPiY
         tu/3O7yrQoAdMH151eTXpYphlmDgfT9SwXY8tc9GKtjh+++uUOJTpWmpQQpSmCVcYHoW
         u1PJJgwgzFTQ+o9x3W1TqPpzFNHS4J2iofBT6tE0fSMBMkwSnI9MhX8jMBsCgnDXrvXR
         uNMMvSo3fyY1paCsCDXODJLm/oTOR4QimmFtWKEzuBTwPwOIMquirPSvFahs6bMhkh+l
         sYcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Ng0InigjnZLZ6qn3rJ6JB8HavQ3/jX6YI9K3QxMGH8s=;
        b=qRsmmv22vAC2pI0mEzZdiRitdMfkpdh0Kn5abpnrzFsRxQMCE7J929gvzFAFp0l3yk
         2HGt2BvLRKo6h34dnYlYqWfDLCyBPdzRHMWkxc5Xm1oZ2gICMEnf4wFYP2x5vjErNkHg
         HuJZtaBao+4guYRfGyECit6RpFOREV7HJF12/wg3ACebzOPdflgt/PtofOpCYfHiUTQf
         m3sRwG1fS4Wk2fhl083lfxpDHGiv56dpXSzFlD4ufITPGucHheD3NbhPa2zs+W+oSEQN
         ZpVU1SW430qfsQ42Qqfikw6snx4/yp2m9puHnB9aBDWfjrV+AyPH4EqTqhmonJY59cul
         c0OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ng0InigjnZLZ6qn3rJ6JB8HavQ3/jX6YI9K3QxMGH8s=;
        b=sgnd/ex/GsAclC5KBAe3eL9yoPjRA9ngDkbh1dC4BZPvA1NspadGgz3u+sxeVAukBT
         F7xpRRkXqRQQdu0KpjBFmWdVLkK0qQfm+LBxEIy06/wg1JcL/pma17khW7LWEBkl/49W
         famK50yQXqtDpK39vj3Uxo0IF4TwrrLjZ6Ie42Z3pAc9+2Vm6d7NVMdxbAhTse3P5INW
         rsXARvqSu0HYGiv5l/PVmzdmHcOD5pbcv3f0jhPCTM8vzV6BQ6cXP3ATv0dlB6XUfD37
         j1Bfh10js78dI0z3T2p3Dm/a8Y1e8oh/lbKNKkloR77KHYC8YjTPEYiD/QbRgmssR1X6
         dEug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ng0InigjnZLZ6qn3rJ6JB8HavQ3/jX6YI9K3QxMGH8s=;
        b=I4PirpNbzBcxWTowSYNo+Z2tDCe45nmQTTW3bsjFnYBY7bXrOOfkQU6JK4iudwZFvT
         Nag4UXDj7TcD6vzxPd8WL/gU1AiezSuMJ4Z5TKRrWoskyImJmreG6OxzGnXJqeKnh05W
         qh/QFYWsf0AIhxF0XiyP9wGxNbehUB3dK8pPBGQy0OmC1ldG5nxCo12P1tAH/9XvZB4t
         rN/CMVNsvy+YhbfGZ0kUOaCd2pEQtEF5PFY1RU4jktu3UqH1OGmPEJxoCE/2uQ5YjSN7
         1LXwzgHa+Xc5+LuZJoPt3Ja9Mmc1Kw5l2mZTcUeOmzt3z+m4G1jpFliXJ/4kfwuhlhSS
         864A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532i9W5v6oZyJBOigGB3fILQbR523QbKksC4ZwwXwPUohNmCOee0
	jlwVHkfbG9rMLJYfjH5AEqk=
X-Google-Smtp-Source: ABdhPJx3G3PXLC1+InewTmdtyW58ztWAV/Y1GMpP8C26mTksJGWWD/4/+6MUKgYIAgnKV3uQIrlUSA==
X-Received: by 2002:a05:622a:282:: with SMTP id z2mr591400qtw.283.1619054105117;
        Wed, 21 Apr 2021 18:15:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6387:: with SMTP id x129ls2272128qkb.1.gmail; Wed, 21
 Apr 2021 18:15:04 -0700 (PDT)
X-Received: by 2002:a37:76c2:: with SMTP id r185mr1079458qkc.204.1619054104338;
        Wed, 21 Apr 2021 18:15:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619054104; cv=none;
        d=google.com; s=arc-20160816;
        b=fo6YtHhyV/2DgjTHOF7lx6GXhZFaz/P3Aw4m7exKf99ncfAZHZBau7KcA5T+m4FrtL
         lGdqRrlAElLvsMEKh5bk0s5C3CLXENoKXKwnPyDQdU+MVPKKd+gu6OPSihXZQH20ingE
         b+LVlCsWUtJlp3tG1f3ilmXPlXIRuGty4lsboek6UT6p8+2F7o4WRr3WTgPjltNrtNnq
         EMfXguNEYgSXq15fzzc1U8/V7duhQvzR8x3/vTDeB8VOfWBvLwzG/IiVqICgJ9izFlxU
         /w0XegdwbdDA6qqtjKuZIwRQtSbeQK61VyUDouqQ55VDiANOz47QxAP1tb8h9ntmBfen
         gFTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=u1x+WcaLBXvdLoUjU0rCaYtwdjUw4BmbcDX7EYVYZIU=;
        b=l18zdAqq4mXx0ivlrO5HD+kNsh5JTKru5iOWp1k9lXWC0jmo8QwZjIS4yecD6JWYNJ
         x8p/Aw7ppHi1h7nZMr0EFhs5kjCC1JoPxto+0PALmEVRejOKe3p/5JyK9XG+zU4miYXP
         p7QhW874MdoHWOkQvLpUXWpw4N5HidTckdDO/nebxeZs71bcoIsXZlB3vlmFseUJU0j9
         hVex+scdM6bxdFJrPM4N7JCFgz4dlLsUV9y7gm1MjjfcxAlIkhKaUbZB3uhkUrEZbkiB
         UcOoS7OqN1g0SiYSoU8s4pJhVA1T1scClxmJY7eH/c86+sbMJSKqasFInTcrcQuFRx4D
         w4Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id c26si405385qtq.1.2021.04.21.18.15.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 18:15:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 6THtBevq6ASmo8b71uiZgwndQSwZQmVP5ffdjzqu++hj0GR993XNua2FyuuFT60Nf1bdcYcePb
 3OC6MVJdFOiQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="192618995"
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="gz'50?scan'50,208,50";a="192618995"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 18:15:01 -0700
IronPort-SDR: fRDseqFblondEX4YFp+ZBh9j6EjxQakPGf8Ae4oLbz4cstgJzbVIYV9u1X8b02TO/mnePdw2dq
 xB/zFj2vmNlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="gz'50?scan'50,208,50";a="384613403"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 21 Apr 2021 18:14:58 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lZNvl-0003tl-Pd; Thu, 22 Apr 2021 01:14:57 +0000
Date: Thu, 22 Apr 2021 09:14:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Maciej W. Rozycki" <macro@orcam.me.uk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-mips@linux-mips.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [mips-linux:mips-next 98/101] drivers/watchdog/dw_wdt.c:442:3:
 error: couldn't allocate output register for constraint 'x'
Message-ID: <202104220952.IJQvIZqO-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Maciej,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git mips-next
head:   182dd5bad52c66a54c300fe320b772456572bf23
commit: c49f71f60754acbff37505e1d16ca796bf8a8140 [98/101] MIPS: Reinstate platform `__div64_32' handler
config: mips-randconfig-r031-20210421 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d87b9b81ccb95217181ce75515c6c68bbb408ca4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git/commit/?id=c49f71f60754acbff37505e1d16ca796bf8a8140
        git remote add mips-linux https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git
        git fetch --no-tags mips-linux mips-next
        git checkout c49f71f60754acbff37505e1d16ca796bf8a8140
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/watchdog/dw_wdt.c:442:3: error: couldn't allocate output register for constraint 'x'
                   do_div(msec, dw_wdt->rate);
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
>> drivers/mmc/core/mmc_test.c:526:2: error: couldn't allocate output register for constraint 'x'
           do_div(bytes, (uint32_t)ns);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
   In file included from drivers/clk/analogbits/wrpll-cln28hpc.c:27:
>> include/linux/math64.h:91:15: error: couldn't allocate output register for constraint 'x'
           *remainder = do_div(dividend, divisor);
                        ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
>> drivers/leds/leds-pwm.c:48:2: error: couldn't allocate output register for constraint 'x'
           do_div(duty, max);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
>> drivers/staging/iio/frequency/ad9834.c:106:2: error: couldn't allocate output register for constraint 'x'
           do_div(freqreg, mclk);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
>> drivers/iio/adc/ad7780.c:160:10: error: couldn't allocate output register for constraint 'x'
                   gain = DIV_ROUND_CLOSEST_ULL(vref, full_scale);
                          ^
   include/linux/math.h:104:2: note: expanded from macro 'DIV_ROUND_CLOSEST_ULL'
           do_div(_tmp, __d);                              \
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
>> drivers/iio/adc/qcom-vadc-common.c:458:3: error: couldn't allocate output register for constraint 'x'
                   do_div(temp, prescale->num * 2);
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
>> drivers/iio/dac/ad5791.c:270:3: error: couldn't allocate output register for constraint 'x'
                   do_div(val64, st->vref_mv);
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
>> drivers/iio/dac/dpot-dac.c:152:3: error: couldn't allocate output register for constraint 'x'
                   do_div(tmp, val2);
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/iio/dac/dpot-dac.c:69:4: error: couldn't allocate output register for constraint 'x'
                           do_div(tmp, dac->max_ohms);
                           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   2 errors generated.
--
>> drivers/iio/frequency/adf4350.c:184:3: error: couldn't allocate output register for constraint 'x'
                   do_div(tmp, st->fpfd); /* Div round closest (n + d/2)/d */
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/iio/frequency/adf4350.c:185:18: error: couldn't allocate output register for constraint 'x'
                   st->r0_fract = do_div(tmp, st->r1_mod);
                                  ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/iio/frequency/adf4350.c:324:3: error: couldn't allocate output register for constraint 'x'
                   do_div(val, st->r1_mod * (1 << st->r4_rf_div_sel));
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   3 errors generated.
--
>> drivers/iio/frequency/adf4371.c:189:2: error: couldn't allocate output register for constraint 'x'
           do_div(tmp, st->mod2);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/iio/frequency/adf4371.c:197:2: error: couldn't allocate output register for constraint 'x'
           do_div(val, ADF4371_MODULUS1 * (1 << ref_div_sel));
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/iio/frequency/adf4371.c:217:8: error: couldn't allocate output register for constraint 'x'
           tmp = do_div(vco, pfd);
                 ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/iio/frequency/adf4371.c:219:12: error: couldn't allocate output register for constraint 'x'
           *fract2 = do_div(tmp, pfd);
                     ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   4 errors generated.
..


vim +442 drivers/watchdog/dw_wdt.c

c9353ae1c69ba1 Jamie Iles  2011-01-24  417  
86445535887e58 Serge Semin 2020-05-30  418  /*
86445535887e58 Serge Semin 2020-05-30  419   * In case if DW WDT IP core is synthesized with fixed TOP feature disabled the
86445535887e58 Serge Semin 2020-05-30  420   * TOPs array can be arbitrary ordered with nearly any sixteen uint numbers
86445535887e58 Serge Semin 2020-05-30  421   * depending on the system engineer imagination. The next method handles the
86445535887e58 Serge Semin 2020-05-30  422   * passed TOPs array to pre-calculate the effective timeouts and to sort the
86445535887e58 Serge Semin 2020-05-30  423   * TOP items out in the ascending order with respect to the timeouts.
86445535887e58 Serge Semin 2020-05-30  424   */
86445535887e58 Serge Semin 2020-05-30  425  
86445535887e58 Serge Semin 2020-05-30  426  static void dw_wdt_handle_tops(struct dw_wdt *dw_wdt, const u32 *tops)
86445535887e58 Serge Semin 2020-05-30  427  {
86445535887e58 Serge Semin 2020-05-30  428  	struct dw_wdt_timeout tout, *dst;
86445535887e58 Serge Semin 2020-05-30  429  	int val, tidx;
86445535887e58 Serge Semin 2020-05-30  430  	u64 msec;
86445535887e58 Serge Semin 2020-05-30  431  
86445535887e58 Serge Semin 2020-05-30  432  	/*
86445535887e58 Serge Semin 2020-05-30  433  	 * We walk over the passed TOPs array and calculate corresponding
86445535887e58 Serge Semin 2020-05-30  434  	 * timeouts in seconds and milliseconds. The milliseconds granularity
86445535887e58 Serge Semin 2020-05-30  435  	 * is needed to distinguish the TOPs with very close timeouts and to
86445535887e58 Serge Semin 2020-05-30  436  	 * set the watchdog max heartbeat setting further.
86445535887e58 Serge Semin 2020-05-30  437  	 */
86445535887e58 Serge Semin 2020-05-30  438  	for (val = 0; val < DW_WDT_NUM_TOPS; ++val) {
86445535887e58 Serge Semin 2020-05-30  439  		tout.top_val = val;
86445535887e58 Serge Semin 2020-05-30  440  		tout.sec = tops[val] / dw_wdt->rate;
86445535887e58 Serge Semin 2020-05-30  441  		msec = (u64)tops[val] * MSEC_PER_SEC;
86445535887e58 Serge Semin 2020-05-30 @442  		do_div(msec, dw_wdt->rate);
86445535887e58 Serge Semin 2020-05-30  443  		tout.msec = msec - ((u64)tout.sec * MSEC_PER_SEC);
86445535887e58 Serge Semin 2020-05-30  444  
86445535887e58 Serge Semin 2020-05-30  445  		/*
86445535887e58 Serge Semin 2020-05-30  446  		 * Find a suitable place for the current TOP in the timeouts
86445535887e58 Serge Semin 2020-05-30  447  		 * array so that the list is remained in the ascending order.
86445535887e58 Serge Semin 2020-05-30  448  		 */
86445535887e58 Serge Semin 2020-05-30  449  		for (tidx = 0; tidx < val; ++tidx) {
86445535887e58 Serge Semin 2020-05-30  450  			dst = &dw_wdt->timeouts[tidx];
86445535887e58 Serge Semin 2020-05-30  451  			if (tout.sec > dst->sec || (tout.sec == dst->sec &&
86445535887e58 Serge Semin 2020-05-30  452  			    tout.msec >= dst->msec))
86445535887e58 Serge Semin 2020-05-30  453  				continue;
86445535887e58 Serge Semin 2020-05-30  454  			else
86445535887e58 Serge Semin 2020-05-30  455  				swap(*dst, tout);
86445535887e58 Serge Semin 2020-05-30  456  		}
86445535887e58 Serge Semin 2020-05-30  457  
86445535887e58 Serge Semin 2020-05-30  458  		dw_wdt->timeouts[val] = tout;
86445535887e58 Serge Semin 2020-05-30  459  	}
86445535887e58 Serge Semin 2020-05-30  460  }
86445535887e58 Serge Semin 2020-05-30  461  

:::::: The code at line 442 was first introduced by commit
:::::: 86445535887e580036d0094a849126703a33fd62 watchdog: dw_wdt: Support devices with non-fixed TOP values

:::::: TO: Serge Semin <Sergey.Semin@baikalelectronics.ru>
:::::: CC: Wim Van Sebroeck <wim@linux-watchdog.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104220952.IJQvIZqO-lkp%40intel.com.

--u3/rZRmxL6MmkK24
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
TVQWBg7BfwHHz7ikK4ECAA==

--u3/rZRmxL6MmkK24--
