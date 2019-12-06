Return-Path: <clang-built-linux+bncBC2ORX645YPRBRNFVPXQKGQETTWUHUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 0751C11590B
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:31 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id x199sf4798508pfc.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670469; cv=pass;
        d=google.com; s=arc-20160816;
        b=r9VxbHdKUoPaeXhkW+1d2zTC5HUAdyCFqWQJsPAv85xfWHhhnDN5nYRFvJIpVkpbzo
         zyROxsKVNQd3FYJFnHoCU46mq7mDqaRLmIc6Mbm9Jncks3UMqzJW11MGr6Q99mKJkqOz
         J3yWUsld/VTcaF/LdGLLH+PWkh+AEGQlopD4tCDbXh6/UMvSzOveU37u8cqsq68ZH5jt
         ByPigQT52su+K0dRZfsTI2Es1yl98/bv82yd7qhtzIc+EXbSgqnA/xu9PKOtUbEKSClH
         g2exZtkPETkIzFTWVZqKqSI09kHidURB6oQdhu/OD9hdYZqDeWoEIBX5MKzLlZf7TkEi
         CTMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5f10BqQ4HySt0j4Y6cnrekzDfrVlWR3A9z2eGjVQ5Bw=;
        b=sOA1hAAZ+PWczLoP/cG7k6PRA6QmVyxeIloYOQLaFtzepVNPpBwL3gxee69S362N4w
         CQOzO6P8YlAokAOEQX8vYQzFEfBpicbR1+kQDbCmFeGxSI/EsMft4y1qWsm1y0+VkjPe
         6jBrOBpUl8uZeIBy97M7d/ehAh5/07GxysyFnF5rA9m4kKH4Xn0vLIiPVbgvAlB2jUPN
         E8OskQiTwbhGFb1lU6gmh4hAlcbVyfQOaNPCL6+E+RGEQfZ82wwRuUkSW0JZtySkZtxN
         BRIfIf0NeY0pXGRoJIR4RXat2fkZcVHmZDstE9n2TENIbuiTqhY6hGxafg4vUYNqQ0f8
         uoHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FrhxzfWX;
       spf=pass (google.com: domain of 3xnlqxqwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3xNLqXQwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5f10BqQ4HySt0j4Y6cnrekzDfrVlWR3A9z2eGjVQ5Bw=;
        b=jj2GYJZ8XM+XNZyURriPFq3YyNqIeRzX2zJ5AiyZF92o87AJ7u7neIdJQZbOFaOfMF
         Pcpjn5OilgOqXJ2HEHLUtZ16PK0bTN9DZr9y6NRTqE0Tqkn4a69wwhLaeaH9W+L5F97B
         CHI4bMgxq7TLLxEEM3m+HlQkoqzHvLwWq+rGLLQDPVzHrtAfgOM+XyVBXPiPQ2DZcyGK
         lgf6RQWmRKAPl1y+RC4HbvB0IMaBuRA5ImLInp2y0UT7+AN3lqi6kwLTahLDV1PSdwPa
         PUxfplg+RD82Oqdg9XyZdGeAKrTZYR/RjSbwZcLl4cJTcfI8duZjH3WQ02HBJVN+DqbZ
         xwcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5f10BqQ4HySt0j4Y6cnrekzDfrVlWR3A9z2eGjVQ5Bw=;
        b=NqNt+V91scdGt1KTwRLJqUfUc9CNAE+HvbBzNOKpOZTzQO2cJn7rIdeD3fC/JehJxp
         q4x0SCbMJIVA/HdPtAmyfa5K8YXABgkfu1DeC7MxAwqmH0gEJ8Wa80jntnhzozXR99pC
         blpYoSTKYJUb8c9fNGpU6QAnwSN/u9hdoVt9S9hiLjV3/qiH0ZqjoPtsTvigGTavAE3R
         +UqlOPDm4+wdalEOBIHNhk413WPRj/BbT86cZva+q/+cjrr38fz5KTmUeNSe1TX8Fog3
         HAYTFwvksJuIr8BvrvWwcsj75+JAXdkg837JZf+CyHIgRoutRX5lzQK9pQZFjv2fEoO5
         zz9g==
X-Gm-Message-State: APjAAAUZ+z4XyDhLY9rUz2AXB5DAbXPxfpgIGSMx92or4ObRwgbFGyeT
	w7ECSC6l/Krb7iOx+6JZ3qw=
X-Google-Smtp-Source: APXvYqw+0GzFRJKmj3os74z6lmRkO7bE1JBv3Y6YDPt51pfb8ZtX6dceNMCod8px3t9CEbdRijx7JQ==
X-Received: by 2002:a62:342:: with SMTP id 63mr16865740pfd.19.1575670469757;
        Fri, 06 Dec 2019 14:14:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:45:: with SMTP id 63ls1983479pla.14.gmail; Fri, 06
 Dec 2019 14:14:29 -0800 (PST)
X-Received: by 2002:a17:902:8d8a:: with SMTP id v10mr17323574plo.282.1575670469182;
        Fri, 06 Dec 2019 14:14:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670469; cv=none;
        d=google.com; s=arc-20160816;
        b=UYzOF5Q2oFdiDouFqjNvx9iVb6R2s6WvZh46V3RzeF0TeYo6uP9c9nCeCKmKJ8Tvxw
         uZDvfVzbOb1ZFxp7bw+hx8RjeWodWAyau+ywZWOEMknV3LrAIvKKb/k2rneQRn13ee/E
         IA1dIzx25HMUvPOHxITbM6pFRFSperXKiFRZUFIlRbMpC3irV0a5UtFeq5CRtt+88AfE
         BKpC/E/cHZztCc0/92P/DvoJFLnh3UbcEtYdbMyiHzvxQTCjZLfwg/+ZD6V/YTKOLXfp
         8o274+PmWu7RCbJfl5CUV9gtheoaY7Vsc/lXmM+jrlWjvHN0dGsN7Q2Tv0QCa6hiSz05
         3+og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=8FJHqLK+9qp1SI0ZtY8nP7Vb0Kv4oQj2LgBWqplCpRM=;
        b=1D7hUDivDHgs/hd3tUKTUu3Ta0MVvraze+aT7lZtvfITHyAuTMKmTdH3ezRWKH8aC0
         YleFLrkYmwCJh2Cyzv6z4E9BRnfGKJ38wH/sC0rCX5Oz6ThCTbYANcVoTNLh+k/hM02i
         RLrCAU82rF+nNS/+EE8R/tznrqbbBaJ6aKHzfh4WvS0xinGYo/9VzMqrKKBQlkV3jzqg
         GYHBTnwvks1Fawy2kBJSkvUCto+teIHICvuoyzaIOowdtfL4ntu1ph0moH42yAFVI4/c
         O2NurO56dsF5L9hTxsXH5et1iUXotnuqc3gOyq5SiGk+cxKmWqRMYLcIIXFm4emDLXKA
         Y0Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FrhxzfWX;
       spf=pass (google.com: domain of 3xnlqxqwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3xNLqXQwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id h18si835156plr.4.2019.12.06.14.14.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:29 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xnlqxqwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id x6so4797651pfx.8
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:29 -0800 (PST)
X-Received: by 2002:a65:6245:: with SMTP id q5mr6050849pgv.347.1575670468844;
 Fri, 06 Dec 2019 14:14:28 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:49 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 13/15] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FrhxzfWX;       spf=pass
 (google.com: domain of 3xnlqxqwkaas3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3xNLqXQwKAAs3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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

Filter out CC_FLAGS_SCS for code that runs at a different exception
level.

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..17ea3da325e9 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+# remove the SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-14-samitolvanen%40google.com.
