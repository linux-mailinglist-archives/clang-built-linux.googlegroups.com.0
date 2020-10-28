Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNUG4X6AKGQER7SLLLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D58CF29CF6A
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 11:08:55 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id g80sf1600304vkg.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 03:08:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603879734; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDA0qedLThxJTFvH0JL4FWJDsdjvUr3fpb2nkmts6JFx5hpctc8LESZAQEwD4aBAv5
         /DZC+CmzRAGDj9riuu9L3Drpz2Pmk6VmIl6uxp6c+SnW7o+nK1sAOfx7hWZCMYV9Fsfx
         9BUpDhK+LA51+aYv3zcBiAkPlnTX7UbrytuUq2qmJFCZOHkECjgdlEtKje5AQ/D1K/QS
         t+l4y+vIJ2fRKuqDr5/KeWjnGTkbJFr8n8uNHoZ/Ot+JkqtXl3XCEbs14DbCmb++l8VW
         4dAMRh3XjKYKoO9cgl2BuCVpNJpTD2qBKmuFOA/ibQFdVDmJ1cpj/qbT7udv9CzUqUdj
         aerQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=BQpaKiRJXGzzTRCIeVV4/Oc3IVoheH9ApN9GYm32334=;
        b=DW1ZRlziubB2c0rVxLczkx0HNmip6sckT9529SiXWfIZJGdCIRcQo0xYFsLKS+dghg
         q18nGZnVGuboO3qgkXUTIbjyV0J45Qe8I3Dc2lKjebSKWcAKfFwjP41jAbuhstXFc0QB
         xxI6sF6+1/eS95KnuGrqZvvYuy0dUW4jgRXMVJTdp/Sm5uRd2lBbYqqX6dIWtEviQxCl
         NQAOxgi5bu27twX8VNg8FgM5wyxjPovWhqGxNa0D4gUBKsXyvlkNV3dfMnj+9HG06UcP
         PaIkoyqZ8Eacctzgdm8ogX+xdK73biQIhWgPspjBHcV57Dh35ZkxiPZKiipZ32XUIXx2
         Mhbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BQpaKiRJXGzzTRCIeVV4/Oc3IVoheH9ApN9GYm32334=;
        b=S1wdR6zLBrsuNKUk0Up5OE/6NCSrn5mz8ZOWh/RHDWxzUMOKkPvhGGH2P2ysj+QHe0
         c8Jx66tM7QlN17aouD1DT288NFNTMsa3UTPznLqUTFbvfGecm+0wCZfXm41fWbqNDwKC
         42R7qv2Xtv9Q7vuwy/l0SkchPuGBO9llt1U66W0EIBDLbUgs81knGODBr3jiW2cRcjoB
         fFihqyRU+CUnJnAXFG4EOI0z94sKkJEQod0rUzPVQYJl4phLii8os600AI3+OkUOBpSM
         T6vVNKpElUoB5BhbqF+fVexylFKOXMIq+fYW/ScVmPVjOfBfsvezONqzFCOwWJ36ZWmT
         1CMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BQpaKiRJXGzzTRCIeVV4/Oc3IVoheH9ApN9GYm32334=;
        b=TkZe2ZvKiLeqLS3laUIm/jquCRk15Ugt0gKAvR4S1ksU3jnwk2/ezEozV1eflVXrb6
         ER26DwSxxymGUn0HSGisjwF/tKd9DGo+QWg0AvzYaj18f4ToJDSUqxR6VjCLZrppfvT9
         KLhC9nfRArBR2qAIZWnmlDfslIsJJiAiFdPzcepsfMysRSTabJXk/X5yKv6RAq0bUCsq
         0hJeDyGFU/P/f/ZZ9KXv1hv77Axcys7PJNLsQrzNs+sPDdRuhkWeWyswamkmGcT3aeny
         HcfBDdkVOjsd+dgjQklmu28rEhv+bddoRPZC/cmxTOD+GvJOgwfrE7gTdL+hG89KpvJL
         XXUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329i2frhDvhnB8HSUl0O/yj8pPwoSBGFYBGf9B9/bijmJOpLh97
	OsBsVWJFUZrNmITryuR5USM=
X-Google-Smtp-Source: ABdhPJyM2CzVyLEBoXsLx8WNgVmP/cfMB6YUUWegjnRh5DvUS7fzakn74r/1kgCN6c8rphhgEc5QaQ==
X-Received: by 2002:a67:2647:: with SMTP id m68mr4397889vsm.39.1603879734453;
        Wed, 28 Oct 2020 03:08:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:24d7:: with SMTP id k23ls292168uan.5.gmail; Wed, 28 Oct
 2020 03:08:53 -0700 (PDT)
X-Received: by 2002:ab0:48ab:: with SMTP id x40mr3977560uac.68.1603879733835;
        Wed, 28 Oct 2020 03:08:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603879733; cv=none;
        d=google.com; s=arc-20160816;
        b=NHoQjCclXrafBcEUkJI1kfFEI8WeMO2PjxujBrYyTLRxMQXU0WdskucHmUFdHKDQuK
         8ET13T3dI3VI6kN8RGUGwnETz8Dx/2mjQb7+pztbCJA0OUUr9XCWjI4k+3uwC028nLtH
         MU9AKMcA8VVBGETPY3H/GbKbVHoAJ05bVbNB1CbRjor8doaluB0rxx/YATPoWfzZ4FiB
         QYRqvmJgBsH43n0wjRPDHAgx2SSrius9OKFJ5KfjVLJgretCgQDWY4xcdN8xcAmaV8Wf
         glunAGxgKz3sWYbqfEMYbAUYHSMAvWpr4MU2asO8p42hwI920HU1/0FV6ImS/+0+YTIR
         kDXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=c4YU86z/BnUz/29GNRhGMkI1E2ya4X+F3si6qyjVidA=;
        b=lLYn+gFaP6+LWWIRiNyz7w2AvoeQgwHiuKCVVpsLGq8jybkUy4oIekl5W1D9XsYaED
         YU7dchjcrlqolp+y7q6EmACTx/AFNLt+Qrq1s3kttlQLUbxKs6OkuNON6FPPTQW7ZvbM
         O4SBS6oLWHw73VWx/1KzRpf6nVhGYqQHjKYg89HvYbJ3KsHut2dttuxM2Jx5wzdVo/kq
         slvV7tVuKsO71m/1eGmx9xAbE5Rvwz2C/FTMGITzkstDCuy2TlVYHkAaOrmncgwBKULa
         xmk4j73BY0XwnZhpBe+881DVezj6YnHjxIUo3065dOropqGthjflVvWi3c3i4xP8ms8F
         34AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id b16si328790vkn.5.2020.10.28.03.08.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 03:08:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: SDyTR+Tgd6tTp7HGXoTd880r3BAipfTC2JpNQLCpn6iRIvpLYyBy3ioyNM0I7aE0jD8DwbUBre
 rqDGTLGCZyEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="252932583"
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; 
   d="gz'50?scan'50,208,50";a="252932583"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2020 03:08:51 -0700
IronPort-SDR: WBKkgujyh3wCRM3M5di7AzZM/pjQ2wPX0cF3PP6XoWG06pE7YpWdo6CyfCWlLZdLidfyNmc2tN
 lhVxjIco1ClQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; 
   d="gz'50?scan'50,208,50";a="318546062"
Received: from lkp-server02.sh.intel.com (HELO c7f22725f98a) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 28 Oct 2020 03:08:47 -0700
Received: from kbuild by c7f22725f98a with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kXiNq-000064-Ne; Wed, 28 Oct 2020 10:08:46 +0000
Date: Wed, 28 Oct 2020 18:08:16 +0800
From: kernel test robot <lkp@intel.com>
To: Ard Biesheuvel <ardb@kernel.org>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Paul Mackerras <paulus@samba.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] powerpc: avoid broken GCC __attribute__((optimize))
Message-ID: <202010281845.gwfIScGd-lkp@intel.com>
References: <20201028080433.26799-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline
In-Reply-To: <20201028080433.26799-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ard,

I love your patch! Yet something to improve:

[auto build test ERROR on powerpc/next]
[also build test ERROR on linus/master linux/master v5.10-rc1 next-20201028]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ard-Biesheuvel/powerpc-avoid-broken-GCC-__attribute__-optimize/20201028-160558
base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
config: powerpc64-randconfig-r003-20201028 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 50dfa19cc799ae7cddd39a95dbfce675a12672ad)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/5ccccdce42ea4f2316ac2bf79d5311dc77a70e6e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ard-Biesheuvel/powerpc-avoid-broken-GCC-__attribute__-optimize/20201028-160558
        git checkout 5ccccdce42ea4f2316ac2bf79d5311dc77a70e6e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/kernel/paca.c:244:6: error: variable has incomplete type 'void'
   void __nostackprotector setup_paca(struct paca_struct *new_paca)
        ^
>> arch/powerpc/kernel/paca.c:244:24: error: expected ';' after top level declarator
   void __nostackprotector setup_paca(struct paca_struct *new_paca)
                          ^
                          ;
>> arch/powerpc/kernel/paca.c:274:2: error: use of undeclared identifier 'paca_nr_cpu_ids'; did you mean 'nr_cpu_ids'?
           paca_nr_cpu_ids = nr_cpu_ids;
           ^~~~~~~~~~~~~~~
           nr_cpu_ids
   include/linux/cpumask.h:39:21: note: 'nr_cpu_ids' declared here
   extern unsigned int nr_cpu_ids;
                       ^
>> arch/powerpc/kernel/paca.c:274:18: error: explicitly assigning value of variable of type 'unsigned int' to itself [-Werror,-Wself-assign]
           paca_nr_cpu_ids = nr_cpu_ids;
           ~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~
   arch/powerpc/kernel/paca.c:290:16: error: use of undeclared identifier 'paca_nr_cpu_ids'
           BUG_ON(cpu >= paca_nr_cpu_ids);
                         ^
   arch/powerpc/kernel/paca.c:290:16: error: use of undeclared identifier 'paca_nr_cpu_ids'
   arch/powerpc/kernel/paca.c:290:16: error: use of undeclared identifier 'paca_nr_cpu_ids'
   arch/powerpc/kernel/paca.c:328:2: error: use of undeclared identifier 'paca_nr_cpu_ids'; did you mean 'nr_cpu_ids'?
           paca_nr_cpu_ids = nr_cpu_ids;
           ^~~~~~~~~~~~~~~
           nr_cpu_ids
   include/linux/cpumask.h:39:21: note: 'nr_cpu_ids' declared here
   extern unsigned int nr_cpu_ids;
                       ^
   arch/powerpc/kernel/paca.c:328:18: error: explicitly assigning value of variable of type 'unsigned int' to itself [-Werror,-Wself-assign]
           paca_nr_cpu_ids = nr_cpu_ids;
           ~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~
   9 errors generated.
--
>> arch/powerpc/kernel/paca.c:244:6: error: variable has incomplete type 'void'
   void __nostackprotector setup_paca(struct paca_struct *new_paca)
        ^
>> arch/powerpc/kernel/paca.c:244:24: error: expected ';' after top level declarator
   void __nostackprotector setup_paca(struct paca_struct *new_paca)
                          ^
                          ;
>> arch/powerpc/kernel/paca.c:274:2: error: use of undeclared identifier 'paca_nr_cpu_ids'; did you mean 'nr_cpu_ids'?
           paca_nr_cpu_ids = nr_cpu_ids;
           ^~~~~~~~~~~~~~~
           nr_cpu_ids
   include/linux/cpumask.h:39:21: note: 'nr_cpu_ids' declared here
   extern unsigned int nr_cpu_ids;
                       ^
   arch/powerpc/kernel/paca.c:274:18: warning: explicitly assigning value of variable of type 'unsigned int' to itself [-Wself-assign]
           paca_nr_cpu_ids = nr_cpu_ids;
           ~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~
   arch/powerpc/kernel/paca.c:290:16: error: use of undeclared identifier 'paca_nr_cpu_ids'
           BUG_ON(cpu >= paca_nr_cpu_ids);
                         ^
   arch/powerpc/kernel/paca.c:290:16: error: use of undeclared identifier 'paca_nr_cpu_ids'
   arch/powerpc/kernel/paca.c:290:16: error: use of undeclared identifier 'paca_nr_cpu_ids'
   arch/powerpc/kernel/paca.c:328:2: error: use of undeclared identifier 'paca_nr_cpu_ids'; did you mean 'nr_cpu_ids'?
           paca_nr_cpu_ids = nr_cpu_ids;
           ^~~~~~~~~~~~~~~
           nr_cpu_ids
   include/linux/cpumask.h:39:21: note: 'nr_cpu_ids' declared here
   extern unsigned int nr_cpu_ids;
                       ^
   arch/powerpc/kernel/paca.c:328:18: warning: explicitly assigning value of variable of type 'unsigned int' to itself [-Wself-assign]
           paca_nr_cpu_ids = nr_cpu_ids;
           ~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~
   2 warnings and 7 errors generated.

vim +/void +244 arch/powerpc/kernel/paca.c

1426d5a3bd07589 Michael Ellerman       2010-01-28  242  
fc53b4202e61c7e Matt Evans             2010-07-07  243  /* Put the paca pointer into r13 and SPRG_PACA */
7053f80d96967d8 Michael Ellerman       2020-03-20 @244  void __nostackprotector setup_paca(struct paca_struct *new_paca)
fc53b4202e61c7e Matt Evans             2010-07-07  245  {
2dd60d79e020262 Benjamin Herrenschmidt 2011-01-20  246  	/* Setup r13 */
fc53b4202e61c7e Matt Evans             2010-07-07  247  	local_paca = new_paca;
2dd60d79e020262 Benjamin Herrenschmidt 2011-01-20  248  
fc53b4202e61c7e Matt Evans             2010-07-07  249  #ifdef CONFIG_PPC_BOOK3E
2dd60d79e020262 Benjamin Herrenschmidt 2011-01-20  250  	/* On Book3E, initialize the TLB miss exception frames */
fc53b4202e61c7e Matt Evans             2010-07-07  251  	mtspr(SPRN_SPRG_TLB_EXFRAME, local_paca->extlb);
2dd60d79e020262 Benjamin Herrenschmidt 2011-01-20  252  #else
d4a8e98621543d5 Daniel Axtens          2020-03-20  253  	/*
d4a8e98621543d5 Daniel Axtens          2020-03-20  254  	 * In HV mode, we setup both HPACA and PACA to avoid problems
2dd60d79e020262 Benjamin Herrenschmidt 2011-01-20  255  	 * if we do a GET_PACA() before the feature fixups have been
d4a8e98621543d5 Daniel Axtens          2020-03-20  256  	 * applied.
d4a8e98621543d5 Daniel Axtens          2020-03-20  257  	 *
d4a8e98621543d5 Daniel Axtens          2020-03-20  258  	 * Normally you should test against CPU_FTR_HVMODE, but CPU features
d4a8e98621543d5 Daniel Axtens          2020-03-20  259  	 * are not yet set up when we first reach here.
2dd60d79e020262 Benjamin Herrenschmidt 2011-01-20  260  	 */
d4a8e98621543d5 Daniel Axtens          2020-03-20  261  	if (mfmsr() & MSR_HV)
2dd60d79e020262 Benjamin Herrenschmidt 2011-01-20  262  		mtspr(SPRN_SPRG_HPACA, local_paca);
fc53b4202e61c7e Matt Evans             2010-07-07  263  #endif
2dd60d79e020262 Benjamin Herrenschmidt 2011-01-20  264  	mtspr(SPRN_SPRG_PACA, local_paca);
2dd60d79e020262 Benjamin Herrenschmidt 2011-01-20  265  
fc53b4202e61c7e Matt Evans             2010-07-07  266  }
fc53b4202e61c7e Matt Evans             2010-07-07  267  
d2e60075a3d4422 Nicholas Piggin        2018-02-14  268  static int __initdata paca_nr_cpu_ids;
d2e60075a3d4422 Nicholas Piggin        2018-02-14  269  static int __initdata paca_ptrs_size;
59f577743d71bf7 Nicholas Piggin        2018-02-14  270  static int __initdata paca_struct_size;
1426d5a3bd07589 Michael Ellerman       2010-01-28  271  
59f577743d71bf7 Nicholas Piggin        2018-02-14  272  void __init allocate_paca_ptrs(void)
59f577743d71bf7 Nicholas Piggin        2018-02-14  273  {
59f577743d71bf7 Nicholas Piggin        2018-02-14 @274  	paca_nr_cpu_ids = nr_cpu_ids;
59f577743d71bf7 Nicholas Piggin        2018-02-14  275  
59f577743d71bf7 Nicholas Piggin        2018-02-14  276  	paca_ptrs_size = sizeof(struct paca_struct *) * nr_cpu_ids;
1269f7b83f2cf79 Christophe Leroy       2019-03-11  277  	paca_ptrs = memblock_alloc_raw(paca_ptrs_size, SMP_CACHE_BYTES);
1269f7b83f2cf79 Christophe Leroy       2019-03-11  278  	if (!paca_ptrs)
1269f7b83f2cf79 Christophe Leroy       2019-03-11  279  		panic("Failed to allocate %d bytes for paca pointers\n",
1269f7b83f2cf79 Christophe Leroy       2019-03-11  280  		      paca_ptrs_size);
1269f7b83f2cf79 Christophe Leroy       2019-03-11  281  
59f577743d71bf7 Nicholas Piggin        2018-02-14  282  	memset(paca_ptrs, 0x88, paca_ptrs_size);
59f577743d71bf7 Nicholas Piggin        2018-02-14  283  }
1426d5a3bd07589 Michael Ellerman       2010-01-28  284  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010281845.gwfIScGd-lkp%40intel.com.

--WIyZ46R2i8wDzkSu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--WIyZ46R2i8wDzkSu--
