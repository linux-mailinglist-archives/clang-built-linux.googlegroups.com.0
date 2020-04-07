Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUMUWP2AKGQEFK2XANY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E77D1A1533
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 20:45:39 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id o20sf328891pjs.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 11:45:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586285137; cv=pass;
        d=google.com; s=arc-20160816;
        b=k4NXhVnBPIZqWxa6jndcEIPBoPgK0xR88dGaivBbeWbx/o7mCbnhcwnUOIwZODdPA8
         h8oTlazjhmbUtcmfd8HbJ8I08l+Lp2ylzboZ7PakCKeqWPOAkfklsmX0m7BYRaBZQ1+g
         tW0d5citrzzwIqO8esYUQmKOXnQtvkloCR/UG7jtiB4YmmhTUY71gUApPIWdWHqm1xhO
         LnvZEsx7QpokCw40ZTM3GpFgw2iGhokU1zudn6VSNQfaFWQmswpzDhJvRae54ZNEOYm5
         TjuW1b4vtMTgtIsXkexxPYmx6eOrmFNy8udD/lsyUgeZG1FbT2qgaE8CgNtKyrAlzfGA
         4zzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=GSjx2Waj7ihcCiJaEzSqMmLHFllnw/522Qzw531CIZs=;
        b=bFF4/SNJAin5XFoK5c3xS3T3Dk0cjRwJ22Gx4MAljgOinCMMFBrFpFCB6uINvb4OXm
         vq1OmozuA0JnNVrXL5g1e1R2MuyJgHK3cGdWF01Mg8pZrpI5uIlytIpDLqFaktPBd5Pv
         uFYxMATUhJh6RubgRIc1qNKotVLzQ6nGuiImzLRyXwA4h9ZWQYPXcY02ZcXdLxCEV163
         R4jZoXe9O26GZJt2HL1OT4aMMqDVm/L7XAOsZP0c/teNrSfG/e9dXg5SStjONjslI4jW
         NXD5/HxDT9THpz5j32WYTBc783A+s7Vp7DgAUZ1ktH0MxXjbNGqcdP7hjIgZxIvflrbp
         4Rzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RA82pSey;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GSjx2Waj7ihcCiJaEzSqMmLHFllnw/522Qzw531CIZs=;
        b=UeU7FETMXmb6fx16tD4iPxHPhznDJhE3IjP7vswATjtHKy1J7ARQJ4sK8FQBVfr3Em
         VTwiwbhAWSvNYdcRPNWPSOFbbwwDLL/QRUcA7L8eRCSclPKPFnJRb18W15FrrQzRwYzc
         TXSdPFev4qvv7iljFjnKPM5M3Ym72miPd/RJGticmofUTcQzCyN6dq6osAhtpi3TB628
         12vvMCKUxemDOxPJBEpHiqpYwYi9KOq6ahVn0glPM+N5WKf7WxBsBze0xgYG+XT3QHM8
         qNW53MW3gKERsF8QtyzmqbVw/tgmpvOhEKOvvuIi0Km1coKfnYnXuQ3FRepE80MMPocC
         FGhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GSjx2Waj7ihcCiJaEzSqMmLHFllnw/522Qzw531CIZs=;
        b=MFpzyck5M9whbsk7d1AspfcYIQP54gUrWtol6V+gvZXP/nbJlT/4sHD5pV2y2GK5If
         0UJomosbq3VWj+xx/p+i5eIUgsGrpd7+cQJ91Yee+FR3hHXST+pe2Lki3wpe3FV26ovH
         JdHWzVS7xifj+43BS4kuFYD2sX1wmusyiUEWwXSD/EBN4qovtKuJ05HDvxQDNdWHxK9U
         xlcIdKvku+bCqZmizj0Ai4veRJIhC20V+sVoyuX/eCROsiWdSbUYY3qsh1OBdcBmKVLu
         cDPFu4gcXoxFTEpjDHoN7ldOgb/rMtf7mODEjGUT/9iJmc6VbJVupULou//f8R3OZv5o
         DYwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GSjx2Waj7ihcCiJaEzSqMmLHFllnw/522Qzw531CIZs=;
        b=kFV7kG22satgD+u65tcw0BgY8uvvB0PfujaJKuAyVOtXPczVs/6ZuUZhRrHo2fDTNW
         U44sSaSHq7tOe2KSyXUFV42qFHQQxTMFgyH0hoPJxENs/jBkLMlvhNyEJ2EcN4iZ7y1/
         TBiF7/zFQ+fnD5zFt8uXH2fg/r8XjgbCBLMkOtMCaHY/3PWPI6QFaon7jMLw4w+M3u+D
         fQgvaWJSC+DdgqPS7TumY9W2ygDkUGDw5Jay2jfGZLmEYBoZu+PtwJcllITHqrqulfcP
         TVluTT68CKft/NM+PbTrBlnxcwb7WZ+ZSEY4KKvRofdp8NeA69tj0bdhDKlscFyCpDGa
         hvJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY1WygYeFnsMj9dOLS+qOyY0Bny5csGUgUFYZdPBDqZGOf24Nh2
	jNJGzjmQdSEwEwfGQDRkN8E=
X-Google-Smtp-Source: APiQypKcUqWLtVy3cmeHku/VO9O9Bd1kyW1WVAn9syM1tgWewUP/g3UqixIeihdytnPnvV5lR0ZEUQ==
X-Received: by 2002:a63:741b:: with SMTP id p27mr3381934pgc.68.1586285137565;
        Tue, 07 Apr 2020 11:45:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15ce:: with SMTP id 197ls2323643pfv.5.gmail; Tue, 07 Apr
 2020 11:45:37 -0700 (PDT)
X-Received: by 2002:a63:29c1:: with SMTP id p184mr3443201pgp.37.1586285137165;
        Tue, 07 Apr 2020 11:45:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586285137; cv=none;
        d=google.com; s=arc-20160816;
        b=LfHOsntzE0RuD7eKGswoGIGbDr8ZStsJO8KTYfMScBfSq7RYU9s17aMbtlEd/bBSBv
         K0Wwz2swTkyx3J1fsCPucDxkUoVFVpOfEbw2SU4Ly00RqcnZC0Ecpwdl6wxk2swqHkN0
         l+Y+sgAIShiN5rf4fRInJH2poVeMjQ8N095FQNVs8k5DL9kHOPAqKXcVTb/2q5Y/YdJk
         GnwNIxJjo+J3nGdkEz6CesdF/MajWPK700vri6Ei1IjsjqaQYYJL4XYm7kB+E2s1AGAb
         5UXOrIaJlh8AAP/7DSZJkNB7UmbWCGQbIM6gIpkj+23OSdzLqIqRO1H9RvdHVghCza8Y
         TEQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gIwQXo30ZMAIkBOcVj8rGDbZtlax11guTXEso2ZEUsc=;
        b=N5FbkXPb1m/q7GT/FfEw+7sajfRmMYERWZP+xf727IWl2miPfuuexa8JLrAxShDbBi
         azkv7FxlfJ1eBrEC4NSQm0E5VLDazCppdFvEx4iXBZhQbYBFIivYFcoRInVRbPXkp+VT
         24UtIzw+5NRUPe7lP64fK/DwmOVskHn+1G58wWLF6waQTyrbzfPkA0BJAj8EOwCOH8mb
         DtB6YlMVpiEVRWtt8IG7/NfMQFgnYDEPbK629fCY/jziKBs6DfIOAoRuVeI/1O33NLsd
         eFaBHRHXjMfiwrU7xTrENNfK6f1n3RSo1vYzcPg9ApWON9v+5UUKi1hfKAiKCtOdH8aX
         rLgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RA82pSey;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id u14si412195pjn.2.2020.04.07.11.45.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 11:45:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id n25so1586315otr.10
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 11:45:37 -0700 (PDT)
X-Received: by 2002:a05:6830:1348:: with SMTP id r8mr2688095otq.57.1586285135559;
        Tue, 07 Apr 2020 11:45:35 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id k132sm5609593oih.9.2020.04.07.11.45.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 07 Apr 2020 11:45:35 -0700 (PDT)
Date: Tue, 7 Apr 2020 11:45:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Jonathan Corbet <corbet@lwn.net>,
	Michal Marek <michal.lkml@markovi.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] kbuild: replace AS=clang with LLVM_IA=1
Message-ID: <20200407184533.GA48427@ubuntu-s3-xlarge-x86>
References: <20200407184336.14612-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200407184336.14612-1-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RA82pSey;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Apr 08, 2020 at 03:43:35AM +0900, Masahiro Yamada wrote:
> The 'AS' variable is unused for building the kernel. Only the remaining
> usage is to turn on the integrated assembler. A boolean flag is a better
> fit for this purpose.
> 
> AS=clang was added for experts. So, I replaced it with LLVM_IA=1,
> breaking the backward compatibility.
> 
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407184533.GA48427%40ubuntu-s3-xlarge-x86.
