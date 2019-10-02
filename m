Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHFL2PWAKGQENNPOW4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C89C8EF8
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 18:51:41 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id t14sf9648615otd.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 09:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570035100; cv=pass;
        d=google.com; s=arc-20160816;
        b=YmD+BA62/BoP/awB2oOqx/xtYzE6cjJskBpwRD05wtUNaVWMUdm1MGc+Dp/o0Pc+yV
         UChiDTkt1amxDY29pVpjLvyDdu+ZswNn0O3tBjWiw4pN5SkvK1S94sEFRLMg2JyT9osI
         /dcI/Tzoki1OUwae3Q8lCPtMafpM2sS/Xt181JnA95AC7BwHT0VbhTRVeczr3nPwIYzM
         TSQu0fC7FlCoZJXqdF5/6T5vdRB6N+BgT9Z7/mLkiATm2gNtbPOq/nm+FYQRkGIBJJ50
         4CsQ2qOLXD+Whocr0UhPTI3ctxCGWA+hoNzyqHYIf3p1ifGGXFcCmYTD1MM/YuhNcqlp
         hRSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=+i0HdhNNVNK8WO0G14BzYx2sW8FqUHt8VXXj7EdKymY=;
        b=gPaIE4/94ydq6h4b4mvma2vuHBjuaeL3vBbbD0g20R0uThxIJHqzlV2BGwVPvpoA9T
         4MkCdjYsL7/3mqjVnLFk6+FrSbExS+Tp47wSLMuqSL9dTJPYQLhsN/x9TA1QFzdHdiRT
         YZCeMUmzCaPSMa/UOMGjMWjPPFzQIKj3z3PZg3Xy4/zrV6GLPNiwCviankUzZIsx5LoM
         efV1tYHSfGoBx1b5Pd4MOXNOwVxbi7n6w0Nkk03wGNmrp71yvnr0MM0RTsLZdVU45c10
         5HWRf5FSsWb72Yv26MEeazYiQ5+WPWgB0ZHD9KkKKIufBfbtbcBaNkLQNa//02eHZeHB
         1BJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rmQ/UWjp";
       spf=pass (google.com: domain of 3m9wuxqwkaiw3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3m9WUXQwKAIw3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+i0HdhNNVNK8WO0G14BzYx2sW8FqUHt8VXXj7EdKymY=;
        b=OajR4qdGHPOM49shiHeRxEmZr60Kv1KZUHTG0pNEK/VmvyVU7afUQA8QLY7iEc8cAs
         7UXschdQh9ioLXd3ahIJL7sFbRZ5vxbwB7M+jZGwzgNJmX1FRRYuCHyT4ILn0pIFiSqo
         VExfp+79kTkgczOy6qtiItKHtdY0gf335L/nMRVh2nsuvsAE6VJSBEpi1PVft9KYZY7y
         ie5Myw3QHiuaMR9oHOfXT8/ranV2qNQzrF+1edT+KZmh3RGKsWgB1QLiKDPT37hDVLI/
         NOYQ/dbUXhvDIjYsrGxfyabkl9+3j6tezKYU7Suk0Wyy5EtAc7/BTLxDpHyRuM7s349b
         FZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+i0HdhNNVNK8WO0G14BzYx2sW8FqUHt8VXXj7EdKymY=;
        b=TWIkNVgrg/zelBTu9bYKF4QboZbrlDZ3qCPIaeR81fJ6GE1R6OUREakW6l1FfjNhq2
         fB3CvmLDiAekxXE64WvBfb1RbG67NQAMjL7HhEduqjkRxx5k/Hxv4Fl0+HGTL4fd/EMP
         rjPVgVGa4mvjItBBSZPD1J+KPZNsac56IMWkAl/ICu2BEdBNUKGKClSsmcgKs3tvpn1r
         kYBRJ0pnHR1KLLTlhn3Bh6Hf8y2m0IWMlJTWuqao/JeBxYNbzpYzqlO0RwfbKD9uh9xY
         1xVdcogriDfBuILWQysmkJlYm/Spp5UD1o87AVTvwTCyAenWzEmVkuAcl45VZxrFbJTU
         Mzzw==
X-Gm-Message-State: APjAAAUp4PMLtbrUbhub/PrUnV5nGCIMRiuDRlG/stlOM00jL8COK9TA
	z+D9OgRGC3hlw34VDFf8mpE=
X-Google-Smtp-Source: APXvYqyFv7wUQb+LhdD9tbwx24CwvZDWu2EZegsPPVbLnsp/frmGtvsfRiQamXTtn1LeYmUl7lbtJg==
X-Received: by 2002:aca:c0d6:: with SMTP id q205mr3614101oif.81.1570035100749;
        Wed, 02 Oct 2019 09:51:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1d1:: with SMTP id e75ls571432ote.15.gmail; Wed, 02 Oct
 2019 09:51:40 -0700 (PDT)
X-Received: by 2002:a9d:7851:: with SMTP id c17mr3419584otm.55.1570035100435;
        Wed, 02 Oct 2019 09:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570035100; cv=none;
        d=google.com; s=arc-20160816;
        b=Wr6DKpC/6UQ2o/g8WCrDg1+9h69pYXzM4XXjNuh4AsdLrdBKMZMXjn0tP9YRRbtWxt
         8CM22YgrKJd8At6NAFJL03UCe21VwQf9fVcplkD21DueDxvGOb4LXJ3NX6FUu/2DvY6v
         3icLuF/yanvS79E05u8Hjj59xYZ+lrG4ChT42uyyh9+ldDU/jwErw2sDkw1vpmMB3SB4
         7cYDXX7jOX7sSFwGv565G6OJDeLG/a1uX/DwJ7POX8TAdj88E1jzhsah/3BxZj7UThLu
         K+B5XwARWa5a0tzEsCCIdKVKK1XhNbVavz3BQKlbtO7rxHKEHpz7rlavogCIt4CO7XKs
         oehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4INGfYLGyLALjI2XEapvgZEklVw6KiRSbjc8hD/raH0=;
        b=C/ZbJYtrPFAsP3Sd5w15Hio5l3DhRTfDLcZeka/Hp92yH6u6/LrJU7OPnSVxpzJrz9
         5TCgo9hW3W9sQkrur2ZA0zn2U3BEG20cbOLGZgKfbgzRHCM9m8WjfLVMbHQKDosV5nn8
         XRpT7ElMAyYVBNep3AK7OoTGHv1GjmvRx0xiiX/ChUrjfAB5L8QkJSBf8h9rdeFH/QGW
         WxTJxM0sVDNl6+8BrdesRjN7uVbd3oDrcWH9Vafl9j+6OWudb7fmnqGrO5NhWFVLPOLD
         N7PEQ7gabS5/ucfMYVDYMzrDRWy58BWQCUKLz2WWKaGugW7XegaX6nNeMLLIyMpiB7gP
         uqmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rmQ/UWjp";
       spf=pass (google.com: domain of 3m9wuxqwkaiw3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3m9WUXQwKAIw3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id b11si1496388oii.5.2019.10.02.09.51.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 09:51:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3m9wuxqwkaiw3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id e15so13725910pgh.19
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 09:51:40 -0700 (PDT)
X-Received: by 2002:a63:dd0c:: with SMTP id t12mr4611244pgg.82.1570035099268;
 Wed, 02 Oct 2019 09:51:39 -0700 (PDT)
Date: Wed,  2 Oct 2019 09:51:37 -0700
In-Reply-To: <20191002120136.1777161-7-arnd@arndb.de>
Message-Id: <20191002165137.15726-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20191002120136.1777161-7-arnd@arndb.de>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
Subject: Re: [PATCH 6/6] [RESEND] drm/amdgpu: work around llvm bug #42576
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: arnd@arndb.de
Cc: David1.Zhou@amd.com, Hawking.Zhang@amd.com, airlied@linux.ie, 
	alexander.deucher@amd.com, amd-gfx@lists.freedesktop.org, 
	christian.koenig@amd.com, clang-built-linux@googlegroups.com, daniel@ffwll.ch, 
	dri-devel@lists.freedesktop.org, le.ma@amd.com, linux-kernel@vger.kernel.org, 
	ray.huang@amd.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="rmQ/UWjp";       spf=pass
 (google.com: domain of 3m9wuxqwkaiw3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3m9WUXQwKAIw3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

> Apparently this bug is still present in both the released clang-9
> and the current development version of clang-10.
> I was hoping we would not need a workaround in clang-9+, but
> it seems that we do.

I think I'd rather:
1. mark AMDGPU BROKEN if CC_IS_CLANG. There are numerous other issues building
   a working driver here.
2. Fix the compiler bug.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002165137.15726-1-ndesaulniers%40google.com.
