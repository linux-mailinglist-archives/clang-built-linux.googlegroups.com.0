Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBHWHTP6QKGQESEGZMPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 113502AA760
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 19:12:47 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id a10sf1493086ljj.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 10:12:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604772766; cv=pass;
        d=google.com; s=arc-20160816;
        b=GG186ePMuZRd7wtvLB0EoPZzqeGbdFkRY0prqJv/6Qy+4yHVzJ416mF7JTI6650PaW
         0HfPlzULfbPmALEI2LMl60qDs4lX2w/2IRMwy0xU13DYh97YZ7eOj01w+DjDe5IoKtPS
         npY/XkSDxETTFJVXXkArYBpzfbJxG6eIbqHgCRBS1guFgasN4BO4Vel2g2ZMBIbF7M/I
         Dltc4LOImfJCYYUvpgvLleQD4n28bNIWe6hLFLM462TauBT6xvILyZadroSg1C43s7p8
         oz4Ddh4WITCezM/I77RQPIxWsGwPoRRwTKAiKYz7k/FD/Cm6GQ6673qnzeIPX7Gm65SH
         NqgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ijoPAWd3lpPf8ORWJs9Dw1CRsJdDhYsQld4cLs0DQrs=;
        b=Np0weyP0ibiV8aoVjG7e3bupsdrXrZEsrm8W2/cAhmUx8iD5oBtOIcWUU/Sm5bbNd5
         MmtsqXEDcdYtIEYFumPbUnSgz4reVAoPGPxEmb6e/vGWGqapi7yITTw245I2j/o+QiX+
         Tydz03UdYmHMwAXzky/ZkejNFlOW2xoEGLV/bh/ZqmLAbP08X3fAJ8SEk7R9CScUh7/0
         O1PhP2FMtwlJem4Kr0MSEj1kWXKXvuvCRIv1FByoKK3Lx//uGvAFFR6orge95wk6BP58
         o65vijqoe3/LcZX+/WNq6OoWAp6f25JpFzMp6nH+vPumGlk9PRfIKMKGigmgCqDAEU+g
         wlLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ijoPAWd3lpPf8ORWJs9Dw1CRsJdDhYsQld4cLs0DQrs=;
        b=azuj/n3hbFjGTbu6UMXEjQl6KhpLAqbc/X2kcALrJGcoSqA0uW7f/A91YpTqCp7+vA
         IUB/pMOInB/TIIQzQ9qNBpHXc0nx100ZnNGDpAaGXD7w5M5VuLWir3u9w5QobeYcVVBk
         hqETCaJFYQcgFRHaH1IJD6amvZzrIuHBcfFs23BL6epeKxmL9rOBO5towmK2A+N2RmdU
         grqh2ftomhU1mi0M+plo/KLu+Bo5L7GdXChWf+ECmUqy5Zmfp2dx955QyjzVaz9z9YMj
         Uqd82JyvvKdkJjGf5zcKuf0esfhtNsXT3I6e3zsSRaFR4oIDtWmKqWGDwvx4E4r//pC5
         BtWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ijoPAWd3lpPf8ORWJs9Dw1CRsJdDhYsQld4cLs0DQrs=;
        b=fou6nteJz7wIm95zFl4qWzH1byxyacRL9Ss9qu8mIWNqYhNgryXJbz0rJituHfxPz4
         ma4LtFTIwUx2nP2ghTZEPqBMgQoTI1vSZTcHyTvqWxzFSbd38odoURqJxbtQ0P3SGHZN
         OM/Px8yScKGikPnfttfRurpMKgDElSLiTAgddNdiIZNlFrRAPJojvWm+IZ5Vcyh9wz0x
         IR7p2GWsGCF0pEMhFv/1odMAhIZdYQdXIQf29BaBhiNAStu8z4ZAMbrktRdNE9JCJqXe
         IowcGAL7jGnIcfEpuvqKYeZoHQ5cBYF8cff4os9vw8qnif94x/WSQJl0MgeYh3x6glHY
         fQ9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Y5pK5GfR2NeBRfU7stcqv1Zx8B9wDfiNoQGY7ID31OoqbeD4r
	emB2SFjs4/QYFZrbuf+A9Zo=
X-Google-Smtp-Source: ABdhPJyfmxfN/WpifhFQapTnw276ROR8iVkRVdKbMrQf59Tm2f1YcgDMr7nbf1g6QEuAScXuMhimAg==
X-Received: by 2002:a05:651c:315:: with SMTP id a21mr2922482ljp.229.1604772766525;
        Sat, 07 Nov 2020 10:12:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480e:: with SMTP id v14ls1456969lfa.2.gmail; Sat, 07 Nov
 2020 10:12:45 -0800 (PST)
X-Received: by 2002:a19:ac05:: with SMTP id g5mr1675036lfc.593.1604772765478;
        Sat, 07 Nov 2020 10:12:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604772765; cv=none;
        d=google.com; s=arc-20160816;
        b=aLufY047TYbJ8xpqh+s65F2MUk9diklZWM8JZv6SQEI9nu+/xrjmhMRI3HWpSNhNhW
         tUPZuQ7JaAM655xCifUs2wEu/bBu9T1zHzF5bu/rZ8inLYdx5+dJZkYPc7l0qsFtkjfD
         8bfgVSkAM1ka8ahKXVINmGpqA0IJim8NZ6n09alZDuNqNnOJXdp/Q3IRJT28MUtael7i
         M8vn6aVCSzucGul1F1m9DGieVGtrb1dFIyxaQGRbY3KUkP2Y2+YHAna8hS8YvUMGgrPn
         D+XC9OY93K5g6Q54OfYwmKgJpQJzpEIVSyNTUFPsBEU5HPiNMP37RAcR4WroqnmG32sE
         UR9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=tCmSMs8/GSNmLy5tvnPf1enZa2CuaByMEVNWLUE/5KU=;
        b=SL6qg8FqeYCy5V0OWZtXrky10nbMeSOZpHqGJ6Yz5EUI74lJmZejJOftUgu24/7Ikr
         x5jcw0SoLaCTNOmP72QqmFLAF0pDBK29uAIeFJwa1pgKpZyMFcHzsTmFAS6jQIcKkDhH
         GoTHYbVfxMeGmbuYzla2rp67QlW/UTRKLFughxKkH47siQDyt/agGb35SyG8QIJcJnN6
         orRp/GVfjNyLxkW7iHIvBqkVAK90evzurlz1zMyMg5tKEBNIkm74+IC+EksmPK/IaRyL
         RF0kG/SpS3xJ4H4LrBeWvimXKKI1ZYpt/Gu0PMeXRIum8/8Jq4HHYVrpcdgt7aAbix6W
         bEXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id o185si135984lfa.12.2020.11.07.10.12.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 07 Nov 2020 10:12:45 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 5B9641F453A0
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org, Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
In-Reply-To: <20201107102203.GV1551@shell.armlinux.org.uk>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201107102203.GV1551@shell.armlinux.org.uk>
Date: Sat, 07 Nov 2020 20:12:39 +0200
Message-ID: <87r1p5ujc8.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Sat, 07 Nov 2020, Russell King - ARM Linux admin 
<linux@armlinux.org.uk> wrote:
> On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote: 
>> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c 
>> index e1e76186ec23..84c91c48dfa2 100644 --- 
>> a/arch/arm/lib/xor-neon.c +++ b/arch/arm/lib/xor-neon.c @@ 
>> -18,6 +18,10 @@ MODULE_LICENSE("GPL"); 
>>   * Pull in the reference implementations while instructing GCC 
>>   (through * -ftree-vectorize) to attempt to exploit implicit 
>>   parallelism and emit * NEON instructions. 
>> + 
> 
> Please tidy this up before submission; we normally continue the 
> "*" for blank lines in comment blocks. Thanks. 

Indeed, thank you. I will fix it if I don't replace this patch 
entirely with something similar to what Nick suggested.

Perhaps adding a checkpatch test for this is a good idea?

Adrian

>
>> + * On Clang the loop vectorizer is enabled by default, but due to a bug
>> + * (https://bugs.llvm.org/show_bug.cgi?id=40976) vectorization is broke
>> + * so xor-neon is disabled in favor of the default reg implementations.
>>   */
>>  #ifdef CONFIG_CC_IS_GCC
>>  #pragma GCC optimize "tree-vectorize"
>> -- 
>> 2.29.0
>> 
>> 
>
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r1p5ujc8.fsf%40collabora.com.
