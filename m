Return-Path: <clang-built-linux+bncBC2ORX645YPRBFFA5TWQKGQELCBPFXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 267DDEB52B
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:18 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id t190sf605863vkd.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540437; cv=pass;
        d=google.com; s=arc-20160816;
        b=nA79ggzEt8dppwfY13Jn36hVGza0br7jVpuduNOmS3z4HB+Jqf2Y0AxVmtZxzLzjzS
         Y5D6/rpQR6l+W/FVz0AI5Qg7P0aJcuIufXJ9mKGZEe8v6UwqjHAj1VDoJVL45p3NCx/1
         3pxmEuZCiuaPZ46r112p9staBNDTV79XaL7Rzs7azRpCck/NGObnPDeM/BuFRK0yBABj
         0yUqWRgVIW/DnDO/iD454sq0foNxy7wrjBcT9OEPXU5IIzuPHCqcupPanBgISpvPHK37
         TQLowAHw2hYrunW8KLUMYHvP0q+vrXqbyodTSiFjijXIpYYRNL5K5aOmhWNOiJadfJzC
         Ym/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=2AebYtb3zQ3PVV87yvEJBP6cx69XwiNUx8z8Ep2RC4s=;
        b=htm+2f8yoTn1r9f8DsS5aSvoRG8MctRGSGZbrakpN8V+1qjo2hQwNH6OBtlfn/5z0g
         3LAtw7ARJroPfhwFmk9xE7Rm0WCTDC2QNpgc0uHLF49lHj+jkkXfDvXWnJhKp0YuTc45
         leNoSWZTsRwE7GsugkBDoLdHpHLgziD0USMIIflObJb9+qL7LRVpyd5RZ8x/C48sUqVD
         JbYYCnB7Ss0QgsxBLyPNQEcycvJMyLI0zX5SXOEqzgW6HKHSXBPo0cyXpkydpvlaKCsC
         EvXgQSWunfCUDfLbNgFG8QRBEPqUaKAaZZLcyLWUjFJ9xamoN+LuRuUIbza0e94F6zGI
         eSkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FyBd2DZR;
       spf=pass (google.com: domain of 3exc7xqwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3ExC7XQwKABQCu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2AebYtb3zQ3PVV87yvEJBP6cx69XwiNUx8z8Ep2RC4s=;
        b=IwCg3CliNYWJqemKSqFzs0nQ3jHTVPMq/lZCsWPmG8+TtGONVCFsvG9ZNMZJnYglnT
         rT1soXm1/MfpHLGr7fyCOTfUW5W+OgC4cvUfNm0Ebh6yhUD12gRK79a9+RSkMqkErZjC
         MiXdk4wlJ6raoU/bAQdQTw2Vr2HHe8tWJ5C2ib0YVH+/lqJ7QU/WZJyFe+xnLVBR/R8v
         5mu/9I9pjJfXh4Css7KKgjAmzA3/FaeAPcuoEjjhOEj2sfOHWTLVkOGX0AzZbBZsaohp
         tIj9W1MF+8hpdymqOaYYJrDmiKSqaHN0U/imchnQ5M95mjXwPSBKA+2RWB5XPO0Y5lXQ
         jYXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2AebYtb3zQ3PVV87yvEJBP6cx69XwiNUx8z8Ep2RC4s=;
        b=twgUZkx5csnWpISpQNbiiMYQC/oGmZRQgJTS/qKZQVddYckW9FqjctXXrstDuoqu8O
         uuT6St4SjcY1KlVTufm/c2diTMhbqV+WVFJ8jZ0VAQy7hO7UzKQJSBMtQ0xqHBS/rMD2
         4IasIesjFS2fEorcjT5rl0WTKXKrtS7eJyn1Qc5/R+ymvF6nUQXGEsa10S7+dsx6Pn+W
         OBO7MerJVXRUNWjScw8DtQ3zmI1Fi4Pqz4I2Er8Fh7FqYAp+j8Fa1AKE69HJDAhx3CpC
         9jZ0MBaXCxDNZGhuHqfpJiPVis/IXZz65tL/n2fC8YXgt/9F3+wTRgAK1mLoJIFIi5RA
         u6bQ==
X-Gm-Message-State: APjAAAVh2aWXklQd+yFAe1n+2w/JlwXkmVuXHjXOInluSfo/8rIiLFvc
	Ymua9AdJNkkSY3CIc4nEZaU=
X-Google-Smtp-Source: APXvYqwPj0yj9Ch8wJOOlVjQch7pjGCsEbSUg6BdbaXbTKZG7HyxdTvds6jNJ2lOkaKxRIgJJFIHDQ==
X-Received: by 2002:a05:6102:2271:: with SMTP id v17mr3319194vsd.171.1572540436926;
        Thu, 31 Oct 2019 09:47:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3481:: with SMTP id b123ls63564vka.16.gmail; Thu, 31 Oct
 2019 09:47:16 -0700 (PDT)
X-Received: by 2002:a1f:38d4:: with SMTP id f203mr3088012vka.44.1572540436450;
        Thu, 31 Oct 2019 09:47:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540436; cv=none;
        d=google.com; s=arc-20160816;
        b=xdxKAQX5vIV1wtBz14Yr1HP2hFyaYteqecluOyWFwIg4tjq7MN48rlzZYW2kYKgbqi
         lSYKWgK0DfNYRjaoTQaMRy9g9dPa52haP75GSVFxaG6YsBKSeYfChgtHeMTc/QnF+JEh
         EDmkbmqrFS2TtfImRKkfLtEKHpcu/J4vsLy8zzTJLs+T+fYHMkTmqgm5+QxOwBeSFp+Z
         h2DP9SP0TkWe3VMw+b5DrcTdPxzzoQHvYws5xbY47gaVZl1kUemHdeLARusqd1f2a3Fz
         zUcHx2sxk/QWbMsM3lv0FzYmUIn1+wkL2dFlzg5t34RtnFUUJ8qVtwJPiYO61zLowWhr
         6gLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=P4MEC/JNWY+R+03CT6BMcXkN4eq/H40mvA6s8gty/0o=;
        b=vqDqlZaLx2FeFD4s4r6sSZo2Y7P9Tf0hPREmQ/BWynMR6Q1oxGv+NfjcuOMlCSXpeA
         xS6opXkIN07CgZ/KyL3/X9bVDYcWm+EoqEFl6YyfO3okiamDJQ2g+pbAQn6jAGKR7m/X
         dyQ80QKILDvZUBOgELvBU9hMoHrXrLQvgvAKO67fPuKWQWHDqRGUGjgmsqT7r9NywQYr
         hly7rTEJj29K6AoK2vatNBDbgf/fzfezBHW71wPZKCWMzTb6F5Y8gWV3TNqO1K635zVv
         SiVuwFg/clmFxjlFPMFXzf9j2tLYkMPJmniKUp5zkHLe7cWabHI6FEEC63/vuW9Q2vBi
         qGxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FyBd2DZR;
       spf=pass (google.com: domain of 3exc7xqwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3ExC7XQwKABQCu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id s197si305694vkd.5.2019.10.31.09.47.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3exc7xqwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id b7so4286054plr.1
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:16 -0700 (PDT)
X-Received: by 2002:a63:6cf:: with SMTP id 198mr7655687pgg.259.1572540435556;
 Thu, 31 Oct 2019 09:47:15 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:32 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 12/17] arm64: reserve x18 from general allocation with SCS
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FyBd2DZR;       spf=pass
 (google.com: domain of 3exc7xqwkabqcu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3ExC7XQwKABQCu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 2c0238ce0551..ef76101201b2 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-13-samitolvanen%40google.com.
