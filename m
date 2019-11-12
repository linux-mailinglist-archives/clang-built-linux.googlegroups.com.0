Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3MHVXXAKGQEJZXSYXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6639AF9E4D
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 00:44:47 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id n9sf443437ybd.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 15:44:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573602286; cv=pass;
        d=google.com; s=arc-20160816;
        b=UdhRFKeaR9z9oVjl2+EucnbDZ8R0l86vfv81Jiu5qlbLm/agqUx5hW8e6TMIRLuWhc
         2uHUX+2LrqG2p+zEpmC58N4BqS9BjmFma7UZeAsxjpUUtePajyZN8N9VBICroDBHRY8u
         16MqAld21Pq+28Ip+HTfTzxh1XPhI73wbGHLbuvPF9I4rWUcstRrrWTo5OYsksxP1EOI
         0js3nwxYs9pG/MW8tvZHtk2sJ5UON1oTPnVQD/Oj99PWmi1oVE3Y3bKnkmtlD+Yi4vax
         wqVy9rTX0QKyDdwiqes0LX1haNASrPHBowB4eL4Od/F4BqvrYOAezUIWKpmVapxucDXy
         ujXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sYIAvtnx0FuduH6RSIv6mMg4LruFqPyiCDeclXEiVng=;
        b=okp9tAOx7l2U0q6ELlWLjNNimmzesHUze3YM0CKc0mmvoLdQE5f+gEjChsEr+yeGUq
         toe1NR/8IKnIKdNN2KR9Agblq+3ML/6jIzt4NegezyEeo2V2EDPGynYQUUTdSmjubtTg
         H0SqozTwrlorVGMTo7737MGj4XpVffDCAKRz9WV9JTevP3uSl4VkTFm1paadK1ibFmxf
         YIr4FkSnrWu1wh768AEE4E8vZ1U7eP+DLpE5azsa+ZGvIc2wpHgAnpDWqHwsMSHfp6hN
         rbX6Qy+gU2EmEJv6M1DB6ZD3GRpvLfd3D6AFha0Uih9uKcz3ZdOqsL6PLc25HRKTbFea
         XDng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V8X9HHxH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sYIAvtnx0FuduH6RSIv6mMg4LruFqPyiCDeclXEiVng=;
        b=Dm9y9J4NziflmYVzAEdvPerq5SR2r5KHncKJ6AkeTA+pLi65ZjfkQpewmq5yyt9glH
         jGfVa0/7NHoruPD3CTUYcEJ0y06JR/LuKcjsAXLZV2BMe9zcUsn9oETs3gtgYNpNEcDD
         o8usMM3dWZbg2nbXhr4okP3ZhnKOZmxP2D/sqQImo/3htHT1yFrM1MyP3kQaW1Br6ukU
         u6/qC79x0fv8lRoeeDxF7+8Vw436jADmKbudN0vLUmoYtC87++3ZHjpMSgp4VKNA3WN0
         7bgWcdrkbI3g83EGOSoZ4PupaQAOLAReFu3w/d5MisofN8YtAIahV6n5GJxkhiA4myMq
         f5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sYIAvtnx0FuduH6RSIv6mMg4LruFqPyiCDeclXEiVng=;
        b=rIiLhd7Cy43A8pgJgVTZVo1QpL23k4Aufy2nnqJYcIhJfS39g14ke6vis5mVk0p6v4
         InNZ0R+B8qpj0ZV0LrkUw/oGXLZwmdMtKKV879adEsVdh8ZkmFkORsIHkFCMrTqp6AwQ
         U36nwj6R2gONvIwomagplHE3vVV4VnpqINMVSTASs87npqk0lvYJhn7s4chI5jCE6KpD
         7YTRPltH318uSJDuiLKms4hFF5u83rE7YkoAbbAEdBHLWsSi2xxc19qp++8A/Q4HeyEX
         6Fyo1EglFLzPZOayc3oHS2bO6Gq5vH12WtiWBWtbMvcDYZwwWYRgqs2IlW7QNX+ysEmY
         0uuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6Jl+Ds+gbc55Fe7Vk1uRNmsTGQcN+MfACRMjFj4C9Je6+3Zuw
	fPls9s0KVT0tSZy5pVHUP24=
X-Google-Smtp-Source: APXvYqxWzMhQHgDt6hdJeIONHpOgoc9CqhSAwhYyBISocAMY5XZ5hitxTqXkx3ArCQ2783nHUdBwfQ==
X-Received: by 2002:a0d:fb03:: with SMTP id l3mr409933ywf.149.1573602286026;
        Tue, 12 Nov 2019 15:44:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b10c:: with SMTP id g12ls155837ybj.2.gmail; Tue, 12 Nov
 2019 15:44:45 -0800 (PST)
X-Received: by 2002:a25:42d2:: with SMTP id p201mr475926yba.445.1573602285253;
        Tue, 12 Nov 2019 15:44:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573602285; cv=none;
        d=google.com; s=arc-20160816;
        b=d7r5gh6vEz9QEdeXcigcVVmLgFQytR5FPY2sMOt8JXrgfTXP9IketLwVZpuIBOhAWE
         8Q+YUI9s4nC3QwSvptT+yXxqDEGTd8pXbZChaeJjBSkQmRLiagT///Fyo3r6guQbpHcr
         fbI9MIQPb77NkTsLYrsHPp8Sidn8gEItnOkiV1MkkO+3ZgYzbat2NGiW//ZQCS2x7EXi
         1lUpFfB+vR+jsYHDO+mRHeBRuEttBRNALjkqxKj5Xe9/yrOfvCh9zt+dM3nUPBVPvauW
         r9e7mWbFQcC0VdWxWxk571rLmliGcK4n5H9JquKg9hF/82VFsCjLTZw4v5xv+DkP4K3l
         q/IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EcHuuFp0uXLbkkRAA858XYtBunr2zA+LeQirH7UYVa4=;
        b=Arfxx2TpRzLAwmaI/HU8fyaPK5foqv6QiXKVBUsHCvBCn6tz6B9Yi6rRambaJLaO3l
         gPI3bHfBOIU1xmAN57f3x9BP72l8bQDbc+kd+m3CJKePpBMf6lueYx4aoiclYFwybF2m
         8ufm9t8eXUoKv58xPutxuHlkDVIY+079jCA5XED6zcFp2u//F0iShEoup+CQkQq0ZUhP
         tRuHmsOiX2SqW0fozLX3tUFLXDZdX+3PsfUFadcUj7osXiSsygkULCS2PgY8w5vBJQ/D
         9sPfIiXEnU5xUj80LCR6eqm86LZArTbaJhSxzpE9btQjJ9LAXEUP3hayio9XI6GRY8cy
         JhWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V8X9HHxH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v135si26770ywa.0.2019.11.12.15.44.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 15:44:45 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id p26so227441pfq.8
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 15:44:45 -0800 (PST)
X-Received: by 2002:a65:6149:: with SMTP id o9mr186489pgv.228.1573602284496;
        Tue, 12 Nov 2019 15:44:44 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v10sm86650pfg.11.2019.11.12.15.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 15:44:43 -0800 (PST)
Date: Tue, 12 Nov 2019 15:44:42 -0800
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 00/14] add support for Clang's Shadow Call Stack
Message-ID: <201911121530.FA3D7321F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=V8X9HHxH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

On Tue, Nov 05, 2019 at 03:55:54PM -0800, Sami Tolvanen wrote:
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites. More information

Will, Catalin, Mark,

What's the next step here? I *think* all the comments have been
addressed. Is it possible to land this via the arm tree for v5.5?

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911121530.FA3D7321F%40keescook.
