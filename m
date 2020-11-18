Return-Path: <clang-built-linux+bncBC2ORX645YPRBQFW236QKGQEYU6DZ7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DED32B8730
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:08:02 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id 10sf1095537uae.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:08:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737281; cv=pass;
        d=google.com; s=arc-20160816;
        b=FOwqtQUGdZPFynzA0hp/tv3hqVt9zdpfuWTN5JOgw3+EKluIT0XyeayH8z4/qMK0MI
         AlAjyK8vCgxipEnkOA9eA2MLdihaGS3EWxPh4SufmFfIsVmJDDsyGhecqH21jyojWmFs
         DjqIXTC+N7EZLRp4Ua6QqEpYJL4KOEKicvKUfKj9oBvrxDFK9+bYSHHAtQI7TeIn46pd
         w798R0/Q+7+JlPIm4H3/SusDWGsAWsyoecpBlBBB3BcNQrAokgmXgda+cL0I9GryIK6Y
         xCrd+GQkwVYhtH1FSqlq6Cxij0kbtqYfut/EgL+r6Au/1taf6SNjxLB9o11OxljTgwr/
         4ujg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=SeKahQ0W/UNUl39UkNvIbmyW8wnr8wQ4W22rDVy9XWM=;
        b=Z+Aby/l7rm3PzBEYtiBNxmu/eZlaYfoWqaBClxvFcweCg7t8aSBNFjNwvnv15IvslO
         Qh14t6H63TL7eqUdoXpJ4t3spG4T53WuiB3irkdd47blmeFuO66UBDAXdH1+uL5xh1/J
         mIq7Iqk8QB2rYe1Ofb9Wu9vFeU3r6OtKR7fqVZEKqZcryX1ZdNVzGApovEwxXzMACQ3z
         XMHza66oESbF8nA3RuhSbpCt6aWzthcNZSbz/g2PEEW8EWbiUnHCd+cwYLOWS5b4MQj0
         3ojXaSGZrBUM+P6aRUEEj/QzO+FxZDPMnK1aCcAqj7FWwNDQRq9YK1orc0bNYjGAD/so
         xSKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sYNH5IyS;
       spf=pass (google.com: domain of 3qju1xwwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3QJu1XwwKAFEBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SeKahQ0W/UNUl39UkNvIbmyW8wnr8wQ4W22rDVy9XWM=;
        b=tdPesgnLWjMLptNAqBqgUUmn1drxBPoUnkFVl6duCagE08V0ONuoWVfUrS+1oBFymk
         5lx0mHrYuqCZuuMc2C0E2vb9GK1Mz1Pv18L9AUotZksrd8yFF+3O/YVppsKzOJZGGcsR
         uDCwSqnbfi7GqjmQHjhuu3bf0cHE7dT6nBMJjOpG3eKQyPow2KSf3zkNXI870ct4Qhl2
         pHGKZXzTTnJggZt1cHSyL848KgPlB6DPnnW0f8ssswBFwqHxT4XkB5OmQK12vCtsUHdo
         jYv6abFMmrUhBUZoh1tXLjiE755O3Fw70jxtMfpTzfEPxXorPmBTfrVbXb0il9sRMoP9
         AAxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SeKahQ0W/UNUl39UkNvIbmyW8wnr8wQ4W22rDVy9XWM=;
        b=sHqoJ/mbDg60NmPyo8/yiCDiO+a8rxBb4NgHUwNbadOizNgNdxvLaIK3K7leZgkANz
         q8OrdvCheo+2Cat9yznpWBKK2jTYN4xXdsePeS/5eQz5oooXGXjlhZyxVSCSBUljZXVY
         xYoWCO8whCXKxlBx/0ueadUh+c5wxtnXXenmvwKyVMjjuFTQwtZQhHNIwrM/GLgQgIpt
         Lkj8FN3u1s+6QFYOQYJDWPtA6MuwjFzkjg3PqRQHM9YSH5D7UdifbXR2X9GPj21NiMiC
         9NAWu71OQJ+ygh5200KcLZd3OMlq5Z/nAVQgLr0h+GfV5LsS7wn39A/EU+Km2/WL2OUi
         iUPw==
X-Gm-Message-State: AOAM530TjX2KbNrIzp8lBshRn1Oks1cZ7tIb5wVcIp0WbAkRUFRhdA2t
	a8KkzJUS3xkvMBoF9dGQpms=
X-Google-Smtp-Source: ABdhPJwjIMK6QJEcBk0dHcl+80/3XKpQM+neZsGUgTx10C2av8gviHt23udPZlv5iZdTp2v9n3a20g==
X-Received: by 2002:a67:ed0b:: with SMTP id l11mr5382274vsp.34.1605737281048;
        Wed, 18 Nov 2020 14:08:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd11:: with SMTP id f17ls197279vsr.6.gmail; Wed, 18 Nov
 2020 14:08:00 -0800 (PST)
X-Received: by 2002:a67:f9ca:: with SMTP id c10mr5827957vsq.19.1605737280651;
        Wed, 18 Nov 2020 14:08:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737280; cv=none;
        d=google.com; s=arc-20160816;
        b=juONioQrUNOgMK6jBOn1reeIwGwL8PywUAjPYWwvegFm3YrMfBf+1lDmEIBx5eYwCK
         o1J2x46MZ+J7N1q+9IeQi5+IxT3mJ8077dnvlH9OuYR7NidbaxspYFQ6IztnreM9Xb2B
         tB9z9mrd9C9irJmbET2OMnoCH6rPhe8nJe68GE1gbABYTvXSLykcmm3zaQp3Mzji/WBS
         +MSVw4+3A1LNdR6x26u/6faw6UqkYasdFuhx1AJR1+V2UsOxTyFPtUbxx2Zkaf+pcbAo
         NqGP3oJn/GzlxO/LGa4+C7e9Nk9A4hxvoAhsBBDh8QtVrvIvZnfjmcJBEA5Xkkp/lCB4
         HxqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=4XuhSBro4JmbEzc1ahwEF0ocfPBDRGYBwGKNTvA6UGE=;
        b=HShD6DxCCoLE6JN6X3pzj02JuURhTtJfiHtfInqLa9Hf1/GKNG5DyzUwR/KNxDlP9q
         aFAheiTPJRcLvD3budtp7dCwlTE2wMzaREBgweU1ZyYJh4SkRVIrMATJDqPhlFd1Vmdt
         26WUfbTKi48RV1xd78boD9uwbrqgS4148e55b3CfbKQmmQwnazTdzbJ13WHDdjgpEYXF
         VB+x6qI/LzjuHA3kIHbJSRCiVkC00sMyUjtTTBz4S4D599zMLxsSLrsA/3uLFirO86Dt
         hRHHYzzB0u6RAZjk+zdU9Lvaz+1llPORFhqeLv8K5JLT744ooN7ahaZIFTYH/jJTDqCY
         idjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sYNH5IyS;
       spf=pass (google.com: domain of 3qju1xwwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3QJu1XwwKAFEBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id j77si1603599vkj.1.2020.11.18.14.08.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:08:00 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qju1xwwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id s9so2844388qks.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:08:00 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e790:: with SMTP id
 x16mr7088555qvn.21.1605737280219; Wed, 18 Nov 2020 14:08:00 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:26 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 12/17] efi/libstub: disable LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sYNH5IyS;       spf=pass
 (google.com: domain of 3qju1xwwkafebt51c74et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3QJu1XwwKAFEBt51C74Et6x6z77z4x.v75@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, we produce LLVM bitcode instead of ELF object
files. Since LTO is not really needed here and the Makefile assumes we
produce an object file, disable LTO for libstub.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 8a94388e38b3..c23466e05e60 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -38,6 +38,8 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 
 # remove SCS flags from all objects in this directory
 KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# disable LTO
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO), $(KBUILD_CFLAGS))
 
 GCOV_PROFILE			:= n
 # Sanitizer runtimes are unavailable and cannot be linked here.
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-13-samitolvanen%40google.com.
