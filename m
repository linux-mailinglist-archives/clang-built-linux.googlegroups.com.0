Return-Path: <clang-built-linux+bncBAABBWHGWT6QKGQELVSXPMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADD22B05F4
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 14:06:34 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id 64sf3874222pfg.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 05:06:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605186392; cv=pass;
        d=google.com; s=arc-20160816;
        b=akFloObXWGETBJSrz7H6qtvV4OEOvzJpvrisIxbDtdkidwUrqUYMB2g4Za4XSGF6yE
         mHO7bETYv1jjfDNKCVB8KhAt9Jzx4KFs+cLpdy+eBDiafb/HhyldIFF0lwOOaXoRYI1M
         IGDeqtxZcXfKE68OhhcD8EpTLgPELRKu57PB+HzIWMb25ZhRU2En6klbjclHQ4Yl9mHh
         n/yBd1+drB/uCd+8ep9TddNSg4BjnsJcrt+sSKch9UwV4EjKJhq7cIk38Cz3/kYdk5RG
         uNs84D2MH3cUxcBDzpYw7qBLgx642u/Ok4lv7TEUjVKrDzkiFsxFWxX/wHh3vykP/iXZ
         6ZjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=qhFMXXIhbf2PldxEx4MHPQovhDEDsvXZQ2spKrljRh4=;
        b=yTF3tzTTkgrqiVwYOa8osnFqQtRrysylBNeqAN4cdDJZseUwst2di3K0k1l9340HS/
         5FjgceNdjlOKMdDeX0qVW7e8AgOYeNI27lPVgdTZ1hDbY+BsBwGo6ZWDS3t7CcOXvnS9
         5hRbFFte/59EaIOFnaXZ6BQYtO2DynKoslYw/8bg3fMXgbjW8hAzgxnG4Pjwt38pKSKs
         Lfl8lO+oGMyQyJWCAwqpSLC5jcCVcltDOYfRzuenWj1erYekLmggtbUxCr7UxsJDLzU3
         lTVAwSiDF/fs6Y15Oh/yJwRUVwko+Wp1boi5lKxWF0llxkp2tgWyD4NvRFvMhjg8tUyT
         GxWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OG3UFp0+;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qhFMXXIhbf2PldxEx4MHPQovhDEDsvXZQ2spKrljRh4=;
        b=fiFdpNLg0JbR44MundAYVA/oM4jDUj4syd1M/cBZ5D5zQP/PxVd/pPeu1oamNExJBS
         4luNW1LL0hMFQNSuK6BAYmjZ6IANEH9cpgZKBjkP2Mzxasy81ZodOt3sVUEYA8erA4Ee
         X5ukOX+37NzrOWs23siWasGD1bZrJBj3dIu3zRDx8S8zkRg5RHbZv//T9oH5agjhVBwX
         cOcc1h72n3hmXWz/ln7EGX5B9C3/Y1XkrCbsLWUj35MgldfkTDeF4XErlUcsS8b/T2Sl
         cOrhwZ6Hahew9xDQTv8BMuRDbLxHTC9+jmssdYYx6iaTvYEzY0FNMQrJebTe+s0VC5+T
         mb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qhFMXXIhbf2PldxEx4MHPQovhDEDsvXZQ2spKrljRh4=;
        b=rS+tDLngN9PmJ4pTwQT6ysW0yu0nyL3ONZDt+Tf9Bq4Y5EDOLIB6jNvHD1M/bKeRCa
         T/xR+PlwPHsN02+eBu1fQCGK5k/TKnJUHdePwOpYOahfeQqFsCfYnNaNRO+awY5ajcQC
         4DtaZbjAST3SvpdLjpnENwNLSiV2fkjPaWi1gumg+cEupQsp7ikW2xeW48Ah3Dh1Uh2q
         mwTloSMPq0r2O7tDQ4X3NynS1yRLlwPv4ZbHVaoCQ0Ferwurv0f3JpNw4JB1BdYF2qkB
         8CINEKJEO/oF9+17oqmbv9NGiyf/2cmlDaywS93W/fTvTZ2Q9eHIIBJZ3HTHU1mKKzaK
         lSTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RKV0/GgEKW+W2vQnvgUr9qwspDqOmzLrVNOHK37rgVmxrn8fk
	nj0aKvn19rFna140duPTwz8=
X-Google-Smtp-Source: ABdhPJwrfscPkH1HmQx5/8JxzUD+MRq6y87F6HwxPTnYAs1ABGOayqdTJ1OpNjwqLlo/DNuN6KvBhw==
X-Received: by 2002:a17:90a:d591:: with SMTP id v17mr9634002pju.4.1605186392780;
        Thu, 12 Nov 2020 05:06:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8495:: with SMTP id k143ls1018015pfd.11.gmail; Thu, 12
 Nov 2020 05:06:32 -0800 (PST)
X-Received: by 2002:a63:d24a:: with SMTP id t10mr26775460pgi.344.1605186392315;
        Thu, 12 Nov 2020 05:06:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605186392; cv=none;
        d=google.com; s=arc-20160816;
        b=Ptqb+Km4lEW022Zwb8ILL3zLKyEgOYt0I5LTUmiXkCmMV6UmKoiuwcFgWl1V37iWh6
         +EiJVTfMOUaJSOCpGcrF8lOzHlz91xf7VHmvlrOUz9skPXZ3CcV4gcgpmzYOn/dBY+ZA
         FliiZXmzgHb8GY+7r6BI/Nu+ztL8II/VP0+ZvtuNceC6cKGLG2TukoY5Ij88XH7U9L9z
         4ETK69TvDdHCGZVQkvCgM3JBIzThxIVuFHROhpM9u+xQX2VApuQRRk2MCkMLncbwaRFv
         mAdI9ZXXp7aw+SOrxVxPadpEV4ci9aSGZvuBXaHHdblkkJuPBSfJDr0943+SkJe4MgYs
         FF2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OydLQi5lTPAwpamOmYSfpkydSXoV20NRp5eXl+9Q3ao=;
        b=D8q9DHMzPbVFA9dkryb1DunRJ9yuRTP5dUEEKno3A5EpPpHhKfvNzxkJoouP3EOtcU
         /yZqbF5RmlkdqDGft+qIGjYFS1vHqOIVMkI/1Fvwd5VRg3dpmB6EHeUDeuiCVGIJ4m1P
         h1PlR+XSykGmpaDccAGdlO5rpsyP2OAOA3J5VImZGNn9gMktJIuv1wuOrNctfhz91FOq
         HI1hLLvYi3JMmlx16RpwDOAJHzpFAMX5qna959+6Z11RQoiR4FpXklxWNI6MCb+tW54U
         XSMUPy6pM5hEWA1sGtL1J3tdh4esjN/r+m1u6hji8MDub7Jxiqn4UN58BQsLVvaUtogj
         Kt2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OG3UFp0+;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v24si294542plo.1.2020.11.12.05.06.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 05:06:32 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A3CEE221E9
	for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 13:06:31 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id z16so5470427otq.6
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 05:06:31 -0800 (PST)
X-Received: by 2002:a9d:65d5:: with SMTP id z21mr19755766oth.251.1605186390831;
 Thu, 12 Nov 2020 05:06:30 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
 <CAMj1kXEAhyTfFZg4_+wTZ5+obQpAzFknC4vR1bNrRG6GpW4D0Q@mail.gmail.com>
In-Reply-To: <CAMj1kXEAhyTfFZg4_+wTZ5+obQpAzFknC4vR1bNrRG6GpW4D0Q@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 12 Nov 2020 14:06:14 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3Bf8EibVRG36fKg70wTiuvNC7P2XBygTinZWbM6VzU9Q@mail.gmail.com>
Message-ID: <CAK8P3a3Bf8EibVRG36fKg70wTiuvNC7P2XBygTinZWbM6VzU9Q@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Jian Cai <jiancai@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=OG3UFp0+;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Nov 12, 2020 at 9:42 AM Ard Biesheuvel <ardb@kernel.org> wrote:

> Although I must admit I am still on the fence when it comes to the
> policy around rewriting perfectly valid code like this to accommodate
> a toolchain that nobody is likely to use to build the code in
> question.
>
> Perhaps we should at least add some rationale to the commit log why
> Clang's integrated assembler is something we should care about?

This is one of the last bits of kernel code that could be compiled but
not assembled with clang. Once all of it works with IAS, we no longer
need to special-case 32-bit Arm in Kbuild, or turn off CONFIG_IWMMXT
when build-testing.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3Bf8EibVRG36fKg70wTiuvNC7P2XBygTinZWbM6VzU9Q%40mail.gmail.com.
