Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMGNR33QKGQEWETQLQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0C01F7B3D
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 18:00:51 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id v26sf4831011oot.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 09:00:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591977650; cv=pass;
        d=google.com; s=arc-20160816;
        b=QI2JmPXj6Hyi3WTvl5jSZMxRsdShlNYPjQeoFxCDJPD2NtA7QiZjv9uRGAg6Qt8RF3
         IMpiT++gE7d4ZYUMC/qY6Oor8qMqcG0ALjrtxSS1RrDQ/OropRNi9OfUAo+jNckkYcLJ
         33K0KWlqZzJ81Kz85ocGlZ4HhVYjL7zw7WAVU678a1wvClwXQzJiZe5JZJBVqr2QrLHf
         gtpF1QffqkC4CqEVFmvc2SokrDrOLq9psnCUTHYAIYz2I8VNKBg8CVED5c1Te0hR4me8
         cSoyT7TN3Tj7CC6CZIvuhlD56zUz/3vysH9yVbrSfIcmJ1FezQa3C1XdLk6LWBPHEyze
         Ktiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=O73vLTihPsgExzVUx3YNV2b+2zp86i/moH+wA5+mCNo=;
        b=0a94pCvCBSs3xXwV15W5Z3tPmVvDpqeIsAIpSYVlMEhRkeX9n2px5F8UIGPD5ArMN8
         uV4mtkGrpYHHZI5JREbUESP4jeEGJgh6qsI3Oawb/doEKFjQMgRbfrxA+1qPZ4L1SwaW
         5R7bYZsVPFHn8XjgB4T2+Ji5eOvMOodL+EnXV/i2G/K9D1nBCS2bFi6A7W7075RkVHrU
         G+GZxLCtskAwJdYGa3yriUptuFGJdbfQERV/cJXwa1/x478Ka84qo4sl7ctFLcZIHkqG
         5JcPeU3yk792A7+kLkj5Os5RASROkTdIvZZC2Yz4BbdO9G7XGElkd2qeq2wcB62vQGVC
         CDTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O73vLTihPsgExzVUx3YNV2b+2zp86i/moH+wA5+mCNo=;
        b=Mje6Pk/8QiyW7twybXllAvFRzx2K4Uzz6KUlTPIOoK/kss3fCgJRP2Rj16DuajDmz1
         y+k9l5/mx7qj4F5zAGcOa+w6587wV3cp0iD1ngyDSzNx4N8ob2f1MeN9TDAeST7B99+F
         icHBnteTDARTkgOxNaqQS/lQJgWRUdx8tG5glY4WWAN7sqzztQzQfBZkW4urGWhHG/5p
         q/+fLRmqkx5dHnhEmo9lT9ZPOdw+OqHjrlVBuBJwkeyN0EFObWR7Tm5ynXEOMO3zEC57
         hi3Z+9q2QQTkX5FpE1U5BKN0fqUs3id/yBYygLpPwEg38nZ5+jdF+v74DXKTjAGF7ykW
         97vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O73vLTihPsgExzVUx3YNV2b+2zp86i/moH+wA5+mCNo=;
        b=qCz3WDdDtV9QJovc67wG4ybuFCE1YfDs7TCvSlrxO8OLdHhzUKeXMbG6D3iSOK89qH
         lmPnX6UFTZU4wC2GDjfgCht2WV4yhLSIqWDn88efGEsA5xhPs3ZV/gqsT47bbxzBK4ln
         FLGkugH021y8z/HwoWf06ynX3L0HCQfKp1yKh/OMt8xvCsU0A8tTR6iqE4tai0K2QFrU
         KmgZ8sTP7SWXgElJofPtKyO/PZ2yOpWfA73K85wadbMR33fCIiEQICYXbH9gPUnIv6tA
         02TkZjtMLHcBb3PHRRmN70o4k5CXwc8xpnFphiwH7DINDKmaTTzkYM3M1wUcWy1F+A9E
         EmJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rsCkspIiCODFkl1FHsS5dW0QZ6OsXMOU1KMkvyBFA6PA/XISR
	3GIgzAyytdgDOSrIxsyb0CA=
X-Google-Smtp-Source: ABdhPJwC/za+yGF/vpXhRQ7dgfWNFaVmkvnPpD+DMm5G8c8pBtROOEdi37Ck24M/56wtIg+keCK1XA==
X-Received: by 2002:a05:6830:2252:: with SMTP id t18mr10973174otd.253.1591977648516;
        Fri, 12 Jun 2020 09:00:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls1392658ots.6.gmail; Fri,
 12 Jun 2020 09:00:48 -0700 (PDT)
X-Received: by 2002:a9d:bee:: with SMTP id 101mr11835976oth.311.1591977647977;
        Fri, 12 Jun 2020 09:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591977647; cv=none;
        d=google.com; s=arc-20160816;
        b=r0ILkgNl/PD0zyPNW775ugFLJGJLNeAk10XX0YqyW7ZFCC+dkCUrNIZeRXKb6ZZBA1
         yv1A53fG7lU9kH6o504SVgnzakSYvlbESQdc+h8jQUGZn9ZNbLa2div+Ax/0HmfGl2tC
         MTVxcf26dgXzNyI/Jw62WTSgl+8I6rPF/8WRk5vwvEb9vnXXOq5QUtXl0XU1AfHzgwhi
         2kymwuEUQY8eiaDEkJgdBOkEaT1tDhkVJZfiUshwkcWcmK3jYufrhYuMJ0OwGIxGMN6D
         /8FPuhIUtRWVA8B4TQMUPeRRiTYMLF2rWZ9qM5Y5jDUnhMbGsRTSxssJjThUK9ZOiRLT
         2Rvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=O+2+YklGNvqNHhX/2zMO3JY6XSXG+umER33rauRSrIk=;
        b=CgVjXp4W2lMRTITESJjio7tZ19B4vny5A4svKNxIRgsystkgxAmMqLyKxc4lOWUMFf
         BtpThhqOgXmCRE8yc1A3Mv1Uv8LPsmn7J8eDNMWO1o9zfYPblBSgm1UNEh7hjicFRILQ
         ICgI5VTEw0pReRjY1XViVaiez5rOVATMCt3bEFw/Jr3Q4N6leFPPjCT0WWp4RDTfd3m5
         dSnTF0qOMYWGnirwlPbsEAkKdl6FjR5TzCUZ29VGL6xzWnNGooIPg2m+hC0ARiiXwkHD
         MHGc905+nyLHvF5C97MzbDwy4jmOwk8lIR2H8FQQihybMDjwKUQtj8kaNqo2z3FXHzX/
         fE5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id l9si243301oig.0.2020.06.12.09.00.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jun 2020 09:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: vYnFkwt4Lfa3BVnOsaiOAiigDd98f9eOKjK2U/AuV40038wBX4e+B3tT+0samJshtrlq3x3LVg
 97P6R+T9Lmxg==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2020 09:00:37 -0700
IronPort-SDR: Syt3FGsiL4NwPmqxcY7d149Kmu1JWrj7agIJ9+vzaJ/FcqdoC93PsnmaushSgUBNBYcZ1XFQKz
 keFLmPY3dieA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; 
   d="gz'50?scan'50,208,50";a="448337830"
Received: from lkp-server02.sh.intel.com (HELO de5642daf266) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 12 Jun 2020 09:00:35 -0700
Received: from kbuild by de5642daf266 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jjm6d-00002C-5e; Fri, 12 Jun 2020 16:00:35 +0000
Date: Sat, 13 Jun 2020 00:00:04 +0800
From: kernel test robot <lkp@intel.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [lkundrak-linux-mmp:lr/ariel 45/50]
 sound/soc/codecs/88ce156-codec.c:405:5: warning: no previous prototype for
 function 'ce156_set_sample_rate'
Message-ID: <202006122359.rwOIGlxx%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.gi=
t lr/ariel
head:   4d586ea0de8af0daaef44b13621d8a48f6565be2
commit: 5af54aabd51377d10927e6478f75838bb3fc33b7 [45/50] p1
config: powerpc64-randconfig-r015-20200612 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3b43f0=
06294971b8049d4807110032169780e5b8)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        git checkout 5af54aabd51377d10927e6478f75838bb3fc33b7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

__do_##name al;                                                    ^~~~~~~~=
~~~~~~
<scratch space>:89:1: note: expanded from here
__do_insw
^
arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
#define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
~~~~~~~~~~~~~~~~~~~~~^
In file included from sound/soc/codecs/88ce156-codec.c:20:
In file included from include/linux/spi/spi.h:14:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:604:
arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithm=
etic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_=
NORET'
__do_##name al;                                                    ^~~~~~~~=
~~~~~~
<scratch space>:91:1: note: expanded from here
__do_insl
^
arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
#define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
~~~~~~~~~~~~~~~~~~~~~^
In file included from sound/soc/codecs/88ce156-codec.c:20:
In file included from include/linux/spi/spi.h:14:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:604:
arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithm=
etic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_=
NORET'
__do_##name al;                                                    ^~~~~~~~=
~~~~~~
<scratch space>:93:1: note: expanded from here
__do_outsb
^
arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb=
'
#define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
~~~~~~~~~~~~~~~~~~~~~^
In file included from sound/soc/codecs/88ce156-codec.c:20:
In file included from include/linux/spi/spi.h:14:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:604:
arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithm=
etic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_=
NORET'
__do_##name al;                                                    ^~~~~~~~=
~~~~~~
<scratch space>:95:1: note: expanded from here
__do_outsw
^
arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw=
'
#define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
~~~~~~~~~~~~~~~~~~~~~^
In file included from sound/soc/codecs/88ce156-codec.c:20:
In file included from include/linux/spi/spi.h:14:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:604:
arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithm=
etic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_=
NORET'
__do_##name al;                                                    ^~~~~~~~=
~~~~~~
<scratch space>:97:1: note: expanded from here
__do_outsl
^
arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl=
'
#define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
~~~~~~~~~~~~~~~~~~~~~^
sound/soc/codecs/88ce156-codec.c:97:33: error: no member named 'reg_cache_d=
efault' in 'struct snd_soc_component_driver'
u8 *cache =3D (u8*)componentdrv->reg_cache_default;
~~~~~~~~~~~~  ^
sound/soc/codecs/88ce156-codec.c:98:37: error: no member named 'reg_cache_s=
ize' in 'struct snd_soc_component_driver'
if (reg < 0 || reg > componentdrv->reg_cache_size)
~~~~~~~~~~~~  ^
sound/soc/codecs/88ce156-codec.c:111:33: error: no member named 'control_da=
ta' in 'struct snd_soc_component'
if (i2c_master_send(component->control_data, data, 1) =3D=3D 1) {
~~~~~~~~~  ^
sound/soc/codecs/88ce156-codec.c:112:30: error: no member named 'control_da=
ta' in 'struct snd_soc_component'
i2c_master_recv(component->control_data, data, 1);
~~~~~~~~~  ^
sound/soc/codecs/88ce156-codec.c:135:33: error: no member named 'reg_cache_=
default' in 'struct snd_soc_component_driver'
u8 *cache =3D (u8*)componentdrv->reg_cache_default;
~~~~~~~~~~~~  ^
sound/soc/codecs/88ce156-codec.c:136:37: error: no member named 'reg_cache_=
size' in 'struct snd_soc_component_driver'
if (reg < 0 || reg > componentdrv->reg_cache_size) {
~~~~~~~~~~~~  ^
sound/soc/codecs/88ce156-codec.c:272:33: error: no member named 'control_da=
ta' in 'struct snd_soc_component'
if (i2c_master_send(component->control_data, data, 2) =3D=3D 2) {
~~~~~~~~~  ^
sound/soc/codecs/88ce156-codec.c:371:5: warning: no previous prototype for =
function 'ce156_hw_init' [-Wmissing-prototypes]
int ce156_hw_init(struct snd_soc_component *component)
^
sound/soc/codecs/88ce156-codec.c:371:1: note: declare 'static' if the funct=
ion is not intended to be used outside of this translation unit
int ce156_hw_init(struct snd_soc_component *component)
^
static
>> sound/soc/codecs/88ce156-codec.c:405:5: warning: no previous prototype f=
or function 'ce156_set_sample_rate' [-Wmissing-prototypes]
int ce156_set_sample_rate(struct snd_soc_dai *codec_dai,
^
sound/soc/codecs/88ce156-codec.c:405:1: note: declare 'static' if the funct=
ion is not intended to be used outside of this translation unit
int ce156_set_sample_rate(struct snd_soc_dai *codec_dai,
^
static
sound/soc/codecs/88ce156-codec.c:923:2: error: field designator 'invert' do=
es not refer to any field in type 'const struct snd_soc_dapm_widget'
CE156_DAPM_OUTPUT("RSYNC", ce156_rsync_event),
^
sound/soc/codecs/88ce156-codec.c:42:15: note: expanded from macro 'CE156_DA=
PM_OUTPUT'
.shift =3D 0, .invert =3D 0, .kcontrols =3D NULL,                         ^
sound/soc/codecs/88ce156-codec.c:1038:7: error: invalid application of 'siz=
eof' to an incomplete type 'const struct snd_soc_dapm_widget []'
ARRAY_SIZE(ce156_dapm_widgets));
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/kernel.h:47:32: note: expanded from macro 'ARRAY_SIZE'
#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(a=
rr))
^~~~~
sound/soc/codecs/88ce156-codec.c:1395:24: warning: unused variable 'ce156_p=
riv' [-Wunused-variable]
struct ce156_private *ce156_priv =3D snd_soc_component_get_drvdata(componen=
t);
^
sound/soc/codecs/88ce156-codec.c:1445:13: error: incompatible function poin=
ter types initializing 'void (*)(struct snd_soc_component *)' with an expre=
ssion of type 'int (struct snd_soc_component *)' [-Werror,-Wincompatible-fu=
nction-pointer-types]
.remove  =3D ce156_remove,
^~~~~~~~~~~~
sound/soc/codecs/88ce156-codec.c:1446:13: error: incompatible function poin=
ter types initializing 'int (*)(struct snd_soc_component *)' with an expres=
sion of type 'int (struct snd_soc_component *, pm_message_t)' (aka 'int (st=
ruct snd_soc_component *, struct pm_message)') [-Werror,-Wincompatible-func=
tion-pointer-types]
.suspend =3D ce156_suspend,
^~~~~~~~~~~~~
sound/soc/codecs/88ce156-codec.c:1451:3: error: field designator 'reg_cache=
_size' does not refer to any field in type 'struct snd_soc_component_driver=
'
.reg_cache_size =3D ARRAY_SIZE(ce156_reg),
^
sound/soc/codecs/88ce156-codec.c:1452:3: error: field designator 'reg_cache=
_step' does not refer to any field in type 'struct snd_soc_component_driver=
'
.reg_cache_step =3D 1,
^
sound/soc/codecs/88ce156-codec.c:1453:3: error: field designator 'reg_word_=
size' does not refer to any field in type 'struct snd_soc_component_driver'
.reg_word_size =3D sizeof(u8),
^
sound/soc/codecs/88ce156-codec.c:1454:3: error: field designator 'reg_cache=
_default' does not refer to any field in type 'struct snd_soc_component_dri=
ver'
.reg_cache_default =3D ce156_reg,
^
9 warnings and 15 errors generated.

vim +/ce156_set_sample_rate +405 sound/soc/codecs/88ce156-codec.c

f92f68a79bd0bba Lubomir Rintel 2020-05-24  403 =20
f92f68a79bd0bba Lubomir Rintel 2020-05-24  404 =20
f92f68a79bd0bba Lubomir Rintel 2020-05-24 @405  int ce156_set_sample_rate(s=
truct snd_soc_dai *codec_dai,
f92f68a79bd0bba Lubomir Rintel 2020-05-24  406  		int div_id, int div)
f92f68a79bd0bba Lubomir Rintel 2020-05-24  407  {
5af54aabd51377d Lubomir Rintel 2020-05-24  408  	struct snd_soc_component *=
component =3D codec_dai->component;
5af54aabd51377d Lubomir Rintel 2020-05-24  409  	u8 rate =3D ce156_read_reg=
_cache(component, CE156_ADC_RATE) & 0xf0;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  410  	switch(div_id){
f92f68a79bd0bba Lubomir Rintel 2020-05-24  411  	case SAMPLE_RATE_8000:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  412  		rate |=3D 0x0;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  413  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  414  	case SAMPLE_RATE_12000:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  415  		rate |=3D 0x1;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  416  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  417  	case SAMPLE_RATE_16000:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  418  		rate |=3D 0x2;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  419  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  420  	case SAMPLE_RATE_24000:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  421  		rate |=3D 0x3;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  422  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  423  	case SAMPLE_RATE_32000:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  424  		rate |=3D 0x4;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  425  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  426  	case SAMPLE_RATE_48000:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  427  		rate |=3D 0x5;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  428  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  429  	case SAMPLE_RATE_96000:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  430  		rate |=3D 0x6;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  431  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  432  	case SAMPLE_RATE_11025:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  433  		rate |=3D 0x7;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  434  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  435  	case SAMPLE_RATE_22050:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  436  		rate |=3D 0x8;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  437  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  438  	case SAMPLE_RATE_44100:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  439  		rate |=3D 0x9;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  440  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  441  	case SAMPLE_RATE_88200:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  442  		rate |=3D 0xa;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  443  		break;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  444  	default:
f92f68a79bd0bba Lubomir Rintel 2020-05-24  445  		printk(KERN_INFO "sample =
rate set failed!\n");
f92f68a79bd0bba Lubomir Rintel 2020-05-24  446  		return -EINVAL;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  447  	}
5af54aabd51377d Lubomir Rintel 2020-05-24  448  	ce156_write(component, CE1=
56_ADC_RATE, rate);
f92f68a79bd0bba Lubomir Rintel 2020-05-24  449  	return 0;
f92f68a79bd0bba Lubomir Rintel 2020-05-24  450  }
f92f68a79bd0bba Lubomir Rintel 2020-05-24  451  EXPORT_SYMBOL_GPL(ce156_set=
_sample_rate);
f92f68a79bd0bba Lubomir Rintel 2020-05-24  452 =20

:::::: The code at line 405 was first introduced by commit
:::::: f92f68a79bd0bba6baf56c272cc22f9a4a030032 XXX 88CE156

:::::: TO: Lubomir Rintel <lkundrak@v3.sk>
:::::: CC: Lubomir Rintel <lkundrak@v3.sk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202006122359.rwOIGlxx%25lkp%40intel.com.

--ReaqsoxgOBHFXBhH
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ReaqsoxgOBHFXBhH--
