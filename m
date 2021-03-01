Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMUP6SAQMGQE6LLJD6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2BC32826C
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 16:26:43 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id g17sf19364469ybh.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 07:26:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614612402; cv=pass;
        d=google.com; s=arc-20160816;
        b=OATpXJOkhqBUEznOZW3HFuiJ1vaquks07CjyDBua7muVRTdFFJw6V2qzKipTzgWFn3
         lWDMejPZjdnXjK7tyTLFpKxQ/TGe7wjyNJKYrio9/Eoe0tHBuDXnSAsGI2REZZIIRuH2
         8pkm2+LsRsUhAP28z/2XPXaiW5A98AsRyHU7Gh4smKvIyOf84otwCUMqRSmA9EHiYfzP
         Lv8lb0HcU3fdic96tzZlsvb6BKAzPQaZIbKX8e6cPaUNRsIRScxpki0HhnEvJbd4Y4/w
         t50Jm22tewTlwv19FMfzea7Puy0QPPglqb/TRqNW5FeomUczZG0Lrcvf2cH26qWFB/xp
         RsAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=1NDUzyja89xV12EExmiBgN6+SS6KtSTnO6KxIPW9PBo=;
        b=tnbMDCXv4QC9N7CbgR61TIPxK+pTwD9YPL+uXufzpokpVD16t9rC4yZ65KXnNJLC1y
         DDQ/v+qiFHoA6O/R6rxdp6JzbRssG2cvBVTnOQb6YZN9I6QAocDRJxTIuwKyQ+XAwpOd
         clsoS2ZqUBh9JTeTNpxZilIxo6DMWeyaixLXCNJ4j8x6vvvzg8S8pgwPMX6XRdYgXMoK
         Re8gD5CTSibEWZbbcAa50Ew8yPQB08/sQ2JwcAGVmim1UQAAhiXn21enUvDUHtRGAKel
         /gJ8DwF25DaeGYoJQcoBpvJw4M9C9OtNTOxkHeTN6b74LTxfSXQqgEyRojNKb69tkkCF
         ne6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1NDUzyja89xV12EExmiBgN6+SS6KtSTnO6KxIPW9PBo=;
        b=XwVO6avxyKNPQicwvQIp6GtTyTYEB07Q8ZoWZSVLA2J4zEmxdcyYrG27IBd2C9axvs
         cQzdTl5EznvQDeaq4O9FlIqtCnIotyy8u6OS6lvL3W3tqjRqiYxNT0nqnLGH5F2gdyMV
         tWgYj2vgJA0VRClyfWYAm5ssT4Jn+cok9dsoZW/vEj0KXh5nC18JWqqT5tUUHbeQ4BeS
         F9kY/c9Zgh+OjFsGMTxxACe95tsLDUT8gCRDII14wXVYxwDNjGFS+9C74rXdDMSrgGml
         /qWlSm1911586OPqD3WtDubi/XCBF5UULxc9yZIGf02tk5ygB0V3iWa+rxuzYoTad8P1
         6MeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1NDUzyja89xV12EExmiBgN6+SS6KtSTnO6KxIPW9PBo=;
        b=IRqADnqgJKdn143su5jU9N2THmqd4AYocMc0J2bTiiwly3TddMQvbC88/v0Ib1hhjq
         m0M+Kr+zewqLxAahgGtCzLug2CNgMD37gQb3OnjGWHp5fZUg4uQdlgxPOI0vMozQqw4J
         27zEq62Ptl+o886enuGaSudj0gkpWsqVPrQG26P11AMcQCCTnXeepdWa5+mv/J29M68l
         fXdToIjzEAcCI0Ql0BOVOul0jRm+KlpvXEUyM5uXEkFCgvFO8pfLSHXfC3Fojz4sr0+V
         Nzv7VvQ67e1tSPEEWwdvqrp+KyjAVwaLoE7YHT2Pe2qezcYvNvJdEsp9B5X31TV74jd+
         0ekg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+JVS+cqB/AJ3943AjdLuyQNQLTGHiH5pNLac2UT3V9xNu3bSR
	GUnIlYk7SqwfUKkj94L6plM=
X-Google-Smtp-Source: ABdhPJxmDzfuajmkaAeVVAi+tAVByAGeOiYc1c4g0k19jrPK0b/ckMpNrodN9GdrXCBSK64rszdB8g==
X-Received: by 2002:a5b:f50:: with SMTP id y16mr23117241ybr.35.1614612402313;
        Mon, 01 Mar 2021 07:26:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls7247633ybg.6.gmail; Mon, 01
 Mar 2021 07:26:41 -0800 (PST)
X-Received: by 2002:a25:4054:: with SMTP id n81mr23332901yba.39.1614612401643;
        Mon, 01 Mar 2021 07:26:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614612401; cv=none;
        d=google.com; s=arc-20160816;
        b=muw4afaqNBaVX42Fq3VU0z3yAtQmmcCZrlNtTqDS5jw+vZ/ruBFnX7T+YIz3QgCzT5
         LzoUj7md/Jdtc2hOd2KRuKUJyp+0U0Bo7ciLstbVJsaIRyThAM9PvJBLXBoX24K3OZRw
         nXHKrq3kkHD/qakiXeHl49JCEmc5LQB1y7llMmPc9X+sG+4vdmlkhjbEcA4It/fazyl5
         E/c2hc7WTc8bRlVQyubFr693UaWsZfwXDRqFaJ7bZAK/e91Spzjnwol00I/GDGRbYMbj
         p0/sO/uYROkU3ybwvts+4blru/tQ2repxd0X7Aw0Yb8Z7jLATZaeHyke4YCCtVTdiRaC
         bYkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=8YuIpIC0SpySk9sa3O6Xu1Xww/M2/BISai5Hr+PVEnQ=;
        b=PCBW8GoMKgdddtmosiftvIrWf5Jdi2RivjyqEE4az0xzY7L94nICsaWZk04VDFQxnE
         aE1y2QvFafXV+HBdDTUE4BlTcpp8HDjAQmEtSWsTOejHBgOBe33SZCHsGq7iGTaymASv
         YS0eaYv2dk0ZDbac01CHx1KeJnOzcBMLDS72H//0m0Kncu+Saw3PLILU+UgMvJaWa7lD
         k3piTKvrm+FTZGVxlugx0i8hAOoXWH6jgOJC9sXhb6cQVp2Q/3cEKL41wBKNiSVZEtUy
         WExMuUttDjem5O6bfcTlFhsrsooRV2CYJniGDiZ/gG/epkh4PxFE3g3EuVftj8dC7lVd
         AHRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id t17si466109ybl.2.2021.03.01.07.26.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 07:26:41 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: vOTSXipXkvW5H9z/1RXBZ+JxMFHimY8GWXoZeULVJG1mX8TddaKplTjlz6mrVYn4wR5//Q5Bey
 TfKwEALb7Ccw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="173628989"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="173628989"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2021 07:26:39 -0800
IronPort-SDR: rJeAxHgzg9JNXdN5GTFgRYnJuKbpX6Da837V9gg9wOB5Cn0YwWlOIBeKkkdyrX9wPuSNrHd1th
 R49biCPgmHDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="383091412"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 01 Mar 2021 07:26:37 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGkRQ-0004ch-Pl; Mon, 01 Mar 2021 15:26:36 +0000
Date: Mon, 1 Mar 2021 23:25:56 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?B?TOlv?= Le Bouter <lle-bout@zaclys.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: drivers/net/ethernet/aquantia/atlantic/aq_ring.c:80:21: warning:
 taking address of packed member '' of class or structure 'aq_ring_buff_s'
 may result in an unaligned pointer value
Message-ID: <202103012352.NYswhYCn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi L=C3=A9o,

First bad commit (maybe !=3D root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
commit: 9b22fece786ed641909988da4810bfa8e5d2e592 atlantic: remove architect=
ure depends
date:   9 weeks ago
config: mips-randconfig-r011-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b077d8=
2b00d81934c7c27ac89dd8b0e7f448bded)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3D9b22fece786ed641909988da4810bfa8e5d2e592
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 9b22fece786ed641909988da4810bfa8e5d2e592
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dmips=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.c:1=
0:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.h:1=
3:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:10:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:8:
   In file included from include/linux/spinlock.h:59:
   In file included from include/linux/lockdep.h:27:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<'=
 to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.c:1=
0:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.h:1=
3:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:202:3: warning: converting the result of=
 '<<' to a boolean always evaluates to true [-Wtautological-constant-compar=
e]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxch=
g64'
           cmpxchg((ptr), (o), (n));                                       =
\
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.c:1=
0:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.h:1=
3:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:202:3: warning: converting the result of=
 '<<' to a boolean always evaluates to true [-Wtautological-constant-compar=
e]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxch=
g64'
           cmpxchg((ptr), (o), (n));                                       =
\
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.c:1=
0:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.h:1=
3:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: i=
nput with type 'unsigned long' matching output with type '__wsum' (aka 'uns=
igned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.c:1=
0:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.h:1=
3:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:560:11: warning: converting the result of '<<'=
 to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) !=3D val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.c:1=
0:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.h:1=
3:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:560:11: warning: converting the result of '<<'=
 to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> drivers/net/ethernet/aquantia/atlantic/aq_ring.c:80:21: warning: taking =
address of packed member '' of class or structure 'aq_ring_buff_s' may resu=
lt in an unaligned pointer value [-Waddress-of-packed-member]
                                   aq_free_rxpage(&rxbuf->rxdata,
                                                   ^~~~~~~~~~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:95:24: warning: taking =
address of packed member '' of class or structure 'aq_ring_buff_s' may resu=
lt in an unaligned pointer value [-Waddress-of-packed-member]
                   ret =3D aq_get_rxpage(&rxbuf->rxdata, order,
                                        ^~~~~~~~~~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:427:23: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                                                     aq_buf_vaddr(&buff->rx=
data),
                                                                   ^~~~~~~~=
~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:433:23: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                                                     aq_buf_vaddr(&buff->rx=
data),
                                                                   ^~~~~~~~=
~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:436:49: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                   memcpy(__skb_put(skb, hdr_len), aq_buf_vaddr(&buff->rxda=
ta),
                                                                 ^~~~~~~~~~=
~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:543:28: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                   buff->pa =3D aq_buf_daddr(&buff->rxdata);
                                            ^~~~~~~~~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:560:19: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                   aq_free_rxpage(&buff->rxdata, aq_nic_get_dev(self->aq_ni=
c));
                                   ^~~~~~~~~~~~
   21 warnings and 1 error generated.
--
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_a=
tl_b0.c:10:
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/../a=
q_hw.h:15:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:10:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:8:
   In file included from include/linux/spinlock.h:59:
   In file included from include/linux/lockdep.h:27:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<'=
 to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_a=
tl_b0.c:10:
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/../a=
q_hw.h:15:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:202:3: warning: converting the result of=
 '<<' to a boolean always evaluates to true [-Wtautological-constant-compar=
e]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxch=
g64'
           cmpxchg((ptr), (o), (n));                                       =
\
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_a=
tl_b0.c:10:
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/../a=
q_hw.h:15:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:14:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:202:3: warning: converting the result of=
 '<<' to a boolean always evaluates to true [-Wtautological-constant-compar=
e]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxch=
g64'
           cmpxchg((ptr), (o), (n));                                       =
\
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_a=
tl_b0.c:10:
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/../a=
q_hw.h:15:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: i=
nput with type 'unsigned long' matching output with type '__wsum' (aka 'uns=
igned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_a=
tl_b0.c:10:
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/../a=
q_hw.h:15:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:560:11: warning: converting the result of '<<'=
 to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) !=3D val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_a=
tl_b0.c:10:
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/../a=
q_hw.h:15:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:560:11: warning: converting the result of '<<'=
 to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c:1323:7: warnin=
g: taking address of packed member 'ns_mac' of class or structure 'hw_fw_re=
quest_ptp_adj_freq' may result in an unaligned pointer value [-Waddress-of-=
packed-member]
                                    &fwreq.ptp_adj_freq.ns_mac,
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c:1324:7: warnin=
g: taking address of packed member 'fns_mac' of class or structure 'hw_fw_r=
equest_ptp_adj_freq' may result in an unaligned pointer value [-Waddress-of=
-packed-member]
                                    &fwreq.ptp_adj_freq.fns_mac);
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c:1326:7: warnin=
g: taking address of packed member 'ns_phy' of class or structure 'hw_fw_re=
quest_ptp_adj_freq' may result in an unaligned pointer value [-Waddress-of-=
packed-member]
                                    &fwreq.ptp_adj_freq.ns_phy,
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c:1327:7: warnin=
g: taking address of packed member 'fns_phy' of class or structure 'hw_fw_r=
equest_ptp_adj_freq' may result in an unaligned pointer value [-Waddress-of=
-packed-member]
                                    &fwreq.ptp_adj_freq.fns_phy);
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~
   18 warnings and 1 error generated.


vim +80 drivers/net/ethernet/aquantia/atlantic/aq_ring.c

46f4c29d9de6e4 Igor Russkikh    2019-03-23   60 =20
46f4c29d9de6e4 Igor Russkikh    2019-03-23   61  static int aq_get_rxpages(=
struct aq_ring_s *self, struct aq_ring_buff_s *rxbuf,
46f4c29d9de6e4 Igor Russkikh    2019-03-23   62  			  int order)
46f4c29d9de6e4 Igor Russkikh    2019-03-23   63  {
46f4c29d9de6e4 Igor Russkikh    2019-03-23   64  	int ret;
46f4c29d9de6e4 Igor Russkikh    2019-03-23   65 =20
46f4c29d9de6e4 Igor Russkikh    2019-03-23   66  	if (rxbuf->rxdata.page) {
46f4c29d9de6e4 Igor Russkikh    2019-03-23   67  		/* One means ring is the=
 only user and can reuse */
46f4c29d9de6e4 Igor Russkikh    2019-03-23   68  		if (page_ref_count(rxbuf=
->rxdata.page) > 1) {
46f4c29d9de6e4 Igor Russkikh    2019-03-23   69  			/* Try reuse buffer */
46f4c29d9de6e4 Igor Russkikh    2019-03-23   70  			rxbuf->rxdata.pg_off +=
=3D AQ_CFG_RX_FRAME_MAX;
46f4c29d9de6e4 Igor Russkikh    2019-03-23   71  			if (rxbuf->rxdata.pg_of=
f + AQ_CFG_RX_FRAME_MAX <=3D
46f4c29d9de6e4 Igor Russkikh    2019-03-23   72  				(PAGE_SIZE << order)) =
{
d7d8bb9286134b Mark Starovoytov 2020-07-20   73  				u64_stats_update_begin=
(&self->stats.rx.syncp);
46f4c29d9de6e4 Igor Russkikh    2019-03-23   74  				self->stats.rx.pg_flip=
s++;
d7d8bb9286134b Mark Starovoytov 2020-07-20   75  				u64_stats_update_end(&=
self->stats.rx.syncp);
46f4c29d9de6e4 Igor Russkikh    2019-03-23   76  			} else {
46f4c29d9de6e4 Igor Russkikh    2019-03-23   77  				/* Buffer exhausted. W=
e have other users and
46f4c29d9de6e4 Igor Russkikh    2019-03-23   78  				 * should release this=
 page and realloc
46f4c29d9de6e4 Igor Russkikh    2019-03-23   79  				 */
46f4c29d9de6e4 Igor Russkikh    2019-03-23  @80  				aq_free_rxpage(&rxbuf-=
>rxdata,
46f4c29d9de6e4 Igor Russkikh    2019-03-23   81  					       aq_nic_get_dev=
(self->aq_nic));
d7d8bb9286134b Mark Starovoytov 2020-07-20   82  				u64_stats_update_begin=
(&self->stats.rx.syncp);
46f4c29d9de6e4 Igor Russkikh    2019-03-23   83  				self->stats.rx.pg_lost=
s++;
d7d8bb9286134b Mark Starovoytov 2020-07-20   84  				u64_stats_update_end(&=
self->stats.rx.syncp);
46f4c29d9de6e4 Igor Russkikh    2019-03-23   85  			}
46f4c29d9de6e4 Igor Russkikh    2019-03-23   86  		} else {
46f4c29d9de6e4 Igor Russkikh    2019-03-23   87  			rxbuf->rxdata.pg_off =
=3D 0;
d7d8bb9286134b Mark Starovoytov 2020-07-20   88  			u64_stats_update_begin(=
&self->stats.rx.syncp);
46f4c29d9de6e4 Igor Russkikh    2019-03-23   89  			self->stats.rx.pg_reuse=
s++;
d7d8bb9286134b Mark Starovoytov 2020-07-20   90  			u64_stats_update_end(&s=
elf->stats.rx.syncp);
46f4c29d9de6e4 Igor Russkikh    2019-03-23   91  		}
46f4c29d9de6e4 Igor Russkikh    2019-03-23   92  	}
46f4c29d9de6e4 Igor Russkikh    2019-03-23   93 =20
46f4c29d9de6e4 Igor Russkikh    2019-03-23   94  	if (!rxbuf->rxdata.page) =
{
46f4c29d9de6e4 Igor Russkikh    2019-03-23   95  		ret =3D aq_get_rxpage(&r=
xbuf->rxdata, order,
46f4c29d9de6e4 Igor Russkikh    2019-03-23   96  				    aq_nic_get_dev(sel=
f->aq_nic));
aa7e17a3e35a6e Dmitry Bogdanov  2020-07-20   97  		if (ret) {
aa7e17a3e35a6e Dmitry Bogdanov  2020-07-20   98  			u64_stats_update_begin(=
&self->stats.rx.syncp);
aa7e17a3e35a6e Dmitry Bogdanov  2020-07-20   99  			self->stats.rx.alloc_fa=
ils++;
aa7e17a3e35a6e Dmitry Bogdanov  2020-07-20  100  			u64_stats_update_end(&s=
elf->stats.rx.syncp);
aa7e17a3e35a6e Dmitry Bogdanov  2020-07-20  101  		}
46f4c29d9de6e4 Igor Russkikh    2019-03-23  102  		return ret;
46f4c29d9de6e4 Igor Russkikh    2019-03-23  103  	}
46f4c29d9de6e4 Igor Russkikh    2019-03-23  104 =20
46f4c29d9de6e4 Igor Russkikh    2019-03-23  105  	return 0;
46f4c29d9de6e4 Igor Russkikh    2019-03-23  106  }
46f4c29d9de6e4 Igor Russkikh    2019-03-23  107 =20

:::::: The code at line 80 was first introduced by commit
:::::: 46f4c29d9de6e4a9d4ed7de9a37dd42501d89f86 net: aquantia: optimize rx =
performance by page reuse strategy

:::::: TO: Igor Russkikh <Igor.Russkikh@aquantia.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202103012352.NYswhYCn-lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--IS0zKkzwUGydFO0o--
