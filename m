Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB4NTTVQKGQEKEBLFCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0EBA0DD7
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:08 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id l80sf502566vkl.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032967; cv=pass;
        d=google.com; s=arc-20160816;
        b=oVML/Ka47LC0o2x6mB0jHp80Tj6CDeE8Y9QgyLO3uc8c4hYip6L6YcuJ18wj2iXORD
         wu233dfMBuxXhW68WbXq/pmFQ6dS2diaaTluk8PJ1xZ0Au/epDQlutyXZtdCKqFAgtzY
         ktxC7oMplLqZyAEOlNQVjME6rEej9K4gwJgsWQsv9TOe0hrkLjkl4OBpI7fA6N9M7VAq
         +cwI9g+UYNeuqiXG7nzHLrTsUv6jIMlKbtwza75FBdExjGPUhCT8b00ioPbyRrHDLGqr
         V/hVX0F8sCh95zqlpLV/pYS11xMFgnPKSJQbPGzlzf33bu46kNPq8620LyRjDat3vkxn
         8hcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ubmkAtpXG+qmkxwt/E8MiFUey3vCFe3kM+vZBW/sba8=;
        b=xjpEAP+RTskalmEYv4ufBw5VywYELspsZB/1/xJKWfDAp8aMkr7wPTaRI5ReS+SACd
         ugZyYAAemtw978YXigkt5JF7Ig9D3C6Mm2EzzsWGWQBAUc4euJwgbTHsm6ALERnYwsHW
         cJl7t/2uo8Uccmv+45obj9vwcFfz03ZnI8PhYFVXdQumrnchxV68PWnW7iMJ7ub3CLaP
         4dQaad9Qm7Bc9+ZqtC894Lsz6NdHmYVa05RuWuGVMw0/KWFnUOM4XaYZcjWm1yCwaNcO
         FYi1mOd48RYXvBdoePZa2q+Wfi2DpY85UP7yTjbIik6FYgNMezjNSfVIxqNi7d5IASZ0
         Id8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJ7AtSw7;
       spf=pass (google.com: domain of 3hqznxqwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3hQZnXQwKACAJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ubmkAtpXG+qmkxwt/E8MiFUey3vCFe3kM+vZBW/sba8=;
        b=FU+j8uMlYh5JxVxE7FaGB8Bg8IedxcwMR5LYk28ncUV73Q9SDeOh1OUXB8qB9eruj2
         O1fiRPuq8EnTn1XAphDAYC5iZAQ+ZAF3fA8XOrNVDtdj1IIVRQ+KOWtxl+L0NDdBW7xV
         WlIqe5lZE7NV7NggOd/F+X76mH5WrrHzYKLLJw2GdwVNODWfh7dHdoAxKIUfdZMXFjj4
         mx9bubg1NmJwsBEghWpl8w1b1P7DDgfIrbx0w1HJYEPeMLwAASqgEALWb2KiMiFeFX25
         54F7OaNNJjiCrpfehJfKbXLIRE/MFtOYfYjYDr0Xj1cFXGrnBwU6bgGvtPx2CDF29CGh
         eLew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ubmkAtpXG+qmkxwt/E8MiFUey3vCFe3kM+vZBW/sba8=;
        b=MvKAQjrvm/m0h58EL5XIIdtcp1KDvHxMgogeiHSrB82xSljPV+eaSAN/UdgwzI1XlL
         fgkRc5H8YS8PHcbU4uLMCTBbrVHBBISdoPYC+gHd7KLhtSydYPiGZbK3gpVlDD7qns9n
         JLGEIFnZKskkxPbUit4ydZN6PGmHkd6D1SQOIIVQPpgb/RaezMiDjFgShuIZEwOQb0xH
         SCB2e+dZwWIHv1sMTUXQ7NYeV8vlmqgdIpEyUS0UISDGYHIUGbBM4B6UhzIjs6whCQm6
         74W+6TyJ4JvLRs69cucEIovRwFimZOCbVa7HaJekJKvLVdx74SsnWK7gajXqRc3yjIqV
         Zv1g==
X-Gm-Message-State: APjAAAUcT8fkEr1ryk44KW499LmZRt9AtAZ+4vBrk5yZWoEYW2vGCjCo
	gDF1XNOiF4eSIocJhmYIivE=
X-Google-Smtp-Source: APXvYqwObwvngJ5xrz6MHXh7H1U4rTbfQZWQ4JTicSg0Chf7ZjPVrNNtFwSG8hB8r2qCsB+1EeLzOg==
X-Received: by 2002:ab0:6608:: with SMTP id r8mr3359766uam.25.1567032967207;
        Wed, 28 Aug 2019 15:56:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6688:: with SMTP id a8ls45045uan.7.gmail; Wed, 28 Aug
 2019 15:56:06 -0700 (PDT)
X-Received: by 2002:ab0:7489:: with SMTP id n9mr3419108uap.61.1567032966854;
        Wed, 28 Aug 2019 15:56:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032966; cv=none;
        d=google.com; s=arc-20160816;
        b=y9fklx1jm5v8G3hzz03DwEj4br6BwDAooKDEJ4f4wTagHkDfLl3wCIYCYW38dF+7Q1
         H7XXVDY2a+SaxUz1kH14vnOBSHyzTPrty2M3eqNqHaPCtHkEEZgSbEM68Dj2yPhaA0Oq
         4lSvRl6jvePkufE/jOSF0pacEunMkM/48nJSfgvAX6XDPj0t8Xg0GAjfAM3FwpTZbUyc
         PHkAdqiSpKFXfSpm58UcMMvBWVWdegTHjh3gSMpJuAF+9q8sWMRlYNmTlERk6f5+8WGy
         gvq81xOXIlBoklPjVZlLpqP+FXPV8L9aITV5HOPBZ9ExeL/cWVkqrJd2pkc5bz4Dz3YW
         w/6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qtui76zbZDjBR4fv6nr88v7Tjsdi7Bt5xxDWhf7dUos=;
        b=pWD9YIAXr1RWJvcCapkqHXTSfAcNrDLWajC+p9zp2I4+QE5g9XTAp6cj5Du7DmrjZR
         r4FZgEjKT/AnlWIhxipODXgp/WFnEVyuWtL+nepdy+g3Ih1egwDuZBqT41ruvGArFKCX
         hsxPTFt8joiA7MjvB4ziS6nTDTijIZJy82p2w/odXB/PC0uVrTNmWtQmDViEizHdDf9Y
         BbtUFQZfAWr3Px8/4NXPJzkOleAPBBE6ouSucIgSFs6HNyeoQNN9TPAm9V/K0yANRS/a
         vjNAVh1bR2w+ZSiDX+XNMwEAYseJfOeohNSWw9Nw4s5PFLt+K7//wqbR9E81loI9wW5P
         fhFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJ7AtSw7;
       spf=pass (google.com: domain of 3hqznxqwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3hQZnXQwKACAJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id c10si16580uao.0.2019.08.28.15.56.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hqznxqwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id q12so849284pfl.14
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:06 -0700 (PDT)
X-Received: by 2002:a63:1020:: with SMTP id f32mr5719226pgl.203.1567032965505;
 Wed, 28 Aug 2019 15:56:05 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:24 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 03/14] parisc: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hJ7AtSw7;       spf=pass
 (google.com: domain of 3hqznxqwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3hQZnXQwKACAJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/parisc/include/asm/cache.h | 2 +-
 arch/parisc/include/asm/ldcw.h  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/parisc/include/asm/cache.h b/arch/parisc/include/asm/cache.h
index 73ca89a47f49..e5de3f897633 100644
--- a/arch/parisc/include/asm/cache.h
+++ b/arch/parisc/include/asm/cache.h
@@ -22,7 +22,7 @@
 
 #define ARCH_DMA_MINALIGN	L1_CACHE_BYTES
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 void parisc_cache_init(void);	/* initializes cache-flushing */
 void disable_sr_hashing_asm(int); /* low level support for above */
diff --git a/arch/parisc/include/asm/ldcw.h b/arch/parisc/include/asm/ldcw.h
index 3eb4bfc1fb36..e080143e79a3 100644
--- a/arch/parisc/include/asm/ldcw.h
+++ b/arch/parisc/include/asm/ldcw.h
@@ -52,7 +52,7 @@
 })
 
 #ifdef CONFIG_SMP
-# define __lock_aligned __attribute__((__section__(".data..lock_aligned")))
+# define __lock_aligned __section(.data..lock_aligned)
 #endif
 
 #endif /* __PARISC_LDCW_H */
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-4-ndesaulniers%40google.com.
