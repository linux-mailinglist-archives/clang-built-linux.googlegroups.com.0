Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZE4Y73AKGQEXQO5TJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6C11E8D59
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 05:09:25 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id a5sf2157912oto.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 20:09:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590808164; cv=pass;
        d=google.com; s=arc-20160816;
        b=zzAdrVXlbwJFVEnfWqwQ2TkcMF4/bSv1PnbL5sT0VRQMviVADQ2yRR4Lv2e9JgEUCK
         tWmSOUL5YVfBg1VbA6ziW6A1gbI9LLuNgMH586vxpztQ2wZ9Vp6vzzpikNG9nuxWejZd
         BuAyjtVI2ceU0UG+IUO2Y4z1cgrMvJQ9VJBfAI4+YebwIvBAMuMb2jO5aO10vsrs43EL
         SBw99nWYwnOb+x8V/59QZTL0H3Jh3zFmXbIZQ5JAShWbLtomtRsMReUE88zO86sqa+cp
         9s6biREQ0jrGl4jJruKrq4UzchDIRxQLirWIAhdLLzRfFPQmgUajXTkxKpMVM/bwChgn
         Wx7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ZXmeSIjqaB5/Lfl8uSj9YYPWT3BgZk+SIxEK0jKKYUg=;
        b=WO76BJf0PMELkbCa/KUKdr/BuE1FCC6/qjoR4IpgGPugspHnn8Xugfr9GWF5exq0eC
         crdhtA48YduZYBgMn8IMc8oR/Vu2gm4Lw4M2fPX1SUphqlIfTh2DdoOkzTMvMuc3y1/5
         m1ipkdNCAcK9/3Q9jAgeL2VJFwX65mU1UMBpXOliNwqLfDxGs/UYW0854Imq2+oEhYem
         LkNq8KQ7/KafxpnOxhIu59BeYE5E+83aYoz9Qe2emwI3P4spUC0EULp+1v52z/hFnqnV
         LKk/tET5ZYhH53qNHZGYn8i90keTOaUig+fjW8vSnPhrj1gKC6GIxCi9LmOgaMoYfvXL
         PoCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZXmeSIjqaB5/Lfl8uSj9YYPWT3BgZk+SIxEK0jKKYUg=;
        b=lZBqE7dZG75FlmpJKPlAwx5wO0jWJ8LKR7Ao3YOE7h5QFR22DKvoI5jRmDBYFBs4f1
         qKusJGYeNAyka3w1qiycsOnG26Le9p5ah/4gqRwbM7r63kwrkcouIutBtWJufN5/0nii
         TYPeaF1jylYIRvpVDjYznt/gm5RzTzr1FK62EhGjjchF43cq9ko86BiA/aMsT1/hFrKP
         xFWbeghupksSFwgCmTr5Yp6JyW83h0Mz3FT3Bn1F8tlxaGT4GSWSOV071zco8PpxqY+E
         sYuGKaptjjRGXAROtty2/EuCf64zUNCBViR07AdmTcI7EHl2VLh3i69fGPbgurUVbg5N
         +8Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZXmeSIjqaB5/Lfl8uSj9YYPWT3BgZk+SIxEK0jKKYUg=;
        b=e3nf6A6rcUr6u3YjD2tfhnb9gy3OpGhIVYCmqxSFAY+5ekXnNEpL4yqpM1e8ObjPvj
         vzDR1SdVZ8r9AYD9XUJqNyCxLuDOLGvZGs6cSwz3r1DySSmNKCoobAVL0FSZ6W4TEl9U
         4Z1nM+d6W5k2iCtNV+AMD821omKPrMh+64bJmvxi27U/ZxUWlmH36v3f4VHA/N8LyS1E
         Kb1aIFiBErogs95cTZKut1UCVZ4JdgncmP1lHOWIVZCwWpBW4u7NHFUzRv5C+HC9z0DJ
         xe/DIffWQjsC1TqBVv1hX1lQTmzNVusjif4il1u8B3kVs0uTSAHvxx2AySxMDsXgMaDM
         Jqew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zwMk9OaUcL84zWK9QhDNo8rJxblrmxjICUS7Q81gr5bOuMhn+
	/I5Q2VzNyuyn6VhVQsPBxOg=
X-Google-Smtp-Source: ABdhPJyDD5VlccAsNMTjQVGxRlq4D8NqZ9laMko6IhM/prN4xzTQIkfCGlHYbIdAjrR3vuvF6dHDjA==
X-Received: by 2002:a9d:1d1:: with SMTP id e75mr8230615ote.303.1590808164508;
        Fri, 29 May 2020 20:09:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:148c:: with SMTP id s12ls1665993otq.5.gmail; Fri,
 29 May 2020 20:09:24 -0700 (PDT)
X-Received: by 2002:a05:6830:12d7:: with SMTP id a23mr8941082otq.267.1590808164048;
        Fri, 29 May 2020 20:09:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590808164; cv=none;
        d=google.com; s=arc-20160816;
        b=QL55dM9cuEbpgMyMMlMS2DM9uQXA7DVO44vuO9LR2GKsJpvi5FxLamm1o0AXow/+Sz
         iu3p4KtfTgAojTMb+tbbnSIVHlyK/nXyMDsVt8/QNkzN6ZGzJBS58neOJpubNCQqAuxq
         I9ujN/5PgBh4T+BHV/DMjeQAEuCUkniKzeOS7rtY1qjFLirn4BGpFwUztDxbBPuJ5xh8
         lQgQFhUNv5F85ejychPW1b+U+6WtYjS2HGBNfveYREXldSbSLFLUJ5vD0ZJpz7X1ec1S
         79AvAnq9yJot2eenh12VD9ncU5rydVtCNu2MIRwECJ/WQ6GEeRn6iCf0qbLWRebN2q6K
         IudA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Q8TRzBYcpthSqZECKH4poW10AgtSTQGwZzMZcEHrazo=;
        b=f0qWQrb+RVeAact8pF4JqQPSzM5hplR7g1OpZ5nafJ2S55eFPGNVa/TyGqM+y+OfAY
         lbH91AUglbuADoW7OldvAePUKAMwE04zMxLNhsBCsMi20oPF63XRbSvCmfu9bW9cjuX+
         ktYtoE1bbdbr689QYaOBBq8D2AaYXyqdH56UGXhKx3zE7tiw/KnBfymDPgi2eWs9lv3t
         mvKhmp8ZjBTZ7xEzJm5IPyuvxiBBPxlH19pqVbGSF1IXVd8A4ln66luGFELHA70V2Nb2
         4viH3pQAtg4D7n0NsNgmZFyosf80Hlq9Vbs7ONBt75gPFxZbJsvPVIrV0sKAhkXE6PDr
         TBEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id t2si551823otr.1.2020.05.29.20.09.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 May 2020 20:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: M+RCxjfx4fHbfgcJFM+wfDqn/gNhB4bv4GdRG/L+FVTyr6WarE0BgNNz/KFS3k+K3pt5wiX7ms
 aDXoiTSQcKkQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 May 2020 20:09:20 -0700
IronPort-SDR: 2rBgKT2EwR3uzmhwwq0Fi+ATiTjJWOqcS6YNkP69+XVrMwdZG5GqE4omrG2Ui+lmD+VN36pu3e
 iFJ9kcqdAjHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,451,1583222400"; 
   d="gz'50?scan'50,208,50";a="303033898"
Received: from lkp-server01.sh.intel.com (HELO 9f9df8056aac) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 29 May 2020 20:09:16 -0700
Received: from kbuild by 9f9df8056aac with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jers3-0000ZD-TU; Sat, 30 May 2020 03:09:15 +0000
Date: Sat, 30 May 2020 11:08:18 +0800
From: kbuild test robot <lkp@intel.com>
To: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
	linuxppc-dev@lists.ozlabs.org, mpe@ellerman.id.au,
	linux-nvdimm@lists.01.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	alistair@popple.id.au, dan.j.williams@intel.com, oohall@gmail.com,
	"Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
Subject: Re: [PATCH v3 5/7] powerpc/pmem/of_pmem: Update of_pmem to use the
 new barrier instruction.
Message-ID: <202005301104.KhDcZUvf%lkp@intel.com>
References: <20200519055502.128318-5-aneesh.kumar@linux.ibm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
In-Reply-To: <20200519055502.128318-5-aneesh.kumar@linux.ibm.com>
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


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Aneesh,

I love your patch! Yet something to improve:

[auto build test ERROR on powerpc/next]
[also build test ERROR on v5.7-rc7]
[cannot apply to next-20200529]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Aneesh-Kumar-K-V/powerpc-pmem-Restrict-papr_scm-to-P8-and-above/20200519-195350
base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
config: powerpc-randconfig-r016-20200529 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2d068e534f1671459e1b135852c1b3c10502e929)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from arch/powerpc/kernel/syscall_64.c:4:
In file included from arch/powerpc/include/asm/asm-prototypes.h:12:
>> arch/powerpc/include/asm/cacheflush.h:126:6: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
if (cpu_has_feature(CPU_FTR_ARCH_207S))
^
arch/powerpc/include/asm/cacheflush.h:126:6: note: did you mean 'mmu_has_feature'?
arch/powerpc/include/asm/mmu.h:234:20: note: 'mmu_has_feature' declared here
static inline bool mmu_has_feature(unsigned long feature)
^
In file included from arch/powerpc/kernel/syscall_64.c:4:
In file included from arch/powerpc/include/asm/asm-prototypes.h:17:
In file included from arch/powerpc/include/asm/mmu_context.h:12:
In file included from arch/powerpc/include/asm/cputhreads.h:7:
>> arch/powerpc/include/asm/cpu_has_feature.h:49:20: error: static declaration of 'cpu_has_feature' follows non-static declaration
static inline bool cpu_has_feature(unsigned long feature)
^
arch/powerpc/include/asm/cacheflush.h:126:6: note: previous implicit declaration is here
if (cpu_has_feature(CPU_FTR_ARCH_207S))
^
2 errors generated.
--
In file included from arch/powerpc/kernel/kprobes.c:23:
>> arch/powerpc/include/asm/cacheflush.h:126:6: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
if (cpu_has_feature(CPU_FTR_ARCH_207S))
^
arch/powerpc/include/asm/cacheflush.h:126:6: note: did you mean 'mmu_has_feature'?
arch/powerpc/include/asm/mmu.h:234:20: note: 'mmu_has_feature' declared here
static inline bool mmu_has_feature(unsigned long feature)
^
1 error generated.
--
In file included from arch/powerpc/kernel/optprobes.c:15:
>> arch/powerpc/include/asm/cacheflush.h:126:6: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
if (cpu_has_feature(CPU_FTR_ARCH_207S))
^
arch/powerpc/include/asm/cacheflush.h:126:6: note: did you mean 'mmu_has_feature'?
arch/powerpc/include/asm/mmu.h:234:20: note: 'mmu_has_feature' declared here
static inline bool mmu_has_feature(unsigned long feature)
^
arch/powerpc/kernel/optprobes.c:149:6: warning: no previous prototype for function 'patch_imm32_load_insns' [-Wmissing-prototypes]
void patch_imm32_load_insns(unsigned int val, kprobe_opcode_t *addr)
^
arch/powerpc/kernel/optprobes.c:149:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void patch_imm32_load_insns(unsigned int val, kprobe_opcode_t *addr)
^
static
arch/powerpc/kernel/optprobes.c:167:6: warning: no previous prototype for function 'patch_imm64_load_insns' [-Wmissing-prototypes]
void patch_imm64_load_insns(unsigned long val, int reg, kprobe_opcode_t *addr)
^
arch/powerpc/kernel/optprobes.c:167:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void patch_imm64_load_insns(unsigned long val, int reg, kprobe_opcode_t *addr)
^
static
2 warnings and 1 error generated.
--
In file included from arch/powerpc/kernel/epapr_paravirt.c:11:
>> arch/powerpc/include/asm/cacheflush.h:126:6: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
if (cpu_has_feature(CPU_FTR_ARCH_207S))
^
arch/powerpc/include/asm/cacheflush.h:126:6: note: did you mean 'mmu_has_feature'?
arch/powerpc/include/asm/mmu.h:234:20: note: 'mmu_has_feature' declared here
static inline bool mmu_has_feature(unsigned long feature)
^
In file included from arch/powerpc/kernel/epapr_paravirt.c:13:
In file included from arch/powerpc/include/asm/machdep.h:8:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:33:
In file included from arch/powerpc/include/asm/delay.h:7:
In file included from arch/powerpc/include/asm/time.h:17:
>> arch/powerpc/include/asm/cpu_has_feature.h:49:20: error: static declaration of 'cpu_has_feature' follows non-static declaration
static inline bool cpu_has_feature(unsigned long feature)
^
arch/powerpc/include/asm/cacheflush.h:126:6: note: previous implicit declaration is here
if (cpu_has_feature(CPU_FTR_ARCH_207S))
^
In file included from arch/powerpc/kernel/epapr_paravirt.c:13:
In file included from arch/powerpc/include/asm/machdep.h:8:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:23:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_RET(inb, u8, (unsigned long port), (port), pio, port)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:593:9: note: expanded from macro 'DEF_PCI_AC_RET'
return __do_##name al;                                                    ^~~~~~~~~~~~~~
<scratch space>:32:1: note: expanded from here
__do_inb
^
arch/powerpc/include/asm/io.h:524:53: note: expanded from macro '__do_inb'
#define __do_inb(port)          readb((PCI_IO_ADDR)_IO_BASE + port);
~~~~~~~~~~~~~~~~~~~~~ ^
In file included from arch/powerpc/kernel/epapr_paravirt.c:13:
In file included from arch/powerpc/include/asm/machdep.h:8:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:24:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_RET(inw, u16, (unsigned long port), (port), pio, port)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:593:9: note: expanded from macro 'DEF_PCI_AC_RET'
return __do_##name al;                                                    ^~~~~~~~~~~~~~
<scratch space>:34:1: note: expanded from here
__do_inw
^
arch/powerpc/include/asm/io.h:525:53: note: expanded from macro '__do_inw'
#define __do_inw(port)          readw((PCI_IO_ADDR)_IO_BASE + port);
~~~~~~~~~~~~~~~~~~~~~ ^
In file included from arch/powerpc/kernel/epapr_paravirt.c:13:
In file included from arch/powerpc/include/asm/machdep.h:8:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:25:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_RET(inl, u32, (unsigned long port), (port), pio, port)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:593:9: note: expanded from macro 'DEF_PCI_AC_RET'
return __do_##name al;                                                    ^~~~~~~~~~~~~~
<scratch space>:36:1: note: expanded from here
__do_inl
^
arch/powerpc/include/asm/io.h:526:53: note: expanded from macro '__do_inl'
#define __do_inl(port)          readl((PCI_IO_ADDR)_IO_BASE + port);
~~~~~~~~~~~~~~~~~~~~~ ^
In file included from arch/powerpc/kernel/epapr_paravirt.c:13:
In file included from arch/powerpc/include/asm/machdep.h:8:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:26:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(outb, (u8 val, unsigned long port), (val, port), pio, port)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
__do_##name al;                                                    ^~~~~~~~~~~~~~
<scratch space>:38:1: note: expanded from here
__do_outb
^
arch/powerpc/include/asm/io.h:521:62: note: expanded from macro '__do_outb'
#define __do_outb(val, port)    writeb(val,(PCI_IO_ADDR)_IO_BASE+port);
~~~~~~~~~~~~~~~~~~~~~^
In file included from arch/powerpc/kernel/epapr_paravirt.c:13:
In file included from arch/powerpc/include/asm/machdep.h:8:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:27:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(outw, (u16 val, unsigned long port), (val, port), pio, port)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
__do_##name al;                                                    ^~~~~~~~~~~~~~
<scratch space>:40:1: note: expanded from here
__do_outw
^
arch/powerpc/include/asm/io.h:522:62: note: expanded from macro '__do_outw'
#define __do_outw(val, port)    writew(val,(PCI_IO_ADDR)_IO_BASE+port);
~~~~~~~~~~~~~~~~~~~~~^
In file included from arch/powerpc/kernel/epapr_paravirt.c:13:
In file included from arch/powerpc/include/asm/machdep.h:8:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/powerpc/include/asm/io.h:605:
arch/powerpc/include/asm/io-defs.h:28:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
DEF_PCI_AC_NORET(outl, (u32 val, unsigned long port), (val, port), pio, port)
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
arch/powerpc/include/asm/io.h:602:3: note: expanded from macro 'DEF_PCI_AC_NORET'
__do_##name al;                                 --
In file included from arch/powerpc/lib/pmem.c:10:
>> arch/powerpc/include/asm/cacheflush.h:126:6: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
if (cpu_has_feature(CPU_FTR_ARCH_207S))
^
arch/powerpc/include/asm/cacheflush.h:126:6: note: did you mean 'mmu_has_feature'?
arch/powerpc/include/asm/mmu.h:234:20: note: 'mmu_has_feature' declared here
static inline bool mmu_has_feature(unsigned long feature)
^
arch/powerpc/lib/pmem.c:44:6: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
if (cpu_has_feature(CPU_FTR_ARCH_207S))
^
arch/powerpc/lib/pmem.c:50:6: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
if (cpu_has_feature(CPU_FTR_ARCH_207S))
^
arch/powerpc/lib/pmem.c:57:6: warning: no previous prototype for function 'arch_wb_cache_pmem' [-Wmissing-prototypes]
void arch_wb_cache_pmem(void *addr, size_t size)
^
arch/powerpc/lib/pmem.c:57:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void arch_wb_cache_pmem(void *addr, size_t size)
^
static
arch/powerpc/lib/pmem.c:64:6: warning: no previous prototype for function 'arch_invalidate_pmem' [-Wmissing-prototypes]
void arch_invalidate_pmem(void *addr, size_t size)
^
arch/powerpc/lib/pmem.c:64:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void arch_invalidate_pmem(void *addr, size_t size)
^
static
2 warnings and 3 errors generated.

vim +/cpu_has_feature +126 arch/powerpc/include/asm/cacheflush.h

   113	
   114	#define copy_to_user_page(vma, page, vaddr, dst, src, len) \
   115		do { \
   116			memcpy(dst, src, len); \
   117			flush_icache_user_range(vma, page, vaddr, len); \
   118		} while (0)
   119	#define copy_from_user_page(vma, page, vaddr, dst, src, len) \
   120		memcpy(dst, src, len)
   121	
   122	
   123	#define arch_pmem_flush_barrier arch_pmem_flush_barrier
   124	static inline void  arch_pmem_flush_barrier(void)
   125	{
 > 126		if (cpu_has_feature(CPU_FTR_ARCH_207S))
   127			asm volatile(PPC_PHWSYNC ::: "memory");
   128	}
   129	#endif /* __KERNEL__ */
   130	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005301104.KhDcZUvf%25lkp%40intel.com.

--r5Pyd7+fXNt84Ff3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--r5Pyd7+fXNt84Ff3--
