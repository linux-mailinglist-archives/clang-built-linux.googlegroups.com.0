Return-Path: <clang-built-linux+bncBC2ORX645YPRBNGWZDWQKGQEDUYZTUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B4DE3FA9
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:37 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id g23sf125017uan.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957556; cv=pass;
        d=google.com; s=arc-20160816;
        b=EK3eQnUTt/p4MZ0plWNLsv5s0m7ChmQ1vjw2Isp5LZNqCUQhY2gKhji64kRH3jD5uS
         9Ar2mipzr46HPwFB9fQORPXf17Cv5ezkIZk7OxjwbHvkmlm81O4hb1ioK0pg3bpPTivf
         tqiqwMecaRHS8fzwOHr/zfXx6WQvfCOqbcfzvaeVqf2jyT57fi5YWTrcQTwnlNhD6BIb
         8A8P7euvgU5bhLatQWBc16+2wbIcYsoksNTEWSRd04wRu6ks/mWwL+3GQTrkx97+0hYL
         C97zRHcY20tUF4he+6ad8Ua51zDv6m9w5x3cEp5Oe1NPfIVgaAok8T0Eu2YwOH2F5oYN
         bQRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=o7HbI5kcXQhxpdqhBk8B2QAldTkULYERSvSG3hU1ybQ=;
        b=eyLPku+W818vTxn/T/gHYWwbjaC3UUEnwLUF+jVkmVIBfV9Q/nKEQzNjmRmfKxXEOe
         ojvXS0/y7pw1wZA9GkpBcxVbrt2Xl9BwCAR2hsZowe/1dO3F/02pBjsvxaLLdB3msKDW
         DTgnvAwjidy7YvSLAs0bIPcFTjGhy2xDJpS0jROb9kOpwoY9daJNNKWSMRJWe7JRsoI3
         Mkq7fhTxB1ee4xPGVXcuWuLrs4zpo9glXK+DxEcQdNXMMm7UlPcGnHjZo5Bx7ArejGy3
         Z3y6stBWngxsj9E/GOC7v7/2HdSD5B03jJ2n+obwhA3z3ErGUniAB2eTbp060563MGWk
         HDqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KnquzFop;
       spf=pass (google.com: domain of 3miuyxqwkaeuzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3MiuyXQwKAEUzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o7HbI5kcXQhxpdqhBk8B2QAldTkULYERSvSG3hU1ybQ=;
        b=brUGe5FOlF2a27iOcdqcwBYwc9CLz8VrC9w9bQPFgrs02CdvAIdtmrYKTZb0ffW+Q3
         6NWsxjsmKR/aEdYtCdUdnHrNKYuDd/0xUIkT0JetAEVmEvS/K91gX6UrW5I5bTsupYS1
         M1yvxE761Kau35NPh9cP1Ut919oFJSUBnAgLTq8J94C+oMfhcRMZi9AuWxv6IjyJjVEN
         /vaqDMeCgkdy+iImyuNvcM7mcBSqp5Lv51gtsPPZTz/Y3ByjnQmRk0SQxr1NhG/HHVpp
         JaoefZmdXN7YmRFfhZA3vIjhsekS5VynE2Tb8Pb4sohuvsxXWU6/7co6dvGL0sQ533wn
         8K+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o7HbI5kcXQhxpdqhBk8B2QAldTkULYERSvSG3hU1ybQ=;
        b=ErHu5GP3SI9/eNxHYeWIUy/2mQMhMSvWUc10InQ+wVPiSAcQGllBty4zFlfpdkgqIP
         ozRojL1o1R1bwhqtvy6wvRRN02M/PgJAdzFSU5QYqKRUQhn2ELO0xqBAPQq84e86KuJY
         P9sSx7k/ArDl0ruDAJdwbUhqUKxW9djFNISUR0Hig1RNTobme0AjPQSlPUbD1D7lIT4A
         d1lCMSgcVAACnsyyskeI5GO3Rv2TneRMxwCjbAXXfWwrKHYzwvR8LgGOBKakMxCSVTK8
         14xjWtHQGTQZfK3tcJgm4V8bpfgPxziKEgJa4m/vmK1dXOxhjf752ID6/za1Qolc/jGt
         BQ/w==
X-Gm-Message-State: APjAAAU0AykW/kGPWzqwh/eJruyi/dWTu8+im3dqAeVQ+pFxIuzEwUt+
	EYwAIXS7JY5u4pUPF6vrQ3o=
X-Google-Smtp-Source: APXvYqytOW7LIsGSQKpzOgGP6bQTxQcAs67yJUp0QOfvucL/N8P/51vYGvuGcgGcbrXZiPgvr4WhZg==
X-Received: by 2002:ab0:3347:: with SMTP id h7mr61146uap.88.1571957556234;
        Thu, 24 Oct 2019 15:52:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3e05:: with SMTP id o5ls411644uai.5.gmail; Thu, 24 Oct
 2019 15:52:35 -0700 (PDT)
X-Received: by 2002:ab0:2716:: with SMTP id s22mr65087uao.86.1571957555785;
        Thu, 24 Oct 2019 15:52:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957555; cv=none;
        d=google.com; s=arc-20160816;
        b=Qp5kMqSmXygrIS/HubxZKVm9KT6iQIjYLlEAUjXFK41U+uRrr5ix1HMAllBz9AAkS9
         1FtGR/R6Nmlsj/otkQo0Po6T+8WeePwoi3JEmEMVx2LXxBpq/53VeUUvRN5YAWPwac3h
         uagsznOow86sas4mvpqUNLLBOvmZY71SagZUNd2toO0RJmOLdep7pwRXjiarHmKTRCLZ
         b0Ea7eWYqW/11mfvhW4wR7Og2CrV6ZyrZht4XPZK0H8ktIxZj6+GjFSXPVe4aeAbqHjx
         18iGtU/cuonhTaZ1OXKBkS2tS3/To1TcUkacE5ut5YRMsvvByK+8HasxolsQAzt0DgFp
         DRWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=1o2AK/x7KnetiIYq4sD6lyk+Z1PFoM7PTIwarlqCwx8=;
        b=A4bds0G3oPmiMpXCpBSyEmwJMBZiNQq2g86r08SufqRj/UIOWWFvDzyON1ZI6VnkBl
         wRoNmjX6lftDTVj8Zcs/cS0wqts4mjgRkPWLjPY7XyrWfTQZwZTDGyItc25w+hg69Ar2
         /NhevyqUQh/hRNUqyR+e5Y3Wl8xCXm3cZJGdLL+RDpwgCKTHOABsXHkGwnduhfDsEXlt
         Hf8LadZ/uQ0fVyPf3eLkSU9aqYbuhuNXIeGS5xXZDS5rKy8vjgbqF+1dEXEs8M5FVLVB
         1jFXu4BZ0d9JrVa6lwgE337Ny7TVNBXEyZa+yjFYZ8BsDKE5dnSxjxscuVoJaxfrQ0sd
         UdyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KnquzFop;
       spf=pass (google.com: domain of 3miuyxqwkaeuzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3MiuyXQwKAEUzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id y14si10003uaa.0.2019.10.24.15.52.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3miuyxqwkaeuzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id g7so192055plo.5
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:35 -0700 (PDT)
X-Received: by 2002:a63:3c19:: with SMTP id j25mr558800pga.12.1571957554655;
 Thu, 24 Oct 2019 15:52:34 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:31 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 16/17] arm64: disable SCS for hypervisor code
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KnquzFop;       spf=pass
 (google.com: domain of 3miuyxqwkaeuzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3MiuyXQwKAEUzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..8289ea086e5e 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+ORIG_CFLAGS := $(KBUILD_CFLAGS)
+KBUILD_CFLAGS = $(subst $(CC_FLAGS_SCS),,$(ORIG_CFLAGS))
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-17-samitolvanen%40google.com.
