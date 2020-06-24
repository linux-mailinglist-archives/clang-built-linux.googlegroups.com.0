Return-Path: <clang-built-linux+bncBC2ORX645YPRB5HQZ33QKGQEVERWUWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3CF207CFC
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:32:53 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id z23sf2120534ote.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:32:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030772; cv=pass;
        d=google.com; s=arc-20160816;
        b=ykOzRX6/hQCWMAzPKg7sR0schd3LmwxDeb/sW6oXvZpT+kmo5tt066lSYAISpXBexb
         2PPC+mP9E8WBQB6v8VQGJwdZZjj+QFO1aCBHEOxqpt212fzn8evtYokuYPngtzwD/H7G
         /AaJUXNoM4xm5NWF1la2ZSvJNgfxd8sagcT7bITRQqCKPCAC51KoAtYGfRoqZJCJzVQJ
         Lw4GUAZ0UKegjipwVFX/mG5bGXdnpBiBpAX+u2eRjqTSWOev6nM7jaIWCQGDGeS8jMII
         7ZHfv8fVnYU7oMT3Jr5dlqhYVtF7fNIEa/spGlmp6HaWVVq9V0GCcm091bEwrnbAxKWD
         edeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=noGToPi1dQNDlvp7zYJVxcBY/YXS4dknP0xok5EzeZ0=;
        b=dnxCiLWer58o+eaAcEwyiLEOLAGfn6j8n3dfM/rSDD2gkBZEqzr4W3TVGJY4ilZHfM
         D2ZCPgtAFcTMvqeJY15Zx81TwLKgdiqQmdxuePU+K+kxuy9e1FpEEU0NtTQ3mzgkiiIh
         OpC1gmO3SxtBN+3+2KTPbtXl22RycPUSwQMLZKy30Kd9jHw8nJtWlgMUGyMK40haNeHe
         4zhqJ+Z/Wdta6QaOCUxGE9tIvdDbI5dZdaXdVHsDWrvv86pyeI9VtF9QhOA6PB1Y/Fmr
         xqlEzs5kxVPymCj+7aUzsGE/kc8A9vneUjmKNxzkZKHeQuHMhgD/oKRelVKelChoJTNR
         dGbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xm0pw21C;
       spf=pass (google.com: domain of 3c7jzxgwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3c7jzXgwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=noGToPi1dQNDlvp7zYJVxcBY/YXS4dknP0xok5EzeZ0=;
        b=aF/LUH6x/+a4cR2UQNLNDqOW7A4Z0OYEzNZ0xvBu3O9BQQOiINVvrMq9mOkxAr+HrE
         lKkJTHcKndkhi1seIVUvI/ClBQOcMkAUFsX201aEOUEMfm6onPnpZNUJWBYBgGIFQG1O
         KbVOP1T4VKmvbqFzej5Y61hA0xqRZgx+GCdXkT4VGwZ9vr2ewfsTqYeeCJll0nRylQHI
         f7YsoYVdyvCcn1Bg8QU6LI6sWpNhF/4aJhhCaiOzJBf3rh0Bl+hZ6/LU4TenW6uza5Cf
         DADEvHfKD7sD+f7R25r/pSXbplIyqvI1rOIzsnkoh2MNw13dXECPX09YIlHxa4FMuvJx
         RsFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=noGToPi1dQNDlvp7zYJVxcBY/YXS4dknP0xok5EzeZ0=;
        b=E3EL1AdDdtdMiGGGu7yrgAVJ1LJBnnoHZOF9MAadODxd2efa12jJxPmEdPrErGIxVf
         W4ive7QEgFB7yaJyZ1uURMyVm8NO5DoZi67pRk7ged+FRj9fiYbBVvEsK+ixU3ysKzYe
         dBoqW51/PIGu3ckrcy8tUmGHAnlrvRXaXM3wP7FWLABdVdLm5Ryike2K91WDzZ+xv+Ff
         D5zIn5EYmJCmAJF5Q746x/QxAliazkBNQ0Uhr1HRg8ErQGMiZzfbdSQJYO7b0wHbxm3B
         WKazRHfZ3RbpL6wP2z2fqTR2wmTnqYtcVQC9n+tfCXfufGxLZsZu5uLKZNDRHK5gGBrL
         U8EA==
X-Gm-Message-State: AOAM530ZWvKoA/3w5tTgPKn5R9ikJMQh4u2yZ+VNWjEAFoJhz9dqFiQu
	4uD+0GebEDGbiSg9YopdSiI=
X-Google-Smtp-Source: ABdhPJzCYkD8DU6kZcH7m+h5+oWK32d4GuSb0Pvap++a8Qeb6/TQN+cKABeuftn5QTh0G82oNcHKLQ==
X-Received: by 2002:a9d:3a6:: with SMTP id f35mr23314808otf.299.1593030772431;
        Wed, 24 Jun 2020 13:32:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1db7:: with SMTP id z23ls735116oti.9.gmail; Wed, 24
 Jun 2020 13:32:52 -0700 (PDT)
X-Received: by 2002:a05:6830:204b:: with SMTP id f11mr25037347otp.198.1593030772125;
        Wed, 24 Jun 2020 13:32:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030772; cv=none;
        d=google.com; s=arc-20160816;
        b=s1MsomDWn+cZcrlKcuv2aY9XWrVgLZ8+HwS5LL8d+5YwNxn7V2qJ25ZvLmRLHF5SLX
         S3h4odi0VC3ms8pHJkgPkBWy4YoPpaBoH22graK6bi3alEp+IynKf6T60lJaMEzSAW7m
         EmtTDvknKbmttRue9hBYn4v02ExktVsZmqMRstHxhxT42j9EmdxmLeqCFRplv7s48KTC
         Vu3Y9FmslbDPX+0INFQRvD1y6eDGmd2BNBizr8GeaPlP2aHlboCDg1+PIVBpoTxg/aSX
         QAQp/jB4l7WwWP70qEyfQ8RWRxgROoWKVhh40HRNrAL8jLuUUXU9vjZxzBFR3O1obmfx
         LTxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xQdUf2OUslJj5DjDkMf3WWk6yA/Z9kKXMPQTw/J6IlI=;
        b=ihXZgou3ndBEwkS0s1cXsL3k/o7px5yE6I6eWm1LTLfVIPRuetvEA0m+bWv8scbF/T
         RAmksHnqZgqvV3v8XQARrkZZgUUIpYjR9gNV6+6ucbP/0CuRpVp1hPd8gkAYJTbUDQhz
         paoEX1NxF72ipMyG4uyJFd8D57BwoRgQkTaHX0IKeNRz5e6pepGsgbvCvEvjp+Gmxx4U
         ccTLjMLwOqT+E263LGBMRgaO2UM2qVW3OV53UsCE3h3F5a+HwnF9aswC3SjDKYw6kb4+
         rfDPJCSNUxAtvqv2RbsKyNiO7LFkZCO+bcx+AOtU7WbhzI0cS27H8u4GdNOXdeliSf2M
         BkNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xm0pw21C;
       spf=pass (google.com: domain of 3c7jzxgwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3c7jzXgwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id a13si1125609otl.0.2020.06.24.13.32.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:32:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3c7jzxgwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id f130so3480150yba.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:32:52 -0700 (PDT)
X-Received: by 2002:a25:4cca:: with SMTP id z193mr43175648yba.510.1593030771779;
 Wed, 24 Jun 2020 13:32:51 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:39 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 01/22] objtool: use sh_info to find the base for .rela sections
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xm0pw21C;       spf=pass
 (google.com: domain of 3c7jzxgwkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3c7jzXgwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
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

ELF doesn't require .rela section names to match the base section. Use
the section index in sh_info to find the section instead of looking it
up by name.

LLD, for example, generates a .rela section that doesn't match the base
section name when we merge sections in a linker script for a binary
compiled with -ffunction-sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 tools/objtool/elf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 84225679f96d..c1ba92abaa03 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -502,7 +502,7 @@ static int read_relas(struct elf *elf)
 		if (sec->sh.sh_type != SHT_RELA)
 			continue;
 
-		sec->base = find_section_by_name(elf, sec->name + 5);
+		sec->base = find_section_by_index(elf, sec->sh.sh_info);
 		if (!sec->base) {
 			WARN("can't find base section for rela section %s",
 			     sec->name);
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-2-samitolvanen%40google.com.
