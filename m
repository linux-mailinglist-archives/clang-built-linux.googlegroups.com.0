Return-Path: <clang-built-linux+bncBAABBZWXSWAAMGQEHDVOFWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC862F9D93
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 12:07:19 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id d7sf16728058qkb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 03:07:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610968038; cv=pass;
        d=google.com; s=arc-20160816;
        b=nGJZzD/orP2J1+ZKE77EIWPt/cvzIZNcvniYLgb3c4Mo+Yo80pydSAwgVJ1cR25Ans
         b7RntRSHF06zdFXadMBcMDtD6FKGxza97BEjscY6pPBVbudtfsAJwRWdf68qOI0nSU8s
         0fbkpPGZhhASW6L+ukbzv491I+DJC13Kud94RSus5+0vUUVIZVsTu8PGazUAnjxaErW/
         4AAs59RTFvPgU1/C/mOlf2b1LPYFiXhpcltgTc5ZyQUukh2yNi3LRngotIUz1uD5CmQe
         ET8hXDd4hdu7ravvZsy3Vn/jsckK8hsGcolrpy1zdfSmfrw7PKdoHevhGzQdfB1cxXva
         Ze+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cCsMperOxypnCkD8QzpiLtDvofa5keTKw6bsG/+Zflo=;
        b=xdovBEiBDWWVL6Zt11eOPEO1hCGxPbflLsTNtIclQVtyKoznUkUQO//w6t2v9v5fQU
         agr2CvKT2XFl4Y/74jheUfeB+wBWTQSFmymICP9//CpIbAG6JDGkGGONHnnf+PtcM7ND
         x4VHKRFcAaMjW4n4j1XGnGZjMG6IdPoWrL2S7MA11ef7U1G4Ip40ZN85lpBZ4bJBIXAi
         KTLu0jSAEoJSmN0RiUfmrA70ugriXXUfmfIvNCFPC3pwJmmRN94QOwp8oR6iO8rhdQ0o
         rCgG6IuosL5lMkcglphSM9s03W/wPddpRqSyXR1KaxOqfw1iTcQX5T0z3ZK8qFE/FlrO
         CW+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aTncI8ZU;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cCsMperOxypnCkD8QzpiLtDvofa5keTKw6bsG/+Zflo=;
        b=VUWzho/LC2rPSDcgd0ENz2luR2qMizhfFOniKux0Su2zz8KTkROV9eQIp7lsvZts8p
         Y7dhlAQcw4gbm90aXDZe2Sai4p92Xj4AlUSHm6kuWkgxwT3R1OGci+IFUZq8PUHKIYf8
         LRF4hh+IaRy2XHVYG9xLjr9hqIKvtpwnfKAWGpEE7r2Sltz55krHqJBP5ccgbYIr9DI1
         tGYHjA2fRs5FChRRkamTO7Ps/5/FQp+/srW6NxtrItabclUc30Z64teh4REnuH6hciNm
         Q/u2xCjug+ptV2Myxe2q8c13jtT23urfJyrnHhzYBvBr7oyGVi0TT2FbcS+04bLYurp3
         hv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cCsMperOxypnCkD8QzpiLtDvofa5keTKw6bsG/+Zflo=;
        b=pk1Swiq0D75pZHSXIBCdX3gTh7Tllu3+cfwp/qr2fjnrMCBbAAXbA6DhUxqVxdjiiI
         LCgld20B/BJep1mDJM6TUYJNXczRUROpPXXhXNs0frQhuuTWdtzI4J3BPTJvHqze/cTT
         mUxfR6aI2Ee/PbqH4B61yl1qkEoue8HEjHWLUEoIUWpNJXgOQ/c6jL135hTdo1gaDTf2
         VpinuBgZH3giSrWdb63vIgCNaQ6QYfw8E7x8I4Pmtyausqo1baQ+oVCibQhYAulCCmlM
         ggT7Chkwtry9b42kHNcMRbuW5xd8mezmOuR4p8ypInmGuGKTne0S3ryTTREUiQNfh1A0
         wGSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316HtpKYstWpVQ+aojnAWezOyUfUk3oNLUZpqV9Xuvoc1ytsrvd
	HB3fEkNZmKBXQBd2GL2hQ/g=
X-Google-Smtp-Source: ABdhPJx5p/KetBTseLHLO4QPPS/wnpXBv+VoVNJVLSMVoGJM5GsGEywNcb3w3R6XbKve/0f0YtNVZQ==
X-Received: by 2002:a05:622a:149:: with SMTP id v9mr13965071qtw.50.1610968038129;
        Mon, 18 Jan 2021 03:07:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1001:: with SMTP id z1ls3219199qti.4.gmail; Mon, 18 Jan
 2021 03:07:17 -0800 (PST)
X-Received: by 2002:ac8:4e51:: with SMTP id e17mr10842207qtw.121.1610968037842;
        Mon, 18 Jan 2021 03:07:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610968037; cv=none;
        d=google.com; s=arc-20160816;
        b=ByOP0GhrgsQ2lD/8qcD8mGmNnX3AeGBu1A9/J4HLQoKVLmRvQ69xhhJgFGDRk145IS
         YYkS2E0hD9vDd2C6BzEHWX9hcAC/3JU+yLi3qVVMAW/H4Cdjaho5YhcAFm5y0EREZQ6P
         1cyqhgQ1zvBdbK0g/ADEO4yVqXmG4md5S2nJrIg+ODpBt5Vg3TgRggEmEgdN2EZbKKl2
         b2tS0EoSc/tpBQIZyztT4o3RFTHRQj/D8wuflmLxzQf3aQUsDF70o07/gWcFVc58/D9w
         ojHj3VkCgGrk2r7/PC66Xfdz1PM/7T3mszxGncGXnz0URb0Q6CwrozyodGoLUBHqUMXL
         E7kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mUGhrPm99MebATcyqpZOmAZkaBWoTOO8/2GhpBLWMTc=;
        b=Arfbv/fiyy9l+u1dmXuTBZIuCMmB3ZzhwaV0YG7KE1U5WyJYw5Jf6q8gGmFkQHGKC5
         VnnmViOquiSMhxNLYa2lKHaoiw277Kmj+6Og125MSYOcA1w2L7nAA8rRWMYHlpE4Z6h/
         UPuHvrCiGmnKseeDGMxjr11hHfo9p8gBXNP/r3BehzGwwQpLHYfg+vEJ+0516WBu6IVR
         SzbwXoJPTxFnbp1YGnqfIaqZugi7NDMw0URgxTaGNXRAlKnMFJDvxutx5LB8AuzjJZgr
         ZNT7+Rj/SgDm8JQWSFWqIg2nUyh5TSD8mj+T3tN6S1bNL9t7pSEfI+Kj+6vvkut15Fcn
         U+1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aTncI8ZU;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n18si1191405qkk.7.2021.01.18.03.07.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 03:07:17 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8FBD5229CA
	for <clang-built-linux@googlegroups.com>; Mon, 18 Jan 2021 11:07:16 +0000 (UTC)
Received: by mail-oo1-f51.google.com with SMTP id s19so4008792oos.2
        for <clang-built-linux@googlegroups.com>; Mon, 18 Jan 2021 03:07:16 -0800 (PST)
X-Received: by 2002:a4a:9c01:: with SMTP id y1mr16559894ooj.15.1610968035764;
 Mon, 18 Jan 2021 03:07:15 -0800 (PST)
MIME-Version: 1.0
References: <20210118105557.186614-1-adrian.ratiu@collabora.com> <20210118105557.186614-2-adrian.ratiu@collabora.com>
In-Reply-To: <20210118105557.186614-2-adrian.ratiu@collabora.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 18 Jan 2021 12:06:59 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3dDgbppAB3Bm2iJA7LOqRvHZew1_e-yE1R=9mS4W4xjQ@mail.gmail.com>
Message-ID: <CAK8P3a3dDgbppAB3Bm2iJA7LOqRvHZew1_e-yE1R=9mS4W4xjQ@mail.gmail.com>
Subject: Re: [PATCH v3 RESEND 1/2] arm: lib: xor-neon: remove unnecessary GCC
 < 4.6 warning
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aTncI8ZU;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Jan 18, 2021 at 11:56 AM Adrian Ratiu
<adrian.ratiu@collabora.com> wrote:
>
> From: Nathan Chancellor <natechancellor@gmail.com>
>
> Drop warning because kernel now requires GCC >= v4.9 after
> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
> and clarify that -ftree-vectorize now always needs enabling
> for GCC by directly testing the presence of CONFIG_CC_IS_GCC.
>
> Another reason to remove the warning is that Clang exposes
> itself as GCC < 4.6 so it triggers the warning about GCC
> which doesn't make much sense and risks misleading users.
>
> As a side-note remark, -fttree-vectorize is on by default in
> Clang, but it currently does not work (see linked issues).
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/496
> Link: https://github.com/ClangBuiltLinux/linux/issues/503
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

Shouldn't there be a check for whatever minimum version of clang
produces optimized code now? As I understand it, the warning
was originally meant to complain about both old gcc and any
version of clang, while waiting for a new version of clang to
produce vectorized code.

Has that happened now?

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3dDgbppAB3Bm2iJA7LOqRvHZew1_e-yE1R%3D9mS4W4xjQ%40mail.gmail.com.
