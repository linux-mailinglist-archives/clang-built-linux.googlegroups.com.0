Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBYMNQDWAKGQEVC2YN3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B285AB43BA
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 00:04:17 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id c83sf353662lfg.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 15:04:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568671457; cv=pass;
        d=google.com; s=arc-20160816;
        b=uwAys7fY5eoyNWjyFqKMPX2n9TSQcFmDLhfnv266ZKCEdCjzQq+A81LB5iHvzvmSAL
         lXst7W3qucttoUK8paB6xmsb9f4a6/jOwSPotQ13DdhACGz8dUw+46jHpC5bfgw5v2eq
         l//X3knrn8lnvB40voWi9qsYzpJbjMjNB02DHKuU6ysMaPKinqvrZFnY/t9WTSQOJNrH
         t96RGHfXIcN+fgMjh3tZ9f4TKU+FXzzZZHCi7R+L2EXwMxFQIgrN0sfpei7My8qcdVd7
         Skimakp1O3bBRK/+fOo1hE7Urg25IO+qiZgmA5SmFsvnvQKdIyEBKEO90bZ8LhrXPfpz
         k0WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=+CfrBMSPXm5DW4SaK+VW+ly3GI4MLWf8K1/w7Hsjm5Y=;
        b=kYdYdOqQ5jZxKKby4BW5P/C0INKby2HZCR1xSm/uN4YZPulQR8AMMU1lcJ8mu72Wsp
         tpgyNbNtEDz53Upur5tlfP0MfcJEGRnI47zSk4MPsVqGlO6X4SjPtn+8JDYOUtAR7Jjm
         1FYil1ExB+PfHYGhCjVtfypr0OtW1pJ0XW1tiop1X+NqNBV2Xh4+jXYv2jIbwppkvDB3
         sOIf52dgFHD4/GHh2yuAnqW+sQXkIUgsV3w2LPzqFhX/eDo7HSBjNzVx60ma70uCqQcO
         jLKWbMHmHU4HGFICTRQEIiK4P9t4m3Q2RSu54FTTy9Y6gpTN53jC3F0hqZb6auSObLiQ
         fnCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hv59pXfy;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+CfrBMSPXm5DW4SaK+VW+ly3GI4MLWf8K1/w7Hsjm5Y=;
        b=TiyubuII1JKYWiomYCWpBJUX8z5ydP8G6OBhLZVYhPgeNX4bXW+wdHfklvFUVlJkpw
         Zd+3IAv1k4czRN67nFqGr38UJX41R2gfUJn7B1t5TWzaZs0GHifKtovmSYDSld1xnZLZ
         z7NjtDWcS0JkP72kY7TS6d3aLt1+tQ7g06wAaz66ElMsOAcqD+BoZp5jFefZg4lwh31u
         WRz5Bg+efDGp2Np1LfL76m4QSpvEF10aVzedV1qD/Dc7HaiiXfvh410qx9svKPRyZACL
         gGZmhbEccniUhiBZeQ1l6zJjdlXeB8e16hi2nNaVIaLhI0zJNwQPfvg3yrJ0zl2fcUgz
         hwFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+CfrBMSPXm5DW4SaK+VW+ly3GI4MLWf8K1/w7Hsjm5Y=;
        b=aJWxj/8lc1aoBxgX9RKBOe6LSECfko1QIXIkfYqwOKnMXP0o3Gm9DkC3vGWAp/PWGp
         gKnvNnqjIrvRO8WtN032iTmYitBsMAhgjh6cyelYpAVBTQGh/Dc2IdU1FBRnh48niZ7b
         Qv4+rWAUaMUqrMflS+uEemK1G+l3h2XAlA9YYu6sbQBr11x6zFQAWUb93SZNDrCMzk4n
         6fXbrR4JLlsh4r8YQiBlGBdCvNj8E6DRQle3jutNVZYhhjJ6kRx1V2Pf0kDfKZxPF7w4
         yB2djI9ExXIsmyFAhdHK+qx8OeRUVPIxg25p03QGIRwSBnTEV30V4U6CgWyKV3jB04jb
         hN3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWuxlGQ7A/uoUUvnleM8fwN3nGrDQEaKdHKq008+XVhmXNHIhn
	x3Z3rX2DA746jvA/Gr0PHTg=
X-Google-Smtp-Source: APXvYqyrCBq2Tj/JIfgUqbin5Jap8Vbtjj8vaQSH2QxSgEUx4khJWMt0gzNRl/G76z/z7fmjk7Eo+A==
X-Received: by 2002:a2e:9e19:: with SMTP id e25mr67840ljk.152.1568671457326;
        Mon, 16 Sep 2019 15:04:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:47d5:: with SMTP id u204ls131318lja.5.gmail; Mon, 16 Sep
 2019 15:04:16 -0700 (PDT)
X-Received: by 2002:a2e:5456:: with SMTP id y22mr73549ljd.60.1568671456799;
        Mon, 16 Sep 2019 15:04:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568671456; cv=none;
        d=google.com; s=arc-20160816;
        b=jIxQX9twWZQFxIkJ0w4sEN951Iy5KErmZLqT7OlQx5Vtu9o2u+/22xAZ+t2wX4U34F
         TtSnbAJ8BD8nfk9TtQreTBI0+4+XulsIwhex1M89PJfj7v0oBkKYRByVLHtPgZmTHBlq
         O3QjoZjaYbRac2EXNjNJKM+tsQdtIoFhBh0fEhBz3tetpeCez9dw0p/82lBET1zGIfeu
         EP1SaaPP55k0nq74uQID2LgVMQGpcGGJBEDtF8/vM7IzILIRvOO/W+k37ZC51kU4hphJ
         D8if9VI1yXQIo4kY3aO7qZOce+ZAJWiRt3r85h5s0MNiAwMDR+/AMmNHpUE5WC0ALdlP
         HfLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=an8Tg0keAdSMZgI1pA83USwohPIWdfUkBfCw/Vxa0hM=;
        b=vtprxBDAPtw7C4OO6XkQCKtm1kgQ+sBJp9tFyg4e354+f0ULx5RwZvn+wmdd5RslV8
         MnEMlgpa4bEseW8zak9ufDuhbK5fD4AbhfgqhtAgb8LIK5HXyx3u6lm5BnuWnFq5zZYR
         hqRYY6SUUXn4/uS/vo3WjI/085V1/zBjNlPWuUJA4O8rp901RbmOFK9a2SC/8r52qNBb
         TNGhp7EDZWiCi9nfSu1RScQSEEuVYZa+4gyrlzPqnXQm8A+ebmdNj6ExsixXwQcqXnkj
         08Lsbx/5tUM2WFklF/nsUsixQvxOArJUGbIQQiaL3qUOkJAWxxzlUK9klre7gMzZKU1M
         wGuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hv59pXfy;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id u24si103243lfg.2.2019.09.16.15.04.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 15:04:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id e17so1368713ljf.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 15:04:15 -0700 (PDT)
X-Received: by 2002:a2e:958c:: with SMTP id w12mr67916ljh.98.1568671455527;
        Mon, 16 Sep 2019 15:04:15 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id e8sm40562ljk.54.2019.09.16.15.04.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Sep 2019 15:04:14 -0700 (PDT)
Date: Tue, 17 Sep 2019 01:04:12 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
Subject: Re: [PATCH v3 bpf-next 05/14] samples: bpf: makefile: use
 __LINUX_ARM_ARCH__ selector for arm
Message-ID: <20190916220411.GC4420@khorivan>
Mail-Followup-To: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-6-ivan.khoronzhuk@linaro.org>
 <CAEf4BzYpCGHxNG-jOjwx5a2NXbvLW4gZH8GD2p7E27v9K3ookg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzYpCGHxNG-jOjwx5a2NXbvLW4gZH8GD2p7E27v9K3ookg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=hv59pXfy;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, Sep 16, 2019 at 01:44:23PM -0700, Andrii Nakryiko wrote:
>On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>> For arm, -D__LINUX_ARM_ARCH__=X is min version used as instruction
>> set selector and is absolutely required while parsing some parts of
>> headers. It's present in KBUILD_CFLAGS but not in autoconf.h, so let's
>> retrieve it from and add to programs cflags. In another case errors
>> like "SMP is not supported" for armv7 and bunch of other errors are
>> issued resulting to incorrect final object.
>> ---
>>  samples/bpf/Makefile | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 8ecc5d0c2d5b..d3c8db3df560 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -185,6 +185,16 @@ HOSTLDLIBS_map_perf_test   += -lrt
>>  HOSTLDLIBS_test_overhead       += -lrt
>>  HOSTLDLIBS_xdpsock             += -pthread
>>
>> +ifeq ($(ARCH), arm)
>> +# Strip all except -D__LINUX_ARM_ARCH__ option needed to handle linux
>> +# headers when arm instruction set identification is requested.
>> +ARM_ARCH_SELECTOR = $(shell echo "$(KBUILD_CFLAGS) " | \
>> +                   sed 's/[[:blank:]]/\n/g' | sed '/^-D__LINUX_ARM_ARCH__/!d')
>
>Does the following work exactly like that without shelling out (and
>being arguably simpler)?
>
>ARM_ARCH_SELECTOR = $(filter -D__LINUX_ARM_ARCH__%, $(KBUILD_CFLAGS))
>
>> +
>> +CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
>> +KBUILD_HOSTCFLAGS := $(ARM_ARCH_SELECTOR)
>
>Isn't this clearing out previous value of KBUILD_HOSTCFLAGS? Is that
>intentional, or it was supposed to be += here?
>
>> +endif
>> +
>>  # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>>  #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>>  LLC ?= llc
>> --
>> 2.17.1
>>

Just left from previous version filtering all -D options.
Will update in next v., SELECTOR also.

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916220411.GC4420%40khorivan.
