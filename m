Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBVVIRSCQMGQEFNU6Z5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF19386EF6
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 03:11:52 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id b2-20020a0568080102b02901ee0acf20ccsf2319788oie.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 18:11:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621300311; cv=pass;
        d=google.com; s=arc-20160816;
        b=X3GUgvaK8CjzcR/Bbs4EOcaQCv3JNlBlDv0IsZgvrP6qtIIW+UpfLJIasfFRIz9a+8
         bfH4k9fIbBDVlEpjq0xMKofj4QXXPIkroG59rODEsfkTbSkOdQhLOeyH/uUz2an+z+ax
         e454djxamJnHrBy8MFRWazYIlxbHpgO3b4/N+1PO7aUwXTsQqJ3Tt8r7pT3Bpw2yxzES
         HbM+ED5FugkxDitOc/xv440M5A9RibT9hu9iUzfqRJuOFaLeIGSO5T1ZJPC61BpjPw9k
         IK/q9viGVsUiuoEQZdphQxykEvSZMpbJv2Z71eYil30FK3y4rEwhtvC9NYK+wPNQGULd
         Hheg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=hpxB8o7jgJwqggzFanf3Es+J19LIBgDeH41DM3sU+Q4=;
        b=D4+F96zMxzO3XV2iJDDDYgr/89r6K0sGCzd+/I+ys/T6AySQLJ/mBaUtNgVg+JzKGJ
         PaLlvtVAWklM2y03x3X2RLDos8gWf59Caeq0Xa3EoliDR0q+Y3xglHO72GDgqTFnHWvz
         SNWzz29ks1hYc9GOiZvYLf8rNQ2B+VNgWmt0llMaUXhF3/TQzqbtAbWSy9RWMQLvki2+
         2Qm1Cvr/NVqIf+hrII8HbsJdMr+Zuco+NCeAKK2nd4dl1hHOBtdlv1qzgst2O0mByANh
         cRwss/kCaEIwMEEvO1r0jW5FGjc0cGkn9nWB2fS/2jTqhHe9fS0Q4YPj34lLELbOeMZd
         JA9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKlSE4lE;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hpxB8o7jgJwqggzFanf3Es+J19LIBgDeH41DM3sU+Q4=;
        b=QcfOiXv6lT4Vgnrx0+L+B7OiOcarDYfJFavnVWEdxPnzPCYgLQkMmTCLPAZ9cJT4V3
         N8B9bHZBQLFHiY9meS3BtG+GHe/MbSUhtiajN9Ty+LhrafGNB5TGS1sjM7f3zU6lor+z
         H4GYc3t94ib1TenvMtLo6D/GvaO1J51FR2oZUcy2w1FMJCvheUflh4zS79il99zGFfL2
         2rhM1hxrhiWv+dbcNGPAa7o8u9sgFkipXV8XC7Q5RcRTfzMELQ4Fi2FhERAr2lcS5lOT
         UeddIo/BbDJU8z1Haw6romWy7x+nCVe/NyWBCoYy1saUioYxzlJR7owkk87z6h+jzPky
         GOQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hpxB8o7jgJwqggzFanf3Es+J19LIBgDeH41DM3sU+Q4=;
        b=ksS5jEiNKL/zMNs2KRFzfkpDAx7bAMpPjIsIFR0XmWkk1MPqWcI8YGzacH/ibQbaDi
         o/9NFRm792J++JA4rVgKh5hFBkCaGxkclpjdJwcnRU4vsP5FkM3tIuXdZ7h1/zSDDxAT
         fd70jfFJoi2jGf8MktaH2TT99e33I2ziTsi3cYmoozhrNaJZ5iGBlEHh2dQL9rJDxZLe
         aoXGwXMSQR0bgAPdjs+haxGloFfPJ4B8/htAybAst4GPGMnsf3E6e0YjdajFRmiMKiTn
         +6eFAD1UyaOW+rFhFkNXoLAcMF8mzpT6lKHV74T+fea1khuQHMgm6i/I+a5ib/Z4ODq2
         mACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hpxB8o7jgJwqggzFanf3Es+J19LIBgDeH41DM3sU+Q4=;
        b=qjW+gjlt4MTFVRLcdvh5yeGwIAIOTm1ZWAzOl6VgwaazTnuxfIGaaY7xihkW0umvN9
         +MYQnlfNGJKslDNLvVrBwhW6Jn9rgPfubcL/JLCqOgkEP8l1FeE8nABr/HIKqKV/lJL2
         TMzkv37T8TmxjN/dONFg/iHgySkaRXTVvu60CHRl8AXFWuZF9vlB7S8Ns4hiuSRvbivP
         lInCTbsYlrTVl8uTiStLYJ/z+VpAQHGUUgRREokpoOBzzgcVJ8i+vTiMJSAGw1HtEJ6A
         QuLXJTwOn9aJ1rR5rIvEX6DIVPF2KeUDdstu4ftQ07sPzrCXVEKE9uLSL7OI8xF+3XnH
         Xk3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wfL3vmA9+4LhonCHR9MBR5hEIAt1VKiAlCeA7qztmRqoa2tg/
	kRE/hLx0UlYPnLWScVkZxEI=
X-Google-Smtp-Source: ABdhPJwsb2U1DYTCrgTu26B0YrxIp8ptmnvxeePw7VK9U8CVm/JiWIbLOfh2Jig1CvaQUVnDh7hgzg==
X-Received: by 2002:a05:6830:719:: with SMTP id y25mr1994422ots.218.1621300310885;
        Mon, 17 May 2021 18:11:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4f97:: with SMTP id d145ls4895042oib.2.gmail; Mon, 17
 May 2021 18:11:50 -0700 (PDT)
X-Received: by 2002:aca:1a16:: with SMTP id a22mr1987632oia.55.1621300310589;
        Mon, 17 May 2021 18:11:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621300310; cv=none;
        d=google.com; s=arc-20160816;
        b=t0cghOBDriKrLJFajt1j+CixIRajWVVTXpl1cP+d2D6L9goZ9fi9/nG83zrnGMvrkS
         oBD4l5GmE+x/ALOtwd4BImWk+FPU3dTeHw3zZvDdzU64RGm0WOmww1Fo0iU/UxnckXm6
         CGb+Ytyc01YuRX6n+AY1Ek5hN23igyQJWzmQT1BZP7kJcbB5ltDnup0W7IWlimMq9WoR
         jKESVI/kot/G4c5godWd8T1pSWqMhjLP6CwUXpsRvpZZoB7TFnN/+TVew8zl4LGJhWRn
         GqwZRYO177BWEf95LRs97GYkDgdr4KTOO/lhu0obo24kuwjE30Qgdf1J31YqAmhApK8/
         uwng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XVxh6wmJy66cAPboWx57VCrv0zhzV6TC1SpyfKn96NU=;
        b=jLTMhHSLxNyEl7oUIl6j+U23nEyvLr3Ae9F3r263N4+nPz9788jEgJjxWyOeJg9k9B
         EhNuV2ixGDwbiY4PBlimKo48C7N5eRcFdO1aO/MFWW9akux2Kujbdl1kG5CnyPrHpkJi
         +Q9/JtAa8cvn3o0VDX8ByfmOo0ptDt6ob2R4qosrQH6O1uXPRIkZqZtTog2Vdj28flBE
         rx1lPQYyiP/Z6xDynu/zNmNQwwvsrbGBTgKZwhvlEbZffjCoW+VDk5xf8RbBF8Q+rK5r
         X/2jggsteGf22OLFuXlKZDfywzVLbk1q0fGYnhT7/3unWLluPTZ0jPbdwRZlRWH1V6oA
         5piQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKlSE4lE;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id w16si1288299oov.0.2021.05.17.18.11.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 18:11:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id q2so6167082pfh.13
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 18:11:50 -0700 (PDT)
X-Received: by 2002:aa7:864c:0:b029:2cd:558:dbb8 with SMTP id a12-20020aa7864c0000b02902cd0558dbb8mr2488917pfo.78.1621300309942;
        Mon, 17 May 2021 18:11:49 -0700 (PDT)
Received: from hyeyoo ([183.99.11.150])
        by smtp.gmail.com with ESMTPSA id l1sm192787pjt.40.2021.05.17.18.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 18:11:49 -0700 (PDT)
Date: Tue, 18 May 2021 10:11:44 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Naresh Kamboju <naresh.kamboju@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux-Next Mailing List <linux-next@vger.kernel.org>,
	lkft-triage@lists.linaro.org,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Arnd Bergmann <arnd@arndb.de>, Vlastimil Babka <vbabka@suse.cz>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [next] x86_64 defconfig failed with clang-10
Message-ID: <20210518011144.GA84628@hyeyoo>
References: <CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com>
 <e6ee5c21-a460-b4f7-9d0a-e2711ec16185@kernel.org>
 <CAKwvOd=4wux6NG_6tF6C_xjU0ps+Fh5hfW5a_0U+xcPgL+XJYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=4wux6NG_6tF6C_xjU0ps+Fh5hfW5a_0U+xcPgL+XJYg@mail.gmail.com>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jKlSE4lE;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::435
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

> I see no reason to add those lines.
> I removed the because kmalloc isn't written to support 64Mb size,
> and it doesn't depend on clang version.

I mean, not kmalloc, but kmalloc_caches that kmalloc uses when size is
constant. It supports only up to 32MB.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518011144.GA84628%40hyeyoo.
