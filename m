Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOGT3T5AKGQE2FZ7QOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 24375260B3F
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 08:50:34 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id p11sf3777514pjv.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 23:50:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599547833; cv=pass;
        d=google.com; s=arc-20160816;
        b=OSAjDieMbkDLoLcbZ9Mh8T2mVC9j+8ptQjQLMlBwuOURQeoJ/9FqDqFvt8j8ZL1yCt
         WM7IxCIjmVHWUFyOD/OuEZgl9Nrua5IwV31B7ALLfq8G7pef5Zjo4mfQhukkCC3F0D2K
         8S8YH7X9eY+dWiwYkDy8NY8HNf/KKdd/VUvzYmos4Yv7icUpGmXOp4lHlMmAIAoZNibl
         jv6/NKgeK9vh2U70BzkJW38c//EQzunAEf1qnUCPBqJuUnlFa0XGhIpHG9PMPygMnuXO
         xfcJATYrzkAsGBYsJQDIW/8jXFYouEgeJX1VL9bgyEbHupqQr1P6b3RKLQ3B3guhHxR3
         zcCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=zZ6+yDNPZkoFJrsTJUPkFcRIg4jMY4zCNbWri/kLmVY=;
        b=JFUe7WU6kHqDz6jHtS/NMXrV32uxKJPS7w549ziLPVht9kuqXwpm0IJb2KfYHGTmAR
         k+4GbfmcOstEx9MVZ6GadzxtegzvkRlp0AGxFu58exHvPMr8kM2x+rhtn7SVI1Eh5coh
         sW2X/zA9EOk1Z36K2hvjqycheZeeras7rGZz8B23JOvP4m6QwHKAXi2QPjxm9+23ntDy
         bIoTYpOQedRsWCc3xRo2Tut/GSAWeZR5oRW1yR7xLTTptGNIsYHpLFjcX/du/RCa5vO4
         J4WK9yr6Z/DIJgwJTQkqo9KfmCVYi9l/n+tCkKBg9zrPD3vJA1YgU/f2aizPaFg7tAVh
         kmwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zZ6+yDNPZkoFJrsTJUPkFcRIg4jMY4zCNbWri/kLmVY=;
        b=HuuwLxpjacK0m8rOPJ93crdKXGGzkvu7XUjRsyDOXO4naoKvciHhH8OIWhqMWfd/ZS
         8QM2Y2wdpS0ltBYLxCx+ied09c7HBK9mDLp0k3V94CYaaBLiCVQct4gClIId8Bwr352Q
         zfc49zYzvFzvrnE6M//29RgzkhuGSaJbR8hHElmUpeneQKVp5eCXSIUl6XStDUwiQiK/
         WMprJtWpdrZfL/c5WvwiIETYlYMfDqKunS6k6kuRAD+LgRgxaAKc8NGS0I7WrtYfNSwW
         xEjrSXdVdTiKTl1ag1ElCIm91NU1LSQfwbkXMpt00ZvpiQUTwebEaPW2kO0UH4tAdvZQ
         V0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zZ6+yDNPZkoFJrsTJUPkFcRIg4jMY4zCNbWri/kLmVY=;
        b=Knk+gFW0kfMu3hLqVO2E6wFK3gxPBFUxzASvBfLazGl1F58rrBJcUYS0VLFNtilfnb
         RCex6F8gSgcB7UfQPLMHyQFOye0o6OTFEaVEbVxnKLnH7cJDM2l9UE4HVvwpMcDxM2aw
         Arh4Y3FGVeaJPs6s474TlZX/g0uLjIvPRuozjURCz/0qkilIc+NiqgP4HZavQIgr3+SI
         15JwDmKbcn7vKMQIY6Dg0LUgLbPNpeQCsYM0OpMj84RG2dzBNvmpEgzpO3jSVZjtNnLC
         lAd2N/uXz9WWUR3LrYOzFfYcRFyXnc/RjclHil6FcfmxkYFH1oAvH78E0wHHc8bXEQAn
         lrig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dd6ZyQM5JGpPFahgLgW9yMcwnOMe/DKAGHQHayX0vKxURlhGc
	5k6G7ewCvVplfI4UQcfUwdc=
X-Google-Smtp-Source: ABdhPJyaFmBMazaNG6oIa/2WuncVNq/QWsYdY4Z0OIL4qamiEVNbUzi0tOl1kCSNVS0kVGyOKEdd4g==
X-Received: by 2002:a17:90a:e984:: with SMTP id v4mr2638763pjy.202.1599547832693;
        Mon, 07 Sep 2020 23:50:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:480c:: with SMTP id a12ls812979pjh.3.gmail; Mon, 07
 Sep 2020 23:50:32 -0700 (PDT)
X-Received: by 2002:a17:90a:744f:: with SMTP id o15mr2799220pjk.216.1599547831994;
        Mon, 07 Sep 2020 23:50:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599547831; cv=none;
        d=google.com; s=arc-20160816;
        b=PZVcz2tVYZW6Pnfses8ism25a2R1O3mznMNdjBf2IlcQvgNNNdk2/kXKRN+k85v2VG
         JxOIBuDp9mLo8gAiH7+VgujISKSx5qsV2nWjP6ZsDqIomhaTDWTBTIJdulub7+Jh1BQ5
         kOzL2Ynj1Y7S1ejEAPLgkN+QphHI9ZYn8KDjUiZVAIO3F22TG2ZUMQmC2/794lW7Kf/8
         Q1srrqCN+qS7IerxQHp2McN7xKkyZtdaJRXQSXbEu/mw2vqKa3qX1w1hyjlKFnGzvHQQ
         J9BxXUyHWeWKJhp39ZUlljb6TMmJXG5PfxHRt7FxVsDYMh7F3sz/459R3yDetKCU1hMH
         9u1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=9pDVCR858WroEeBLDdHD05yo/mCaf6VzkUoo2r+87yE=;
        b=q1GIyopTp+0EUAHt+v21W6tqhx1d1M/mc3Ul/EOTpx5H5rb9Es2cua0MceMU7SXLwJ
         0lDGKOHn9TbeY+qqGE+GJzvEEtEMsQ/hLfjUmQlEIKI2baXc5BZyOnUwRaQr3pVEQwCZ
         6mE55ZWBYodEdXk33BG5mwYtJCFg3NOwbfHBoU1HTC3z6R3S2ZwuegYtzGG8eaeIxEUi
         EFj96JLJsKdn09a2+enpH9SeEPe2a0QsYzOnha5wr54Nu0m65haLk8+5X3vP8MB0Czr+
         ZslhqMkJCqQ1ypu4vpWjJn0mRs6h+YS0HMH+ZYyXnrhr2/VNHOfphXwN0NEDxHjaSDJa
         q4Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id b9si797368plx.0.2020.09.07.23.50.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 23:50:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: riVnOJJ+mdzuYOb+ItFrHEDaizLYQmqnEZL46I+fwvVZb6zKFEHaqfZL7hFvJSTEcJXG5UiWlU
 nK17+XDB4uCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="155572399"
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; 
   d="gz'50?scan'50,208,50";a="155572399"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2020 23:50:31 -0700
IronPort-SDR: BGnmDzGIn+KfTVqWNOsgvkkkPbNTA3vhJZ6DLsMxAZrriMr25cYGkkwR/7A28V6qKnSHbZHu7O
 GctK8Jx3XI6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; 
   d="gz'50?scan'50,208,50";a="285784092"
Received: from lkp-server01.sh.intel.com (HELO c2729d4f3f0b) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 07 Sep 2020 23:50:28 -0700
Received: from kbuild by c2729d4f3f0b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kFXSW-00004K-9b; Tue, 08 Sep 2020 06:50:28 +0000
Date: Tue, 8 Sep 2020 14:49:38 +0800
From: kernel test robot <lkp@intel.com>
To: Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	borntraeger@de.ibm.com, imbrenda@linux.ibm.com, david@redhat.com,
	linux-s390@vger.kernel.org
Subject: Re: [PATCH v2] KVM: s390: Introduce storage key removal facility
Message-ID: <202009081448.MtYXumwd%lkp@intel.com>
References: <20200907143352.96618-1-frankja@linux.ibm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
In-Reply-To: <20200907143352.96618-1-frankja@linux.ibm.com>
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Janosch,

I love your patch! Perhaps something to improve:

[auto build test WARNING on vhost/linux-next]
[also build test WARNING on kvm/linux-next v5.9-rc4 next-20200903]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Janosch-Frank/KVM-s390-Introduce-storage-key-removal-facility/20200908-020840
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mst/vhost.git linux-next
config: s390-randconfig-r032-20200908 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5f5a0bb0872a9673bad08b38bc0b14c42263902a)
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

                                                             ^
   include/uapi/linux/swab.h:118:32: note: expanded from macro '__swab32'
           (__builtin_constant_p((__u32)(x)) ?     \
                                         ^
   In file included from arch/s390/kvm/priv.c:27:
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
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from arch/s390/kvm/priv.c:27:
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
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from arch/s390/kvm/priv.c:27:
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
   In file included from arch/s390/kvm/priv.c:27:
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
   In file included from arch/s390/kvm/priv.c:27:
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
   In file included from arch/s390/kvm/priv.c:27:
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
>> arch/s390/kvm/priv.c:268:25: warning: use of logical '||' with constant operand [-Wconstant-logical-operand]
                   return rc != (-EAGAIN || -EOPNOTSUPP) ? rc : 0;
                                         ^  ~~~~~~~~~~~
   arch/s390/kvm/priv.c:268:25: note: use '|' for a bitwise operation
                   return rc != (-EAGAIN || -EOPNOTSUPP) ? rc : 0;
                                         ^~
                                         |
   arch/s390/kvm/priv.c:315:25: warning: use of logical '||' with constant operand [-Wconstant-logical-operand]
                   return rc != (-EAGAIN || -EOPNOTSUPP) ? rc : 0;
                                         ^  ~~~~~~~~~~~
   arch/s390/kvm/priv.c:315:25: note: use '|' for a bitwise operation
                   return rc != (-EAGAIN || -EOPNOTSUPP) ? rc : 0;
                                         ^~
                                         |
   arch/s390/kvm/priv.c:366:25: warning: use of logical '||' with constant operand [-Wconstant-logical-operand]
                   return rc != (-EAGAIN || -EOPNOTSUPP) ? rc : 0;
                                         ^  ~~~~~~~~~~~
   arch/s390/kvm/priv.c:366:25: note: use '|' for a bitwise operation
                   return rc != (-EAGAIN || -EOPNOTSUPP) ? rc : 0;
                                         ^~
                                         |
   23 warnings generated.

# https://github.com/0day-ci/linux/commit/37ada515878572b10185f577f4bbe9f5621e4227
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Janosch-Frank/KVM-s390-Introduce-storage-key-removal-facility/20200908-020840
git checkout 37ada515878572b10185f577f4bbe9f5621e4227
vim +268 arch/s390/kvm/priv.c

   252	
   253	static int handle_iske(struct kvm_vcpu *vcpu)
   254	{
   255		unsigned long gaddr, vmaddr;
   256		unsigned char key;
   257		int reg1, reg2;
   258		bool unlocked;
   259		int rc;
   260	
   261		vcpu->stat.instruction_iske++;
   262	
   263		if (vcpu->arch.sie_block->gpsw.mask & PSW_MASK_PSTATE)
   264			return kvm_s390_inject_program_int(vcpu, PGM_PRIVILEGED_OP);
   265	
   266		rc = try_handle_skey(vcpu);
   267		if (rc)
 > 268			return rc != (-EAGAIN || -EOPNOTSUPP) ? rc : 0;
   269	
   270		kvm_s390_get_regs_rre(vcpu, &reg1, &reg2);
   271	
   272		gaddr = vcpu->run->s.regs.gprs[reg2] & PAGE_MASK;
   273		gaddr = kvm_s390_logical_to_effective(vcpu, gaddr);
   274		gaddr = kvm_s390_real_to_abs(vcpu, gaddr);
   275		vmaddr = gfn_to_hva(vcpu->kvm, gpa_to_gfn(gaddr));
   276		if (kvm_is_error_hva(vmaddr))
   277			return kvm_s390_inject_program_int(vcpu, PGM_ADDRESSING);
   278	retry:
   279		unlocked = false;
   280		mmap_read_lock(current->mm);
   281		rc = get_guest_storage_key(current->mm, vmaddr, &key);
   282	
   283		if (rc) {
   284			rc = fixup_user_fault(current, current->mm, vmaddr,
   285					      FAULT_FLAG_WRITE, &unlocked);
   286			if (!rc) {
   287				mmap_read_unlock(current->mm);
   288				goto retry;
   289			}
   290		}
   291		mmap_read_unlock(current->mm);
   292		if (rc == -EFAULT)
   293			return kvm_s390_inject_program_int(vcpu, PGM_ADDRESSING);
   294		if (rc < 0)
   295			return rc;
   296		vcpu->run->s.regs.gprs[reg1] &= ~0xff;
   297		vcpu->run->s.regs.gprs[reg1] |= key;
   298		return 0;
   299	}
   300	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009081448.MtYXumwd%25lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--bp/iNruPH9dso1Pn--
