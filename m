Return-Path: <clang-built-linux+bncBAABBNVMT2AAMGQENAW7KWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F5C2FC7F5
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 03:32:24 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id p77sf29517594iod.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 18:32:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611109943; cv=pass;
        d=google.com; s=arc-20160816;
        b=fo+AEWDMIfRoFMeRsGsLmit22CUy2GUQMjoJsl4HOs207ibr5pw3zVZ7dlTl9q6/1A
         6naUSsvno8RTHSqoB3IYqEChPx1KJcRI27KBC6QOqAp/S7RKETIz2vicw0lIX7xfULOA
         mZaytARExyWyLjlaOMpyU6My31jVTeIbIYYBhrlBbTWiE3OaxhywJdcZU3ymDndn4Brj
         oU+YC8H9aBmgdFSeO0h8nYvN2fiCX9/Gea6jmSiwBJq2H95RpfGVnGEWTM6ytMy7iXnZ
         7J91CvQ0fJEyg+txRK2XpyKmLzdosM8NaOUcShbLoZpba/5+eD2h/2/CaV4lc1T7sjy7
         j5Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=hHA4phGNQs6W7fsEVPFdgOIvLIWN7Rr/hPZVZ3yh6xE=;
        b=06qMl/80wJscS2PZeFFvl3VZkBnOi7JVv2qXYgjib7wf4t5P6O0qW/Oqt+4bvbPy8I
         cq130EWPIrHE6NenhRJQseYn5KhAqhY5RhGFfQtwe9PDBoqHLH6p2morfrnxHFSCM9/g
         zLq0j9MBcUkTZIpP72Bh/LmvXBo95h8btOWQylniyxustqZhTjA4jxGBk0rFj+vobagf
         olXf6d6+J6emorO+e0ODNgLIKM8c2iW5BzUzZ4c/JueSWe7HcBm+poGJfkvj1NBS/SqK
         rqkpGXGOiI0o7spyJzE3i0FnO4SwKF00lMxNBfezI7LgpIPSBIHuT3Jp6lZCV74M6fn8
         TVzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hHA4phGNQs6W7fsEVPFdgOIvLIWN7Rr/hPZVZ3yh6xE=;
        b=Tj12kGbKP/HQckdEjlya61WojIDLriWD18N9QkW53TQyVVj4n+blidO6C+Q0mYuEy9
         Z3TiegOTcNLINPU5BqK/Uc3Qpt/8ttwi/YxBRklypToHufFK2XBvinVnA8Pv6KPaCiNV
         B8QTCEcAzHeqA/U8JN+Y1ofjFuqu7gIOHxuLvRn0rihDdV63KTSz85ewzJZe/7l2s5Aj
         SX7bQT4s16KvwyDzrJ3bgHy9c/akRd+tX9K6gIPDsFoqDRguT7hYRNqxW3xls3rKhvNy
         BPWwh7JcRTlmqSaD0HP6l8kBH+Ai7wrzj7qOOJ3znVgDilk67SKD+k7q6oSX3PgeUWmF
         iU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hHA4phGNQs6W7fsEVPFdgOIvLIWN7Rr/hPZVZ3yh6xE=;
        b=Ad8OdodrlVc1MSZfschhQ6VhFoOG4Y/icfCyjxCFvzSPxD/c0mN4rfwrySPn/POsAJ
         kvC0N1J6pbR+o53z1LwEGa9GIN/yRRyvqczrQ29J7DYe8Hvrq0biaXXHQ1xeK6InOdaR
         br3DnDLf07AiIjEA8aKxtuplvKUqvF6OT8v+pvVDdkoRhgOtjCVM+kAE47thrf+r4Ws/
         WEs/6whRWOsicp/riNrCaYuTS8MiLlZ+1Qq7JTsMJ4owbWk1Z4fanyXRjzjDBkHVSxSS
         tDqH1w69iylr+A8WE+J0AvEVouBs+1Jb8qX4WaVrLbb/RvFrwkJouPD6PqMcIRMgxBIx
         trFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PCb6qWaF7fPJcIXDxeeumbOy1d4lbgFANDtBjIA7igS+wifRC
	AbQkGCdk9lIts9Foh0tMDpY=
X-Google-Smtp-Source: ABdhPJx2D3f5Oix8wG74EjtwaQWreL57SHWYnBx/Gyu9AOW3O0qWgaaLqCiU45EbmHLPFH1K7ZjgDQ==
X-Received: by 2002:a92:7b07:: with SMTP id w7mr5712783ilc.78.1611109943123;
        Tue, 19 Jan 2021 18:32:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1687:: with SMTP id f7ls2771689jat.11.gmail; Tue,
 19 Jan 2021 18:32:22 -0800 (PST)
X-Received: by 2002:a05:6638:2407:: with SMTP id z7mr6133644jat.110.1611109942628;
        Tue, 19 Jan 2021 18:32:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611109942; cv=none;
        d=google.com; s=arc-20160816;
        b=ysRwM60yixrA1rLyOdllPfcDWO4u1bynjUkvFlugLLA+LaQMdCW7hGEHjWgeN4NqPY
         wSaVEVfozi5uo/Qoqn6gcwmsVkWNj2kt94L56CcFU2pa/2qhhEsEECgPnY7Vfy0Zqii8
         sFmZA5pKxT3XDaIdofE/HRfAYGw18uf4o/P5cKL4Zj5/sDxgWFcldwsUvtDNzaz8dvW5
         eWd0YzK/0xI47Qm16lp5Mr4vDQhLVMWZAnwaOK1eonGInJbS9cQCrVG8MMDYFhM5rIiD
         IvpfqqDkdMEUL3jk5SZnT3015wKFINUO8NOvXCnFMOrwkZDAnY1Q5CXtFCNppcUY58jz
         Zrng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=CxZ/QAi5lnyCJg4zOSUjZeKsCHMdlMkYiaSmC6GA2XE=;
        b=T/1GLrOklp14bOdLqrB5uQOUbzIOpevqptcXWWWiiQQzzNhjnQJ9rHiirtKghNjC/c
         DqlgQWYck932VJWrSLH9xZ+m75dGK9TVVafmYp9JWR2AjjsbEskj0AN6UDGrkKW+nTkO
         6zzIDpo5qT64F5/Lyb7Cr/gOVX0fS2SAN0rwJSjlZIrmztutOjzRcvQ5G1SxVdE+knga
         PnKItmr1zoXBwp0Pyu/7j2pJQy/4z2icFil3/XsZDFKfAFtauBoQezGXvZdXd/G558tI
         1L4DOkAlheDdXUjwLLCqTshcG4/FP9xKUtBvFQ6DRJ78WXcTmGhucwx0oNPBgXy2W66g
         X6nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id j21si62671ilg.5.2021.01.19.18.32.21
        for <clang-built-linux@googlegroups.com>;
        Tue, 19 Jan 2021 18:32:22 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from [10.130.0.135] (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dx6L0ulgdgxeQHAA--.12601S3;
	Wed, 20 Jan 2021 10:32:15 +0800 (CST)
Subject: Re: [PATCH bpf-next v2] samples/bpf: Update README.rst and Makefile
 for manually compiling LLVM and clang
To: Fangrui Song <maskray@google.com>
References: <1611042978-21473-1-git-send-email-yangtiezhu@loongson.cn>
 <20210119215815.efyerbwwq5x2o26q@google.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Xuefeng Li <lixuefeng@loongson.cn>
From: Tiezhu Yang <yangtiezhu@loongson.cn>
Message-ID: <b526e0eb-f05f-1c3a-de8f-3d7e9bef73ee@loongson.cn>
Date: Wed, 20 Jan 2021 10:32:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20210119215815.efyerbwwq5x2o26q@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-CM-TRANSID: AQAAf9Dx6L0ulgdgxeQHAA--.12601S3
X-Coremail-Antispam: 1UD129KBjvJXoWxKrWfuFyUtr4rKFW5Zr1DJrb_yoW7Gw4Upr
	W7ta1SkrZ2qryfZFyxGw4UXw4rZ395Ja4UCa4xGryrZ3WDZrn7GF4ayrWfWFWUXr92yF47
	Ar1rGa4DGF18Xa7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBY14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26F
	4UJVW0owAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VC0I7IYx2IY67AKxVWUXVWUAwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r
	1j6r4UM4x0Y48IcVAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwCYjI0SjxkI62AI1cAE67vIY487MxkIecxEwVAFwVW8JwCF04k20xvY0x0EwI
	xGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480
	Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7
	IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k2
	6cxKx2IYs7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x
	0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUbXo7tUUUUU==
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-Original-Sender: yangtiezhu@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
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

On 01/20/2021 05:58 AM, Fangrui Song wrote:
> On 2021-01-19, Tiezhu Yang wrote:
>> The current llvm/clang build procedure in samples/bpf/README.rst is
>> out of date. See below that the links are not accessible any more.
>>
>> $ git clone http://llvm.org/git/llvm.git
>> Cloning into 'llvm'...
>> fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) 
>> redirects followed
>> $ git clone --depth 1 http://llvm.org/git/clang.git
>> Cloning into 'clang'...
>> fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum 
>> (20) redirects followed
>>
>> The llvm community has adopted new ways to build the compiler. There are
>> different ways to build llvm/clang, the Clang Getting Started page 
>> [1] has
>> one way. As Yonghong said, it is better to just copy the build procedure
>> in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
>>
>> I verified the procedure and it is proved to be feasible, so we should
>> update README.rst to reflect the reality. At the same time, update the
>> related comment in Makefile.
>>
>> [1] https://clang.llvm.org/get_started.html
>>
>> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
>> Acked-by: Yonghong Song <yhs@fb.com>
>> ---
>>
>> v2: Update the commit message suggested by Yonghong,
>>    thank you very much.
>>
>> samples/bpf/Makefile   |  2 +-
>> samples/bpf/README.rst | 17 ++++++++++-------
>> 2 files changed, 11 insertions(+), 8 deletions(-)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 26fc96c..d061446 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock        += -pthread -lcap
>> TPROGLDLIBS_xsk_fwd        += -pthread
>>
>> # Allows pointing LLC/CLANG to a LLVM backend with bpf support, 
>> redefine on cmdline:
>> -#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc 
>> CLANG=~/git/llvm/build/bin/clang
>> +# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc 
>> CLANG=~/git/llvm-project/llvm/build/bin/clang
>> LLC ?= llc
>> CLANG ?= clang
>> OPT ?= opt
>> diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
>> index dd34b2d..d1be438 100644
>> --- a/samples/bpf/README.rst
>> +++ b/samples/bpf/README.rst
>> @@ -65,17 +65,20 @@ To generate a smaller llc binary one can use::
>> Quick sniplet for manually compiling LLVM and clang
>> (build dependencies are cmake and gcc-c++)::
>>
>> - $ git clone http://llvm.org/git/llvm.git
>> - $ cd llvm/tools
>> - $ git clone --depth 1 http://llvm.org/git/clang.git
>> - $ cd ..; mkdir build; cd build
>> - $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
>> - $ make -j $(getconf _NPROCESSORS_ONLN)
>> + $ git clone https://github.com/llvm/llvm-project.git
>> + $ mkdir -p llvm-project/llvm/build/install
>
> llvm-project/llvm/build/install is not used.

Yes, just mkdir -p llvm-project/llvm/build is OK.

>
>> + $ cd llvm-project/llvm/build
>> + $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
>> +            -DLLVM_ENABLE_PROJECTS="clang"    \
>> +            -DBUILD_SHARED_LIBS=OFF           \
>
> -DBUILD_SHARED_LIBS=OFF is the default. It can be omitted.

I search the related doc [1] [2], remove this option is OK for me.

BUILD_SHARED_LIBS:BOOL

     Flag indicating if each LLVM component (e.g. Support) is built as a 
shared library (ON) or as a static library (OFF). Its default value is OFF.

[1] https://www.llvm.org/docs/CMake.html
[2] https://cmake.org/cmake/help/latest/variable/BUILD_SHARED_LIBS.html

>
>> + -DCMAKE_BUILD_TYPE=Release        \
>> +            -DLLVM_BUILD_RUNTIME=OFF
>
> -DLLVM_BUILD_RUNTIME=OFF can be omitted if none of
> compiler-rt/libc++/libc++abi is built.

I am not very sure about it because the default value of
LLVM_BUILD_RUNTIME is ON? [3]

option(LLVM_BUILD_RUNTIME
"Build the LLVM runtime libraries." ON)

[3] https://github.com/llvm/llvm-project/blob/main/llvm/CMakeLists.txt

If anyone has any more suggestions, please let me know.
I will send v3 after waiting for other feedback.

By the way, Documentation/bpf/bpf_devel_QA.rst maybe need a separate
patch to remove some cmake options?

Thanks,
Tiezhu

>
>> + $ ninja
>>
>> It is also possible to point make to the newly compiled 'llc' or
>> 'clang' command via redefining LLC or CLANG on the make command line::
>>
>> - make M=samples/bpf LLC=~/git/llvm/build/bin/llc 
>> CLANG=~/git/llvm/build/bin/clang
>> + make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc 
>> CLANG=~/git/llvm-project/llvm/build/bin/clang
>>
>> Cross compiling samples
>> -----------------------
>> -- 
>> 2.1.0
>>
>> -- 
>> You received this message because you are subscribed to the Google 
>> Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, 
>> send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/clang-built-linux/1611042978-21473-1-git-send-email-yangtiezhu%40loongson.cn.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b526e0eb-f05f-1c3a-de8f-3d7e9bef73ee%40loongson.cn.
