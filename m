Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL574GBQMGQEPI3X7HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A93A360F3C
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 17:45:52 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id c3-20020a0568081383b029010231e3ec8csf7912291oiw.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 08:45:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618501551; cv=pass;
        d=google.com; s=arc-20160816;
        b=QRdqGvvUAaVfyKLeZs1WgRGF8cab6T+7v2wrcCf7pDzpKR5z+2Rm7+T5n3ETU9fw1N
         gY/GyuATBFcW7ON090qaUyNK9cHIzD8D8nrjHpquwbDlxzasCIrQL8xq1qVriur5wia/
         BShx5aK9o5+FIucKUzEJ6eLrvPs+lkXJ/kFDGHxu8u+SjddpLzemlucKTZV2VJ0eWQ0E
         o4hsiQaGN+9wSiRB50FYrKhZVr2311aAtWOnk5Sus88u4ppoqPfgmB8Sfec/+8p82Af+
         XkIJ6gpYEgorW9Z+ZGACnjG01omWYuTtMZ+TwYk5fIxLcD5S7UZMIka04OY0I6ovHHFC
         rv5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=OyPJeMUlqUgmc/3qT1bV3gICz8Tl5+Hg0FqzAPLPIQA=;
        b=CHushC9ivkfbPBIyXsBl7CKcwg1+Os2Hs4ntz641bBvnd1I1L7m3GDBrXZlpxkeAYq
         sRAy6ddMS4iVNvJcuNQnLrrGcXQ36U1d6+72U8OKxvUGrtMKHikrJMLqkGYSWSvs/0NQ
         KrB+J+wmsxYmkyIPLK1qCiGiB704UXt5MrZLAtXJbCDPEvTTn3E4onAGeNk66OZ3JkXW
         VRRGCITpuB2dU+LiqynaJv4pdwvDuBhUQ0TB7W4LwmSSkLiEufeceR7UfEJhNJX7KVBo
         anVAillOV2g6y1GAN+3Q+XeQML6WwR8nvnhPRSFTEE6nTg0W1/XmGmFMT+eJsSP35dJK
         ouqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OyPJeMUlqUgmc/3qT1bV3gICz8Tl5+Hg0FqzAPLPIQA=;
        b=sd7HLHHTTowWG2hj+TgURJMix1DRjIt+nxYe3hYYEkEK6oxAIV8RzHiQLHktp41H22
         bDb1EjocInrbA/X8qojTKqdlKRWsxyeXzb9wOE+G3nBOeU+aKhvzuPraClY+4uls6exq
         RWZH6p/nX85TCiUqgLf3dl2nUzCr6jcPVpoPes2yDZF9LR7NS99ejRFiVilzcxPxkV/2
         5/dtpiylCH44vX+9Kgx0McxLel+/DtFNhmVR9/rCuTzyd5TDKpTmmyDTaf2GvHX3o6Pj
         7HkihzCmR33EgpEvUeQJ5z1domzPLMYsU3/YJ3ulgWyIxF2+VGwvY+Q8sraVCV5W480A
         rG+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OyPJeMUlqUgmc/3qT1bV3gICz8Tl5+Hg0FqzAPLPIQA=;
        b=S7bywqolYCA/GUKxb0QqsLO7om69eBdvhpKttmq3Q4W8lLiscDQi9PiMNpXDcKUzJJ
         NGGJbX5kCAVQ47X31a9DVc8mOPUvkDm7ptGrFJzpsvOjczzoSfHWGFFr2NSECXOcyBd/
         qDixZsFeb26s9CE2idoPmVaEsQkWwD1gxGHc/qshJiTaOYrGYCo0g0aZG9W6of5c7Dqs
         dsm0hnzVBuWJWzPlXoknakZtp4fekOOdgPY4H2g7Ioi0QUxvrIBWOqDyh3d6ix6UnWEC
         AlOEbADCd7j5ajDh4t56H0ZhZIzncNxydMbqI/Kf1C/Ik4B2c3ZaH1kROz0Z1bcYD+5i
         w2IQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mm1dU7fzG7pi2q9z+StsHHcrKweof99CBzX/QMqQqEwRXrJHv
	k/DuJZPfpz9Hu3hPKbsWQBQ=
X-Google-Smtp-Source: ABdhPJzPXYuhDOXXJZhNRlt81W/okFa1Y1/X72LotY3ZBAvb4diwMvVm0CuE/tdC5GbLc+75Qpj1Xw==
X-Received: by 2002:aca:c682:: with SMTP id w124mr2983289oif.154.1618501551482;
        Thu, 15 Apr 2021 08:45:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d54d:: with SMTP id m74ls1420212oig.8.gmail; Thu, 15 Apr
 2021 08:45:51 -0700 (PDT)
X-Received: by 2002:aca:ea06:: with SMTP id i6mr3090106oih.82.1618501551028;
        Thu, 15 Apr 2021 08:45:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618501551; cv=none;
        d=google.com; s=arc-20160816;
        b=I0DNgMrkS5IbA9t2rVrQBfh4oNoSpeL+L7dal4V3/Xc5qkI+8D0RTWCQZm5HFeOaSN
         DzXppiuvQeyhUCEcA4YhZOn1v56ymWlj3kvlzYKOZuVSeS4vAEkPFtvpvyf1KaMdfnvN
         jcg0ge/V3ppS/XKfb9isn5rQm0gflHlBQhxp50hJdbO7kICKPn83WWWW74khCP6RyVQX
         q/fitvcuqe1y8Ly6N8nJ/cm29OyBqg4tv3SKLAiF1ajbxhLxklqA0XzD8/0uaryNiN8G
         LjZQHXns3zMnNmkjoQxHuts9deCpx/ItXums188057FPxj+Z1BAEVcoLAZZoMpFV5x6t
         DVDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Z2JlOn9pLO7TioE94dwXHXPpeP+CmBxsjjIaOlcTToA=;
        b=LH9fa0N17eMJl9m772pR+Mqtwo7sqYk2NTbphOQ6ba17jfXgl6pxYCujn02e4PBZOm
         2GGEzx+R4H2NlyE/viD0A4dBRiWOYMToKuCQhTj0Zbgg/HljzTQwmIey73MxJI2ONY2k
         8Uv/ceAFiUjL2o0f8kNoHRJ1wFTd5C6yMk1Y6w03TWujOJ4kAv2H/JXwlIknMpFvO4YY
         0ft+afgR27xvLeH4FuxmVwDGti5b6LVrU7IQpOc8oAVBev3VLeQpESu0z1sWnMhG2rl6
         T3WGuSK4PhuZFucFezMrIGF7FZ6JNoJXJBZxO9bkj/2WuUT5AUzHXm10eH/lYbm6Zhon
         L/DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id u1si184149oif.3.2021.04.15.08.45.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 08:45:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: AejdCHgJLoRdonyeITNLIj9bBHYSrZs/GsxbA35Y0CrDpiMPTeIwvV+beQWZVsiPB5eFk31feE
 I+5EGVExfoDQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="215383870"
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
   d="gz'50?scan'50,208,50";a="215383870"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 08:45:47 -0700
IronPort-SDR: hUC5b1CVXO7X7dubRznhtyCSixXQAj9d/pRG6C4VUzRynSKA0bOCTYiqkSjH/BH9Ts1nAO8BHY
 kxE8/nNyXCww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
   d="gz'50?scan'50,208,50";a="382763771"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 15 Apr 2021 08:45:43 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lX4Ba-00010g-Em; Thu, 15 Apr 2021 15:45:42 +0000
Date: Thu, 15 Apr 2021 23:45:10 +0800
From: kernel test robot <lkp@intel.com>
To: Niklas Schnelle <schnelle@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-s390@vger.kernel.org
Subject: Re: [PATCH v2 2/2] asm-generic/io.h: Silence
 -Wnull-pointer-arithmetic warning on PCI_IOBASE
Message-ID: <202104152355.nQEgAgVZ-lkp@intel.com>
References: <20210415123700.3030728-3-schnelle@linux.ibm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210415123700.3030728-3-schnelle@linux.ibm.com>
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


--17pEHd4RhPHOinZp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Niklas,

I love your patch! Yet something to improve:

[auto build test ERROR on soc/for-next]
[also build test ERROR on sparc/master asm-generic/master sparc-next/master=
 v5.12-rc7 next-20210415]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Niklas-Schnelle/asm-generi=
c-io-h-Silence-Wnull-pointer-arithmetic-warning-on-PCI_IOBASE/20210415-2039=
19
base:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git for-nex=
t
config: nds32-allnoconfig (attached as .config)
compiler: nds32le-linux-gcc (GCC) 9.3.0
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/f0394115b166f960f12fc7bc4=
8362d0d19f67883
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Niklas-Schnelle/asm-generic-io-h-S=
ilence-Wnull-pointer-arithmetic-warning-on-PCI_IOBASE/20210415-203919
        git checkout f0394115b166f960f12fc7bc48362d0d19f67883
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dgcc-9.3.0 make.cross =
W=3D1 ARCH=3Dnds32=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/nds32/include/asm/io.h:82,
                    from arch/nds32/kernel/vdso/gettimeofday.c:7:
   include/asm-generic/io.h: In function 'ioport_map':
>> include/asm-generic/io.h:1071:44: error: 'PCI_IOBASE' undeclared (first =
use in this function)
    1071 |  return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
         |                                            ^~~~~~~~~~
   include/asm-generic/io.h:1071:44: note: each undeclared identifier is re=
ported only once for each function it appears in
   include/asm-generic/io.h: In function '__pci_ioport_unmap':
   include/asm-generic/io.h:1076:32: error: 'PCI_IOBASE' undeclared (first =
use in this function)
    1076 |  uintptr_t start =3D (uintptr_t) PCI_IOBASE;
         |                                ^~~~~~~~~~
   arch/nds32/kernel/vdso/gettimeofday.c: At top level:
   arch/nds32/kernel/vdso/gettimeofday.c:158:13: warning: no previous proto=
type for '__vdso_clock_gettime' [-Wmissing-prototypes]
     158 | notrace int __vdso_clock_gettime(clockid_t clkid, struct __kerne=
l_old_timespec *ts)
         |             ^~~~~~~~~~~~~~~~~~~~
   arch/nds32/kernel/vdso/gettimeofday.c:206:13: warning: no previous proto=
type for '__vdso_clock_getres' [-Wmissing-prototypes]
     206 | notrace int __vdso_clock_getres(clockid_t clk_id, struct __kerne=
l_old_timespec *res)
         |             ^~~~~~~~~~~~~~~~~~~
   arch/nds32/kernel/vdso/gettimeofday.c:246:13: warning: no previous proto=
type for '__vdso_gettimeofday' [-Wmissing-prototypes]
     246 | notrace int __vdso_gettimeofday(struct __kernel_old_timeval *tv,=
 struct timezone *tz)
         |             ^~~~~~~~~~~~~~~~~~~
--
   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp]
   In file included from arch/nds32/include/asm/io.h:82,
                    from arch/nds32/kernel/vdso/gettimeofday.c:7:
   include/asm-generic/io.h: In function 'ioport_map':
>> include/asm-generic/io.h:1071:44: error: 'PCI_IOBASE' undeclared (first =
use in this function)
    1071 |  return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
         |                                            ^~~~~~~~~~
   include/asm-generic/io.h:1071:44: note: each undeclared identifier is re=
ported only once for each function it appears in
   include/asm-generic/io.h: In function '__pci_ioport_unmap':
   include/asm-generic/io.h:1076:32: error: 'PCI_IOBASE' undeclared (first =
use in this function)
    1076 |  uintptr_t start =3D (uintptr_t) PCI_IOBASE;
         |                                ^~~~~~~~~~
   arch/nds32/kernel/vdso/gettimeofday.c: At top level:
   arch/nds32/kernel/vdso/gettimeofday.c:158:13: warning: no previous proto=
type for '__vdso_clock_gettime' [-Wmissing-prototypes]
     158 | notrace int __vdso_clock_gettime(clockid_t clkid, struct __kerne=
l_old_timespec *ts)
         |             ^~~~~~~~~~~~~~~~~~~~
   arch/nds32/kernel/vdso/gettimeofday.c:206:13: warning: no previous proto=
type for '__vdso_clock_getres' [-Wmissing-prototypes]
     206 | notrace int __vdso_clock_getres(clockid_t clk_id, struct __kerne=
l_old_timespec *res)
         |             ^~~~~~~~~~~~~~~~~~~
   arch/nds32/kernel/vdso/gettimeofday.c:246:13: warning: no previous proto=
type for '__vdso_gettimeofday' [-Wmissing-prototypes]
     246 | notrace int __vdso_gettimeofday(struct __kernel_old_timeval *tv,=
 struct timezone *tz)
         |             ^~~~~~~~~~~~~~~~~~~
   make[2]: *** [scripts/Makefile.build:271: arch/nds32/kernel/vdso/gettime=
ofday.o] Error 1
   make[2]: Target 'include/generated/vdso-offsets.h' not remade because of=
 errors.
   make[1]: *** [arch/nds32/Makefile:63: vdso_prepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +/PCI_IOBASE +1071 include/asm-generic/io.h

7c566bb5e4d5fb0 Hector Martin     2021-02-11  1063 =20
ce816fa88cca083 Uwe Kleine-K=C3=B6nig  2014-04-07  1064  #ifdef CONFIG_HAS_=
IOPORT_MAP
3f7e212df82ca04 Arnd Bergmann     2009-05-13  1065  #ifndef CONFIG_GENERIC_=
IOMAP
9216efafc52ff99 Thierry Reding    2014-10-01  1066  #ifndef ioport_map
9216efafc52ff99 Thierry Reding    2014-10-01  1067  #define ioport_map iopo=
rt_map
3f7e212df82ca04 Arnd Bergmann     2009-05-13  1068  static inline void __io=
mem *ioport_map(unsigned long port, unsigned int nr)
3f7e212df82ca04 Arnd Bergmann     2009-05-13  1069  {
500dd232449e7c0 Andrew Murray     2018-09-13  1070  	port &=3D IO_SPACE_LIM=
IT;
500dd232449e7c0 Andrew Murray     2018-09-13 @1071  	return (port > MMIO_UP=
PER_LIMIT) ? NULL : PCI_IOBASE + port;
3f7e212df82ca04 Arnd Bergmann     2009-05-13  1072  }
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1073  #define __pci_ioport_un=
map __pci_ioport_unmap
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1074  static inline void __pc=
i_ioport_unmap(void __iomem *p)
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1075  {
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1076  	uintptr_t start =3D (u=
intptr_t) PCI_IOBASE;
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1077  	uintptr_t addr =3D (ui=
ntptr_t) p;
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1078 =20
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1079  	if (addr >=3D start &&=
 addr < start + IO_SPACE_LIMIT)
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1080  		return;
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1081  	iounmap(p);
f5810e5c329238b Lorenzo Pieralisi 2020-09-16  1082  }
9216efafc52ff99 Thierry Reding    2014-10-01  1083  #endif
3f7e212df82ca04 Arnd Bergmann     2009-05-13  1084 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202104152355.nQEgAgVZ-lkp%40intel.com.

--17pEHd4RhPHOinZp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--17pEHd4RhPHOinZp--
