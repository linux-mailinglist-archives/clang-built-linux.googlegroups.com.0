Return-Path: <clang-built-linux+bncBDAOBFVI5MIBBYNBTL3QKGQEC6ZGCVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 162011F8AD1
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Jun 2020 23:04:35 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id k70sf2674646vka.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Jun 2020 14:04:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592168674; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vome0pSSxYqvZLVunoCU3nRG2L7QC6QFxPOmszk1FCojB7MzrKj96MNIkEfFuTXtT8
         9wnSMu1kvcRBeXCoDqf3mGRknmFBu8qsy39nzEVRXF3WRMi6vVX2jGgJk11F/QVlpxBi
         XK7NgbJLOw45vHaJyjBMLYU10seJGufjxZzr+MP4DyfQ/86IfiVa8+ORcKWjzrxwCHRz
         XPb63e/40jO2Z2BRzLl0HOsUwvAVNBVc93Jh06XO5y28KlOAPwm0rk13KKu9fFL2j34Y
         0IlvrZJfdhJIOBUh4NG5Q9Sy/s3CW2oYhEIk1ubOSGHsE88XWVgA8oQfFcZne35reTgk
         1waQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :in-reply-to:subject:cc:to:from:user-agent:references:sender
         :dkim-signature;
        bh=QTEAWUnxuofrGk1hXJRm2y7RTYmAsSj+ir0dB542g74=;
        b=FSlOhyIq1YsjYXIfw8XJfQL/utQYNgppgQ+u2QV22OyBK9g/MoaEl1MAVMiFzRpykV
         MmdbUx0z0e8zOVKbyT2RTVlVIPhARu0507hgXpzrf1aM58cEQvYPkZ4rf+TEOt1SSFUs
         KaSWdkf2lFML1/Z5sZs+mBZAjtkTUgD7nEKxNlBocebfhMQjSsvrg+LF6qO14OsCiDCz
         uVLbeUelih4GoA73EnwrfXaF8Ea/Kby0j6sv2yF0iJU7GKBsMsy3J7ZxpnHk/WNtdQfs
         P29sPzCif0v+4sItviJaPsidnzgDgTGC6A+QD03DgZILy8z5LvPatNZrllNVuLpbraCm
         /MbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of valentin.schneider@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=valentin.schneider@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:references:user-agent:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QTEAWUnxuofrGk1hXJRm2y7RTYmAsSj+ir0dB542g74=;
        b=EXRHIZGpncSroxqERb2m5WovDPgzU25WS2RLF9KRGWw79Lyx6ZVqWBeh+CF09T53Wi
         NiBqDI4vsBeHYucm0xcw4tTdPzd6Gb3aHMLF5kOnSw1Rvx1KMRoSPxZ9VyCuAH+lGQww
         SkeMEXIFqnR8Jv1NRRBIH1eBdxJAaC8AdcMyleu07sUNEG+Bvqjr5yic7FW2yZZ8PpQj
         oDA9MwGwhkomKGE1KQGU8kTO4wTeLl0MTlq/kGkbP7gk6ows1J2xl6M/bMMifptjkiBq
         Nqj+LMb7GKtI6ZROxFdZbbJ0Smdl73Encj9XxsGl/gVVrULFiBdhGN6z1aMujp9OPiya
         ZdGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QTEAWUnxuofrGk1hXJRm2y7RTYmAsSj+ir0dB542g74=;
        b=aDsg6lSRE47HBIH+OSJjDdavhWOISGF6+Sat73JcnPeP+MPGVVmbzkrqJ2nqVc2Chz
         lzkbo0kI1tI8KecPLJozY60LQZ06EIJAJi2hG51vuy09KuGkjcF3wkukEck84bPuVnJD
         u1TNC3SLpu4Ic2KJfIDK12pc+fjRtW8RMW8dZhpNgOYIKoAUS/kHGAjwbtQLWVOFG6LE
         Cc1R+Bu9UyP36pPjMN424uOu7AqJhRQTxSDZxtu39ubV1rZE1W82ByBKUQowsw0tgGc8
         kMnq5EaEc6bNOGgEeTzeoqCSxPiRy2FNov4WevctSLMBjLPrS+K/JOUWZ6Os5TNY8Ihi
         nYqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308dyky3IG2G5drVFR6NO+pGYBNuxWWAekfpqfyiniwRbmdXonl
	/JkH3PgdokaGyqEoQ2DBvzU=
X-Google-Smtp-Source: ABdhPJxogIcwPrn84ayjZkV4ITthtwKkjYSz3Ib/VneCHf6QgjMsnZSf63BiLhCgR4iDe7O7lK+zdQ==
X-Received: by 2002:a67:1104:: with SMTP id 4mr8013762vsr.50.1592168673960;
        Sun, 14 Jun 2020 14:04:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fdd7:: with SMTP id l23ls1205737vsq.4.gmail; Sun, 14 Jun
 2020 14:04:33 -0700 (PDT)
X-Received: by 2002:a67:2d16:: with SMTP id t22mr17941351vst.160.1592168673583;
        Sun, 14 Jun 2020 14:04:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592168673; cv=none;
        d=google.com; s=arc-20160816;
        b=0/C7PP0qXqZ5lKsrmzQBAmiyO2oHJYa7/e2wsfAnu321jTvOHpgK1WEjIvhCOsu8Ij
         gjPoFzA5aEZFIiyWJc+VqKQFhgLkKuZgTd5U25KQM4dfiLJCEhJNm2k4FBZaGb4+LWnz
         7GaLwlCbIE0hpQFCd0k+dR10gs6X3X82ZMme6xCwGe/d1E+XXNUeZIJp2uzbzpf+3WFk
         jeaUzPyg7SsVS3cRsGv3ek0bdfZdZvkKocEpgDNREcmAbw7qKol8Z9FqYdWPywGzEY0c
         YsvqW+4UXwAEeui6+VNca22VU8y5Io2VMPo7VgfnzqDddbWW9/8dmh6LSj9MZrIgclC6
         zh9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:in-reply-to:subject:cc:to:from
         :user-agent:references;
        bh=HuhNlLJpSZ5MtmbwNlFabrbYR69eoyDa/A2Yg+C1brE=;
        b=hDLqS6p5f2gn7ZP5uotfVrEpd/wHqfkXznTL18jdn3BXkjAROb/v7hsWMmGiEdcio1
         xaRGZlQ5NEoAFj9GBynrAMIH0R/ufKdA+tHrdnDhXe/fMu1Myn6CLuu8kRoX2g8neO5J
         Ko+kGxsghQbt7TcCWCAvTyjYXmxSo2Uo5QhHA7dDtOW4hIoMWqSysD+sUaFmfqHwaVll
         51GvbP36V9D9FZMyhVH89taOxyhYAsPjSJ3K0ZGXxw1ZHpSagLLuBk5j4UZgZ+gtqRaK
         hkqSERf0MBVhAeE3OmJrFctCIh0jTWov/oCYrKwAXl/aJZ4sb+9z01Ov9CHkZIGZ/YEd
         1CGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of valentin.schneider@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=valentin.schneider@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t9si788719vkb.1.2020.06.14.14.04.33
        for <clang-built-linux@googlegroups.com>;
        Sun, 14 Jun 2020 14:04:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of valentin.schneider@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79B911F1;
	Sun, 14 Jun 2020 14:04:32 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD24A3F71F;
	Sun, 14 Jun 2020 14:04:30 -0700 (PDT)
References: <20200614010755.9129-2-valentin.schneider@arm.com> <202006141541.YN3AhUnc%lkp@intel.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: kernel test robot <lkp@intel.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Russell King <linux@armlinux.org.uk>, Thara Gopinath <thara.gopinath@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>, Amit Daniel Kachhap <amit.kachhap@gmail.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH 1/3] thermal/cpu-cooling, sched/core: Cleanup thermal pressure definition
In-reply-to: <202006141541.YN3AhUnc%lkp@intel.com>
Date: Sun, 14 Jun 2020 22:04:23 +0100
Message-ID: <jhjlfkp1hrc.mognet@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: valentin.schneider@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of valentin.schneider@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=valentin.schneider@arm.com
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


On 14/06/20 08:39, kernel test robot wrote:
> Hi Valentin,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on tip/auto-latest]
> [also build test WARNING on driver-core/driver-core-testing tip/sched/core arm/for-next arm64/for-next/core soc/for-next linus/master v5.7 next-20200613]
> [cannot apply to linux/master]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Valentin-Schneider/sched-arch_topology-Thermal-pressure-configuration-cleanup/20200614-091051
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 8dc697d75c13ee2901d1a40f1d7d58163048c204
> config: arm64-randconfig-r013-20200614 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cb5072d1877b38c972f95092db2cedbcddb81da6)
> reproduce (this is a W=1 build):

Ah, W=1! I thought I was going nuts.

If desired, I can add a declaration in cpu_cooling.h, similar to what we
have for the arch_set_freq_scale() stub.

>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
>>> drivers/base/arch_topology.c:59:6: warning: no previous prototype for function 'arch_set_thermal_pressure' [-Wmissing-prototypes]
> void arch_set_thermal_pressure(const struct cpumask *cpus,
> ^
> drivers/base/arch_topology.c:59:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> void arch_set_thermal_pressure(const struct cpumask *cpus,
> ^
> static
> 1 warning generated.
>
> vim +/arch_set_thermal_pressure +59 drivers/base/arch_topology.c
>
>     58
>   > 59	void arch_set_thermal_pressure(const struct cpumask *cpus,
>     60				       unsigned long th_pressure)
>     61	{
>     62		int cpu;
>     63
>     64		for_each_cpu(cpu, cpus)
>     65			WRITE_ONCE(per_cpu(thermal_pressure, cpu), th_pressure);
>     66	}
>     67
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/jhjlfkp1hrc.mognet%40arm.com.
