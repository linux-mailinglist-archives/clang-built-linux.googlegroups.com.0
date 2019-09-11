Return-Path: <clang-built-linux+bncBC6MFNV32EFRBO5I4PVQKGQEAOZD3CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 54020AFB07
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 13:02:19 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id s24sf12366659edx.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 04:02:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568199739; cv=pass;
        d=google.com; s=arc-20160816;
        b=KQCRJnOwDflRIGx6SpAtL9xUUwau+Epr+4vy11SrQZ8uhnKmdtR0+smAAKQYvUQjBB
         LO9YCEzU2Q614js9d4m2vY61zXnXeCT8+Jh6iRNp3too65ujHqmGQUhiVF1gWzxgH5mA
         fHCxn8tYr84zwHnpplmRbGMYC1sBCYJw0n/EIojClhbsHSsErd3X0tCCiRxoYaor778F
         H5aI0qLfNVg4BX6C7DDFhAT+evcetmEJV5IQjjdFGi6TLY1Jjkp1xnaxMqz846MQWcDi
         O3TLn1zXReyYpmfILbmSHWZHn89m+cYGaib/Ix01/PZfFgEvFrTcwGQDMHG7K5OCOGnq
         QuHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:to:subject:sender:dkim-signature;
        bh=6S69PwRtZGVcB1GHfbryFoHLb64yxt1Pnc/8bNRUwIs=;
        b=FtZkD43jMHTI4SWvWzRtApyKURnEAcCgPk58ZKPs7bvNG+9JBXIeK3A6cVZNGlymin
         XpkXeFPf+Ve4T3vQhBoblTDRHO+FmfgyAn3iw+7kiqq3RrYTMD4CjcNHJozfmZzmwvf+
         eA+E/UsEHX7JX00XN4mhmPRQUZ2v9n4MMKyLERnP+74J6fqaqZfKE4jWLafbqAm4Q3TH
         aDlY8IIvZmludT5iYWp7+ZaMogE/6p8NY6o/JWSE5EIOq4S6H4vKt12L5CJCOpX1H7Qz
         QoT3DUnKz4rU80t6lTZ5GrNitMLNE1w7kpBRQ3QTytRWCd16ZdXYyRM4eAZ+8tKKuX8w
         C9gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b=Ob2WcKnD;
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6S69PwRtZGVcB1GHfbryFoHLb64yxt1Pnc/8bNRUwIs=;
        b=a2V/COlz3s5RCLNbTJTNdPWkIS/qZ8gVcNuFDDBQz7xMj7/upHybN+cmAkGHG+su3G
         ddqeyTIRnT42O5vVxJQWIE8Y/gKyygzvbieLlQjze9zvRjhNUCC7J+CuB2w6aKFNJe9M
         vKS87a5/Ul1lEXc6ed87FNVrgRJ+R3hMIrz437RUr4KGAcQw0tSftMyR0Y7oS6AvWpwr
         25xF1Ehapid9mYGpuKU4YzotzOK81vmMwLmS6zr/fY5nWhrbTg0OY+OdjrLfDKXly2zo
         KVAg1QHgHQ/nM20iNVhqaMmlXWoWLHrp7Rpro6tyoONmAPFa5gG1gDE/NjmKwPOYqfqO
         W54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6S69PwRtZGVcB1GHfbryFoHLb64yxt1Pnc/8bNRUwIs=;
        b=Hn6j+NVttHdtpEeFU1GYqV90G0F7XSEWcQgSyJ0pmUrKobd4YWRF/6oWudyg7LNhQG
         eGVykFQcLbaya01pReprxouGfPzqRpYIf2WLQyYAC9zYeKTHGGNuIPye85wigrwJqsR7
         ihJl9otUBP9dsfMFJeMhg1Dsl0aT5AaYaFnRzwA7AKtpw/YAiuGPb4TR8+wQzAO0g/sS
         ZvmlKeqcZkWPtB84F6wNDoSgv1QHd+0pOHY2OOspQyJSOguatgmdyJ0EkiPzhCBdc4lu
         +EpFyMfzkQlofvjBvrTj24UdQSyOEfBGa8cfH5mYcYuoPl6HftWvjN0BOrOEJ6eqlG0i
         XTrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWv2pKQ4vjH3PoNdjSy7xg/2AKH2ZrznNMsz5dFvRwwOAOKTouz
	NFRzUejImTuzqsMeI1sdwEw=
X-Google-Smtp-Source: APXvYqwE/ROVGrOjdfXceB1ucLpgkI9oXgFrdy3WUgllXXjVwRIg2+8uEtgysS03bZsbrJHlCzQ2zQ==
X-Received: by 2002:a17:906:e2c4:: with SMTP id gr4mr28509399ejb.25.1568199739062;
        Wed, 11 Sep 2019 04:02:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:cfc7:: with SMTP id r7ls5482940edy.10.gmail; Wed, 11 Sep
 2019 04:02:18 -0700 (PDT)
X-Received: by 2002:aa7:c542:: with SMTP id s2mr36141544edr.32.1568199738695;
        Wed, 11 Sep 2019 04:02:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568199738; cv=none;
        d=google.com; s=arc-20160816;
        b=mNH8qURyKx+xeZ9WDvwe0xExrRWblyJj8WAer5iTf3Vc57HkX+pU6MGFHtBFTVZcPj
         LGzG1QY+47i4nAXWaUg5i0BWw0M9uYgXjMLa0CSq44XIM6y3UKr67v/sWyblzLp2q9It
         QI7RbKj+DlpBXcr+lhoUKtQn5IEzBYO+VN+NGXnd6sw56i1698/CsFl0x4jyr9zLJ8+d
         +Uar+fWz5uRnkCORXQyJcNYAUBFGjhWHQihELmgoEFDYfzbUKX9388he1TlqvIkt+vXL
         3q5VLamn2KMrYWu8PmgiRd2fesaQu6co0jSylxPy0lztQi04FSUbrG/39gugAyn1QCbz
         bE0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=UnTxdulsUUoW4MpbjOz0YKEvbNh2+pBrrEt0pc1iTEY=;
        b=rgqy8LTlNY4YiNIcGXdC2WIV0Vew0/Pyo7M4c3j8uoRzWxMO4KryBdFU85nlDMDD1y
         bqcafgOt1j53F8n+he60rz2TbewYcovnU6TBiJK3wrQ5PuhjmBiceS5Os7/tPosgWDTu
         l4T2U5ST9nNwunvvHz5zjjG7aULOPVmNSR6W+SMhfFLaZlvpnGQ+70DyPiTivoVUeG41
         q16IfoiYpYymq1+isBGwXP/2G5xZrgsQpUcG88bjba4pvXLJoV5OWgbLyosaRJQJ/2nI
         KWdDy13Rb6gkC8ER0WHJgWU3U/w5yJ+Oy6PVXBBx+2HwJS2wp8t9aqMXRfg4q399HFrL
         oiGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b=Ob2WcKnD;
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id ch16si1505286ejb.1.2019.09.11.04.02.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 04:02:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id l20so19574754ljj.3
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 04:02:18 -0700 (PDT)
X-Received: by 2002:a2e:a303:: with SMTP id l3mr22113052lje.124.1568199738009;
        Wed, 11 Sep 2019 04:02:18 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:8e6:86de:79c0:860e:c175:7d39? ([2a00:1fa0:8e6:86de:79c0:860e:c175:7d39])
        by smtp.gmail.com with ESMTPSA id b9sm4570882ljd.52.2019.09.11.04.02.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Sep 2019 04:02:17 -0700 (PDT)
Subject: Re: [PATCH bpf-next 01/11] samples: bpf: makefile: fix HDR_PROBE
 "echo"
To: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
 jakub.kicinski@netronome.com, hawk@kernel.org, john.fastabend@gmail.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-2-ivan.khoronzhuk@linaro.org>
 <55803f7e-a971-d71a-fcc2-76ae1cf813bf@cogentembedded.com>
 <20190910145359.GD3053@khorivan>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <4251fe86-ccc7-f1ce-e954-2d488d2a95a9@cogentembedded.com>
Date: Wed, 11 Sep 2019 14:02:11 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190910145359.GD3053@khorivan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sergei.shtylyov@cogentembedded.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623
 header.b=Ob2WcKnD;       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com
 designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
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

On 10.09.2019 17:54, Ivan Khoronzhuk wrote:

>> Hello!
>>
>> On 10.09.2019 13:38, Ivan Khoronzhuk wrote:
>>
>>> echo should be replaced on echo -e to handle \n correctly, but instead,
>>
>> =C2=A0s/on/with/?
> s/echo/printf/ instead of s/echo/echo -e/

    I only pointed that 'on' is incorrect there. You replace something /wit=
h/=20
something other...

>=20
> printf looks better.
>=20
>>
>>> replace it on printf as some systems can't handle echo -e.
>>
>> =C2=A0 Likewise?

    Same grammatical mistake.

> I can guess its Mac vs Linux, but it does mean nothing if it's defined as
> implementation dependent, can be any.
 >
>>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> [...]

MBR, Sergei

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4251fe86-ccc7-f1ce-e954-2d488d2a95a9%40cogentembedded.com=
.
