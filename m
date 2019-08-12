Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEN7Y7VAKGQEPIIX74A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id E013C8A9DB
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:52:18 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id y187sf4833026vkf.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:52:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646738; cv=pass;
        d=google.com; s=arc-20160816;
        b=giEbyOx9/+noQqwm7CV3vTSHXiZZ/K63Ha1pMUYi3UU/+sh6AqDXuTQXHk9Y7uH4oQ
         jCv3jZy8kFzL8C4K5qkx8Qd6jvVdH7YciGvmA0mchBg1cRzgWwUayPDbiJcDrl0WskSN
         Pr2N5ZF3F10O//kXGb/U6aHmfU4+MIyAZAVM6Gi9gkgDWM5bWd1u6W0z4R1IqWfBr/5h
         jW3vmVVj5ZXlhzz6ScQ87DlxP2F7xXZnm573Ztl1xca/3ZvHZumX5QRwLoEWfnvk9jd4
         LYcKXnnbMLOGH48P9X55jJ5dd9WifgwSyTgNQfAM7bKBTElYH4EvKbm/KWzyevv6hynE
         ehPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=DSdOwQCO1Bfw7nQ5ITgQeSnUzD5s29mzaMy9bpkylgE=;
        b=vSMlNMbQWVAG7dg23T7I/PtzApiGEUKzVaoKtZVN0PHA9KJ5OdRFakK4W40rXWO20S
         aGFXXZgxb/GhMcpt80PujWcq0hrwTwpnecu9K9bNnzPR576uIt5o/Myitp4X0fL6A82T
         KhrReMvHA4glDIXqtsu+wGYP4lyJGA3P+xeZdymBEua+EdPSuLQE1EUKjWKFN6NDaWKD
         pEjmbr+/9aBgUfRMzSeZq/M7CxjJheJ3ybTBM1+r35lzeXNVlQSiQU7yLCDusqLXsPJm
         rxLi4aAd+G+py++uLTNCAgpj4LjTK5bTeaQ3SGPM7KAp9sE6pySk9qVO14nFKulAyBHB
         0RUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cEJcf9Y0;
       spf=pass (google.com: domain of 3kd9rxqwkaigzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3kd9RXQwKAIgzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DSdOwQCO1Bfw7nQ5ITgQeSnUzD5s29mzaMy9bpkylgE=;
        b=C2wtIwss0IfrJdfNYTNnfAGcJj89lkU271qFiRR8F/C32YKtVWMmGWLqflAItQOKiL
         CGY3uT6wkNH5NFaL+gwA13ucrk7oXi1W4qsY+r06Hap3O0fdzwBk1dQbKkToD6Wp6fB2
         wj3m5LbP9IK1L26bT+tqQ2yu/U5ykB611O61ApTRTrBxp2v314c40Y2uBl744Bm5hxpF
         4xnOlYbrdYnWVHHlMjs30D0vB8f1bbBq5FaI/van8T1MUNpGCQTSQB0yAO+VtdaS/pxa
         pfdOhFHhQsqgfk5VTMq6YR7emf8kpgQ4sSI26BIPO4J5gci3us1be4ZA+FYltruf5wan
         oywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DSdOwQCO1Bfw7nQ5ITgQeSnUzD5s29mzaMy9bpkylgE=;
        b=ZGTYLLHyp4SEhY8Aty8UJemzSBcvxstcBIXyUanOJ+L65Ch3i9/PHkLtJnZRgP4n8S
         gF7F9bZTT1VXguXfXPjGLX6ZOp42entElTKeqYvuIcQtXoTG44BAtHY+VeKlrKSKdaVA
         noefIXtQ6q3VMeLIBlKxJAW9oeekl6lJaSMwtJw8Ad+3uDVG0+KH383PTJnozKmdPWWB
         6dqYGI6v4dwP+bJkIOjY2PCaiBP9y2h2z21iTs5tEvk5M56YwgkqZJHcGyYIbJGlgDx6
         zQSaa37xyU7qv5tGY3UiaeaiBXZKpPvQo/BYWJPLvAaA1yIYuMzmDU9IONdfPCspVFzK
         VBZg==
X-Gm-Message-State: APjAAAV+32O9e+yxU/+gwO1zhoTiMqtcp28FxRNPXyX6GklRpdlzOb2/
	It+XKaPpOZkmG4LIsNQ5oeg=
X-Google-Smtp-Source: APXvYqyLI4wlcprrUFsgG0PwqgBNi27BxtXjnHd5URFCD1GbDPsVzfdg1nHkiRrmuhGNngG2aLgq0g==
X-Received: by 2002:ac5:cd91:: with SMTP id i17mr2754498vka.29.1565646737966;
        Mon, 12 Aug 2019 14:52:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bd14:: with SMTP id n20ls3851495vkf.6.gmail; Mon, 12 Aug
 2019 14:52:17 -0700 (PDT)
X-Received: by 2002:ac5:cd91:: with SMTP id i17mr2754491vka.29.1565646737686;
        Mon, 12 Aug 2019 14:52:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646737; cv=none;
        d=google.com; s=arc-20160816;
        b=tBChXp33uOLe0hGzHhC+G7artV69cJtBMRXlOkbKySkrTac+vBHLLt3b5+bZiRnFUf
         nSx1uLcy3tiAynECeLADrR21hHBqBl8qx6tcqXGcy7wSPbthg5BkL5nRZvdDHl0NMvEh
         HRAqVY5O2NBbovDd/SP05Z3yQOq1ZKZLJp6MI6ie0uJbkI8/8h7NSrRt6yhh+JEmUx3O
         m7gaeuEZBYvZv8vmwe3Q5pww8su6Z53mfMdJN+7wB/eAbMWbtjmkGDoWueGDriri21tB
         UF3duCXs9d4EGPkcu6hYAT7cPn+qJ52QwzRsiOYTpJIkie9UgdP9eHKDj8/dnaA1oE7D
         YMyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=CMqgCUm+GxLehEdw4ZyFc9UqjqXT2SeM4A16UJsbPIg=;
        b=oBmTeNDZT/6RZczUmrVsbTicFqXqA7SfdXfE9mm4vFwcq5MX0SZ4OFPGGyL7L9vfSR
         APqdGMJ3ypnltdlUxDhN3u5xDZqg1QxucLQ9TYS5wgymHVXOhOayw2CZZPTfPZMsFK21
         MUclFgQXDhur8Dkkd/pCrD85ogTUH1LiXflpK4MNj8Epiwb8pungYYzwnmvlWkglsBn8
         SuHlPkI9hd+dmKasA1qxe0pnR2cPBzHCOWDuAnI3LSNIUyQyUIzY+t6RfUeZtCfw448D
         tAUI1CYIO3OsV31XVVDBlQY+7KP9TbYLjwUvC7zRamK9f6pXrv6Hu/ZhacOfB+TVeYfn
         1d0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cEJcf9Y0;
       spf=pass (google.com: domain of 3kd9rxqwkaigzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3kd9RXQwKAIgzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id f13si174992uap.1.2019.08.12.14.52.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:52:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kd9rxqwkaigzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id r200so94705616qke.19
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:52:17 -0700 (PDT)
X-Received: by 2002:ad4:54a1:: with SMTP id r1mr7354704qvy.213.1565646737123;
 Mon, 12 Aug 2019 14:52:17 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:42 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-9-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 09/16] sparc: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, sparclinux@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cEJcf9Y0;       spf=pass
 (google.com: domain of 3kd9rxqwkaigzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3kd9RXQwKAIgzpq4m6xzuq34s00sxq.o0y@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/sparc/include/asm/cache.h | 2 +-
 arch/sparc/kernel/btext.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/sparc/include/asm/cache.h b/arch/sparc/include/asm/cache.h
index dcfd58118c11..9a9effdd01e2 100644
--- a/arch/sparc/include/asm/cache.h
+++ b/arch/sparc/include/asm/cache.h
@@ -21,6 +21,6 @@
 
 #define SMP_CACHE_BYTES (1 << SMP_CACHE_BYTES_SHIFT)
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif /* !(_SPARC_CACHE_H) */
diff --git a/arch/sparc/kernel/btext.c b/arch/sparc/kernel/btext.c
index 5869773f3dc4..b2eff8f8f27b 100644
--- a/arch/sparc/kernel/btext.c
+++ b/arch/sparc/kernel/btext.c
@@ -24,7 +24,7 @@ static void draw_byte_32(unsigned char *bits, unsigned int *base, int rb);
 static void draw_byte_16(unsigned char *bits, unsigned int *base, int rb);
 static void draw_byte_8(unsigned char *bits, unsigned int *base, int rb);
 
-#define __force_data __attribute__((__section__(".data")))
+#define __force_data __section(.data)
 
 static int g_loc_X __force_data;
 static int g_loc_Y __force_data;
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-9-ndesaulniers%40google.com.
