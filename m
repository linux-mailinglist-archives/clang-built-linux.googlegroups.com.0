Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFMAR7WAKGQENNICHXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E86BB8070
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 19:51:19 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id m3sf6303268ion.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 10:51:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568915478; cv=pass;
        d=google.com; s=arc-20160816;
        b=I7ty645IAQpXfhByiIOGFB7Ho/VqAHg5FWtQau6QrhVAv7xuWGgskcRkZ1/vuBvJUP
         Um3QqndxNxJNskT68T5+DugcpKKXFkN4HwxMLh487UWsQSQTr+uhMLkNY3c8DWrL9VVp
         opCrqv2D0HjVZZDbpEGPWXZxaJPhHhNmBGh03dqAJIaPpmnJrk6cBnZHy1Ecl9YDt86h
         Cx95pJjKjUpo3kJGMfwJdhc+baWoQlRFNHeX42X42YzW/d657cu46nxmxpiPoyUJXfOz
         kt5Z8liQ1NgR3ugcsXe/GqKQINVhdyV26+JAux6VEIsy4owPtGSSMjFpym6dlSp+CpJC
         0Arg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wirwpwBUqf/ZhaCh6iXZVY0/qXNn21ISU47P10DqoaY=;
        b=dqIRCUBClqQy6ggHAhurYUwxwbf8AP0dCtFJOdjGcijOWeeOpxOgcO4rdQggkJvvJo
         i/5tTjLgsi2TEgTm7otDg528odVaZZZQAnXmhQcWWlG40VaEMyIxVeoMqbrHsno0cwUi
         KTea6rDP4MM7P6UCSCta+51OgBp01KRaFmZV2AtTuUtIlEMPBQROiBXZ8JvPFWAKJkih
         0DfHjJBa27B2xK4iVVNjTrnogooWinkCdz2OoKvY60WFSQVrYlQNs5hqZhjc3Z/UTmHf
         u60Ky8jYnxOoopVNAc3ZB2BJ0DcPCGFLU4ItwRZUwQDkdW6jX94odKtq8HuZnShxnYgV
         /uSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wirwpwBUqf/ZhaCh6iXZVY0/qXNn21ISU47P10DqoaY=;
        b=NmQQadEfW+mCQ9fLN47+HURCky/VJR8fx/pykBArBjVY5ZsZOmycERjdfzUJL2EPWD
         1D8fvNGFvp3SBGE6rfaSHkbMeso5faNmMqKKaAA80VLpYhjYT72t4eVElZ8KkffwmDJm
         LWTtR8r9HoMEnfWRzlFEQ2lKdhDsXZk+Ke+Cj+GS+K5AzptfNfxNv2MBVq1yxRt+6ztp
         Hr4hP2u5jjn3qFz6+i3F30l6CQheizikt4tQs7g0x93WZ/Rl6wjnUWj5tLDELFrlbsfl
         xRRqZ/GHQ0WSTLCFkyhY1ggsTsWkIX1KuviuF+2YtZWykNGtLqpP1YhG9hSZzPBkZ2bW
         JEwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wirwpwBUqf/ZhaCh6iXZVY0/qXNn21ISU47P10DqoaY=;
        b=QWVvNGChe3LHjM0+IxG+UXYiGxnQYM2z5Vl2XgqEFOhkrwEiv2bKFlc2PkY+g7iDs5
         syzY1Qem9DDzPo2xmnH7clz1QJGMQfMDniQ9mMUK+YIRqPbnqojGP+5HzNOxwb/7FJzo
         MM6cIhRXNxFtlywzUeD/uFhhavKbT8iXqA2757gEXv6wIuhsiKYLFAQVG53CRQxLELJK
         6UcbJ0dUzLRYEBDf4ipOFXWlXq9svY/jfww478fVXIbUdqvs8czbming6PDfIAggDcn5
         SeVKege+79htaeyCE0FwnsW5n2OEswCOxNBeEw1q7O3hb/4s+cJTKNkTGOVBeplL7v/Z
         bgsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXuOoSxpPBq/Thy4kNt9PRtaYfY+oq2Kq02ErYSAjEAmFY/32cP
	QsqQrr2hpQICiRQfAaAnGbU=
X-Google-Smtp-Source: APXvYqyv8UmEfx/Nv2OUsMfw6/lvrYEGBXNgdDQ2atNsb95Rq7q6iFekBfD7kI7UafuU1Y2oUBJJsA==
X-Received: by 2002:a6b:f80f:: with SMTP id o15mr4180748ioh.174.1568915477469;
        Thu, 19 Sep 2019 10:51:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:9108:: with SMTP id t8ls1304192iod.14.gmail; Thu, 19 Sep
 2019 10:51:17 -0700 (PDT)
X-Received: by 2002:a6b:4a19:: with SMTP id w25mr4816460iob.115.1568915477025;
        Thu, 19 Sep 2019 10:51:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568915477; cv=none;
        d=google.com; s=arc-20160816;
        b=IA8JysAONtlvhBw5KMZuuqQW2Z0zEmyIaOrFcGv6jopWuKi3Up8ct1VXXp2mpvhcZ5
         lt1AyEMW3OkgAe99mGR2TqpLjoWohUqwyxH5oGnr3Q7u2uWzm2e1RwfiE/oOvt6h5Uiv
         OOIkaxu1yEzWWtj7//Q/BNd8IxfjoiSwbi1dqeR4QXCksJloHhc9NyxyJig3/S+yvODa
         14ATqGoxCmzOpuvlJk8xALbzPnFYVBgPl2HX399fMnmxacMZCxHlJSJYbUPNJtWMaY6l
         59aeoRqSKxMEHM59S6jksoLinVrwIq6wKy3+ZA9eHhYLLJKt5/YFlqGapZg+godv/DB6
         f3wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=txJlVijr76RQO7rLkoWH+MlTs5cv9vV8PJCprVxXzFY=;
        b=ILbd/XnarfReAGdenQ5H1sqHMUobMPFPQe3i7RnNmk6iAFfkk78SoCqSg3w+Tq+kbd
         fkLPdiKF2YDVEbL1VzgQMsA8zpBWPznTDwFez3sELxz7bcwyMDABAkiT1tHs8FFqR8j0
         9/PMhSo66foEzDa7dCXP1XdvWS99OfRgwSvQ/9RyI8+AGrbVMmSza1LIHQsG5kW0oFI7
         cfvn6FSxJufKEZlh7ZIlW2P9A2yITOEEiFrUH8Hf1G70bkG6BubCuAGhmRK6adctCEd8
         T0M3iti5S7lXbrDkXhN0ECObQVdynjGrHSSpOP0AXM1Toz/u4tCDX/VvbTeOj/KnMHc9
         dobQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id f11si961151iok.4.2019.09.19.10.51.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Sep 2019 10:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Sep 2019 10:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; 
   d="gz'50?scan'50,208,50";a="202327900"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2019 10:51:14 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iB0aH-0009nq-LW; Fri, 20 Sep 2019 01:51:13 +0800
Date: Fri, 20 Sep 2019 01:50:07 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [sashal-linux-stable:queue-4.4 44/48]
 arch/x86/kernel/cpu/perf_event_intel.c:3334:24: warning: incompatible
 pointer types assigning to 'unsigned int (*)(struct perf_event *, unsigned
 int)' from 'u64 (struct perf_event *, u64)' (aka 'unsigned long long (struct
 perf_event *, unsigned long long)')
Message-ID: <201909200103.gHBR3wjM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5oug45guwrrz2lth"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--5oug45guwrrz2lth
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
BCC: philip.li@intel.com
TO: Alexander Levin <alexander.levin@microsoft.com>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/sashal/lin=
ux-stable.git queue-4.4
head:   06534e6c5ad9cd70c9fac5518a797d6dd19061f9
commit: 0ccb0e93d589d66a336d1b7ee1e7a2bc47777f4f [44/48] perf/x86/intel: Re=
strict period on Nehalem
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f=
77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout 0ccb0e93d589d66a336d1b7ee1e7a2bc47777f4f
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/x86/kernel/cpu/perf_event_intel.c:3334:24: warning: incompatible po=
inter types assigning to 'unsigned int (*)(struct perf_event *, unsigned in=
t)' from 'u64 (struct perf_event *, u64)' (aka 'unsigned long long (struct =
perf_event *, unsigned long long)') [-Wincompatible-pointer-types]
                   x86_pmu.limit_period =3D nhm_limit_period;
                                        ^ ~~~~~~~~~~~~~~~~
   1 warning generated.

vim +3334 arch/x86/kernel/cpu/perf_event_intel.c

  3232=09
  3233	__init int intel_pmu_init(void)
  3234	{
  3235		union cpuid10_edx edx;
  3236		union cpuid10_eax eax;
  3237		union cpuid10_ebx ebx;
  3238		struct event_constraint *c;
  3239		unsigned int unused;
  3240		struct extra_reg *er;
  3241		int version, i;
  3242=09
  3243		if (!cpu_has(&boot_cpu_data, X86_FEATURE_ARCH_PERFMON)) {
  3244			switch (boot_cpu_data.x86) {
  3245			case 0x6:
  3246				return p6_pmu_init();
  3247			case 0xb:
  3248				return knc_pmu_init();
  3249			case 0xf:
  3250				return p4_pmu_init();
  3251			}
  3252			return -ENODEV;
  3253		}
  3254=09
  3255		/*
  3256		 * Check whether the Architectural PerfMon supports
  3257		 * Branch Misses Retired hw_event or not.
  3258		 */
  3259		cpuid(10, &eax.full, &ebx.full, &unused, &edx.full);
  3260		if (eax.split.mask_length < ARCH_PERFMON_EVENTS_COUNT)
  3261			return -ENODEV;
  3262=09
  3263		version =3D eax.split.version_id;
  3264		if (version < 2)
  3265			x86_pmu =3D core_pmu;
  3266		else
  3267			x86_pmu =3D intel_pmu;
  3268=09
  3269		x86_pmu.version			=3D version;
  3270		x86_pmu.num_counters		=3D eax.split.num_counters;
  3271		x86_pmu.cntval_bits		=3D eax.split.bit_width;
  3272		x86_pmu.cntval_mask		=3D (1ULL << eax.split.bit_width) - 1;
  3273=09
  3274		x86_pmu.events_maskl		=3D ebx.full;
  3275		x86_pmu.events_mask_len		=3D eax.split.mask_length;
  3276=09
  3277		x86_pmu.max_pebs_events		=3D min_t(unsigned, MAX_PEBS_EVENTS, x86_p=
mu.num_counters);
  3278=09
  3279		/*
  3280		 * Quirk: v2 perfmon does not report fixed-purpose events, so
  3281		 * assume at least 3 events:
  3282		 */
  3283		if (version > 1)
  3284			x86_pmu.num_counters_fixed =3D max((int)edx.split.num_counters_fix=
ed, 3);
  3285=09
  3286		if (boot_cpu_has(X86_FEATURE_PDCM)) {
  3287			u64 capabilities;
  3288=09
  3289			rdmsrl(MSR_IA32_PERF_CAPABILITIES, capabilities);
  3290			x86_pmu.intel_cap.capabilities =3D capabilities;
  3291		}
  3292=09
  3293		intel_ds_init();
  3294=09
  3295		x86_add_quirk(intel_arch_events_quirk); /* Install first, so it run=
s last */
  3296=09
  3297		/*
  3298		 * Install the hw-cache-events table:
  3299		 */
  3300		switch (boot_cpu_data.x86_model) {
  3301		case 14: /* 65nm Core "Yonah" */
  3302			pr_cont("Core events, ");
  3303			break;
  3304=09
  3305		case 15: /* 65nm Core2 "Merom"          */
  3306			x86_add_quirk(intel_clovertown_quirk);
  3307		case 22: /* 65nm Core2 "Merom-L"        */
  3308		case 23: /* 45nm Core2 "Penryn"         */
  3309		case 29: /* 45nm Core2 "Dunnington (MP) */
  3310			memcpy(hw_cache_event_ids, core2_hw_cache_event_ids,
  3311			       sizeof(hw_cache_event_ids));
  3312=09
  3313			intel_pmu_lbr_init_core();
  3314=09
  3315			x86_pmu.event_constraints =3D intel_core2_event_constraints;
  3316			x86_pmu.pebs_constraints =3D intel_core2_pebs_event_constraints;
  3317			pr_cont("Core2 events, ");
  3318			break;
  3319=09
  3320		case 30: /* 45nm Nehalem    */
  3321		case 26: /* 45nm Nehalem-EP */
  3322		case 46: /* 45nm Nehalem-EX */
  3323			memcpy(hw_cache_event_ids, nehalem_hw_cache_event_ids,
  3324			       sizeof(hw_cache_event_ids));
  3325			memcpy(hw_cache_extra_regs, nehalem_hw_cache_extra_regs,
  3326			       sizeof(hw_cache_extra_regs));
  3327=09
  3328			intel_pmu_lbr_init_nhm();
  3329=09
  3330			x86_pmu.event_constraints =3D intel_nehalem_event_constraints;
  3331			x86_pmu.pebs_constraints =3D intel_nehalem_pebs_event_constraints;
  3332			x86_pmu.enable_all =3D intel_pmu_nhm_enable_all;
  3333			x86_pmu.extra_regs =3D intel_nehalem_extra_regs;
> 3334			x86_pmu.limit_period =3D nhm_limit_period;
  3335=09
  3336			x86_pmu.cpu_events =3D nhm_events_attrs;
  3337=09
  3338			/* UOPS_ISSUED.STALLED_CYCLES */
  3339			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_FRONTEND] =3D
  3340				X86_CONFIG(.event=3D0x0e, .umask=3D0x01, .inv=3D1, .cmask=3D1);
  3341			/* UOPS_EXECUTED.CORE_ACTIVE_CYCLES,c=3D1,i=3D1 */
  3342			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_BACKEND] =3D
  3343				X86_CONFIG(.event=3D0xb1, .umask=3D0x3f, .inv=3D1, .cmask=3D1);
  3344=09
  3345			intel_pmu_pebs_data_source_nhm();
  3346			x86_add_quirk(intel_nehalem_quirk);
  3347=09
  3348			pr_cont("Nehalem events, ");
  3349			break;
  3350=09
  3351		case 28: /* 45nm Atom "Pineview"   */
  3352		case 38: /* 45nm Atom "Lincroft"   */
  3353		case 39: /* 32nm Atom "Penwell"    */
  3354		case 53: /* 32nm Atom "Cloverview" */
  3355		case 54: /* 32nm Atom "Cedarview"  */
  3356			memcpy(hw_cache_event_ids, atom_hw_cache_event_ids,
  3357			       sizeof(hw_cache_event_ids));
  3358=09
  3359			intel_pmu_lbr_init_atom();
  3360=09
  3361			x86_pmu.event_constraints =3D intel_gen_event_constraints;
  3362			x86_pmu.pebs_constraints =3D intel_atom_pebs_event_constraints;
  3363			pr_cont("Atom events, ");
  3364			break;
  3365=09
  3366		case 55: /* 22nm Atom "Silvermont"                */
  3367		case 76: /* 14nm Atom "Airmont"                   */
  3368		case 77: /* 22nm Atom "Silvermont Avoton/Rangely" */
  3369			memcpy(hw_cache_event_ids, slm_hw_cache_event_ids,
  3370				sizeof(hw_cache_event_ids));
  3371			memcpy(hw_cache_extra_regs, slm_hw_cache_extra_regs,
  3372			       sizeof(hw_cache_extra_regs));
  3373=09
  3374			intel_pmu_lbr_init_atom();
  3375=09
  3376			x86_pmu.event_constraints =3D intel_slm_event_constraints;
  3377			x86_pmu.pebs_constraints =3D intel_slm_pebs_event_constraints;
  3378			x86_pmu.extra_regs =3D intel_slm_extra_regs;
  3379			x86_pmu.flags |=3D PMU_FL_HAS_RSP_1;
  3380			pr_cont("Silvermont events, ");
  3381			break;
  3382=09
  3383		case 37: /* 32nm Westmere    */
  3384		case 44: /* 32nm Westmere-EP */
  3385		case 47: /* 32nm Westmere-EX */
  3386			memcpy(hw_cache_event_ids, westmere_hw_cache_event_ids,
  3387			       sizeof(hw_cache_event_ids));
  3388			memcpy(hw_cache_extra_regs, nehalem_hw_cache_extra_regs,
  3389			       sizeof(hw_cache_extra_regs));
  3390=09
  3391			intel_pmu_lbr_init_nhm();
  3392=09
  3393			x86_pmu.event_constraints =3D intel_westmere_event_constraints;
  3394			x86_pmu.enable_all =3D intel_pmu_nhm_enable_all;
  3395			x86_pmu.pebs_constraints =3D intel_westmere_pebs_event_constraints=
;
  3396			x86_pmu.extra_regs =3D intel_westmere_extra_regs;
  3397			x86_pmu.flags |=3D PMU_FL_HAS_RSP_1;
  3398=09
  3399			x86_pmu.cpu_events =3D nhm_events_attrs;
  3400=09
  3401			/* UOPS_ISSUED.STALLED_CYCLES */
  3402			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_FRONTEND] =3D
  3403				X86_CONFIG(.event=3D0x0e, .umask=3D0x01, .inv=3D1, .cmask=3D1);
  3404			/* UOPS_EXECUTED.CORE_ACTIVE_CYCLES,c=3D1,i=3D1 */
  3405			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_BACKEND] =3D
  3406				X86_CONFIG(.event=3D0xb1, .umask=3D0x3f, .inv=3D1, .cmask=3D1);
  3407=09
  3408			intel_pmu_pebs_data_source_nhm();
  3409			pr_cont("Westmere events, ");
  3410			break;
  3411=09
  3412		case 42: /* 32nm SandyBridge         */
  3413		case 45: /* 32nm SandyBridge-E/EN/EP */
  3414			x86_add_quirk(intel_sandybridge_quirk);
  3415			x86_add_quirk(intel_ht_bug);
  3416			memcpy(hw_cache_event_ids, snb_hw_cache_event_ids,
  3417			       sizeof(hw_cache_event_ids));
  3418			memcpy(hw_cache_extra_regs, snb_hw_cache_extra_regs,
  3419			       sizeof(hw_cache_extra_regs));
  3420=09
  3421			intel_pmu_lbr_init_snb();
  3422=09
  3423			x86_pmu.event_constraints =3D intel_snb_event_constraints;
  3424			x86_pmu.pebs_constraints =3D intel_snb_pebs_event_constraints;
  3425			x86_pmu.pebs_aliases =3D intel_pebs_aliases_snb;
  3426			if (boot_cpu_data.x86_model =3D=3D 45)
  3427				x86_pmu.extra_regs =3D intel_snbep_extra_regs;
  3428			else
  3429				x86_pmu.extra_regs =3D intel_snb_extra_regs;
  3430=09
  3431=09
  3432			/* all extra regs are per-cpu when HT is on */
  3433			x86_pmu.flags |=3D PMU_FL_HAS_RSP_1;
  3434			x86_pmu.flags |=3D PMU_FL_NO_HT_SHARING;
  3435=09
  3436			x86_pmu.cpu_events =3D snb_events_attrs;
  3437=09
  3438			/* UOPS_ISSUED.ANY,c=3D1,i=3D1 to count stall cycles */
  3439			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_FRONTEND] =3D
  3440				X86_CONFIG(.event=3D0x0e, .umask=3D0x01, .inv=3D1, .cmask=3D1);
  3441			/* UOPS_DISPATCHED.THREAD,c=3D1,i=3D1 to count stall cycles*/
  3442			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_BACKEND] =3D
  3443				X86_CONFIG(.event=3D0xb1, .umask=3D0x01, .inv=3D1, .cmask=3D1);
  3444=09
  3445			pr_cont("SandyBridge events, ");
  3446			break;
  3447=09
  3448		case 58: /* 22nm IvyBridge       */
  3449		case 62: /* 22nm IvyBridge-EP/EX */
  3450			x86_add_quirk(intel_ht_bug);
  3451			memcpy(hw_cache_event_ids, snb_hw_cache_event_ids,
  3452			       sizeof(hw_cache_event_ids));
  3453			/* dTLB-load-misses on IVB is different than SNB */
  3454			hw_cache_event_ids[C(DTLB)][C(OP_READ)][C(RESULT_MISS)] =3D 0x8108=
; /* DTLB_LOAD_MISSES.DEMAND_LD_MISS_CAUSES_A_WALK */
  3455=09
  3456			memcpy(hw_cache_extra_regs, snb_hw_cache_extra_regs,
  3457			       sizeof(hw_cache_extra_regs));
  3458=09
  3459			intel_pmu_lbr_init_snb();
  3460=09
  3461			x86_pmu.event_constraints =3D intel_ivb_event_constraints;
  3462			x86_pmu.pebs_constraints =3D intel_ivb_pebs_event_constraints;
  3463			x86_pmu.pebs_aliases =3D intel_pebs_aliases_snb;
  3464			if (boot_cpu_data.x86_model =3D=3D 62)
  3465				x86_pmu.extra_regs =3D intel_snbep_extra_regs;
  3466			else
  3467				x86_pmu.extra_regs =3D intel_snb_extra_regs;
  3468			/* all extra regs are per-cpu when HT is on */
  3469			x86_pmu.flags |=3D PMU_FL_HAS_RSP_1;
  3470			x86_pmu.flags |=3D PMU_FL_NO_HT_SHARING;
  3471=09
  3472			x86_pmu.cpu_events =3D snb_events_attrs;
  3473=09
  3474			/* UOPS_ISSUED.ANY,c=3D1,i=3D1 to count stall cycles */
  3475			intel_perfmon_event_map[PERF_COUNT_HW_STALLED_CYCLES_FRONTEND] =3D
  3476				X86_CONFIG(.event=3D0x0e, .umask=3D0x01, .inv=3D1, .cmask=3D1);
  3477=09
  3478			pr_cont("IvyBridge events, ");
  3479			break;
  3480=09
  3481=09
  3482		case 60: /* 22nm Haswell Core */
  3483		case 63: /* 22nm Haswell Server */
  3484		case 69: /* 22nm Haswell ULT */
  3485		case 70: /* 22nm Haswell + GT3e (Intel Iris Pro graphics) */
  3486			x86_add_quirk(intel_ht_bug);
  3487			x86_pmu.late_ack =3D true;
  3488			memcpy(hw_cache_event_ids, hsw_hw_cache_event_ids, sizeof(hw_cache=
_event_ids));
  3489			memcpy(hw_cache_extra_regs, hsw_hw_cache_extra_regs, sizeof(hw_cac=
he_extra_regs));
  3490=09
  3491			intel_pmu_lbr_init_hsw();
  3492=09
  3493			x86_pmu.event_constraints =3D intel_hsw_event_constraints;
  3494			x86_pmu.pebs_constraints =3D intel_hsw_pebs_event_constraints;
  3495			x86_pmu.extra_regs =3D intel_snbep_extra_regs;
  3496			x86_pmu.pebs_aliases =3D intel_pebs_aliases_snb;
  3497			/* all extra regs are per-cpu when HT is on */
  3498			x86_pmu.flags |=3D PMU_FL_HAS_RSP_1;
  3499			x86_pmu.flags |=3D PMU_FL_NO_HT_SHARING;
  3500=09
  3501			x86_pmu.hw_config =3D hsw_hw_config;
  3502			x86_pmu.get_event_constraints =3D hsw_get_event_constraints;
  3503			x86_pmu.cpu_events =3D hsw_events_attrs;
  3504			x86_pmu.lbr_double_abort =3D true;
  3505			pr_cont("Haswell events, ");
  3506			break;
  3507=09
  3508		case 61: /* 14nm Broadwell Core-M */
  3509		case 86: /* 14nm Broadwell Xeon D */
  3510		case 71: /* 14nm Broadwell + GT3e (Intel Iris Pro graphics) */
  3511		case 79: /* 14nm Broadwell Server */
  3512			x86_pmu.late_ack =3D true;
  3513			memcpy(hw_cache_event_ids, hsw_hw_cache_event_ids, sizeof(hw_cache=
_event_ids));
  3514			memcpy(hw_cache_extra_regs, hsw_hw_cache_extra_regs, sizeof(hw_cac=
he_extra_regs));
  3515=09
  3516			/* L3_MISS_LOCAL_DRAM is BIT(26) in Broadwell */
  3517			hw_cache_extra_regs[C(LL)][C(OP_READ)][C(RESULT_MISS)] =3D HSW_DEM=
AND_READ |
  3518										 BDW_L3_MISS|HSW_SNOOP_DRAM;
  3519			hw_cache_extra_regs[C(LL)][C(OP_WRITE)][C(RESULT_MISS)] =3D HSW_DE=
MAND_WRITE|BDW_L3_MISS|
  3520										  HSW_SNOOP_DRAM;
  3521			hw_cache_extra_regs[C(NODE)][C(OP_READ)][C(RESULT_ACCESS)] =3D HSW=
_DEMAND_READ|
  3522										     BDW_L3_MISS_LOCAL|HSW_SNOOP_DRAM;
  3523			hw_cache_extra_regs[C(NODE)][C(OP_WRITE)][C(RESULT_ACCESS)] =3D HS=
W_DEMAND_WRITE|
  3524										      BDW_L3_MISS_LOCAL|HSW_SNOOP_DRAM;
  3525=09
  3526			intel_pmu_lbr_init_hsw();
  3527=09
  3528			x86_pmu.event_constraints =3D intel_bdw_event_constraints;
  3529			x86_pmu.pebs_constraints =3D intel_hsw_pebs_event_constraints;
  3530			x86_pmu.extra_regs =3D intel_snbep_extra_regs;
  3531			x86_pmu.pebs_aliases =3D intel_pebs_aliases_snb;
  3532			/* all extra regs are per-cpu when HT is on */
  3533			x86_pmu.flags |=3D PMU_FL_HAS_RSP_1;
  3534			x86_pmu.flags |=3D PMU_FL_NO_HT_SHARING;
  3535=09
  3536			x86_pmu.hw_config =3D hsw_hw_config;
  3537			x86_pmu.get_event_constraints =3D hsw_get_event_constraints;
  3538			x86_pmu.cpu_events =3D hsw_events_attrs;
  3539			x86_pmu.limit_period =3D bdw_limit_period;
  3540			pr_cont("Broadwell events, ");
  3541			break;
  3542=09
  3543		case 78: /* 14nm Skylake Mobile */
  3544		case 94: /* 14nm Skylake Desktop */
  3545			x86_pmu.late_ack =3D true;
  3546			memcpy(hw_cache_event_ids, skl_hw_cache_event_ids, sizeof(hw_cache=
_event_ids));
  3547			memcpy(hw_cache_extra_regs, skl_hw_cache_extra_regs, sizeof(hw_cac=
he_extra_regs));
  3548			intel_pmu_lbr_init_skl();
  3549=09
  3550			x86_pmu.event_constraints =3D intel_skl_event_constraints;
  3551			x86_pmu.pebs_constraints =3D intel_skl_pebs_event_constraints;
  3552			x86_pmu.extra_regs =3D intel_skl_extra_regs;
  3553			x86_pmu.pebs_aliases =3D intel_pebs_aliases_snb;
  3554			/* all extra regs are per-cpu when HT is on */
  3555			x86_pmu.flags |=3D PMU_FL_HAS_RSP_1;
  3556			x86_pmu.flags |=3D PMU_FL_NO_HT_SHARING;
  3557=09
  3558			x86_pmu.hw_config =3D hsw_hw_config;
  3559			x86_pmu.get_event_constraints =3D hsw_get_event_constraints;
  3560			x86_pmu.format_attrs =3D merge_attr(intel_arch3_formats_attr,
  3561							  skl_format_attr);
  3562			WARN_ON(!x86_pmu.format_attrs);
  3563			x86_pmu.cpu_events =3D hsw_events_attrs;
  3564			pr_cont("Skylake events, ");
  3565			break;
  3566=09
  3567		default:
  3568			switch (x86_pmu.version) {
  3569			case 1:
  3570				x86_pmu.event_constraints =3D intel_v1_event_constraints;
  3571				pr_cont("generic architected perfmon v1, ");
  3572				break;
  3573			default:
  3574				/*
  3575				 * default constraints for v2 and up
  3576				 */
  3577				x86_pmu.event_constraints =3D intel_gen_event_constraints;
  3578				pr_cont("generic architected perfmon, ");
  3579				break;
  3580			}
  3581		}
  3582=09
  3583		if (x86_pmu.num_counters > INTEL_PMC_MAX_GENERIC) {
  3584			WARN(1, KERN_ERR "hw perf events %d > max(%d), clipping!",
  3585			     x86_pmu.num_counters, INTEL_PMC_MAX_GENERIC);
  3586			x86_pmu.num_counters =3D INTEL_PMC_MAX_GENERIC;
  3587		}
  3588		x86_pmu.intel_ctrl =3D (1 << x86_pmu.num_counters) - 1;
  3589=09
  3590		if (x86_pmu.num_counters_fixed > INTEL_PMC_MAX_FIXED) {
  3591			WARN(1, KERN_ERR "hw perf events fixed %d > max(%d), clipping!",
  3592			     x86_pmu.num_counters_fixed, INTEL_PMC_MAX_FIXED);
  3593			x86_pmu.num_counters_fixed =3D INTEL_PMC_MAX_FIXED;
  3594		}
  3595=09
  3596		x86_pmu.intel_ctrl |=3D
  3597			((1LL << x86_pmu.num_counters_fixed)-1) << INTEL_PMC_IDX_FIXED;
  3598=09
  3599		if (x86_pmu.event_constraints) {
  3600			/*
  3601			 * event on fixed counter2 (REF_CYCLES) only works on this
  3602			 * counter, so do not extend mask to generic counters
  3603			 */
  3604			for_each_event_constraint(c, x86_pmu.event_constraints) {
  3605				if (c->cmask =3D=3D FIXED_EVENT_FLAGS
  3606				    && c->idxmsk64 !=3D INTEL_PMC_MSK_FIXED_REF_CYCLES) {
  3607					c->idxmsk64 |=3D (1ULL << x86_pmu.num_counters) - 1;
  3608				}
  3609				c->idxmsk64 &=3D
  3610					~(~0ULL << (INTEL_PMC_IDX_FIXED + x86_pmu.num_counters_fixed));
  3611				c->weight =3D hweight64(c->idxmsk64);
  3612			}
  3613		}
  3614=09
  3615		/*
  3616		 * Access LBR MSR may cause #GP under certain circumstances.
  3617		 * E.g. KVM doesn't support LBR MSR
  3618		 * Check all LBT MSR here.
  3619		 * Disable LBR access if any LBR MSRs can not be accessed.
  3620		 */
  3621		if (x86_pmu.lbr_nr && !check_msr(x86_pmu.lbr_tos, 0x3UL))
  3622			x86_pmu.lbr_nr =3D 0;
  3623		for (i =3D 0; i < x86_pmu.lbr_nr; i++) {
  3624			if (!(check_msr(x86_pmu.lbr_from + i, 0xffffUL) &&
  3625			      check_msr(x86_pmu.lbr_to + i, 0xffffUL)))
  3626				x86_pmu.lbr_nr =3D 0;
  3627		}
  3628=09
  3629		/*
  3630		 * Access extra MSR may cause #GP under certain circumstances.
  3631		 * E.g. KVM doesn't support offcore event
  3632		 * Check all extra_regs here.
  3633		 */
  3634		if (x86_pmu.extra_regs) {
  3635			for (er =3D x86_pmu.extra_regs; er->msr; er++) {
  3636				er->extra_msr_access =3D check_msr(er->msr, 0x11UL);
  3637				/* Disable LBR select mapping */
  3638				if ((er->idx =3D=3D EXTRA_REG_LBR) && !er->extra_msr_access)
  3639					x86_pmu.lbr_sel_map =3D NULL;
  3640			}
  3641		}
  3642=09
  3643		/* Support full width counters using alternative MSR range */
  3644		if (x86_pmu.intel_cap.full_width_write) {
  3645			x86_pmu.max_period =3D x86_pmu.cntval_mask >> 1;
  3646			x86_pmu.perfctr =3D MSR_IA32_PMC0;
  3647			pr_cont("full-width counters, ");
  3648		}
  3649=09
  3650		return 0;
  3651	}
  3652=09

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
clang-built-linux/201909200103.gHBR3wjM%25lkp%40intel.com.

--5oug45guwrrz2lth
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICCa7g10AAy5jb25maWcAlDzLduQ2rvt8RZ3OXcwskrbdTk/n3OMFJVFVTImiQlLlKm90
HHd14hM/Mn5k0n9/AVIPkKKcuVmkLQCkSBAA8VJ9+823K/b68nh//XJ7c31393X16/Hh+HT9
cvy8+nJ7d/zfVaFWtbIrXgj7PRBXtw+vf73/69PH7uP56vz78+9Pf/yw2h6fHo53q/zx4cvt
r68w+vbx4Ztvv8lVXYo1EGbCXnwdHvdubPA8PYjaWN3mVqi6K3iuCq4nZMN12fEdr60BQsur
rq1zpflEoVrbtLYrlZbMXrw73n35eP4dLPa7j+fvBhqm8w3MXfrHi3fXTze/4Ybe37jlP/eb
6z4fv3jIOLJS+bbgTWfaplGabMlYlm+tZjmf4zZsx7uKWV7nB6sSg6Vsp4ea86IrJOska3Ba
yyOcWTt0xeu13Uy4Na+5FnknDEP8HJG16ySw0xwWJ2CNjUKeajMn21xysd6QJTsWSnbwm2vy
rizyCasvDZfdPt+sWVF0rForLexGzufNWSUyDXuE46jYIZp/w0yXN61b4D6FY/kGOCtqYLq4
4hHHDbdtgxLj5mCas4iRA4rLDJ5KoY3t8k1bbxfoGrbmaTK/IpFxXTMnuI0yRmQVj0hMaxpe
F0voS1bbbtPCWxoJ57xhOknhmMcqR2mrbCK5UsAJOPsPZ2RYC2rrBs/W4qTQdKqxQgL7CtAo
4KWo10uUBUdxQTawCjQh4rfXR7ufKXpnZLM0ZdtolXEicaXYd5zp6gDPneREZpq1ZcAzEPwd
r8zF+QAfFRkkwYDKv7+7/eX9/ePn17vj8/v/aWsmOUoQZ4a//z7SZ6F/7i6VJkeZtaIqgCG8
43v/PuN1FazZt6u1M413q+fjy+sfk30DrtmO1zvYHK5CgrH7cDYgcw2n3eVKNgJO/N07mGbA
eFhnubGr2+fVw+MLzkyMDat2oI8gUTguAYbjtSo6hy1IIRzE+ko0aUwGmLM0qrqiloNi9ldL
IxbeX10RCx+uaWQAXRBlQEyAy3oLv796e7R6G32eYD5IFWsrUEdlLIrQxbt/PDw+HP85HoO5
ZIS/5mB2oslnAPw3txWRYmVAwuXPLW95Gjob4gUIdEHpQ8cs3DREl8sNqwtqSVrDwaZGBiA6
IqeDDoHvAmWOyNNQsD42MCMOaDXng3qAOq2eX395/vr8cryf1GO8mkDbnL4nbi1AmY26nGPQ
YIJNQgriJAB5oSQTdQoGphgMJOzxMJ9OGhFOFSGmaUc5IRM7C5iQFiQBlyMHI2o3cNMUgRU1
DdOGh6/N0ZUwqoUxnq+Fiu0uJSmYZenBO7hCC7xBK4YX0yGvEux1Bm03O9bxGsb5vFv1JrLL
tGJFDi96m0wCq1jxU5ukkwrNfuEdGyc29vb++PSckhwr8m0HtxqIBpmqVt3mCq2nVMFBARDu
aqEKkScV3o8ToC6JI/TIsnX8iYYgFNyY6o1ZHQkw+K3ZiRaCNwWXknEH4xwuxwjwMt7b6+ff
Vy/AkdX1w+fV88v1y/Pq+ubm8fXh5fbh14k1O6Gt92zyXLW1DSQugcQDINecKVAVcw6WBWjs
MqbbfZiQlpkt+qQmBHnvLZrIIfYJmFDhmt3Wdd6uTEIAwLp0gKNnAo9wOcNJpy5N44npersA
hKNhC3BaowCN1zF4MHu0aODL+6WRqzrEeW1PysOwZEebkgXE1SrP8IDCdQ1Q+KPm8ZZH5BXX
6QstoFoS14F7YLt5lymVYqJzgrpM1GfkRhPbPl6aQZy8TOBK4Qwl2HNR2ouzEwrHlUm2J/jT
0VFyV1ML4Z93u8C3L7xVWXIe6xbioIxVrM7nXqtzlTO0rDBNW2M0Bc5yV1atWXSFwYU9PftE
DM3CC0L46CvwGldeEIlaa9U2JhAkB1q8SHp0CTJ0RQPfHt6IwsyABd+JnBh94DHEPoQOjweH
9pjZBAAO1dRFOk5D6RrAA8nX0WPkBk2wOTM8bhv49P0CZpHMsF0I92dAJxjEAWJCd0lMXsKF
Bd7RpShooAyWMUmeVdv+FfS8fMwz4ZbP7BJiXJ4xKq7wgnzromo09jZIVKBTCY5BToOfFoWa
PKMDSZ/h9HQAwEOlzzW3wbNXIgwSZhuDu6rEkK7RPIe7uEgZqjAmRyaArLloRxPGuWcmYTbv
kpBYRRdRHAKAKPwASBh1AIAGGw6vomcSWuT5GMGiUXYyg8mfOg8saEyGCYPU9RH53gwsMWxQ
FfSYvKESxSlJW/mBYFlz3rgUgLP+0ZgmN80Wllgxi2skrG2InPu7jZx6+CYJpkagJJCXg/pI
vFpnHp4/5QlMjx/X22MSnNgC2Bwk2fYA6YI3NBrEOwigiY3gVdmF+bllFkB8Prhfg2q3cOeS
yRoVbE2sa1aVRBCdM0UBzh2lAODznEcI/AmTJNUlO5iOugRmE5grJoggsmInDB+mi7TUXQj0
zU0uup9bobeEEObOmNaCHqVLRhXULnnJmRKfg8fUp1yb49OXx6f764eb44r/eXwAd5GB45ij
wwhe9eRKhVNEBs4hYeHdTrrcTkIgdtKPHi4GamaqNvMThT6TbBjcwXqbdERMxbKUBsJcgaBW
aomsz8ppK1go8pZLFzF1OwgHSpG7pFxwH5aiCm50p63OUlOB53ueR/Kr/GB+cR9Deu449Wwq
KrjuBMeBs6m6Wgovu+TVcV7sp1Y2EOJlPNRi8MUhptpykFuI+8uFTBJYvni+/gUg7V05mKpx
2j4rlzw2txmX0AeFARXE+yXHaCHxXkfLSzgBgaxp63BE5Iah+KHnCWEBRCGBX7HVfLYDdxkC
vNU1eL0Wzpky0Kck4ejQ8YOhcQpkxmAPTbynP700PMVGincbc4iNUtsIiWl8Zq2OJ0U4PFux
blWbiMgNiALGmX2uIeH4wsV+AAcDI393LbiKSvQWzddgyuvC1y76I+lYIyK6vEquuxGjxlPc
5hIUnjPv9UQ4KfZw9hPauDXE9+rfHyutAoHupLCJiQcTp/sNF62ME6SOf4GmUcY6EtRVw0pg
i2ywwBHP0Au457hzpGN2+nE+jbuAK1S7UB3obSo6hj6pNOSHE7QKYriJPrVVw3Mk6MAKBZ7+
EtwvMvcMRKXiOTi1kZsVIlP+ckwzC3fnFHCebcV00iLNqYH7qk6FV34D8zifov82d+JNi/7Z
Z9VS6ZdA9WtM//G+spMQCC9bWPWBuzcpkUaVtitgWcQZl6poKzA8aDTRy0JfPbFEvgc7jS4s
5lctm8XSWEZzw8EQKDkvouWqOfRmBsJnolIoXOCB9RUtkiLqJa7Hs7y/en35JFe77365fj5+
Xv3uvZc/nh6/3N75xNZ4oEjWZ+cTZziu25ENd2jk3rrFD/bS29MNx1NIuhIsE3VJYwy8xkFG
qLl3/qlB7+jiJDqE+FR8cgg0nNrmHtXWPXhcajDGo5NiDnS9sqcv5n4eo/OxOJR07Ac6sU6s
wohEamtOEnGbYMyGnb65PE9zdpYqukQ0P3xcfsmHT+f/xWt+OD17+zUgR5uLd8+/XcPL3s1m
QVnWaddm0D+X7avgbm+J6mZh1moInDOzTgKDes0UZVu+1sImAnDQR2VtFaUoXY5CFq4c7u6G
wFo6/Wqun15usTVjZb/+caSxATrRLmyFqAZD50BCGbjA9UST5DsT+zTFYC9MOeGJEZJgIwLE
NKNlWrw5p2R5ak5pCmVSCExtF8Jso8tdihoWb9osMcQouHWEcZXsBLqFkZdg3YNpxx1UhXxz
/WYt0luHEEL/DT9NW6cWtGVashSClwvvwkLlx09/c7pErhZX5IS+N/+DwRdqZW5+O2Itnoai
QvnEVK0U0ZoBWsBlg2+bY/KSVtDKn/tEXo+eUENClsxE4l2Pg+HJrQ54XNsbdeHhne8+H68/
wwV2HHNeYDG4bOzovNJ0HQvreMzUp4Ew1b6ZpYEICG8CakTmuKgk6vHupl4YS3DJsS6DuTSY
IsPRYQ6dWYVxh5aklusuU790MDHqsqZOpW8WWkC6ty3gxqDRlc0LmMiVRSeCJfiUXfdW8enx
5vj8/Pi0egGr6MpuX47XL69P1EIOvTXENNDwAe1DyRlELdxndiMU1mYHPAbpEX5/BvFUHsJk
46w4YRTEpipUDKQDVxY8MOxTmnJqozQjAVYr8o1okuKOBDvYSkLUEdXu4tnW4NmVwmwWBvgu
oKox0Q6ZnBY4q1gIvB1kJui7BthiqQRnHaWu744omahaHei7txwgk3AAGnuB+i63VHRwgBhx
JwxEEOuWm6AgohnGBXTiAba4wJEA5TcSwT0NKOABGwxOQkiz2+xkCAJ3Zp2FIOND+aG4MB0V
77sVujLtLvavSGV+d3Lc/9Qss5PJ+eK9LsZEI0VU0quVq0L6POvkgG0/pd27xqRr+xLTdOkm
IokmKbHmsSOBlmEHGdaY8+87DH2h8iMlqU6XcdZEmtyH9VHLK3ZC7CKVB09EttJFnyW4RtXh
4uM5JXAnkNtKmiDq7uv1GPnyCkLgVNANUxq8K1E/ySXag0E958Ac4iXW0vi/4TbOVDoYly02
uELgRLZe0NTMGjwH0Gnf6jr5FawCxMEjUl7OpVBBYdARdhteNUFlku0Da1y7hk1z8en0x7G6
7O2AkbRp14FkHrJyuL3rVAw0oHeqAgGHpSfGvjHMqUV45i4P1M3NP3ZJzICag8NjfQUr02oL
OozKg/dxZG9lzmeA+PAHcHD4AxCDfrMBY5+a5icQsikD7oQewmsIjrvdLCW0k58+Lpjv04+z
vnBumlLsY1UZWpd6QQs8W/FpOy0FXA/QBVBd6t73oHj7EyJgwATGHIazBSWbcdPoSJmbVsSZ
2GZzAH+oKHRn4xZ434KOedQk2um60MDLbp1hzojWeFvqheC9GkL6pluWNyLCuDImdqOBK4Xn
1Q11zamXCRsbeFIV+8G+Z+Mk2IfvbwML3hf9Y9dwRPfOc4x3Nmu4wiGwnmVee1TUO+h5jL0N
WzT+HSb1iFhUFV+DQPbXPfbJtfzi5C/010/If6MxeGsV0xYkq1uWwhA2Y9P4UAbqUrXjcT/c
cGoPCCP3VsMfKdQO/ifHBosUhavgdX61TWfVmuNpvzHXfHlRBiMAuy11wTAvzgJ0VBeJ4f1+
BUbTcfwJl6Dr98FJlzK2vYPQYZbOEc6m3ijbVO16Cd5vOYUGNqtdwMYKXMXG+mgWb5HzYJee
7QMZerU2udkMTyHIPniAj5Dz0IalYFKsdWTq6AKGbHKK7g3DM8QxXVmx9cXpuDi4mKiN874c
uGa0/oRX77wkszVE9ofw2EmobwMt9MX5yY8fgz0s++0hE2fwzSXos3E9GeEd9HaiPYXt6/1U
FpNk0hf6Uz5VxVnt3EAaW6rahsXL3Nlgkkth85Bhjk262YjFL1nMxb8Ip5IFgqtwEVeNUsRs
XWVtQWnl8EXH5Mz0n1vAQUL4kl7sMM7Vod/wsN0HHUM1dilxAKLDtQ5rZ663KJCuvyNxdVEH
n5d3fPw3eijkvmyQi3hf5IdZcBrhQ7fHdXh1GQSr2Ceg2yY2b0iE5gvDHzmI9UTqJ1hwj/B6
0PjtmLokcYC0mrq+8ARBIPBABA2DIXwwGsMFfLpA5oQfi23oQs+IfRI0vr5bA35Bg+krpwqx
E+QrSyE7TSAGU9oA4qQJzEsRPMCht1kIcQVlYrp92ZKyf3PVnZ6cpBsZrrqzHxZRH8JRwXQk
UN9cXZxSJ8JFFBuNfevEQmIfSfTYhb0gHubaVQ59aSbAZFdColCnKHLNzCYqZ/tRPwUwvBUE
BhugrdqCK3QaekCaYyxiQ69iLAy6AtgS3PX0qrLE7tKTv84j18olodApcm8wiRW5sjmMPAvG
DZd3EKBPykTQJxdBhhfTFBSbtrS+ULkrTLqbujcHY+hRu48kU99pRYR9MEyXNJsrii5niXbY
5ULtDo+/Kuy8jc1/ZgpLbMLPdBIg6kcsOVBpmthbwvQrhOKuZx1jB+caukDIp1Yf/3N8Wt1f
P1z/erw/Pry45CpGJqvHP7AORRKss28oN5wF3/72peYZgKRzp6RfjzJb0QCn6lQ/2/AuzPJU
FTbuUjd9WggRV7hpbUHKKFOjK6IqzpuQGCF9nni6V6Xrx3W4pAgAwSXbcpcwTKUSZPCOqAcH
Z+8rePOGPEBi7nngTnLyftGzsYVblv9OKT0wan8aIGFOCKC+n2ic+PJnCNEu8Yoa+8T6iydV
+89pe5ILcXvVcmbLzCqxPnzEb5f7fgoc0tBvlR2k7xn0C3EfXRvymTYphA5dT+tkAtnP1ctB
OArj1NL4NyyN1HzXgXZpLQqe+kYYacCq9+7h5Ig4BIv3lDELce8hhrbWBiEFAnfwQhXNV7KY
qgg/xUCQS1RqDkcYdPMNG/Y5SVHMdjEiI7hopIjWkbwEojew9Rp8FoZuXTi4z0pFA/usSHhA
eWusAn0yhU2qpV+fa333wjYe1TL5UmXALz9HWVFR1gfVJkyw+tVBVMFEPYMP3PEWegEpVJhJ
9GKaxRIU+m6EJ5LbjSoi6myd0A3wzVs0PRumC1cXV3V1WGIA/IUBXDgDAhf5Nqkwa3jc9zfC
w57ABPlEud7wWG4dHM6GsxmzHWopMp0oOMSmsXI6OP5yQGSvvU7vbaXWlBUNllBVA0K9UP13
vvHwzeCqfDr++/X4cPN19XxzfRd8JjhoKHEXB51dq13iI8oRHcd0c4oh2MeJyGcX/49BaA2x
gvXfD8EGTvfZzEKNYzZA1QVEnXWR3CMlBByGW0teXsC28COTJMWwtQX8uI8FPFl2+tymxVJJ
+BJLwurz0+2fQfPFFG410c+LOPuTu4KYE5kg0h3s/dsY+DeLJkRG1Oqy236KhsmiFzReG/Cn
dtjrdB9GzuCn8AKuZl+L0qJWC6Fyc+7ritLZKceO59+un46f545mOC/2Xt1P/BOf746h8vS3
VyA7LsmAx1Cxokje5wGV5HVQ9XJOCQZEZqLLVdtUya+w/Fn1y3ALlcf7x6evqz+cc/18/Scc
8zPtnxT/guh19p2zo8henweOrP4BVm51fLn5/p+kESwndhJvKF+FCGFS+ocQGpS03VD3zXyQ
YENwXmdnJxX3X8OkXEmwveh4BanH4SrDCZAgeFNoqhEAbpLOZzSzpKGDm0ZGS3Sw5bL+RDBU
M+aD37ZsE1naatKdNDLcLKZkF3K77myMmAEWftfAndFiIhKx2v/QyxAGYtySXuaQmwm7C3KB
3YouI5oONzY27CTCmYKPyxEgaJXcnb+OttgwI6JPrYZePB+Fgpz/9vj8srp5fHh5ery7A7WZ
mcX+d5PCDyBcdS2jU2OFI2SizAVLWQAg9CLcr+G7m+unz6tfnm4//0obiw5YZJ9E0j12inwg
6SFa5GoTA62IIbzmnW1pi1BPqQyEtCypUGktC0OtGNOJTFJjTfE58jtx2ITEbJog2ayB64VI
52GcvT6YMpsZM/7X8eb15fqXu6P7pbKV+w7u5Xn1fsXvX++uI7uPPd7SYrc7uVP7T9SSKGzr
xG9Bxs+7q7JPStC2cD/U5Fo0gSnwPqlqk9/X+0FSmHw6eXxhmMQT7MNZUPGeLDxi4skDju0/
pDqfx+7McP/YTtBizRjTcDIsSfa/YxOP9N0oO6cyqqEqK3PXAzhBaj5/I8AqUW/hajQmKm9z
MAr1Wvvvw9w518eX/zw+/Y7ezOw2Bxdqy4NOLXyGa4utJ9Zimy7JWWG7b0iwL+mnqPjkfrUs
AoUf3TqQabMOm/LyQ4TwVTkek+P3esYKmgR1CGAxZq7vKRe2/DADzOcVAXtF4yvP4W+0AHTM
CrkGEh3gSpF14FzxLvppj2EyLGP7/EqA860onoLRL+xHHATImaJZ4xGTV8wERhswTd3Ez12x
yYNcSg92SeCk7PcEmulUS6MTrkZEjBbNGnUdNG0fI9CY1nCTzOlTUyR+Hgd56LacAL3J3UZI
I7vdaQp4RvUTK8pqK2Y61OysCBf5f5R9W2/juLLuXzHWw8FawJ49tnyJvYF5oCXZZke3iLKt
9IuQTmemg5W+oJPea/r8+sMiKYlFFu0+A8xM/FWR4p3FYrHqmND12ZVHDxjrLvBY69hhZFZA
KioHcUezAtU4dz+vKCSoZxGok/WtLKjighyXM9imqZs2q0unWnhB0OWKKwqGZsQwMMo/9/br
CZe05TGRID5ubc3MgJ9T0ZxLW+kykA7yLwoWAfx+mzECP6V7JggcbhXUFZBPyqj8T2lREvB9
ao+TAeaZXPZLTn04iXUFxtv4oZESSg4fDPlNE3oW/HVKHhd7cp/9H/94/PHh+fEfdoHyZImu
2ORkWuFfZh0FG54dRenwizJF0A4oYPnvEpbg8bfy5tXKn1grf2ZBvjmvVnbDKZBnlFSqcwlO
xVUAvToZV1dm4+ridLSpqvWMqw4t9+DKolVNIYI3PtKtkIsSQAswUFI3VM19lTpEr9AAomVe
N7W3YuNWl/IAvAijLm50em8vGMBLu4Fk8pd+kKHwSyaJgDdLuAjPWX2LN4Sqqcy2u7v3k1SH
e6V4liJAXmFnR2kzvAMeDQV7MHhMHjn8RXFb82SfWjn3Gpiv359A2pPS/Js8owW8CY85j3Ki
RzICJtrXMEm7K7tA1z4aLzBopW1PBk8nRaGsThCq3F5pNSvJ3DldZZP8jrSpYMslAjR93xQg
uq7+EBFGgRyPF6hqjAToakQ6WTfKAUMpV3h7h7IpWJ6yCCJuAknkLpzxJg20KQPdKQsQd26e
A+Uwj+YBEq/jAGWU+mi6HC7KQKgQAQZR5KECVVWwrIIVodoLHkrUeHVviKliw8N4+EzN/p5p
nx2lUE+ddWVmBcNNU6gDYIq83Bg4MFBGEtXtI9UbLkAixgLAbksA5nYyYG5jAuY1I4Dy+K6V
pcSSIcV0WcL2HiUy67zdsD2otkXa3eTAIjnkCTzA1MCt0iGhPSYAOU8bSkAAUow7WyK12tUC
7OoN9WeUgXEdh0BntWyMo2QE5UzcYUQ1Koac4dR4C7VKhjW9ulRKhUH0TjvsuGobapVO6XXy
+PXzh+cvTx8nxps0tQW1jV6/yVzVxLtAFkoQQt98e/j+19Nb6FMNq/dwBFM+fek8DYuyKxTH
/ApXLw9c5rpcC4ur368uM14peiLi6jLHIbtCv14IuB3RF+0X2cCD4WUGNKoJhgtFKUKjsU9b
gFu3K21R7K4WodgFRRmLqXRFF4IJVE+puFLqS+vgyCUzusLgLpgUj7I5usjyS0NSnvlyIa7y
yGOJaGq1H6BJ+/nh7fHThfWhAXfbSVKrcwf9Ec0EfgAv0Y1/yoss2VE0wWFteKQ4ClreyzxF
sb1v0lCrjFz6EHKVy1ntaa4LXTUyXRqohqs6XqQ7AgbBkJ6uN/WFhUozpHFxmS4up4ed9Xq7
mdeQF1kyWnwbGLRe4eIxzuKtWbG/PJDlkfXywMmi5nLdTXyTiyxXmyZn8RX6leGmz+RI3UFw
FbvQWXJgKcXlma19G1ziMNcMF1kO90KO3Ms8t83VZejuWNp3kgTH5Y3A8KQsC8kfPUd8bRly
JHqCoVQXQBdZlJnLNQ6lmLvCVYNm5BLLxY3EsEip4yLDcR7ZWicjJaLfYG//R7RcOeiWg7zQ
8crjHyhoRmCio9XTNFiCqAwNjicQpl3KD2jhXIFaELVWZKoGilCAf4wLCS8RLtHC9ZBEvkMS
iKFCJBqv3+wVUf3s1cr25dVJhINMKKo8qkCHCXCcrn3syKV28vb94cvrt6/f38Cj2tvXx68v
k5evDx8nHx5eHr48ws3p649vQLcMHlR2+tzcxPjqbSDI4zZNYHr3ImlBAjvQuJrkP63qvPZO
g9zi1rXbhmcfymKPSUFOO+9oewNNLE+7YBdkW/8LgHkFSQ4uInzEPmFoqLjrBUzVGOIQbg85
CIcBsbbSPHz79vL8qBSnk09PL9/8lEiDYb67ixuvg1KjADF5/88v6Gd3cMdSM6W4XjjqjXhU
qEniFQ3HL7AE7nllEcDZhf990MYG0wDRpBlBrUpwcNk4ksSrQYWDcCPxH2gcSYU2oa4GdThB
bZrMJdDswzEMq0AQ0ddH9Z8q9lkaSEQUvD8b+WWr2dmF5FHsWGsrT4TL/qDbkYVaRBLGopqR
+b+r/9+xubo0NlfXxybl1mIceavAKMK4GXIru4ar0NhahQaXRUiPfLUI0KDiARIcbQOkQxYg
QLnNKy2aIQ8VkupXm9x4BELzYyiBnIKzYHVlGqzoebAiBvXKGdXEMNFXXZQNmLkD23Xp1u1p
Q5MEuFw42sKrRWq8qiMi0i5ZlPU06uYkheWlLd7alLoicR6CVyTuHNgsCpYjLYJ3XLFooqE/
f8pYEapGnVbZPUlMQg0GZetokq/qsosXyhAp7CzcUeXJpQ7rKbSdSjxapaiVD4BJHPPk1Vv0
bJlGpQO26JKAOXDNHbl0JFxN3uzquNM+TccCmmgFh4fHfzvefvtkYVPkvtrK/wv9YXNMREkA
85JYfuEa+c3tviu37+KCvmvRPL2dibKyAt1yDPYh1KucEDs4xbXbM8gY8Dql+J3vWyZgLtX9
XJ3QLuDkCYx6GMsa69Quf3RxxlHj9hj4buMxqTYClkxfUKJkeVVSt05A2tbRar1wE2hUdrFe
66jn10iTBL/8F5IKtQOZKYC76VJb4YRWlz1aAXN/OfQmNN/ncliCF1FkTWGosESZ5dv3HK7G
u2COvQVARPVVTnJNn1kXZyPW7U+1dRizCLkmWFZTsXPl2LcMPjvJn7SbPV619EvIhmV0BJA2
WpJ4xqotSagOJV3GVVaeK3vRN0BXHGISlNW1tVc2BYQkrB23qYeyoglYiLMpebnlGRJ7bSrs
70irZBPh+D0u/2maQt8t0SQZ0a7IzB8qghCHSjDKi4CVxNWeWSSvTeXSMnweLbP64aha0+9+
PP14kgv878btL3qLaLi7eHvnZdEdmi0B7kTso2iB6sGq5qWPKv0t8bXauddToNgRRRA7InmT
3mUEut354J78VCI81bPC5f9TonJJXRN1u6PrHB/K29SH76iKxMrPmQfv7sIUf5uV/XTYBXdu
1TmcNB4w1N6My+9T8EjR24a9PLy+Pv9plBp4UMWZY/wsAfBL4uhzFdzEvEjS1icoQXvh47uz
jyEVrQHcaHUG9Q3x1MfEqSKKINEVUQJwAOShQ6w6t97OHeKQhXO/0KU59goyYiZUxBjD2iLF
7jMFg6vLQpKCGsvCwQKFJChHfs4o67/OCk69JLNYeCWc+wDVAszWbQHIwJQM7lScUgMOcSvs
zV9bnW39DHJee/ObqXN+44Pufb8uQuracihYcLedFXq7pdlj19RDoeYghBoScDlEAm2o8qLu
YVUbcvs98rAicNvQOYmtVkoKCPEjSghXbpdjK1dwpmINEMUoq7Q4iTOHsfmZALGxoE04tejg
h9KkRXqykp30xmetOadcOSw45TEnqIWxc8N2/3nlLjyAdHthNYhCvE1eoXKQ9FbH47MxQcm4
qq1VTeB6D30xm4PVlLbEtUi1/Sar3qlYvsj3KxmWFDKETYV6OjZyeI93AKwhqKu473CQvu2d
H2gPp4OVySgG8HOvydvT65snP1S3DQTjcQZ1Ez4cKsm5LisphhXccU17YHnNErq69kiSP7Dq
B4BtnGNgfx72KlZMkqf/fX58miTuO1PgPHm5i8yD0EUuADHLYtD0g2m8E51YUrM0IT0GQubv
mPJa9hmnMDC8fL2ccPQsj8qT5kI9H0VglbLbMGq7QQP89sQgIJfPn7U+GPudEhtuqniGpnJB
9c7hv4Eax/HNjddQCrzQTJpulWIYBKLik2eIw/jnw+MTeqOvChJX0XKGTk1DyqPY4pROw0u6
0xsiATByC79XvIGSm/b3MlP95aFrePDpoeB8Uq9t6LvaC5t2pkirH3idUC26tZVmoABNE+u5
IijddmC/hJg01DUoWo5MW6QVzkwCstm9wGY9SV9HEtQ4b3BOB544gEAJsNMICZjjFNkSoCwM
R2/cNoNCw6yQ25cfT29fv759mnzUq4z3mh2UsMrbNap97LRag+mHmG8b1L8WqFL/pAi1HTC3
J4jEPppo9MjqhsK6w8LNQMHb2L5ItgisOcxvnfbtaYGw5xbH/MxrWidoManWu8Ykm+Qay11M
j3HVSnEeTeet19yVXHV9dEf0zOlgL5Kgq65PmQd0XmfoBrRVbTu5gdekOhBeB9c4zBk0YIYe
3vRIh3xwn1NlA227SVIQjhdvIG5JL/FuD6qGGdrnlXZjplzY5WXA7VafEBaeNJMSYN1Jsa6Q
6xO9Bg384PP0glfeni1O62aIKNuVxZHcc8dCaBWvI2uNZM/Pr8+kg1GwDEqYkOv4UDa5nlpe
61zyGXVNxrdeC/dYUMNvNEAzTyc0UwH5bJcrA6GOwQ+0aGrkep+gdgfkP4FkOR2oBdJmHRxQ
X/xm77rlH5+fv7y+fX966T69/cNjzFNxINKDpEXA4xrt18G4OVD2yiFnyjgj5TToUl3lEb23
h2pVNPM/pmNeZy5RInW9u+WZtUDo306NDMiL6oh6xOD7ihSYQc7eOOqITaUciauo2Uhe31y6
7okZp46ncVodjLumkdVg8AxXbv6hcTuwgbtSdCi1y7WjVr/sbM5o46FWNJ3j9Fs7qXdPNzr6
8QjryzD3WKADYz59efr+/GjgSel6uTjq2NJu3BMEd8oJw+iSVK6ATV7ZbwB7RB6FUBgSOZSK
hGWl7TZGNqjKe8drfTCGyMzWkW93VvEt7dIMrLww0TtHGsQzYAOHVcohHx2ad6jh0C0kQ7cz
LluJHlOxb0FS9R2qgDejc4DmoNa9iJJj5faU0o+pBkG3Jp/9inthBZayc7biD1FyMsEFDpic
IBg2+XTM5A+mbhuQPwi5dSCP2/p3xyNLP2oweWIZMXDuIg4MPK5vj7ud0zFpEesVjTp2q5ir
ys2mGfZ/Pvx40R6Ynv/68fXH6+Sz9mL28P3pYfL6/H+f/sc65MB3wbd0rl8gRKNP6IEkwF+4
JjvO9QcyOCaGO5B9yNeynRUPRT60mchFVTnlHzznrEdHa1o4tw9vpVxKsPd5Fb/EfY+bN4m9
ysmfOmgcvW804Fg7UXGAwDVxmMuO4hjmYvWNz6HqdHyVa1Ou38JN2JePkwasTrWjpUn28BOd
QCCrbXYrB7alRtNgGd+61dOBRWraInPX0JJ4ESLwIKXeJcHshNgldHAxkQcTQeHLsgo3J4Rh
CBIHV9IQMUZp8bxGr1n+e13mv+9eHl4/TR4/PX+zTnu4e3c8+KF3aZLGIRUZMMDc37LiVooO
SXPoZmgwutToInWBRCCfHojsRhSCtsEjOElnV6ZNOu5URmGRW0iFBmIK9+RwyWUvhWllmMa2
wglKrT08Pnz7ZjnvBM9muusfHiFUpdfzZV5ladvH6ggPRu1L8gSRn+jNTA3KjDVOfdQHxdPL
n7/BAv6gHsVKVl/9gDPK4+UyEA1akiEW6i5jOJQknjuiiZbheSeyS81eHS5R5b+XyGo9iqCK
biskz6///q388lsM3eFJc7iCZbyfBz9RsCIQ6BuWlCJ16Sr3rEqSevJ/9P+jSRXn/T4a6AOd
INiC4HG5pG4cgHrccrx0S6A7Z1ZoODuwT8+wTbdGnx9N8deACpFQ8wsrIvCAM4FteC1TH4H+
ITlK6uzguoGvVOBofFDugc8OIJl9TIqinKGLm5Fb3YjR9isjjzynp3XA42HPtg/EuuzprF2v
bzaUFXLPMYvWC6+G8NS3q2z3qAWOUFBUwxlUe+fzhmFlHpnYjviKCruMNNHKPaArjvIUKX9Y
GilD2SVOi3IyJljPDhcKQsBc5tU8als78fvQ7FZh0qu7LuZCdFgBjXiUc0MWb1Z09JCe5Zin
4e/oM8XZuH+5UJOstM2KbFQF0dJhI6dE5vV91ZSZE6rar0e9pS7Nhw7ZonbvYXFLr089vRSX
MhXt2q+R7BQSNDWcrSiaUm7MVvP1wi8D0BNaKk/kvgvXhXFysi7oEWxONfB0ZhT4EcNZnfRJ
i0WmAgBgm0Fwe6uF3sHtrXXDrFQhauT/9GtyuNSYNd1DtWipqg/9esqH9xH58+ujfyAB19tl
LeC92jw7TSP0FZYso2XbJVVJW8fKk3J+Dw58aRl8m3dM0HOjOsgzOhmTV+zB4W9smeE0fJdr
HTKGbtoWKS95LDbzSCymMyJbeVTNSgHBt8FrOpy0x9zgk601+w7yYJyVmL6vj/a3DBSO71Al
YrOeRiyz31SILNpMp3MXiabWt0x/NJKyXKKLyJ60Pcxu1lRsKpvhhshTFWozRavkIY9X8yVt
z5mI2WpNkxoOS+PNckaJ3caQoo9/aA/bvJqul6B2oNcVTVZ3pgQZrpqMNcdOsM1iTS/MUnht
ZAd38rgz7zRGn+lCG0QcwSbpbXlpWoEg7z2j1LhcDyJkljnClKW4oboR5Qycs3a1vll6+GYe
tyviI5t52y4oMSDe3sym/eQZK6jQoK50pMr5K465ilM3XD02T38/vE44aM1/QESn197P/vgC
9UUeDyYf5Xrz/A3+tCXSBjyFXxi7sA4ZtZRKxuAt18NkV+3Z5M/n75//Iz81+fj1P1/U41bt
lscKIQXXtgzUmRVyP6hCy6WcgLoctcyINy216Fs2Qn0J+Ze3p5dJzmOl8dEHAfS6QWfJY7CO
8Y9UMd8FEgKJTDN+8QA+zYeUDjEGb+OYqL4W5P/67ftXOFzKo6Z4e3h7kofQIWzXP+NS5P+i
zjn7tDjf0fq1ND7Q8m3cZipqXJCotcfgij3IkqZU6Hol3PME3b07MqRpCcH7w6s3o4EIvigt
fSnj8qjeNLW9bcS2p32VJrGDLSvEmI05aD4EHnEIShk4XvOrUpriTd5+fnua/FNOq3//1+Tt
4dvTf03i5Dc5+63gDYPoZcs7h1pjjY+VwkaH1DWFgZ/XxFZcDhnviY/ZpnuqZsMG7ODyb7h9
sJWfCs/K/R49jFCoAMMSBvHcUBM1/dLz6nQiHG+Jbut2MQlz9V+KIpgI4hnfCkYncIcDoIcS
XAPYNw+aVFfkF7LynMFVtvUuW+HI2a+GlAYYPOW7ecTtfjvXTARlQVK2RRsFCa1swdJ+8pJG
Pasno87PXSv/UXOIWvkhz0MlmPMZmWzTtq2P6ra2lknoMgi2EMqcsRi+7SfisZQhKfl5IG/s
AhgAtOjwLL7uA8UuXAYI2wo3UBm773Lxx2wJIS1Hqdpw6R1WR9agREjEljNx+weRCVgt6KtP
MKAoQq/YdHU2i3Bt8xPVrgoNSgoWSyPLl6Xucpafjjn3Mk2qRm7x9M6giwr+YuU4DvZMHeei
9vJNZUGigKpLyllqDS/Ss9ywLvNooYxSifUc/nSXQtKcRCNoHXVDv5dn2GhNpbpEj/xcjztx
iBMSdK0dEcmYJ4bnoJTzKi+1lEDkWsypq3EjDVUnd+rDKVivsxdCv6grUbktlTWzX8/J1XQX
Oz/tpcb/1e0KHnvlFgUP3OXonbqdzzYzWr+hRxNraN2QrtixgcOkjqkTZtsnDSWl9JuN31e8
Co56CD2orLicFAVnoQjHWqaoLtSD58HxIJq09Vv1Pl/O47VceeiDoakEPQsV8U6NJlBMkmdY
zcK6HXKWnwMW+dsBcHobj942q92l7o/nm+XfF1YgqOXmhr4NUhzn5Ga2Ca6mOsgfLmuV99sQ
RtfT6cyfdTtoglD2xqbGTRQf0kzwUk2KYMkOrsx66OrEjh3ao4dKnrZ9OM0JXpYdXVGnFIke
sjgq50A7Zm5TAJqoXUwdB+Vy6NRPMYQ0Luop0bg/NhCKuNCGLaRoABwmPEmX1jWKRCpJRpU9
FgDA91WZkGIGEKt8cGEUD2GmXif/eX77JPm//CZ2u8mXhzd5gBrtui1xVX0UWXMOkG1Zjgsk
GzierSJyHOpayMpT2QqeRZaOTUG73SBUy6I+unV4/PH69vXzRJ5xqPJXiRSp4fyDv3MncO+r
D7XOl7d5MhqKAAtdAMVmHfahzTlvndzzkwMULgAqEy5Sv0U8RLjI6ewgx8xt2RN32+DEm1SI
QRFb/WoFK9WD9gc0kicuUjf27YHGGtk0PlitVzetg0p5drVAS72G7yt4lBm4gIJQYztGXRwq
mhQm5quV8yEAva8D2EYFhc69Mmm4U2OQ/jBv1tFs7uSmQPfD73Ie16X74ZzV8rCVOag8xscE
yot3bB55pSzE+mYxo9R+ilxmiRm3OBnEvLhQMznDomnktR9MvDJLvNzgXRMtQ2tyEjsZoTO7
RqSAltYQHUK4FJ6t1lMPdNn6oHNu2Zqa77KUWrWqcQrhJGdebEviPrzi5W9fv7z8dGeUraIa
R/m0c0LTYZ4c+iVM1v1Ki1pDD4aplADu9Nl7eG3l1bE3Dv3z4eXlw8Pjvye/T16e/np4/Ok/
+6iGvQutsMZI0GvV8FEn8a9tbSxPlC1ikjYoOKiEwcCMWUt+nqiT/9RDZj7iMy2WK4SNwcZs
VKnSkP8lCRo/yPRNQ+hWb7gwzZW9a8MLvx0StA9LzlGdR+SY5G7IZ5X3zn6QAYiU26TsI+wF
KVHxQeW0asAQN3FEnD5jYzqnXmxT9uUju7osRtmLglXiUGKwOfACNskTl8JkgV6tQibK8tlD
ZCMQoCDROEsZcnYrKWnN0G94V11iFvCUNkZNtilYrpbA+7TGzUuMGxvtbG8OiCBw2yilDkK0
CTbq3V3GUOg+Ccl1FDkAgbZ3XjibGp5rjnxuD8710QWoPBHx3o7SwnY8S3mJsQrr8ACCVrSe
5IP5wFaNHvUtJ0vb06XWPPZcoyy6rQxKDLzdUejglei3sTMesjAoeebpU9iaEIMRmhNDie23
bQYblcr67iNN08lsvllM/rl7/v50lv/+y78N2PE6hddNVm4G6UokWA+wbI6IgAvcaCNeCnIJ
hpkMO6ixPcdPTiAsaF7Kjtw2VtsWKiKIut4emTlHDM57LNhV8RyHW327oOndUUqh70nfS+oB
t3Ug5K4HlSZluY+YOGBE3BzEUJfHIqnLLS+CHPJ8VwY/wGIIjw5D23HkbvHA24Ity1Qk989W
A2MfcgA0DGnHeAUslFoMeyFwPQ+ALClPpmVGYl1yX7DcDgmoHBBnOMiXemQPdydNLf+w32AU
zdaMAmsaH9EtvPzZndRAqEshOlL7fEJWLcZwBflILjIc0Ermd1LuT8YzeO06lLKO53k/qj1p
R73+GS+TPRHnpC5QnMmkQXUZRFRGEbHrboX5OegmSeWUUC/qXemoNwB9+/784cfb08eJkAe3
x08T9v3x0/Pb0+Pbj++kMazx3iUPp+t1unIuHcJcHQRJ6qqKegcmOwguSZHw5b+z0pd23TwO
mCBbPCxhlZTmApO8Z9qnNbpcTZvZfBauTp8sa9KS1pOaO/tGhHw39FnY4qf8sZ7NZtj2qoLh
5rqa6VPXeEYNOLRiKWzdT2blIH/N8K8U/7Q2R5a19KePUpBBvtw00hXb9XpKKUHV3GQJPK9B
a/6WzF+vona85e3CUrDIHzpotxTXRZohcd3QVKTrC3RkrRbnsKCRz9SL1naKVKB4p3xfFpb7
PXWJaBVS3SmKWod6Hz+mYLWe0t9rUBbNkAPZStCkdgkY2ZwxO/FjbpeiOchdCEKd8biraDdX
NsvpOst2T519M3535Inr0KsvltbtoqdORt3bUAZvA9HShQwYMlQaUfDdcymrxWlHl03KhZbD
m9S5jonbLo0ZeTYqXEdNJsckdaZrcwQXlNZbvWg2XVgDyABy+cz+GJ6K9YmsnQ+cVuZnapMw
tBy3sUYLxxBl+OiitYy0jIqiWy+sc2ySb2ZTa1rI/JbRylbixHnMWdfyOi7RwdJuDrAhubw8
QpT41Ipxvk0j1Lj6d3c457YsblAtsVDTJn0fH3hFk1qGngOKKGDNfmoD7++szA6hYN2Grn1Z
2PvOjFw6U+Xn5if6aUdb3W/RD7c9JKTG+CjktXtqSgBsZws/vbwUiNxhKcieRHyBSid/mQRj
AQALXOgAzc5tl8+m6GGdAvz1k+oAvo6WpHXAOydYSZ+gV5SOG9QpR4uXuN0jSQF+h00JgAgb
CygRx4uk23ukXYXfl+LNDmWTBWNFaU2HPGsXXWoL9BrA/dODznxQMD6AK6jX64xap6xdKkba
wCBrxTlMtsvP4zrgfMThKmF6XmmM+9o6AMKv2dS+cO8R2RRIStmlLCuuSnYFk5JbTms9bbaT
3NnIcJMjT3lrlVNKdqXjvLFi4JNN9o88w6ORdWBSODpQK/R9Cg++d+750XxQX0WP37zL2Bzd
Md9lWIrRv10pw6DOxDVoSHgxZGfNuMucsFpgSYGLYDsblD/oyQknduUjiVq4ISxTk6I3CKyh
BtF6Nt/YcWHgd1Oi/dFAXRVY+3u6PHOmXXPmrkbWYVvPoo2bPdxugHM5ZVVFpK3Xs9UmUNEC
bIICZ6I6uXLWqcEHoHW0Nr+p9hYsF0fskk2o5T9t6MeNdto0pR9Q2Dz8F5ZwuXRSK6utwJM/
1NvynwiIEzB3LTDqDPKB0TPMtEuQC2s6pRWPZ9jrHDBsZjPyvhpIi2gaEIFEo5a7q21wpCab
zXBflJW4Dw2KJj0cG2olsXnQgajhXVzJdZ2RepSGcMBpsjlx2i7HYjnz9yENyi5J6EVX7gcB
q2nlQ3Lr3jD1Yujh3vLYn3M+kciF571MLjFFIwVXYKOsK9bTeQtE64CcJxgwIgQGE3n+iuEB
lg3ewR6DoQx8RtmAPMeyhGHMXL0bcOyztGayNXgsAsWHwYhzkudevQnpdhpxc/p2PyH5wbg0
kL+krm9ap314XGVHgTGzVmOwUM6nmNNwcmmdTe0r/wys2JrZdDZz6qLFC7fESbWerxdrt8SY
vroJ0gdxJFDnHW9TPQCQxgocWm4Zdh+ocNfNEKaWcVCjpHOFa46CS8EgWFjZBLdivdksc3oi
VhkpWlWVbVZRVd1WwABwwCTdZSjoIICuX0HA8qpyuNTlE341IOESOT0HACVr8PdLHBQBstVm
8wgCRPlMHAdRZsdEEJntPR9oytMAmIXYodsVAfyZI29RClUqdviLep0ED7q0d1bnfgMIMWti
jNyyM+j7EFaleyaOTtK6ydaz5ZQC0XECYLk+36zJgw9Q5b9IxdqXGB5ez27aEGHTzW7Wlnqp
p8ZJrNS2fjpJ6dI0pwmF7baxJxyOsjl4mA6EfMsJSpJvVlMUH6SniHpzEzAltVhopeXAIJfO
G3mU9KuidniSss9W0ZT5eAHL13rqE2Ch3PpwHoub9Zzgr4uE65cXdAuL41aoowUY419iwTSW
ScFpuZpHDlxEN5FTim2a3drGBIqvzuU0PzoNklaiLKL1eu2M/jiabYiqvWfH2p0AqsztOprP
plhF3hNvWZZzYoDeyV32fLZvr4ByEKXPyotmOWtn+MO8OnhTVPC0rpUJFcZP2QoLh0PJD5uI
HGJnfSofEsiNOK0beH1w4AW4FqMvGHhAbJQLauCQzZqbVbyctq7j3HFrqLnIl7R5MFTjfTKL
prTjEzwkzyG5niX5OprRWailLPD6VdNu6Ptk46nxLDjSNObnbE370gALCDAhpa0AtwvauYnE
/auzkQqvN0L7MhB3ISLM34DnEF6do5AVPNDoAcXP2Znv7HehGnD8IUo0OeWIK3d+q1RlpbY7
+Z9jhnWjPccWbrvHsD90cQ3vkVWC8D7z9OHHX3+Ba6DRR6CXNBigy6ZjT5UjCcwHLtgRSUbn
0bJEFpvVEgHzzQIAVbjn/7zAz8nv8BdwkpVwsneNpjCOy96vA/SgSes84H+6Wi4IzxzWVIra
wJA6wyPhhEsBj543chZemDcwR+XZ4BjKOmBECIvKbFafaYEWei+l1XXxeRYFKlLLM8KG8ECe
fnn48PI0OT+Dx7t/Gof80GFfdYf9a/L2VXI/Td4+9VzeRf3ZWa1ZodqMGFOHxI6nC7+Mt/2x
Fw3mKlRssr6GwtnsagfQ0ruqY/vf0fJ3FWqqf2IrM/74/Ao1/4jsR2Mu208Ky3SHsaKlt5Eq
nk+nTRnwacdqEL/po5aI4wVRTVkB2zmj/KXigFvOS6S8SmkvrKhOvbD9maDt2G2aIf+qFlEe
6Vf1LpoHFtmRMZdci3eLq3xxHC2jq1ysob3XK82oMnShPK3kLdgCWFcjx3e8EcfOtqwzL9DQ
NRkXiX2FI391fJFhuhpDP12kO71zwByxofPfWNE+tTlEUn0HLOyojTtsDB597lg7WLNJbPLn
04OyQXn98UE7R7CXVkiUqN7nynRnSLbInr/8+Hvy6eH7R+1gATunrSDw0v8+TR4l3ctPtuCB
C9b2+SW/PX56+AKhHodA5KZQVlKVokuPtR04Ju2Y7RVc8xQlPAZKtIO7JiXIEJ7OR2/T+4ol
LmHW1CuP2XYPqCGwKlTLd+/M8/AsHv7ul4mnj25LmMxX3dzNqQGn6NqEAuFiurWvpzS4q3nz
nmBmp7xjM3NT7BLTTHhYwtNDJnvaI8hje7ZlR/sEahohbd7ZArqNdke/yeL43gW3t7KUCy8P
ETdwHZHYXa0pe/beftauwcMu7ogmOK9Wm4jiFV4rpspfenl2LVdM07iikdW/uoFV50rSd6X6
HGcRGggfzByZeLPM1LpZLtboWd9QZHo5G8gLsbbXqHFgQH3AUVvvGeXxLTQnY1Y5MU8qHvTT
O6RQ/7F9EY2UnCdJlirHzT/pdHIZQNuGS+yf2hHWfhWnFh676HL8O9+FHCW6nXXbGQoTQ1FP
i2Dq5mLqeOG1Yspj0o/bkHLP9wyFHzOA7hTb+bPB5fZCboE9XZnjZlQUx54DPKn438tn0yWJ
olE5fCVwYjjcw4b4Gf3sq9JLnhyx5LopROVC2azkw+j9rHarcL/rJHI6oP4ZUKUiJXAUIUOj
sivV9HFxUaVpsmOti4MmoUhLr0Z6BXJAs2y6WVQs9jBhP4rR5UVSb3FCRmfy56WAyJK6Twv5
vyC5doJ5GG8/3368Bf3e9A7/7Z/uUVhhu508/uQ4AIimgF0ysj3WsKiktJve5o4FtaLlrKl5
e+v4BB38Tb88fPlIBkIyqcEGXnuZdPM1lK4S7EgpeB02EdeplCnbP2bTaHGZ5/6Pm9Uas7wr
74l6pyeyaOmJ2oR054TChumUUqzZllIysfPssY4l1XK5pn0UO0wboj1GluZ2S3/hrplNb2iR
3eKJZgGfmQNPdnu7pX0vDCzB6x/EoQZceiWrJmarRcCXtM20XsyuNJ4eq1fqlq/nEa0YQzzz
KzxSCL2ZLzdXmGJaxTAyVPUsotWIA0+RnpuADmTggViKYLp05XPGEOIKU1Oe2ZnR6sGR61hc
HSRtc0s6NrWmrbVRwU+5GkQE1LHMjpc44mAiJP9vH+VGojzAswqukSmieT9NZsp36bYsbyka
yGm3VcntN2UjNc2YFG/toK1WaUDyzZRB06gWGvMtj/HhlpPhcwamXRnDfTOd/yknG3TwhIxQ
VsF5Db7pUrZxvtzcLFw4vmcVet+oYaiw6zASMZxE27aMSBkIU2MK3fccjoHhErU84azecqkX
kkoZ5GqGBm6RrO7Tv/WVT5zGzFJU2CRegVUWRdo3MfL2YZEOrDgzUlFrMd1u5Q8iA9113ZnJ
4zWlbzLVgV7UO59VpxGEt6IVhMXCkThsDpaIm/WCXoEx38365ubX2OiVEbHBBU+Xt7QFDeI8
gglbG3P6ubDNuj1GUoam126bL75fx02+nwXei2PWphFV2DLU5138GjO8JasCt18234HllTiE
guLZnGkaUE7bTLtmFc2vd7bRyV3l25dlEth0bTaecdkz1/n2x+L9L1SUNtvELPZLW4ug5lN3
No59ggx65SG/Lvf+2WwduEFEjLFYTgO6fcSXi9mMvq9EbOrH9aYu0jYgnaHcbm9mAf/B9uqR
Fioc1fUuSeTJo1m20+tDS/1dg7v/X2M9B5x4oXL+2vpwThpl2hVycox4881N4C2gzabMYcq8
KgVvro9c9TeXQvj1NaoRsdoDrnel5Iym0+sDSPMtf5Hv+kovmlk0vz6GxLEO3Dcgrna9Clza
o7JVYrWc3lzvl/e7so6vd0hdHnK9beBjAZZVuYj9g6Lc6GYLuiCaYZuz2TJwh6KPmvN2Kj/e
NLTaSh/aY1Hd1sTJPJdHoou559VxPl2SV+u6/BUr0sw9Fe+riPlfU8e5bZpWAZ8dFlfDs4Y4
+eFPNxkT3bYphPt51vCuTvOySSOXJA8WooJY34rsl/G2bd5RR+de+XFO6xxZ/WnCfcqUPZ8D
x/lsunHBo9bCeJ+u4t16GfBIZzjOOdF+fuvVZcPqe/DIWyYp0e0sabP5xVHHVeBveufuq8bm
tKGxpsPtnTy6Obd37meSVA4gCPMj/9qyS8MiqU/RatpKSUYJ7tc4V8tf5ryhOPVdQK+95L+X
E9f7MKyqo7RMhJ9xONTPjq+ni8gF5X9NoJrxmlcR4mYdxTcBAVOzVKwOHaINQwzHW6KfNDnj
W3Rg1qi+nEeQecYNzJ+9b4gop53jmLR1bBIa2NzMDsouZCQW3K/2LE9Jz/3xp4fvD49vT9/9
+BcoYPjJjppr3DHI43ghMta7wB84ewYKkwNWTkPrXupMco9wt+XaCcdoIFfwdrPuqga/VJDz
pWqEcU+TQaBN8HAYiq9uLGYgk0Dby8Of5SXR/pJ67NK4zdk3zn2csSRF/oLj+/dgExjwv1u2
TL/hzEJG3cChbIjJUzuYSuAltEdsw+sekwdmS7Fevi+xF2JOeonwFPLdXiAzOXWD1gn6KW6W
yA1cPaIHhyL2rfYpT3OnD2+dmEEmutr354cX/yrE9FPK6uw+Rq90NGEdKVNnNOcMLL9V1fD2
Ok2UbzLZ1eGBoBLoSFAEwRvA6DPI772dnX2TaxOKuoPo6OKPeUSRa3ke4HlqeBYUS9rCpoHM
0C1qzgo58Msa+ZW36CqoKYSuCbcceDZzg9tQRRUslMdOUNd26CvnUNq6idZreg9Gn4BJRY1H
1Bg86Y1Eiq9ffgMM7rdhtCmzp/EiyP2GPIfOg86FbZaLJYVezJyjC+bALoksMDju3uG5aVAR
x0VLW4gOHLMVF6FTl2Eym9m7hu2h7L/Aeo2N79pVu6LkoT6fOsZbqsZgouhhPPPyrKuAD2ZN
lqOvy6pgwQaX8dToUQQsG2ZV3xcUf4Uuvw6n2NiZWZugxPR8s4DWVikaYBQIx81S+x/yxgKv
cg4a0CRz5FjApRzPTWRdSgwFFmPsquq6Q07lFBm7lTZQp4Ko9g7/qPVUMwq+c7I7syY+JOXe
gdWpodxZ3FIwMH6tfnpQB+uilIBgU/ETGD8JBAF5jR1h5K3Whk3Qdv/zlf2o+ATx3Ox3xFWV
8ZCvofwsRV+ivcCs0x0tYIGlcIgevJ5thl3iUCEzpSpVx1Tk5WMAL3hllINmHx9S8HkH7Wk9
bzjJpA7WxHtcbwXYjgoMAEofrXV2EhuSb1tgU4vjqWxcYiFiDBDZW9mO0ztWJpKUClNS4nrr
F1408/n7ynYL7VI8laVLF6SfFDkkY+yrEORY50jT8iy7J8MdRTFhqhBZRn/g71S1YCmlnT1y
NgioOkPINioxDBo11jiYFAvwNb4E8+Ng3Jj/eHl7/vby9Lc8S0C5VAxYYvs0ycKX2D1DFbPN
ckHreTEP7a1+4OFF3NSBYNiGR7YNtVpJ6iHNIJ4JSK+4PUQuewS3Bsv25ZY77QagLOZgUyqb
ZjgdQ3SrsYm0QWk8kTlL/BMEsBq99lIPjXX2fLac01rFgb6i9Z0DvSWVb0DNkxvbzeyIdWKx
XkceBVyPYVCe210EuVPWSN5gBLwNLzBUKJViRIKyNJv1Em1J0EVcLJebcNtI+mpOKmI0cWM7
IwIMbQkGqJQ7VW13KCebf0hRmcU5t0fA68/Xt6fPkw+yn/sw1v/8LDv85efk6fOHp48fnz5O
fjdcv0m5FOJb/8vt+lgOwNBVLtDlKZTvCxWHBHtocYiUC32XJeAa2mHbsnt5EuThuZbm6YmW
zIB6cUkoPRMLe7jELFiNSp6enfKjbs7lacZN08IjY+Lpx99vT9+/yLOB5PldT9OHjw/f3tD0
tJuGl3BHf7Tv0VWR3HDKFthloAtzCyQFq7LZHd+/70opPQUbqWGlkHIdFbhEkbk8+iFDQD2I
K7BA1dokVc/y7ZNexU0lrXHqjOvmuPVmXebIMs5oAb/MwSvakQXWzSsszpbYy/hOdIoq/OgL
aDkT+uGB1jTIGZw/vEKPjpEqqNh+KnyaOuDQBw1JNq/3w/RjA8J1Rhv7CGUhrDwdBunBCQPE
LL+ZdlkWOPJJhlIPiCBdTpwodBgcyMGlAVjkiXIt19hp4DAmOVp4ZBametMQkd/fF3d51e3v
QmFRdd/3y5OvVpLJ+mjdpte9Ppb/SqknmHuTpauoDWgBqoDzpwNWsul9vxK+KFdVSMUpfwaM
9CH148uzjjnqy1yQMM44uEq/VQI8eU4deJTCblwjLIofB36kwWDsFxAoz1/gmv/h7et3X8Zp
Klnar4//JmrcVN1suV53WioedYXVeq5iFNjOOoxk18/d6vmLE+Zg5Mvtp+SQTv41AiYGgEWw
VJKw0lySIQ0NpB+qWQ213xpRfxqaPG3V9f2Jp+cLGfTHVy/1ti5b+gqz5xDHouYi1ZZzQ+up
i5czkz2n9Z8sU12oXd30DUMBcESpbTfaCsQB7k1CUGsYL4lOiwbkFpWVjtPY+9t5+vz1+8/J
54dv36RQpJJ5W9H/Y+zqmtvGefVf8dWZ3Tm7U31LvtgLWZIdbSRLleSP9MbjTdPdzEniTtK+
7/bfH4CUZJIClF40afBA/CYIkiAgC1CmtbZuyrIe8BUjeSeC8NjzfAQ4wZcLlVX/trjbHkWb
8snvj5FP658C/jRVMWqYDr/3lcXLM6PC+ve2BftOdOnCWPAKpnVoc8elsmpdRBsbyL5gbF4G
0LWJJ7Ko4oqCP/z79fzymSr6nEG2YBA2vsz56pXBmamY2By6swx4bzzD0B5t35pWr1yn0+r1
u7f83YrLTRKf6aqLmFVXdlcfNJm+uZQtA9Kimum2Jk1ch+g2XA/fKb3slZnSl4nrRroDhjHt
y+vPjIwyqR23taJJEvg6bPKtNttURXZM9ED5ABYniyAY67q400SyQp95ZFKjNy1kpRuiFypx
moDcRyWPVrK6rO1mkuk/PaWtEzIuLTQWulc0FloRG1jaFePMosdXHx0zKuyEB83zQouxODKY
6NLgQdMmQy+qx2hp0ScXA09RR6FDS6+BhdWRBwaolWf7jHsAlWdJV0rlcfz5wiBPyJzWKDx+
tKSOJQYO2JS5XqiO8aFhN/Fuk52KLnGWzMnZkEbTLT2fjMMlZoDwKDmdGDJ8L/zsuLsTyRfv
qZ2Z4dFT/AmTVputktjvEg0HrvKaTsYJJO6Ct23VtKcYtl27za7ZqXdGBqRFTxvRNHRtytRb
YfBsj0gW6RFFL23LsTnA54CAA5YM4NJ5LB3V2/YV6MKjbdEt0EET0DdxVw7PZlL1bLIcAAQO
A4RcUiHVOm0SBlR73kZdptk6DHTbooF1XNr+jRyrRD74PqMtE6oEK+m106R3x5ooV9oGDsGd
tjZZjRQdPrZlOUVy/xb0hhVREdDtLH9NA5Gz3lCI74Z+SwCgzak3YQN9U/h21BKlAsCxSCAM
rJgaYABw97I9g1BYGb9PA9NNfhPY5Lnt2F6rMs6odlyVtRG5d0AgXyF6ZnPOfZ803BtwPNai
Rxwq2VPqn4nnUKWBgdnYjjOXlYglt8mor6X4p2S7wgFLHjEEEXBsn0nVcxzaHE7h8PiPmTt+
lcOmPhYW/zalxakcgRUQMkMgNiE4BRAQUhuBJdFXQA8Cl04pCDxCwgnAJwSAAJYhU1fXDhlN
Y5wA3c6ZbY6kduXCQ4j4hA50P3RDGZCLIx4mzn4WusRoKikxDlSieYFKdEZRRkT74RNRkkrm
Rk28olyS6S6JbgQqmdvSd1xCGxCAR80tARBFrJModAOiPAh4DlH8bZec0FlmmfcxhCf9tU06
GN3UtZ7KEYbkbAUINhzzkhp5ltacuiR210ulIWr9xnTko8mo2Tj0+HF8KyCUJCH3qFHUiweP
mXCOFfrvSBfX8yhdCrcoQRRR6XZ168EOZ05e7pJ0aVHqBAIOBXwqAlL/aG86m2gpINNSAIBk
rsb9xSmhopSZHbrEiMzKxPYsUnQA5NjW3FAEjuDgWMScQb+oXljOINSMldjKpcQ4KDl+cDz2
zu0YnJpzAnADsjnLEgT97HQBuWs7URrpr+gnTK1tUR0p3og65DgTUDjXmTG0bkTpm/k2dixi
QUP6kdSSuiScm/HdTZlQ611X1jLQzzRBROaGBjB41MBAOlWnfR6fknpHK2EABlEQE0CH7gMp
OjqKndIPkRtGNqErI7BkAYcDiPVF0EnpLBHUks0riSljEUZ+RwhXCQVbYn8AEIz/G2JPIZFM
QDP2DuO4Q9MjbovV3Vq2uo8Uq1msuLzqCeaZwUDGULD4UBvjZaveCQa8N287bao9en+vT4e8
1QKjUIzrOG+k+TN9XEd8gm8uTiLq7k9/0p+QFEWVxLB6Ex04fKWXaVpJs3IEjBfQ4gcNX4tP
tc07pZ3wY6At8RyEMj8Qx9YitaSI1dkJS+ipvsXT0LIex8Gz/l1bJae0A9FUtevBmOVqEKCx
9CnQRXA96zjNQ4zUoRKNfsvWlzu5mUl4tF79YVIG6+3rYfQAbKtDfFftpi9yDudv9/98vvzN
ertpq3WnGsyOacvb8hGij/+kRcE8U3qYx3H/4h7fySlOPu4whO8hZeKcpnvpr8PkGPAiL9Gy
DWGlq4AawiKpU8UxSJTpxLb2QVk6darj03aVnNZ5VycO2YLodXGmSPkqhAS1TPCkodU08EO8
hgnDJBC4lpW1K5HG1UoQA5oayUKpDSakjJFc6t5EdARBBXDWZhpRqFNuasLQ+qYGntNWmHwn
Vf/U6rroJOgfl+1EsUOxXaa62/3J8M4RWLKm9Nisdz6Tkgg60t829nW6FhEwN1yFsrbEx6gT
aO0wLHETahSGU+JyQsSQWp8mxYChldWgWLrz8wKjn1huxLZCiT43HJupy1E+ox9W4DrJf//r
/Pbw+So2Et3rIT5iTKa9DmlI93HDzdo7yQAHlUyLcSaqts1lbAB503d5ebx/W7SPT4/3l5fF
6nz/f1+fzi8PigRTLdAwibZuVIt+kWqSi6jDSupTVBupGEnAc0VA11WTpxvyTQ1mlubVTNID
bKYtoyhXtOcC8WFeGO8pNJi1QUNMmPiP8WbpgulMJCZMcEYARlo86Z3V6+X8+f7yvHj7+nD/
+OXxfhGXq/jaN/jRtXNEErKxkpwol4arLXYFjCZT8WuNjBSH6mAw96TcMmitxyOVGGkeJWzT
v3x/uUcH3dPITcPMW6eT9RppceuGzIV9XYpr3trnvDWL7+POiUJrJvohMAnXTxZzuSpSOdYO
85ZMFLxBy096dIpSpvHSYowh8HuEfcd8pUCxcN47RhZ6JzzAzA3ACNMXvj3MOXQQcLHlky4T
G+MXztZv4OEqeNOhkW6bJ3QREYZP64K2zMAcpDL5cRc3t6TBc89a1ElvcKQQWt0C6ar0Yu8S
iVzzK2rN1ZpGN8y2DNCY1Ij+GW8/wZwERYF5rAw8t6DJz7RCFNVlxFj2XHF+FAk8mJkLeN7n
+YyzrJ4hDIMlP9QEQ8TE8OgZoiXjpGXEHb4OAl++8/2SNo8SeBe4c59n27Vjr0p6IGefxMsZ
yqM6fkyb0SDSZB3t2QLBOln7MH3pNtslK9uz3pGBhF2Sjnctb28sGXyLKcD4PRe3RjAkfudH
Mwls/S5gHGEi3mbJfA3b3AuD44RH5Sh99bxrJE2WO4Hc3kUw0nmxh7oxvftaHf33uqO9axMu
jhzAXX6KS9f1j+ixKE75RaGo3eXMVEIbHsYQUAyruCiZ+CXojci2GNMd6aqIczE358dIVE4w
MPdwI4Nj81OwZ+ArJhii4J0yLJkaKAx89w8Ms2v2yDS3NgITiGyX8bp2KDzLnRlNwBBY3jvD
7VDYTujO8xSl689M8K6k/VqiUENLXFOexU3+qdrGs80z8My1zqGMvJkFDWDX5vUKheWdTFzf
ei+V5ZL2g9RkGzycI88bReyZ8VRBfc/5/PD58by4v7wSLrHlV0lc4iP/yZGERONtXFTQ/3uO
Ic03eRcXMxxNjAbOV1DZKItSp+N5CLOdFokkP8EEf3QNes6i2mifp5mwfL/KZknae4V2tSGp
cbqfMR+VPDLqZ5lvMaByvN2Qr9skK8aIboycV7s1WpoS1BQ2Qu2GAPalOMidIo7xQvBKL7Oy
qlsKmUmMKwAge2XrD38Y+SJFi4bX4THFKcvEAYHGhs/g4zSuO4zYE6kIuvbEHY9oWeUdAQ7l
6aZPdL0IxjcOMXkO+/DX/fl56hZJxOcTnZIUcau0jAEYbs4Vpk0r3wMrpNIPLEcntd3eCtSI
6+LTIlINBcbUTqts+5GiAyEz05BAncfa3fAVSrukNdSoCU/WVWVLpYvP7euczPLPDA+o/ySh
Al0jrpKULtEtJJpQx2EKS7XNzVaVSBk3ZEnLZonWjuQ320NkkXWo9r5qTaQBqjWIAZzIb+o4
cayQQULXHBEKpF5WXqE20+5KFWC7hJyciMfIyrbQpscVi5A9iT98ixyjEqILKCCfhwIeomuF
UMDmZftMY3xcMqVAIGEQl2k+vOT06BENmG27lI2eygMSIKKbcrfFOK8UBBsUl6RX8qU6UZiu
2tW0qySFZx/5Ljkg94nlOmQD7GFGlhRwzBvhiyzJOwr+lLim4KsPiVl2ILGHqgPOhJroxTSI
QMo+R0QpbdzAMwsBnXbIVpM6tY6jq5YyeYA67eGovDN/OT9d/l4AghvRyeoiP633DaBKa2vk
8X0cCeIKO6nqCGJ75WvqvEgy3qTAauYLn+7zPjCakbAYx4E1FytSMm6q0HBqqzTHh8+Pfz9+
Oz+90yzxzorUeatSpR7Wr93pO8mhliCWa6WJB1q8Xmo2OCrdpejbuzbLCPouCFQLh5H+KbBU
oT/QkyxwXII/S2zVTHUgoyZgT8nlsbBtu11PkaYrnOh43Kl9OGDwu72lAtMjQ9eJIM27dKOG
87kiaaZaypetTLHZ67wrJ3FO6yI7JlVtxg6g8BntGdnj1tYNFBWd7Tfs91/O2sj6dW5cZSW2
zHRwS7oYWeyE6XliDDX3TEKayivVTdRpDXVTqqf35699jMLJG26ZZpnd0bvjfjpWRRUcmSOD
fitxCOgzCQl/qhrd/H5aug/nUYax5bzJjvkOAzGBEk5vaTW+qslnpUd5pA/t+l1Z59r6rQNb
6A///Pjr9fHzbNmTo+NHpIF138hxHNqqsqeRyaEwYNpYUCBhm6puU64CDM87Y+lkxJBg8T60
beuUK77BrmR99vWsVZvqvHJWE5swarr3zLE5syW5xsvhmTkvr5v5OY9zglvOkRn0na4y5HXd
2WaadUdtXMS+Ep9l6t+nqbwpNhOBLeiuRkez8Ac97rxifDI+hI1lGWEL7cC/d/nEc9A5JtkM
fK7y+n2MxFmWyQe8zR581Kg2RCCmEdLltDxqGTfVP3R6l8V+6Gtisj+byb2QuY25MjAu98Wa
1XC3QWIdaFe01ZlMu4xBmYy526g+/5u4YYJRX3H6FFWEiMlg4LBoE6NH9C2dv6hevGQeTCvt
GjCndrJ8ICJCK6BfdA+JrIOIuVqVHPJ4dTJcuod/z2+L/OXt2+v3Z+E/BBmjfxfrcojj+Uvb
LYR1yK/DM/frGFs/vj4c4N/iF4xLvLDdpfcrI67WeZOlnSE8eqIZX284kEOlcnDPO6yU95fn
Z7zFl4W7mFHSRxnuevbRFLbd3jxK6kNRYUFKEcWTlWCk4PYChnza73WtqM3jLQxX2QJj31yR
Png7s4qdX+4fn57Orz+u/sK+fX+B378B58vbBf/z6Nz/tvjyenn59vDy+e1X84yr3a1E/E4Q
o21WZMn0sLbrYhHeSmrm3z8/XkBjur98Ftl8fb2A6oQ5LTDs4PPjv1oP9+t0W7ueuvvve6P1
3cJ1JsvioYzkExSRI8aEH/IzE4ZWDXzx0kKw7h8/P1zmmGG5O+rMWOizVidizPiReOahfPbw
MjJLTeH8/PB67htdUSgFuH46v/1jEmU6j8/QgP95wCm2QG9uIyza+YNkgqH99RUaGa1UBqZJ
M4S+c9OO6sLj2/3DE5pXXdBn4MPTV5gTWvqtHB6L72jeBem+Xe5P97ISciiZ48Q4a1aI6Cyt
LjIa69I4ctRXVRMwPLKgDajNostIfcOlgUJ2cl8KkPmy7BzryBQIsYCpicBcFrNdpjAYHtJm
0jwah3M65mtvhHTMYzHYCMKH6jvfKRp2DJp4XhtZTC1ld9lMedeJZdlMGwjMmcHmc2S+zPhG
WCcwo7khuYN12WJK2uaO7TMjJ++WtsuMnCZyLP0G7e0bCB6Mmv3L2/kbzNTHbw+/XoW0vkK2
3cqKlspRsSTuraX174QYgEJvUMsoSlvXFh1HleD+/NfTw+J/F7A2g5T5hl7O2bKkzfFWT32Y
pomTjo4Cgf57+zNVA9nq2Y5rlBf2bYZG/6mwLcsNKKLZLv6N7TnWtLEcogWDyY5INqs1qWJk
Re603pYVBVNWxzyB2WetfVya3/ejJrWtSX4CEm1jT3OF9I8mf6w/AByb1g4Iotk6XQtyZlpl
SFEI37FHO1AufmKItDXI5WlhnNAsIYylVKcUgRdGNlUS7zgZIz4xRlyf7CXPOCkTh3kGZ5YQ
TZg6MHMbnSpOzMwjOUk0SoTiItCe541nVKf11O8gtnHST0e2dXEsRXRvOWTLmbNLzoVw6Ni4
ayHPLajt/yxiWP4f788vH24vrw/nF9gEjL39IRFCAtRUtmTbI6yBltFPq6R0fXOSFZu0c12T
taf6JhVjIxNz3DKmc7yLfMehaKfJ9qKnw+6aSNgeB33epj8/6pdm85erKIgdq9VS06Xi/7yf
hXZwrXCBzvb0YyGV/Q91UeilAcKQbZslg/vDQQVdfAEdVcjoiXB3l8e7P40e2K5qs255C1PV
7CpBJDnNMYgqoUnCc/Rxheoul6e3xTdUyv/z8HT5unh5+K/WLNqMSndleUfNqM3r+es/+Opg
YqUSb5SoLfAH+l8LPJ0kXStqpFZ1YY8EdP2sBHRHE9lNp2yh9hvYQKmu43uCsFPY1Lv2j8BT
ofaQd+j3sVIM9tNGtXFoylOZowPTNtdYTrewZ5RuyXVupK9XA6R9sl5hOLHxfZ4OYlSeEygx
6XUTrOFdV/6h+K7ud0Tozc3Yb1z7qimlQ/B0H/qk546BI7mB1SLQ6yHdMhe2/mB/QLbHWuwJ
loxPQ1HidM2Dje3QB+ACjGGbRZ9EIwyDB/qShbfVbp/FPJ5HpHclAS11tysD7VQ3WZGX+Rbj
0t0cZs2YxJDZ0A6JEYNBzWIwvvnv4n1MPqcRH24yY9Tuy8NmfaRoMA4Tc/RtSt1eoKcFljXh
cyfEXVroX8ZtZ0yhTbxxzPSTvGl27ekjTAgd+Hg00ltVyU1rVEVGXIFxoNNrEc9xvIF8+/p0
/rGoYWf+pK4gmKY8czY4cxB5r1/O9w+L1evj57+VQ4VX2K0v/vr+5Qt6ojZvsNbabe8wgcV0
JjoMxENSpug7SPsKT8KpO2EAVlXVoS5CmPhhYms8wiuKRjtO6oGkqu+gLPEEyEsYTqsi74xC
INaAnKrzY1agAdVpdUeGRgK+9q695vxsAGPOJnDN+VnLeV01Wb7ZnrIt7OWo58tDjpotHLZb
ts6aJktPunE2soOUL3L6+mCNywI+omCi02G7x8ltwUbpxQTg617WU3aDwNHlhahrJ990TgfT
P0McCsK/LHaHmCVc/nVJnzbjh3errHG42MvAEDe0DStCIPmhC9hq52XbsSA0OeMJF8AdjmK6
pRDRRmm2zo3u3HrMEzBccRmZC1BVYyzRhu/n1k7FqyMO3+7zlBHNOFvyPYvlIeOFE7Aiiyw/
pJdB/BT1G37kdk3FlndmAcXe7e641VeibDPR10eITBYnDWWWPOx0vlm3WQWCImcH6e0dEzke
MJfTPTDLqkqrih1H+y4KHLaiHSwb3ANTMafoKy4xVdlEk7gB3YJvPnx6woNtsuMrC2szO75W
sJ4fO8/nRQSusruYTkFEQlupAXLZsZrBWN1WJVtB3LtxQQ5QCjegG7c3WcY3+6463dpLi3Kq
hqJBhGs1Vht5jM43qxEavofGFeFUJOl0NUaiNDyWodvUPBErvLVlOZ7TMS51BU/ZOpG7WTOP
7wRLt3d96yMdEQEZQHwvHcYt94C7zGtZxLu0cjw6JATC+83G8VwnpvwQIU5FgRHtFWSBW/LZ
FumS81qMcFy2brBcbyx6eekbDybL7XqmfW+Okat7CJ70rdaF6uvmkaP3Lk1mcuWqD5Qv+ysu
nJyqjaR8WkZLzz4djBDiBGcb38RMABQlp7SOooBzCK1xhe9xFaUbuNZ7OQouKha5wlJHvm7L
oDQw5zFa+XzvO1bIxFa5sq3SwGYeiYKq0nYxqd3epGU+6GvJ5eXt8gQaWr9L6G+9J8cceKSQ
TAIpb2L4n3QY0yb4tAWL9h4O4ulTppxWyEOXSeIaGX4Xu3Lb/hFZNN5Uh/YPxx8lYxOX2Wq3
Rlcpk5QJcIg5WzegwTd387wYxF0/5Siqzf9TdmXNjdvK+q+4zlNu1U2VSIoSdW7lAQIpCTG3
IUiJmheV41EmrnjsKdupE59ff9EASWFpyJOHWdRfY2tiaQCNbkM9h9/gQbXrT17TDY3HUStd
Fpp3bRhq50q86sy47ZJwqjj3vf7kpe4erEzt8ItAqmlhEnaHNKtNUkMOhdAZTSJE9JN2DtVm
I6MwG+ivRrcACs8+deAoyCpfkNWHNVpWwiumXnwB0TpUlkPVbdxCVXvfzWRTRa4k3jWIqKCq
AzC63zKb6DwT0ptDelCNUhmE2ayPWndPVS4WBTSko2xOU9HTxsp0D6+qeSbBDbcbekHtwLMG
m9eNCGQxxbLSE8i3WGKImOShl4CYTLlVdR5BbPsBMQoX2HzEvDXka3LIbA4Nz4oumN0GbslF
3c1ngYwXjFfJpO57l0boain6ummSDEJQxnKmCGrKraEzdm09x7yqLC6hmroDrGhrsndGRcs9
hl2qh6oQ0MEijlHnupNM7HyhBxakDHvUG+MohyGWBdlnZrstcBodsSkcZqVKgyRZ2TUhOfcF
aRng+Qx3mS1RFs8NN9RA5GxXW8IV0znra4wmj0GsOZF0SWL4qB9oIUKLZk6LDh7Ht4B9bqMo
RF14CnTdJsvezk4ST9Ue3N5VFA1HDtMzmQX6MbikFUzZzOojoT8K9c/t94pul035PExQ16AK
NJ4XXmhi+3s4pbw2vz9t+41Vm5Q0ObGlupVuRU1aTo4uo0o9R1LPsdQWUazbxKIwi5DRXRVt
TRorU7atMBpDqemvOG+PM1vkYapDiTZryYNoOcOIzvDPeLCKfL0QQMOv+USzjSw1RJqI2ivS
pkhmvt6zS+25EyjWQBRbmGCpW3hMRPtrygOnpJ/hVCvb26rZBqGdb17l1vfP+8V8Mc+41U1I
xtuminAqJiOh26glyZBOWYQxphSqybPfNXaChtUtSz2a36kpsshqkSCtFggpDu2s4Tkm3bM1
+oJcqpLq7Mhex0gS2lPAQMTmVXkkU3FrnOz7MHQqdCw2lp8WuZvZpT9Lc0fNEF32HGJ3JWJH
ax/JSt99t8lNpgguol4ArjMs1QWTzf1lZjPINw3yftTWqgCVeoYoGsKA3rpVVbDygOBDOdsW
BG2owvf2nHaB5C7Rg6mTey8Kb8KJ3Rs0nJi+eV3U7qk26q4eGoe0l/MLJJrFcxcdDj1cANFj
nM9oPm8ZqaKO3k8rb2MdatbbT2WmWkAvEOu72jvHgb1p8G4U4CXcu0UQiklqr0ZA7kgwCxAy
78OjS6aEkU8eMjbLqayCMMzdRAsw03fJO7Yh1KKvaRqaTu0HZrh0XLjkukpR4g4ht6LjmuFH
R2RPhCptzWRQ5wNrLOV3pA46lLm3Yr5Yu1LF2mDhOeU6xe2QzfKjU+7xZTXVo2pu/Rvmdbau
8OtDox3gQWXmeX5jMLaEU4IdCqoVxBpb4FluPDSwjgYgbnBVV2JaO9oqA2kL5ZXuyv51ihbO
QuT10jMdXh6A6dLm5Xx+vb97PN/QuruY4KsHIBfW4Q0IkuTf+pXmWPkNz8Uuw3MFqTNx4gkr
rPPwH+CpU0/Mbp0r+6g4VvQwNRQdGsAFmHh7Kja5cQhuwWJLgRKVH0CnBwxeBnl7BbqadEf4
IcvzD2DpUddVakau9bEF124Q/xcYrwtpSlGQfpXMVm4aPAXc9Oh18eVLG70uPkYKp7/8IFmX
4Q+zzuMfYp2a1rKr/PxW7JxuMz+ci1LDZDFmogxFHx//8/D0dH7RRhjyVlZm1ZVzplbuqx+l
bzf1ltgD3q4TGIypxXKsisoZsU4Y01zOe66WT1LSBUvPTebEdDsPZldOaxRLHH/IsvC8ddRZ
PLEvLyxxlOBXTRNLTmPfbfE0gfMozqPrRcEhQR4HXr9iJt+P5HW93pJn+VG956EvoIrG4rku
Mlh+rGGCzRtDXmPr++RHsovm2OXTyCD0dorNdRlPIo9txMiybYuFd0sODOPEgOVf0yJYeILE
6jzLVYhfsGlMQsP9+0NJjHx+7Re4mnxhxli50KP5kiAAzFhYA2ECja5JR83bWI4w8+L0JSpL
iSw/7DN828I7q+vdlLNmo1T+H5jJPlYlOC/CxczvzdHms76iyzWPF0tMBrwlvvDbOovHY/OF
hQk9y68FS22T8DD+YOoRPPHsgykTeJZXdHLJsyGrZLm6zpPvo3BGGA2jDweBzvvRJ5l4o8Bj
kuJyenVB4OIRCcNlhn29Q5HEHj8hOssHCwyweEJTayw+7+k6ywczH7B4vI8aLPhlu87iiYus
s3zQZSXLh3JZfrA6SZbr/VWwJLP5h11sYPuod4FzUI9tis7ii9CqsXgMB6duVxOIz0quZCQN
oOQNK84j78rhsh87LpVKn4oZqE4VWeoaRAiiFmmapZcg522Tldt2Z6ANOWg+GndMO3yAtOPp
0xjhAkIn3D3Kgh2HksBP5hBFxiyf0KYzbocm4mmzQVopYWmk8+6QWGPWj3Rw/mTS1ll+y0p9
g66oYuvuLxBepOjmFYrGxK+jnROtGrFhxVylAlo3VcpusyO3W0zrMEDN2yR4tM4bgCg+zrYq
GwhxZbyPGKlWa4zSMngS42ssOEGoCruCWY65EJbIZ9EgWwzbrFgzTzeW+KbBzlwA2lXDwfEl
gaRca9C2XSSRT+iiem3V6dtBST1mJqGjebXVz1KBeCB5q190y8KOjTKkMagMYkiZpPbAyh2x
+G6zkjMx0oyQ74Ke0zEonNGyPCurvU/0UGF3SI3Uk35LZwDiR13rJU2IR8aAN12xzrOapOE1
ru1qPruGH3YZPGLw9j5pYFxUHbcGuNgdNBWYZFnkSmzZm8wam0WXtwz55mXb6JchQKoa45ZC
DlJSQlCzvDI9/Wvka12xzkpR/RJzy6rgluTHsreKFHNJTlOUqN6yIPTJoA6HIT8cyFJrLqlz
Aj6eS0ZtAAzLrLo2FaWkNWliynPEyEnBOz2UoiTClGmYf5VHf2fgdZbBsxw75xb6kFh69EtM
Cdj+P2V99QshOX6bLCsJZ0Ys9onor40yWj6pzmmWW5Cm/bU6DoVfWqfR/fm2bF9ZE0dVc9Fy
i7gT00Zh05qOt4N9k1awTvcXfCC0sjI8MFZUbWbPQj0TndqTy+esqeyGjzR/2Z+PqVjl7UlU
BcI87bo1SqeiUVUx/PrlEqUL13XUXYwzCDTCwKHcoE4vOdHM4BjOUIAgbbWj7ARPiYTWpt5I
mXk71ujyqkmF2DVopIFZmfDTjprVs9jKUkwtNFOmKNIY+uLI23B5A0JxfEAp/5Eq5Ca8j2Jm
OC8JG9Z/6CQnG97iPigH7HTYifkgF/lf5VrncgbjLXxwL2eX1wz0WqQjST9itiwPHbecMx+k
2Ndko3dRA/AEyJJd6/n1DeyN4QH5Izw1dI9dZS6LZT+bwffz1LOHvmJ/XkW14gld6MN9hSfH
DM1RUht4niiEempbBG1b6EBcaLVYWqQ2Y0lojczP2ndhMNvVtiAMJsbrIFj0H/JEi/Aqz0Z0
IlHaVR4ZpTwMrnyYChVjNTXZFUd1TRx6z73kbPZosAW4VmmeJ4FTZYOjSchiEYsN3zWmw1C+
p3q7A5G1swYFNAyCxnmzBQbuCRc04tJpI1iPoGNqiOFKH+9eX92topzpqOVNWtr/6sbMsoGp
xdUWdFwWSrGM/ftG+aeuGngL9+X8HbwngLcvTjm7+e2vt5t1fgsT6YmnN9/u3ser1LvH1+eb
3843T+fzl/OX/xOVPxs57c6P3+W16jcIAfLw9PuzWfuBz5bsQL7qnnvkcexnBoJ0VFcX1joz
ZkxasiHW7DeCG6HhGOu9DjKehrZ7+hET/yctDvE0bWYrPxbHOPZrV9R8V3lyJTnpUoJjVZlZ
ir2O3pKm8CQcPRoKEVGPhLJSNHa9CGNLEB3hurLBvt19fXj6isfAKFKa2IKUexfjYwoqq52I
zYq6R0atxQIRJK/Afh/RsjZyjKaei36pBBw8sfwG0O8TlO6YULAy/9wB0/rSfPU0yRUULnw2
6DhfhnbvlGbi1jhQpuPUfjqjYZczK3NoKtR9gujyENZQiLGOVQeem0aG1ykNG46eMIjuonmA
IlKT2mXOAFQoWLmIuZJmuWUBpOddizXSdtk/QMOYKBIUzoo626LIpoU3Ero1lgbumdLOXYTV
5BMO4PxZuvW3awTF/smZaIdaJkEY+UIZjP1BvvT11PaA07sOpcO5Xk3KU+3MXQbuqeyYuqhx
v74Ia8eJ537Ax4xfn3i5/eMYZferBC57gN8leZj/UcWD1eEfcX/6h+z4fQLOPv9HdRHcOXbt
qHPnnOG9q1ozMYFRfLAUtD11YRR6Op98EH694KLiS88krDBwykMad7+r8Sg3smgF+s723+My
lWRfEHys1nkYzSIUqlq2SGJ8hvtESYdPjZ86ksNOHQV5Teukt3WbASMbfGkAQEgoTe1d17T2
ZE1DwCYxz+wAWiPLsVhXOQq1eK+QPkfkO0YM7cVS5miEw7pz8EhauZ3GoaJkZYZ3QEhGPel6
ONA5Fa2nbxwY362r8oNlmfMucDTY4Vu2dhCxYfUEPUnX7MwzFFQVyQq2sHITpNBa8UnatW7H
2nO5nJobOVbF6EswAPNsW7XDrYBOdjdtvkfpUikbVnl6XFJPHGnFBsfbvr0sS61zTyBKNSDL
7Z4iL+NSoerl5GjJgHHxz35rL5AjGVQ3c3DkTlPbhpQ027N144nbKKtbHUgjZNs4qbMrh1LZ
jmet2rtuWN926INkpcbCufvmYOd+FEkw0wOZ+Wcpst7qPTvOKPwniuX8ZX5ViAYlhCi9Nl+p
N92Riot1xFMyae0xDufqyDaK9nDzam1+MrLNMyeLXu4KC3301H+8vz7c3z3e5Hfv5xfMPhES
1jvcm005BLjpacZwNxqAghOC037t8b807jAij02jzIFAXA4vLDouPAtCt+cHfd94kAcoJgEO
XEwKC+bJTJNoURhGbuKn5+hRRalQgSoouClOnRCNIu0aHk8auSvS+Ho7cZG1PEHWbNfBwqqz
XnIBu93jnGr5T0a1XHhqyGQinWqbLHZl1U4K6N3lNo2ptVzydlPYNT+sOXbmJRvFNoVIaqfA
bfEAoeul4Z+8kK+PRBbqS+rkbh3NLNaO75zv3Ymas0VT5Z7IuFDLiu/YmviDegueosVezRZZ
wcVCa1yfjzRfTzt/e355528P939iY3ZK3ZVSgxFLSYfanxS8bqqpR17Sc0W7Wu7HXWmshfyA
heG/fUB+lccs5SlKegRt4pU28cL9iXkNCr+G0KW6R4yJetqIv3dOI2DddfQEmUrGZDbU3ZHs
s3KWeE3JKvbYJksG2w2LkTmEFNeeiQ3EOO778drJxXSPtRdihBAXoducOvG5whpxy8mNKdls
D7FqWO5kLOXgiWE+MSyiKwwpoUE457PE47VJZnLwuFQCcJ2GyQw7PpDo+NBjbpybqka3UbyK
nCal8IxC6MfrqvK8b5JsLSUQhP0KQ07jlc8Ucup78d9XOqs8vP7t8eHpz58CFQOu2a5vBiXy
ryfwY4tYc938dLmH/h+ru69BV5nUAcipfXn4+tUdF7C4bg2nEzrZ9u5iYGIPYB4aG+guE4vY
2jgpM/CLuYT9YUYOavqwxVhg9HnyH29W5SCTUnj4/gZew19v3pQoLsItz2+/Pzy+gZPg56ff
H77e/AQSe7t7+Xp+syU7SUbovWKPWPrap0KO642Dg0HO2ZrlzONCkIm/S7HSlNh6mYkRJHTH
Cu6DudALtctoCTm320C1eMQOhtDjFJpzKliCvnuQAQSz71NhumyTUFHIf5GUTUvlC8Z3nTDO
6hppR8USe8SJo5exf7283c/+dSkaWATcVjv85BxwfIUVyM3D6MdWGw+QQkwjGzty6UQHlzgI
2QrbqtNPHcukQ2t/FZs9rtqB6QPUFNEBxnRkvY4/Zx6nkxemPkH9/o0MKRcKuhZFRKcvDefW
JnI6pNgBkca0WIZYtlEYIfSC9Asj1MUINDymEZYT43kQ6oGVTcB8729iqHu7kaUHBixtTTdh
EF5LKjgSY7E2gEXkyVUs2uZJAMaSINkW86BNEJkpOnwhs78Ctv4UhbdYRbjQkFYzzPnsyLEp
oiDCPlEvqheg9FkYu/SsiGYh0uWavaCvKPrhmn2SmIbhyspZbBU+GCYgjNX1QSJZPMHt9GGC
6y46y/x6QZIFVyZ0lhW+GTHHiieO3iivle8poTGw5viNhTFarwtGjYpr3bfp56p7uA2h9XLl
xkStH+/ehEr0zfqyVmJaVNzt3kJ8oR4GR6PHAdJHgR6jAxNmsCQ+bUjBcuwsR+NbztGZLpzP
5i4dolEvW5KgApknbYI5bNEZImRIAT1eIXReLEKsdutPczE4kTFYx3SGyAmG5hR17vnpZ9DO
zM8zPXNQwdw+GpaaIWGLP6FIC3KxqpvSX6ie9V0wuB7owcFcVm6VT3mNNnjwhTO7ssxybqLy
nEMrW+0ymIAWmFOzAa5Im+p2D+kBMqPKwODdorpshlOzHe+AOvnhF22jjw8QAlOLHsKPJT21
/cCoS8pWLRxpnBqim2CmVKs36frx2HhiuOWzQF9z1W/p6+2X2d/RMrEAscsSycORSjdkC+Nz
rp3dXWiiMm32Szi5RumMK214esg2JqGGnrTNStYYbgABSiGarYKw00OIIas74AMCzxpa8cgq
gjLNsYtRhNg9em5CIV3TeRxNAlpsxLBE6rXfCJBVRdGd2mOdaQNRIqK7ftqkJtFisUIYjzTw
D+orD+CiIJo3nIksunR/IYvST+tjDQcwBSnJ1jRzhrGERfzVYOm/awg4+fIGYS7t2X0IXGEM
ggtt2ME40Boc2+iXFQNduZCx6gjiL8xjm8Fm9/7l+fX597eb3fv388vP+5uvf51f35BnW6O/
bOP3qWtZzh3qWLVh6uzPT17/uOAy/NKSqc5A5lm+GSCx30e7lZYaDtoqCMVStXWObupknrCL
PNXiM2rTHgAyDM++pTvDOkLlT28zdHsq0I3WeGAGzyykHRCjANjXKfFI4xQDE3/WYKo+OE23
BbEtW1E9rwC2YlveygZIV0dIRfmBVW2+Bm6z4LbQfYkBpRZ9mRapSYQ1QW4FxWbevNACVGyQ
4WGNR+I78ABV78XoNotWkRz0Qrq2OvU5TIfvduG2KAtLuLKQfa2XwVuyVfE1psrynFGfJ1zR
bl6EcAGDwuK7Zil+FF5DeBmPupgnwSrEjnQEZPiKVL9PtDnWQgqUFrUPa2+ZFztkJgSlaxem
TbIMws7QwZIgSTI8LpLgDiNPzKSm5bHYh6LYvl0sYnzXIKGFMwkxMTG9vg0mjaZuRe7vz4/n
l+dv5zdLpyJinQ4WoUfhH1F8azKiuJY/orh90IB6HOUPqM9hPeNRPgtTj49eSiLLJ4GSwdPd
4/NXGYttiEJ3//wkhORKZLnwuMEX0NLzHFxAiSc2i4BEB/JBYeKt6ljP3x5+/vLwcr5/k3GT
PZVul1Hg9gl69/3uXmTydH/+oZYHnrfhEvK2YTl3S05ljaeIf/z96e2P8+uDVeAq8VyRSGiO
5Kqy+/ou1tv75+/nmyE8uNunZ4h1anl++8/zy59SwO//Pb/87w379v38RYqHemQSryL38CB/
+PrHG1a22pdwOC0KV7PA85LcYPKY/rUCjBN85AH299K9GCjuvj6d39Qwv1a7XUHjZH7Fu4PF
Z12rDnPKm5hjbs5P55ev7zeySJh5GDXFly19zgQU5ps8AMMFozDftJItk9jtN8359fkRNKcf
GAQh9xyiABSEHncnCgzcPjden9z8fKNCFT8+P531EhkoqGKTUKWMyj3ucBGAH/TDZkO5F5De
vFEmFWXFM5QF2G/dz8m/n+/+/Os7SEVGZHj9fj7f/2F0njojtx0eE0LaoAitMJN6RUnASIzL
t3ZNwTwepZRmoeJLI1Pgl5fnhy/Gl+E7oWchWgAp06ZiKqBAeqq6Vjl/vCQ0cG/4i5Etrw6j
FnzL8tzzIWDnjG3kTQVc/PRb/ADo/4gHJkNrpsXSF8AnbzOFz9HoPKNjxMHAftJfNof2/0l7
riY3jh7/CktPdtXZZl7yQQ/NCeSIk3YCl6uXqf1WtMSyNtyGOut+/QHdEzoAlF33oFoRwPT0
dECjEatbWQKgyip0uYQbuF6+c8BjAosWrdcJiGtMMtGETLXFbUozFX8r6MWzBZk93wosxUdL
jUosK/dBRFfeqtMI7gVlLuipwuJSId30TRRjueRxe/kkaZKM1IQcV8s+bkyL4ewWE5Z0uNEj
lhGy843QRRFHgcoVCZTUwi7hOhPDZtIzF0jrMwk0XtdBGqHf8yW0TLKVEdsiocWm0rwKwvpT
VJX18KJhNA0Ma/vryCoMsdBMnagTzZoixK2l3XhzFf1gQFwXWgTqH5mUkTMUcJEQMmG0g5G3
SnfsZOg6Bcyj9iKqqTH8QOTCd8jRlr5HhOnfZICxWoBeZnJgngaVHNBQeGjsjZjCesQT/4Cu
dfxBYzMxYSbtAb5UK91rIndZtQ9ugTPEWtxOLzP4IjdiyJVuMwlSYKyUkTgIcneu5NI39w9C
0o0JVA9b+wx66KwSA4Bh+ZUo3Jfio63Plk6tnLg21bBstYNPIXfw0czJqAiYHY5vhGuqpk5s
VcHWGG4SvIlSSgmVncH5luSYmB+t2s3EviqUn47VwLXuHic9f5ttYqb0UU0U3HGmHGkwVQJA
0sCjuGZ+gP1phm2p5/LEw0St9FlbF5iJGXUns2ZTVxVTgdHbFVkS9FyZWuVevEcVT5xlIMpo
ynLUfAAOM13DMaLpTpS7FeI+9jWrZH5e7/vT/V+q4CjeKXRJZXgGZLXFbEFfrjUqzn1JJ2GC
eDQSz/eCq7F7Fdt1dVDL5/Oj7LWlHlCfUj69v9yfXL0qNB0cqiZaTRczjRPiz0Y6Cf7QKDex
31MO55xMm5xH9Lopd8pZCPbBTwiSqmaSbnUUVUJrWoK2/BLm4yNWBXqubTJNXZ17xhLFiN1C
NMkmoyQtpXQXun5NgQZer6q4413pfD+SyFF+9/Uk3YpGpZOjQj4dZQetaqtIfAU3+tUBUZqu
qPU+UBw0k50Pm1SdzFqXWxOU9QoN3JQHepnqNIP31AUzFxKGcZbnt82NXne+uG6KQJkT2mvb
w9Pb6fnl6Z7Mkgvyr6zj0BSoVXUvfc8Pr44qDJN3/1L+eH07PYwy2MXfzs+/4mXn/vwnTA2R
FAKY4zFqykLQ3y4zwlFrKpdSYVgE170JTv0cbZ/gHY9P+h5rUc02O3TXuyyFLxNmkTWdDK6M
yOQwhoIWt3VajD3BIgI/pazhtgCCtOfG+3e9J4Zo+NQmOHA1XIMjHgu0hC1vW9R6iTQZBK++
qhQeBWu8jQneh1EokSa4vVzDRbBt64HAmo/Af9FVGmSbXLrvKZLpz1Srm0RMGG3hJvEmi7ES
eYnP1gzckqSZGatA6gCqDiWOTA3g/bH0aS3J/uh92k/GTB7nJBGrOaPsA9x6wZxnCse0efTm
Y8YJpqz2q9mEYeyA24jF/0ubO12yetnpmtN7A4rTPl3NmbyWqAnlG7xiPIlQc7yiHXsAtWYy
lCJqTasFdtFqPqOHGi71k/GUfhniZkxYWeLlsylThAFx8yk9famor1aMu1EFFyLfG68mtMyn
0JPpqhwza/EQ5VhTEHUUQOmukIfn78DTnfWwmi0JPfm304MMeSpdpenh88ocaSVUnb907ipo
eFFCoZkms93CioWYTvsWuuMpraW3LPOu7b5dc/eXefu4lXDJUJLD5rhT24TbG4sxU78PUDOm
pi2iWCPIYj7lNsBiPue2DaA4de5iwZqXFsvpvGDTwiKeyZcMqCvGtIYofkgu7O4ZYyNLltMZ
Y+KADbeYMHvRy+dXU2YPA25t7jc5qeHL6b/fT4/3P3pby/+i1tn3yz/yODZFfSmJ3r09vfzh
n1/fXs7/eUfbkmWasZIjK/+6b3evp99iaOP0ZRQ/PT2PfoHGfx392b/8VXu52WA4nxGM/N9Y
dNhlh9jJ7DKWWwvS0siu9WNRzhlF+ibZTsiQGG1zb2+LjD69FYY9vKNqO5sSVszd+8P5y/nt
BzVK/q5iMlHvfNRyMscFXKqYnNHRFXtmA2rq9i6CZfWGwSYPp7vX95fTw+nxbfT+eH4jZnPO
GlIklpnrfXJc0r2N0gOWE12OQbCKCB8d1mTX6eaY3nyCyZwx4yriGeYpp3G5X6654qESueaq
hu8mnPHGS2bTCVPkAHEMqwHUjBEkALVcMhLdNp+KHOZZjMd0nlRpwJyYjIqQYWM7vaeCw6XN
UC99KgXWPSTfBDc8kAOYALWq4GLXsryCKaBxObxtOmbRIHrOZkwK+corZ/MJfU5I3BUjzrY6
UmnbZWQtwM0XTC74ulxMVlM6Q8DBS2O7GO0/MgqL/Wp9xRyH+/F6zaz99g6TiC1zqRNb2DY/
4Y/4dFBlSYD5TWd2OO9swbmAtEwUH3eZaMuK7r+fH52vJuSv1IujVO+CS6PMO0Pl9Yd/YdqV
6e6KOq9+btfF6CGKyjgon5/egKueiQsnSgbWylGH9svpFbkxNfmbJLc8UKh9qowww4vyeDJh
pJM8nrG4crFkFhOimOIG7VTLTtAbZjEnwjsku39EjwRqyZez9YyIHnh5+vv8wJyuceSjySCq
gubA7O7jekHsv+r08IzSFjMDSXxcj5ccM0nyMeOMVMFyYViXRE0pX8u0MqoCwk+lk6Nvb4DN
o3SbZ4zfKBJUWUapMCQKAx3btF8Dm0oCJglsfqNlQ4QfbrAhAuOccz0EpIwlZuKEo1xg1gQm
4wSsrgCrX2L6bNbmHybuNRPTYJTv/3mVGsWBwbR+35glw/iC3S1q8pvpKk1kxhD6U3SqutzQ
y23jJc0+S4WksNNxdC2h4s/T/bNbG47IDTNW4rnXyPz0gqE00jkK7qBnuC64jseFKG2FNDqy
RuknojfVrk59vLPHvU588PPoWlBeGJT/xibCp20rUb89N+nBj/RET11O0Nxwz8XSk/He+O3F
ItLWHlJUmsl6oyffTQ/Ymu4OW11SilduqgH0dUBvsz/PX9+BLaBTX+nWn5NUzqPnlwdpyXHy
KgS+cXjCzyYjc3aHUZFIlwP4DMNxv3UC0HKc+J6/EaVuNYiMiI8ksgNeJcjD5HfC22GMSJpJ
F+UmFHGMHuDaOsTUrU20CTFFT+pTCP2Dtlm2jYO+987IwEtGvwR/w9H4ekabSj9SURev+6tr
Z8GeHYQewo6QoDRioVuaJsfsogGL6A0fcH0xDStIWNQp2p8aNeLDNMmh2XeTQUyX/vAN7Nrc
iLivEe3lUmHdLhB03ZK8SLcueDAd8DxWPFCx5EYnjtWUc+YB3MzCDZh5o/vtS0CN9UpAZMA2
tRFQtMCNyugIPYhdVBl4dRFVtxYmSKXzj5GorHtEw5lfM2edUj5tfCNEFH/zHixlk2zkyBm+
3kFUBgXgmBH75KBaxFEitIgA+H1dg0Sp+eDTY4RgfUnib5XyrAdtw3JqtN4CpIEWvez8WGNw
mWeTd5Amm+pJdXtwbxYCXlmXRv7mnkaaIO2XyH7Csi/3WCZcmycdTY7XpiqsEesgxhgNx2GH
hQmDgx7Z77bg8iX0xLC3mlKkQCf99Og5VdS8m43CixIGibZ9pVGsBolaZlPrMyUAB7PRWWtL
1hxFVRUumBySDtltLlqomfZjdql/zHaTWKnBtmyGwybyhWZY57gAionG50Zx0C1e/ek0q6JQ
4xK+DYgUQK5Y7UFh03WQliGiaS+JyhI+T+uFtT/lT4zdk/nc5MVOVggfpFZMbt6SwTGVWpEz
CsHxG4WtiiAwngmTqjlQZR8VZmp1z6tiF+L4sWGUUFjOzRUmmbe2ED0jT2B2CIpY3CqKNrjg
/pseKRuWHbc0AT1nGFZNi9hFcHZuOdN6R8VvvI4i23wKvKqxC1V034E0uKCMS+wAvfACjYjs
qxoH/7ciS/7wD748f53jNyqz9XI5Nsb2UxZHgTYhn4FIn4zaDw16/J3GfZEQPyv/CEX1R1rR
rwwV99Bc4OAJA3KwSfB3J8NgxhaM7vs4n11R+CjzdiD6wAd8uHu9P5+17Cpp5RyA6jbxenr/
8jT6k+otem8YS1EC9mbUs4QdEgIIQqix6iUQu481RaJKDxOUKBBNY7/Qg/j2QWFEGlpiLdzC
nZ8UG1MIi0Pv6i0wjI3eQAuSfdQ9zfCPOgx04RGETAMEbMqT/BGT2ASJef/yeclEhDwukLyd
w+74BwGl6gMxJ2fAP7q50J1L8pV7kg760U3EPwkCCHnAebCn9Y1QXtei3FEQdSopJqffAA20
HxW062NPhhmRkrzB6nEx3VBLIcuf0aomihLPMDr1VU9urc0e/lklW3Lbjz9TseYaOiNaO34m
25rL6/hGekV+pl2Retog2QSYYfnSy8NCbJMADtz2lIFGP840TdORE8WTKIWtGxrHQZZcWOQ5
j7tOj/OL2CWPLYiXdozKum22l0zProjQwvOkNCSNFhxyYlmLh5WvjwEwlAO7tS7s1mPGfYYq
jNEdDUEFV9C9xbs6ZMf4hpMEIAcqbZ9EzMxHDzOTFUuYkYMKIeUNeclWxM3EfrzRhKs87TY4
CEFZramHJMZK4CphIJWQtGEcHMmWun400gMQl7Y0NzRYJTRLRJR+/PDX6eXx9P33p5evH6yR
wueSaKtKWvIf2d0F4OWbQBswWWkqdWcAhcI2+ZufUlPcEeEZGsRIZA6jdVMFkG98sQ+T7Myd
b0+wT82wj1NsAnLjHG9p3I/WP9FvWqEmRSGSHrxtIf3PZZTe0DzOuf3T7hJ22s2whwi7flxZ
p0Xu2b+brR4A08JQldbmndFmMPfgO5G+2RebhfOQNRFekO8sHtiCJDulDkqFpiQfL7JaijqF
ANUOIm8CgX7vWCxvZ7bT1LknYqtx++SSMNkRC+Z0q/9us3MSSnEXhdW7YX1VwujjPSV7OKM3
rDUv51goCNyCl9sY5rrODblQ/qQVAQpFqQG6run5i+BHJ+l//PD+9ufqg47p7gYN3A3MZ3rM
1UxL0WZirhYMZqUXa7IwUxbDt8b1YLVk37OcsBi2B8sZi5mzGLbXyyWLWTOY9Yx7Zs2O6HrG
fc96zr1ndWV9D1xYV6vFulkxD0ym7PsBZQ21KL0oMldT1/6Efu2UBs9oMNP3BQ1e0uArGrym
wROmKxOmLxOrM/ssWjUFAatNGCb+AkFSr93Qgb0AbgUeBU+roC4yAlNkID+Qbd0WURxTrW1F
QMOLQC+V1oEjDwtN+AQiraOK+TayS1Vd7KNyZyLqKtRWJKq99R/9YSB1EnspTI2+3d3/dX78
OugjpNSM0ShhLLalHcbz/HJ+fPtrdPf4ZfTl4fT61a3PKtWAexlxpF3bg7LExR+jIeuAklLL
YvvAawyA7p5V2c8GNWdbztXovvf08Hz+fvrt7fxwGt1/O93/9Sp7da/gL27HlLo9SkPt1jbA
miLway8wbK8aFi76TASXRuTfiCKkfRm2/gYTR0U5KRQEKVrNpNYU2svhDi0qvcBOi0/qslLa
ak1xCdcY9eTH6Xje55ErK3gXcJaky3Sk2XCEL1sDJH3ZSUGi9dsyPYy7gSxieJMGVOWSzqyh
qXzglRhBYnVdEZZK7kTNTiIqvQy8jVHjk6WxtjZkzeEbTF6lBiLPpGa6tAeohbuzG2YFLHcl
kLHZs2U9d7whFtfamh6AvW5QTdTH8d8T8yPV/aBbu6powMg//ef961e1+cyhDY5VkJYREzGk
mkRCJ1mXRaNUw/QclnG96cjo90gKTo6VQaPtxyVBEsMAuoPbYS50EdrHsgzIHS5QMbF3LVIl
o2SXYpvPIkqjSudIEijtIBFMfFAU0h8OB8yMOpODrZYGmrB/Mhjye9BcEMbZjbPWaaR8XK5k
HDBrl2hIUQrD/iQB7GeXu6gYwu9wrY3Qd/39WTHK3d3jVz2tPdzfasxoUMEA6FrjnSh8Folc
Oxeww3SyvA1y/ilNcxBxHXycaGrRnrbMwkqnpYykLHHb8FifRux6s8Ng70qUVNUR9STwmyzL
dXW8Du57bCDxrENdRp+BU1altu+cCmiePxLmWIgUpdoZAbro4Iq4sAHw/fsgyLkUh130r7WT
lasghkT0nGj0y2sbJv36X6OH97fT3yf4z+nt/vfff//VcLeXLy4qOJOq4MhkamjXIfTLrp1i
kfy8kZsbRQRMKbvJhelZZNHKCkE8a8wL2IGdeZVRlkMDOFzs3uoKCsQw6i7b6/wORB7JDJSO
cV1/D+wnrNElLfCa2gInX4piBFdVbJ3tHPw7oKNZGdj8B22EbnvQS7bKfTuF9DgpZMdCL02f
B9IVyN2RFWmgIpW9mjkK5UQhmjydcjTCIbo73CmnO3Jw8RkLM4hHFk4uOHTAxeODVmSTT/xL
cg+OybSm9LNIj0cPrIg47lnNcmy1aOu6DWxwfcnO264auRpB8kA7BbW4yKNSOScNqhzoKElH
8duEPX070c1UTRpGdBHFZSzoTJuIVIIUl81UUiTofFYE13Vg7gqJRLcONdb8K2TBL/U8TxQi
2yK7YHwcITZjHtPUu8XMJqa8uxNlL1AUERZFLVE+yfJbdVSU7h5nCIl+SZKB/RDq2yxXy62w
hJSwTtWnXMZuC5Hv/hFNmKvtaRJ118GwY488srmJqh1M0ba0X6TQiZfVcHWA+1ZW+BYJGtbl
jkNKyWGcRoCjFbcW0GtbU01r5nH5vSrzmNlv1RXPzCZS4PlhB/zL/AKS3nAMgj8V7tsSvtZz
R1ZrSu6HG2kJMt9vtNe5b9sNtYTuirBngl0I3BoY/IaLa5DlwhZD2T+laOS02y5VNWWlM+pl
CnI7Fl3SE0+ZqF7EZ8xkGyzYucMzSVqv0iw1TuYOLtIU42Qww4J8gBFqenJYYBShLgU4X9u5
dneeZ5orB7S7CdQ60XtXa3Dq2/JQ4UwvlO4J3ceZ2Xs/33b91Lef7s6evRkHNtrObiXg1Mz5
lIKYnZw/B4d93GyAre4SUVC3AH239HSGgKAR/LRLqudBWid4dZQmVEpKaTeWGm1VnqtLAvP+
KDVc1en1zRKP4r3PeN9LsQJFOrgYMU6ZaqWUuvsn7acynAMgyPJ0xQZ99y6ke0QB7YAlni+S
KScOB98dflLqXs57odrw/pHlHLAuw/LCfODI7IKjXydMLk8pkVVykndBnHNiraTbA2FFZkWS
aKnNNHIeSnCBVj+Zf+hCF60yjZpEHPlBk+28aDJbz2VFClOvsamjGC3mXlkYWZxkXQ4qX56x
ZvaaxlhCeoHBggPLsCBddILzvbVU59I7NkiYqW7nQVTAVLC2vOGpIdBDgNXDKF3J1jd8evA3
yWClWATcVAW2tGBMb9leoaSWQc+WFogivm011TS08Tdb5oE2ZX3fLZlHs8LVKMuckIM00DDu
YlGTb6vGJjAv6pkvdGdeHdrYO6m9cdMR853StsLsU3WMcaHpJcr0yO1mP6thDygzgPN2dBqM
65K+5nfJtrgLTZcVzI6a1FdJf1i44gwOuCrcV+icpm9c2SdkoZFmfFyNB72PjQv8QVVk4mqr
wouJldLFzMHJlxkJdnsEUzm9p7iwCXualC5PP/i9al0cvrm9PUrzDSrjjMuHl/Mu31kOF6zo
M8bLxZHtLa5alQL2pcWVDAoW4g1qIuW1KjfyuuU18Ex5nDDFkMrT/fsLxsI6ViTJjH7ovxz/
cjw04PBFWR3weJRoT2ycNqoCg0p8C9pGHAzwgf11/jx+EpQyeFMyMYq7OXFF8lIszx40vcai
vVZb9IY3cPe21oGNxzTHsEgINGrrtO2jIgOP2njFZSLr6KBrYiN8v/i4XCxmC6chmOkorY/E
K1rMoBH+JzS2LtehdILZXAq0ZerXc4dCHDw7NsihkVfxIriG071yVeIOeZ7FkXfrb/CEKqV9
TNAMeHgyEYz6tSeBrZDdUiWZewqRw6gluvLfQf2Dse1JTdenHn8rEmEulq25gntQU0bbVKAa
jUKCNJgkAW4Ma19pJLWvC06R8WKQlpJAlKiky72iifzjx8lYx+KiLerYLLKGiCpIMAcrxUkR
jfaHlsJ+soy2P3u648V9Ex/OD3e/PX79QBHhEDflTkzsF9kE0wUdZU/RLpgcJQ7tTW6RMoQf
P7x+u5sYHwCLBOR4XX0tB3bgk4V1WsgJyYTfHBdmyZWOmR40jgA/GvSna8Kyro2Y3rZXBMPR
zh2LplvQzCllUdMFf20yGJLT9/Pj+9/9qBxxc6GGSHOHVBcez/AyVjA0IuoSu4Ies8IG5dc2
RN2f8A6uFepSOeh7z4uXH89vT6P7p5fT6Oll9O30/fn0omXMVQnrRbw1ksIa4KkLD4RPAl3S
Tbz3onynaxBsjPuQ5Wk5AF3SwtCt9TCSsPdjsXE5CgXEZ7IdFNxHFaVwYF0VOQbuti4DAh9o
6u6cUzGgzqPbcDJdJXXsINI6poHu63P51+kASg3XdVAHzgPyjxHU3/VZYSjX1XYc62oHspPz
LtMC1BGjKk1d8x3cFg6wFoeCZBf3J97fvmEKmvu7t9OXUfB4j7sB0xj8z/nt20i8vj79X2PX
ths3DkN/pegH7DaTZDt96IMsyxk1vkX2XF+MtE23wSJJkaRA8vcrSpYtidSkwLwMD3W1LhRJ
Ud9uDZRfP1+jWcF5hQviQUgFx7li+rf4oHf7ffyEbsjZiSu5QT0odGotVW9cvTMT++7u4bt/
adGVlXH8BXo8vHjfodoLP/TsSCvVFvG1UEhM3PUd8Y31Ag+3/ZFQvrp++plqQfAkqJveFcPt
2lH12NjkLtTQzdMzLkHx0wXRTYZspVqUrQFpqu6PEiYVAfYnH3JZUCVZJJX0Ylzj4u6kRlCK
xxyZyEda3fzLz/A6kp/jlUjq8QcvH0jc26rK9ZJCkn3/5Jms5ROKfLrA3KO4g4lD13XilIJ0
7mlQyzAjiMepybai1EpB5ols8Qp1oU4+YbKRo+iPPZiBMNRyGn92g7799TMMYu+2U7y6a9r4
zUnIyzoC63Um8WrAFMfjQwsu2yLwVY0AFCE2xscaosnCKlGWkiWBtxJCG3UT2Wb355yLNCt4
Z9ItAeycph4vvevx0DfUY8lyQS2rmno6iFy8OccLere+XLEDy/GMg5ddzExE88MiRHmpze5P
eN6sficEUUuhWjCKJeh6jovkh3U8R3rcY0lm0ws8UPttQ86MkZ4aTg5OlRTAw+mW7ZM8QaMm
z2oImnfrh3SexlARn1xHBC7Rpr+JvSobp1meJS4TuURHB42GV8S7B9f33x/u3tW/777ePLpY
v1RTWN1B+CCQ9tH8URnYJuo1WhMNQsoVFqFOGQahxCkAEPGL7HuhQPEJRhdKjh+oc5UD6CpM
aJc6ZUwctj/ivp5gOJKlP7PZlEIPR4dscfMhOhnLw7ujGDPb1jFcb6ckznlLlqnpQ45XCAfZ
vyR8xfACMtKHfLX8dP7CsbQTM2w8w1mopbKK9VcCbNdZOfJ06yxk8zB9uI7Oi6APGbhQ4GYF
dwoG4zTnx4S45N3H6XrGhM6acoNba6egLs+BFk7kQyvs/eCNULYoq1i2CwrERf5hTkxP735A
IL3bf+9tSEhzcSO4fjJalUAXpgv8/P6bTvz0N6TQbMN/N69//bq5m/Qi9iY1oRpK4t3n91Nq
Ywi69HVDjgKOKHwl40eSRqSIfYVG+qCadR+UP6HGtO+nA6KeUNyYKyU4JweaTIDBRBUlsFqb
giig6iRBBWO6EiXbWQM8F20f5ggv1ocU5/2TS9Xvy8ZeGAHLM9QxZI0NH0Ff2AfvZ3D00peH
yOgA/X/n5xoJnKbd/mvitmvWk/52tvFu3FuEEI5Kj8sq4e4ia6b2zjz/6kKmfn28fnx99/jw
+/n23j9iWpWYryrLZK8EaN+DjXA2Ps845WBi2s881Ynr8a5XNW/38IZ7FYVw8llKUSfQWvSD
HoC+A5SDIMwgmOjBdO9rvadQnVyC2dT3C3NQkuwtVdBquAfPq3bHV9azWYki4gC/xQKkZBOx
oy1luBFxvf7KPtCl8ZN/Qg58ONY16ddDsDDDqTuQNuDAfcROODLoZVRk+yWR1CIpacSwMLWN
1PYRR5bwB9boR6JOWpwaVQ5+w5b+3mwmgO1ZOxPdt6E9dFidN9XxjgAhDvbvUcbzqbPk5yp4
MC972PjIAdWGZYnpZyR9dwBy/N8o3GKaCefaYl7J/MPrSGS+KXKm9at1lSEAXMlxvhn/4g+F
kZpyZpjaNlwcZBBZdAIyDSxIpDxUjARMMBmKv0nQz/BENT7QLLi2owTcL2nKJjhc+FSwPy/p
BFCgB4HraSdgFFK04bLyXwqd6VlFkovOj2E7xoMb/wY+ZL6c1DVc6lXVLL+KBR65EJ8vcO2x
JHD4GIJlzfhU+1/BRgUkjIx6T4WQjhBi1vhnBsigwriyV/46XzaBTxL8PzYb6zIM+zCtoZMf
nBn+hQl7AM33alIewMzvERqVG1XcbJvKKf/aqpU2GpIn3kXth2jESlzILnB+XvNuMTrOzcSi
gaM1fvQV6GS4ReBfviyjHJYvZhuYrdYX+D5u3EcdfEGIGoO7D0Iih4eoCQKRazCORxr8H0BZ
TKgiXAIA

--5oug45guwrrz2lth--
