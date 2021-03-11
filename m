Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN4NVGBAMGQEEVTIXRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA8533797F
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 17:35:04 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id g18sf15956944qki.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 08:35:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615480503; cv=pass;
        d=google.com; s=arc-20160816;
        b=u46fUgGJDdyWMvIK+aKcRa9SZvTlZjmnPXKo9BrbcLBRsZCmsqOpWz0X5H1khQYcF7
         u/83FeZVEaIuWPb1u2JrarZTvosi5E3nO47uGOu9/oFWQQxD8wXjzcIObq4NeT8AZNek
         yc360fWhcR1rtmDNm4+SvGi4E4nkZXPS64mWPt2suYPc1FgTR0O7+jyU/AkYRIBBuPsT
         IODELZsO1OV2IUL2MVcYbLWJfXsfeGEjjtam7c5kzfv/my0bjsadQi5W0e8n9E/YycCK
         FChBmaY2zqys5AkEJP6oMQc8cyDZqkhCQSjQK1XFJ6YoeTPW7a6XWWtJXJn7lmbCw4Qa
         0TLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=DlPbP8+14482lCuRtr+u9/MKfVYaKsPO4/29RqIknyQ=;
        b=BdpvW2ZR8AzBPYgdgYqhepPwZZV5PCpbCrD+USR3b0TbQNJEArSTZiQxg36cSXNxXL
         WS7ojGqHltNmysSxgoHQ6CZOK5wPBPtY9cL5WpzS6o5I1nMsi7BRYooI2RjIYbt0kKeb
         qZaCzhgcLU/eZn1563eFrhdBTlHf7SgGN4c6USK1dzOz11PchBSw0oGGQUsjbWGdyMAI
         W8GTYQio9cBb0IkJBzLfl//KncnVuqIc3zZFFh5OKSpqDKdYGfns30Dm5Y24KCcGWD1p
         0gwsODP71Dki2fVziIsWo4453p0vQ0erM1cEQQ6htrAz85rwScdfcJRmgpU3Foig5r6m
         HAEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DlPbP8+14482lCuRtr+u9/MKfVYaKsPO4/29RqIknyQ=;
        b=Wo+rFGNf3Kbr4Y/X/Hhagb+W+aOYnOLQYrtElkqAIfnWvS2C3NC1GLiXLKFxPcDf0b
         pC81tJSD2V3KOlwTPwpja0goAXEm8FccNlVRtpgx66aQadawCX7bu/anXrrT4TXMQ0UA
         PpiVlYb5oXsJp6WF0so41HP93ftJyE8XKBzObN6cxrjQbOsrArInUIXNpfA3eU3vhR7p
         g6uCxJ+q6gbGF6uiVlAkvbDK+jkQ+8bJ/pXyijN/NL3wvPfD1A72KPhd+LMNCqgKd1YZ
         hceUv+F0iD0tQkR9FUKy8WS3jKfpgyI1nuwlYLTbpDLC+AgHZWVTC6zVxbH4bm7AyXgl
         eJMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DlPbP8+14482lCuRtr+u9/MKfVYaKsPO4/29RqIknyQ=;
        b=uD0hO4RpWFKtKGvJ+3SC1xJn7wbFRC9guvNP0f+1ZYfkzkAm4bQxMRexbu/sDDqhND
         /vLrziL8lqZKUe4wxC2JlxQmVzbe/47asWjtZK57Clq2oYWVT9wyJIzdxDCaBelZmpVn
         Gt0bDTTgcNWdbwjF1BJj6lI52cpl/cz4USxuxvXhrjp9ouK2JZZtLDKz+Rs0tRLy8P3+
         mKT+YBGyZ8WQimD1lhV8pi2ezKY+2YopriZi1pcrsPS/l1ScLQ7YzOZ85kgu+I0Fn3+8
         eI5UGrHZ8dUDRHlXSDNj23l/QXrwJcV/hE1NmiQr+5W0C2OcIndmOrduEXmL0ds1dEya
         6PDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ctyDiqX1H1GR7RH7vEGvn1ZUG/XEssqvLoluKf+cFQ1f+Cads
	s3c5Hfw6fqz3CVKiQ+SJIcA=
X-Google-Smtp-Source: ABdhPJzC49Y03b4uvSjo9nesIwZRUqxQ2WlLYxD06OIdcqNmIrNk09osh9+KXbO+DgEI0Z6P8+O/WA==
X-Received: by 2002:ac8:431e:: with SMTP id z30mr7970525qtm.216.1615480503692;
        Thu, 11 Mar 2021 08:35:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4e89:: with SMTP id dy9ls1509981qvb.10.gmail; Thu, 11
 Mar 2021 08:35:03 -0800 (PST)
X-Received: by 2002:ad4:4eae:: with SMTP id ed14mr8486784qvb.52.1615480503090;
        Thu, 11 Mar 2021 08:35:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615480503; cv=none;
        d=google.com; s=arc-20160816;
        b=TO0zN8Lukk7zd1YetLNE80nKMz8ite8RVyPP1Bzl5az3Z6QB7yjrtnR0JsmOUXrK+x
         WYPHdipjX6V98ErsnG+EqW/7VPyOW8adL7WEkIn/DGilgaCBV0Cv2goy9jv29Y3e1/y/
         GBIA3cb+uckIgyUtw1K3qFIpJgriAP5Tl+XRL6Lqns5cPBV2cjcXT0MngQAffYrkPGP7
         BHvXIPOlQBoJDCXM8hi82iXpQ8BMXdum0DsGnsNNNa7PgYpI4D2BrZ4Cvz++c8o/qfMA
         4HpjWBkCtH0sjX2yiKqdUafLOvPFDFk9ycLmDtODkNDHTWdj5OshCeMuSc9zOVQUwAel
         SHBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=o+EIwWkw3QD1F4o5KkAhT5+w+Vmbp9X3uU/BMyx2/mQ=;
        b=r+aMzVxEQWeUbMqA05GaGw63rwx4SI+ktX7kBw8WsEqV3/MfDS7/d5ZdXt+9O+hfPU
         pmjbj9fKfohHLvhdfXxX99lN3wY7XZnDmiZgkcziP321kSXNZD5yCu29A80tu/RnvjmS
         kp2y6XuXxuqDu74qYJBJ6A51H60pI5Ay+zsw81mWvS99cs1h6i4eOZc748ypDn4TF229
         OedUzUyE/Xgy5z4dqW2eslFTueDnp2yBH4eAqJsWQ1dDuu6BV2GjOidRme5ZcIlKn72q
         yMiGUdjgi7ixrjUx7up94QrcYLZLQJAuXsE1xVPMpX4M9H2SI8lrMV8a2aQE4sNClB42
         lJmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id w19si200493qto.4.2021.03.11.08.35.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 08:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 40Ml+da9/DvRH5iC5phHy6d4fkCZFN9+JXzFil5BKvw0o3gST7K7/JNVI5yAWPBICLrcMJk/kK
 cnaBow2+IK4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="176288976"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; 
   d="gz'50?scan'50,208,50";a="176288976"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2021 08:35:00 -0800
IronPort-SDR: CIX1GPWPVBRt/yOF3UQ4mP6MwqCnfqFyF0n1dUHDg7dT5omzZdW6NdDrqTgreyN6A1W1mZBYsj
 so8CtVQ+24vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; 
   d="gz'50?scan'50,208,50";a="387062023"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 11 Mar 2021 08:34:58 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lKOH3-0000rC-F9; Thu, 11 Mar 2021 16:34:57 +0000
Date: Fri, 12 Mar 2021 00:34:50 +0800
From: kernel test robot <lkp@intel.com>
To: Nicholas Piggin <npiggin@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Axtens <dja@axtens.net>
Subject: [linux-stable-rc:linux-4.19.y 2158/3560]
 arch/powerpc/include/asm/book3s/64/kup-radix.h:5:26: error: a parameter list
 without types is only allowed in a function definition
Message-ID: <202103120042.hWIWt6hC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fdj2RfSjLxBAspz7"
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


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   030194a5b292bb7613407668d85af0b987bb9839
commit: 31ebc2fe02df202566d0e36c1106b4902d6e2f8c [2158/3560] powerpc/64s: flush L1D after user accesses
config: powerpc64-randconfig-r025-20210311 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 574a9dabc63ba1e7a04c08d4bde2eacd61b44ce1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=31ebc2fe02df202566d0e36c1106b4902d6e2f8c
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout 31ebc2fe02df202566d0e36c1106b4902d6e2f8c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from arch/powerpc/kernel/asm-offsets.c:16:
   In file included from include/linux/compat.h:12:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:54:
   In file included from include/linux/irqflags.h:16:
   In file included from arch/powerpc/include/asm/irqflags.h:12:
   In file included from arch/powerpc/include/asm/hw_irq.h:64:
   In file included from arch/powerpc/include/asm/paca.h:21:
   In file included from arch/powerpc/include/asm/lppaca.h:36:
   In file included from arch/powerpc/include/asm/mmu.h:313:
   In file included from arch/powerpc/include/asm/book3s/64/mmu.h:30:
   In file included from arch/powerpc/include/asm/book3s/64/mmu-hash.h:24:
   arch/powerpc/include/asm/book3s/64/pgtable.h:1292:15: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
   static inline const int pud_pfn(pud_t pud)
                 ^~~~~~
   In file included from arch/powerpc/kernel/asm-offsets.c:16:
   In file included from include/linux/compat.h:19:
   In file included from include/linux/uaccess.h:14:
   In file included from arch/powerpc/include/asm/uaccess.h:9:
   In file included from arch/powerpc/include/asm/kup.h:10:
>> arch/powerpc/include/asm/book3s/64/kup-radix.h:5:1: warning: declaration specifier missing, defaulting to 'int'
   DECLARE_STATIC_KEY_FALSE(uaccess_flush_key);
   ^
   int
>> arch/powerpc/include/asm/book3s/64/kup-radix.h:5:26: error: a parameter list without types is only allowed in a function definition
   DECLARE_STATIC_KEY_FALSE(uaccess_flush_key);
                            ^
>> arch/powerpc/include/asm/book3s/64/kup-radix.h:18:6: error: implicit declaration of function 'static_branch_unlikely' [-Werror,-Wimplicit-function-declaration]
           if (static_branch_unlikely(&uaccess_flush_key))
               ^
>> arch/powerpc/include/asm/book3s/64/kup-radix.h:18:30: error: use of undeclared identifier 'uaccess_flush_key'
           if (static_branch_unlikely(&uaccess_flush_key))
                                       ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   include/linux/mman.h:133:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:110:48: note: expanded from macro '_calc_vm_trans'
     ((bit1) <= (bit2) ? ((x) & (bit1)) * ((bit2) / (bit1)) \
                                                  ^ ~~~~~~
   include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   5 warnings and 3 errors generated.
--
   In file included from arch/powerpc/kernel/asm-offsets.c:16:
   In file included from include/linux/compat.h:12:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:54:
   In file included from include/linux/irqflags.h:16:
   In file included from arch/powerpc/include/asm/irqflags.h:12:
   In file included from arch/powerpc/include/asm/hw_irq.h:64:
   In file included from arch/powerpc/include/asm/paca.h:21:
   In file included from arch/powerpc/include/asm/lppaca.h:36:
   In file included from arch/powerpc/include/asm/mmu.h:313:
   In file included from arch/powerpc/include/asm/book3s/64/mmu.h:30:
   In file included from arch/powerpc/include/asm/book3s/64/mmu-hash.h:24:
   arch/powerpc/include/asm/book3s/64/pgtable.h:1292:15: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
   static inline const int pud_pfn(pud_t pud)
                 ^~~~~~
   In file included from arch/powerpc/kernel/asm-offsets.c:16:
   In file included from include/linux/compat.h:19:
   In file included from include/linux/uaccess.h:14:
   In file included from arch/powerpc/include/asm/uaccess.h:9:
   In file included from arch/powerpc/include/asm/kup.h:10:
>> arch/powerpc/include/asm/book3s/64/kup-radix.h:5:1: warning: declaration specifier missing, defaulting to 'int'
   DECLARE_STATIC_KEY_FALSE(uaccess_flush_key);
   ^
   int
>> arch/powerpc/include/asm/book3s/64/kup-radix.h:5:26: error: a parameter list without types is only allowed in a function definition
   DECLARE_STATIC_KEY_FALSE(uaccess_flush_key);
                            ^
>> arch/powerpc/include/asm/book3s/64/kup-radix.h:18:6: error: implicit declaration of function 'static_branch_unlikely' [-Werror,-Wimplicit-function-declaration]
           if (static_branch_unlikely(&uaccess_flush_key))
               ^
>> arch/powerpc/include/asm/book3s/64/kup-radix.h:18:30: error: use of undeclared identifier 'uaccess_flush_key'
           if (static_branch_unlikely(&uaccess_flush_key))
                                       ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   include/linux/mman.h:133:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:110:48: note: expanded from macro '_calc_vm_trans'
     ((bit1) <= (bit2) ? ((x) & (bit1)) * ((bit2) / (bit1)) \
                                                  ^ ~~~~~~
   include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   5 warnings and 3 errors generated.
   make[2]: *** [./Kbuild:56: arch/powerpc/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1123: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:146: sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +5 arch/powerpc/include/asm/book3s/64/kup-radix.h

     4	
   > 5	DECLARE_STATIC_KEY_FALSE(uaccess_flush_key);
     6	
     7	/* Prototype for function defined in exceptions-64s.S */
     8	void do_uaccess_flush(void);
     9	
    10	static __always_inline void allow_user_access(void __user *to, const void __user *from,
    11						      unsigned long size)
    12	{
    13	}
    14	
    15	static inline void prevent_user_access(void __user *to, const void __user *from,
    16					       unsigned long size)
    17	{
  > 18		if (static_branch_unlikely(&uaccess_flush_key))
    19			do_uaccess_flush();
    20	}
    21	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103120042.hWIWt6hC-lkp%40intel.com.

--fdj2RfSjLxBAspz7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
BxYG4qKR0gEA

--fdj2RfSjLxBAspz7--
