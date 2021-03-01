Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBO4D6KAQMGQEUAJUH5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 74276327744
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 06:55:08 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id s194sf3729651vkh.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 21:55:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614578107; cv=pass;
        d=google.com; s=arc-20160816;
        b=NBru3H7Nte6Z+Au6qW9yd7mWQorsAbe/CX9c9MhL94g+bPwSH76LYq6jkv42t88YOQ
         Ls9C7Xi7m6pLevpYfrNn650xXPWndYMuZRfzcr4IW6GDunYIAb1lhAq2SccSpQgzKCgW
         ZAdiIi43kojPxJz30xWt137Fiy5IJ7s6G8vZna4JNgOCvRLxkLKEyQZGrJ9unG339j28
         DpB6XfP1M9hoFB73aKS/3yazr6QAyoMpyINNIhr9VBBHnpZpI63LhzhJSWym2c87zikx
         HGlNoDejqR0x8ME/XJxN8RBdCN1jRsUq0RtapG0Mgvh+0FSPJWidthp2rqV857+ccjoD
         WRyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=SBOLgxKB4Noemh6xICgfBjfMDl+iKgy4//P0dZiJNSs=;
        b=Yk+3yuIWFHrsRT9gyvzZqSIPS0DPlWiLObQMYVe5ksFKYfkKM2Ql4quqgZkH9gtoLH
         +TUJkt9UN2iwhW8ZuoF4UpnJ1QPzH4wENEGpHkZ88jFRo3VdfJx79B1J+lKn0LsaXJmT
         KfA9sNXB0zZlYB5GOdX5/SukqKQss8whNhoa6lldSp1RNRTOugld5vjSTh4f0q8xBWKx
         CN3z68vJQCnF0VZGf0tntbqhAvazbTxVG2pOKvWK867x1CtlPA5Pp1oZlyV5cbErGQ1f
         esHMVXax0SxJDAqQsFPCH4+Pehn20C5ZDMVq7hS2y0Mpz/i4vBYV3QnJ/rcQy5WbPi7O
         lqJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SBOLgxKB4Noemh6xICgfBjfMDl+iKgy4//P0dZiJNSs=;
        b=o5AdqBdTNbT8Q/oxuN0cHwR61dzHlgGemVONTZHsS9ko/xyaoe3n7iXrr88MlPtlsq
         zlrKqwCM560bWtMwMzzOBAoVUJRvP0ut54Dehw1s9Bw4qp0p4LaEUj5NLSNxIk7Wm047
         B7XTomwht2c9nqqZlo2RtoCYHQZpQQ5TZamqcVE8TQg8yaYnVHzdh1txgSERrHYOtCUI
         bjfN0d9ghzZhYIHEKyuKAD2sXzGgQfFQEkGxlVHVxuje6sNYZVRAFNA5MJHiWBIhbD5Z
         MtZefBaw3PBZ36Xna9EYiwGFe7TMX+ubHVe/cVWxBVrpFCKFhZMDL2vboxeA43pI4WAY
         fqXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SBOLgxKB4Noemh6xICgfBjfMDl+iKgy4//P0dZiJNSs=;
        b=iVo2Wixlt5zzr8obJLuxxL4glcwVXvQtwXGo/285Vrhxi85SX8HfAjqfyau04ELWha
         0UkGvodX4jne+2kvrXqse904MqapYn5pSZv5mOsv8rQ3oSlwCerRIYFcF7jdk2gyuv3k
         dgX0tByv7Sdn/FQ54Cs7S7yCEoja7B0QSciuImR6CiLUnN0kf8lPe+H36CajiRDXfEjG
         8ZOT5WMpd9oluOku8e3GuodDoQ57uMf4SjNOl8jIybx8KrRS55mLQfGruGSY0ckaDG5X
         94AJhOdu3uCtbGNd1IJhgPFE65MUAkjXbQIGExJP1uW5paJWUX1Tv3OYDdQW7JJh4G1I
         LXIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PR44pJd1J6Vr2chg1k42jalX8GEAQOykf45FqmIXb1UYGm1fc
	+PmoPZs9y+kS+Sna8et/saE=
X-Google-Smtp-Source: ABdhPJxWzwfvA2b952IwyQBMUrkcAxwXZ/0ToGcYryKhhoH/GuBrCSb55GbhFOUu5RHTfBEd8WSBeg==
X-Received: by 2002:a9f:31ad:: with SMTP id v42mr7632484uad.42.1614578107350;
        Sun, 28 Feb 2021 21:55:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e88d:: with SMTP id x13ls257854vsn.11.gmail; Sun, 28 Feb
 2021 21:55:06 -0800 (PST)
X-Received: by 2002:a67:ed8f:: with SMTP id d15mr7488244vsp.44.1614578106650;
        Sun, 28 Feb 2021 21:55:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614578106; cv=none;
        d=google.com; s=arc-20160816;
        b=vnykWso0qmIpXZBrbTo/AFDr7RrhwNZ6D6/FqSxY9DKkDkeX6CJas5NvLX0JeuW8w6
         a8ITEGmKEM3k4YM6wrg1oW1E9AoiBekUjEu4IZGiXToZU/fF0kA1Q8g5jeEb/IpIFjOa
         ufOdsKNUMp4t4qEFy51UeVB/mjQkcM5MyCY58FHzkyHyxoIivrcLinEgPmzvz8csdW2u
         m89HeKTQs0PsMQI1/zHqs2v8HjlWQGbQp11AzWlh3uSxiPRlSqffeS1ZJxjkEI972aaB
         F3u9V6IzO8A41v88uV8fGYADSYCVJYIHZSo07TpXxceHd7givB/3BPQkKzzIMyIXgwtj
         pzsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Vw/2hbrfHaq4bWvcHRiDEndKOfe2kBX4zK/UWKo+zdU=;
        b=v91ycCmNeakerObqGyOxCFavesWB9fQe+C05Rf6CfRC19DDhGvY7rWxtGmvEYxnQPQ
         +5UjNejiy33zps1oSs8Jwl377izh8tV9IwlOgguDlAMYeGJqJXTdb2D5ET2vBYEpvcWM
         34K3JCu+nkVBKDzBLKcYHEcCltwYe+GDRr30hHrz5Emlbevm3Wg699Ygw5CgrntQMNBA
         r6F7+PEjz1zcvEX57khQT1ro0Th2OKl41R22jfBuWFVrhq0rvnEk3ET+3jAaPgVbJ/ix
         HEPtFP4hyGo8Oqt2oD4ImBXKbfzqdbFzQ3cuQVwml7I/pk/6HgLPsmS7OybnfKdQ9b1f
         tBVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id c12si585395vsp.1.2021.02.28.21.55.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2021 21:55:06 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: Nop0pdofQfZQ/d3462KZ3/SbKX+KVOTKAY7Pi+73ZAt13i9PIS/xB7WQvXE+MbEPhiAq0bMbaa
 KuIXVVlHjhGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="166239625"
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; 
   d="gz'50?scan'50,208,50";a="166239625"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2021 21:55:04 -0800
IronPort-SDR: nqx3Wljx+BbLfFXj4GZCZvVRy2Amb858qOsywK5GfAOx2IBXzt5X3rEqXz30fPg7ZCYCckjNvD
 DSV64L90HpVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; 
   d="gz'50?scan'50,208,50";a="366596456"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 28 Feb 2021 21:55:01 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGbWG-0004RO-IM; Mon, 01 Mar 2021 05:55:00 +0000
Date: Mon, 1 Mar 2021 13:54:50 +0800
From: kernel test robot <lkp@intel.com>
To: Huacai Chen <chenhc@lemote.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: arch/mips/loongson64/cop2-ex.c:97:30: error: no member named 'fpu'
 in 'struct thread_struct'
Message-ID: <202103011344.tFz70TXK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fdj2RfSjLxBAspz7"
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


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Huacai,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
commit: f83e4f9896eff614d0f2547a561fa5f39f9cddde MIPS: Loongson-3: Add some unaligned instructions emulation
date:   10 months ago
config: mips-randconfig-r011-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b077d82b00d81934c7c27ac89dd8b0e7f448bded)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f83e4f9896eff614d0f2547a561fa5f39f9cddde
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f83e4f9896eff614d0f2547a561fa5f39f9cddde
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/loongson64/cop2-ex.c:14:
   In file included from include/linux/sched.h:15:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:7:
   In file included from include/linux/rhashtable-types.h:15:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/loongson64/cop2-ex.c:16:
   In file included from include/linux/ptrace.h:10:
   In file included from include/linux/pid_namespace.h:7:
   In file included from include/linux/mm.h:10:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(raw_smp_processor_id());
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/loongson64/cop2-ex.c:16:
   In file included from include/linux/ptrace.h:10:
   In file included from include/linux/pid_namespace.h:7:
   In file included from include/linux/mm.h:10:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:176:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(cpu);
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/loongson64/cop2-ex.c:16:
   In file included from include/linux/ptrace.h:10:
   In file included from include/linux/pid_namespace.h:7:
   In file included from include/linux/mm.h:10:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:210:25: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpumask_of_node(cpu_to_node(cpu));
                                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/loongson64/cop2-ex.c:16:
   In file included from include/linux/ptrace.h:10:
   In file included from include/linux/pid_namespace.h:7:
   In file included from include/linux/mm.h:95:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/loongson64/cop2-ex.c:16:
   In file included from include/linux/ptrace.h:10:
   In file included from include/linux/pid_namespace.h:7:
   In file included from include/linux/mm.h:95:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   arch/mips/loongson64/cop2-ex.c:44:15: error: implicit declaration of function '__is_fpu_owner' [-Werror,-Wimplicit-function-declaration]
                   fpu_owned = __is_fpu_owner();
                               ^
   arch/mips/loongson64/cop2-ex.c:44:15: note: did you mean 'is_fpu_owner'?
   arch/mips/include/asm/fpu.h:269:19: note: 'is_fpu_owner' declared here
   static inline int is_fpu_owner(void)
                     ^
>> arch/mips/loongson64/cop2-ex.c:97:30: error: no member named 'fpu' in 'struct thread_struct'
                           set_fpr64(current->thread.fpu.fpr,
                                     ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:99:30: error: no member named 'fpu' in 'struct thread_struct'
                           set_fpr64(current->thread.fpu.fpr,
                                     ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:132:43: error: no member named 'fpu' in 'struct thread_struct'
                           value_next = get_fpr64(current->thread.fpu.fpr,
                                                  ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:139:38: error: no member named 'fpu' in 'struct thread_struct'
                           value = get_fpr64(current->thread.fpu.fpr,
                                             ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:206:30: error: no member named 'fpu' in 'struct thread_struct'
                           set_fpr64(current->thread.fpu.fpr,
                                     ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:223:30: error: no member named 'fpu' in 'struct thread_struct'
                           set_fpr64(current->thread.fpu.fpr,
                                     ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:288:38: error: no member named 'fpu' in 'struct thread_struct'
                           value = get_fpr64(current->thread.fpu.fpr,
                                             ~~~~~~~~~~~~~~~ ^
   arch/mips/loongson64/cop2-ex.c:307:38: error: no member named 'fpu' in 'struct thread_struct'
                           value = get_fpr64(current->thread.fpu.fpr,
                                             ~~~~~~~~~~~~~~~ ^
   12 warnings and 12 errors generated.


vim +97 arch/mips/loongson64/cop2-ex.c

    26	
    27	static int loongson_cu2_call(struct notifier_block *nfb, unsigned long action,
    28		void *data)
    29	{
    30		unsigned int res, fpu_owned;
    31		unsigned long ra, value, value_next;
    32		union mips_instruction insn;
    33		int fr = !test_thread_flag(TIF_32BIT_FPREGS);
    34		struct pt_regs *regs = (struct pt_regs *)data;
    35		void __user *addr = (void __user *)regs->cp0_badvaddr;
    36		unsigned int __user *pc = (unsigned int __user *)exception_epc(regs);
    37	
    38		ra = regs->regs[31];
    39		__get_user(insn.word, pc);
    40	
    41		switch (action) {
    42		case CU2_EXCEPTION:
    43			preempt_disable();
  > 44			fpu_owned = __is_fpu_owner();
    45			if (!fr)
    46				set_c0_status(ST0_CU1 | ST0_CU2);
    47			else
    48				set_c0_status(ST0_CU1 | ST0_CU2 | ST0_FR);
    49			enable_fpu_hazard();
    50			KSTK_STATUS(current) |= (ST0_CU1 | ST0_CU2);
    51			if (fr)
    52				KSTK_STATUS(current) |= ST0_FR;
    53			else
    54				KSTK_STATUS(current) &= ~ST0_FR;
    55			/* If FPU is owned, we needn't init or restore fp */
    56			if (!fpu_owned) {
    57				set_thread_flag(TIF_USEDFPU);
    58				init_fp_ctx(current);
    59				_restore_fp(current);
    60			}
    61			preempt_enable();
    62	
    63			return NOTIFY_STOP;	/* Don't call default notifier */
    64	
    65		case CU2_LWC2_OP:
    66			if (insn.loongson3_lswc2_format.ls == 0)
    67				goto sigbus;
    68	
    69			if (insn.loongson3_lswc2_format.fr == 0) {	/* gslq */
    70				if (!access_ok(addr, 16))
    71					goto sigbus;
    72	
    73				LoadDW(addr, value, res);
    74				if (res)
    75					goto fault;
    76	
    77				LoadDW(addr + 8, value_next, res);
    78				if (res)
    79					goto fault;
    80	
    81				regs->regs[insn.loongson3_lswc2_format.rt] = value;
    82				regs->regs[insn.loongson3_lswc2_format.rq] = value_next;
    83				compute_return_epc(regs);
    84			} else {					/* gslqc1 */
    85				if (!access_ok(addr, 16))
    86					goto sigbus;
    87	
    88				lose_fpu(1);
    89				LoadDW(addr, value, res);
    90				if (res)
    91					goto fault;
    92	
    93				LoadDW(addr + 8, value_next, res);
    94				if (res)
    95					goto fault;
    96	
  > 97				set_fpr64(current->thread.fpu.fpr,
    98					insn.loongson3_lswc2_format.rt, value);
    99				set_fpr64(current->thread.fpu.fpr,
   100					insn.loongson3_lswc2_format.rq, value_next);
   101				compute_return_epc(regs);
   102				own_fpu(1);
   103			}
   104			return NOTIFY_STOP;	/* Don't call default notifier */
   105	
   106		case CU2_SWC2_OP:
   107			if (insn.loongson3_lswc2_format.ls == 0)
   108				goto sigbus;
   109	
   110			if (insn.loongson3_lswc2_format.fr == 0) {	/* gssq */
   111				if (!access_ok(addr, 16))
   112					goto sigbus;
   113	
   114				/* write upper 8 bytes first */
   115				value_next = regs->regs[insn.loongson3_lswc2_format.rq];
   116	
   117				StoreDW(addr + 8, value_next, res);
   118				if (res)
   119					goto fault;
   120				value = regs->regs[insn.loongson3_lswc2_format.rt];
   121	
   122				StoreDW(addr, value, res);
   123				if (res)
   124					goto fault;
   125	
   126				compute_return_epc(regs);
   127			} else {					/* gssqc1 */
   128				if (!access_ok(addr, 16))
   129					goto sigbus;
   130	
   131				lose_fpu(1);
   132				value_next = get_fpr64(current->thread.fpu.fpr,
   133						insn.loongson3_lswc2_format.rq);
   134	
   135				StoreDW(addr + 8, value_next, res);
   136				if (res)
   137					goto fault;
   138	
   139				value = get_fpr64(current->thread.fpu.fpr,
   140						insn.loongson3_lswc2_format.rt);
   141	
   142				StoreDW(addr, value, res);
   143				if (res)
   144					goto fault;
   145	
   146				compute_return_epc(regs);
   147				own_fpu(1);
   148			}
   149			return NOTIFY_STOP;	/* Don't call default notifier */
   150	
   151		case CU2_LDC2_OP:
   152			switch (insn.loongson3_lsdc2_format.opcode1) {
   153			/*
   154			 * Loongson-3 overridden ldc2 instructions.
   155			 * opcode1              instruction
   156			 *   0x1          gslhx: load 2 bytes to GPR
   157			 *   0x2          gslwx: load 4 bytes to GPR
   158			 *   0x3          gsldx: load 8 bytes to GPR
   159			 *   0x6	  gslwxc1: load 4 bytes to FPR
   160			 *   0x7	  gsldxc1: load 8 bytes to FPR
   161			 */
   162			case 0x1:
   163				if (!access_ok(addr, 2))
   164					goto sigbus;
   165	
   166				LoadHW(addr, value, res);
   167				if (res)
   168					goto fault;
   169	
   170				compute_return_epc(regs);
   171				regs->regs[insn.loongson3_lsdc2_format.rt] = value;
   172				break;
   173			case 0x2:
   174				if (!access_ok(addr, 4))
   175					goto sigbus;
   176	
   177				LoadW(addr, value, res);
   178				if (res)
   179					goto fault;
   180	
   181				compute_return_epc(regs);
   182				regs->regs[insn.loongson3_lsdc2_format.rt] = value;
   183				break;
   184			case 0x3:
   185				if (!access_ok(addr, 8))
   186					goto sigbus;
   187	
   188				LoadDW(addr, value, res);
   189				if (res)
   190					goto fault;
   191	
   192				compute_return_epc(regs);
   193				regs->regs[insn.loongson3_lsdc2_format.rt] = value;
   194				break;
   195			case 0x6:
   196				die_if_kernel("Unaligned FP access in kernel code", regs);
   197				BUG_ON(!used_math());
   198				if (!access_ok(addr, 4))
   199					goto sigbus;
   200	
   201				lose_fpu(1);
   202				LoadW(addr, value, res);
   203				if (res)
   204					goto fault;
   205	
   206				set_fpr64(current->thread.fpu.fpr,
   207						insn.loongson3_lsdc2_format.rt, value);
   208				compute_return_epc(regs);
   209				own_fpu(1);
   210	
   211				break;
   212			case 0x7:
   213				die_if_kernel("Unaligned FP access in kernel code", regs);
   214				BUG_ON(!used_math());
   215				if (!access_ok(addr, 8))
   216					goto sigbus;
   217	
   218				lose_fpu(1);
   219				LoadDW(addr, value, res);
   220				if (res)
   221					goto fault;
   222	
   223				set_fpr64(current->thread.fpu.fpr,
   224						insn.loongson3_lsdc2_format.rt, value);
   225				compute_return_epc(regs);
   226				own_fpu(1);
   227				break;
   228	
   229			}
   230			return NOTIFY_STOP;	/* Don't call default notifier */
   231	
   232		case CU2_SDC2_OP:
   233			switch (insn.loongson3_lsdc2_format.opcode1) {
   234			/*
   235			 * Loongson-3 overridden sdc2 instructions.
   236			 * opcode1              instruction
   237			 *   0x1          gsshx: store 2 bytes from GPR
   238			 *   0x2          gsswx: store 4 bytes from GPR
   239			 *   0x3          gssdx: store 8 bytes from GPR
   240			 *   0x6          gsswxc1: store 4 bytes from FPR
   241			 *   0x7          gssdxc1: store 8 bytes from FPR
   242			 */
   243			case 0x1:
   244				if (!access_ok(addr, 2))
   245					goto sigbus;
   246	
   247				compute_return_epc(regs);
   248				value = regs->regs[insn.loongson3_lsdc2_format.rt];
   249	
   250				StoreHW(addr, value, res);
   251				if (res)
   252					goto fault;
   253	
   254				break;
   255			case 0x2:
   256				if (!access_ok(addr, 4))
   257					goto sigbus;
   258	
   259				compute_return_epc(regs);
   260				value = regs->regs[insn.loongson3_lsdc2_format.rt];
   261	
   262				StoreW(addr, value, res);
   263				if (res)
   264					goto fault;
   265	
   266				break;
   267			case 0x3:
   268				if (!access_ok(addr, 8))
   269					goto sigbus;
   270	
   271				compute_return_epc(regs);
   272				value = regs->regs[insn.loongson3_lsdc2_format.rt];
   273	
   274				StoreDW(addr, value, res);
   275				if (res)
   276					goto fault;
   277	
   278				break;
   279	
   280			case 0x6:
   281				die_if_kernel("Unaligned FP access in kernel code", regs);
   282				BUG_ON(!used_math());
   283	
   284				if (!access_ok(addr, 4))
   285					goto sigbus;
   286	
   287				lose_fpu(1);
   288				value = get_fpr64(current->thread.fpu.fpr,
   289						insn.loongson3_lsdc2_format.rt);
   290	
   291				StoreW(addr, value, res);
   292				if (res)
   293					goto fault;
   294	
   295				compute_return_epc(regs);
   296				own_fpu(1);
   297	
   298				break;
   299			case 0x7:
   300				die_if_kernel("Unaligned FP access in kernel code", regs);
   301				BUG_ON(!used_math());
   302	
   303				if (!access_ok(addr, 8))
   304					goto sigbus;
   305	
   306				lose_fpu(1);
   307				value = get_fpr64(current->thread.fpu.fpr,
   308						insn.loongson3_lsdc2_format.rt);
   309	
   310				StoreDW(addr, value, res);
   311				if (res)
   312					goto fault;
   313	
   314				compute_return_epc(regs);
   315				own_fpu(1);
   316	
   317				break;
   318			}
   319			return NOTIFY_STOP;	/* Don't call default notifier */
   320		}
   321	
   322		return NOTIFY_OK;		/* Let default notifier send signals */
   323	
   324	fault:
   325		/* roll back jump/branch */
   326		regs->regs[31] = ra;
   327		regs->cp0_epc = (unsigned long)pc;
   328		/* Did we have an exception handler installed? */
   329		if (fixup_exception(regs))
   330			return NOTIFY_STOP;	/* Don't call default notifier */
   331	
   332		die_if_kernel("Unhandled kernel unaligned access", regs);
   333		force_sig(SIGSEGV);
   334	
   335		return NOTIFY_STOP;	/* Don't call default notifier */
   336	
   337	sigbus:
   338		die_if_kernel("Unhandled kernel unaligned access", regs);
   339		force_sig(SIGBUS);
   340	
   341		return NOTIFY_STOP;	/* Don't call default notifier */
   342	}
   343	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103011344.tFz70TXK-lkp%40intel.com.

--fdj2RfSjLxBAspz7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--fdj2RfSjLxBAspz7--
