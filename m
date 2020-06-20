Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVUFW33QKGQEQJZZC4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id AD594202060
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 05:30:31 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id k63sf7859509ilg.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 20:30:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592623830; cv=pass;
        d=google.com; s=arc-20160816;
        b=sk0gl6UV4DdkIGho3p55bac/umSHe7EU4kWOnyYDuPh8OYxPuU1WrFCCKYqiUjtIi/
         LV85tfbwcpQnMni010lEa0BWBxGvpRm6s1V7t13ud+NevEcmCwUE8gjXQU3WuYzJYLhF
         b/0kywTdVJdaFK9v3YvdeJV415kzVqKQipliHYA/A6vo6W34nr1ZVIVPfqhBe4wefP1H
         JOn7cg2JZ3vlq8ozXu4+kD1vN8QXzCJY4+/TmlsoqasNaTIR+dJFGlCwb9t+YFRBUEKg
         Vx4f2PrNLWGXnUC1jyg1uTS56+1R/IDxZU2TwAmy4a0eOmq3+gYIhagVU1Z9mABcaasK
         pNOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=h6ojjOGB67sVmMVsUJhyMsmZ8WqIYoDTiC7FCCdxzUU=;
        b=VFPXjGWHUIic5UMTp2lIo35PMTAc3U9AR9o132wAPbuLEv2ri02NIMMMHSLmiGf8m4
         4/jKHgOiEekUP/w9sk12fptcUweUifjVcT6JSpTtlv0Q2/wJeFkYOcY3wX9jBqxLKUFP
         blG9e0wrKMXkixEOIWalN2pINciIDOBA5oOA8LVG2FH+3jgVlHoSrO+z8cUrOWuW0kmA
         OsbDMxwFK+lNiYArpP3D/HNhau0v1pQnMF93+CKJDtt9/8sixw5SRj1NbWv2WtMu5xzT
         TVMfOsxpyAyO6crrtEj7Ir1kwJcBL6PBHFTNKRTLht8M6U4PrNCmKn8+gMCANFeaswx1
         iNOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ASP8ZYf5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h6ojjOGB67sVmMVsUJhyMsmZ8WqIYoDTiC7FCCdxzUU=;
        b=p6HA3gwNfl99/wZHLL/p7v217Z+xpDl6R3HP2HUDH5r/pS66T6UBCf2e6k+TmJJ+3N
         v+SGdbAzggdcKTT2ESiFnc7BAJXWkxhuoA0k4B5TmTfXudKz/8nAy0gNQ/kUZbuL75cp
         0mFuqPN9K2pl8EpLLMaaZacIC/XSerRw4LOHt9sADmcZZ+kQk386qZeV1c6Wme4RZybI
         ANf6BbNANWL77G0ufpnJVLDqmYehCytB5sHlmehChIUCoo1wvnuOQCUpptrFV0rcCfks
         3l/aDqKzLVl7CNTmoCwl6JcCLo9Y/1uYxCxFFfgscL1G34b3ZCvZLeelH5HVZyXLTRdD
         siCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h6ojjOGB67sVmMVsUJhyMsmZ8WqIYoDTiC7FCCdxzUU=;
        b=RDt5NPqFzd6RX87KtZCc5IsYY9zAjBPjz0ldHysMTfCY7DJZnMcBI0SMjqDhdaCF/+
         k4jehmk2/TYzyAyE6CrvMuNyvpmUMT5OjzPKCUE2cSiQ2eneEdJkzX6SGBRpwB9VbgKe
         fyPUZYzWtJS5Ka+Uja2RV5AxdtvUHPn1hRKTJWxOX3jGGhq7gG1pUPvyW+k11U4yY7m6
         C7btQbIw2w31mX/mF1fKVezBoEL3Typ2FSqqmPGFJwMVRrLAqw8C3Z0kDslZWY6fsbUP
         53ueeNU/0/Wr8a0U5AcishFxxSI5gNZ4e4RXnUuuzADV3G0EAGplhIXXBzEOgcPy64OK
         tVEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ePicLXVwSkyvEVbBZ8CzbZjUr8V8G+96McxU3fBtQd8NvMZ6x
	JuDltlDd+tu9fpXcD9Unumo=
X-Google-Smtp-Source: ABdhPJyC8zpU6/21scAyDGCtyjh4l4tTJ7+wnI4UkT9CNh68V5QgopmDuu3ml6kIfPG+ohwvERwPXA==
X-Received: by 2002:a02:6543:: with SMTP id u64mr6873208jab.26.1592623830496;
        Fri, 19 Jun 2020 20:30:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2e8f:: with SMTP id m15ls2299468iow.9.gmail; Fri,
 19 Jun 2020 20:30:30 -0700 (PDT)
X-Received: by 2002:a05:6602:1204:: with SMTP id y4mr7665790iot.44.1592623830162;
        Fri, 19 Jun 2020 20:30:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592623830; cv=none;
        d=google.com; s=arc-20160816;
        b=cug+QtfUGWJfVH7jfAfbu7aXwTXYRmfRQuFHgYzVsfMTUTYoBRnp0oGW+pzt3wnRwH
         puAJ2SsGmqUZRggDQ93w7sCFKVfCrwn8v8X2FsGkW74lDAdz32X2PSy6rpxM5Bu9jgdo
         Zj83pmD5Iah31EIrS614/NitBGj5oR7h76hbJO6BEoqJN2IjFG6RoDjQ49hr6JFzumn6
         kV4g2La9+up4UVcE4/o2JqRVVo2m2FJqHGzWcHPfEdRZLzdtiYaXm1CJUjvea2QiWlnL
         Ljwsn3cYjjkqzn49GuKfgpdOqDGbn3S6uLrsmqqiZiJyMUkUbv31NPUhJZI/f6yrVY4g
         Yj4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QE7doATfVKyRNIS6o4GV46rwBSEL831INB+q/+9Rmh4=;
        b=fOX/gPXubpoOWluv8gN7sALddjAhDoYC896UXzCzd2Ra5p3MlaxTG6cQsSDXuMBDI+
         ZIC1kRRjIsBPFMcNjZEoHQ2DT+BxZi9TIjg170KLJ+MgqQUDfW3xCvAA0GcPTfxKy3kG
         uOPt2cZYS5UoUDZggI7wYD7TEUnsixidjMViHvZdasLG0b4CzAxfTkox8NmLJ+526Id4
         q2ziMFts2yZ2zTmxKrSUvKpqMgQl7IqCYIp7fw6VcF3KYDXxbrdmzswDr6UW+TP994hW
         wfWQZ5rcmQG3KGCwU6pASR80zMVDE4IOIDRbrbDPVP9KS97KwfaRvhedza06N6WrsXIE
         N/pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ASP8ZYf5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id d3si75911iow.4.2020.06.19.20.30.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:30:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id y18so4815168plr.4
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 20:30:30 -0700 (PDT)
X-Received: by 2002:a17:90a:220f:: with SMTP id c15mr6886989pje.129.1592623829622;
        Fri, 19 Jun 2020 20:30:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r7sm2178138pfc.183.2020.06.19.20.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 20:30:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Bart van Assche <bvanassche@acm.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 16/16] compiler: Remove uninitialized_var() macro
Date: Fri, 19 Jun 2020 20:30:06 -0700
Message-Id: <20200620033007.1444705-16-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200620033007.1444705-1-keescook@chromium.org>
References: <20200620033007.1444705-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ASP8ZYf5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings
(e.g. "unused variable"). If the compiler thinks it is uninitialized,
either simply initialize the variable or make compiler changes.

As recommended[2] by[3] Linus[4], remove the macro. With the recent
change to disable -Wmaybe-uninitialized in v5.7 in commit 78a5255ffb6a
("Stop the ad-hoc games with -Wno-maybe-initialized"), this is likely
the best time to make this treewide change.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Reviewed-by: Bart van Assche <bvanassche@acm.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/compiler-clang.h | 2 --
 include/linux/compiler-gcc.h   | 6 ------
 tools/include/linux/compiler.h | 2 --
 tools/virtio/linux/kernel.h    | 2 --
 4 files changed, 12 deletions(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index ee37256ec8bd..f2371b83aaf2 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -5,8 +5,6 @@
 
 /* Compiler specific definitions for Clang compiler */
 
-#define uninitialized_var(x) x = *(&(x))
-
 /* same as gcc, this was present in clang-2.6 so we can assume it works
  * with any version that can compile the kernel
  */
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 7dd4e0349ef3..84e099a87383 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -59,12 +59,6 @@
 	(typeof(ptr)) (__ptr + (off));					\
 })
 
-/*
- * A trick to suppress uninitialized variable warning without generating any
- * code
- */
-#define uninitialized_var(x) x = x
-
 #ifdef CONFIG_RETPOLINE
 #define __noretpoline __attribute__((__indirect_branch__("keep")))
 #endif
diff --git a/tools/include/linux/compiler.h b/tools/include/linux/compiler.h
index 9f9002734e19..2f2f4082225e 100644
--- a/tools/include/linux/compiler.h
+++ b/tools/include/linux/compiler.h
@@ -111,8 +111,6 @@
 # define noinline
 #endif
 
-#define uninitialized_var(x) x = *(&(x))
-
 #include <linux/types.h>
 
 /*
diff --git a/tools/virtio/linux/kernel.h b/tools/virtio/linux/kernel.h
index 6683b4a70b05..1e14ab967c11 100644
--- a/tools/virtio/linux/kernel.h
+++ b/tools/virtio/linux/kernel.h
@@ -109,8 +109,6 @@ static inline void free_page(unsigned long addr)
 	const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
 	(type *)( (char *)__mptr - offsetof(type,member) );})
 
-#define uninitialized_var(x) x = x
-
 # ifndef likely
 #  define likely(x)	(__builtin_expect(!!(x), 1))
 # endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-16-keescook%40chromium.org.
