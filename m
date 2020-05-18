Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBN57RT3AKGQEHODZZ3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4AC1D8BDA
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 01:52:24 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id b29sf11501201ilb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 16:52:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589845943; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZnHtnPoYS+kWuwJRqBQdjBO6tMkDL7odqb2xgVL0vr+hI/yrD9B9DA1u8UUXxdYs2n
         k+UZpMhLJJcjJLCts+M787+37VVtfBioVJkzK4I5VjOT3qb2YXBIWNm8/HUOHtSV/HAy
         1fw+bYlKyCYACBA1Jv/Eup+beRIU4sNzsKggLXypi0LjP7TgmZACo61ugZRMXsOIeZaY
         Cu7auxOzySFfoJwwiEAWIOB4Ast7wGkI1M9kbTgfK7HyxPYcK/qsb+ptpvtSj3jb1li5
         NO8bUcbmDEQKXopKUT6EYGh+9Jnb/pELAFAUwmf4v7PsaIPIJMwBtoHCcmfA9otC83MD
         SxFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=26Rr1gp48ll/eohOFUCCOUPq57PgOY+Tinn/zlJrBNQ=;
        b=j6cZWYlNquLjofIfdKTsOoh6bYrrnrTG5dUlJlY5XgQvxs/Pw/jZFDdx7qibuFqH/Q
         S0+Ha/7yGp7NZewZByojlRayWpAs0pt/efHLn4b7pUVfQaDONdOcRbg3WkabRhVs/IaI
         jmYhDu8QNOTi4toy3Yj2aIJP6dEqtjAKqgQm8PwnmlR2NxdkCR5JaMut1JOQPNBlYp5S
         ukww3msBmOTmu2xri5bUngoBIGQl+jFSGIA8YOe4tUqqntMsTifEvwujrugZc+rpXRm5
         3Dh/D5FSzXrOI7UkvlGCD9UImDSv51pbhAxEukZ20KrSkTyfg6NNwQ9cztlnsjUkIhn8
         HO6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=26Rr1gp48ll/eohOFUCCOUPq57PgOY+Tinn/zlJrBNQ=;
        b=mWD3zagVYnk9KJQFr3DoSiDtiJzEBdwG6b8i1LdLegi38+0lIPuCERfJk2qDIPvBiP
         2UJT91yHoWVrGjCpquLIS2hik+OjMTDItRgf7W62iCXPeODlO33j0YLBIB7pOXawylSW
         PEORn6J5FV1j7s2Ahu1O/Os0X/RvSYJ8DwTFy1gihtmRhYWwG5fptIqQtqJnSkdCTd6M
         0fK+wOOggENUMxGJ6pGcD6veYT4KVWiDlFaH1ee2EDSZzv6va8NbyfoMpeVMHtkLHx9h
         efLoYAEqLWHaLTXUzObJskVcSxeL2YmiFVI7t18/9mR4MyJca9ioG0HlPnAjgfPWX/HC
         ixdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=26Rr1gp48ll/eohOFUCCOUPq57PgOY+Tinn/zlJrBNQ=;
        b=O1BIcSwGkSPnz93Nm+7Fj/mR76ZuGTBEnSWi68lmpFSrXsmcADLj3iaFmyHR8q6vyt
         iWJsMUU1E2e4zNjz2O/NUoeg1hPqiTmU2LuAwKWucf1hMcUy+kCxtM6jmA/rQNnPDhyC
         HE06SlzVXRtCab30c1YgNBLmVUO4IhF9S+vJHJW+eLgirZmsICXWFqiT0SNMqmQnWo/+
         Oxtz+yDz5HME/pKu09djdg848BMxkEh8BeajendZuzjttZTwIxEHkyUygWCbQ4F0eQvz
         EeVTSkAezIzTflxLw6Ps6eXqV+yfaLtGawjyO4QR+qKNACCnQrmnSxjY+f0i+hLaKzmX
         xcZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306GhcTKkXvvEChG8GcNO26gxu85OyzTMzu0mMXl0RSFc4f4YYd
	lm6t5Xu14NvpqJXmRYlV34U=
X-Google-Smtp-Source: ABdhPJwp58hIn5iGpk0UesQD0jWw+palEc9+sjB2srd5uJ7pg1/hOFmrDn8Cw5GR3rVOND4ikCSk7g==
X-Received: by 2002:a92:9f4b:: with SMTP id u72mr17482717ili.273.1589845943475;
        Mon, 18 May 2020 16:52:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f85:: with SMTP id r127ls1400510jac.3.gmail; Mon, 18
 May 2020 16:52:23 -0700 (PDT)
X-Received: by 2002:a02:cf9e:: with SMTP id w30mr18132127jar.101.1589845943125;
        Mon, 18 May 2020 16:52:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589845943; cv=none;
        d=google.com; s=arc-20160816;
        b=ky4P26CdcWiI2DFnh7/6bT7Dp7kRg4HFCr/jk/bSy4Hu2tJgGWBieEKsI1ujcdB9lh
         0X4onXsmdhBArjjROtcJtz8E3aCtCnvssFyY5PodQUHkayd1NVdzAbi5aWjP+X+DP2a1
         fMFS9s/WdqQRxPWYEPtHZ9ZmtkyLfUlhbsYfSPYEq/j19da8/2nY2F/nhFeMq0SZUgsz
         TehMso6/IIrgk7epHgqPae2hRjdfei7FkWfg17YP649xMTFbtL75b6Bnc90zUbJ5XVqh
         ooFFkOgHcgjWmNR8Uw3dUsvWh1IgT+gFpY1OmtdvqDLRwBLW0t5ZrVqFsLjdI5kRcJ1b
         qHiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=lSUjCRRelGnCy9q/s+dvhE6m8rWUUb4Jh6TJl9v0Q5Y=;
        b=MhBxeJ2jQj9ZnA259y/eYqlrdSkPX86GQNxG1dSU4GMY48ou41ijCSWs4Fqv5q0ymn
         Zfa6Nv1jcZyN6vwaCZzUlrOfWfdrO1ytyrsfEm1gC29wU413gUsHbGDp4bexhtH+fim1
         1L8s6Y6xMOS8AhC3YKSSENAFBgWIifz9wIzbUF3bhZPIS1BJnsWCtLe4F1NCS3G8tts/
         IQBcv5izfKXfvqZ5Lt/UG/2r+ZC/x6xQ5V0n+yytNwCla/dJxcOZR8POS6/x122MKBSv
         WSMfPwDr1dxj5WlipYGcWEhyBursSb8o92qkDaEQbrRp6a9LRACDJ3QN/LXE25kPuoN0
         mXsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id m17si720407ioc.2.2020.05.18.16.52.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 16:52:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: qE1RmTa7MFq11rEzfl+qSJCs0E+GOzrhV2i/47SDCgUAvZd2ojvluQ0Vn/8s5D7XAIk6OXBkLR
 qXfSdL3tp9Iw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 May 2020 16:52:22 -0700
IronPort-SDR: CK+xquN6vSg7i4UgPP3gwJSPa8rI99JcEtTjGPJ8zQDqXMPNl/50c2tvhNpuPycgK6zgtGw3oA
 UzC5Ghu8sGTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,408,1583222400"; 
   d="scan'208";a="465935580"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga006.fm.intel.com with ESMTP; 18 May 2020 16:52:20 -0700
Date: Tue, 19 May 2020 07:51:01 +0800
From: Philip Li <philip.li@intel.com>
To: Sumit Garg <sumit.garg@linaro.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: [RFC] arm64: Enable perf events based hard
 lockup detector
Message-ID: <20200518235100.GA30480@intel.com>
References: <1589532593-16428-1-git-send-email-sumit.garg@linaro.org>
 <202005160303.4pIJwjQx%lkp@intel.com>
 <CAFA6WYMnv5xgFSa+2UbqVW7MPfSGvsQ5MdeUwh1aX-WXKc0T_A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFA6WYMnv5xgFSa+2UbqVW7MPfSGvsQ5MdeUwh1aX-WXKc0T_A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, May 18, 2020 at 11:25:37AM +0530, Sumit Garg wrote:
> Hi,
> 
> On Sat, 16 May 2020 at 01:21, kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Sumit,
> >
> > [FYI, it's a private test report for your RFC patch.]
> > [auto build test ERROR on arm64/for-next/core]
> > [also build test ERROR on arm-soc/for-next arm/for-next kvmarm/next linus/master v5.7-rc5 next-20200515]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> 
> This isn't a correct report as it doesn't take in account the
> dependency of this patch on other patch-set [1] mentioned after "---".
thanks for the input, kindly ignore this false report. So far,
the bot is not able to parse base info like this, thus leads
to false positive.

> 
> [1] https://patchwork.kernel.org/cover/11047407/
> 
> -Sumit
> 
> > url:    https://github.com/0day-ci/linux/commits/Sumit-Garg/arm64-Enable-perf-events-based-hard-lockup-detector/20200515-165226
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
> > config: arm64-randconfig-r025-20200515 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 9d4cf5bd421fb6467ff5f00e26a37527246dd4d6)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> >
> > drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> > irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> > ^~~~~~~~~~~
> > cpu_map_ops
> > include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> > #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> > ^
> > include/linux/percpu-defs.h:235:20: note: expanded from macro 'per_cpu_ptr'
> > __verify_pcpu_ptr(ptr);                                                                      ^
> > include/linux/percpu-defs.h:219:47: note: expanded from macro '__verify_pcpu_ptr'
> > const void __percpu *__vpp_verify = (typeof((ptr) + 0))NULL;                                                            ^
> > include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> > BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> > ^
> > drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> > irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> > ^~~~~~~~~~~
> > cpu_map_ops
> > include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> > #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> > ^
> > include/linux/percpu-defs.h:236:20: note: expanded from macro 'per_cpu_ptr'
> > SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                                              ^
> > include/linux/percpu-defs.h:231:23: note: expanded from macro 'SHIFT_PERCPU_PTR'
> > RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> > ^
> > include/linux/compiler.h:165:31: note: expanded from macro 'RELOC_HIDE'
> > __ptr = (unsigned long) (ptr);                                                              ^
> > include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> > BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> > ^
> > drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> > irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> > ^~~~~~~~~~~
> > cpu_map_ops
> > include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> > #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> > ^
> > include/linux/percpu-defs.h:236:20: note: expanded from macro 'per_cpu_ptr'
> > SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                                              ^
> > include/linux/percpu-defs.h:231:49: note: expanded from macro 'SHIFT_PERCPU_PTR'
> > RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> > ^
> > include/linux/compiler.h:165:31: note: expanded from macro 'RELOC_HIDE'
> > __ptr = (unsigned long) (ptr);                                                              ^
> > include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> > BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> > ^
> > drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> > irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> > ^~~~~~~~~~~
> > cpu_map_ops
> > include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> > #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> > ^
> > include/linux/percpu-defs.h:236:20: note: expanded from macro 'per_cpu_ptr'
> > SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                                              ^
> > include/linux/percpu-defs.h:231:23: note: expanded from macro 'SHIFT_PERCPU_PTR'
> > RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> > ^
> > include/linux/compiler.h:166:13: note: expanded from macro 'RELOC_HIDE'
> > (typeof(ptr)) (__ptr + (off)); })
> > ^
> > include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> > BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> > ^
> > drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> > irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> > ^~~~~~~~~~~
> > cpu_map_ops
> > include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> > #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> > ^
> > include/linux/percpu-defs.h:236:20: note: expanded from macro 'per_cpu_ptr'
> > SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                                              ^
> > include/linux/percpu-defs.h:231:49: note: expanded from macro 'SHIFT_PERCPU_PTR'
> > RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> > ^
> > include/linux/compiler.h:166:13: note: expanded from macro 'RELOC_HIDE'
> > (typeof(ptr)) (__ptr + (off)); })
> > ^
> > include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> > BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> > ^
> > >> drivers/perf/arm_pmu.c:613:10: error: assigning to 'const struct pmu_irq_ops *' from incompatible type 'typeof (*((&(cpu_map_ops))))' (aka 'const struct bpf_map_ops')
> > irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> > ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/perf/arm_pmu.c:614:18: error: use of undeclared identifier 'pmunmi_ops'
> > if (irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops)
> > ^
> > drivers/perf/arm_pmu.c:614:44: error: use of undeclared identifier 'percpu_pmunmi_ops'
> > if (irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops)
> > ^
> > 8 errors generated.
> >
> > vim +613 drivers/perf/arm_pmu.c
> >
> >    608
> >    609  bool arm_pmu_irq_is_nmi(void)
> >    610  {
> >    611          const struct pmu_irq_ops *irq_ops;
> >    612
> >  > 613          irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> >    614          if (irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops)
> >    615                  return true;
> >    616          else
> >    617                  return false;
> >    618  }
> >    619
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518235100.GA30480%40intel.com.
