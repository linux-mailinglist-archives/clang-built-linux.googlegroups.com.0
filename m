Return-Path: <clang-built-linux+bncBCS7XUWOUULBB7FLTWAAMGQEFSZDEMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A762FC2DD
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 22:58:21 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id m14sf8506838ioc.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 13:58:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611093500; cv=pass;
        d=google.com; s=arc-20160816;
        b=lmVjEr0XyDkof++OXiGiGiqL08CJVvopIjMyX3OJiL9/TaTz4CBTNuoUi2ehg8Vq2U
         WBUz0pxUD3vg223e3ln/2VVK7Pr9vdW/UZJRPT+ZPa2HnqYZoZ4FsO8uyyAfeIpBDfzw
         /Rn0S5XdQa11PzC8YzMT+ZSmLVJQZ157WMSgWVBKr+E23Rvpp70MI7Q/WOZNMD5G6bNG
         tkDKWctc33fTiJ2Fv7B9/kouHfFa2OM4r3EsO2/KAW/kVbZg5zPsKTU6f0bOp2A2Ugu+
         /pxSnnC/NzU3A9LlXhNi9Kz0tgkpSjPKfbOYg+MxLTkfvbO13556teCE+RWzb1wY9kha
         2yyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=XnO1vQKD9MReC2wdcuRAYNIKXA07oG+x3aBMEeiywRk=;
        b=MkEKLrnXFxeHJQ5h1ygUh/N4PMy/tkyblh8c6cLk4SvH8BaRPbVj3NHO2Y+OMUeLAz
         N5UlKiEloTp0xqAwmBCSyOB4siG4th0u6gtAas6OOfVS+dqcSCPwhzhpFdOmrSoeOo7h
         2sswRPsELgLjsdm3Nt7ostjz5D9irD3IazZrXmuedXMQdWAFTdf5enRgDOdfKdE2H74I
         pdkVLoEM9XKCSzDkzozG3MZieCM2JE7yqroRT2mYaJAhLm10B+OGFjHhsU0rM3ReIw4J
         j89/tpEw7uxz4DRAt11STkSUDFsaqzz1pDSgc1mKoEr+LDmialNsVQzkTVLCMv1I7EIs
         GMTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=byWAnMtO;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XnO1vQKD9MReC2wdcuRAYNIKXA07oG+x3aBMEeiywRk=;
        b=MGtPb+JhHH6Jg0g4VrbsnSVudi5rtbXDkxQCvbHfXsPFxkEuFAWw9SQAz9LJTwAlDS
         S7zJWYcpcBQJbDnNEx3mzxzZgZ71DQO8H/WuWTHaEBPyBSCUGbivIMHS5puGXHLntAH0
         VNkI7cCAnqAVHa4Dv4qt8F52fzV92T/Qw2uMPqcvgQGrwmKoZfA9hQ6RpLY6J667ilC1
         Si0Eukx8MnQqyXxM8wn4PHg6aHWgekt6NEJUJv2Nsf65P6Ihs+GblbsiM1PP9EknJpkQ
         XEd+pFM2UtTmNU6nFYDa1KBtMdr9s26Opj30uUZ6EBiLQNPTu0hUyoZGpQXTwafjW0Vp
         ejHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XnO1vQKD9MReC2wdcuRAYNIKXA07oG+x3aBMEeiywRk=;
        b=JWTT4K71v7beCeEEVJRqPFdQ48M80TxnDatCxpahcaMe6KMp0sMkiuY8fglbsqCOHT
         lrAxIPKmuhG0YM8dDPQMmAmdTEzgCgL6Felubi/7698CvrTVYHnak5fUxb5ohW2oleLQ
         vAnht+JRxoqtgngc7wi4esRiExc1fMHkcI9Hhz0cTRNfv0VC5ZuFAKRQ6Tvk4DmijY+J
         WLF8N1rxAKEsqWXa1aRiCIt9MMmbDabAHy5RiS9RfSVxJEs601DKHnnBDOvHZZj6mmpY
         1fAZQ0eowCmE+iCDONNOpHFedLwT7R1UzF1J4/IMPkr1fzCfiw2dT4W6gIXLaK0BRJSu
         D+cQ==
X-Gm-Message-State: AOAM530KHotxD7Ldc6Sb4zEpFFahNrRpgysHizLh87Vqjxr9Dywv3wfs
	/AGeuF31X2VfGZ+vQpH48yQ=
X-Google-Smtp-Source: ABdhPJys/ZXv9Pq9MCL3Z6q+EDWGlj8KHm15ZMwDaaRXA7uBPrQYI36J76OASUEnfGdJrhDsPgL7wA==
X-Received: by 2002:a92:5b8e:: with SMTP id c14mr5343935ilg.275.1611093500298;
        Tue, 19 Jan 2021 13:58:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3609:: with SMTP id d9ls5760561ila.4.gmail; Tue, 19 Jan
 2021 13:58:19 -0800 (PST)
X-Received: by 2002:a92:77c9:: with SMTP id s192mr5182515ilc.75.1611093499832;
        Tue, 19 Jan 2021 13:58:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611093499; cv=none;
        d=google.com; s=arc-20160816;
        b=NhwJhZU2wwDSgFh2waeL/9Egwmd15H7q3qzIfWM1x3gdpTssCjR0obNlYZ3lG2AMeP
         Mp+TnHmm9ledJjo3OXGKuxC1y5GnEvBLyAJjvqxgKT6kbfd+eHGfM7dKmHOpSJoRtelY
         A38gnULVe/z8iiFkRpHMb1WAzK4ThY7/I8RuHxabvYz1r5nImragUAPnwSLlffCE10Fv
         jo9dlZnE8raDBOSLgAWQgjrKgqRmQZbUqTFlLPHdu8nuQ7UQdggTTdXMSaxOTv9u+Rah
         1/R6qRzLYrDPRl9kasW0D26VKFRyBs3dTqAHLu5CJL6xLhOqi21Nbj0imi/i2OKrGMc3
         VMRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OFfub22SWSVkVrjpbdutuEU3cmHlEtcZeAWzURJZldA=;
        b=S2RrKB8l9yRqJGYfFdmB5wfXy7V6Vaw3/VRmPsRB9CKzY+xKrVd/Y5ssPCsHl8A3q5
         dODTMAro7OmUEZaCgNNKVlLB1rwA17U7ck5fmFtGvPe1bbneopkrDR66WGEwNM29euLP
         rJgP3RoUXc/QFXi7PQSEdq0xOyshGYHftFL6d/ZrbIFW0Hf/6oU7tW68SeUT9HKYE/q3
         4vA98cNBeYyWU+GO+rZ7y0WZlz9oBDUiBxFXn/+vnTGSjzShxNp4YG+vN3hoYqrHK9yK
         +4FGbN8DIOUnZfN6XOnCXwKRkuQeOl82icqt64TCbmqDLWXmddnAWLJD5QL7oIhZwHkO
         pFfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=byWAnMtO;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id j21si13738ilg.5.2021.01.19.13.58.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 13:58:19 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id p18so13802725pgm.11
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 13:58:19 -0800 (PST)
X-Received: by 2002:a63:1f18:: with SMTP id f24mr6316123pgf.133.1611093499079;
        Tue, 19 Jan 2021 13:58:19 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id z29sm91002pfk.67.2021.01.19.13.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 13:58:18 -0800 (PST)
Date: Tue, 19 Jan 2021 13:58:15 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>, netdev@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Xuefeng Li <lixuefeng@loongson.cn>
Subject: Re: [PATCH bpf-next v2] samples/bpf: Update README.rst and Makefile
 for manually compiling LLVM and clang
Message-ID: <20210119215815.efyerbwwq5x2o26q@google.com>
References: <1611042978-21473-1-git-send-email-yangtiezhu@loongson.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <1611042978-21473-1-git-send-email-yangtiezhu@loongson.cn>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=byWAnMtO;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52d
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-01-19, Tiezhu Yang wrote:
>The current llvm/clang build procedure in samples/bpf/README.rst is
>out of date. See below that the links are not accessible any more.
>
>$ git clone http://llvm.org/git/llvm.git
>Cloning into 'llvm'...
>fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
>$ git clone --depth 1 http://llvm.org/git/clang.git
>Cloning into 'clang'...
>fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed
>
>The llvm community has adopted new ways to build the compiler. There are
>different ways to build llvm/clang, the Clang Getting Started page [1] has
>one way. As Yonghong said, it is better to just copy the build procedure
>in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
>
>I verified the procedure and it is proved to be feasible, so we should
>update README.rst to reflect the reality. At the same time, update the
>related comment in Makefile.
>
>[1] https://clang.llvm.org/get_started.html
>
>Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
>Acked-by: Yonghong Song <yhs@fb.com>
>---
>
>v2: Update the commit message suggested by Yonghong,
>    thank you very much.
>
> samples/bpf/Makefile   |  2 +-
> samples/bpf/README.rst | 17 ++++++++++-------
> 2 files changed, 11 insertions(+), 8 deletions(-)
>
>diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>index 26fc96c..d061446 100644
>--- a/samples/bpf/Makefile
>+++ b/samples/bpf/Makefile
>@@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock		+= -pthread -lcap
> TPROGLDLIBS_xsk_fwd		+= -pthread
>
> # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>-#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>+# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
> LLC ?= llc
> CLANG ?= clang
> OPT ?= opt
>diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
>index dd34b2d..d1be438 100644
>--- a/samples/bpf/README.rst
>+++ b/samples/bpf/README.rst
>@@ -65,17 +65,20 @@ To generate a smaller llc binary one can use::
> Quick sniplet for manually compiling LLVM and clang
> (build dependencies are cmake and gcc-c++)::
>
>- $ git clone http://llvm.org/git/llvm.git
>- $ cd llvm/tools
>- $ git clone --depth 1 http://llvm.org/git/clang.git
>- $ cd ..; mkdir build; cd build
>- $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
>- $ make -j $(getconf _NPROCESSORS_ONLN)
>+ $ git clone https://github.com/llvm/llvm-project.git
>+ $ mkdir -p llvm-project/llvm/build/install

llvm-project/llvm/build/install is not used.

>+ $ cd llvm-project/llvm/build
>+ $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
>+            -DLLVM_ENABLE_PROJECTS="clang"    \
>+            -DBUILD_SHARED_LIBS=OFF           \

-DBUILD_SHARED_LIBS=OFF is the default. It can be omitted.

>+            -DCMAKE_BUILD_TYPE=Release        \
>+            -DLLVM_BUILD_RUNTIME=OFF

-DLLVM_BUILD_RUNTIME=OFF can be omitted if none of
compiler-rt/libc++/libc++abi is built.

>+ $ ninja
>
> It is also possible to point make to the newly compiled 'llc' or
> 'clang' command via redefining LLC or CLANG on the make command line::
>
>- make M=samples/bpf LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>+ make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
>
> Cross compiling samples
> -----------------------
>-- 
>2.1.0
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611042978-21473-1-git-send-email-yangtiezhu%40loongson.cn.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210119215815.efyerbwwq5x2o26q%40google.com.
