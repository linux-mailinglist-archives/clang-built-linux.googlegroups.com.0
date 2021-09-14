Return-Path: <clang-built-linux+bncBC2ORX645YPRBVHHQOFAMGQE6VTT37I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0842F40B78F
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:18 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id a17-20020a67f7d1000000b002d530b0e501sf82119vsp.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646677; cv=pass;
        d=google.com; s=arc-20160816;
        b=lY7O5GhfHA4ej890jFkX/bQqV+S4dZbnLlaj+QAbCI0D1+osetX4dsAisi2c/E/tYY
         8VX9opH4ZbcEpWCO2FV6CjbG0pS72DaczLPRaS+QwgDlr6kgKN128co0gb9XzyT5Kb+I
         kbpKS/Qxkpk8cyfuQwBnqhdoWHCWtzCZvC1E9CeEnUSRNEt6ErNNEtTlxC5gmn6V3b84
         tXbhmEvdwQDNJZWjs6VBvjDBeXfqfo6HMOYqMUTdbCQbv5fvpNxCX2tEZfLvylVTY8DZ
         XAQOY3K/EvbHaU7egQq0jjbkbtW9wUgs4Rdd8+v4iC8qImefzHIH+zN2Pg8Qc3Naw9Dc
         An/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=DiJ1DDWa6molU1Ta26MMOZm6INhRvga3HI6YadFAQC4=;
        b=ZrtWvm48weTmFQjuHlOFqC3NXYo16RYQeselrRnjf1fUC2fyXGGz/Yh64v2qeMPx7u
         6urcvHbekau9ftGicKBDc8VOl77FzmFCaMvmGoglelrM9kIJcpbL/Lnf4yez7uzVU7hF
         Q/ydXMJ7B8M6gAuzWMHUYjn9GFYtPVtngPMQBoPUrABc2mVNmde8rsRsLQLfEd4sQ9Kh
         ZHBuTrCRF4bVkL/zxzTx8vJiuvMHlP4QlegiC2Ke5bTde0wnvUrq9S9iBzb4jUz/QGQ/
         SNep5B7ZNoVZM9Yq8EM9VDpjwt+4MZKxVHgb51h9/LRI4OD4YZJ0Z4wXYhptZVXJSoph
         COJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=rMhm0pme;
       spf=pass (google.com: domain of 30_nayqwkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=30_NAYQwKAM4Cu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DiJ1DDWa6molU1Ta26MMOZm6INhRvga3HI6YadFAQC4=;
        b=iJUgqyilo5JLJRzdHaWq9QSkST7d6u1cXiGuzMkQQJgeSq7FSDTc0Og+KxmypeGHPE
         +09sy8cdKjn9b4GB4T0x5SnDkcC8ctumsyJDKOTHmZcCeI3oEgEQntlKnFoVEz+4mYal
         Gn9GXJS2XLgyNcaQhgQnkqlLydaBcQzp8TBFRqauEphZSePHQQUIrZWvHk8tq71EtTJ2
         1vaC9C6zNmLu7BVTJcUcE3NssXHRepkUUuMeat4OPOfJNECg6eIZ2M6/jWgIn7OpcICe
         3ltpQAR7jUWwCIoScWHmU4zGJw0CxicujuRTTr1BE+hHkZtJDW+4JxJ1ecmJATZAiAc8
         I0Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DiJ1DDWa6molU1Ta26MMOZm6INhRvga3HI6YadFAQC4=;
        b=oVQVz5XWEIP/oxxSmwvujb+hYX/qH2mfMF6kLOzwewkv2l0A8pH99icP5ZeGACGwSm
         5rMZPQ8r61Gu70MF6tZzZTa5ieQ3iEE9vc7t7JN/J17Tr1eGQYy0p2NEVn40ynsghiLV
         AWhSQ0kmS002H2xWZ05mK5NyITAbzGKM1f+2OTri8OtGbwqvzEzHjQWxE1mHk7im1onr
         U94rVnx2x2AMzcRx6j+P8TsybCavz5z19GKT2UUCw60xofQz7RL0gs6oNpSwgcI3nOu8
         EGRW4JvqdNuM6GGpSNAUwr5f4Cd0zJ/fYWPptNSExipcUq4Rpjc9LueblUZGB7AHvT0E
         KJHA==
X-Gm-Message-State: AOAM531uijtlrxpjpho6E3Icm7EFYga9sUg5/xTmRq+yRVJlbZMEgr2b
	sEXkCqZNrcFACp5N5jYCHtw=
X-Google-Smtp-Source: ABdhPJy6tRZQnlOjxH6H7KiRpMcu6/FSohuqUlzFkR19cfK19mdcpppudnmvO6V52soQj7GYohMrWw==
X-Received: by 2002:ab0:689a:: with SMTP id t26mr5846028uar.57.1631646676912;
        Tue, 14 Sep 2021 12:11:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f294:: with SMTP id m20ls1894062vsk.3.gmail; Tue, 14 Sep
 2021 12:11:16 -0700 (PDT)
X-Received: by 2002:a67:c81c:: with SMTP id u28mr904597vsk.36.1631646676318;
        Tue, 14 Sep 2021 12:11:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646676; cv=none;
        d=google.com; s=arc-20160816;
        b=nfQBIHCueRMSRCzBoOh/Xgoz5uOtA1oywZqJh+Ljyj0WOG9yoVfo3tGZIny1C7W1dI
         9oE4y7NMSKZuvY4lTLE0xNtfhc/nO4a4lyJk6ggn6BkaUUMmdajSWv2f6JVWA+4HWKh2
         UL7a7035+FufkdgFaizf9/SJzmq68gG+TuC5VLmnV46T31y1GoRKV/gIOCPz9iAqaZio
         xkIQFeVhfIZFQ61QUuzj9Ig4B9mKomcP21GDDGgwr0LdJOUdB4EDPO9+lreXJN/IkRz9
         4LaPujc/pkbMSdzQwUis6LtqV6MzIyODzMt7NJgOqa1GIWDTW/mr2bWsYY+Eh0pZyb7Z
         HBXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=7FmmYO5sGsSDFsyzZhjTcgNpdgmOw3lheV9G3g3oFsc=;
        b=eJ83er2AkuS2gVO6c4qv7ewdwpY3krd/UiPE5E9FpFHtUyHIFo7K6VfCyj371jJc3W
         VjBX0TIE86aaDx6t5y4wPaKkA/MAGOejUpeThvz6kXnm9Cq7xM5VaMHlOG2o7MjNLQxK
         8EI+3Tcu7UB3hpcSH/u7oIs3MeWmyio6rT0oquWGdLbNrtsLgQUiCXl/AcuWpNlOJ+ID
         mN8ZPuL7FZ5YYC+lZFW1Lz74UFwRt734E++DoG7aFxigUSPegT2Y2/ltJo7fI+oSKSSX
         xqyrVPduWJsk0H/aO0SvGPSd9GggCc1ZEKoy/pdJZhqkanYEDTebsQe4dEd46+tyvfs8
         +Gww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=rMhm0pme;
       spf=pass (google.com: domain of 30_nayqwkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=30_NAYQwKAM4Cu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id y185si769703vky.0.2021.09.14.12.11.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30_nayqwkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id q2-20020ad45ca2000000b00374fa0dbedfso854764qvh.1
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:16 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5492:: with SMTP id
 q18mr7305979qvy.17.1631646675993; Tue, 14 Sep 2021 12:11:15 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:41 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 12/16] x86, relocs: Ignore __typeid__ relocations
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=rMhm0pme;       spf=pass
 (google.com: domain of 30_nayqwkam4cu62d85fu7y708805y.w86@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=30_NAYQwKAM4Cu62D85Fu7y708805y.w86@flex--samitolvanen.bounces.google.com;
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

From: Kees Cook <keescook@chromium.org>

The __typeid__* symbols aren't actually relocations, so they can be
ignored during relocation generation.

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/tools/relocs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index 27c82207d387..5304a6037924 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -51,6 +51,7 @@ static const char * const sym_regex_kernel[S_NSYMTYPES] = {
 	"^(xen_irq_disable_direct_reloc$|"
 	"xen_save_fl_direct_reloc$|"
 	"VDSO|"
+	"__typeid__|"
 	"__crc_)",
 
 /*
@@ -811,6 +812,12 @@ static int do_reloc64(struct section *sec, Elf_Rel *rel, ElfW(Sym) *sym,
 			    symname);
 		break;
 
+	case R_X86_64_8:
+		if (!shn_abs || !is_reloc(S_ABS, symname))
+			die("Non-whitelisted %s relocation: %s\n",
+				rel_type(r_type), symname);
+		break;
+
 	case R_X86_64_32:
 	case R_X86_64_32S:
 	case R_X86_64_64:
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-13-samitolvanen%40google.com.
