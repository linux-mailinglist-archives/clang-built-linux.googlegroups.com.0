Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4H6V35QKGQENE34QHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9F2276333
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 23:34:42 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id ic18sf590596pjb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 14:34:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600896881; cv=pass;
        d=google.com; s=arc-20160816;
        b=OEa0cTd4dNxKzH0DX6/Qx/s4QderjfS95mchN8HJ5P3H6DzQn5ZlooNpmfodbysFrC
         kjS7OeqTxibKpMCXNmceSNG1rTt9H2l7gj+zVOPVX8VLjlpMYdfuybU2/4201dY6uDAw
         /7QgHjnIHkNwsuynoFfs1AENTW80dgmADiI+hQ8zIKOdiZZz1iX3K6wzNuZgZx9YE23o
         JWwMEeZrxdwMfVT5pqrgYoYTpqmOgtw6MfOKLfXw/htHpRAvuqRYQzgivp5QaaPpqihA
         9t0N9dlY4rw4iRBMtf9p4YCuGuCrcodoPjajOBu7gXOVm+BCJ/77aNg2AXqwt9doafsf
         lEcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=/lfp2SJLgvL3XTNZwHW4NRXHJ5OyvYtHAvt7jE3BHro=;
        b=FDFraVy8D0Hf+7F8C3pg20R8kUCd2rRq08y1hHI8Hp9DKCZor9oOVBon43r3f1xgPp
         jYVuwyLpoEGUC1s/YG9d+raJBLnc8dapZY2SN32356PlfrZG5y87en2ZYCYoh8Rmjl+T
         lTpCPBIq9tf9FXZfGoRBIml08ouXploStk+bjI+cBURB8frXhI8KO1lHSU5fbZ/ifVhh
         1+xTPXttB7BXvF3H1n8Lb+FEDtB3IQ4wkipVAa7A4DE2FuHeBoAL3L2ktRoVW4pFC+aJ
         Y2bjKhLrluRFqfHpqqLxWqND7j9XmztsMQJzbULNnhdPLrhulwU31rmNrp1SSBgU/u4x
         Tzag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/lfp2SJLgvL3XTNZwHW4NRXHJ5OyvYtHAvt7jE3BHro=;
        b=URG2sJ/QkXQL3gYLnW4fFKQUgka2jGUK3HZuGMTHBgr4AK4irkvbgGPNqOzPcxGqkx
         X8F2w22LrlolrFiyCL6A40DtLSsK+/h0jLJz5ueqjX62gaQVHgIVeud2vBlyU/NT8jtO
         Roqm1Y62zaAJL2hPBYiScc4gLV2geSqJ5vv4BHO0sIdA6mr8tyRaMgLu1rbbSAZHUQFq
         rEdnQqKRIUAZ+usTN+/suvWNz6itkOAfHh308ZbyG6ho4cg3vdGLES2T1C2hVvSIX/ry
         BvOnNNnaK7MCsKx+RzqOmGYUgsM8z4xqy3GJOz2nRk6lUqVh7T1pb1FoymY5eDQt/4mc
         gntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/lfp2SJLgvL3XTNZwHW4NRXHJ5OyvYtHAvt7jE3BHro=;
        b=PFUXTfcZxD9+vLZOrYBmVgiMaKQ/FfEpjaQtsqboNn6VxrV2ZCus1dtPPwcWzxC2Ub
         7/prrhQ+e4pkTuM0e05KQ4QS1A0MeZ+yzMyfanqR5CxvCTGHnN8Ei9G3TSfP8koKTmhJ
         5dYcicoZ7S+zfvbTv/PtsebJnQkwzGt4Q6pj2dTwqJB0gd7cphzoigIyLznSi8UY/U9F
         7k8atjntFXRtJcFGAdqrVVMp63IAjjU93tAMFZkwNYm3iuAixsWsUJ+0pKcQdlozjOAc
         67bw9oQHPRUwhNglkjbfdNtQXTJ/MvwU2G8n1jHstqyqiot/8scEDGk0b4QWxgd1snF4
         tdqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533B5pDD+0hUv1ZnGEXYWUcXDgMaj1Y/kg6OIc/8nYSyhVif2mh8
	aOIvAGCmQtI8vl8+N3MuvNY=
X-Google-Smtp-Source: ABdhPJyIqVBpzFQfelq244EchA9qgE/2Fm6iGla2k04iRs/Kk2iIrWJ17cQx39w5X3T3EfcFosizYw==
X-Received: by 2002:a63:f104:: with SMTP id f4mr1408802pgi.365.1600896880541;
        Wed, 23 Sep 2020 14:34:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls428995pjs.2.canary-gmail;
 Wed, 23 Sep 2020 14:34:40 -0700 (PDT)
X-Received: by 2002:a17:902:208:b029:d2:562d:fcc with SMTP id 8-20020a1709020208b02900d2562d0fccmr1678420plc.15.1600896879916;
        Wed, 23 Sep 2020 14:34:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600896879; cv=none;
        d=google.com; s=arc-20160816;
        b=V/togCErqVxaFHFsLnhPZv0/rBGfQl7VHK1/WkE1UtUvewjDppOjSadYVhhrKa+RXr
         AZ4mkLTjrSiZG6TH7kBYH+A3JOQP+W2Pf53Vi9j/sEqMfO74lyB7ISO7bhsFS0X48bP3
         T3u+2HttxRKSXAGwMXs/Cy+O4/Xj2guQZWb7sU+TfqUYpyR//dK4QJx26Ng6g3NV0VSL
         QuQVHi7pO7B7IsBNBBhjQj9PEB+MVyt4ALASUTaGlVIv9OA1VF9jjSv8e1mIBlOxj504
         tesKU8J70R47ZPQpxAY/rc0inHmJjpt29JH4jW4xCLr7Vycs//eTJQ5CYFJ46neHKfO4
         NoCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=x0qMKsYbt0pV+r3CR0S+RCVF77qyaV3eaOCn+iPJEdc=;
        b=o7Z6ogm28sIxXoBnBnHQN+Zqn7x4ty+BBrahra2INnf+gzjjkKwgP6AGx76ThZWHGh
         kas0q6/4MjW5CT2D37GDxKHUnySiwBQV0oP5uyCyf0xwJsNWK6C76nGv3fdkUsSDXp2D
         QMAF4PcOsfQgNkVbkJSdHznZ4PPWfikLmF9OrDJ94SxhAoq7JNIlluUXhmBB1baElJkw
         IC0JrvAKWZbOtv5aZc4AJJGeHKpwo6766seE+ti63ZO71DjXz7NHCKYXHmtHNJkjyzxQ
         Oph63Ziwpld/pg3ziTTErlHyqWV2/P6Cr/UIU95kloBOB4oytFolohpfw6J3nCkonInc
         GDCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id mm16si92154pjb.2.2020.09.23.14.34.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Sep 2020 14:34:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: hM5PJRuZoDG9dCYGGM5Pk7PIvDGhKoDWTPuuxdbvFlCUXolcno2n3gv9C9aUWQJC0qp1luCYDq
 wl8Zt+EAt5ZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="179102482"
X-IronPort-AV: E=Sophos;i="5.77,295,1596524400"; 
   d="gz'50?scan'50,208,50";a="179102482"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Sep 2020 14:34:38 -0700
IronPort-SDR: jb9hM2/0eaI/9TTPbsI8+G5im48JBTbqJphHEQc6zF45orzn9fY8QrVSZudXebQ11E51KO7G5u
 H99p7Z/pDEww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,295,1596524400"; 
   d="gz'50?scan'50,208,50";a="349022385"
Received: from lkp-server01.sh.intel.com (HELO 9f27196b5390) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 23 Sep 2020 14:34:34 -0700
Received: from kbuild by 9f27196b5390 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLCPK-0000IM-1r; Wed, 23 Sep 2020 21:34:34 +0000
Date: Thu, 24 Sep 2020 05:33:34 +0800
From: kernel test robot <lkp@intel.com>
To: Maciej =?utf-8?Q?=C5=BBenczykowski?= <zenczykowski@gmail.com>,
	Maciej =?utf-8?Q?=C5=BBenczykowski?= <maze@google.com>,
	"David S . Miller" <davem@davemloft.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Network Development Mailing List <netdev@vger.kernel.org>,
	Willem de Bruijn <willemb@google.com>,
	Lorenzo Colitti <lorenzo@google.com>,
	Sunmeet Gill <sgill@quicinc.com>,
	Vinay Paradkar <vparadka@qti.qualcomm.com>,
	Tyler Wear <twear@quicinc.com>, David Ahern <dsahern@kernel.org>
Subject: Re: [PATCH] net/ipv4: always honour route mtu during forwarding
Message-ID: <202009240537.PKBbxi6l%lkp@intel.com>
References: <20200923044059.3442423-1-zenczykowski@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
In-Reply-To: <20200923044059.3442423-1-zenczykowski@gmail.com>
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


--5vNYLRcllDrimb99
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Maciej,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net-next/master]
[also build test WARNING on net/master linus/master v5.9-rc6 next-20200923]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Maciej-enczykowski/net-ipv4-always-honour-route-mtu-during-forwarding/20200923-124249
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 748d1c8a425ec529d541f082ee7a81f6a51fa120
config: s390-randconfig-r034-20200923 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d6ac649ccda289ecc2d2c0cb51892d57e8ec328c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from net/socket.c:62:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from net/socket.c:62:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from net/socket.c:62:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from net/socket.c:62:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   In file included from net/socket.c:105:
   In file included from include/net/busy_poll.h:18:
>> include/net/ip.h:446:15: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           unsigned int mtu = dst_metric_raw(dst, RTAX_MTU);
                        ^
   21 warnings generated.
--
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from net/core/sock.c:91:
   In file included from include/linux/errqueue.h:6:
   In file included from include/net/ip.h:22:
   In file included from include/linux/ip.h:16:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from net/core/sock.c:91:
   In file included from include/linux/errqueue.h:6:
   In file included from include/net/ip.h:22:
   In file included from include/linux/ip.h:16:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from net/core/sock.c:91:
   In file included from include/linux/errqueue.h:6:
   In file included from include/net/ip.h:22:
   In file included from include/linux/ip.h:16:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from net/core/sock.c:91:
   In file included from include/linux/errqueue.h:6:
   In file included from include/net/ip.h:22:
   In file included from include/linux/ip.h:16:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   In file included from net/core/sock.c:91:
   In file included from include/linux/errqueue.h:6:
>> include/net/ip.h:446:15: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           unsigned int mtu = dst_metric_raw(dst, RTAX_MTU);
                        ^
   In file included from net/core/sock.c:88:
   In file included from ./arch/s390/include/generated/asm/unaligned.h:1:
   In file included from include/asm-generic/unaligned.h:13:
   In file included from include/linux/unaligned/access_ok.h:5:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
                           "ni     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
                           "ni     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
   arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni	$0,${1:b}'
                           "ni     %0,%b1\n"
                           ^
   21 warnings and 10 errors generated.
--
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from net/core/datagram.c:45:
   In file included from include/linux/inet.h:42:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from net/core/datagram.c:45:
   In file included from include/linux/inet.h:42:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from net/core/datagram.c:45:
   In file included from include/linux/inet.h:42:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from net/core/datagram.c:45:
   In file included from include/linux/inet.h:42:
   In file included from include/net/net_namespace.h:39:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   In file included from net/core/datagram.c:63:
   In file included from include/net/busy_poll.h:18:
>> include/net/ip.h:446:15: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           unsigned int mtu = dst_metric_raw(dst, RTAX_MTU);
                        ^
   In file included from net/core/datagram.c:37:
   In file included from include/linux/module.h:12:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi	$0,${1:b}'
                           "oi     %0,%b1\n"
                           ^
   21 warnings and 1 error generated.
..

# https://github.com/0day-ci/linux/commit/d9552d77468fe90224e07225cfc8c3f838b28b1b
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Maciej-enczykowski/net-ipv4-always-honour-route-mtu-during-forwarding/20200923-124249
git checkout d9552d77468fe90224e07225cfc8c3f838b28b1b
vim +446 include/net/ip.h

   434	
   435	static inline unsigned int ip_dst_mtu_maybe_forward(const struct dst_entry *dst,
   436							    bool forwarding)
   437	{
   438		struct net *net = dev_net(dst->dev);
   439	
   440		if (net->ipv4.sysctl_ip_fwd_use_pmtu ||
   441		    ip_mtu_locked(dst) ||
   442		    !forwarding)
   443			return dst_mtu(dst);
   444	
   445		/* 'forwarding = true' case should always honour route mtu */
 > 446		unsigned int mtu = dst_metric_raw(dst, RTAX_MTU);
   447		if (mtu) return mtu;
   448	
   449		return min(READ_ONCE(dst->dev->mtu), IP_MAX_MTU);
   450	}
   451	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009240537.PKBbxi6l%25lkp%40intel.com.

--5vNYLRcllDrimb99
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
IiVRnH83Q1svpd0BAA==

--5vNYLRcllDrimb99--
