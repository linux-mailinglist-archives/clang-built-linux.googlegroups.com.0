Return-Path: <clang-built-linux+bncBC2ORX645YPRB5OWZ35QKGQEGQJD54I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C759727DAAA
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:34 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id m6sf3778343otn.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416053; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iz5jQkIFGNdLCVLR717cfWiShjlEZPpvgrHpGer1a0TTJ1VthO0PFuNcrDLonEl1et
         dxY2SDatxND9f57usWBcaGZOlsvtvTJnLJ7tHF+B+/j3HvVp5/CHO/m1mddbbqtZT/Ox
         yg2bfW6utqbcphztJ3KAwe3GVkiPM2gDn3mp206VwGCo1gyuzL6S4hhNnakHWcwKgi77
         OrQNUgi7F+SKuIpDQ9p5NPGiNR6xOB4ZEkw8/czF0nBzkgec4elmoDQnrta08QDZ2qF0
         YzDKfbsvagOQZUJ3Rd49CD4mU+kMj6LlV4yY63iN23ClX7fJKEyR4dnEwr0OOPoz7wK7
         uplA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=P7iyqtWY48WScfxaY/o4qq80nfE9c40XjFVLeP3A/ws=;
        b=RB6dlFjdibfHhLogppKtszXzQOafRjhSfxOv3U2b7tnyMdOPLdD1ij1FwAcvqaw1r8
         /MWqi9+ud5lbhbOmPsik11H7VYRfB5mchcJXEB1/+yZZyLVNRiN08O3zCllrFtGaMCNn
         BQ8bXefN2sI2rHoU0ynJJvlfFA+JRvGihvvvDmWUHN7jHir4kfEionY5Mlo9PTOqzPBg
         gD2Bzt2YC/oNx+RGSJwp3dW3+iwa8O9jUdLkwOT8TBE+ncuE/b6QbsjMfGsaGaJ9mVqZ
         nYnWR50RBrm6VnQHtrfnVLvWXiinJcmZSv5xD9wl9t+5mMsZ9FssFAH1i8d6shGpTriG
         WLQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mjtEviXm;
       spf=pass (google.com: domain of 3dktzxwwkajsn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dKtzXwwKAJsN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P7iyqtWY48WScfxaY/o4qq80nfE9c40XjFVLeP3A/ws=;
        b=crKgRoYRux78qyvJDIegrgeRkL2JmOD71CtbJv1TKWnzCSf/al73OZ3ve/4aI5XpNE
         NhnFQZ0vUbJM1GEzra+xYrSoHwK5cu/sRmfWGDjuzZF7zA08tJEC5Cf9K3fdkqMBC4Ke
         j7SqBlB6Y83fOFHaWhxyZPV3grDD9AT8kgKvFbvW/9J4jZGDtmTKJiH9Unay3gIMDjXW
         v/Glyidnk9KLyLxNM2QDeST5CfrvJQbhNqlcEJ4j7GsSlnB4Wc9ZZHD2odnS+QJQDFim
         ymJsksUlD+J3IAvngqhOLy0bTs52JQpJKaF89nycOD1cl63H9xwnJ+/bfwl7p/AeQxOA
         UMzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P7iyqtWY48WScfxaY/o4qq80nfE9c40XjFVLeP3A/ws=;
        b=csv3mjOpyX5OQ/jt7kSF0sOMsxBmjS6oPszeNDWiuQYtLG1Fp4/OvfQHYnoESb/njo
         YRJEb6DM8HG2orn6JEPPrE50LsfHPGSc3qg9OuOBjarWYWM8m2dAN8puTMNMgnmgvmrw
         omsnAQ8WpwOGlpyNXHpQua/EQbzyogpUwnFd3Ab2jIsUIBCNEDo5aj7Zqd2MiVEWY4AJ
         YTWt6pNDmbq32LVlm69YK3uJQ8JgWyMFqGJhjs8fKX0AC7LOpLxevLow84zYE85nL2f0
         pQDE8z4FzLV80T/+VEWSUPUfxuU1o+SOTnLEUcQiEEgjfNlG0H2IzCRThBYUKr1Zgfub
         L6oQ==
X-Gm-Message-State: AOAM530lbPj95FtPVioVmXPclMuqOQ6K7P1HtDsBgsA0lim1yRYIpKxW
	1YIdl8eQWXgj1VdxCIJzqzc=
X-Google-Smtp-Source: ABdhPJwRPINS78lf5/6up6VgNV95W5PeJRYWF7IzWqdYJzCHLJKM/R65OiZn5ZN//VKmPJz4EWb6nQ==
X-Received: by 2002:aca:f302:: with SMTP id r2mr3703695oih.151.1601416053782;
        Tue, 29 Sep 2020 14:47:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b88b:: with SMTP id i133ls9247oif.10.gmail; Tue, 29 Sep
 2020 14:47:33 -0700 (PDT)
X-Received: by 2002:a05:6808:9a9:: with SMTP id e9mr4022049oig.114.1601416053316;
        Tue, 29 Sep 2020 14:47:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416053; cv=none;
        d=google.com; s=arc-20160816;
        b=sGrdrFD+PzbIh659HiQCnV95kEcK1QmLg/JpOtxOPJ3NlwX7rvcU3f34Jl4JFqb1hq
         kCNKEQjcezF6Jr1fhlGsV3qhAft7F7AvFZ2U04lnTLkGE9h7BdOIg3Z5qujOn//UG2he
         w5W0lcMB5iueUo+hnlCptLaByoaKcxug8NyBHM3Un3yD2X3hbmEgmGjKzP3TG4d5L40D
         OmMFO/+Q2fkeCRS6nVX+gNbrlJYScgHsOkAzT6VF7FqgGfJhUjz7cacticy6VTPxDK76
         yFb0l6MfbFRucvlFQOgJD/niqrthNE+1SPp03uBkvu2WMLmv6uNXwi4SBWL+C8DNYbAF
         bVcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=HR6xYTbNbcDM2Zx8OyOOjD6y5MQ06zsj0pUhq+j+6f0=;
        b=ogFNOtcHoQ7SABdWD1di5e+F11bthDHnVstg4xLPJbwmwYf3XRO1QWdqBxKblDHVwO
         uwDtQrYa+Gb6wODqTRaZGD5VF/IsMQfbeJmvJuFzvofq+1eZNm+2Ch9n8GEqCdFM3/Rb
         UZAjcucr5uKMsGoTaOAKfEa/m9M3dxuZnLmc2tIwiDE40kI47HipOHeqS+vql7V7kuL8
         4cESSQXxs9ylUwlzLWLtc8rimHPL0oX69o+JruatMAJSvdvnBF2ScK2OcoivdHdwwwQ9
         xAVblx/Fwy/jO/uJL8SdAhofELH3J0UEHkjCKZ7v7pfvf5+eVahixYHXIpgs5HeB0Mxu
         rFbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mjtEviXm;
       spf=pass (google.com: domain of 3dktzxwwkajsn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dKtzXwwKAJsN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id l18si372784otj.1.2020.09.29.14.47.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dktzxwwkajsn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id u6so4066649qte.8
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:33 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:d682:: with SMTP id
 k2mr6249286qvi.27.1601416052963; Tue, 29 Sep 2020 14:47:32 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:28 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-27-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 26/29] arm64: allow LTO_CLANG and THINLTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mjtEviXm;       spf=pass
 (google.com: domain of 3dktzxwwkajsn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3dKtzXwwKAJsN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
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

Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index ad522b021f35..7016d193864f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -72,6 +72,8 @@ config ARM64
 	select ARCH_USE_SYM_ANNOTATIONS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_LTO_CLANG
+	select ARCH_SUPPORTS_THINLTO
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-27-samitolvanen%40google.com.
