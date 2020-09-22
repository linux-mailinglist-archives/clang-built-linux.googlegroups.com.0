Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBT5IUX5QKGQEYOGNDUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0425827381A
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 03:33:05 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id q11sf12987550ilt.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 18:33:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600738383; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wg/lzB/2/ac3zJ7JJDiFsvYOT3rzgl6gkjtPMNppJ5E+EjPvORExU4UnR0/cHyxGD4
         pFp0KAkQVkR2pEvMUwg99wgaXpAydwnTkWQWvNOce4dRwzTuggKitZ5ExvFNyUq3KKfd
         gOekk/hTONVpMoo9+AHBws3RIl/uSzLE/NVbfalEuKNb3zYssiLy2IjCUJeWhUc0+HLO
         KhF7a0drGgzgzjVSZ8JtBDX662DU/C2/2dW0skLCcIi9NPlA/PsG4YTV2bBGwJVzSIPt
         BNF1bwzxp4hMG3jgarzCZjeAC28qfcLcyyqFAlyMxxLLS+r5921Hxfa9jCDTXZhyLVx1
         721g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=3KD2dvwEy51ASYp8fQmubzJCxEXD6xgC6mg/yBoFxmc=;
        b=DK/jU1tADFrx5EkLZJg+b2z/LvNMWAQaQzHJnYhMxFb58JZtBML+U92H9Wv+xTmlbN
         blJiecFLwKL/1y6sEO4DOtg2B1fCo4MTLJxeLedYK1GCKcMwTO7bYVXYlYecgi7coE4/
         4jh0+HtdlUxlqaRTAmD+owWjQlr+DqLIQzxly5HhpaJYc4t6mjgC+9UZBJgKtQbBeGtT
         PNHu7eOYsQjmrpprp8USgb6Nz63DC+a/znt4SoTf5AQ1SYqtvNJv7vUtAQaJ8cOuEr90
         fddWznrTnS32AMsHaoGGVlti+7FAUO2k0vyWRyH6/P1Dr9plJ4dcx6UNLwcmOxJuAqY2
         Qifg==
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
        bh=3KD2dvwEy51ASYp8fQmubzJCxEXD6xgC6mg/yBoFxmc=;
        b=sR4B9qazqezl9x7Vq6XTVQQ1R7IJl8zVSoNniqYyi1hLbIe3Iw/vc8vrpuj6v5w46o
         EwQEDFAL62+qRTOWygNCTG6BnAzWuoj/sFZPPSn/h/TdFLAXNF4Z9dYPvaEmRdyAv+/Y
         pa2kzUGa3gtHmQMA8BssHPv0v22FZO7DHGHDuiTFW22+LkrmzUF2Z1Hisuk8cj4UyHaa
         i+0MDFaG4SKZsaBIGYC3cFzm8HkOVku98XQDKz4hXQu0b26GM/7g7oXye/k5OZV7b7F9
         /wY7IsnJhO8SkhsYOwJ0BHLG3I75YIbtKokIwm1ugyUQ21FRU3pmF6H7HQrIlx/sSphL
         QPGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3KD2dvwEy51ASYp8fQmubzJCxEXD6xgC6mg/yBoFxmc=;
        b=VxdEJpjYY7F8pH0ohXnIOCiFKEgzZ170f+iewkh64WU9AL5wVxGirh68bLjnAtaF1B
         VheZ0yuM8AmLJS00A24u9IeSJdfqjO15CRxf58euo2Hz/KzcvkL1SEvadhyiie7aa83l
         OVWrNdtTum05P8vjVI74Z3B8gTDPep0na9QSro2vb2EUQlRbfuRO+4dn0diTZKRdR6+I
         LOwazMEc2OdF21Sx78nw0YPvMrbXmEha3kpUIqCZ9KiJm+v1ZISmjj+16iyu7YbGugIz
         Z8tkVTUg0QW0FvudB52pBINCmRgbbraaCdGKC0kNI5lXkv/3qI40OmJzP3HgxOMP644U
         lZ+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vFMukfSlmdIVr2SgHbhViR+KJ2hZ/ShZ0xWPC3LJYsmBx6uDN
	P1jV9wNZjh8J+cOio/3umyA=
X-Google-Smtp-Source: ABdhPJyXil2606Fw986Br5SR+1DjFpiodgO9NdiGekUGgRlCyk7eIgagFoMDLWCc12QT9tqMys8F1Q==
X-Received: by 2002:a5e:9e4c:: with SMTP id j12mr1711412ioq.37.1600738383563;
        Mon, 21 Sep 2020 18:33:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2dc2:: with SMTP id l2ls2374084iow.8.gmail; Mon, 21
 Sep 2020 18:33:03 -0700 (PDT)
X-Received: by 2002:a6b:cd89:: with SMTP id d131mr1671683iog.41.1600738382991;
        Mon, 21 Sep 2020 18:33:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600738382; cv=none;
        d=google.com; s=arc-20160816;
        b=h5EKH9H/Jee7UPnrsWOfDgrNy+r/GJacwE0gyY4fSQbfFNziYdU/SdvmM1dyn2Eebt
         AM+u6lUS4rRFBrgv+MHPbMrtHjG1MOSgugDLvEMNmNJotEeQ2wp9rmSeAx1ykTS6AMaF
         KSlJy2XGIIzEE69q3rDHI3hi2ROG4gFwLT0sdWN+dKlCqzLE1/pxIO5hXoJwOTDpSmnT
         +sHq5jsdIT0zEcRBomIqWpcHMQKBUPkNZ78dJIzaRvaWSz5C6z1CVZZedWqWe/Av2U3+
         JsXu3LVZ3huu4yi1Y++MXL3NS6Ggaj9env1lDdg4Ef/Jw0ULXL35cCN7uHMIE1ajb0mI
         vnAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=lkNlPhk1Igjl+7j9pyMwra0QMu1neP2D+pJ0EBMVsxE=;
        b=pekSekAyHQyCs2tAXCsuGs8J40Nh0zldDRNZQEmNaIOmP5/5tWHpQUugrkTgZIcQR3
         7yVNHQCg3fHQxweqsTyM4RUgkCNf6WxN/QOny9P5D5pjbh/HU+i1mituGRJ0BVjVM3NH
         Cm6R2VqMXHXqUOYNwvPEkhVbe30jkNSEnEJFT5fQgKuc5EUSW4RExAACE/NDgOQNGfK7
         pXhYG/IZzbEZOX7R9p02enjT3f6WR1tek7w4QyHQDGNdKJCT2VjY3Xyt486vkuAW+0lq
         TOipjvIDhvReVPAcgqo8NW6L1UAVwmGKkwM4hWQQPYRBPx+i3mV/pcOqIA+IyFDEqbMO
         PcSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id q22si776730iob.1.2020.09.21.18.33.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 18:33:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: eLYvP5n2Svnjo9w5tY+dP3GMNOjszOG/itHPaCCBVE1MqrJxOSP/QZqiHTCpJ02Mcp/ZLm4Xau
 RgR8c9OrUPNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="157891580"
X-IronPort-AV: E=Sophos;i="5.77,288,1596524400"; 
   d="gz'50?scan'50,208,50";a="157891580"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2020 18:33:01 -0700
IronPort-SDR: hTed14uefKXKhamISBGsHqDTDCiazJJ07knu2FlRvAHiJfbC5smTs6/c1uCR63o9FaKoO8MR2u
 fJVIzS8aRGgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,288,1596524400"; 
   d="gz'50?scan'50,208,50";a="291135652"
Received: from lkp-server01.sh.intel.com (HELO 928d8e596b58) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 21 Sep 2020 18:32:58 -0700
Received: from kbuild by 928d8e596b58 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kKXAv-0000Gc-Vm; Tue, 22 Sep 2020 01:32:57 +0000
Date: Tue, 22 Sep 2020 09:32:15 +0800
From: kernel test robot <lkp@intel.com>
To: Mike Christie <michael.christie@oracle.com>, martin.petersen@oracle.com,
	linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
	mst@redhat.com, jasowang@redhat.com, pbonzini@redhat.com,
	stefanha@redhat.com, virtualization@lists.linux-foundation.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/8] vhost scsi: alloc cmds per vq instead of session
Message-ID: <202009220914.WjJcrqD4%lkp@intel.com>
References: <1600712588-9514-4-git-send-email-michael.christie@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline
In-Reply-To: <1600712588-9514-4-git-send-email-michael.christie@oracle.com>
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


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Mike,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on vhost/linux-next]
[also build test WARNING on v5.9-rc6 next-20200921]
[cannot apply to target/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Mike-Christie/vhost-scsi-fixes-and-cleanups/20200922-031251
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mst/vhost.git linux-next
config: s390-randconfig-r022-20200920 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4e8c028158b56d9c2142a62464e8e0686bde3584)
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

   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/vhost/scsi.c:45:
   In file included from include/uapi/linux/vhost.h:14:
   In file included from include/uapi/linux/vhost_types.h:16:
   In file included from include/linux/virtio_config.h:7:
   In file included from include/linux/virtio.h:7:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/vhost/scsi.c:45:
   In file included from include/uapi/linux/vhost.h:14:
   In file included from include/uapi/linux/vhost_types.h:16:
   In file included from include/linux/virtio_config.h:7:
   In file included from include/linux/virtio.h:7:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/vhost/scsi.c:45:
   In file included from include/uapi/linux/vhost.h:14:
   In file included from include/uapi/linux/vhost_types.h:16:
   In file included from include/linux/virtio_config.h:7:
   In file included from include/linux/virtio.h:7:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/vhost/scsi.c:45:
   In file included from include/uapi/linux/vhost.h:14:
   In file included from include/uapi/linux/vhost_types.h:16:
   In file included from include/linux/virtio_config.h:7:
   In file included from include/linux/virtio.h:7:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
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
>> drivers/vhost/scsi.c:606:28: warning: variable 'cpu' is uninitialized when used here [-Wuninitialized]
           cmd->tvc_se_cmd.map_cpu = cpu;
                                     ^~~
   drivers/vhost/scsi.c:583:14: note: initialize the variable 'cpu' to silence this warning
           int tag, cpu;
                       ^
                        = 0
   21 warnings generated.

# https://github.com/0day-ci/linux/commit/aef0e1e9298ab68f2d7bdf1afb9a376641b993d5
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Mike-Christie/vhost-scsi-fixes-and-cleanups/20200922-031251
git checkout aef0e1e9298ab68f2d7bdf1afb9a376641b993d5
vim +/cpu +606 drivers/vhost/scsi.c

057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  571  
1a1ff8256af679 drivers/vhost/scsi.c      Nicholas Bellinger 2015-01-31  572  static struct vhost_scsi_cmd *
aef0e1e9298ab6 drivers/vhost/scsi.c      Mike Christie      2020-09-21  573  vhost_scsi_get_cmd(struct vhost_virtqueue *vq, struct vhost_scsi_tpg *tpg,
95e7c4341b8e28 drivers/vhost/scsi.c      Nicholas Bellinger 2014-02-22  574  		   unsigned char *cdb, u64 scsi_tag, u16 lun, u8 task_attr,
95e7c4341b8e28 drivers/vhost/scsi.c      Nicholas Bellinger 2014-02-22  575  		   u32 exp_data_len, int data_direction)
057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  576  {
aef0e1e9298ab6 drivers/vhost/scsi.c      Mike Christie      2020-09-21  577  	struct vhost_scsi_virtqueue *svq = container_of(vq,
aef0e1e9298ab6 drivers/vhost/scsi.c      Mike Christie      2020-09-21  578  					struct vhost_scsi_virtqueue, vq);
1a1ff8256af679 drivers/vhost/scsi.c      Nicholas Bellinger 2015-01-31  579  	struct vhost_scsi_cmd *cmd;
1a1ff8256af679 drivers/vhost/scsi.c      Nicholas Bellinger 2015-01-31  580  	struct vhost_scsi_nexus *tv_nexus;
b1935f687bb93b drivers/vhost/scsi.c      Nicholas Bellinger 2014-02-22  581  	struct scatterlist *sg, *prot_sg;
3aee26b4ae9104 drivers/vhost/scsi.c      Nicholas Bellinger 2013-06-21  582  	struct page **pages;
10e9cbb6b53111 drivers/vhost/scsi.c      Matthew Wilcox     2018-06-12  583  	int tag, cpu;
057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  584  
9871831283e795 drivers/vhost/scsi.c      Asias He           2013-05-06  585  	tv_nexus = tpg->tpg_nexus;
057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  586  	if (!tv_nexus) {
1a1ff8256af679 drivers/vhost/scsi.c      Nicholas Bellinger 2015-01-31  587  		pr_err("Unable to locate active struct vhost_scsi_nexus\n");
057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  588  		return ERR_PTR(-EIO);
057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  589  	}
057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  590  
aef0e1e9298ab6 drivers/vhost/scsi.c      Mike Christie      2020-09-21  591  	tag = sbitmap_get(&svq->scsi_tags, 0, false);
4a47d3a1ff10e5 drivers/vhost/scsi.c      Nicholas Bellinger 2013-09-23  592  	if (tag < 0) {
1a1ff8256af679 drivers/vhost/scsi.c      Nicholas Bellinger 2015-01-31  593  		pr_err("Unable to obtain tag for vhost_scsi_cmd\n");
4a47d3a1ff10e5 drivers/vhost/scsi.c      Nicholas Bellinger 2013-09-23  594  		return ERR_PTR(-ENOMEM);
4a47d3a1ff10e5 drivers/vhost/scsi.c      Nicholas Bellinger 2013-09-23  595  	}
4a47d3a1ff10e5 drivers/vhost/scsi.c      Nicholas Bellinger 2013-09-23  596  
aef0e1e9298ab6 drivers/vhost/scsi.c      Mike Christie      2020-09-21  597  	cmd = &svq->scsi_cmds[tag];
3aee26b4ae9104 drivers/vhost/scsi.c      Nicholas Bellinger 2013-06-21  598  	sg = cmd->tvc_sgl;
b1935f687bb93b drivers/vhost/scsi.c      Nicholas Bellinger 2014-02-22  599  	prot_sg = cmd->tvc_prot_sgl;
3aee26b4ae9104 drivers/vhost/scsi.c      Nicholas Bellinger 2013-06-21  600  	pages = cmd->tvc_upages;
473f0b15a4c97d drivers/vhost/scsi.c      Markus Elfring     2017-05-20  601  	memset(cmd, 0, sizeof(*cmd));
3aee26b4ae9104 drivers/vhost/scsi.c      Nicholas Bellinger 2013-06-21  602  	cmd->tvc_sgl = sg;
b1935f687bb93b drivers/vhost/scsi.c      Nicholas Bellinger 2014-02-22  603  	cmd->tvc_prot_sgl = prot_sg;
3aee26b4ae9104 drivers/vhost/scsi.c      Nicholas Bellinger 2013-06-21  604  	cmd->tvc_upages = pages;
4824d3bfb9097a drivers/vhost/scsi.c      Nicholas Bellinger 2013-06-07  605  	cmd->tvc_se_cmd.map_tag = tag;
10e9cbb6b53111 drivers/vhost/scsi.c      Matthew Wilcox     2018-06-12 @606  	cmd->tvc_se_cmd.map_cpu = cpu;
95e7c4341b8e28 drivers/vhost/scsi.c      Nicholas Bellinger 2014-02-22  607  	cmd->tvc_tag = scsi_tag;
95e7c4341b8e28 drivers/vhost/scsi.c      Nicholas Bellinger 2014-02-22  608  	cmd->tvc_lun = lun;
95e7c4341b8e28 drivers/vhost/scsi.c      Nicholas Bellinger 2014-02-22  609  	cmd->tvc_task_attr = task_attr;
3c63f66a0dcdd6 drivers/vhost/scsi.c      Asias He           2013-05-06  610  	cmd->tvc_exp_data_len = exp_data_len;
3c63f66a0dcdd6 drivers/vhost/scsi.c      Asias He           2013-05-06  611  	cmd->tvc_data_direction = data_direction;
3c63f66a0dcdd6 drivers/vhost/scsi.c      Asias He           2013-05-06  612  	cmd->tvc_nexus = tv_nexus;
1a1ff8256af679 drivers/vhost/scsi.c      Nicholas Bellinger 2015-01-31  613  	cmd->inflight = vhost_scsi_get_inflight(vq);
057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  614  
1a1ff8256af679 drivers/vhost/scsi.c      Nicholas Bellinger 2015-01-31  615  	memcpy(cmd->tvc_cdb, cdb, VHOST_SCSI_MAX_CDB_SIZE);
95e7c4341b8e28 drivers/vhost/scsi.c      Nicholas Bellinger 2014-02-22  616  
3c63f66a0dcdd6 drivers/vhost/scsi.c      Asias He           2013-05-06  617  	return cmd;
057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  618  }
057cbf49a1f082 drivers/vhost/tcm_vhost.c Nicholas Bellinger 2012-07-18  619  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009220914.WjJcrqD4%25lkp%40intel.com.

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HcAYCG3uE/tztfnV--
