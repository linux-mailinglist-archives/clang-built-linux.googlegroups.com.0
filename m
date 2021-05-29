Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIVGY6CQMGQEMEDTSXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1DE394A9C
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 07:37:39 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id f5-20020a4ab0050000b029023e3bd79e80sf3722607oon.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 22:37:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622266658; cv=pass;
        d=google.com; s=arc-20160816;
        b=zRkNEILQC66Mb54qX/aF0K5G6KMl8vcdfshhwprfgV/WEij7Q830bUwJPsMxM6f73K
         9erd12LkD3VOdtDPJs9pAFarL642EPmuQ8Zfl7CW5XyYO332fxPVpRa/of3ZRQnatJ4V
         7WNYN2Ypi42DVpFoZYXO2ToY24D2FLFOPgL884gnpYRr9gjnKDcVvany2oJUiwxS/Ph/
         eQIvDxn+ghET296btwf/CHPLaudi5MK+uiDflwt3pFuj/zkvRSt/VmehPz4odrJUdOQk
         13y+jedDE5uatyss7AZjjqxNZQeXhr58o+t+YD2F5FiCZds7cbn0e0uCWZ5jsRTVBNAm
         ILoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=tGNyifpPqcTr7Asdf9RPdRmiD+EQc+Q4ZeedESk7Iig=;
        b=IaJdeaRe+ILMxSP9Y/Zhoj6jQGZe4Rnjcd+KnL6VLT8jVX9tT4xsVnajcWvW5VH+hE
         qIvYOFWrnS0kvdik1m6y3eE6BGgWV6YxtLfrcOpIUSYX9T0TSZ473vRm+o1rAMsirlX7
         wbKlZtv3sNk2fWI0wcxsTCt/m4nalLmCLPRGndQoh4yUogIrOBJG5YVYSaRmEv/lH8s/
         cd99VBEHmM9V/E1rCGR06g/XnhpLvpwo/UVkfxHFxyJJkb8TaRx22CyIYiSrZEcDwA1a
         vpxNHQDRh1JZF9gKj9aqdco2C3K5hrws/FIUIRROr28wiz+rczD/y61NpZi+aTSvXJTD
         3kgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tGNyifpPqcTr7Asdf9RPdRmiD+EQc+Q4ZeedESk7Iig=;
        b=Fcl4GN1bbXIcPcQOBq3Dy32kbtVMu1mNf2msEErb5Nv+NHdt/mxOJ8jpDF+zl75MOS
         dL27nBLIvCx6+DJSpBHwpxFWYjcobf0qZrMX6/1Az3NVSEImeticGf48+vyXEwxLegwZ
         irE23BKEYh6Eo6x3W3VdmaSOI/xTbB8AahLFAqHIeuKJ4MNeRIbtGbvSC3U1S6OiA2ab
         7L5pTK+oReTVonMIRAwl1H5nM8GfhiTrKpgHD49iCYSJxwgT/cpTEz0G8RLfJv5A/zua
         yln84cSFyAsduZ2xtJQaYQPiV8lr4aCCJKuF+54+HXoBelyVpHeWS6dH3HA6TWNrUIae
         h5hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tGNyifpPqcTr7Asdf9RPdRmiD+EQc+Q4ZeedESk7Iig=;
        b=FYhAWbaJI9JZl9EQx15n7LE4iz3YpUdjfkaIMlup8EKGhGDdbAvWHp64+cLOO2BnjR
         KoJW/rwhLTLPnaLlzBXfpdGV9tNDlJiyktBKRvNCekBeojXFzC/0BAR6TpjVDR1990mV
         ALSCmfzU9TEqXj/3Du1dgIF3fzFpM7407gA15Hc4+oHZOWdW2iruBpW2O6vMftTJWfPC
         yYICZGsWbOYkODqZj1mDxycSCm/5itb/KJOnu9yq+qxCZHWViThmp4ZeJuYtpcjBrkog
         yGMPeHSyLWvjqm1FEUeOsjDhoHxJu6HdARTZKpOCy3YbyQy9+YPgM6ypsEpbC9nc0xK/
         qBsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ydC5YyIPgp7RNt3H2xDapL17FlNmah/GDJKwXh7inYClAGu1y
	clYPM8op541UVGxBXO8xphU=
X-Google-Smtp-Source: ABdhPJw7MLkYRrNEIQq48qdgkxUtaAyRRwljwuyXMqovdcf6kcfrXBgsZt5011wQaoB63cJQN66+nA==
X-Received: by 2002:a9d:6a05:: with SMTP id g5mr9591330otn.354.1622266658062;
        Fri, 28 May 2021 22:37:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a18:: with SMTP id v24ls2683380oth.1.gmail; Fri, 28 May
 2021 22:37:37 -0700 (PDT)
X-Received: by 2002:a05:6830:22d3:: with SMTP id q19mr9828140otc.258.1622266657521;
        Fri, 28 May 2021 22:37:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622266657; cv=none;
        d=google.com; s=arc-20160816;
        b=T4Ux6PIBuVjXajHiqk1Udc4Wqf9VFgMsAzDiimpBgug56JIQNyapwwiJiHvN3fSowW
         1V4bQM9jlUUeMLnLYRbN8dxL3mDSqKsXHq0Iev49y0wJQlaiian8k3MjPaApNlKHiN0q
         E1tX0CXS5h50qK3PzrRpCG+YGycU7JPN4uOE9tusvKnXH/BRkAxcb7MUs06yYH0QF3iM
         UD0jiJzWmvrqKXH3WAfhx/8PHuxOs+m4UsZx0DN94TXFvCqnsJ3VfcZXCTUCndOVr+CE
         16vdQiWmw9DU70TCvONuD6NmaQ1vQ6GbicNBE4HcfF8eyzrw4cxrYTse/X5Wh0QLhgZx
         WD/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ktIFLLSXnr7jD2b7r+QFbMRkwRiM/FF5ifYDqOg4IaY=;
        b=FTpRP7cagrKTlTiE41LOpIgnmPpO5g7fxacnR2gCbi1royR732gxyFPDsiAAMAzPXB
         QJLiohzbDDAXE8SWPFTNcDT1DjTrSPf8Vz3nmoxrvy7uNcdiDm5cgXEvLSPQQtEauC3f
         MvQfyo+Fml/0doCKM7A8uoZZQkUtFsKWsiZZFtYnDArT54b6p6P+8ColtcdM1FhdBALm
         oAH2TsVVvkV/uIs0ERDU/jEeKTelr1DmUjtvv5ZV+j/8NplC164SBugPfuZucakMg6hV
         R/4BC4eGDe7UKpzY+WHAXONxCb3orOdDz3wKITT1lqtyzaZvsKbMJW0oz8rNC4UjkpT8
         CUag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id s3si1083654otd.5.2021.05.28.22.37.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 May 2021 22:37:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: AWx2vcQiX9Sy5/0htjZYcuUT8yCZpzwiLexN2X4b8VNfT2PeZ/NlzxjAElvAVAh8mAoHhR/V4p
 dMITAUP+qgRQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9998"; a="202864483"
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; 
   d="gz'50?scan'50,208,50";a="202864483"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 22:37:36 -0700
IronPort-SDR: A05VYWTlcgkGUhOQL9sK2a3LJabDxCI/nhc2l8I91sD+K3p/eCwCk9qS40VOT+ZGJXKiTX0pbU
 KGa3lSeNq0sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; 
   d="gz'50?scan'50,208,50";a="632009428"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 28 May 2021 22:37:32 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lmrf9-0003eB-Sd; Sat, 29 May 2021 05:37:31 +0000
Date: Sat, 29 May 2021 13:36:40 +0800
From: kernel test robot <lkp@intel.com>
To: Brendan Jackman <jackmanb@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>
Subject: kernel/bpf/verifier.c:11541:12: warning: stack frame size of 2176
 bytes in function 'do_misc_fixups'
Message-ID: <202105291338.InwTq6PU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Brendan,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   6799d4f2da496cab9b3fd26283a8ce3639b1a88d
commit: e6ac593372aadacc14e02b198e4a1acfef1db595 bpf: Rename fixup_bpf_calls and add some comments
date:   3 months ago
config: powerpc64-randconfig-r036-20210529 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc6799f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e6ac593372aadacc14e02b198e4a1acfef1db595
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout e6ac593372aadacc14e02b198e4a1acfef1db595
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

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
   <scratch space>:17:1: note: expanded from here
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
   <scratch space>:19:1: note: expanded from here
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
   <scratch space>:21:1: note: expanded from here
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
   <scratch space>:23:1: note: expanded from here
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
   <scratch space>:25:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/bpf/verifier.c:11541:12: warning: stack frame size of 2176 bytes in function 'do_misc_fixups' [-Wframe-larger-than=]
   static int do_misc_fixups(struct bpf_verifier_env *env)
              ^
   kernel/bpf/verifier.c:9848:12: warning: stack frame size of 5280 bytes in function 'do_check' [-Wframe-larger-than=]
   static int do_check(struct bpf_verifier_env *env)
              ^
   15 warnings generated.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105291338.InwTq6PU-lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Yvv6jzyO2YTif/ol/XfDkQEA

--SUOF0GtieIMvvwua--
