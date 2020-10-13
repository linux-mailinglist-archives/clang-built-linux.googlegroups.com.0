Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUPYSP6AKGQECZ4L3HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BF528C690
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 03:01:06 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id m11sf4136391qvt.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 18:01:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602550866; cv=pass;
        d=google.com; s=arc-20160816;
        b=T6LEw7kYWPJZT7/px6MbXI76NwrD3iiPuwnwsZT3N3/tcy/P3/Uy2H2JtUlRzguiRg
         KfaaT4WygQSpOcBc7Ar8ViM9Mt9WarVp0hsFVciS4qSpO6Qa+uZnRH2f6PH8A8CyuG8I
         2c/N9FxOr95Km9K2DsWdYBA06ZQXVwcP06TWv3G6fwJRpaYscO1FUCcMP1A78EcmmPE7
         qIchMkWXa132zO2B6g3vh5nDmvn+2w0UNfxLXTZmBuOisvJRlzO9fDztA45r1kejTYms
         es80Cs9mBMa44H4TxCv7I2TodlT+N077zKATXnVpWzNwogEZJyg6kqW/S9Te/ZnhRQGt
         o9eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ImH/OrRVvaqEiKu/t86zjMd7ldMdTjz5iU5U7ubibI4=;
        b=qj5wV7M7KM+EjLQucaMP8y7zoEshVH/nl71Y10aTw739pk5s5pft05s7cjLM34RGen
         3stYIloIJ+M68WKxg604fVgKEbBOGSTTTSU0YRA+bgceV73sytE+hUUEj+fFQXaQz6eJ
         aKW6oVurJh/IGWAIP2NtQd8N601SlfOYA6q8toezWmGG3BP38jb8NeK6s6UpHFzuNUPX
         hM5mH+G6IbhMSBRzKACEHCsdsRomLnUZu8h20A2op5FUVvD0Cvvahx+xD6oTwRmKFwm+
         ySmY5Ye79uKHZu+yZ5rIxs/fEpss/xuKNKwjhnfVyER0PuZgh4RZ9Qso6eBb6czk3sje
         uQGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ImH/OrRVvaqEiKu/t86zjMd7ldMdTjz5iU5U7ubibI4=;
        b=grRQXb93gIfuvgk5mDSYBbEMcsGWTgpAj/XiWRbL1jJgKCLlJmtcq8Nia9lIoUNlBv
         fn+b6dTXEdvogBm6Pr9pi51zsGNY7FpsSrvOTz4q7zm3rj6zv/0kJzs/ika5XDJVnvIc
         qNk4AYeZMQffGp5AFbKkDXy1W2pkQJZtRTS/WuNpxODc6KQGFPC4WxpLDAaeMNgE2lTE
         JsbBDZS+KJzhIdDTJvbFos56ALz/MgOdi5d9oW0benOJtA90Zwwl+Fbnn9KQmVFaXyKC
         pI6upjNAVHHRIxaEWko2b6V235OwxY7H7g9pji8/Jf4bWvsP0s/bh63ob3GtmFwo/4xk
         reTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ImH/OrRVvaqEiKu/t86zjMd7ldMdTjz5iU5U7ubibI4=;
        b=Y3LSDwFg5Y+olzUF/Ge+6DMAZOYGVCg70MY0ZSK8a7qAjfLbF/kKWH86HGvP8GdjGl
         d+Z2+CTt9Sn/e5ld7ICPRqrZn5JPKxMlr6ftwxiUDrjvPmmzW9HRCr6RzNXV3TUEukg6
         J/1LucMnqNRQegUoUJiVH408rv3qhjywbGY2Xblbt+vueQfE9zwdeMqDNUYJKbbo929u
         IQS/CIx+73iRYisVDd7Po683ACNrf0lqX1P8ZLJdCp5dPawjOkMaUyd/UaaeLlvRSzrw
         UNm91MuiL1u1oc26tiAeALI075izH3OhbqVcIcCm+afEymqHr2QZYJ4ImBF1vbK1c7ll
         kRQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324aw2PpAEvp0xo+5taOIX32aGsZkKuC5D9zh9LqAN5H1l2J2AW
	mTM3E0QOkmfIcOwi3+Xi78o=
X-Google-Smtp-Source: ABdhPJw35XehgYpnkynLo0bJaSebsDpM/O+cpnLz6NlZzby73Zuc+wfdJVN8TJApbVIDWZtSHKrbKA==
X-Received: by 2002:ad4:40c6:: with SMTP id x6mr28109270qvp.20.1602550865742;
        Mon, 12 Oct 2020 18:01:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8744:: with SMTP id j65ls3490004qkd.1.gmail; Mon, 12 Oct
 2020 18:01:05 -0700 (PDT)
X-Received: by 2002:a37:bb86:: with SMTP id l128mr12339362qkf.426.1602550865154;
        Mon, 12 Oct 2020 18:01:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602550865; cv=none;
        d=google.com; s=arc-20160816;
        b=BqehzDW+gWDSJgk+umjr41om5saOBKXzMwZSPjxU3ogEoAHNl5VQXNdHp+xP8L0rAQ
         sYYxlgn++atnYUovr1SqW44mv4ML0IwbP2Otr+d8gTNQtXect+Yw4Z7zQq6aUHKgf2Os
         7h7mbyCGb07fmo8uHvul61ruekUcIJXS26D0mmSZbkOXPj57OsukfkNgYhhaV9+CUyaC
         UunPv39iPW1d4BzSPs/VI7aJtt3XQ5mGAHyqNpL6lzeVEP3I7+nlYqjOy2++DCzTUes/
         PXSskjC1vC3Sc229oHONKHms5C/GAxPWOyvTxjncn3NzMuzke8+Ei90zWZ1vKX2fwrXt
         jbmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=xRDypGdDviDuM4mrb8xlFnSU+AMP5OiHRE1zoPrileU=;
        b=rLZ22MbPvm1Sa3RpOjHgxJ4uQwZYTBFOv6kFeN5ZFCDGiV7xETwZBDhXXl+E/rbdmL
         RzzYBoMUJCw6xyMOqj7QSxVsx3IyXTfGVu59/yPBlq4BkDh+3LAUKgyF05kvSMnvOrXE
         BIVyHKMlfrLAP9xWnMcQIaekxDBAGSGjsZAuXU3zxX6USBX9N+bHyU3dInRoImOW7yfS
         ssR5gF8CI2MfYlI3h1SLBghstAs11YLysqtTPgZzq2YYPGkr3VyVmYNNaNIn6m5i6oGn
         wqTuK/BpVp9x0KtVW0Assm9tzMe/P0ru2nzsI0qMFIfR0sF8RZXgUe9fo1AsMcZsR235
         zOIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id 70si952577qkm.2.2020.10.12.18.01.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 18:01:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: Tfd6JS+IoH86ufoFPtXcOYTQ11hQ5V+DvodJZ1aYnPkbUA3Ir4laKLo+FP4vwjOZchGnhV6tim
 ooioR9CdQ1fw==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="153658201"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; 
   d="gz'50?scan'50,208,50";a="153658201"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2020 18:01:02 -0700
IronPort-SDR: Z05MSQBFk5ZVpZp0q1SvGJp73zF33OPi42Bf9+pkBoinD6+LaM0q9dlnRiAcLQFuK92oIwW1zQ
 2dePMv4asHMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; 
   d="gz'50?scan'50,208,50";a="346017535"
Received: from lkp-server01.sh.intel.com (HELO aa1d92d39b27) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 12 Oct 2020 18:01:00 -0700
Received: from kbuild by aa1d92d39b27 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kS8gV-0000EX-Ek; Tue, 13 Oct 2020 01:00:59 +0000
Date: Tue, 13 Oct 2020 09:00:46 +0800
From: kernel test robot <lkp@intel.com>
To: Willy Tarreau <w@1wt.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [wtarreau-prandom:prandom-5.10-v3 2/2] include/linux/prandom.h:66:7:
 error: implicit declaration of function 'raw_local_irq_save'
Message-ID: <202010130942.FxMQUecZ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
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


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/wtarreau/prandom.git prandom-5.10-v3
head:   3486a21c7e5bafbdbc0f7ea5d40f3dad39022bf4
commit: 3486a21c7e5bafbdbc0f7ea5d40f3dad39022bf4 [2/2] random32: add noise from network and scheduling activity
config: powerpc64-randconfig-r031-20201012 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a324d8f964bf421fa7d8b882b0f64ead28c4149c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/wtarreau/prandom.git/commit/?id=3486a21c7e5bafbdbc0f7ea5d40f3dad39022bf4
        git remote add wtarreau-prandom https://git.kernel.org/pub/scm/linux/kernel/git/wtarreau/prandom.git
        git fetch --no-tags wtarreau-prandom prandom-5.10-v3
        git checkout 3486a21c7e5bafbdbc0f7ea5d40f3dad39022bf4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
>> include/linux/prandom.h:66:7: error: implicit declaration of function 'raw_local_irq_save' [-Werror,-Wimplicit-function-declaration]
           a ^= this_cpu_read(net_rand_noise);
                ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:321:23: note: expanded from macro '__pcpu_size_call_return'
           case 1: pscr_ret__ = stem##1(variable); break;                  \
                                ^
   <scratch space>:195:1: note: expanded from here
   this_cpu_read_1
   ^
   include/asm-generic/percpu.h:320:31: note: expanded from macro 'this_cpu_read_1'
   #define this_cpu_read_1(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:128:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_save(__flags);                                    \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
>> include/linux/prandom.h:66:7: error: implicit declaration of function 'raw_local_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:321:23: note: expanded from macro '__pcpu_size_call_return'
           case 1: pscr_ret__ = stem##1(variable); break;                  \
                                ^
   <scratch space>:195:1: note: expanded from here
   this_cpu_read_1
   ^
   include/asm-generic/percpu.h:320:31: note: expanded from macro 'this_cpu_read_1'
   #define this_cpu_read_1(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(__flags);                                 \
           ^
   include/linux/prandom.h:66:7: note: did you mean 'raw_local_irq_save'?
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:321:23: note: expanded from macro '__pcpu_size_call_return'
           case 1: pscr_ret__ = stem##1(variable); break;                  \
                                ^
   <scratch space>:195:1: note: expanded from here
   this_cpu_read_1
   ^
   include/asm-generic/percpu.h:320:31: note: expanded from macro 'this_cpu_read_1'
   #define this_cpu_read_1(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(__flags);                                 \
           ^
   include/linux/prandom.h:66:7: note: 'raw_local_irq_save' declared here
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:321:23: note: expanded from macro '__pcpu_size_call_return'
           case 1: pscr_ret__ = stem##1(variable); break;                  \
                                ^
   <scratch space>:195:1: note: expanded from here
   this_cpu_read_1
   ^
   include/asm-generic/percpu.h:320:31: note: expanded from macro 'this_cpu_read_1'
   #define this_cpu_read_1(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:128:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_save(__flags);                                    \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
>> include/linux/prandom.h:66:7: error: implicit declaration of function 'raw_local_irq_save' [-Werror,-Wimplicit-function-declaration]
           a ^= this_cpu_read(net_rand_noise);
                ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:322:23: note: expanded from macro '__pcpu_size_call_return'
           case 2: pscr_ret__ = stem##2(variable); break;                  \
                                ^
   <scratch space>:199:1: note: expanded from here
   this_cpu_read_2
   ^
   include/asm-generic/percpu.h:323:31: note: expanded from macro 'this_cpu_read_2'
   #define this_cpu_read_2(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:128:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_save(__flags);                                    \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
>> include/linux/prandom.h:66:7: error: implicit declaration of function 'raw_local_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:322:23: note: expanded from macro '__pcpu_size_call_return'
           case 2: pscr_ret__ = stem##2(variable); break;                  \
                                ^
   <scratch space>:199:1: note: expanded from here
   this_cpu_read_2
   ^
   include/asm-generic/percpu.h:323:31: note: expanded from macro 'this_cpu_read_2'
   #define this_cpu_read_2(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(__flags);                                 \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
>> include/linux/prandom.h:66:7: error: implicit declaration of function 'raw_local_irq_save' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:323:23: note: expanded from macro '__pcpu_size_call_return'
           case 4: pscr_ret__ = stem##4(variable); break;                  \
                                ^
   <scratch space>:203:1: note: expanded from here
   this_cpu_read_4
   ^
   include/asm-generic/percpu.h:326:31: note: expanded from macro 'this_cpu_read_4'
   #define this_cpu_read_4(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:128:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_save(__flags);                                    \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
>> include/linux/prandom.h:66:7: error: implicit declaration of function 'raw_local_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:323:23: note: expanded from macro '__pcpu_size_call_return'
           case 4: pscr_ret__ = stem##4(variable); break;                  \
                                ^
   <scratch space>:203:1: note: expanded from here
   this_cpu_read_4
   ^
   include/asm-generic/percpu.h:326:31: note: expanded from macro 'this_cpu_read_4'
   #define this_cpu_read_4(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(__flags);                                 \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
>> include/linux/prandom.h:66:7: error: implicit declaration of function 'raw_local_irq_save' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:324:23: note: expanded from macro '__pcpu_size_call_return'
           case 8: pscr_ret__ = stem##8(variable); break;                  \
                                ^
   <scratch space>:207:1: note: expanded from here
   this_cpu_read_8
   ^
   include/asm-generic/percpu.h:329:31: note: expanded from macro 'this_cpu_read_8'
   #define this_cpu_read_8(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:128:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_save(__flags);                                    \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
>> include/linux/prandom.h:66:7: error: implicit declaration of function 'raw_local_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:324:23: note: expanded from macro '__pcpu_size_call_return'
           case 8: pscr_ret__ = stem##8(variable); break;                  \
                                ^
   <scratch space>:207:1: note: expanded from here
   this_cpu_read_8
   ^
   include/asm-generic/percpu.h:329:31: note: expanded from macro 'this_cpu_read_8'
   #define this_cpu_read_8(pcp)            this_cpu_generic_read(pcp)
                                           ^
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(__flags);                                 \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
   include/linux/prandom.h:68:2: error: implicit declaration of function 'raw_local_irq_save' [-Werror,-Wimplicit-function-declaration]
           this_cpu_write(net_rand_noise, d);
           ^
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
                   case 1: stem##1(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:211:1: note: expanded from here
   this_cpu_write_1
   ^
   include/asm-generic/percpu.h:333:36: note: expanded from macro 'this_cpu_write_1'
   #define this_cpu_write_1(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:147:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_save(__flags);                                    \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
   include/linux/prandom.h:68:2: error: implicit declaration of function 'raw_local_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
                   case 1: stem##1(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:211:1: note: expanded from here
   this_cpu_write_1
   ^
   include/asm-generic/percpu.h:333:36: note: expanded from macro 'this_cpu_write_1'
   #define this_cpu_write_1(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
   include/linux/prandom.h:68:2: error: implicit declaration of function 'raw_local_irq_save' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
                   case 2: stem##2(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:212:1: note: expanded from here
   this_cpu_write_2
   ^
   include/asm-generic/percpu.h:336:36: note: expanded from macro 'this_cpu_write_2'
   #define this_cpu_write_2(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:147:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_save(__flags);                                    \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
   include/linux/prandom.h:68:2: error: implicit declaration of function 'raw_local_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
                   case 2: stem##2(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:212:1: note: expanded from here
   this_cpu_write_2
   ^
   include/asm-generic/percpu.h:336:36: note: expanded from macro 'this_cpu_write_2'
   #define this_cpu_write_2(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
   include/linux/prandom.h:68:2: error: implicit declaration of function 'raw_local_irq_save' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
                   case 4: stem##4(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:213:1: note: expanded from here
   this_cpu_write_4
   ^
   include/asm-generic/percpu.h:339:36: note: expanded from macro 'this_cpu_write_4'
   #define this_cpu_write_4(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:147:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_save(__flags);                                    \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
   include/linux/prandom.h:68:2: error: implicit declaration of function 'raw_local_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
                   case 4: stem##4(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:213:1: note: expanded from here
   this_cpu_write_4
   ^
   include/asm-generic/percpu.h:339:36: note: expanded from macro 'this_cpu_write_4'
   #define this_cpu_write_4(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
   include/linux/prandom.h:68:2: error: implicit declaration of function 'raw_local_irq_save' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:380:11: note: expanded from macro '__pcpu_size_call'
                   case 8: stem##8(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:214:1: note: expanded from here
   this_cpu_write_8
   ^
   include/asm-generic/percpu.h:342:36: note: expanded from macro 'this_cpu_write_8'
   #define this_cpu_write_8(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:147:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_save(__flags);                                    \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
   include/linux/prandom.h:68:2: error: implicit declaration of function 'raw_local_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:380:11: note: expanded from macro '__pcpu_size_call'
                   case 8: stem##8(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:214:1: note: expanded from here
   this_cpu_write_8
   ^
   include/asm-generic/percpu.h:342:36: note: expanded from macro 'this_cpu_write_8'
   #define this_cpu_write_8(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   In file included from lib/random32.c:39:
   In file included from include/linux/random.h:118:
>> include/linux/prandom.h:68:2: warning: variable '__flags' is uninitialized when used here [-Wuninitialized]
           this_cpu_write(net_rand_noise, d);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:380:11: note: expanded from macro '__pcpu_size_call'
                   case 8: stem##8(variable, __VA_ARGS__);break;           \
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:214:1: note: expanded from here
   this_cpu_write_8
   ^
   include/asm-generic/percpu.h:342:36: note: expanded from macro 'this_cpu_write_8'
   #define this_cpu_write_8(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:147:21: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_save(__flags);                                    \
                              ^~~~~~~
   include/linux/prandom.h:68:2: note: variable '__flags' is declared here
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:380:11: note: expanded from macro '__pcpu_size_call'
                   case 8: stem##8(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:214:1: note: expanded from here
   this_cpu_write_8
   ^
   include/asm-generic/percpu.h:342:36: note: expanded from macro 'this_cpu_write_8'
   #define this_cpu_write_8(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:146:2: note: expanded from macro 'this_cpu_generic_to_op'
           unsigned long __flags;                                          \
           ^
   1 warning and 16 errors generated.

vim +/raw_local_irq_save +66 include/linux/prandom.h

    58	
    59	static inline void prandom_u32_add_noise(unsigned long a, unsigned long b,
    60						 unsigned long c, unsigned long d)
    61	{
    62		/*
    63		 * This is not used cryptographically; it's just
    64		 * a convenient 4-word hash function. (3 xor, 2 add, 2 rol)
    65		 */
  > 66		a ^= this_cpu_read(net_rand_noise);
    67		PRND_SIPROUND(a, b, c, d);
  > 68		this_cpu_write(net_rand_noise, d);
    69	}
    70	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010130942.FxMQUecZ-lkp%40intel.com.

--h31gzZEtNLTqOjlF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICD/zhF8AAy5jb25maWcAlFxLd+O2kt7nV+h0NncWN/Grne6Z4wVIghIikqABULK9wVHL
dMcT2/KV5ST976cKfAEgqO7JomOjCq9CoeqrQtE///TzjLwfds+bw+N28/T0bfa1fqn3m0N9
P3t4fKr/Z5bwWcHVjCZM/QLM2ePL+z+/vu7+rvev29nHXz7/cjJb1vuX+mkW714eHr++Q+fH
3ctPP/8U8yJlcx3HekWFZLzQit6oqw/bp83L19lf9f4N+GanZ7+cwBj/+vp4+O9ff4V/nx/3
+93+16env5716373v/X2MNucn13cf3r4fHnx5eHi7PRh89v9py+fPp19OXm4vKg392efthen
F5+3//Whm3U+THt10jVmybgN+JjUcUaK+dU3ixEasywZmgxH3/307AT+s8ZYEKmJzPWcK251
cgmaV6qsVJDOiowVdCAxca3XXCyHlqhiWaJYTrUiUUa15MIaSi0EJbDsIuXwD7BI7ArH8PNs
bo70afZWH95fh4NhBVOaFitNBOyY5UxdnZ8Be7c2npcMplFUqtnj2+xld8ARehHxmGSdOD58
CDVrUtnCMOvXkmTK4l+QFdVLKgqa6fkdKwd2m3JzN7S7zP1ye87AWhOakipTZsfW3F3zgktV
kJxeffjXy+6lHpRIrom1IHkrV6yMRw34/1hl9mJKLtmNzq8rWtHAetZExQttqJYuCC6lzmnO
xa0mSpF4MRArSTMW2VOQCm5kYGwjNiJgfMOBayNZ1qkCaNXs7f3L27e3Q/08qMKcFlSw2Cid
XPD1MLFP0Rld0SxMz9lcEIX64GhxwnPCvDbJ8hCTXjAqcPG34xlyyZBzkhCcJ+Uipkl7OZh9
xWVJhKTtiL1U7e0kNKrmqbRl/POsfrmf7R48OforMpd0NYjeI8dwSZYgxkLJgWiODI2BYvFS
R4KTJCZSHe19lC3nUldlQhTtDl89PoPRDZ2/mZMXFE7YGqrgenGHdiA3R9oLCRpLmIMnLA4o
YNOLJRm1+zStaZVlU12sm8/mCy2oNHIU0gzTyn20ha5PKSjNSwVDFc68XfuKZ1WhiLh1j9Pl
Ciyt6x9z6N4JMi6rX9Xm7c/ZAZYz28DS3g6bw9tss93u3l8Ojy9fB9GumIDeZaVJbMZolLCf
2UjeJQdWERhEF3DVVs5eQ1ygDsEdRzKBvfGYgs0BdhVkQiciFVEyLDTJgnfjB6RjeRlYLpM8
M3bDHs4IWsTVTAbUFQ5FA21QGfhF0xvQSkt9pcNh+nhNuD3Ttb00AdKoqUpoqF0JEgfWBNLL
suEKWZSCgl2SdB5HGbPvL9JSUgBSuLq8GDeC/SXpleWmG5JUzSUKHpSZjscRCjugXN4GtMER
eWRfO/ccXIceseLMkhxbNj+MW4y+2frKlguYCm54EF7g+Cn4HJaqq7MTux11Jic3Fv30bLiv
rFBLQBkp9cY4PW90Sm7/qO/fn+r97KHeHN739ZtpbncaoDoWWlZlCbhL6qLKiY4IoMLY8Sst
pINVnJ59smzpBLvb3kMSWiDEs+HnXPCqtPxFSea0sUpU2EIFABGHTEiULdtB/EG1jBf2VClh
QruU4bqm4HRIkaxZohZhZVN23yBLO23JktDJt1SR5MSZuWlO4RrfUTHdb1HNqcocqAT6IumE
EWt7JXTF4hBUa+kwBFrJkegMRnD8HOBIgBZgV0ODLWi8LDnoBro3xYUF/4y4DGLuDqkfE4AE
iD2h4IticOdhoQqakduJc4fdGewrrFM2v5McBpa8ApBk4WKReFAcGiJoOLMXBW3ZXU4CMwLF
xuuGkY+6XoR3keg7qZLQPjhHL+yaFrhsvASUwO4oQj2EJfC/HC6T4xh9Ngk/TEFnsGgJGsCY
g6EH9EQ0xdio8IDtD7L1oYHzO7iqmJbKhMRodq0YqUyHX3yHloNlYKDKwhoPlD0H+60HsOmp
TUsIbDddwEV2UVoTtzSwKwiG0LhaNqgxtkXO7CjPuQ80S0FGIiTuiAD+RkRomZ5K0RvvV7AT
lkhKbvNLNi9IllpqbdZuNxikbDfIBZhIJ5JiPLA6xnUlHFNNkhWDFbcClZ7RjYgQLGiYlsh9
m1u2u2vRTnjQtxrB4H32AR5ox5HzRM0w3sPebR9WDEvU2D8i8TIUfVhs8raIzdk5d1fS68Dc
0Ismie1FzGXC+6j9SKeMT08uOijd5o7Kev+w2z9vXrb1jP5VvwBcJOCQYwSMAPgb1N12H8YM
ws8fHLGH1nkzWOdLnXOVWRU1Nj5kzXleEgUx2NLtQqIAM47ksvEoaAGxP5yCAO/egoHgaMCE
rhCxoxZwj7kVT7vUBREJwFvHjctFlaYZbUAEaAMHv8JDumsEgHgLomXFiGvJFM0b07cC8Jyy
uLN9VljFU5Z5IU1/UG5aqteOMr7staPc77b129tuDxHf6+tufxhiAOBDn7A8l9rwD5N2BAqE
wJb6ALmsHB9BEai7ANmyi2sqPh4nXx4n/3ac/Ok4+fMEdh+kYN0vaEtLKxAhGRoSC6Ov5I13
9Ru8qWWZMaXLHGJDhWkGd1BBEsxq5ZUv7p5wRGWRr0npVbT0B8C2433sRFzTgwRGIeXkbbW3
iRjRqH4gY4UD5TkoPuBBT6iNSYNdtkGARcVGdLfW/citFRfCgNAmv9qq/1i3++NJJD8/s1AO
3L8IjWyRMOJcMKTAiSnYU0MMbPzyImI2iMgr7+zzHMQmCozkIK6BwOrq/PwYAyuuTj+FGTqT
2A10+tsP8OF4p47bALSO8QEVTTYDAlJLlBg3dyTjdnTKBNi5eFEVS0fkTFzLq49DbAg4RTMb
TeChmlxswu3MoALf2ITDo4NummHgNCNzOabjpQGgPiZ0Vmexpmy+UM4a3AV17rfgsrQvLSUi
ux1DMFK0CUfMGJx+Gt4kjIgde22S1aN2E3fwHO59CvEAKDjGJzbGbI6O3Lb6D8Yl8ZZcJdFc
n15+/Hhi9cLss+k7FkKDER3owSIqGvCMIFSyKKMeSx95mxtuXJfxXFNsFXifyL/CCVlbOyvn
zUuKyWnLqwubE7PKoJ+5MTONM3raHBBSWL7IMT/GUBersFcHsYcTyvYAAOAYPULPSTxJhIVm
IZRtOgKgNBi92QeZyfr5cVauxcPj9hGg0Wz3im92b6MdmX5w5fIQQrY4GHfMik/REMs3qXg7
qXRkHb5czie3zaK8cd1RRpLQ/pcA8OYVtVNsYPtLgYiGYMbUXfY4q4qtPG3iT4yYIQJhBZ1c
UNKkYFMVjKDy0s4y4m+gaHPhNUWCL2kBIcAcc3FXQ9Z5lu7r/7zXL9tvs7ft5slJNJtZBbUe
SLoWPecrfFESaFgnyH6Ksidi/td3OYbQpaqwtxV3h4BysAveFklcWQc5Ma4xKZVwAifUhRcJ
hdVMpJ9CPYAG06zM6f94L2M8K8Wy413+HyLyRROi9wIJim5q/+FTH3Z99TwxWHCTvUY++Bo5
u98//uXFbMDYyG4KGbbWouWzrURY67vp2f1T3U4ITf2isNm9Ge17lNdi9geGI7H9nUPMaVH5
Yu6JiobsosOyAPDd5iwa44tnW8b9KmeJJa3OME7y2EJp9mi12LLo1nINqygZd1ywFip27LDv
1+zAPOAZFnf69OQkqPFAOvt4EpAJEM5PTmxBNqOEea/Oh9qKBp8sBD6UWdmFJsvbBLCYztMr
IhhxUAPqFRjsQpIYcQXJtJf4yWBczOFJhUEu4sBJq27e6oGzZAVCvJBptwOM9hV/wVWZjbDO
iEfATyOfc3kxQJmWNSUsq0TYPC3pDQ29xpp2QMgjOIXJnoZYVmKO4f+tk+ehJimAKw3bNkHk
QidVXgbJ+H5OmoA6JCt89bCgOk+obF9p+sACjBzaTLxM5o0EmeBaeQmmRjIZvmKaUXwwSDMa
q05+OXBkPocpAwCG9lgmya3ZdwD1cEKtPtoBIMsyOgela/E0KGhW0auTfz7e15v7L3X9cNL8
Z6vrxdJotPR0AWK4ljBpPvEaeE9hbUVQ29yDW5Ox8XkNODOPane8oFygQTw9d6YQgH8k4ToD
kTi5JHNBZT5l2hNaoN/LmPQi7ThPTMnT8PBAb+C+akUECFNi+2AthvggNI1zrct8MgkApDiz
o6e8j0ma6hFH8uvrxhVrmqYsZpgkPJLfGA0FqNHJhANx3iphOEagMQZn0wgftHBJb49mPXsA
3SmhJAZ8k7KH/9H7m2XVvcis5bdS8DLTWRS7DXOV2w7EHnGIS0EjeZoi4jz5Z3vi/jdYJ1O0
BRhTHGMrF7eSxWRg7Bmc2ocKlOwuXEjQ5Ro3++0fj4d6iy+7/76vX2EHbvzjmLfYeaFrrGWo
jWapZ5cYyNzQvHbepEQdY79sAtWATv0O5hXgSUTddx1A5HBUqApo4NKJAj0z36C5FThANi/w
jTHGqg/P0KG5xfd8xQoduXVvzYZg25i9QTPgkZZ+oN20CqqCBF6G29thALti8OS8ihl6WhXG
j2sqBBeaFb/T2DUohs15jBqK4cyIC86ty9/pvAQhG7zWGMyAnwTrqFh6272UesPLHC91W/Po
7wpiOKkBiTdZpVb27XV0+KQdufmPJ4FdYTJrnLsyJMz4I0ox79MKpATichMxw/i4vlA7xhjt
mtHJh0TqaGcXvkKwD2BiAZ2b1Ao+QwTJWGnyHZYe3I2OpN2/qfKI8/ImXvgga03JEkEMxbc0
El9XTPjDrAlcC2a8J1YCdrWsAaY2XflDvDxLLP6Q3Fo7j6DMybMZDvgZq6SNvi6d50dDBjUE
oOMUy2FzuMjMV2N8OIT7D3yYL/z+EHhDfDMAuM5UN4Ymcm5bgdAJDU+XbA/xIU2v8pG1aeTE
U3C4sKxbjwq3rUNnNMaHJ0t7eFIBGjTmDJ+e8RU1sAV6wxQaGlOKikoekJbpbl7WHA0c1uek
xY/l1K10eaC3lQufGsRm8VLlhrFYCZKDYbUGiDPAcRpfeddgDSwC6qdkc1mB8Aq7wKiZoyUT
z7S21PMzWIN2tacXGHpprbiLH9AO2Q+ssoMh85iv/v1l81bfz/5ssMvrfvfw2Oa0hoJcYGth
wlTMhXMbtta36q4OontnPDaT/xj5HYDQTQx3JcfiBNuLmWd7mePsJ54+2u67aWoRd8ZJKEnT
8lQF0ic7N+QgXrQc0hQdx5Ei7mv1szAq7TjZ/BgZ9UOAZ5veC+bq1zpnUjbFq22ZFCAlE0HZ
m6wKuL6ghrd5xLPQkEqwvONauqUVdqteL5gyj+BWjBG575pYHtXEqjz2FBtJMpYMjMi1m0Ae
aum0WLcJUouE5VaRnAcbmyp+rx0DxLlgtqEbkbQ6Pbl69skYrTkK0hEAy3Cl/Ld3e/1N9NU4
NOEPsY7CFcHWzhkW7dIinio669liLtV4ifiGM/EWYgSPj1IlCV16JDdfy0BMFYvb0jVVQbJO
25qXPg+32R8e8U7P1LfX2n35wFIH04kkK8zXBm+oTLgcWK3HhZQ5zUOazZvRUcjRsxzuIof4
M2ajNvTUdkoPm00E3HzhwYcaViuggX6MN6E61q253xpZxOUtBNqDnnXNUXptKV96rbvDHVWI
ItEujgx/PuEscogZMTdheRZZnNo3uz1VTMIZ2zdy2306hijw2rEWufUli7HXTWc4Wr4ubOwF
1xii6wmiOaAJ2lA4lTO+tu62/3vPWOAgYHUzUpZoCkmSoOXUXUbfnCL9p96+HzZfnmrzGd7M
lDIdrPOMWJHmyo08e5gwJsEvbuDaMslYsFKNmsFMx8N5Y882COhPcGqBZvV5/bzbf5vlm5fN
1/o5GGAfzcwNWbecFBUJUazsIRYEmNLIEtyMlwW00ns3mGelIdIK/kGo5WcARxx+RIpl93O7
oNoc8pLS0tTRuRrabrX/2MFx606+OFSH1RTmqMZWYCnJhXPq8aj0CmMnQfE6hH1AoPQFYw/c
hPuqbmAdKqlWfi3JUlrn0L2LGVHmrDB9ri5OPl8OqwrFBeH0MgRuRUzAuATJqYClYpYi9Pzi
1Y3nJGSIfGoarNfGzJmAEPLqN+sUg4HJXcm5pad3UWVh67vzlNvfkt4ZlMitK9a1aBdNdCmK
pvajzcE4IqdCIFRSooLbZA7dfORof2WRdIV+XUx5DEiXCusO25DMrrnE0HD6WyC4BToCd7vI
iVh+b3wTthE/E49UoxOJbWemTclw//vvsor68Pdu/yc+QoYqGmD3NJQpA89i1cPhb2AXnZSy
aUsYCSuRysJCuUlFbhIpQSqsG3N4odLjZkvDCZaNfcMP/cKvLWUPVTR4XhUsQwamsrCUp/ld
J4u49CbDZix3mHjaaRgEEWE67ouV7BhxLlDJ8uom9DRkOLSqisJLe94WYKH4cqpCpum4UmyS
mvJwhWVLG6YNT4DHokn4jdDQIKKZJrLST+7b1H67diMqnNek4rJrdoevknJaQQ2HIOvvcCAV
zgWMCQ9/Jomzw4/zY8C454mryM7MdO6ho1992L5/edx+cEfPk49epNlr3erSVdPVZavr+I1m
OqGqwNR8+SExZZ5MRMu4+8tjR3t59GwvA4frriFn5eU01dNZmyQ9W9626UsRkr0hFwmAN4OD
1G1JR70bTTuy1A5JmeTsxE0wjEb603RJ55c6W39vPsO2mKpsa465zI4PlJegO9MUvazwTx3g
O8mk6cA/tYCZWd9/jXgADpk8AfjCvByVtg/MTXY3HN+WR4hghJJ4YjcMv6qbMMsiCe8NDjMs
WqLyYHt2NjFDJFgyn/xuyhgQ6UCvtik42Cojhf50cnZ6HSQnNC5o2NllWXw2sSGShc/u5uxj
eChShj/CKBd8avrLjK9LEv6omlFKcU8fwx+3oTymv4pM4tB3I0kh8VtBjn9Tw67QiuD4iMlQ
BAfjJS1Wcs2malpWEv+IwPR1gEB7Oe0t8nLCReIOCxmeciGncVCzUsCdkxzZOcSCEq39FNe1
UNMTFLEM2Vhhp8xFaj6Ft93wTekkJtu8Bg5YCversRBPnBEpWchQG3+MHzDLW+1+0RZdO6AH
v/j6Pfh3PgxowZRq85dbXAQ8O9RvBy+Tbla9VKM/CNAC7VFPj2CDautQSY4ff0yIYuKaTOQW
SQoyEVPWKtXLOA/IYc3wlU+655TO8RqejsoAesJLXd+/zQ672Zca9olpjHtMYczADxkGK3HW
tmDwgzHKwlTJmFdJq/xgzaA1bJfTJQv/0Qs4j8/2NyLm9y679+we3OdgNq2XMwvjn5iWC9CP
sI0r0olicgmObaLqywDZNEwLeejOiOHnGRjMW5Gt4KZu2zk3LHDD1FhgCKoWCiLszjZ5mRja
3pPuGiT1X49bu7bSZnZyqs1LitPk/2KVBlmNo7/uAo0m3QKX2t5Tm9MxfZAlVDoEzcTNwbdN
bZVD+JyARdNYTJwiDiDL0I0xHUs7FWZakjL2VwDR+uQA0dqVRy7ZqCH4Z3mQhs/xS+lNN121
heJWVeSOQdRoAMZXE93BXLu9SyKdYsLhlKYOL4Z/QuDHYpELI8PmgQG4t7uXw373hH9N4t5X
ReRPFfx76tbFYjv+Qaou9zN99jf4aeXNyMYl9dvj15f1Zl+bNcQ7+EEGvlgxZ77WZUaav4A1
NZEGrMvDPuPYVE0iePcFtv34hOR6vJQuxzPN1ax4c1/jZ7yGPMj0LfghDm4rJgkt8Fp/d2+/
/3Z2SgMsXVX1d2fuX3fCx92rAn25f909vvhrxc/2TIFocHqnYz/U29+Ph+0f31UuuW5hlaJu
uffRIYYRYmL/uYgyzmNG/N//j7NnaW7cZvK+v0KnraTqmx2Repg65EDxIWFMkDRBSdRcWI7H
ybhiz0zZzvcl/367AT4AsCFl9+Bk1N0A8Ua/Ie3XbcTM2xcKbk23367tHx7uX7/Mfn19+vK7
aXI7J3lNpZIo4/WNvzFk2MCfb3zqgkB7QhXC3T9qVVUn0OKifOY0Xi8sWSyvWRPQ1oLBkpjC
pVDdh9kt5ja68+kGnq5u2t6gbVdh5woZCx84eg8wyoG7J0LVaq6zBT1C2s/byGKLVfqk+x9P
X9DWpqZ7sky0Tq9ummmno1K0DQFH+nVA08Ox5U8xVSMxC9mBPqkQ3brRX/PpobvBZ4VtPjoo
l5J9kpW6Nc4Awxlf7410f8eal6mxVntYy9E5hTwmYOnkcYjuNPQpUqlvpqzip7BSXpTxZCrS
p9eX/+BB+fwdzpTXsSfpSW4ivRcDSKrtY8xhpFnypI90/zWte2Mp6btnDw2J1s3iE7rep0M/
POxuDBp86d2BjgeGsXAYZbT2xxU7OpQeHUFyrBwaJ0WAGpyumlYFTVAKSCQKZfKKjlQ6lo5r
UksAIPPtKPTE5oLo4yGDH+EWbtqa6XbFKtkZlhj1u2V6JqwOJkBAUzyhBdd9QAcYZ9rmUUC0
JE+/pGdCRA9vsQ8rtVZSk5WUsZfyOpQ+sORF49hug7/4F8lPG0c2L5qatKYIhuID+sNbnDDf
s9a6FwwX8v4j2k1SgEARWZkpRptTTvsb1dq1BT+U3g9G1fL7+HH/+maFqSF1WN1I/w1H1brf
jKxVQxVpBzU+D7MiY0cvoGKQYbGb58476YNntsmoQnpyy+Ac2jFlQo9OzUWenWlnlH4Y5Dgc
4J/AjqFfhkqXUr/ef3t7lhl9Z9n936ZLCXxpm93CrrW6pTrxMgG1lXbhpnU2/sgnv9pKky+Y
xOs3ZxpjBdTqEyo6fTy+uYNSzhj6TBoNNV3fETI486CbgVRB9Sx+FfKPVcE/ps/3b8BMfX36
Mb1i5ZJJmX5xI+hTEieRPHgcLcM4Pevc6qpCnZ80ahRmtEqPzguHYbwn2MIddUYz7Mk08vb4
TMNfqGaXFDypq7M5Wng2bcP8tpUZ4lrvIta/iF3ajbPwgaNxdhPWV+pZUOxk30vmUUPELhZZ
mt2SsMCuxmVeHUrkNbC0DXXCDguBxwIOu5dpYeBZKHa6R2Mwr7muYClbR1PBTYpwK4DNMfg3
9/JXwt/9jx9aPLDUr0mq+wdMfGIfvMhuQIdxdtCu4vBbxQ25PwvuXJpy3Noj5s+orI0M0qDq
5yh5XmmiShj5+PzbBxSV7p++PX6ZQVXdVUXv9pJHq5Vnz4qCYuaLlNGKQo3KpQhBEnSRS7NQ
7O0FNSDaU8XqRCVlou24Jrm1EvWNEu1Lf3Hrr9bmSApR+6vMgmU4tsaSKfeTZQV/Ngxd1+ui
xuguVKpKhyETCxyY6AJBPD/Qq5PXis/lJlDKj6e3Pz4U3z5EOIkuLaDsfhHtFppLY7SXwfB1
y7VQyRFa/7IcV831BaF08SA3mB9FiBVAJo+CPEGMvWQ6cDeRalad09kTE1ojggqmnGxC6zd4
6+z6bWKcECfZfkfNwM1KtL675ADIocjKOK5m/63+78/KiM9elGMPkSwAq1MFKE7xelVmTbJh
ZG4zxB62zFyzAGhPmQwFE3t02rLWoyTYJtvO7OLPza8hFt0C3ecTUuyyQ7Kd8ASyZlzQzkne
n0Fm25IR1XGtSR5m4CmwpWj/doQJAhaOgbo2grAAqFzOSNRtsf1kAOJzHnJmNKB3azVghtAC
v3M9HUmB0TqYjQL5LN3BUyHQAmrAlA/t2WyIdOdTjiZRsU/Q0dByM+OYfmlIZQTMXZenaRTo
FYgYqs633rDPde72+UGmoKGnridKacNvj0bVpRB4RrJy4Tf0LfEZtubFWg4wdhcJMmB6LxLE
1fZyQ/MreHF7Bd8EF/GuLkYxsBtow4ziI/0FDG3HdYHmItruLa1rV2fq2ghUopkq3vMjTzT1
di/MAFSd+S/ESGIRwjSIZZQjDqqwdJcKxOxPnAyDl8g03ML5r0k1ChpZABVkb5gZRzBaRwQc
gVTGQZ0MlxJZr/oeWXUaORegTjZx6OnvFH2QFZv59PagKSh6sS/JRVEJOKbFIjvOfT2sN175
q6aNy8LY9xoY9ThE13UKpb0ZlSwHzs94vjncScK8LihTWs1SbnEEEnTTNJroBPO5WfhiOddg
SQ4DKQ4VZsurjjJZ4TAT+7JlmWFDDstYbIK5H7p8G0Xmb+bzBdFEhfLnenX96NaAW5EJX3qK
7d67uSHLyiZt5vQxt+fRerGipKxYeOtAExzxgoLetyBOL/r80PrXrMOknxHN9CIVROPgKbNa
K+JUj97HiIi2qmXizHFejyWm3yPqj3x5rXRcaZIAU8WnOUwVHE4tfzl+fwSuJkDMKBKdJ2Ae
NuvgZqUtDgXfLKJmPaHeLJpmuZ4QgyzcBpt9mYhmUiRJvPl8qfN2VpeGfm9vvPnkuFNQZx7d
EdvCuXPgg25DvVry+Nf924x9e3t//fNF5vF9+3r/Cnz3O+qm8OuzZ+DDZ1/gHHj6gf/Umcka
hWHyJPl/1EsdLvIkeCExhjY4RI+/ECXzcnyN59v74/MMOCfgZ18fn+WrW4RN81iUTsXppSo0
jfbpztRww28pD2NKsi6hQpVEeHWef9GUj0m0pzJcyc0QZhFmXI90BrrfJLYdfUQcBO2Nsg+3
YR62IWVix9T7ia55MI784dCTwd2x/oRWPMRTlc+P92+PUCmIg98f5HxLpebHpy+P+Pc/r2/v
Uvr/+vj84+PTt9++z75/m0EFSqrQLhaAtU0KLAbGLBnfQvMgKi4o/hDRIqxpX0hE7i4zHEAS
uYMle4qrdcDic3jsYvMxjzwrotrhrQsk+IKHFbWpFjIMFOpNANCvvo+//vn7b09/6UM3MLrd
wpuGs0I90paRprobhVb72/QQ1cpaq05BcC3C7mllUiM3V4/JaraFYfPuMf3rMJPmohZ27XvT
El0/JtGbiAuTaO1Lq+pkhsKMeauGuoQHCh7fLOnCEY/XSyqiYggJrlia6en1e8S+rBfr9RT+
CY6Vqsin/S4Za4jJqwPvxicGow58b0HS+x5RTy6Cm6W3mlZUxpE/h6FrVTDVVIDq8XlyujAO
4njSU98PYMa4SlMxFViywI+8+epSpVm0mSfUKNYVB/6JqvbIQqi3cUh6Q/koWEfzuXfh42q5
9VsGY9Z7hdRkt8iAdji6dPcEFsvsoHrYZKR7c8ky1nMsEuY6DmQLuk/P3v/+8Tj7CW7RP/41
e7//8fivWRR/AN7h5+kWFoYOLNpXCuoORZdo8jGYvqzhcDFATa9ovUsDW63d6QiPpA9Jbvqc
SUxW7HZ0UJ1EiwjdtNEcbcxP3TMZb9bcoL6qnw3zQ2mkELSXAlIw+d8JkVE9Pjc5nWwJz9gW
/kcgjKjsASq91Iw05wpVld0XtBvb7vN/mSN46l8V1AQSxFhSoIGTFk6VdP3FGoeo2W0Xisw9
WEi0vEa0zRv/As028SdIa3kuTi3s8EZus8mU7ktHeITEQtGNdTpYaJwuu/Mh+jy5yoRh1DXE
gLIIBE7tKO4AeKcImWxdvY+E+estClTZYVq8LDy3XPyyMpKy9UTqobDeZ4XW3HSkSgxQ7lSU
CG6Q4cs3vxDfqxLpl1PXXb5052gAPYywxqQrwJV+b/5JvzcX+20R6r2etsbo7KQdZlcnSwwI
N0vHFaMugyOsokvoA6fWt6oc4wBhD9rrqYq4qCxgAp/xdZMcyLLy7oHbWiWaGsWFHsUp2X3A
DtLwtKDVJaNDwO1MjzmA+nioSef+nWFo0ktdwvvE4cnDqi7v2GSTHlKxj5y7dI8ScGndQPxc
bS2QyFk0mXAEkvlVzNu8WXgbb3oipd1DrLSzsyTZxfXe6icrp+cQxqE7AkN6fOiRCYBVN4yX
oBTozFeLKIBV79sDMWBksktlesDkGlJI81y0fUhqCEKbt3ZQ4YxLivXSHumRhpNvSHVjU01G
GWCUN5ZN4kyvKynugPOAqYaVSCdj7ojC6f1lrIRosVn9ZY1niB3b3CytCTjFN96msWiVW6s9
+yWXF427YSUPaKZWYqdRMAan0Lkfu2uPLfW/zoZYrPFwohpMDloS9oWe9KlEECHidw8gbQtM
OYeaFKdlQsaa0G1GdGlOttIAaT7n/3l6/wrYbx9APJ59u39/+vfj7Akfs/rt/kHLdi7rCve6
XkaCeLHF5GhZyTHkjMHBOZ8U0UXzsemIiJIjPdwSe1dUjHoWTFYMGz3yQOQ1ZlN+UXpnYwWu
ooJlumpUgkbdAI7Dgz1AD3++vX9/mcX4NOF0cEBEhOMBRBm7LXfC8QCW/Gaj7QQEbLkub6Fe
h2yLJBs/LidZic7mxzkVtiIx+dGaRdS6MmFIqf1IuVeWYORFIFHH06SuQ+bgiOVSZ5RnUYeq
4dhNBlfLfzoucmeFGbP2WsgNcVDBqtphPFLoGoaXfElKYctgfdNYn1F6Ext4Vq7P9vfhxqBW
icTZapQBOPkkAhs/p6CankQD2tK3RCm9iqs1g3bFLNTpdNxDCBwLHLD0YpIEeVJHCRnRqNAs
/xQu/ElrO62Oq1iRxaZWSUGBEVK7VYcqPc+NTYx7GzVDdpcxQFWcqR2g0HFkVSSi/aQS6ZhQ
YQYAx/s83SZcBxRH02GFfZsUYs+2dvd6PZ3dBHrnSdSJ5dsiH16KKVnx4fu357/t3WdtObny
56YKX60BYirU/M0nrcIpcjWrCxqyi/SXjHNGPuPLEP0x0vum/3b//Pzr/cMfs4+z58ff7x9I
3yEs7naBkrXbNjROaHy5mXRTvcurcilTAgmIIixPQl24iaXAbwxXB6N4nh41tz6LwOWKTh3C
49FFgK5ScreGfLSdpNSyOh7zPgv4dFBiwycsdmfZl5WketBCT9z5gfMwD3cgXeMPlUF4Um1H
qTJQI6tMq9jwU6xA0VfomcwAXGJeUxAiMGm/Yu30bxxyAdusJD3oAS3TRo5LBCAiD0ux13Of
A7DeM+mlfWSYQtXIhYyVyIjnFxsCQuGdPicAl6597mxnQJFsSacv6RtpVRbZoUojijPkT62h
wFfSLz+xBEROXh5wn5OKEn7we4MLywsFBeHEgRC11akRtSe92OSyMbzBEHIQ5nzZqdFwIcjo
LVfX0iykU3QBDt0y67PRAQXqHTaroqhlwgDB7CXeEaYJHd6L682du6ObM7loHNFSfMwbSze+
zxvbQTqnG9tuX0dQ0cQlUUNiumU9ihJhpTQeWLXgAqOztqA30FZuctkGh3eKVAZPCDp0ejCT
savfZoBVDws1N5kORqh0OkykR6V0sE7dP5jwkySZeYvNcvZT+vT6eIK/nykbfsqqBFNVkP3r
kRi7YXls92b+S5/R7gQ8J5Gr6ELfyLd3klppNTVuJO8nX7dSAUPhym8k3Z1IDHZjd7A00KM/
wZ18o+NCRjxHUgqZ+yxx+AVCrzGdEL10Sifq2LgwyEE4noHbhlVyiGkRZOcK6Qgj4djpyEwX
uSgc+TYq5sxDVB/otgO8Pcr5rAohWkfFxysOkq6v5hl3CA9hZWds6h3y31+ffv0T/VK6QN9Q
S7Fu8HB9VoF/WKRfvAk+FmG4EmP34ViPi6pdRIX5OJCKW19Eqxs6SdNIEGzoESqqOqH16fW5
3Be0a+bYojAOyz4kvx87BZLP26SMtBToFQDrZOzUpPYWniuXYl8oCyPJZRjupPjKcUFGURpF
68RMLguMguX2NqKUm1MtrnWCh5/1M9tAGdw3/Aw8z3O69Ja47hb05dJNZs6jjHwbWf8qHE15
zUK6SVVEw3HpFZY6MHOlJ8s8J8JhFAOMa5ivzfcBOD2D61WQNt8GAal11wpvqyKMrY2zXdL7
ZRtxPC4dNvq8oQcjcq2fmu2KnH7uFStz2LHkW/S2175e0JVBa+ww5gwx+ptT0rZWpksyYkhs
IZnDzSh0ZAdjXOv9Icdoe7TalHQaJ53keJ1ku3OcThpN5aDJ2N2BufJ59UirEUQv90kmpPw3
TrgCtTW9BwY0PfUDml6DI/pqy4CVNNplH2REEZlC29hKu4SDKDFcPDSLlJO8qlZxbF4CKg1s
xij1pV6qS381fijz6WAGAdPteG5Wqy8B0SoxvJq3iX+17cnnaM+M6GEFafNSdOI9R9HbPhmm
NeHrT/JhIr0yfGSuvGu5ayUivtnBdnOT7FiYW8paozi2jD6CBqxrs40E9teJ7h0+sVocCBYk
5cdPXnDlGN8Vxc4cmh2Z9EIrsj+Ep4SR1xUL/JXu7qCjMGzWmE/aNptI1ZxFN3c4le5oX1+A
O0aWNa4igHB8BDGu6paulgHCVcahBEm5N6f3GdvR6+gTHdszjnmnajdukKNzQYtbR658cXum
AiX0D8FXwrwwdjnPmmVr54IccSspD7qw4nQRnVLul3p7WFSZq+1WBMGKvhoUCqqlbRK34nMQ
LBuHw4L10WJyauWRH3xa0wZ0QDb+ErA0Gob0Zrm4soHlV/Fta3LX8XNl+snDb2/umOc0CbP8
yufysO4+Nt4rCkSLcyJYBP4VbhD+mVTW8xLCd6zSY0OmCDarq4q84MaplqdXrr3c7BOD4z/5
v100wWIzJ47hsHHKuol/ay8ru3RpC71Ey4/AMxnsg/QDiBNSba8VLG6NPgN9cYVVUS8cwFjs
WG4+OrYHeQvWPtmVc4LJm1J2RUBST7Sbdj35aLuVu5someQCH9Iz/DuLq4yX8m/RC91l4cLl
Ln2XOWUKqLNJ8taFviOtAHpDDhjrwg22/S4Kb+DiQyUjXWmHP4QOoeQuwrgqV97zil9dV5WZ
56Zaz5dXNnKVoHRuMI+Bt9g4ko0jqi7oXV4F3npz7WN5YjjE6ThMPl2RKBFy4FsNfbnAG94W
/4mSif6Cqo4osrBK4c/0mnBoGgGOWdGia2ocweD8Nx27Nv58QVn3jFKmXzcTG8ftAihvc2VC
BRcRcaQJHm28aENL3knJIs/1Tahv43kOIRuRy2uXhSgi1Fk2tDZO1PI+NIag5sjHX5/eQ24e
aGV55kno8HqBJeQIg48wJ3fuuA4ZGfGsNeKcF6Xydx3lr1PUNtnu6ilYJ/tDbZyfCnKllFkC
09AC84WPEAjHYwj1VVXX0byO4Gdb7ZkjvyFigUuFaSVtSVq1J/Y5Nx+uUZD2tHItuIFgcU0l
paJy9cq7ON2wYe5jtKPJMhjrqxPUsIpWFiPCL2lTWxrH9FoCRtNxNXCVDPTokjRgcl05uxXj
jCzxZrPitENeWTp8RmnVwkFs1UMNymCkdx9RUeiQkhF5C5KmQyuL6DLZhcKOW9XwVZ0F3ope
GSOePsYQjwx44GAHEA9/Lt4O0azc06fOyTrZ+xTz7SmmVOVIPir3ubphKZyZygGN2e6c7oBd
TbhPslKuP1igozQtLoHtNWEEqtcFOFAVXH3GUVxgUDO9FismuPkaBlHpKAdTyAS4Z+eY6kId
ga5CM1m8gRu4IQqpx7/pCN2jQIfXDvrP51hngnSUNDgkuala7I6cKjxH07i6RL5UMDs94WMD
P00fZvgZXzTAGOf3rz0V4SN1ctlDOYpCtAJWGY0Fo+9UabglcveP3L6IHQlLDKnuyNvSSs3S
xcn/+PPdGdLI8vKgzYr82WaJ/ui1gqUpJhbKjKxECoNvcGBmnxcTrB6AvDUyvSoMD+uKNRLz
MqbOfL7/9mX0OjYGvStW4OvECeXuqwg+FWeVYciAJkeicclRpZPWRsiV8EwVuE3OVoBzD4Fj
KyKh5Wrlz12YIHBiNmNjR0x9u6W+fVd789WcKICIG+rrd7XvrSlE3D1bU62DFYHObrEF0w/t
St1XzQDLlWE+cDvg6yhcL701MZc6SbD0At0bZsCpJXSpdMaDhb8gGoyIxcJRa3OzWFGy2Uii
ZwcaoWXl6aHsAyJPTrVuqR0Q+MYQagEFOTqdIHepIaIuTuEpPBOtgaL0amF3QoUSTFoDe3FJ
DknN/bYuDtGeduUa6JqaXh5RWIJM1JC93Eb0iTgOa42PM5OqDu1IMHSACGhLQaYYlTiRVOr5
TKsMiERZInvqLArtXWFcz4sJjs5hGU4rTPC2onMhKYKjaJom1GzmCmxuqK7R5zwsaxYJMy2K
jQTGzFAT9acivt/nUL9LEvlancN7TBHguAhgnx067242gCsieltxtpw4SEkgPToSZSb4lhC+
1VeohKVk0iWJ8uMun8zkq6lH6Rk6lD8lX1DSVYdaWo1MV6v+Vtnfv36R2d7Zx2JmB6ujTngs
SuTWsyjkz5YF86VvA+G/XRY+AwzcL2wDPbkOQkE2QqhFW4VmHIsEduJfUwp7P1mEndcKvem6
xggfnVDt1kC/W6I5YUk1Ut0oskuaJJJUpBFxF/KkSyI1EPewNhdwy5IdGkgyiu0esAk/ePNb
7aGLAZPyYO7psfvUKhjTDxGcmeJ7vt6/3j+849Midm62uj4b+gfXm7yboC1rU9minPclmCiU
yVc60FcfnzDoV/H/MnYlzXHjyPqv+DhzmDdcituhDyiSVUWLICmCVaJ0YWhsTbfj2ZbDdke4
//0gAS5YElQfLEv5JVYmlgQSmezl+6fnz7azXjmNSkeXubrCzUAaRJ4pUzOZK25dXwoX7Isr
bofgLAn8OIo8Mt0IJ5leJBS2EyhYmLWtypRLi0FXHq4rCy2Lt+pLy4ZvFI66uC9g04tzbSUI
uYr21wYCpeyxlCNXfArVAlkrmzSPZhAVFSesg5jvNyhA9yy38YhwCE6HfPqnhGcdJivWLkbw
+hQPfE7CoROrXWlcNe+HIEXNAmYmiDKwvdKUnidfv/4L0nJuIerC74rt+kWm5zvE0Ig5pSE7
RUOH19VQWlKxAJtk+AaH7uNQISrSrIPvGbXKYdWputnF39upWZ43Y4f0Mcv9uGIJ7lZDssyr
wfuBnGcRQ3GBmeUqGPSnlGJzDKhMR3Itej6R/Ob7XNfydjhdHVWdxnhU9aGZPq9+fPFzDBTS
Y3uXGey7wGo4p21fePOJMaNgFlN3aK9s0M7kJZiqBt6+OW/NVsFpypHA057qXOV8tkef7s5S
zWeyJz+MbBHpensCAqJWx9Xnt7aImGXkQ18b294ZksGnmkJTvMUF2KDvefLHvCaFrk3lj09w
5IYfqtB2JPKsrkY3EAIXHijUJxrgiUg/FFsotLO5prMi/pV6KNZMl6LWb5/4nq/sSNdPl5uI
IJFfHCdNzXRm2Ou/pn1qDeMF8Ks8oDcPwn/CHAJceYEiqEwPEXlbQgHptGtxPFvfC166GYFr
FER8Z14fh4fo1Q2LUvpGm6SXo9XRxGxrv0jb1s9cYeS76Kao1ZYJqohoZ75nkwh4Ip2s10wq
i7xzkGe4J5KbJbLKJPDp1iA9EIjT257NarUPZd+edO6jXeDW/Q98x94U6uH0ShJh1vieGJyA
f7HRIzmEPgbYBgobJrsa6ZiNJeffttEcWYA+zWcXTVJnp4TC+8QH9xZ3HT/qWQu4O4CgzQdp
QmdRD8opGNdUg8Oof+XlHkIfU2tYP0edlhz5x5Bu1beby/J25/IW3txwx7kQBsAcS/CAStAh
ElAQxVoJjpHCxfucX0p49wVfW7vkzPm/Dq8WX9PqR5cvVFvlUPTgWbT6KxuE6zAZ5Mw+aub6
vH3CrJ5Y8D8mcbbDlyrdpIUDEMSEoAMQQL4n1Q9yOZFex2UbR//8/PPTt88vv3gLoB4iiAVW
Gb5yH6UyybOs67I5l1amcjVCqLJArdYA1EN+CD3sNHPh6HKSRQffzlMCvxCgamDCxIrrS+xo
ENCi1JMaCWk95t38yn9xB7vXb2r6OegdKIj692QiQptWFqnP7bEadD4g8tYuHwwKW7VjCGG2
fax5nnjHc+b0P15//NwN2Ckzr/xI3aesxDg06yb8hBqctEjUQC0zDd7OmFJapajnHQGx/KLn
Ab4ADnr5jbBgC3Q+aefGBeyqM7OKRVFmNIsT49CzGLPYkk3c68GMdCKi2DZw//rx8+XLu/9A
MLk5os8/vvCu//zXu5cv/3n5+PHl47t/z1z/4joTOJX9p3ZLA6MUnMXC4HHKJ6vOjQj1qCs1
BshqcnOjtg9ck0H1HQtYScub0eX2EBeTgvRqJUNHq0GQxBDqcj1Fax3hi49OTJtRFcyJo/79
XWh9QFbRoUTPvzk4m3UsftJ/8cn7K99mc+jfcuQ8f3z+9lMbMVrmRdXCGfU1wI0UBEvd4Ed/
osLtsR1O16enqWUV9nYEmAbSMr6zombLhqp5NB1aa/IJ0VrEjdvcvvbnH3KKmhunCKo+FZxY
pSofznnG6Onh6qrLIow6fy1ip0tP7s7uE94YnNbeGwvMjW+wOJ2YK4uuki5E1VM98AK4S3X5
oQBsjdin0sQ2SJ4NdtU7+vwDJGxztaVcoGrlSGXcURDYIcH/0vhW2chxGl9HjkT1DgHE5f2Y
xrlNADpz8TC7ANJp2iQx00S40C9GDxljQIFO+mN9ES5p7CbQwg3bVoXD0HRFNqC8H/XWAFF3
j8+JrRw4OrEbSaC+TNlodhtBeRYmH1oOLPdTvqh4gc48nxjp339UYxUBZRTmvVp+q8GZQnt6
bO5pN53vtasd8fXpOsiFSCk7EvscDqqw7fqAv/v++vP1w+vnWRZ/6Mz8nxF2CKib4wQ8sBPw
DHUZB6NnJhUD35HEiuWkx6S9MP0PbSssL41YZfgc2sifP0Ggha11kAHsihVfQ522FvE/7eEt
91YdW/KzuxiScf0LHgbcLfqFDYnrAhSZF9a1oN/BB9Hzz9fv9hZv6Hg1Xj/8vwnMtjqzMR8Y
hjTlAP6jhPEmVIoNhEKkQ9Vo5/njRxGWla+BItcf/6e+jLcLW+s+b5fXxixRjGdgOvfttVP9
T1UNyCDGD7vs05Unm6NwKEXw3/AiNEBO9laVlqqQsQs8xUJkoRck82LtbmxBaN4FIfOwgJ8L
C3j71E8VV2T0I/RQe2UY6GnEUoItRRKjFs8LS0dqShiWuM3LusXGJciWdl8wE0TcOOHiRoaW
i/z1gLU9GTPukqTq780XTbLzHftXsT2UPrO1vNYQBzpVGJN44zKyqYyz9+X52ze+kRZFWLsX
kQ5CFCzrkEqXC6hRCPKOWtCLB9LhVrBykzvAf56PfR21SahLS8nQ7/XSpX4ojJqK9yi33MqI
HtOYJbgdqmQomyc/SJwfhFASFQEXnfZ4NbrMXL+WL5ircRkE8SEvslB1ZCio6wZbrxEB92Cm
f6FFnXZ/5lXTEtSXX9/4vGZ//sU6zPj4RdOZUsd3MHVh8Emh8yx5EPQAG8jyWh0OIcLRSjbT
Hfd7G0viGfXo8lMaJWZ/Dl2VB+nsB0/ZvhodIsfLqfgbHRWYBZO+emobc5gci8SLgtT6kpzu
p4HDFkAy8Mb59AEzOpQDjc+7UWAUJ4iRSeTbSKsC70nzNA2OoDFy3HRhdsCsXGY0TcLR6AMg
RnGEiAZMyKhsJLHDlFx+TTFRu/GhYzx9ip1/bXjm20XPALa9lvhDHWsnu3Kw0jT0zUYDMfKM
PufELDtox122WK2hcnbF7TikIzZAqkl4dUBNGReWUvKo3ngF1Bd5uPgZXU+irXqsG93d+vFl
w4/NAsSldGb1lZwlfHsuzsMwRX1wypZUrGW91QdjT/yDF6LTIVJtafDLFf/d5mj6/5odksyc
m8/nvjwT3B+xbCTXgK7aqv+Av50W9zITuaHOTwUm4hho+5eN7NpFmCzw60B6Zzb1kAcZGsxP
5aJDDNaujjzmInZaKfnk0vhGUZJpu7Xa7mVLEVVEeI1X7kIFN4pBOEqKQ7JAdu26+tFulaQ7
jy40JhHvU9lHF0TimvDPux1S5NORDHyfhd2ZymlnArXxqj6ZkOQlU4UK5kRmUaBvSipSAmhz
4NoTljYvVkNjyUpN+UPgieBOa34LUrAgcbiy11hwUddYMFlbGOry3E7lLbSrxo7qZd3cEI24
OC7ViEvy432gR1ExAHGN9MWu8QIXw3Tl35Z3L4jVTgtgbQ49u/7mQr40gdN91cJe4Zf07cYT
VLPR+XEBTlOuHJZcoSRX9dZpyZPPy34C6x3ygWcM+zhLVSvWAYv9GXjalLfaBmCnECR2o/Wz
8S0b8QHVNq8ZDWEcYdciazcKQzHxXmn0D7G4a7Fy2d2JaI3JMH1g4eAycfCj0W6WADLPbhkA
QZTgQBJGWJM5FPFS9usRpVhxjB7DA9Ltch+VeVhxAgv8ZHf8CrmSS8Zh72v0Q3ZQN6gL/Zoz
3/MCtLlyC73X3CLLskgRP2PqFX/yhV17ECKJ8zn5pbKDODQyVgNigDpHwi2S0NfeLijIwcd9
XmksWJs2Bup7gXJtqwPaVKxD2H5Q58icidGH8CqHnyjSowBZcPAwYEhG38MaMfDOcwAHN4D2
BwfiAG8ShxLHo3mNB3Nwv3KwMMEqxPJERpG08xyr6UQaMBEa+hbzub9lAjaxqAwNY7f3MXL+
g1T9lHfGw/wZF9Ye4F5vt/UFww/KNtzXImWudLFm6Q/QNAyVzyq6mwjFLrsWjlMShUnEsMQ0
98MkDaHMnQzOdeSnjGI9yqHAQw3YVo4k9oj9pTk5sJs539k2WF0v1SX20dcba1ccKSmpXRan
d+WI0OFsS8xqSMve5wfXMwnJwHcGvR8E+yNBOMNH3QCtHGJ6j7AqSCgxH9Y4+VwOWDS+7I0K
DzlfbfcGCXAEfmR3pwACdNIQ0CF6s+Qg3vu+kgMZObAL8X0f60OAYi/em4sEi5/ZDRJAnOJA
lqD00E+CwIWEyJQHActjbE0SQIhXK44PeCFxHCFLhgDcFc6wauVdiC6VQx6ru4Jtys/1WLzr
R6Mxdt61wdg6wKkhKkc0eUOIaILtJRU4tbunpilahzREqZjo0xTp3ZpmyMfgVGTm49QQpUZB
eMC7gkPotlDniOxcmyGfwF8nrdigv6hbOfKB65/4C7CZo8tpMiKTqjgrzrQlvKOWtYORiF0G
NB6OgmMrJieHv+wqcHKOcc/WVxZ/yZfBg4d0PwcC3wHEoLwjZVOWHxLqZwE2GNgwsGR3dmWU
8jGM7fpyP0iL1EfklxSM6/kpvlvjULK7AeVNSQN07qwaEnjY+2mVAR/1HAmDAD+e2GaSBHuX
t8IXmkfIuBxo53to7woEd9qgseypCJzh4KG9AchbLaJdhIahWhhuFYnTmNif8DakQYiI00Ma
Jkl4thMAkPoFDkA0SzSrLCgwKRHQXr0FAzJyJB12bPP9NpZ1naTRsD/+JVfsCLGwcomzub1q
GrcGYpLTn4fPJPDTAUbp2MOFmYMNZKjgrTWzMgQDRK4kN/D8cj443eLfenZhYpO5U1R7wqoI
UU3gKTdEweqwY+uFcQneeW4hQnjZTQ9GWDyM8QSKjngaiPY5lgTe507u2DhLEnfuCONufYEB
rMXEjzcy2iqnnUV114ULrXNR3k59eY/xWJ/8WpPB8P25gI6gp8slHSaI0sRjp2D1GHtJr0xL
y/MTbDiAw6mWsUoLocypygDmLAyMHTUcbrdEKHM09YKaRHhsYabaxq7G4qisfEUB+YtnkHjp
OpNZxow6rmmOOSVItkDW/5KR3OEeEOdece1QdwUY6pZU4Fv1raRL3cH5X06xiUJj63R38hJD
DcOE7d1///z6Aeyolqfp1tkbPRWWQwegkXxIuWaKWXkKmIWJbk+/UAP0fosKWTbc6IgkZAjS
xDNMyAUCHr2E/SX47vpilCTAS52jZxfAITx8eKotpaAuRgDKXQZkJ877MZp5WQEIhRczaAxC
aKa4lVAjXS5E9UoCspmPfAxDXgVxeBxZGCI7O91sbKViq/sM+pHxQUzbBqCdyVCKkI/TGXUL
Ijol98EnrZ7ZTNRdgKiAfFGk924XxAEecgbgS8XVX9/lS4Zv/sFmv8o1DRKovKSuxhzc1h0H
1cceQNBef0Cxs78djSYsPnLaFrqhMUB3JTVK0+A0FWGf38BxbXfFYw83tZIiOvqHCFWHZ3gx
ILGo6rZ7o6axPQqAju4cVzg9hNbnFRdY+N3HigeYPriiWYJmmmFbe4EOcRibbeU0cSii51M2
p8A/Uky0yifxwqszy86B6ChZM31Q6H05XM2yue4c8aHq6k/VwEQlD5EX4mqPgPNoiNId/C71
cJspgTbREKOXKoCyMkeXDlYdknjccYwPPDTycHVKoHePKRdfbCUhxzHyzOWCHMGTg1WZmdy6
wpFBSVxrw3apApPWhZrYDGDiHobROA0sJ2rEXEClgZfZH3Azm7o7mWdZU8zfrhCKxa522XN2
LPa9SLNekleNqAGohBJjZVtsvIymLTeWNjXwEyOHajFXM3tnM1jTGymz2ekFYEhjTMFbYWl2
ZlMDnGo42FIRZM3lGJ+RQ1woh4f64IWeJdMbDLZtyCbmofaDJFwCSqpCQcNId10nKpGHUZq5
p/Xhno6obZ6YbMY0sjq+bvNLQ85otG6xyzGNLBXivPdBAKT/cnZI6gC/oxU9QSPfwy9VFhgV
YQlik76guiWKwwfUm/IMgt2hnSPY/7j3XTODtZ0xzx42mi2EiiGjOtW2FyptWFGPLCrLbP6K
JtYPAuUMB1slNNiynP9OxiC27Kd7eB3Hui0qqvrc2KVgrInLM6jO6vPLlSQVFww4VSM4Nmrr
gZx1X3MrC3gyuEoXKOxKUTOdjXmN67uyY6XyXdU51V/ebiAoRCl6laTwFFGYKd9GQaSa48ha
rFP7OUt9C8vZUF02RNGAkELdRiAazyxSCLQpUkjuUoPZzXzWYZCKr5oMhgTqImAgPipLpInC
SJ8ZDRQ3lN2YdBuqjV6xOgu9CCuVQ3GQ+ATDYJuQoHUVSIAjaaLqHzoSogIg1mK0hy2zcgWS
axBaEofiJMZSgb4RpTEuatj7ISdbtP8pYKcfHzJHHdI49px1SHHbW4MnCV15Z7q+YFY8xcPT
m2yowmQwpR4q/RIL8A8wK9T6FkTHkzR0dA4HU0ecDJWr8/nneaMPu+jgx2gNujSNULkCJEYl
mHb3SaY+DFEgrsDhA342oMY/Fcei/Ulv1QwtxNyMK0hOskOETkxCZUTr0p2uT2Z0OYztxqcn
R2Qug+uNaUzwZGhviig88wtXJHcBQ6yAm3GZa3HCVgQXMhbQjjiUPp2L4V5dN56IpkmcOIqp
zxBmY78nGNcvvRidnDmUGh6HDDDBnXltXFyViPzYEYpXYxO63N9gC8I3BUCqb8H+7GLrgyaW
orOLYs2KY36IzliK9uiqMu/rt6uc4Yv+qv8hRd90tzkbsG79USRC27ju2fGRUZNjdVQuWPrc
0Pg4QbrIn/+uKzWQcg9+IfK2kGFHZmIFEeJWQO1AjvR5tCBI5wmG2JH0/S3fT8ra5tGRlpHm
scVSa0wX0ndvMVG+Fb87Fvs1GWnnqEglLY13O4BSLLHoa/DGhk1j+XaipVCadqhOle6bS0Tj
ECi8TXEFXJZcCIe4oDl/f/72x6cPyLN9clYepdzOBPxcWQThbuzcXdlv/upJr+iVOz3+x0Qr
cGVwrDAqM6hFN5HruHrnUq8rARV23RSz9txgVtYneBazSTpgd5TNLqfwTHnBlIFn8q6t2/Mj
H10n3GIAkpyO4H9wvZB18oFfs4n3f8GVyZ4+uK6654bnqGceAIfB6FJwCLc054vBidLPJZ3E
JeHSBUbXuDBIxy7wrgpDb0a1WH4pV1fPcILx8vXD68eX7+9ev7/74+XzN/4buHlSrv4glXTH
lniedry/IKyq/Rgz01kYwEPKwFWvLB312mhgZL0SdtVNVJ701HYkKDqr5QNKenyc81JZ9er3
pChRswsACS3APddfNm1ilSmjM5BXuNt9hQVOGTqHk1KF7QzuX4Xkn+zQNiTv3v2D/Pnx0+u7
/LX7/spb9uP1+z/BK89/P/3+5/dnOGzRuwXesPNkWr/8rVxEgcWnH98+P//1rvz6+6evL1Y5
ZgOmwjBHnkvczUa5iWMEcnF8l6a93kqiPP2fCYu783wYl9l0+3gLjzxMilDyYsnyW4jDlF4d
GU58gr2YIrFwwPvBGnz9O9pzO5fm5MEHvDnSrgVmASL6mw0mMz2Tc4DuboXU56QH30eXQvVV
syL1rWBmW+5Hh3EMx45tfsHWSdES6bRVc3MH9I40ImiWJlzd89eXz8ZoFox8IeNZ8Y0Pn8xV
cwuFgV3Z9OR5fH2gURdNzRBGURabzZDMx7acLhUo60GSuaRsYx1uvuc/XPkHrR0ZQo/tZsMq
2qk+azekrKuCTHdFGA1+GGJNO5XVWDXTHa8E39EER6Kq/RrbI9hBnR69xAsORRXEJPQKjLUC
5+N3/L8sDAKsyJWhytLUz9E8mqatwfOkl2RPOcFyeV9UUz3w2tDSi8CJK5LNXdWci4p1YBh3
V3hZUngHRx+XpIBK1cMdz+0S+ocYi5uNJuClXwo/1R9gKV9HBt+Z6iLDo8IqmXKuoxdG9/hH
APh8iJLQHJAShq16U6feIb3UqPaqsLY3iOMmBVnVa1CWzPMdotnWFS3Hqc4L+LW5clHCrJ+U
BH3F4OnmZWoHsD7ICN6WlhXwj0vlEERpMkWhw4BzS8J/EgaRjKfbbfS9kxceGuckJZP0hHXH
su8fwT3XFpMG646ePBYVH6U9jRM/899gSQMP7dS+bY7t1B+52BYhKrKLtLC48OMCzWRjKcML
QYeYwhKH771Rfazr4KJvlZWmxOPrJjtEQXny0B5QuQnBMyyru3Y6hA+3k39GKyVUt/qef/re
Z6Nq4m4xsf9x9nTNjeM4/hXXPlzNVt3UWpJlK3e1D7Ik2+zoKyLl2P2iyqTd3alJJ7kkXbt9
v/4AUpJJCnSm7mEmbQDiB0iCAAkC82C1X6W3HxAtAuHlmelUrUtPzIHOYFcXqxUZi9VFSzNV
J4mu9iQT0LyNk8PCX8TXNVlKTxEuw/i6oMoQdQWa7dyPBCwnsv89xSIoRBaT4yUp6q1HSwDR
tPmx3+tW3e3NYUsK4j3jYANVB5z3V/7VFc1lkAx1BlPjUNfzMEz8lX9Rhes3a722dcPSLbk9
jxhjv2dD7r/Z+vXhyzdbkU/Skkv702pusoPhE1AqmiSkJ4w01/pdBUCliuxqDABu2R3a/YnZ
3gJ1yB2r8SFGWh/wsHybdesonO+DbnNrEpe3+dlKNopHq6YWZbBYTgYObY6u5tHSn2whI2ox
tzsNRhb8xyL63aiiYFdzPdnbAMTXQZPSUB/ph8Vl0mKSY/h/sgyAWd5cD2Yj8RXfsXWsvBFW
y4XZTwu7uoiN7L1LgLTf1Avyqr/H83IZAtv1k8jhyzr1fG6FzZCKchljULID/OOwDBbULa1N
hhlzzQpGbFrbXJUxpNP9KnTu7Wel2zxaUGD7fGGy5qYLxiwnE2W8Z1ToKtnyJqm3rc2U4sA3
dOA4udZY04BmfZORvkfy/KHw/DbQb18wXilidocoCFfa+5MBgXql74c0ItBjpuuIhelcOKAK
BhI2uKGP1gaiBjNtOM4ZBxrYDULSa0YjWAWhdcCibE5rdqcb66Cj8cxYZL2N5mQ7Z26DaqKP
8XhPvx+WU+Kg0pTJlOpczxFlqHxZKeRBWXfTsubaosLYiWP+CSnBN693P06zP35+/Yrxf+1T
mM26SwrMLqrtBQCTJ6RHHXQe6OH0TZ7FGV+luvsclgz/bVieNyDUJ4ikqo9QSjxBgLW3zdZg
1hgYfuR0WYggy0IEXRZwOGPbssvKlMWl0YV1JXZn+Dh2iIE/CkFOBaCAagRI6imR1Yuq5kZz
0mwDanOWdnogTCTeb2Mj8vAGj4jRPTkzCxhPLUxSoOsPGrlRLhrmyBNYLFtylnwfInJPHhfg
EEkxY9RUF779G8ZqU+HG3u/pFjOTI1gK/txxVQoE0HWPvn4H5Jif1cFkL1We6z+Mr1QYf/qT
hu3NyYMA09NrAA4uTnrREnHp7Ain9UqPlSeHEnRbu5EKCJISk1+A/UOXNVBh8tCbNrNa02Pp
13dnPO0Uh72RJ60mOyTIdu4/I8i+E3TutPBAE4ujR/ovKZzFKYB0iYPXiNsejLFD0HmdGMss
MMVGIOWYQSGltlW/AjqjOZwp4iTJqPNApGDcLpXxLiAN7QHphaakziqQccwUvNfHprIKDmCj
o0vdV1VaVZ5Fvxegv9Ju5ihCQBul8zEhq5trq7C6cJaUxE0Bu4+jwwVP2s3B6Fub5sZvtgbF
5iAW4dxcXr07ob2+MjQoq8JRIQa89Q9mhT1MPiPbpvYCGLB4dnOxTGLxcA6Cak496ZB9X3m+
fs1CbuRSeK/v7v98fPj2/X32H7M8SZ355PFkKcljzvsbU+36GjD5YjMHy8EXuikuEQUHtW27
mYcWXOyDcH6zN6FKYzTk2gAOSIMIsSKt/EVhf7Pfbv1F4MfUhRXiqQDICI8LHiyvNts5vYP0
fQrn3jWdoxgJlEZsdq0SRQDKsLZTjBLF5OuvKX50D59g7OdlJib0qW+kk8JtrucZPSPtEKxn
zCQsr4GKouWcKk+iTFdXDan8YAkuGn3H0Ce/qO+p0GnTSixn2TPGdOTUqtxDP1d5TfVnnS69
+YrsaZMckrKkCux9psm6MiMO6gercfgeNBx8k64tQtBPQJiTWpu0RM/v2aptZf7q5HkxqHyl
8ZhUQ7kVKo0oyVvh2y7/fbcmzg3nEnjVlsbdjMqLwNKpCNpZEeZYeg5SKZqs3AoqxTuQqTTY
/e+WKKZ/YD1pBn853WOCS2wOkWsHP40XeIhO14vbdyuPs+0K46RpaVcvicWU9ZexjPJ0kVje
6mOPkBasG2Mvk5zL8mtGWRoKKaq60zMXSijbrrNSgY2ykh0e3TvKSnYMfh1tDvQB1lwfVe02
bsx+gPkS5/nRBCbSq8aC1b6nPwOSMOCBYLgM1/NQj6UnkccaDAJuNxHmzbYq8Z7EORZZATbZ
xo3OHRafQmZWGkUDWZnMzz5fZ0cTtM2KNdMTqErgRvf6kZAcDP9KN7sQuqtykRm6loJc6s5W
LKOAPl1BNDRQTnZHl66PmT1x2kRmD3B8cBvnMA3NZu9Zdivvlqw+HpshIoMGZZhFwa6TCUrX
QsyneN1YU0ncsnIXl2YbrrMSE2uIyoLniRUrWAIza4DANqv2lQUDLqAYsds6wLv0k5PrIw38
qOm3jSOJY2wR37TFOs/qOPUvUW2vFvNL+NtdluX2kjDWMAx3AZMxsxdbAYPdkD46CnvcgJK0
M9nWZGqJ2mwrWNJUvNrQFqWkwJuFJnPJrKLNBRsEtwYvBbPbXYI5Q0XeQFzV4BIzSqjjEiN4
wJLUruw1YKcH3pYfZCXwqxQ2VMT5sTyYc63GrM/JZHfrwR8Y2jolTFr6klcSgVCTN2sJdYYi
KRr0ujDb1qDxpEcCl8AqSWJhDx/sC8A3Z/393aYbD7uNo2EyHKjM82w0g4ssLmyuARCmMqgF
5FGRpGjLOm8n20ZDpgiUUgrvtGOu71cjaDLwMkf1p+poV6HDLwlr2O3ozHMSWdUcWOHG70DA
ufYmscN8sX0OOf2oXoO7RQAmdr/tah5MNgN/8zlryHTEcjNQgT90EGNFJTKTbQcG68UEYak9
F3voAJkw/fMxBdXM3kdUUKlu166teaPgCfQaH0zIXyZFnNd8Ip1AP5kERBvSKhAK55hXgVSK
8R0GodHWjHJ46okHh14t+YJe9jmLK1WhTBnbV6hnYtRpB4RRqtaGapcw7VAcE/xpGzpFIfMm
TSmMY3MTP3ENRCBmtKssQhB2eCZlnMsivM0xSaEjXKEqrCxdYYYQDxYh7Mox73ZJalRp1m+k
8pPflSVI/CTryux28E8fztqLh7f70+Pj3dPp+eebHLnnF/SqNOwSLGSI1oW2IOO0yJd0KrMd
7JklaOROskpQm1yPAYFfpW0icsYtfiMyZVzGLssOIBdKjIHWricjwOUQyFDlfC3H7YfBEjCj
wLCBzTBV4dX+6etoFbj3vFAwsfDlzJVy/Jarw3yOo+Ps9gEnmUWgobMebTZWQhvMfQE97YTF
EokVAgd38NK2sTgjfpgNkfANp70z9aZ0dZ10FSV8TapJplo5XIfW9+a7uu+TUQEmIfCWhwvc
2MBow+eT6S5jy2KYngmiGvhHQvuugDVqL02bIqdUeoLQXU5C7dkmycAxW0xcniKbyRSRkMlN
kBRZeeR5F8pqoni5RBegyZTDBpohzAaoEettAMpkJTIxy6/zqlHHwrPk8e6NSMArV2FizRdQ
9EojkSwCb1OLShTJUE8J+/V/zWRfRdXgdfaX0wtsFm+z56cZTzib/fHzfbbOr1HudTyd/bj7
NeSOvHt8e579cZo9nU5fTl/+e4bZIfWSdqfHl9nX59fZj+fX0+zh6euz2fqezp7XPfjC9ZJO
hUcplnJKlRWLeBNbjB+QG1D5DF1GRzKe+vplhI6Df8eCRvE0bfTskTZOf/it4z61Rc13lXAx
Jc7jNqXuPXWiqsyUrURWcR03RUyj+nOXDriVrF1NyEro+XrpO7KHyCUYT59O4IxmP+6+PTx9
m74fkUIpTSLdN1TC0HBUNpteAatdsV7kNpKW+jXgCOrMCImyfLkA0yYxyRVYUaukZY937zCT
f8y2jz9Ps/zu1+l1WAWFXKpFDLP8y0mL3CeXI6tgMMzESnKPv02oq4oe5ZuNQYjRmO3dl2+n
93+kP+8ef4cN9SRrnr2e/ufnw+tJ6SCKZFD1MHUrrNOTzPX6xeS6LJ3Y3yTclfdpJBANpvYt
GOcZ2nkbbvcUXfpYmrlmrEyks7QGvQdO96ERgfEcmyo3pKXsKCkl0WaMc2vGS5iWUNSc6gqr
vPXcIkhRxaxJUJ9yLcqeqrkOYLueLCqFdR7+ajTJTrloUd/f7sBC32WxW63sCVO2ZeoSO7Nf
PRI11qA9HEjGDZKiiEh0VtTZ1tHWjUgx4bVLSe+p9syw3TQMq+MbGtE4aszS7V/o7UAFhjpZ
/Cby/MB3ocLg4Kh9Ky/FL9fN6lvH16ylHAA1guvsyGswyOo0dhTRU3xQTM7pbl9Xa3SBTeyN
TmGLRHStiy3yfp7GVHy18ueOBiM2Ih+E6ESHdmqW9Lgy3hf6IbGGqnM/mAckqhJsGYX0hL5J
4pZeCTdtnJt52XUJUid1dLD3+h4Xb6a6zxnV1XGaZi7Nc5RQWdPEt6yB9cy5q7Rjsa7chkpP
JVwK97ji11nzCcQ92ZkDCMGJCtXLptu4dLSsqu1HwgRNUTLQZy6UkHxUxAFPgrqCniu3jO/W
oDG5mMdbVxAQfRIIKu6KRtDW6SrazI00I7pYltaHZjGbxwrktpYVzEwD1QPJhFjSWkhboSdT
V/Xveba1rf9tJcyLEwm2t+NhD0iOq2QZ2PxLjjIytmvjTyeXDtI4w73BeUknO4GXrf0bA5JI
EnTFhslM5Splmnv4GIc/+61LP8ktsw70nTLJ9mzdxOplg2mRV7dx0zAyI6r82nh7L4drh4k+
pfW3YQfRNpNpyDheEGxunV04wkeUM5gs/rNk6sG3S8VzEPjrh96BSk8lSThL8B9BaIvLAbNY
zhfWzGHldQcDkymnZ2u67OKKqzvTcZrX33+9PdzfPSqVmp7n9U67Yi6rWgIPScb2ZrNUNtu1
fq8q4t2+QqRxKj4AlR65Pg5Hc04Wo94Z2LFxtLNaRy/MQrYx6BeUCiKOdabZH/JnJ5K6IGAJ
s4GN8FaeZ1xUKsQGx44MB6XwuzTgPPDNTbivSAZuiYxZNQ6Z+PVy+j1R4QVfHk//Pr3+Iz1p
v2b8Xw/v99+n59Sq7ALfrrJANi4MDJ+4/0/pdrPix/fT69Pd+2lWoFE0mVCqERhLIxdmIlyF
UX7FGpZqnaMS42QIrJOO3zJh3iEXZOziIiswmYV2MzlAxmMpZWrKlPf8/eH+T8r7ZfyoLaUC
AcK5Jf0YC0wv0K3zKjH8DQquYJNh1+v9C0e5YzsE2xRQ6oUed5+khV92QWSG+xzwTXhFTeEz
Xh3/mGf2eEyPR9iaWxUeaEuvPgrWWVfZGkZePCdVrtsiEr1uUC6XuP/tblG2ldtzgA+goAZI
fhjHwvOvSN9JiS5h0YZXseH5JRE8WNIR/xUacx4FVh/WSbEM9AiRZ2gYTWpImvncW3ge6aGJ
BFnuhf48MJ6US4T0hzQEyRlMDd8ZG0xLUvnTJiUtr3zaQWskmJMJaCR6GnROgjEwXOiIBCYJ
HJdJqkoMJ72w2w9APZNADwxDGfyvsBIajliferh2xk64BEA9BGcPjEL9ue8AjMygi+eOO2Kb
jQTL4ALBEGtXxIKMOTcShfZk6V1kp8BwOu5pnHj+gs8j6s2gpNAj2JrfrlM/coQ0VqwRQUiG
e1TryfauVfOoj9Not1MkMUZucxUm8iS88g52p6cR/QewHVB5XDDhv111XIvUX15NWch44G3y
wHPErdZp/MN0yz+LMnmU/8fjw9Ofv3l/l9ths11LPHzz8wkDBhG35bPfzu4Lf9e81+UIob5Y
TPqpIrs7l3J+aLKtxTKM7WOBOF4WH3WXXDUUMp77eS1OpMzK/mCI6W4zlm+LwDNPKUaOideH
b98MxUO/UrU3oeGmVbAim87jAQs2Kt4MuEdxIATriHbWMagKQabb0El2WdyIdRYLR3uJJzgG
PqlbZ2/iRLA9E5RjkEFn+oSb/exv1KX/gGT9w8s7HnG/zd4V/88zszy9f31AtW12L2MfzX7D
YXq/e/12ev/7ZI8eBwTMPc7otzFmT2MYuemePaDruGT0yyKDrMxEmlGviK3C0MW6dHO2TclN
C099MW8SBpk5DhyDFXv3588X5MobXiW8vZxO998l6uwBQ1GcK2fw/5Kt45KaTxlI8A7EM3o0
8KTRHQ0kauIUglB9qUmqPsAUCAZH6DlJ5b4wlOg65hnpCSaxYFtd+XrIZZHg+9tzwxCAySiX
kRdNMYNuOVaJwF0iKmgzUSViASOqXWKW0wOHtyd/e32/n//NLNXdTcSWe9CNJzIJMLOH4RG7
JpXwC1aKjWKt2RQJB0MhIcDKYYmAdi3LZPg/E502++H0Y3RmwjYRSvJAHq/X4eeMkxFTR5Ks
+nxljpmCH6L5YdqClOMLLX12mZgugaXeNvS5kk5KJsfUCJYrn6pldyyikEz3NFBgNuCr+dye
SD0KtYLLHw+pgCxMw8MkMCKX9wjGc8+fR9MvFMInu9HjqGPGgeQABCH1rUxBS4fB1Snm5nmi
gQuW9PtDg+gilyWFnkF45ODCE9F8yiYF725TMcVNUj6MiJvAvyZ7IQNVX2gfEVS3x3Awma7m
MTU/NqCNkCnYx0kAi8IjpxZgwogM6qx9agtHhGcFGKuraTObPcAjCh5Fc4LvPCyIvqawJKNB
YmAC9Q8kBo4SHb9dJ1g45IJPcUZiyKwSGsEioItcEJxBuBGoWV/4ZiyxkWlXdOyl8+AsYPQI
Zh+WHjWHpDBYRNTMVOKHDCF/Xjq+5xMdLpIa09CamwLGZSnTPiHLOIx3oFhMN4AJowI/IMWP
wjgTt5otJaW9nJ5XiT/ZJkc3j4tNS4qKT0cQRtbXkzZp8NDMxahjwkvzFXeSCFP4Fsz0ITEJ
PtqulhGdr08jWfkfF7NakFa4ThFFoaOZq8WlWZVyfzFfEDwd8jJOi5TpSS4VKTMrEqJGXHsr
EUfkFruIBBmJRicIyH0NMeFlNhe8WPoLR9j5cc9Y0Lndx6lbh4l+yDPAcUYTYsV+PazDQ3Iv
mGa7mZB8PpY3RT1ZPM9Pv4PBd3npnP1t7DUVp1lp5gceNzYB/7ISqBGbPpnl7yydrPSXI8JO
JzHweRXIQH7j41d+AvPn9aMtSHuEIKwYAiNtiglKJzHOVYC2Il63G82DvP+EH8sEA+aYqXVv
JZy6vlPl6MQK0hXVPuvjAbnahmRDoHBHYElFtMvi2iIYwmaZ3dDuZtsDcXU7tFo39OFHlzDj
YSuC6n4SseaGLgEalxU9hVlanCV2aTxrkoq0MGRdGCKin69GSWCmH0zIhmNA2XXSbeuksGsx
kPLj0CNT3chKm5Zzs/Bis9RDwO03Zo5h/A1DyqrCDBVmEtD+1BJVWOHkR2BvhBLfAXO79bGW
FyRxGW/1wzcM1dGpfMiaQaniEZtUWE1WGkdEPdjRWoXcp7Xh6dSD13GeV6RG0BOwsm4F8aEj
QbisRm8a/EaPQJLHbJPsKRf/vbxiZpXINd9jCbR+TjkhoWVGn/cprPTPdlXas8mA4StMPrzg
GSOo9e9Y7l+f356/vs92v15Or7/vZ99+nt7etWvcc2a5D0iHOrdNdlybb+V6UJdxagFwEW9V
GKsekGBIeWb/thPTjVB1HCgFGPuMGSz+6c8X0QUy0Hd1yvm5oT1xwXgyTGZyIHo6xuO/QoYi
hSCziTAl+7iEfljoZA26DSh1XTLFAWIeUYgScTfdCtOwGm5iJj5llb/oyGekZ8I8XteJo5IC
xfYUc9PG6tV0fFNTeOlPPIoMu3GpuIo8ar6c64UCMMnqZE4APNVdngzwJtaXoYHibKv7yPe4
fXEdGTnLe3jkh4sJMQBDEtjxacnX6q8RIE4fU4rXchwohCFoz+CmamWQOEN7zSPvyqf3DUBC
e0iliod4aDRkswDx+fbeO/aPqpFKl3B/f3o8vT7/OL0b6mAMWoC39PWjgB60UErpkCjB/F6V
+XT3+PwNXdq/PHx7eL97xJNpqNSuYRV5S714MHGMRBcXy9FrGtB/PPz+5eH1pPJp0nWKVWC6
ePcgtICpE/keOySxN1v2Ub1K/7x7ubsHsqf7019giRfOzdatVoslqcJ9XG4fURgbBn8Umv96
ev9+enswar2KAu3kUf5e6IPsLEM9UDq9/+v59U/JlF//e3r9zxn78XL6IhuWkL0Mr4L/Y+1p
mhvHcb3vr0jNabdq5o0l2bJ9mIMsybbakqWIsuPuiyqTeLpd24nz8lE7vb/+AaRkARSUzFS9
S3cIgB+mSBAE8eHR9v9iC82CfYUFDDWPz19/XOllh8s6CWkH8XQ2YcHyG9Bg+LgWb60CssyH
ejXK++PL+Ts+wH74gV3lYAJOspY+qnvxGBY2cduuiV/Gl05zVJscSr17TPB4/3w+3dMbUqBz
5cjCk50n6LIPTCuWeFCbjO30+auK61WUTa1kZZ3UoeplsQoW+cDr6W6bqM9KFYEcSgVD5A2E
rsi0VJVnRb6NtwPXpVbmwe5LMb5MS9EGY+3YVotZ0+CsLdB6er2A85UEzItFwO29WpwOkvLO
sEy0pl611gr2nZomznXUmHD2WhiwrmnRLGJnC0RdYm96dkFZSR2gkUK//SIZa7ujxpnq5d/H
V+KR1sXI4pi29iFJ6+CQKB0UtRvfMonTCPvE21QXciBDiy4ci6qZZSoGJ2sw6LYOCyNNWaQa
qFiU+bIxfW+gmyLEOKv0pzagnj9cj0A+glpsewRZYPRrkxq9TgeMqld5Gi0TJYYcwqBrYUqs
HKGA10xYm5sdCe7WEsIExEXA8r1pq42mESomNtBG3yWJioBcq2gjtdU9nMmNAnou6z4JkUom
lnuWhZzIuTU5lWh7x0nG44FhAk4M3UdIwiiMpyOfSYcUN6fBwSlOmTVWDHU9mBYUsdVN6o9o
vFxS007aSlD7cDIwnUIidonMpCkfuN6vb2BDbLUJbCPHht/Pd/++Uue35zvJcBhtc4zHOoPA
Jl3EbEkrTCfJomNoG1f0hATWU/njBZVOxF7JARMk6SKXVrRW+NQBzXVvQJ1JhWFwKFac7q6M
gqi4/XrUNjJXqn+x/4iUHtnYk5AlzcI3IS8Cpao13D9WxMg2Xxqqdpzl8eH8enx6Pt+JCtYY
I8ugNYIoKgiVTaNPDy9fBXV0kSl+EUKAzq0o3Xc08qLB6jpljRPZCCMook9WTy5SMPx/qh8v
r8eHq/zxKvx2evoXGtTcnf6AaY+sy9MD3AIArM5c5dxKRwLa1EMLnfvBan2sCTv7fL69vzs/
DNUT8UZCPxS/Lp+Px5e7W1gr1+fn5NpqpD00dkkY1vF2xQLU7wCm0vyGQbrCtXazZ/L8B/0Z
S7D/yQ5DP6WH08jrt9vv8PsGJ0DEX0TTPKyryyPn4fT99PinPAkgPiTbAzC3HV1KUo2LAdZf
WjQX4QbTdu6XZXzdjqYpXq3OQPh4poNpUHBq79vUJPk2irNgy+RrSlbEJQbdQDcoYaswShQr
FZzl3cekaDTZBJGbv/mw+sA1kn1/E7W/R/A86H58He9ls734UIWdwWD85yvchtpIG5H9sQwx
XKzCWns+/rAQSxWAZDDqwbXRIvlZDRjDrnjiq2VHMJ3OqD1Bh7BNghtM35ikR1FtJ85Ekgwa
grKazaceUUo1cJVNJjTdWgNufa3I+QbMuSROWglFJqib3y2XNCpJB6tDovEi4IiGTuFwm4EQ
LHpi5Fv0erE62+gMBuZNjIAbk0mQEqQRmj+pWRyp0yPVvSrcHxcSl5KoNnQU/70Abskf5KHp
ldwu2I80ak5Pozaac5XPIfXGk3dUFQY/pLAC7NSlfWhAcyvjrQBYzkqwyAJnRuNWZ4HlhgaQ
sRg3f5GFsJRNAIPuC1AovzUyjDFD6XhN4M7EPEeB5/CEaFlQRgPhxw1OfvjXuIF3a/JQbAbn
Sdazm4OKiH2jLvIbsAHZt7dD+AnTVkovm1nouR7hWFkWTMeTSQ/QtGkBrSlEsO9LkwiY2Zg7
dABoPhm4BRmcON5DCEuBmZUAyHdFNqrCwBvRGDKq2sCFkCxYBCyCyf+blrnWLwUYAq0iDCuI
pqO5U04YxHEtpeHUEX3bUFXt+6yqS9Mq6rJrNeXOZwP7eTqeSiYtgPBHXEEO5TpZwomsM6Kl
aZwOoNkKRCWy71vlWe38Zimaxb2GiLnDK889q+psJlm9AmLusgeE6Xw8Z9M0nx8ofj6m6dCA
PaIeBw93NpeHwh0dECrPJ6Bns0F0GDqw/hwbf+Esc+RGqyKguZWidOvWDBJv93GaFxgCqzIp
9Ej0SxAPyLpaH6YOWRvJNsDsFKY1oh8N3fFUdDFDzIymgkDAnKw+A2CSBwgjzsiVvgliHIdu
QAOZ2dXdsTQaxHjc8hd1L76oWcjCwnOplTcCxjS3HwLm3PQui7f1F6f/ARv0NtjBOiVNGOmq
+WLdnQQTNuxRKrTdiDRGFVlSJ9Y36DB7ue+OAPDki6hIy59ZHjV+bp3HsiYdmUTBl45a6IBb
Y4seq5HodGjwjut4M7snZzRTDreTbalnaiSatDR431G+6/cqQmuObHZo0NP5QIwxg555Y0ld
1iD92UzoUDsTDlTKQDg/8J2IWQ3TcDzhmr390ndGA0ton4AEqF8o7F3Y3PwOPd7xdx8kl8/n
x9er+PGe3X1QaCxjOAHtiFW8eVK50TI8fYeLpHWRCqKZ58sSzzoLx+5E7qJryzT27fig4yIY
4zl6cFYpbKti3cbo/cER8Ze8F713kcU+lxqxzMWUBsbOpzBUM5puJAmuUVdO9nimpqORx0zr
wsh7R6WOQ0tKzNqnVoVoc68KRSO97L/M5gem9bNnxtgZnu5bO0N8jwvPDw/nx27SiMxo7hyc
91jo7lbRRf8V26e3jkw1TahmYo3aShVtPXtM+gqjikstMyjy0MEJTMTmTrXRa5hVq9hgfgzg
FFOBcpz+0pfst2ZXwQa7NXuBiXRk7U9GvsRYAOH5IypRTLwZL49dh5fHTJCD8pzhJ3MX3ShV
zKgQyuU7AHmSahIxNAgLlH13XNoS2sSf8XFAmc8bwuY+n2eATScTqzzjZZ//XkxHy8rTUckB
liTrcRuQ2Yylzy5yzJtEZSU1HrtjJp04Pv0mKK743G8g811PjEIAssXEsSWbyUw8FkGWGE9d
9iCBoLk7cOrBqEczFx3XrUMIEJOJKIsZ5NSj8lwD8x23f/4AQra+fW+dXyx27t8eHn40ykb7
GGlUgdEuyz6LXfQa+IdJO3n837fj492Piw3Hf9EBPIrUr0Watmpt8+ChnxpuX8/Pv0anl9fn
0+9vaN7CzEYmTcAG9lAyUM94b3y7fTn+kgLZ8f4qPZ+frv4J/f7r6o/LuF7IuPiWX4JULcsa
GjeVg//83R677G/vzhRjV19/PJ9f7s5PR+i6PUXJ4FDHMxq4WyHOoZf9FuTbIJfHiAiiQ6nG
os5wka0clllMl22ti4YxBrM8BMqFqwE9rjsYP8YJnDEycsKtPpd57bGY2Fmx80aT0YDSqTkY
TD18v++dGRqFLkvvoDGogI2uVp47YgqF4U9njvnj7ffXb0QoaqHPr1eliSr0eHrl8tIyHo8Z
q9QAwglRtzyyr14IYSGWxE4Iko7LjOrt4XR/ev0hLr7M9Qbk92hdObKmZ433iJH0oMkSO2RJ
lFQ0vVKlXHq2mjJfNg3M0kWuq53I0VUyNXolUnaZ7VTvtxvmCQzoFYNcPBxvX96ejw9HkKff
YC6FjSkrMRucb9niaeBUUms1uBnbdom1DRNhGybtNiRbK1ez6Yh13cKGksi2aGtiN9nBlyY2
2e7rJMzGwFPIACnUEucoxlIwIg72tS/sa5GmZ2HH93CqMj9SB/lMG/6ulBPgt+Du/xTavSOY
UCA6c+BL7/YTfYKl7jlMdtqhUoVKk6k3ou6bUAY+Q5WMRaTmHp1jDZlzVr5YO9OBkw1R4skR
Zp7rzJjiBEGiEAUIj6rhQgzERK1IoOxP2PV5VbhBMRLd3AwKfuZoRHLdJdfKh40dpITtXm4G
KnXnI2c2hKGe2RricCmOKuLTwcRChqCwUjx/UoHjOgMefUU5ksM6tePrxb+qSmPC3unt9rAC
xqI5PjB34P8Wu0cIe+3Z5sGA/3JeVLB0iKRZwE/Rsb0cyhIdx2PqOISMRc17tfE8xzIRrXf7
RNm6glayDZU3Fs2dNIY+MrUTVsHnm3D1oAbNpHcDxExpKwAYTzyy5XZq4sxcYle5D7fpeMR5
o4F50k/ex1nqj3jYMwMTzbD2qc9evb7AJ3Dd5oM3PIjzC+OXc/v18fhq3ibEQ3gzm4vhKDSC
3T6CzWg+F3WpzTNZFqxYWBkCHnzK6yiYuAcQz3FGouyG1HGVZzGmpbJkuCz0Jq4Y+rlh4bor
WUJrx/kemgpwTJ+DC2ydhZPZ2Bs8aWw6+ZG0pSoz9KRlO4JhBqbUImoP3db3SloOZqF0QTJf
uH4m2zHdEyNsRJq776fH3hrrf7lkG6bJVvxyhMo8c9dlXgV2eGdy2gpd6sG0obOufkGD9Md7
uME+Hu0b6ro01neNkmtguehcKOWuqORH+wrtp9EwmunK6KLBoDhSH5efIQ+2OfsfQdjWwQ5u
H7++fYe/n84vJ+3F0ZtjfcKN6yJXnB183AS7Kz6dX0FqOXXWAVSF5E7lkypSwJfEp9fgMBl7
TN+vQWKoEIMh72uoHmHnMgIcz+EAxpE1hRWjpCpSvMS8q+mwfrY4JfB5uISeZsUcH+v+Usum
ttEyPB9fUD4UxLpFMfJHGbG+X2SFy6V2LNtSuobZxgnpGg4SOQ9WVIDs+KFZgY7NLckzBb1H
JmHhjBwa0DMrUseh9gC6bJkDGJhtDVCkwPOlozJTE5+qtUzZNltooEMyPKI96dWx4e9tymAB
KuqPDYadWtWEXbLXhTvyScUvRQBCsN8D8OZbYDs7ra7IXjfdDeERvW76y0l5c2/SEw8YcbMi
z3+eHvCiipzi/vRi3Lb6TAbFXx4iNImCEnP2xfWe7/OF4w48IBbJVkoJUy7RmYy+napySRUU
6jD3qEAA5Qkz1QByIquj4MVjWuzTiZeODra33Ae//m97UM2tazn6VA1wiQ+aNcfZ8eEJNZYi
x9BsfxRgBPiM2dajGnsuyrXAZ5Os1qH18zDfFWkvcW8bfyLOpIgYWXqYj3yHqOkNhProVRlc
z5gfo4ZIe6+CM5KuKF12SdR81EI5s4lPP5k0J+TSUklOO/ssro0zuZ5WKF4tnk/3XwWrTSSt
4KYyZg/ACF0Gm749qW7qfPt8L7WUYDW4JU/atzCkHjIXRVodiZR0W9z0o/Fh9Iq7b6cnIZdn
eY1+AkxqT+tlImv6e+1cmikwLZPle28epasiTFxRLXVJRZOHFU2XBGwyrqiT0g+OWZRhpqpF
8/hMezR4lMLSenUjMQ1NUCVNyNd2jov15yv19vuLtnnuJqcJxsETAhBgnSUg3UeWs9kizOpN
vg10vgMkk7kaVG9i0NRVXpay8TClsvuhOJOW5YMGVJDuc7rJEInBQpLsMMuuh5zX9O88wIzS
X0uQxSGo3dk202ka7OYvSJyMofFhLJ0maQLtNCiKdb6N6yzKfKbaQ2wexmmO765lFCuOatJD
6y4Z42ZfmYwT7cblcD5ZuGCnVLgYCBWCmJR6x5eBnZps3NuWnddqu/W2UZnzVL4NqF4k2wju
H0kxZMvRuK52HD1ZbPdRkkn+n1FAzJh0AE+raIfnbIBoLKSiIKM/c4/meXWMrjJZu5/WN1ev
z7d3WnCwOY6qSGdQQCVXhdFUFA3T1CFgJDXxSESEfidk92kAqnxXwiIHiMoHcqgRskuk4QEN
L3KQai1OtfDj2sGh0y9VqMJtMICfUTfpA99B6eSiRGsODdXZqrwQWn6oNj7cF0zB3qIbEyBZ
b3ChgsvzuKdtv2CzIFwfcve9RozbLRNjzLgw0+WXuMELtZvxFXiHN8JFaf3IMl4l1OgkX8pw
DYyWaR9SB8udAGWpTZaKXSyg2KZerrd5JI0cSZpE59w3gSBYunACD3QWertDOJCkvapRi7hx
/mU18lBM7oEZJGAmD92zAM1n0nMQwgQpQbSazl2i62+AyhmPWOBGhA94USOqcUOUVD89F6Yi
q/OCSR4qER0PVZpkC5q8HQHGfDGsSiYAaAUM/L2NQ+k4hSXWZKvt5hF4wvUOM5+Jc3lxpKyA
wcMZ0WRMatEmSWY3O+idrxP9RJnIOyxBzlgxnDDItT6UqGgX4F0J7klLhdbRiopBAEpyOB47
SHyo3Jonw2xA9SGoKklfBXgPqzywKp7uL1cJfP4wHa4GB2+4K01c7w4zrumh0QC65vqogVas
eEsattltE5O5ihh7fVpE5BqBJbsudJItQmBhxOKpjBOYT8CwCNQtEEip59UFjr6gGHucbUPS
1OBMf2p76t5xPpjkT+LUILSXNVqTot4T09NI6peD6Z3ahQLkepdXsqf94YOxIZ4HP0BIvgVG
HpuI6wOVrA+DoEDB5FVwS6oCsjhWS2Uv5jw0MOlFoLK/ZAthC68Tz1us/s6aY6xKKy9An7jc
bUGuhBX4uR6OU2ioh3LYGqz5yeKAynhZ7+FuMRAqcZukg5OwdHtfWYNwZbxbwyxasl3cd6au
RbZLc6hZM7P8C5q62js72X4C9txT1FudYJATVJjJ+Rq/wMWgt61w8gPpBBliQui2zjmWgZi0
VHA8ERxGw6wRzALGoecqGsl/HsAvMfpdWH7WeScHwCAsrezfQbCJ2Vq6LM+Y0stG/h7KBN/s
uo5sQGIAPUXCMujH7WxQmntQWg3A4IE6IZ8+hdFxR7rwYcL4hv4mKLdmtqyGhraQwVYgVDJP
h2VW1XvpjcBgiIpQNxBWZBEEuypfKn5wGRgDLWF2zAZrRQlMJtmpCk1kR74Dc/gqafDZ2n9N
FK27bzQtwlKZI+rBAugNTIfRgNfA7vNVGWR82Rjk0Oy1+HyB+w8uiFx40UhcxXKM1WbIZvjR
L3Db+zXaR1p66QkvicrncGVnE/YpT5OYdfglwQTewkB30bKdyrZzuUPz8JKrX+EE+TU+4L/b
yhoSUecDZT2Qz2O/HGKUullLrkFIG2siyTGKg4Kf9tPb6x8zkjtjWy37/bWC4HuDNjqpl+Pb
/fnqD2l+tSjCeZ8GbQaS1GskqrzoytfAIljFILbCwUadIjQKxN40KmPCtTZxuaUTYSkJqqzg
Y9IAWZiwaHqik4VP8BYm2sivdyvgOgs6jgakfxvh1HG2jICLwp2fGr+X4bpeo8dVsgq2VRJa
tcx/3UnTqpL6H4csNIzhqTfSZ7juiekIgVPe5OWGUhFli8V7sLx3rTJzHzGQAYFNI8fMSgfP
8Buu8OJtjWvZmLLM8wopBmsim2yS50Rb8Zc3RLiW4hSJ+A+LEoW57YEHFCSwDO1D8lsGVohe
pHAK5sS+Bk9ju4hTwTpsvFq6Rb3blkVol+sVz3bdQIdT44RxsZYZSpjwYwLLhs+L5m6IxUjD
N7AJtOAVd4F0eRs3cbCpixtczmt5TEi1K0Jobhg/dIvRyN71o4PKj3cdHrV2hU4N/w7hXxhf
c4rJBHkUDHH4QGDGDWpeyF9qS+3/oNDy/N9+Or2cZ7PJ/BfnJ4qG7mPNUMfelFe8YKbDGG47
xXAz0TLeInHfqS69kVskJCY9x3DzTgsnSV0WCfMksXDSg6NFMh6Yr5n/znz5kge6RTIfrD73
Pqw+p0kUrcruEIb6YvHBTMccA5IRrq96NvDjHXcyGkY59i8LVJhIylvaVa9Si5C4EsV78tCt
79aCJzK1L4OnMngut+14Q79BtPtkBBN7lW7yZFbLMskFLccxRnQWhHBYZgN55VuKMMZkvx+Q
wGVqV+bvE5V5UCWBdFG+kHwukzSlTywtZhXEMhyuWRt7VhCRwLDl5HsXiu0uqexvcZmS9wda
7cpNQpMjI2JXLdnbepRKqvLdNsFtwN7dDKjeYgipNPmiDQQv6SYk2568vrmmoh5Tzxrv1OPd
2zPaf/TSZuDpRnvHcl3G17sYo7YOHlsgtyi4jMGXxhpwQV4NxFcySoE46h2jXX91tK5zaFD/
UHswJhNHEhqk/EbW6HYwr4XSD+ZVmYSy4uEdPVCLYnI5vhXCXSmKt/ATdjoZRvFZCzdhwINO
2ETvoOolNLAwwbI6s5QeFfJGVYgrbwkyJipAzNMgf1cM8EqAjWB29nWcFqLtZ3sX7CYvIBsq
VdlvP6Ez4f35P48//7h9uP35+/n2/un0+PPL7R9HaOd0/zMmS/yKq+rn35/++MkstM3x+fH4
/erb7fP9UVthdQvuH12a9KvT4wn9SE7/veUujWGobzaozaj3ARrTJhVJ5vke1Ze4ZGpuDYTZ
CDewhLbyKiY08EXajqQtxgnFvrRWDNYFybk61BKGRQNWxbOzdi9Q8hy16OEpvriM27v9osDO
S6MnpNFEcX/m7bNb+Pzj6fV8dXd+Pl6dn6++Hb8/ad9XRozaPxZUk4HdPjwOIhHYJ1WbMCnW
9OXIQvSrrFleegLsk5YsccYFJhJeJOfewAdHEgwNflMUfepNUfRbQBVyn7RNIDMAZ2J0g0IG
IF2J/q+yY1mO20be9ytUPu1W7aYkWVKcgw8giZlhhi+BpGakC0uWJ7LK0aOk0Sb5++1ugCQe
jYn34JKnu4k3+oVuwPlwMl31GZVf/HJxcvrJeafUIKq+4IFh0xv66xiPGkF/OIk8DkXfrUB6
BAWaJ1JdoLnvboyNev/y+8Pdf77v/jq6o/V8/3r78u2vYBmrVgTFZ+FakmnYCpkSod8pmaqs
5YKaxk736kqenp+f/DK2Vbzvv2H49N3tfvf1SD5RgzF4/Y+H/bcj8fb2fPdAqOx2fxv0IE3L
YCyWacm0LF2BLBenx01dXEfynaaNuczxnT6mkFZe5tzby1PvVwL429XITBJKR398/mr7jcf2
JCnXygV3FDciu3AHpMyylW4ElIEWasPKAIOuD9Xc6Na6wG3XMtWAyrJRET/VOMD4tFDXc+rg
2AO81XMcxdXt27fYIJYibNeKA265HlxpyjEXYPe2D2tQ6cdTdqYIMVw1ZXuoJ0QWLNHtlmXa
SSHW8jSJwMOJhsK7k+MsX8QxpoEha2MbMG6OkNFmZ0EnyoyjOx8a58UZA89ha1A8YohTZXZi
Z2BaYDt7eQafnl9w1B9PQ+p2JU64fQxgbGd83oACq2HKOz/hxA0gOMfIiC0/hkXhmVhSLxnR
0C2Vd+2fT7Fpzt2cUq28PLx8c+KEJo4Wrh2A4W3E/jiKqk9ybl8LlZ4dahGoVZvIpf7jmhSl
BHNWBHWmQj+Q4dxUZOHOOekJcP7uqVGOSdaRq5ELLZQDjWQlbhhNrRVFK+wsA0+kBIjWCxWb
wKrhY4anZRLusk4KboVsan+w9Qp4fnzBHBLXqBhHZFHog5RANNxwwWEG+eks5F/FTdhQgK1S
pqk3ravl6GSL26evz49H1fvjl93reGEL12hRtfmQNorepPL6o5Ll+CQegzFiIFgXhBOHFiqR
cMIWEQHw1xyNJomR7801UyEqongF/wEfv0c4qvo/RKyqyGGGR4fmRrzL2LYxUMq2g35/+PJ6
C7bY6/P7/uGJkcB4nwHHXggOLCNcJngBgpZn4UuvIQ37vd544cObAQmPmnTQwyXYqmqIziKd
HkUoKNf5jfx8cojkUP+jonju3azMsi2MiLDVJlzXGDO7jYCnqB4WL7rSv085wKL9EGzeCYvN
PD5jDBGsPe/wOoU4akir6vx8u+U2OhBdlew7LxbB/GBDiGzFQm5TyR3QWlRpqmNbmP6VRb3M
02G5LSI1WBTREBDRXpelRI8euQO768Y+C5+RTZ8UhqbtE5dse378y5BKZTyJMghPbdZp+wkD
fa4Qi2UYikeb4mdgt22LJxbT97NDlPBonOLnvO8xX6J/r5E68Iri5oxjMxRkeNHKb2QVvh39
9vx69PZw/6Szwe6+7e6+PzzdW/kJdBw/dKpvjadVORFdIb79/OGDh5XbDqPy50EKvg8o6AnR
z2fHv1w4Dta6yoS69pvDeVx1ucDq0jWG9kRbPlMQo6YwoA8frFibHxgtk0oa4+dK5NnF0FzO
dY+QIZFVCtJUWRG2GN4mFJBUS+nGtAiKpuNiKWHDSny90xrYMTELdOEqRb+wqssxqI0hKWQV
wVayG/ouL7ynQVWWczo+rPNSDlVfJs7jqdoB74S1joljae6Hb1MUCkZFpGWzTVc6VEFJxxRL
gTmAduCATi5citCAS4e86wf3q4+ezQEA9kTEJwGOIJNr/tpvh4R9U0oTCLUJ1EZEwITyH104
Uj898z7lUkRBXk2W9kxpHaVOFvMc1yKqrC4j42BoQHedxdejDcXcFV+s3aDUBCWocDb/jZb2
HhRUZkYwIpQrGXRjph2kMfNwu5T5NhjQpJlKCczVur1BsD1mGjJsP3GH5QZJqXV2NI2B58I+
1zdAoUoO1q1gbwUIfDwxLDdJfw1g5OOcgHPfhuVN3rCIBBCnLGZ7w4JhqsJ9zpxrJelqngH4
QdlqHd1+bweAUfzslSh0pKsln9s6zYGvXEkYFyWcUzFKCbHz+DQI46cGh9cg3HnsBH64kc4G
YB5cn+EVWKJDq/HAPZfdysMhAuqiYzM/xg5xIsvU0A0XZ0neudXBWBZCYfbeiswfe53Rl00e
1WnaZaHH2hpAeg1MH9dZTKDpS9Guh3qxoNMnBzMoZ5SyS5tzF3Xi/pr4hDUChRtJnxY3Qyfs
a9vUJSriVrllkzsXu8GPRWYViXmfmOcG4sqa6xYzVuvCG1+c1gaTNJ2zpAkFGCVxbnDNig4G
LF9WDF2Pj4PAil4Ufbvy0mYCojJFrdZqGcyrM4p4dlwt7cGyrpbwlAf3xHNUygj68vrwtP+u
r1t43L3dhwfvFFW+phfyHAVCgzGgjD/A0cmi+IJpAepEMR1T/RyluOwxivlsmkKjwwYlTBTZ
dSXKPPXTXxzweG30rPhdl0mNGrhUCuj4l6/wQ/h3hde/t9Ie3OiATX6dh993/9k/PBqV7o1I
7zT8NRxeXZcx6QMYrNGsT6X3gteEbZsi5/UKiyjbCLXgfYLLLMG8orzp2PDsis7cyh7dfm7m
1gK4qqQkg89gFH6yj/WhNGCnmObMhucqKTIqFmjsXq0Ajm8u5cC1vSBFp0utzm/BSOBSdKnF
J30MNQ+zp679kV3UmKe86KvU5IjkeA/ZaRKOsqbU0Z/4wFXjhSWNev2PTvs/7FcczY7Mdl/e
7+mx5vzpbf/6jpdV2jmkAi1PMDCUpfNbwOlwXk/X5+M/T+Ze2HT6TojowNrhJCPERMeKomCG
RgcUE0GJyZ8H1uFUkh/hMAlOkrswZ2tYknZd+Jsztid+mbTCpI+BjWdaaogIZxemiTvF3keg
kQm+99h6ZVDYuQ/z6vQqoTVVysiokPlNhLHBACsdSkGJkhfGgPce9jy4etyJ1AHh4RRitwKL
3kR1TOU6b/IhPwbzGt9MiOSY6ZKRkBQHPigLi6k3VcR1Suimztu64k1UXYfOtQlWrQEzaoSL
XzgKoIujC+nacMBGPCYY/F27BpX2xNVilQBDQeVoTpxmqQwTHmWftbfbok90cHtsEZnZBwWl
AA7m1/B3cFRsSB3S7pOTi+Pj4wilG+vgIafgocUiWhWFSLWpqHwKHcvUtzpzZO47yKPMIGWV
afF0YD1ecUe/ExMxNLnqeturcBCs30mkMCkfZSQF6ut+iJ7VKUxhW+i3Ur3GOmhOtdJhZWuB
LCL0TWssLlFUEKt6ZlRgI2jD0w/hmje7N/qrXM1vjyLRUf388vbvI7wm//1FC7nV7dO9+3In
VJhi7FgNpg7n1rHxmI3fg9SaFPU6XfcN81pWWy+6EDlVmtR1R8aeTUg1cT6uKLHfHIx2jDZp
LsYio2J+hMZUdWJPP9YwrPCGnQ7MKXZBby5BsQH1Jqs51kiSRddiJ/kdnjsdegt6y9d3VFZs
1u/sN0/P1kBXdSXYmFk5B/oxZbsrDTnuWspGe1W1DxSDcmbx9s+3l4cnDNSBLjy+73d/7uA/
u/3dTz/99K+5oZRcTEUuyTwK05waBVtrzCZmR5jKwD5EWTwa/n0ntzKQPtZD5C674Mk3G42h
V5PBeFz5BGrTOglsGkot9AxzSsGSTchODCLaGdHVaC21hYx9jSNJB55GpHKbmpoEuwNv8Rjl
wbxmp26yvtDRbv0/Jnw2g4FXdko/PTzWhno/hr/2FZ7wwxrVPsiwc2stZQ8IDkMBZgvIqZZ5
wJg21neti3293d8eoRJ2hy79wMjzs4KNtEDwgRa0/CLVSB10DroKx+RQi6iGTHQCjWC8Ozd3
A3gPNt6vKgVTFPTZ3LtZXYcJpD3HNWLLATUjfHt6iLiDEX/oW7zNgR5HO1QASmAyJYm31H33
+fTEqcBdNAiSl3Ya3ngxpNM3b/teGgtRkcQPJ1dfdgAaMx4jci1Fb3WVXnd142kKk3VK7VQx
7BKMmRVPM7pBFl5PdQEEHErSPmFA8QzGI8GkZho+pAR1vOp8bSY1H+pSZqQuO3X5IAIjLFk3
hj+LFPh8Ebe8Le2NblDLjY3pOkt0ioWhCdbty/Mfu9eXu4ixg0moJu54I5WqOTcXEmnk3FN9
D4NWToHxAlO/OLPpZYmvP2r91QkLxWyaBmW759kz+F8xy7MQiSyGhRS0O0jvde+/iRDFry7o
1LDIt33j+hJHB0KbD9r1ePgcC/uFXljUpwZyBcfq25a1Y5Tj79FGiJDTNLQgCJPiOvbpoGp8
VzPqzlvKQF3cAvvYsldD4iQJVVz7Go+HwGft0aFVlF5qlE8Hay+t2ZxtpGw6zN91a1lgrB1Y
Njl6Gja5dnTNTshg3dou3m73tkcBigpe+vzf3evt/c5KpMLLnmyOqm9/ooayqbrz7VCziadh
cku7M+DRGku8I6ItjHJroK0zX1vjDGLJkzHF1QviRPGinVw72enL5/6m7Jk9xa/W8XnROq2v
AlMMDDAAG65on9gZ6nnckMwY/HSYoNAHws4JUqKrVPXoZHL9XhoJm1HA2tTG+/Gf+BjGZNUo
YNd4tI7Tg7zGROfNGvA660p2LLR9gREOLTDxOEmZV+j84OPLiSL6fTJqdMRxAhE/awIJnuEd
wNOZWl3UyCWiVM6BYJzMOGsi+oZWoS/OWBZKvV3JLW7yA8Ohz3P0wRqfPzjStWnDB+7oqB6g
6NjL/ghNwslyxBDQHC49ekUBGHZIwd9cr32YfX4Au6Wj1Die83G4FAqjCTrcEHGaaLwmYfOM
v4tNL+T1gVUOvff8Fy7+qgw8nM7QYEQnJVgGw9osDtSKIUSrmlx+Vzw7yiu8s7ab431iTVjk
qgRjSAYt0PfV8JFOgHBZ/swVKPRpQrHhIVa4UfA9tLmN7zA9aJksBJf0atY+5YxSXJjfpTXI
4Hi5jivvANcCOS1gjxxoAFrDrvwcv0Q4WzTgojbvQZEdZFLqo9v/AcOm58JCCQIA

--h31gzZEtNLTqOjlF--
