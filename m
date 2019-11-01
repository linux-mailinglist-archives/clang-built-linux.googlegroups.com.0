Return-Path: <clang-built-linux+bncBC2ORX645YPRBRW36LWQKGQEGZPGFTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C7510ECAFE
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:23 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id t5sf6833222otr.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646342; cv=pass;
        d=google.com; s=arc-20160816;
        b=nH5ybzZI5/CDFeNKbadeKe/+e5tJfOz8k31D7M8wICwR0zTDQqqerLaR1eqc/d1EBP
         DDU3oPejsMgOt1gBjEVDXEcuwYl1WBJWlmHew6c2r+E3VofP3WHt/n1l/oY+EdvflWCz
         d3GwGLpPfnCMt6K8r8aAHWJF+CiGL7/dnLE/94C35rP2RY6DgP5PFTzd2z4rWPytP8fc
         322LqhANX7cziMV849gv6uu3XA2gO/dsWUXN4BQkU41tKpE4mOvyvFKV0EnOzzxvR6NW
         dLEsZ4td4V47togclc6uAFCa/ZBjoRwU0A4xq39A9pXYEu3pdX5ic5Sq3Y8d+koE1zKI
         UT8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0SsKj+7KbugoHLrw7wt/yT0pb0lGeAUniV/9Eoj3DAw=;
        b=ao727MWB9YO1Qjlzhp+fqub3uxKx0liF2Y1MH3FKBRZZYt1qR1r8ZAFR0Sqx8cZTMa
         5zwqH8AcJum+gHlchEaAc92WLnqj2t+TsnYIV8ZAp9ZROcNJoliXHpRlB8dR7+zilpFj
         Romo0XnzZXbqA39+h0deUFyI3xBLoCgzS/Mm98aH6cm8nWIgXQJrHj1Z9CV9KuY7OR9r
         5e0rzzjOCtAM5oqVKZeQyiEfHJa48hCxs+R5SdU5WSfA0e/ym9BC51sXmydZkOh5i5rH
         A23QHWl8SDn3V951Yvy0plAFMaxouiYNY4sbewWy+2CjgJz8lsSiv1XDyoSxUyK7f/DS
         mKhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WX+ZlyX9;
       spf=pass (google.com: domain of 3xa28xqwkaag0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3xa28XQwKAAg0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0SsKj+7KbugoHLrw7wt/yT0pb0lGeAUniV/9Eoj3DAw=;
        b=KgluGXoSVc30XdPA/v2aPH/U6uCzYBs8CPy47F6FeMX91J4n7JmCwO9yo6F0o4eksp
         f6ImTJ6Mcgfm3N6eJSAyJ3RBkVQjRc9JJCauCEViYRokjkxeZYksAIOie4N7ceXYJToN
         cuvwJNvjzfgxbXDtUwYfhMEF/hizFArnLsXWOWqA+Q6AK+aDJ/1WMvT4i2rIV6Sxnk5o
         9Xx0nIAbqGpx6mNrBFWEf9x+EPyOcBIJSFMNN2wqYi5BhLFxJSBXOcNAmFslfWe1XVWm
         oXP/sIj4m/x+DTD1SsJbDqCBNn4FxABzh7oGHYqUvR+zpwWc3g/xr9brhEDqJ4+4Ido+
         A8eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0SsKj+7KbugoHLrw7wt/yT0pb0lGeAUniV/9Eoj3DAw=;
        b=MwIjolfi67Ru1cOmOB7gh71kQmwgcQ1Kd8bfXV4OsmHQss4J8tOJVMH1y+pYqn+hAg
         0ldUz4xm9AzIJVW7w/orJzSBRbcHnCZH+UShyZJQUQQlnZ2GLxIFJBLEvVx27EzqkVqx
         71JgdKBTa+WPnaYnHTD1agN3y3jd4ib/BsHvuiPCFrd7vOZl91cCZg3NlrgynY1/fFQf
         J29d+xpd8m3sdDSY1LVhZUN74PmnZGIVPnY++JdkHHBExhQIz/u3UtzjXaBqiknAVNSK
         C53g9TWjvo0ZuhZhUioOg1jew1gPfdK8K0jCgBPHvhuwn1dgdV8DyBgNwPm4qv3q9ZRO
         PqmA==
X-Gm-Message-State: APjAAAVlknyNx+GxNTL4hvGOhTmWFhFQ3ZwXKZORQEZRFXcQScfyrsEf
	nMaXSLICGZea8cO1gUBeHtg=
X-Google-Smtp-Source: APXvYqzjFh3loEgQTzNYub+N5acdH18WZuMPmMisIptH3m5RH6VVWcSATAlzC2gvu8EBfjMfdVPj5Q==
X-Received: by 2002:a05:6830:232a:: with SMTP id q10mr10326895otg.262.1572646342697;
        Fri, 01 Nov 2019 15:12:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:72cd:: with SMTP id d13ls1819112otk.6.gmail; Fri, 01 Nov
 2019 15:12:22 -0700 (PDT)
X-Received: by 2002:a9d:73c8:: with SMTP id m8mr10565377otk.17.1572646342256;
        Fri, 01 Nov 2019 15:12:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646342; cv=none;
        d=google.com; s=arc-20160816;
        b=WP5R29G4p5eqo6vWSLWV0V+F61L/siYsrCKM9kW83PK46+4+OwvxH8HM39+TCZWOHI
         92A0h2IBrnjKjLNe0PcHtWQaQ/oYg8bY81d2eAZTPUUROFQcH0G9SrlAVXh9IRA7XVPS
         8GznotKfLTD6Sw7Tjt4rheqmQksyMKSr5B84DBTbWzwUPzmuZMi6M4RhVACvW80vzPsU
         YwzXIv+5qbZu0wmtu5zCvxGMK+q5U63XHeRUMWt+QH40KyQQXhaY10hHVjg9Jn6QN0Uo
         DuLsab6CoxJZxjxY6jSf9ZzpVp5Q1z83Lziv0AKZuh56NIpwP+TuvcyTBeX5MX9YE1wf
         yNww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=TmDnfQN5KSEC3g/578TQjZ7QNjxfyUPcu+BQjF9Yuvo=;
        b=ineEZ8q+6SunO+WGYbZkC+KMPh2C6/znZ+E3cwYIeU07urB+48cgS7s/yQArOhqQ1Q
         5PqTfuKUnlSt3BlnL49gy4hD5NbDxPwokKLch35RKTfyLVKFhmne4RpynJFgYgXySFWz
         BkMvq018t+zEyKA6fr4wRWnRf1dfd4Ekpf7S+aXklrAYhqeZa976EERyWn6m3xcxn7J+
         ca/QAuSua/KsOxKvHlp4uqmrZ8WynegsdXO6fRmqZyvqHclfXEy3FzVJZhoX2lZyxin6
         pssGy9RXy5zWxIzQCX5C9t75fqxITrxwb+zIdlpNoDzkIm12dORbuAwUrgBzn3rozjLP
         7lEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WX+ZlyX9;
       spf=pass (google.com: domain of 3xa28xqwkaag0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3xa28XQwKAAg0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id j190si123593oib.0.2019.11.01.15.12.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xa28xqwkaag0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id b14so8013859pgm.22
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:22 -0700 (PDT)
X-Received: by 2002:a63:364d:: with SMTP id d74mr15884929pga.408.1572646341266;
 Fri, 01 Nov 2019 15:12:21 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:43 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 10/17] arm64: disable kretprobes with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WX+ZlyX9;       spf=pass
 (google.com: domain of 3xa28xqwkaag0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3xa28XQwKAAg0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
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

With CONFIG_KRETPROBES, function return addresses are modified to
redirect control flow to kretprobe_trampoline. This is incompatible
with SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..e7b57a8a5531 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -165,7 +165,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
-	select HAVE_KRETPROBES
+	select HAVE_KRETPROBES if !SHADOW_CALL_STACK
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
 	select IRQ_DOMAIN
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-11-samitolvanen%40google.com.
