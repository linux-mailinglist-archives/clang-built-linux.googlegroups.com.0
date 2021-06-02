Return-Path: <clang-built-linux+bncBC53FPW2UIOBBBFH36CQMGQEB7DRBDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 344663992E6
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 20:52:53 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id o5-20020a05651c0505b02900e5a95dd51esf1047420ljp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 11:52:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622659972; cv=pass;
        d=google.com; s=arc-20160816;
        b=CvREEBX6yx5XkfnmTasAbNb72uSVNELLBn0ftlugTuNWBKy9UxEDWKSMFi8MEPk/jx
         XA4L0+EIV0ND6T3ct7LLno6ov3KDCG6bNmeau7ohNAg0iZR7mSyA9wpRVIUPxdC2ehY5
         vKriCO0gTGIqFpKBnlk0U2Ap2+TO0F4kELh6ymr+UWZeAeWI7oFA39s47fOlsEaYtOzR
         Peta50KiLRNXrp4bbcMiBn4a0zsaryw6P7fyy3qf31F3v0MIw4agi82xMPrE2FfGTIiT
         zx2xJJG3rpbdiLv6+QQhjMi9kYwQvb5tMabKJgIocCCm5t9lOeJW/RERRF8L/mhIJjJT
         Cw2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature:dkim-signature;
        bh=rj9aii7kBwjlw9V6vvZp/OtNnhCaQoLnNib5zITwKoU=;
        b=bKGNwR3AKSix+M3/rxzN2TrEoTfXh1r5EK5vBOZuVgUm58gvrzxsu7hasjDiGd+MDL
         e5RVWZDmWK1jFCJmhOC1je0G2mfy3stTWmKqci3oNa96kzz8AjHIHjnSNUeaglVYaA5A
         LRjKRDbWWmhK7+whlJ0w6Vv3e9LJSbwc1o7KFMFLK+dS9bANfyMAhG63Did12TIcyvbS
         potIef+20VOiXIJxb204DRD5ECqtvYSr0LcoTOUJSKrmiFW3srP5x0gZmmpZmf1+1xkp
         Z4n8YHl8b871/UMTcPEljy/N7NHwPnQIyjhCAgmcyaMKZQxd7XdDCPFyjZsz01V9TLuf
         1tKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UqnWFzBL;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rj9aii7kBwjlw9V6vvZp/OtNnhCaQoLnNib5zITwKoU=;
        b=DkYee2JVa7gtSVkCr2szonU7MJduPstP8uNGtjmSCxRZ3vUmQIer5HqWYSHYJEKQre
         Ne9YMUF36hw1chdGPFuuizrkNarIk7VNEyAry3xN1wJyAx84VtmnxpRAW4idIbbx8GDJ
         RiHGH4Tuv+iE1Hu7qkEQF7GgeRuZZ4Ul7M+g5wW5l+6hGFkuED9FG4YHqWVwv6IBp/nB
         KlOk9xc5oGX36avgLhUH4QTwNgUllOb7Tm8Q1yUj/l3smGUyFPZMUhJyHReO2La8yPPy
         SWa2j83EKujwWx5Tt0J/c+IvPDt4mPJF1VPZW9VN0qxjyuwBi2BO3W9AfkwR6gkFxM/4
         HpZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rj9aii7kBwjlw9V6vvZp/OtNnhCaQoLnNib5zITwKoU=;
        b=KhW71/rQfBQJYkwWe3bjZ9VM01waRvl7cO0glbSBXDzp0vvfNqLESVzGnYAsRiM53/
         BIv/L2ZWyrbEBJvaSf16nnyMAcD83qCUoMZ/uje2Hv7gVn42Hgr18cGCynedAvTnlFja
         YHVHYE4UiYDgaelrSNYjGm95XV/eiAHsM0pYzrnn7HqczAJPqQWtlKpOdDVYoW0keQoE
         pXW8PxNJX2PloOp87svHY+IpZVfvSm0Fd7ZgVEEfIhUxBUpSxuccZJV0hiVLNRCCSSR+
         T0V7P8U+G47X8vb27KQYNkrhSRLWETlii/7Hdi3j4jKPNHsSXoqatfMWTSyR51FMof94
         2ejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rj9aii7kBwjlw9V6vvZp/OtNnhCaQoLnNib5zITwKoU=;
        b=JhA1alsj2pO/5mQoSV06iew1pyyRfoqc01S60gNAU8OBZrAIfkODqptSzlHrCdAjYu
         ArxvIcPrwevUNbuCWojn0s3lPWuUJb0Gk8AFCvlfFY8dtvKrE9p6cenJ7CQiCCTyRA4a
         9CyRKdblPtE1B0EKR74csloCDFdOrkDL/zIVcmuKLkfrYeUIb5gVkRBbkevjzemfOeG7
         6SUWs+8kbtgkccjxWh6cAQLuPrRHSmL6aYXwHtsojgd5RjeUjXF1vQZKVqVTVjToDZ9x
         CFs7mPHKPUohbyLAOisIFi5wFXo9dJdCA5jyEk7mbW4hDTwfo1/DZLXjS5VacwPxBptm
         ElfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325o8dx2FD/iXdXRq46U9TGxiZMKpE/NBNARPthaYJWQVnRQqgO
	dWMwylhtbWkbuk73ehAoCGY=
X-Google-Smtp-Source: ABdhPJzw0GPjJzDxgJmqxxdizhXDvK7hSZFznyXwNlqA9TiQxxirGNxB/FYtCkifPTjf9+4zVslgGw==
X-Received: by 2002:a05:6512:3189:: with SMTP id i9mr22882987lfe.89.1622659972781;
        Wed, 02 Jun 2021 11:52:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls706639lfa.0.gmail; Wed, 02
 Jun 2021 11:52:51 -0700 (PDT)
X-Received: by 2002:a05:6512:344f:: with SMTP id j15mr16318290lfr.175.1622659971667;
        Wed, 02 Jun 2021 11:52:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622659971; cv=none;
        d=google.com; s=arc-20160816;
        b=E5tDm3fgow6bB46X5xxE4OTzx8H7Gutw0GTE3pTBLlKeMpOiJ/2D3EXBD0jpqU9LMl
         EpIdJNOrKJmbbCUCwZOIwlTvZbLEwSFnQ7gI4QSzD42SD0EIQAgzFiTQckRNcU+QTkQQ
         q6BM15d6aMls437NkuVSQyu8vg+SiAJvbOor54Qs78vW4kJxxUHamiUjnM1svQX0qBm0
         9bUnCk+I8cuNiD2wXaTDxi3HMi8d8qsuqeYhkXByX/XBac9FBv3BaK08fLFcCRS7duc5
         LprrmTKY20K+A+6MZejtVHoN4uIjC/eAxfuVU5PU1Oo2uf+/zx0TW0ejFuXo+3xm1TlS
         mMrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Xh7dUgz7mefwvCgLTFvf8qdD1zEY7RsCdSbdxugXBkY=;
        b=y/bhLzmDF6IVsGE3YIFgRQAuSa8oGRl4I9+OS4mW8uGSApA50cKhIsYzJl7bSzNDyo
         M0JX9zMBjteopu7bZgl38ixYTygw+HJ8CWe0y9cA0ZdmzUNM9ozxomV+XVDpdnNGihlb
         xVnmh9SV9R3ePd+/8srXheptVgXDJJ8ZnSGHE32008a2mxwIGDbMXscjz1AkH6HoyleH
         9H6SrDI9Yt3Ew5Ye/9SyiHgcASVJT27QaMP+NT4RicC2Eva6N9u6EaAr8OmaO/ft6ymf
         4Dn9B9ILOYDGHa7cppN6cz90JWHzno6CD7OdBc/mp5WkW2fdFFnejy+cOW+O7hXtyz4X
         pusA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UqnWFzBL;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id 81si15053lff.11.2021.06.02.11.52.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 11:52:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id i9so4889289lfe.13
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 11:52:51 -0700 (PDT)
X-Received: by 2002:ac2:51c8:: with SMTP id u8mr12914617lfm.137.1622659971475;
        Wed, 02 Jun 2021 11:52:51 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx7x4ycc2b7s--vdqzfy-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:42b0:76ff:fe23:6d08])
        by smtp.gmail.com with ESMTPSA id p2sm69568lfo.141.2021.06.02.11.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 11:52:50 -0700 (PDT)
From: jarmo.tiitto@gmail.com
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>, Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, morbo@google.com
Subject: Re: [PATCH 1/1] pgo: Fix allocate_node() handling of non-vmlinux nodes.
Date: Wed, 02 Jun 2021 21:52:49 +0300
Message-ID: <2185399.41UrIWHXBM@hyperiorarchmachine>
In-Reply-To: <202106021037.09943A41@keescook>
References: <20210602005702.9650-1-jarmo.tiitto@gmail.com> <20210602005702.9650-2-jarmo.tiitto@gmail.com> <202106021037.09943A41@keescook>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UqnWFzBL;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::130
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
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

Kees Cook wrote keskiviikkona 2. kes=C3=A4kuuta 2021 20.41.28 EEST:
> On Wed, Jun 02, 2021 at 03:57:04AM +0300, Jarmo Tiitto wrote:
> > Currently allocate_node() will reserve nodes even if *p
> > doesn't point into __llvm_prf_data_start - __llvm_prf_data_end
> > range.
> >=20
> > Fix it by checking if p points into vmlinux range
> > and otherwise return NULL.
> >=20
> > Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> > ---
> >  kernel/pgo/instrument.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >=20
> > diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> > index 0e07ee1b17d9..9bca535dfa91 100644
> > --- a/kernel/pgo/instrument.c
> > +++ b/kernel/pgo/instrument.c
> > @@ -55,6 +55,10 @@ void prf_unlock(unsigned long flags)
> >  static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data =
*p,
> >  						 u32 index, u64 value)
> >  {
> > +	/* check if p points into vmlinux. If not, don't allocate. */
> > +	if (p < __llvm_prf_data_start || p >=3D __llvm_prf_data_end)
> > +		return NULL;
>=20
> This should be a tighter check (struct llvm_prf_data has size, so just
> checking for p < __llvm_prf_data_end isn't sufficient. I recommend using
> the memory_contains() helper.
>=20
> And I think this should be louder as it's entirely unexpected right
> now. Perhaps:
>=20
> 	if (WARN_ON_ONCE(!memory_contains(__llvm_prf_data_start,
> 					  __llvm_prf_data_end,
> 					  p, sizeof(*p))))
> 		return NULL;
>=20
> > +
> >  	if (&__llvm_prf_vnds_start[current_node + 1] >=3D __llvm_prf_vnds_end=
)
> >  		return NULL; /* Out of nodes */
> > =20
> > --=20
> > 2.31.1
> >=20
>=20
> --=20
> Kees Cook
>=20


Well, if you do that the WARN_ON_ONCE() will always trigger, unless CONFIG_=
MODULES=3Dn =F0=9F=98=87

This is because 'struct llvm_prf_data *p' argument is expected
(at least I think so) to point into __llvm_prf_data section in vmlinux
and also into each module's own __llvm_prf_data section.

So in the end the compiler supplied pointer is likely correct,
but the current v9 PGO patch attempts to reserve all vnodes
from vmlinux __llvm_prf_vnds section, instead of respective module section.

I think it would be normal to ignore pointers here,
until my module PGO machinery is ready.

But I agree on using memory_contains() for checking if p is within bounds.
I will follow on with v2 of this patch. :-)

-Jarmo



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2185399.41UrIWHXBM%40hyperiorarchmachine.
