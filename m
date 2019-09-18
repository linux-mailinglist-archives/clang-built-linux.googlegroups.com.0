Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBWFARDWAKGQEITOG6AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E87B620F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 13:09:12 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id v18sf2220378wro.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 04:09:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568804952; cv=pass;
        d=google.com; s=arc-20160816;
        b=s7aGcuR970awdeA8LUhmra+WgjZmU0nT8AVwFRndGYo0/diczT9ZyjjQ3OmwKpSuA0
         AmwFBMc2xlYvoOiEHjtGEr3KEaJUS25sNltoi893zumeXygQ6cOpeLbGch0VFwWixqBs
         48nhDbBzPfd31WwfyF0i7V34c5i3hY11OOsxJnTJFeZv3rJqLr1p2XZOh4yfgu4GST7F
         pYGuLS6jWmxPaKUmPeFnB+whZf5HR+gRGNwYMMWfaqNBFv7Xt+XazcmJUkqMB5b4Tirz
         X6WPHrdDaUnOWXFQcbxogTN38pYf2tTla6lVeQUZiumbWiCkKH/8Llzt4mAvGWv4r5QO
         p8bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=fN+x8YO4zmNQ1k+Z7yOYAmxnRNF1K8Ec2VoZHU2zF5k=;
        b=t6gtX8vo35iHRcL1JEqRaxzPK9k1+xeuk+mrAoL8IO+aYyUrSoOOZ3mHUdcDyMjQJu
         UupzPklqqLEtp3FwTJ6+lXfUJTXzazs0QOlDCi7/XuAnLuZr5kmSw0UJ65PrGgvO2u1x
         h7gvffFDGAmshR1hIPSMMPiH0HbwVpuruZdQUSYZwE1RMhEsG6SrkiPN49lRlpzn4beT
         7ryaee0WtC0BGiO6KUu70PhN99kww/Yr9yEuE42ojBTy+QM4rrZKjDwn545UNaFunTwv
         W5T4PVjxsngGdc9tLTEWTXF0Ozn9+R/5anHUaTAb9wdu6JCFrW/yucoUdM5pXcsa4fPl
         NdzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tCVX5aZD;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fN+x8YO4zmNQ1k+Z7yOYAmxnRNF1K8Ec2VoZHU2zF5k=;
        b=etdAExjECmkwKCckWBDjOgOmCFJzjAlE9QlCwlwN5Cjo5rGYuMbcSkYHJKMO968rQA
         6jtBBdWwnhHnp62Xa1i2pxls9XbyGsUvbLnW8w5ujn2M19d7yF//w1KmKAIALMZSVu/A
         ctEmywspPKPvdO5W+Te7P+iPlPvbzGQo9JOdnDBGjUBwDK+/GQxX8WKIZ7rDNxE5AWo0
         EaIaK7D4nHKH7VcG6BsDzEsbrwa+VOyvdS8De7ZGgq3mrJhlYxogKI8Sg+wenqHnZydS
         xBvgzU41qBhjkYPvKKzXj2IuicvgJLminnf/xq/L44pf9iwLElzyNeYs6MzlndPtyYZO
         t+bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fN+x8YO4zmNQ1k+Z7yOYAmxnRNF1K8Ec2VoZHU2zF5k=;
        b=S57v0rCnaBfoOHOHfmqyBX5wzVujGmMqwuDRCUz3R8rYeBvGHCRSLeE+1JxZZg8idt
         KGCL3wpsyLXY1tNySJjXWl/9I66CYyWGvG3ykebqZcEJMB8QEdnOe7YHOicNwsaa6ETI
         23Cx0C/dtWFXTrn0wfvpbxgIzJeMbVxgj/pyMXWj9M93ZL+zb3DMG26pXg/EFWCwidf5
         bqRdkyQqNLImfLEASATuoo4Ld9sBXzE/t5thp5Ec/hHWkGYKX37I+3ey93CVa1/1Syfr
         2qNeBYrdNoAzKLNxUqY1MKKeYXS8F/kZ20juwTgWtO94ICTMucToWhmIHl09uFGYnufc
         N4/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXUVKe3IWMQdQOiyooymr+OyBb5t6ileLQMSUhJMF8UADRvE/6h
	rAG/PnOP3c/TMJbZaXAg2X0=
X-Google-Smtp-Source: APXvYqwXFUT8tvotAdoA7D0MZnVlFumL2U47e/n1W8CVNvgeWZHNJQT3iyq2mVq2l3fD2c7g1tDgKw==
X-Received: by 2002:a5d:4a84:: with SMTP id o4mr2538777wrq.165.1568804952690;
        Wed, 18 Sep 2019 04:09:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ecca:: with SMTP id s10ls1801207wro.9.gmail; Wed, 18 Sep
 2019 04:09:12 -0700 (PDT)
X-Received: by 2002:adf:e5c2:: with SMTP id a2mr1250855wrn.320.1568804952303;
        Wed, 18 Sep 2019 04:09:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568804952; cv=none;
        d=google.com; s=arc-20160816;
        b=SqA/ge3RPK+jlBxUlHN9cYk4jMUwgfSLqFb6+6d54WuX2kLsyMnzKpluNf9aUbvtqx
         sisH0nP6SXW20p3SXAc/M8XIydLXpbWijv7B1a/HUfxj1no7y0d9raCXI6qPYWH1xouo
         E9kQLYC6rcT25mbnqs38/K3dJRsNasx1+w9s0hUO4DBKpLOI6HaDk29xPJuofpzhkX6+
         n3qXwKN00s+UV/pLt6TKn7GoDd6hcegY1QUFARiVScGwrf1Gi4wGKEgsqtQfV8Ok7nA+
         Pf9AaFVhpLd8IxUwwG4CrUqOD8W4IRn7PP5GNhgVjbxpkOwAVHP0czuEhp0jt6YfyyfE
         63kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=v6VDBivAx2Q88SjA44gfOPe9NoEO8jXXz9c7wXdVcf8=;
        b=UM+d66FYr+UGioS4qU/AlOrNlmizl7LKXlzAZfM8X66R0cRvxdk5qj7cTnpdtDPW6A
         P/MZP6F7TgsB/o+uNpvxxuTdG2wotw7Lo/cEA5jZQ32yHAw++J6ia5el7vteLC2V1hNK
         YxE9+bYFaswn/54XA6z0xlcitbsKEEkH1TM9xFu3GhUpQB2ZZM9FmbqNEO1eQX/6CdW2
         wiAYhtmBUQFUBv4otYzM2KyW4lytrPs9FOwV8lQPygrEyEid6JiCYbcB7Q9XDRq5b+EO
         9urd/kKgn4JJGRUlBPOW4rh8NnBgIgBpXe/epKdd0IehxVvO8Pkmk9ApgQ7esFhHrLEW
         4IjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=tCVX5aZD;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id 5si447916wmf.1.2019.09.18.04.09.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 04:09:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id l21so5055353lje.4
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 04:09:12 -0700 (PDT)
X-Received: by 2002:a2e:9241:: with SMTP id v1mr1903624ljg.148.1568804951532;
        Wed, 18 Sep 2019 04:09:11 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id y13sm970049ljd.51.2019.09.18.04.09.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Sep 2019 04:09:10 -0700 (PDT)
Date: Wed, 18 Sep 2019 14:09:08 +0300
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
Subject: Re: [PATCH v3 bpf-next 13/14] samples: bpf: makefile: add sysroot
 support
Message-ID: <20190918110907.GE2908@khorivan>
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
 <20190916105433.11404-14-ivan.khoronzhuk@linaro.org>
 <CAEf4BzYa7mwFLZWdS0EMf4m=s88a94z6p30mxN8Q9=erpE5=Xg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzYa7mwFLZWdS0EMf4m=s88a94z6p30mxN8Q9=erpE5=Xg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=tCVX5aZD;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Tue, Sep 17, 2019 at 10:23:57PM -0700, Andrii Nakryiko wrote:
>On Mon, Sep 16, 2019 at 4:00 AM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>> Basically it only enables that was added by previous couple fixes.
>> Sysroot contains correct libs installed and its headers ofc. Useful
>
>Please, let's not use unnecessary abbreviations/slang. "Of course" is
>not too long and is a proper English, let's stick to it.
>
>> when working with NFC or virtual machine.
>>
>> Usage:
>>
>> clean (on demand)
>>     make ARCH=arm -C samples/bpf clean
>>     make ARCH=arm -C tools clean
>>     make ARCH=arm clean
>>
>> configure and install headers:
>>
>>     make ARCH=arm defconfig
>>     make ARCH=arm headers_install
>>
>> build samples/bpf:
>>     make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- samples/bpf/ \
>>     SYSROOT="path/to/sysroot"
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>  samples/bpf/Makefile | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 133123d4c7d7..57ddf055d6c3 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -194,6 +194,11 @@ TPROGS_CFLAGS += -I$(srctree)/tools/lib/
>>  TPROGS_CFLAGS += -I$(srctree)/tools/include
>>  TPROGS_CFLAGS += -I$(srctree)/tools/perf
>>
>> +ifdef SYSROOT
>> +TPROGS_CFLAGS += --sysroot=${SYSROOT}
>> +TPROGS_LDFLAGS := -L${SYSROOT}/usr/lib
>
>Please stay consistent: $() instead of ${}?
Yes, thanks.

>
>> +endif
>> +
>>  EXTRA_CXXFLAGS := $(TPROGS_CFLAGS)
>>
>>  # options not valid for C++
>> --
>> 2.17.1
>>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918110907.GE2908%40khorivan.
