Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVEPRGDAMGQE4V67MMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9733A31CB
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 19:11:50 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id w3-20020a9d67430000b029035b9aaeeccbsf258671otm.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 10:11:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623345109; cv=pass;
        d=google.com; s=arc-20160816;
        b=QHXZL4I428wJfoaQ5QiBqZDz5q40UF8rw+DoKWfdnLC44Ip+TftHX+2YFgJSp99wUz
         e1RFQOBTp45Qb0iXUv6P1AQwmNg2pjyOpKQVNaByL5cfR+fNELYeV+b9uKN1ImHjbLqh
         878j3WxezauncrBVwT99js0s0rvNCVM+UW4S1CyDy9RBhqxsDezJmtmIzaYnxzG+Ng8a
         VIYHzmBJhCPSm7uw5MNzB4ZYf19SjlqT+mH2qpVuv1l3X3LV8V3xdaiNJDG3hv/v6mbD
         g9UDNxLBLTSJt22o6WV/gSX5LXvyb0D6iUhPFU7ZXINLATt4ywPD0jy8eMW8Rl6Doz3M
         Qm/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=i5MWcAXTFjSk+y4nkXmXAvn9IlhGoOulIqm8dmNTwUg=;
        b=gw7rdPv6BdFhZ+vwwHkMvAwUEm495RXZUrrqeAhw5StFldtQe1eSO13uiLLADdPUEj
         FJLaA2NTt/nDul+1cYEFlAtLh47abqPlxvyv9ZIWSSBasrT+ZjvmILyQSN5Y3920sHlD
         fOJ6jIoidhmkN+NSUidQmSbHhDLlOo66j3+x/Yd2BThm+QPTpYXFkVx/WdqDE+pWjrUl
         xncwDAoHBbWVPq0B3nojA7vRQjZ9bbtRs66BHKJKqJi+tqq567TFHroIKeeg6Lyxqz/Z
         hYsECXxJNUAldXaOeCAZJjl0rUjKWgOdTQBlrEop4CVCEPoblmWXkvuof0/i8qq1FzGE
         2PzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VHQ7nUeA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5MWcAXTFjSk+y4nkXmXAvn9IlhGoOulIqm8dmNTwUg=;
        b=KrnSzp8QAOcxMrJWM04RKzfPXRypatGL/zYAcWZpakQLC/uJH7P+zPfanwSTOMvhZU
         uH771sFv1zTD47xeeSQouC3F5CroQhbWVxlMiMAW/M4iPIAvKKFKEJuvBCwkIuQpELwN
         2A5kL2RhNo6aJRpJdbd8iO4jcZQR1SMzRiW7tAuizMvK+8k13yaDLXSlkmjOKyzB3RiZ
         SMLhKnmGe9rr/aIW1VkBx2jQNLsiqmkXrzkWERGf0YWpjYabVUAHO5Q9fxPmi6LRFFRx
         KgAo4MBDd0Z3nrEFMt+NsBjETlVF/FklHv5TFnaqHNgBFstagDpAdMlZTRVY1gwSXUQY
         t2Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5MWcAXTFjSk+y4nkXmXAvn9IlhGoOulIqm8dmNTwUg=;
        b=S73jq4vDsty7dhpFGh7HSeh3VXtsBfbJkEnZEWyXuK/FdsS4sIk+5UNpKR/jmtz5/5
         LuKmIz5HF0RRKMHv7g3moDmSlw4Oj8XA53VzQIgCEjWVoPWos7JTxvqaiO6LUaEUh6AU
         IMlRopwnGhDH36XLJ77573zucgblo+Jv7eZ/MK342Y+bjCyNttrE7DZWc7FSxyBlnA1u
         3T47K6Vu0XnREb6Yrmt0uaiMsFdDTnuayVJ+26wuwofa6Xf75R+MluF1y12Fu+IrsYBS
         /+t7Fo1/qUF6lTH4xa+Miqkn1cZRDVX8QbT0XG2YjsK3+YYiCAZUCRxNSqq7dRbgju3b
         mWTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309ISO2hz8N+CxWKggrxf6d8xlOM4WJ4tFH4ehmAzZT2ceCzZDx
	xgHEFR92TO9JTyV/jaFa5ec=
X-Google-Smtp-Source: ABdhPJy9iWT5C8XhdIca7MP3FeaD8dDPdZj6uAO/tn5pnt6clgvasGN167clNldv7eePQ2IhvdAsgw==
X-Received: by 2002:aca:ab94:: with SMTP id u142mr1536250oie.131.1623345109079;
        Thu, 10 Jun 2021 10:11:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f05:: with SMTP id t5ls2085470oib.3.gmail; Thu, 10 Jun
 2021 10:11:48 -0700 (PDT)
X-Received: by 2002:aca:f482:: with SMTP id s124mr10697984oih.167.1623345108708;
        Thu, 10 Jun 2021 10:11:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623345108; cv=none;
        d=google.com; s=arc-20160816;
        b=0WOVNuu2DPWOAOcAYQ5G3ETvTBVuocx+EfhIXZ25pOk+OaiFUn//btHMmNS2uZvI4q
         oC2ACu7b93eHz8syqTejQ/4sunvc7qkDOYYyG08WPyZ7pfTf7d4C+eqfnIvZf/wVdIB7
         9ZYuu7x8PWq4r/3+XxsisrHKEilWu+zj4pafyF0K9D3M/GjPrvmhpQxII4RcIePkVNZY
         fsBadKp/p52wCQQJZ6/zBIiusBJ+KIC22n2DiAfFb1o5r6hKgEFogAwAej/P0lf32NRd
         gkDnH1yTCKEBsN/5JoHtlBYX5GjrKv8kUYVagBSa3ECMiyyYjsVVcZWkZ5aALns5Lywp
         Lq9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ea935A73j1hJeytBYHJPVhPk9COUigRxCnmA0Y3k2rg=;
        b=CDhzkANXT/Iwr0Gw58gd3JHDLYaQ4cWNajc1FQ7wIgWn+Essmfy8uCfUIvMVZb1cUc
         dIzUUe94CXrYik1JJKqs4T1F/fxLVaIsbWCZi7NCFl05+gDwuSVCAqgnGD3tPXngnbM6
         oaJij8lKitu7YiU8+cTT6jh2ThXKRZ0qpjYJxk/d8vRReKcCYpytDSTp6Nlp8AroD+yJ
         mZhWQEeD2A2SB/R+mptM42aZoxxpL5dBUhjPPd8EbKFHFRK2CHSZbQHnqyJX9VILGQys
         5nPupXLWdRLZjz4B+UoQdOEsXtIgA6IN0l3D6zsSFi3gUEs/ILXkLiWQIxtawPHAuZns
         Uj8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VHQ7nUeA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id 88si341822otx.3.2021.06.10.10.11.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 10:11:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso5783665pjx.1
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 10:11:48 -0700 (PDT)
X-Received: by 2002:a17:90a:640c:: with SMTP id g12mr4510182pjj.52.1623345108306;
        Thu, 10 Jun 2021 10:11:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id fs24sm2976112pjb.6.2021.06.10.10.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 10:11:47 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nathan Chancellor <nathan@kernel.org>,
	x86@kernel.org,
	Borislav Petkov <bp@alien8.de>,
	Ingo Molnar <mingo@redhat.com>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	"H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH] x86: Enable clang LTO for 32-bit as well
Date: Thu, 10 Jun 2021 10:11:42 -0700
Message-Id: <162334510028.1236130.14295655998961530983.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210429232611.3966964-1-nathan@kernel.org>
References: <20210429232611.3966964-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VHQ7nUeA;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
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

On Thu, 29 Apr 2021 16:26:12 -0700, Nathan Chancellor wrote:
> Commit b33fff07e3e3 ("x86, build: allow LTO to be selected") enabled
> support for LTO for x86_64 but 32-bit works fine as well.
> 
> I tested the following config combinations:
> 
> * i386_defconfig + CONFIG_LTO_CLANG_FULL=y
> 
> [...]

Applied to for-next/clang/features, thanks!

[1/1] x86: Enable clang LTO for 32-bit as well
      https://git.kernel.org/kees/c/5083971eb1a8

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162334510028.1236130.14295655998961530983.b4-ty%40chromium.org.
