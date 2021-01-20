Return-Path: <clang-built-linux+bncBAABBSN4T2AAMGQEFY4DUQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 388292FC86C
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 04:06:51 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id v187sf27390311ybv.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 19:06:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611112010; cv=pass;
        d=google.com; s=arc-20160816;
        b=DTC5cAYppX+rUa4y31hZGL9UQ63ls3cxNujMoAzFyQqb6P/fzM8TB9A9c9cvVTKY99
         EZYqT1XypeSSVutpTg2y1MTYvxfzB1SPEBg+bNS+kR68mvWiPd+d7DfWr9e+e3pf9Cmx
         MyxAU5n+KMoNO0xn5Tz+KXzeGmkR8SjlMQfCoAQLOSF1azf7tSH5fY2Xyg9RJ+ZZd4Nj
         eJWYP8b8Ltda8tIEwtLKc9aY+TmxrtlmiWBKACiOnSrrBUh33Aw0c1BPM/T96yv3TBLq
         AZpKsPVgXbBfh8HX1D31SJlXsctO4Mf3DWSqXUW3LeH/trlhIrpjBRnE7rHqMzzkoCpr
         plJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=u3d15vU2eWTb6NSULQ5i8jTHpabeT+sxvVlQq9cMTvQ=;
        b=pfChs4er/tYYo/6Q5M2qCTNQVHN8Cu2Cl9wPc67snU/cn6QdCRbHNAjh3cKN/1R53c
         jJ1Fg+Y8IJ37e2MTE5NlwwT2ZF9JD1VET86fFUnVNEGDH9ekVrQCl6H1gEOdNNmzg0HY
         SUVqsHFoJegf/2gnF90hGPsZi40XjM4k3OZ7Uyzck26lhEt+w3010Xuy50B17/pxNot+
         OxqIdFTYZSgBcRmqkiHXuqajOKntyklKdZRe9hMgOyKGx+CfjqfDhDzjXZaAFZA6POus
         gyvrECQ8u5lEUhpOmUVB+Pext6BDBv/KDDt/qUGwUP7596VyyjOAMe+30F1O9CSm7Atb
         4Qgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u3d15vU2eWTb6NSULQ5i8jTHpabeT+sxvVlQq9cMTvQ=;
        b=q37qlT4y30ufwza5HFJ/NA1Imfe+yug1tXwbChBMCVn3IxTuTW47H5y9bp6ip9NflS
         1XRRBDDGfrVxlyz0kZqg7xKMb36jqzxv7O2q8Vjh7K5jRnn3yub2YRVg4Tzu9pIb3oO4
         dSAllUny3is5BqZ45fz0cKjbmxCAsUjI5kDHjpVsqy7WVIrKXZ9Md0DwHspjtEGlIJ+Y
         fbc0WB+0VJt3hi17BSRHGXHVxv0JWedrzklhbUto+zXhIA8UuSIVsnGkbgK+hKq98Nup
         zlkddzXlhLJSO0c+4+vFmZH07eDIkYe7NuZeJ7FVwmbkxiYmbHaejzm457JOVx8JH/Y4
         Qpnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u3d15vU2eWTb6NSULQ5i8jTHpabeT+sxvVlQq9cMTvQ=;
        b=WJAXfaDeav0p2lDqYOHXMB69cN01zocnL38YLjSVZKm2eve0TC8tX01HN5IV84eKcW
         o/yrIV2BZncorEtqwFk9+176NPgdUfOVdt3aUGTQ+1Mkr+PnmG+eynF8v+MF98X5H95e
         3WRHqgPF0Ym8Lpznr/Fp7SWC8ov/MaqyUqA5dMqi7AgrrYWhlOij/cs9k/riO2fHid9+
         v7YSfppATV+3ImzZMhnNxPk0ii74GwjHi4VuciRdBU0SUUfuljI7DoYPkFtrTU9In+Jz
         GEN86tPKn5alC/JaY388VrHs6e9/Xoj0bblN+p8kndeYWaDFn+cJLzu13k7dJTDTnM80
         TLJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327PHwMpYUqnSYvDG/ckRSYtBR67b5iZOFmvh+ycgK5vy9yutJM
	VKXeSyvgHmABAHcKYrQJe2o=
X-Google-Smtp-Source: ABdhPJxj5mvs1cHfxz3LdumwnwNelF7ZD4Vu2NyU/633r7wh3oQ+mxDjNEuOgaxzlWby5fTzsN05Ew==
X-Received: by 2002:a25:42cc:: with SMTP id p195mr10490533yba.59.1611112010304;
        Tue, 19 Jan 2021 19:06:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8b88:: with SMTP id j8ls8915473ybl.3.gmail; Tue, 19 Jan
 2021 19:06:49 -0800 (PST)
X-Received: by 2002:a25:7704:: with SMTP id s4mr11569736ybc.523.1611112009691;
        Tue, 19 Jan 2021 19:06:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611112009; cv=none;
        d=google.com; s=arc-20160816;
        b=sYcRUJDOhx/ubjZrBPfQ+85C40U6rd/WJgARlATQde7kv7XQDx0lNIdlLKkCNXuw8Y
         xbZMLP15qdbupAqNPTCQS/aUwAeSbN26nSFPUuFY8Be7ickIlwmlm7ZIWoxHuYiJ2HHK
         lArHGcGFWlLEvOGkROUsyisdjJ7wsfTZH4u/BX4z5BmIcY315EINEtRJN+dScRvISvgc
         Yampa2/sHhtQALDkff2d+lIFlLDnp+MT7CCdRoT4L2QwYkWvFzyyq6vwrDx1bs/mgDiI
         ev9pdIQqxHR52rsalbC0zYm1kf/vnJ1JypxVNU3tNtL9Qtj4OnDbidhfigR7MF6jzjEe
         70rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=BS20TMeEqIlWjBW/4UdwJRbjNCGKxlsSGd/8U59m7h4=;
        b=itL7TXt1rsETGZFjxLtIRC8t7xOBJpQIgUACxvqrODk/0esRIsLkbKuNsRqcZmeci4
         usnxbA3SgSOnOmKZ01hbXFrtxiWMbuXIMROdbpirK0cQ2JiwHWczkTt6qHHgwXBq6gx4
         OYatjAploV/ThfOKfm03wBOJ6i70261cjGXJ1v4nRRIZoVkO+/YL3AL7vIgpjR1gAJ1Q
         eqFhNdMRh97PZwvvDZFNRKtwD24nIADzrINq+71ldcbVVwCR8A5EskysCTFyFyxteqUC
         8Zz8IHp22dg7l8uIu5fClYQVkODHvm+JtAebgFGVJVx1t7scnsxWmeNHKPm8wpGZcAvv
         hDBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id x18si78735ybe.0.2021.01.19.19.06.48
        for <clang-built-linux@googlegroups.com>;
        Tue, 19 Jan 2021 19:06:49 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from [10.130.0.135] (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9AxZbxBngdgg+gHAA--.9869S3;
	Wed, 20 Jan 2021 11:06:42 +0800 (CST)
Subject: Re: [PATCH bpf-next v2] samples/bpf: Update README.rst and Makefile
 for manually compiling LLVM and clang
To: Nick Desaulniers <ndesaulniers@google.com>
References: <1611042978-21473-1-git-send-email-yangtiezhu@loongson.cn>
 <CAKwvOdkXGx-WogH0o5iuNnEe07sqRfxMpOg5fEEnTWcOfBrbAQ@mail.gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Network Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Xuefeng Li <lixuefeng@loongson.cn>
From: Tiezhu Yang <yangtiezhu@loongson.cn>
Message-ID: <198ec9cf-46cc-7ed4-ebc5-80c875033995@loongson.cn>
Date: Wed, 20 Jan 2021 11:06:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkXGx-WogH0o5iuNnEe07sqRfxMpOg5fEEnTWcOfBrbAQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-CM-TRANSID: AQAAf9AxZbxBngdgg+gHAA--.9869S3
X-Coremail-Antispam: 1UD129KBjvJXoWxWw1DtFWkKr13Wry8KryfZwb_yoWrurWUpF
	W7tayS9rZ2qry3ZFyxGr4jqr4fX398Xa4UCa4xGr18Z3ZIyr1kGF43t3yxWFWUWr92yF43
	Cr1rKFZ8WF18X3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBF14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26F
	4UJVW0owAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r
	1j6r4UM4x0Y48IcVAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwCYjI0SjxkI62AI1cAE67vIY487MxkIecxEwVAFwVW8GwCF04k20xvY0x0EwI
	xGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480
	Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7
	IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k2
	6cxKx2IYs7xG6rWUJVWrZr1UMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7
	CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JU-miiUUUUU=
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

On 01/20/2021 10:43 AM, Nick Desaulniers wrote:
> On Mon, Jan 18, 2021 at 11:56 PM Tiezhu Yang <yangtiezhu@loongson.cn> wrote:
>> The current llvm/clang build procedure in samples/bpf/README.rst is
>> out of date. See below that the links are not accessible any more.
>>
>> $ git clone http://llvm.org/git/llvm.git
>> Cloning into 'llvm'...
>> fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
>> $ git clone --depth 1 http://llvm.org/git/clang.git
>> Cloning into 'clang'...
>> fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed
>>
>> The llvm community has adopted new ways to build the compiler. There are
>> different ways to build llvm/clang, the Clang Getting Started page [1] has
>> one way. As Yonghong said, it is better to just copy the build procedure
>> in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
>>
>> I verified the procedure and it is proved to be feasible, so we should
>> update README.rst to reflect the reality. At the same time, update the
>> related comment in Makefile.
>>
>> [1] https://clang.llvm.org/get_started.html
> There's also https://www.kernel.org/doc/html/latest/kbuild/llvm.html#getting-llvm
> (could cross link in rst/sphinx).
>
>> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
>> Acked-by: Yonghong Song <yhs@fb.com>
>> ---
>>
>> v2: Update the commit message suggested by Yonghong,
>>      thank you very much.
>>
>>   samples/bpf/Makefile   |  2 +-
>>   samples/bpf/README.rst | 17 ++++++++++-------
>>   2 files changed, 11 insertions(+), 8 deletions(-)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 26fc96c..d061446 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock         += -pthread -lcap
>>   TPROGLDLIBS_xsk_fwd            += -pthread
>>
>>   # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>> -#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>> +# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
>>   LLC ?= llc
>>   CLANG ?= clang
>>   OPT ?= opt
>> diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
>> index dd34b2d..d1be438 100644
>> --- a/samples/bpf/README.rst
>> +++ b/samples/bpf/README.rst
>> @@ -65,17 +65,20 @@ To generate a smaller llc binary one can use::
>>   Quick sniplet for manually compiling LLVM and clang
>>   (build dependencies are cmake and gcc-c++)::
>>
>> - $ git clone http://llvm.org/git/llvm.git
>> - $ cd llvm/tools
>> - $ git clone --depth 1 http://llvm.org/git/clang.git
>> - $ cd ..; mkdir build; cd build
>> - $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
> Is the BPF target not yet on by default?

The default value includes BPF.

>   I frown upon disabling other backends.

I think the initial aim of the build procedure in samples/bpf/README.rst [1]
is a simple and quick start guide:

[ To generate a smaller llc binary one can use:

  -DLLVM_TARGETS_TO_BUILD="BPF" ]

[1] https://github.com/torvalds/linux/blob/master/samples/bpf/README.rst

>
>> - $ make -j $(getconf _NPROCESSORS_ONLN)
>> + $ git clone https://github.com/llvm/llvm-project.git
>> + $ mkdir -p llvm-project/llvm/build/install
>> + $ cd llvm-project/llvm/build
>> + $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
>> +            -DLLVM_ENABLE_PROJECTS="clang"    \
>> +            -DBUILD_SHARED_LIBS=OFF           \
>> +            -DCMAKE_BUILD_TYPE=Release        \
>> +            -DLLVM_BUILD_RUNTIME=OFF
>> + $ ninja
>>
>>   It is also possible to point make to the newly compiled 'llc' or
>>   'clang' command via redefining LLC or CLANG on the make command line::
>>
>> - make M=samples/bpf LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>> + make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
>>
>>   Cross compiling samples
>>   -----------------------
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611042978-21473-1-git-send-email-yangtiezhu%40loongson.cn.
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/198ec9cf-46cc-7ed4-ebc5-80c875033995%40loongson.cn.
