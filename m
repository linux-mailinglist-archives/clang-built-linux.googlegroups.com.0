Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCENTTVQKGQECD36PDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE66A0DD8
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:09 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id v124sf496895vkg.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032969; cv=pass;
        d=google.com; s=arc-20160816;
        b=YkY9PY3S0btyyR/6HOI/W0UIDX+ULHltSoOQr4jkhvyHXri7E9k0QcFtbaz/XYi/sU
         RbYKignJ6s4+UMtNe33tjTTs/AbUnVyqNJqB66cDCBzdBtM7wZp4i0s6nB0Dm+9J0PYM
         HxgmXjGJM5GapUQy3Ly/yYuafsPZt3esoZoobUoK3PhX1BI8L5detE6hKHpPVeh9qTQi
         bCn/cESqiia6CiSzU079by+EbIr8nQtaFo6N7IKr93i8EcOKLKH0JP0SMA6hm0rQhXTk
         6ZYCsycoKm+8cXuBP2pbNEQjcV9pS854MrmeFwBMdUE50Nyb3iJN9tjECQJBmwOsT7ao
         DFqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=3Pl0iOoMyNk0S+G7FfmC62NWGLLMKU+RosGPEDD48Tg=;
        b=EekuYeUJy0OrodcXL/bMFEHKxYyY8BhMWRODp2ymZ3CoMfno/JZWh3wLqd0+BHr7DQ
         6zGAjjInkMn5La6l97HrgAAQUmwib3z6P/D63GQRUWfbNbXKs7v5Ee6FhYX3iISN+WkC
         fhafzBqozK6AGkrEYP9jE+/x34/q28atedBnvC7nS5D0tM8OOLDl6coZMb1jfTZBXHJm
         K4Sh/iIIpaM934ECqAtkKCEEnJTshOWYgu8eZw5SMQ5p3EuZ3GGr5vFXCGRij+ZVn4lM
         V3GgIYaE7bvlenCt/k5x5xiYa8DmjCKRwesQwueud1qdWTJCdjkrGsFMJ6XHueXLKUlT
         if9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wMbU2OyP;
       spf=pass (google.com: domain of 3iaznxqwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3iAZnXQwKACMMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Pl0iOoMyNk0S+G7FfmC62NWGLLMKU+RosGPEDD48Tg=;
        b=lrArB2HqMXBBLcGboE11LvqubmC7ocr6M/pls170lIlePhAEjcPDpL06Dws5BJzn9C
         elVFGoO5Ze4Tai2mhIo14xlQJjF36IPbx6ieEH/9A9//F8JjNOCUUjueidGSYcaDXgCg
         UhtqlsBVkLD4evtQ2D/5TEUpSk8pgqeNotw/P+fc76EvYp5h0VPGj4q5FoeXJMH4XIo0
         zRu97fYalE7IN9eIAA0fZ5UVSxHxlDuAKH1cQNMS2b5Yi43KJs2dpNC54VTFsIc8xUYl
         Aj38QovDXZtG/8v9b+v19yKIRWyZBCRJ6rjzCUJIelgyPCu85JIKnCAyolY4+C5/nXn/
         9b1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Pl0iOoMyNk0S+G7FfmC62NWGLLMKU+RosGPEDD48Tg=;
        b=Mccn9NJM7eMIcU7RHUJrA4GqkznnA19SrhEIgTGpD7yuOmVn8YiNf3gZzGBu6aK8hf
         OatGtkSfvQ2Iz41spBCXhAlma2IpFwG7+H2YVd+Hi9LRa8jerWOO/M4mLT9galcah8FU
         rWwJ/xAVcly7jHemNrfhFV4gXWzcUctr/gp1R26pg43oRQeyqUyCo6b4a64NjbSIUBen
         zev/jYF3dNh32ijq4GGVe+aw+c4XiAIsqAueGzzUOF7EmNkSSATeUwISDYFTyWhC6thp
         J80KXzXD1a8Kvi4/buUQKX221IzUx8CZudhIafskf0QLTJaF+o7GezJsCV9LYHdAg7lp
         lPbA==
X-Gm-Message-State: APjAAAWJ0z+93X0xmLCYXSTe40I2A0Uz56qBH7/VfJRB9XTM1UViJNYz
	OsvY7WoRrLA2zWWgv33SI2I=
X-Google-Smtp-Source: APXvYqxgnnIBFZxeGiw+sHWhiA4WYJ4hTBMvrw5nkIa57nWePwirli8I61yVxW6d1127KFQF6jt9fg==
X-Received: by 2002:a67:f145:: with SMTP id t5mr3886067vsm.202.1567032969000;
        Wed, 28 Aug 2019 15:56:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ae4e:: with SMTP id u14ls84507vsh.6.gmail; Wed, 28 Aug
 2019 15:56:08 -0700 (PDT)
X-Received: by 2002:a67:584:: with SMTP id 126mr4053364vsf.113.1567032968684;
        Wed, 28 Aug 2019 15:56:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032968; cv=none;
        d=google.com; s=arc-20160816;
        b=CClyAxYn2FD+9LGGrXdrkG8svKodPP8gx1fuFvU8n2lVZakg5C8uFzzXikc1U0ENYd
         VDY0/8jPjWYbvrLFoYAmkyM4IG4e2J9rg/n57I6JkS/o2AIzszPSDmC22M5jDTPikDhK
         dixAN77zvV2h1NCTpuh75Mrxol/tMqR2lzBPGw9QD3D8qKuD1WcpiXfqs9tBA7ugYBiz
         FLPRg71/7VPfk7PW9MtlzKUrLDs7wWcjfVRfPbpKwQk7+2Jx1jUOBMPU/ptv7uWcJvNH
         N9EoNuynZyHvk8E6SHQLmr1qcEWw4RDnltgUKwSrPCRAjZ8sXKWRKHhV7cS+1/5+ud6Q
         whnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=uqPQg6B/bO6e2oO0RWU/9KfcrqEBl402Sr4PpXrmZmI=;
        b=j6IsCTxe+NZ8YiZAWmwjx5g0yEQ6pqr/hzJjpPd9lO4jPatNSbXI4GJ41HvkPiMBGA
         Fd/jX4V3Zij93kKyuKiLzQ1YxcRxpPN94D17Tyf0nfhI2eHmK1ZUKqMlmyR7YJNbzj+O
         1usHoCXYcHHqwNVgHG7wLWtFMk6sly22iZVv7Ermj/DAEdTEuMt7ALAIn5BnZzcq/Tzf
         uoyW1hvij6/MG1MOAKWqbxgy+6tpyvKlzO5ywxT3kI9UJZpzxAacg+PuUjuUOFppP54j
         qBEO8naYw3Iogt6yWH2d2HDcBRhRWDlOu6jiOUkvAuaDlnBR2/rEFWUJQy9x+BCAafol
         zItw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wMbU2OyP;
       spf=pass (google.com: domain of 3iaznxqwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3iAZnXQwKACMMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id a8si32941vkm.0.2019.08.28.15.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3iaznxqwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id a197so1617178qkg.12
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:08 -0700 (PDT)
X-Received: by 2002:ad4:4533:: with SMTP id l19mr4645199qvu.23.1567032968146;
 Wed, 28 Aug 2019 15:56:08 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:25 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 04/14] um: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wMbU2OyP;       spf=pass
 (google.com: domain of 3iaznxqwkacmmcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3iAZnXQwKACMMCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
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
 arch/um/kernel/um_arch.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index a818ccef30ca..18e0287dd97e 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -52,9 +52,9 @@ struct cpuinfo_um boot_cpu_data = {
 	.ipi_pipe		= { -1, -1 }
 };
 
-union thread_union cpu0_irqstack
-	__attribute__((__section__(".data..init_irqstack"))) =
-		{ .thread_info = INIT_THREAD_INFO(init_task) };
+union thread_union cpu0_irqstack __section(.data..init_irqstack) = {
+	.thread_info = INIT_THREAD_INFO(init_task)
+};
 
 /* Changed in setup_arch, which is called in early boot */
 static char host_info[(__NEW_UTS_LEN + 1) * 5];
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-5-ndesaulniers%40google.com.
