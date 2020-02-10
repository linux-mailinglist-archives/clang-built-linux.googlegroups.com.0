Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBAERQ3ZAKGQEIM7V3PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id D75E6158004
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 17:44:49 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id e3sf3646350qkf.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 08:44:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581353089; cv=pass;
        d=google.com; s=arc-20160816;
        b=eAK4QL/Pus0ZphlA0X0x+jafWY4to90ChJUpb+x3i29gRM/NZeEgPHGghfMsSWS7gn
         IKvJX+aDpbgDdt77yBRqQDK88hV4qWRPJtfwA/fhLqFUqa04mhOoi35933pTkHntNENL
         fgP+mkFN9+OPgcHgm/T/dhbzlGFERwQgD6be0o6WCWSsvosIFGaf1/uQM7Ci28MggyVY
         RH+iigifpKCH/uy+9WA17/A9WOo43GemRZIS98GlU+/QwC9X9dMbS3bif7YgQfG2o+yl
         0rRHIT2LC09h69ZZbKgyzwwaJ3VJ+UgHJBruzrL9BuueTupWZLYppv26QCBZ71y33yMp
         3AFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1tPZyFChyGC3uzuUZDfpU74b7jAIGx9x/41RwYo+atU=;
        b=ySXSHtS+mi2giMfiZ2XXoHMPdCJPYOrcBvEUhR3Z39byXqhmqgXxA+V7ZlWx07IDh7
         yfA88U6ScDSdxXsrn71PQBCNvTcjKL0SERUzzh/h9CujmSlkpXvITCrcEsuzMEUIdX4q
         03Xbj7sN6dovVa3Monugpa807kk15hHd7CYb7vExOI9SWdbNGwGyJXQPr/MT+j812MVB
         iz9uMDhz9mBoxGoBC/TLGHaqICf+OxQEkiHdS0EdF44RUSo9p+qyvlFTsBFZNFQh/D19
         epYFMovnlQgqCnz83jseCJhMykyZkDvlOkJFbd4l3Drkkl+yW8muoEGG2L63yeXEu1fk
         Ivpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2VwzkEdp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1tPZyFChyGC3uzuUZDfpU74b7jAIGx9x/41RwYo+atU=;
        b=Gal62vRvvi+L1aIhuOSUo4qb988p6t6wFy3Zb/t13Uj10xMGDb7zyOBG2ztaNjIxPo
         7GwLDZXRSdBPrpX89J5nEdGEXJHvU5TypgPuUwoRGNx2kCkl4vtveA9W/bYy0NRvGhRG
         b0kFYWFj3eRwnH4JV9eSsvvVAwcS9VhL1iaF1ZJpcKxXlSsZ48hpmKHJp9bbLllv/TeJ
         D4L/cpjCjvvyDj443eloUCTVFSRAn59jl3nt2v4mj6k0WgPPpKGBNaJrVPmgAGl5N1Sd
         ISVXkZue8w/wVTPkhfIiPm6Neeb2fGa+xl/60bRck2ufGKnV2/lMTpB6hPdczOLbwCMM
         musw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1tPZyFChyGC3uzuUZDfpU74b7jAIGx9x/41RwYo+atU=;
        b=QvsnaperlrR2bHNk6Ti9yGBHSupqqNMzrFaDbww+mjWeBedXWrtbrPGaZAwlmB8nAg
         DIXULKU4cu4YRsEkGS1V50lbvUtIpKMk24BjJjlqgXHt7sexwrWSOOqWfkSEtg4w/QeO
         0Ec1fPDd1SDfSUKc1ZVUZYsGVN7z0fBJ0N7kJ/DYlR9cPqAQckGEsLokfp2n6O5WQql4
         d9Y4+KqQnLdIAq2a7H+0zU/rXcoEc2qlJyi+O92uInIPPmb9MqYCg6LcuaL/SQmx2XM9
         zjsai+X5ywJ3dkbChtmo8QMYOvmoqvEc20vxdYcEoBdjQHmUUlQaHn25Dc4WMuMba+gV
         aXgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFGo+J3andsETkMlzQ4DeuGRypwLaIgyr9UNBiuvxG7WcqSCDp
	woOPh5RGhskr4RZCbLHgutU=
X-Google-Smtp-Source: APXvYqwLTYev2NqJdSpMpmLD6dCuJuzo0g+6kWchthoTZtD2sMzV/VcPYdV333ia6UJNuGpHMD1nTA==
X-Received: by 2002:ac8:3f88:: with SMTP id d8mr10725624qtk.382.1581353088934;
        Mon, 10 Feb 2020 08:44:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:72c4:: with SMTP id o4ls2876648qtp.10.gmail; Mon, 10 Feb
 2020 08:44:48 -0800 (PST)
X-Received: by 2002:aed:2d01:: with SMTP id h1mr10859894qtd.239.1581353088063;
        Mon, 10 Feb 2020 08:44:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581353088; cv=none;
        d=google.com; s=arc-20160816;
        b=pUQ7LYMIC/uE5mIXZSdI4dTUrI1PodzkyXDfpSG0I1zCQLXOSm0T64YlFpesLFTBX4
         8gaAE3r/NjoOKeY+VDjMuYPPj/xDrjetWOv7eD+7REJF6CHm8HK79ndLC7NtrUEcMsh6
         SeM57UzLJRww/nVNXpJFphwqc94UAsGUSNlkjTkvb917NUbbOBYzSu+tCVJtDpy9VOgJ
         A/+cWn5vGdkv+7zoj7o3jVHjJnbSZbv0FhV7yThviNb/zULOOdfhmmrsjofQHrvpFmnF
         2UqGHwM6zIS5icj/aWUdSYW/4YqJnsbIIlIvSnO9SFU04Uf2AsgZdr9AXQPZjPtfOkOT
         Z7EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oBROvwLUgAfU6aozQ6Dd6OZkk3kSeI6RsZ5fd6Dc4e4=;
        b=DAAH3xaIbbyNxkr4HPCSi5amU1uUfrVlC5n/0bMTp6mWvk41xk5ntZLAYdanTFYLlK
         7fgE2M4yRDk3uhPijUTWfyEx3gAVUorFaeaWXWh5rZCmyC8c8TFtbiGf6os8UTbC+yRj
         Ys4XjTUqAuJ13O8UmOtODuE6ouBfdSW4t5ZftugPn2KqShWTkBLfVb2fGyUKUeDGW/71
         XITVWLPSTrua28oAzlClhxbTjexU2IMObBKRAFlu3TAnfukoeXVvm4yo9a5vqMW3kuNW
         I5MBNrURjudGApPwoVYrcu2Lw0kOceCBjWZN2VnA8JW0pEKvJnfUjT6wqqzTNFKO1FUA
         AxBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2VwzkEdp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si29016qki.4.2020.02.10.08.44.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Feb 2020 08:44:48 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1346120733;
	Mon, 10 Feb 2020 16:44:43 +0000 (UTC)
Date: Mon, 10 Feb 2020 16:44:41 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200210164440.GC21900@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200128184934.77625-10-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2VwzkEdp;       spf=pass
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

On Tue, Jan 28, 2020 at 10:49:32AM -0800, Sami Tolvanen wrote:
> Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> different exception level.
> 
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..5843adef9ef6 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
>  KASAN_SANITIZE	:= n
>  UBSAN_SANITIZE	:= n
>  KCOV_INSTRUMENT	:= n
> +
> +# remove the SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210164440.GC21900%40willie-the-truck.
