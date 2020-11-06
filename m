Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3U6S36QKGQECIWHFZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 580892A9B5D
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 19:01:20 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id z18sf1621366ioz.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 10:01:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604685679; cv=pass;
        d=google.com; s=arc-20160816;
        b=SAzsIhF0GdNrfegjt+wNinTMjDNp/sb8rzTrAae4aQchok2JwXxzIJ4VS8rmP17cZI
         XJ3dTamKKV6/nNOjRw7TB58dIfJyqxBrBOcVeo/lqKe5xvd50NR346CSqcUPNAQEXJEh
         i74T5Ifscsj1WQ7P2Lz48nZqvS+pmEwof2bkMJeIBDr29u6ZZQ8Vl1Gwq6ERjHfbndBS
         8o34t3iz+pyvPDFBKHNhGxkDEszPDiQgbXaTQ3bAqsUR6z92b2XDDgY99miCkcwYylE1
         AIkqjPp+2u7l8EXgB0DfhGK79TsSzWC+6jIIZcZdH3X5Bt5FlhhWOmTlVSf4ezLUTv6r
         2o9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=FO5XVg8ts8EMs1n1pgvisLP2fmJBND6ZSqGFu3ObuW4=;
        b=nHSeRHZb2ySHWTlgPgkZFxYRrPfqjZr6FehOI/ZJpHa6NnXfYDBoI9csLm326VTelh
         QGnKQ1T0TBkDFiGeSw1TiX7v0KN4iOgKwjTPaUBzLeJyWo7LpvxEuTexRlru7pF1b4Sp
         j025hqSVCOIP/J3AgqgVEJQTOQWZh++6kNqyWz078Y2Tnwuvs0U976EUZSYThB5CByY7
         VQ9FOGUETcIoloNCAcyyL4nI0Tldr06aeSRirezW27aK66YvGF9vTn158y3rg2HY8A66
         P80ajmdsv8CJKKY/p0Qf5qn6s65U0zAxsL+LbXyoKeP6PPwu9Pk+PHrT9EfCqlSplK1s
         Bx+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFXZEyu0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FO5XVg8ts8EMs1n1pgvisLP2fmJBND6ZSqGFu3ObuW4=;
        b=IqFNRMgQZqpo4MYfYKhTbH999pexwEU69qcPVdNGCyV5W4V+pYMFxzfzdkQowsxMK0
         ydrefmg/y/PL7Wgg1bt4QYnkc/eX7f4yQu81onRmF22Sm2NvAB9JuqI/UDOBC2WBxWGD
         sMafJVLRPYEAbSSS49UUvgOcrgeOk9AblPkY7yZTyXOD3AqC5n2JAEsfVnGjUbv7nolu
         2o03HuZ2jNAE4e4Wnog9N2W9Bh4Hl4aCwiX7mG7BwaTw0yhS8Xqo8C13kZnGyzoqS3UC
         7D4CH/CUlsD0Sl+uSN3tmIc0yKibX3eTMJSkI5Y/LAsdlrW+UR9LTfv+g1MCzFN7icJz
         en5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FO5XVg8ts8EMs1n1pgvisLP2fmJBND6ZSqGFu3ObuW4=;
        b=uGqgGWtXKtgwILuu5zNLXCytzg1yFpDcoqa249ZlZQvFEKcBfwkE5mXmuPUhFPGQNJ
         3jjk6iqhpo2/8M59QyVftBKlYCPFKz2YleWCWLz/qKNMWK7lcm52HhV/ipvZBBV8uPSo
         YFXVwBHnVGWL7X8HMpURZkrIB8zos+AwSty9/+vSmO1oAvFMjwXcU0WuGP6HimL1kWNH
         ZBTlltgTrvtqU7YOlrkduDAH2A50UbOEfx0mK3oV/WP35zQgaIZJGUPSbfpa3aaKd2Yc
         hj+nPBnzl5FLcYI+/99XQxaQF8cgXYuDTT6OnTRa1Z9VFfDWMmD9J+0OMePrpxwh8cOf
         ccCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FO5XVg8ts8EMs1n1pgvisLP2fmJBND6ZSqGFu3ObuW4=;
        b=QnX94Sh72Kb9thIV6tgkw+51pgwqrUBM0GoxzXp0n/ENuIH9YGA32vyDyxxrIqogP0
         xq4KsLoeA/06ZkwzGfDHuKNVMz4dTAExMgQsyTdRXDYkWIQKdQV1etlK92XKeI8kUE40
         SC/vSrKhK99fNJGiylWsvVrtAFz152JQL7M113ZdpiLaJEpJCCV03dabLoGA3HZDTxdR
         HAY06AO6VYP7suO26ndde/VpZtDEMrk08KjPjALAfptvHBJY5kaqpeBsJhaWunliFug+
         1+OeJl30d/ODH+txWyHJYVsi9/SnW11t/BtNom4nTHrZ6G9RexzVkJOKwODcpGUGsZre
         u2Lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wqanKX3lftXJ4ueE7ic4F+wTFeg/ooTcGC+cVz5ttuJGWfqlP
	iWD3QvDM082qe8k1bq7JIjg=
X-Google-Smtp-Source: ABdhPJwx3ALxp6eEpvCHtFatnlJC9oZ2bz5C2pFunjLBNYUu0hQ8TAImFj/LUk5Znm6wIRxTCmRHEA==
X-Received: by 2002:a02:cd02:: with SMTP id g2mr2621557jaq.22.1604685679003;
        Fri, 06 Nov 2020 10:01:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:84ce:: with SMTP id y75ls450100ilk.1.gmail; Fri, 06 Nov
 2020 10:01:18 -0800 (PST)
X-Received: by 2002:a92:41c6:: with SMTP id o189mr2339552ila.261.1604685678442;
        Fri, 06 Nov 2020 10:01:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604685678; cv=none;
        d=google.com; s=arc-20160816;
        b=OOMywsOA3yQXYixLn0D8yn3JNPfd4Ymh0OAUZCVtZDay0GmRw2zRSZ8FiavHiC0As8
         Wwo4TVZQmo1EXJo/hY/d0B9kfOSFjWTblfpA4UkcGqzVkEqZz79W4K3uR9Lh7lKybT7H
         INBvpf0Ee3K7UPdHaS+O/BfZ7vYXZzzNvhy+E4KgcOLjCR5p1QBfjWuxJ/49TT7kTIN+
         eRfo+NP8+DsexPYLS3GK2/tI0APS2xfNy5+iBXR/EWoWiy6RgXkDdP42VPNGmIn9rQ1Q
         KCeAP9jtJkPKIzvF9WAHCNLuVos5c95O4AhtxZMglCpYGwI7w7cZ0ibHfyOpSkZcOoy3
         SdcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q71DOcgxQ/FG+0xRI5ty6ibPA0LopqgeTgo5KPl0sXI=;
        b=bWdJ0mb1ADVJf4oUKum9FmokmWKJvc6owjFvcxzGQZmX7DMJ+DwcY8ljeaZ4JxCVyC
         tevEfDkBmSmepRuzI8FTnymxWIWABepGRPgD7aUq47xUu5+KyMc4jZ/Jalg40CzPHteX
         +IDvLan8Kzean+p30SyGrTIMUraGyDw6fL/Jux5srQq5ug5eSLwmlRW11orZxLgbcw8/
         T1F2xc8FN8CH0qm/E8ORse3TuVClPiVEwGrlnUUbOL8sdWRcUgT4b2gEADtSDftprYug
         qi3jrRMckQzH6cUdZk6hgPbQSGVPB/s7yfzl2BlAepaQDRubTkMBjAR2cthU3E7c/ucA
         KpYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFXZEyu0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id y16si103840ilk.4.2020.11.06.10.01.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 10:01:18 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id h15so1852515qkl.13
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 10:01:18 -0800 (PST)
X-Received: by 2002:a05:620a:22f5:: with SMTP id p21mr2452964qki.13.1604685677742;
        Fri, 06 Nov 2020 10:01:17 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 66sm993396qkd.81.2020.11.06.10.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 10:01:16 -0800 (PST)
Date: Fri, 6 Nov 2020 11:01:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
	kernel@collabora.com, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
Message-ID: <20201106180115.GB2959494@ubuntu-m3-large-x86>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87wnyyvh56.fsf@collabora.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BFXZEyu0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Adrian,

On Fri, Nov 06, 2020 at 01:50:13PM +0200, Adrian Ratiu wrote:
> I tested Arnd's kernel patch from the LLVM bugtracker [1], but with the
> Clang v10.0.1 I still get warnings like the following even though the
> __restrict workaround seems to affect the generated instructions:
> 
> ./include/asm-generic/xor.h:15:2: remark: the cost-model indicates that
> interleaving is not beneficial [-Rpass-missed=loop-vectorize]
> ./include/asm-generic/xor.h:11:1: remark: List vectorization was possible
> but not beneficial with cost 0 >= 0 [-Rpass-missed=slp-vectorizer]
> xor_8regs_2(unsigned long bytes, unsigned long *__restrict p1, unsigned long
> *__restrict p2)
> 
> [1] https://bugs.llvm.org/show_bug.cgi?id=40976#c6

Ack, thanks for double checking!

> In my opinion we have 3 ways to go regarding this:
> 
> 1. Leave it as is and try to notify the user of the breakage (eg add a new
> warning). You previously said this is not a good idea because the user can't
> do anything about it. I agree.
> 
> 2. Somehow work around the compiler bug in the kernel which is what the LLVM
> bugtracker patch tries to do. This is a slippery slope even if we somehow
> get it right, especially since multiple Clang versions might be supported in
> the future and we don't know when the bug will be properly fixed by the
> compiler. In addition we're enabling and "hiding" possibly undefined
> behaviour.
> 
> 3. Disable the broken feature and once the compiler bug is fixed enable it
> back warning users of old compilers that there is an action they can take:
> upgrade. This is exactly how this was handled for GCC previously, so there
> is a precedent.
> 
> This implements the 3'rd scenario which is also the first thing Arnd
> suggested in the original patch. :)

I agree that number three is definitely the most robust against the
future. I know that I periodically grep the tree for "bugs.llvm.org"
because we always file something on LLVM's bug tracker when we have to
work around something in the kernel. I think this patch is totally fine
as is, hopefully we can get it fixed in LLVM sooner rather than later.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106180115.GB2959494%40ubuntu-m3-large-x86.
