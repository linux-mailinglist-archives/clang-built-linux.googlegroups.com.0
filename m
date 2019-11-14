Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBAMPW3XAKGQEQ4D2M4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id ECED1FCB2F
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 17:57:38 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id w14sf3622276otk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 08:57:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573750657; cv=pass;
        d=google.com; s=arc-20160816;
        b=uuIJp3MMA6xZdydFzCAT7SahL77KaS3JJt8cI/2eKwvfBhkUz+F85pTzaWTZJLTNTk
         3PX1vNDuvKBzgnGLKBuc/95Sl9gHLW9cQ+IkGUFiTMuzz/PuMdZRqh93TEp2bXGNIEcN
         vXy3WD0g+6E9NzEgyEdi809kr1rBvwmK5L0xf0QidCmxLjJdjupz6i50dvB7Yp+JCpEa
         Bx1BO2Qb8XwjHGxbzzl0GyH350eIj/HxaUVis/KGlQMpMGf+gykbAOLabgeVIYxaL5YJ
         7GK8lfyi10oX9HIn1PG8TsBj+12Lqp+jOidT4f+SAesGHyFNb9/NjsO9Aa9e3PWYYpLm
         GNCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DJM4Hbz/qRK8aWhjKbelShk6M6REK3tkfWvCuDFdkrY=;
        b=E1ZczTROwA4wr82rpUMViJF/HwJQETe7UWp57U9CUqriQYwHRSyAEW1yC+oMqYtVuj
         NmefR+nGXZyDrMgwoLMWkbBlWIRajwq4bqd8+FMBUkAaDR5s+kYVL1VTx6swU+ZSBSH1
         srwEJdm+OdDGh94w5UbihYpfFdDoYNUcOopFDcI6+kzQtbfAr8p99C4fDgJB6SQig72W
         zgSyVusHuSgHqhBOweCcLEWUOufkNWdMeuvz4U+lbiQhSzU+6qZKVnDHo+k7s9cLKsQa
         xwZg9P6t/YQfOYg5Nkn8V7D7NdGg/r2SdJT08fy7jHt2akGuPoi+LNjul0OQl61oYTG8
         G+sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hZy7g62H;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DJM4Hbz/qRK8aWhjKbelShk6M6REK3tkfWvCuDFdkrY=;
        b=KXFftKxuOGWNLyyfk8aa9Ol8CeBsg0XWf//yQKKizWhtK8S7Kg/5IhfCYLbCj0PFSa
         2Ts3qJfWfZUXaN058p7mOKM4RTaMBT6d+/xbbqOQX1RKBGeDfDWGfZEaQTbXDM0Xzn19
         uFW3+xN77FokttmoXxp7KB3dtKpGbEOvWxPd/xzkg15JFTv/04nco+N+FyosZVPVA8O3
         rjdIjkzxjRmos1wZX/q9ha0cdm6LN7R4i8PXD3gr4KSgcl8UK2++JEqcaBq/om8fS5Lh
         O+t7khPeWvMkOUNpvgUpw2quWuByBfjpXqvhhQCfzwjenn3b7c30qAje0b58W6tCgxvE
         fd+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DJM4Hbz/qRK8aWhjKbelShk6M6REK3tkfWvCuDFdkrY=;
        b=C1Gm6DPfbYzHY6Mj/NPPR2bPclHOz6BQy65Fthrcjl3g5X6qIvUa9JDsmqVchu79Z3
         MvT2sOK1rUeQmoYS/hDSicf8lOjA+EBR2s3wg/oYlTgAXLIcwl9WWyFkXkFLDdzkWb1h
         paYsZ/5A+WafIqQFYBjxNyVvJEE7MLPWn/7iCgXUFw/atulaMlbYJQe0JuM2RMH+ZAvB
         9NfYLtdtOP59CUgtTeHirv2xNVefCutOKw3XyeAHmszfnckfj2pNUJWlJlc6Oagsu1Fg
         qVgaf/voGozfDLw3Xvzew/btGQROw2ySZfOCuFMHNzFirqHlmz0OYNTUp+tXH9F/MaRq
         F9HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW66RjA10nQU3jlA0oiNKYZ++dUwVXKfe5aMP6h410bbVpeZIyD
	eMU+m4LhVMisBgKunQQx4Q4=
X-Google-Smtp-Source: APXvYqwHp6VjTXaWB9KWsuCvwcugagSiJW4m94rCxyJIKj1n1gFob8D3sqQKePy9P/0z3suYu3e6MQ==
X-Received: by 2002:a05:6830:1b6b:: with SMTP id d11mr5628342ote.169.1573750657858;
        Thu, 14 Nov 2019 08:57:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf8f:: with SMTP id f137ls1864031oig.8.gmail; Thu, 14
 Nov 2019 08:57:37 -0800 (PST)
X-Received: by 2002:a54:4898:: with SMTP id r24mr4362834oic.143.1573750657505;
        Thu, 14 Nov 2019 08:57:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573750657; cv=none;
        d=google.com; s=arc-20160816;
        b=SnuyD8q+TbTdYxL8e3HkUt3yT9Y80YME4gpAyzVWusci8UnQVl33qIlk1Cc7xFzKa/
         0x8jT6fJcwBLLUyoNlfeXEsaPlnBg9FxYBzK71sKF2UXdDpnUW8fn02p6qwHi+pAvcQN
         LuOO1qduo2H0W9v9zlVSN2uJkW3hGV6M4k6C7D7GGSxir4/+80x7nevWuF7u7xp6PsVy
         wJDY4V7JXUawdQSMze0C8T/HMLRoPFc0DIMOyKen2B3RN4pdlWejtPBit8O1IMonLGTq
         yTegqmTZw++DqqlGhvwoQGBwVRgxWoSd4i5P7sirALwFb436DPfVy/IJf0CiE15O2maW
         0hUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1sIV2atvFdfsM0+qioNLMP2SAs/uD7m16JhFR2KLy/0=;
        b=gIZ0cImkVnIOmK6SlHT98JFO72wHtqZ56mH4yK1s4/Ye/LxfPEW5adTY/9VCI8WaoF
         aZqWOaztyyVkuzbzwAF/X0FRl6WRicMTp2PS2+zcctST2hHHHH51BVO0QLUTmEAuofCl
         JL1R69XRORI0GsdoGjm3raCtGN0ezucOGUS/scNlXJuqellucVkL0/m0hU+J8x6wAuHk
         qmLqf4tS+2LmAojhGAayoYBCivhiARp8l43N+F/jeXmaPqN5r+wIWspWo+ybFVxbDM86
         cvTljdwzKhre3y2pG3mMYW/2A/vS3Rhy01g05Rc1CEfMcBPqk3Bq5bVRuHi7aycF1ss7
         9kcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hZy7g62H;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j26si323719otk.0.2019.11.14.08.57.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Nov 2019 08:57:37 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 829C9206D3;
	Thu, 14 Nov 2019 16:57:34 +0000 (UTC)
Date: Thu, 14 Nov 2019 16:57:30 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [RESEND PATCH v2] arm64: lse: fix LSE atomics with LLVM's
 integrated assembler
Message-ID: <20191114165730.GC5158@willie-the-truck>
References: <20191031195705.36916-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031195705.36916-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hZy7g62H;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Oct 31, 2019 at 12:57:05PM -0700, Sami Tolvanen wrote:
> Unlike gcc, clang considers each inline assembly block to be independent
> and therefore, when using the integrated assembler for inline assembly,
> any preambles that enable features must be repeated in each block.
> 
> This change defines __LSE_PREAMBLE and adds it to each inline assembly
> block that has LSE instructions, which allows them to be compiled also
> with clang's assembler.

Any chance LLVM can be fixed to avoid this bodge in the kernel?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191114165730.GC5158%40willie-the-truck.
