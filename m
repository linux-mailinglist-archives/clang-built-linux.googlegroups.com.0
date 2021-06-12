Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7HPSGDAMGQEV4FODHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A3D3A4DD2
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 11:01:50 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id e19-20020aa78c530000b02902e9ca53899dsf4687016pfd.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 02:01:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623488508; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIVAHp9pVJHODay1mewLi2XJbby4Jd9RROm/MoQ/XNPLdqdjFkrN5fz+TLZ7jNjBHN
         akK3HMcYIoii/j4mKVOi8kAAZWyO3RYYc9OjC16Q5gohiyDNAVcCbzIZ7szMzkNpHoT1
         bwbiLqR9CXMN/amcEskvcDzhAIMP9UZKNMa2v3vy4FmW7xyB9443/QLMIu2Ibc+Df/RA
         vvm0r4zj8vpFw/vpQr5MSmzMaGzgvpZJIBdNYxDlIinmdIYlNYolmlf1IPfpiaJjhh2M
         o0+9xl6iRNqRYTxpEcLhfzei6RzKvqhJkIyyjnm/mzcMSmWE2Gn5kDNZMvrVrkpu2xNe
         u8bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ps98oSzkIu604NuakSxT8kYAhkgcRbM/xS2TI1T3KYE=;
        b=emXnt6WqlNcSerjS5NFF8Xvuu9pQ3QVzDD0njOpkEihvOUefns4qGn9gNYEfw5iqjI
         /yf6bS39+hTlUy4y73YwuW+h0LqeK50Jr3i81W21J7fzKgphAgHFLqW7i8wYzHYprdq8
         HuzYG12SOeRc6TJFFpkWIYH8kgDIr5Dhy0AYE43rNuaWfcJB5jj5PfAjPt6EQUIJAQpQ
         b0x8frH4eNuW8JU3KjyzI1Z8Yk5p1JPZn5rnl4+nDZPxJaM0PJTCA5SLCsm66v942v8D
         gvKqnlfAVxzzssVyEUPAxafoduyAmgJes1LvDHt/zRNWtPC8IfSACi5MnLlbLFZiBK34
         Qw2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ps98oSzkIu604NuakSxT8kYAhkgcRbM/xS2TI1T3KYE=;
        b=L9c9um2RNrXGGD4GMbhq2NW0CKJ0ZI6QkOSSq0PYhj5dI6BHjUQwEpNmTlzmL+6NER
         iLwKMXMhhSGlXyUXPSuaKQOBtS95FhkMYkDp1+s/8e1k4VsFwjbkNWxmCh9hUesvyGo/
         Sje//+1FkKM+vomEiH8oxy9L+xelQHQ5Cg1wRaWDjv9TTzXx3AnkY8FP1UosyCLcmxd8
         fTS0CrZoS0qrt4sHZkG3LmTaEZbYOwMna0qJ1OvZ0b54UcwS5rUBOybcb8JVgQoPr5yI
         GqrgvxPvBTERo8YHtG7Tw0JsUbmz6qgOzHpGI80a2SkkGliKJRDzfs+OfZUaXX+FAfhH
         mXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ps98oSzkIu604NuakSxT8kYAhkgcRbM/xS2TI1T3KYE=;
        b=EFVYXOcaOUI/A3wCdX8dpZLdei2vPCw0WZbwkDyhkV32MwGmV/lhGsHTyjvYL2/IBO
         gKjW8xfCiBFjmyjiiOsdUK3tdBAUBef3w3g/94XxZ8v0rD6WxoDKaZnbGf3UF/fgQRUW
         HjwMRE3HBYjZkLdR6d4X3+aPWC319BMd5t8qJ1y2518Zsai0lKi6KJwas80DEbg5HqmD
         GLTZAxLedA5Ht9LD+Qbi8C6GDAjTPa+M08JdqMocgJSSodyYUVqm80qJp3DVnK9gwJBi
         wzsrTp5FwjpOwPGSI369uK0x30x2hM1jhZxXVi4pIb0p9x2nY3VivF3x3E6sMsY0OkbJ
         z9yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532S7W1teJS7f+TTcoHu2eQoLKx0oKCnMhFpO8EBphdqLfCXjxKX
	y1dKNJU6/Q7SvFczicjahPg=
X-Google-Smtp-Source: ABdhPJx/SeOKI5cKk/Uq+cy0aklfQCV6hbQo3l3JEtlAjHh8Psd67pBaJz7H1GxFcXlEgQ1a/i/Sww==
X-Received: by 2002:a65:5c4a:: with SMTP id v10mr7580521pgr.142.1623488508465;
        Sat, 12 Jun 2021 02:01:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1a88:: with SMTP id ng8ls10234825pjb.3.canary-gmail;
 Sat, 12 Jun 2021 02:01:48 -0700 (PDT)
X-Received: by 2002:a17:90a:ad98:: with SMTP id s24mr13573074pjq.211.1623488507772;
        Sat, 12 Jun 2021 02:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623488507; cv=none;
        d=google.com; s=arc-20160816;
        b=O3wxj8zqkzhA7cggyyr9DxaYbpt1zhf0ga/kyWsTnJVS2oM6C61jt3M553JizI2B3L
         hI3FEQFYzfh5VqzCpsOSdgIHFaklM/PiJ2GqWpNrjSUPWhZu5D42io5vZgLc6QIxn3Jf
         NMbdM00lBTr/UdHvV7SsgN6Vbya1ceqhDhwjOAZqLcxg8Jz7vlgq2pmAGgL/5NOI+/4P
         bP/By4Z8tDu7M12H6yp9fR5DbjZ8N85oed6QD4Pqbpc3+iDpn9u2IGsk/BjsJcSKtq0b
         HFz0F/iZH90GXNmBGQG07HPRK6vNc+mrguLL2zZMvUeuSDmQfCQ715dC0+k4lnznP1pb
         0yHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=TL0p9StXxIoPO0H8HjAUkWAPKHSkfHoXbGth7vKkc6A=;
        b=z9vAmjYvI+DKZS/5AuidHWYLzEEAmJ8e/s6kvz+o34wbuH2iGbuRbUTfXuUbXkt/sn
         k+1Cizg3SUwvrxnC9U4lU0F4KUB0PWI2iRWdVkRIG9mkIXGq1jayWXooF75pdqkQWKQ4
         i8zPy5SZghW8SovIchIqrtYxf7/pjobSaSNhIXS0wn9SfvTuJVhH8CqNik3+3gdLJwmu
         35jDXXeGYOMum1d4MCEKugYCirOeipnQp39H6sFUOhFd03V/ukc0BmwdtfM55CK/Vqyr
         HEGGphiQuJXmAErakibMgg7IUcs6sn4ez2FAZc0cuS2EaO9Zo/FXVvDey0ZA9RcyPbMj
         jd3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id t15si606050plr.0.2021.06.12.02.01.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Jun 2021 02:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: NxYmW7uockZoZe1osxsi9fwqQGI1hZ0c2rwEmKlk6cw6iV70r9H3PcO2h2VG7egfPpx9/atB3U
 rePC9g7uFAUQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="186028349"
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; 
   d="gz'50?scan'50,208,50";a="186028349"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2021 02:01:46 -0700
IronPort-SDR: gCI6p/MIl1468d1KBRB7LNVfPvbCJWMR4tGJe7w7c1pwsMzy+NUozaiI5dmlR6ZWAkF07hVRh6
 yEsI7POfQmLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; 
   d="gz'50?scan'50,208,50";a="449355383"
Received: from lkp-server02.sh.intel.com (HELO 3cb98b298c7e) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 12 Jun 2021 02:01:44 -0700
Received: from kbuild by 3cb98b298c7e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lrzWS-0000tY-Th; Sat, 12 Jun 2021 09:01:44 +0000
Date: Sat, 12 Jun 2021 17:01:03 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Elder <elder@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	mptcp@lists.linux.dev
Subject: [mptcp:export 1167/1239]
 drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:438:10: error: implicit
 declaration of function 'rmnet_map_ipv6_dl_csum_trailer'
Message-ID: <202106121755.M0qrNujQ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/04w6evG8XlLl3ft"
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


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/multipath-tcp/mptcp_net-next.git export
head:   5b5cad2a38b3527807ad9a9de3dbaeccfa7b7806
commit: 75db5b07f8c393c216fd20f7adc9a167fc684c23 [1167/1239] net: qualcomm: rmnet: eliminate some ifdefs
config: powerpc-randconfig-r035-20210612 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d2012d965d60c3258b3a69d024491698f8aec386)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/multipath-tcp/mptcp_net-next/commit/75db5b07f8c393c216fd20f7adc9a167fc684c23
        git remote add mptcp https://github.com/multipath-tcp/mptcp_net-next.git
        git fetch --no-tags mptcp export
        git checkout 75db5b07f8c393c216fd20f7adc9a167fc684c23
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:85:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:87:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:89:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:91:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:7:
   In file included from include/linux/netdevice.h:37:
   In file included from include/net/net_namespace.h:38:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:93:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:438:10: error: implicit declaration of function 'rmnet_map_ipv6_dl_csum_trailer' [-Werror,-Wimplicit-function-declaration]
                   return rmnet_map_ipv6_dl_csum_trailer(skb, csum_trailer, priv);
                          ^
   drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:438:10: note: did you mean 'rmnet_map_ipv4_dl_csum_trailer'?
   drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:42:1: note: 'rmnet_map_ipv4_dl_csum_trailer' declared here
   rmnet_map_ipv4_dl_csum_trailer(struct sk_buff *skb,
   ^
>> drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:472:3: error: implicit declaration of function 'rmnet_map_ipv6_ul_csum_header' [-Werror,-Wimplicit-function-declaration]
                   rmnet_map_ipv6_ul_csum_header(iphdr, ul_header, skb);
                   ^
   drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:472:3: note: did you mean 'rmnet_map_ipv4_ul_csum_header'?
   drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c:198:1: note: 'rmnet_map_ipv4_ul_csum_header' declared here
   rmnet_map_ipv4_ul_csum_header(void *iphdr,
   ^
   7 warnings and 2 errors generated.


vim +/rmnet_map_ipv6_dl_csum_trailer +438 drivers/net/ethernet/qualcomm/rmnet/rmnet_map_data.c

bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  410  
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  411  /* Validates packet checksums. Function takes a pointer to
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  412   * the beginning of a buffer which contains the IP payload +
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  413   * padding + checksum trailer.
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  414   * Only IPv4 and IPv6 are supported along with TCP & UDP.
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  415   * Fragmented or tunneled packets are not supported.
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  416   */
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  417  int rmnet_map_checksum_downlink_packet(struct sk_buff *skb, u16 len)
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  418  {
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  419  	struct rmnet_priv *priv = netdev_priv(skb->dev);
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  420  	struct rmnet_map_dl_csum_trailer *csum_trailer;
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  421  
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  422  	if (unlikely(!(skb->dev->features & NETIF_F_RXCSUM))) {
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  423  		priv->stats.csum_sw++;
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  424  		return -EOPNOTSUPP;
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  425  	}
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  426  
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  427  	csum_trailer = (struct rmnet_map_dl_csum_trailer *)(skb->data + len);
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  428  
cc1b21ba6251c8 Alex Elder                     2021-03-15  429  	if (!(csum_trailer->flags & MAP_CSUM_DL_VALID_FLAG)) {
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  430  		priv->stats.csum_valid_unset++;
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  431  		return -EINVAL;
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  432  	}
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  433  
75db5b07f8c393 Alex Elder                     2021-06-11  434  	if (skb->protocol == htons(ETH_P_IP))
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  435  		return rmnet_map_ipv4_dl_csum_trailer(skb, csum_trailer, priv);
75db5b07f8c393 Alex Elder                     2021-06-11  436  
75db5b07f8c393 Alex Elder                     2021-06-11  437  	if (IS_ENABLED(CONFIG_IPV6) && skb->protocol == htons(ETH_P_IPV6))
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15 @438  		return rmnet_map_ipv6_dl_csum_trailer(skb, csum_trailer, priv);
75db5b07f8c393 Alex Elder                     2021-06-11  439  
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  440  	priv->stats.csum_err_invalid_ip_version++;
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  441  
75db5b07f8c393 Alex Elder                     2021-06-11  442  	return -EPROTONOSUPPORT;
bbd21b247cb596 Subash Abhinov Kasiviswanathan 2018-01-07  443  }
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  444  
b6e5d27e32ef60 Sharath Chandra Vurukala       2021-06-02  445  static void rmnet_map_v4_checksum_uplink_packet(struct sk_buff *skb,
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  446  						struct net_device *orig_dev)
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  447  {
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  448  	struct rmnet_priv *priv = netdev_priv(orig_dev);
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  449  	struct rmnet_map_ul_csum_header *ul_header;
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  450  	void *iphdr;
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  451  
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  452  	ul_header = (struct rmnet_map_ul_csum_header *)
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  453  		    skb_push(skb, sizeof(struct rmnet_map_ul_csum_header));
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  454  
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  455  	if (unlikely(!(orig_dev->features &
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  456  		     (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM))))
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  457  		goto sw_csum;
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  458  
75db5b07f8c393 Alex Elder                     2021-06-11  459  	if (skb->ip_summed != CHECKSUM_PARTIAL)
75db5b07f8c393 Alex Elder                     2021-06-11  460  		goto sw_csum;
75db5b07f8c393 Alex Elder                     2021-06-11  461  
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  462  	iphdr = (char *)ul_header +
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  463  		sizeof(struct rmnet_map_ul_csum_header);
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  464  
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  465  	if (skb->protocol == htons(ETH_P_IP)) {
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  466  		rmnet_map_ipv4_ul_csum_header(iphdr, ul_header, skb);
b6e5d27e32ef60 Sharath Chandra Vurukala       2021-06-02  467  		priv->stats.csum_hw++;
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  468  		return;
75db5b07f8c393 Alex Elder                     2021-06-11  469  	}
75db5b07f8c393 Alex Elder                     2021-06-11  470  
75db5b07f8c393 Alex Elder                     2021-06-11  471  	if (IS_ENABLED(CONFIG_IPV6) && skb->protocol == htons(ETH_P_IPV6)) {
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07 @472  		rmnet_map_ipv6_ul_csum_header(iphdr, ul_header, skb);
b6e5d27e32ef60 Sharath Chandra Vurukala       2021-06-02  473  		priv->stats.csum_hw++;
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  474  		return;
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  475  	}
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  476  
75db5b07f8c393 Alex Elder                     2021-06-11  477  	priv->stats.csum_err_invalid_ip_version++;
75db5b07f8c393 Alex Elder                     2021-06-11  478  
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  479  sw_csum:
86ca860e12ec0f Alex Elder                     2021-03-15  480  	memset(ul_header, 0, sizeof(*ul_header));
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  481  
bbde32d38bfbbc Subash Abhinov Kasiviswanathan 2018-05-15  482  	priv->stats.csum_sw++;
5eb5f8608ef118 Subash Abhinov Kasiviswanathan 2018-01-07  483  }
e1d9a90a9bfdb0 Sharath Chandra Vurukala       2021-06-02  484  

:::::: The code at line 438 was first introduced by commit
:::::: bbde32d38bfbbc4a6970498c7470a8a817122735 net: qualcomm: rmnet: Add support for ethtool private stats

:::::: TO: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106121755.M0qrNujQ-lkp%40intel.com.

--/04w6evG8XlLl3ft
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--/04w6evG8XlLl3ft--
