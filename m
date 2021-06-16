Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDFHVCDAMGQEEECT62Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2952F3A9E94
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 17:06:54 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id b2-20020a0cf0420000b029025f56d0b50dsf1111814qvl.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 08:06:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623856013; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hcmfk72N+Nb9bxbICmvWa9M9/z6mUa3QMyvt9VbG2EHXQHa/Tx3yvWuxSH1f3hpClU
         oiWQIYVNwgLhAIcdfDA6A30jW01WIVQ8ZQwKe+AZ3eiXPgQELTreFqWIseZukFUYBPLD
         zQjUtD/KGfdXATHazAbzTbX0YoJg1HBLdZpOYXuEKMl0KTg3hw0Z0m+Z8J06phO0n1zj
         0e0SVxS18f241tZHLpsI7HGVq3InBDHGIC/vA5UK6cNtNiKPXFK27HCDsZW8PlWokbkx
         BftN6XTyFnkmLF4S+mnnPWRfJpx+sJUlCfP+tb01zh1+iAMVS5y7X2TubqdHUrUN0xLJ
         JZgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=TzWQerbla3lxY/u9RdI4n/38M0ipgCuNyLBg5xsXe7Q=;
        b=YoxR6+vHpQSasZrlVlS/GsWAx2ooGwMfxrZSD8HaE8GdiNG27RIeNsuTZHMfNhVaM+
         ntWAd2BnK9GiWy+eDxeiN4Ic6E8HkF8kDeW3FOoUuBjR/xFALMC79CgcbkJua5WhMO0I
         O9SAh6kaT7uoGSQ6A81reNXZqY2GqzMxrhRGlUCERw0E0uYH1Ipj6aNeenD2d66g4QWj
         WR0bdSRj1TQg+ca1rE6yuC3sH09MthXc6QnrxScAeJEliT+eXpOKMZlRzp16iIpVASSz
         7KtSW4MjJigdqxXARfD3C/SJYPaRToVgmfmCBzcBEtLtkdXP6sFxq0EMtQFfnUqI1ThP
         PVPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TzWQerbla3lxY/u9RdI4n/38M0ipgCuNyLBg5xsXe7Q=;
        b=TMaLi2n3gQGiZ7A3LuPBICkvhjZ+xVUVbi3L3LA4CycCfNfha2OgTUD1kfiP/QwtT3
         lfsKsRK7+lzyzqS5hxQmZ4EXJhYPmI4+325dQfowJyu31pCLm5CLBen4Jlg/zV/4z3ql
         CPGg5K/5lp23dGFLAiydqt5jBJa0jUZZvWd4W0kAGjGb84yiNJRuRkzmquKuAPCwjR9b
         5Ey+Ul2n81qN+j6kWsNy8z+ee+8ajnqnmeWKitoYbXpvDSOvwoSlxcrvA95KjrQ3o0+4
         jhuEIMU0Z2vbXUcfRjzxQXdCpHgiW+TtikuNNt1eJwwURGhgwv0XyTPXZsjIipJgvzZZ
         7Ejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TzWQerbla3lxY/u9RdI4n/38M0ipgCuNyLBg5xsXe7Q=;
        b=bGJ5Vp/7h5xR6+N7KygaEYVQj++zN2Kc/fJqZ+taaYnTkJnz1rFJBbO6LXlDfcOqUC
         CMRmF39X5wEi2IStMoCmnzuQl6GeTCwVRlGi/qH3tgCKKBSNDacviELEwso20W5A7lqZ
         DSPOc6ppFQdrk2iWC6Wd4xOqZ0mzrtXy8R5ja4G6JVW7LPNu651zd6UfyxNq9QX3iu4J
         XsaT8t4WzdEooolkw2DnziTMD9KAgnoRs6zRH4VmXe9t0noUVQQKPHr5aHugZ7k1EC8W
         UaVXhQJtVK6oOxrDum/huOWJIzRsFO0QBHJEciAOJe8v9kYEHuxGPgV0RlA1fXIsMSvj
         WqFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XHrop7Exf5Pan9RhHXH4M0ezQ3ANcIObLSGnufzyrrURaWMWe
	r+nM+4MgbWHg4rRk6kPswIM=
X-Google-Smtp-Source: ABdhPJzN6SNIJ2HqD5FSfOZsC4Ww0aL7YR1aNXJ7SJJeQ3WMc4J5lUtGptVihovyIM3ANjUyg07mlw==
X-Received: by 2002:a0c:cd87:: with SMTP id v7mr495128qvm.42.1623856012857;
        Wed, 16 Jun 2021 08:06:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1319:: with SMTP id o25ls1931301qkj.6.gmail; Wed,
 16 Jun 2021 08:06:52 -0700 (PDT)
X-Received: by 2002:a05:620a:1127:: with SMTP id p7mr481476qkk.197.1623856012293;
        Wed, 16 Jun 2021 08:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623856012; cv=none;
        d=google.com; s=arc-20160816;
        b=XYbGGHBhpTGeUbYw+7NgN8s+S9ypdtvrXyRAiSCti5uZcG6xLWODwoRvPS5eldG8n1
         xzfTdGuVKWriwEoI3ftVVodKqyJfREsmYeUaC4sBExgD+iLNgawZ2hZkrK0eRrCfIoXR
         XaikQZXajQN/JtqIb40NkPtMy8Ci6jpfw5vP0haQ5v4w86viuPfAFSuHjt/FkeNcrO3e
         Dr93MFYQCR0C2UbUDoYjkg44g9tmfMObDFPNxvCOAE4OzZcrmv/Po+qqmgRJYYWOXNb1
         Hm2HSBa9+6Xrbomq3dSP1HbobMm6byq/juIymtwXXoqHEruPDIStdi85c/raPWnzDIrE
         kG8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=eeiWHaSaHCG+C1kcRrJajDHFnc7WmcYPl7dj7zg46dg=;
        b=Jw3UwPFx2jw4p+ywZcCI8uYjEQk7NGIGtptVOU9UvKP0OsR3iNXX7EGrUz/xA8O4Co
         m0Nf3z8W9/2iqG9HYTu6YCTLXb0LnGfP57k8M7gJ6h0qI33JPTQMUqPqe5MKv0TQLSvR
         eSudyl7moY8gaRuF6lAWEK7Rj7MsK/LwE6wysZomClBaAfQMaMiGvB9kI0l1+D+AvPZ6
         GuqB7TGuLO4sC7A2d+TNpKUalkrlgrFJh+LWhck6IP89VIrx+XuMrNsfthVCsz+klklX
         hDSKk2Kn940i+AMx8eGd/fPz9swdQdUq/D8p2Rhy55YlVmYqh/3IlpxA1hwZ5hlt/sHg
         gC2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id o23si211784qka.0.2021.06.16.08.06.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 08:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: qHjxP5Wf8tQZDTzDIb4nJC5RNcCwraqB6HNTyUyKLU5mBSaF8TLlrY7IANjolD9G8yXJ4Pngim
 RBO/nU8brmgQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="185884463"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; 
   d="gz'50?scan'50,208,50";a="185884463"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2021 08:06:50 -0700
IronPort-SDR: hgTI1wY7veREESb7F3FqzSnigVay2gWv8f0UuPEyrfbAZnE+1brpsuGQRrIg/MBFRVuTg49koY
 5RKG9nwCUU4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; 
   d="gz'50?scan'50,208,50";a="637483625"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 16 Jun 2021 08:06:45 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ltX7t-0001Go-4b; Wed, 16 Jun 2021 15:06:45 +0000
Date: Wed, 16 Jun 2021 23:05:59 +0800
From: kernel test robot <lkp@intel.com>
To: Casey Schaufler <casey@schaufler-ca.com>, casey.schaufler@intel.com,
	jmorris@namei.org, linux-security-module@vger.kernel.org,
	selinux@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	casey@schaufler-ca.com, linux-audit@redhat.com,
	keescook@chromium.org, john.johansen@canonical.com,
	penguin-kernel@i-love.sakura.ne.jp, paul@paul-moore.com
Subject: Re: [PATCH v27 21/25] audit: add support for non-syscall auxiliary
 records
Message-ID: <202106162232.uYB8x4sc-lkp@intel.com>
References: <20210611000435.36398-22-casey@schaufler-ca.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline
In-Reply-To: <20210611000435.36398-22-casey@schaufler-ca.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Casey,

I love your patch! Yet something to improve:

[auto build test ERROR on nf/master]
[also build test ERROR on linus/master v5.13-rc6]
[cannot apply to security/next-testing pcmoore-audit/next nf-next/master next-20210616]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Casey-Schaufler/LSM-Infrastructure-management-of-the-sock-security/20210616-133254
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pablo/nf.git master
config: s390-randconfig-r022-20210615 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/c6c28a65377a02c1aa05846e32c56cb015da9904
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Casey-Schaufler/LSM-Infrastructure-management-of-the-sock-security/20210616-133254
        git checkout c6c28a65377a02c1aa05846e32c56cb015da9904
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from fs/proc/base.c:68:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from fs/proc/base.c:68:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from fs/proc/base.c:68:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from fs/proc/base.c:81:
>> include/linux/audit.h:557:1: error: expected external declaration
   +static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   ^
   12 warnings and 1 error generated.
--
   In file included from fs/kernfs/file.c:16:
   In file included from include/linux/fsnotify.h:16:
>> include/linux/audit.h:557:1: error: expected external declaration
   +static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   ^
   fs/kernfs/file.c:128:15: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                   return NULL + !*ppos;
                          ~~~~ ^
   1 warning and 1 error generated.
--
   In file included from fs/configfs/dir.c:14:
   In file included from include/linux/fsnotify.h:16:
>> include/linux/audit.h:557:1: error: expected external declaration
   +static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   ^
   1 error generated.
--
   In file included from arch/s390/kernel/ptrace.c:20:
>> include/linux/audit.h:557:1: error: expected external declaration
   +static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   ^
   In file included from arch/s390/kernel/ptrace.c:24:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from arch/s390/kernel/ptrace.c:24:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from arch/s390/kernel/ptrace.c:24:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   12 warnings and 1 error generated.
--
   In file included from kernel/module.c:58:
>> include/linux/audit.h:557:1: error: expected external declaration
   +static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   ^
   kernel/module.c:4722:6: warning: no previous prototype for function 'module_layout' [-Wmissing-prototypes]
   void module_layout(struct module *mod,
        ^
   kernel/module.c:4722:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void module_layout(struct module *mod,
   ^
   static 
   1 warning and 1 error generated.
--
   In file included from kernel/fork.c:53:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from kernel/fork.c:53:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from kernel/fork.c:53:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from kernel/fork.c:63:
>> include/linux/audit.h:557:1: error: expected external declaration
   +static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   ^
   kernel/fork.c:751:20: warning: no previous prototype for function 'arch_task_cache_init' [-Wmissing-prototypes]
   void __init __weak arch_task_cache_init(void) { }
                      ^
   kernel/fork.c:751:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __init __weak arch_task_cache_init(void) { }
   ^
   static 
   13 warnings and 1 error generated.
--
   In file included from ipc/msg.c:36:
>> include/linux/audit.h:557:1: error: expected external declaration
   +static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   ^
   ipc/msg.c:496:20: warning: implicit conversion from 'int' to 'unsigned short' changes value from 32768000 to 0 [-Wconstant-conversion]
           msginfo->msgseg = MSGSEG;
                           ~ ^~~~~~
   include/uapi/linux/msg.h:87:38: note: expanded from macro 'MSGSEG'
   #define MSGSEG (__MSGSEG <= 0xffff ? __MSGSEG : 0xffff)
                                        ^~~~~~~~
   include/uapi/linux/msg.h:86:36: note: expanded from macro '__MSGSEG'
   #define __MSGSEG ((MSGPOOL * 1024) / MSGSSZ) /* max no. of segments */
                     ~~~~~~~~~~~~~~~~~^~~~~~~~
   1 warning and 1 error generated.
--
   In file included from security/commoncap.c:6:
>> include/linux/audit.h:557:1: error: expected external declaration
   +static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   ^
   In file included from security/commoncap.c:12:
   include/linux/mman.h:156:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:133:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   In file included from security/commoncap.c:14:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from security/commoncap.c:14:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from security/commoncap.c:14:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   13 warnings and 1 error generated.


vim +557 include/linux/audit.h

   553	
   554	extern int audit_n_rules;
   555	extern int audit_signals;
   556	#else /* CONFIG_AUDITSYSCALL */
 > 557	+static inline struct audit_context *audit_alloc_local(gfp_t gfpflags)
   558	{
   559		return NULL;
   560	}
   561	static inline void audit_free_context(struct audit_context *context)
   562	{ }
   563	static inline int audit_alloc(struct task_struct *task)
   564	{
   565		return 0;
   566	}
   567	static inline void audit_free(struct task_struct *task)
   568	{ }
   569	static inline void audit_syscall_entry(int major, unsigned long a0,
   570					       unsigned long a1, unsigned long a2,
   571					       unsigned long a3)
   572	{ }
   573	static inline void audit_syscall_exit(void *pt_regs)
   574	{ }
   575	static inline bool audit_dummy_context(void)
   576	{
   577		return true;
   578	}
   579	static inline void audit_set_context(struct task_struct *task, struct audit_context *ctx)
   580	{ }
   581	static inline struct audit_context *audit_context(void)
   582	{
   583		return NULL;
   584	}
   585	static inline struct filename *audit_reusename(const __user char *name)
   586	{
   587		return NULL;
   588	}
   589	static inline void audit_getname(struct filename *name)
   590	{ }
   591	static inline void audit_inode(struct filename *name,
   592					const struct dentry *dentry,
   593					unsigned int aflags)
   594	{ }
   595	static inline void audit_file(struct file *file)
   596	{
   597	}
   598	static inline void audit_inode_parent_hidden(struct filename *name,
   599					const struct dentry *dentry)
   600	{ }
   601	static inline void audit_inode_child(struct inode *parent,
   602					     const struct dentry *dentry,
   603					     const unsigned char type)
   604	{ }
   605	static inline void audit_core_dumps(long signr)
   606	{ }
   607	static inline void audit_seccomp(unsigned long syscall, long signr, int code)
   608	{ }
   609	static inline void audit_seccomp_actions_logged(const char *names,
   610							const char *old_names, int res)
   611	{ }
   612	static inline void audit_ipc_obj(struct kern_ipc_perm *ipcp)
   613	{ }
   614	static inline void audit_ipc_set_perm(unsigned long qbytes, uid_t uid,
   615						gid_t gid, umode_t mode)
   616	{ }
   617	static inline void audit_bprm(struct linux_binprm *bprm)
   618	{ }
   619	static inline int audit_socketcall(int nargs, unsigned long *args)
   620	{
   621		return 0;
   622	}
   623	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106162232.uYB8x4sc-lkp%40intel.com.

--zYM0uCDKw75PZbzx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICFEGymAAAy5jb25maWcAnDxbd9s2k+/9FTzpS3vOl0YX24l3jx8gEpRQ8RYClCW/4Cg2
nWprW15J7td+v35nAF4AEpRztg9NNDMABoPB3DDMzz/97JG30/55e9rdb5+e/vG+ly/lYXsq
H7zH3VP5316QekkqPBow8RsQR7uXt78/HafXI+/yt/H0t9HHw/3UW5aHl/LJ8/cvj7vvbzB8
t3/56eef/DQJ2Vz6vlzRnLM0kYKuxc2H+6fty3fvr/JwBDoPZ/lt5P3yfXf6r0+f4P/Pu8Nh
f/j09PTXs3w97P+nvD95VxefJ6PHy8/fyu3V9urb42g6fSzLx4vt5efL8fbb9f3ofvrtYjT+
9UO96rxd9mZksMK49COSzG/+aYD4s6EdT0fwX40jHAfMk6IlB1BNO5lejiY1PAqQdBYGLSmA
3KQGwuRtAXMTHst5KlKDPxsh00JkhXDiWRKxhBqoNOEiL3yR5ryFsvyrvE3zZQuZFSwKBIup
FGQWUcnT3FhALHJKYHdJmML/gITjUDjgn725Upcn71ie3l7bI2cJE5ImK0ly2C2LmbiZtrtP
fRLV2//wAWZxICQpROrtjt7L/oSzW5xKTiKBQyvggqyoXNI8oZGc37GsZd3EzAAzcaOiu5i4
Meu7oRHpEOLCjSgSP42znHJOUUWaXRt8m/vt4hX35whwD+fw6zuHOK3d9Ge8ODehuSHH1AEN
SREJpQvGWdXgRcpFQmJ68+GXl/1L2V5cfkuMA+QbvmKZ3wPgn76IWvgtEf5Cfi1oYep/nnIu
Yxqn+UYSIYi/aJEFpxGbdQ6L5DALKcDc4QIkimpNh0vjHd++Hf85nsrnVtPnNKE589WdYsnv
1Beo1dZVC9KYsA6Ms9jYUkZyThHewsx5Azor5iFXJ1S+PHj7xw433UHqJq/aDXTQPly0JV3R
RPB6d2L3DObYtcHFncxgVBow31SRJEUMCyLqOHqFNKkXbL6QoCmKs5zbWlVtqcdCc+WzsHNI
FEDyd2aYKHVstyQRjX61JGqD8NO1O6Rq5dTwWw12aj/iiiTL2apZKw1DhxRAv/I4DagMgJbm
hrWFGeDeRCkJzDO1WayJgZDGmQCZKsPesFHDV2lUJILkGyezFZWDu3q8n8LwWkp+VnwS2+Of
3gkOw9sCX8fT9nT0tvf3+7eX0+7leyu6FcthdFZI4qs5mOlTHUiZEAFyMMTAA+Ai9cGAIJkY
xsjV1No6Z04N+gHuG8MArDGeRqS6rmr3uV94vK8jAiQlAWeyAD8lXcPFcImWa2JzeAcEHpSr
Oaor6UD1QEVAXXCRE7+DwIm5AJWGw41j0xwhJqEUHCid+7OIcWEqoL3/xlwt9V9untvt1zB1
Sg4JsOUCIgZqBh1Ris4bbtuCheJm/NmE42nEZG3iJ62eskQsweOHtDvHVB8bv/+jfHh7Kg/e
Y7k9vR3KowJXm3JgLaPBiyyDaIfLpIiJnBEIBn1LlavwCrgYT7604CFyG96YCJpgYGXEhv48
T4vMEFBG5lTfRtNWgO/y552fHRepYUv4w7hB0bJaobuivM2ZoDPiL3sY7i9MDkPCcunE+CEE
uiQJblkgFta1EOYAh2JUK2Us4L3l88AMwipgCLfnTgmkWQS0hVPBh2cP6Ir5lrGsEDASzYnT
Utac0Tw8h0cjPbhwzLjvWFb5b5ebhPAHfD+YOXNQgbrInTwov564do4RUWJPA97HTQvC17Q1
lwvqL7MUFBxdNKQKho1W56hi8VqZmgXAbYIaBBQciU+E87TBx5GNrZRwNioizA11Ur9JDLPx
tMjh5NpoMQ86AT0A6ji+1bpgOPgFnB342qNcKYZCXFhL3nFh8DtLU/SbyiiaZiLN4IDYHZVh
mitFSvMYzICtiR0yDn9xuZBOdKt/g8vxaSZUJo1m35x40BvFYH4YaoM1Gwq7Gx+GC7jTkXH6
WcrZuorZDKiyyN3fMomZmVAaoqFRCOIy1WpGIN4NC2vxQtB15yeoaify02A/ztb+wlwhS825
OJsnJDIzcbUHE6DCXxPAF5YBJczI71gqi9yy8iRYMdhCJUJDODDJjOQ5M8W9RJJNzPsQacm/
gSrx4OWpAibrUit/Erqu2xLkYqgtp18tBYlnNAic91SJFhVWNllBfbYIhFXlKgbmUr8OlaqK
T1YeHveH5+3LfenRv8oXCLYIuF0fwy0I5tsYyjm5souuJRrn/YPLNFFnrNeo3aixFo+KmV7Q
uo2QwBLIFfKl00TwiMxclxPmsiwhkMHB5+C/K3fvHARE6M0w6pI53LQ07k3S4BckDyA0DNxs
LYowjKiOGJTMCFjtAUZVcAUJpmDESnEgcgtZBErtGKeMi/IIVtJpF3sajY+N0PMOshRp+3FY
fobqlwSMGKEo5qDgPOr4yzgpyNKXOqrt4eoMdnFLIaN0ICy7YwCb2yTVtmx7NufCsE0q+Vex
oRHUpWADkBUIU40rZgeQBYh0Rk2dm16Puq40jWHyELxdw4nJiK6+RaDEYFMuresZAfMZ1jgM
ERogdSuzw/6+PB73B+/0z6vOgIyQ2JwtVqzfXY9GMqREFLnJt0Vx/S6FHI+u36EZvzfJ+Prq
HQrqjyfvTTI1CRpNb3hwXqaWgXNoXN3lW+uFXeu5i2c19nJ4OrVVUdj5Pv52mRebAE/0HPb6
LBZP8gx+QIIV0haghcMN9fYCUjs3nVt6FdIlvKuLGRN94+4yi6abTHKVUNxcXTQqlYosKpTl
stM60x4ElNdpqH3BeSy6dz72uxCIIJddWJCTWytIU1ABZgfS3o1VTbuDg3KfBaAml4OoqT3K
ms6wVIu7m7HxBrKka2qlNQogwXu4Ilelwo17a0aoinGSzqwUAmLWFB8s3KkDujW0h0ZIo6bF
0BkjJNM1nbN8yjTG5fP+8E/3nUIbcFV+hcCtStK79r1BV7fPCPYIhKiLDUckKB+/ubhqs3l/
qV1ZJ9HqAtVPOS/A4d9MLpvxtyRPZLCBFBEcWD2k2a61G12e/pS66ptfA2ZV9v0F91Gz3HGF
D9so3NVZe361ZPD2/Aqw19f94WS89uWEL2RQxJnJsEXbpky3teda7Q6nt+3T7j+dt0NwqYL6
kF2qimJBInanSnYgMMqt254NW0Y/jp1wkmVRADqmtMktEfDgcrHJIFsKXam0ft9ZxR1/BBAs
3PuL/lOUxpiJhwmXkGTbhdQG20tYEEj4JvGlWR83oRL/dEyFIRnGQ2upAhBMKe0JViHrvW4h
g8kKDiAA3VxSq3TVUKxUyVctz1IrgW1IIJSykzX7YC1GzJIjjlXHUQBA5GnkMuyIbzWj0r2O
bumaYfn0eCqPJ10qNIcXyS1LsEAahQImcl6GdrT1CLo93P+xO5X3aHY+PpSvQA25ird/xXWP
3StiZ8TaptqwOn6Fg88tB7DUkaZDAr/DvZOQSVAr1gf7IWCeJd1w58bMM6JhyHyGSVQBOTQk
0lj/8bEU37GLmLLhayzoq5zZFUl92N1wWENzKtwIDZVwt8O6uGHiwyJRb2uS5nmau97aFJlV
hWhf9NSMC8vrKiSkKljJEWxepAXvix5CBfXIVb2Bd0SAdeEQYn8WburSVZ+AU1G9QHaQ+FzF
GxuP1XypH+s7dNMJ+BYQNxyiDCWIG4KP7h55LOM0qN7Ou6LN6ZxLgkqtfI0+TbB+XUlVFQMT
pJJzHO+CqxKjnrOy9z25W/p4BmtWO9q8Us6JWMAaOi3C5NiJxleNd0jA6ui/9Q5I64x+X+jV
lTSr1S3Qh6Oy7g5FNU43MAzggrToxxbqxRJrt/oFuG6KcIiKUx/j2TMoDMiEXSmvMI6rHom0
flE05zv7pjdEoS6IS/FBGCA2IMbq2w/MA5du4O4mGIShTVoUc+o4AC2HNBQygHk3HSzcjDqU
oz4Lzec2QBURWB00ZlimRDXsjEa3TNdwA8H2qKd7O35TNLg04oAkvU26JI1E1Ap1DNu7pBHT
vTdN/cOIHCOsq+CjDcSFATe6WFLshmFzXsDekmDaQ5DaSHZrXtqq4MkMeQLF9iommRF/1j67
gZ4d3MbrS20m0jAEc+gK6C2CfqTdKpUAsyzqhCK/NUrGZ1Dd4frYncMtlNmatDRriy7f2yyi
Uwk/32SuHawCnkoMO4fqSFVZFLTcKrnO/XT18dv2WD54f+qy6Oth/7h7sh7lkaiSgGNphdWF
Pyo7LQ9dnDPwOceDdfzYfYdJNEucFcR3IqVGPeA4sOBvBguqNs6xVNy2zlW32CrC6GME7+zj
uzFxlb0rmiJpOjFcgzXaPbzvcAc9ca1XoJp+7vcRPPeb1jf7ZGoCNnfmKBW67sVSZv2HCAc7
zrqEzs6xLlH1RNadBFX4Fh9GuW4BqV48JYuVsrsnVqEg3ACxuPnw6fht9/Lpef8Amvat/NA1
3Kq7IoLAznzpnuF1NX8uJRhndZuk7YsQxX3O4Fy+VnmDgakfpm8x9rJR+I4543Mn0Ooqax89
BZ3nTDjfQyuUFOORKcOaAKvq7qeAmgLC01SIgXK+2kocYKVFBxq5zcPtTHRXrXbOsEMGTNlm
aNaazE95bw6YVsZfz7CNZi50v3Src8FyeUZciR6ida9rbWitsMmJliEoQNX3oKvl28NphwbH
E/+8llYmqN5L1CASrPAJ13n/eZDylrRdnobMArdVqs6KJr/xVxUTqcRbV3TStnfFSB6BjqVV
xRAyEtXv++xALjcz85xr8Cw0Qnz4IesTrFs82iMA5FADQ1sWsphsqzZ1zxqkRsx+bCEd18eT
ccdTVSfHM+w1zjf2XR6ikLPFGaJ35vixCewGzUESTlbdaNgkQ3dylhlNcJ6diuY8Qy1Rr63D
pFW93WflrCh+AD3Ic0sxyLFFMixCRXZOhAbBeXbeE2GH6KwIVUvVeRlqkh/BD7JtkAxybdMM
y1HTnROkSfEOS++JskvVk2WRvHtDmuiYiBTLJXl8a4RQqitEDdYZmGn5wHtDPD6AVCwN4Nqk
QXd5wD5IlpkUbXOastj07/L+7bT99lSqj2c81bNwMmz3jCVhLDAN7KzSIlStzhANgOyiIP5S
5Za2tRBG9dotqxm5nzPIQp474KpRzZiyW7Af2ov5mBJvX7bfy2dnjbN5NWmXUY2nqhspg8BQ
PaEZ2Vf7CLOGmM6M0VrUCv6HmWf3naZH0S0A0FiFhOqxRvbxIeFCzs0IUnVxLinNcCx++GIo
m/6awOweNo9S81ZTVW+JvdHvwKsdWfG0TdC0nicDD2huZkCyqVVkG8TwLGJCZkLJTb2QXrim
rsjioCLtVRpU/cHVhYjNKznFS21VmWI2zzty9VWBVtbZcD0BniUJglyK/tvvkseONWuhKSWC
Y1XDby5G11fGC7Oj2uR+VYooRIYEwiYnOsyBayyLu9pF1Vuy8T5FBntEG1xodmwCUPXw2SBg
mvCb8bWlNEZZzDH9XZamUWse7mZFYD663E3DNHLFvne8atYyiSuYMmFOmYD8aZ7bpVTV/enq
aA3qDieshS21jrQBOs2xeIgruXJIuMtSWOlcY8wzQXUdsGqHsl9UHSatXTShFqP6EbT8a3df
esFh95cVpusquc8spn3mugi+j2+/zyZdDOz1lsr8j/fbw4P37bB7+K7ylfb1aXdfseClXUtc
6LLVgkaW77LAVa79wTyqlYizgewMxJ4EJBoqNED4r+YOGXhpUEr90V5vP+Hu8Pzv7aH0nvbb
h/LQchzeqoqN5WlrkFKJAL8CMHwkeAzSrGZtox2nHiv0bh2H0NLVBQ1TObqcNkqlihuYfxsu
tBEgprfNpz+GYBWcrnLqFq4mQO2tRkttmt2ijuVXSEKXBX5wOfCsp6bSj7LVhKq+YmpcDafn
Z2o+IMO6fSFSPU/v0QzRqyKCH2TGwD0w09HndG45YP1bsonfmqEKxrOY9YBWlFnDpsZgfNLj
C5JrLQlNLUJUSCGdN9qnzcpk/xbpb8fejt6DuudmHr5g2CxhOC4NMJpM6++6jOGNqBLQsGfz
lwT9RJtkA2P89KVGtLVaRc/ysMI5VUMRFbP1OZpYuIx7GpoKm+LnbkwMqARgl+nsd+PdIayO
yJwA1DePyFAVCS5DvyiWFBBxw49hjKy/L+29BN/lJDacGvxC16OuNvb855EVWdl4rGM6ZdWb
5oeoLhb+D9B9uXB1F1o0Nx+e/rP/eHgqP3Qmab7nGZqhivFcbrQWaZSmWd+15bPAe9gdMQkA
r1Peb9+OpYdffGHVbn/wGDpEPeSpvD+VD2YJrZ4aOHCHT0GexjJbCj9Y9X0D/4T/xMC3p/39
n9Xd8R66LrZeYZ1Zxx34nKPemOaNcJee63pbpWRq2QTyB493W5oQ2mnNUCCdyxCx6MBDMgMz
yLtQ+/vZlfrYPp9Td4uJxYlOunbH+74Z4jThac5lxPg0Wo0mQSsIElxOLtcyyFLhBNo2F7xX
vLGtK+zhejrhF6NxSwbWM0p5AU4dzAp+ZmW+fWQBv/4ympDIsG2MR5Pr0WjahUxGLaTehADM
5eXIPLoaNVuMP392NzbWJGr569Ha3f0Y+1fTS9ctC/j46sukZcafqJ7zqskNUkDQ036bm4ZL
IiYXhnA0MKJz4m964Jisr758vuzBr6f++sqIZjSUBUJ+uV5klK97Iygdj0YXSkx1um6zqb/p
Lv/eHj32cjwd3p7VRxPHPyCIefBOh+3LEem8p91LiVf8fveKfzW/m/x/jHbpZKVkambydCoP
Wy/M5sR7rEOqh/2/XzCs8p73WEX2fjmU//u2O5Sw9sT/1WjVxOYGgqFnZjhJ6i9SK3ReZSRh
vvNKWRdIWxmfs9q89E5YPQvFqdHzkxMW4L8iYH1XAlT2L/vzBwWpbGZtZdSy1Xq6X/UXkOKf
//JO29fyX54ffISz/LVv6Lj5CeYi1zBhbr+hdMW4zRDrU94GajeFmuw3d964sQj38V8XIdYn
PQoepfN5x9EoOPdJogPRvr1HkYhas46dU+AZc8ldcvxnTwbgEZvBHx2OEYH/8ITdAq5RedbM
1Tb6ddjqbAiif/WtxkA3LerCwqmKLsVr4sjA5aFjlwObqfKDESGp3/3PnCp4dYp8sNhQ0elc
AWJrBnk66faP1BwFrgqL9mjaWTaiFz6YM/0ma8Gw1YClNixTF6oBYWCCsU01cYtIVnHHncoM
OOspFnt5fTsN3nGW6H9Jp/2wHQFgwAPnR7YKGYYYUUV1imjhdNluGTurPpokJiJnaySpzWJx
LA9P2LG+w6/ZHreWf68GpZC+WmGyDQexkWI9iOV+Tmki1zfj0eTiPM3m5vPVF5vk93TjWJqu
nEDUvGdT9L0CSUdkS7qZpSR3x9wGj4MCBfa4YHblsYZJkhCwRs65W5qp62616MB3Tx2w8/P6
6Swn52aehxM31/OcuRTIwss4a29DiylYFEG8b1S+Gpxq9ia+cC7JWUCx8dlZHWmoRBxYJb92
btUrc14et/hdrPM7xYYkJnMaRSRxs4iNI2nu+iLTpplhA01fNhwLzWY5oN3WLQvghwNzt6DJ
oiAODOGXo/HYsQxel8J5OCFn5GrWtxqqd9VZA9XotMDPNvB6tnwYQNDEz18+X5vz9rEYh7m/
qLJIXf+Yh0WRgwkZ25mDhRcxjWS8tqISi6BIZcbWPnPpgUk4Kybj0XjqXkYhJ9duJH52ge2S
zE++TMdfBog2X3zxf6Q9S3PjOM5/xceZqm929LBk+TAHWZIddURJLcq23BeXJ/Ekrk3ilOOu
nd5f/xGkHiQFOr27l04bAN8QCIIASEJ7apl6KihWto3FTKmEdU1L7YCIEBgnTeCnn9YwNVcB
XuRMy8SRdyEp6V1aJaahJkmNyzKFaBVmYfPJXAiikS1LIWkiSLGHI5frL2lN1zhyVRRx2hjG
yORXUpoGeLdjQPbv1G8+G0GapYy3DK2ANTO5x3HUp7uZb5u6sFrn33ABqUzOfb10bGf2OSGT
kp+tRVbg3LQNI3aI3AaWZd8iMDIbO8jadmAZh0oiJhtNcagyHaG2GueJESXZEnxq03Jq6A1d
Ob5r+MwJ/2ESjWmeNCmWAkSp4n5mO6ahlklOwB/4s6Vgh/ll7TWWj3eT/7/iIe1m/DbNTQP5
KYm6jetg1jTtuqL18P+ntWMKzZVJIZAQEsN90iqjcyyr0Y8EIwrD6grkzNhhgd6nKW6OlWkr
sq8NeXXkz5gdSkJcG1XJqL6lYlS17bhG5qE1WaLXlwpRE/ieaXJK6nvWrDE18C2pfcdxP2nh
G9fd8Baq4o60u61hK06/Uq8xiMtvcLcrS+xWn9fSJAko01PsKW68awm4bhGFJW/CqC4t2K7u
WXqbidtYbCB1zQ6zr3rNhITB1MP2eYFflWAmZvuLepUnIeMkKnDdWSLapOxAoB+Z7pv6y3zc
pTX/Y6yvjJaBN5vqoyy3ZOjnCCPaf0V6VhWQQRAMPTAKnSQOZ05gMTWirMGsPeprGDeZe3Pp
GJM4/hw7DPV43/HDcdURCV3TVtJ2rto4PpMvbe8+o/Q9jBKhm0njbdEVSaeaHOMg9e4SIJQs
NMjSkmJzOogQoBqlE7cGVJ3etkcQR4e4iv94C8NTKbRIbFEEyvM6g+Xd4fLIjbUQBa4b6PgQ
fig/4d/WiK6As3RRUkUcCngVbg2WfcCyIsQU2i0oOA8zMpRkbdqlViFJtPQyLWSfU88LEHim
GN2xaekdozG7k7B+PB8uh4fr8TK+zKnl6ICNnOK5YAyRJcI5SbidUZmyI5D82rYSbIjbqiUE
OAPGeMTAOk+bebAv651i5BIXGxyMTnUWM8nOPQP0kJnBUAeXtzXqi3S3iUapUsVBQgRWyJft
EjyqK16jupTt3d5oXtKSLNoEgcIgsgzlvY/Njp67ogcN/vnDrVKPg9hx1ONsI3wgh88u3Laj
xO+pwnwl8kTwlGWGi9EHjYfGl6N17jozKaeH+M05TFYWBNTg5gNYNNUKjbJSZVYOGU02h25q
x7Faask43mPaUhhDEGCIzahcsUSzckH0fh2WSX/NwqcK7lQmz92XOliAhyq7cnu2h+GbmETi
ocu8IZF0nwC/hI8ehHn2BldS5PyuvlIEIFS9IWtMdWjSLNsB27/qEHDRkATRWKT0klxwZ12t
aa0mtFEwkNGwd7kSxlum247N5fJGx37sueW2dY8ddlsnMufe4Uie3Wyj7PYMTNbY2RwwrZMa
CBbpS3bA03C9UHvEpKPsxdqD2qtTvU2BA9+WtcENkREJj6zWOqMUF5gwW2mnj24TkCaxr1D2
VVI9nO6o+kOZXrER03TycH67Xs4vbVTQAH45wS2tzNlQBcw15nRYKoKd/TRnKa3Lllx4IZa0
a2vMIFBPlPHsEfdcfg3jkVB8m0AxsJHLDbWvUZwvclsCW5esG+AeoiGSN+60Xt7tmLbBEwHl
SQ2vHYDDMBeqtA5JCfve9czGeZxcn4+Tw+MjD8w6vIhaP/4h34WPG+v7nuaw/+hufwN4mGIB
2jPZ4LjUCkaSvWJj/Th8TN5Pbw/Xy4sk0ocEzQaSXk9h06cEH7YA7uAOjirtWwzekF65oxjS
1WiOiECAKU+gckXiCmhwOeuA+41tKkPCZuZy+1ovZ3gTx7/f2WIpexinD+OS6WKSeUeqxcKg
TqNByyice64BqmXd7zEzvW5x4lKO2hxel2nkBHpqNEkAaKMTvjzLeDzqwVFhjJWTJAnc4/hC
TczXalUxNQ1PCClmqYggWlbaP9CKexYvttwHVQncl4A8aXBYKddK4L1EGIJnyoUc+JgI4lVA
XE+20ysW0PFFdudhGsZs7wlrtpdiiiR3eOUVyf4ScIFccXayfOnepq1mH20dy/bG8Jg6M9k9
qIPThXIS7upnYOxivS20+OrMmka6qNUQum1OR8f1fl3GIRsgTPGNhsBEO7PUyw0Nh5+WunEw
omBuYaajjiIrg5kzk/ymWngrw3Xq2vU9G4NHU9t3snE9cQKZvwreFXvqez423WxipraH6Q0K
xdwa1w8Ix5uZap25mOYrUXisXbRWL5hbhlq9eYCpjzKF3zQoX5GFO8WvBbp1XYXrVQIT6syn
mPjtqqrq+dTzkK7H8/lcMTXeJRWRE9q0AJFPitaKj2OHS3gi3ByOifAFFsslW8ksZGxH/7Ck
s0VLXmDp1DskqMs8yqiuUlVh6Si6iJ5VAa5QSbnfpqirAEbP89tzT/HPahaJjuBq+UbVoyoR
fN9FrEUgWMBTVPAPfiCTKG/2iW3Byyr5al7BhKz16DVZtnblelbgr+vEhRSn1UE0g1gPzott
uCvkd6p6lEgzLtKoj95F6KmKEizcTF+DSqwRuot/4hvg9nB9eH48P03KyxEe/zh/v05WZ7aN
vZ1lhaIvXFZJWzPMJdK4SgBJ05AhakR5UZSfU3H/RPkLxwhl5ss13+yfLCba0efHFK7Eg8T6
RX5FwVJLkqt9mlZwhBqXJXDb79hw7SQPN07DlRMEfQHcNpmsgD9RHaaKRkcxBsJdrrK0Um4a
4OUdgHGdBHMGrqLOlK+8l7bPkx6hHCEh+ZiHWf9VEv8zki+b6NYdAvvSi3zX9+CHUpaG+e7m
DYQQSaVUfMCQKNnfL2IU15DSMOiUFPnnoybkJg2fa+5CjqJJwlhlH7GJb2O/Ryem1eXw/nx6
GJ0No/Pbx/mFuya/vxx+tBrt+LQqXN4j3WqlgNnfbE1y+kdg4fiq2NI/HE8yxnzSeh9xpPde
HOXTeNxRBpQMA2k8KKF1leQr9Q0WhjfZ09dQO2JnYzV2DxG1xzL6fnw4sRMBFEBOGlAinDL9
DLuG48ioWit6TA/co29lcTTT+ZNRmXWVGIKX+EQk2X2aG9ER28cML2MJdMp+obZowBbrVVip
E09CyASw03sZcWY11bMTAYVKRWyNVkVegSowhGD0MDZJkgGakSeEAkypIsnYx0U02Lf7ZNS7
VUIWqcHDkuOXFXaW4KisqNJirXV+k27CLE5VIGtYOFuo0F2iArZhVsv7pKgv2TIBl0YqeLVr
vY8VaBqF8YhN0ho1IDPMl1Bceirk9TbN70Iz39wnOeSrqtHIdSDIInG+1OrN8Oc1OCYvNoU6
kqxYpfANjWpp4fCjRLe1jkBmEwBWa8K0qTKMnRFqNZ9aI+D2LkkyOuI2Eq7SiHvd6tyf1ZV6
gS7Au2UWUpMsqBLB2KNiKTzPyDQMQzm2xzAhl+y0PkDQFcJoea3xI9sxZFctADGdCDRbxtOS
PJWAo4kokzrMdvlIkpVMbmSRaa3LLIQMxblyedwidvzsJPO0BBy3X6Xs9KtWQsN0NDAaErrO
VxqwTBLID6XT1klIRiDGBkz+J1QfKau2zNZo7mtYWm6+VoUJeH6E1CgNKQmr+kuxg1olRVOC
jmahTjfF6AsuSpoYkqJx/B37fk1SbQ075L6kriaaUqbX1BrPN2lOtO/2GzvWqt3vIKOuf9vF
bNfTRViYlVS2v2G7bW8dRTUCfisCTC7tCQNs8JRULJFyTXqh9hQ33G0jtGu62Bd3UcpU6LrO
ktGTLoTtUtwT/1WH9JY8KX0MvZ4guFM/ifRF1jnPycu2zrWcDYbQsir2XTTJoC1SARspiXJj
d+ePK+hn7f3J+BiUJ1se/CFJSfYLXoiW9+8BtudyT+6HhOOSismJAld/OeWCO/3lkEARLubh
9jcZR8PCtjKaKF4+DGvbka1bApq7luPNQx1MXX/qjaBg+HRHY8iI67mYsWrAOlgh32BY7PFz
BzPX9WjLbrQOCku9g0M1cyNHcZBKnZXufDpFgB4yiNKzDBfBHd5rmvZtzVtkQeDjnkvDALwb
7QCB794i2OKh1YKzYiewbi1F7Xpz3M2T4+soBN9C01LVWeTNbdVW2XOG97ep2H0dO4wDtIVI
qWsvM9eej6trUY66INpXAdmpJn++nN7++Yv964SJqUm1WkxaZew73KBgInbyy7BR/Kp9VwvY
N8moNyRrqgS7JOVY/sieXqRm4pKsEW6RieiKuCIUQWRGeTl8PPO7y/p8eXjWvn+1/qqeepZn
XseqDjzViaOfvPpyenoay5SayaSV+narBN5397raMFtswWTZXYE7aymEdwnb8RcJ6iSgEEL4
X6a6Rit4xatBwUDuqY2ScVVBt2IC796QX2s0dad3nhftY3IV8zcwWX68/nWCIGe4pP/r9DT5
Bab5erg8Ha86h/XTCS5dcPltGl7IpluX2R2yM/LhOLAR5IaS8MqZLjf7Lqm+OuK9gJSncsHO
yjEJWzuOZEPpYeNLPAm3GTkdiMwTJGwtlRJvQvKWJF+lctJ6gLXvh/DNM08ytRMil0k3EBFC
TuhKCdFe0myfxGpKLnANy/Ypg/q492QDb+c1TL/Lv4KVrIwJpvB+hTiKO6hmT1ZEWuIBIenA
y30pAP0kRGOnDhGcWzd7vEUGVRNfDdPG49c7HYyBF+slkrcPaofAXMmLa6s9JCPK7iEpkUjx
uhvhukVXod3bI8opo8UxeVDiTw9pXe1Xc93EKS2VF2bhKoudyyQdPJ5OZ4E1egi7hUsfQBQ7
korHPqwka/UxppJSqrw5ILDicrvFyUmn2l6wTUR/GR4lwXYFCS9UzCFvl6zbrMExIa42YL4D
RwZpWgEVwy28QKG9gHd+cAS8ziC8FLGjX+8I2S1Fl1wNXAEgi377XhM4G4jkM/0LMkoTHJ+v
sRZ4lD4glTIidj/S339X0GBUoO3ZpPVYHR8KTg+X88f5r+vk7sf78fLbZvL0/cjOBrJ7YJ81
4jap5JxQJbsFelRm3JfESio4ATFn/evQYhPi3w5/JWHxh2NNgxtkJGxkSmvUJARf3Fjaliql
YUckeyFzXBllMznyVQI7U2SQHIG/rihRoGeNAR/YDtZiYPtY/wI57LMHE1d0UIWHpMzYjKSF
Y1kwbgNBGTmufxvvuyie8XlgqR4BEsLghtGubBh9RkBtn9ifkFgBdOwGn0EtGHuGNDAEX0gl
A/RVwYHAn1rjtYtrJ5DDDyWwbSNzxRFYrKCM90wFsWOMhHcabPCEuA6qnrYEy8xTn7Xs+AG8
sNLCdvbBrakDsjStir1989uIfLbNrQxyuvumy8h3cD2layz+ajuLWxQ5pFiBC1s0DkolKpBR
cxRBfQU1CtuPR+zAcFm4KCP0A2JfbjguwqBxiEoFQlKshwyxvtU/bq/56o6ap54zFjKB441F
CQN6KHCPjOpe/AV/TX0Iski6JY5GuG4akdFzvQsZPK3DNlmPsDiyGfq4Hp5Ob0/SkVOkb3p4
OL4cL+fX41VzWNQwgvrt8HJ+Ah/bx9PT6QqOtec3Vt2o7C06uaYO/efpt8fT5fjA31FQ6uy0
kbieufK+0AJ65zq15c/qFcr34f3wwMjgBXLTkPrWZrOpLzf0eWGhkvPW2R+Bpj/ers/Hj5My
W0Yakb7ueP3X+fJPPrIf/z5e/m+Svr4fH3nDEdpVb+66cld/soaWH66MPybgov30Y8LXHrgm
jeQGklngTWWx3ILG+Sh6XjLV2npJf5xfwOTzKWN9RtlbxhGO1z4O4YvQfSLh2+PlfHpUmViA
unIruocsZ3BCkJT1PKU7CimC5M+TcJ21IJCyIjfEJy/TJItFbtENdqXB35mTU2WyH21aR+Vd
nI4QPHnKUM0qD+cjrZIeBlrlfBp4iqDqcDT13KltRHlGlD01YaZGjOyWLWGiOEpmcnC9hps7
eN8jyiQsOx2WmuLQ4TUL65hgE+EVL9MGkt0TPVwMnhpArykiHl5Az98vaDQX2NwUW4aAaAl4
WcsUnJuIfDjj16zg278v09qfivwznWTCWpV4M0yzRWEI7C3geUWTa051fD1fj++X8wNmuISE
xjXE4+AiACksKn1//XhC6ysJ7U6UeI1KyaEgLdZ5vE2rZDQAyvr2C+WvHU+Kt0n0fHr/dfIB
RuS/+izBw874yjYSBqbnCAvbwNAisfDlfHh8OL+aCqJ4Iemb8vfl5Xj8eDi8HCdfz5f0q6mS
z0iFTfMfpDFVMMLJcTbZ6XoU2MX30wsYQftJQqr6+UK81Nfvhxc2fOP8oPhedvPHvjqh3cAj
dX+bKsKw/eXsT3FCbxoinfNtb2kTPzF/1M5Nl7uYpgSexSjyOCFhLpmwZCJ4drWoCLxIJbkN
yQTglcKffUHRcEPBfYYVA5xcPqQ03Yw/h24QoxvTYbziecSh30lTR/ziW7DL31e2+d7IBifI
uffxFzyZcUuxpCHbi5TzdIvRQ5V0PNvFXNfD3PpbgrLOPSV3RAuv6mA+c0OkSUo8z3BCbyng
0twQQzVQME5l/7pyTlz9yeBUlukp5KPQkpsPsH20QMGK1VuFt4Z12ctzwLch42uCu5cywvtl
uizUpPwAbi8UkEzsqYjNZv+VH7GQyoxIefMUvoCexFF7S7etP6mhkwyPVj70suNg/LjTK7CQ
7ULa9luAGh3LgTNnBFCpFiScylFs4vcoCohEjCu5DRX3hIxDB40riUNXNtSxda5iWUsSgLkG
sOXkKTBvtWh674ZNSg048CPp8H2/7hsaz9Ee3zfRl3vI74a7/kaug9oDCQlnSuxKC1BnFYC+
bymAYOo5CmDuebYWu9BCdYDkJUSaiK2PpwB8x1PsTrS+D1wbcy4HzCJs81v/L0fn4aRpze0K
E2gM5cxtmftmc/V2Pck3SVaUSR9nhR0smplqjEvz0GkaQ55AiDyazqRGOUA+NXDAXIoZg9Au
13cVwNxX2yRR6U4dbD7zcD0LZNsiv1XbwBbS3vdI1XAcxFvvU637CMkGH+FAwPDSuGjM9y3+
JilELchqOmCswJZTqQGM2lZrrvxP7SDLy/ntyjSpRzlLLCRRSfiD27J6Py7RqqvvL0x50X26
STR1PPxMPhT4L6whtsrxP2kNiZ6Pr6cHsHEc3z7OGuPXGbzkc9cmykEXU9Ak3wqEqJeriR8o
0hd+q7Ikimggy9A0/KoKDXb0mFlych8axa6l5XIUMKViAWoTJUp5TXKaVuAKSlelq2bCLykq
Ezffgrni6jeaORFYcHpsAdziETG1+fwm68A4gcxhhPap3aWs7kBMI5IqCyXZVhScOFvRsmtp
3I0xUttv1C7guHaJWrOaYDDGawfxPZikqWcZLvsZykU3WIaYTn1ZzHre3Kn4I9Ua1FV8ZhjI
n/uGDHL8cYY4lG/c6XTqKGY04juuiyueTIZ6Nh4qCqjAwYJDmZSdzmQrSc1vnzxvZsu8dXMy
e3Z4/P762gW+6Oyg4IS3E2T8P749/OjNmf8G76w4pr+XWdYH9XBTxapLCPF7fPq4Xk5/fgdz
rdzGTTqROuL58HH8LWNkx8dJdj6/T35h7fw6+avvx4fUDyUPxH9Ysn8/6vYIFTZ9+nE5fzyc
349sdUaCb0FWto8x4rIJqWNblvxNDDBdoSTl2rU8y8B+7be02lWFQeXjKFTjS+sVO8XgyRDM
IxQC6nh4uT5LUqSDXq6T6nA9Tsj57XRVzs/hMplOLfW7YGc8y0ZvJFuUo7g5Y9VLSLlHoj/f
X0+Pp+sPaXW6zhDHlRMIxHe1qsjcxRHrGOb8yjCOJavddzV1HFv/rYq8u3rtKPXTlG1EaLom
hnCUPXg0CvHpsm/mCk6Sr8fDx/eLeAbvO5sV+dEdktq+smfCb7Vny6agwUw+13QQnRHvSeNj
0ijNN/s0IlPHt5RMjgNUrwlwjK39T9k6o8SP5TdVVDi6rfQ4V7lAujFfwsfy9PR8xT7jMP4S
7yk7m6Fbyrqxu+XqYBkwLr41ZWwbsLC7ff4cjpIjRTyQI69eSGeuI6s38MyObACB37KKFBFG
H6gX9Axk2IkYynXwI14Ert642yqg/P9v7Uma20Z6vb9f4crpHTIzWizHPuTQIimJEbeQ1OaL
yrE1iWq8lZf6Ju/XPwDNJtHdoJJX9Q4zjgCw2QuIRqOxTOQEMiNVDAaWy7aGwRQMBlJgYast
UNEh7hZiY0YMQ5Ah3wy/VGo4srMAl0U5mIhbaVKXEzs5crKG5TsXU06CUAIRZruHNLAr6ciT
q+GYH0Dzoh4P7LcV0NfRAKGiLBgOx+zAhb+5MQPOqOPx0FY86/1qHVfu2cDoCUE1Ph/KehPh
Psm8YdV8uhBz1CLmkqedBcCnT3Y63So5n4ylga6qyfCSl8NaB1nizrSGiZk+1lGaXAzGjPc1
hN9ArZOLIf86rmE1YOotjckWAtr77Ob74+FNH/lF8bC8vPok+boQwjI2qOXg6moo+/80ZqNU
zbMekQgoEEKWoSQYT0Z22phGBlIztN+fXE44RU4uz8c9LzRUZQo8JhQA03BbBu9UqhYK/lST
sbWJidOoJ/j9/u34fH/41zqK0hFmteUHZIuw2QNv74+Pwtq0Ml/AW9ZETD5ERvrWkmj87M/+
wIvmxzvQm6nWFntqUeoLPWOgtHYgylNZropaRtfoHI+FchjaXj1MlWGQomom97DZxB5BR6Jg
hJvH7+/38O/np1dKlibNz++QW/ru89MbbJtHwcw6GdnfeoiuZj0GQzjXnI8lGxGeayyxjwCQ
GEyqFImrFfb0Tew3zBfXj5K0uBoaKdPTnH5En0VeDq+oOgjq5LQYXAxSFtM5TYuRba7A304V
v2QBMopJvbCoxpZmWVil+IJiOLC+xLRIhlyL1b/9A0QCgkPeENJqciFqNogYf/rsKldOcDyH
OiUIJue874tiNLhg6OtCgR7C3H4agOv24015p6s9og+IyNQuslm8p3+PD6hGI7vfHV+1Uctb
StInJryKYhKHqsQwymi/tng8nQ77lKlCTtVbztDfyNaJqnI2kHfkans1FguaAGJi743YyKW0
McKeOXYU1HUyGSeDba9Tzy9m6v/Xs0fL3MPDM1oA7G+rm+dkezW46FFbNLJnGeoUNNALSV1B
BGPvGsQuX3P6PQo5K0qdbO2KG5aDGLO3m4RHHUNsUt+B3MLqjPl1IDt+IgXFGF764WEYMXD7
4/gsRB77iSJVsp/F8sJ77TAFmpIHwo+6zJNESHVcLHZn1fu3V7p67zpg8lQBmm/lNjUbJd6I
B8ovb1scXv5+enkgRnzQZ3/J//8UGRuMqrwXcD8xM1NZWOZxKE6V60MWqq2XDhtg3Y+sSS3N
f7ZcYgPxyqIKKexfWzE2WMbzliSaV/eytuIe4Se6GdU5GjVjUalrKeDle570HRCULMdtr8pX
ZRBJmZ8lMjFSUCKcUVVvcXKFAXdNUEFSwabGK3vCD4oOpwLUeRjZmFRVtZf6kCEWlKa4eyEV
w8wl3zJdUziJtl0qZqakSs5PoNKCsjT/dDWSBoFYN9ARYWna4yolva2764DzJi+cGefWnSL+
phroPQ4PVRKnVhp30mzh31kUWNnuVwh3yEgBDriHCbpO2r90Rlquetn+JtrefLwHcUtygm3S
a4WbMmzIoCpTFceSryS6uylL6EXbeuQkTu8w470tqhsQCKMqhtUK5Gt8Q1VFwaqUYy2B5HzP
P3ACrDBjUF5SnxwUf6mPMm9yME70HsGWmCBbe5F3mC/TcGT/cp+Fl6RumdIyimF6ATOzbMct
mPLfS6qOIaB6uk1ebL/N/RbruPLp50hxCQQ6f2q+eD3+8ssl/dKznBZBXxQYPSyk2tx6HUFI
44q5X/cErALJ11VeS0Ji63CJ9VAphcAgIs8SjCqtgnI1dR9qcOhmLNalQpqNKjP3ub6pmM+q
kfNNTWu9UuJoszjRT8j+1CPvyY5drT1W/9Zps3mWyr7PClfA/fQ1TKcnAfkpvjZOoj3inbLJ
6AmIDgU7i0IeE8Y8BuWuwERCfRSgTMhyZVZ5gbwtgNnYCURehPIblKaQvSt6mI/gQW3xHWb6
n1Xnfeun0T0rSMKQHSgDK41VE3Zqfz70TCgWN8xhyjB7LZe5HQxzW8UlbF57+HOaQCUbBerR
DHTdfCOSYvVVKxCN4bYw9zTsk13cpxFMZV7sjOoQ3Nz+OFjawqwiYSxu/Q21Jqci5H+F65D2
y2677Lihyq8uLnqLh6zCmYcy75Hb1uaVvPprpuq/oi3+P6udt7eMVjvSIK3gSZkj1i01e9rE
zGJ6ygIDuM/HnyR8nGMoNuY+/3B8fbq8nFz9MfzAOb4jXdUzOeCPxiL3Lau1LP9pAbyUCQQt
N+JsnpwxfdJ5PbzfPZ39Lc1kV5qeA5ZuhlWCrlMEC6MgLCj/+ivmQJxaTOQWW15RhIJTZBKW
vKbtMioz3hXvxAtH7B5uW6zmUZ1MxTluo9Pn8Vxldax7xdVN/GPWoTv4+bPWqpoYQ40SGXpY
RykXDSVmDHDWVIUyAFbUEnqzPpkWkVy3pFoLajIQ6I3DzIbzPvits5PZG2jUv39Oe7syc5sJ
SpWKpNXXlaoWvNMGonczoxV2xwcLreWmfOYzhJheNi32mKux7xzpkNL56kRnLTr0NrbSy7RU
RsV04de6/Ib/+uS6xyDXEYgnpvaF19LbqjoUwOeYb209pYipa3mGo3QahaGYrbJbhVLNU6zK
Qgul2xq3QtVXQtM4A4VIZIU8dTmy8B7/mm3P+xkSsBd9PFl6zWsIZg5C3/Ndky7OQeeZCy+q
2vbto9+tgF9ilNF0B2egz8PB6HzgkyV4gET+sW3aDQEsMUd2wtWgz1u0JGRbqkVwqpnL85HY
jEuHzPMb72vf9PMXwzXTZG0b/sAN2amu2WOUnpD72Hbhw93h7/ubt8MHj9DJ9dzAMX7MA2pz
kge+zjOfReBjk2D4H1okPrgdQRyxE31VF+cCOoVzRxmpKs8+jwR0cfrpZqQnKPTwWoJORuyq
tfydrTzZryFUp0HSC1aSLoM1IXo+5Ixnb4If3Xoy3YuhjfK2B+XNUpc47tNYyv5gk3ya2O9t
MZeTQS+GOZ47mElvZy4nv+zM5UXvK3ndGgfT25kLK7Wjg5OcDBySyYnH5cQVDpEcAGIRXY1/
o6WriewB5bQk39rYROeia43VbV5bFzFw2kEG3F/2Tsdw9DsdBCrpbhRpVBXEsb305q1D960G
IYZFMPzY5USD6Ft5g/eW3SCkqy+O9z5Eg+ib83aMY3nGhz0rwW+pEb7M48t9KcBW9pymKkAF
QGU2KYKDCDO2ugPQmKyOVqUcXtgSlbmq45604i3RroyTxL0uc4jmKvolSRlFkpHU4GMYDMaR
eoOMs1Vc+2CaEiudr8HUq3IZ8xRkiMDDbgdZZXFgXYo0gH2GjjBJfK3TW5v8b+y2P99vvvJT
l2Wc19ECh9v3F7w69nLVLaMd2y/wF2yYX1fogONYnEGPr2I4qmFdwggWIJtzE7o2m0WhbpC7
p0a7fbjASjQ6Eb2sTyEV2b3iwKcym2pjA8aUbNW8zZNm6eanzMQGKW6blNaBampmMAi0zqEN
aK8S0G7tcCSPiHfAb2EGTUydYNzO9JGXZA3Ul2/ivaDCwza2huVWdBFPdlyR0Ji1cvH5w1+v
346Pf72/Hl4enu4Of/w43D8fXpjZJcbiqjglEV6pwqlb1zFFZT/PJUXRqPDdOvDwiqRKP3+4
v3m8w9iBj/i/u6f/PH78efNwA79u7p6Pjx9fb/4+QIPHu4/Hx7fDd+TIj9+e//6gmXR5eHk8
3FOd2QM5inTM+l9dFuqz4+MRHYaP/3PThC2YM3RABgo08O3XqoRvNK7bBJ4/T1Jh6nF+UwYg
mNlgCSyZ2fVKOxQsq2ldXFqHFF/RT4dB28hpPSlTPeIZCK5eWnMJKU+XQffPdhtF5AqNdg7x
U29rjAYvP5/fns5un14OZ08vZ5rP2LIQMdZ3VQXbmS3wyIdHKhSBPmm1DOJiYdUptBH+Iwsr
GyQD+qQltwl1MJGQnd6cjvf2RPV1flkUPvWSXxybFvDg5pPCRqTmQrsN3M65ZqH2YVzpgnFu
tqu+B6ItHIN6k2M1xPPZcHSZrhKvR1jNXAT6gyror+U4rxH0RzLEmEla1YuIp19t4PZG2gDb
OH5t+H3/dn+8/eOfw8+zW+L071hz6KfH4KWVnkzDQp/LosDvRRSIhKHQYhSUErhK/ckCIb2O
RpPJ8MoMRb2//UDnyVs41d+dRY80HnQq/c/x7ceZen19uj0SKrx5u/EGGASp9465AAsWoDeo
0aDIkx352fucpqJ5XAE79C9YFX2N18LoFwpE4NoMaEpxari9vfrdnQYSo4hlzw3SvvFuoSe4
OuJpIhpYUm48nspnU6E3BXSyv+0t9xIwEiDabUpVeO1ni3a6XZTCJK71KvX5HNOUGCm+wGzp
PTOZKp9nFxJwi5Puz+AaaD3PrvD4/fD65r+sDMYjv2UCC01vtwunaI5LMU3UMhqdWHVNUHnT
A6+sh4MwnvlcL+4fjN8dMRmeC7CJwA9pDAweJfj31JDKNJQjGM3Hs1BDbzgAHE0ufMmxUBM7
KKdDiJVrjcAZ+03VoJVMc3+/3BQ6yadWF47PPywn9VYmVKKkwOz/p9c338xisXCSWUiVRnBa
9KVmoHTauJTXlmE4aYkQLh3fjcSP/G92pnetPjnpz2NUFlYWoHbOz71u1pscB98H70an5/7p
4Rk9t2292fScTNFeS8l17sEuzyWOca5nPOTC/6ybyxftuwxnh6eHs+z94dvhxQQfSz3FXP/7
oJA0s7Cczk3GawHTCC234xr3CzlCRLBDnFh7oPDe+yXGI0KEDrrFzpei8FLjhMWV6fvjt5cb
UN5fnt7fjo+CTMZy80rgNYQ3Ao2VI/RWqqM6sWJApHm0bcmfuo7oFw21ygjr1ikyES19XQg3
oheUMLTED0+RnB6LITvFCd2YOyXn9Oh7ZO+C+bBcO0JC//Yt/w2crlbDaI1utD03VKAqnBoF
bhL7anx1eh+BbhORtJ2AUNc4YU8Z79mT0tayN0+flKXyu5VBdHYQ+LUnieDS0l4td5N0ir4+
oo+ydv0Hjf2kXGgJcboG5yc+BCRt0v673URUEMD+2WFUtUvTCE1cZB2rdwUzxjFksZomDU21
mtpk28ngah9EZWNYi4xXbnfNtgyqSyyRt0YstiFRfDIlGjqsllYYu/03nSdeqX7Q6/H7ow7F
uP1xuP3n+PideztpT4/WzNRYESWrlyYEEYVla6rW4MgW3KWgZcZ/6SoSxkvqNzpompzGmSp3
OBdZPTPyOOkVxOibqco9+arYISXKczBs3wAaEpYDYCtkIjFmcRbC/0oYCpAxXs3LkJenwWqG
ERyP0ymWFWhXSdtWeRYc8thBn7wgLbbBYk6Oj2U0swVfAFwHO5TIs4FVFwBIfXU42Mf1am+p
Kp6eTh9ZY7Tu+ZCIBJg4mu560r1zElnLIAJVblCH8d4PUyo/dGGp5oH96xOzbsZT/2QSMOu9
Poh0v4EvwjxlQ+9Q3LmgW0GEar8ZG47eMKgiJHpgHOqpbBo6S2puZHA8JhhUep3jGsFaOef0
XUe4B4QDlui31wh2f++3lxcejKKOCp82VnzVGqAqUwlWL+BL8RCYP9pvdxp88WC2gagb0H5+
HTNbHENMATESMTCFItz2QDICQbh5gO0h3Fd5kltleDgU72H4V2vh4JVWRveqyoMY5MY6gpkq
eQkgtJBbiS4zbIcqMKmCLh34VoSCBnEqDMt9vb84twRY6zk4yzG+CAlXWXtdxCT6Js7rxHL8
QtrArtBk4VTRX/3FdHYKrwK1v2QeStU80bPLvuVilapqiaWGyGTPliPJrT7hb1GcmZaS632t
eO7Q8itqlUwyp0WsPdya3znV953D3lVaawDrYphhHVa5zyLzqMaI93wW8sXjz1CK633G/UEx
mi939wka9EbxzOUVrKIO1zGAGrdgfv/IYnudXdK+zzGKAEGfX46Pb//oGNaHw+t3/0qSduAl
dd3a9xCIlcMtq3bjopPk8wS21qQ1wX/qpfi6iqP6c+vNYzQbrwXmzhPuMpXGQT+zcbybtm6X
TnNU0KKyBCpeeI2o4T9QCaZ5ZWUd7J2l9hx/vD/88XZ8aBSZVyK91fAXNqfdGOhteNaUHP5L
6JkOJuG1kXDJCxAUGBLJPXTLSIV0RQAo/nEsAI4JZuMMGCqRooN0L6oooLvsNK5SVQds23Qx
1CeMhNm586bFySZSS8pnq11MO8Xvd2eIpoiMDcdbw7Hh4dv7d6plED++vr28P7j146i2N+qg
dk0wu3+WUmhgJHg2+1OTg/5ecaXpUoziO9EO3k+e8tZeTSuVgVqUxTUWtFJcDBGOt62J61JJ
5dKbe1NNM8WU7/wozpG0l3gk8oO/fqJaxLPaBYbx2rmz1fBVBpwJ5/Ipd0/UqHz6BSNIXGde
061cDj3T6AjUbckzT3c+iedZatnrTs06pTbRU9+qFXDCAvplkK/30zJfRhnn5N/iTZuDMAYg
StwPBh3uP1vVo7vGmPBFWRhta8yhmWc+6yGeNk/Z6IBP55usJ7aJ0EUeV3nWF4LVvQWkjFz3
T5OUeahqfet46gvQxJutP5KNFKrUBsbX4Splm5/+7Yj2BkjNcc9p3b7muD6wcC6w8XjF73fa
YCnTjWz4sQk3eSm7nthkZbAi6f0bpNqf3wQY94oxQx5ltFOYXbW1zVXJampILT4jBOqYvW46
DZenUZqA+PcnyWBODEY7Zqxw55d9hYIFas5EFcHJvC+c1uGzdbov5rUtfwzGh9DFmBvA0SJL
6c6KvQbOfnNhj+m60Pt4U08SnUncTjVbKarOPNJA0RkBhrpUFXdvcxA4IEex1juDxnamVxuL
PIqqZZZ3MhPOEk6xS2rjlKdLJ8281V441Tv1DSTSn+VPz68fzzAf6fuz1hEWN4/fuTqK9YHR
6SbP+ZxYYIx8XzHDs0aScr6qPw94fzBR+H6xguHWcOIQmW/zFdQeUH7CXJaRtIegOWdViPNx
emDaIRB0ort3VISEPUAzvxOEroF2wDjB6FPlO5bUts1lODHLKCpYzTTsJ9vc/vv1+fiIt/sw
hIf3t8O/B/jH4e32zz//5EWgMRqYmqQKU030Nj80YHldISZYI0q10U1kMKF9GxIR4Bh7P6cS
zfF1tI08WW8qFXlbsUy+2WgMiMB8Q058DkG5qaxIOQ2lHjrfHcLCqPAAaAmrPg8nLpgcK6oG
e+FitRzUsQ6a5OoUCdliNd2596IYtppElXAMi1amtZH7wTbUvVOu6hzPW1USRYUvApsFJ/tA
Wy5ZaIsmrgaOQR9I29LTLQU/7rZsP7Mek9TlKtTNb1TMb3HMgfn/wO2t5khzC4KsR/AbjOxF
GiydSBw6WKFn4iqroiiEb1ubLF3uWuqN3HynWrb8o5XRu5u3mzPUQm/RpG4V5aF1iCvh8FIg
+NTWLJ6wCaU9hK16ulp/2JMuCNoZJjgxeqslDXt67L48KGEqsjpWiZ+LCBhX1Ji1LAnYnbPF
UzyHBmhZVGDAYxuL5Be8hSSgG7OW2MkccLh/0/m73YBGQ453GAFB0dfKZ1J7vI6o+tocwMvu
6G2bNYj74SCBV1s9dn/o5yKvi0TrYxQGR4msZDkMBFmwq3NJKmSUuBGGZflpw7LMVpk2KJzG
zuHQu5BpjG3HjWQTkPtNXC/QlOeqTg06JZ0ZCPBSxyHByG9aMqSEI1JWe42gE4FrIMSB62YZ
99EwKPbN6bPuRuAEcqKodGsLURUforeu3XCBcE0rGGngT1gBZ5YUPsDyqzwOrz1z3HIbagj9
Hd1dBXRVJxun17S/8p3XvbTsJ8x67kt/vertG0A4YCC27bJvNkqrUzBpVT6b9fdGK2Aej27g
w5DG2EQmaraSNoWGTaoMVH34DPnDDqo9FVQb0TY0hZ0DuKEZq+c0b+AqA/mtKMCAHuhzXDDk
8DVIhOalCUVo76n4lF6ezmxDNR01E0vPmgXUBC539X2nNpauVpnGVe0yYIO2xc4mirfTTd5Y
ecC6Wf3FxdmXvoD97ovqLjXkLaT7oH9Bad6sErorwWmXw1Q0oZ4Q/LMqq74MOXM0Y5k1lLLJ
OQxaK9jsit69jo2Fk1q7KqNpM5CRUAijpFZiXHYnqIBG7Rztj60liijvjRXWjxa5ktkDKGtg
3Fhq6aare54ClxoaT894Ra8YQdGwFUBfNkaqTBr/BcEoQruHvA9TemSf7xo1wOkOv9qpD69v
qL/i4TLA0ow331lOZsp2Zp3gKf1ZYy4TJq9Lj2YFkBE02tKc9ytOmoy20N64BaM/4l1MXjaD
dhjZsKfOXGMomBRQcVIl/IYPIdpi6RzCnDZ4wBh/NFXLyATdOag4b3U4LtsRNcPjifxlOa81
dwan2BWNz55dpgLhCx+z5jt+EW9Tk+G6MfPhpbYq0cBbOQR4J1SuKBeGZRDXSPgQVRkpbZ8f
/Is55tvUECWIW9ri9Snd8e9MlmHNfNu1bQRlboUfhw1P4wytnIUDFijDeH1h1USZmhMUnQhP
6O9T9ILuFWf8Pt6VKpShEWXxqRYa66str/Rx+OJcMCrTaBbRlszZzrD1ha4OGqycRwBZBcXO
eWQJ4DrfOrSNy5RN2lwf8zoDdPWxiqU4HcJtjRuC/Qjm5pqBDO17rER7g2N01cNW3DOaQLA5
uLyydLkHeo6WPhtoLJveeCrUjeCjlmQI+nRBa5ITgk5xH5cpnMMjr1WdB0p2IaNC5q1wbRmr
yd/KZChTTbA1G9Wdq8i/rkVJZhLu6eY0HaQhJSm0RHfX18qT5nrSaNPtt202Ya0YSty36LBx
BqD4Fh63kH6Npu0TT5Ll215fiqhEIW6ZMk/uc14kpfZz+F+uA2EjEBABAA==

--zYM0uCDKw75PZbzx--
