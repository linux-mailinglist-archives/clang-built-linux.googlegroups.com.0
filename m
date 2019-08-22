Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN7567VAKGQE2VJNBHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id C12BC98972
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 04:32:24 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id a2sf3129505ybk.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 19:32:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566441143; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgKD/7igicYryhdycqUdo+BOHT8UcTguVk5htuxGKN8EFqML0oUBS95w9C91HV6T4E
         l+mLC3pOUARoxKkkX0TrARQwXwgO63+ChGQ9QXJxzKMOdcIolRDyopsmgx57bIpgpUR5
         NehfElkt+ciZjGcNpKVTf/9ZdSxTu1eLKnbzI/9hS9UxUDEKYsOyM/YxSL1T9XiEqc2f
         6mQynf8Z0FJNvQru281xr/NSRzohWrCMdJakBfwq1BGZqeP6RyNXAlEnO0QahniMX42X
         OM+VSv/c75jJ3waT52vfmAXD3wOGLdn/clXc4QokTpVsqIi7IQOmJU3/5FTnSxrOL7P3
         9PLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8DLLU20c4dm5M8FNEyVAQyqUbINuUWvywh+RwkBtCAk=;
        b=gh6zTN+AV8Shz7xdBXWHD8T13pKTXSEROLGdqzY25VzeLr4IcWQk/KP8IYCT4wValv
         aY4RpzR6p6DoEKv+3kV0NSOCPoqRsJRH3Hs72ZziTT1oZ9neDXYqkEFXwVjsYkfptb92
         DTFPuYsS8cd6gCD6rvNBgUJ1RxrItfydDxBBlNAs01oXlyrbPmXo1i5WgUJSoT8nQRMX
         T9ziebsQv3szrkUu0p1nSSnYPgkb3mG6CVMkOs8XmOGS+AlpWiyFTh3gdLQx/neDkppD
         H7LGyAcB929dNP7rbKK8l806pPh+PZv1YE6hBdPt6zBA28rPHh/hXpgJqDErv2FEEKnD
         mhNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8DLLU20c4dm5M8FNEyVAQyqUbINuUWvywh+RwkBtCAk=;
        b=XnJ3KN3/wFCwwZ1OqnJZvcloHp298bpH/O/BfTieXLX/OX3YVr7pHjQ120IYPjEWwt
         bPPy7mQnVBaB18THRV/FYUkn6hoaBi2fEINUt400KxHMj4QDscQXZu7EMx3cIg6Swrke
         zq0ZfXIl043fRXq+t9WDh8Js3Ob/ZjcabNNcxfetVxpRMfMepQ7HzJ9tz69KF775q/EL
         z92Sr9hwh5DIjm84EouhtN/a1LIqaLzq+kqH+TqevBpr9NDsZph7brnqXukUWIOhrtA5
         cEnmrCSjTJ4Tn5j27H75XLwSnGWmTsCewnpM1JfkcBGwqxKJa5YRj4rT3HOF9ALCFStV
         bgCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8DLLU20c4dm5M8FNEyVAQyqUbINuUWvywh+RwkBtCAk=;
        b=QpHQGyb/TMQv6gVLpnBCwew3YGJjA+jhE+9LgSM5vvHrtIWANyKgcXTh9nj9+03m38
         GprV8jAV2LCTdP6qPjPk7nApzmpfYDpvphoFVdCGx7MSTO4Ogx5LhTZiBgRUcvr150dn
         +zeSdZs6MP1CgZh15EvJ0EPFrCIaRSksLvTdTJ3UHUg3rWsXc1muprjYQuDTWSS6z8cY
         fmdnVeaO7zGJ7/Wih5ai+gzSkTeuXHxEmgAcODiVmqVEfsaofuLx3hn+by3m1RTkZQMO
         2F8s+Lv+Cpyno2mYVQ1TSaltxXWqzlxJXiczAl+C2se+w9y14F1JHLQUdGtMjVGSAbZo
         NcAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqEtp/awLxSk2NuXVdINqyAClS/0FqCem/qf0zEtULtifFhMSy
	QbaU0EQkYspqDF4wLmsx6qk=
X-Google-Smtp-Source: APXvYqzcGNq9oqVnHvJrvs4VNEaPB1SUaqC8ogUt08XL4zuYdnnoYSyCO4U/62DB0UCxolmtoG62aw==
X-Received: by 2002:a25:d605:: with SMTP id n5mr25176003ybg.232.1566441143384;
        Wed, 21 Aug 2019 19:32:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d6c3:: with SMTP id n186ls989894ybg.9.gmail; Wed, 21 Aug
 2019 19:32:23 -0700 (PDT)
X-Received: by 2002:a25:1f41:: with SMTP id f62mr3527830ybf.518.1566441143025;
        Wed, 21 Aug 2019 19:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566441143; cv=none;
        d=google.com; s=arc-20160816;
        b=YfRQ4je3t/JGv4AT323KbPsq5Eh29nz7TNi8UYOIhRs7gdk88/bD02F37zmiW3xEt4
         3ac1azmupn2TmKKixQez7h1Q+mBKFnLw5zXtbC/nGvsUSyo6mONzLUvF+bRRfTg00Wlo
         4MVa6Wv+Wf2iMzK5j/Gft8ebz+Qtb5y5ZON6rg4qbHPwFW7xF3+tWqGc+3/ZQGXwSyF7
         RdpNYTyB4Ozgrbu21vRCky4q/1X8l9J2PDvYl6/gdsrFJFugbk1Vc5rQ2lxxgusG0YzF
         v9ly+VCm3QhdlQT2GtqWOCgmiIiQq7QD6wJUToBZYh511PiulblDV5qgi2pmNl+DRhjI
         AGAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=k+OGzsOk1mPza83FQoQsU+na+eToP9W56MIN7YgJhUo=;
        b=OK0/SBhT+6OQLRlFYbrOLaYWk2ROB1+XebDK5pPqj7y+VrfaBRuWwnU9BhLIeyN5gY
         9L0/df/Jsorfs8pPeVPzvsFTnCCXAwHGPwRQxm8WnyAal4qLPfksh4mDRDRv1MQZt/Aa
         fIGNQ1o8DVSdtxSXERipGJSsPt6ioCNC1Z2Cu9HYTdZb4v/6UDMuxUmEWnV3FZmnK/YN
         bseEyzqgrjbgxfS5F+XKWp5pq+YMrgmsgIHAK6OCiaOWMuOz6wyeYWXiBTMtq3CTNXXu
         SQqPqxq2aXppAE1D6nzdMGTI145415i7DNicIjG2sMAJ9XFUkB9qAvJis4qk84fdFoxg
         d0ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id r130si1389305ywe.5.2019.08.21.19.32.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 19:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Aug 2019 19:32:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,415,1559545200"; 
   d="gz'50?scan'50,208,50";a="378347482"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 21 Aug 2019 19:32:19 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i0cte-0004ie-JU; Thu, 22 Aug 2019 10:32:18 +0800
Date: Thu, 22 Aug 2019 10:32:16 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [kees:clang/address_space 1/1]
 arch/arm64/include/asm/arch_timer.h:147:11: error: automatic variable
 qualified with an address space
Message-ID: <201908221058.qWTYzADt%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="eqwp5aeofdjr44r5"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--eqwp5aeofdjr44r5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Kees Cook <keescook@chromium.org>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/kees/linux.git clang/address_space
head:   beff911c13390a71b3f7921fd82ec6a71ca75c02
commit: beff911c13390a71b3f7921fd82ec6a71ca75c02 [1/1] [WIP] Compiler Attributes: support noderef and address_space
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout beff911c13390a71b3f7921fd82ec6a71ca75c02
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
   In file included from arch/arm64/include/asm/arch_timer.h:28:
   In file included from include/linux/smp.h:68:
>> arch/arm64/include/asm/smp.h:45:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
   DECLARE_PER_CPU_READ_MOSTLY(int, cpu_number);
   ^
   include/linux/percpu-defs.h:169:2: note: expanded from macro 'DECLARE_PER_CPU_READ_MOSTLY'
           DECLARE_PER_CPU_SECTION(type, name, "..read_mostly")
           ^
   include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
           extern __PCPU_ATTRS(sec) __typeof__(type) name
           ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:73:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
   DECLARE_PER_CPU(const struct arch_timer_erratum_workaround *,
   ^
   include/linux/percpu-defs.h:112:2: note: expanded from macro 'DECLARE_PER_CPU'
           DECLARE_PER_CPU_SECTION(type, name, "")
           ^
   include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
           extern __PCPU_ATTRS(sec) __typeof__(type) name
           ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: error: automatic variable qualified with an address space
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^
   include/linux/percpu-defs.h:421:28: note: expanded from macro 'raw_cpu_read'
   #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:319:19: note: expanded from macro '__pcpu_size_call_return'
           typeof(variable) pscr_ret__;                                    \
                            ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
        __ptr = (unsigned long) (ptr);                             \
                                 ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
       (typeof(ptr)) (__ptr + (off)); })
               ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:109:1: note: expanded from here
   raw_cpu_read_1
   ^
   include/asm-generic/percpu.h:195:30: note: expanded from macro 'raw_cpu_read_1'
   #define raw_cpu_read_1(pcp)             raw_cpu_generic_read(pcp)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:67:2: note: expanded from macro 'raw_cpu_generic_read'
           *raw_cpu_ptr(&(pcp));                                           \
           ^~~~~~~~~~~~~~~~~~~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
        __ptr = (unsigned long) (ptr);                             \
                                 ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
       (typeof(ptr)) (__ptr + (off)); })
               ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:110:1: note: expanded from here
   raw_cpu_read_2
   ^
   include/asm-generic/percpu.h:198:30: note: expanded from macro 'raw_cpu_read_2'
   #define raw_cpu_read_2(pcp)             raw_cpu_generic_read(pcp)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:67:2: note: expanded from macro 'raw_cpu_generic_read'
           *raw_cpu_ptr(&(pcp));                                           \
           ^~~~~~~~~~~~~~~~~~~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
        __ptr = (unsigned long) (ptr);                             \
                                 ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
       (typeof(ptr)) (__ptr + (off)); })
               ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:111:1: note: expanded from here
   raw_cpu_read_4
   ^
   include/asm-generic/percpu.h:201:30: note: expanded from macro 'raw_cpu_read_4'
   #define raw_cpu_read_4(pcp)             raw_cpu_generic_read(pcp)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/percpu.h:67:2: note: expanded from macro 'raw_cpu_generic_read'
           *raw_cpu_ptr(&(pcp));                                           \
           ^~~~~~~~~~~~~~~~~~~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
                           return arch_timer_reg_read_stable(cntp_tval_el0);
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
        __ptr = (unsigned long) (ptr);                             \
                                 ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
>> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
   arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
                   _val = erratum_handler(read_ ## reg)();                 \
                          ^
   arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
                   __wa = __this_cpu_read(timer_unstable_counter_workaround); \
                          ^
   include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^
   note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:

vim +147 arch/arm64/include/asm/arch_timer.h

16d10ef29f25ab Ding Tianhong 2017-02-06   72  
6acc71ccac7187 Marc Zyngier  2017-02-20  @73  DECLARE_PER_CPU(const struct arch_timer_erratum_workaround *,
6acc71ccac7187 Marc Zyngier  2017-02-20   74  		timer_unstable_counter_workaround);
f6dc1576cd5174 Scott Wood    2016-09-22   75  
57f27666f91a85 Marc Zyngier  2019-04-08   76  /* inline sysreg accessors that make erratum_handler() work */
57f27666f91a85 Marc Zyngier  2019-04-08   77  static inline notrace u32 arch_timer_read_cntp_tval_el0(void)
57f27666f91a85 Marc Zyngier  2019-04-08   78  {
57f27666f91a85 Marc Zyngier  2019-04-08   79  	return read_sysreg(cntp_tval_el0);
57f27666f91a85 Marc Zyngier  2019-04-08   80  }
57f27666f91a85 Marc Zyngier  2019-04-08   81  
57f27666f91a85 Marc Zyngier  2019-04-08   82  static inline notrace u32 arch_timer_read_cntv_tval_el0(void)
57f27666f91a85 Marc Zyngier  2019-04-08   83  {
57f27666f91a85 Marc Zyngier  2019-04-08   84  	return read_sysreg(cntv_tval_el0);
57f27666f91a85 Marc Zyngier  2019-04-08   85  }
57f27666f91a85 Marc Zyngier  2019-04-08   86  
57f27666f91a85 Marc Zyngier  2019-04-08   87  static inline notrace u64 arch_timer_read_cntpct_el0(void)
57f27666f91a85 Marc Zyngier  2019-04-08   88  {
57f27666f91a85 Marc Zyngier  2019-04-08   89  	return read_sysreg(cntpct_el0);
57f27666f91a85 Marc Zyngier  2019-04-08   90  }
57f27666f91a85 Marc Zyngier  2019-04-08   91  
57f27666f91a85 Marc Zyngier  2019-04-08   92  static inline notrace u64 arch_timer_read_cntvct_el0(void)
57f27666f91a85 Marc Zyngier  2019-04-08   93  {
57f27666f91a85 Marc Zyngier  2019-04-08   94  	return read_sysreg(cntvct_el0);
57f27666f91a85 Marc Zyngier  2019-04-08   95  }
57f27666f91a85 Marc Zyngier  2019-04-08   96  
f6dc1576cd5174 Scott Wood    2016-09-22   97  #define arch_timer_reg_read_stable(reg)					\
f6dc1576cd5174 Scott Wood    2016-09-22   98  	({								\
f6dc1576cd5174 Scott Wood    2016-09-22   99  		u64 _val;						\
57f27666f91a85 Marc Zyngier  2019-04-08  100  									\
adb4f11e0a8f4e Ding Tianhong 2017-08-10  101  		preempt_disable_notrace();				\
57f27666f91a85 Marc Zyngier  2019-04-08  102  		_val = erratum_handler(read_ ## reg)();			\
adb4f11e0a8f4e Ding Tianhong 2017-08-10  103  		preempt_enable_notrace();				\
57f27666f91a85 Marc Zyngier  2019-04-08  104  									\
f6dc1576cd5174 Scott Wood    2016-09-22  105  		_val;							\
f6dc1576cd5174 Scott Wood    2016-09-22  106  	})
f6dc1576cd5174 Scott Wood    2016-09-22  107  
e09f3cc0184d6b Stephen Boyd  2013-07-18  108  /*
e09f3cc0184d6b Stephen Boyd  2013-07-18  109   * These register accessors are marked inline so the compiler can
e09f3cc0184d6b Stephen Boyd  2013-07-18  110   * nicely work out which register we want, and chuck away the rest of
e09f3cc0184d6b Stephen Boyd  2013-07-18  111   * the code.
e09f3cc0184d6b Stephen Boyd  2013-07-18  112   */
e09f3cc0184d6b Stephen Boyd  2013-07-18  113  static __always_inline
60faddf6eb3aba Stephen Boyd  2013-07-18  114  void arch_timer_reg_write_cp15(int access, enum arch_timer_reg reg, u32 val)
1aee5d7a8120cb Mark Rutland  2012-11-20  115  {
1aee5d7a8120cb Mark Rutland  2012-11-20  116  	if (access == ARCH_TIMER_PHYS_ACCESS) {
1aee5d7a8120cb Mark Rutland  2012-11-20  117  		switch (reg) {
1aee5d7a8120cb Mark Rutland  2012-11-20  118  		case ARCH_TIMER_REG_CTRL:
cd5f22d7967f61 Mark Rutland  2016-09-08  119  			write_sysreg(val, cntp_ctl_el0);
1aee5d7a8120cb Mark Rutland  2012-11-20  120  			break;
1aee5d7a8120cb Mark Rutland  2012-11-20  121  		case ARCH_TIMER_REG_TVAL:
cd5f22d7967f61 Mark Rutland  2016-09-08  122  			write_sysreg(val, cntp_tval_el0);
1aee5d7a8120cb Mark Rutland  2012-11-20  123  			break;
1aee5d7a8120cb Mark Rutland  2012-11-20  124  		}
1aee5d7a8120cb Mark Rutland  2012-11-20  125  	} else if (access == ARCH_TIMER_VIRT_ACCESS) {
1aee5d7a8120cb Mark Rutland  2012-11-20  126  		switch (reg) {
1aee5d7a8120cb Mark Rutland  2012-11-20  127  		case ARCH_TIMER_REG_CTRL:
cd5f22d7967f61 Mark Rutland  2016-09-08  128  			write_sysreg(val, cntv_ctl_el0);
1aee5d7a8120cb Mark Rutland  2012-11-20  129  			break;
1aee5d7a8120cb Mark Rutland  2012-11-20  130  		case ARCH_TIMER_REG_TVAL:
cd5f22d7967f61 Mark Rutland  2016-09-08  131  			write_sysreg(val, cntv_tval_el0);
1aee5d7a8120cb Mark Rutland  2012-11-20  132  			break;
1aee5d7a8120cb Mark Rutland  2012-11-20  133  		}
1aee5d7a8120cb Mark Rutland  2012-11-20  134  	}
1aee5d7a8120cb Mark Rutland  2012-11-20  135  
1aee5d7a8120cb Mark Rutland  2012-11-20  136  	isb();
1aee5d7a8120cb Mark Rutland  2012-11-20  137  }
1aee5d7a8120cb Mark Rutland  2012-11-20  138  
e09f3cc0184d6b Stephen Boyd  2013-07-18  139  static __always_inline
60faddf6eb3aba Stephen Boyd  2013-07-18  140  u32 arch_timer_reg_read_cp15(int access, enum arch_timer_reg reg)
1aee5d7a8120cb Mark Rutland  2012-11-20  141  {
1aee5d7a8120cb Mark Rutland  2012-11-20  142  	if (access == ARCH_TIMER_PHYS_ACCESS) {
1aee5d7a8120cb Mark Rutland  2012-11-20  143  		switch (reg) {
1aee5d7a8120cb Mark Rutland  2012-11-20  144  		case ARCH_TIMER_REG_CTRL:
cd5f22d7967f61 Mark Rutland  2016-09-08  145  			return read_sysreg(cntp_ctl_el0);
1aee5d7a8120cb Mark Rutland  2012-11-20  146  		case ARCH_TIMER_REG_TVAL:
f6dc1576cd5174 Scott Wood    2016-09-22 @147  			return arch_timer_reg_read_stable(cntp_tval_el0);
1aee5d7a8120cb Mark Rutland  2012-11-20  148  		}
1aee5d7a8120cb Mark Rutland  2012-11-20  149  	} else if (access == ARCH_TIMER_VIRT_ACCESS) {
1aee5d7a8120cb Mark Rutland  2012-11-20  150  		switch (reg) {
1aee5d7a8120cb Mark Rutland  2012-11-20  151  		case ARCH_TIMER_REG_CTRL:
cd5f22d7967f61 Mark Rutland  2016-09-08  152  			return read_sysreg(cntv_ctl_el0);
1aee5d7a8120cb Mark Rutland  2012-11-20  153  		case ARCH_TIMER_REG_TVAL:
f6dc1576cd5174 Scott Wood    2016-09-22  154  			return arch_timer_reg_read_stable(cntv_tval_el0);
1aee5d7a8120cb Mark Rutland  2012-11-20  155  		}
1aee5d7a8120cb Mark Rutland  2012-11-20  156  	}
1aee5d7a8120cb Mark Rutland  2012-11-20  157  
cd5f22d7967f61 Mark Rutland  2016-09-08  158  	BUG();
1aee5d7a8120cb Mark Rutland  2012-11-20  159  }
1aee5d7a8120cb Mark Rutland  2012-11-20  160  

:::::: The code at line 147 was first introduced by commit
:::::: f6dc1576cd517440313c9551b6ffa3d7e389c7c7 arm64: arch_timer: Work around QorIQ Erratum A-008585

:::::: TO: Scott Wood <oss@buserror.net>
:::::: CC: Will Deacon <will.deacon@arm.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908221058.qWTYzADt%25lkp%40intel.com.

--eqwp5aeofdjr44r5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
1Rup+tw28sA+Bj1sqZ6d+oCJSaHt7uCK+xzFmB5J+IiPtrESUpHFcOaEEDJa97NjtpyBzOyO
0msuLDONObcnO/4ro85EErJH/S13jLuL160V2MVybX3iqsXuWNKkYtrg2jilP5WTuaxkTrip
zxjqiajSPS5VoVg2hKaFUxXvPhWRYZPvJNnM2S/X4+8Mxzzf798/jM1CfLpj4081BJ/Z8HYa
Q4188XSFiFKOHxDJQT6JEXHpq/f7149ncct+ldz/rXvU4SVtk2vOopSRlInS3cYwhoS+OqMI
MUkpdyGZHWO7ED+TspT8SAxSXtCdaTp50Ii9oyPwj+KbFvWiT0s//bXM0193z/cffPf+9vQd
kwLEfNrhJyegfYnCKKB4NgCAy2397Lo5x2F1aBx9SAyqa6UudCqvVhM7SJprTmreVHpO5jTN
37KRaWs7US29J93g3H//rkSgAR85EnX/wFnCuItzYIQ1tLgwteEaUIbsOIFLSZyJiNHnsvmo
zZ2niYmKiZqxx+c/fgGB7l48RuN5ju/89BLTYLl0yApBjMZd4uOaZRhod1l4M3PY0uBQuPNr
d4mbpolFwCp3SS8gltiGvjjYqPyPjSyYiQs9MzpvPX38+5f89ZcAenWkodT7JQ/2c3SYpkdA
7b/MFx4qdS83goNkUeajF6f9Z1EQgJx/8LmAku3NDBAIRGYhMgTXCJkM7ETmstVNOiQvuv/P
r5zh3/PTw/OVqPAfcl0Neg6dv4sMwwicIqNlSVJj6HwIVFiheQT+jmJqgp765SnSb1t7GkhO
ZsePUSBDxIQ+fiimngAIqcgOAXFtOVvYWtMem5HyK1zp0AOEdDXRBvLw3EPM25QxotPojGZP
+vTxYK4s8QX8j8X0GhYgLjLnuMXPME9idp1noJyhOQ1E4TAGXNQpKcKwvPpv+bfLD8zp1Yt0
9kOwUvkBxhOms/pfZo3Uk5KSKK5KF8Kng+nAHxCdMvLm6If8Ny66FHGrKyEmMAD43LFmAlU6
brE1GlbKUUvEk+w/4qIrF9orwm86p/Kdpqo0p9U8UbqRQknX+faLlhDeZn4aaxUQDyO1S3Ce
pp3e+O9MdUfEf6eheuTLdyKyEmcasCBSkwAmcloa3H8l/q1ewlH34cXlPPNhVEdRvRkJV0bt
baq4gO3dQxXvb59vD2/Pqj47K/QoQK1jUbXcztdoBnGXt4TZYgcCBRljwEniYu5Sth0t+IgH
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

--eqwp5aeofdjr44r5--
