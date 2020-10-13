Return-Path: <clang-built-linux+bncBC2ORX645YPRBKPLSP6AKGQEP2BGZNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E61228C5DC
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:42 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 17sf7705336oie.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549161; cv=pass;
        d=google.com; s=arc-20160816;
        b=lj5njF0tki3n8VHh7LeC36+E9NqdfkCPa+3eDBwgi/KAoaYVaEK5k5xpfmM4iXyEdD
         WMbcxbC5RzFK0UaZ2dijuzBbJpOTHz6SbOrg6VKFgDKyYVHY05poj/vnlA2opZLuaP/b
         3A320lbOdVgWzaELov6WWg60ayTAiJQbjzbLNpGz++pAooPYTohCWzdkrD3ynWQ4ia4J
         E5O9orECvp8V8ZIhj+pB+He+SDcvl4ni0Naxl6gBcm+O+FUVXYxKe3xrdWTZCSrY38+q
         Iwj0DWJ4SheqdWNi0lvHSht+jXy8I8In52cf73JG6unr0CVX3TfThN7d3hNP+K3pHtKC
         kaLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=yIlf1jLZ3J8dhD+ZVWERkvCOBd8YtrWzzxCiD8ZeyqU=;
        b=MPTWfRk0w6KVUO3UzBzL3lAip6njOmi2F8Uwps1bf9CcQpH8POFfUoKclLjymBwYYe
         DTNFjFryHkBSCIqqrsKyRllnhKPInfbXZZeTSHOX4amfrwuZeryU2ff8PN2frRDF4p9P
         wx/rrM//oXrEzZTUI9q/FysO1PxC/V+3K85YFA/bPUWNX8NGw4t/Y+8SlEHOTyUOZhhM
         ai7OYSRXN3d7i6dy415Wsq54HsljQ/tQ59QYMlQJBC8aV49nn0NgPAqfBe//MOB16nPw
         yBod9l35WWgPizW6qY4KekEvMhBfifduydUBxlu0EXMI3J+ZZlP7v0ZqFdqUEXeh0f2f
         Kg4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oum/rjpL";
       spf=pass (google.com: domain of 3qpwexwwkakkbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3qPWEXwwKAKkbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yIlf1jLZ3J8dhD+ZVWERkvCOBd8YtrWzzxCiD8ZeyqU=;
        b=jvhPupVzMJAozNMzFWMSl6vMLHL/CRrF/YZSVFXIoeou/0ni/UuiNJujH5fQnlmGYy
         c3QQWRZ7NR8j4EvafdGKpiVqhwyzdIxD+UWKlz8kHMmzbqh8rs5T3OHB8S/JJ8XYsPdL
         1U19eZbECjqd0Q5RLnoMWmWdlb/en62AxLo62apoZaBGvXvF13lOE4BfJ5Hx0EcUjxXf
         lL2As8UNeCGGgOsWzbfxS+i7APpf+wTGcH0SByDNuU2uaHEX/7QQT25kl+AYGNF9nAdS
         hSXlUzos/GAfC3qauptrby0LoNYy+hjJ1KY2NxIkw3ySVVAdpTORY+ddBf3e2MzOsSuu
         Slfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yIlf1jLZ3J8dhD+ZVWERkvCOBd8YtrWzzxCiD8ZeyqU=;
        b=cd/StyXSWvY233A8qVwlSBsyXcMVeduSLoCH2v/LRdkXw3mhN7afW1zBvr8oLrH9WO
         KiETOg5DDVUxUbSPsh0rVC4Qd17EkbJ+3DR3VZhzSb5XCmVA7cLXqV9oj60HGPC7erwB
         4KUER8zAVqAD/MlNJbN96viQLpYNMxufkmE3VCn9Ngn/9tvw+isgcPhjn97iyFM1jt6M
         uUnNFhxvqkLjVvttPqKdxfFkQFdQZQj53EiU/a6K6erykVcA4o+bRYKsQhyqnS6ZfxlS
         wH2Gtwwv7i0PbeGNcWiSu+i1ACK6UrN4fPLWnK9fuo3ucWULj306oL+g6z1rTsImuZH9
         Sssw==
X-Gm-Message-State: AOAM533dvl5jE9aAzLF8Lw5R2QHk80Gect3wLH9JsTmW8oM+G/TmCrcA
	RdvcZox8wLkh1cw6DH1bScE=
X-Google-Smtp-Source: ABdhPJzgckHKWbQ9fSLOoDPSPl4HNnSsZLPK0n9g9035/2DKdgU8gu/esoP+Eaa9jhNLuZWVqtoOTg==
X-Received: by 2002:a9d:7085:: with SMTP id l5mr12134953otj.159.1602549161547;
        Mon, 12 Oct 2020 17:32:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6319:: with SMTP id q25ls4334336otk.11.gmail; Mon, 12
 Oct 2020 17:32:41 -0700 (PDT)
X-Received: by 2002:a9d:3b84:: with SMTP id k4mr21580153otc.4.1602549161171;
        Mon, 12 Oct 2020 17:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549161; cv=none;
        d=google.com; s=arc-20160816;
        b=mDKhOdj0aJIuGuy5NwrbWJ9GzMdVi+fFNn95ZNfF9UWIfTuG6KLYOIUhMyu0iM5/Fx
         4XHIGawsw5f7YbqaEQeuoCiqpePn4LuC6wbO1SmMiMRvN2hFSJfk27am2ocwO90DfG9+
         SN2PtMY0rmHjSEhFuPYbEisPfYrP1qAZlPRAEvQ0f4KmAH2XzRN1TdVmJxkmTkBlJwVm
         X4KWyCsV9997V3DZ67WAiAI1mByAqQEOolJnPds+LxstdbvXzj++MWuBuoyaBp4L2puY
         xQDRCWFoQ0JaCgXDs0HW/gRVbVV00UDz0MoETEKDVllZ2whheF1FSRICqsnPUrEfBa55
         vxSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ljsItlz/aE0P1FDke8OIPGTsfsgvR6SCQ5aAaAr+FuY=;
        b=XaIdncSeh+MH/cxqpuv2dlyWHz1GS4Ac+1ksBeYTZuOggw6e1uHwSKXCLrQFeBssWX
         w4Tdd6Yhiq3FvNt+DY4nwDpd/bWotqMiwPfwFaspCyv/RaMn8BB2lC6opjznDEBAx4bI
         QYq3ydm5K3erIqcmpLnPcqFzxgpH1rgEXpLMYvLwm7tJMPLdm9u8PHy6SstT+IB8m2Ne
         /HSSSFAjouBuzcKH6o8q0hBo5QTfp1hlJRspgtPtxUwqjqNuwvhPCgv2NffV19V0Vit3
         kAHzohoPcTAvcjG6Xp1tslyBLfSgziONP3OZ5Q9gEcokimTW9NXRoyP0RZQEwS5IFCFD
         gdKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oum/rjpL";
       spf=pass (google.com: domain of 3qpwexwwkakkbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3qPWEXwwKAKkbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id w8si895875oig.2.2020.10.12.17.32.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qpwexwwkakkbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id e9so741358ybj.11
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:41 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:37c2:: with SMTP id
 e185mr20091375yba.401.1602549160656; Mon, 12 Oct 2020 17:32:40 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:54 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 16/25] init: lto: fix PREL32 relocations
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="oum/rjpL";       spf=pass
 (google.com: domain of 3qpwexwwkakkbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3qPWEXwwKAKkbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
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

With LTO, the compiler can rename static functions to avoid global
naming collisions. As initcall functions are typically static,
renaming can break references to them in inline assembly. This
change adds a global stub with a stable name for each initcall to
fix the issue when PREL32 relocations are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/init.h | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/include/linux/init.h b/include/linux/init.h
index af638cd6dd52..cea63f7e7705 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -209,26 +209,49 @@ extern bool initcall_debug;
  */
 #define __initcall_section(__sec, __iid)			\
 	#__sec ".init.." #__iid
+
+/*
+ * With LTO, the compiler can rename static functions to avoid
+ * global naming collisions. We use a global stub function for
+ * initcalls to create a stable symbol name whose address can be
+ * taken in inline assembly when PREL32 relocations are used.
+ */
+#define __initcall_stub(fn, __iid, id)				\
+	__initcall_name(initstub, __iid, id)
+
+#define __define_initcall_stub(__stub, fn)			\
+	int __init __stub(void);				\
+	int __init __stub(void)					\
+	{ 							\
+		return fn();					\
+	}							\
+	__ADDRESSABLE(__stub)
 #else
 #define __initcall_section(__sec, __iid)			\
 	#__sec ".init"
+
+#define __initcall_stub(fn, __iid, id)	fn
+
+#define __define_initcall_stub(__stub, fn)			\
+	__ADDRESSABLE(fn)
 #endif
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define ____define_initcall(fn, __name, __sec)			\
-	__ADDRESSABLE(fn)					\
+#define ____define_initcall(fn, __stub, __name, __sec)		\
+	__define_initcall_stub(__stub, fn)			\
 	asm(".section	\"" __sec "\", \"a\"		\n"	\
 	    __stringify(__name) ":			\n"	\
-	    ".long	" #fn " - .			\n"	\
+	    ".long	" __stringify(__stub) " - .	\n"	\
 	    ".previous					\n");
 #else
-#define ____define_initcall(fn, __name, __sec)			\
+#define ____define_initcall(fn, __unused, __name, __sec)	\
 	static initcall_t __name __used 			\
 		__attribute__((__section__(__sec))) = fn;
 #endif
 
 #define __unique_initcall(fn, id, __sec, __iid)			\
 	____define_initcall(fn,					\
+		__initcall_stub(fn, __iid, id),			\
 		__initcall_name(initcall, __iid, id),		\
 		__initcall_section(__sec, __iid))
 
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-17-samitolvanen%40google.com.
