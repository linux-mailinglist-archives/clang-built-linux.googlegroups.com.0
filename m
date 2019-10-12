Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBGMKRHWQKGQEEEE6JLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id D361FD5292
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 23:26:49 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id m2sf7888354eds.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 14:26:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570915609; cv=pass;
        d=google.com; s=arc-20160816;
        b=NgPvZMZEQjyy2c8NG9ewoFxCUkEGOUG0iC/QNSMj5R0uecDTg3aBxYBJq2mLXm/nKX
         SuQfAhtGe1oH49Xd4EqQ1YkbJJ1HoyZap1+ZRVG5GJdWEHeU/Jq/TAC36QhQAJF3Yr1H
         SEsHv5z2JbVG/iZkn7xmjZLHfByDwyqeabZCzXX/qwuKigzEYNM9DW38p1itqD18X590
         eSMeQphJcwDO7UyIkyME10QrsmMIDDCg363z87hmAUGDV9PDRQmZmTRinGIH3cNVE779
         uMSA8zeVoK+Bxa/HF7u/P8nzNran3AhEZsfVKxGHCKByE/P3KNQpFNIhBZ29WtIOp/9h
         32cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=5UJR/EaObhFGAqdk5gYfZwvwgLq0+ikQ2FubO7jm5AM=;
        b=EPssq9+CY8EEzi05+krvKeKEakUf1xlP1jaDtnUCf7uzvEjr+otxvUJSi3SvpB/k4A
         8eTe6kpsa+Anthi+WWd+ewq6kh5S1XleeKwbQoa5RO8w3oTG5VtyhA0MFh5oz1dVyG4/
         mp6gbn3DrOGIWUkaARRDet2I1CnyFsiod0vWD9C85w+zX1PqIMCBeRnj6alZYtyzEdO1
         33xexSCANDCwPZDVkAqlIiXNavF+F4D5CidHl9+HZ8isCqji+QE6i45BiKZkHp0o9N7P
         UvChCWeIX+bKa+Ozqz10de2gnA8/4x9FCZyww43+ZoJhzdrO4QuXptk+GsCsWop66w55
         LTxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bOOQ6fpa;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5UJR/EaObhFGAqdk5gYfZwvwgLq0+ikQ2FubO7jm5AM=;
        b=aDpQ3iyovzDTaj19mS8UI5SEzCXwVLKMzCKxFdzQq11W1L9xsCRGZQGxdNNf1EbNX8
         e98dRNxrMoYE4glTbhCyEFBL4pATk6DK9nnYhaj43npRneCHEOCNNP+a4O3pV2BSNayl
         J0GbQtqP1eJULxgUOrb71z9xMFH6kV/F3KZ/5Kc+2lQIlFW51tpe28ZfVRxar56x5l6Y
         brvQpPGq2skQ+oJWnrR5LFOTAa9G/mleph9bkflNa1rW2plfI9CDYBTL1lQVvoL2Ocug
         EbWxob0E7VJInFOyNMco1b9FBzfLQe+fJfU3U1wbVu0mj4bGR9yin3Bq4kPARKN8P1ha
         Uv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5UJR/EaObhFGAqdk5gYfZwvwgLq0+ikQ2FubO7jm5AM=;
        b=oTespbyOQz0rW2dSO7ugjWJ0dqVBLtYySZIWpzSc6DhsXyv9dOIHo75HGHRKhLb2KA
         0Pl+SgWT2GgjE9VwyQl7b4YV+W0IfpPdqtp3nBB3GJYIveML6pv5/U7OX3djIVYJAEU/
         ZuKcu/GgYMHxK4sxcHcjhtGuMjApIFHyYpQEgTKeSqNjU72yAdGxb2zwdkFVlwXMAkoM
         jUTD5wfY3msWS6rL9ordIZwzeFZbRgqxQHIEbbm27CKho5N79zjKshcWyG04PGa8eNh8
         3YQ4K6dLHJZvnp+/mDUtODJfnOCE5qr9oa9pnilkaXd03gV9vbTHG9neSdL5j58bMzIe
         4o9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlHSz7caWmpIIQYtxbu5pMLSCwyRUhXQ0uxmdZIwNa2sO8gGYv
	tplxOkPEUsdZEsFjN0M4maI=
X-Google-Smtp-Source: APXvYqz4KePcceRZMKDqyTykQpYk8wS4FpGOeVhVdLcNaGY9xe+SMQnwAefYBlq6l3LLLg/MfZPYog==
X-Received: by 2002:a05:6402:21c2:: with SMTP id bi2mr20669396edb.8.1570915609337;
        Sat, 12 Oct 2019 14:26:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:69c6:: with SMTP id g6ls2793516ejs.10.gmail; Sat, 12
 Oct 2019 14:26:48 -0700 (PDT)
X-Received: by 2002:a17:906:3b45:: with SMTP id h5mr21072469ejf.200.1570915608853;
        Sat, 12 Oct 2019 14:26:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570915608; cv=none;
        d=google.com; s=arc-20160816;
        b=Km91MJJEOZFypvKpTSiHbkv4xFl/iCCYmw57qi2tw8Y6JND3S1bUVFSY/JHYM6dqBW
         sECSit5oTG631goNjDTNuWauAf8I4or0ec80uWXRGFIJpRFreVioAz5swdIGl9nsHoCA
         t0tfX0ERH66P7GQR9J0Zj7p5Ackd8EZu3wsXMGrZYUdiEAYvjPuvptoUOJbOi9P6ClQy
         ziTKgqq0KkBr1O2NGGJFSn+EUYDvJG2Qzrn99Da2ZRDPSUDGDPXIGX668XdB0fmwdoOX
         p9q00Bzw5DKrWJPkHTnRdYp1i3dy1AptRmVavWFpSdhoW/qeLHm83fBHzLVQVtwOW/OV
         67Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=l+nirvmkHLEBqBl6bw7lxrZbBMmPpPDkXnfegt2ERs0=;
        b=QRGERY556qRYRY+xJOYwgL1QQRapv3qmR30pPSk2jXy2pYUpSZ1CAXj9Xoploq+7wu
         buSPkvlBf3si6/mSSb2+zIUy/0SiEz2YLtPPYTNs60htSx/jUq7mRYq9Jkt2169odbWo
         s1pGAqn3hNZG7wkCfbaNi48tbs6ACe0whKIR38gQ4hFWdRAQr7mY4FZFRMrwu0Ozeey/
         DdkPCfZZRAOqvWAnfmBuGgCkKcJKRGAy5PV3FxdwIQGc3smwg7ecziNtQmnYgIWSUWDn
         phTk/slEntAnyjCNMS0eosAuyzkKUcrHA7bmAsNDLNUzb8uuToqd23+Q0B23O3j3oTZd
         xS6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bOOQ6fpa;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id q8si545348edn.5.2019.10.12.14.26.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 14:26:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id m7so13057719lji.2
        for <clang-built-linux@googlegroups.com>; Sat, 12 Oct 2019 14:26:48 -0700 (PDT)
X-Received: by 2002:a2e:8315:: with SMTP id a21mr13301291ljh.73.1570915608214;
        Sat, 12 Oct 2019 14:26:48 -0700 (PDT)
Received: from khorivan (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id x30sm2931384ljd.39.2019.10.12.14.26.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 12 Oct 2019 14:26:47 -0700 (PDT)
Date: Sun, 13 Oct 2019 00:26:45 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org
Subject: Re: [PATCH v5 bpf-next 09/15] samples/bpf: use own flags but not
 HOSTCFLAGS
Message-ID: <20191012212643.GC3689@khorivan>
Mail-Followup-To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
	ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
	davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-10-ivan.khoronzhuk@linaro.org>
 <99f76e2f-ed76-77e0-a470-36ae07567111@cogentembedded.com>
 <20191011095715.GB3689@khorivan>
 <3fb88a06-5253-1e48-9bea-2d31a443250b@cogentembedded.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <3fb88a06-5253-1e48-9bea-2d31a443250b@cogentembedded.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=bOOQ6fpa;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Fri, Oct 11, 2019 at 02:16:05PM +0300, Sergei Shtylyov wrote:
>On 10/11/2019 12:57 PM, Ivan Khoronzhuk wrote:
>
>>>> While compiling natively, the host's cflags and ldflags are equal to
>>>> ones used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it
>>>> should have own, used for target arch. While verification, for arm,
>>>
>>>   While verifying.
>> While verification stage.
>
>   While *in* verification stage, "while" doesn't combine with nouns w/o
>a preposition.


Sergei, better add me in cc list when msg is to me I can miss it.

Regarding the language lesson, thanks, I will keep it in mind next
time, but the issue is not rude, if it's an issue at all, so I better
leave it as is, as not reasons to correct it w/o code changes and
everyone is able to understand it.

>
>>>> arm64 and x86_64 the following flags were used always:
>>>>
>>>> -Wall -O2
>>>> -fomit-frame-pointer
>>>> -Wmissing-prototypes
>>>> -Wstrict-prototypes
>>>>
>>>> So, add them as they were verified and used before adding
>>>> Makefile.target and lets omit "-fomit-frame-pointer" as were proposed
>>>> while review, as no sense in such optimization for samples.
>>>>
>>>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>>> [...]
>
>MBR, Sergei

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191012212643.GC3689%40khorivan.
