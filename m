Return-Path: <clang-built-linux+bncBC2ORX645YPRBX7HQOFAMGQEYMCMVQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C68E40B793
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:28 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 76-20020a9d0152000000b0053b372910bbsf12101925otu.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646687; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2jDY8SmWVrmMWxhQ2tHaUbVNv42kWD3aqvDaTX8mekKHJnwWvAgTYtI7CRBIB/8FQ
         ChuKtJ+ACq4fGilETW2xGzSN/dC5OPy6cPCSNsPsodvrf5UcyhWjhgHmHmX6+pjF/A9u
         zeGOBfpgBgHcusQFL/ucu1BYHhptDRpApiwlJayGOXs4ClB55KPlXeJfAdHVYycOMQxo
         DCPe7PsdS+QuEXRC+QxcPwweZib/6FIhnyfrQuyFKG6dOhArXxY3e2cpxFHUVB8tH35w
         1++FHVdOiYHkr4seZPTEp5NbrV5IkyR68LZNcQTpoH7X74dQKokzQjEPqs4zCjPqYs5E
         9bmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=OXYMPG2/JknFMf4TNmUVHoztLM08Pw2Ykve8Ii62m8M=;
        b=cWZqIHKs+2VDa8/g9/NS/Am3z0zMnhgk5JqzMHX+WYQp3fi5z8nQrGp4Mcy8Izl3cx
         q3D3EtjUaVZAyWjwjNyJ1R2kqJxYXXrl1n6qiCS+Ib4E69J9BYD2xKk7qCTtxJFZTlU9
         vYnCXiMJYHQBaHScVZDQfv4Ap/Jg0OiNzpNW3t14rj5kQJ49evCQhl1qmx197uBW9sLy
         89IqsoPJmBcrovAoJL+jeCjGtUbVIuIzUi546VIG/SIPqdjSaLg5LlIEGg/FP6147TtC
         v3ZXJxyb+/uRFE06hqWGcOMQUkr2znJbuIYsSxnXF5A+jBmfp+3zPIFvwFfXUAGkdijR
         ifpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=QuRKXPpb;
       spf=pass (google.com: domain of 33vnayqwkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=33vNAYQwKANkN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OXYMPG2/JknFMf4TNmUVHoztLM08Pw2Ykve8Ii62m8M=;
        b=oaq9CrhHGqc3lqs1HB3svCQ2Aez745fGHs6QDBFga813igIYJIOQAOx8OS/cEPKeA9
         TvPUJaX7G+YN3e9df7wbnl4XhdwLnE7z93ZhIme2g8H8uxtezpCoq2y9m7wQderVaIPD
         PhG5Petv8t7+vFMFcirvYOwYouBAR8DOcNqHDa42Bgm/Tq3OSH3tvs/aMC6SMjwbjNVx
         ccd+UD2iGGdIT4HLAJoi8q38kD86jQIOJPRhlkitElq7jEplrJuUX2ME2drCcXlmWdqF
         Fl58sGtUnn6EEjdyz/jvfb30/1mYD5dRi0NJQZtPeUkof34eLQA0CwHcF1zPvMQVKiDY
         wX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OXYMPG2/JknFMf4TNmUVHoztLM08Pw2Ykve8Ii62m8M=;
        b=Lrn8pu3yx2eyy5mDVitaElY46yXaf+CA0c3fJsNWmraPTU/5zsw5m5tmzBTkXoKpc8
         G+5mOJAnBDcSC3Jww+glZkE3JuJbIKcsq6cl4Adbjrh3B+uokBQAaqxJTN908wRSP4h+
         JqAK0i4iEHnki/tHTwRswdvW8NAilkMu1O2ELr+qW0lupQ9kYXOUWa0GUGrzYCkvPTOn
         aYHK1X5N0c7Q3zffBZa/G+KPME5b4qaH3lmdaBPPA0/GYdJVClBqK5Ftu+LIJmSkIadZ
         LNi2x41+R2w6m1/2ryNIhG13XOeEnWfKEY769HRjljUL/0JqsjrV7jwUuu/bJNHVS8VE
         m7Og==
X-Gm-Message-State: AOAM532Bmcz9IfBsavfDzPz5AInubYDrnyiqknOwA+WlaCLijn8oWzjP
	9c9Y2WDu8906TBVWxN5sccI=
X-Google-Smtp-Source: ABdhPJyipf14uzkzow9/AtWH3kHX/YAzg6YVE2SBYUmyOLMl/FRr7Yu44YfUPbAi+026IQMA4e7RPQ==
X-Received: by 2002:a9d:1c93:: with SMTP id l19mr15047130ota.213.1631646687291;
        Tue, 14 Sep 2021 12:11:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1415:: with SMTP id w21ls2311019oiv.6.gmail; Tue,
 14 Sep 2021 12:11:26 -0700 (PDT)
X-Received: by 2002:aca:171a:: with SMTP id j26mr2587951oii.69.1631646686848;
        Tue, 14 Sep 2021 12:11:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646686; cv=none;
        d=google.com; s=arc-20160816;
        b=Jcd8b6sg1KN+ivtvL4GPHoKniikuCXQ0DBvwrMSgYC3874ZCJXuasYAzj5ASAt1VUQ
         l7B6wu3zS/ylYUtSalRZ97GQQYPioPg0UvVAPgDXyWK3QEq3oFyRVrLR2cyHKWC7zn+k
         xU7nwTBfF5GgQmw2MhuD5Z86GxuwShRLfletV1ifNIhjqg+P9FGaEZ+jAJ0Ppa1Tau1R
         he/ymOU67i8BWB73MwlFopCIqDFF+tZQA4UsjcarOf7w71qhzkWKxS7nZMjJHkFYxAKL
         cMJqurNvnwYnl/UPlG5MgotR2xDUgZcXgzhqRIt9vKnKtZUfjM1GME1JAfy5W+sxERJG
         kupw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=b0EYrut/AMnqvvjXL4pjf9dWfm7AKB9fbO85nvqHRtI=;
        b=DrllNW3eUjk1gUtmNGgi3A3oPKQSbR7U2OcDIf+j0sR8r+r8NIyVEFBYqZkn5ickfY
         li187glPrlM7iei/k954/p2ZuaS0OE+NZvp/H5SJOVf86oSjf8upIRq9Q2A0t08VG1my
         a10VJZ36PnlxXE1EJ+6kVhvzxas5n1gmPHhoN5BXJ/hXKR6f8AlMGVh7T/EEv/OyBdB4
         zNVirN+QzTzT96t7cguHXR+ePtHCP0/vkX/AN6QemHzx1YLlE0z+9i/mdNezH27ibcQI
         pMI7hnlFcZLgsARjVRwdh2o9oM9M8XDorY3RIt1LL1/VNYtxOIL0BFy1ZZYOaInZQS/3
         Iv3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=QuRKXPpb;
       spf=pass (google.com: domain of 33vnayqwkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=33vNAYQwKANkN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id h24si1018229otk.1.2021.09.14.12.11.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 33vnayqwkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id l11-20020a056902072b00b005a776eefb28so217415ybt.5
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:26 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a25:5205:: with SMTP id
 g5mr923777ybb.292.1631646686506; Tue, 14 Sep 2021 12:11:26 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:45 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 16/16] x86, build: Allow CONFIG_CFI_CLANG to be selected
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
 header.i=@google.com header.s=20210112 header.b=QuRKXPpb;       spf=pass
 (google.com: domain of 33vnayqwkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=33vNAYQwKANkN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
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

Select ARCH_SUPPORTS_CFI_CLANG to allow CFI to be enabled with
Clang >= 13.

Link: https://bugs.llvm.org/show_bug.cgi?id=51588
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 4e001bbbb425..0df0285d3ed4 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -107,6 +107,7 @@ config X86
 	select ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP	if NR_CPUS <= 4096
 	select ARCH_SUPPORTS_LTO_CLANG
 	select ARCH_SUPPORTS_LTO_CLANG_THIN
+	select ARCH_SUPPORTS_CFI_CLANG		if X86_64 && CLANG_VERSION >= 130000
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_MEMTEST
 	select ARCH_USE_QUEUED_RWLOCKS
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-17-samitolvanen%40google.com.
