Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUOL6KEAMGQEQEWRPWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7360E3EFBE5
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:16:50 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id q14-20020a4ae64e0000b02902873597a59bsf486640oot.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:16:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267409; cv=pass;
        d=google.com; s=arc-20160816;
        b=LhLBVmcjHvjCR29E+L997uKj3ff9sFGQeNVihhiEKU5CjfOWdr/X77oDqQssUYVgLW
         0pSKVN2+SvIOZj4TPbCEdF/qkOYFovK2OoyIMi4Gvw3vysFE1Mq0FrJpOfK6xg2/y13U
         /UdMU9kcfHzq/2B55aRtuLlUh7cqs3PTIbIHYL/srI3g1+xnnJSbS2el14nxJ/GVUTHE
         816TsLlxmZ6Yyp8liYaB/QHcAfcq3K5qOb5vts1bSHXCjv5y7I6WkOagVE2Ckt7pMIel
         yiF90MrDjDKfDtMYWz6Y/QD3hDe1x/7/QMfQnHkbomAEIy+DQRZSKxUEu+uSMZxMVgTX
         sCTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=QR2qz9bTu2Ml1EXoAfd18BMa+BhIXBosLCBaQZ54DBk=;
        b=Htd2oyB6nATEFWviVw9M7WrmTz+qifRcRU8sfhLp1U3EMRYthgJopLjRiQiqoQSHo6
         KM0iYA/YwNURuhqY/zNuTpsJed9caPG2k+ltpQbAwdHL2Na6ymz7AYvEDiruCGGcHSW5
         GC/+eYKI5ySjv6m39Dy2U7iKESkhdcfPPJX9qBcboONA+LEVlstjZTCq3VjsaubEQaoN
         qgclbURvaIzjfjoNU5sqkJfWv3eadbX65yL9f+IbZDP3dTPA7mwWgTZ8wqPf8mFSsFrM
         Oq39T5eVSl6PphQyBOpKo8tRI+6kfP3A1gw1RXOJOGFhsQpS7dCjrS+Zsdof7jbA/U7O
         j+ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TVddYFx6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QR2qz9bTu2Ml1EXoAfd18BMa+BhIXBosLCBaQZ54DBk=;
        b=cMf7spobD3hIN+ni3ZuxXDDNABknoLCtEjxbzBvGM+U8sM+JbHPVbLeFKIofY+xL0Z
         +g8FzEJvUC9jCIZ6Gam5ypLfpIL+cLOrIhgdc0fpO66ySYgoVOL/mII0oDW0kDiLVlmJ
         JEymlAE1xTRSRqZd/aVH2KFrXraV3P8+fclgPR/C/KjyUTBFLyTkV39uFZNlvbH0B695
         r/UKtEA6m4eTbKKgKoj5CDloUQcT8I765K17eYaJi2qccRqyQdk2nX9KZJ2w4I++kWK+
         kOEwpDx0o50/d2QOUVylq4a9MTJ9sDrfBjErrvsCZ5mj4+xX7TcprocIxjIBjuM76B3G
         alwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QR2qz9bTu2Ml1EXoAfd18BMa+BhIXBosLCBaQZ54DBk=;
        b=ILY+NH6vT2XaPv6hxpNVUQpAgGHsM/t77AlrD3t0sUPYa/yqrkxP9GLAQkQjkdO+Og
         I5K03bguGWJdn52zsQcY7X8C74F2fOWepu1ZA8fYaxbqbY5+kdptfhHVaBnXpp+2pLbL
         xBNGl+U1ov9QDFv86rH1SrYuK3MkpRBgiYVD47TWfAGR3+AAuH59rm8vx9+xHOzSL1HO
         VPRgLk6YXfJ4pLNm91Z4/qw4ogfOPmRBCB11PIGnK47v5erztgLM1hvQ6eqWiNbaNCuj
         2t7GIgmp/zhcNBfpad7Q0RccVHlyxmM6k4Vy39+wmsffp80MvAtgYa8ivSchEcf7lVbt
         CElw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vAep9y5jT1GL3cALesdvPtnq6EKt2CSnteLh9xj03alLCuIXM
	Zx+VArGc8yq/FCDomoTZ1Ts=
X-Google-Smtp-Source: ABdhPJzTug5BKWlfuUaknGsQHizugno52w73AeMNwLL4vdgs3QDsi6M5zYPEVFmN6gDGMo81nQdD7A==
X-Received: by 2002:a54:4189:: with SMTP id 9mr5524584oiy.45.1629267409514;
        Tue, 17 Aug 2021 23:16:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a01:: with SMTP id v1ls303416oth.3.gmail; Tue, 17 Aug
 2021 23:16:49 -0700 (PDT)
X-Received: by 2002:a9d:12b5:: with SMTP id g50mr5579923otg.224.1629267409149;
        Tue, 17 Aug 2021 23:16:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267409; cv=none;
        d=google.com; s=arc-20160816;
        b=b5KOmvSiZDFvFYGcTaP5BtTY6BY11lDj0Hh37X6Bkj9DdD2dTQSWUq9E8Q32FTO71x
         MJpy3stTfpRwrSoj0AjBpZ3FlYbRwAUmKTdrBHrG6dAIKytFKQ35taEvveY/+U6R8bRs
         dS00d+6MoPZcrB9699e73GFztrVf06vlMWvfZnNQRIULcK2dwDiP2CpmDBxwMNtZj4OY
         lTdClS6BrojAEhglj/4lO9nA/Ed7m35IrCALvR/9pJgQAohqDWl56nYevIE3OqqmQKiH
         ICWBdi46I6PVCxB0CcVcSYi+NJ2scjTVJUbsazRUKXrNnYG2rGX4xXCKXKTwa1DDUyp6
         qpJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=qiIiGr/kHO0o1yd85XRx1S/oZrG0a2JVuYsGSPTdPKo=;
        b=YlV1/B3zEljN6kRK/Vzg16qXiyJCdczo/LF+n6t4pZyBtQ/ImVhTXf7ILh/UckbcdD
         NP5tEorQPUp++Qc6DFXoJ8YuUDgF5sIbZMKy9AXg0QTpgjeAdnT9uGz1pTb86hXStKDj
         mICDZ8HEHnkYnmxCCjrHh6k+0I8S0HoKVZ4FS55iAgAVBK8GEOIiPLM7VQfuIPolwCHz
         6sDpqtXFMyvU9R62+AR7f2dObCR/f4FCklIgTsow4YCUvfpzkH93BPv/GIqCBIeEHdTy
         3VVesx2CDFBTS+xTTc6hETNI/P2921/+WgwnPZkkY4F0Fp9SxZaOGel8X79KjWvH58gC
         x5qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TVddYFx6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id d16si319485otu.4.2021.08.17.23.16.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:16:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id k19so1092085pfc.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:16:49 -0700 (PDT)
X-Received: by 2002:a63:5fcc:: with SMTP id t195mr7237993pgb.146.1629267408588;
        Tue, 17 Aug 2021 23:16:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l11sm4943382pfd.187.2021.08.17.23.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:16:48 -0700 (PDT)
Date: Tue, 17 Aug 2021 23:16:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Cc: linux-kernel@vger.kernel.org, Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 2/5] slab: Add __alloc_size attributes for better bounds
 checking
Message-ID: <202108172312.7032A3E@keescook>
References: <20210818050841.2226600-1-keescook@chromium.org>
 <20210818050841.2226600-3-keescook@chromium.org>
 <f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel@perches.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TVddYFx6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Aug 17, 2021 at 10:31:32PM -0700, Joe Perches wrote:
> On Tue, 2021-08-17 at 22:08 -0700, Kees Cook wrote:
> > As already done in GrapheneOS, add the __alloc_size attribute for
> > regular kmalloc interfaces, to provide additional hinting for better
> > bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> > optimizations.
> []
> > diff --git a/include/linux/slab.h b/include/linux/slab.h
> []
> > @@ -181,7 +181,7 @@ int kmem_cache_shrink(struct kmem_cache *);
> > =C2=A0/*
> > =C2=A0=C2=A0* Common kmalloc functions provided by all allocators
> > =C2=A0=C2=A0*/
> > -void * __must_check krealloc(const void *, size_t, gfp_t);
> > +void * __must_check krealloc(const void *, size_t, gfp_t) __alloc_size=
(2);
>=20
> I suggest the __alloc_size attribute be placed at the beginning of the
> function declaration to be more similar to the common __printf attribute
> location uses.

Yeah, any consistent ordering suggestions are welcome here; thank you!
These declarations were all over the place, and trying to follow each
slightly different existing style made my eyes hurt. :)

> __alloc_size(2)
> void * __must_check krealloc(const void *, size_t, gfp_t);
>=20
> I really prefer the __must_check to be with the other attribute and that
> function declarations have argument names too like:
>=20
> __alloc_size(2) __must_check
> void *krealloc(const void *ptr, size_t size, gfp_t gfp);

I'm happy with whatever makes the most sense.

> but there are a _lot_ of placement of __must_check after the return type
>=20
> Lastly __alloc_size should probably be added to checkpatch

Oh, yes! Thanks for the reminder.

> Maybe:
> ---
>  scripts/checkpatch.pl | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 161ce7fe5d1e5..1a166b5cf3447 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -489,7 +489,8 @@ our $Attribute	=3D qr{
>  			____cacheline_aligned|
>  			____cacheline_aligned_in_smp|
>  			____cacheline_internodealigned_in_smp|
> -			__weak
> +			__weak|
> +			__alloc_size\s*\(\s*\d+\s*(?:,\s*d+\s*){0,5}\)

Why the "{0,5}" bit here? I was expecting just "?". (i.e. it can have
either 1 or 2 arguments.)

>  		  }x;
>  our $Modifier;
>  our $Inline	=3D qr{inline|__always_inline|noinline|__inline|__inline__};
>=20
>=20

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108172312.7032A3E%40keescook.
