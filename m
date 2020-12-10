Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYFQY37AKGQEWULW6HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D262D517E
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 04:39:13 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id 99sf2927945qte.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 19:39:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607571552; cv=pass;
        d=google.com; s=arc-20160816;
        b=BWrrKoyImYGS3gQJLFrQ5wZNGdZguTqLZV5xMWE4viUh6v1ci0gXk+eHl2yVrMjFrN
         F7TsnpVUXWPFSNeh6szL48/n3dOKwDVH1ZAIvGsVXQ/hEHiu8RF1P5j0xu2SSF+4htWz
         Eo2vMdGe5D2A1sP3K61hHSxO8zljLYjZxn1m4J8InXGydnRgY2bYPoxzh/3MjS+Nx5J6
         3mAbGN76Cu+aTZhY/YV+a4rJv5Q5OAheU2GmZAYlB5Ds8NJVqhto9DXmXsBOLUMrzO2N
         3G10+HBL2HVUFccMFPsRTcto1S4udYnKfC1a/6978mNKj7bpBH/FrgDb9n8dT/V3qaqI
         3DcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=8yVXoAcou5uEe1QYuqd20Dg7VZh7pflb5n2lxM+HQaw=;
        b=rUevqujn0S+c4rCak9dVINbeb9FKHrzdHgLzsI0MwpusUlfH1lTzB1RDyvotOTt5j5
         Ioklpo+ioHww5o+2DxfaPMQ7qAq6WnOdC8nxDGpbz+TQvvr4kA7WGY9GhFaSiaZ+csDf
         35rgW6Sgj8tuAQOX7tIoC/5lRNMkamr1k4d0wBz3dv69yXJeSc5jNSlxaiagX21UstSZ
         mGu/Lg593394ep7TheO9D1lPyHCSbggqaOcdJlCaSqlUNcs1Mwy3527XNQDDE4yc3wTU
         dtlvmv0XgtEYTm5jX0kmYBCiuBgi+LQeDRLKF+zGE93w/4I+dwxKgbDqUZ0VhB6ubbfg
         RhtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8yVXoAcou5uEe1QYuqd20Dg7VZh7pflb5n2lxM+HQaw=;
        b=ig4wwhHookKK9KrGd+GWQGdIJkuB7Ny6NXrcYu2jP4HPt8kHGLLtEgM+Syy99AfvaL
         LJHZ448jDiRKaEsMpltzjcnOXrbGS+2wf04rVGd/BYW6fZGskwj9C5Tch9Rs50F3qP8B
         k+lM9gmWf+9tzmUXkUWbx7zCSISVlo5K2BOMQ6QepGOy4+B2QF7SDTUAEjWEL90iu576
         DNcHTcWRU8hx/8tAEiFJNPi1h7+SyDS9pXerlrWMJCpsr45xHmuOpuETvjWK6R/3VtTD
         2BgpIjRKr51QLlISBhAB6Lk55S0wZ8NO92VWv0R7ejXWpE3kZQPEfCjbditRka+JDF+N
         pp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8yVXoAcou5uEe1QYuqd20Dg7VZh7pflb5n2lxM+HQaw=;
        b=bRkRIWcHtx2VlZYfnc0VFpYm4j32BGJsIaq2Hut1tjgMh/U0bymRpp03T9V3iXXrx0
         Al7mrOAZuay70/M1+Zd3heQjc5+Y6NsqZ5p2vdwAErl+d7cXHFmdTBL6v8yD4m7tLZsF
         +sHvIx5+MzxCwflhmL/0JDMT5t1b2cvq1OKbLCyvEyqq3i4JfV5sycOzHjgyNKpWuvpc
         2OQW8q5yOx6lG9+TB8Hpf6htDcUXeTG4cinYml7dHFOePHSOS3u1rpsCJjFVUXcBhE8H
         SP++XAica8NEfB7ghoAHpMmGAcYzWT1ZiENux5B4q1oxjAOhjMOg0wGgjNqHzrFP8RdL
         yM2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533f/FLUG6sehXLtFSxQtAHGEB2wE8XijViB98JVvTczMJsSY+Gs
	31UnRz2mSltynkIVQVv9Hqc=
X-Google-Smtp-Source: ABdhPJzNcGh90pI/QT3weRqT7LF9vrW9s+I55c60UNlGnzn7YswpjCR84+m3O6psOAjLGv1G0NbO3A==
X-Received: by 2002:a37:9dd3:: with SMTP id g202mr6927266qke.488.1607571552275;
        Wed, 09 Dec 2020 19:39:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c2e:: with SMTP id a14ls861945qvd.9.gmail; Wed, 09
 Dec 2020 19:39:11 -0800 (PST)
X-Received: by 2002:a0c:8e47:: with SMTP id w7mr6513766qvb.55.1607571551744;
        Wed, 09 Dec 2020 19:39:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607571551; cv=none;
        d=google.com; s=arc-20160816;
        b=aSyz/q38HRsWZsTqUFq7RTjeVo0jRst1jRCH5wHLZHoxdobgWdQ2/65KHvITc1KafL
         Yta9G8tgvkWww6VhYnTUOV5bzAJGcB0ANM/NimnRA+kyaXrAG6cJzzjmwlrDCifzY9WZ
         QV2ItjRh0HPahKWjUOnyRbmRTMSQDHciZnA5x+3ldAZ0IaAN1W0oiav5HNj7XeGB5k7b
         XHUSq6WCcNQzQgDxTTQ+jd+Sw3LpmOIPd2wa9FfrtioCv0iGXmKobwOT/5gQADdAOqGP
         RUpGS2ZEvmn9WP/eCkMl3eUERjkzC/DCbnAMCWHF1LI1OtAFK8ArpHSPAhVFQYywQ0Rk
         ZPDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=er1gfrry/zaOCewM0OnDYVeXsDMSz9/0XZaaF43CFX4=;
        b=DxANuGVxwWc6kHhxdMOxzHixaWuaV5MmWyA6Mz9hzMgxsKqYAzHD8rOcatavnZczsW
         RtZUCGn/Xw7PQiGCaOPb4UKE6WKZNxVxSV8sF4GJMtt5YprA4Sqmg7SGCWQvLs+B73r/
         H4OMjwc+9UVTds9rZnHjKUMtTOoWBBHoB7NxU/0NdU9NImZsBkfAacJJ0Q7lJy7n9zAL
         flqrFHeg9kA/MrxMFgj2gsFoo6F+7WseZxeSh5MqSnpG0YGY4K2P52LhYV07qaLb8cUH
         hsmhsFspH0IaN4iLADi2uGko0ztne32+B7bBWDjQLqCP1mPM3QUkyuIG1eiJorAepwum
         mlgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id j44si355855qtc.2.2020.12.09.19.39.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 19:39:11 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: aFDs3GKcD/0Txzt05dxzeDklU8hxsn6z3V6HHhuF4B27iM9qLGiWUpaInHzD0JGJdhBkNgLFMG
 xgjkze0AgRxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="174338399"
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; 
   d="gz'50?scan'50,208,50";a="174338399"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Dec 2020 19:39:09 -0800
IronPort-SDR: vQxWfN3OcqQu01IffxUf0sIk50SmmIZU8oKu3+VxZ1gCQvRV7SfOdDe+ZOG092ZXZpSSDYG+MP
 tXx70d5u2Qng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; 
   d="gz'50?scan'50,208,50";a="540886069"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 09 Dec 2020 19:39:06 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1knCnJ-00000Y-GT; Thu, 10 Dec 2020 03:39:05 +0000
Date: Thu, 10 Dec 2020 11:38:10 +0800
From: kernel test robot <lkp@intel.com>
To: carver4lio@163.com, mingo@redhat.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	juri.lelli@redhat.com, vincent.guittot@linaro.org,
	dietmar.eggemann@arm.com, rostedt@goodmis.org, bsegall@google.com,
	mgorman@suse.de, bristot@redhat.com, linux-kernel@vger.kernel.org,
	carver4lio@163.com
Subject: Re: [PATCH] sched/rt:fix the missing of rt_rq runtime check in
 rt-period timer
Message-ID: <202012101131.uo2Lc9Oz-lkp@intel.com>
References: <20201205033801.6924-1-carver4lio@163.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
In-Reply-To: <20201205033801.6924-1-carver4lio@163.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on tip/sched/core]
[also build test WARNING on v5.10-rc7 next-20201209]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/carver4lio-163-com/sched-r=
t-fix-the-missing-of-rt_rq-runtime-check-in-rt-period-timer/20201205-142057
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 21bf7cb=
d1b100758cc82f5340576028d3d83119b
config: mips-randconfig-r026-20201209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 196880=
4ac726e7674d5de22bc2204b45857da344)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://github.com/0day-ci/linux/commit/65b78641992cb9b9ae024d4b9=
ee02822a7d45167
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review carver4lio-163-com/sched-rt-fix-th=
e-missing-of-rt_rq-runtime-check-in-rt-period-timer/20201205-142057
        git checkout 65b78641992cb9b9ae024d4b9ee02822a7d45167
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dmips=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   kernel/sched/rt.c:669:6: warning: no previous prototype for function 'sc=
hed_rt_bandwidth_account'
   bool sched_rt_bandwidth_account(struct rt_rq
   ^
   kernel/sched/rt.c:669:1: note: declare 'static' if the function is not i=
ntended to be used outside of this translation unit
   bool sched_rt_bandwidth_account(struct rt_rq
   ^
   static
>> kernel/sched/rt.c:583:37: warning: unused function 'sched_rt_period_mask=
'
   static inline const struct cpumask
   ^
   fatal error: error in backend: Nested variants found in inline asm strin=
g: ' .set push
   .set mips64r2
   .if ( 0x00 ) !=3D -1)) 0x00 ) !=3D -1)) : ($( static struct ftrace_branc=
h_data __attribute__((__aligned__(4))) __attribute__((__section__("_ftrace_=
branch"))) __if_trace =3D $( .func =3D __func__, .file =3D "arch/mips/inclu=
de/asm/bitops.h", .line =3D 105, $); 0x00 ) !=3D -1)) : $))) ) && ( 0 ); .s=
et push; .set mips64r2; .rept 1; sync 0x00; .endr; .set pop; .else; ; .endi=
f
   1: ll $0, $1
   or $0, $2
   sc $0, $1
   beqz $0, 1b
   .set pop
   '
   clang-12: error: clang frontend command failed with exit code 70 (use -v=
 to see invocation)
   clang version 12.0.0 (git://gitmirror/llvm_project 1968804ac726e7674d5de=
22bc2204b45857da344)
   Target: mipsel-unknown-linux-gnu
   Thread model: posix
   InstalledDir: /opt/cross/clang-1968804ac7/bin
   clang-12: note: diagnostic msg:
   Makefile arch drivers include kernel scripts source usr

vim +/sched_rt_period_mask +583 kernel/sched/rt.c

23b0fdfc9299b1 kernel/sched_rt.c Peter Zijlstra 2008-02-13  581 =20
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  582  #ifdef CON=
FIG_SMP
c6c4927b22a351 kernel/sched_rt.c Rusty Russell  2008-11-25 @583  static inl=
ine const struct cpumask *sched_rt_period_mask(void)
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  584  {
424c93fe4cbe71 kernel/sched/rt.c Nathan Zimmer  2013-05-09  585  	return th=
is_rq()->rd->span;
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  586  }
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  587  #else
c6c4927b22a351 kernel/sched_rt.c Rusty Russell  2008-11-25  588  static inl=
ine const struct cpumask *sched_rt_period_mask(void)
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  589  {
c6c4927b22a351 kernel/sched_rt.c Rusty Russell  2008-11-25  590  	return cp=
u_online_mask;
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  591  }
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  592  #endif
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  593 =20
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  594  static inl=
ine
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  595  struct rt_=
rq *sched_rt_period_rt_rq(struct rt_bandwidth *rt_b, int cpu)
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  596  {
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  597  	return co=
ntainer_of(rt_b, struct task_group, rt_bandwidth)->rt_rq[cpu];
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  598  }
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  599 =20
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  600  static inl=
ine struct rt_bandwidth *sched_rt_bandwidth(struct rt_rq *rt_rq)
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  601  {
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  602  	return &r=
t_rq->tg->rt_bandwidth;
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  603  }
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  604 =20
55e12e5e7b1d7e kernel/sched_rt.c Dhaval Giani   2008-06-24  605  #else /* !=
CONFIG_RT_GROUP_SCHED */
9f0c1e560c4332 kernel/sched_rt.c Peter Zijlstra 2008-02-13  606 =20
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  607  static inl=
ine u64 sched_rt_runtime(struct rt_rq *rt_rq)
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  608  {
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  609  	return rt=
_rq->rt_runtime;
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  610  }
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  611 =20
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  612  static inl=
ine u64 sched_rt_period(struct rt_rq *rt_rq)
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  613  {
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  614  	return kt=
ime_to_ns(def_rt_bandwidth.rt_period);
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  615  }
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  616 =20
ec514c487c3d4b kernel/sched_rt.c Cheng Xu       2011-05-14  617  typedef st=
ruct rt_rq *rt_rq_iter_t;
ec514c487c3d4b kernel/sched_rt.c Cheng Xu       2011-05-14  618 =20
ec514c487c3d4b kernel/sched_rt.c Cheng Xu       2011-05-14  619  #define fo=
r_each_rt_rq(rt_rq, iter, rq) \
ec514c487c3d4b kernel/sched_rt.c Cheng Xu       2011-05-14  620  	for ((voi=
d) iter, rt_rq =3D &rq->rt; rt_rq; rt_rq =3D NULL)
ec514c487c3d4b kernel/sched_rt.c Cheng Xu       2011-05-14  621 =20
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  622  #define fo=
r_each_sched_rt_entity(rt_se) \
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  623  	for (; rt=
_se; rt_se =3D NULL)
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  624 =20
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  625  static inl=
ine struct rt_rq *group_rt_rq(struct sched_rt_entity *rt_se)
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  626  {
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  627  	return NU=
LL;
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  628  }
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  629 =20
9f0c1e560c4332 kernel/sched_rt.c Peter Zijlstra 2008-02-13  630  static inl=
ine void sched_rt_rq_enqueue(struct rt_rq *rt_rq)
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  631  {
f4ebcbc0d7e009 kernel/sched/rt.c Kirill Tkhai   2014-03-15  632  	struct rq=
 *rq =3D rq_of_rt_rq(rt_rq);
f4ebcbc0d7e009 kernel/sched/rt.c Kirill Tkhai   2014-03-15  633 =20
f4ebcbc0d7e009 kernel/sched/rt.c Kirill Tkhai   2014-03-15  634  	if (!rt_r=
q->rt_nr_running)
f4ebcbc0d7e009 kernel/sched/rt.c Kirill Tkhai   2014-03-15  635  		return;
f4ebcbc0d7e009 kernel/sched/rt.c Kirill Tkhai   2014-03-15  636 =20
f4ebcbc0d7e009 kernel/sched/rt.c Kirill Tkhai   2014-03-15  637  	enqueue_t=
op_rt_rq(rt_rq);
8875125efe8402 kernel/sched/rt.c Kirill Tkhai   2014-06-29  638  	resched_c=
urr(rq);
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  639  }
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  640 =20
9f0c1e560c4332 kernel/sched_rt.c Peter Zijlstra 2008-02-13  641  static inl=
ine void sched_rt_rq_dequeue(struct rt_rq *rt_rq)
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  642  {
f4ebcbc0d7e009 kernel/sched/rt.c Kirill Tkhai   2014-03-15  643  	dequeue_t=
op_rt_rq(rt_rq);
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  644  }
6f505b16425a51 kernel/sched_rt.c Peter Zijlstra 2008-01-25  645 =20
46383648b3c769 kernel/sched/rt.c Kirill Tkhai   2014-03-15  646  static inl=
ine int rt_rq_throttled(struct rt_rq *rt_rq)
46383648b3c769 kernel/sched/rt.c Kirill Tkhai   2014-03-15  647  {
46383648b3c769 kernel/sched/rt.c Kirill Tkhai   2014-03-15  648  	return rt=
_rq->rt_throttled;
46383648b3c769 kernel/sched/rt.c Kirill Tkhai   2014-03-15  649  }
46383648b3c769 kernel/sched/rt.c Kirill Tkhai   2014-03-15  650 =20
c6c4927b22a351 kernel/sched_rt.c Rusty Russell  2008-11-25  651  static inl=
ine const struct cpumask *sched_rt_period_mask(void)
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  652  {
c6c4927b22a351 kernel/sched_rt.c Rusty Russell  2008-11-25  653  	return cp=
u_online_mask;
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  654  }
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  655 =20
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  656  static inl=
ine
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  657  struct rt_=
rq *sched_rt_period_rt_rq(struct rt_bandwidth *rt_b, int cpu)
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  658  {
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  659  	return &c=
pu_rq(cpu)->rt;
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  660  }
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  661 =20
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  662  static inl=
ine struct rt_bandwidth *sched_rt_bandwidth(struct rt_rq *rt_rq)
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  663  {
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  664  	return &d=
ef_rt_bandwidth;
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  665  }
ac086bc22997a2 kernel/sched_rt.c Peter Zijlstra 2008-04-19  666 =20
55e12e5e7b1d7e kernel/sched_rt.c Dhaval Giani   2008-06-24  667  #endif /* =
CONFIG_RT_GROUP_SCHED */
d0b27fa77854b1 kernel/sched_rt.c Peter Zijlstra 2008-04-19  668 =20
faa5993736d9b4 kernel/sched/rt.c Juri Lelli     2014-02-21 @669  bool sched=
_rt_bandwidth_account(struct rt_rq *rt_rq)
faa5993736d9b4 kernel/sched/rt.c Juri Lelli     2014-02-21  670  {
faa5993736d9b4 kernel/sched/rt.c Juri Lelli     2014-02-21  671  	struct rt=
_bandwidth *rt_b =3D sched_rt_bandwidth(rt_rq);
faa5993736d9b4 kernel/sched/rt.c Juri Lelli     2014-02-21  672 =20
faa5993736d9b4 kernel/sched/rt.c Juri Lelli     2014-02-21  673  	return (h=
rtimer_active(&rt_b->rt_period_timer) ||
faa5993736d9b4 kernel/sched/rt.c Juri Lelli     2014-02-21  674  		rt_rq->r=
t_time < rt_b->rt_runtime);
faa5993736d9b4 kernel/sched/rt.c Juri Lelli     2014-02-21  675  }
faa5993736d9b4 kernel/sched/rt.c Juri Lelli     2014-02-21  676 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202012101131.uo2Lc9Oz-lkp%40intel.com.

--r5Pyd7+fXNt84Ff3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
glOzJaYBAA==

--r5Pyd7+fXNt84Ff3--
