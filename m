Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXOMRWEAMGQER7AU5NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 709933DB138
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 04:39:27 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id x47-20020a056830246fb0290451891192f0sf3108310otr.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 19:39:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627612766; cv=pass;
        d=google.com; s=arc-20160816;
        b=MMDyqkR0SM4tnYPdWBOfjgAE8onNefBe59oKwgtkKq7gBWPxeJgH47S5kV4z0lWEfr
         yNtcZfrs8dsnKsZCUOKqj2jeAp5bE4sqTr/FxORHsebGMRiJbzZtzcPG9eZnPHqXkYlb
         lHolnJzICoWxeB86WxoKzoZVomK4Dr4l0/nSSh8PwHrE1wdTAia50kUhJ6rDrG6ZCDWe
         8rTxAvrchhoNNmhCsCNXhs3s5L7TPDMg3mcRRvlksYuirO9TrYwnQfvFxwlAOmRwk8oq
         gpm9IH7aaNPr+GY/3kLx2Td94s8ZTHX/f2I+OGDs6oJRqKnh0zcFALo8AbUxGonhRGKt
         HTdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MkdhFJqMmg0/mEoRgT3mrCMwzvk9ZazxCzqppq3nrl8=;
        b=Wp8SwOPnKQmML42yeoMM3og+JTAZ+F8gBZLp0chNAq3gQxQ7xn9uqwKynwUFeKO/FK
         ZLZHuvNNhfDjYTpD1a0qhuIsyyMSgRJyEgYUFhrC88hTgPfoKSDuti7knWe5QVN+IgwN
         SRzNQ9K/+5/NFxHHpJSdj9UOCC70bWq2ETEDUi3msuafmW71nCzEVV4V4mvWSVooo75a
         c043bx8tGESlrywNYyXg+gbbQLMymNVUUtklPg63cCDTaRx7hNUYIRkJNiNshNr+qW58
         dsD2Hwx/9jCdPuiz/7DO16H9GgIlaWukseY5pO3rz6Lqx906gkLTtMBL/MFxXJDv1Pu2
         4zLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j8UqRed6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MkdhFJqMmg0/mEoRgT3mrCMwzvk9ZazxCzqppq3nrl8=;
        b=tIRscMtw3s2IbuA8PKBOWTvNW+1bR+rIAkP10OJUYgjsOqgju+rWYY0UvB9o+/QyNc
         oW/0PKhQMBZ8wjU9I+2sfv9ptUtp1CPDAoHLEmwx5i3qIXOqkBGAM9aEhlmTuC7lrQWS
         Vh/+ZcFPOKHq3JEu0508Lz5Dlz7VxakMEr58T2OqoguSEG3GE6AEs/VPp/oiyJVILXg6
         9+eh+3QjeOxVKqS9+nJlZ7RQw4R4gVKBkenksfRrqGj2IKQ6fkwVapIQdp+yAsF/XWZd
         gDHMLrQ638w3XHJ0BOd/41XH7O8DiF+e2x7BP7b8LaCnsNkH+ylk81brYnjVjd4w6ptJ
         kUVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MkdhFJqMmg0/mEoRgT3mrCMwzvk9ZazxCzqppq3nrl8=;
        b=slU94c6linj1ivGwox3GnkjM0VaIP7FVDjNKweCr8zTQ/uaXf18pt0yOclmfcfgMlB
         mrINiVR1DPx2uCPu8y6jCmodIfko1yMdayyAVJtvY01QPgQGAsjNcSODfwgjsxGZdrQP
         d4ivlpaXvIm0KIbIig0tw9PYtfLvl39C/3zMrNw5Lu54h2BVHmL7UqTsNBkCDdhcrjNF
         3CBtyHy/kbGZXej11zPaxyyFHvUYf4dpgK20YsAC3Z1UdLg6/4I+BPryWylizoAY/gMe
         jJnv4+mCdV0kV5AsOC4Zzk9Xz1ip7XV0KPhfuyED9RZUF00IpWLqXSggsK6FuKhk6GSL
         D9Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XeODmwsaIaT3/q4BQAGjjYeaaFtLtal34jAli0Roa8P/gDdgO
	66+T/PFY4wrKz+0mIQ9QbnM=
X-Google-Smtp-Source: ABdhPJzxfxguzkgZVqmpNfSjUvWc/h8d7cnrtsHMsRiS16DDUs5rhLu3mcRiIXT1d/31hDlFGjGsUw==
X-Received: by 2002:a54:478e:: with SMTP id o14mr341316oic.173.1627612765952;
        Thu, 29 Jul 2021 19:39:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c21a:: with SMTP id z26ls16835oop.10.gmail; Thu, 29 Jul
 2021 19:39:25 -0700 (PDT)
X-Received: by 2002:a4a:2a05:: with SMTP id k5mr215675oof.0.1627612765605;
        Thu, 29 Jul 2021 19:39:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627612765; cv=none;
        d=google.com; s=arc-20160816;
        b=EsAVBYz7EZsRSlH812s85dbvz4ayac81RZqCQ9xus0wkVSypb3HV4+F1D1XYR9MBj5
         1Keqya9ibSc3RY05FzJMoLNCrHM76oVN/8TM//nxFPheB/KA0CS4f67/bb7Y0PaEhBQE
         CdeeMu1lcf8Ev47fGccGf7/pExw7Yk7aXwfxf9tXbkkkl80HJT3xu8lpwpZyFmnDszZO
         hnsSiLuODEgWn+hoc4vTqzKOTWLQmVGgm6U6dVCJLh6I7xx1nPHs93HkPPVofNU2tSZH
         WotDEbkhTCYH8d+ZWC7MVxZxLWhxfZ8m28FkIdS19JlpIii68VjZc4oP4PbWwMQ5DCID
         D6qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NHuO3a4lOV1ak/eQfFp+AAaG2sMLeGDAKzyV4AOK0RE=;
        b=L0D6QXIiy1feLUv6YxpN/d+x9FcK5tQ5bFhpJgFQzICUak2UXceEMTbPf4PkZZu9+D
         7raehZIInSRS/YEfSKIoDeFuYeb14HIS8iAh79po5VfItBPGYaR9ZtI9Hg7xpOQ01Xca
         ysA4RR9VbaouuGkQwkaOytGtLAVnxMAe3ocWODg/PwdOo121r9Gan05fT+Iu9IeVEYYu
         yQnLz8bD6EF7ybSfIp5Npfej0y+Gv2YpYVDRBceMTYuP5RWpVFg1OZhikd8hYLmDCLGk
         34GuJUyZxWeEkNb62jg7ha+mM/2Mg5sRCASZkW9X5AD9uxDrBvdVKKeItQKF83ypOwUw
         bfsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j8UqRed6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id l23si10004otb.2.2021.07.29.19.39.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 19:39:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id ca5so12961364pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 19:39:25 -0700 (PDT)
X-Received: by 2002:a17:902:c409:b029:12c:8d18:a03 with SMTP id k9-20020a170902c409b029012c8d180a03mr518065plk.81.1627612764988;
        Thu, 29 Jul 2021 19:39:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x7sm195258pfn.70.2021.07.29.19.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 19:39:24 -0700 (PDT)
Date: Thu, 29 Jul 2021 19:39:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 34/64] fortify: Detect struct member overflows in
 memcpy() at compile-time
Message-ID: <202107291938.B26E4916@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-35-keescook@chromium.org>
 <d2f9f21c-4d6e-9458-5887-ca5166d07942@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d2f9f21c-4d6e-9458-5887-ca5166d07942@rasmusvillemoes.dk>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=j8UqRed6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
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

On Wed, Jul 28, 2021 at 01:19:59PM +0200, Rasmus Villemoes wrote:
> On 27/07/2021 22.58, Kees Cook wrote:
> 
> > At its core, FORTIFY_SOURCE uses the compiler's __builtin_object_size()
> > internal[0] to determine the available size at a target address based on
> > the compile-time known structure layout details. It operates in two
> > modes: outer bounds (0) and inner bounds (1). In mode 0, the size of the
> > enclosing structure is used. In mode 1, the size of the specific field
> > is used. For example:
> > 
> > 	struct object {
> > 		u16 scalar1;	/* 2 bytes */
> > 		char array[6];	/* 6 bytes */
> > 		u64 scalar2;	/* 8 bytes */
> > 		u32 scalar3;	/* 4 bytes */
> > 	} instance;
> > 
> >
> > __builtin_object_size(instance.array, 0) == 18, since the remaining size
> > of the enclosing structure starting from "array" is 18 bytes (6 + 8 + 4).
> 
> I think the compiler would usually end up making that struct size 24,
> with 4 bytes of trailing padding (at least when alignof(u64) is 8). In
> that case, does __builtin_object_size(instance.array, 0) actually
> evaluate to 18, or to 22? A quick test on x86-64 suggests the latter, so
> the memcpy(, , 20) would not be a violation.
> 
> Perhaps it's better to base the example on something which doesn't have
> potential trailing padding - so either add another 4 byte member, or
> also make scalar2 u32.

Yup, totally right. Thanks! I've fixed the example now for v2.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107291938.B26E4916%40keescook.
