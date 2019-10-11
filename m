Return-Path: <clang-built-linux+bncBC6MFNV32EFRB6GIQHWQKGQE5TPIIZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B34FD3E10
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 13:16:09 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id v18sf4189123wro.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 04:16:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570792569; cv=pass;
        d=google.com; s=arc-20160816;
        b=GgoxJjQTH+W+YD9z0t+IgFfSguS1lNUKeh29j/imoN8Whtc6MD/NhksmkNBt1c75l3
         3eoPBYLay6Cc349MRCYYuiYveyEZe3tidE+t+8PqHs7cCJw45vBuNcmMq2DmsmRj6qkT
         qzjFmNDR4fZgF1RNNejbh7cR4bzawd9+YsWCHHxz2N4De+Fr6oiHIqBZhgZXu7AJcg8I
         Q95mtnlnyeIh6PA4wleXv8IBEM/TTKIRuVIKrd/x99dDcn+FHgi/H2In0J8myzGlnb6V
         ymKVT/zaewNVi7DF4il+4rb9bm2BNL43QgRe/HRLQMfIxecGnVwz/ZsRb5HMblA/eyRp
         yUSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:to:subject:sender:dkim-signature;
        bh=W3J0/Ue3hyYBl9u+ykuJjJPkew0xtM8fnXAcTQcP0Uc=;
        b=spyNngO0a62i+ebIHLj5ej2MPldUFcuF+prv2yLAfIsukUjuYjLqY0+yrLAfdiieA+
         Y+BUVIGUhq5yQIS4PyVLHb+EsuJx7ysy9aOpunJnwbj5T7g6pCL8hDJXi8g/I7HG3sW8
         w/CYDvxxbiJtQhJQ8b0yHo3nteGiRDqr/GeCq0kx37nBciSEq2kIi7YNGbuqtSvdKd5f
         aTtcFEm8dIGBQrsQg0GBV8EZYfShWIbITl+WNX+Ua2pRvfD7SJKfTyFWQ4+yoy5y0+OL
         6MxCEHqMYcoATE48ht7Ro0aqGWyZbBjqrz8Hi+/WSwahVKKttmufalmUfW/sOTIlpAyq
         EWGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b=FJGDUtGW;
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W3J0/Ue3hyYBl9u+ykuJjJPkew0xtM8fnXAcTQcP0Uc=;
        b=W9nGnu/y8YN7FnDf8UOJsa5Dv1cOvr8qcXh9zqbzk6ni8NY3zTJX54pPKqd4bPwVRA
         CAVgfKlK1sh9ObPP/xptjOa43e2cX0sTUaTF7qnPXV1nXlncTlHyx8OKG6RjoFrSngaM
         BXIJuNcAsgHeuNrGJoUQjqskftzWkTXzutyM1eCaZFueiSmz9U6nC5ezCvat1dq4/Zj5
         q242N4l0FkVAKOVcA2xmZf85yI+DOSHwz4KPl3cqHDoUs5UscSwC+XOaUhVVBgABIGS5
         toBD0m7M4TmhEwHNpk2G6/rz+PafInrVp8LE/aWwRDT14Hx4qpPFOyGIm7Zj2faAur4+
         c6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W3J0/Ue3hyYBl9u+ykuJjJPkew0xtM8fnXAcTQcP0Uc=;
        b=VN2BRt+cFYTT3uaTg5H8EkKbBH/wGYg6sblONlYliasv/rcsKylkInxjkv7pG6zxIE
         mlP8w9lT62MHUs3yQ5bIFI6gcbMdIG6Ly1Y1Dgks2WwrOqPbQr8g4NxvweNjTA5YMsdA
         7W3p+u1aH19IqzLTvgj3Ck02hw7/sGwEbov6huWsW2YHNm0z6Je7uEQHexTg7E/ZuicU
         7iLq4ig4dtxo/NGtRhUuThFOwYhx5qHKdttiAGa6xkK4/KUGRtxy+TZ6PxmeaTrxFoR6
         8b0kBvHzr5aQUv60m9en6sBI182ASC+m1a9d+3DmCOcK7WKxWms1uus/PDxWnGzMLJRT
         aAUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjKKV8t8WcdTDXnIfo9kSsN6q2qfXfjsJY8bF1ue2tzWm58Q6K
	w7ujOjdwOTdlPPLMRppsrUE=
X-Google-Smtp-Source: APXvYqx+1zikUGTPK2JnjcuHi0Wrr7nehujhvngcVYUo2PNEHAmUZBfy0vSStLYhppT1R4KWTEp2TQ==
X-Received: by 2002:a5d:460a:: with SMTP id t10mr13230432wrq.13.1570792568969;
        Fri, 11 Oct 2019 04:16:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dccc:: with SMTP id x12ls2462105wrm.3.gmail; Fri, 11 Oct
 2019 04:16:08 -0700 (PDT)
X-Received: by 2002:a05:6000:11c7:: with SMTP id i7mr13002327wrx.231.1570792568547;
        Fri, 11 Oct 2019 04:16:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570792568; cv=none;
        d=google.com; s=arc-20160816;
        b=z/aUaUMqMCzh79Co2DMGaKDSGHym4ViTdQqPFvogue98TbgI0KefZ8gSyFthUR/+9K
         8kaEHGXg+2irw5Ko9YZsTcSVTz4hObHU/SEf5bQ/osXi1YuDgyuqpT8JOlasceMknJKl
         FDvB9SxYJPVWUkCsjdLndplwcfhFUi077GDAa7gyuZZHpV2YY4gYe8g27cuEIPKRA1XZ
         fbz9z/k06DSROnjzld/LyXoIqzd/z190xG0zRYKNMIK4JyUH2IURLq9Jfmh+3Lu5lcat
         NrS2mrGGHJPaB2muA9wFMd9FjLsad2A8hcuf/t2DxnASSshQ73jZloNhrlvcQW0iVkCZ
         MFAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:to:subject
         :dkim-signature;
        bh=Ooy01geSvoqL+GgWiguG5Arr/pkbSR9LEwm6vQ6trlA=;
        b=xMn0G4XmZpjhCJwXYiOJKsaAOfw3hlaMqVPFwv78R2aUiZyyTOjzVtbkaH1QhHNlUN
         WYKgD+AGK+uWDwEP3ah0uyeaMp0mOB6FFizfJdZSyBXR0ebr0y4g2Aw4kXToQ+3rmyAk
         DW5iqkRhXWpg0/veX3v5BrnMR7TnH8FzLfdDtZjzXRqNpbjzWUvpjAu7etHRCOtHXhu0
         opAy1EGh8LGTgqXD5UBXl9xBd01dR4i9hKJKmfAjNVi1g3AgEsVJtsBCXiDw6BPlo8SD
         FYIBVCePv5PTOlfo3s4ipuPT2kly+MSgNeyUa/EMONJCIHbpgYeGECEVVw+e7JyjY2H9
         4z2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b=FJGDUtGW;
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id n16si578439wrs.4.2019.10.11.04.16.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 04:16:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id d1so9376784ljl.13
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 04:16:08 -0700 (PDT)
X-Received: by 2002:a2e:569a:: with SMTP id k26mr9075699lje.256.1570792567730;
        Fri, 11 Oct 2019 04:16:07 -0700 (PDT)
Received: from wasted.cogentembedded.com ([2a00:1fa0:4430:5cc6:e6ed:2da1:4d7:1d29])
        by smtp.gmail.com with ESMTPSA id q26sm1857253lfd.53.2019.10.11.04.16.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 04:16:06 -0700 (PDT)
Subject: Re: [PATCH v5 bpf-next 09/15] samples/bpf: use own flags but not
 HOSTCFLAGS
To: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
 jakub.kicinski@netronome.com, hawk@kernel.org, john.fastabend@gmail.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-10-ivan.khoronzhuk@linaro.org>
 <99f76e2f-ed76-77e0-a470-36ae07567111@cogentembedded.com>
 <20191011095715.GB3689@khorivan>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <3fb88a06-5253-1e48-9bea-2d31a443250b@cogentembedded.com>
Date: Fri, 11 Oct 2019 14:16:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20191011095715.GB3689@khorivan>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-MW
X-Original-Sender: sergei.shtylyov@cogentembedded.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623
 header.b=FJGDUtGW;       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com
 designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
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

On 10/11/2019 12:57 PM, Ivan Khoronzhuk wrote:

>>> While compiling natively, the host's cflags and ldflags are equal to
>>> ones used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it
>>> should have own, used for target arch. While verification, for arm,
>>
>>   While verifying.
> While verification stage.

   While *in* verification stage, "while" doesn't combine with nouns w/o
a preposition.

>>> arm64 and x86_64 the following flags were used always:
>>>
>>> -Wall -O2
>>> -fomit-frame-pointer
>>> -Wmissing-prototypes
>>> -Wstrict-prototypes
>>>
>>> So, add them as they were verified and used before adding
>>> Makefile.target and lets omit "-fomit-frame-pointer" as were proposed
>>> while review, as no sense in such optimization for samples.
>>>
>>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> [...]

MBR, Sergei

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3fb88a06-5253-1e48-9bea-2d31a443250b%40cogentembedded.com.
