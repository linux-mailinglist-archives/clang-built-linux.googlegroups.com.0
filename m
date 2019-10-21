Return-Path: <clang-built-linux+bncBDYNJBOFRECBBAU2WXWQKGQE6EPHFAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id D6105DE459
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 08:15:30 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id s9sf6649712wrw.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Oct 2019 23:15:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571638530; cv=pass;
        d=google.com; s=arc-20160816;
        b=YNOc0AG2vHNsjuoo3/i4k368igLkHATPwZo38XMHrczUXW5LVO3UX3mPRrQlul2Ubn
         rWz+tLzs2MHV5R5z6Ka5wASjqSRy/AhoS93v3pl+IxSl1i3ivuyBRtPzzuXN5NfhLQMf
         rMFQNGDavkFinBJxh3KjDhMNMHGQb+xQGwXf19S6Vl1yXtc9X1mRlgXE9bIuEzFMEDoc
         et/8O8wCUQGmBfZJWf3YK9wxqXj4x6ioBSELJlVDEmyWJ3GYCiqn66bNTwmGbBe9TF1v
         7dAaT6v/kiRUcVkuRn1WHh4jbknZXS4nmFpfJRWBzbwPXyHIes2hq7z/QrLc5XeZCYGj
         WfcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=qVDo58sqZNertUej8L7HBsDZLvYRW8d2BkaByneS7z8=;
        b=qLBOsMKHfK5RV1H0Sg8cE++FuYmIUQ6vB/tnlCK0F19xWdeV4f6ouEZJh458C9G6+W
         2cSw1mbgYrqIK5MhCa8vivjYMF4jHapEH8hpkOndtvY3ts7Omj83GrHHCXLkjSooGnsf
         4wsMRpNWytXtUKHy46WQu23xZLrq2C1w2tcc377nfxr5qwV7MDxbETN4N1oGUPmT7kEZ
         IPaEshPnKBWMFqU8qL3c1nqGWJRlEL56IorMqlH7HHcfq5J126id6VkwJQgnJ2KwFMkm
         q7sPodpjgtVoyH9iR8YfsrR5qlrPJLMtEe7AATNKv2MwH3p0Q/GxXrqTu+NK6zqoRdOg
         7r5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NLXY6TdH;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qVDo58sqZNertUej8L7HBsDZLvYRW8d2BkaByneS7z8=;
        b=jATJvhMbmMgDFoTbM93LNXJvFNAyyDrkSmXDCRdqIPpVU0nxhHSktRYkMUlFwghcyv
         BlypWLwrn6YfJyA1J1ZcseLp88FcO9Sf+kJlZSAfrA5vTuMCoRdmuPxkLak6GJJ7fbGL
         2qh0YUrhaXBFM+ALXSLWK5NwDkr6t4hQlvY/5F5iaWmU+NjdFDF+fdAt2aFSvuzIQR7d
         QJmJMBTlaDXO7ezJoeYC8TaFBzIoUOrr8NwdIikFOfFkabpL86iXx8sw4rHLJVmRH7C2
         qLXOA+EYfxR/N/dnils/df3s5gziOwFi0/Mf7JH6PJmjCyHbtpA5Q4XOGdOdCJBHkOpS
         wQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qVDo58sqZNertUej8L7HBsDZLvYRW8d2BkaByneS7z8=;
        b=U6Hs5XsITbryEs/P9cYpaIEiIyTxsF86fxZRSoTrW+VBgyyn7W+JYHqvXG7NpmagYe
         3Nhk0Afo/6sjm7gXPxzGOP5oGg4fu0OjMBTgYGhyMZJnW44Fv/hSdYSw3X7MFktPVl22
         6CuMwBcPF/bnZTo7+is9CoB43AmqLQIFDZ46xI7ciWfOsXpsBcVfE1P1v57lXPxtdWQN
         kPg6UWsyMW+6hEMcBq3jWFiSwhzVTwairWSuxClAlFRZ9dlpOx6gFs2rZY9fnY5IWEuW
         MR4VnLZscplsmIm6f2UOhfZ+UA+GaXFVnZSS9Qtf+za4CITGu7adux0RGMGncEp/Z8Jm
         91xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVYemZ2/4mYAgY/o4nHFA8aCwwvGv+nfuhhf60uG9+N3sN99LiW
	cOsu0tsi6p+hiHe/z3bFtyk=
X-Google-Smtp-Source: APXvYqxdt2h4gGFBf8wqu/q5xGQndWGsfxaaONvdvrkOl7TI7pOZZWdMROvdnw9hgxu01mW++RciyQ==
X-Received: by 2002:a05:600c:22d7:: with SMTP id 23mr17257206wmg.31.1571638530563;
        Sun, 20 Oct 2019 23:15:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:efce:: with SMTP id i14ls5932568wrp.10.gmail; Sun, 20
 Oct 2019 23:15:30 -0700 (PDT)
X-Received: by 2002:a5d:6a91:: with SMTP id s17mr11102328wru.224.1571638530094;
        Sun, 20 Oct 2019 23:15:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571638530; cv=none;
        d=google.com; s=arc-20160816;
        b=Sba/JgTykUMySyyyo+GzO1nioCj3hkoA/6qQpyucSmWVaOCYrzEitpGGnhT6gXGout
         hRNrCDX8ldUuyOzvn8R6EbCwQHQjXJfFeGhiq2A+SnIWh0hnLdlMIa37MMSj50E5QFN6
         JZr2PQpaZ+cl6eBrVSmbGFx2PwDLC94bvO629PpKmqTABqusD5THlkd+DB5AKFdOUXQC
         94m7laUYAdkH6YcdxHUnYzmOe3j+PiFuCHqbtGYsSZnsFDllg8U9kCKA6G16c/GvtjFU
         Fi6+qtsr+rB6Lji35Kula8RgZIPi6ab5UOZEAFP0PKTEdNJObQtHiBYCyEI5I2eEAeum
         KU0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wyeF1rMaUaHqm01fq+szlG0Q/Q/37dlLkcs/fhKj+JU=;
        b=tAsdmqgi4kw0r+Mm1weEfb4N1FTBK1JFgBExEIQYvh6UMG11Jko7SI58weRr8ODufv
         Hf9/gIAx6md8GyWCVI78rF+PQeoUgS6K0t/llCoDzYL1U9sx7hHqvyv1fQJdpXm3PTFf
         5ZwRgE5aPFoxlD+s0kXqmraIhoZ7Shwd8w/PMsXEJj+Bd0Wzz5ybcg1EfMwr1r5peCUe
         LoF4XOSsa77jLOXKYtxfLxv8KzjrgCPXSXGuaEhm1h8VOB1YMzj1eDvxaEXCAbdeD9gR
         Q9syUxX53DGt2Ky3lrRbqPfHV6YZDQuZA0R4vv09KNaKpc1aUaUgyV6f4Hguexow4eZm
         zkAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NLXY6TdH;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id p5si637949wmg.0.2019.10.20.23.15.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 23:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 6so558023wmf.0
        for <clang-built-linux@googlegroups.com>; Sun, 20 Oct 2019 23:15:30 -0700 (PDT)
X-Received: by 2002:a7b:c925:: with SMTP id h5mr1828158wml.61.1571638529717;
 Sun, 20 Oct 2019 23:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-10-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-10-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:15:18 +0200
Message-ID: <CAKv+Gu_bYk8oudqfxmN5GUYSrTNeCPmz19BNnBn_TqATFPK11g@mail.gmail.com>
Subject: Re: [PATCH 09/18] trace: disable function graph tracing with SCS
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=NLXY6TdH;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, 18 Oct 2019 at 18:11, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
> modified in ftrace_graph_caller and prepare_ftrace_return to redirect
> control flow to ftrace_return_to_handler. This is incompatible with
> return address protection.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

How difficult would it be to update the return address on the shadow
call stack along with the normal one? Not having to disable
infrastructure that is widely used by the distros would make this a
lot more palatable in the general case (even if it is Clang only at
the moment)


> ---
>  kernel/trace/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
> index e08527f50d2a..b7e5e3bfa0f4 100644
> --- a/kernel/trace/Kconfig
> +++ b/kernel/trace/Kconfig
> @@ -161,6 +161,7 @@ config FUNCTION_GRAPH_TRACER
>         depends on HAVE_FUNCTION_GRAPH_TRACER
>         depends on FUNCTION_TRACER
>         depends on !X86_32 || !CC_OPTIMIZE_FOR_SIZE
> +       depends on ROP_PROTECTION_NONE
>         default y
>         help
>           Enable the kernel to trace a function at both its return
> --
> 2.23.0.866.gb869b98d4c-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu_bYk8oudqfxmN5GUYSrTNeCPmz19BNnBn_TqATFPK11g%40mail.gmail.com.
