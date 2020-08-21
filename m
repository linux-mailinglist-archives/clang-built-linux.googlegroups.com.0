Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGGIQD5AKGQEDACRPEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C593C24E0CD
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:25 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id k10sf1880888iow.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039064; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+U9aheDlMZ9eD57ZVuAEL/ReLr0Uyr7KwM/mv7vlgVi4DAkITO9fpCc3HTIH/rfsi
         z37dc1/m4l+1UuJvix6/2bj0/2vpR9S+UP/dSnUwCW79Kd3eqA12BMXEwwYHQ55t0BpA
         CzmGrpd6UKMrc6zzxfNelZB0WOAYZNzANDKz2wd5JRQgAKC6xZRc5IAFmaOfA674iSdu
         m+5VKaITdTm2VVb/WonVC68zX5UvbkHtsCq7oLALW4XaJ0B2XHecEGqVsL8rPFzcq9BO
         PwCPs0Cs6vW2on6Iiol+uHZndlm1ceZkwGV2pdqfvdYcKwqUIiJsNHmOhXbzAwLx9NyA
         oG7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yZRX2gtdlEUulRbw488UQrX2e5RqA01w2Bj5lUROC3U=;
        b=kGroaCy558VELk6SHh5DUnrKI8td3mCHB45B3Cx+ETDmIkJGYA34lJJe46t5loGWH2
         p+fIdj7p9dAU8HECt3BCiX3OsQXpleayiNXpl/2MIGmjHLry22lYvBzA1EO+L0eqbufs
         u8dB2ng/k6A5JeqkygChVAGMzRQBMt0eNV4Ligm6BJcOXvWW0cHHCSmXKnZSm/XJir0f
         R9+iqhqYZMkFzY7P0nzPmR7c9Xw7d+Xm0K151VZ4XO3yIRBF7tPx3HtIqtIHSmyJZhLH
         rkTQu5w8VO9YSovfW4bmYW7DN9yoxmDWhOOX+dviklTMwh0nF9dMauONsr1ozTZluGFp
         vVFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WQAO8nzc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yZRX2gtdlEUulRbw488UQrX2e5RqA01w2Bj5lUROC3U=;
        b=FzNhZmQqyw6f0qulgQOc6FDrTMq3TPSLQ0M4RlVrv54v88Wn4NqbLflvBOLzrbirwq
         ri5RCl8+EsxFERt+QTnLeS7yQ03dBAmzNQvsw1OPeoaG/+moPtG2VLbSYX7vtHDbqG4Q
         +YFJ1u0N4cvK7WlUDQIIAAXoEtKnVnH03k4XzNvx4RmPwqYKlEEJkwbkLk0lmi4fd8Tf
         MaSzxBbfJK0EYz2KOJ/FN2ADmdh48A1WtZA0+4FBbBtpxudfkrmJdonFp5vUfnZUnb5y
         DAegOV27/d6y9JkwQhk4Tp5UAvfj9lQwx4VzcMCP9jOyMkajH27aAYFGPLrTi6r78Eyk
         kpqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yZRX2gtdlEUulRbw488UQrX2e5RqA01w2Bj5lUROC3U=;
        b=WFmf3ZzXgmmco4Oxlzu7MA7RCDt+fed0VLolRn/9nQxh4ZOAEvblafRoRBYGj9e2Pu
         IOQMJOfrUXl9qpsE5SM0PaUAhtrP4p3eBqV9nQR5qvUfemWLstFH3bIVjnDVHGbzZp0n
         nB4qZ2+k9r/TgrUuJaHqTrGha1P78Ch7i7+oCFKg2hobORu6wWPL65fXfDgt+Evm/xLm
         /r7770aiWcKHYSzyd+Rxj/xfHLbJXznUl56giRRBCF913zW7sgztTmVuhEH5EKkVRNbs
         fPS/LimZGbMM/a8JLMTOPvZ3xY0YFbylYQ2nhFajcXlYJUr3ec7F4bGIRyDcNL5P/oDv
         TuCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304mURPdY5RTDRLhxcQdCYhRAlViJ6YvotrNkTAW1JE5Iexd2Rw
	gkE56vjKYyRMb50GhcSjIm0=
X-Google-Smtp-Source: ABdhPJwdef5DqiDDs3vqN9QM0EVA8Ar7J8mSmLBFl9oyoCd4LWTPmhbsqf5ZaUBJ20U8NSUyufUtXw==
X-Received: by 2002:a05:6e02:c71:: with SMTP id f17mr3593780ilj.98.1598039064599;
        Fri, 21 Aug 2020 12:44:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7308:: with SMTP id e8ls263324ioh.6.gmail; Fri, 21 Aug
 2020 12:44:24 -0700 (PDT)
X-Received: by 2002:a5d:80cb:: with SMTP id h11mr3431141ior.189.1598039064237;
        Fri, 21 Aug 2020 12:44:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039064; cv=none;
        d=google.com; s=arc-20160816;
        b=SSOtBOlGgTzrLrKW2xBksI4Q5EfCjfGt6FId0AA2YdHS2U+vO7LCE+CfKH2o99O4M2
         mv87VupT2BSwnRWra1NnopvvcHkXD8DOMpbphrSkvIdo4yxYvFUo1dyOJ0pmS0fOaffl
         Iru30FX2rNmeNgIslYpkCI55wYNQ9cKY8FpX2kAokGKwVdClQvgt0W4y2awzHVXZ+tSt
         I4l31FJ5y4gmfvFgm7LWJIxZCM9Zt+ZXkDmSfXCciCrcS80hqtsbt8PIvxmRspHpLoHa
         tLujseF3DT/95XENmg0sK19nyYQK3SrHKB4ta6gNb0ciC+KYrLlvwDBDwNydibtE+XB9
         H1Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EUDDa5Q6lLloNoTQD6KqNHOrv0G5BcLftZGhmDIGIUI=;
        b=nhki5x0kZesxuySWRdTxo6R/E2RkPYr4J5ViW8e+ykGkQ9MrsvISZwqwv70JyUO28Z
         tclXrDsrESP1M6ZnTVGLH9qXNRnKLxcy2aMNWtrY3LP6lXQDQ3tRp6CXaP6HoyjsE66G
         fWhc/zP+KPoUkg7BM9Ompndz5yF0J8WkLvRIo1XOKS3fsWOVndX7NhFsNnzO6FkTe5xA
         FDOvXH9fCU1E6Spyhm1MwMiB3IChK5bzKTLfypjhaxvYpOFMbmivzuc2sL53rWL6qmPA
         /G3PC65LGQ8HyerJaO7WT5pcYJJVTFSPqtjZRtQdrppkK65jFLv7a/1UAQUGaHc1Et2N
         FczQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WQAO8nzc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id m13si144304ilf.5.2020.08.21.12.44.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id bh1so1329248plb.12
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:24 -0700 (PDT)
X-Received: by 2002:a17:90a:4dca:: with SMTP id r10mr3568315pjl.200.1598039063622;
        Fri, 21 Aug 2020 12:44:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 74sm3320208pfv.191.2020.08.21.12.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Marco Elver <elver@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
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
Subject: [PATCH v6 03/29] vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted sections
Date: Fri, 21 Aug 2020 12:42:44 -0700
Message-Id: <20200821194310.3089815-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WQAO8nzc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

KASAN (-fsanitize=kernel-address) and KCSAN (-fsanitize=thread)
produce unwanted[1] .eh_frame and .init_array.* sections. Add them to
COMMON_DISCARDS, except with CONFIG_CONSTRUCTORS, which wants to keep
.init_array.* sections.

[1] https://bugs.llvm.org/show_bug.cgi?id=46478

Tested-by: Marco Elver <elver@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index f1f02a2f71b7..6b89a03e636e 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -954,7 +954,27 @@
 	EXIT_DATA
 #endif
 
+/*
+ * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
+ * unwanted sections (.eh_frame and .init_array.*), but
+ * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
+ * https://bugs.llvm.org/show_bug.cgi?id=46478
+ */
+#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
+# ifdef CONFIG_CONSTRUCTORS
+#  define SANITIZER_DISCARDS						\
+	*(.eh_frame)
+# else
+#  define SANITIZER_DISCARDS						\
+	*(.init_array) *(.init_array.*)					\
+	*(.eh_frame)
+# endif
+#else
+# define SANITIZER_DISCARDS
+#endif
+
 #define COMMON_DISCARDS							\
+	SANITIZER_DISCARDS						\
 	*(.discard)							\
 	*(.discard.*)							\
 	*(.modinfo)							\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-4-keescook%40chromium.org.
