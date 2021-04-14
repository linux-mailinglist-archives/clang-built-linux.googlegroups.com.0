Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPHB3WBQMGQEEWJYZHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C11935FDFD
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 00:46:21 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id f17-20020a05621400d1b029019a6fc802f7sf572188qvs.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 15:46:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618440380; cv=pass;
        d=google.com; s=arc-20160816;
        b=PGOvL2KV/JNVZKSJFs+PYmoTiqovl/hQBYlhtqBa9YeRWNUIWlhJl0xzfYgGdic2K+
         I9AWOVsbg9/81u4b2mHDHtM9tJ4Xo/FZ8Z9P7O+7Ihyt3fwDo46tJtalwhLwJ2gtyu7G
         olTY8RLi3zHbVAlT3l+s+XbeqY8Nd/al3fvcn4gM1J6DlaIPE4vN9rl8zQLtgH0NiART
         m6WD9JyxcMkKTudnqt5Tyyx8GoUw6P5j6TvbrylTvxOaWoCdJwAKu+tp5P7P1A+mtmry
         YRdiTKgnSl9U3vRciry4dP1qVijS2/JXCNZUfZ0XdkpU8E7b5pJ2n5qiTQVRnhIDGTHG
         sYlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/nCJM+jCcGx5YMY33cLSCRIwndsfL14T7zN7Thtv/xU=;
        b=thOnVTlqgzkOrHKpy9kiO6KCoFI3SlKdUWSJM3koTrSK/sgdCjg8Rmj5nRXGxM3BQ5
         pWpy5HhfS2q/+3J8qAL+yIHi/cSnUIpc75uOqoA86+/gHcSsxA63YDDoIu3i6B8unOvN
         a8pEC9SySDmjR+Zm5dEPTmrSJMIenDTmeu7JK6xzmui6TeCJxVq8DDpLTpR832jpjVLA
         reVIAP+RvNTI15WHHtqgd7ZuuujbuFzbs6l8fsYYr9z2rPx32rJo8ti26mTUko3azrDs
         Ag51CfXOjj/ZUBgDTwwUS5D/pNbQNRWMn3ZA5YJYiBdFMTQYqpahfHK53bTerfcLJu6E
         Ywgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/nCJM+jCcGx5YMY33cLSCRIwndsfL14T7zN7Thtv/xU=;
        b=MwXKtniOqMTzlA6n9whyLQOVJqjWGxKbqoCKweCt+naWhsNtyFzvGJv8x/4pjMejN3
         ZoKYjwK9bZPVpZJGP7A6D0ltOYmMGwrKmcAS0KKPZQaw5rRGzs7eQSet1J41ywBwfz4e
         2PALEL4STgSCmvDQ3WUuUd6l7yg7BJVMzs1ksjM4uW3xlzHMUfXKV3sDTYB7sfW0NKZC
         fuaXEbNVtltxcR4PhBJ1ty0OhxMhninKiraAoHecDE/nlxYxIp2lesIxZqphXJFE+dhG
         4gSLkicESZuUDdv+Im77t9Ayp+JIe5MEfnQD8Myy7TEu7wnsTlNT6X6sQ0HmDGNRqucH
         IOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/nCJM+jCcGx5YMY33cLSCRIwndsfL14T7zN7Thtv/xU=;
        b=jTTNS2tfHPzgif8f3a0J13/VcUubLl5bxwmoYkiLU6m2xmVB4rHgspHNbVtre5oquc
         MqIu5C0/qipS/w8Le1OmyUnAZVNyCgX69sJWaXIC9jr+u1mAjLz8pX3eoogkm0VhX2Ht
         37AkxHdj19gL8HPqnoI9GNTdkexecjQiEw1M5Vic1OKB7wR4qhmdgH4nzsd0lMO5V+s8
         hxvhEgHwosFANfbetWvJdF/2pDr37ln/F7EyleTsWnflSyf9PoidDKIFs4eMQ3JMQrIb
         xW3sTJf6kQTaZ0Ok18TB5JLycD8/xTE0brASRPexg0j+eqQBpyk5TjJk+tcPEsUAtMlb
         Ytaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rdE9BB+1R7YjStM7iT0KmkbcMc0h1Sz0pWldK+oioUWyyUwCp
	UYFbFwI/qc9ysGPPfvm3bSg=
X-Google-Smtp-Source: ABdhPJzJCtuKb5doKoSEw8p3uApqB6hxnQA7HI+435s298wKbYvPuh40MfqhjM6uD/3ZeYsB74otfg==
X-Received: by 2002:a37:4091:: with SMTP id n139mr717126qka.360.1618440380278;
        Wed, 14 Apr 2021 15:46:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4d8d:: with SMTP id a13ls1446226qtw.5.gmail; Wed, 14 Apr
 2021 15:46:19 -0700 (PDT)
X-Received: by 2002:ac8:479a:: with SMTP id k26mr422760qtq.188.1618440379644;
        Wed, 14 Apr 2021 15:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618440379; cv=none;
        d=google.com; s=arc-20160816;
        b=uBdJhFF2GhwHDlx6vsKj9j4SLwh+2WEzrzvND6Ozcu2zAARJ07IF53+u8fjQT3YtDo
         8GLEaFLcVo3aYQTGV6udqovTTXE8q5cai7N+/PHj9rF3jBnJHgltvuS06rhIG6hZtUmh
         /FGglHJZ9z9IOzfbbvN03Qz4kfCXjL9x0dGvcBz4wu482zuDLuIcgyo2kLD9PfmqNqVk
         iZyAXErFpMFckWhh5GI5KpoRwXUu6nAI/SQzrQoa92EwAabCzOBXg3DU6ozrjDlK+G/t
         Z/NpFkf+2omg+17wDe/w68CL+Bai9vC25HfxrmyToUO6slH8EytT8NpZEpq9p99Z/Fr/
         qKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=bolJodrmSHzbgVBozS0k8BTLNux/HgRjFUwrGqa+We4=;
        b=wUZ1VI1MpDk7KVwqYQqOil4DmMGP0AbY4einVL3aDhQshWIZYO9i1cRJH6Ng76TYaF
         tbPHUn2V+5mayphVwudPWz/18eE3ixY7Xaplwj4nsdLLiYvF2AyifLPvhpYZun49bR38
         lBiEMxB3nMbzBHoe58eXqBr8XAiFK2oFvqeCoUr3Rsprh4tyAA06W5+/twSlNjIgFFs7
         Ngspdc0xU6weVnfaNWrRvQtKVYfqCxWKPBLHiZP8jPwvZ6nF5HbuXjEjWH/q85rW7/qC
         6shuyB3yoLfFaLt5reQJAbPTX/8LyIeylzjPwHyuGqO/+8p+IMDkUk7m2EaQ6T7H01in
         +jkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id t7si55868qkp.7.2021.04.14.15.46.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 15:46:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: aRHmPUHQInxDP3KQEtdfwE8JlXeZOIMAL1E1+iWecvsrI2E37qnaQJ8UD5BRH/NUcjwCXJmEZH
 vzy/4kTqJfLw==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="182253665"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="gz'50?scan'50,208,50";a="182253665"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 15:46:17 -0700
IronPort-SDR: zpFftq4sTjz+7nyaCW1iMg2UfUdwiJamZ1GaMXS7FBMqpw012RViBBYcWSNfwdSIXDbvVybLiJ
 Z0x0kWPPl8Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="gz'50?scan'50,208,50";a="522155820"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 14 Apr 2021 15:46:14 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lWoGz-0000QI-PX; Wed, 14 Apr 2021 22:46:13 +0000
Date: Thu, 15 Apr 2021 06:45:58 +0800
From: kernel test robot <lkp@intel.com>
To: Brendan Jackman <jackmanb@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Alexei Starovoitov <ast@kernel.org>
Subject: [linux-next:master 652/12695] kernel/bpf/verifier.c:11541:12:
 warning: stack frame size of 2160 bytes in function 'do_misc_fixups'
Message-ID: <202104150651.iOEJillu-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
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


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   1c8ce959b41a18b9657eaafd7a1215a8da67d3ab
commit: e6ac593372aadacc14e02b198e4a1acfef1db595 [652/12695] bpf: Rename fixup_bpf_calls and add some comments
config: powerpc64-randconfig-r034-20210414 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=e6ac593372aadacc14e02b198e4a1acfef1db595
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout e6ac593372aadacc14e02b198e4a1acfef1db595
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:9:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:206:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:9:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:208:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:9:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:210:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:9:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:212:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/bpf/verifier.c:12:
   In file included from include/linux/bpf_verifier.h:9:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:214:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/bpf/verifier.c:11541:12: warning: stack frame size of 2160 bytes in function 'do_misc_fixups' [-Wframe-larger-than=]
   static int do_misc_fixups(struct bpf_verifier_env *env)
              ^
   kernel/bpf/verifier.c:9848:12: warning: stack frame size of 5328 bytes in function 'do_check' [-Wframe-larger-than=]
   static int do_check(struct bpf_verifier_env *env)
              ^
   14 warnings generated.


vim +/do_misc_fixups +11541 kernel/bpf/verifier.c

 11537	
 11538	/* Do various post-verification rewrites in a single program pass.
 11539	 * These rewrites simplify JIT and interpreter implementations.
 11540	 */
 11541	static int do_misc_fixups(struct bpf_verifier_env *env)
 11542	{
 11543		struct bpf_prog *prog = env->prog;
 11544		bool expect_blinding = bpf_jit_blinding_enabled(prog);
 11545		struct bpf_insn *insn = prog->insnsi;
 11546		const struct bpf_func_proto *fn;
 11547		const int insn_cnt = prog->len;
 11548		const struct bpf_map_ops *ops;
 11549		struct bpf_insn_aux_data *aux;
 11550		struct bpf_insn insn_buf[16];
 11551		struct bpf_prog *new_prog;
 11552		struct bpf_map *map_ptr;
 11553		int i, ret, cnt, delta = 0;
 11554	
 11555		for (i = 0; i < insn_cnt; i++, insn++) {
 11556			/* Make divide-by-zero exceptions impossible. */
 11557			if (insn->code == (BPF_ALU64 | BPF_MOD | BPF_X) ||
 11558			    insn->code == (BPF_ALU64 | BPF_DIV | BPF_X) ||
 11559			    insn->code == (BPF_ALU | BPF_MOD | BPF_X) ||
 11560			    insn->code == (BPF_ALU | BPF_DIV | BPF_X)) {
 11561				bool is64 = BPF_CLASS(insn->code) == BPF_ALU64;
 11562				bool isdiv = BPF_OP(insn->code) == BPF_DIV;
 11563				struct bpf_insn *patchlet;
 11564				struct bpf_insn chk_and_div[] = {
 11565					/* [R,W]x div 0 -> 0 */
 11566					BPF_RAW_INSN((is64 ? BPF_JMP : BPF_JMP32) |
 11567						     BPF_JNE | BPF_K, insn->src_reg,
 11568						     0, 2, 0),
 11569					BPF_ALU32_REG(BPF_XOR, insn->dst_reg, insn->dst_reg),
 11570					BPF_JMP_IMM(BPF_JA, 0, 0, 1),
 11571					*insn,
 11572				};
 11573				struct bpf_insn chk_and_mod[] = {
 11574					/* [R,W]x mod 0 -> [R,W]x */
 11575					BPF_RAW_INSN((is64 ? BPF_JMP : BPF_JMP32) |
 11576						     BPF_JEQ | BPF_K, insn->src_reg,
 11577						     0, 1 + (is64 ? 0 : 1), 0),
 11578					*insn,
 11579					BPF_JMP_IMM(BPF_JA, 0, 0, 1),
 11580					BPF_MOV32_REG(insn->dst_reg, insn->dst_reg),
 11581				};
 11582	
 11583				patchlet = isdiv ? chk_and_div : chk_and_mod;
 11584				cnt = isdiv ? ARRAY_SIZE(chk_and_div) :
 11585					      ARRAY_SIZE(chk_and_mod) - (is64 ? 2 : 0);
 11586	
 11587				new_prog = bpf_patch_insn_data(env, i + delta, patchlet, cnt);
 11588				if (!new_prog)
 11589					return -ENOMEM;
 11590	
 11591				delta    += cnt - 1;
 11592				env->prog = prog = new_prog;
 11593				insn      = new_prog->insnsi + i + delta;
 11594				continue;
 11595			}
 11596	
 11597			/* Implement LD_ABS and LD_IND with a rewrite, if supported by the program type. */
 11598			if (BPF_CLASS(insn->code) == BPF_LD &&
 11599			    (BPF_MODE(insn->code) == BPF_ABS ||
 11600			     BPF_MODE(insn->code) == BPF_IND)) {
 11601				cnt = env->ops->gen_ld_abs(insn, insn_buf);
 11602				if (cnt == 0 || cnt >= ARRAY_SIZE(insn_buf)) {
 11603					verbose(env, "bpf verifier is misconfigured\n");
 11604					return -EINVAL;
 11605				}
 11606	
 11607				new_prog = bpf_patch_insn_data(env, i + delta, insn_buf, cnt);
 11608				if (!new_prog)
 11609					return -ENOMEM;
 11610	
 11611				delta    += cnt - 1;
 11612				env->prog = prog = new_prog;
 11613				insn      = new_prog->insnsi + i + delta;
 11614				continue;
 11615			}
 11616	
 11617			/* Rewrite pointer arithmetic to mitigate speculation attacks. */
 11618			if (insn->code == (BPF_ALU64 | BPF_ADD | BPF_X) ||
 11619			    insn->code == (BPF_ALU64 | BPF_SUB | BPF_X)) {
 11620				const u8 code_add = BPF_ALU64 | BPF_ADD | BPF_X;
 11621				const u8 code_sub = BPF_ALU64 | BPF_SUB | BPF_X;
 11622				struct bpf_insn insn_buf[16];
 11623				struct bpf_insn *patch = &insn_buf[0];
 11624				bool issrc, isneg;
 11625				u32 off_reg;
 11626	
 11627				aux = &env->insn_aux_data[i + delta];
 11628				if (!aux->alu_state ||
 11629				    aux->alu_state == BPF_ALU_NON_POINTER)
 11630					continue;
 11631	
 11632				isneg = aux->alu_state & BPF_ALU_NEG_VALUE;
 11633				issrc = (aux->alu_state & BPF_ALU_SANITIZE) ==
 11634					BPF_ALU_SANITIZE_SRC;
 11635	
 11636				off_reg = issrc ? insn->src_reg : insn->dst_reg;
 11637				if (isneg)
 11638					*patch++ = BPF_ALU64_IMM(BPF_MUL, off_reg, -1);
 11639				*patch++ = BPF_MOV32_IMM(BPF_REG_AX, aux->alu_limit - 1);
 11640				*patch++ = BPF_ALU64_REG(BPF_SUB, BPF_REG_AX, off_reg);
 11641				*patch++ = BPF_ALU64_REG(BPF_OR, BPF_REG_AX, off_reg);
 11642				*patch++ = BPF_ALU64_IMM(BPF_NEG, BPF_REG_AX, 0);
 11643				*patch++ = BPF_ALU64_IMM(BPF_ARSH, BPF_REG_AX, 63);
 11644				if (issrc) {
 11645					*patch++ = BPF_ALU64_REG(BPF_AND, BPF_REG_AX,
 11646								 off_reg);
 11647					insn->src_reg = BPF_REG_AX;
 11648				} else {
 11649					*patch++ = BPF_ALU64_REG(BPF_AND, off_reg,
 11650								 BPF_REG_AX);
 11651				}
 11652				if (isneg)
 11653					insn->code = insn->code == code_add ?
 11654						     code_sub : code_add;
 11655				*patch++ = *insn;
 11656				if (issrc && isneg)
 11657					*patch++ = BPF_ALU64_IMM(BPF_MUL, off_reg, -1);
 11658				cnt = patch - insn_buf;
 11659	
 11660				new_prog = bpf_patch_insn_data(env, i + delta, insn_buf, cnt);
 11661				if (!new_prog)
 11662					return -ENOMEM;
 11663	
 11664				delta    += cnt - 1;
 11665				env->prog = prog = new_prog;
 11666				insn      = new_prog->insnsi + i + delta;
 11667				continue;
 11668			}
 11669	
 11670			if (insn->code != (BPF_JMP | BPF_CALL))
 11671				continue;
 11672			if (insn->src_reg == BPF_PSEUDO_CALL)
 11673				continue;
 11674	
 11675			if (insn->imm == BPF_FUNC_get_route_realm)
 11676				prog->dst_needed = 1;
 11677			if (insn->imm == BPF_FUNC_get_prandom_u32)
 11678				bpf_user_rnd_init_once();
 11679			if (insn->imm == BPF_FUNC_override_return)
 11680				prog->kprobe_override = 1;
 11681			if (insn->imm == BPF_FUNC_tail_call) {
 11682				/* If we tail call into other programs, we
 11683				 * cannot make any assumptions since they can
 11684				 * be replaced dynamically during runtime in
 11685				 * the program array.
 11686				 */
 11687				prog->cb_access = 1;
 11688				if (!allow_tail_call_in_subprogs(env))
 11689					prog->aux->stack_depth = MAX_BPF_STACK;
 11690				prog->aux->max_pkt_offset = MAX_PACKET_OFF;
 11691	
 11692				/* mark bpf_tail_call as different opcode to avoid
 11693				 * conditional branch in the interpeter for every normal
 11694				 * call and to prevent accidental JITing by JIT compiler
 11695				 * that doesn't support bpf_tail_call yet
 11696				 */
 11697				insn->imm = 0;
 11698				insn->code = BPF_JMP | BPF_TAIL_CALL;
 11699	
 11700				aux = &env->insn_aux_data[i + delta];
 11701				if (env->bpf_capable && !expect_blinding &&
 11702				    prog->jit_requested &&
 11703				    !bpf_map_key_poisoned(aux) &&
 11704				    !bpf_map_ptr_poisoned(aux) &&
 11705				    !bpf_map_ptr_unpriv(aux)) {
 11706					struct bpf_jit_poke_descriptor desc = {
 11707						.reason = BPF_POKE_REASON_TAIL_CALL,
 11708						.tail_call.map = BPF_MAP_PTR(aux->map_ptr_state),
 11709						.tail_call.key = bpf_map_key_immediate(aux),
 11710						.insn_idx = i + delta,
 11711					};
 11712	
 11713					ret = bpf_jit_add_poke_descriptor(prog, &desc);
 11714					if (ret < 0) {
 11715						verbose(env, "adding tail call poke descriptor failed\n");
 11716						return ret;
 11717					}
 11718	
 11719					insn->imm = ret + 1;
 11720					continue;
 11721				}
 11722	
 11723				if (!bpf_map_ptr_unpriv(aux))
 11724					continue;
 11725	
 11726				/* instead of changing every JIT dealing with tail_call
 11727				 * emit two extra insns:
 11728				 * if (index >= max_entries) goto out;
 11729				 * index &= array->index_mask;
 11730				 * to avoid out-of-bounds cpu speculation
 11731				 */
 11732				if (bpf_map_ptr_poisoned(aux)) {
 11733					verbose(env, "tail_call abusing map_ptr\n");
 11734					return -EINVAL;
 11735				}
 11736	
 11737				map_ptr = BPF_MAP_PTR(aux->map_ptr_state);
 11738				insn_buf[0] = BPF_JMP_IMM(BPF_JGE, BPF_REG_3,
 11739							  map_ptr->max_entries, 2);
 11740				insn_buf[1] = BPF_ALU32_IMM(BPF_AND, BPF_REG_3,
 11741							    container_of(map_ptr,
 11742									 struct bpf_array,
 11743									 map)->index_mask);
 11744				insn_buf[2] = *insn;
 11745				cnt = 3;
 11746				new_prog = bpf_patch_insn_data(env, i + delta, insn_buf, cnt);
 11747				if (!new_prog)
 11748					return -ENOMEM;
 11749	
 11750				delta    += cnt - 1;
 11751				env->prog = prog = new_prog;
 11752				insn      = new_prog->insnsi + i + delta;
 11753				continue;
 11754			}
 11755	
 11756			/* BPF_EMIT_CALL() assumptions in some of the map_gen_lookup
 11757			 * and other inlining handlers are currently limited to 64 bit
 11758			 * only.
 11759			 */
 11760			if (prog->jit_requested && BITS_PER_LONG == 64 &&
 11761			    (insn->imm == BPF_FUNC_map_lookup_elem ||
 11762			     insn->imm == BPF_FUNC_map_update_elem ||
 11763			     insn->imm == BPF_FUNC_map_delete_elem ||
 11764			     insn->imm == BPF_FUNC_map_push_elem   ||
 11765			     insn->imm == BPF_FUNC_map_pop_elem    ||
 11766			     insn->imm == BPF_FUNC_map_peek_elem)) {
 11767				aux = &env->insn_aux_data[i + delta];
 11768				if (bpf_map_ptr_poisoned(aux))
 11769					goto patch_call_imm;
 11770	
 11771				map_ptr = BPF_MAP_PTR(aux->map_ptr_state);
 11772				ops = map_ptr->ops;
 11773				if (insn->imm == BPF_FUNC_map_lookup_elem &&
 11774				    ops->map_gen_lookup) {
 11775					cnt = ops->map_gen_lookup(map_ptr, insn_buf);
 11776					if (cnt == -EOPNOTSUPP)
 11777						goto patch_map_ops_generic;
 11778					if (cnt <= 0 || cnt >= ARRAY_SIZE(insn_buf)) {
 11779						verbose(env, "bpf verifier is misconfigured\n");
 11780						return -EINVAL;
 11781					}
 11782	
 11783					new_prog = bpf_patch_insn_data(env, i + delta,
 11784								       insn_buf, cnt);
 11785					if (!new_prog)
 11786						return -ENOMEM;
 11787	
 11788					delta    += cnt - 1;
 11789					env->prog = prog = new_prog;
 11790					insn      = new_prog->insnsi + i + delta;
 11791					continue;
 11792				}
 11793	
 11794				BUILD_BUG_ON(!__same_type(ops->map_lookup_elem,
 11795					     (void *(*)(struct bpf_map *map, void *key))NULL));
 11796				BUILD_BUG_ON(!__same_type(ops->map_delete_elem,
 11797					     (int (*)(struct bpf_map *map, void *key))NULL));
 11798				BUILD_BUG_ON(!__same_type(ops->map_update_elem,
 11799					     (int (*)(struct bpf_map *map, void *key, void *value,
 11800						      u64 flags))NULL));
 11801				BUILD_BUG_ON(!__same_type(ops->map_push_elem,
 11802					     (int (*)(struct bpf_map *map, void *value,
 11803						      u64 flags))NULL));
 11804				BUILD_BUG_ON(!__same_type(ops->map_pop_elem,
 11805					     (int (*)(struct bpf_map *map, void *value))NULL));
 11806				BUILD_BUG_ON(!__same_type(ops->map_peek_elem,
 11807					     (int (*)(struct bpf_map *map, void *value))NULL));
 11808	patch_map_ops_generic:
 11809				switch (insn->imm) {
 11810				case BPF_FUNC_map_lookup_elem:
 11811					insn->imm = BPF_CAST_CALL(ops->map_lookup_elem) -
 11812						    __bpf_call_base;
 11813					continue;
 11814				case BPF_FUNC_map_update_elem:
 11815					insn->imm = BPF_CAST_CALL(ops->map_update_elem) -
 11816						    __bpf_call_base;
 11817					continue;
 11818				case BPF_FUNC_map_delete_elem:
 11819					insn->imm = BPF_CAST_CALL(ops->map_delete_elem) -
 11820						    __bpf_call_base;
 11821					continue;
 11822				case BPF_FUNC_map_push_elem:
 11823					insn->imm = BPF_CAST_CALL(ops->map_push_elem) -
 11824						    __bpf_call_base;
 11825					continue;
 11826				case BPF_FUNC_map_pop_elem:
 11827					insn->imm = BPF_CAST_CALL(ops->map_pop_elem) -
 11828						    __bpf_call_base;
 11829					continue;
 11830				case BPF_FUNC_map_peek_elem:
 11831					insn->imm = BPF_CAST_CALL(ops->map_peek_elem) -
 11832						    __bpf_call_base;
 11833					continue;
 11834				}
 11835	
 11836				goto patch_call_imm;
 11837			}
 11838	
 11839			/* Implement bpf_jiffies64 inline. */
 11840			if (prog->jit_requested && BITS_PER_LONG == 64 &&
 11841			    insn->imm == BPF_FUNC_jiffies64) {
 11842				struct bpf_insn ld_jiffies_addr[2] = {
 11843					BPF_LD_IMM64(BPF_REG_0,
 11844						     (unsigned long)&jiffies),
 11845				};
 11846	
 11847				insn_buf[0] = ld_jiffies_addr[0];
 11848				insn_buf[1] = ld_jiffies_addr[1];
 11849				insn_buf[2] = BPF_LDX_MEM(BPF_DW, BPF_REG_0,
 11850							  BPF_REG_0, 0);
 11851				cnt = 3;
 11852	
 11853				new_prog = bpf_patch_insn_data(env, i + delta, insn_buf,
 11854							       cnt);
 11855				if (!new_prog)
 11856					return -ENOMEM;
 11857	
 11858				delta    += cnt - 1;
 11859				env->prog = prog = new_prog;
 11860				insn      = new_prog->insnsi + i + delta;
 11861				continue;
 11862			}
 11863	
 11864	patch_call_imm:
 11865			fn = env->ops->get_func_proto(insn->imm, env->prog);
 11866			/* all functions that have prototype and verifier allowed
 11867			 * programs to call them, must be real in-kernel functions
 11868			 */
 11869			if (!fn->func) {
 11870				verbose(env,
 11871					"kernel subsystem misconfigured func %s#%d\n",
 11872					func_id_name(insn->imm), insn->imm);
 11873				return -EFAULT;
 11874			}
 11875			insn->imm = fn->func - __bpf_call_base;
 11876		}
 11877	
 11878		/* Since poke tab is now finalized, publish aux to tracker. */
 11879		for (i = 0; i < prog->aux->size_poke_tab; i++) {
 11880			map_ptr = prog->aux->poke_tab[i].tail_call.map;
 11881			if (!map_ptr->ops->map_poke_track ||
 11882			    !map_ptr->ops->map_poke_untrack ||
 11883			    !map_ptr->ops->map_poke_run) {
 11884				verbose(env, "bpf verifier is misconfigured\n");
 11885				return -EINVAL;
 11886			}
 11887	
 11888			ret = map_ptr->ops->map_poke_track(map_ptr, prog->aux);
 11889			if (ret < 0) {
 11890				verbose(env, "tracking tail call prog failed\n");
 11891				return ret;
 11892			}
 11893		}
 11894	
 11895		return 0;
 11896	}
 11897	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104150651.iOEJillu-lkp%40intel.com.

--FL5UXtIhxfXey3p5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
pBL7ZG1SGDv3f/RB2/8AgTtCFMnMAQA=

--FL5UXtIhxfXey3p5--
