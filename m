Return-Path: <clang-built-linux+bncBDMMDG7N5MHBB27XST6QKGQEUASKKYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E1B2A95EC
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 13:05:00 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id a1sf443000lfb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 04:05:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604664299; cv=pass;
        d=google.com; s=arc-20160816;
        b=T/P+9UHbwnMl4oWvIYzsvSqEri0zbuZml0FwghKHTlieHpUpgMKTbV2MFhTOOetuvR
         BB8lsLa1dv9RYT2mlh/+Z+bsX5/C/Rwz5PPux69cRqzItCuaCJ/BCKS0hBepohcGPl5f
         apPeNJsA43ekIF57GxWjbWofFuvnlSsoJ4VqVpg8YmVn5qdkGU4zBeB1KF+CyAqG3wgI
         b8Z6JJlu4I+a0n7uSO7UeyCldBsS2tVzd/KvUn86GDIoxOKC6lz3s3+1Q/LLNxS3Qlci
         7qR9iDPmeJU+KL8MEcWZCEXqf6Xdq4DvUPJeJZZcWrNlx2CyVPn68bdKJr+V7Fx7gQib
         zayA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=wba8J50AusWE6CMzaBLFaKtAeLVzqhz2kMNWJhbbk7c=;
        b=ZmwNRnx/nkpWnkK7D+rxsYMzO70nlVuVtOlps/YVSaT9stYeXsBiOZZSrUB8QUgYmC
         Y94sd0U2PB76nhcsk0GRMBx4zzqZ4AkbPOCRuJANnb3PdWBN9ieM11hZ2VBt+O4SQvAm
         OlM6FLVPhdU2Ho7kdupQ27iQJSeQZzGqrM1cozzN8+MfZAK2CNuED5Cm/NnJokIrNKj8
         tt3BMCd3jM++qanpMxHTxQU2TLgcptExTJ4Wg2xI6K+bK1m0R/QYGzHG47dnnG3Fg+E7
         gI0Ve0To5zt59GDyR/VbR18a21/xnA5Cf3bRsnfdfa7wYjLLS1FwUbAvQCnFA8qMD7DC
         SwOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sudip.mukherjee@codethink.co.uk designates 176.9.8.87 as permitted sender) smtp.mailfrom=sudip.mukherjee@codethink.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wba8J50AusWE6CMzaBLFaKtAeLVzqhz2kMNWJhbbk7c=;
        b=OX0HSKaa7H5cECC9OjTBEN8fMM/J6FlFsWSYYwqvU1wLHU1HQ3ILN3RZGLGP7LOgm4
         esbyltGa3tDJUJiKz8X6q9h4xgeoNpuPqOYBZRg79yFJ6o4WKMd8aysfMvXn1Dt3mCPG
         4qpziJN570xy0k78PXnaJvTSU9BY/BFpz3WckAY4UfGdaEdPvPpVOHwVcft+IjXaTPUk
         67W2ST143FssQtQL43MdCufO/nJLlMmFLPDcXk8Nz0I9KEKHqN7frGMpGLZRUQRJjHig
         Uo6n+HI5qlY8pv4hBjqCsp9VkSmKLiVgDCC59JMJjJ2tnSeepbJEnpq1iJy5J7TMxzYq
         r+Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wba8J50AusWE6CMzaBLFaKtAeLVzqhz2kMNWJhbbk7c=;
        b=pCPG1YxwaGzoXoN2xfIqPmVOwaqawwSchGprB2dcUs5w413IxY0DoIdigEPgKo4QPX
         RWnQoM3qphtWhVpnJYWqXYihHyuNTVpG9dWIvy3ieqJOuMs+DoIOx8rl80UPdSQsEMgc
         7a95QE9NK6vs35tlvoPMu4auyeW5/zETje8yGU8aPxTyWfwXRPTFP5d5hhdrxlpYcZ14
         HzV4JR2heDdeXkfSd6JSPVPBd/zAFH20dcgE+lVG7zUSxxnwa5/HdpgwJR9joLLjvf8H
         TqWgoNeM+Hck3i0muP845rtG0chOtLHJhmAyoR5REWaUxqqgK094xf8zeFGpy7+SmN5w
         AU7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CEFyWQIoyTEGwSNLjTD9BBxMCYjMkX/IiHWe1154asKY47QI2
	oFuIBfyloCovYTQKLF003rM=
X-Google-Smtp-Source: ABdhPJzAVt3Vdo2VtQt1noto1WFlGi5/4c6ZhKoZE+1xAKrcWg4PSkmgtYPVcivZ4LbGfYWLGLsUPw==
X-Received: by 2002:a2e:9c94:: with SMTP id x20mr580112lji.33.1604664299614;
        Fri, 06 Nov 2020 04:04:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9f48:: with SMTP id v8ls204982ljk.9.gmail; Fri, 06 Nov
 2020 04:04:58 -0800 (PST)
X-Received: by 2002:a2e:2403:: with SMTP id k3mr648501ljk.186.1604664298596;
        Fri, 06 Nov 2020 04:04:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604664298; cv=none;
        d=google.com; s=arc-20160816;
        b=0KjlgnFB1AuhSj/BEpZWiGQiRWziXo1HHPv1cIvn+bP+md/UBJctx03F4RXgFmKCys
         MQxTI3n5duiQUhPoaog9VHt1l0PimjHBURZM1/NXGSt+otFisxcb7rnYWgZfsp+Yv+rb
         uEYT+OPQQT8pQff+hzqaKMpDHEU3KH4nAvVRDnca1wdzZa/user1db64SNJQvfU81zPb
         9HaXtI8pjd3Oos+jDQofaoczHsY0krAERNJQOB8UKJ+DDj43XrW0ifdrNEQ7EPM0nXka
         Sxe/eLUCIJi2nQBqdx9fOn456YB/DjD7PVesziFP3pcfBw+qVLWOjhWfTx+4Qcg1bPYf
         bsJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=AJ1GCxgfPKDxSdytvvaDV47Zh20KnQDD5uaFwZboarM=;
        b=0pRfWVPwoIwyIJMaV2bb+vMccaO0eZYEh40HEWmsEkUcrOvnhJUwZ6RRk2mUnKzAB0
         9pKO2xdFVGT6nRUdMgdGQ11RJUk27LdAK4k4WnY42hrz4J7hD/l2IwSjh+WLxnfUoE/H
         GVO95BMMuQQCgCEsNfy3uUjyE0+LG5jJamuJHwAMJEaMl8WXfOhTiu9795zJI4HfZvEG
         pxOCqf8pjvHYeNp3AECGgnS17ebM3AclLA8cPBlt2kS6t/quA6MR67Zz5sLHQ2WNJB9d
         Zel0tkTyAM3JI69PK/lpjowlePv/LhDtxb3F7neFofpxefjQDCwvMtjUjB8267bfIU71
         JHjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sudip.mukherjee@codethink.co.uk designates 176.9.8.87 as permitted sender) smtp.mailfrom=sudip.mukherjee@codethink.co.uk
Received: from imap3.hz.codethink.co.uk (imap3.hz.codethink.co.uk. [176.9.8.87])
        by gmr-mx.google.com with ESMTPS id y11si44698lfg.7.2020.11.06.04.04.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 04:04:58 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of sudip.mukherjee@codethink.co.uk designates 176.9.8.87 as permitted sender) client-ip=176.9.8.87;
Received: from host-92-5-241-147.as43234.net ([92.5.241.147] helo=[192.168.1.13])
	by imap3.hz.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
	id 1kb0U9-0000Ln-TC; Fri, 06 Nov 2020 12:04:53 +0000
Subject: Re: [linux-safety] [PATCH] taskstats: remove unneeded dead assignment
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Balbir Singh <bsingharora@gmail.com>, Tom Rix <trix@redhat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
 linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
References: <20201106062210.27920-1-lukas.bulwahn@gmail.com>
 <6ab2415b-0642-16ee-4be0-c909e07e7565@codethink.co.uk>
 <alpine.DEB.2.21.2011061126130.20338@felia>
From: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
Message-ID: <aea9d12d-88ee-f262-4328-03993521668f@codethink.co.uk>
Date: Fri, 6 Nov 2020 12:04:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2011061126130.20338@felia>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: sudip.mukherjee@codethink.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of sudip.mukherjee@codethink.co.uk
 designates 176.9.8.87 as permitted sender) smtp.mailfrom=sudip.mukherjee@codethink.co.uk
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

Hi Lukas,

On 06/11/2020 10:31, Lukas Bulwahn wrote:
> 
> 
> On Fri, 6 Nov 2020, Sudip Mukherjee wrote:
> 
>> Hi Lukas,
>>

<snip>

> 
> I did not try but I bet (a beverage of your choice) that the object code
> remains the same also for your suggested patch. Try to disprove my claim 
> and possibly earn yourself a beverage when we meet...

Lets decide which beverage.. ;-)

Using gcc-7.2.0 for MIPS:

original:- ab81d3305d578c2568fbc73aad2f9e61  kernel/taskstats.o
After your change:- ab81d3305d578c2568fbc73aad2f9e61  kernel/taskstats.o
After my change:- 0acae2c8d72abd3e15bf805fccdca711  kernel/taskstats.o



-- 
Regards
Sudip

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aea9d12d-88ee-f262-4328-03993521668f%40codethink.co.uk.
