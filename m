Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR4ETHZAKGQE2YEYKIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 513A715D25A
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:46:32 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id i11sf5480011qki.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 22:46:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581662791; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nv8lUS/vdYQaf0Ey4gpHD2zIHskhDjhqROTG68SosB5UvueXLDs62y7woVhPb0lmLx
         AZWwtIGPqsw7TV4sIyyGI1T1aMUsuamg2GfpG3s77272W3z3b+FjltYwb5EYRRAYF6fI
         oFhVf0mYkKsvQF9WhaxVH+y3CRribvECL2Ekzio8se88Qox9O3QDW2MempK701UC5vHW
         0a5YtFM6CansyolsUgBlRhpQELZlykbcUNuvC/ve8TCwVrNNdia5aHDytiDw01BUZWzb
         0mdWBglxCau7XvXH6u9L607y4auwLZkRc6n29ET+K5yxreT7V7wD+DMXTvRpnbauNKPy
         2aCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=EKZyc9G72Dhxaw/ps9MSqm4tv3b2Y1HKb5kUmWE0pHE=;
        b=V1kaWB6HeAC04AYPCpSTyBt7D5zaHzu7rPGn4w7D3deqxUYo1guCeuJURrkVLewH59
         oA6stw/OXzpNVV2283eh4XEZ1N4JqoTZN5eI2xZ/rQh2plV+MV0Y59eguVGKazmjWJXn
         9/WWTAEzmG+7GUKUgkOIygqWovU8n0l1FXhi4SIpai24bBXYr+P1lZlQiK4Huiybsl7s
         /V7uqy5xigvH20jRvPrxhsCp8HKXdOXw3i/AnVoGYBjRRgQVviGtThRW3kb8JEpBenbY
         4raOLdOHLxiV01bIv/frP1Crp0312DhkOp0eqNDwfGuWv4o3Sto2rQfQPOerkRPKEf1+
         RcxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ttCnz5S7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EKZyc9G72Dhxaw/ps9MSqm4tv3b2Y1HKb5kUmWE0pHE=;
        b=n502+B5BghMd1ZNUpSj4dOQpxMb4v7TfhdPxPAiFMNMYHF0Hpv7jrMRc9WXZINEdy4
         OYYVQc9lNbHqBIe6ZWlMKE3orSClSTCxV4+R0dwsHN1uuItS0piMrZYwYx9ysrzLwr9X
         2WREgCrBOll8FLr8KwaWpNzJq4Uv6huTvdPnoyBFEALRqX5dMyiBbVGiMzFOAUdKOV0X
         tCn3YcgmA0UEX4LjQIrWTahdfC3B4Ovb6mrAqwTT0Moq4c6C0yUpUk/dqKS/KINTwnRv
         4v3VMo8w139YGys4tmS9yo/Adf/FqDTeZzEKlcO4TsBihyQ+UrYtoQK5AEtfhKoUNHZE
         qFRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EKZyc9G72Dhxaw/ps9MSqm4tv3b2Y1HKb5kUmWE0pHE=;
        b=UIABAyPfqGlXpkFtu0JMlxPmFe8ZblJwBzYpfQJbOv8Z8+aqSJMBMu+xWDCeF9dlhD
         irmKqImRRhAPwYoeJ2C+ulgeVrp33Hk1qh0aXq3SxBfGYUo6KlQVNl1qfOEP6WQHuifO
         O5+FeKmGuS38+2+RfKvryVwt3yfSLEMN9hVxQnCe9+IvjWrAvx9ima6zZCNBNW4csA6L
         cp9PJMB+U8P9bc9G5TJFoC9tM5uPhIdtmEIRdjSq1NOm9ccH2yELivUR7K6P6Nzzb7H/
         Gd9UGMOpTdMC8TOluZAf1e5wugfT3VxBsn7rWS7OWs7hDETytHu1FnTaL/+GDafy3ia0
         ASRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EKZyc9G72Dhxaw/ps9MSqm4tv3b2Y1HKb5kUmWE0pHE=;
        b=m3+45nhMV1qiuxtmrTWevCrlzDOPBW+7lq6mJ89L9+YXJnXf4LT+3ExI7efYOovjzZ
         /WRa5I48TdxCiY44LYSt04kkdBMF7mfOQfzc5Bqk0jEwT57H8lDVJImWAo8dqdbKQnky
         F3tAh7lpHEdHIOJI30HuhnC1P7fvCbeilpMWnrAuuip8PF5/9hfnL2L/ANQDylC5uSTi
         2rE75jI/fdvJuPRX6b1g5gwiupMZ2I1+oD5tBhSksaY0AXvECaoqKBsFiCd3bWp00R3P
         jrZe08S5lNXfL+rc7XOXnnz3Ji03qJiARMoOL85Nxf/OXuPEAiu4YQxyhoDeTTLKUESs
         EaQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYNCLJOA0iCUh9Z0PPZIMXgyGb60M2myEgWTvJ96AaqReKnf+o
	qv4WCOVvh0Yv6bSkRYPVFqU=
X-Google-Smtp-Source: APXvYqymjyemVqUfkqLw7E0IIeo4ExiF3kyrdFX35z1gGjm+zrHKw8s2eA587u/11k9ISI1DgWs8MA==
X-Received: by 2002:ae9:c318:: with SMTP id n24mr1235309qkg.38.1581662791207;
        Thu, 13 Feb 2020 22:46:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:321:: with SMTP id j1ls194905qvu.6.gmail; Thu, 13
 Feb 2020 22:46:30 -0800 (PST)
X-Received: by 2002:ad4:4e24:: with SMTP id dm4mr933989qvb.170.1581662790920;
        Thu, 13 Feb 2020 22:46:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581662790; cv=none;
        d=google.com; s=arc-20160816;
        b=RdMGScRs/hfpRPd8c/TC3IprYwVveamJEUOxZETE8oPXQfs5Mxq0zhNPvkDNEtZJkz
         bTevQ4RlepBJ/cfQN74nZD5ZoBltztdfkoYmFW+uhHZOAo5i5ojky7Rw8V3wy+tiQzcj
         9AIqkNWdvwj6iTOtO5z38SBcJGfljV5RscHBv0zDTjKkz8X5Wf+agMJg1XbRh6yd0Acu
         gLRAGTqdg3Yxe6d+8xB+8acb34dPiZLwkDFqUp0r8kgeFfQolwxekJvY2IcWIpD6pfkF
         I6snwDdt7wFCjTht46Oy0u/nDE92gf4q+FJIYeq9dlR8zQFPzpoASMD0qXTLTPxtlKSt
         G6VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RKB2u4zCoEkjwdZrkIjqRIz/kGGuU98/UeeGnME5DaU=;
        b=Tu/2Y/9psvR/vNLbBnRRtrtGCzC+m2cGXF4VEg2YElpuOERKs7uwjtn+w//hnBpFwm
         0nupUjjzmhPwkU60sO8SCgWPBds0gK1lYAhjSP6TJxaeGreJZEkwOO75mq6K8YD881lz
         OjRNX1NvUmcYrKDEb1a29b0dZ1OdMpBibk7slMHPcZqtSISsEKgz9RxQw8MIIDtONSA3
         p6QJcqzPqtLIBtYLTVBUspfkP5420gIviaxScsWijy3cs3OV/Z46J2+VHmjh8DAUgCG5
         1ZiOhxcUNS8V6mbda4c5E827eyRFMzksThBGtSR3ZE20BleRXfuJYvHBgx1lhnn8aEfn
         MZtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ttCnz5S7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id e26si308109qka.2.2020.02.13.22.46.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 22:46:30 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id l2so1972097otp.4
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 22:46:30 -0800 (PST)
X-Received: by 2002:a9d:6f85:: with SMTP id h5mr1082932otq.19.1581662790329;
        Thu, 13 Feb 2020 22:46:30 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r2sm1676849otk.22.2020.02.13.22.46.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Feb 2020 22:46:29 -0800 (PST)
Date: Thu, 13 Feb 2020 23:46:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] s390/kaslr: Fix casts in get_random
Message-ID: <20200214064628.GA14336@ubuntu-m2-xlarge-x86>
References: <20200208141052.48476-1-natechancellor@gmail.com>
 <ba371a74412c07c30eeb26fa25c94c25468599a9.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ba371a74412c07c30eeb26fa25c94c25468599a9.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ttCnz5S7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Feb 08, 2020 at 12:17:20PM -0800, Joe Perches wrote:
> On Sat, 2020-02-08 at 07:10 -0700, Nathan Chancellor wrote:
> > Clang warns:
> > 
> > ../arch/s390/boot/kaslr.c:78:25: warning: passing 'char *' to parameter
> > of type 'const u8 *' (aka 'const unsigned char *') converts between
> > pointers to integer
> > types with different sign [-Wpointer-sign]
> >                                   (char *) entropy, (char *) entropy,
> >                                                     ^~~~~~~~~~~~~~~~
> > ../arch/s390/include/asm/cpacf.h:280:28: note: passing argument to
> > parameter 'src' here
> >                             u8 *dest, const u8 *src, long src_len)
> >                                                 ^
> > 2 warnings generated.
> > 
> > Fix the cast to match what else is done in this function.
> > 
> > Fixes: b2d24b97b2a9 ("s390/kernel: add support for kernel address space layout randomization (KASLR)")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/862
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/s390/boot/kaslr.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/s390/boot/kaslr.c b/arch/s390/boot/kaslr.c
> > index 5d12352545c5..5591243d673e 100644
> > --- a/arch/s390/boot/kaslr.c
> > +++ b/arch/s390/boot/kaslr.c
> > @@ -75,7 +75,7 @@ static unsigned long get_random(unsigned long limit)
> >  		*(unsigned long *) prng.parm_block ^= seed;
> >  		for (i = 0; i < 16; i++) {
> >  			cpacf_kmc(CPACF_KMC_PRNG, prng.parm_block,
> > -				  (char *) entropy, (char *) entropy,
> > +				  (u8 *) entropy, (u8 *) entropy,
> 
> Why not change the function to take void *?
> 
> static inline int cpacf_kmc(unsigned long func, void *param,
> 			    u8 *dest, const u8 *src, long src_len)
> 
> vs:
> 
> static inline int cpacf_kmc(unsigned long func, void *param,
> 			    void *dest, const void *src, long src_len)
> 
> and remove the casts?

I can certainly do that if the maintainers prefer it.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214064628.GA14336%40ubuntu-m2-xlarge-x86.
