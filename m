Return-Path: <clang-built-linux+bncBDYJPJO25UGBBONB4XZQKGQEEIDX6QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 038C8190290
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:13:47 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id v3sf14697654qte.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:13:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585008826; cv=pass;
        d=google.com; s=arc-20160816;
        b=kAICiov2RI4snyPUHi+/6OZ+A4DfB+BFyaJCC2kbSKl8uMw7Zn13sHDiie+IiGrSKu
         AV3hU7K9NbTPzJO2wLcVNCdFeCdxtDVkBQnT7+VkTh7HVP0pUKC6VJkzkU3QdQkkZFsu
         hMTDoUbU5VYYozEwKvq4xM7YJNevOZ+opvh+je/85P9K7JBe0naqbUN6jfcimLcQ4xj5
         L2OQ+jToKbHdUU6yU+gC4v9AHsCQ4bolVdcATbOf9F1ow2f/AnOgJEaz+elj9V1zNiFn
         0Rso8hcUO3S0PEMXkKY0ySNOTlCrbusbY4ioD6zO5n7iaW3zmXvrFkWMhGu20NxUqRe9
         lKLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=1nvqZVEWsR/7ze1TYlv8H/FyeXSdSg27PHwW9mO1DXs=;
        b=Otn33K7kM3rxXltBhhxSJTXBwhX2keX/GKiZUIl6EoIDyJShe3+Qd7yRayxSjwJ0mm
         1y1QBpiPm78AW8wAMe7nOAYFMbRLz+q6uuF9o0VeS9CwxYmGm/5vy1tJPED6UZlNO+yj
         JYQGtCxmxh4hP/k/EY7cP5T1f/yrStgzyzfFGrdDglpaLo+M0aQAAqaunApk7Vy8MSz2
         CQ5+au8F6IYyQjbWvaB4i/iHjgQbdjyQijEbSHxF8mVhrBNyV+LCpyCJJcTOEN7xFDah
         qhjw3BZhnN0IpE5DYidsQ1NU/fZwecR/YgrKc3jnQae4qFdMI7lRwDDiFCPPqAz+6vwV
         0ePg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jf4pz+xx;
       spf=pass (google.com: domain of 3ufb5xgwkadkiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3uFB5XgwKADkiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1nvqZVEWsR/7ze1TYlv8H/FyeXSdSg27PHwW9mO1DXs=;
        b=OJyJIUbJtR+k+Es1Is6oA43Ry2wyKpT3htUHKeP2MjsIn7GROp5lATgiTuwec1MWpg
         j5ZXQFl/938PaNV3PEqLvNRAGz1AEO5TuptKZYb4uCjl7fKmvMwbNR4gOB1L1WZJEBgm
         1SHTDa5BcGj+0Jkq53ArOoKPgNem0F4/Ab6ud0cG1nxFImGaR/1RpUa/Z74lrSq+G6Cb
         3uZz50KP44aYBGXf/lN9XnI5C3C2KSNCdkgFlcmp1xNnNIUmwj8J5Drcq/TcruB2Hbgz
         eI/yK/5085VOgAiEDJ3Sk3TC08+WfSodt5Xj9YjL16E4CkDNMVmm1Dqs5ooVOq64gy59
         odGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1nvqZVEWsR/7ze1TYlv8H/FyeXSdSg27PHwW9mO1DXs=;
        b=sg/d7U5ZXaPndrEWHgp+bsJUoMESXqyccKZlN0rsQveCPT1qFiSWnx1bczeNTVYeov
         NqSt3Uok886+z5ScZXNoPevhD9xD6zKbV3IMBeFl+0hnunH/W5vCmOs/9ZfScl8XmjGx
         DxqVejRWQKZlMeR6Xlb4M0p9Dgci5CF2uluqHLctJ/d0Ty2pk6CWXpbqKgq5cX0LhXpr
         4KIn9jcqsOioy6eDPBY8PNofQfDXiTW1iMUtghoaEs7iE2a6J18aZKl+2/UafOkQ1D43
         RPGgj3Y/1t5HV8YqjaC8cIHeIW1ybKkrgR5ETysgMcy8qO1Vetj4WWQqIz2ly8x/hr6b
         oyGw==
X-Gm-Message-State: ANhLgQ0ozeI/5dQXY1WDXDVro8ixGboMGOJ6DyyT576DL6Cjz0C8Bx18
	KK2qMG0t5VTjIh0oysYzS/E=
X-Google-Smtp-Source: ADFU+vuJb+Lsznwb4lOz3m92Np1vIKpcUxHC1pKPTrwez00EoVccn+JTNoO1fiT9k0iKCIDcaBZPXQ==
X-Received: by 2002:ac8:3032:: with SMTP id f47mr23666203qte.273.1585008826035;
        Mon, 23 Mar 2020 17:13:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8d49:: with SMTP id s9ls3732240qvb.10.gmail; Mon, 23 Mar
 2020 17:13:45 -0700 (PDT)
X-Received: by 2002:a0c:b203:: with SMTP id x3mr23082928qvd.197.1585008825609;
        Mon, 23 Mar 2020 17:13:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585008825; cv=none;
        d=google.com; s=arc-20160816;
        b=BaldlJzSixt4GX5Lq1p0SNHZYIwrLayH4FlsPRC4xja1sBI5GxLzw6o6eo8xCxF1FP
         Cg+XVytqgcQoxoFwCDJn45z9iMB5np1Nlh3xPwJeUFT8kzyl1ZNFxeoI8MdszevPhPKc
         DjxUyN1yFEOe5GTo8G0u4kkqBYgMxv7wIyimMkcCHQVLkZLvVDi9oCgOvgrqwegflMIR
         z0ic28wC1XlKJicEefzkAOtA+jfLMHGXVWoGZI1hwgWIDDMBbmImH8WgxYYK9iYnTjz1
         WOPvHYhJcPTYhy2SuUwiJB+7oLHoypnrq+CjHhTJ9gq1BnuO1pGggKq+lkQCihSGK5Ls
         oseQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5zop4gGexKIVuUBB/XuZx8+PSEnhloPSs1GUWTBRoug=;
        b=M+Ir+9mSLesdKe67PzXxF3IkQat0TYFtkWIGWcGitaw50Tm2HgGqpdjc3umP3rlX5l
         oUmlrsloJ7YZpwAyPO6fXfNAvDw37Rl3YHtQTxFny+25t0IS0ezsap9AAmk49KhB20cK
         /t6KfBEEBRnvtI7/9DuvxuMjySe6rV4BFGszWxH5rKIbLXWm3FDqf+gBPIz/6nMAL8JM
         rm3pLi9JWGV3CCIHNuudO22aC9xO1vTrhN7ijKUQbO+E8qQvgWIkXbFalXLRLxoM3D6Y
         FN+88QEvqqJRjyydFx4q0RJnDgiqYaACIYVl/HAKeaAfI9MRc/KnftVpWKXWzFSxbGdL
         BILg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Jf4pz+xx;
       spf=pass (google.com: domain of 3ufb5xgwkadkiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3uFB5XgwKADkiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id 198si803803qkh.7.2020.03.23.17.13.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:13:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ufb5xgwkadkiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id l12so1077926pjq.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 17:13:45 -0700 (PDT)
X-Received: by 2002:a63:c44b:: with SMTP id m11mr9425702pgg.313.1585008824657;
 Mon, 23 Mar 2020 17:13:44 -0700 (PDT)
Date: Mon, 23 Mar 2020 17:13:20 -0700
In-Reply-To: <20200323212538.GN2452@worktop.programming.kicks-ass.net>
Message-Id: <20200324001321.39562-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200323212538.GN2452@worktop.programming.kicks-ass.net>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH] objtool: Documentation: document UACCESS warnings
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: jpoimboe@redhat.com, peterz@infradead.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Wolfram Sang <wsa@the-dreams.de>, Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>, 
	Raphael Gault <raphael.gault@arm.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Jf4pz+xx;       spf=pass
 (google.com: domain of 3ufb5xgwkadkiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3uFB5XgwKADkiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Compiling with Clang and CONFIG_KASAN=y was exposing a few warnings:
  call to memset() with UACCESS enabled

Document how to fix these for future travelers.

Link: https://github.com/ClangBuiltLinux/linux/issues/876
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 .../Documentation/stack-validation.txt        | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/tools/objtool/Documentation/stack-validation.txt b/tools/objtool/Documentation/stack-validation.txt
index de094670050b..156fee13ba02 100644
--- a/tools/objtool/Documentation/stack-validation.txt
+++ b/tools/objtool/Documentation/stack-validation.txt
@@ -289,6 +289,26 @@ they mean, and suggestions for how to fix them.
       might be corrupt due to a gcc bug.  For more details, see:
       https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70646
 
+9. file.o: warning: objtool: funcA() call to funcB() with UACCESS enabled
+
+   This means that an unexpected call to a non-whitelisted function exists
+   outside of arch-specific guards.
+   X86: SMAP (stac/clac): __uaccess_begin()/__uaccess_end()
+   ARM: PAN: uaccess_enable()/uaccess_enable()
+
+   These functions should called to denote a minimal critical section around
+   access to __user variables. See also: https://lwn.net/Articles/517475/
+
+   The intention of the warning is to prevent calls to funcB() from eventually
+   calling schedule(), potentially leaking the AC flags state, and not
+   restoring them correctly.
+
+   To fix, either:
+   1) add the correct guards before and after calls to low level functions like
+      __get_user_size()/__put_user_size().
+   2) add funcB to uaccess_safe_builtin whitelist in tools/objtool/check.c, if
+      funcB obviously does not call schedule().
+
 
 If the error doesn't seem to make sense, it could be a bug in objtool.
 Feel free to ask the objtool maintainer for help.
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324001321.39562-1-ndesaulniers%40google.com.
