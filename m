Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKWFXCBQMGQEQ2S4ILQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC643576B8
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 23:22:51 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id b126sf24516ybg.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 14:22:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617830570; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gt5jPixK/zbehm9Bsfa+bMqlnq0Av08K3P19w0lgqh6Sq9wq3WYaXdWkMG6YeBd2qm
         2PzcKxVUlK1ayoF+BTGy2o1xcJ7yDGlHXBH3XyGymg1nsOZXoDQzPQYuzTIloFiHx6CB
         24xajnxeICLdR8wBar5lTkhxLz4wRrK+Dz7/q/k15YT2pUP8yejcNxLMKMTyQVSx6y10
         TrC4HolI6S6aq3+ROyVT6ODUyAa12QUp4kdCF7N/hPvsdyQNLGjGLUIh1xyBTb1D86PX
         IrlT1StyTvmt4nV90+viL53iTZWWF7feduwRq75qvZE8OYKKOjEFS3zpLi9+KmVCRxGi
         +qYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Y8bXZQfjdsaJSqzHtFi0tHq5dW+XCC7w1UoqXyqwp5M=;
        b=Sa3pg9iMZd0tsXW0kEIx10aon9c4BcbLP0TXtxC6el/Q/h+siehtnPCKo+WfFlHnES
         vnYzevW8rC/32ax5RAstfUSe/igfjE4sgdZHgh9ImWHqweYz9Sd0MrCsMoVtzeF21vwI
         0ICJ7dc+3TOGcu5D/+eVxSizr5gGc32XA705ysNRIMZYgLEGRa2xMBJWQ4+xgz0lmTHO
         bNN08cv2S4/Lx+K/7LEwt2siwvA4+nLScMsw/NbHA5aEcXeSdNwp0CDJ2qMBy8/kyL4v
         pxbvGIZcQlGnwECfCyF8HNfVKPixi3fmQ9MtQ+AEtXxL3ty0BQDljQmyKQMHhJwhXo4V
         KV6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=M9YSVBjf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y8bXZQfjdsaJSqzHtFi0tHq5dW+XCC7w1UoqXyqwp5M=;
        b=opSciwXsuBiajFXUuDd769W1zNLffspQiQvCc6lS7kEbsq6CUpfXirnHPlZDgZoM6s
         DxqZlpjiuQkfKEjZcF5N2nVzbGVpS7Nt/HquPHEvHQIjU9XmqwE6ploI4kfrULR2TFTf
         EfBDrweR1v8L9II2fPKCLxYZGXoJxXr7uyvTL0ShJtLzfH+LOzn7NiVOIBgDCGCyAIlq
         zVllUvi7kPSyr8RCt0JD6yUaD4gUvJ+bFDawH/5xhSGWb/4j7lzGYyQGo6o2fL9fQ+vr
         8RLtC1ElYDQ4WAwfmTolx4RYApgBcSfcKgSfO5dG2+aSGrm2DQ9HSMlS+RH74q2WrXfQ
         PPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y8bXZQfjdsaJSqzHtFi0tHq5dW+XCC7w1UoqXyqwp5M=;
        b=CTas6C3wTrTDJZ6IypUwGNybHZ9vNK3DqgWfkyxlN1ArMpbWjoWZkwFOmtchCZ3jyG
         c9H1062+yOczFDCn1NLvZhx42z4L0zx6Mm+EJY3qJyMdE3koasY+Pq+u2HL2cEysomsb
         aioiJLk6rGK6rflxfKuupWw5tuw8B+1SIAcq2c44tcQIHbh3sH/RCKUiVmruxRputfvL
         ggN/o+EiC+8dVfqYbS0W4NyZKAIQQeSCFy/NZ95xSgnKuwpxx/2i4Hb54nbNNYPRBpYE
         FR/YFN4WY6ea7IBgNbeq+NLA0LDXSTM81KeHHqYfuC1gDDlBat2rS3SlMobWKXlLTRXV
         c9Cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335a/C0Y1SU5UnJs/Aln11nZZhGIMwILpqee8E0UgsRZVo6CvOI
	ECh8hBamj87JuAfsvHwjH8g=
X-Google-Smtp-Source: ABdhPJwMI98mxepC+zx7QS+YHlfjI5nh2B8Gyjwyrtoq+rmN/Sk0CU8wYsr0EGQpmyExpFPTp0khYA==
X-Received: by 2002:a25:cc54:: with SMTP id l81mr7447103ybf.281.1617830570270;
        Wed, 07 Apr 2021 14:22:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b9cc:: with SMTP id y12ls1596271ybj.0.gmail; Wed, 07 Apr
 2021 14:22:49 -0700 (PDT)
X-Received: by 2002:a25:aa74:: with SMTP id s107mr7076897ybi.45.1617830569874;
        Wed, 07 Apr 2021 14:22:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617830569; cv=none;
        d=google.com; s=arc-20160816;
        b=wkPKR4lgpa+hihXTuAvQrPQ8ZZsjQPgva6dLANsfTgGUR0lMjMHyMRaSu56HCFMY51
         vLrptZuGOSXTfPCbasM8Zd4ENamEQ00RzTT1B8El0lsdZwwN57UWfHCzUoGPdh+srMlr
         Sy0EQx1UtUHz8qka4Ve7s1laI9KDG/QrpmKgNxIA1xLqmL0mO+m5BJuF/nFh63y+HonK
         OaeNYetakaiofbc23ICmF4BoG87SilhJJQicnqohwvUWyiwZfqZxKvkni3ZX37839OmQ
         XkTBDwkEt2E8Sb0nSx1WpWeHxyeclYFDcOceU+/cvpZcgXbArPDTs502PGsHqX9C9Vnt
         WJ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Zupj7uPahNplY1UQVoMGkmaTQjWt4OgWRC3KsLSujrc=;
        b=0bIKFZyQQx2AKUFVnVvTqYy5y+10dnLDdaT8aLrnmGQMyAZEn8UdCc7h/S0fZ8aUKn
         atlahVrOmRzvDCm1aAPhNO12aNwngtAqTT03EWSJTqcF/Nq6SClujiZ8AUOjBhZ55k7A
         nN14xiqdi79haZbhm2z6mV0ImhRB1TkHS770/ngHPGQoSLXRx+LqDujzsCFnKlq+Ysgx
         6vaSd40GF495AnacQZsp1spdLXz/nBxxPM8eERHRlFYJWIb9vGhFYb4BnLEgiQ9eln/n
         xFnQ3mdzV9enXV7l/aRWBomArxPmbj6fJUqsoRXYDd0L082obPAuOQ9Cocnx2idIPuPi
         bJiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=M9YSVBjf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id k6si1060434ybt.0.2021.04.07.14.22.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:22:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id s11so277279pfm.1
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 14:22:49 -0700 (PDT)
X-Received: by 2002:a63:df56:: with SMTP id h22mr5123694pgj.84.1617830568995;
        Wed, 07 Apr 2021 14:22:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l191sm6209304pfd.36.2021.04.07.14.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 14:22:48 -0700 (PDT)
Date: Wed, 7 Apr 2021 14:22:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Bill Wendling <morbo@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <202104071419.AA35EEAF@keescook>
References: <20210111081821.3041587-1-morbo@google.com>
 <20210407211704.367039-1-morbo@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210407211704.367039-1-morbo@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=M9YSVBjf;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434
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

On Wed, Apr 07, 2021 at 02:17:04PM -0700, 'Bill Wendling' via Clang Built Linux wrote:
> From: Sami Tolvanen <samitolvanen@google.com>
> 
> Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> profile, the kernel is instrumented with PGO counters, a representative
> workload is run, and the raw profile data is collected from
> /sys/kernel/debug/pgo/profraw.
> 
> The raw profile data must be processed by clang's "llvm-profdata" tool
> before it can be used during recompilation:
> 
>   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
>   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> 
> Multiple raw profiles may be merged during this step.
> 
> The data can now be used by the compiler:
> 
>   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> 
> This initial submission is restricted to x86, as that's the platform we
> know works. This restriction can be lifted once other platforms have
> been verified to work with PGO.
> 
> Note that this method of profiling the kernel is clang-native, unlike
> the clang support in kernel/gcov.
> 
> [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Co-developed-by: Bill Wendling <morbo@google.com>
> Signed-off-by: Bill Wendling <morbo@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Fangrui Song <maskray@google.com>

Thanks for sending this again! I'm looking forward to using it.

Masahiro and Andrew, unless one of you would prefer to take this in your
tree, I figure I can snag it to send to Linus.

Anyone else have feedback?

Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104071419.AA35EEAF%40keescook.
