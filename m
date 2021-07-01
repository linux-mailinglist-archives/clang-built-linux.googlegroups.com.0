Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNHR6SDAMGQEIDYLNQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F623B8CAD
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 05:38:30 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id c2-20020a0566023342b02904f81edccbe3sf3387899ioz.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 20:38:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625110709; cv=pass;
        d=google.com; s=arc-20160816;
        b=qAEqe5/PueYRHqDIMHZuzHccPXPBUbjP2yKno92p2rcO4n4/4Ak4GjI7jv2ZT9628Y
         pNr0wVW+MGyW7Ved5CTL2u1oJlKx2mFaiOsMdFv81YOdsaMGbCGwOnj1PpYvT97irt+m
         Op28fIMInkbMw8ArK7FNfeUssTR574ZcOMZw37jMV6QWHGPwVpLnt+foWq841cXjr+ro
         G4uRe5YbQCpllzB8yswY4pE4IB2yaBfE9yEEn3NxwmrQvHHiSyFH8UQ62qiZUXS65b+9
         5o7+a2+Vj0IOzzSb/YaXcifMYM7lLtl0o2NShlLRkDFChwq0p829sOciNpOTIq5lKSU6
         RdjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4GcpIe1dAgDW19ApDu64tN/Br6Rac0USm4xk6sTB478=;
        b=t06RoKTabS2AZzWHpz2wqGuw0pKUm76gtlNq8G+qcyPkB+wF3I4K7w6eGpzwECeYTw
         8H8LUD9kaKEFtI2BsHH8BdM6CTp0Y2s+1fxCpnsoZL49u4GO3KHUo0BILTUZ0keRZMJl
         iyuEULDzNb6wYL7iPvpVyT5HbrowUhcYM1kN9J0Wh8qdF+7KinSRsbhLEJPeTc4ZtGe1
         KXsmJKl5B/28pRBxiyoXiYyITYU5v33UyKKgqXbJSURDYmmzov+KXfrQDl8gXFfiGQNU
         w0+8ml/TnPSk2XS70FPTNypRbf8r/kn6d2O/+ax8NftBDtDEJHd3JiSX2UHn3RGAVotM
         QZPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4GcpIe1dAgDW19ApDu64tN/Br6Rac0USm4xk6sTB478=;
        b=porM50bdncRnjNXvBqb4YYe582RvrGn11irZmGm31jiSEFgV4qDQTimranWrzp+Nc9
         Zg+61++hLh2s/JHz2ba/ruSpQ0TgTnQhToTUgyHrOLRvGbPHCcRWGvgm9XeaQanVzl3Z
         Lace3qe3gPK9L1uaTkdjM13cXE7Yhix3D3gfciNSENSrI86dZDKtB1qRlTf53gyQjwlg
         F25Q6eMwwlB/8x3HBRUcfneKE3cc871Zv0IVydcD1OW/iNX/mfdDBffetVX4Tzo+yoYm
         qibOUY77T0an2mxVW17/YSTEy8OEJZamgHhjHegRm9IYO/Es5sF7mjOYaZsog3LCRe2Z
         2zDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4GcpIe1dAgDW19ApDu64tN/Br6Rac0USm4xk6sTB478=;
        b=RTP/peCaWHqH5nrRhNxw+KYQnd5cPwpeqaJ4ehdmZyeRMqDxHJcOAWdS8Oar9nCOee
         nvfeACwzsetrgN8hFFDugtOJGG4mdS13H/uFEYYpIvKeUSPs4DG8X9CqnGs18Femn8vF
         KyjReJpf004EEIK5iBarVQ2t1+S+Hf2Atndc18nBspsj6L6gvLN10b4cmELG766q1Hla
         1d56I/vwounh+y9Mxobi6znLrfXSIBDuIiACMss9IzEo8mR/CR0HW0tu5w9+gOuqtaiH
         fLRyRtk5RCCmNRdM2EEa0TaK5X/+c304yD5/zlsAJOfdnZF+2cSyMpAUXfvkbkEyxSHv
         S8Qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NqZTZDxOJqMz4+FUkQHsxIZjX2i4vtKAEK6zO7u/RQvBLbTMN
	6SuooDEjCOm99nnO1kSF8zA=
X-Google-Smtp-Source: ABdhPJzO3PlKaimjDCOuCs8JPpjHbw4wiDUpL96VwzkmS7HPSZWG5kO10rdjFoE0yPcilZawk48FEw==
X-Received: by 2002:a5d:80c8:: with SMTP id h8mr10314076ior.120.1625110709025;
        Wed, 30 Jun 2021 20:38:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:33a6:: with SMTP id h38ls698605jav.11.gmail; Wed,
 30 Jun 2021 20:38:28 -0700 (PDT)
X-Received: by 2002:a02:cc52:: with SMTP id i18mr11851038jaq.47.1625110708578;
        Wed, 30 Jun 2021 20:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625110708; cv=none;
        d=google.com; s=arc-20160816;
        b=eE7eWJv9xFhX0BgfKM++bk32kasriZmeJX5E8tDLOQlwLFayrZsEEOTNjLr5MhQ6cx
         xUXAGzyu1Z5sWmLQQYVhOGMqqG09Dy3nimwSPGfbGASTQBir0WAfD8E3Nctj54+bVhQl
         wg+mGtVeOMZR4VrVWltKsbUXzqTREw1qYvh1YVDpbFYsprHLUjtmtwZ2JO8iGlMjkW0T
         UfRpPhO1eU4TiCZJWazF5Iw5ZPXH/O7cXyR6kJCfH5/6eHzYM1wOM58W0SJAtw0wbh3S
         XdKwVVr1CFh8XHpKq4xOO/6D9dK39B4sCnBd7/goujNa2UXSUY0Hhn0DVhTE2AGYa0h8
         J5FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=1Zea+b1FqMNLp9xFVf3/scsNVVfNSd4anpKCfIVnFq0=;
        b=YW9ZuN7QTSO9u6SBXYV6MxFVjKsI9j69uP55dYv+m7AeqrvzdfR0ZWYCj0ZKOyG88i
         7zNfCj0dvyK9hRJM3+rz28D5JJ22b2OJLYJJnPOSCRe84vpLLx1uiiE19h9YCZjJ+dXU
         f9aJYHro6lRCsFJAQVaaEyEmMzWfnmIl6mTTtKqXdXZ17rz+zVy++PMp+50gcLh+PsMk
         70cmR6JufNi2Ff/VoMxhBZiKYpZrhyaxJlKaPA8cEQjQ8fW2ElfVNO/loh0RLN0zSRCv
         8We2hlct6xmndU+d1m0D8yVhEcMj8Teg+0J776SBX4RW6pCUkPFPWCDG+uQVmV8YrB/J
         JJEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id b16si686996iow.0.2021.06.30.20.38.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 20:38:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="269597185"
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; 
   d="gz'50?scan'50,208,50";a="269597185"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2021 20:38:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; 
   d="gz'50?scan'50,208,50";a="457491242"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 30 Jun 2021 20:38:18 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lynWs-000AGe-3W; Thu, 01 Jul 2021 03:38:18 +0000
Date: Thu, 1 Jul 2021 11:37:24 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Lutomirski <luto@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: [luto:sched/lazymm 4/14] kernel/kthread.c:1328:47: error: no member
 named 'membarrier_state' in 'struct mm_struct'
Message-ID: <202107011120.togK2R37-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline
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


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git sched/lazymm
head:   717e171609e72e2f3362c56eab7732cb2e08d2f7
commit: 23acc5c0beb85dd411c8588ca927ceb24a0ec22e [4/14] membarrier: Make the post-switch-mm barrier explicit
config: riscv-randconfig-r013-20210630 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e7e71e9454ed76c1b3d8140170b5333c28bef1be)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git/commit/?id=23acc5c0beb85dd411c8588ca927ceb24a0ec22e
        git remote add luto https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git
        git fetch --no-tags luto sched/lazymm
        git checkout 23acc5c0beb85dd411c8588ca927ceb24a0ec22e
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=riscv SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/kthread.c:1328:47: error: no member named 'membarrier_state' in 'struct mm_struct'
           membarrier_finish_switch_mm(atomic_read(&mm->membarrier_state));
                                                    ~~  ^
   1 error generated.
--
   kernel/sched/core.c:2850:6: warning: no previous prototype for function 'sched_set_stop_task' [-Wmissing-prototypes]
   void sched_set_stop_task(int cpu, struct task_struct *stop)
        ^
   kernel/sched/core.c:2850:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sched_set_stop_task(int cpu, struct task_struct *stop)
   ^
   static 
>> kernel/sched/core.c:4316:35: error: no member named 'membarrier_state' in 'struct rq'
                   membarrier_finish_switch_mm(rq->membarrier_state);
                                               ~~  ^
   1 warning and 1 error generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for LOCKDEP
   Depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && (FRAME_POINTER || MIPS || PPC || S390 || MICROBLAZE || ARM || ARC || X86)
   Selected by
   - DEBUG_LOCK_ALLOC && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT


vim +1328 kernel/kthread.c

  1304	
  1305	/**
  1306	 * kthread_use_mm - make the calling kthread operate on an address space
  1307	 * @mm: address space to operate on
  1308	 */
  1309	void kthread_use_mm(struct mm_struct *mm)
  1310	{
  1311		struct mm_struct *active_mm;
  1312		struct task_struct *tsk = current;
  1313	
  1314		WARN_ON_ONCE(!(tsk->flags & PF_KTHREAD));
  1315		WARN_ON_ONCE(tsk->mm);
  1316	
  1317		task_lock(tsk);
  1318		/* Hold off tlb flush IPIs while switching mm's */
  1319		local_irq_disable();
  1320		active_mm = tsk->active_mm;
  1321		if (active_mm != mm) {
  1322			mmgrab(mm);
  1323			tsk->active_mm = mm;
  1324		}
  1325		tsk->mm = mm;
  1326		membarrier_update_current_mm(mm);
  1327		switch_mm_irqs_off(active_mm, mm, tsk);
> 1328		membarrier_finish_switch_mm(atomic_read(&mm->membarrier_state));
  1329		local_irq_enable();
  1330		task_unlock(tsk);
  1331	#ifdef finish_arch_post_lock_switch
  1332		finish_arch_post_lock_switch();
  1333	#endif
  1334	
  1335		if (active_mm != mm)
  1336			mmdrop(active_mm);
  1337	
  1338		to_kthread(tsk)->oldfs = force_uaccess_begin();
  1339	}
  1340	EXPORT_SYMBOL_GPL(kthread_use_mm);
  1341	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107011120.togK2R37-lkp%40intel.com.

--pWyiEgJYm5f9v55/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
L/WJ38mYawEA

--pWyiEgJYm5f9v55/--
