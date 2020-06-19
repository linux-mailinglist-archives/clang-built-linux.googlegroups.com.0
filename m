Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWE6WT3QKGQEE4EU4PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 78536201B1C
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 21:17:46 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id x18sf7045552pgk.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 12:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592594265; cv=pass;
        d=google.com; s=arc-20160816;
        b=IpA3PfoyP1UiC8s2/OknKrdamVDPcu7cy36F1p25xPqNKiA/sIj8GlC65e2eUNvsR7
         OY1/u+RbUJkj102zzrdDjioxp05uos+rXQo6JhW9Wq5cr/MJKko/r6xKYDoP8WysfH+q
         jcRmy6nJl9xsP7BAbtaXhPl+c6Ql4OEGDmYpQsLRRHExxZYQr6dY+wZM51O8hjW1hSNs
         TR1WEKVQ7FwPL2mBQ3Wq8pQ4vH8qUuWSwvgDw3XfnILri/m6IwSUNga5r1eIeSnw7vQt
         vECRumaSNkPzLeN4zfX/kIXMx6xS8iO0CHkCrrGuEnFcZik4EZDOSTET7fMrD+/nRL7A
         vJ/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=75YKmLlDKeBNp2RdAPUofC1mppBcZqEVtWy2wKdfKzo=;
        b=L3K8nqgkBOMQebR5/zQ3s7JYOR/Byxc6N4px62aTtm6k+CkJC3m1ZBH86VJgFOmrb5
         9t1LThCE6xTjtO4EOvzw+25YnKyOCwqqoZTRKnvWw8yf0EYNqqwVlxJP9q4bu6pfa4kc
         cmjRtfdjEdZ+9IdhGF3u7GPW0wXj/Yobgu9dkbybfCzIS7N76tucsCN4lOzJwuvsMTOv
         Xu/h+bnxYJ5ZAls4c74EPkA4lSuXSTZWeTdmzo5Acs+sh0aCV7B3s62olgWOpIE/2TSm
         CgeD9BT5PKwc9bVm6DeHplax0uY7xGU3B7q0SmtmbJ680xrgdo6vmwfygueFSmjDy+Fj
         L4kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75YKmLlDKeBNp2RdAPUofC1mppBcZqEVtWy2wKdfKzo=;
        b=F5v3syUExuou/wjTKsHBkmfwydv7KOoogLBZD/5ZVFbriJ8oi/UbIF+4RmbaJU9NZr
         OtF44IpAAQ6/qlxY2Zqk7K3NXWu7di5ypITuK5RwDd4oIwpR0RoKEYHRYxtyww5dgTHc
         RC0td1aypj9Wt8XwRUHaOdVGPcZo790yXBlt3cBCaI30mdGRR53C/YEJ/KAfvJMD1sRf
         jozSE3w+UgUM9/JtXDGTdrczg7+xjLNUa23g92J5QsfyV8cB8BJ6q5xAU1IZEFFMkiX+
         6t3BMD03sEsDL3sPiahE+ZBc696XkPwylbjZjiAkd9SZ8ZRVcrlPHM8IOLPfePaL5Yie
         51iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75YKmLlDKeBNp2RdAPUofC1mppBcZqEVtWy2wKdfKzo=;
        b=ZYwckLpZcu9+Y5TNnilFMHZWomDBg/vAz9wBloupLFbiUa5IiPfukIwj3F4wo3fe0l
         BCBVl4zEVYJa5QFtWU4MLJpu7HCq6OBO5Q36ffU0NTL7wbQUErpaPwMwjOmpZK+xqrea
         5t6xUlhjxHpb96Xgk3zQuxrTWed8US9hbxEuxqSN9FjgZFUAPPSTX5LxvCt7WgxbM9hl
         J170J4o7FLOwTAEvsC3kq8Gms4T+udN0iKhulCX0HDYZkiGadcICIintq6Xa2Rr2jXDf
         xdHjXVKTBnVKSl40f8qxalOxcamnOWlC3oSAzD4Ipmk5MZcI8Q4ASnxNhGVweIt8oWy2
         nExA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/3tJvArdCa+UZVSqEv6zxNWvIdcyMGYtBFfMZIo8fY0bXRrr4
	AYmgpXEA4mLTsD+2BqnPr1I=
X-Google-Smtp-Source: ABdhPJxCT2Zy9rlFjrdGURTYPiv+95P0O2PhAs/fr/DY40ITnuGUossXqent3g1ubbxGSNkzY2KKAQ==
X-Received: by 2002:a63:4407:: with SMTP id r7mr4498917pga.274.1592594264943;
        Fri, 19 Jun 2020 12:17:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c70d:: with SMTP id o13ls4159861pjt.0.gmail; Fri, 19
 Jun 2020 12:17:44 -0700 (PDT)
X-Received: by 2002:a17:90a:266f:: with SMTP id l102mr5343356pje.190.1592594264473;
        Fri, 19 Jun 2020 12:17:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592594264; cv=none;
        d=google.com; s=arc-20160816;
        b=d/J3tHbUT/qRSqVIfqhurWz4NR0sxPMW6jATsVkODcm0EXD6idAMLpoNDJHa4LRELS
         jyGnovR6iEm9+l++v2v8EbuKL5FD9ZRCeNjIrpGTf7cA4LTl94jsvhxLXVgD1NfHfcW6
         u3QM51Fc5bGfXfhXt1cgD8u5MZwQy4a1aohfjVL9LeeEuxICGXI5PUHVoveTf2xrp6xc
         QtFBRSJYrERmjqadrfd3fyxNxqwfJBKkr90ETJXUxltcNjq616adFoSrUsZIDHB44u0I
         x94KwdHc8jDeW/7zT7xDO/GQZ/dkrDb3JXhX9MrDf0/avIUpWhv5TIpu/YmvMo6TxxbK
         TmBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=QRUIpBzYbgdOLTKE1e++BCDvCr6JJ+SNlY/iDmGZrWs=;
        b=Rfg5vf0AfjZkfSNi4r0We7wfpKAbdB3QnRFQN4FT++z+iYv26/sggezy3/gLaR8aJJ
         QXimSUET0b4RkufRhwKnxNCUftf7YJcmQzLle/iXtepSq1XYOPnvnKRGWHBrN6UdXJW7
         ehjYuwg3SGklYzkRqnxe1dUffIhMwFmfkuooTKGvl4OJzy5RxUzyM7oKxBoS7RnAI4td
         DBmtV/hx8ts4VDZzkovVlf5TuZgtw3aNSyM7m5sDIbR6yTZFuQpbDNRKGgdZavzFSUWe
         T7c9YtJk5ASomzWBX34N5RuJTlKMP0msRHhNui5SsYl6mxcbqMwmzlGmMoeJT3rJI4nc
         GkhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id w15si278039pjn.0.2020.06.19.12.17.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jun 2020 12:17:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: pQQFWyFR/qbgtwr079IqGod0WZG33sx88ZCnbMT53pDI4KeK4/2Iql5QzFDwBx7CJmu4lXmAbF
 DRY5VvzyKbBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9657"; a="204545457"
X-IronPort-AV: E=Sophos;i="5.75,256,1589266800"; 
   d="gz'50?scan'50,208,50";a="204545457"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jun 2020 12:17:42 -0700
IronPort-SDR: lePxo/rgxNnt2ZnraEShdy7KLxVHm0a0bBe5kIwYjOhKNG5TXDTqDyrk5hHt1XDHbCLlQz8vhz
 wvXnLcqweW7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,256,1589266800"; 
   d="gz'50?scan'50,208,50";a="383922637"
Received: from lkp-server02.sh.intel.com (HELO 3aa54c81372e) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2020 12:17:41 -0700
Received: from kbuild by 3aa54c81372e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jmMWC-00008s-CH; Fri, 19 Jun 2020 19:17:40 +0000
Date: Sat, 20 Jun 2020 03:17:07 +0800
From: kernel test robot <lkp@intel.com>
To: Axel Rasmussen <axelrasmussen@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH v3 1/1] mmap_lock: add tracepoints around mmap_lock
 acquisition
Message-ID: <202006200350.dqXAc7Tv%lkp@intel.com>
References: <20200618222225.102337-2-axelrasmussen@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
In-Reply-To: <20200618222225.102337-2-axelrasmussen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Axel,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on tip/locking/core]
[also build test ERROR on tip/perf/core linux/master linus/master v5.8-rc1 next-20200618]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Axel-Rasmussen/Add-rwsem-contended-hook-API-and-mmap_lock-histograms/20200619-062340
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git c935cd62d3fe985d7f0ebea185d2759e8992e96f
config: s390-randconfig-r005-20200619 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

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
   In file included from kernel/trace/trace_events_hist.c:22:
   In file included from kernel/trace/trace_synth.h:5:
   In file included from kernel/trace/trace_dynevent.h:14:
   In file included from kernel/trace/trace.h:9:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/trace/trace_events_hist.c:22:
   In file included from kernel/trace/trace_synth.h:5:
   In file included from kernel/trace/trace_dynevent.h:14:
   In file included from kernel/trace/trace.h:9:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/trace/trace_events_hist.c:22:
   In file included from kernel/trace/trace_synth.h:5:
   In file included from kernel/trace/trace_dynevent.h:14:
   In file included from kernel/trace/trace.h:9:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/trace/trace_events_hist.c:22:
   In file included from kernel/trace/trace_synth.h:5:
   In file included from kernel/trace/trace_dynevent.h:14:
   In file included from kernel/trace/trace.h:9:
   In file included from include/linux/clocksource.h:21:
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
   In file included from kernel/trace/trace_events_hist.c:22:
   In file included from kernel/trace/trace_synth.h:5:
   In file included from kernel/trace/trace_dynevent.h:14:
>> kernel/trace/trace.h:682:30: error: no member named 'trace_recursion' in 'struct task_struct'
           unsigned int val = current->trace_recursion;
                              ~~~~~~~  ^
   kernel/trace/trace.h:694:11: error: no member named 'trace_recursion' in 'struct task_struct'
           current->trace_recursion = val;
           ~~~~~~~  ^
   kernel/trace/trace.h:702:30: error: no member named 'trace_recursion' in 'struct task_struct'
           unsigned int val = current->trace_recursion;
                              ~~~~~~~  ^
   kernel/trace/trace.h:711:11: error: no member named 'trace_recursion' in 'struct task_struct'
           current->trace_recursion = val;
           ~~~~~~~  ^
>> kernel/trace/trace_events_hist.c:834:3: error: implicit declaration of function 'trace_array_put' [-Werror,-Wimplicit-function-declaration]
                   trace_array_put(tr);
                   ^
   kernel/trace/trace_events_hist.c:834:3: note: did you mean 'trace_array_get'?
   kernel/trace/trace.h:384:12: note: 'trace_array_get' declared here
   extern int trace_array_get(struct trace_array *tr);
              ^
   kernel/trace/trace_events_hist.c:860:2: error: implicit declaration of function 'trace_array_put' [-Werror,-Wimplicit-function-declaration]
           trace_array_put(tr);
           ^
   20 warnings and 6 errors generated.

vim +682 kernel/trace/trace.h

edc15cafcbfa3d7 Steven Rostedt 2012-11-02  679  
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  680  static __always_inline int trace_test_and_set_recursion(int start, int max)
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  681  {
edc15cafcbfa3d7 Steven Rostedt 2012-11-02 @682  	unsigned int val = current->trace_recursion;
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  683  	int bit;
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  684  
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  685  	/* A previous recursion check was made */
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  686  	if ((val & TRACE_CONTEXT_MASK) > max)
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  687  		return 0;
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  688  
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  689  	bit = trace_get_context_bit() + start;
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  690  	if (unlikely(val & (1 << bit)))
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  691  		return -1;
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  692  
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  693  	val |= 1 << bit;
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  694  	current->trace_recursion = val;
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  695  	barrier();
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  696  
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  697  	return bit;
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  698  }
edc15cafcbfa3d7 Steven Rostedt 2012-11-02  699  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006200350.dqXAc7Tv%25lkp%40intel.com.

--J2SCkAp4GZ/dPZZf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
pyv/yMjOew2/bS85VmKi/wHaRbSw4C4BAA==

--J2SCkAp4GZ/dPZZf--
