Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKNJ2LZAKGQEUBEZA6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id D757B16B80C
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 04:29:46 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id c31sf1131314pje.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 19:29:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582601385; cv=pass;
        d=google.com; s=arc-20160816;
        b=DhnuChPRNttWiSKwd4b0dq6rytGkHbXTklXVvbpEFd3/2BXd0hmClAD/GMpWg6sjui
         /p/FF3uirrGnYb7q0kCL8dFdZLI6Iqgu2pVarxSnQ3rLOunrQC890DmDbOF9VxgNur36
         FnJJfRCUHI+kEh3sEgWLEYE8sDiSjphzcuWyu5Y9+0BksQ6TDCZrzum1ZZNHG8DKQJML
         6Ts+pc/OzU8NT5tPx/QBmHczxOqvu1IqggkqIDXazEn+dZ+afga5/UbNPfxXw7EWFF/i
         E5P2nDcplzJfu0a8d0dmLwLPWbcIdmwMcz2iyENQiGiuK1VWUJk988oLhu7DOJx1+Kls
         r29g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Yh/3MvSE6vNeFsNUYAGhlyytUTJtvcXzDTzpl9f9k/s=;
        b=XDNk1fPGrEXpb/DRp6VDY7RIi4TeEd+aZRzBcAvmFTMRAKBs3NFe6cKhq0TgkN7erD
         wV6j3z9xToSoiedwY/OU2ES71xETTPIlbyTXZKb0PY7T4+2MDKOzf/MHdCeUtTssvrBc
         m14EZpGfK6UO1jwLYhdXGgIBpZrioQoLLnDgj49jUxHT7iJ1cka9IrW5Vwt/4OwixHjb
         yxQWGAdbkDPbxEHVE2qiuww3tRvFdDdIoO5ncODn2DGNSHYO5oO23jx4yN8SnnwewWeg
         MHtwb60+ugAKEGEbt0/R+7FjmCmZA2U/am57PNVUz2CBL253EtrpXokS+KQuDc2zsLV/
         v35w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ean9ea9J;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yh/3MvSE6vNeFsNUYAGhlyytUTJtvcXzDTzpl9f9k/s=;
        b=iUlCzZ5GWmWo/E2/pJpuIeQiiCyBvbaIBhpTQ9sklLPyi367VMmnO4plwsNcvUKgdl
         VxMWdO8KZkCUe0PLEVMLRUCE+TdQFCoXiZP41vCbXmRBkkjaQgriPxvph0wD245pSjJr
         kcH02H5FySabOEPb+t6YlWTRXxNp0gQBs2nfxqes6kHJFonibWbMFK2gXnHEAzNkJyXS
         dYmBdoyJS+8dutpgVZ0lKsSu4UT1dqw/5z8foAe2YiZVRXxADBs7KwKsJfVGEvuDb3Jn
         gpooPQcYhJ5glySXT1ekDeqrusZgZz/APNoXuz0AFTl1BtEoResEzcxRuae39VHa15cP
         YuBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yh/3MvSE6vNeFsNUYAGhlyytUTJtvcXzDTzpl9f9k/s=;
        b=LZ2q+9JiVClJbJSDtEgAPBR75Wih5+W3W8JtRDcHBki9STtprunZjicTmPuN7RNWrQ
         SCXVzFLn4RwzeQza2W8qlZ0goANSngU4bTca4uHUHMJ1UcwO5iDHCt50QYKLGgwzmwhU
         c2qTwJihkmqrODWIp98IIkMKhNbGtYvm7dfJjuIkE9+vx+mT/z86dZ6WCnCHHi3wn81N
         iE3eU5rJfiEWPkvG9ZsCw4zjpBIR6OB52rZg1oIMQVmkT+H7OWsSZcYdYaHVeMjlpzDf
         LxKpODXh5HHJDIJtfiWwHn8xpVxmT/d+dOyUI1ncjsBX0JnMDTgyWm71Dpw49aJLPgwH
         khqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Yh/3MvSE6vNeFsNUYAGhlyytUTJtvcXzDTzpl9f9k/s=;
        b=CIlwYeY6qaj1b5V/YkvQsbxgmPeIiBFgULPowR+j+x7JuPAKQMu3tkXbWVI7ztQZBx
         sFBrSgxNuF2oCYRgCEo3elK1XZyXlp+pf/mAiaTucamzgcfnNEayJvtlRhylLBM3BNmY
         zxIKOr4GryOfdh9rern9HF5VMjZaGoQ7RIktpyneRI6fhxYtHZvmEYBlgYPYHCOs73+2
         CSvOiqJlF/mWMcM8yuImkrEepN5vFz5WJextYkHVkN0jJ4eSrbPA5EWi5/luiOzV57gc
         TzAHI8ExAMlQyytQTkPjCCiEHMZjeLXio+AZnLOkUMXvGS7GzctmECjlmCq8FThjYdAs
         3RNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVKjG/UwvBLeGBvGV00z1D1IY3bvDK9LfPtlt6RJmmktE0SaPML
	m1q6JFgVcScJVNW2MQtVclc=
X-Google-Smtp-Source: APXvYqxOSBULCsHTVkti7Vhi+BhzUrsdpWZ7gvLB3ahZQmLZgYHa/cfWAYNo6QNHxzPprqBYCEefAQ==
X-Received: by 2002:a17:902:b58d:: with SMTP id a13mr2828639pls.155.1582601385248;
        Mon, 24 Feb 2020 19:29:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6644:: with SMTP id f4ls658734pjm.2.gmail; Mon, 24
 Feb 2020 19:29:44 -0800 (PST)
X-Received: by 2002:a17:902:7589:: with SMTP id j9mr52898807pll.312.1582601384757;
        Mon, 24 Feb 2020 19:29:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582601384; cv=none;
        d=google.com; s=arc-20160816;
        b=oWH+jhN6fo+PwPxcjJP/9aPwLr1xlyB5/3KpausN0xDWuuulInyxHnEf3qUvLW8Rxh
         aALuYtNWsDyCWyEQcLmcHu5bdNTT9/iMr385Z2NdywZKMLxv2k81U6cCw/R5xOvQfr30
         B/WMJlCqKeRin82o2apKwkvu22/e81CnynT324veFhOEE0APe0cJw9m70EnF6lmKklg8
         UfHM8LPd50tiYqYZbJV58P5Go0eJv3VwSA0B/TnF3nsSs2O7ZipycORv9xWsWzm94TJl
         9RajjFEoRI+TQDABG8GMj2rX1A1YNZvI/VVqPapYEfUprlL6/KC62vBeneuXyuG+H2n7
         ngQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=N2bOv49l6N1cYHnoYfTaiCea4requ1ty/Hs4ZNHinCw=;
        b=Jdyly0Y6p2Kdv6UUUHzI9KGrid/pe/zEArZDTiyfMZJnd1wNMBJw11TZOwyGg7GcZo
         NTDDy/FmNkqxBNfjTGY8hxI9apawYyn3RmxrYmLrE/gXi4J8Jk0tKz9jr8hN8zWQx8lk
         vWtPspbm7Vqd9IqGv7HuwPL2pxiif1Da6YpcPXb/M2uDegjiOU73CIPd5gBtgB7Or0Wd
         NnVQ2oQNeMkw/FzkZoKmzpwZZ93ABkm7ZMQWNaYCbdzDn7f0cDBnLtERo5+VO7gzXj4D
         w1IhIPb6M5N6z/rGT+XWIbku/AS9va+2ZFhq5lgUrQPsYA/AUzIGeASklVbNtvt5qH/Z
         xCJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ean9ea9J;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id j123si709355pfd.5.2020.02.24.19.29.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 19:29:44 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id g64so10775474otb.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 19:29:44 -0800 (PST)
X-Received: by 2002:a05:6830:9a:: with SMTP id a26mr44073623oto.273.1582601383834;
        Mon, 24 Feb 2020 19:29:43 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m22sm5216421otj.3.2020.02.24.19.29.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 24 Feb 2020 19:29:43 -0800 (PST)
Date: Mon, 24 Feb 2020 20:29:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, llvm@linaro.org,
	clang-built-linux@googlegroups.com
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-lts-defconfig - Build # 9 - Successful!
Message-ID: <20200225032942.GA4505@ubuntu-m2-xlarge-x86>
References: <565726565.3814.1582594917238.JavaMail.javamailuser@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <565726565.3814.1582594917238.JavaMail.javamailuser@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ean9ea9J;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Feb 25, 2020 at 01:41:56AM +0000, ci_notify@linaro.org wrote:
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-lts-defconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-arm-lts-defconfig
> 
> Culprit:
> <cut>
> commit c93112dc4f745b0455addb54bfe1c2f79b827c6d
> Author: zoecarver <z.zoelec2@gmail.com>
> Date:   Mon Feb 24 13:43:22 2020 -0800
> 
>     Validate argument passed to __builtin_frame_address and __builtin_return_address
>     
>     Verifies that the argument passed to __builtin_frame_address and __builtin_return_address is within the range [0, 0xFFFF].
> </cut>
> 
> First few errors in logs of first_bad:
> 00:02:30 clang-11: error: unable to execute command: Aborted (core dumped)
> 00:02:30 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> 00:02:30 make[2]: *** [kernel/printk/printk.o] Error 254
> 00:02:31 make[1]: *** [kernel/printk] Error 2
> 00:04:17 make: *** [kernel] Error 2
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
> rr[llvm_branch]="bae33a7c5a1f220671e6d99cda21749afe2501a6"
> 
> Results regressed to (for first_bad == c93112dc4f745b0455addb54bfe1c2f79b827c6d)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 5374
> 
> from (for last_good == df8dda67ed03f7d7ba3d9475556ab01946386852)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 5820
> linux build successful:
> all
> linux boot successful:
> boot
> 
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/build-c93112dc4f745b0455addb54bfe1c2f79b827c6d/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/build-df8dda67ed03f7d7ba3d9475556ab01946386852/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/
> 
> Reproduce builds:
> <cut>
> mkdir investigate-llvm-c93112dc4f745b0455addb54bfe1c2f79b827c6d
> cd investigate-llvm-c93112dc4f745b0455addb54bfe1c2f79b827c6d
> 
> git clone https://git.linaro.org/toolchain/jenkins-scripts
> 
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
> 
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
> 
> cd llvm
> 
> # Reproduce first_bad build
> git checkout --detach c93112dc4f745b0455addb54bfe1c2f79b827c6d
> ../artifacts/test.sh
> 
> # Reproduce last_good build
> git checkout --detach df8dda67ed03f7d7ba3d9475556ab01946386852
> ../artifacts/test.sh
> 
> cd ..
> </cut>
> 
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-lts-defconfig
> 
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-lts-defconfig/9/consoleText
> 
> Full commit:
> <cut>
> commit c93112dc4f745b0455addb54bfe1c2f79b827c6d
> Author: zoecarver <z.zoelec2@gmail.com>
> Date:   Mon Feb 24 13:43:22 2020 -0800
> 
>     Validate argument passed to __builtin_frame_address and __builtin_return_address
>     
>     Verifies that the argument passed to __builtin_frame_address and __builtin_return_address is within the range [0, 0xFFFF].
> ---
>  clang/lib/Sema/SemaChecking.cpp        |  5 +++++
>  clang/test/Sema/builtin-stackaddress.c | 28 +++++++++++++++++++++++++---
>  2 files changed, 30 insertions(+), 3 deletions(-)
> 
> diff --git a/clang/lib/Sema/SemaChecking.cpp b/clang/lib/Sema/SemaChecking.cpp
> index a986ef2bb68..590a7b43d1e 100644
> --- a/clang/lib/Sema/SemaChecking.cpp
> +++ b/clang/lib/Sema/SemaChecking.cpp
> @@ -1847,6 +1847,11 @@ Sema::CheckBuiltinFunctionCall(FunctionDecl *FDecl, unsigned BuiltinID,
>      if (SemaBuiltinOSLogFormat(TheCall))
>        return ExprError();
>      break;
> +  case Builtin::BI__builtin_frame_address:
> +  case Builtin::BI__builtin_return_address:
> +    if (!SemaBuiltinConstantArgRange(TheCall, 0, 0, 0xFFFF))
> +      return ExprError();
> +    break;
>    }
>  
>    // Since the target specific builtins for each arch overlap, only check those
> diff --git a/clang/test/Sema/builtin-stackaddress.c b/clang/test/Sema/builtin-stackaddress.c
> index 5f63bb11462..a122f851adb 100644
> --- a/clang/test/Sema/builtin-stackaddress.c
> +++ b/clang/test/Sema/builtin-stackaddress.c
> @@ -1,5 +1,6 @@
>  // RUN: %clang_cc1 -fsyntax-only -verify %s
> -void* a(unsigned x) {
> +
> +void a(unsigned x) {
>  return __builtin_return_address(0);
>  }
>  
> @@ -8,9 +9,30 @@ return __builtin_return_address(x); // expected-error{{argument to '__builtin_re
>  }
>  
>  void* c(unsigned x) {
> +// expected-error@+1 {{argument value 4294967295 is outside the valid range [0, 65535]}}
> +return __builtin_return_address(-1);
> +}
> +
> +void* d(unsigned x) {
> +// expected-error@+1 {{argument value 1048575 is outside the valid range [0, 65535]}}
> +return __builtin_return_address(0xFFFFF);
> +}
> +
> +void* e(unsigned x) {
>  return __builtin_frame_address(0);
>  }
>  
> -void d(unsigned x) {
> -return __builtin_frame_address(x); // expected-error{{argument to '__builtin_frame_address' must be a constant integer}}
> +void f(unsigned x) {
> +// expected-error@+1 {{argument to '__builtin_frame_address' must be a constant integer}}
> +return __builtin_frame_address(x);
> +}
> +
> +void* g(unsigned x) {
> +// expected-error@+1 {{argument value 4294967295 is outside the valid range [0, 65535]}}
> +return __builtin_frame_address(-1);
> +}
> +
> +void* h(unsigned x) {
> +// expected-error@+1 {{argument value 1048575 is outside the valid range [0, 65535]}}
> +return __builtin_frame_address(0xFFFFF);
>  }
> </cut>
> 

That commit has been reverted:

https://github.com/llvm/llvm-project/commit/698078257285a044110620d7dab2fb4451a3fa29

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225032942.GA4505%40ubuntu-m2-xlarge-x86.
