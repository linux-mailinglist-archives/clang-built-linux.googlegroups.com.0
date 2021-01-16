Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNFOROAAMGQEVQDLISI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id B14182F8D3D
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 13:08:21 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id f139sf5293093vke.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 04:08:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610798900; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZHvOQ8H+Pb4GHZI3KAa5OPsqUDQbXEjRrx+WHv2QlTCVB5Ewnwqbz+wSQGcvG6T2xW
         kRM1Cgzj7umouGiDEpyPR7qXV5pozRZVliUU3VhXdJR6Grh4bQziyZJ9AlCvCdcLAOTh
         Ai8NFlM3MSevZOxqo+rO11UqufecGkJPHfZjFOuptb7pw0I0Y8A1kVrbAb0+ILVltE+O
         TTx35bUGcu5GQN9XmocO82JrjNPn2LDeWMoaHdo8pUQ4Hh3bIq0Lg7pRiLQEZE2at+3j
         6u2DF6e3ic/qRL6qRI+ATxGUo/2TwC70QdYKpfx17fVxH1s5V6kXDdZ8CqWDbTnamk1E
         HIsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=vlnll1cvVgh+5rizG6w77tgnxSljiheuNXCLLWqt9mw=;
        b=fvNqnDFAzo3bF3SQgRhaUg05veBOiyaRNnQirZ5R8m1kHQ+fOudUasWOC5zbMfCyvq
         bq5V1RWKtBwXmqR8j1YsM/Le0rUPgoT2My7+WHKz/1/eGbMGZVOIS6uhX/0Fns0WgYBm
         IGgRNlyR0ZSZgQpzPyM8ovxxARR8aNiaeL7BKr+9aGSttmt2900l5f47FIN2XeFEuN5U
         1HLqQAMUOoNwoTeoF3YE5/AX4z1Eetii2pDVAT19Npxd4wlUe8qXcW7XATC77PAJTaka
         F/nKRX1d7BD4cfHySwlRx+C582VIKcbuxK1t7JdgGTrfEm1RiDnHM1I1KeyvqyigSNAk
         1TMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vlnll1cvVgh+5rizG6w77tgnxSljiheuNXCLLWqt9mw=;
        b=cPJMgsGQoZAVy53NOnJRoYIjqSpOhKFnhfqMxV/AxzgFHOdJ+XKThxbKgllNW2bmkr
         TqA7IBeLgg2E64HWQNYy0AyvhAHYu2irLdYBPXQ3BKTseDJdIpdQi/y2vYzYqe+UbKxi
         nOJPZxvrxphPh7yYU5RYrcOLSfvmtvCMk/O6BXdHEVEp4BX+mHoHg/bWsc5Ei02ivuo4
         4UNthEKmcI58FX4ggza6rzCV2FnlT7lKd/ygjHpVLtLBwmT8pDiJcGCgA98uRAVmVGe3
         l60i6D3irv0J35O91yjbLVtgD8F1n2PCGs1V9TD6zqMuNESspSq+iyPO1JiBz0C7XS7J
         Pnrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vlnll1cvVgh+5rizG6w77tgnxSljiheuNXCLLWqt9mw=;
        b=gNnsy+kMQ3ojpxBKCGDbXz/7lQE3HkYODVCYHCABVszCH0SLiY4bpiG3bGElqPrCKx
         EUw+htPw0DNeCQZWwzjCymOonOiZdtul+bc9hr1YwVPNimfgzWsT1oMPO+zPWfCbcnw/
         bSV9etZLv9LFWbSE0opdSCiuZfeGW7/B9I7S2vbEkmNiNm+YVDZ3YOPRSlsQ4oyrzEd4
         kBnwHNmAnnjnSoc3505qzlTJNRu2Db1YoZx6Kt+AhkebK2I9CpR8yimKEBdXxFUfGfU2
         txW/Ofs/j26GgMSWPVaNL1aQo6HHYaWAS8UWnO2baYaFBG46g+427L1C0cTxw0euN+en
         HcEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZdJ+7FY46YDAOu65f+V1GmGimJFOE11i3Zcs5bh/+/KPQ4uIB
	48mavQazQUalWLVwh9HCi2s=
X-Google-Smtp-Source: ABdhPJy3pRZS6kBSyq7+SWSfXgLmywCu2cPAdrHtXqFEmZ8njqmwueFw0Q+H5en8AvNVu/ieOO+VNw==
X-Received: by 2002:a67:f407:: with SMTP id p7mr13752126vsn.11.1610798900488;
        Sat, 16 Jan 2021 04:08:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7843:: with SMTP id y3ls959555uaq.5.gmail; Sat, 16 Jan
 2021 04:08:20 -0800 (PST)
X-Received: by 2002:ab0:660a:: with SMTP id r10mr12622271uam.94.1610798899955;
        Sat, 16 Jan 2021 04:08:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610798899; cv=none;
        d=google.com; s=arc-20160816;
        b=cGq4Qcpd3LhjolyoNEUd2twlknG+jYjXnWtV0XR8jIfVjjBpqo1VV2j0+Lk0qCoI3c
         WRJFxAu4RlTJKMErnzfT8b7mawLuQEPNX3GF0Qc7Kt9XQpo7Jab/SWQN46C+FsqYOE32
         EMsjJeTlygvq635el2EKxsKm7pXsJuY6iKrsntVntI+ipj/PsX73woMqsRoVp7W7sq2j
         QoMo4mGt57OFYtcK0LxB6+yXtcU+t2vw320Vwkk5GnJvtGVMMoyApiF5zTQxoHpoFRto
         LPfTZFzcby7gVXaMXTzHAS3G9JrVcOi/OcLOPxIOcnee1ES6tLb1nLfJyx+eTXg7Mosu
         sQ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=mcIOIA7eEiY8/Ere6wuzWhxeY/UIxo+Cw1NNFkXueSs=;
        b=PAtlkf2K1ecErBxVx+KSri+qDgnYPv9fEQ9VEpKgIUrvWJJ1XoOePZlmCViSIO70VW
         DqLgSN3NpHiWNicGC6wkHY3njv2xXD2DAsM5zL9Je9VdIik5o2xJjbMwEo9nDxAwuC+C
         eGrnIhl5VtQA1HzuzIFxfiUfzeiJkb5A5nNIdlak5yiEIhuxiYHiZy/i6m6KfDzsK0zS
         opEUIYZEvjZp6RFkroBZpLRv+07JR1MZLzcRuy2P4i6uG/NL3ZWFX4LEmYpsNaB7d/EH
         rww2WUuvoxOqiMecof2K/GkhEpuY4QnNw0qr+v7isscgnR7XkemSLrH65BbsDhzSc0VI
         xfeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id g17si903845vso.1.2021.01.16.04.08.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Jan 2021 04:08:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: NitECU2YcG+2Pt0OMI8/L/gSA0/InfCHxmCJXJr9r88riEzudd+nG29WK3ugNkwcfda6wPi6ls
 RPFPMMFJeZbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9865"; a="158434536"
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; 
   d="gz'50?scan'50,208,50";a="158434536"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2021 04:08:17 -0800
IronPort-SDR: Zmk3KBSIdwZaM4RO85qRVus8wIpx3XbqS0PlCH5hjuUkBJmMfTd2hz5kuBMtEllDDUTytogMpR
 3PvE84g+shZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; 
   d="gz'50?scan'50,208,50";a="382981911"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 16 Jan 2021 04:08:15 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l0kNK-0000tJ-VR; Sat, 16 Jan 2021 12:08:14 +0000
Date: Sat, 16 Jan 2021 20:07:15 +0800
From: kernel test robot <lkp@intel.com>
To: Ilya Dryomov <idryomov@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: net/ceph/decode.c:164:38: warning: taking address of packed member
 'in_addr' of class or structure 'ceph_entity_addr' may result in an
 unaligned pointer value
Message-ID: <202101162009.6J022otg-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pWyiEgJYm5f9v55/"
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


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   1d94330a437a573cfdf848f6743b1ed169242c8a
commit: cd1a677cad994021b19665ed476aea63f5d54f31 libceph, ceph: implement m=
sgr2.1 protocol (crc and secure modes)
date:   5 weeks ago
config: mips-randconfig-r011-20210116 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d7bc3b=
7ce23b664d6620cdc32370a8614523ca2f)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3Dcd1a677cad994021b19665ed476aea63f5d54f31
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout cd1a677cad994021b19665ed476aea63f5d54f31
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dmips=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from net/ceph/decode.c:4:
   In file included from include/linux/inet.h:42:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: i=
nput with type 'unsigned long' matching output with type '__wsum' (aka 'uns=
igned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from net/ceph/decode.c:6:
   include/linux/ceph/decode.h:236:33: warning: taking address of packed me=
mber 'in_addr' of class or structure 'ceph_entity_addr' may result in an un=
aligned pointer value [-Waddress-of-packed-member]
           __be16 ss_family =3D *(__be16 *)&a->in_addr.ss_family;
                                          ^~~~~~~~~~~~~~~~~~~~
>> net/ceph/decode.c:164:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:13:52: note: expanded from macro '__ge=
t_unaligned_le'
   #define __get_unaligned_le(ptr) ((__force typeof(*(ptr)))({             =
        \
                                                      ^~~
>> net/ceph/decode.c:164:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:14:33: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 1, *(ptr),          =
            \
                                          ^~~
>> net/ceph/decode.c:164:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:14:47: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 1, *(ptr),          =
            \
                                                        ^~~
>> net/ceph/decode.c:164:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:15:33: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 2, get_unaligned_le1=
6((ptr)),   \
                                          ^~~
>> net/ceph/decode.c:164:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:16:33: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 4, get_unaligned_le3=
2((ptr)),   \
                                          ^~~
>> net/ceph/decode.c:164:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:16:65: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 4, get_unaligned_le3=
2((ptr)),   \
                                                                          ^=
~~
>> net/ceph/decode.c:164:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:17:33: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 8, get_unaligned_le6=
4((ptr)),   \
                                          ^~~
>> net/ceph/decode.c:164:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:17:65: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 8, get_unaligned_le6=
4((ptr)),   \
                                                                          ^=
~~
   net/ceph/decode.c:172:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:13:52: note: expanded from macro '__ge=
t_unaligned_le'
   #define __get_unaligned_le(ptr) ((__force typeof(*(ptr)))({             =
        \
                                                      ^~~
   net/ceph/decode.c:172:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:14:33: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 1, *(ptr),          =
            \
                                          ^~~
   net/ceph/decode.c:172:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:14:47: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 1, *(ptr),          =
            \
                                                        ^~~
   net/ceph/decode.c:172:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:15:33: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 2, get_unaligned_le1=
6((ptr)),   \
                                          ^~~
   net/ceph/decode.c:172:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:16:33: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 4, get_unaligned_le3=
2((ptr)),   \
                                          ^~~
   net/ceph/decode.c:172:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:16:65: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 4, get_unaligned_le3=
2((ptr)),   \
                                                                          ^=
~~
   net/ceph/decode.c:172:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:17:33: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 8, get_unaligned_le6=
4((ptr)),   \
                                          ^~~
   net/ceph/decode.c:172:38: warning: taking address of packed member 'in_a=
ddr' of class or structure 'ceph_entity_addr' may result in an unaligned po=
inter value [-Waddress-of-packed-member]
           sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
                                               ^~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_un=
aligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:17:65: note: expanded from macro '__ge=
t_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) =3D=3D 8, get_unaligned_le6=
4((ptr)),   \
                                                                          ^=
~~
   17 warnings and 1 error generated.
--
   In file included from net/ceph/messenger_v2.c:20:
   In file included from include/net/sock.h:46:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: i=
nput with type 'unsigned long' matching output with type '__wsum' (aka 'uns=
igned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from net/ceph/messenger_v2.c:20:
   In file included from include/net/sock.h:61:
   include/linux/poll.h:142:27: warning: division by zero is undefined [-Wd=
ivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                           ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL#=
#X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   include/linux/poll.h:142:39: warning: division by zero is undefined [-Wd=
ivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                                       ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL#=
#X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   In file included from net/ceph/messenger_v2.c:24:
   include/linux/ceph/decode.h:236:33: warning: taking address of packed me=
mber 'in_addr' of class or structure 'ceph_entity_addr' may result in an un=
aligned pointer value [-Waddress-of-packed-member]
           __be16 ss_family =3D *(__be16 *)&a->in_addr.ss_family;
                                          ^~~~~~~~~~~~~~~~~~~~
>> net/ceph/messenger_v2.c:557:16: warning: taking address of packed member=
 'front_crc' of class or structure 'ceph_connection_v2_info::(anonymous str=
uct)::(anonymous union)::(anonymous)' may result in an unaligned pointer va=
lue [-Waddress-of-packed-member]
           cpu_to_le32s(&con->v2.out_epil.front_crc);
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/byteorder/generic.h:112:22: note: expanded from macro 'cpu=
_to_le32s'
   #define cpu_to_le32s __cpu_to_le32s
                        ^
   include/uapi/linux/byteorder/little_endian.h:94:39: note: expanded from =
macro '__cpu_to_le32s'
   #define __cpu_to_le32s(x) do { (void)(x); } while (0)
                                         ^
>> net/ceph/messenger_v2.c:558:16: warning: taking address of packed member=
 'middle_crc' of class or structure 'ceph_connection_v2_info::(anonymous st=
ruct)::(anonymous union)::(anonymous)' may result in an unaligned pointer v=
alue [-Waddress-of-packed-member]
           cpu_to_le32s(&con->v2.out_epil.middle_crc);
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/byteorder/generic.h:112:22: note: expanded from macro 'cpu=
_to_le32s'
   #define cpu_to_le32s __cpu_to_le32s
                        ^
   include/uapi/linux/byteorder/little_endian.h:94:39: note: expanded from =
macro '__cpu_to_le32s'
   #define __cpu_to_le32s(x) do { (void)(x); } while (0)
                                         ^
>> net/ceph/messenger_v2.c:559:16: warning: taking address of packed member=
 'data_crc' of class or structure 'ceph_connection_v2_info::(anonymous stru=
ct)::(anonymous union)::(anonymous)' may result in an unaligned pointer val=
ue [-Waddress-of-packed-member]
           cpu_to_le32s(&con->v2.out_epil.data_crc);
                         ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/byteorder/generic.h:112:22: note: expanded from macro 'cpu=
_to_le32s'
   #define cpu_to_le32s __cpu_to_le32s
                        ^
   include/uapi/linux/byteorder/little_endian.h:94:39: note: expanded from =
macro '__cpu_to_le32s'
   #define __cpu_to_le32s(x) do { (void)(x); } while (0)
                                         ^
   6 warnings and 1 error generated.


vim +164 net/ceph/decode.c

     5=09
   > 6	#include <linux/ceph/decode.h>
     7=09
     8	static int
     9	ceph_decode_entity_addr_versioned(void **p, void *end,
    10					  struct ceph_entity_addr *addr)
    11	{
    12		int ret;
    13		u8 struct_v;
    14		u32 struct_len, addr_len;
    15		void *struct_end;
    16=09
    17		ret =3D ceph_start_decoding(p, end, 1, "entity_addr_t", &struct_v,
    18					  &struct_len);
    19		if (ret)
    20			goto bad;
    21=09
    22		ret =3D -EINVAL;
    23		struct_end =3D *p + struct_len;
    24=09
    25		ceph_decode_copy_safe(p, end, &addr->type, sizeof(addr->type), bad)=
;
    26=09
    27		ceph_decode_copy_safe(p, end, &addr->nonce, sizeof(addr->nonce), ba=
d);
    28=09
    29		ceph_decode_32_safe(p, end, addr_len, bad);
    30		if (addr_len > sizeof(addr->in_addr))
    31			goto bad;
    32=09
    33		memset(&addr->in_addr, 0, sizeof(addr->in_addr));
    34		if (addr_len) {
    35			ceph_decode_copy_safe(p, end, &addr->in_addr, addr_len, bad);
    36=09
    37			addr->in_addr.ss_family =3D
    38				le16_to_cpu((__force __le16)addr->in_addr.ss_family);
    39		}
    40=09
    41		/* Advance past anything the client doesn't yet understand */
    42		*p =3D struct_end;
    43		ret =3D 0;
    44	bad:
    45		return ret;
    46	}
    47=09
    48	static int
    49	ceph_decode_entity_addr_legacy(void **p, void *end,
    50				       struct ceph_entity_addr *addr)
    51	{
    52		int ret =3D -EINVAL;
    53=09
    54		/* Skip rest of type field */
    55		ceph_decode_skip_n(p, end, 3, bad);
    56=09
    57		/*
    58		 * Clients that don't support ADDR2 always send TYPE_NONE, change i=
t
    59		 * to TYPE_LEGACY for forward compatibility.
    60		 */
    61		addr->type =3D CEPH_ENTITY_ADDR_TYPE_LEGACY;
    62		ceph_decode_copy_safe(p, end, &addr->nonce, sizeof(addr->nonce), ba=
d);
    63		memset(&addr->in_addr, 0, sizeof(addr->in_addr));
    64		ceph_decode_copy_safe(p, end, &addr->in_addr,
    65				      sizeof(addr->in_addr), bad);
    66		addr->in_addr.ss_family =3D
    67				be16_to_cpu((__force __be16)addr->in_addr.ss_family);
    68		ret =3D 0;
    69	bad:
    70		return ret;
    71	}
    72=09
    73	int
    74	ceph_decode_entity_addr(void **p, void *end, struct ceph_entity_addr=
 *addr)
    75	{
    76		u8 marker;
    77=09
    78		ceph_decode_8_safe(p, end, marker, bad);
    79		if (marker =3D=3D 1)
    80			return ceph_decode_entity_addr_versioned(p, end, addr);
    81		else if (marker =3D=3D 0)
    82			return ceph_decode_entity_addr_legacy(p, end, addr);
    83	bad:
    84		return -EINVAL;
    85	}
    86	EXPORT_SYMBOL(ceph_decode_entity_addr);
    87=09
    88	/*
    89	 * Return addr of desired type (MSGR2 or LEGACY) or error.
    90	 * Make sure there is only one match.
    91	 *
    92	 * Assume encoding with MSG_ADDR2.
    93	 */
    94	int ceph_decode_entity_addrvec(void **p, void *end, bool msgr2,
    95				       struct ceph_entity_addr *addr)
    96	{
    97		__le32 my_type =3D msgr2 ? CEPH_ENTITY_ADDR_TYPE_MSGR2 :
    98					 CEPH_ENTITY_ADDR_TYPE_LEGACY;
    99		struct ceph_entity_addr tmp_addr;
   100		int addr_cnt;
   101		bool found;
   102		u8 marker;
   103		int ret;
   104		int i;
   105=09
   106		ceph_decode_8_safe(p, end, marker, e_inval);
   107		if (marker !=3D 2) {
   108			pr_err("bad addrvec marker %d\n", marker);
   109			return -EINVAL;
   110		}
   111=09
   112		ceph_decode_32_safe(p, end, addr_cnt, e_inval);
   113=09
   114		found =3D false;
   115		for (i =3D 0; i < addr_cnt; i++) {
   116			ret =3D ceph_decode_entity_addr(p, end, &tmp_addr);
   117			if (ret)
   118				return ret;
   119=09
   120			if (tmp_addr.type =3D=3D my_type) {
   121				if (found) {
   122					pr_err("another match of type %d in addrvec\n",
   123					       le32_to_cpu(my_type));
   124					return -EINVAL;
   125				}
   126=09
   127				memcpy(addr, &tmp_addr, sizeof(*addr));
   128				found =3D true;
   129			}
   130		}
   131		if (!found && addr_cnt !=3D 0) {
   132			pr_err("no match of type %d in addrvec\n",
   133			       le32_to_cpu(my_type));
   134			return -ENOENT;
   135		}
   136=09
   137		return 0;
   138=09
   139	e_inval:
   140		return -EINVAL;
   141	}
   142	EXPORT_SYMBOL(ceph_decode_entity_addrvec);
   143=09
   144	static int get_sockaddr_encoding_len(sa_family_t family)
   145	{
   146		union {
   147			struct sockaddr sa;
   148			struct sockaddr_in sin;
   149			struct sockaddr_in6 sin6;
   150		} u;
   151=09
   152		switch (family) {
   153		case AF_INET:
   154			return sizeof(u.sin);
   155		case AF_INET6:
   156			return sizeof(u.sin6);
   157		default:
   158			return sizeof(u);
   159		}
   160	}
   161=09
   162	int ceph_entity_addr_encoding_len(const struct ceph_entity_addr *add=
r)
   163	{
 > 164		sa_family_t family =3D get_unaligned(&addr->in_addr.ss_family);
   165		int addr_len =3D get_sockaddr_encoding_len(family);
   166=09
   167		return 1 + CEPH_ENCODING_START_BLK_LEN + 4 + 4 + 4 + addr_len;
   168	}
   169=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202101162009.6J022otg-lkp%40intel.com.

--pWyiEgJYm5f9v55/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
D0isp+E/5QEA

--pWyiEgJYm5f9v55/--
