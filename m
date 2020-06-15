Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLEMT33QKGQEGT25XHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D61A1F9A2F
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 16:31:10 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id m63sf16540178ybc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 07:31:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592231469; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZePfYuM5ovuVdmaLshTU6VWKBaXYS+n/lF5mT0PHsLv8Gl7MqAOlrJ4YNXxjlLY5m6
         Atp6Ni4Lg/em6bw3I70uXm+3n7ttcT+XKZetCKyFMsh/Eriu3b5lEFTXiPyrqups+jZf
         ck+Sd/ukwPLmfH9Si+AKZELq/LTxQcWx6dV2VMnPeOAeN2/Gbzo21LXlabjWMhNoOQVk
         vz9UpCA/084DsZeYZEsyOclstkmlUMnM16U/T3GuAiVJabcJi++kkWNJoL7z5gYk5SlK
         HoZutwR3gZJvlPFfByhGolhEtJsSvSdrn8Zh+yezbqZ//Qcuhxp4bwNMi9A60CzcTk3T
         ug9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=xiUQmOUb0JrKVr49Js/24aFqxeZFcF4Y182SA5GIRjI=;
        b=Wd749HZLlhJRIyaIHV3XjlMHiUCtnhgxCGe+78szWEYPrkQ+Eg0DvsqdceNraUNRah
         76uFIrwJuirzeCABYKvftSSToCXaOaR/sxARSxl7PRvV+Mct+JKksbmZWcZKiJUa4rOp
         EtWCV2/jxYsZEefTrU6A9yObCi37Xt1H1jBO5+4CfcUG23GDWTm2cZ4COqta4R2Q0d9U
         C6eTxuntl20tJWMgqJ1DrzbRuHlWPtDbVvlNJyDpZa+CTKiYv2gpw4JsadYJijqRrsAm
         yAILzmPD90zfmB2onmhGxYiuB4X6ebftw/9L/l8TexZaGM2z/n+0lsPB5YUcC2xZAqYm
         dCSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RzJrrFC0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xiUQmOUb0JrKVr49Js/24aFqxeZFcF4Y182SA5GIRjI=;
        b=gWZH2wl8Senb+clTJ9tP6Q+pgBxXfv//6UOBUs0Od8c44No6Yx0MY/09VtkzRwU+XE
         LRQ0UOn+c8y1W+CZPoti5UWrdZAHV6zUS0OQxZpXGZnSWJc5HwMwbaCa8yfcWAh06OM/
         BdFkm83spkW6L+tN7MpOVrryEa8ihOPZRxcTccQra6Z9HsWRC8ApKEdUCU7EW6hVbjh/
         pDtJp7Y9oH2RpUPNVm+YFNmmLhMkzZV6BCBQxVs/d5GugkJ/KVQs6m+fWlZV0JlcQ0Ow
         jssxS/jvy8ya2V1880b6g7nAQCj9SR4qqmRKOcVkT05IM/RBV2q48cVvSl7/DYZmUjbO
         CB4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xiUQmOUb0JrKVr49Js/24aFqxeZFcF4Y182SA5GIRjI=;
        b=LoZfRMY+YllE4T0gOtJwHneSv5HDXQMm5Z0ncv8zyC3eWDwRK3+ZNpYTE+Uof8mEHT
         I6db0UWgmh8WoOEQ3T+5yDYaeGUluIoLbcJYG5+EnQNN/SVQsiabiINsM0+J8QM3sdNR
         x/Dzwg2ZFj3N+/PPO3q9O9JNl0ICr4zTXw2L0EOy5db3+NlOu/FEVydyadAuFPrdI6Pu
         yGgRX2bKbpoXGhPyYhzQ5dikQvEDCZrG2WEZ6a/t36AZ2o3z3Fy76QkO9tY32WwcIYZu
         4hISScdBRGbl25xJvCfbQcTYw0TOPMjXwpXIb8yh/1+tqJeDvuaOCR/ovNgmjN4EjHJv
         V28w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xiUQmOUb0JrKVr49Js/24aFqxeZFcF4Y182SA5GIRjI=;
        b=eSTFZ71jYuDWdPW5ML5oeehqcDzRmTY0VQVoVbtROtJR8kSDQ4SPeM8uQhiRVpLLFV
         /sNcWAXt5ZwtvDX/Wfjigor0DZOeCYP9e2TZQZy/EE1oIz2W1tXbBnlpG4CLUkmKLR4Q
         +cqgWsA/GZV9b8RBDOMQA4xxAVaU1Gqh8hSXv2hloMAHG56++8X1g5cIMPexUBgkT3j4
         53OTe55tzUzQE6tWMs00yYmvAYRJAoM4mr83DChly8tGUz6jr0rZtioXTWOFEF1n8Kij
         hOuP94Kf87e6e6xNfAXtjegqoBOzFd39T9FJx+HFxcCtDVb3H7SlDrPO7ivCYqeU5VCx
         wnhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PhCCGYVeKoSqGbO0BtuaqGbpoM2ppQeIHVUO74W3klG+jJy1c
	pMJX97AEvKa3Ao42fBR/12E=
X-Google-Smtp-Source: ABdhPJwkNQ+GT3XleO+XShzqm9f3hk3/KkQpuTqamCv1kMP7yY36ATuZd+DzkiTO8xoODsLA2ZtCYQ==
X-Received: by 2002:a25:49c4:: with SMTP id w187mr40628409yba.211.1592231468892;
        Mon, 15 Jun 2020 07:31:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c785:: with SMTP id w127ls5732611ybe.7.gmail; Mon, 15
 Jun 2020 07:31:08 -0700 (PDT)
X-Received: by 2002:a25:a081:: with SMTP id y1mr39347121ybh.156.1592231468566;
        Mon, 15 Jun 2020 07:31:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592231468; cv=none;
        d=google.com; s=arc-20160816;
        b=Pszp15WAx5hZdiniE1//bVWpVsZYLPV7xNABMxSaT0YJFLqoFE46dVWcuBZq73QG7J
         3MT9UjpQFNlsqlw7QQObygsg23gnO9ry/r3k6tin2lSm4zEEQphBFWJJmMKi1qWv9mCz
         E7jV4SPdxw8UzrDSjIwIVypTQ56kIj2MyjBkYvT/UURdO4A9fbbrPc09JB9LilrwqJ7e
         RL/1/k0O0Jmh1SF2yKLyIn9sspYUB+1xNkXdRx3bBWAeMQLYmUpOrsL7bIOkePyRRMIj
         5jVhn98Kpu5/OpK9XqXZHozi6vqkipw3dLrRmYHgABfBMCSAEiX/Oy0jEOBXsdqh3kGy
         axRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+KbxPscr0KV67P5oOBM2F5K3yiQmdNXIOhQDoFvyw60=;
        b=A4V/XCyXhYktg4fLhuawT1qcBP8mNIl05BV4Mu7H7nhZ9DRcl6i4M4vsHYuozOC8et
         uydr8PK7ZVMxekgMt+O6OpHR0yJ93PXZ/WAvxqLQO2m1GOvnRtSPgqQlYS3svtloDYsL
         8nJBdYFcVTWUjHCUvXhxHXrIcsA8kVVO44YEDz/+cchOAWzR2KUkWoL+sqGdL+b/jKlC
         b5/Fwig4YyItm8S82TfcUnwBaEmFM7/yiHCyGz5g2FCInL4rqDr4q7PSXfQLd17B9+7a
         Ajc1yx4CjfbOAn8qSYojIZ+UKfPOTHOAzUJipqiyIxlyqkKHbudo8KZxhSJH0u313GvD
         jT6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RzJrrFC0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id u126si1122425ybg.0.2020.06.15.07.31.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 07:31:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id a21so16042564oic.8
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 07:31:08 -0700 (PDT)
X-Received: by 2002:aca:d612:: with SMTP id n18mr8642166oig.46.1592231468028;
        Mon, 15 Jun 2020 07:31:08 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id w127sm880847oiw.39.2020.06.15.07.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 07:31:06 -0700 (PDT)
Date: Mon, 15 Jun 2020 07:31:05 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
	catalin.marinas@arm.com, android-kvm@google.com,
	daniel.kiss@arm.com, tstellar@redhat.com
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200615120223.GC2694@willie-the-truck>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RzJrrFC0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

[+ Tom, the clang 10 release manager]

On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
> On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> > On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
> > 
> > > Here, the switch statement has been replaced by a jump table which we *tail
> > > call* into. The register dump shows we're going to 0xffffd68929392e14:
> > 
> > > ffff800010032e14:       d503233f        paciasp
> > > ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> > > ffff800010032e1c:       910003fd        mov     x29, sp
> > > ffff800010032e20:       aa0803e0        mov     x0, x8
> > > ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> > > ffff800010032e28:       93407c00        sxtw    x0, w0
> > > ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> > > ffff800010032e30:       d50323bf        autiasp
> > > ffff800010032e34:       d65f03c0        ret
> > 
> > > The problem is that the paciasp instruction is not BTYPE-compatible with BR;
> > > it expects to be called with a branch-and-link, and so we panic. I think you
> > > need to emit a 'bti j' here prior to the paciasp.
> > 
> > I checked with our internal teams and they actually ran into this
> > recently with some other code, the patch:
> > 
> >    https://reviews.llvm.org/D81746
> > 
> > ([AArch64] Fix BTI instruction emission) should fix this, it's been
> > reviewed so should be merged shortly.
> 
> Cheers, that's good to hear. Shall we have a guess at the clang release
> that will get the fix, or just disable in-kernel BTI with clang for now?
> 
> Will
> 

This will be in clang 11 for sure. Tom, would it be too late to get this
in to clang 10.0.1? If it is not, I can open a PR.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615143105.GA2283265%40ubuntu-n2-xlarge-x86.
