Return-Path: <clang-built-linux+bncBC2ORX645YPRBGHRZ33QKGQEUNLZU7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F2D207D1A
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:29 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 137sf2226780pfw.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030808; cv=pass;
        d=google.com; s=arc-20160816;
        b=FpSXR8X+oPUirwU+yhlJ/6dO3B6SCSO/21I+HocQs3sJZcnM4Ljit3WTC5bqBTzaMc
         KTE8HagGenRNuWmpFyinQlTTK0hWq1rlb1bKVRIVL53WiL82dugPeWeoQ+w/PW5gxVqA
         4ltRKSj3hrv3hHkRgTz8JHzdFQeQnAeqtWnqPUHagF8WgooNqyKU89WTk3xDw4WuYHtD
         13by47zhM84R88spnjHfgWBS82yQ7XP582B/7qlHC1q/TOHQPk/RTa85pzkfbQd7CZzb
         ti5EY57Ftrrr4EDmxuUw0Oa2dl8Z+KSEpnQTg+EmERj/9uNxuTDEv/874DulXOlzcL2k
         j7kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Riy2YHei2jzxJyOVxRaw8P4LtpmLV6CPAB6v2FniKPk=;
        b=InsxJ+dbpvf7EVMiDqCLz2qdK6Ei1QUFZzhBj4HVbiAYXgdgcw24RBo4K91jLp4DoK
         QfZw4bYWzIpJBPDwazUruf5YA526Y2AKJRmaIZcp7oi0Z2dn6J7E6S4FdWFqHDjgU/XV
         2EaW+LIt5WrVSBHefvI3E6vKmlx5DE9lXvxzpdKuYx/JXdb2tXiXiLo8o6vroyzu+i4b
         nIi5HgHWS9/QgVh5FaPNvQZVIhwdYG/juSlSkLlJfmhRmJIgiWcN3gCupx5Borj/lNbT
         8UkFYRnnsEG750C46AH9b03cbbGHH1fnjX4qftGIZUpDigl8skHiIAkscOemUh3Brwxc
         GRTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MpnW9sRj;
       spf=pass (google.com: domain of 3l7jzxgwkanqi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3l7jzXgwKANQI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Riy2YHei2jzxJyOVxRaw8P4LtpmLV6CPAB6v2FniKPk=;
        b=cBq3LZonnVwjxSLtfZDHUhPD4UidMhKpy6czQpX0+OboyWhYja3pxezzGjRnK/4/kh
         5Ehcw3IQ+W73G04Nz8nSdx0aqbZ320xmKCYebmi7gFYd+rKGkKoPPMs7UUvltFjyvfQb
         2GaEfOTmaFmAY34Sig3gcGrl+t9Jt4Xbw6Pp6uZMWsH1k7hhzqObaxjRs0VOfE9YFpqy
         2C/c3/8QhObX2g8d54E+W183UjXyE63kG/rTnJfshJyW8KeclqsDFsLdjy2+1eOZ1y+B
         A40FjFoejyUTZANUtUT226dyo1Ydz15mPljre6uJst6PEuxF5WEASlhY9ZlUZmnggnlk
         Rqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Riy2YHei2jzxJyOVxRaw8P4LtpmLV6CPAB6v2FniKPk=;
        b=MYn+xdOHVAdJKrlfoM8ZFjk2i7FCkg1KiOEze84cQi/0CgeU2T2R40bkB8QitEt4HG
         0rM18VCbsvz/aOY1PZXUNeJBruHIBxbxnGyXqrCi9aCB+6Mqq8M9YsSP3LDcjlqEG9Z8
         g1BeG1nZcn8NnV9vscSeMfKx6BqQyxN1b9riZDtZdfhn2rdY/vPBm5XAFf4efkS+tjd0
         kbiwufT5QAr80T7IKm1s+AfpUVpHjGKLchzkSvztrHKgEHBnH7iaY5xrAc8bG4V3Hw8t
         injc75WwMW8jqJ0uS49UWXa1d/WDmWbX1xKNn0pYS2M1h709cmvLfSUvcKcm1+mKr8hq
         8ZZg==
X-Gm-Message-State: AOAM530Hhz3YMhqb3+hi+ilbVCxKS1WFPtCL2eS0eFQ/lyA+BbOaZGL7
	Hx7XCXC5TYoU77FM7m766WM=
X-Google-Smtp-Source: ABdhPJyOyXQnM4gxAi9Pl2QNH3hvKV15457ynef59wzwYNwcugdlGxwBHZ0z26oeLqb55EQ80o0HCw==
X-Received: by 2002:a63:7a56:: with SMTP id j22mr23503311pgn.293.1593030808420;
        Wed, 24 Jun 2020 13:33:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f3a:: with SMTP id y26ls1126935pfr.3.gmail; Wed, 24 Jun
 2020 13:33:27 -0700 (PDT)
X-Received: by 2002:a63:8f46:: with SMTP id r6mr23978926pgn.257.1593030807861;
        Wed, 24 Jun 2020 13:33:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030807; cv=none;
        d=google.com; s=arc-20160816;
        b=XnaWqb5IJeZAJfDBi/IQMzN8JYuXA2D6ui2L7DqXF5HW2BlCKzGtT49CYG8wycHC0C
         NCQhxcfv6WBfab6J+IiyAihu8Ej2BEoEzoCGfXVYyrSCsKJawyib3k/eOHvn8Htre0Ad
         nIdSfhwlzg6sYV+eJ5h8SX9z8yxyAcXBCYCiqrW698QXuzY8nMItI6mnNoPF151lCjrh
         3yo4YN6G3H+PSjwrvlDlXJaMVNNhfsem+reBb0WDjEjXecvOCKMCyxB72Fosp6k152rv
         njQHCgEGjOLwiWzJg2V82R8mAOXjHtFKkOam8Vfrr4DkOYaZmRQImkDwRVvKnhORhmdB
         mMNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Y5ofKWtW7b37fMwYLfPdHt3IGKVdbeQxX7e2DATRt0o=;
        b=LmI1mVfTbPtnO/I8R0F/p8HOeL76ITzr1fsUjXM4YB79QQc3h4tFxENDmNZMBUM1MJ
         EoU9QDdBCAi5Beat8qKfokn5yorAFNJsTdh7Uvb8xs8VDuglA/hnyzphBCCleidOzd16
         N6Cy+IkKmiEN9rLU/wmPdWXIJTRrA7CUMCQxuhFWr/RcyldkiSiGkjKNtclHnCWC1YL9
         q/ZUsYYyAX0wPETos/UlQGINroK82fmulKg4fcPbZs4TW3e4RWFogUrn5lvx62F1P2Ib
         pczDtWy881lZsFB0Vx+ur5fEUJoNcotbEagIddLeVS8eqBwKE5ryUypnmjMegXHbyYiB
         doBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MpnW9sRj;
       spf=pass (google.com: domain of 3l7jzxgwkanqi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3l7jzXgwKANQI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id n68si742605pgn.1.2020.06.24.13.33.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3l7jzxgwkanqi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id v20so2488679qvt.15
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:27 -0700 (PDT)
X-Received: by 2002:ad4:4ae1:: with SMTP id cp1mr752045qvb.91.1593030807024;
 Wed, 24 Jun 2020 13:33:27 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:54 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 16/22] arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MpnW9sRj;       spf=pass
 (google.com: domain of 3l7jzxgwkanqi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3l7jzXgwKANQI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
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

Since arm64 does not use -pg in CC_FLAGS_FTRACE with
DYNAMIC_FTRACE_WITH_REGS, skip running recordmcount by
exporting CC_USING_PATCHABLE_FUNCTION_ENTRY.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index a0d94d063fa8..fc6c20a10291 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -115,6 +115,7 @@ endif
 ifeq ($(CONFIG_DYNAMIC_FTRACE_WITH_REGS),y)
   KBUILD_CPPFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY
   CC_FLAGS_FTRACE := -fpatchable-function-entry=2
+  export CC_USING_PATCHABLE_FUNCTION_ENTRY := 1
 endif
 
 # Default value
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-17-samitolvanen%40google.com.
