Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH77U3XAKGQEYTUF4AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id A751DF80CB
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 21:08:00 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id f7sf11293601plj.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 12:08:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573502879; cv=pass;
        d=google.com; s=arc-20160816;
        b=S5oEJW4ir0Q+RfJgb3+ScTckHYOOy/D5rL9oTywfOasejTsxFsF+B8TtSnPMvYMpsM
         Z3yO9oNwhEa5zS0HqjzlsdWdlrGt1uIysmnJw8b7b0dmHRAylLO8I0fOF3jtTyJyXxXX
         JDkXrCpbs9t0uPZ0lTNYdqYCZGaXlAMk2GLgl/bckWN7Pl+XESxtWsq7lBJUG2Oz/O0t
         HLvW5/ruEN+nMSg0r5SaJA68TF36U9r2o66c13agpZnUtnvVyaGn7x8bCVkaEyMkBpNY
         E8A692vz5IzwOajgfpRuOJ0s0qzk0P+3shmpUsUNqvcHxSkPPFT8F85k0hJmz8IFGcbc
         Drtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=R5GJC1W1FNUCGuN4zo5IsF3TBAG/cVl8wsiKI1K5bwM=;
        b=wtI66mmfz1nFSI6eWigEN3db62PsLezDce7ugOO5lKfyrpftnfY/sC6g2v7j3yMl0R
         TlHTId8nEpj56DT40nGo8gbblxBZU+1cDnOkh2z5km/KrTnTED3H71nKeJb8g3rB8mB7
         aU9tcT0jovsL5rDgHZq4fBeqY6J/04GpBo+ZkyvxeQnSqWzFhvjqXp1o0RThvT087f1L
         dQeYxaFpP3i1hcMXvYdZn29E+I5ffGrIp7OyBITg+Jw7ndVapuGTHD+9ObHgdadah2S3
         shiFpqKqzGuuDoIBNq1t7KtiWdYR/eJVo2dwRHW5lpxkRax6QLsRz2A9RLUxJIYnGWXK
         zfJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tJIYehn2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R5GJC1W1FNUCGuN4zo5IsF3TBAG/cVl8wsiKI1K5bwM=;
        b=P6aMOzTTv8PaZIYsqEdnYwAyjBGw944iM7qqGCDLkwIaOGXL41t3mT26ThDwjWP0NR
         SzJQo2cVWv2OyCp7X/g2nPywWvhw7sCS08EIXEaX7Wuv3t+gtL7KYfK8/5pRAKIBPzfn
         nm95H1LXlOVP4DOcjgeEz/xRYIh6ZGIGnQPShshwa0wJS+6odf6PR4haD+3o+fyui0PJ
         dOtdbKxeOj0sxVfeZeUdPQrtGtbvKrmSHM/SdaGELa2RhQfBZp2Vqf80uQKMGPsPrNJV
         GlquLen4tjoHMNNRX2Hm9N8839uswzfNmKAaxMZGLFkpmCZ5ej3yCK4TE/Po33FTpcKj
         4cuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R5GJC1W1FNUCGuN4zo5IsF3TBAG/cVl8wsiKI1K5bwM=;
        b=B9EHhi/84cNR8pTsqGKq8EaRjeSKaASf2n1xITPPWZk36m1D9mzd/X+8VooZOLCqCz
         ICimQ55z0T2pUdIGPRpYTBQxzqPkYPXWcyxm7P8FulJ84pILy2yINAA+MUxiup829elI
         +I4mpGAriH419fycRZTFymoyQEIX6YuQxvhnJWnP6FeCUHy7Lz4gjZNfBHrNUOJAwlug
         6LgNUzTgyLAcVcLpsf2Me/Xl6jaJLLlxsIrbF/pCeoiCaJuUDjBh+j9AEouFX7AANRU3
         rW0p1o8iwmLjCArNofPgoPooTFk8kmFF5QOV0r+b31OC1In6lEho102H0idhIO0/KZW5
         xeuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R5GJC1W1FNUCGuN4zo5IsF3TBAG/cVl8wsiKI1K5bwM=;
        b=JcGhzclfOj8uQS/9FNxIAO9W2djV1HaMV3VD0hfN1FE0z8Y1kPh0u57FgxhpsEfgwu
         uBrFCsZMic9pbI3jcTkIYEXCSm/N7ksuKNNbxrY/SkrG7JISJtBH/oSulnJ/q1pGna1Q
         kyK+1mOv0GxJXJMbxYMtVKYbHbb38WEf/mz+wps4M9faEN252RXj/74xQaokn16IYADA
         p4pxEkRcKrSz+kLVVVKhtzUfnqdAQzw5skrA0kkf55IdA4mUY8kkaA2FEMxcdUnFmi0h
         HWNirZbwt+Ipb7q+RxVhr4JdqcSRqMj94zapEd9qOjPhBMphfgtNJ+8+vbADD4ujJb9x
         3Zfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVIIaBBbLu8h1mXgE8LytxeV9lX2zGEaql3WnYb9rraMUuW703r
	Loz/BdgQnUJgRmK1pxXHRVI=
X-Google-Smtp-Source: APXvYqxT76o1WLVtb1Uhpr35/aajbj6o6NeKJO6ZWbr6gThlRPVRAUmxGf6DBN5+ZhETGrMs52ExgQ==
X-Received: by 2002:a63:1402:: with SMTP id u2mr22534684pgl.391.1573502879105;
        Mon, 11 Nov 2019 12:07:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:db48:: with SMTP id u8ls114403pjx.0.canary-gmail;
 Mon, 11 Nov 2019 12:07:58 -0800 (PST)
X-Received: by 2002:a17:90a:cb16:: with SMTP id z22mr1086077pjt.71.1573502878752;
        Mon, 11 Nov 2019 12:07:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573502878; cv=none;
        d=google.com; s=arc-20160816;
        b=jpbt+5SMISTXbbyjDDS09EX/GR4C1s9DbQc+AKZEYDxZFgUNpLDl7zrDhRUCCNaf+C
         Txx0FhDx0UFFKb4AEEZXak3MlmrTZ85qKhOXMC3k9ImtJ2wbV90AOpViWAEMctNApVVD
         sx5DC/gMBlO0eBIWRbchnjZop4J45vxvHkfeY2pdVqAdcAyEdWi/7r2h0LI4T9Ynn6ZK
         aUN1ywmqa9NT4KUs8SR5vbCqlOy0UhppTKKD9ILVhN1MvPe6Qi2AkTP/Xe3RoEhD12Jc
         AxJNA4H/vBS3VvMgRj8D/Qq/K7lids9ZvUcSip+yWN/h+3J0f+JzPt0KBHJqhwsKhuQ2
         J1Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Nwqx7QWQGsC3I4CJNnbzWwRJdYPwJji/UODQxE0sPQU=;
        b=zlEgAGYlaZiA4ZjeJwHHSYkUjcphfEbxK7q/4z/T2zfGNTsT0jFHo6mLzgkUUC/U5r
         uDa19wTghTSW23bI/bkGSlvGpUa/UMmA5RIig0109aiYnW3oui5yJ63Kb/kRzs2lhYLj
         87G+8EWNJ7s/hQXFvVoEkOSLyYSH43/uBtJUN7PAbVo4oy5lAjPeisuTF0v3jvzf3+/C
         dU1YbLSkdxbSSzgsoDb7CqjyPpPcW6+sR6mnjFBgrI4SLTcUGZMoABPh21P4Lgm38f4a
         lC8ok/H9FPYwKbpVcacyUiJvw4LqbNB2V0Uz26izImTce6QSK2k1ubf6VzP4YL2fxeAS
         93ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tJIYehn2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id r142si144495pfr.2.2019.11.11.12.07.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 12:07:58 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id n14so12584658oie.13
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 12:07:58 -0800 (PST)
X-Received: by 2002:aca:5145:: with SMTP id f66mr649745oib.0.1573502877903;
        Mon, 11 Nov 2019 12:07:57 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e193sm5295951oib.53.2019.11.11.12.07.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Nov 2019 12:07:57 -0800 (PST)
Date: Mon, 11 Nov 2019 13:07:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dmitry Golovin <dima@golovin.in>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Matthias Maennich <maennich@google.com>,
	Russell King <linux@armlinux.org.uk>,
	Nicolas Pitre <nico@fluxnic.net>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Stefan Agner <stefan@agner.ch>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: kbuild: use correct nm executable
Message-ID: <20191111200755.GA2881@ubuntu-m2-xlarge-x86>
References: <20191110153043.111710-1-dima@golovin.in>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191110153043.111710-1-dima@golovin.in>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tJIYehn2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Nov 10, 2019 at 05:30:39PM +0200, Dmitry Golovin wrote:
> Since $(NM) variable can be easily overridden for the whole build, it's
> better to use it instead of $(CROSS_COMPILE)nm. The use of $(CROSS_COMPILE)
> prefixed variables where their calculated equivalents can be used is
> incorrect. This fixes issues with builds where $(NM) is set to llvm-nm.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/766
> Signed-off-by: Dmitry Golovin <dima@golovin.in>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Matthias Maennich <maennich@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191111200755.GA2881%40ubuntu-m2-xlarge-x86.
