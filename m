Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBJ4HSCCQMGQEKK57WWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id F06C2387F51
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 20:12:56 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id w12-20020a17090a528cb029015d7f990752sf2289044pjh.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 11:12:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621361575; cv=pass;
        d=google.com; s=arc-20160816;
        b=V+lXFQio5c68RQ0I9khYLEJygwEVY9AVPQJTRTzudrzDxWdkIR77GErtMzbEPGBwwC
         VKBEs4CEqINBQsQmb6391eiY4SlSx+3Og0R5OOP6+ctGAl6jmEoSDPJvhivukQ9CbBU6
         k0S3PwOr7RLXGwFdcRp87d7Ud48Ce434OlP7Ly9CQxmEEXoZrF4C4CZJgsZD2+XQfozg
         XNy0FqpAc4qnIusSTUieIEJou+hCVvKWO6nI0qfCuDJUCVP6hRwPiupqV/njITUZfY7r
         U7m8TuEL/m3ovTopOo53pzWvLfoeVR5V0w/Gll+NqO1dw+LVARVKjhBPcqhGF4T6lwaO
         X6Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=IPN6LQ4oxWSXiXPEeV7jkM4y0AqKJ+ARtvmQEJxf0fE=;
        b=V4WWWvMsVn4x6Om6fDAY2gDLgq8vAffqRoj1ALJqMItRKO27WOP/5gYTFtrLm9VJXp
         X8ZxCCLsi5us9t4Fz4EYFvWm23ZKXvEgZkqeJPQDjyIPIgEHrY127bYQ2NP7h5kjjIED
         /8cI/9vV0HijYzOO5kirQIQf8yHpGaS+pKpgUpbSjsfBqmf/JVBc2M+l3Vd9MtC4DzXc
         Ymm/WUWDyTQ+2AGnidmU8EdN5/jMH+G/4IeV0TlHp35I40yGID/dEIEUgUSChqWEHuYu
         Ftptp5+6SBr5hn+9rlIV0sZiEVKCNKpLiPpBMmRnSf+OdYxzcpKDL92Peae8ffYzbRgJ
         2TSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mF2+K3rb;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IPN6LQ4oxWSXiXPEeV7jkM4y0AqKJ+ARtvmQEJxf0fE=;
        b=s6WBx0QeREBv2xFXiBhCjJolpMmOY+Ho2jjsOcICKJsYPViVsHKYdFz7EwT2vwc+S9
         cvj3XuJTvcnU3aur9JQbevS1lpHHDO7l2bTPPUhoKr3xN6GRAkDkC4pOSeepxYYnqdHC
         ENnPfDK/bRLzgqEyHkVCzMqMF20HxCsf3zbPK7vo5Ikh3SW/OOZ4u1mZB3w7G8PM9B4g
         9uLDsaLp6Q5ShzKj/OUxDrsqda6qSp7XUzVY3Cf9DUMIjx7Oojr9LyKgFEUDV9KQ4E8H
         UvzyKXBqWGgCVeXjG9XvTx3u/X+wC9zMbHKPpNjci7LhKjIO5wiasn255CI8FM0mFha3
         nojA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IPN6LQ4oxWSXiXPEeV7jkM4y0AqKJ+ARtvmQEJxf0fE=;
        b=LyKMvnCQspIDNIG88FDfFQUnfFDUnMT9ozfIvU/86ppKHASZdYSgVIurW3DVBzvHpE
         Gc1con8u4R9OF05uBsODF83USf6zxiclaVsAx3Xm4Zs11EGjsbzDISG2d+A3opuaCejA
         /M0mEBV0gGwd5n0NZQ90XDkGkXVjcaEo4Et3WlYKnP9VpmdNXn4JiEzAWNRPKwH1i4eR
         BQNhKMZNRxCRvjsu27KE04DsKkWpXeiIDUx9LbdOQfImgIf7vBzZM1tzZSVKolnEQzxd
         /GcgDkWG2wcBMIdnD+ESuxy9dTC1q46HhL/mvXF9Q1+AE42wfDcDWNvQiUiKwZ4yzk+o
         yTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IPN6LQ4oxWSXiXPEeV7jkM4y0AqKJ+ARtvmQEJxf0fE=;
        b=dCxl4+RxDdDBKlsgFtg05mD3CwyKGMdZ6JemM0oaIKOHax4kJGKeUNCxOJQMroRR4J
         13eWmjFZTp+sEIO9XoqexdRlHcBPFcHZqXeH5nc7eOEeG4fcaCnLXmaRzbkVJeirAfy2
         xmMiCkTgMb5ATB3bWVMVT+3X7n3PNfsxtjTDHLuTybKj69Cayflq6XGz3GUqX5FSpqY8
         izyqJYWcrPeyRrIiN5PmWeh/MSCo8fOYh1EZbqznv1rCG4Jf9gj0vnlQKlhUjTBI2DRZ
         6u/DC9g0e8a+oLyLfqLJdxfnOAfhRDntpZIPiQ/lHlLUeq8YKqXhwnwec/tyupNvFl70
         sbvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530T33pP7gJGuJfySVPUF8Ds/twWasAEEu18gmDtjXEsdNEGdEGD
	++xvoOs+7Luv53BkFlWNUD0=
X-Google-Smtp-Source: ABdhPJzTB1TpiLVxhcYBtulmv6AwFfpqbA92uz0c3i6q5UkeacvxrHQjNqfhk5jPfVNLX/Zv4t3HUA==
X-Received: by 2002:a62:e10e:0:b029:2db:32e7:403f with SMTP id q14-20020a62e10e0000b02902db32e7403fmr6486311pfh.61.1621361575579;
        Tue, 18 May 2021 11:12:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8e19:: with SMTP id c25ls8430678pfr.6.gmail; Tue, 18 May
 2021 11:12:55 -0700 (PDT)
X-Received: by 2002:a65:6103:: with SMTP id z3mr6279040pgu.61.1621361574955;
        Tue, 18 May 2021 11:12:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621361574; cv=none;
        d=google.com; s=arc-20160816;
        b=lVrljxBliA3gM6+pRnupLnABcUEdK24cwjyF5dnwgXKlKnnU/4IN9W10AmnuS8UsF0
         jgZ1O7oe4xoZhENv8FQM1zIdknAxgApvg31jH8m51w+mnyQn9K0f08HopCdUUTShA1jK
         KF8o2kuAm9+/A+/viNM26s3RjFkE+ngnnxO/fFrFVTdzZX9UpdhAXRg1gJb1LGwQ+4XN
         7xUkgfM7WRV52sNsJrPAfYxLxu12ioTHfNxQLSRHickLX3NC34k3+xqw4xGduFyT3nsK
         ZgmHG0YGywW6tyAxTyeK9pjqZH0NDfZwSmuyCzn6TNlfZeMdwTByFs+iT+P1q9x2n020
         uBLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=9UF6JPc9kDNTRCs7ffieF/jBad0EDQKUws2Yd0IxgKo=;
        b=s+rJYQsncqKKe9XDHeqCpIRyHf1ZfwRtq+pWVUnBDHdkLhzlVa/11FAzEXEzi9L6n2
         NPwAkJ5S2cv1SooLQsjqQ+URSFo2SnxGdLXqEfkJLVDnZPMdDgOAVIWSZg6RGf/rI6pA
         /v00iEHoqaht0ukoaSNPSU23kCy15hSsdfaJoqZ9eFmELygEGPHBslGUoMyWKCJQzxRe
         Y/v58F0L6jaB67CGC0MJYhaxMo3sHd2xtv9tOJyd9q692W3l2EMSS+gReT1rAf4VWZz4
         vQ8F1TptTrYSPshX8/i9YehOaLL97vF1+avvZUOvxj136SEdm4lNIjEU4zpIGLF+DIpv
         hd+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mF2+K3rb;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id n21si1558374pjq.1.2021.05.18.11.12.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 11:12:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id m190so7603304pga.2
        for <clang-built-linux@googlegroups.com>; Tue, 18 May 2021 11:12:54 -0700 (PDT)
X-Received: by 2002:a63:4145:: with SMTP id o66mr6395237pga.4.1621361574683;
        Tue, 18 May 2021 11:12:54 -0700 (PDT)
Received: from hyeyoo ([183.99.11.150])
        by smtp.gmail.com with ESMTPSA id gz18sm2463721pjb.19.2021.05.18.11.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 11:12:54 -0700 (PDT)
Date: Wed, 19 May 2021 03:12:47 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Naresh Kamboju <naresh.kamboju@linaro.org>
Subject: [PATCH] mm, slub: Fix support for clang 10
Message-ID: <20210518181247.GA10062@hyeyoo>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mF2+K3rb;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::535
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

Previously in 'commit ff3daafe3fd3 ("mm, slub: change run-time assertion
in kmalloc_index() to compile-time")', changed kmalloc_index's run-time
assertion to compile-time assertion.

But clang 10 has a bug misevaluating __builtin_constant_p() as true,
making it unable to compile. This bug was fixed in clang 11.

To support clang 10, introduce a macro to do run-time assertion if clang
version is less than 11, even if the size is constant. Might revert this
commit later if we choose not to support clang 10.

Fixes: ff3daafe3fd3 ("mm, slub: change run-time assertion in kmalloc_index() to compile-time")
Link: https://lore.kernel.org/r/CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com/
Link: https://lkml.org/lkml/2021/5/11/872
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Hyeonggon Yoo <42.hyeyoo@gmail.com>
---
 include/linux/slab.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 9d316aac0aba..8d8dd8571261 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -413,7 +413,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
 	if (size <=  16 * 1024 * 1024) return 24;
 	if (size <=  32 * 1024 * 1024) return 25;
 
-	if (size_is_constant)
+	if ((IS_ENABLED(CONFIG_CC_IS_GCC) || CONFIG_CLANG_VERSION >= 110000) && size_is_constant)
 		BUILD_BUG_ON_MSG(1, "unexpected size in kmalloc_index()");
 	else
 		BUG();
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518181247.GA10062%40hyeyoo.
