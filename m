Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX5FUSAAMGQEZ7Y2YLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A0B2FE1C8
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 06:36:33 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id z20sf541914pgh.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 21:36:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611207392; cv=pass;
        d=google.com; s=arc-20160816;
        b=eMvHgUItJYdKLM60ucGfjmAWrK1Fh61nK+d++kpsZnFxe9C4DHws5DDNGDGHaHtdYR
         HC56M9fa4ut8ozxzITV1cXn4aJ77kBScV5PwZG+MtYoTIyCXuNecUqmrrRxoijff13Q2
         l5B1PUPcIqNZIcmlUJbSwSCQu0Hip+lT58gmi1da9Cs5LssxJlllhBm5rGoM0KRcYeYc
         9T5EgclmqUQvQD1dK3hCdWa3FpkzmAdpdvkjMXq8S/7nGHDjsd0QmbnAuuoeTWHiDpvE
         ntigv0iEsf7L1SJKtIdxUV2AH4rlQjlYx3YyXuq5fosAOVTKR27HPq2b0Li5CkLI/2PY
         4dtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=JbTB6dsewezJ8K5IQpsvkESD2Vhmdz0hAG6uz0PzUgM=;
        b=VUud/joLbVAecz222SblSGHCU1LyeqaKZDxGB9bpdEBaIJW1gJHwW6o17iHjr4lbk/
         VL2yLJmRjomdI+50sbOjoG95TjGhIgIEl20UFa+HM0OZiYVcfktjFJuS6kIWVzJwO3sj
         tEHzlkr3Mva1R8DDqHJV6m3iro48ODovgg25waEsiq6LbcQ0GuX222OGwa/DbAm8RYBW
         xDJuIC23pihKn6kCppPC0KgyvRljV/YzYzeimfoNf+i3fmidY0qI6o6htbKioT0jSJ0G
         WBNDr03rBLhYVwDG61HfY764w1qMvhSW0EQffoZ7e5Nnx4FNIJzYQ4awvjA4k+vfDhl5
         0ygg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D4q9Hrgl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f30 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JbTB6dsewezJ8K5IQpsvkESD2Vhmdz0hAG6uz0PzUgM=;
        b=dIBjsG/jugSGT90PScZwsqjniViDuZ1Iv9tYzAkMhy5rrl5cqAnk+gE9BoiMJ/xFKI
         IsYkkaHf+qy21jVlZEmlfnpUpGMlLJYbjLzis7m4n22HRufTN6p0HgJc+untuQ6L0QW/
         lp0reEu7PRm/toZ7q2DQ6B6RdU2OtCGv0eWfLRIrETOCL7/rxGartbovbXn1Cdw/CmcS
         ipuUsU1Aq7gd2718dgBg2pe2SHPfb5tuttM7kcju+HdSh8wjToMAco0XVNCCAnibRPyH
         kRaJRQ42b9PUAAuVAu1txvn8+wqbYneSZbbITSdKJyG0nxxQEjY9ytY6FYG/3Cmh4DL3
         IYkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JbTB6dsewezJ8K5IQpsvkESD2Vhmdz0hAG6uz0PzUgM=;
        b=uBjqGX1f1gwcpTR5JoytVKIMDWdo9E0Wl2ACqbQmuIntEFBq6Ib8JWaEv4gVHnEoIo
         q5vQeBPjj/C4aBvSlLKcOV33d74q02g4FSN0ucYsDN68oxH9Z55+Cz4tcQMJ313KMCsG
         MhhkiinPaC7kEFXaUvoeWheV687eX1PqiqJ4U34v0jS4ja3iHITxv3Eb+1iTncUKFb2X
         QtVM1tLIGS2j1IGCvFhI/g0Aqvi6c1XivoXBNk1DqEO64uRBIDZgUsU4sCTRScsb+MgC
         HaBr2Pr1TKtsScx+36AQZJ5sEXScgF7CKZsVtD4Ivm/qmHAnjzFmL05EaxaJNs4Li8Xn
         gi8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JbTB6dsewezJ8K5IQpsvkESD2Vhmdz0hAG6uz0PzUgM=;
        b=JWuq/+wFPaNI+UyN4uovLexF/eGlpF4/M8i8WLCEd08g8zQusNHGWwGooswSHR5+L0
         wsV0uX5NtcRjFu5xI1Z29Nt4TIwzs3GapS9ufdrxom4p5HEKaQLPMn4broCORoz8ms1Q
         C+7yD2uGw4ldVl7Hi6X7eJsBelhmQj8Scfb2KW4oBgIWlAwD1zoVhgJawm6uXOvkJkyW
         Dwacx2aa7JtDjKDia9j5VqHtEjc7zqYrcbfFyCZXJwQA64XExNR5T1GPg7uksWinLesV
         igRtvZIUll7k8wrZ3ekhqUBmtWQR3/5rTJ8yQIcog23bmKw14X3VSrBImTYd68l3cTLa
         pB1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Lebe1e4mifXJ0UXqRWmwklNwt2dbx2IW93zegBArT3DX3YVV+
	Ejlz7MBSnXLx68DmOF1yVes=
X-Google-Smtp-Source: ABdhPJxRzgkFqw7TicxyRnMvNcLkifuKuVSktHiJVf9ocfG6kqcsJK7MEhh4b8f6Hy52eEeYBd5oYQ==
X-Received: by 2002:a17:90a:14e2:: with SMTP id k89mr9421036pja.168.1611207391820;
        Wed, 20 Jan 2021 21:36:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b107:: with SMTP id q7ls569215plr.8.gmail; Wed, 20
 Jan 2021 21:36:31 -0800 (PST)
X-Received: by 2002:a17:90a:5d02:: with SMTP id s2mr9494833pji.149.1611207391215;
        Wed, 20 Jan 2021 21:36:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611207391; cv=none;
        d=google.com; s=arc-20160816;
        b=LuWAN2G6RALOeoKRSNPyq/zqjZN4e0Tj+Fw1t/G6A+H5Sv8SZlR2ZiHDRH102ynPjP
         ywFKXSCr3l5X98dS7nlrIrqiBkGYGHk2cKrqa9lVPecvVREMT1DRMmUV9Ezc4Pe/4X7V
         SIKxU3F3G2NxUvVE9aRa1obXnwFf308avIT8A+GBKSgdkmbPSVVLtL/zraBzLqtLSvGi
         gGCGLBiLUAFu8Hqxv+5z3TQb6pwFElGiba7l6aRzpL1Sw6ur1XVidPfRcB5RML1UfpSS
         F1eZHFD7avyiDEWO2c2+Sxqafaq4m2UGYQeqhjZf+PawlyCjfigreEFyvUep7Wai1VuN
         64zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YRumJLD36i/i0I1RZRrB7ojtk55MHsfJgYolCaTHYUM=;
        b=PNjIQIVaO6bstvhhT6sH4nE7e/88ypHhLOycjn8NihB/5I1J/YX/JGjXKvc4DaTSv0
         W78nWZlx6I89kvu4BCHMq30NfVcMQJlqzkdz6oPGmOZNo/lIwVTjGT5zDj0xDQ/QPybC
         a58KaVV19yLXPnjCVrHG5orYS3Y6soBtbpFLb59ckNDsF6gyi/93U5ZFr7mgbZDM7kxc
         03EvTuo+1ASRTQxFaYU6MbpMOC4heuN/KgMefW68mIJP1Pqh3Uzjnnai9ASvf7JHrdz3
         foEC7SlViLVurWNrlfqV9hQhEgOrR0fNb7uIYiIUW6QVPSyM10KbcAvllSXQ5FHdMSG6
         FRuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D4q9Hrgl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f30 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com. [2607:f8b0:4864:20::f30])
        by gmr-mx.google.com with ESMTPS id n13si296775pfd.1.2021.01.20.21.36.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 21:36:31 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f30 as permitted sender) client-ip=2607:f8b0:4864:20::f30;
Received: by mail-qv1-xf30.google.com with SMTP id h21so395314qvb.8
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 21:36:31 -0800 (PST)
X-Received: by 2002:ad4:452f:: with SMTP id l15mr13110024qvu.49.1611207390223;
        Wed, 20 Jan 2021 21:36:30 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id a206sm3003810qkc.30.2021.01.20.21.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 21:36:29 -0800 (PST)
Date: Wed, 20 Jan 2021 22:36:27 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, netdev@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Xuefeng Li <lixuefeng@loongson.cn>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH bpf-next v3] samples/bpf: Update build procedure for
 manually compiling LLVM and Clang
Message-ID: <20210121053627.GA1680146@ubuntu-m3-large-x86>
References: <1611206855-22555-1-git-send-email-yangtiezhu@loongson.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1611206855-22555-1-git-send-email-yangtiezhu@loongson.cn>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=D4q9Hrgl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f30 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 21, 2021 at 01:27:35PM +0800, Tiezhu Yang wrote:
> The current LLVM and Clang build procedure in samples/bpf/README.rst is
> out of date. See below that the links are not accessible any more.
> 
> $ git clone http://llvm.org/git/llvm.git
> Cloning into 'llvm'...
> fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
> $ git clone --depth 1 http://llvm.org/git/clang.git
> Cloning into 'clang'...
> fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed
> 
> The LLVM community has adopted new ways to build the compiler. There are
> different ways to build LLVM and Clang, the Clang Getting Started page [1]
> has one way. As Yonghong said, it is better to copy the build procedure
> in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
> 
> I verified the procedure and it is proved to be feasible, so we should
> update README.rst to reflect the reality. At the same time, update the
> related comment in Makefile.
> 
> Additionally, as Fangrui said, the dir llvm-project/llvm/build/install is
> not used, BUILD_SHARED_LIBS=OFF is the default option [2], so also change
> Documentation/bpf/bpf_devel_QA.rst together.
> 
> [1] https://clang.llvm.org/get_started.html
> [2] https://www.llvm.org/docs/CMake.html
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> Acked-by: Yonghong Song <yhs@fb.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Small comment below.

> ---
> 
> v2: Update the commit message suggested by Yonghong,
>     thank you very much.
> 
> v3: Remove the default option BUILD_SHARED_LIBS=OFF
>     and just mkdir llvm-project/llvm/build suggested
>     by Fangrui.
> 
>  Documentation/bpf/bpf_devel_QA.rst |  3 +--
>  samples/bpf/Makefile               |  2 +-
>  samples/bpf/README.rst             | 16 +++++++++-------
>  3 files changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/bpf/bpf_devel_QA.rst b/Documentation/bpf/bpf_devel_QA.rst
> index 5b613d2..18788bb 100644
> --- a/Documentation/bpf/bpf_devel_QA.rst
> +++ b/Documentation/bpf/bpf_devel_QA.rst
> @@ -506,11 +506,10 @@ that set up, proceed with building the latest LLVM and clang version
>  from the git repositories::
>  
>       $ git clone https://github.com/llvm/llvm-project.git
> -     $ mkdir -p llvm-project/llvm/build/install
> +     $ mkdir -p llvm-project/llvm/build
>       $ cd llvm-project/llvm/build
>       $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
>                  -DLLVM_ENABLE_PROJECTS="clang"    \
> -                -DBUILD_SHARED_LIBS=OFF           \
>                  -DCMAKE_BUILD_TYPE=Release        \
>                  -DLLVM_BUILD_RUNTIME=OFF
>       $ ninja
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 26fc96c..d061446 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock		+= -pthread -lcap
>  TPROGLDLIBS_xsk_fwd		+= -pthread
>  
>  # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
> -#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> +# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
>  LLC ?= llc
>  CLANG ?= clang
>  OPT ?= opt
> diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
> index dd34b2d..23006cb 100644
> --- a/samples/bpf/README.rst
> +++ b/samples/bpf/README.rst
> @@ -65,17 +65,19 @@ To generate a smaller llc binary one can use::
>  Quick sniplet for manually compiling LLVM and clang
>  (build dependencies are cmake and gcc-c++)::

Technically, ninja is now a build dependency as well, it might be worth
mentioning that here (usually the package is ninja or ninja-build).

Regardless of whether that is addressed or not (because it is small),
feel free to carry forward my tag in any future revisions unless they
drastically change.

> - $ git clone http://llvm.org/git/llvm.git
> - $ cd llvm/tools
> - $ git clone --depth 1 http://llvm.org/git/clang.git
> - $ cd ..; mkdir build; cd build
> - $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
> - $ make -j $(getconf _NPROCESSORS_ONLN)
> + $ git clone https://github.com/llvm/llvm-project.git
> + $ mkdir -p llvm-project/llvm/build
> + $ cd llvm-project/llvm/build
> + $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
> +            -DLLVM_ENABLE_PROJECTS="clang"    \
> +            -DCMAKE_BUILD_TYPE=Release        \
> +            -DLLVM_BUILD_RUNTIME=OFF
> + $ ninja
>  
>  It is also possible to point make to the newly compiled 'llc' or
>  'clang' command via redefining LLC or CLANG on the make command line::
>  
> - make M=samples/bpf LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> + make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
>  
>  Cross compiling samples
>  -----------------------
> -- 
> 2.1.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121053627.GA1680146%40ubuntu-m3-large-x86.
