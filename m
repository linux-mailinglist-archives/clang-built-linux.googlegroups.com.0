Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIPHQGEAMGQEXHGORIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8312D3D7FB5
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:14 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id kl8-20020a0562145188b02902e01fc8ee77sf448949qvb.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419553; cv=pass;
        d=google.com; s=arc-20160816;
        b=IEon7A2m6eUJiRSlyzFJiqgBP2jp8BfK3mNkcTsQLPz4O7aq6LPfHM3bawWfTT8ye1
         XSZE+hz9BeKve9CPktPZZGGnowUGza7kg7Z/BOX9xqhps4HoQwPbMDV9Ksvbw1ok+0Tl
         oZ/yszPjo7TYFLd4+Ge8TgGWIml5rr65JBj2bFfWoVnMDQUT7ozwnAoJL9Rpc5beRHTA
         X4N78JArWYEbwv4Ry7+NeKmJ6KijxJJ3zFKr6yOS5J64azhj32jBYkbQ3k23et7EWimu
         kdvgcyAE1RoymyAc0khl1g9F2AJF2sDvyPflRhgsia+MS/bSoWg4sG6Abr+UDXGK4BFh
         2Vaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yvHJJBjew2o4X0dlanHt+t3vR27erOrPwPyVqdu6lqQ=;
        b=Jq5oMIiDAO3RlybpWowALHnhFUNnVJMem0T0ObgL5K7NkxZU6dMC7j5W8YIiwayWJU
         lIJR4UvYvUU9+S+zaOkgSLU5tsV8Cu3oyI/cdhiKhI2E9l2eENdrAGHL3miHaERcR9YK
         07PSwd6+wBOhAW1kVajO9Mu4iYL9NBrtnwVs4g5Mo8692/PrNqnM2kZNfbKMuEIj167t
         46rFrXCbJfUj4Koy5KXP/qj7fXC5jtfCVwGL3zIvxu4aHmx6CXfwLb2QUmZtxoEDOjzE
         qA6hvHC3n+CVSsEHJHB6Fe1I98wqELOa5dqcn2lQD/HMdfrqH6fgks86Zamw2quHPvqG
         9QyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oBkhd6x8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yvHJJBjew2o4X0dlanHt+t3vR27erOrPwPyVqdu6lqQ=;
        b=J9Rsluqn0xXJniu37Oz+ppNjQ/kAAe3k4CXsaUIt+T4SteE3jgYi9/QQnIQ1vri5th
         d9XC3dAokal57egLuil/gRXNLTQ0xRt8+rxIyF5miV4+Nu9ZQbcnbsc0Lv+VpmlCgJis
         P9fDXQkSl23lhDcPBalnSyR8GOFOcQg2hxIhdBaGq5cLq9TbKJ8t2ZmarGnGMSrIxdsZ
         JSCJdgkQFCzLFduWhqBiVLPcY+0N/FcdaW59Q21++JvS5Fz8qPlSUmauv04+tmUZYGX0
         Tj1MY6oDZJ2He1kvnOudFrEAUnQFJoZWhgooVM340BgBDIRybl8fjCBp8SB381pYQXko
         jJ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yvHJJBjew2o4X0dlanHt+t3vR27erOrPwPyVqdu6lqQ=;
        b=s6fj2S6Itk2Eom1fTvWb72aHE2kiaPsRkzBAGFgZobuAIWZ16AoP+FRB0io9lbfgWS
         wC9eThyesYPKNfPKWYhjE31IGymACfB/9Kjxkkr7Ec/ttLjNukHXXjPqgf9HCciHfmGY
         FAaJThJ+jiayGzz82di65PKGCOCMzBNWtOqA/xA2Gjq8ohl6P47V+eOG88IJYXCXdKkU
         A7fxhCo7HCMbb51YorfiBErrERl7wafYpBkaoMIqBKexvd7DE2JUyweGEy9ksO0tL9kH
         bZuwZVWNbxghrO4zGkZBfSgV6t83yprCRjK/mZxm7Buk/T5rPKLyvLI96amQz1FiaQV1
         p1ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yRvUQBtHLFyhJ6bjowEs75h5c94nTuwZEWdvXux4G7mgy4Sq0
	zmWhyv44TJj8/DLNk9PF2Rc=
X-Google-Smtp-Source: ABdhPJxW+DRZ880S8cgTGzigHIb4/qAuhHoKaOqpB8eyI0BRioywdw8Xb510qZ4OV9diKDknwQjVAg==
X-Received: by 2002:ac8:dc9:: with SMTP id t9mr21086668qti.293.1627419553630;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:588a:: with SMTP id t10ls52819qta.11.gmail; Tue, 27 Jul
 2021 13:59:13 -0700 (PDT)
X-Received: by 2002:ac8:4b62:: with SMTP id g2mr21216255qts.38.1627419553198;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419553; cv=none;
        d=google.com; s=arc-20160816;
        b=vBwb6vP73G4quXFk6kUTBdDvRN41DOWUlrUz1/zkPWQKrJNh+1dgA5/i1Dz9G5W5d+
         rbhdhW4c47zSZnxTPpqgT5EAlXmjdNNZz5LrwtxfLzdSC8jWKomllaIONY6m4V5AHIXg
         Jd9NDwP62m2pUuci62Gsbn9Z3rBcoYeMlFOYoQR0RdXZJNT+p04BfmeGJ1rI89xnecK+
         fUFsjp737SN8bcJuNy4ZRIDSl6BSORgIIXGkqF9GEQAbEYn5ZzMMniQy0uMkgvjjiOvc
         yhQCeaJlJNG6t6rj2LZdAKLaeHMimrrv3G/SnLxL3ncjBjevRsc7i1npI7cE8nIZPJy9
         m9TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VM7uWZbkUfYnHDd5ZNIAVnDbZvywZy43PN6h2gF7C7c=;
        b=Lh9LesWiVPuIOixQlYSdiHB6LpyfZjMDlr6T+7lQRUPhj2Twp/05mconHW596M8JDb
         nvnUopQ8PKzHPHmorRyAFlHaun8kOkdAX7NVHItd+vHre0Di7e757/nzE9kpgopSDbFG
         3v2gZyVT/15S4gq6jBusk/hSDbUuujDFVb9HGjplSKcKIiYR8iZCxz58XqVNcnKOxt84
         AB6fsQ9RCo8XYqOF27l8R9c6zho6INfRWruNCGnxka+KBZcPhlPYtVlU/1mAq6VAcitv
         KfgP5eoInsGO1W95EqW8oPLCN7q9G69TUFuSYjTHbml/IMfjM0eVctuXJTv/EXzTih/F
         L7qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oBkhd6x8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id l13si167927qtk.5.2021.07.27.13.59.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id ds11-20020a17090b08cbb0290172f971883bso6639819pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
X-Received: by 2002:a63:b4d:: with SMTP id a13mr22272005pgl.404.1627419552873;
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e23sm3796816pjt.8.2021.07.27.13.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 28/64] compiler_types.h: Remove __compiletime_object_size()
Date: Tue, 27 Jul 2021 13:58:19 -0700
Message-Id: <20210727205855.411487-29-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2278; h=from:subject; bh=26+UkQF9u4QR73rE2ugmnkAtGgRJVqdRH0gVQ+miGJI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOGx79zwuZNTkBGJbxUTLtc6LvVjffViSXdghqh ZCh8w1mJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhgAKCRCJcvTf3G3AJoOuD/ 9QhIBj8Ac1dYCQqsKDnl8+GV1Fmwz5NE+vrrmgysyx4iAIh5Hi9gSJVcciJHuWfxsYbsfjbgYy0kX1 fb3zQvUIkMQIB2igKikLexaw/u/aMZvCk9Z5omDCckYav5xDMDxop57SAnRwDmI5ma37g307rYAPXK 3MKhIW4uQWUEg9VD//gprsbS2OpIiwxkghySrauZU6lUWDXOFDxi3e7AnfeRnLBMm5P9R7uYb1c63i CCLVixc36sEWt5n1A3nVhugbXoR7XhzcCKsn6dHqVUwhOr0WC1NiDHg09PcpuJ/iyIKZftDHqUPqg6 5qiwdJ4fNBuagx0+hD1UYhVyC4D8uCcU5JbpSaMhqA5ruisKG07SgLC2mW64QD5KC1l5vxwssi27Ef 7z6+Z9XE9eAIUfHNMPoPePEDUngERmhsvmWGVOt9xejvTsuIr7a0dLku55mNRDgPOr3kKzwatg+19w b9l9CzMUNItXijvnyBQc/Vqy1SAb0lYpmUGz8MBzs95DcaaAGbaZmpWiUWaHQ5s823F8qG3r/1SSM/ zjI2/ycPgCzFufboCXRAyrLfLL7g8dxi7bDg8lAiPKcigIIGX0UbyaLeH8fulCViw1XPIwojOh5Gqh 6Oqz9uM0LoNmL8ecwuaSepH7hTO/bHW05UdooSY1mofMkUQTUBDoMmiCWncw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oBkhd6x8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
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

Since all compilers support __builtin_object_size(), and there is only
one user of __compiletime_object_size, remove it to avoid the needless
indirection. This lets Clang reason about check_copy_size() correctly.

Link: https://github.com/ClangBuiltLinux/linux/issues/1179
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/compiler-gcc.h   | 2 --
 include/linux/compiler_types.h | 4 ----
 include/linux/thread_info.h    | 2 +-
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index cb9217fc60af..01985821944b 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -41,8 +41,6 @@
 
 #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
 
-#define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
-
 #define __compiletime_warning(message) __attribute__((__warning__(message)))
 #define __compiletime_error(message) __attribute__((__error__(message)))
 
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index e4ea86fc584d..c43308b0a9a9 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -290,10 +290,6 @@ struct ftrace_likely_data {
 	(sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
 	 sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
 
-/* Compile time object size, -1 for unknown */
-#ifndef __compiletime_object_size
-# define __compiletime_object_size(obj) -1
-#endif
 #ifndef __compiletime_warning
 # define __compiletime_warning(message)
 #endif
diff --git a/include/linux/thread_info.h b/include/linux/thread_info.h
index 0999f6317978..ad0c4e041030 100644
--- a/include/linux/thread_info.h
+++ b/include/linux/thread_info.h
@@ -203,7 +203,7 @@ static inline void copy_overflow(int size, unsigned long count)
 static __always_inline __must_check bool
 check_copy_size(const void *addr, size_t bytes, bool is_source)
 {
-	int sz = __compiletime_object_size(addr);
+	int sz = __builtin_object_size(addr, 0);
 	if (unlikely(sz >= 0 && sz < bytes)) {
 		if (!__builtin_constant_p(bytes))
 			copy_overflow(sz, bytes);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-29-keescook%40chromium.org.
