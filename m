Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJ4F4CAQMGQEGPNMVLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C475325739
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 21:03:53 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id u20sf2522955ual.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:03:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614283431; cv=pass;
        d=google.com; s=arc-20160816;
        b=RYBMF/7H0ZsOndcgDDKFk6xtAJ6NEUMHmBI1NVP3Q8yKvYEam22CWxjkn0qsUqKkvv
         eYSiVRB/rvMpHqva8MbZ5kXjZQ6RXHDlk3wYwhKI+OlR/w2BbcKBsafzJwKpAS0OrNIf
         sJxLmnhKiktPkLUU2HPcCbtn5II7PKsoUg206/Lm+QYiAmGiAqQhZEqWD7E4Ca35FpcH
         vH3lsp7THDE7SZssc9BGJIibkfP9S0VUI5WuX8ZwAVqtAEXecLqTMWVldIa6W4dce+kx
         yoJo0higDiG78E3XzQugtRovzG1N7IwacvijexFEqwdfR4yNTONabZlqBg5rLYUPsIP6
         WPzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7q+mujxswVY0tkSw/uod7LO4B7yGCYpZ/rPCrUJDolE=;
        b=jVMd+oREd/pbz3oYGvq7ULmR0aq6ta3Pphiu0o17F3LN+GILjeHdpCoky2AyOJZP7K
         uBewCM8nLM92q5lRPP5pTN21OBtui6XF5jw+UxGPUvOfsPMiIQHHimnt/Rq8Wg4P7pOF
         Dm96hbee7sFlRsECJ6xwOqSNH8lCDPkIPf8M5JmtzrbSODoA7oobPQ0MnucFREXID7VZ
         4K3rc3c1dnAN0RJgp8QBxdu2zGYH9NvAEjrr15LI+xpsT8Gaz3vyZl8IooULx8nxaiJK
         qUz1QNlav8fhyXAyPphmelVhNU8QDzwJF0RrBxGiJJlS0xqPM1OqEFwi7jTeR+O2XWhg
         q67A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KHFmrqKy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7q+mujxswVY0tkSw/uod7LO4B7yGCYpZ/rPCrUJDolE=;
        b=ie8mL9+r269AnA6w5fTGhshFk7lUFkgzOd1TZJDNmTLhvAa2rrRXJQDAAYLdXsglhv
         4fyKhTjoAU/mm7f7cS2mlV4UC+/b12zVNGA/3BvGGC/N7dKqUsYTkSVtaHVErm+aNVcf
         2Xy+27qzvYf4kIZHshF5jnClRa25YK8VZzOB1LZvQi5w5R7SntP1d22EzZsFeX6SoLIQ
         i9OcTyqh9z/Iki3hjr9IbtAKEl00jKMFRQnre9KPMTccOxY3uOjWec0NW6rQD8TPgCYL
         lm3px0Xui4FwzZyR2fAB/EvCLMLJRyMlEhN/mGJfOK4cPF2w10w2mOxG0BocfxsoYTyc
         s4ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7q+mujxswVY0tkSw/uod7LO4B7yGCYpZ/rPCrUJDolE=;
        b=qcJceRp+EzRzYaHrisiIBqzkqP+8i1Fk43TOgH1Mx8SO+W4BcYhYz2Phcbp8a1sndt
         O6ish/1UvYGOJUV5z4NkCpWlpGO4xgP44B/x/cd2vyK3ftr89uGxOXukr1nLPTwZFbAf
         Zrg35vKiU6kua02QIvMKQSQt+guS1hBuvgrce7US38k1KccSQxSB8bGdBZwJxFJziBBx
         V+1P6sNXCAu77qUo9vUwt6UEqAKVQEyw9nHwZPnDTOwRZDkl852nTtjcMe2JJUQSXtbJ
         HkGiYuzUpCZ05c4HGibPyrZqXvfAIFXVHT9a1AGoUFTwSG3qJFY9zjCrlxEkBTtGB/kC
         aULA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/IIsKuTFG2a24l7RkL4wFGUvf8b1u3EioR02rBFCyRAjq2xgS
	YbTD9q88FgKEu/JnvWpb84c=
X-Google-Smtp-Source: ABdhPJxzFp/NwqlduxprmCw3KaThvkEE0fQS+fFBGSiXEyK39yKUZM110tkdOHk9obTxkyeyKSAB8Q==
X-Received: by 2002:a67:e947:: with SMTP id p7mr3061539vso.59.1614283431774;
        Thu, 25 Feb 2021 12:03:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ce91:: with SMTP id c17ls834280vse.1.gmail; Thu, 25 Feb
 2021 12:03:51 -0800 (PST)
X-Received: by 2002:a67:1946:: with SMTP id 67mr2777476vsz.60.1614283431245;
        Thu, 25 Feb 2021 12:03:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614283431; cv=none;
        d=google.com; s=arc-20160816;
        b=C6wTcrYjP0iCEDBRudIUYWuRgfQala7/F11wPiCeOm/6gutZtDAlw0d7giEMfgwFkN
         3tL0HsV2PRocyunbPAhA6KsBISXfJnQOfOWw1cmGTCp27iNcaljunozDmKCY61VsI55X
         nhS+PqYLWWYlXwTqbw7Vku+hFTwNWlwipgtHCutWsMsS1GGPTB4vhwao0GsEHyR6eGJs
         eLRVa++LV45yeBxZMN2UjsG1hKEWoebGfXTV9lsmwwA8w30i2k+Ul3PHmzGKbwOEypOG
         tNa3SMuaFv9A3XiTx8N3T4dHTbpaDXXZ7Zqh9OBmu4rFV3JTHO29gcGM1DeZngX7uP/0
         xF5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6RPrBVjVcwXNTAfTo4qsgsTEVWd5UOOmYaIsIS+INyA=;
        b=t+RZakou3p14i+HcxHG2W2mm2cLfliW9aaO1Gao8Xl6qU+WPLSlBJDN2Q89AvJF4zT
         dCyWQ5wEuM/d3kxII+JiIB/q6IFWoVFqcHW2y99WRJ0aQV8mn+KYtH0/bPT5RdttpEnV
         krqq7wV6Fi+dog3qLr4LGLB5PF9qxUmNS91VKDGZmwzRqUqh83x5K2K0m2EvSExZmqzg
         nWTsAdyKZlfPs2G0S6Vj0JGvUUxSuaiHqSieboMessADsdXL3YKX14CLRr5Kk0pRaSe6
         iOVYWBDL/OgWP9tMcxRmwily8NaKP9ycIVk7Q6eFH5VRHc5ItgEClD2lcRJTT7Om0rPk
         DYkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KHFmrqKy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id u21si167477vkn.2.2021.02.25.12.03.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 12:03:51 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id t26so4549803pgv.3
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 12:03:51 -0800 (PST)
X-Received: by 2002:a63:2f86:: with SMTP id v128mr4382566pgv.241.1614283430319;
        Thu, 25 Feb 2021 12:03:50 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x9sm6546989pjp.29.2021.02.25.12.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 12:03:49 -0800 (PST)
Date: Thu, 25 Feb 2021 12:03:48 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Miguel Ojeda <ojeda@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Randy Dunlap <rdunlap@infradead.org>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
Message-ID: <202102251203.03762F77@keescook>
References: <20210225164513.3667778-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225164513.3667778-1-arnd@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KHFmrqKy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a
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

On Thu, Feb 25, 2021 at 05:45:09PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Separating compiler-clang.h from compiler-gcc.h inadventently dropped the
> definitions of the three HAVE_BUILTIN_BSWAP macros, which requires falling
> back to the open-coded version and hoping that the compiler detects it.
> 
> Since all versions of clang support the __builtin_bswap interfaces,
> add back the flags and have the headers pick these up automatically.
> 
> This results in a 4% improvement of compilation speed for arm defconfig.
> 
> Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Cc: stable@vger.kernel.org
Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102251203.03762F77%40keescook.
