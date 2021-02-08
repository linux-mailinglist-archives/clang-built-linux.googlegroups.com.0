Return-Path: <clang-built-linux+bncBC6JD5V23ENBBFPEQWAQMGQEVZNWPAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 33585313A9F
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 18:17:11 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id t12sf943063otj.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 09:17:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612804630; cv=pass;
        d=google.com; s=arc-20160816;
        b=OBVgcYzbLtLbGpXtIgijz3T41jRO85BlPLJWlS8jbxkg2rtp2MjfSO5A1OdObpTW7e
         epm5DCjm1FU/dYReCS3NoEi6r5pGhcqVPOTBIAqeVl9ka7rFXRTRmGi2dGn/EroSoUQ5
         9ThfAKi9/FLbA3V3mUxncYPzqdCLQqyYcqjbEgbgT/3AJpUtHI023ipnMSczbdyUNHm2
         AJYInzJ8+4aujOwOq1VWSQgnvZdRjUza1U9vrbTrfQT9yBiCNEJSSm1UkSn4to5zCntK
         y+sU4L6Jx3Z2v7WGjBzyir/mE5LerQYt//5thMUHj0J4wNKzABaD6NJpYUmn9b1IlgWj
         gQ8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9geKvK+A5y5HDC7eojuMfkDcOJzbuqFqAmsZIhKuuCU=;
        b=afbi79E9YU5MC0eLI7qUBqUWGcipDYURgvILTkXE51y9uo/E0n7b++cDWEGShKwTyT
         MOYmMqDeoYTwaZT6LW0bJNTSNfoOOUjYybDASSbHN7dLelbgUYFGgpjMP8wt1r+uGjNF
         AuHZlvCsLKBSDDUdP6FDWv+XE/5+z5+ey1MFGhg78TejnO6K66scJFU5aH6fDgoV6IGB
         aRn7bSWG1TlNz4Nns1utLzFy12Rt2zGfyoihruJuT7qsulkrAq+WJ5XaI+/FeFTV5CVz
         pk3I0Vkor0pREiLACmjwiVAaxJLkBJQWBw+gF/9LAxRknG+jbU2UsCUdQoII53Zt7cma
         1VhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Nlfx+5R3;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9geKvK+A5y5HDC7eojuMfkDcOJzbuqFqAmsZIhKuuCU=;
        b=YYwHOo029ywxzywMb0/xwqYF/KLakHF0sHygoOaOaT5VPyzZ0BO5rjIhsKnD7qfc99
         aVuQc0GOL6MayhmT6o3fFUD2Hgd1g9xzrtUmHb6GDjpo8pF3pfKMNSmJs+0rg2K23uK+
         ChvsmJHRV9JQHFLI2YkT+lhEDE1TqCeWl6aM+UcpzDn0GKMbw00k87ijqaxPhJTO8E+K
         SHutu5sPox6IY2Yp1i3ANsftEpmqzU9LvCjFkKlYuf/3JTScwLXLlrJ2J6oq/Ej+xINO
         VOiqIfxXKt1ZRX0flAJYiIpwHqub8kKcgiNlxtSLGplSuYC7U7s/MIbrqCHYId7lbsA9
         cEgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9geKvK+A5y5HDC7eojuMfkDcOJzbuqFqAmsZIhKuuCU=;
        b=UTTPlkiJrsm0axE/ZeeDh8Lt6/rYgnIZzpAClKdSQxhQcxyCx0nVVL4yEpaJcJrU2j
         ZKVU8F6tEOVqQmJrh19kE+k0cO/kuGrA+SyvDDQuQJs9fBYruIWzRqin5pBpAFxcuzOb
         WvRGR/2yjHhOrrLKEg2Y6c9dasKwwvbuda1wGeViAk/R/YRNbl/we5UvaQPewnPSMd9G
         ev+MNIxN42rNHtHT0BrDVVhuIDOxvvTCCMglKomN+nk3oUH6e1WpsbVyf5yocvWKj/E+
         EKD/MccG0ntMVYSDQDoqsskX9GtStVhuUyBedqPcYXBc5+pDsxFQNK1v10QJSSopRMnx
         IaFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GpGFLTYLLg231J3plWMhRj+Qa0zbwufI9vSx5lCZOp35d0vk4
	Rv1g62itvXHBzPnUdcNk1rc=
X-Google-Smtp-Source: ABdhPJwE8Q7I1B6rnmyk6J/Qsjim3l2djK3Vlfi8V6aehfysQT25iDPLzxJiwZNzH0LEDeIcU4gtcQ==
X-Received: by 2002:aca:6256:: with SMTP id w83mr12290191oib.170.1612804629915;
        Mon, 08 Feb 2021 09:17:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:53c4:: with SMTP id i4ls1255613oth.1.gmail; Mon, 08 Feb
 2021 09:17:09 -0800 (PST)
X-Received: by 2002:a05:6830:4b1:: with SMTP id l17mr12821244otd.119.1612804629566;
        Mon, 08 Feb 2021 09:17:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612804629; cv=none;
        d=google.com; s=arc-20160816;
        b=UBN6rXZiQkZtwTgPOI5bzGiDhn99Mpbkhb/kWOALGbDueBU/MxvygZFyhMST6BH0//
         3VkjE+6eaAjoeqeUPeyzoV9Sktp7nLXgYjBkiHn68bp7c0/R4yh2ynkV/Au2rxkg1f9T
         U7O4uU9dfpmVx+SERLtxhjcWnj2gnQLWrnWqr9au/m0mv+CuVJivbobVJYXDRBzXJVnS
         MI/6ue65zBv4ESJuDtKlxuK2CikcC5ieje7GCk4UBpJnLU7VeYw9ICP93ej0X871U4Ay
         Oy7TMOTUY87W9cFYZ4YwJMANx5+5hugPO3Rcgezozt22yHlcQYDICsxq4iuvnLY5V2q/
         FhIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cNshNdstni9lnRR1Up1P5tWid1PHmX/o4Z5v1tcYQ6I=;
        b=elCRrr8C6E+5iCkV5an2tpS0dSME/MbbSD+G8eFgGPThYSvF5gnozg9heqIp7cWRPL
         yNsYwotzJ5XHJegQEwd0wRu93t8VzKWzjnJSCYdX4d/rifPwmoGLncYh/xAAQiwkqRkb
         6l8lGHpRSd9aVfzTsQBIOw3TG8bgAcYPgLq5Bm4ukHmpLLYg5ut43Og7ivg23Yt8tPeA
         NkaSprR7ZyscLROg9Ct84rhdGOh6+usRANdTgzZZbR/h+gcrbdsGxz0640JInh2a/h+i
         uv7Ihz0HkR382Cg4ctPrA8JjNxDvRRRDNZkuRHECCvPwvoX0sXwFHG1mZ6F5RsKVIsvx
         OAYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Nlfx+5R3;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x35si1215540otr.4.2021.02.08.09.17.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 09:17:09 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 421B564E92;
	Mon,  8 Feb 2021 17:17:07 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: kernel test robot <lkp@intel.com>
Subject: Re: (subset) [PATCH] memory: ti-emif-pm: Drop of_match_ptr from of_device_id table
Date: Mon,  8 Feb 2021 18:16:55 +0100
Message-Id: <161280460935.4459.12084725290331844085.b4-ty@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210206111343.19273-1-krzk@kernel.org>
References: <20210206111343.19273-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Nlfx+5R3;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Sat, 6 Feb 2021 12:13:43 +0100, Krzysztof Kozlowski wrote:
> The driver can match only via the DT table so the table should be always
> used and the of_match_ptr does not have any sense (this also allows ACPI
> matching via PRP0001, even though it might be not relevant here).  This
> fixes compile warning (!CONFIG_OF with clang):
> 
>     drivers/memory/ti-emif-pm.c:238:34: warning:
>         unused variable 'ti_emif_of_match' [-Wunused-const-variable]

Applied, thanks!

[1/1] memory: ti-emif-pm: Drop of_match_ptr from of_device_id table
      commit: 62c290a6784af56fa1438f6d2688cd9360c840f1

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161280460935.4459.12084725290331844085.b4-ty%40kernel.org.
