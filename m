Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTEXUXVQKGQEBRHBAFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B8DA3BC2
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 18:16:13 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id f11sf4521475edn.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:16:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567181773; cv=pass;
        d=google.com; s=arc-20160816;
        b=HMYBh88It7KSQTx9jBdCIlMQnyaLlpFpOyPdlH+WLWUXPFqOif73j5hW8Fe6PN0V/x
         iZfm9PRc+HkVRf7CO++apwQHzf8xggI5YymhmldL+GIv/yk/VtbNvtz1/QO0bILbcVKV
         amnQO9ef5qci1zXYSZovEuLPw6eg2FpBo43e0gUstKvIR2M6+7B1EUTi9P91EMT1OsE8
         /e7qHfCFpOFZOtlLTw08EanqZFWcUiPdpLFuN7LvDH9JRXPZ+Br831a0YvpTDl1yGw6A
         I0rniSplBH9528mbtLWdoZxPjOzyv+qlDX+Uwcx/3ZbHwEq/MnbFIDbqj1Ahm9DsJFHF
         0tFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=poSRv9Ozfgy68KXw1+7q6P6Rw8a94e+TQiwBFXDDCUU=;
        b=PFoTuGznmcpw27C7Cv4Juj9ieuXE0Z+lmHZrlV9IYdqSca/BoO/SwsFo0XK8W2gd2G
         lgvefWYxu3QKYLOfgwk4Kzy4f2fnh6g2TmSbymI+5q61cXJ5A5THVexYJx31j6NhNbv5
         97gVQVK3uf8S00S4M8rAi94qxzQ6diovsHeEe4ukqxvhlPI5awh6ASBVmCD37n0ZbPti
         DBQdyw1B5bJMjnd5y5l7yzpQlcqs3Afv8sC8ECGY/R+2Qc3J6Ho1WQb88DcuHipujQ86
         T1itpQEkTerE7Ip+QGBh3vAedqG8BAcxKdj4ZJqSIqh2ri8l5MVnpW/H8l+p99AJW2Fb
         KIfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AT2MVntX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=poSRv9Ozfgy68KXw1+7q6P6Rw8a94e+TQiwBFXDDCUU=;
        b=axP/GJOp86ck/+/GFNsSxsPDSn0nk1vRriwOFOuty/AoIXw/ZYPPixioinaVm6aInD
         dEHgphrZOAvSNRff2qxNyxC//M0x2NQc56MUVehW5iTBRnZM2LHbLX26s6OjtXwg+0NQ
         8ELJmtP7nyoXLDywVFLNuYYz1ZvNCJWx9hbHCbna/th2LBhhOHKE/1ckO4Ibpm8472Cc
         4BOmk8mvmZbMwgNGqMH5aMYSuG5Gn4/0RkfA+plTMdGeM51syJ6ihV6rq6H3N5jnWbu1
         D36fE5D+I3GKzTAvCOCW/1Bbep51J87VHI4cjIZ3UOIVKSgroofFnFRQDVhPAis5Df7Q
         u+6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=poSRv9Ozfgy68KXw1+7q6P6Rw8a94e+TQiwBFXDDCUU=;
        b=ZEbyc2oocHZZEPJuP/WUD0vuPtPZbWLIlACHQFt2OYxP0Oky3msoBtQcc/oBY3AIoy
         K+fM2VkvdbzPO5aflyLIrDQp8BquiY+xwa0ndKXwojG/lBz9VPljn5iWjbUACsY34EFD
         RiAwRPL8TcLPK+S9BJK1XMWbDmgU18wm2Il8f058utZywfkgAxwSe2YCq9swjDFAfrd9
         EK48iCP2p62lM4WoMBxYGT036smXoQZt7CU2TsEVI+q+xfWTLi4Ip6LQiZs3BnOo9qp0
         AY2/C8AGNgGCEs4w8srvo2rCrgDwwEMbY14tSjAtnzbrQI/rES+ArH3mqCFT9BGvAEJZ
         BTbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=poSRv9Ozfgy68KXw1+7q6P6Rw8a94e+TQiwBFXDDCUU=;
        b=GNhTyUHDXG8epYJdlPbGfwKfNzOQmRM5HNTQp4UnL5uOxaT/CXvWnl/dUSBbwK8sKe
         ZmD7f6lmPVYklU/qQ/zDvHEyYTHH2sbXuheYAcHlKxsZEMND8PaQz2ta1Nr/NNJFXvhF
         xvhMx8IVbMnFclyOy+VHdE4dE3bejaMEq1FoRDZ7hfmxluBgT4XEXtgktjayMmw4jNCi
         DFmqbfyboZ7AiliYEB4ZjuGzMZesxJW0mk6u++WEpM50OTRrIA9EirwHiJ4qzMq3/Pk+
         fJ4Ov589YCwrY6XJ0VsyW9kJ2Q2EXZ84zMFRfP7lFy9rXrEd/ClMhP5vTOwp2prlSIPy
         QciA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+3QA2lqK15iEcQdgf33JBZhPFySaqzOBhFnC6+BhYu01w8hD9
	H8RGvrbeS7oBI76ck1dR7No=
X-Google-Smtp-Source: APXvYqyIrewkHAThHd/3XHTcYPZR8pjNLv1gxwN6Tcmi7Sv3EX+AYxswTFbKYLOWoSbUPBxmMJl6eQ==
X-Received: by 2002:a50:8f81:: with SMTP id y1mr16438203edy.181.1567181772869;
        Fri, 30 Aug 2019 09:16:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8599:: with SMTP id v25ls1920541ejx.5.gmail; Fri, 30
 Aug 2019 09:16:12 -0700 (PDT)
X-Received: by 2002:a17:906:1317:: with SMTP id w23mr3828117ejb.312.1567181772444;
        Fri, 30 Aug 2019 09:16:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567181772; cv=none;
        d=google.com; s=arc-20160816;
        b=vIWut0PWaSenGryotbqU0a9BYt9mBtCaXlHkBCSB2PyAhjTsTixcK76Xs88xOsSVLs
         +z7XbFt0RPaj4NnP3TdHNOIqjumotaoR1cQn/OH+3QK4bV8m8BFAWkTcHgo7tWmxn1G/
         gRGSM13qn/vQ5rKuqjLGTDmmBOAAaYSqBVMucOzPMTrtvfFbepUcVJrZS81Vw/EPNhfb
         MXYxk1M9eWHp05pkTEnIJ6vS3hwzZksjM1H+cz6x4YGvCj1LA51j5TYwm2kJ3xBxU+H5
         ndo3G1sNKtlYW+jc9eB2oBboJUsV7iUmGJqrb0IbafKw5YQ3p8HmRsoBG365C7iW14r/
         tgIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gHgyROcGsuAjihg0TD81v2JBiCqnHXNnqM9iaZrzO5c=;
        b=JNT4Edy8AoSiDHcwtk+6xjEeoSNoNzV7vLLCK4drASfx3uia2brkcTz7VCCKzQ7U7A
         wEHkBIBlPHTC8ROERUpcrdAixecvShtmo4n5Eiem5z0SSlbLfZ+SJELCKd2dSMIQ+OMb
         NeHyKt/Q04WKNLGznvd0h6gUZYGgJgo3hPqXaH0bvQOfzBc9TfjtLWOWOwnUek2D4Ukp
         qSECRw/wwyyR4hFc2loedbbMC3xbHtbNDZjvGk1JOQ6xX9TXg3CC9GIQKfgPgwkXJRad
         oWTfL1KTKmepobAkdcwLSAjDl0Io8AXnG+mOjxeCWOZ+suRZtnirtN4qwVDg7+W2DoR/
         GBlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AT2MVntX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q18si288448ejp.0.2019.08.30.09.16.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 09:16:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id t9so8026692wmi.5
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 09:16:12 -0700 (PDT)
X-Received: by 2002:a1c:6c0d:: with SMTP id h13mr17837305wmc.74.1567181771781;
        Fri, 30 Aug 2019 09:16:11 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f24sm6130991wmc.25.2019.08.30.09.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2019 09:16:11 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:16:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [cryptodev:master 241/242]
 include/asm-generic/qspinlock.h:65:55: warning: passing 'u32 *' (aka
 'unsigned int *') to parameter of type 'int *' converts between pointers to
 integer types with different sign
Message-ID: <20190830161609.GA34973@archlinux-threadripper>
References: <201908302318.HRi9TWot%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908302318.HRi9TWot%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AT2MVntX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Aug 30, 2019 at 11:03:26PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: linux-crypto@vger.kernel.org
> TO: Hans de Goede <hdegoede@redhat.com>
> CC: Herbert Xu <herbert@gondor.apana.org.au>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
> head:   1bbbbcfdc0f0fa7a98ba0d551fd03d2c45d5a318
> commit: 9ecf5ad522e09d6e11a7e0a0b1845622a480f478 [241/242] crypto: sha256 - Add missing MODULE_LICENSE() to lib/crypto/sha256.c
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 9ecf5ad522e09d6e11a7e0a0b1845622a480f478
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from lib/crypto/sha256.c:16:
>    In file included from include/linux/module.h:10:
>    In file included from include/linux/stat.h:19:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:51:
>    In file included from include/linux/preempt.h:78:
>    In file included from arch/x86/include/asm/preempt.h:7:
>    In file included from include/linux/thread_info.h:38:
>    In file included from arch/x86/include/asm/thread_info.h:53:
>    In file included from arch/x86/include/asm/cpufeature.h:5:
>    arch/x86/include/asm/processor.h:557:30: warning: taking address of packed member 'sp1' of class or structure 'x86_hw_tss' may result in an unaligned pointer value [-Waddress-of-packed-member]
>            return this_cpu_read_stable(cpu_current_top_of_stack);
>                                        ^~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/include/asm/processor.h:384:34: note: expanded from macro 'cpu_current_top_of_stack'
>    #define cpu_current_top_of_stack cpu_tss_rw.x86_tss.sp1
>                                     ^~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/include/asm/percpu.h:392:59: note: expanded from macro 'this_cpu_read_stable'
>    #define this_cpu_read_stable(var)       percpu_stable_op("mov", var)
>                                                                    ^~~
>    arch/x86/include/asm/percpu.h:219:16: note: expanded from macro 'percpu_stable_op'
>                        : "p" (&(var)));                    \
>                                 ^~~
>    In file included from lib/crypto/sha256.c:16:
>    In file included from include/linux/module.h:10:
>    In file included from include/linux/stat.h:19:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:51:
>    In file included from include/linux/preempt.h:78:
>    In file included from arch/x86/include/asm/preempt.h:7:
>    In file included from include/linux/thread_info.h:38:
>    In file included from arch/x86/include/asm/thread_info.h:53:
>    In file included from arch/x86/include/asm/cpufeature.h:5:
>    arch/x86/include/asm/processor.h:557:30: warning: taking address of packed member 'sp1' of class or structure 'x86_hw_tss' may result in an unaligned pointer value [-Waddress-of-packed-member]
>            return this_cpu_read_stable(cpu_current_top_of_stack);
>                                        ^~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/include/asm/processor.h:384:34: note: expanded from macro 'cpu_current_top_of_stack'
>    #define cpu_current_top_of_stack cpu_tss_rw.x86_tss.sp1
>                                     ^~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/include/asm/percpu.h:392:59: note: expanded from macro 'this_cpu_read_stable'
>    #define this_cpu_read_stable(var)       percpu_stable_op("mov", var)
>                                                                    ^~~
>    arch/x86/include/asm/percpu.h:224:16: note: expanded from macro 'percpu_stable_op'
>                        : "p" (&(var)));                    \
>                                 ^~~
>    In file included from lib/crypto/sha256.c:16:
>    In file included from include/linux/module.h:10:
>    In file included from include/linux/stat.h:19:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:51:
>    In file included from include/linux/preempt.h:78:
>    In file included from arch/x86/include/asm/preempt.h:7:
>    In file included from include/linux/thread_info.h:38:
>    In file included from arch/x86/include/asm/thread_info.h:53:
>    In file included from arch/x86/include/asm/cpufeature.h:5:
>    arch/x86/include/asm/processor.h:557:30: warning: taking address of packed member 'sp1' of class or structure 'x86_hw_tss' may result in an unaligned pointer value [-Waddress-of-packed-member]
>            return this_cpu_read_stable(cpu_current_top_of_stack);
>                                        ^~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/include/asm/processor.h:384:34: note: expanded from macro 'cpu_current_top_of_stack'
>    #define cpu_current_top_of_stack cpu_tss_rw.x86_tss.sp1
>                                     ^~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/include/asm/percpu.h:392:59: note: expanded from macro 'this_cpu_read_stable'
>    #define this_cpu_read_stable(var)       percpu_stable_op("mov", var)
>                                                                    ^~~
>    arch/x86/include/asm/percpu.h:229:16: note: expanded from macro 'percpu_stable_op'
>                        : "p" (&(var)));                    \
>                                 ^~~
>    In file included from lib/crypto/sha256.c:16:
>    In file included from include/linux/module.h:10:
>    In file included from include/linux/stat.h:19:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:51:
>    In file included from include/linux/preempt.h:78:
>    In file included from arch/x86/include/asm/preempt.h:7:
>    In file included from include/linux/thread_info.h:38:
>    In file included from arch/x86/include/asm/thread_info.h:53:
>    In file included from arch/x86/include/asm/cpufeature.h:5:
>    arch/x86/include/asm/processor.h:557:30: warning: taking address of packed member 'sp1' of class or structure 'x86_hw_tss' may result in an unaligned pointer value [-Waddress-of-packed-member]
>            return this_cpu_read_stable(cpu_current_top_of_stack);
>                                        ^~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/include/asm/processor.h:384:34: note: expanded from macro 'cpu_current_top_of_stack'
>    #define cpu_current_top_of_stack cpu_tss_rw.x86_tss.sp1
>                                     ^~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/include/asm/percpu.h:392:59: note: expanded from macro 'this_cpu_read_stable'
>    #define this_cpu_read_stable(var)       percpu_stable_op("mov", var)
>                                                                    ^~~
>    arch/x86/include/asm/percpu.h:234:16: note: expanded from macro 'percpu_stable_op'
>                        : "p" (&(var)));                    \
>                                 ^~~
>    In file included from lib/crypto/sha256.c:16:
>    In file included from include/linux/module.h:10:
>    In file included from include/linux/stat.h:19:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:89:
>    In file included from arch/x86/include/asm/spinlock.h:27:
>    In file included from arch/x86/include/asm/qspinlock.h:95:
> >> include/asm-generic/qspinlock.h:65:55: warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
>            return likely(atomic_try_cmpxchg_acquire(&lock->val, &val, _Q_LOCKED_VAL));
>                                                                 ^~~~
>    include/linux/compiler.h:77:40: note: expanded from macro 'likely'
>    # define likely(x)      __builtin_expect(!!(x), 1)
>                                                ^
>    include/asm-generic/atomic-instrumented.h:691:38: note: passing argument to parameter 'old' here
>    atomic_try_cmpxchg(atomic_t *v, int *old, int new)
>                                         ^
>    In file included from lib/crypto/sha256.c:16:
>    In file included from include/linux/module.h:10:
>    In file included from include/linux/stat.h:19:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:89:
>    In file included from arch/x86/include/asm/spinlock.h:27:
>    In file included from arch/x86/include/asm/qspinlock.h:95:
>    include/asm-generic/qspinlock.h:78:52: warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
>            if (likely(atomic_try_cmpxchg_acquire(&lock->val, &val, _Q_LOCKED_VAL)))
>                                                              ^~~~
>    include/linux/compiler.h:77:40: note: expanded from macro 'likely'
>    # define likely(x)      __builtin_expect(!!(x), 1)
>                                                ^
>    include/asm-generic/atomic-instrumented.h:691:38: note: passing argument to parameter 'old' here
>    atomic_try_cmpxchg(atomic_t *v, int *old, int new)
>                                         ^
>    In file included from lib/crypto/sha256.c:16:
>    In file included from include/linux/module.h:10:
>    In file included from include/linux/stat.h:19:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:89:
>    In file included from arch/x86/include/asm/spinlock.h:43:
>    In file included from arch/x86/include/asm/qrwlock.h:6:
> >> include/asm-generic/qrwlock.h:65:56: warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
>            return likely(atomic_try_cmpxchg_acquire(&lock->cnts, &cnts,
>                                                                  ^~~~~
>    include/linux/compiler.h:77:40: note: expanded from macro 'likely'
>    # define likely(x)      __builtin_expect(!!(x), 1)
>                                                ^
>    include/asm-generic/atomic-instrumented.h:691:38: note: passing argument to parameter 'old' here
>    atomic_try_cmpxchg(atomic_t *v, int *old, int new)
>                                         ^
>    In file included from lib/crypto/sha256.c:16:
>    In file included from include/linux/module.h:10:
>    In file included from include/linux/stat.h:19:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:89:
>    In file included from arch/x86/include/asm/spinlock.h:43:
>    In file included from arch/x86/include/asm/qrwlock.h:6:
>    include/asm-generic/qrwlock.h:92:53: warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
>            if (likely(atomic_try_cmpxchg_acquire(&lock->cnts, &cnts, _QW_LOCKED)))
>                                                               ^~~~~
>    include/linux/compiler.h:77:40: note: expanded from macro 'likely'
>    # define likely(x)      __builtin_expect(!!(x), 1)
>                                                ^
>    include/asm-generic/atomic-instrumented.h:691:38: note: passing argument to parameter 'old' here
>    atomic_try_cmpxchg(atomic_t *v, int *old, int new)
>                                         ^
>    9 warnings generated.
> 
> vim +65 include/asm-generic/qspinlock.h
> 
> a33fda35e3a765 Waiman Long    2015-04-24  43  
> a33fda35e3a765 Waiman Long    2015-04-24  44  /**
> a33fda35e3a765 Waiman Long    2015-04-24  45   * queued_spin_is_contended - check if the lock is contended
> a33fda35e3a765 Waiman Long    2015-04-24  46   * @lock : Pointer to queued spinlock structure
> a33fda35e3a765 Waiman Long    2015-04-24  47   * Return: 1 if lock contended, 0 otherwise
> a33fda35e3a765 Waiman Long    2015-04-24  48   */
> a33fda35e3a765 Waiman Long    2015-04-24  49  static __always_inline int queued_spin_is_contended(struct qspinlock *lock)
> a33fda35e3a765 Waiman Long    2015-04-24  50  {
> a33fda35e3a765 Waiman Long    2015-04-24  51  	return atomic_read(&lock->val) & ~_Q_LOCKED_MASK;
> a33fda35e3a765 Waiman Long    2015-04-24  52  }
> a33fda35e3a765 Waiman Long    2015-04-24  53  /**
> a33fda35e3a765 Waiman Long    2015-04-24  54   * queued_spin_trylock - try to acquire the queued spinlock
> a33fda35e3a765 Waiman Long    2015-04-24  55   * @lock : Pointer to queued spinlock structure
> a33fda35e3a765 Waiman Long    2015-04-24  56   * Return: 1 if lock acquired, 0 if failed
> a33fda35e3a765 Waiman Long    2015-04-24  57   */
> a33fda35e3a765 Waiman Long    2015-04-24  58  static __always_inline int queued_spin_trylock(struct qspinlock *lock)
> a33fda35e3a765 Waiman Long    2015-04-24  59  {
> 27df89689e257c Matthew Wilcox 2018-08-20  60  	u32 val = atomic_read(&lock->val);
> 27df89689e257c Matthew Wilcox 2018-08-20  61  
> 27df89689e257c Matthew Wilcox 2018-08-20  62  	if (unlikely(val))
> a33fda35e3a765 Waiman Long    2015-04-24  63  		return 0;
> 27df89689e257c Matthew Wilcox 2018-08-20  64  
> 27df89689e257c Matthew Wilcox 2018-08-20 @65  	return likely(atomic_try_cmpxchg_acquire(&lock->val, &val, _Q_LOCKED_VAL));
> a33fda35e3a765 Waiman Long    2015-04-24  66  }
> a33fda35e3a765 Waiman Long    2015-04-24  67  
> 
> :::::: The code at line 65 was first introduced by commit
> :::::: 27df89689e257cccb604fdf56c91a75a25aa554a locking/spinlocks: Remove an instruction from spin and write locks
> 
> :::::: TO: Matthew Wilcox <willy@infradead.org>
> :::::: CC: Ingo Molnar <mingo@kernel.org>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Also reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-August/063699.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830161609.GA34973%40archlinux-threadripper.
