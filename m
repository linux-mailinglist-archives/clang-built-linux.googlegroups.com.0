Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBB7FYX5AKGQEVEDRMRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E1A25CE13
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:47:36 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id a13sf2699775qvl.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:47:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599173255; cv=pass;
        d=google.com; s=arc-20160816;
        b=GGlBLDGJ/GNrDvy2mThdt9PVFEkhBaq5rnUsr5NtG0ACzx7yiHjbCt50DrNiySNUmF
         5Y6rCTDoTkkpCERxAJaInUheesZgcXQ6OK82vYC693JIyxM/vJKX/HhxJGlYq4cKfaDs
         lRennh+e0lQdc/i2Exl2L9IrmbzajkhjeEy3h760V3NYOumkO59yRQh6e/zm3FXZ2TdD
         8Ce764gGfybTkVIrp46kRZqQGNqOQKl1OrJyZe6hW66PFcqwNN+i4J3arKMUeC9Fb+DJ
         IIhXhJe95RLos1w8ezyxmGqt2M3J0ncAH0hhQBhqX0pT+c5aF7S8tnKlQZC6Gd9msvGI
         vQMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vngRZaWWS7btBSz3gUE8kilEWjYppRMFwJk0aQWSjI8=;
        b=TbEQEEN81c+3LRpi73gCU/upf/lWf08W5dEzVqVwivLT14c00gh06CLNahNr9EGt6T
         NGeJjdfwKFfQqQA1C9NBenOPpZvuStTu6ynZf1MzqXx3Kim3EoE99Qd0a0XGQAWZM2Jr
         T2saRWphXRG/wbRPASufp8rTiarOspyTQaz0bgctxuepW7oV3Tg7maVeL6tEJycqGZ3v
         yJYAbh5iAHBMiNPUmTGp0KNi5PLOtpkqxxzAXtsj3bMo+SopStmwXgk/wQbeDFN3wS0q
         PiSFnLtMuPdN1gO4HnIvSO29+MmtKFxDevI65UtUFCi0amOO+KI8EgF7Sm4w0xVjmik0
         saLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UyJevSS3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vngRZaWWS7btBSz3gUE8kilEWjYppRMFwJk0aQWSjI8=;
        b=mFJxE0LeqE0cPA4xXkjH03XTeYAl/V9XQX0uYXFbHo7YczDNoFgaMcSvrCkGrQh17I
         AgyTsJIXF/QyvZXhj5HmSw6iisiSvcyCTm+C1fVS3FrWUoV5N9HDZk0rYzoM/rHTUEhx
         R/orO95nTpGK4SUzJM198/PyPUwwK4p7GYx9shNqCjDuYi5j9+BJC91lDVL4eDom+nYN
         ek0ZAxZzeQIZVpBogXLtvOZHfMRbMBNUxAfT7vSmqM+tkkaBIT9GfkSfvos1uQUT0V/f
         vZ6FYkAmIJXFKRs5pVVptL3QSLlKIvxdfaPV83XcaAqDPHeStZddV7tZEo18bbN+ugSm
         rGUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vngRZaWWS7btBSz3gUE8kilEWjYppRMFwJk0aQWSjI8=;
        b=E6+TSb0M352GRu0GkfwZ3ie58I+oKs0Kz5KhD7vikrYOZ/OI4Yt9zcXafUN/GZYYAW
         /xQgUyWoB3pa4gRFWwyDE2qeiD678EXCNe+XRnS1pzMeMjmAKIdff+6A36U3TqW4i525
         vn2azwaL3tGA8I7ZM09zgZ39gu8fR4zKMbKjGkFvi3fOUUpx5afXqj87M+EIZe03sXV0
         EWDdQ7QlxeRX65VfBdDAjWeLp3sNjqtT6QeH4qxFR/xGIoyni9HYsiGSEJRo0//O48/U
         9GBoYwr01BrzhqUhhoE3lwhF43Qmac7grnAUh11eNYVk56XI4vgFdMWX14fag6yt6k4c
         QHdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Qua/hqnBrWHMYmm+nvuWQayxv1PnURRO9DowE5IQSnI47L/Lb
	W8HrmOu1EGglHim0vooBXEo=
X-Google-Smtp-Source: ABdhPJy2W5/Z3WFCbVbiXVe5mtousvlaqBRGwhVOrQ0XiMOzc1cNqvzHc/kkEJEVLrz5uLaMG1iVIQ==
X-Received: by 2002:ac8:2612:: with SMTP id u18mr6104987qtu.363.1599173255642;
        Thu, 03 Sep 2020 15:47:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2a65:: with SMTP id k34ls2907662qtf.5.gmail; Thu, 03 Sep
 2020 15:47:35 -0700 (PDT)
X-Received: by 2002:aed:2f01:: with SMTP id l1mr5886333qtd.349.1599173255303;
        Thu, 03 Sep 2020 15:47:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599173255; cv=none;
        d=google.com; s=arc-20160816;
        b=mKOGT+He54+uGrtAstG1smNHcYVhC0D+qWE6AjEETFINsm3D7NlA6BNspq+1B4nWnl
         ssalkLL3NhFuc1jP6SRZLDhh+abzIZdJl9UUpDgE6b23zQLhnQHvD22zGihgn5eN9o3A
         zXJL3VUJfnIqAVsT6FcXD6P0bfamtCbb8SFPQvMIZ3BL7sI3qdjpVL92dxYrZ/IWtM+a
         0RTB9lXTyBdLzBMbhQLQa4qXafTdXly+yBeCVNlLLIpUC71UfLGUg4VW3cmohz8vi4WE
         iwkYuWLt3gE0xt0xA0TRQfu99DL7sKbNdEmJXazRe36ftza1+rOSdZ9OX72fOTm4AUsE
         crTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eFrstCXBN3HfrZebeISGA36KawHO68DuV5H+8+oCMrk=;
        b=vdbXPMtVjf80rJ9+ZUvoE5QZ/O62COwAj2Z6IGkLxaK29sW8IL6dAtYSbJtAPHOvVz
         fdz5RWuTsVJjoebqA42DhB3b6aBIa/x205vu4NYGZIgdQxEGxlaU2Ik9IHs9z/jy73rP
         5IJsCJVKscoz7KGGUUXvXm/xdqzrpQ01i1DtZ0vuKzWIKIOg4xZnCpteDRKda8Wsilmz
         VS1Hd/wqibwM+aC6iU+VwjH2qbyaaXKOBpfOhAihYAALmV2hQ0JnBhmYjTEPYDgs7WHK
         CCY9vz9Ksji/1RPuhCXfbViIWFeBydt0zEnw3T1Z/64uCM+K6HW/EKm6YfX809IBkCEC
         2wNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UyJevSS3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id l38si240754qta.5.2020.09.03.15.47.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id mm21so2256430pjb.4
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:47:35 -0700 (PDT)
X-Received: by 2002:a17:90b:889:: with SMTP id bj9mr5382384pjb.101.1599173254469;
        Thu, 03 Sep 2020 15:47:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s198sm3700589pgc.4.2020.09.03.15.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:47:33 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:47:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 27/28] x86, relocs: Ignore L4_PAGE_OFFSET relocations
Message-ID: <202009031546.4854633F7@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-28-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-28-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UyJevSS3;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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

On Thu, Sep 03, 2020 at 01:30:52PM -0700, Sami Tolvanen wrote:
> L4_PAGE_OFFSET is a constant value, so don't warn about absolute
> relocations.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Any other details on this? I assume this is an ld.lld-ism. Any idea why
this is only a problem under LTO? (Or is this an LLVM integrated
assembler-ism?) Regardless, yes, let's nail it down:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031546.4854633F7%40keescook.
