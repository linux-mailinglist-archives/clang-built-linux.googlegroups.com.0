Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBLHCZPVQKGQEQB657HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF82AC36C
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 01:52:13 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id b9sf3255220wrt.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 16:52:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567813932; cv=pass;
        d=google.com; s=arc-20160816;
        b=0d/v0U4pDgbKnrHdsAvjysmyNE/Lq6qbBJoQ3n7I6Sv7K1+lpTxSeHG/7fi3AlRp0t
         hpbeH2vtUIuoxGKOHwXXDKbav8ST2+/Q3JJE05A4jesUGsK1i67vd66PLYW9WCPMycsn
         IcGAD2r+5WHjSm4G5Xb2vVEh62i0XeHK8FiVyegdLrmsJnJueHbH0NNIxam7w4yFfBHK
         iajBCsOES+KwhyP34TbIx+ZbryHyyuu7WpODJHd1luE9/Op6IFYqCd7oBiwj8blIBr2U
         xSyfcauTyRUMiqod0CHOGBhZuK1xuwjCY8jMd5WnMqkCHgK9tAAIkbJmP6wx6DgEIjMX
         vLYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=H2Fx5Pq710oAoatpSD27sI0PMTZvrkVbECA7p9e0YsU=;
        b=rSoBoo8QbdAL86Gi454XF+H5K5f/h5tbMKaqiGyerVsDefLDcGrT57G9wqcmb2FPPZ
         7PpjFDC03Uzy0qAI/NGsTRHLZjLOQHyiUQAXig3rLSptLR9ETDfsQVu2LeGIZeXnaZmH
         qiQgIHSMGqxn9eDFJB1UxScCCovl+CqEYnTW6OAzGdJ/kG6tTgibGsL26zs9rnfh5cm5
         qgy3p3UUcnlbxklSHrohmq8oTkb42/nZhiIJ/KRIRnEYvzyhp8e0oj1/5Z9NcTfLRTm+
         zHNW997PHgBL2qfxBGVOsfkYREh3489PLYg5uqA21RMLGJRJyldYkPIoI4PXNnHIK4Wf
         cVmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=N8apvxEu;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H2Fx5Pq710oAoatpSD27sI0PMTZvrkVbECA7p9e0YsU=;
        b=ZfeqzlvrQaEwHdnZ9VQOAM1IfggrlArRr6AO1mxL+kOB8SNOcET5eBwarRtSWx6dYl
         /DSWilB1wDK0VUKQ4AmvNgbzEb4mRH+ic+2H/D5spq6B9Hmip2iwykGfVrl2Oc9i7XBK
         m01AXMri9wk1VAH0ZjYqneiNAxUXZ53tXvaFSaMFZdylXMs12QNI8BwEi1GgFRyElBqt
         sNKT9wv/gC4Z5RBjttfX2O/CiBRmnJogAeCBJ0ZhNHVUOneUYA1C8Yf1x8SwcteNG82U
         gzblwZ6lYGwP71Im5cNsexs35FljDZCl7FRP7z6mqQYN9r9ARjq/ebpSgF9u+8O08nar
         sTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H2Fx5Pq710oAoatpSD27sI0PMTZvrkVbECA7p9e0YsU=;
        b=SqqIXnLSEvEcMYa1dt1HJyIPSiAS2u+uFIF318hApKN5wN47uMMBEw6a9YB6YS57ln
         KBlou1xzza5RNLeQG0sZGY922X4LKgSW4P6h2Ad+XdRK6ZIlJmBqFTWdgHL65UOVEwnU
         Vr1UCzkiMsJO+upnCXD9vEuWiM72jszMHLLRrufB++j4piSjAITWfKSRtP5jxpSYOE8f
         kQ7tQ3FIgfNt58jeMQZFObvkNS+iK2i8sOYBucMV+neLFBE2z6QAcqqBffkzRHFpHOKo
         8RVKACsvZv4ILDnHFuIZwyKCr/HT4lOvQTzfgi9LGWw2Op2sic/Ia0hPtrF2Z8V56Yj2
         NRxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUsdwaHq4YUtjGQqOtJIf/+R1HWhp9HONs03n1O1oU6hNzLoa/g
	vxoE44bom/gDz0Kd5ixnWGc=
X-Google-Smtp-Source: APXvYqz2oroeGQYUOmebpTNfioAx2vuD88KiJ0PIHcuNpnSRamHoKu2BkbwT3r0h/BR6siuYxjp4jw==
X-Received: by 2002:a7b:c5c9:: with SMTP id n9mr5426713wmk.18.1567813932731;
        Fri, 06 Sep 2019 16:52:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f7cf:: with SMTP id a15ls2025720wrq.7.gmail; Fri, 06 Sep
 2019 16:52:12 -0700 (PDT)
X-Received: by 2002:a5d:4444:: with SMTP id x4mr8365730wrr.11.1567813932250;
        Fri, 06 Sep 2019 16:52:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567813932; cv=none;
        d=google.com; s=arc-20160816;
        b=qXXbF49bwC5xqJ8FZheVCTDI9nEo/3FFqi6/cF7pWK0hxFhnhZWHEUQhRm4fJHQ0fO
         gq/3w5WBRFgaR+gBDCRZdwyBgUw+0GQ1jaQ6KIyWNjau47VtSC8kq9dfM33SOYKE5Tdv
         HpbdUe14tOBS5HS1ktLTY2mzzVE/uiIWsQ+8iWBTs3EZDh9CjwEvj4FfnFn6bhmLjF47
         eg/lkOJfKPlDgZcCE8AuShQ1BwwomOlH0hsVARZM2w3FPNUaWCnOmTofOmlqZQST+uhi
         +LB1lN8GOgFq7Hw4uAOvabiCryqWkq+1wT0nj+BQ+HeO9IAwMk2RaqD9vA4qsL0km4Ah
         mtHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=7gt+dprtIaWWWiehpVBpT9gjTU5sJKWHbohiXhkeDVw=;
        b=q8Mu8Dg/eFaWFJFCbh6vDeQj73yAb1Fp051B2aD4e1LP6FJryHWuIGJAPPBNH2gERC
         BGlVwB3EJwaPabgE+01bjvzXmHSgLHOKnUFnCbx7LRvFgyOapfvkaIDjN4yA6MO37GUv
         WHIeZMRX6iBiPZY48pFNPHps6h/XB6EatQCWSb/ShEtnrseTyHnmYaWDlcazenuCIspl
         kt9lJGa9xYYstvwiSpaBFOcvZJKWtIknifRaivOX8eLcWpycQQDX8vXq+kk9aKZcoqgj
         QcBDpACMqjpMLe8WepIIJ+QeQkaF2QRvjXOfUU44jb88MmGx78bnUv6A6OT1PAVyhujz
         YHgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=N8apvxEu;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a198si577703wma.4.2019.09.06.16.52.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 16:52:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id u14so7479673ljj.11
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 16:52:12 -0700 (PDT)
X-Received: by 2002:a2e:b4db:: with SMTP id r27mr7238028ljm.110.1567813931698;
        Fri, 06 Sep 2019 16:52:11 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id t5sm1408113lfl.91.2019.09.06.16.52.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 06 Sep 2019 16:52:11 -0700 (PDT)
Date: Sat, 7 Sep 2019 02:52:08 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 2/8] samples: bpf: Makefile: remove target for
 native build
Message-ID: <20190906235207.GA3053@khorivan>
Mail-Followup-To: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
	ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
	davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
 <20190904212212.13052-3-ivan.khoronzhuk@linaro.org>
 <20190906233138.4d4fqdnlbikemhau@ast-mbp.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190906233138.4d4fqdnlbikemhau@ast-mbp.dhcp.thefacebook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=N8apvxEu;       spf=pass
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

On Fri, Sep 06, 2019 at 04:31:39PM -0700, Alexei Starovoitov wrote:
>On Thu, Sep 05, 2019 at 12:22:06AM +0300, Ivan Khoronzhuk wrote:
>> No need to set --target for native build, at least for arm, the
>> default target will be used anyway. In case of arm, for at least
>> clang 5 - 10 it causes error like:
>>
>> clang: warning: unknown platform, assuming -mfloat-abi=soft
>> LLVM ERROR: Unsupported calling convention
>> make[2]: *** [/home/root/snapshot/samples/bpf/Makefile:299:
>> /home/root/snapshot/samples/bpf/sockex1_kern.o] Error 1
>>
>> Only set to real triple helps: --target=arm-linux-gnueabihf
>> or just drop the target key to use default one. Decision to just
>> drop it and thus default target will be used (wich is native),
>> looks better.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>  samples/bpf/Makefile | 2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 61b7394b811e..a2953357927e 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -197,8 +197,6 @@ BTF_PAHOLE ?= pahole
>>  ifdef CROSS_COMPILE
>>  HOSTCC = $(CROSS_COMPILE)gcc
>>  CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
>> -else
>> -CLANG_ARCH_ARGS = -target $(ARCH)
>>  endif
>
>I don't follow here.
>Didn't you introduce this bug in patch 1 and now fixing it in patch 2?
>

It looks like but that's not true.
Previous patch adds target only for cross compiling,
before the patch the target was used for both, cross compiling and w/o cc.

This patch removes target only for native build (it's not cross compiling).

By fact, it's two separate significant changes.

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190906235207.GA3053%40khorivan.
