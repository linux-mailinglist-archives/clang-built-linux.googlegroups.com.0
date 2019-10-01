Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBAH6ZLWAKGQEPBZJHRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 340B9C2C11
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 04:50:42 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id v15sf12354141ybs.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 19:50:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569898241; cv=pass;
        d=google.com; s=arc-20160816;
        b=viiLMOX/K4iSrlRapeQBGNgPJr+FEA1GoN0YDCG+QqjrQ0NmZ1ojzzZ/gK1fHOP+ng
         ZMdjLxsuvN2NQuiz+M/WzBerZuLldotBu6yBFG5Wsom0qz23SfrKC8NVZorsgrRuEDuF
         xAh1aNKEUvJtEJs2y2bgz4hpUp/bdXwCEMqcrLD936SwCCC/5H2xAb4g3s/g5uPvN9v2
         a3APmhoTQ09G9B6KT0mO4coPCRfoHqwLe3TNFQ/5YBi4uIRGqC4Txt6KFz66QWxkNzGB
         Z/RmSAdnlHsr/2DkUpdBLFOkKoNdoPqHXGBkvTH/ZsNZjEIEtZC4KTdPAUrdYRkuhQZ3
         +jNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Gn5qo6oZfu74ZQ0qY8bXelZvMaqSSkltgM97eAJC1/8=;
        b=0wUZnOFEk2GUMYCWHDZ9ojKB4e4DpIFKNUzO1y0cJCslWBN4uRU57jAmXDZbv0On1a
         r+JfgJ4/pbeoOBtlwPtHSZgTOjFWS5YvOFW3qGyvxS77h4UJKnzdk0lIWlQA8Pf6Wne0
         /mNo9La4OI4fOh5cZCblZTNczZdNW1dWVTgGT4Ro/hCGiJLEetdv6If7jTMKtJX3XZVo
         +3LFtYQg5x0qEAzVhTcM1G19monOPxK3I5+znb3Y2uoUX++XfmuOB9zhr3ERhnV1speS
         74NbGHSHHjSIi3KPAHw0Z+RYYXjag7JPCs8fzJXUoLW7WehIPuYh3gf9888H7ukBQqqr
         zkRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gn5qo6oZfu74ZQ0qY8bXelZvMaqSSkltgM97eAJC1/8=;
        b=f223Bdh4G5w5pkH9FOR8+UrHmuvkr/inXgAH0RClZeRId8G8BpjMPGlxpNVUFkkwlM
         dmEsDrtYau2LfCw0CHv/m5cbyzKkU8JrcYjYqZ7oAaF237U1Ku/wHBME1ZRshxqqjQOl
         VEmn93g1E76otABrzMRi8gElqaUi1EkrKXuZ/krJarQvd6F6gBHxukqMMKAF+B8lzkNU
         A2V7VOMy47RkJaYBdGQhy2Dee4APXYC0hZqsMVOW7mAN0XG/qeeEzn8IOqP7j3bd0kEt
         zn2nddvCc20t+hSbqJObapy+0Yo6AIEAyPuycfaqRiDii7KvSGJ8W4/Lx0WbqlU09DtR
         8k6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gn5qo6oZfu74ZQ0qY8bXelZvMaqSSkltgM97eAJC1/8=;
        b=JAhNQFxClm4DNn17sqChDGstRUmHoOgOlgRYJ91hZHcDiD4xD7SOuEpPj6HMAUOubE
         jVDBccpfToKVaXlLT393OtbLVZ5uoJPF0LKhdnWFWr7dMroDo9nXyQCw5K/cqOxULe0W
         eG7ws0kGs5yhotNzuIpwjCyVXrPbLGd08ocTnd7vqLE3qo/JINX6kGlXRAukDKXpA5bT
         NiCiga7QRbnbK43CUvQdTgLIt6TzX0MdBNndR7ZMjQTdsYXHyRpK1pNOVO4WbR5fO+TS
         Ed64/B7Un6cfqUK52VAld+xrFxvKO6oSSujP1TiF8QvfyLd/Gg9NgM1Io9CQP3EWUwmM
         663w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEixQERC4Lq4xf6YCHGjtjGoP7kxZmA9vTeJxA3LIFYPqKM4h2
	QfdnQ/WLE9xb+JXP0hg7aJQ=
X-Google-Smtp-Source: APXvYqznXkRq+3fJqBdLeepHWrpFTFVo2d3Dh3gRXVzw4vFc7GpdYqmvZ0k8Bp+yzpZ+c8BA0qYe8A==
X-Received: by 2002:a81:ae0a:: with SMTP id m10mr14866999ywh.322.1569898241054;
        Mon, 30 Sep 2019 19:50:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7a82:: with SMTP id v124ls2474503ybc.15.gmail; Mon, 30
 Sep 2019 19:50:40 -0700 (PDT)
X-Received: by 2002:a25:c7c9:: with SMTP id w192mr17783679ybe.476.1569898240516;
        Mon, 30 Sep 2019 19:50:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569898240; cv=none;
        d=google.com; s=arc-20160816;
        b=oFE/TRXCLulIpLkzrImWTaXWsDDxaBfk6NNZGItjy+aoso5BD3dz3og4eA44YJh29m
         C04AN3+Yd2m5lHHb6gTS6bEVLE0aPeYpo12+qbDh3LnEi5uprGqTTQ6Un262+WgA9t8n
         Bi3vfLlJWXvGyfiCQf4vAShQhwXPBisJjFpbIf0lng7osJ0zGQ7aDz+a7UEhP6EVAPZ2
         W1NUov55QMtAZFaBO4ucxSnQN6UsqJgVzlX9sfcCuEaIFYzQTwEDdn6HaoKtbY6sYS8A
         TKJ9v8TmUgW5PTG6edskHRxBtVFon0KasRnWj/dUnebiFsPf5+7SY+lCjxsXOy7AO+ao
         nqKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=yzSopugzuH7L1nJ8UMWw4tTZFBOrX8nSbXDsNbbudwc=;
        b=fs2yo19IvIB37thLk7aw044FvFc5MffcAGE1lXwIbKXdJjti4wo3Jd/BQWC1GWYHJc
         uNjiKLUHXOY2VOp+hrF+dbqkBt19XpR5c05NVhwe6LoDgxxGJjmjMHAH7bFEyZUHshff
         im3VpqSEF7WtsvYwAbZZ1YBXZkyxl4Zj7p/0FKn04R/xENjdEGvUgBjgfwKBCJ9xWhke
         96/wzLOHjZwXJE2I0aABd60RrHonZWGiwbXRPhvMOWNYO13vRYsQCu0k04Is1Fxb8NUq
         T65Q5hJqeRyCLhCmBI4ewPWZe/kmDQiRDnMss4Wn9TNcKP8vbmvng9CE/i3AThk799tT
         39mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id w13si820894ybe.4.2019.09.30.19.50.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Sep 2019 19:50:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Sep 2019 19:50:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,569,1559545200"; 
   d="gz'50?scan'50,208,50";a="194387096"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 30 Sep 2019 19:50:36 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iF8FH-000Erf-Nk; Tue, 01 Oct 2019 10:50:35 +0800
Date: Tue, 1 Oct 2019 10:50:27 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/3] perf/core: Provide a kernel-internal interface to
 recalibrate event period
Message-ID: <201910011051.098R6m6t%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="xv2z3qh5wsvec22m"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--xv2z3qh5wsvec22m
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
In-Reply-To: <20190930072257.43352-2-like.xu@linux.intel.com>
References: <20190930072257.43352-2-like.xu@linux.intel.com>
TO: Like Xu <like.xu@linux.intel.com>
CC: Paolo Bonzini <pbonzini@redhat.com>, kvm@vger.kernel.org, rkrcmar@redha=
t.com, sean.j.christopherson@intel.com, vkuznets@redhat.com, peterz@infrade=
ad.org, Jim Mattson <jmattson@google.com>, Ingo Molnar <mingo@redhat.com>, =
Arnaldo Carvalho de Melo <acme@kernel.org>, ak@linux.intel.com, wei.w.wang@=
intel.com, kan.liang@intel.com, like.xu@intel.com, ehankland@google.com, ar=
bel.moshe@oracle.com, linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redh=
at.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, ak@linux.intel.com, we=
i.w.wang@intel.com, kan.liang@intel.com, like.xu@intel.com, ehankland@googl=
e.com, arbel.moshe@oracle.com, linux-kernel@vger.kernel.org
CC: Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.o=
rg>, ak@linux.intel.com, wei.w.wang@intel.com, kan.liang@intel.com, like.xu=
@intel.com, ehankland@google.com, arbel.moshe@oracle.com, linux-kernel@vger=
.kernel.org

Hi Like,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on kvm/linux-next]
[cannot apply to v5.4-rc1 next-20190930]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Like-Xu/perf-core-Provide-=
a-kernel-internal-interface-to-recalibrate-event-period/20191001-081543
base:   https://git.kernel.org/pub/scm/virt/kvm/kvm.git linux-next
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project e6f98c0073a78c=
89cfcba4eaacbc3eec83923719)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=3Darm64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   aarch64-linux-gnu-ld: init/do_mounts.o: in function `perf_event_period':
>> do_mounts.c:(.text+0x0): multiple definition of `perf_event_period'; ini=
t/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: init/noinitramfs.o: in function `perf_event_period=
':
   noinitramfs.c:(.text+0x0): multiple definition of `perf_event_period'; i=
nit/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: arch/arm64/kernel/process.o: in function `perf_eve=
nt_period':
   process.c:(.text+0x0): multiple definition of `perf_event_period'; init/=
main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: arch/arm64/kernel/ptrace.o: in function `perf_even=
t_period':
   ptrace.c:(.text+0x0): multiple definition of `perf_event_period'; init/m=
ain.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: arch/arm64/kernel/signal.o: in function `perf_even=
t_period':
   signal.c:(.text+0x0): multiple definition of `perf_event_period'; init/m=
ain.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: arch/arm64/kernel/sys.o: in function `perf_event_p=
eriod':
   sys.c:(.text+0x0): multiple definition of `perf_event_period'; init/main=
.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: arch/arm64/kernel/traps.o: in function `perf_event=
_period':
   traps.c:(.text+0x0): multiple definition of `perf_event_period'; init/ma=
in.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: arch/arm64/kernel/syscall.o: in function `perf_eve=
nt_period':
   syscall.c:(.text+0x0): multiple definition of `perf_event_period'; init/=
main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: arch/arm64/mm/fault.o: in function `perf_event_per=
iod':
   fault.c:(.text+0x0): multiple definition of `perf_event_period'; init/ma=
in.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/fork.o: in function `perf_event_period':
   fork.c:(.text+0x0): multiple definition of `perf_event_period'; init/mai=
n.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/exec_domain.o: in function `perf_event_peri=
od':
   exec_domain.c:(.text+0x0): multiple definition of `perf_event_period'; i=
nit/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/cpu.o: in function `perf_event_period':
   cpu.c:(.text+0x0): multiple definition of `perf_event_period'; init/main=
.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/exit.o: in function `perf_event_period':
   exit.c:(.text+0x0): multiple definition of `perf_event_period'; init/mai=
n.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sysctl.o: in function `perf_event_period':
   sysctl.c:(.text+0x0): multiple definition of `perf_event_period'; init/m=
ain.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sysctl_binary.o: in function `perf_event_pe=
riod':
   sysctl_binary.c:(.text+0x0): multiple definition of `perf_event_period';=
 init/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/capability.o: in function `perf_event_perio=
d':
   capability.c:(.text+0x0): multiple definition of `perf_event_period'; in=
it/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/ptrace.o: in function `perf_event_period':
   ptrace.c:(.text+0x0): multiple definition of `perf_event_period'; init/m=
ain.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/signal.o: in function `perf_event_period':
   signal.c:(.text+0x0): multiple definition of `perf_event_period'; init/m=
ain.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sys.o: in function `perf_event_period':
   sys.c:(.text+0x0): multiple definition of `perf_event_period'; init/main=
.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/umh.o: in function `perf_event_period':
   umh.c:(.text+0x0): multiple definition of `perf_event_period'; init/main=
.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/pid.o: in function `perf_event_period':
   pid.c:(.text+0x0): multiple definition of `perf_event_period'; init/main=
.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/nsproxy.o: in function `perf_event_period':
   nsproxy.c:(.text+0x0): multiple definition of `perf_event_period'; init/=
main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/reboot.o: in function `perf_event_period':
   reboot.c:(.text+0x0): multiple definition of `perf_event_period'; init/m=
ain.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/core.o: in function `perf_event_perio=
d':
   core.c:(.text+0x0): multiple definition of `perf_event_period'; init/mai=
n.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/loadavg.o: in function `perf_event_pe=
riod':
   loadavg.c:(.text+0x0): multiple definition of `perf_event_period'; init/=
main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/clock.o: in function `perf_event_peri=
od':
   clock.c:(.text+0x0): multiple definition of `perf_event_period'; init/ma=
in.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/cputime.o: in function `perf_event_pe=
riod':
   cputime.c:(.text+0x0): multiple definition of `perf_event_period'; init/=
main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/idle.o: in function `perf_event_perio=
d':
   idle.c:(.text+0x0): multiple definition of `perf_event_period'; init/mai=
n.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/fair.o: in function `perf_event_perio=
d':
   fair.c:(.text+0x0): multiple definition of `perf_event_period'; init/mai=
n.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/rt.o: in function `perf_event_period'=
:
   rt.c:(.text+0x0): multiple definition of `perf_event_period'; init/main.=
o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/deadline.o: in function `perf_event_p=
eriod':
   deadline.c:(.text+0x0): multiple definition of `perf_event_period'; init=
/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/wait.o: in function `perf_event_perio=
d':
   wait.c:(.text+0x0): multiple definition of `perf_event_period'; init/mai=
n.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/wait_bit.o: in function `perf_event_p=
eriod':
   wait_bit.c:(.text+0x0): multiple definition of `perf_event_period'; init=
/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/swait.o: in function `perf_event_peri=
od':
   swait.c:(.text+0x0): multiple definition of `perf_event_period'; init/ma=
in.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/completion.o: in function `perf_event=
_period':
   completion.c:(.text+0x0): multiple definition of `perf_event_period'; in=
it/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/cpupri.o: in function `perf_event_per=
iod':
   cpupri.c:(.text+0x0): multiple definition of `perf_event_period'; init/m=
ain.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/cpudeadline.o: in function `perf_even=
t_period':
   cpudeadline.c:(.text+0x0): multiple definition of `perf_event_period'; i=
nit/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/topology.o: in function `perf_event_p=
eriod':
   topology.c:(.text+0x0): multiple definition of `perf_event_period'; init=
/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/stop_task.o: in function `perf_event_=
period':
   stop_task.c:(.text+0x0): multiple definition of `perf_event_period'; ini=
t/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/sched/pelt.o: in function `perf_event_perio=
d':
   pelt.c:(.text+0x0): multiple definition of `perf_event_period'; init/mai=
n.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/power/qos.o: in function `perf_event_period=
':
   qos.c:(.text+0x0): multiple definition of `perf_event_period'; init/main=
.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/printk/printk.o: in function `perf_event_pe=
riod':
   printk.c:(.text+0x0): multiple definition of `perf_event_period'; init/m=
ain.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/rcu/tree.o: in function `perf_event_period'=
:
   tree.c:(.text+0x0): multiple definition of `perf_event_period'; init/mai=
n.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/time/time.o: in function `perf_event_period=
':
   time.c:(.text+0x0): multiple definition of `perf_event_period'; init/mai=
n.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/time/timer.o: in function `perf_event_perio=
d':
   timer.c:(.text+0x0): multiple definition of `perf_event_period'; init/ma=
in.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/time/hrtimer.o: in function `perf_event_per=
iod':
   hrtimer.c:(.text+0x0): multiple definition of `perf_event_period'; init/=
main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/time/posix-stubs.o: in function `perf_event=
_period':
   posix-stubs.c:(.text+0x0): multiple definition of `perf_event_period'; i=
nit/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: kernel/time/tick-common.o: in function `perf_event=
_period':
   tick-common.c:(.text+0x0): multiple definition of `perf_event_period'; i=
nit/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: mm/fadvise.o: in function `perf_event_period':
   fadvise.c:(.text+0x0): multiple definition of `perf_event_period'; init/=
main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: mm/page-writeback.o: in function `perf_event_perio=
d':
   page-writeback.c:(.text+0x0): multiple definition of `perf_event_period'=
; init/main.o:main.c:(.text+0x0): first defined here
   aarch64-linux-gnu-ld: mm/readahead.o: in function `perf_event_period':
   readahead.c:(.text+0x0): multiple definition of `perf_event_period'; ini=
t/main.o:main.c:(.text+0x0): first defined here

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201910011051.098R6m6t%25lkp%40intel.com.

--xv2z3qh5wsvec22m
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--xv2z3qh5wsvec22m--
