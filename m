Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIFPYCAQMGQEKICNSTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6979831FF96
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 20:55:13 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id e9sf4559264iok.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 11:55:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613764512; cv=pass;
        d=google.com; s=arc-20160816;
        b=VSFXGiY6unH82WvVtvUsLAz6Uj88cXq45GSaOsM/zEtOv7d1ys8OOEeEDJ1S9XHYzv
         6fItcPltrDQC1sLbc1QjRnCXNcjnzR+Hv8PjV/2XwrlQOIz46lOzkC80aXja0TIGn73r
         AvqAwLLDj/UC1JVTDUGTLiES0V6M9zp9m35KI2ccohzg5cM45ZM6nOIvpGpjpvaG88xF
         BKA1u7GmtA4MOG3pFh6k6ccUm0S6vf6r5GX4UwXBz1kkTeyXfXw0ze1ZdkAjCPn2LpYg
         XqH0eBZs9v97mW356WSSTYrIDS2ZCqyQHHkqb+gYaDbak2Es6Td782Pv1ldHBsARSTOv
         FRgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gsF2Xnz8UwhrkDTbl5eUjYmpp6zUEWswZR0tFz2A2bc=;
        b=gGlQdcqGrp8lTS6jhd4MDD43rGw+lmrGt8I2a84V8h7+QaL5bsxWYQWqMGsCpMrEgi
         zde9XWLV2rNFDsN8OVrMe8y9dVRlwoP4IVKFfyS3gOVMGyo0eSsskWV3Fui9lGRBYfzA
         gmIy7+Ow9gZtM06u4Gff9YsxHCJrfSM6zz6o1VrQGY5vQvpu+9tXGJ9md++obSAN8siH
         XBIFb9NGIdgtjtgdPYcXM4X0hhnvnYS5uJAehCeoKaW5odBjVkAcqJ6DXqQlhRp7sBiY
         dArdCGmFL5t4Gnfcc8HysW7wO9W310Hk3qCPeoyfGTmg5y5tFrUC4az5P9dz03kPbAwn
         6CMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LZYhnKnY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gsF2Xnz8UwhrkDTbl5eUjYmpp6zUEWswZR0tFz2A2bc=;
        b=NsqQxhG+WCIIBtgyh7c47NOFaeAyV67XQFIiPb1kLFIN/EDVxh0KZbAXA3tEV9D4YH
         ZgvE39ugPKnefTYntdKQb0dTg7Oh8NL23YHPeD01UFJmPJ8qwgazAXI8zUvxecJmBGVO
         0Xi3G8M1Ni9E/Oo9Ukef8pEyVG89NeBxo88a+1IOxO/Vm+vpKWQoEaxPZk1krYgXlv/8
         iMow+42EVajEH3PWwamTArTaXPyIUqDUBULDf0Nupanu7JhABQv8x61rCZ7++cqY5n6w
         ehXeGhXo6snt3QxErA1V5U2YG13id9K669g6RinVeUE2lRWeXuaOXgBlrBgsz8V3ts1U
         th7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gsF2Xnz8UwhrkDTbl5eUjYmpp6zUEWswZR0tFz2A2bc=;
        b=lrlyWzC7khNIMu6GGUYfoK74T7NFwVC5D0GjofGJvc0D979yf6R4XP0ZkbeDNpbiv2
         bT0+REEeYcH1E6k7s7rC6FB/ZTjcgD7+v7OR0a/4DJaYG6l7mkK74NT7/AYYb/2WPYb2
         Me6UC/zeQLSHntf5aH1WWbit4Dy7AtnprX4ss8fdHmdAOxGKwtwTIDZH6n4BuRQDJFud
         N3sNNqdVOa5v71N9/saI88uf7ZA0Nf8qW1HQeQYChhD955UoooNKIufV8IgEBSgpgQMm
         vQrvGuGeE0cSf76dnlpgqnY10qX2v15KiqTWUJeZCy27AFXKmIfJupAWfTxKmIDSnISN
         T9UA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305/A+LT5q3dUCKq7xgz4F91hiMFSe2I+1A111K1MWyPdUU32oF
	31b4wjAF3d+dcELDVMMR46c=
X-Google-Smtp-Source: ABdhPJxoTAGEZKsVNXjQf34S89L7fUoTNMNHq3Gbd6cLgMEm4RWgC7SMbBeLzTu2UAMOIACfNAHEDg==
X-Received: by 2002:a5d:9653:: with SMTP id d19mr5196320ios.65.1613764512258;
        Fri, 19 Feb 2021 11:55:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:170a:: with SMTP id u10ls2714116ill.9.gmail; Fri,
 19 Feb 2021 11:55:11 -0800 (PST)
X-Received: by 2002:a92:4447:: with SMTP id a7mr5482791ilm.240.1613764511816;
        Fri, 19 Feb 2021 11:55:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613764511; cv=none;
        d=google.com; s=arc-20160816;
        b=csSHlWciRevs8O0cS21Xz+FJHkz932hxN0xTCe3jP+Ewhsu2SAC8NJLPvDSnL/j8R5
         MgtOg6qVdeFZr4rsw589Qjex4lmsbhOhKvAB8yR02Wu7p+d8Aox9LkHyGfCESofeObkl
         Knert44nJuEuO+6I+rfdze3fbqgaLXnVpXiqLQQm1L6RsF1DooxMi0JUMIGOJvlqI3KP
         Vf36hwODNkdHwFDJx9v3kqTjFsUpvYJTdfflXfxNM6h1K/gCDbqapzU3kc8kmargjz4z
         SYqvlwRKkkMzHUpQ7Vfm8NujIZhnr2Dxyk08lOZY0RvOn591gF9dzIuwYIf3N8K/yPD/
         KTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3asrxt5OmuByxFqXXwb+3FuDZ+/rIDyw2lpJWPPrJf0=;
        b=BVhmndPvtBnDfrkOcpEDzkxkhjOX8gJgkoA/IYc5QOAqWQZMxJgvpdEGNJqtw53dj+
         +wUHSMp6UPOZz7U2Mh8ouNtuWQo1PVdudDBOE6CyU0Lm+2F1HZGjqDYUhFe59qlb5E6D
         RNJYs0vJCFssZsyRfmEbBmvG4IQYzE/3SPSnfGEJDJ1iQDSfGKIfyNaUiNAQWXHyqiyo
         nP8He4f0Fe2lngXae+u+sLWnGBRqrROziLQsyCegZ2DeJgNy5T2fxJXPzCEENmbRWbiZ
         SxkieO6uV4kNDm75VazLBb0ILtxu8Ngacu1GMqhOCfeCnJbKHBMIPph+qtXjUtgghSnF
         Rang==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LZYhnKnY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 207si432694ioc.2.2021.02.19.11.55.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2021 11:55:11 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DF09664EB3;
	Fri, 19 Feb 2021 19:55:10 +0000 (UTC)
Date: Fri, 19 Feb 2021 12:55:09 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org,
	Mike Rapoport <rppt@linux.ibm.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/gfp: Add kernel-doc for gfp_t
Message-ID: <20210219195509.GA59987@24bbad8f3778>
References: <20210215204909.3824509-1-willy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210215204909.3824509-1-willy@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LZYhnKnY;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Feb 15, 2021 at 08:49:09PM +0000, Matthew Wilcox (Oracle) wrote:
> The generated html will link to the definition of the gfp_t automatically
> once we define it.  Move the one-paragraph overview of GFP flags from the
> documentation directory into gfp.h and pull gfp.h into the documentation.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

This patch causes a clang warning in basically every file on linux-next
now:

include/linux/gfp.h:20:32: warning: redefinition of typedef 'gfp_t' is a C11 feature [-Wtypedef-redefinition]
typedef unsigned int __bitwise gfp_t;   // repeated here for kernel-doc
                               ^
include/linux/types.h:148:32: note: previous definition is here
typedef unsigned int __bitwise gfp_t;
                               ^
1 warning generated.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210219195509.GA59987%4024bbad8f3778.
