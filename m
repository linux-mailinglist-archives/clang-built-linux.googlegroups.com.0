Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBXMCYPZQKGQEKEF6JVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7830D1883CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:57 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id k11sf1948368wrq.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447837; cv=pass;
        d=google.com; s=arc-20160816;
        b=W1n45aplmjiDhJadhmaawrox6sXWBp1IAu4B2sRBem78+2RJNdXM/pfgE4LlohqYJK
         0dGeOvohsBJXHEyciAjGmBLLRuqafPf67T8RDYPa1dE4OJVQ61fbkK8e8oSqrqIZy2MR
         MX54YB5gjBy1CL6PS5TzbQMsXnjoAGa38U0+PNa4DXp5WS8xRHCsWbtGzbvlRgHeOCxB
         dDvTvdByz3m6aXFpRSgQcdbUVspRRe1TgibVnKjtdSfBVFwgWJXHaJ6LKCbCvJfnyWJM
         05br0HPrpFaY6+8MuvA0jWG7Iku6tJgl2ZuGiNyqvx3bibf8Ib7FKIxjeK7TI1OD2fGE
         EpMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=igmZQFkjBRahWvQkqqo89oDWI1wAl2Qiww4SybFz1gs=;
        b=M0t5GBcucre35JHnRgP/JOhoH/UJ44jbCRPdQkYqOmJdhEGV0d/2RSFjo8o4oP23V0
         IHnDajwX3YgbwakJhC8tfMV4RTEZwCHDLeyuiTgYsXWKO6G9ffkrmevPOiL/50vHy8Ip
         oAXAIQN9IikjOZ6+qDysK4YxOo1jRHx6/l/bWIXDlG7o9qE22SAXwmnMc4qDttfe59/y
         3QDtACugPMQhzLodcM6HF4zlaPLfbbTGDr5c+Mwk+xvNTbPcmUd0kOggFaATN0lPhYv6
         SokklKTkjFRczSqY98wnSgW1imlL58pBfLwwsMVcZQsQS+78zSv8D6SD//Mew6HeSNmX
         j/oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=igmZQFkjBRahWvQkqqo89oDWI1wAl2Qiww4SybFz1gs=;
        b=Cz5b579dCZpClB4fpt2cUuB/wu+MQzBMpInb5WmkUvpolYbXuTB9TLD9zLNYc4dOaw
         1TTUApaEIxrfqxYEJAziac7aeFHkHVWmvI00quykINomzmmy8DD9utW826HOe7vjjpm5
         zwijHH8F0dae6ZuFJt7QSbZ9mrHSkmGPZG+mfIVjEOIfnwYrSeH8PSi0CTY6YQ+xZyoH
         Y0ygjDAYb84KZ2VDjd1L6XlXIObq42Y30qSYhPV/ZCQew71kQFonZkc7oxw97Do1+MJ8
         M4WBdJx6dQE+eXQ5/Rs/4jcE5iZXUaHst+hB0+Sz65sqetydYCSx0M5h8giprT010mxS
         pmUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=igmZQFkjBRahWvQkqqo89oDWI1wAl2Qiww4SybFz1gs=;
        b=RE+F65OlQ72wCYJgI/A0Rc7paEEkUAxYIFtueiI7JgkCAYlgHmESK3KTsi72ozeT//
         0wZSHIVzSmqCo+x3rATZAdef6QalVLEIa4OfFtYQ52Zc4etWGYAZc8iI/AhWNS0Xlktw
         NE7bXAPzu2283/6svji7cnRnD7XYJk9jzDphUv5Vc4J7U0l+eqG9p/6mA/2/gMhCRzfr
         B4lnJt9xuEYM1ccPJ+N36KsRZ6vZiY8BF1PV+Q+80MG3Ut9ZlafqxclcsOIDnl5buHVD
         /Fv8Mytl+c//U4VufHK9shLjoS5eskvpCRR1tbu/qQ0SdFs06/5APdom4H+FgC8xGtJO
         KIuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1B/rYHtPKTWtsnTUAQ4atbXUW3MME2GLxLY6lCkxZSW5ZZyiNI
	eoBKf+kDt0GzzepQG3nGycc=
X-Google-Smtp-Source: ADFU+vuMHLFx6HswfOZA0jqXy7z2E4iC/yUqwyirnpZsNbPfaUTHdXq9npqqMwt/7jyHIWVQ8i8pgw==
X-Received: by 2002:a7b:c391:: with SMTP id s17mr5116100wmj.55.1584447837229;
        Tue, 17 Mar 2020 05:23:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls11035367wrv.9.gmail; Tue, 17
 Mar 2020 05:23:56 -0700 (PDT)
X-Received: by 2002:adf:fd92:: with SMTP id d18mr6127311wrr.342.1584447836723;
        Tue, 17 Mar 2020 05:23:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447836; cv=none;
        d=google.com; s=arc-20160816;
        b=sUXWTEqIkrKc8vjBCIpvCvM1suenUAcbVOcj0NNdwbKqH8AgGEiosI55nJgq3FpEFw
         u4xnTJa0WvtEhp66dXCF2OMzBWTMqB5gzHPgIM71/bU4DXJsZWHdW1bd9tRQm2/GsJuG
         DFLChUt/v+vXPtiw1QY2h6Kj7KJHFAGxh959UBqxcUJj7JkuDWcKwHdA/sFKp5TfsF3u
         ZbJXHozcCwLQNgKhh1gpsDXtCWPAVBLutahOkfU7D3PGW+1yHjNdY8qW2DpzPl4fOwVu
         B8WozvPnnj7X0h6Lk/v8KzCq+h0tAdp+6OobIJWGubkU1o6PRrL+jBngPBxnWS+g2coQ
         hXBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=4kf4B3k+rYAfi5xa1/EHQmCuEv8RhlG9Yi250rvphB0=;
        b=fsjbOfFbrpocQovu96E1BVvvH7zTpzTJWWb8zQgO5bVyUah7X16JJTjtH+86X90ZCq
         S/sa8h+HCOCY9XTYnujdttEymWh2zHhoBMs3DyMLgSkmRYBuTdmQxYR9fNFwNUQ4Tvli
         htTe9B0/5j+jp+9JE7WXlJPffeAav2n7paMoMArou6VTKT8TSmmXor+E5Rf5Ho+U8FnY
         QOxw7lGoq/23yP4NJrAc50a9ckteGlQ5oKa/C4wSC+QVNHBKFr6XLpyslpJW/4QGIhhp
         gFQFnexPL66vKc6bGRR5XU79dwETMJ+UWUpS1yTkFyYcqH2bYamMnh0Va8gJ9u5hfE0L
         z8PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w17si111080wrn.3.2020.03.17.05.23.56
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09E55FEC;
	Tue, 17 Mar 2020 05:23:56 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDA673F534;
	Tue, 17 Mar 2020 05:23:52 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v4 20/26] arm64: vdso: Include common headers in the vdso library
Date: Tue, 17 Mar 2020 12:22:14 +0000
Message-Id: <20200317122220.30393-21-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Refactor the vdso implementation to include common headers.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso/gettimeofday.h | 1 -
 arch/arm64/kernel/vdso/vgettimeofday.c     | 2 --
 2 files changed, 3 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index 5a534432aa5d..afba6ba332f8 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -8,7 +8,6 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
-#include <uapi/linux/time.h>
 
 #define VDSO_HAS_CLOCK_GETRES		1
 
diff --git a/arch/arm64/kernel/vdso/vgettimeofday.c b/arch/arm64/kernel/vdso/vgettimeofday.c
index 747635501a14..4236cf34d7d9 100644
--- a/arch/arm64/kernel/vdso/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso/vgettimeofday.c
@@ -5,8 +5,6 @@
  * Copyright (C) 2018 ARM Limited
  *
  */
-#include <linux/time.h>
-#include <linux/types.h>
 
 int __kernel_clock_gettime(clockid_t clock,
 			   struct __kernel_timespec *ts)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-21-vincenzo.frascino%40arm.com.
