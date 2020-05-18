Return-Path: <clang-built-linux+bncBCHPNUVGUAIRBZOGRD3AKGQEAHRJWSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 407971D7085
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 07:55:50 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id h12sf5098211wrr.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 May 2020 22:55:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589781350; cv=pass;
        d=google.com; s=arc-20160816;
        b=DOT7bvnj7JWOmm4x9iDRocm4/k4+XAwh8Dvw2txnoMKx2NPUFBcD4GbS4Bwt/ZG2nW
         16fUyXiMd+sDzqDkHPl/GDmL/pJe2mK80vkG9RKIIaZTe+ABRG1Hrf15naPCk7/TDhOY
         sHneUPGl62IBHVEqs85q3fpPBjzCLsOCQ9XkQK/fpgc/OjqvXwmahh3mtJs7B8a/79W6
         FXk4QBjgS2rp+BZqPnViwh911Q4bdk7/P4TTAWWeQ6S6IGpt7L8FB8Hi+cgbskImd/0P
         96tC0tP3aNambq7t4/hwgi33ETF0lOh93V+qjYCQy/Ddmw/O1bTA6mvaidvijWUhp4rm
         ShXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=u3hAFWY4q7YSi5X/jQrcU6IZ/CwFwOoIPbAMEYE9PSk=;
        b=ksqkW6Z+0hPi4xLzi/KokhKtrU9hkTe5dsH3tHxyXIDXRDTL3rhO05946TFL5q6Pjt
         I0g0uyTTzv+SZgAMHObSMmBnZqAdNijCkLgkKNGWN2wJoUwpaLxKkfSDIe8cu8YPeCXf
         wXMTmdM2IiuLFnlDsb+eCmCzvaGBUtbgM9tuN89zkUXKyavXXATt9xYuUsFviDdJXRn3
         5AyIviNVf/JvSbQzGwRWCFaE80aeGm5RkoEaeDTbAaREs6g4dL3u2jKIWZdM606NaIKR
         PtVVByaxz8y0GQcbUBpr3NA7iw5+hED5tkTxfxP43gVhqfxNRdWrgujcBRsFL7WJVNZx
         Xvhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=EqiyPxF9;
       spf=pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u3hAFWY4q7YSi5X/jQrcU6IZ/CwFwOoIPbAMEYE9PSk=;
        b=PkFfeTjy3BdFLXVn328ZSHHvne7odNx4x0xJ1o1K8PMvCge2mGxUyy7mAdSNSs7tl8
         scHgX7O13RjwrMJqrYHMejVx6zlr2vcq1MLb7dvHlw6siJ5z7ethdhXXJQRVcG6x2qPn
         34hb5xjPtEqFhN1Zdb21xLLJhEgSerfuDLs57k+yehVsOop3YMoOird1XMc3kwNERSso
         KUFdO7QsLNN4lr3XHz+dqSEoUzYDbU+NtRkn60IjuSOLP2NjSQyz2M545esezLBuveTy
         kTFZSQTudV766lOE5EzoyznCVTCN6YWKwim+ZHV5j863DEZOuV/wn5VQnTITT3LiVV9f
         07Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u3hAFWY4q7YSi5X/jQrcU6IZ/CwFwOoIPbAMEYE9PSk=;
        b=s2gsZtCMIM1zJAVslIERIxKjOpzgO4dVj9iimsipQoT+CEmD7YPJVefYDT7DytC0VR
         bedSBY7IYk83B2TYoitMD8+l3Na2ezjMBuE3qdy8n3pPEJcBFdpAHswTuaUhfHHiwKDg
         ZPvXJ0us90vDqF5OWtI1r7bMdXl0VKlqp4xMEzNvfOQgvmLLC/yfaOq7s5AmnoARKiCk
         S5DtDz8MCU1SvSJTumIZKs+tiQjR30s5PkoXgCanMzXbmztjpu39cTXk6hZKcPZjirzJ
         3w4KQbgHImy3LJuA2OgP1CWziYUPYKenfGEDm2NrfKv9E+ubrEq54EI+NeWIML1MjKT/
         yslw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dN28beio15rsHoXgclyETLmlesGiv32uOz/BRa2VK6yIH1YfW
	xjwGyhKTzlq2Fva48grP0UA=
X-Google-Smtp-Source: ABdhPJz1ydHPy5lNXrPDGL7+RGZZaCSkupP5QjqGkoPCWpkHvnqz0ITIIjAeRtEHP07rsLfs5FBWaQ==
X-Received: by 2002:a7b:c8d4:: with SMTP id f20mr17954982wml.72.1589781349955;
        Sun, 17 May 2020 22:55:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a544:: with SMTP id o65ls4514743wme.2.canary-gmail; Sun,
 17 May 2020 22:55:49 -0700 (PDT)
X-Received: by 2002:a1c:4806:: with SMTP id v6mr17476506wma.20.1589781349432;
        Sun, 17 May 2020 22:55:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589781349; cv=none;
        d=google.com; s=arc-20160816;
        b=uDgvcz1xwZ/gvGODKsLR5yUAmjwnfZEncfgqV08zr5pQpZ6Pm554s8iUCgeJfbMvfS
         iM0b3UTUEUIwx1bp6IpIuENQPHQwKpxa1RIxKwa+hxS55QHfYNSqi+CWkoqx46wMnyFX
         Fp9EafIJVmPlz/9NBwvgEqoykQPNc9XRGoG9jy356QS6cJKD5eBUXDItb4hBhKQkreSv
         SVDrM0zrSHA42ZJLsnTbEw+1Qs/XWvxI0fzDqoths3Rj/b+U+ZbXOX/gL/xIwubK0bDt
         cp5l0Osro1ELVAdatk+7+mBWZdG8bl76eDK3rIwsm8+RYs3/kmE1Rd6Lb2T+Ut0l90kS
         q5vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xYaJTuBmSCxbR1tKuwuJoaY0grm1v00e89+iDJeUZh8=;
        b=p0WJK3MFXPt9CScjoLJHxBuHUR2yeHybP0fjQlNBSqbmu2WGO7NGMbZn8qubvjZd1l
         SwM6WilBIQzmTq94kDFQ6Tc45Znbcu+vgqUt6X6s0/yW9VkBi6iqYliXB3DXdwfNMjRU
         ARz7AW3Bf405ob1A6PxUAPFiAR7Sa9sJVAFCeAzOcBqZf2Zk7jha/nIrCOM5sXayNNyg
         mGBSZp+Bdsfa6MgFQkqtuP3j7xYysCqlXDP+7Mqop78in9I6ozixIiwicm3Tqn3niu53
         gyfSYb6LRLrn9hZMFjP0PBYKB9ADI7IBhkVu+o3yWPuGoFwrl5W3uYOuaAMRZSl3LDOi
         lv1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=EqiyPxF9;
       spf=pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id a2si541488wrv.4.2020.05.17.22.55.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2020 22:55:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id g1so8443248ljk.7
        for <clang-built-linux@googlegroups.com>; Sun, 17 May 2020 22:55:49 -0700 (PDT)
X-Received: by 2002:a2e:9716:: with SMTP id r22mr5098917lji.293.1589781348971;
 Sun, 17 May 2020 22:55:48 -0700 (PDT)
MIME-Version: 1.0
References: <1589532593-16428-1-git-send-email-sumit.garg@linaro.org> <202005160303.4pIJwjQx%lkp@intel.com>
In-Reply-To: <202005160303.4pIJwjQx%lkp@intel.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 18 May 2020 11:25:37 +0530
Message-ID: <CAFA6WYMnv5xgFSa+2UbqVW7MPfSGvsQ5MdeUwh1aX-WXKc0T_A@mail.gmail.com>
Subject: Re: [RFC] arm64: Enable perf events based hard lockup detector
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sumit.garg@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=EqiyPxF9;       spf=pass
 (google.com: domain of sumit.garg@linaro.org designates 2a00:1450:4864:20::241
 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi,

On Sat, 16 May 2020 at 01:21, kbuild test robot <lkp@intel.com> wrote:
>
> Hi Sumit,
>
> [FYI, it's a private test report for your RFC patch.]
> [auto build test ERROR on arm64/for-next/core]
> [also build test ERROR on arm-soc/for-next arm/for-next kvmarm/next linus/master v5.7-rc5 next-20200515]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>

This isn't a correct report as it doesn't take in account the
dependency of this patch on other patch-set [1] mentioned after "---".

[1] https://patchwork.kernel.org/cover/11047407/

-Sumit

> url:    https://github.com/0day-ci/linux/commits/Sumit-Garg/arm64-Enable-perf-events-based-hard-lockup-detector/20200515-165226
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
> config: arm64-randconfig-r025-20200515 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 9d4cf5bd421fb6467ff5f00e26a37527246dd4d6)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> ^~~~~~~~~~~
> cpu_map_ops
> include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> ^
> include/linux/percpu-defs.h:235:20: note: expanded from macro 'per_cpu_ptr'
> __verify_pcpu_ptr(ptr);                                                                      ^
> include/linux/percpu-defs.h:219:47: note: expanded from macro '__verify_pcpu_ptr'
> const void __percpu *__vpp_verify = (typeof((ptr) + 0))NULL;                                                            ^
> include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> ^
> drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> ^~~~~~~~~~~
> cpu_map_ops
> include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> ^
> include/linux/percpu-defs.h:236:20: note: expanded from macro 'per_cpu_ptr'
> SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                                              ^
> include/linux/percpu-defs.h:231:23: note: expanded from macro 'SHIFT_PERCPU_PTR'
> RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> ^
> include/linux/compiler.h:165:31: note: expanded from macro 'RELOC_HIDE'
> __ptr = (unsigned long) (ptr);                                                              ^
> include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> ^
> drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> ^~~~~~~~~~~
> cpu_map_ops
> include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> ^
> include/linux/percpu-defs.h:236:20: note: expanded from macro 'per_cpu_ptr'
> SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                                              ^
> include/linux/percpu-defs.h:231:49: note: expanded from macro 'SHIFT_PERCPU_PTR'
> RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> ^
> include/linux/compiler.h:165:31: note: expanded from macro 'RELOC_HIDE'
> __ptr = (unsigned long) (ptr);                                                              ^
> include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> ^
> drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> ^~~~~~~~~~~
> cpu_map_ops
> include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> ^
> include/linux/percpu-defs.h:236:20: note: expanded from macro 'per_cpu_ptr'
> SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                                              ^
> include/linux/percpu-defs.h:231:23: note: expanded from macro 'SHIFT_PERCPU_PTR'
> RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> ^
> include/linux/compiler.h:166:13: note: expanded from macro 'RELOC_HIDE'
> (typeof(ptr)) (__ptr + (off)); })
> ^
> include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> ^
> drivers/perf/arm_pmu.c:613:20: error: use of undeclared identifier 'cpu_irq_ops'; did you mean 'cpu_map_ops'?
> irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> ^~~~~~~~~~~
> cpu_map_ops
> include/linux/percpu-defs.h:269:43: note: expanded from macro 'per_cpu'
> #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
> ^
> include/linux/percpu-defs.h:236:20: note: expanded from macro 'per_cpu_ptr'
> SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                                              ^
> include/linux/percpu-defs.h:231:49: note: expanded from macro 'SHIFT_PERCPU_PTR'
> RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> ^
> include/linux/compiler.h:166:13: note: expanded from macro 'RELOC_HIDE'
> (typeof(ptr)) (__ptr + (off)); })
> ^
> include/linux/bpf_types.h:108:35: note: 'cpu_map_ops' declared here
> BPF_MAP_TYPE(BPF_MAP_TYPE_CPUMAP, cpu_map_ops)
> ^
> >> drivers/perf/arm_pmu.c:613:10: error: assigning to 'const struct pmu_irq_ops *' from incompatible type 'typeof (*((&(cpu_map_ops))))' (aka 'const struct bpf_map_ops')
> irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
> ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/perf/arm_pmu.c:614:18: error: use of undeclared identifier 'pmunmi_ops'
> if (irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops)
> ^
> drivers/perf/arm_pmu.c:614:44: error: use of undeclared identifier 'percpu_pmunmi_ops'
> if (irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops)
> ^
> 8 errors generated.
>
> vim +613 drivers/perf/arm_pmu.c
>
>    608
>    609  bool arm_pmu_irq_is_nmi(void)
>    610  {
>    611          const struct pmu_irq_ops *irq_ops;
>    612
>  > 613          irq_ops = per_cpu(cpu_irq_ops, smp_processor_id());
>    614          if (irq_ops == &pmunmi_ops || irq_ops == &percpu_pmunmi_ops)
>    615                  return true;
>    616          else
>    617                  return false;
>    618  }
>    619
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFA6WYMnv5xgFSa%2B2UbqVW7MPfSGvsQ5MdeUwh1aX-WXKc0T_A%40mail.gmail.com.
