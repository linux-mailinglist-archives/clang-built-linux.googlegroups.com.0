Return-Path: <clang-built-linux+bncBCDITI7XW4DRBWPX6D2QKGQEFD3ETUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5351D1D6A
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 20:26:33 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id m11sf81250lfo.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 11:26:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589394393; cv=pass;
        d=google.com; s=arc-20160816;
        b=jjizdIMO/QjU/TTsmubdW7LewVkEw+MAYLqKO13K7TCaoPofPVZ+6FowSrpnhTfBrl
         KSg/Ok0o4YrQ7tbMTjUv+9Z94Wtk0d+x8NGfYLT3kFGgveQY1mbNOXOLLqxLRJ4zyex0
         4km2+LCQvlAyO8H4TtW9soSogzx9hoMuM9tMRAVSswTVR9r4MH67ZuCAnyO0SAOxvDec
         0tsWUVh+9DZ+6r19uzSJYOVXAvsFrVU6mGUbpKeXrd1Su5ZXgFqiKDUafVGImzNqpgmM
         cMR8T8tURLtvOZR+izFwZnrZ9oV2NIe4Y7tvAgiw6dxT6RDF4R6jfohAwu+0PJTy22cz
         s2/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:user-agent:message-id:subject
         :from:cc:to:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=Kt7qqCiUjmFk386wtMsBNpLneHvt38P6rthD6ajsrts=;
        b=Ghm+BSJKebkm/yq8Ttrq+G/jJA5XbzJIQ124DqQKnLRGHOHwNJw04IiKOPCpkU/Cw1
         CRYyWpG11G3f634l0h3Ur6IxNFHCOMhiWCXzhtCnhvD3StQQX/vSwNDPZtJqqSZ2Lr0e
         plo7PXLX4rIWAqFOuW00bcGv8ufe/IyAelJHOOAZYyakclFi6sFEZeCmGkAcYPhAy6GY
         m0zcMRKP30fa5lYsMrWfB7V7X/X68YUJLFRQ94Oj2RKZG6KptrtEXKY7WjTbkEPbgB6m
         PL79/guLDGidgqMXef/6r2AKPw8j4PGtGrZp89e3nF9q6IhBivNAO33ls2ZXmvnia8hi
         XS5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:to:cc:from:subject
         :message-id:user-agent:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kt7qqCiUjmFk386wtMsBNpLneHvt38P6rthD6ajsrts=;
        b=b87lEqL29tp3M9KmwA40yaXgeo9rkGYKDzw53NC6ATbHBc7yWbfV+3AUskkEt6Jxrk
         SjurzlbrpwghasrIr86BLEImcEsV2sk1AhNMRvoSikBGwlL6p0V1a/B1i2GGdJfJYxvq
         NueYGbgh9LScQgwCAzh65RQSVkTTpX6UayVHLZc6sUrrosjujsVfCbY4b5gZGPx7nqKA
         b9VFpYoz6SATY6T0RXHg3Fy5Bzd8MIPrVACI0fw+h1KDZO5TWbGKLj4ALdn7tqiC31yA
         569oYz0T+EQnjmonbIE2qJuLULVrP2GzR67YXNdIfpKOJJ5YHaeAFi7YKBz9/SGiysaU
         WiJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:to:cc
         :from:subject:message-id:user-agent:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kt7qqCiUjmFk386wtMsBNpLneHvt38P6rthD6ajsrts=;
        b=QfEBDt0IFRyfL/xSFlKzJ5IP/7WaHbK3vbTTLXsHAkjF/patZh/tP8WHautX+SHIyd
         ICn2Qm17SI0FufnPiZDnwC0KmBlWY1HKJ1cITkZckIndiV9EHWpCIpK47WZtMukufbwm
         pFk+thMfd67IiPz7UUhCHS1miLncplEo6BuZ00kST5pHL/DS9d2ZULXb+/+eMqfA/vbG
         W6cCgKsZgdRQ7OZJVfFZwAN49Sj1XspvO4GQvdprC1/UBNgnCfPtgeoJMAwccjnd5YpP
         oCwaANuotJ5Mz2fk5vvUmjOaorQNoyL+5RvSNTftkH8Bo6KFi/ONlsjUPqeD6177nCs4
         R3og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CuU25z9iqvL2K/f6VJoqYf96TThC7Z0zJkHA3kRgHbgRMQcm0
	ogrxcap8Tg5u8otuZK0WhZY=
X-Google-Smtp-Source: ABdhPJy2QCtBPW1G8dPpyya87F0/Hf1l8OO5+u0WK6UdyV7XYrMa0i1j7OPQV3kP2PkceQoWVs/XVQ==
X-Received: by 2002:a19:8d3:: with SMTP id 202mr497337lfi.201.1589394393278;
        Wed, 13 May 2020 11:26:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4566:: with SMTP id k6ls51168lfm.6.gmail; Wed, 13 May
 2020 11:26:32 -0700 (PDT)
X-Received: by 2002:a05:6512:3384:: with SMTP id h4mr536081lfg.150.1589394392728;
        Wed, 13 May 2020 11:26:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589394392; cv=none;
        d=google.com; s=arc-20160816;
        b=NKBrwRw+FAqLOpIa+PuTI6WeqWLu99JpPgCcwoqPZwbDO++K8k+Xe6bK3HHca3wANS
         fPK7udf6RcJf6cOaLmXrYrtRu74GREClV9DBgSU7yQAHi7n/dCt1hWY6D/2uApLJSSGj
         rH+AU9aEH5n89T4dQCnAgEjfpvtnPjPuY+H92TZdYVaWBMHYKc2Eoe+xsKhVUW5oIZHp
         ip8K7q2+HCRvf+x7nKvZ8S/H2W0hWj4BqRmSqHLBBw1P/KvRucs9anMMFAjx6wlBhJ3a
         c6//g+eWKOklaGvftaYaAxfucw5Cg4qYZ+1JU7hnZQd89XrnZl2o3yjWKTvZqlxCNYv4
         0gQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:user-agent:message-id:subject:from:cc:to:references
         :in-reply-to:content-transfer-encoding:mime-version;
        bh=+PqhfXAf9X2GIvSUai0x3I6kCb8xdg0z5Af3IITl8k0=;
        b=t0FoEfYOVqiw6wFkzKccujn2+s1qNez4Yf63ImUmyM926mVRnGLBwMuJNCLTYUfrsa
         I9H5Lrz09Gj+RJu3czPuo0e9Z8hltIdjJ5xb2SC3RzlmhuuUPPtIJmhwVR5Z4jPa0B4y
         21Rxj0ZLdfqDVKDb1SAXlZAB28uqrI3SvyfPAYNllvKWPKsoSeFBr7P9DiFFLQOR6i8W
         BD/jEXGfNwyBbHYqVj1wpAaPxIhmHS2EU/n4Hygaro83+Ky68yrrykIjAlQsAWUzXupt
         PG0mAqbbRAwrg/ww71pULLoy7BWtnKMH6xot8Ci1fZFBxp/Sm5SPxeAo0xSgDP8eubbS
         Qkpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id d19si31600lji.3.2020.05.13.11.26.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 May 2020 11:26:30 -0700 (PDT)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 21191037-1500050 
	for multiple; Wed, 13 May 2020 19:26:10 +0100
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200513182340.3968668-1-natechancellor@gmail.com>
References: <20200513182340.3968668-1-natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Nathan Chancellor <natechancellor@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>, kbuild test robot <lkp@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [PATCH] drm/i915: Remove duplicate inline specifier on write_pte
Message-ID: <158939436821.29850.17450210375327657946@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 13 May 2020 19:26:08 +0100
X-Original-Sender: chris@chris-wilson.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 109.228.58.192 is neither permitted nor denied by best guess
 record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
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

Quoting Nathan Chancellor (2020-05-13 19:23:40)
> When building with clang:
> 
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c:392:24: warning: duplicate
>  'inline' declaration specifier [-Wduplicate-decl-specifier]
>  declaration specifier [-Wduplicate-decl-specifier]
>  static __always_inline inline void
>                         ^
>  include/linux/compiler_types.h:138:16: note: expanded from macro
>  'inline'
>  #define inline inline __gnu_inline __inline_maybe_unused notrace
>                 ^
>  1 warning generated.
> 
> __always_inline is defined as 'inline __attribute__((__always_inline))'
> so we do not need to specify it twice.
> 
> Fixes: 84eac0c65940 ("drm/i915/gt: Force pte cacheline to main memory")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1024
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

I forgot to ping Mika about this,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158939436821.29850.17450210375327657946%40build.alporthouse.com.
