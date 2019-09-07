Return-Path: <clang-built-linux+bncBDTI55WH24IRBI5XZTVQKGQETKLXZMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 92128AC429
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 04:53:24 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id 70sf3252313vki.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 19:53:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567824803; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZqjRGcKs7a9VA/ETdxjJrU75nQXgM5PXRnLNLy0PZj7P2J8iKJE6NJIhccYNvQ3ewy
         p9mm547gdH8n0UV+QWe8W0FbAsRZZbO7nzs2+ypJDU3ObC5URQPuMnPj/EZx740fNnW7
         xPi949c7sTxZgP85ekL5WroR4H8mMFjYReZUTZs2iaUBwfVve29wOFWSSLceZyHHYQOU
         a3zuVDdHtIAJtHBxeWuoodgEHL949zr0iUw6T/bapFslKj07J8WDKbkLWCCle2HGP8Qm
         2joga75igvstm+jkyqk1gGehZgtukL+I16Z2AIl54Jzzxhn7LiAzQN0IpuXE8NRzbJVY
         GMwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=xUhpZHXFCAU9etghlIhospZMR8qAOEKd6S2CiNT7TEU=;
        b=YhN9/8m1RHk90avLYvb3rJiQ+CIlgLD2tM9zFRq61uaH9aKjGANxrt1w8pzANYFQN1
         a+bo240IoP8OJjcUirYdY9CZsnAv5cYTPftn4a3x+/mUOvMjND/WSfkVo3caLdoyi9MD
         AykcGjhsvfvtGWRvOZFxzyja/SNFppr9Fnb4syAFgdC169qhgkdjy43XaAdcQrYdWtbn
         L+V6mRAo3kU42Zk65LGRopZN4eweQs8dZ0NblRpWO0eAewoR2J2i0QBHALoPrCGw4VpV
         mpPzM4ELVH452zb+GEumcvND0Hq5/ctz7Vog+tGgt7f/K4sYEDWYJiVATBQX2gW/fUjY
         fgFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EonH+7o5;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xUhpZHXFCAU9etghlIhospZMR8qAOEKd6S2CiNT7TEU=;
        b=J6eCZp3jA6szBaye0ayNsgNXqlKncJY/Bo7eXj2JxE8Ln7zLvU62NfGpD4NSdEmIrN
         m19tTL45BRPUX9c0Mp+dtZ+iLSJDO6wJjX3wYgPjnRqpo/ctOJq0rrC5fxDuLerjGt3W
         1GkKpQ4JfsIUeHHCiaZUkEh8cknq7pu6y9O3NFxxOZU5NVFSK7MwKflWfhqXOXT7tSc/
         dj/FFpH3yncI3Wjsp808lyg3DxTDJ8N1pvrSYAzb0HdMCx6xmgKyxnpdTaIqmd8grbQj
         WRxdXNAibwmO8pHu4e0jTtbNp3uI4cK/UK9MmH4Eo+KvpkKBBjWRR1e68jJDcGUt9xdL
         WCAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xUhpZHXFCAU9etghlIhospZMR8qAOEKd6S2CiNT7TEU=;
        b=qA5ljMeKP4/CQJMo8mQ7QbReGeHOnK1o0z6LnYrN96h/XyQV+o04//vGnFAFv3IUiD
         RzpbHq7GfP25U8YO/pHbSlO7FuyaNkazsy0lIRcJ55M7eiwKvzMCDLuQK//fsK2OzBzR
         11XeygmGYejNSf+/XXkK24kpftHz6GXlKJ6pqKmxzD3pdEdxLTAXMGqfTd6v3sg3Vbw9
         jsuxeylAZBiy+EUqnNKiPGItAUFqHmY00eHjwjbxasW2ZAXVxPxJX1MRdc6MEkr8nk43
         hXkrN3/e3F/j9ig90UmGAoRtuJSdkm3216okjgldgPxyxFM3HOTECRnUWX/E0jUNbTpj
         f3nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUc7sNtO4wqs72Br4xOXvBaN/icHTSaUdRacfq6OyUKKOiVp82Z
	RcPRAXVLz8YMB8FX5L6H0Us=
X-Google-Smtp-Source: APXvYqytn7vsVx3dHzEjik6nDn1ju2/N1PtYGyHq2e9dYUBqDmMbfhVE/z4QIZTvVO735ll7LOVhJQ==
X-Received: by 2002:a67:f504:: with SMTP id u4mr6910013vsn.146.1567824803567;
        Fri, 06 Sep 2019 19:53:23 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2562:: with SMTP id 89ls24143uaz.12.gmail; Fri, 06 Sep
 2019 19:53:23 -0700 (PDT)
X-Received: by 2002:ab0:70c7:: with SMTP id r7mr5323440ual.40.1567824803207;
        Fri, 06 Sep 2019 19:53:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567824803; cv=none;
        d=google.com; s=arc-20160816;
        b=rJoC3eSKnRTH1KkM7ZslQiKvOk9D2TRZgWm0EEzO9RNPJUSWBrR7Ia43YLsE8gJSSl
         DMHRlivqTblC75moQjn+BU9P2K8EFYuwEvqNBiVZe0Axamn3wzh2tEeLcs0PCqJdXzLu
         74xjgmY/bzuQf+JoZx35WnauHk41qkGZbZscoDG3hkyxZAoGHLlnqeveZPBL2NSdG/5m
         jBgmbcxrNcuu9LjUE3SspGnkbhcDUMbwNrWVEWUEf8cQagQZhU6K+r/VxMZ4oFcaLCke
         QusgoEzDIl23Tf4tWSCRT8sDdWsVbY+K3LvVCj69G48H+YzMi+GovwVRAkbrbUFZ0Cwy
         zGSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=PZoVAwxKRkB7MOfjTWAYsfkZTV9kTLCPSHxAD3utiuY=;
        b=DDAWkjxEeEAxrgodrDLYoE0o9ZOsMMm9fMeJbHnpLQ+6mWgPimZvh2P2M/1bT64snb
         ksrkdphOqHACiw4bsWtzhUFcWRY+QbD6HsTEWOxVKX7bM7JsyXfoyWispu7viyxk05HT
         lvgDBCgq6wCpNSdg7WovnxmfeY/al4mF+05WwW6EdnDINLHVV3Uux7c0kWE0nPO8VZdR
         lOXm9gIkMSUOwjiNaNP03n2Ser1KAcN5b3jTvYPR46zhaFhcz1dn2U5Xx328pi0tdagm
         Nhb6AN0rtSMCRBysev11TJou/H1xOQWoJCNENRJSz/Nb0ykDDMA69SUIWS8JJlqWqv7k
         Lamg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EonH+7o5;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id y12si595957vke.5.2019.09.06.19.53.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2019 19:53:23 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net [126.125.143.222]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id x872qesW001419;
	Sat, 7 Sep 2019 11:52:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com x872qesW001419
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2] kbuild: allow Clang to find unused static inline functions for W=1 build
Date: Sat,  7 Sep 2019 11:52:36 +0900
Message-Id: <20190907025236.31393-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=EonH+7o5;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.76 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

GCC and Clang have different policy for -Wunused-function; GCC does not
warn unused static inline functions at all whereas Clang does if they
are defined in source files instead of included headers although it has
been suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
warning for unused static inline functions").

We often miss to delete unused functions where 'static inline' is used
in *.c files since there is no tool to detect them. Unused code remains
until somebody notices. For example, commit 075ddd75680f ("regulator:
core: remove unused rdev_get_supply()").

Let's remove __maybe_unused from the inline macro to allow Clang to
start finding unused static inline functions. For now, we do this only
for W=1 build since it is not a good idea to sprinkle warnings for the
normal build (e.g. 35 warnings for arch/x86/configs/x86_64_defconfig).

My initial attempt was to add -Wno-unused-function for no W= build
(https://lore.kernel.org/patchwork/patch/1120594/)

Nathan Chancellor pointed out that would weaken Clang's checks since
we would no longer get -Wunused-function without W=1. It is true GCC
would catch unused static non-inline functions, but it would weaken
Clang as a standalone compiler, at least.

Hence, here is a counter implementation. The current problem is, W=...
only controls compiler flags, which are globally effective. There is
no way to address only 'static inline' functions.

This commit defines KBUILD_EXTRA_WARN[123] corresponding to W=[123].
When KBUILD_EXTRA_WARN1 is defined, __maybe_unused is omitted from
the 'inline' macro.

The new macro __inline_maybe_unused makes the code a bit uglier, so I
hope we can remove it entirely after fixing most of the warnings.

If you contribute to code clean-up, please run "make CC=clang W=1"
and check -Wunused-function warnings. You will find lots of unused
functions.

Some of them are false-positives because the call-sites are disabled
by #ifdef. I do not like to abuse the inline keyword for suppressing
unused-function warnings because it is intended to be a hint for the
compiler optimization. I prefer #ifdef around the definition, or
__maybe_unused if #ifdef would make the code too ugly.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
---

Changes in v2:
 - Rebase on top of https://patchwork.kernel.org/patch/11124933/

 include/linux/compiler_types.h | 20 ++++++++++++++------
 scripts/Makefile.extrawarn     |  6 ++++++
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 599c27b56c29..b056a40116da 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -130,10 +130,6 @@ struct ftrace_likely_data {
 
 /*
  * Force always-inline if the user requests it so via the .config.
- * GCC does not warn about unused static inline functions for
- * -Wunused-function.  This turns out to avoid the need for complex #ifdef
- * directives.  Suppress the warning in clang as well by using "unused"
- * function attribute, which is redundant but not harmful for gcc.
  * Prefer gnu_inline, so that extern inline functions do not emit an
  * externally visible function. This makes extern inline behave as per gnu89
  * semantics rather than c99. This prevents multiple symbol definition errors
@@ -144,15 +140,27 @@ struct ftrace_likely_data {
  */
 #if !defined(CONFIG_OPTIMIZE_INLINING)
 #define inline inline __attribute__((__always_inline__)) __gnu_inline \
-	__maybe_unused notrace
+	__inline_maybe_unused notrace
 #else
 #define inline inline                                    __gnu_inline \
-	__maybe_unused notrace
+	__inline_maybe_unused notrace
 #endif
 
 #define __inline__ inline
 #define __inline   inline
 
+/*
+ * GCC does not warn about unused static inline functions for -Wunused-function.
+ * Suppress the warning in clang as well by using __maybe_unused, but enable it
+ * for W=1 build. This will allow clang to find unused functions. Remove the
+ * __inline_maybe_unused entirely after fixing most of -Wunused-function warnings.
+ */
+#ifdef KBUILD_EXTRA_WARN1
+#define __inline_maybe_unused
+#else
+#define __inline_maybe_unused __maybe_unused
+#endif
+
 /*
  * Rather then using noinline to prevent stack consumption, use
  * noinline_for_stack instead.  For documentation reasons.
diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 53eb7e0c6a5a..ecddf83ac142 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -36,6 +36,8 @@ KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
 KBUILD_CFLAGS += -Wno-missing-field-initializers
 KBUILD_CFLAGS += -Wno-sign-compare
 
+KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1
+
 else
 
 # Some diagnostics enabled by default are noisy.
@@ -65,6 +67,8 @@ KBUILD_CFLAGS += -Wsign-compare
 KBUILD_CFLAGS += $(call cc-option, -Wmaybe-uninitialized)
 KBUILD_CFLAGS += $(call cc-option, -Wunused-macros)
 
+KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN2
+
 endif
 
 #
@@ -82,4 +86,6 @@ KBUILD_CFLAGS += -Wredundant-decls
 KBUILD_CFLAGS += -Wswitch-default
 KBUILD_CFLAGS += $(call cc-option, -Wpacked-bitfield-compat)
 
+KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN3
+
 endif
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190907025236.31393-1-yamada.masahiro%40socionext.com.
