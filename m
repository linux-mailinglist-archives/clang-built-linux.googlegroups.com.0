Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBK7ZWSEQMGQEQHQJ3JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5E23FBD59
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 22:16:44 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id f26-20020ac5c9ba000000b0028e29d166e0sf532845vkm.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 13:16:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630354604; cv=pass;
        d=google.com; s=arc-20160816;
        b=nzN6DaBzm0UgJGDiqccQ+i9obo1bufxkc/co7Bzvxb9Ax5kdAfG66KOGeU0zLeQK8n
         e+xCb2IWshYz0Te1dxfD7PmI1nAjhkBVUnnIfr/rljcqg0oEtPURR3xHCbCz1+yLgTm1
         KS9Nt9zqa//auvL4kIi+RKSCgsesUkrXvcfi9cQzu/k9MdZyq1w5F29X80CNcQ4bCFxZ
         vuXdKX7YXbS7EYXCSgQ+trcTwQkD1p6oi8ZwxN5WO1la8ytiggJeW706rUBKF1vVkqIh
         lP/BuQJEYk7L0+oqQl5Yq7Vb+wlsBm2qonRSfU/5NA6IK/sLBJC5RVMz+BDwL0Yb5IEi
         bq/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=A3RKNGAYYP+2D22sKJFlvrtoGdnYxhy53gxn4W+BxnE=;
        b=rg6YDzEqndruUeltROw7EyXLBtBxQbpqKqjuk8k9pGgy8z+93wU9sGIwUXuY7S+3Yj
         yhay4AOuyGLUtnptdBkfqYex8wSg+de2kh5R+hto0gitEfCaroABhaLl86IjMn89zzNn
         5GpW/FTY3ijZfhxafKAmHhl8hGb2SmUssILvSP3YNmcnBhzJx9dppfFKifZUo4vaoxzZ
         XNQWHM0qoeeNItfZKrI9nUSPE3NYR5Ol4QXWR3BFJbThcnnT3GmLGgmm/SvZSnHkKt7r
         OKRlhUXMkpDXEqpF3n1PPFwiIgQ6srGW3PrINk/4LaSupi7j5LvX8UdCQQm7OJW9E1GE
         cn7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UaZfjuIc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A3RKNGAYYP+2D22sKJFlvrtoGdnYxhy53gxn4W+BxnE=;
        b=kQeFwtxGDdynZz1ZUykabm4W9Xf4aCbnsWjL1iHl74FRlpqt+ng1K8rvH2/70is1bS
         2V9X+OxX99LY1kiDcvB87MeBHr1MjKaE8kV1C5xiukUNbLAyCdOPcDxY5yYp59DYSNf4
         z5qpop9+hR6FwvUGAjcuGXEEZHNC/8Xn1iHNqz6oTj8xVu/60G0arOpuRoZ4WX2nVPpl
         fUr5K7aTvVueIUADFqbMxju3UtNxmWm4vfN6rW1Q7LB3EUs/OXpL+ZHbhZZ/kGo+xSmc
         goq+rIZPlKelZg0bsy+LqjuNXOOM09iab0tZlrkba5yVYCg+UNYZyiUs3MQ0i6ve3rCp
         7zWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A3RKNGAYYP+2D22sKJFlvrtoGdnYxhy53gxn4W+BxnE=;
        b=ls/0IVriMXxWW1Kmlo9IBDfyaIXyjbe+fbVQwIHaFfn8DrXalFxTbK7khljxzcAI3s
         5eWp0VMjaQihkVgRUkGiACq+O2O9n7+qDqAtGVFp+3UCGwO4H7ucuTi7PZ0x41y3Xj0P
         e6dWglfO3DkzRJsBENzqC5KqrzWTmzyR/6mJUHN9RY1G+Roy9Wf+w6Z/sI8eBuQ/YEiz
         SZ9CUt+HKGEfFtIHiSPyih37jOL11x/rsAbN7R8F95js6pewTKn7noDPtt0YXWNcM9dR
         hcZq7Kcoukyg1fEN9+h5ls9YAvzX0t+ik/MqRWgBqrTc1mMFXk136BdgPEb7iR5qhsGU
         zTqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331LI56HoVW3TAAijIMhf7FGyWes6HyTE27yg5xOcu08UNXb8rk
	FWKrpB3oMegTIl30Q7+GkaA=
X-Google-Smtp-Source: ABdhPJyp4bz1kOmqtByz9EDA9qEc8UEIg574BniygR/q7tsBHu0zrd8TDb+eYrImE54Z+svfe8JhsA==
X-Received: by 2002:a05:6102:3031:: with SMTP id v17mr5718403vsa.49.1630354603976;
        Mon, 30 Aug 2021 13:16:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d18e:: with SMTP id w14ls3130066vsi.7.gmail; Mon, 30 Aug
 2021 13:16:43 -0700 (PDT)
X-Received: by 2002:a67:de83:: with SMTP id r3mr16608387vsk.28.1630354603512;
        Mon, 30 Aug 2021 13:16:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630354603; cv=none;
        d=google.com; s=arc-20160816;
        b=X6T5plEYV09g/8paIEPO4GcgbWVgEYyH0ZKN4CjzxgYhdN9a2XTRAihUOIgZmtZ3iT
         vncapRYnW/3mU+4mV74T6dOXCtKoNRvvI1Km2w3grci+ZDoXEdZy171iKPp7yXZJ/TX4
         TokqdwaKXgUvbPi4wp5aZjrV/80jl6VxCiF5iuuV+TdaMZ8M00qu/kngzUd+geKqCpg0
         6J1KOGdSX4pU57LTQ6lBlKZuTkXLrtUAPvTn+6b+G1dTmWtwyg2mIeM/yLph0eRDvw7N
         G/KUyoDI/N9jYsJJ4KV0imjiDX1H5wPFU+hsOCjqGVMARX6rHb16ULScRgYAZ56Q26Kb
         1UHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4Gjmh2khQtTIto6ydtTcLMQuTQMVcLm+SAujgODL3VA=;
        b=Om3Z379EO05XzAbmLRB4qinrh3cYvg21tWLim+eH7mT5L4rkj8acM9jEqcLIOLdUm6
         LH0sqBM949MsBBhyTr2M0RqWgXNGfu6kw+LoGWxaHsyGGtUxH51yLSKRAvX7UjJu0lN7
         5lISeNChEk6xgry1k2PxB6PRhahTr+VsfQX4X1f14tcAZrjqYZzzh+BP1VEWeqRHd0ea
         yf41tXi7g15EnOho3wqyfWUzqOaDDddr0ml/cK9vqQGi5gr7PNUjEubQ3DgU2NRdpfFM
         c7VgSPZA8+WlLasvWzW0tq3ZFNdrQsQrufJAP8wtO89LfnPml+lnuV9Cxzr9fbrH3yC1
         6edw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UaZfjuIc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id m15si1153098uab.1.2021.08.30.13.16.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 13:16:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id x4so14568734pgh.1
        for <clang-built-linux@googlegroups.com>; Mon, 30 Aug 2021 13:16:43 -0700 (PDT)
X-Received: by 2002:a62:dd83:0:b029:2e8:e511:c32f with SMTP id w125-20020a62dd830000b02902e8e511c32fmr24825041pff.49.1630354602955;
        Mon, 30 Aug 2021 13:16:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c123sm15588127pfc.50.2021.08.30.13.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Aug 2021 13:16:42 -0700 (PDT)
Date: Mon, 30 Aug 2021 13:16:41 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH v3 0/5] Enable -Warray-bounds and -Wzero-length-bounds
Message-ID: <202108301314.22B3CB015C@keescook>
References: <20210827163015.3141722-1-keescook@chromium.org>
 <YS0nJtNDCwfbaubZ@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YS0nJtNDCwfbaubZ@Ryzen-9-3900X.localdomain>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UaZfjuIc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531
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

On Mon, Aug 30, 2021 at 11:44:54AM -0700, Nathan Chancellor wrote:
> arch/powerpc/kernel/signal_32.c:780:2: error: array index 3 is past the end of the array (which contains 1 element) [-Werror,-Warray-bounds]
>         unsafe_put_sigset_t(&frame->uc.uc_sigmask, oldset, failed);
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Or is this a Clang DCE failure?

#define unsafe_put_compat_sigset(compat, set, label) do {               \
        compat_sigset_t __user *__c = compat;                           \
        const sigset_t *__s = set;                                      \
                                                                        \
        switch (_NSIG_WORDS) {                                          \
        case 4:                                                         \
                unsafe_put_user(__s->sig[3] >> 32, &__c->sig[7], label);        \
                unsafe_put_user(__s->sig[3], &__c->sig[6], label);      \
                fallthrough;                                            \
        case 3:                                                         \
                unsafe_put_user(__s->sig[2] >> 32, &__c->sig[5], label);        \
                unsafe_put_user(__s->sig[2], &__c->sig[4], label);      \
                fallthrough;                                            \
        case 2:                                                         \
                unsafe_put_user(__s->sig[1] >> 32, &__c->sig[3], label);        \
                unsafe_put_user(__s->sig[1], &__c->sig[2], label);      \
                fallthrough;                                            \
        case 1:                                                         \
                unsafe_put_user(__s->sig[0] >> 32, &__c->sig[1], label);        \
                unsafe_put_user(__s->sig[0], &__c->sig[0], label);      \
        }                                                               \
} while (0)

if "set" has only 1 element, then _NSIG_WORDS must be 1. The warnings
are coming from cases 4 and 3. (But why not 2, which would also access
beyond the end?)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108301314.22B3CB015C%40keescook.
