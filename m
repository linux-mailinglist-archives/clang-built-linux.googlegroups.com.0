Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQUSXT5AKGQEGNUD3NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE8D25A32C
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 04:53:56 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id l8sf2425423ilo.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 19:53:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599015235; cv=pass;
        d=google.com; s=arc-20160816;
        b=UoAXfHaKJTsCx7YYSLJew9Qb1rwp8JqbDFzZEd8Ljd9GXCK5ePEe7+S59V2h78rAlJ
         eKr0OYmZpfDe2gjv4DvEq7KUw84eQqEvoUYxT783Lm1EFXfKIWlR5e9CkY1F3ZcFF52b
         zJ20QzS8WmqagD1Ijs1Uo9LeZHuHyNpUncMeN2Ku685aQLuYfh1AT7R0gP0RX7WPgS3v
         xAv3Sks3nxhWF1wUdtoxs/bnpnQ/t6vuWfm1IwxVm5wZEof6J6UuJT00gAzQuTPoQWgY
         Gf0KXr3ekmGq+Z/czaWMRWURRk5NIPgfk4uEwnqoyuj2LCJ5Muug8tnX2xwEHHqUHa9Y
         PgSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UAeA312aPTbmuE84buJtCn3WRqb+jG9bVlyFerlmdzQ=;
        b=gyZ3U9F3MUOoDYnRkcphjl07h+tAoBTzQS4g6CoGKYhihhVrrHqjOZIo2zMk+bOB6c
         Fv3FaxTeNV7Lr9eIKXn8o3ElMoYSdSTlA2MmChTlsgUFw49sYz4mnJqAb/+n00FyIvrX
         nncIDF5uL3FMDOOv8ZZ0Pjh6EG6LD+oc7lQB4BUR53soNr/rFsOKYyVGCNA5n7wSN742
         o0jh0slpqoU2uL8M4fcEfL2/WaIBC+2K/QJgVXcLe0xODb0PqvGoqW61oCNfFAkb3bvY
         wb1QDWRP9y8PP+OipDAJc4TgJYLfDLb63lwdFkmG8HY+RebhjJMynDMOZI0W/+6aypmd
         F2zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Mmg3k909;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UAeA312aPTbmuE84buJtCn3WRqb+jG9bVlyFerlmdzQ=;
        b=TwBkoljqBGAzMgNACSeoVDpTPRyO5cr/YVPsgc8EOomOhcycP1dzMtxG/tMgn0ScoA
         hGY0I23HrhK7mIwC4uUrzsEdpWMaK8eexdVzRuB6QALjdAai7AADyn5VLD+gg6TIIhIP
         j6h5zenF8xS3KARrxhYhGxvXfNtxstX+7gbFXA9GJxaFlWmXHB1xx1ChML6Iq3ccgI/o
         BuI7a4Q42jJsJoEcDwqHFAzXWR1g23h8o3CRDsfBvwndOr95lS92zVZWvEYAVZxRm/QO
         ej1EzMuLWSkjIl4nfrQoPUJEwFvlNNY016fQICb249hPBMH94zQm+uj52jGkWHsrRTwE
         9QxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UAeA312aPTbmuE84buJtCn3WRqb+jG9bVlyFerlmdzQ=;
        b=DnNyy10wwKZx8CMmwzktXX2RlhK8Pnf41+jou0dIiaaYMNcLKGLXJLkC87b7zY7o1r
         gSS5o1lY56DHhYdZcSRd3+Em4+w998BQr4rMzOxogYWHHzpBDpVQ+A1D+m8+HP5ex75x
         x1S6pJcV3wS5asVoMq16K1l2gAH0cCWl9CFprdLN2icJi7CppDV2mNBLVggpHcW0h38P
         7wbNjmUVkRiIhLz3LRdT9wSypbVTgm0Xid3MlsTXQs7zMhzgiO9atamoCltCH4Qtgx9e
         BYvw7/WR0zf3Nt99X8WTS0asOcCXHajZfCaFfETPj8/gMEGIC6se9Hc7k+xnSAzhLmp8
         OYrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mEMtU9TiYOi2Lrgt7TT61MprG2xCxgyUDoebZ1nr8/fpoH1ke
	8FzToUpMczBMjwZzU9c1RKA=
X-Google-Smtp-Source: ABdhPJzYAOk4FyZpTZ3KkLBJLaLbosHxKdvetQkZ0g7OTv+ctDM9py5pldnCtwrmyRKp6UbO4K7geQ==
X-Received: by 2002:a05:6e02:146:: with SMTP id j6mr2013505ilr.132.1599015234779;
        Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2612:: with SMTP id m18ls90018jat.3.gmail; Tue, 01
 Sep 2020 19:53:54 -0700 (PDT)
X-Received: by 2002:a02:ce:: with SMTP id 197mr1230581jaa.65.1599015234418;
        Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599015234; cv=none;
        d=google.com; s=arc-20160816;
        b=L9Muon6kAQDW7Sg5wFE122sTumlY1vgcKJpCfTaVxnEhaJrPVpOqzJ934+minuOKNN
         4EqtXxa9jdtYMMhAuqEeAwLAz4ennPksc0fCX14CVmuZjVDaMwiYShVwHIp7/dfoTOEp
         ihNhxrRcpaum2RSPBSIt36bRDnhezcyKskN1Rs+Z2WGy0vEEZZ37a7x4YueIFdSz3gdb
         FW8q42SavRe5+VipfDMai6WQFKO9BsUa7CwyAYQlZ19SyCD2vI6xSrVZPsIuGGZXiU+V
         KqEcDHq3npiHantrtlvk370W3kG4jmwchWUu4XNuIFowiST5jdDo+FYS0AqKTDaOs1ki
         +EoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HVX5iGApWsA6cOcKpocM02MsLs3Cms0hUFmAcEqMm6M=;
        b=dIg0DvhKIc0cxg5BvwUC06VYw/rdb3TjfgZOVc37QvG5xBKCwQfamDkvvR1VdoBn3A
         04GSlYEnw7UANAoa95YD1WJt1QOU+zdGxzPjlJ+cdy8/K78wcPzx/bhurFuohJUevLgM
         JUrhsttJcZFne2q/TgY9g+n+TIrJzl0zof6QF37TmQJehWeal7a9hoYprz2h/PZIzz4h
         vgI+ZUvNc/E4sUB3y0GRCI1fvJ+ZtheLPKKHQetkilJu6P82bdzkfRrPKzkwlQ6nxN/6
         odx9FQHMj7qVV0wAjkwYFEjashY2lTZK6fXiGIUTEdqXKM90aM0XNpjGqI5RitpaKcQ5
         SkrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Mmg3k909;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id n1si229643iom.0.2020.09.01.19.53.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b124so2003521pfg.13
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
X-Received: by 2002:a63:6d41:: with SMTP id i62mr199101pgc.279.1599015233901;
        Tue, 01 Sep 2020 19:53:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q7sm3438860pgg.10.2020.09.01.19.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 19:53:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Will Deacon <will@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
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
Subject: [PATCH v7 1/5] arm64/build: Warn on orphan section placement
Date: Tue,  1 Sep 2020 19:53:43 -0700
Message-Id: <20200902025347.2504702-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200902025347.2504702-1-keescook@chromium.org>
References: <20200902025347.2504702-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Mmg3k909;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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
versions. All sections need to be explicitly handled in the linker
script.

With all sections now handled, enable orphan section warnings.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 6de7f551b821..081144fcc3da 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -29,6 +29,10 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
+
 ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
   ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902025347.2504702-2-keescook%40chromium.org.
