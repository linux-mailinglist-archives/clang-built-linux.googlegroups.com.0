Return-Path: <clang-built-linux+bncBC2ORX645YPRBOEDTT2QKGQEG3D5EMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F7F1BA986
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:58 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id c11sf11756892ilr.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003258; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQR/uHgH7CK0QOz8I8VOXj3uWQ5yJY+YTSenw29fTvSnzlTihQMEsXzHPDpTN2lOpJ
         0qqdsED6Q7vwcrlamH4bF6xY9cWQxE7VqOl0OnJKHg2S1f36puJaU9tKqQaQ5F/2/wGz
         6ZOw+hRUiYVyViFDvzt+jgCSJOinLnCOXPVniwpk+H0/hawcRDj24ZBhSdMDBsc8EJE+
         qh+ScRcn9wMTtZHSrIuke5TPinLls+/HwyGIgpWDdPokM4nEHx4ySd9Cv1ctkA0misA5
         AqDi0OzS3mAx8FiUbU1cZFQQIImYfGhL6Wmrg2WcHI2MbsJOdFzPZ0uSVe0pjZi4/NGb
         xPgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=EE5SHKnZjLIH2RLfNxU4tUjFYj2re87TmUk7hQRhfgE=;
        b=kE8E25Zfo6QjqBYCNOXAdgc6ohMyH3koZrXY38t1LXdQltKLZqrVu7OCQk69Nq7Tde
         PJuOU/LDE13DzzNlqrFGrw4U00W1CAjBGtd5arKL4VdNQ3JULMWoiRjUB1DPQLl4LhDN
         88PgkwtuZTY5HJeTt2rUrUnJPouXTT0gxIXM3hOu7V1FeFR9jXqZIhnT3oTqawHaU+i7
         eBO2h7EBZ0O5CLorIRyopRRyIdbGnxcUVnn7aticos+ePu83AJbY0nBPcJDL5T1aRBlf
         +P6F1e+0QGVKNo6qqApQwno95eyIo4MOnalyRVyBzBsYmwYQT5ObYWdYwCCNhRp+F0xe
         wwiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DHL29TiS;
       spf=pass (google.com: domain of 3tggnxgwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3tgGnXgwKAFEBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EE5SHKnZjLIH2RLfNxU4tUjFYj2re87TmUk7hQRhfgE=;
        b=ikkd57ekW/nPNUAh19HBl4JK6ItYNdDhW+SVS0UbIhWBybEnOAu84KKNmd/SweqSb1
         gjfOnKofxLbC63KsVpV/M3iyemPWv7a9ZEHNWGNhKTnfn26K1+U+C3IPR5ytfUEQ94hL
         pZLwhZ0ls7w5UT+CMxvzepECbPfaV9D2VwJHXmKvCunmCVHIMvjpwcGNAIFpNdpcB9ib
         E+64tKquaXXQI+3KsRBViUJUEfYezB+4EgZt9xp0fb53fuSJFjsVgl1vVwMKiVVpfRe3
         APWhJ+YBhXY2t9loGpdRzXPk0aDGKR8Tb0xMmn+kQa7o1zRex1E92ORVXlY2eyafOo9z
         9Ubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EE5SHKnZjLIH2RLfNxU4tUjFYj2re87TmUk7hQRhfgE=;
        b=hBIQyYzwNl436yKr803KKqmNdBr/chd9R0fN76z1jWxGZmHW8FA6UMi6eadUK4hOLM
         X7NZx2XIhO+w3YGao54NEMcbT7ZbFcmWxJtLYY1qvzgFOQuo4j8gA/m1GjFqgpT/1rxf
         iGvA92FvSs7msyli2TFPRIq4vtI4zdo1y2j801rKd3N4x6LYm1RL1pll0QSF+Zyb93Hs
         Rm+mcGQMon1Ci5si5rdJZ7UgktY+GbyiIYc1ldaEcKIT2Y//QQMQydtrjS96ObcpsfO1
         tQAj3jrgVVV/8gB/djidT+K2wn+IxZ2ctXiLL/QcqKg3FzcWKwjeVYImOIDnugrZFjpa
         4t5Q==
X-Gm-Message-State: AGi0PuYyNMlnwmjElfRha544AUnoQCSFSnbqBqH4uk6ccxstPZjjRXhB
	6LLQ2Vpe9SP2X6f+M+RAL4o=
X-Google-Smtp-Source: APiQypJraC1FeBhDwm33qaqXF4z+9C/F+11YThf+j9oLWy54Gg6RzngV6SgPsRE0Eo8liasR7dcu0g==
X-Received: by 2002:a05:6638:50f:: with SMTP id i15mr20975819jar.100.1588003256409;
        Mon, 27 Apr 2020 09:00:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:4ec5:: with SMTP id r188ls4592946jaa.6.gmail; Mon, 27
 Apr 2020 09:00:55 -0700 (PDT)
X-Received: by 2002:a02:8447:: with SMTP id l7mr21292505jah.54.1588003255446;
        Mon, 27 Apr 2020 09:00:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003255; cv=none;
        d=google.com; s=arc-20160816;
        b=mPwLwHkhCq3vOdwO8KjBcRvaUPzj64b+qE/6gls5O+hkwhCmRkZGcbeYKn1taELJ0n
         sSlIOF/YMt1pXPrD7ZNUQa/5lMm9DoRIzOsbD4HpMQ0m6y+0dwfUUy/5hS2jUkNCjzDS
         Zo49NgR0g+E0Sm4t9KVFtKvLF2T8hxGnTT+loXdF5HfTW2rRi/ntkzL7dxKkZg9rOyl0
         wkh0rxMd5unzfsBNGMY/qbJy/Br7dC1rSCDADLbM0KkppdpynM7OU93y/408Nrv9m/TK
         T1D+5LDKCi2EDAXlYO+hkbIRMcn2eC/x7Grrbt/8XxTBIr/VtjzxfS3vlVpK0pbq4sJ5
         A7oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=MhrpwHs0AsLMtVzb820LtwCNl0W7a7WFfLC0oPkvUmQ=;
        b=oKrFp21gykDYbnMiFt3sTXZpAbSqD2Jvt0Zt+A0Q0JMeZbzNpm7pvfB1ocRUNmElai
         YTqPFxYn3QYdqeAdJgcunbm6F9Rs7jDPjADS2iUfnorllV2YrWOCMpxlw6V5h8RRAn9N
         qIMgeSbVrsZ4+gJ7nUicaa317jGZ6YOYMAKhhQIX3S8LvccrIhQEfTYRKC+/v9kzdZtK
         ngZaM82aQRfT+P6F/qxcVr4nmNKgptMXQO0I2Z5g4x1T17fZZBlVLnjOqg2si0CIakhX
         kobK2igDUD+Ybtu+tJH75XnhHbT86bMp04/js8bYVjLaF8nGZRITbsh/3h9loZD+3p8m
         poUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DHL29TiS;
       spf=pass (google.com: domain of 3tggnxgwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3tgGnXgwKAFEBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id g17si66710ioe.0.2020.04.27.09.00.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tggnxgwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id l187so20889721ybf.17
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:55 -0700 (PDT)
X-Received: by 2002:a5b:44b:: with SMTP id s11mr21987518ybp.399.1588003254867;
 Mon, 27 Apr 2020 09:00:54 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:15 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 09/12] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DHL29TiS;       spf=pass
 (google.com: domain of 3tggnxgwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3tgGnXgwKAFEBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
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

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..875b106c5d98 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(.hyp.text) notrace __noscs
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-10-samitolvanen%40google.com.
