Return-Path: <clang-built-linux+bncBC2ORX645YPRBH5A5TWQKGQE7WUWU3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 795CFEB530
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:28 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id 204sf4892377yba.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540447; cv=pass;
        d=google.com; s=arc-20160816;
        b=kHZJVduKPv0o5uJwhQDhWX3uB35rZV2c+ZdlukIw9ULgalzGNHIdWRWvPgdFsTkAqC
         KIUMsWuDyRPkWjzJ06wrlUmUOP4xJI0db3t54kZ1Kt914vMfHV5NL9h3V81HNyLxE8z7
         4vby4UEcrTVu8dCQxYhkdyPsiDCmoKk/5jxnFTAlth5MIQjnJBxbnIiIICMkeBdvrG1k
         9/CVt1yb1OBOU+WfMnsViUt8Z0gEMoCxl87dJnt1I5GX2RGJI/LWQsyyFES/I9f6iGdt
         xwDm3HitkpcNFDSS/pbiZwelgOpyUwO34KO6ZC+x693lz7bhJM+Ba3grZVFLlmXG2ctV
         7lYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=b1IuX4VPcEXZm9lJQuJGl4Znv30OsCkujxzFne38wKE=;
        b=Af+18oKMSfS6xOGGJciEaV2sgsMtHeYZDlwJfB7ms16+i1acZ4B7fDOQyyCXvprcr6
         xS5xVgjhJUQzpvGmIX7MKS1qYfFX2GvaV32pi2iywSkzquSPvjE3/aMmfTuJEl/OseSO
         8qL2Ld6EghVGkdAjB6Y57K/M1qP9Sr7YETCn0yspoNjTKm3VfWd5R9m0XqdnbVMHKra4
         JypRwsh3P7E3p7iND1wPAH/tKokuGiFwWx2ECrGZncV+8rAI/QQt1565Bhv24+OL+dKU
         ZtEUr3OhS0i4LvTnueZCoAOMlShlBwx7M6s7jiGnkkE6+cpIlGLt9gmIQYYlghqpdenX
         oD1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JwFwWyNM;
       spf=pass (google.com: domain of 3hrc7xqwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3HRC7XQwKAB4M4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b1IuX4VPcEXZm9lJQuJGl4Znv30OsCkujxzFne38wKE=;
        b=NliZr/utHkrFg0M1xzvcB6wt6Ixv+GsC8HvzlAoBDfawO+eVE+scFek8EFAec196qa
         h4PMXlKmeLyrBaPknY5LyPrl/bKncPRUHMVF9qIWBnfMxIyj/fV7cu5OMsN7JDWnseQK
         cdZxKfjAfxPx1DuuBOulHRYXgNbsb1m1ZU1Svn0ZR7ma4cwlYmHltmNlZ8KeFJeUeBZ9
         JQR6wQ2crZs8rYmxrd3JwptIUzEZ7OVmcYcXHdUb2esjatT+9SVZ591fFI6GcMjUf5ve
         NlASf0rmLuhdU/8e6qAfViH0h6s8AXMwSscmcoygwttq73pd43JX2BftXpbG6vGs7XzV
         LLPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b1IuX4VPcEXZm9lJQuJGl4Znv30OsCkujxzFne38wKE=;
        b=Y8BAA79IMPUWSszoEDfen0j3bIrzJOKBkNxOI1LQfeZbjnSpIjr8CgHd183GdMH0oK
         v6khBYvnNLC84noO8y+27prfBqP2aQj4x2FQmAShVtkxyMPs0tzyGm2DRkMeiRuKNtIF
         sLruG3YzGylABuGzyW67//JX7b45NNSTstIELH0f4yNXRRP3yfyaidA0yis4Ubs1hLbA
         A2RlPAr6oO9mMZz/CkvkGWRApI2M85zNPJ8Na0V49liQ+TwkSCH8SVRTWcrZkDDf1S4Y
         BTMQ18itsomi247drW7VlXa16XEVcbxEqzVO0Ztr3K1H6PO1e4/s1a4CGFK0DeHg9X70
         6pow==
X-Gm-Message-State: APjAAAWxcIpXXi+LXTqsPrKF4wJPICHtM9Eu9Et7EPD6cOEIxaUwpD44
	qg8qh4ta5fl6U6rssWXP4sM=
X-Google-Smtp-Source: APXvYqzKW03nT+xDHN0XdIc1iSKMq0B1nKNjdPHcwBv6V8O7vr36jb+1x95kgCX5IuFxfW4FA4B8KQ==
X-Received: by 2002:a25:7102:: with SMTP id m2mr1715411ybc.122.1572540447281;
        Thu, 31 Oct 2019 09:47:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:5986:: with SMTP id n128ls518672ywb.7.gmail; Thu, 31 Oct
 2019 09:47:26 -0700 (PDT)
X-Received: by 2002:a81:2f12:: with SMTP id v18mr4870689ywv.269.1572540446802;
        Thu, 31 Oct 2019 09:47:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540446; cv=none;
        d=google.com; s=arc-20160816;
        b=KFD3KY+v8rCEIdXhacsvXYe+tHPSKZFNF+jV8YfRle3Wi33jWhZAZfCdWOIDUu5ohU
         51yxoMvrKpiVgVT7TIPEz8XFXFDxw58iUZSuG78Xzkf8onPude2tK394e6S6TbMG0DaD
         2jnP7J77ntidRi7N6mNqkklV2t3LogvPRmYv6FkSn0Hpd+CxqeSwRMvhOfPa0v/xOVq5
         oJet0BQmnVjQmJbn3+yO8Pb2MhXANBDdFbQ4XALzC/I35eWvuXnUJVh+PtDYKvGLNGc5
         6sEaiFjCFw8RAVuOSDfcIbwsZiHEJmyT1YIQ7F85ixEY3WyJyc+ukXhjNV1t8G46CtPe
         3bFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=J83AV+8pmxy6MQ8Uszleewce6gVoMir4DYxUv0MBtSY=;
        b=UFtZuo1BiCk0N82cTYZmvf9ylwh0ChmWapM2vQAFHCkfF5LCXrg0A+juJwec8/yZZF
         0eUJFLwyf4rw8hNHPfInc6/6qSF3uL0iTaJLhABooy0bC1pqiqWMuHjRkUvX7MtvRdCl
         kFv3jgue9aeTXldp8czGHl7L7hxDWWvZ9naKbRwFmpF9ghpXO/pNtiKWdrZQob8dc+l9
         gT0/6yHSOWLXEYXNWTCxJdJHoi8rxV5jXPpOOhTrPq1GmNmhEIXvnlx9KER7pDZciQiV
         qP0wYVTWp437+0pdoxanqZrxnHzTfCC0+nL2Qw8Dad9dbqHtPrl4IIoLoovVm1dIL0h2
         Y2XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JwFwWyNM;
       spf=pass (google.com: domain of 3hrc7xqwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3HRC7XQwKAB4M4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id r185si501299ywe.2.2019.10.31.09.47.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hrc7xqwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id k12so4732143pgj.9
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:26 -0700 (PDT)
X-Received: by 2002:a63:e056:: with SMTP id n22mr7564302pgj.73.1572540445818;
 Thu, 31 Oct 2019 09:47:25 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:36 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 16/17] arm64: disable SCS for hypervisor code
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
 header.i=@google.com header.s=20161025 header.b=JwFwWyNM;       spf=pass
 (google.com: domain of 3hrc7xqwkab4m4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3HRC7XQwKAB4M4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
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

Filter out CC_FLAGS_SCS for code that runs at a different exception
level.

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-17-samitolvanen%40google.com.
