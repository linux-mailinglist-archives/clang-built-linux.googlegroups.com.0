Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG6IQD5AKGQE7C4BYFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1E724E0D2
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:29 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id m3sf950802vkl.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039068; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUYS5Ghtgym/XjQw2InPBQnXdK6hV5o/6b8kzwoo1G7pS3pv4R0M28OTNgYMmKz7Ti
         t4q+1GPcbX7/Hs4hKjnReZMFS2J/rDOaWNsZR4P5pS+SlXJC09Jsh9uqU7lRR6UlRV5P
         OJjSgqsW8ByRPP0UCF231SKpQpyWRD3GHBEtH7zCH0wNSmshwFLbIiuUwkQXAOtURoor
         IqOLUCS2zJuKzdhimpWteNZ4nBHmN7ediE/xk+/2vHfrcVIA6Fbfw2fX+l5kywa/0XYh
         FWA6hmIR5SvJqDh5yBLqVyFM+SI/HgQFyOvPbigP5C8hVNb4wmk8gwanKZV/6wNcdxD9
         QNAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OBUOVaqHcpOb1i3+QIYCXJj778YGcB4azR5hdGncPVg=;
        b=foe9X0sdO9pZx9LKyVUN+gXV2eEcvqvIUFuyHT5DnSNCFnuJEV5IjIMSNo13XEJVb3
         5tf60shPf1ghJGil9kFbATNtf79vtDZjpTJds2SRbg0BVyl814aq6Q/RHflJC5lZwFX3
         LjEuEI5hqpTSbbZ03UZ20LctfIvzrrH40WvxngSeO5mP0Kj5/zqjHUoKMncGpmulmUK3
         or9wBLeDug7oM4qw0PAWiJQEcfUOAYSS79LnXKyVxPFTcCYag87IJdgsfEUtbXpIjM29
         ugVY1Ql0SrLlm2l1hJfLA96SpkHP/DOm9YRLCgcikhSd3X319YMb29MC88pww/qWypRh
         HxEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="k/ZAm37V";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OBUOVaqHcpOb1i3+QIYCXJj778YGcB4azR5hdGncPVg=;
        b=O90YsGV+4O20dEA+EeRC9bTVTeF4boIjS2WwfkMfnWKZriDdfMP1Cfr+rRiNs2r4OY
         YOkgX21Uu2wPtF5KA8hHOQXWAIBlV7JKK5anti36T+kkmKbjbVV9b+ouPSbq4g1iN7Ox
         oXDTBrKRIp6RxwSbOpM0pj/uzdmIsLrcioYkk/2RPE1aiJekHRVZotL56/DNuqvj9Gry
         V2KLk+qjpoO2y0cpYcspCHgQbkdWM1Sav9nNTXtT9PaUFuIZLaQaNpcIjBw9PCatHcYO
         w1yOahF8A6nflK7Mkn1qK03bctE7Tr1LTwUxXsgOfLRgf52C31METCk2w78dfFNDgfjg
         5tmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OBUOVaqHcpOb1i3+QIYCXJj778YGcB4azR5hdGncPVg=;
        b=nPgG5+lkSsHOP4HrUSzdiQtOcT4v9zcDkCJTOsBmYjpCb/uuU8DLfVazuLu58ZnXkl
         vjbaWCs7esqcmadMwKvfArBBid+bExCAbC3Kv8S6PXoEYZXYS2OSL2izN5V6L+aTOYcB
         JwgiFZ6F5w3AOfz+lNkz4VIaxh8i/2HAyMB1lF5s/na8mZ/ZrFod0gr+/XsWeEX9IfR+
         W8uOdkZJutbHza+Miu5YvJ8oE5uqF5yKYcFdtg+iRkTul1pSbOIKfbC9UzGzecJOdZ5p
         xGstHi9CqncPFIHqjXFGNo1s3idB96jzD9dIwmduP1K5YXL6QTo8PtJQFQdU1G62Qn1+
         RtRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Jdl6/oublAdkHwRFRWjMjkgt8thWDQF4282wTbMri7sDGkgS0
	tFFZcVtFRvzFoVAwA//ZLGQ=
X-Google-Smtp-Source: ABdhPJxIn5+QF58OCaN40R8kA29r+ViEhSehfy5V2g63qGtapzXzQjsRVuyxtG4nmIkbB5SDREzqiQ==
X-Received: by 2002:a1f:fc02:: with SMTP id a2mr3060827vki.65.1598039068173;
        Fri, 21 Aug 2020 12:44:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe87:: with SMTP id b7ls398277vsr.10.gmail; Fri, 21 Aug
 2020 12:44:27 -0700 (PDT)
X-Received: by 2002:a05:6102:388:: with SMTP id m8mr2102438vsq.139.1598039067505;
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039067; cv=none;
        d=google.com; s=arc-20160816;
        b=oV9mGBDu3kZ/9h485Fg1JmZGJZDeSvezVrtEaVcT8lkUmOkGh2b8QTIkBy0U/wbWiM
         7Fi0okfOd0pVgzjUWc5mYA2IP03JuGNypgz/Ydm6PGyaCKgHAaFvgzF9RirVE1MRb5Xs
         zxKNVsS6V0ofdGTW5Orb2rTlbcb7HuslArFEMVC9Faj6HJiMEHCACBEOVHxEoueLwsAN
         EzmpFW8kvfTEqIMxDyuDX8NUZkyh4xc8E9oIzMovPYuRjE0DpI9GfYhr4lTxf1oXu+Be
         FU5292TEK0b9C5povkA6adep5kz1EdS32Mn1PoWkjgsF/Ich5cBfoNJBaron8bk2H3U3
         M69A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hbD6RkxNdJTcKmyBxOnwhwhFLlA3pFOZa2+9BxU1UDc=;
        b=YQdBrNyE1EItVT9RRk1qLd6LD7hITxnyqBVGXxuHXF5+F7R8jLo+e4K6TRqLlEQpob
         4SqUFd5AOfp9KLowxgXK31OReWF0lHqnhscLCt+iXHbVozKQr25eCodLiLXsfqAY8r2G
         hUfTg/6vTtbenU14eaZH3HoT+Jon/6ys4s/9iSQ8efZjGtd1WfJlGsWf4tT1+LmNnGly
         z9yaNvY//eT7dLKXSRMR8+jdeAEXiCT0O1obLfSVWzO+T079RWFk4Ahe1h1/V07ivX+W
         mLiiR65wMQONZygASix8RI1NHI7ZRkLaStAEViMw2gofACHTH1g3D6rMb0feIueeN5Vi
         mxIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="k/ZAm37V";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id p19si151706vsn.2.2020.08.21.12.44.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id d4so1245972pjx.5
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
X-Received: by 2002:a17:90a:307:: with SMTP id 7mr3757015pje.37.1598039066650;
        Fri, 21 Aug 2020 12:44:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 2sm3556730pfv.27.2020.08.21.12.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 08/29] arm64/mm: Remove needless section quotes
Date: Fri, 21 Aug 2020 12:42:49 -0700
Message-Id: <20200821194310.3089815-9-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="k/ZAm37V";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

Fix a case of needless quotes in __section(), which Clang doesn't like.

Acked-by: Will Deacon <will@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/mm/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 75df62fea1b6..e43c805b7b8c 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -43,7 +43,7 @@
 u64 idmap_t0sz = TCR_T0SZ(VA_BITS);
 u64 idmap_ptrs_per_pgd = PTRS_PER_PGD;
 
-u64 __section(".mmuoff.data.write") vabits_actual;
+u64 __section(.mmuoff.data.write) vabits_actual;
 EXPORT_SYMBOL(vabits_actual);
 
 u64 kimage_voffset __ro_after_init;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-9-keescook%40chromium.org.
