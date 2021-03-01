Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYOU6OAQMGQEQNAO3AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A57AD327F51
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 14:21:40 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id m4sf11154711pfd.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 05:21:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614604898; cv=pass;
        d=google.com; s=arc-20160816;
        b=g7F5WckplQbKxuEDIi/2aYX890UpxTyUmrHIf6Tqj5WtyVOfhedfExOsCe7dO93mx5
         KcJdHbmDtDY4sjf+A0OBuc8wB+L9yzYwiW/Lr02KgXKv4PWky/oVng2iyHa/bD6O3Yii
         4uvq5qd22pBQp9og3Z+23C+zAbwHPWWyHdPBboR2fzLXNChGOhhGSkXE/c4rq/VCy2vB
         cB365mA8AXOIEdCK1TTcJvF0vB0/iEAuiyJbBMDFoanexZn653dECXkpH15lVhcqKsrm
         PkK5YMzh8itmX/fcapU0+7Fnt09fZws34XyJr/vov40Eg+43JslzfyU7X9/TamW6AOmQ
         RCFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/4+40x+x3gEvEB9OxOWGOcGNwR6Dhwt8JDc8b2emtmA=;
        b=gBGdeEr/A+aU+1ERyH3wlztvMzqMdcqKmeMzQDL3T9YMkzILmmW91rq8EjjEBXfDkK
         l6dyBh/2Z7053X2455nwV21cp8FGvjF/08Ee8h6ZkXd8FHu8C5HdDXa5fjc7Aojx9yGY
         fyK/keMeOZ4aS7LegzAAoVj4C7gWXtB7SZ+NPcZ1kawx9desj2EyWqB4zl23JPOQRLKO
         6JPOXjfE45B+LsHZWG+8pXK8/WXmuAWN+yYF5S9f+Ajc6V6k/ZheUCIHCwjAtAajDix1
         ZFl5Fv9yRMFcWR63BNHsTFkK7febH+eoztgZT5E8UUlj2+Ra90590V/I+SPJAH4nzwgk
         KO/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/4+40x+x3gEvEB9OxOWGOcGNwR6Dhwt8JDc8b2emtmA=;
        b=oBBWuG4/gVEAiFKR7lM5rffMshOyOIU0Ka4gm0QuOgnGebvV3Tp8Bp0Dup1a0VSLxk
         62eFuGl66hi/IkurSza30MOOtz+K3FI1MQCBlEeu0A17RAnh0cVRdWtZ53IA4uwDwqYq
         pnLYN9t0fQW8dPgwILsqA0wqaZwltJ2Yphoq9P6rCpRC3LZuA1UqiU1+UQslQCl/nSPA
         BLxU9vOmtpjnVnLjOmtzy+zYAtrNsbQaK+0bw6e4ko6/KhOnt8xsOmzaypppxdXQEnlD
         6kJZ3jaMvgitLR/NukIbKA/ExxsUw6+nmXBnhpRDjzmPL3Khz8Z9B59CMKWw5Ry8RHz7
         xMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/4+40x+x3gEvEB9OxOWGOcGNwR6Dhwt8JDc8b2emtmA=;
        b=VGbVrKYXRb0pldHWpxPNSo93JkVgt0UrGRi6QvaNUh255KmsqYSaHgPdkweUxW9Ew2
         wRPI96aR3Pv6qdCoEG1jrBYOi5aadlUBSlXpmlClZV2S+79sKAdQLJnKA4HOL98Fswwz
         nwKIiBjVU4BUMC0Ir363PEApx9x7SnMaPccUkYxK2F8i+dRBNY116KIvsEEmjGjLMxWy
         TG/Qb950/6NVYYj+6/n2xAa05GKf/JbIeFcGl/iWKdMeSnaKzRm3NEaM8kP15QlMWILi
         8E+sL7biEyqp0jQjKhwuoKMClNp1uA5jFuDAlI6KkHeMHMx4HcrKTcuDM90hw6z4oCiF
         XPFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Pao8UIcMpnRlWafvlZRL0/klMJqJLJU6I1H8/DZhOzaIiGCTV
	imP3h00PTTlVArgCTjA2t60=
X-Google-Smtp-Source: ABdhPJzMXSDv/HBv5diMPpssZfawVotA3jb/1ZXJau+46Af3SBt7wj+sQXz58ewdNQD8+6VQUK/SiQ==
X-Received: by 2002:a17:903:1c3:b029:de:6b19:e72e with SMTP id e3-20020a17090301c3b02900de6b19e72emr15520915plh.63.1614604898062;
        Mon, 01 Mar 2021 05:21:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4a87:: with SMTP id lp7ls9875282pjb.0.canary-gmail;
 Mon, 01 Mar 2021 05:21:37 -0800 (PST)
X-Received: by 2002:a17:903:181:b029:df:c7e5:8e39 with SMTP id z1-20020a1709030181b02900dfc7e58e39mr15968416plg.25.1614604897361;
        Mon, 01 Mar 2021 05:21:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614604897; cv=none;
        d=google.com; s=arc-20160816;
        b=Ybo9Y97fccU6tM9Y9py1fILLTjQx73WxGiSWrz0noXgKCHrmPHzhALU6ydpAlKA6I3
         axaZWwd1AU306K05Uig3Yly1PZbKdzCb6rNctuzRmzIzBfnN3sWm4xOB8r7al95cn2sz
         y7DISrkaEi2LJLQOeuxc4AjrP1W5K1pfJLxofnlY44jhjuZ4PV3P1Co865A3Uq0FoUUX
         YDc9UY6+YLN7W3MJ06dAsuYjUqGDMW4fskP3I6jike96qkTXt2mJ6oyTchz533prd1ka
         1+D4T0VZ9XQqHqa7p8oJLeLB8zIyzKTnLt5Z6o0gTZqrwD+0l0XwBE0Ml7lLaSIKyqZp
         icoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=G6707MgqH/ari+leyW3VNi8JuP4hh/y+B1AwSrs7bok=;
        b=XlZxAO39By086Z1R4LZJxHC/+ayOuqzhmQmDFg4nOJlxEgbXG5iSqSLnQKqx5KYN2C
         kK87pWPGklxP4sBUY4c9ljWxJq41rcfVFcY0B3Kn6kdBDUZmxfGc9s9Ee7byaG50m1Sv
         XE/h8MOzzXm6Qrx4MTDxmHDv1Job3nKKdphfvCPGH/Dce2vm1eZ1iIK6Xqx9dZzfXkGi
         IVkbIuj/LP/lTFPDzxIuClEVYrtSKdTROFd8aLjA//pdzYzi4/vqGECTGfgTO6fKhZ1t
         w3X4S9EHgk5uKQsiiEnaymEBtu1iCxVg+Iqy8CfsQ/oFsGSU7HFH7lyU53Zemw57nB10
         49xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id j11si1136063pgm.4.2021.03.01.05.21.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 05:21:37 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: f92PVatObd0Bd80NndCPa6c1H+rH+IMwcmlJZywyV4devgliGdW7veueMWrxcAU7rJdov67Ctx
 C67N1qJf3P3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="183060441"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="183060441"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2021 05:21:35 -0800
IronPort-SDR: ZFuj9+9Ve9OpEnj/Yxg7TOq1GzwvtTQH2Gxm+RQoEtTVfTfysdOsPz5C32lVb953YfdCqRFokq
 AqdFA+DWd/gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="366704542"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 01 Mar 2021 05:21:33 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGiUO-0004af-Hq; Mon, 01 Mar 2021 13:21:32 +0000
Date: Mon, 1 Mar 2021 21:21:19 +0800
From: kernel test robot <lkp@intel.com>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:233:24:
 warning: taking address of packed member 'param1' of class or structure
 'qtnf_extra_bd_params' may result in an unaligned pointer value
Message-ID: <202103012113.0COOmGF8-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/04w6evG8XlLl3ft"
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


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
commit: 1062fc45d1e93faefb93961f3be0a687f3f0e2e1 MIPS: Loongson64: Select SMP in Kconfig to avoid build error
date:   5 months ago
config: mips-randconfig-r011-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b077d82b00d81934c7c27ac89dd8b0e7f448bded)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1062fc45d1e93faefb93961f3be0a687f3f0e2e1
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 1062fc45d1e93faefb93961f3be0a687f3f0e2e1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:6:
   In file included from include/linux/pci.h:1439:
   In file included from include/linux/dmapool.h:14:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:208:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:16:
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/pcie_priv.h:10:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:16:
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/pcie_priv.h:15:
   In file included from drivers/net/wireless/quantenna/qtnfmac/bus.h:7:
   include/linux/netdevice.h:567:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) != val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:16:
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/pcie_priv.h:15:
   In file included from drivers/net/wireless/quantenna/qtnfmac/bus.h:7:
   include/linux/netdevice.h:567:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:16:
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/pcie_priv.h:15:
   In file included from drivers/net/wireless/quantenna/qtnfmac/bus.h:11:
   In file included from drivers/net/wireless/quantenna/qtnfmac/core.h:15:
   In file included from include/net/sock.h:61:
   include/linux/poll.h:142:27: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                           ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   include/linux/poll.h:142:39: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                                       ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:16:
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/pcie_priv.h:15:
   In file included from drivers/net/wireless/quantenna/qtnfmac/bus.h:11:
   In file included from drivers/net/wireless/quantenna/qtnfmac/core.h:15:
   include/net/sock.h:1971:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           old_dst = xchg((__force struct dst_entry **)&sk->sk_dst_cache, dst);
                     ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:16:
   In file included from drivers/net/wireless/quantenna/qtnfmac/pcie/pcie_priv.h:15:
   In file included from drivers/net/wireless/quantenna/qtnfmac/bus.h:11:
   In file included from drivers/net/wireless/quantenna/qtnfmac/core.h:15:
   include/net/sock.h:2219:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           err = xchg(&sk->sk_err, 0);
                 ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:233:24: warning: taking address of packed member 'param1' of class or structure 'qtnf_extra_bd_params' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ts->ep_next_rx_pkt = &extra_params->param1;
                                 ^~~~~~~~~~~~~~~~~~~~
>> drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:236:22: warning: taking address of packed member 'param2' of class or structure 'qtnf_extra_bd_params' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ts->txqueue_wake = &extra_params->param2;
                               ^~~~~~~~~~~~~~~~~~~~
>> drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c:237:20: warning: taking address of packed member 'param3' of class or structure 'qtnf_extra_bd_params' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ts->ep_pmstate = &extra_params->param3;
                             ^~~~~~~~~~~~~~~~~~~~
   21 warnings and 1 error generated.
--
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:29:
   In file included from include/linux/lockdep.h:14:
   In file included from include/linux/smp.h:15:
   In file included from include/linux/smp_types.h:5:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/pcie/rx.c:64:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:29:
   In file included from include/linux/lockdep.h:27:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/pcie/rx.c:69:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-io.h:61:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-devtrace.h:15:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:13:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:208:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/pcie/rx.c:69:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-io.h:61:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-devtrace.h:15:
   In file included from include/linux/skbuff.h:17:
   In file included from include/linux/bvec.h:13:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:208:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/pcie/rx.c:69:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-io.h:61:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-devtrace.h:15:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/wireless/intel/iwlwifi/pcie/rx.c:69:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-io.h:61:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-devtrace.h:16:
   In file included from include/linux/ieee80211.h:20:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:567:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) != val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/pcie/rx.c:69:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-io.h:61:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-devtrace.h:16:
   In file included from include/linux/ieee80211.h:20:
   In file included from include/linux/etherdevice.h:21:
   include/linux/netdevice.h:567:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/pcie/rx.c:70:
>> drivers/net/wireless/intel/iwlwifi/pcie/internal.h:273:20: warning: taking address of packed member 'closed_rb_num' of class or structure 'iwl_rb_status' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   return READ_ONCE(rb_stts->closed_rb_num);
                                    ^~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/rwonce.h:50:14: note: expanded from macro 'READ_ONCE'
           __READ_ONCE(x);                                                 \
                       ^
   include/asm-generic/rwonce.h:44:72: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                           ^
   15 warnings and 1 error generated.
--
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:29:
   In file included from include/linux/lockdep.h:14:
   In file included from include/linux/smp.h:15:
   In file included from include/linux/smp_types.h:5:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/fw/dbg.c:64:
   In file included from include/linux/devcoredump.h:8:
   In file included from include/linux/device.h:15:
   In file included from include/linux/dev_printk.h:16:
   In file included from include/linux/ratelimit.h:6:
   In file included from include/linux/sched.h:14:
   In file included from include/linux/pid.h:5:
   In file included from include/linux/rculist.h:11:
   In file included from include/linux/rcupdate.h:29:
   In file included from include/linux/lockdep.h:27:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/fw/dbg.c:64:
   In file included from include/linux/devcoredump.h:12:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:208:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/fw/dbg.c:64:
   In file included from include/linux/devcoredump.h:12:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:208:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/fw/dbg.c:66:
   In file included from drivers/net/wireless/intel/iwlwifi/fw/runtime.h:63:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-config.h:64:
   In file included from include/linux/netdevice.h:37:
   In file included from include/linux/ethtool.h:18:
   In file included from include/uapi/linux/ethtool.h:19:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/wireless/intel/iwlwifi/fw/dbg.c:66:
   In file included from drivers/net/wireless/intel/iwlwifi/fw/runtime.h:63:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-config.h:64:
   include/linux/netdevice.h:567:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           } while (cmpxchg(&n->state, val, new) != val);
                    ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/net/wireless/intel/iwlwifi/fw/dbg.c:66:
   In file included from drivers/net/wireless/intel/iwlwifi/fw/runtime.h:63:
   In file included from drivers/net/wireless/intel/iwlwifi/iwl-config.h:64:
   include/linux/netdevice.h:567:11: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> drivers/net/wireless/intel/iwlwifi/fw/dbg.c:1940:17: warning: taking address of packed member 'list' of class or structure 'iwl_fw_ini_dump_entry' may result in an unaligned pointer value [-Waddress-of-packed-member]
           list_add_tail(&entry->list, list);
                          ^~~~~~~~~~~
   drivers/net/wireless/intel/iwlwifi/fw/dbg.c:2046:12: warning: taking address of packed member 'list' of class or structure 'iwl_fw_ini_dump_entry' may result in an unaligned pointer value [-Waddress-of-packed-member]
           list_add(&entry->list, list);
                     ^~~~~~~~~~~
   drivers/net/wireless/intel/iwlwifi/fw/dbg.c:2219:12: warning: taking address of packed member 'list' of class or structure 'iwl_fw_ini_dump_entry' may result in an unaligned pointer value [-Waddress-of-packed-member]
           list_add(&entry->list, list);
                     ^~~~~~~~~~~
   drivers/net/wireless/intel/iwlwifi/fw/dbg.c:2286:13: warning: taking address of packed member 'list' of class or structure 'iwl_fw_ini_dump_entry' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   list_del(&entry->list);
                             ^~~~~~~~~~~
   drivers/net/wireless/intel/iwlwifi/fw/dbg.c:2314:23: warning: taking address of packed member 'list' of class or structure 'iwl_fw_ini_dump_entry' may result in an unaligned pointer value [-Waddress-of-packed-member]
                   list_for_each_entry(entry, &dump_list, list) {
                   ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:620:8: note: expanded from macro 'list_for_each_entry'
                &pos->member != (head);                                    \
                 ^~~~~~~~~~~
   19 warnings and 1 error generated.
..


vim +233 drivers/net/wireless/quantenna/qtnfmac/pcie/topaz_pcie.c

e401fa25cfa23d Sergey Matyukevich 2018-10-16  182  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  183  static int topaz_alloc_bd_table(struct qtnf_pcie_topaz_state *ts,
e401fa25cfa23d Sergey Matyukevich 2018-10-16  184  				struct qtnf_topaz_bda __iomem *bda)
e401fa25cfa23d Sergey Matyukevich 2018-10-16  185  {
e401fa25cfa23d Sergey Matyukevich 2018-10-16  186  	struct qtnf_extra_bd_params __iomem *extra_params;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  187  	struct qtnf_pcie_bus_priv *priv = &ts->base;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  188  	dma_addr_t paddr;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  189  	void *vaddr;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  190  	int len;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  191  	int i;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  192  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  193  	/* bd table */
e401fa25cfa23d Sergey Matyukevich 2018-10-16  194  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  195  	len = priv->tx_bd_num * sizeof(struct qtnf_topaz_tx_bd) +
e401fa25cfa23d Sergey Matyukevich 2018-10-16  196  		priv->rx_bd_num * sizeof(struct qtnf_topaz_rx_bd) +
e401fa25cfa23d Sergey Matyukevich 2018-10-16  197  			sizeof(struct qtnf_extra_bd_params);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  198  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  199  	vaddr = dmam_alloc_coherent(&priv->pdev->dev, len, &paddr, GFP_KERNEL);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  200  	if (!vaddr)
e401fa25cfa23d Sergey Matyukevich 2018-10-16  201  		return -ENOMEM;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  202  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  203  	/* tx bd */
e401fa25cfa23d Sergey Matyukevich 2018-10-16  204  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  205  	ts->tx_bd_vbase = vaddr;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  206  	qtnf_non_posted_write(paddr, &bda->bda_rc_tx_bd_base);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  207  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  208  	for (i = 0; i < priv->tx_bd_num; i++)
e401fa25cfa23d Sergey Matyukevich 2018-10-16  209  		ts->tx_bd_vbase[i].info |= cpu_to_le32(QTN_BD_EMPTY);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  210  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  211  	pr_debug("TX descriptor table: vaddr=0x%p paddr=%pad\n", vaddr, &paddr);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  212  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  213  	priv->tx_bd_r_index = 0;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  214  	priv->tx_bd_w_index = 0;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  215  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  216  	/* rx bd */
e401fa25cfa23d Sergey Matyukevich 2018-10-16  217  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  218  	vaddr = ((struct qtnf_topaz_tx_bd *)vaddr) + priv->tx_bd_num;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  219  	paddr += priv->tx_bd_num * sizeof(struct qtnf_topaz_tx_bd);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  220  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  221  	ts->rx_bd_vbase = vaddr;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  222  	qtnf_non_posted_write(paddr, &bda->bda_rc_rx_bd_base);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  223  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  224  	pr_debug("RX descriptor table: vaddr=0x%p paddr=%pad\n", vaddr, &paddr);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  225  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  226  	/* extra shared params */
e401fa25cfa23d Sergey Matyukevich 2018-10-16  227  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  228  	vaddr = ((struct qtnf_topaz_rx_bd *)vaddr) + priv->rx_bd_num;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  229  	paddr += priv->rx_bd_num * sizeof(struct qtnf_topaz_rx_bd);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  230  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  231  	extra_params = (struct qtnf_extra_bd_params __iomem *)vaddr;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  232  
e401fa25cfa23d Sergey Matyukevich 2018-10-16 @233  	ts->ep_next_rx_pkt = &extra_params->param1;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  234  	qtnf_non_posted_write(paddr + QTNF_BD_PARAM_OFFSET(1),
e401fa25cfa23d Sergey Matyukevich 2018-10-16  235  			      &bda->bda_ep_next_pkt);
e401fa25cfa23d Sergey Matyukevich 2018-10-16 @236  	ts->txqueue_wake = &extra_params->param2;
e401fa25cfa23d Sergey Matyukevich 2018-10-16 @237  	ts->ep_pmstate = &extra_params->param3;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  238  	ts->dma_msi_dummy = paddr + QTNF_BD_PARAM_OFFSET(4);
e401fa25cfa23d Sergey Matyukevich 2018-10-16  239  
e401fa25cfa23d Sergey Matyukevich 2018-10-16  240  	return 0;
e401fa25cfa23d Sergey Matyukevich 2018-10-16  241  }
e401fa25cfa23d Sergey Matyukevich 2018-10-16  242  

:::::: The code at line 233 was first introduced by commit
:::::: e401fa25cfa23df8b17960a656ff11f49facae84 qtnfmac: add support for Topaz chipsets

:::::: TO: Sergey Matyukevich <sergey.matyukevich.os@quantenna.com>
:::::: CC: Kalle Valo <kvalo@codeaurora.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103012113.0COOmGF8-lkp%40intel.com.

--/04w6evG8XlLl3ft
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--/04w6evG8XlLl3ft--
