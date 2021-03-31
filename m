Return-Path: <clang-built-linux+bncBC2ORX645YPRBX6SSOBQMGQEKFGHD4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BEF350927
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:28:06 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id h6sf1753564plr.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226079; cv=pass;
        d=google.com; s=arc-20160816;
        b=HXI5ZsJLy3nFnzxKQHfo9pa+s0x9N39MUu1ua3oDzQxmI9fMzUADuJtBMT/yuGor3K
         QqEokf+fBWvNOqsa3QfUIDeK6VCj7jifL/cyT2aEB4wg2NA0CiA2dKEPiidKwAgyN8ZA
         PtlGBLVvBk0Q9IGIohN7pzrNGxxxajMD2eeYGURkXLMCSofZ7Hd1oyiy/V8jQxD03FZR
         ffxtGfRCTd5hiap2TwmJlKN00SkBJ0LRHXGM9bo8NcLXv1GZgDMNQ3xcl+eXNrJfOSP1
         8y/riiuDbTSjV6rLKFh1RSmX9LbA5+NxDM4z6kzfGQ0A5hg1xsrXXIUNoQJYf4Mcgf/4
         ipQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=8n6/lFTv7U+xqST744GT3c/ZSApkY86/MAWePRPRhGs=;
        b=lc6IHxGpy//SZUW6zLnxqFpSe62VEzAMhKuhQY380PJavPvmKXHd3vfAgAcr63ozBx
         Rr10vKcOBVG8T3Kx2arO6XbvP5fypuGwJ96geAEcnu0dxrSTWD1NiT0vHlJsw3lYxeIz
         U5DPbQFQFY8EDKzfUqo88/lQZbGjqmfoFfUQ5j9tVBubgDHJ4+7zk4i94MkX0W50Eaj0
         cxu91jn+7XWv/woYzg5fxcGpY7/qBx7yc0JJcr9HwC0vVhqSULLrnGZlq6tUZP183069
         PkWdd/YDrQKD4ZTq7nDFZziEwseO0hoYKhFTi7NSi/ejf7MDFHBDEvTFVUGK8vHNd3rk
         UWlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vn+IV2jT;
       spf=pass (google.com: domain of 3xulkyawkam0bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3XulkYAwKAM0Bt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8n6/lFTv7U+xqST744GT3c/ZSApkY86/MAWePRPRhGs=;
        b=N+JBfremTAZ59bC++aqWiLKIfNkYUNVK9JuNc1+j1CxjLnEqNZHnjDT4aBHkXat3HL
         zXXbEgUpm4mJOC/xW5IHrOJHcQ4oZaxSJSyoC1nOeuCshdflDxh8+77M7f6uuzdu5j32
         P3xG+15lurSTYDcbCnK2cvvL4dMSh/JxhzPwiJhayJmWlG2TkMzi21tNOwJ3gTEFO86o
         p3/AqztWI7wgB8DRrIZjE6Y6eHIhKolnpcISPvfacglg0+/w2wbcqQJ77RYry6y1Gy8+
         8+nS0HmIfjWthzGveCMuVakDtJXoTsZN5sCVw6b1fpIPBohVVs5lb4J67HGFmLDyJWZx
         U4RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8n6/lFTv7U+xqST744GT3c/ZSApkY86/MAWePRPRhGs=;
        b=Az9S2YHME6JfOGJPqeSav3C9Lj2jnfZAgw6FOKzvrUlBV5Tui7HeZy6TkfoxL6sTkV
         1yyl7YUu1o1abyRXAJsoRXEz6sBUudZw+gVbFFhi6PDnAU7PI78tw8fTksddftMI8GOZ
         UkMBDrmId5KeUEMPjNl19OFkIjImJf/36iUlWLGKnTuef5BkN4Vc8ZyF5JEVnLhONJ64
         zMdWTuS9u9NKrZX0qkkwLyL55ux5rp7t+xJM3zMSwJ8JQaxLsl2Kj4MDb9rLlWYCICVB
         MedohUvXi+ObyDR8WZWxOxXijjo1ilkTvCTlmfd5ZJFzTHdCgb8uLnScQu8NTpId3jjy
         rn/A==
X-Gm-Message-State: AOAM530qY9IBU0b27vGh518qTsDXO+m9UBpwdIwKa15ZD4fP8cB0CihD
	4Ee44tj4hDI+wuxU65yJ5Qs=
X-Google-Smtp-Source: ABdhPJyimxtWot8j9W2Hv+c6tVVUVB6vsKYmbeG+8+04gakQThcXMCa30OAZ53NVMN2hUaMx22UnuA==
X-Received: by 2002:a17:90a:eb0b:: with SMTP id j11mr5240018pjz.62.1617226079763;
        Wed, 31 Mar 2021 14:27:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:eacc:: with SMTP id p12ls1676918pld.11.gmail; Wed,
 31 Mar 2021 14:27:59 -0700 (PDT)
X-Received: by 2002:a17:902:7585:b029:e6:cc10:61fe with SMTP id j5-20020a1709027585b02900e6cc1061femr4904562pll.23.1617226079182;
        Wed, 31 Mar 2021 14:27:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226079; cv=none;
        d=google.com; s=arc-20160816;
        b=b1yVUe2ZHhjUPeudDjov8Srin3yULj4BENboRpd4a9RcNxJ/y/P3MSD8pTJyxAZUlH
         zOl61nSRZWrQH2eDnij6Ijo+bnm55VFJgjtmcqb7UhwLAwjJaphtkGJGeaCfCtOZDkVh
         8N2p28QLKX/qjh9NhelELThd9JyN/2uwXVO81sDBzdYocKVm7mx41lv6UoRw8meT/Kcl
         +03GDYZDXQ19ZrfHfQWuU/nWFwyW90bcFS6NUBD9BaE1Si2ktqyh2DeYH1PHlpscAFnI
         d+tKdEVWZDVQfS0scEIvbVHfT/A6zJYXwLgBFu0J9BW0Q3luqup8ddMldU6dwINV9uvJ
         FEQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=lk8inZlzo7fNLcnXaQ1bMqH+Yl1xnIiMxwLQYqKIvN0=;
        b=ndqi79XDKQBv5RG88q+L1zPOl07UyaJnQ/z3PPgcloIOU6giEA3PoX/lJoGQAlTjYp
         xFR/NwKgzXjfh+LcpgAIGXY7rcOhaxebEO6KzrXYxtbdn/SMJwSXqIIMaK1/fpWsHF2x
         A35vrz8jQqsxtRY0tU0FG67T98t6BuhEp67V+uiDSoC8i+h4KTvpTjBahUW03zSGoe00
         Ac7TCwocNus3W7fX8RzUQamV4OCgW6oO0mebbC1xgF0m3/I4sMibHfV7h5H1hB2aFWlw
         z0/aDiuUdOIS35CClQi9BXXTn8qnNvMJVRDm2a+6xEcOt1EBpToiYsy0+aF5sFmMfbTB
         3GzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vn+IV2jT;
       spf=pass (google.com: domain of 3xulkyawkam0bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3XulkYAwKAM0Bt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id d13si224932pgm.5.2021.03.31.14.27.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xulkyawkam0bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id c131so2349918qkg.21
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:59 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e148:: with SMTP id
 c8mr5184451qvl.56.1617226078315; Wed, 31 Mar 2021 14:27:58 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:21 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 17/17] arm64: allow CONFIG_CFI_CLANG to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vn+IV2jT;       spf=pass
 (google.com: domain of 3xulkyawkam0bt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3XulkYAwKAM0Bt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Select ARCH_SUPPORTS_CFI_CLANG to allow CFI to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e4e1b6550115..d7395772b6b8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -75,6 +75,7 @@ config ARM64
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
 	select ARCH_SUPPORTS_LTO_CLANG_THIN
+	select ARCH_SUPPORTS_CFI_CLANG
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-18-samitolvanen%40google.com.
