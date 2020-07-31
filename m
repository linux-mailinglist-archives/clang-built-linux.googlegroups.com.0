Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBN6NSL4QKGQEWXGRBAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C0851234E56
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:16 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id j205sf4686624vsd.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237495; cv=pass;
        d=google.com; s=arc-20160816;
        b=aCPHfdF3UhNyj+E0w2aKZTC8+vl8nbXiGh1f1Tfyq2tAeUl81Xgtr5XDZOAr1oBF3m
         V8PeS9B+qJaj3uhYkMlvXnAhp/keMpMiotdvaDGWzuOqRZHUfC4VpmidNTpDUiPX/lpt
         TlgMV+IBvq1nfE+1Ha96ROoSyIp6gbi9a2BwRuvPQEady8iumlnS8uON+P0mnoGGFQRH
         Ru9Jpkt/+mUw0zi9Bkb9bM6mUE6y7tzHnZ2EfZZWNBmWbH4sYuYhoq+pFcBDYXep0jVa
         J8x/9TC4pgO4hBfl57wESsLojJ1fD4rkYy8Jjev2Kgm6ygzWkDJdY/aqYD1bMVO4b5dd
         63ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=axv6yi+tPjNfavsdjW/+kXrz4ciHYliPnVTAdDkEjPY=;
        b=YO6+qXpamLft+nL80DPJm05Wg9jazP5OqGivQNrBuOd1+pVoJhxVYT143kY/xrodc3
         VWh+D3qXV3zNzcWvo7omO+RTAQQmYI6BBCfHJSq6Gx6NFWsWXMuuQI/Uh5q7yP8BC0TJ
         cJmqEe7nWkn7oGUu59X1m0/ksVTBIjTPQarWCN4jshb74PvkCFhuxOrqI9K5d487Au3X
         pW4GdqHYSybolvtDuXclVgeTGA9nLxN8zL3mSPFDrUwLIN4LIcHvkFG4k6k75RMeYzmL
         4g2548n6sLeU2kyBS4Im+vYYuBErSlRaQ0kpuU6VW3vtdjRiEgUJXmArU5sRHzTcFEJg
         CwGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DMIGjUeC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axv6yi+tPjNfavsdjW/+kXrz4ciHYliPnVTAdDkEjPY=;
        b=BUzRpuahMOKg2CdT7MHSN0d8cHZtyPMZ6tKAEvqqZsgmjYrn1jLjSg/jMW3sGPQ21z
         zABSsOBJ8GVvneZT+S17TjwStNJ7u0KQG17eD1y8KOgwvT50u7OuZb/vPDiiahS4jG+k
         qNxZurxr5erx9E09w3lgJ1OvdbavocGUVwhXE1zCzz/leRu/I1JOI+e7Xig3tB//6TJ+
         D7m1/zDf4vs6VTacbMrQvLp7+b0VqxRWbSTB1dj1T8az5wgEYKPo8mNoMQnb/jHxFa/x
         d5zGGNyMtqrXVesoExoa9RgHA0S5sky+ZgNWnG7mAzC1cbiAo/NznVDcyu4TzhU1uMIn
         JrUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axv6yi+tPjNfavsdjW/+kXrz4ciHYliPnVTAdDkEjPY=;
        b=hhcshySMabu8equI/8B+d1w68ir6CxCy9/EtUMt8y6gsXW06TirM3XkdzOWIDN+haF
         rjK3usP1M3CxgPv2JzdIOODh1TSqXL2Cys+VC0esCcxR40/LxgYM0PQxY+6uG1ChjMQ2
         G8sGNRDOR69bRgHVf0H8ZeddwqHDZmZwUkQYjgpA+Fd22H8uNvsSbjMqI4igOwckKHL3
         ZIi48X95OlnmHCYUOkWlnoWudVtGOhcdml6aTO7jZ8RVPSmb4SILsIIUrHT6CShQpk0c
         KWrkKJQHJm/cb4eCmPp+SlkLjadUr7b+BW2+E8lz0Y8jCOqLUsDklrUXbyQPVoyeG0v7
         7ngw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rPGOGbiij3upwfl94FFalXOnHjG867Y7p7HSXBvza/bYKaQI1
	l6v0wFOoJMCqXBrkbX7+B0w=
X-Google-Smtp-Source: ABdhPJxqXjWpwq2WMXLFfbcYNtITkSwlEdWcdA4AU0Rg7nGeu9u6f5pfEIGqFX8+Jd9fykQK38XZhA==
X-Received: by 2002:a67:f696:: with SMTP id n22mr5019930vso.169.1596237495824;
        Fri, 31 Jul 2020 16:18:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ad49:: with SMTP id w70ls548325vke.0.gmail; Fri, 31 Jul
 2020 16:18:15 -0700 (PDT)
X-Received: by 2002:a1f:1c05:: with SMTP id c5mr4773412vkc.71.1596237495472;
        Fri, 31 Jul 2020 16:18:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237495; cv=none;
        d=google.com; s=arc-20160816;
        b=ByZoB+ZkQg4y+h6UmzZrnptoUJjjEv2drVD0h2iHQ1ml6VZz3Ia5/gD5a3KPGAc6/n
         oLfDh69aMIO7ma5IgsOSiMsHorJTpnIB7KY2JLuarfgssdfx4itBPO3SelIVp0mRINAU
         +ecZ5M+UyasDc+ceqcJHtBg6GjuI5nRBZxwxLqwGNW+YpnJsQ5qQfEeoisLpOQf4GO5h
         iz99kZyJ3B8jC3cZAdWKCW+Yr78t7lB2a3dKnKahx0Ja/Ub0nVKoHNeETxUvSHY+V2c7
         OUxDqF4gR8FrpJ79f+RaQZsQp70XPcBpQF9Jeuye5MbUjPitk5MdtJ7u17PM1BpsU5gI
         m5Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CCrf0JNZv+v7XnAC2zXNDLnfzhwewMny4SzCwBazlpk=;
        b=zYWYjTev7/lK9rscmhMsOE1hERd1K6V47ClB8eIemz8C0dzUi2Cfm2mKLl8xavNXn7
         plkRTl4k4KJ1yrwy5ki0O4qRka2WKPILWfwEmEojcoZrBulj2lhZtS5V0/lXDt7yVaZe
         lXv93EDxnM7Ha7fgdy8O55CzjFlMyNzWWrD2w+IfRXxoxnKRNWkB6SS8zMCrQ4PV94BH
         aNFb5xykG6KJotIDY5u7gvbvF+o3I2FqI5MXvEC5XoE8m74lOw2fHOV1gjHOX95Jov3f
         3tsCZq59eiw6SkFptKC49sd0/BiveLU6Gyvo71M2Q5e6WGdDvr5qW9DVA94jNAjU2be9
         51RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DMIGjUeC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u18si121221vsq.0.2020.07.31.16.18.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w126so15017318pfw.8
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:15 -0700 (PDT)
X-Received: by 2002:aa7:947b:: with SMTP id t27mr5503555pfq.117.1596237494645;
        Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i1sm11609642pfo.212.2020.07.31.16.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:11 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 27/36] arm/boot: Warn on orphan section placement
Date: Fri, 31 Jul 2020 16:08:11 -0700
Message-Id: <20200731230820.1742553-28-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DMIGjUeC;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker script.

With all sections now handled, enable orphan section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 00602a6fba04..b8a97d81662d 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -128,6 +128,8 @@ endif
 LDFLAGS_vmlinux += --no-undefined
 # Delete all temporary local symbols
 LDFLAGS_vmlinux += -X
+# Report orphan sections
+LDFLAGS_vmlinux += --orphan-handling=warn
 # Next argument is a linker script
 LDFLAGS_vmlinux += -T
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-28-keescook%40chromium.org.
