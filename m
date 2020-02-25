Return-Path: <clang-built-linux+bncBC2ORX645YPRB7FX2XZAKGQEWDBAODQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC8F16ECB9
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:40:13 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id v24sf7890895plo.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:40:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652412; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hn3RKN6CEN2dys8O2bD8wfAiGWuV8IYONW53fez49xMKJOBgJ5qGETKgpHY8uDA6qw
         +WRmd3zp2oJRTX2+Mcm8RPCYwr9FaedjZgAagzX3cSvIp71726v1rwnw38UCDwpmMwqi
         W7U44QHlViA2eSjUSzDRHUQg6/Oo65Jwf6qJaR7JxqBkztIefwciEGalI53orTS++gPY
         2AhKLdW4Xpdt6IiYTzrA9Gf9AG7qP4+cIWSTCrqiU4F0YbrDk+fO3r9PAWTt+vC7Gful
         4Oj3XJwab2W34401sYxPvEWwdqHEhARUgA+H84sSl4tbQOIaumQ7LP9emBNtCVTCMQt3
         l2KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=SIEeUlZN59zM5/ScUYGKSqD98BY6pcm/s+6K7+cP+LE=;
        b=YwCqv5/gc5H5+Y1L7GvNJINorPiWZT7aBp/ySsxzKX0t2G+t31FoAk1vUDwIOLMPMi
         NZlyL1mRPBA+aqzI00xo1AJzxsSUuum/UIcvjj1/Zh6adiTQSjNk35aOuQeMP0iBh3R/
         YuaKk/4Sxgr8r6BR3vKTikAnnSuNACKDAAx4GOk4LtFF3t9nlmtPcePNqrhM6qXM8g59
         geyamIQ3VtLTqRKYTpHGuY450fxTMWTJC+I0bPaPjGhbJnXxWF/P/OXIG4DwHQOKKS9m
         //mCdOewZaGAE06LtW9XIcH828E/9TE+QsBaLqJBmXRFo1GRNiv0ya6GZjeAVB1EjffA
         5zmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7vwSCWz;
       spf=pass (google.com: domain of 3-1tvxgwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3-1tVXgwKAAIucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SIEeUlZN59zM5/ScUYGKSqD98BY6pcm/s+6K7+cP+LE=;
        b=WvJ6HvV2hgqAOuAxBgXkHhjzPoNRBEmV+MMRs4USdsMX80kujBcfsla9A5hgg5nh6c
         4LKvNBoyCEdX/goLJ7kxJZZTpSKzeW/nr4/bRfiV2HotaNjDx5W5FeMeDGLex9AxgRXj
         6mRV++WM3CgZhtWnBFTd/jJ/+ALtBiSYFqChzq5JdSmClJoqysm6961ZNQCy30N2IpO4
         1kEuBBAil5AZiZ2OEFYnNInGudJTD9HjTmSb4Ue3ZaPdKOigHKQ3RMqvY9zT6v82MR2g
         PXqIQSM6CicRexLnS4gY1tBoWW3jNivsxt+axhKh7MKm3x979KyBJtUBu84h8qHnRTLr
         fMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SIEeUlZN59zM5/ScUYGKSqD98BY6pcm/s+6K7+cP+LE=;
        b=lyPzSooMBAxiF0NxfsS6b6CoK55mtAn+JTZfzM5uUMLUoBsCGyHbEvMeEGBokB1rUE
         /JvAGQ4MbcagHOta+ae/ei+B/iGrEYSmBjZTT8nEF6S1IvcKXQKGMc/oEIM2Aqyg/0cH
         BKVFP/1EtJ2it+yo1c/fmZu9YovWa9Gb2/U/sumt+FllALetMCS7J3fNQ+bE2ZsmDLmo
         U/ukriaHsafshuCANUXfDrmEw25RAbQ1N/xTCS3EaQ66HX3IfbBXb+O0uFRUFQP6G7lS
         uZ/wsWqQubn8BcwIWxzpW7R6cp7fAK5tBeymWxOaNKEri4lZI9zVLOOu2MkigEg9vLJT
         Ke7A==
X-Gm-Message-State: APjAAAU+QERbFK4FM7aufftONyl9dRuT1hjTAc1AY9+Ca52g2miEslMc
	P0l6FVshZknNkJjuSOlhUjc=
X-Google-Smtp-Source: APXvYqwJUpigmTgMN3pz7u1IBIJUmJ7dUeIQEyZcncBU210Kmf00v8ugf9pljR7mC6ox2/58x/HwIA==
X-Received: by 2002:a17:90a:e996:: with SMTP id v22mr73674pjy.53.1582652412728;
        Tue, 25 Feb 2020 09:40:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4d5:: with SMTP id 204ls4416028pge.9.gmail; Tue, 25 Feb
 2020 09:40:12 -0800 (PST)
X-Received: by 2002:aa7:8597:: with SMTP id w23mr28741823pfn.38.1582652412162;
        Tue, 25 Feb 2020 09:40:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652412; cv=none;
        d=google.com; s=arc-20160816;
        b=L/N/+90vzLUF4NpetNmHeSJJpCeUIN7ieZzG7Xqeq39wrK14EPpiS2sBpXEAdNYHSD
         qWEyLklXcL7cEHnqzaa4FkdkFpNfxRY2JI0I5xQI0mmJyyP++4LXN1PR7zuzWLbADvHi
         8O8kZNp9grwhPES5OGqnzUIt34Mw7dSYdX0HOYQOlItRzbeut1SZFe1I7Y0wqU86Yppf
         ULUr+37Rrsiv5DjgkVQx9LhPWA5QPcYw+E/O0YdrzlYYEgOd9S4S7wPs0en7dz9KuG+t
         w28z9Z9KQnygO5C3HE9LAgKLwx/TLawn/aUyT6BFAS32ZN8PY8w83+LCsiszFySkgzx7
         UImg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/9ynHIjebmTtgZE9DUTlwVjGdkmD9QfvZQiqhOExK9Y=;
        b=o/zpQVPgre829Vuh6s6qPTuyLm96xNTF3WFvONIHyW00GPs5YRpMvHs+KrWECUd0vR
         ORCFO8cttwP91U42qkVzKTXj7OK46FYAwKBQMD+NXAlu+70Cv7ITL8aLg17hMJy6f2xc
         e4yiNc5WYwXpRaBL5dOOY5B3Yd/qWeXkWRepjadEqFMzPIBgmEtNo3nQCAGN1IIyT9Pj
         U78a/tNQ4WYZ5Hrgxp1ke/znJsW9y6Dk5HTjdvKhrHzpolCOPVGmFt2GwvdLizFP0Cu5
         0LdKmnc25sbnZ+psYVGCNb4/CjGxvP1SWkR82qFqUKwl/KO3GWFd9xzrvciLXQpDS35a
         v12w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7vwSCWz;
       spf=pass (google.com: domain of 3-1tvxgwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3-1tVXgwKAAIucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id t34si118053pjb.3.2020.02.25.09.40.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:40:12 -0800 (PST)
Received-SPF: pass (google.com: domain of 3-1tvxgwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id t12so7886344plo.4
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:40:12 -0800 (PST)
X-Received: by 2002:a63:5a65:: with SMTP id k37mr60903965pgm.264.1582652411820;
 Tue, 25 Feb 2020 09:40:11 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:30 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 09/12] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o7vwSCWz;       spf=pass
 (google.com: domain of 3-1tvxgwkaaiucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3-1tVXgwKAAIucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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
Acked-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index a3a6a2ba9a63..0f0603f55ea0 100644
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
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-10-samitolvanen%40google.com.
