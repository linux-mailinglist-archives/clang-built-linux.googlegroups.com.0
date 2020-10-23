Return-Path: <clang-built-linux+bncBC7ZLSUWVAHRBL4DZX6AKGQEIUKLNTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7BB29786C
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 22:48:47 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id i26sf1041357edv.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 13:48:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603486127; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kme59PED2kx/zraTf4OD7HmJZ8p8fKOhfxPsjHiqHxwE1OchiA1TxbcxAqpIRFKQks
         7lGvniJ4SgcLMK7UpHoINI7DRVthsK/iRxJUsYhthiH4kF5GT5W15ZG//KoN/kpxYU1+
         kPNnWN4CfVolOsqE36irsb5SPQSjHbD1DqpEvl4UVo+2vOW8kNy0xBR6hjBo/Uz6AACs
         aE8z9/vk6tiVmlVjrjHhpTF+4xoxZOQ7delyafFGyj8wT0FqwQGQBMbIRjq+qIJH/3ii
         o0b9Wk/kZ2GQahv5c5zoulwREvgDcijxeCcGY2Y21JN0PRdDWUmBr4qIiFxNo/rabjlA
         5hMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=147j7b8y53k73hvNH7Q6fagTamCJ9OGdDaInnNEVges=;
        b=ej41VpVtvrLlUP8JMvzxImIhJoUJ65I9iWf/+sgg4KsVcSdaqs+8kYlevpKZTfIjVQ
         cNtKpDf9ZoTjtr2UN7u7EKJWQeW5WR0kGoThClG5PfkkjpQwxmuOAqgS1/lQNpDgBvvI
         QMGFke+7pMvADOjJQMFbkwI6eGnvz/UPnHdm4x4qS7m7GIp5hEdXAh1TMdxgKuOTkm0R
         fPQ2od22exDwoDjtjGmH3PZKOQrIOF3CXFJ6jX1x9xcyOiGlvro/BZ2MyWRjf+GUVSqB
         fbqNSjormNWlpShEonDLHsRlJHCPVnM5rKA9zEhuSLKzg+ZPMs19b1Cyb7WyGzcbNwu7
         ujKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mozilla.com header.s=google header.b="eh8iJ/Pb";
       spf=pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=147j7b8y53k73hvNH7Q6fagTamCJ9OGdDaInnNEVges=;
        b=PKdcakDuw/IU26dKprvEZYitOKRcHJng3N7D8pZbtjR0NdPan2sNuG3Z4dWDtUG5Li
         W2/WVpgzrwf23/1s1e41peUIfr8V2bF6F36eohhYe/7orKcMR1HAys2AndgRlHsw+WOZ
         iHELfeh1zQDY8WCwhwP9Jj/9wE1JbGiXmBol74WkkBNaaPXGVYwGvZuCePqAHW1bdufO
         s8ZSz9ZMkABJoUtyGlES16QMus6hZrzN9k8cJs8nkMktN8dp7XrgTfka5aayaahT0Wm4
         K2nrUr2kHcBCN2RV6RpEeN1qRHXM7CwlvhgO/YdmQ82Vo0BQYy+Z0W6MmLFIHvUOy/mO
         bt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=147j7b8y53k73hvNH7Q6fagTamCJ9OGdDaInnNEVges=;
        b=kkmTHZyYB//4WaRz4013vBasjGblHSyHkiot0rPE8KySSyxxSjltY8pa5lH9pOgQ0f
         OLo3s9c48YTIrJDgR01CX6OjTOxsW5OwwEJpiWOJ2uFwLmI6ANc9IvECobc5PdnjvCiA
         0/MnRcL09qkpviw0UZW7IUgO/B45JrlM7d8K9YzHZqXjT/FDEYsdDZ1Ay2QzB5MJdBWS
         FpfKmfPYWAHYtO5xNgboGns/V6WhU+sqmwAxucPajaI5z4Tt1Oel6UZj27l6bD2I44DK
         mRZABamZ1ASUfN49FyG5OYsz6f/rURYqsUvG6Xh8fnK0JsQdQILpYEp8W1AWPXY7pTCi
         KRgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xbb3ciYuiRPaWIgQBLnVk0lHRMtzRKSLKkfh4bNOWUJ9DZWDJ
	uS56YkNHMlyLxAFru3XqnvE=
X-Google-Smtp-Source: ABdhPJx68S+HK8pqGMvclgRE+slMnIULufWl8YIMBKkXDO1u/kW0BDXshiq4+OdVRiwyJbj73mPCzw==
X-Received: by 2002:aa7:d61a:: with SMTP id c26mr4135944edr.303.1603486127418;
        Fri, 23 Oct 2020 13:48:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d3c:: with SMTP id dh28ls2996002edb.0.gmail; Fri,
 23 Oct 2020 13:48:46 -0700 (PDT)
X-Received: by 2002:aa7:d902:: with SMTP id a2mr4133652edr.107.1603486126544;
        Fri, 23 Oct 2020 13:48:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603486126; cv=none;
        d=google.com; s=arc-20160816;
        b=NQbqFpX7yYl/x+JxBndeqAu9fV6R3crvS31l9Wk6VlS5GfkNsgITGHseCqbRQz62jd
         lQkcnFATOR6K1gQ4ZF9P6Z7XHH3pvZSHHM7cLA5pEyHpDQbMRdNkaQP9GVfTCobefevB
         URHVIom0ss9v0Eq1/7BI7McQxJcW8s4xmxrvgb4JzYB+GHKz+ksJ4fVhH4bMgDCqSbfq
         rLyk5ONBusBglwiK7GAVKQNpfN30gk5LlETrZ3dxF1l34IXdn0C0rbbrcgSEh+BgVwxw
         F0ZQAGnLrlOE5tV/AkxMkwejFV58SBYmuahYKPjZNDXa2un44CD9SlOON5f8wPBR/jag
         MwXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=BZmx8LZOtfCT3BKWEyVQLOEhA3nj0o2agnPtCvZp4QE=;
        b=vnx1eEImI/81ovj4WGdshAI1cNDQ7WRSbLhZxlkoDB35puShTatpyh05m8EPj7w7T4
         OQiewS2mAIbJj5ZUHTEwiS29sgzORir6ODTZAX1jVJI26cHAVMWo4+xG16cXtMyjpXqy
         W9o+Z+5t5N/UdJvKDTfTmZEBmc6m9TXDDN8La1+qKQgh+v5kdVBLNOwvhJafUPW0CsB6
         S0n1+NVpks0DkO9SDSVT4SMrg0lvlLTgOnj/yNd4HLP56zOcgVIsFljQr7ZG1r53OKRM
         DWB9SrB2f0SMDFVKoExkORF2nRSlu1Ii/Z/yC0ZSw8x9ZfDBefjrpdhvjCaanl5gHwrw
         jY5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mozilla.com header.s=google header.b="eh8iJ/Pb";
       spf=pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id v18si96617edx.4.2020.10.23.13.48.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 13:48:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id b8so3753447wrn.0
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 13:48:46 -0700 (PDT)
X-Received: by 2002:a5d:4144:: with SMTP id c4mr4342456wrq.311.1603486125688;
        Fri, 23 Oct 2020 13:48:45 -0700 (PDT)
Received: from [192.168.86.224] ([88.126.111.87])
        by smtp.gmail.com with UTF8SMTPSA id i14sm5282707wml.24.2020.10.23.13.48.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 13:48:45 -0700 (PDT)
Subject: Re: clang-12 debian image
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
References: <CAKwvOdkJc5xp=k_gHNtoY4Es20vj557B4DCJ2Qinvx=ojkHPPQ@mail.gmail.com>
From: Sylvestre Ledru <sylvestre@mozilla.com>
Message-ID: <eb3142ad-61a8-8760-c808-58bdce0a6561@mozilla.com>
Date: Fri, 23 Oct 2020 22:48:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:82.0) Gecko/20100101
 Thunderbird/82.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkJc5xp=k_gHNtoY4Es20vj557B4DCJ2Qinvx=ojkHPPQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: fr
X-Original-Sender: sylvestre@mozilla.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mozilla.com header.s=google header.b="eh8iJ/Pb";       spf=pass
 (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::434
 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
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

Hello,

Le 23/10/2020 =C3=A0 20:27, Nick Desaulniers a =C3=A9crit=C2=A0:
> Hi Sylvestre,
> I noticed our CI has been red a few days in a row; I had reported an
> issue in upstream LLVM that got reverted, but I think our clang-12
> images stopped updating?
>
> Our latest CI run
> (https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs=
/404327921)
> show version:
> Ubuntu clang version
> 12.0.0-++20201018052613+ce619f645f5-1~exp1~20201018153253.195
>
> which looks like 2020 10 18, ~5 days ago.  From the thread with
> KernelCI folks, it looks like the problem there was with clang-11.  Is
> a similar issue affecting the clang-12 builds?

Yeah, it was broken because of a regression :

https://reviews.llvm.org/D88922#2331869

the revert of:
https://reviews.llvm.org/D89041
fixed the regression.

> Is there anything more we can be doing to help maintain these builds
> with you, beyond being a canary in the coal mine?

Having an official job with the same option could help.

Besides that, there isn't any magic, having help to monitor the jenkins=20
jobs and
fix issues (or fill bugs) is the way to go.

Cheers

S

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/eb3142ad-61a8-8760-c808-58bdce0a6561%40mozilla.com.
