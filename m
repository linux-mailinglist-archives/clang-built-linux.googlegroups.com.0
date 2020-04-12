Return-Path: <clang-built-linux+bncBDTLP5F6X4ERBBEHZT2AKGQEVNI4G3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD421A5E6F
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 14:03:16 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id c129sf1954745wme.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 05:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586692996; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZoFA7pxGbIrnJuVfikBf4RFw2GXZv+8Kn34oruP8k4xRsUtHuYpTXS/AKd91s8Rlk
         ZivABbd87IUlpYwAGi10TZtODLAicRRR6pOpd7Y7//kVPtDZoCmC3GD/0s1ou59rIA5Y
         UiO5ofP9YbRG0xnkiWf0l1hZL8B2ELJo5MqK3AIddz1+sVvmgf0769NKG1dDpIf5SvyM
         e9RcLnr+8Tva5VSuFbXLn6if+O+M8ujm/NI1WGzrmW7B5zaQ5I/CnIIzf6XTIzpBxhye
         i2niRP3Fgu/HdgxLXx4+p5kdXhWVng4cLltcy1Wz9hNbGggSChA0Q0/1Ta3h8eVjr7jf
         91xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=JtMzehSE2ss1epk1wdBdAqvpyTPZMAuijlOatjeJiH8=;
        b=tk0ZAvP+O1aAIqk13uFB7d5CEjj9ZDaSahjlLPUFHRWQ+wzeZG1pHnSkK7JgX/N48s
         PW+kVZSBlMa/ZvZg5ms2wrqF6TIQ+nZVYcMEmiHTzxHDM04etoRH0HpyFh5BQqP6YB70
         f9OE2eAlaOZkMZG7DXCuw2QtGfZ3xqNbYICrRDdrtUKEZSH7Iow6eVntxe5y0kl2BTFa
         lI0GEUYRTbV8A2xmW+WLWf+nK8na9Z97d/Cr4rTBvAbfayJeQzT9bu3/3dyx17GXn/Be
         tHnKUF9wMr0uT556eW2PgLcHAIF2HazAwNoLomPqVI0MylD1z+0DRG9JxThDXaY3XT4Z
         YThw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of clg@kaod.org designates 46.105.72.216 as permitted sender) smtp.mailfrom=clg@kaod.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JtMzehSE2ss1epk1wdBdAqvpyTPZMAuijlOatjeJiH8=;
        b=YqgyO5cTipLETVYEnz174mNHyemwzaR0lg13SQqPBg8kEqvYV6Up9Lm+R+CPF6sXQM
         UEwH2KAO4jX+R1ATQ6K0Oz69bSkNQ9VES+8ifQ50Y4HG2I9vPl+kyncxVkBx5jxsOLxq
         pF2RonHgBOjPXwx9XBObmJ68UE1DSqwEHRIzI3EQJR3BKOPCTECQEEyIuQZSTGq9edqv
         pPPlySfNURXv2vvpGKITcQqCTqc2pT9Jg5pz1MsierZuOT5vCgpgk/XFon/kLgi1HT01
         u47dSC8tSHLEJOcynSW/BFuadXrtrh9zYxdUeKhI8/Gm4cM6KwjL4ewUGUqJJ6qbIiJ/
         cRYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JtMzehSE2ss1epk1wdBdAqvpyTPZMAuijlOatjeJiH8=;
        b=bjL1aB8Dl2lJOMLpMvy8i5Rlf1XaFhYYpgxFoNjOWjKuSzuXMD+hr33ibgflXyRZlg
         pZmBjwcKHuutWQ1sFsOkLEAXMQXb8zcNunWMNOOmM6rnCcoQ/bXy2CmnqdlJgusl55E8
         X6Kw86tRPG7+e6UqUboGHPMWaZ9Iv2hG8PESIH1V51SbJeX7qmQFjP6JEVSa1utvfI0F
         n8b1nIk+5+VaAzEaCPP1EVSJNiFFT6AMjyZjNe2iKeF8f1Sgt+rWc0wQfi919zRUTqGV
         tY1wEhd8mpBYuIZ0iAE5pkEK/uv1/bK+vINTYWjCbkHajZMdO3ZSqfLU7S4PStw6GRsJ
         9VaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubKAGy//6f7jZIRVuVJsjwAB7sVmcppF+kMFxZO730JOg8alMpR
	+r5Q1c9G9MoI+lLxRPOSeCg=
X-Google-Smtp-Source: APiQypJttyGsvapoCuBJazcY76haOc2aimgv8mNm86YiWwu0nNyuWKGmBR5A4dT8ZQyaKTyvdZpADA==
X-Received: by 2002:adf:b189:: with SMTP id q9mr13510476wra.373.1586692996151;
        Sun, 12 Apr 2020 05:03:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ec10:: with SMTP id x16ls15076958wrn.10.gmail; Sun, 12
 Apr 2020 05:03:15 -0700 (PDT)
X-Received: by 2002:adf:e84e:: with SMTP id d14mr12086643wrn.67.1586692995577;
        Sun, 12 Apr 2020 05:03:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586692995; cv=none;
        d=google.com; s=arc-20160816;
        b=jzG04Q8tAotomSBlJLzUQyvQka9QuTS1anrz7HIU112aIU6B0ZxJtSE0rsyh8zwMm7
         hpe17bTp87QESNHMeiPLP3S1Hux+J5Px58WiiPHvIUIYso/s2XqyvVm1la14qqF3m/hi
         /rR/zC2nP1+RYrbVaE+FCc3u7qq6XbhDlS7mbwnBKuY0LUzcH2S5abnATrNBruPrOznV
         Q8Wv/4/2iFRKR7dTF9FRiBeIeedHZ4TqPAMgxX8ZNzL0vIfqRbGiDHefNyp5SQ2eGMfx
         GAnNRpoEPvQ+Jc7y+ZQkkElfwRploKuOSIshZWKSOw3zUvsvZlXGDbYq4JHBw23Wp9kX
         /VTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=UE0tYF8j5ICZVrEV/Y5whGfeFLA22iGyHOtEPEgsKBI=;
        b=pUokI3S5tFtgb5hgilVSh8JmaBezUnPNxG/JXn5OHcpee5ir6/CSz6vKNa9uUgChON
         sgFTLfUHMDm4fjaf5bxo8e8oZta7CVnChss+NmjTCHOOH43tfpYSfVk0O75qTOjhnANG
         469V+4Ozo8lXJSxiiZeKsBlHIH6a4FEG79wbNPvHOz39Kq2Qzmx/S3QqVPN4MgWvtJ/G
         R7C+4hJQ2TEpcxglIUY4USTNJfHNTYQshto4C9k2nmeumD911rJzS1olyAD+9csNdsZQ
         x0EgdD9FPV2XuE42JZ1U4DNcS0F2eXb582zq9NBdz393vB3zBYZsKhQPHQ3xbBhGy0dd
         bYBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of clg@kaod.org designates 46.105.72.216 as permitted sender) smtp.mailfrom=clg@kaod.org
Received: from 16.mo7.mail-out.ovh.net (16.mo7.mail-out.ovh.net. [46.105.72.216])
        by gmr-mx.google.com with ESMTPS id o125si596705wme.4.2020.04.12.05.03.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Apr 2020 05:03:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of clg@kaod.org designates 46.105.72.216 as permitted sender) client-ip=46.105.72.216;
Received: from player687.ha.ovh.net (unknown [10.108.54.156])
	by mo7.mail-out.ovh.net (Postfix) with ESMTP id 258EF15E273
	for <clang-built-linux@googlegroups.com>; Sun, 12 Apr 2020 14:03:15 +0200 (CEST)
Received: from kaod.org (82-64-250-170.subs.proxad.net [82.64.250.170])
	(Authenticated sender: clg@kaod.org)
	by player687.ha.ovh.net (Postfix) with ESMTPSA id 9CC5A114BACC1;
	Sun, 12 Apr 2020 12:03:01 +0000 (UTC)
Subject: Re: Boot flakiness with QEMU 3.1.0 and Clang built kernels
To: Nicholas Piggin <npiggin@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Cc: qemu-devel@nongnu.org, clang-built-linux@googlegroups.com,
 qemu-ppc@nongnu.org, linuxppc-dev@lists.ozlabs.org,
 David Gibson <david@gibson.dropbear.id.au>,
 Anton Blanchard <anton@ozlabs.org>, Michael Neuling <mikey@neuling.org>
References: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
 <1586564375.zt8lm9finh.astroid@bobo.none>
 <20200411005354.GA24145@ubuntu-s3-xlarge-x86>
 <1586597161.xyshvdbjo6.astroid@bobo.none>
 <1586612535.6kk4az03np.astroid@bobo.none>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <d405d8be-93a5-e68c-9ebe-ef42b0f5e87a@kaod.org>
Date: Sun, 12 Apr 2020 14:03:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1586612535.6kk4az03np.astroid@bobo.none>
Content-Type: multipart/mixed;
 boundary="------------B729630F00F9E16D7736EACA"
Content-Language: en-US
X-Ovh-Tracer-Id: 252764531685428071
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrvdejgdegkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgesmhdtreertdefjeenucfhrhhomhepveorughrihgtpgfnvggpifhorghtvghruceotghlgheskhgrohgurdhorhhgqeenucfkpheptddrtddrtddrtddpkedvrdeigedrvdehtddrudejtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheikeejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhrtghpthhtoheptghlrghnghdqsghuihhlthdqlhhinhhugiesghhoohhglhgvghhrohhuphhsrdgtohhm
X-Original-Sender: clg@kaod.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of clg@kaod.org designates 46.105.72.216 as permitted
 sender) smtp.mailfrom=clg@kaod.org
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

This is a multi-part message in MIME format.
--------------B729630F00F9E16D7736EACA
Content-Type: text/plain; charset="UTF-8"

On 4/11/20 3:57 PM, Nicholas Piggin wrote:
> Nicholas Piggin's on April 11, 2020 7:32 pm:
>> Nathan Chancellor's on April 11, 2020 10:53 am:
>>> The tt.config values are needed to reproduce but I did not verify that
>>> ONLY tt.config was needed. Other than that, no, we are just building
>>> either pseries_defconfig or powernv_defconfig with those configs and
>>> letting it boot up with a simple initramfs, which prints the version
>>> string then shuts the machine down.
>>>
>>> Let me know if you need any more information, cheers!
>>
>> Okay I can reproduce it. Sometimes it eventually recovers after a long
>> pause, and some keyboard input often helps it along. So that seems like 
>> it might be a lost interrupt.
>>
>> POWER8 vs POWER9 might just be a timing thing if P9 is still hanging
>> sometimes. I wasn't able to reproduce it with defconfig+tt.config, I
>> needed your other config with various other debug options.
>>
>> Thanks for the very good report. I'll let you know what I find.
> 
> It looks like a qemu bug. Booting with '-d int' shows the decrementer 
> simply stops firing at the point of the hang, even though MSR[EE]=1 and 
> the DEC register is wrapping. Linux appears to be doing the right thing 
> as far as I can tell (not losing interrupts).
> 
> This qemu patch fixes the boot hang for me. I don't know that qemu 
> really has the right idea of "context synchronizing" as defined in the
> powerpc architecture -- mtmsrd L=1 is not context synchronizing but that
> does not mean it can avoid looking at exceptions until the next such
> event. It looks like the decrementer exception goes high but the
> execution of mtmsrd L=1 is ignoring it.
> 
> Prior to the Linux patch 3282a3da25b you bisected to, interrupt replay
> code would return with an 'rfi' instruction as part of interrupt return,
> which probably helped to get things moving along a bit. However it would
> not be foolproof, and Cedric did say he encountered some mysterious
> lockups under load with qemu powernv before that patch was merged, so
> maybe it's the same issue?

Nope :/ but this is a fix for an important problem reported by Anton in 
November. Attached is the test case.  

Thanks,

C. 


 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d405d8be-93a5-e68c-9ebe-ef42b0f5e87a%40kaod.org.

--------------B729630F00F9E16D7736EACA
Content-Type: text/plain; charset=UTF-8;
 name="test.S"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="test.S"

LyoKCk1pa2V5IGFuZCBJIG5vdGljZWQgdGhhdCB0aGUgZGVjcmVtZW50ZXIgaXNuJ3QgZmly
aW5nIHdoZW4KaXQgc2hvdWxkLiBJZiBhIGRlY3JlbWVudGVyIGlzIHBlbmRpbmcgYW5kIGFu
IG10bXNyZChNU1JfRUUpIGlzCmV4ZWN1dGVkIHRoZW4gd2Ugc2hvdWxkIHRha2UgdGhlIGRl
Y3JlbWVudGVyIGV4Y2VwdGlvbi4gRnJvbSB0aGUgUFBDIEFTOgoKICBJZiBNU1IgRUUgPSAw
IGFuZCBhbiBFeHRlcm5hbCwgRGVjcmVtZW50ZXIsIG9yIFBlci0KICBmb3JtYW5jZSBNb25p
dG9yIGV4Y2VwdGlvbiBpcyBwZW5kaW5nLCBleGVjdXRpbmcKICBhbiBtdG1zcmQgaW5zdHJ1
Y3Rpb24gdGhhdCBzZXRzIE1TUiBFRSB0byAxIHdpbGwKICBjYXVzZSB0aGUgaW50ZXJydXB0
IHRvIG9jY3VyIGJlZm9yZSB0aGUgbmV4dCBpbnN0cnVjLQogIHRpb24gaXMgZXhlY3V0ZWQs
IGlmIG5vIGhpZ2hlciBwcmlvcml0eSBleGNlcHRpb24KICBleGlzdHMKCkEgdGVzdCBjYXNl
IGlzIGJlbG93LiByMzEgaXMgaW5jcmVtZW50ZWQgZm9yIGV2ZXJ5IGRlY3JlbWVudGVyCmV4
Y2VwdGlvbi4KCnBvd2VycGM2NGxlLWxpbnV4LWdjYyAtYyB0ZXN0LlMKcG93ZXJwYzY0bGUt
bGludXgtbGQgLVR0ZXh0PTB4MCAtbyB0ZXN0LmVsZiB0ZXN0Lm8KcG93ZXJwYzY0bGUtbGlu
dXgtb2JqY29weSAtTyBiaW5hcnkgdGVzdC5lbGYgdGVzdC5iaW4KCnFlbXUtc3lzdGVtLXBw
YzY0IC1NIHBvd2VybnYgLWNwdSBQT1dFUjkgLW5vZ3JhcGhpYyAtYmlvcyB0ZXN0LmJpbgoK
ImluZm8gcmVnaXN0ZXJzIiBzaG93cyBpdCBsb29waW5nIGluIHRoZSBsb3dlciBsb29wLCBp
ZSB0aGUKZGVjcmVtZW50ZXIgZXhjZXB0aW9uIHdhcyBuZXZlciB0YWtlbi4KCnIzMSBuZXZl
ciBtb3Zlcy4gSWYgSSBidWlsZCB3aXRoOgoKcG93ZXJwYzY0bGUtbGludXgtZ2NjIC1ERklY
X0JST0tFTiAtYyB0ZXN0LlMKCkkgc2VlIHIzMSBtb3ZlLgoKKi8KCiNpbmNsdWRlIDxwcGMt
YXNtLmg+CgovKiBMb2FkIGFuIGltbWVkaWF0ZSA2NC1iaXQgdmFsdWUgaW50byBhIHJlZ2lz
dGVyICovCiNkZWZpbmUgTE9BRF9JTU02NChyLCBlKQkJCVwKCWxpcwlyLChlKUBoaWdoZXN0
OwkJCVwKCW9yaQlyLHIsKGUpQGhpZ2hlcjsJCQlcCglybGRpY3IJcixyLCAzMiwgMzE7CQkJ
XAoJb3JpcwlyLHIsIChlKUBoOwkJCVwKCW9yaQlyLHIsIChlKUBsOwoKI2RlZmluZSBGSVhV
UF9FTkRJQU4JCQkJCQkgICBcCgl0ZGkgICAwLDAsMHg0ODsJICAvKiBSZXZlcnNlIGVuZGlh
biBvZiBiIC4gKyA4CQkqLyBcCgliICAgICAxOTFmOwkgIC8qIFNraXAgdHJhbXBvbGluZSBp
ZiBlbmRpYW4gaXMgZ29vZAkqLyBcCgkubG9uZyAweGE2MDA2MDdkOyAvKiBtZm1zciByMTEJ
CQkJKi8gXAoJLmxvbmcgMHgwMTAwNmI2OTsgLyogeG9yaSByMTEscjExLDEJCQkqLyBcCgku
bG9uZyAweDA1MDA5ZjQyOyAvKiBiY2wgMjAsMzEsJCs0CQkJKi8gXAoJLmxvbmcgMHhhNjAy
NDg3ZDsgLyogbWZsciByMTAJCQkJKi8gXAoJLmxvbmcgMHgxNDAwNGEzOTsgLyogYWRkaSBy
MTAscjEwLDIwCQkJKi8gXAoJLmxvbmcgMHhhNjRiNWE3ZDsgLyogbXRoc3JyMCByMTAJCQkq
LyBcCgkubG9uZyAweGE2NGI3YjdkOyAvKiBtdGhzcnIxIHIxMQkJCSovIFwKCS5sb25nIDB4
MjQwMjAwNGM7IC8qIGhyZmlkCQkJCSovIFwKMTkxOgoKCS49IDB4MAouZ2xvYmwgX3N0YXJ0
Cl9zdGFydDoKCWIJMWYKCgkuPSAweDEwCglGSVhVUF9FTkRJQU4KCWIJMWYKCgkuPSAweDEw
MAoxOgoJRklYVVBfRU5ESUFOCgliCV9faW5pdGlhbGl6ZQoKI2RlZmluZSBFWENFUFRJT04o
bnIpCQlcCgkuPSBucgkJCTtcCgliCS4KCgkvKiBNb3JlIGV4Y2VwdGlvbiBzdHVicyAqLwoJ
RVhDRVBUSU9OKDB4MzAwKQoJRVhDRVBUSU9OKDB4MzgwKQoJRVhDRVBUSU9OKDB4NDAwKQoJ
RVhDRVBUSU9OKDB4NDgwKQoJRVhDRVBUSU9OKDB4NTAwKQoJRVhDRVBUSU9OKDB4NjAwKQoJ
RVhDRVBUSU9OKDB4NzAwKQoJRVhDRVBUSU9OKDB4ODAwKQoKCS49IDB4OTAwCglMT0FEX0lN
TTY0KHIwLCAweDEwMDAwMDApCgltdGRlYwlyMAoJYWRkaQlyMzEscjMxLDEKCXJmaWQKCglF
WENFUFRJT04oMHg5ODApCglFWENFUFRJT04oMHhhMDApCglFWENFUFRJT04oMHhiMDApCglF
WENFUFRJT04oMHhjMDApCglFWENFUFRJT04oMHhkMDApCglFWENFUFRJT04oMHhlMDApCglF
WENFUFRJT04oMHhlMjApCglFWENFUFRJT04oMHhlNDApCglFWENFUFRJT04oMHhlNjApCglF
WENFUFRJT04oMHhlODApCglFWENFUFRJT04oMHhmMDApCglFWENFUFRJT04oMHhmMjApCglF
WENFUFRJT04oMHhmNDApCglFWENFUFRJT04oMHhmNjApCglFWENFUFRJT04oMHhmODApCglF
WENFUFRJT04oMHgxMDAwKQoJRVhDRVBUSU9OKDB4MTEwMCkKCUVYQ0VQVElPTigweDEyMDAp
CglFWENFUFRJT04oMHgxMzAwKQoJRVhDRVBUSU9OKDB4MTQwMCkKCUVYQ0VQVElPTigweDE1
MDApCglFWENFUFRJT04oMHgxNjAwKQoKX19pbml0aWFsaXplOgoJLyogU0YsIEhWLCBFRSwg
UkksIExFICovCglMT0FEX0lNTTY0KHIwLCAweDkwMDAwMDAwMDAwMDgwMDMpCgltdG1zcmQJ
cjAKCQoJLyogSElEMDogSElMRSAqLwoJTE9BRF9JTU02NChyMCwgMHg4MDAwMDAwMDAwMDAw
MDApCgltdHNwcgkweDNmMCxyMAoKCUxPQURfSU1NNjQocjAsIDB4MTAwMDAwMCkKCW10ZGVj
IHIwCgoxOglMT0FEX0lNTTY0KHIzMCwweDgwMDApCgltdG1zcmQJcjMwLDEKCgkvKiBXZSBz
aG91bGQgdGFrZSB0aGUgZGVjcmVtZW50ZXIgaGVyZSAqLwojaWZkZWYgRklYX0JST0tFTgoJ
TE9BRF9JTU02NChyMjksMHgxMDAwMDAwMDApCgltdGN0cglyMjkKMjoJYmRuegkyYgojZW5k
aWYKCglsaQlyMzAsMHgwCgltdG1zcmQJcjMwLDEKCWIJMWIK
--------------B729630F00F9E16D7736EACA--
