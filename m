Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCPKQGDQMGQEX4ZVFRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9311D3BA8FB
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Jul 2021 16:32:42 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id i8-20020a9f3b080000b029023c932e01b8sf3683220uah.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jul 2021 07:32:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625322761; cv=pass;
        d=google.com; s=arc-20160816;
        b=m387OwdII5KI4kd6atMmnnEy3LeCgT6Aj1fZA7T2dfsFI9FpM8afxXodg3gbVZo2H/
         lkltqPhveMduNXCkSMTOr/031FUe6LZIfq2u0v0nlX+aIKGV1N1x35f0GRO2fwzHdO0i
         d0Ewx1M5KkuSs9mXxtH7WWdedReF+DquLahTafCOnX5BM4GKJkE99CxVg75Ai5+uYD4k
         2JDgGuWSoym8jLjbZCqeYAkidPX1r1jQn2Te5o6O+IUDEYC0xDg2lxkX1aAPPEK/3EVZ
         ntwVskk3c26PdcZHMNDU4B3ULjCoRw4RbaZcLEVu6kG6dz+OiliXxa8pJ4iyW0RTDreB
         4B+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2t0DITDz+ZfNGXrr1Sz9oTNYeVUxaEAGRrTg+340U2g=;
        b=H05drADxTskiaINxwlOsdcxVdBw9kLLre34IAJ9LDsL8zcU+OQoxk/TNxBas11Q9I9
         XWEB3fMJb6VVgfDlt8rZJQIyOW1bfM7w5tcixnOdQ/YoH0btBA719/G6yZg+iwSzLnOA
         zHOugKMoTHtbjaQzpUaTadU87Sk9Dm2eU+Nrloaew6AwflklLucbJbTrtSYj7W9pXmbb
         BC2WeZuHAuXD78blaXWp6h+9ffqeBKn4xaJ5KoriQrMFmMsOzcNCuwlbdb0KscVevhg4
         KBzut9MD4TMn227Lf1SB3p2q0tqk0n01+FlOnXiG3ApBVsyWnRzrcB9fz/wxkypInTd2
         6Y1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2t0DITDz+ZfNGXrr1Sz9oTNYeVUxaEAGRrTg+340U2g=;
        b=cmi3BCJkiN6y8bcrUWz5u1/ruqSUOZiv9+DrHFLv0s+uMJmbMrSJpDkXZmZeGOGcVy
         ooDKNk9ro2jBHK4P2EDv5D51mwLt63gjxprA1PB+uL8YgsxiN4AdkHX3VHcM4QVG6PZp
         iTKUp+ihh+6FazYufbWjJ/HvF0CakiVHcO0HsH/dlq01kjVnhg7Q50U2YkL+J3gjD4Hg
         nGMkgKp8UYmue8w2Q9Kh2iR3BylY6oBJSi9XoO1P9o6TZIeRRQP4Pm4qPD/p0QSNZNAc
         PzjG39+a4iAau5JVSMx2LHFvjvyKxT1/M4wnWDgSQjxKaFom8ihJ7VPB52qwCks7/jR1
         BoOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2t0DITDz+ZfNGXrr1Sz9oTNYeVUxaEAGRrTg+340U2g=;
        b=B7Xic7sN0MqiMixbEvGSOY4frvuCPc5+O80NcAmC7q15lnBDJylWmU1Zq2jRWTHZCi
         aZLEhKyhAmkYW1DAneDSadoMQKuykCb42A5DpRGXg0x5DhfXocQKKGUaBwGIrjchu/1r
         uS/WU2KvS+xQWolpdT/lpFQyRGVVMb/a9EPEPGhCNfc/4QmkbpBzzg248sBWL8ir0cte
         Mciuc4DPxw3LnjawVQbSYspMvFr7YPHt62rfuarEo0gNnSFsBSSfyamK+I0J1uQvr70B
         KcKGsqnSLmDB0RwvurAeudPOl8Si17+M+kQKMsyPi284q03/oieTS9t9U+c/usgBolNr
         V28g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ndkl3JIVkHhv6eiWPIfGtjubAY1DPJVopK+6ayGp4ujUSRgZk
	MaCvR9fTkcGN1xjhvBzbJys=
X-Google-Smtp-Source: ABdhPJwpXKr77pXjKQWrLVO3ThOHJ4goJ1zgmDlx6DA14z+/LDlCyEcVBV8rO2TSp8XtLSvKWMXGbg==
X-Received: by 2002:ab0:c19:: with SMTP id a25mr4945852uak.98.1625322761480;
        Sat, 03 Jul 2021 07:32:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c704:: with SMTP id x4ls1513139vkf.4.gmail; Sat, 03 Jul
 2021 07:32:41 -0700 (PDT)
X-Received: by 2002:a1f:cb05:: with SMTP id b5mr4217954vkg.9.1625322760734;
        Sat, 03 Jul 2021 07:32:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625322760; cv=none;
        d=google.com; s=arc-20160816;
        b=UqZqD137Mn/LxvHdS101Wa5eSyPBLGT+bCElkk/LNMMLDBJXZ3nypnf8r1LskH6ZtW
         4bBx9g5Jc4Cn+ngETwMAOdXH5iJZAvDZYd8wY0St/wZaSHb25CPmHAoAH2B49i7JEG3H
         9kR6JDSk/nstdxC0YEZanM1Pv4pHjT2YrpL5ufK8GBiFacND06DWdQ+SfKzvIOgrNf1z
         roeiIj43c7qLyv/auWll8o+5xlIG9B/6/3WSMuGntnOh+HJit7J9XbqBtKcGweIdXbL3
         tj8pewIeGW1m3m1IhUCmaxNajLb4ULHpFt8wK9Nha0ChakCjKjXV1IzTjQIE67Gxl5ke
         oZzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=+vcUNCg2drSua/GXdJ5Y5KfCmGZguTbhOXctWytPhuY=;
        b=k0dhy9U01XR0QCoFhK28X5EWCR6Y8h8a8MF5+otNUz7KSUKDL7YViSNyNo+L+uMOUe
         ySPN19x7vcBVEA6fIuHV/ZLZJFZ0lrvEDACszWU01SUVPA5+yA7DF0LLffsxUrG+tVUf
         P3ixMTq0MQ9pMjzRD7Z83Dgtrgs5hq4d1/tUp0bgiipNnZo0DoOOVgrhzWGGdba2+Uxo
         jON4ZLrxjZmMllHuyWKSQNlb4ILoeeV6KmzQVaM6Z5LhXj9dO7Y6tZb+keAkEZr0xbOi
         8Wn3soF1q3297mGjEriQzQeft3nql5u5+L7dXqYDXZrEAWZhYNHIuwLgfZAkLv8xEOuF
         nqvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id l6si870211vkg.0.2021.07.03.07.32.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Jul 2021 07:32:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10034"; a="208867852"
X-IronPort-AV: E=Sophos;i="5.83,322,1616482800"; 
   d="gz'50?scan'50,208,50";a="208867852"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2021 07:32:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,322,1616482800"; 
   d="gz'50?scan'50,208,50";a="643087381"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 03 Jul 2021 07:32:35 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lzgh8-000BbC-CH; Sat, 03 Jul 2021 14:32:34 +0000
Date: Sat, 3 Jul 2021 22:32:04 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Daniel Bristot de Oliveira <bristot@redhat.com>
Subject: kernel/sched/core.c:2771:20: warning: unused function
 'rq_has_pinned_tasks'
Message-ID: <202107032257.vfuKFfO3-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Peter,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   4b820e167bf6f410ace479d8df5b15a574000e75
commit: a7c81556ec4d341dfdbf2cc478ead89d73e474a7 sched: Fix migrate_disable=
() vs rt/dl balancing
date:   8 months ago
config: mips-randconfig-r015-20210702 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9eb613=
b2de3163686b1a4bd1160f15ac56a4b083)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3Da7c81556ec4d341dfdbf2cc478ead89d73e474a7
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout a7c81556ec4d341dfdbf2cc478ead89d73e474a7
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross O=3D=
build_dir ARCH=3Dmips SHELL=3D/bin/bash kernel/locking/ kernel/sched/ kerne=
l/time/ mm/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/sched/core.c:2711:6: warning: no previous prototype for function =
'sched_set_stop_task'
   void sched_set_stop_task(int cpu, struct task_struct
   ^
   kernel/sched/core.c:2711:1: note: declare 'static' if the function is no=
t intended to be used outside of this translation unit
   void sched_set_stop_task(int cpu, struct task_struct
   ^
   static
   kernel/sched/core.c:4109:13: warning: variable 'rq' set but not used
   struct rq
   ^
>> kernel/sched/core.c:2771:20: warning: unused function 'rq_has_pinned_tas=
ks'
   static inline bool rq_has_pinned_tasks(struct rq
   ^
   kernel/sched/core.c:4559:20: warning: unused function 'sched_tick_stop'
   static inline void sched_tick_stop(int cpu) { }
   ^
   kernel/sched/core.c:7224:20: warning: unused function 'balance_hotplug_w=
ait'
   static inline void balance_hotplug_wait(void)
   ^
   fatal error: error in backend: Nested variants found in inline asm strin=
g: '.if ( 0x00 ) !=3D -1)) 0x00 ) !=3D -1)) : ($( static struct ftrace_bran=
ch_data __attribute__((__aligned__(4))) __attribute__((__section__("_ftrace=
_branch"))) __if_trace =3D $( .func =3D __func__, .file =3D "arch/mips/incl=
ude/asm/barrier.h", .line =3D 21, $); 0x00 ) !=3D -1)) : $))) ) && ( (1 << =
0) ); .set push; .set mips64r2; .rept 1; sync 0x00; .endr; .set pop; .else;=
 ; .endif'
   clang-13: error: clang frontend command failed with exit code 70 (use -v=
 to see invocation)
   clang version 13.0.0 (git://gitmirror/llvm_project cb5de7c813f976dd458bd=
2a7f40702ba648bf650)
   Target: mips-unknown-linux-gnu
   Thread model: posix
   InstalledDir: /opt/cross/clang-cb5de7c813/bin
   clang-13: note: diagnostic msg:
   Makefile arch block certs crypto drivers fs include init ipc kernel lib =
mm scripts security sound source usr virt


vim +/rq_has_pinned_tasks +2771 kernel/sched/core.c

09a40af5240de0 kernel/sched.c      Mike Galbraith  2010-04-15  2710 =20
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29 @2711  void s=
ched_set_stop_task(int cpu, struct task_struct *stop)
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2712  {
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2713  	stati=
c struct lock_class_key stop_pi_lock;
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2714  	struc=
t sched_param param =3D { .sched_priority =3D MAX_RT_PRIO - 1 };
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2715  	struc=
t task_struct *old_stop =3D cpu_rq(cpu)->stop;
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2716 =20
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2717  	if (s=
top) {
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2718  		/*
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2719  		 * M=
ake it appear like a SCHED_FIFO task, its something
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2720  		 * u=
serspace knows about and won't get confused about.
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2721  		 *
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2722  		 * A=
lso, it will make PI more or less work without too
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2723  		 * m=
uch confusion -- but then, stop work should not
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2724  		 * r=
ely on PI working anyway.
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2725  		 */
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2726  		sche=
d_setscheduler_nocheck(stop, SCHED_FIFO, &param);
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2727 =20
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2728  		stop=
->sched_class =3D &stop_sched_class;
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2729 =20
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2730  		/*
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2731  		 * T=
he PI code calls rt_mutex_setprio() with ->pi_lock held to
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2732  		 * a=
djust the effective priority of a task. As a result,
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2733  		 * r=
t_mutex_setprio() can trigger (RT) balancing operations,
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2734  		 * w=
hich can then trigger wakeups of the stop thread to push
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2735  		 * a=
round the current task.
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2736  		 *
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2737  		 * T=
he stop task itself will never be part of the PI-chain, it
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2738  		 * n=
ever blocks, therefore that ->pi_lock recursion is safe.
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2739  		 * T=
ell lockdep about this by placing the stop->pi_lock in its
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2740  		 * o=
wn class.
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2741  		 */
ded467dc83ac71 kernel/sched/core.c Peter Zijlstra  2020-10-01  2742  		lock=
dep_set_class(&stop->pi_lock, &stop_pi_lock);
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2743  	}
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2744 =20
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2745  	cpu_r=
q(cpu)->stop =3D stop;
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2746 =20
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2747  	if (o=
ld_stop) {
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2748  		/*
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2749  		 * R=
eset it back to a normal scheduling class so that
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2750  		 * i=
t can die in pieces.
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2751  		 */
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2752  		old_=
stop->sched_class =3D &rt_sched_class;
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2753  	}
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2754  }
f5832c1998af2c kernel/sched/core.c Nicolas Pitre   2017-05-29  2755 =20
25834c73f93af7 kernel/sched/core.c Peter Zijlstra  2015-05-15  2756  #else
25834c73f93af7 kernel/sched/core.c Peter Zijlstra  2015-05-15  2757 =20
25834c73f93af7 kernel/sched/core.c Peter Zijlstra  2015-05-15  2758  static=
 inline int __set_cpus_allowed_ptr(struct task_struct *p,
9cfc3e18adb036 kernel/sched/core.c Peter Zijlstra  2020-09-16  2759  					 =
const struct cpumask *new_mask,
9cfc3e18adb036 kernel/sched/core.c Peter Zijlstra  2020-09-16  2760  					 =
u32 flags)
25834c73f93af7 kernel/sched/core.c Peter Zijlstra  2015-05-15  2761  {
25834c73f93af7 kernel/sched/core.c Peter Zijlstra  2015-05-15  2762  	retur=
n set_cpus_allowed_ptr(p, new_mask);
25834c73f93af7 kernel/sched/core.c Peter Zijlstra  2015-05-15  2763  }
25834c73f93af7 kernel/sched/core.c Peter Zijlstra  2015-05-15  2764 =20
5cc389bcee088b kernel/sched/core.c Peter Zijlstra  2015-06-11  2765  #endif=
 /* CONFIG_SMP */
970b13bacba14a kernel/sched.c      Peter Zijlstra  2009-11-25  2766 =20
af449901b84c98 kernel/sched/core.c Peter Zijlstra  2020-09-17  2767  #if !d=
efined(CONFIG_SMP) || !defined(CONFIG_PREEMPT_RT)
af449901b84c98 kernel/sched/core.c Peter Zijlstra  2020-09-17  2768 =20
af449901b84c98 kernel/sched/core.c Peter Zijlstra  2020-09-17  2769  static=
 inline void migrate_disable_switch(struct rq *rq, struct task_struct *p) {=
 }
af449901b84c98 kernel/sched/core.c Peter Zijlstra  2020-09-17  2770 =20
3015ef4b98f53f kernel/sched/core.c Thomas Gleixner 2020-08-26 @2771  static=
 inline bool rq_has_pinned_tasks(struct rq *rq)
3015ef4b98f53f kernel/sched/core.c Thomas Gleixner 2020-08-26  2772  {
3015ef4b98f53f kernel/sched/core.c Thomas Gleixner 2020-08-26  2773  	retur=
n false;
3015ef4b98f53f kernel/sched/core.c Thomas Gleixner 2020-08-26  2774  }
3015ef4b98f53f kernel/sched/core.c Thomas Gleixner 2020-08-26  2775 =20

:::::: The code at line 2771 was first introduced by commit
:::::: 3015ef4b98f53fe7eba4f5f82f562c0e074d213c sched/core: Make migrate di=
sable and CPU hotplug cooperative

:::::: TO: Thomas Gleixner <tglx@linutronix.de>
:::::: CC: Peter Zijlstra <peterz@infradead.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202107032257.vfuKFfO3-lkp%40intel.com.

--4Ckj6UjgE2iN1+kY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
cCPIeOP+B6a+KbE8qAEA

--4Ckj6UjgE2iN1+kY--
