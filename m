Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2WURKAQMGQEIUOVMYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BED3152D2
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 16:29:48 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id c186sf13032190pfa.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 07:29:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612884587; cv=pass;
        d=google.com; s=arc-20160816;
        b=F9InNOsvXEEWvfn4DNiMmw1S/GvCsGt13jNWWC0FGh2kPeNA95tNuRWE+G3/0qkLSo
         xCD09xRvQEP6b1u9gM3zbApnuCFnJp8jlfu0rANprHM+ZdFIUcNl0lrte4AUte1i+NO0
         Jv8vBAQ7zZgOFGw9PU0zJMYOogPrs5Qzk9gf8VVomttgQVmKm3bo8jKOlHRqcjoBW3lW
         ysD9TBEzFNtjA3dB+ILQZAPRZ6yXKu0Xh6jQJDagfbfLAmBoHtmhlPOHEGots7G7s9Le
         C9R8eFX58flrC4sez/EGCTTMkYmwGU3h4Yb1YheeNA5zp/JnxJxno2hnewWhmZaVMua0
         nqaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=lklu4FMYfK8Cu1BOKbf7xLzrQFJSlZ1olVyLIpmiys0=;
        b=GQlj3mc8WsTJSv37CefDAu99q1mbAL9e4VY6WV78MNJdOsFtf8EXEpr86pN8crdnPl
         iqXeY168ECwHYcji55V/CF5GaUYK6m6F2WQQjiDUMK0Wwg5haklOKpzrpXVrXTGypbcR
         p0EURFCZVoU05o1D/O6DekQyAwv/Upq6I1OQ1lFsFxcudLOPWVIAbAaN0nvjVnfrrXlm
         5N4QqJqlfi8+5xi2VfyXhSQRet9GylhqAjdkrSEZ0HJd+tAvqKH3FNu1ty3uE+e7pUXz
         huHYGazdMN+p9FtltAXJtoLgpKeijjRtNMSMuFjBjShUZJxyP0QI8PJlrWRrMFcb2xu0
         2ieg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lklu4FMYfK8Cu1BOKbf7xLzrQFJSlZ1olVyLIpmiys0=;
        b=WaF+6SS4riUVBRuwtPABYR4FhJ4SQMCLucMIW9l90HMCr9t2getuR//SBH6/qDoveC
         rDf5xE9hdZJRZ+idbwJJOK6KxsUC42LPH7PyGZ9RSIyeIO7tYpgLaEj8Qc0E/cSWmXQU
         Fa5CNlhkXUXIS4Z5YBk4o2KBt4oaHooI/TBpzV3DzANyIhIcsNCfNuXrC6jmfS5Y+5Aw
         LNJW8rjhXrEHuka/Ect0ZOM7BkmgUI+zXI1uZxRZ1pBYsvw3wpT/5ybrihWU3jMhXQM+
         HZOjuVC7ETmIVDbs5CRSpGwNdsVw3kngvIa0t37tZi9Qxtdf+H9yl4dmfSc/wmgIvwq0
         gCFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lklu4FMYfK8Cu1BOKbf7xLzrQFJSlZ1olVyLIpmiys0=;
        b=skloXXrV7D55tfcOy398wTNAwpvIyN2/wNvu28A6rl71z1PNBrwYzbJSgGcJ8Wzsg8
         WU/cKcv0JQEkXlGIbuGsuDOuhZb90UHg5i/H7KEWTrWNvf9mdCAgO85yF1iu/dSIPgb4
         0ARkSN2OpBKI0I5YFF+ZEb6fCgwUPrhC5kuNkE7uY5yWN4CAEkNjyRHOaWvSj2uwOZeG
         rxYnBOaOoMQusXQ9eRK8YVsf/pzNxVZnMUhTFHPTk/dufAIJBMgsIH/2jlvDa3+DwXfr
         OQ3ctGF/HSHHAqv/U+LkLHO2T/MneJEHLgVXqaIGOqVl/YQO46TXs1kclWuIO1kS6/YF
         VDKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QDIB0uy8TlqgDvp6zjtpkJmLku3O/Ebf+QO7fl4lbdD50T2ao
	yMq34HB9PlqNsyQEtL1q7mA=
X-Google-Smtp-Source: ABdhPJxLuEqlHdar11e35O9w5ZCKiF3RWoWydRs79GYLsNIgowUpW5mANAivZHsWtrd8e6lrqbeiuw==
X-Received: by 2002:a17:90a:fd0f:: with SMTP id cv15mr4678174pjb.36.1612884586685;
        Tue, 09 Feb 2021 07:29:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:71c6:: with SMTP id m6ls1657748pjs.0.canary-gmail;
 Tue, 09 Feb 2021 07:29:46 -0800 (PST)
X-Received: by 2002:a17:90a:3d42:: with SMTP id o2mr4444454pjf.173.1612884585699;
        Tue, 09 Feb 2021 07:29:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612884585; cv=none;
        d=google.com; s=arc-20160816;
        b=ZRW0YtLRdZmB5lPnU/dt3OzumIlVha4r4ikHL4tWZnOeis5bIHV3qhg8al8viZuj6U
         fkn93D27wQkSgd/cmRN2v0a6qlS9KFdAErZTsjTeG4w0jYMOzf2olBUJAZ86UyAuO+6Y
         sehJ5tehMvWY05t15Yt/VJ0upZoyMewmAH6/opROkndCaKczHHFaKtN104/eNCOafiwL
         sYvo9ikrAK7tsZE4QTVLisxWniINYdEmJOqA531UgYgVFtPF7ffgVyUPoYLVO1CI+1/K
         qR7QReAGagXKfcz9boHyKy3Odmc0KAiEcYSJ16V6n9B72y/Wa24qS1V/JiHu1825/f5k
         GAwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=+qr+pH66nYxJLGTREuHn8tr6SlsbddQPabXqOwY5T+0=;
        b=XhjsiHHRuSZ9PA0TEGwNbYcvRbxFhNP5AZ2c6uS8XjIP3olZGNLZu3sa6LWkhC/l5a
         OUD3KCTwL7RB/rZIRniPKssb432XdZdrNwXWy6ndIpvHWqoZGq2cA1T+AuE6zr4+Ca3s
         oBHALIgTXm7tQl2bh0PAFqkAMpm66cYaEjC+hKlEs9IqqGy/3EO2K371FlbqxkH0eqoI
         uiTzfJuwRDXsR6QXEcM/11CGzrHmV08gOFKnlY/ep5fD8T/blZQJbhZg887SkaKkW0QI
         jBgXCXQflAh8RthBINa0oHK34zbryLm5uOUeyfNkCvJEkrG3AXaeUkcDPGiYG+UPYabc
         M2mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id nl3si105470pjb.0.2021.02.09.07.29.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 07:29:45 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: HBATDm4ZK6qC7nL4DF5h1t0RE2nkVW/G0zzt1sAj7vdRYDfgMR0LKfC45GUJskWmidCfW4DMte
 rV4dp9xpxDsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="161646664"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; 
   d="gz'50?scan'50,208,50";a="161646664"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 07:29:44 -0800
IronPort-SDR: n/5CpOdqe5ThNo8+Vqc+hy4QF6620rSoRkqk2byq6zYiyHEWephXWURoaLeLhwxYRx23qnsFrh
 k0F25kAI02JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; 
   d="gz'50?scan'50,208,50";a="361847963"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 09 Feb 2021 07:29:41 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l9UxR-00028f-GV; Tue, 09 Feb 2021 15:29:41 +0000
Date: Tue, 9 Feb 2021 23:28:45 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:locking/core 3/3] arch/mips/lib/bitops.c:31:2: error:
 implicit declaration of function 'instrumentation_begin'
Message-ID: <202102092341.ZHPXjghj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="C7zPtVaVf+AK4Oqc"
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/core
head:   314f035f38352a3100692753bd9b2356fb068cbe
commit: 314f035f38352a3100692753bd9b2356fb068cbe [3/3] lockdep: Noinstr annotate warn_bogus_irq_restore()
config: mips-randconfig-r033-20210209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=314f035f38352a3100692753bd9b2356fb068cbe
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue locking/core
        git checkout 314f035f38352a3100692753bd9b2356fb068cbe
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/mips/lib/bitops.c:31:2: error: implicit declaration of function 'instrumentation_begin' [-Werror,-Wimplicit-function-declaration]
           raw_local_irq_restore(flags);
           ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:157:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_begin();        \
                           ^
>> arch/mips/lib/bitops.c:31:2: error: implicit declaration of function 'instrumentation_end' [-Werror,-Wimplicit-function-declaration]
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:159:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_end();          \
                           ^
   arch/mips/lib/bitops.c:31:2: note: did you mean 'instrumentation_begin'?
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:159:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_end();          \
                           ^
   arch/mips/lib/bitops.c:31:2: note: 'instrumentation_begin' declared here
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:157:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_begin();        \
                           ^
   arch/mips/lib/bitops.c:52:2: error: implicit declaration of function 'instrumentation_begin' [-Werror,-Wimplicit-function-declaration]
           raw_local_irq_restore(flags);
           ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:157:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_begin();        \
                           ^
   arch/mips/lib/bitops.c:52:2: error: implicit declaration of function 'instrumentation_end' [-Werror,-Wimplicit-function-declaration]
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:159:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_end();          \
                           ^
   arch/mips/lib/bitops.c:73:2: error: implicit declaration of function 'instrumentation_begin' [-Werror,-Wimplicit-function-declaration]
           raw_local_irq_restore(flags);
           ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:157:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_begin();        \
                           ^
   arch/mips/lib/bitops.c:73:2: error: implicit declaration of function 'instrumentation_end' [-Werror,-Wimplicit-function-declaration]
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:159:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_end();          \
                           ^
   arch/mips/lib/bitops.c:97:2: error: implicit declaration of function 'instrumentation_begin' [-Werror,-Wimplicit-function-declaration]
           raw_local_irq_restore(flags);
           ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:157:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_begin();        \
                           ^
   arch/mips/lib/bitops.c:97:2: error: implicit declaration of function 'instrumentation_end' [-Werror,-Wimplicit-function-declaration]
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:159:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_end();          \
                           ^
   arch/mips/lib/bitops.c:121:2: error: implicit declaration of function 'instrumentation_begin' [-Werror,-Wimplicit-function-declaration]
           raw_local_irq_restore(flags);
           ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:157:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_begin();        \
                           ^
   arch/mips/lib/bitops.c:121:2: error: implicit declaration of function 'instrumentation_end' [-Werror,-Wimplicit-function-declaration]
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:159:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_end();          \
                           ^
   arch/mips/lib/bitops.c:145:2: error: implicit declaration of function 'instrumentation_begin' [-Werror,-Wimplicit-function-declaration]
           raw_local_irq_restore(flags);
           ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:157:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_begin();        \
                           ^
   arch/mips/lib/bitops.c:145:2: error: implicit declaration of function 'instrumentation_end' [-Werror,-Wimplicit-function-declaration]
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:159:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_end();          \
                           ^
--
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:400:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_BRD_TYPE_CASE(CVMX_BOARD_TYPE_UBNT_E100)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:400:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                             ^
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:401:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_BRD_TYPE_CASE(CVMX_BOARD_TYPE_UBNT_E200)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:401:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                             ^
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:402:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_BRD_TYPE_CASE(CVMX_BOARD_TYPE_UBNT_E220)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:402:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                             ^
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:403:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_BRD_TYPE_CASE(CVMX_BOARD_TYPE_CUST_DSR1000N)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:403:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                             ^
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:404:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_BRD_TYPE_CASE(CVMX_BOARD_TYPE_KONTRON_S1901)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:404:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                             ^
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:405:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_BRD_TYPE_CASE(CVMX_BOARD_TYPE_CUST_PRIVATE_MAX)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:405:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:320:20: note: expanded from macro 'ENUM_BRD_TYPE_CASE'
           case x: return(#x + 16);        /* Skip CVMX_BOARD_TYPE_ */
                             ^
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:416:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_CHIP_TYPE_CASE(CVMX_CHIP_TYPE_NULL)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:411:20: note: expanded from macro 'ENUM_CHIP_TYPE_CASE'
           case x: return(#x + 15);        /* Skip CVMX_CHIP_TYPE */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:416:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:411:20: note: expanded from macro 'ENUM_CHIP_TYPE_CASE'
           case x: return(#x + 15);        /* Skip CVMX_CHIP_TYPE */
                             ^
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:417:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_CHIP_TYPE_CASE(CVMX_CHIP_SIM_TYPE_DEPRECATED)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:411:20: note: expanded from macro 'ENUM_CHIP_TYPE_CASE'
           case x: return(#x + 15);        /* Skip CVMX_CHIP_TYPE */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:417:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:411:20: note: expanded from macro 'ENUM_CHIP_TYPE_CASE'
           case x: return(#x + 15);        /* Skip CVMX_CHIP_TYPE */
                             ^
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:418:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_CHIP_TYPE_CASE(CVMX_CHIP_TYPE_OCTEON_SAMPLE)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:411:20: note: expanded from macro 'ENUM_CHIP_TYPE_CASE'
           case x: return(#x + 15);        /* Skip CVMX_CHIP_TYPE */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:418:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:411:20: note: expanded from macro 'ENUM_CHIP_TYPE_CASE'
           case x: return(#x + 15);        /* Skip CVMX_CHIP_TYPE */
                             ^
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:419:3: warning: adding 'int' to a string does not append to the string [-Wstring-plus-int]
                   ENUM_CHIP_TYPE_CASE(CVMX_CHIP_TYPE_MAX)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:411:20: note: expanded from macro 'ENUM_CHIP_TYPE_CASE'
           case x: return(#x + 15);        /* Skip CVMX_CHIP_TYPE */
                          ~~~^~~~
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:419:3: note: use array indexing to silence this warning
   arch/mips/include/asm/octeon/cvmx-bootinfo.h:411:20: note: expanded from macro 'ENUM_CHIP_TYPE_CASE'
           case x: return(#x + 15);        /* Skip CVMX_CHIP_TYPE */
                             ^
>> arch/mips/cavium-octeon/executive/cvmx-l2c.c:644:2: error: implicit declaration of function 'instrumentation_begin' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:226:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:157:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_begin();        \
                           ^
>> arch/mips/cavium-octeon/executive/cvmx-l2c.c:644:2: error: implicit declaration of function 'instrumentation_end' [-Werror,-Wimplicit-function-declaration]
   include/linux/irqflags.h:226:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:159:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_end();          \
                           ^
   arch/mips/cavium-octeon/executive/cvmx-l2c.c:644:2: note: did you mean 'instrumentation_begin'?
   include/linux/irqflags.h:226:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:159:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_end();          \
                           ^
   arch/mips/cavium-octeon/executive/cvmx-l2c.c:644:2: note: 'instrumentation_begin' declared here
   include/linux/irqflags.h:226:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:179:3: note: expanded from macro 'raw_local_irq_restore'
                   raw_check_bogus_irq_restore();          \
                   ^
   include/linux/irqflags.h:157:4: note: expanded from macro 'raw_check_bogus_irq_restore'
                           instrumentation_begin();        \
                           ^
   81 warnings and 2 errors generated.


vim +/instrumentation_begin +31 arch/mips/lib/bitops.c

92d11594f688c8b Jim Quinlan 2012-09-06  13  
92d11594f688c8b Jim Quinlan 2012-09-06  14  
92d11594f688c8b Jim Quinlan 2012-09-06  15  /**
92d11594f688c8b Jim Quinlan 2012-09-06  16   * __mips_set_bit - Atomically set a bit in memory.  This is called by
92d11594f688c8b Jim Quinlan 2012-09-06  17   * set_bit() if it cannot find a faster solution.
92d11594f688c8b Jim Quinlan 2012-09-06  18   * @nr: the bit to set
92d11594f688c8b Jim Quinlan 2012-09-06  19   * @addr: the address to start counting from
92d11594f688c8b Jim Quinlan 2012-09-06  20   */
92d11594f688c8b Jim Quinlan 2012-09-06  21  void __mips_set_bit(unsigned long nr, volatile unsigned long *addr)
92d11594f688c8b Jim Quinlan 2012-09-06  22  {
c042be02d730534 Paul Burton 2019-10-01  23  	volatile unsigned long *a = &addr[BIT_WORD(nr)];
c042be02d730534 Paul Burton 2019-10-01  24  	unsigned int bit = nr % BITS_PER_LONG;
92d11594f688c8b Jim Quinlan 2012-09-06  25  	unsigned long mask;
92d11594f688c8b Jim Quinlan 2012-09-06  26  	unsigned long flags;
92d11594f688c8b Jim Quinlan 2012-09-06  27  
92d11594f688c8b Jim Quinlan 2012-09-06  28  	mask = 1UL << bit;
92d11594f688c8b Jim Quinlan 2012-09-06  29  	raw_local_irq_save(flags);
92d11594f688c8b Jim Quinlan 2012-09-06  30  	*a |= mask;
92d11594f688c8b Jim Quinlan 2012-09-06 @31  	raw_local_irq_restore(flags);
92d11594f688c8b Jim Quinlan 2012-09-06  32  }
92d11594f688c8b Jim Quinlan 2012-09-06  33  EXPORT_SYMBOL(__mips_set_bit);
92d11594f688c8b Jim Quinlan 2012-09-06  34  
92d11594f688c8b Jim Quinlan 2012-09-06  35  

:::::: The code at line 31 was first introduced by commit
:::::: 92d11594f688c8b55b51e80f2eac4417396237a4 MIPS: Remove irqflags.h dependency from bitops.h

:::::: TO: Jim Quinlan <jim2101024@gmail.com>
:::::: CC: Ralf Baechle <ralf@linux-mips.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102092341.ZHPXjghj-lkp%40intel.com.

--C7zPtVaVf+AK4Oqc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
PXlQp22Gd0vXnMaKI9KHjmXk+x9y3GspySYCAA==

--C7zPtVaVf+AK4Oqc--
