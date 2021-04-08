Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB24VX2BQMGQEV7JXXMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id F18B1359010
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Apr 2021 00:59:56 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id d10sf1556039oos.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 15:59:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617922795; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vtm4VdLFFr/61v1P/P6torUNwvuUf666buvjBI+pk4Zl3B50Qd3kxucr7xfe+M2tpa
         JeEzGNy+w+Fi+fK9DXxrq+Xa7ztwPxYH08ojvZS5x9KNOlMQekbjjcGijHxP5jUjmlVA
         BVSnzXuU3LZB53elRpvSBPNlV9eY+x8HmIfZWXgrNNSigfJaNb3CYYb6Nq/v0UbE4all
         UG90klQ2aJJPxTadA+viDbSjVE2DQk0n8NCez92bet/mEvZbE4ol4npUmNQOpe81imB0
         NxyR0t3WbyodUoc54j29x6k+PqEtqcqnZmQ9i5MQ0ymtYBarScdV3l5tLtplvvbCGnRg
         rTPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=T8l5GDElKHLTNEoWsRJsz4HwqdEP4LPVAkiKikrCzv4=;
        b=f/Doq2qCD2HcX22jX9irqEM6LwxIvrvwMtlRJCM6x9jwvYSsvgZoCGae9RR8MrQLdr
         VuSyGeUS1P12ltXq8d/E7XRP4bOrI+JbYKF2OOpQ7M8XkIsr18z6Eh/aF6Tv6useHiln
         0/0tNjhWxTfes59+hESdrmMZgCwOok2nGHoVW41aQ1y1sKaM1l1aWuRT4b7FmjXUBbHt
         8u7QZRdqYZYHxM7QXh1tupA0UzRxD5Q5Dw9dxDRiy6qGQtLOmzGZItheuaen+rQ7Oj77
         0yScP9QAbSYoeqqVOnt88NMSNUMD1mgvEuXAgqyfVIQ35sXlU0Usdy0YqdicTzsjIOYZ
         xtZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mTnrJmw6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T8l5GDElKHLTNEoWsRJsz4HwqdEP4LPVAkiKikrCzv4=;
        b=CtqAoJCpxtsN/bAN9LYrb2lhSKNeapt2xZ6x+WRHYrLq23+k5aHyr56zhNumKPoQ1+
         BU//7C681vHlGZO76qRpGG8yy1Hf4cSoPkm8J3DCUMXvQc/SmHlLRbXU3JxV+mD9TXR5
         nf9y630ypqrRqy1Do8Y1KmpjDiMOuQB8KRpNMRFN4kbfJ2JZsi4y06pYzx7Z4rcp3sA+
         9pDAvcJuMys8lOE+5G80JoI8peRHgNnujFhTYjKDVO+9ezJYO5Ta1BmQUKBZucvzynCA
         nT4iHYb4exVgCYreiFvebQiDLu1CApXHiEuSFy4e5aHnqs5H9xSO1UW7ziD6lYCC7c3I
         B0yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T8l5GDElKHLTNEoWsRJsz4HwqdEP4LPVAkiKikrCzv4=;
        b=sLjGuyG/Gdy752oOvZGk8YlwSdtr/rstIKrTrshNw0iEr2Vhi0AOJsSPQOJVAXypXs
         7hfg6YfEw7KdaLAt4/07Obn8yXS042ntiPfFIidzKaCaW+CoDdnjnGMceOZ2svMfqf49
         QLgCVNRvNeR9+gM/MEnT3fLAa7Hf3lFnZFfa3UvUvWcBklJRc/1bD0uV9DDtjMtO0LaK
         WXxXEEptjpttg1SJT4jchCV5g39wgthRE9jONpmpHEA75Xdv+ESw7EI3J+92zndb5IYu
         WYyI5B5xaoUt8t9MMb5kqhj4g7/3BMYMv51tOu0CrptxboH2R970A26nbdoWzDmd8mn0
         qrew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UAPCOa/Idqo6+K7t0vQkusf/Rj+wfXGGiHuIbwtYSazXtHNr+
	MWymxoh77Kauk/G3QN63Bzo=
X-Google-Smtp-Source: ABdhPJwMrJt7bLZ44tc/PgCFetd4dh+ry0YnpDtdPj5s6OIle+dvDcqbSAE/lrRfbqc/EXNYZZ8Lew==
X-Received: by 2002:a05:6830:2043:: with SMTP id f3mr9857491otp.63.1617922795610;
        Thu, 08 Apr 2021 15:59:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f057:: with SMTP id o84ls1535033oih.3.gmail; Thu, 08 Apr
 2021 15:59:55 -0700 (PDT)
X-Received: by 2002:aca:c4c5:: with SMTP id u188mr8047092oif.71.1617922795262;
        Thu, 08 Apr 2021 15:59:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617922795; cv=none;
        d=google.com; s=arc-20160816;
        b=X9x2ArnNzkJ0kXwlVNyccCBmkxH7bKjUUGx5feUAQi/Z0roc6IT2x3ul5s0JWo7b5g
         XY6OTDkBvoaRsN1ECXVdkEpEg0B7pePaeqZK573EkGQryJ42Vhl2rdcKyCvsISaJBD/t
         TmDqcNNQ9Ww3u1JlUYuE/sQ9h+o/wOww2YE1Wj5yihXLjaGmts25DYnE9FAiSKkFtfWu
         jSRos3Wb2Xy2LGZC63OTbgm0B6ZUuRQ8a+72VXwWk1uIduAf5XJRAd3OzVsPfx28CSqc
         X4jFGg+L4zWpE5HYOYeS114fyRMt8VFiDfBf9iP7cF/KydL8mFzJ9o/mv6HZP+16KnNT
         GnMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=60tuWIbUjG0iyC8nYrQdXxsGuNpmQhEiUDZqyLR6c1Y=;
        b=LKSODmyiEIZYuDedOc/ltoRG574Ba17AXB1UEhnB9AOQL05pShNmViutHGRXV1lDn4
         ZFvVT1gbvv9WiaJv3CiNeaAnQMFEansgiRHWsZIw43PEmfRiJKEKWPEjo3tUwV7WWXwH
         is/kO+p3Ek7ZyK5YomsIJWUVcO8ZbRdJJ/DILzoozQiLmLcAeVV60aOISnXUAbDG8S1J
         WRqrVRR0jl3zmWvQPo408RCTJmn8FAnMF2WiByfoYoFjCqmIbO1J+RtfL80kdBzu+tOp
         /6ex8//ZEOE+UYhfWI/KE1CCMBSgqU6MzDbvmul/3xGGcf9D4yVEEOcH4bVk1OMhGC9L
         ZktQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mTnrJmw6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id x38si72578otr.3.2021.04.08.15.59.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 15:59:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id d5-20020a17090a2a45b029014d934553c4so3014724pjg.1
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 15:59:55 -0700 (PDT)
X-Received: by 2002:a17:902:7c83:b029:e8:c368:543 with SMTP id y3-20020a1709027c83b02900e8c3680543mr9895464pll.58.1617922794624;
        Thu, 08 Apr 2021 15:59:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q95sm368117pjq.20.2021.04.08.15.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 15:59:54 -0700 (PDT)
Date: Thu, 8 Apr 2021 15:59:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Christoph Hellwig <hch@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v6 00/18] Add support for Clang CFI
Message-ID: <202104081558.9A5FE3A@keescook>
References: <20210408182843.1754385-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=mTnrJmw6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
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

On Thu, Apr 08, 2021 at 11:28:25AM -0700, Sami Tolvanen wrote:
> This series adds support for Clang's Control-Flow Integrity (CFI)
> checking. With CFI, the compiler injects a runtime check before each
> indirect function call to ensure the target is a valid function with
> the correct static type. This restricts possible call targets and
> makes it more difficult for an attacker to exploit bugs that allow the
> modification of stored function pointers. For more details, see:
> 
>   https://clang.llvm.org/docs/ControlFlowIntegrity.html
> 
> The first patch contains build system changes and error handling,
> and implements support for cross-module indirect call checking. The
> remaining patches address issues caused by the compiler
> instrumentation. These include fixing known type mismatches, as well
> as issues with address space confusion and cross-module function
> address equality.
> 
> These patches add support only for arm64, but I'll post patches also
> for x86_64 after we address the remaining issues there, including
> objtool support.
> 
> You can also pull this series from
> 
>   https://github.com/samitolvanen/linux.git cfi-v6

This is working quite well for me and it looks like there are
good reviews. I'm going to toss it in linux-next unless anyone has
objections. I'm very excited to start using this. :)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104081558.9A5FE3A%40keescook.
