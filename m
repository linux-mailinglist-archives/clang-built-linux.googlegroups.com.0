Return-Path: <clang-built-linux+bncBC2ORX645YPRBPEYQL6AKGQEJKIOA6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FA3288DE3
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:13:49 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id c66sf7265797ilf.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:13:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260028; cv=pass;
        d=google.com; s=arc-20160816;
        b=0vb5Q73tMBtoFge9jZrZ7LzJb6s/eDwrAZHZo4fAYy+SUsTqsnHwrjvOxdgeO6JepD
         JLHnVYSN0YaIPoGqKjx0JdNM3H8CDnUCVb0hqsPMEJ05iH/6r57qWTupf3lJmu2JTV2x
         dfU7TRtYeBMAJhoO2jnQyyt1WynVKCYrZJVboDq8O6qMhNTfB0CsHYrwtkL7GZM8qEuh
         mLMxMLqPE7B3HZLTZOwC+If869yk5zWWOz37LnuKKuhtIwHvodE3xnYJE8e10F3oTVfg
         fIFLFnNSdLKBpIv7/f5FHEM/OM0pDVybDxprym5enElnKv8VTKNW7Miv9KzMF9C8HPsC
         owVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Hl5Hnnx7NrjMW9iAgdcLyzYrelNFuJ70gWNfaykfBYc=;
        b=gdab/W6OydwLJI5ktQZOXXLHgPXGiob9PoQhTm9j04idP8r7uNzZVuSTWL/l57Eo8R
         9LYvF/SiTAJ0I5lLV6pLRyRmVoMzLP2a586PsC5LqsLmDVAiehy+K4L/hkDz1T/tVJmL
         h4lvryRqsSdAOYQwtQi2gybyBSMppSonvnwK/349toZC2wJrwGe55bqYiyh+QgvsMd6n
         WAkvOLIWuIMaJvVoKkLqgd15bMjogRH5fgwAcvnFPskeRDcOzNV2M2CBIWuSGO8U72kb
         hhShAQxRz0JbWAflwIg5ruIVjuxFVqDJ+rmQXt7IB10VkH3Gd6dMB1PcbY+JNxQ3N83x
         3uFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cs8QGabJ;
       spf=pass (google.com: domain of 3ooyaxwwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3OoyAXwwKAFcHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Hl5Hnnx7NrjMW9iAgdcLyzYrelNFuJ70gWNfaykfBYc=;
        b=hDuZ1xrD0ibyq+GrtGzRbd7JVo62qowQcbnZh2IYfcph2mNyARaxUKCmIYHwYbRjkq
         dRo5Tb/O10tDKfJMC3sxonZqDDtq1rJi7cSNbACBzRalC03o1ypkLakrCVxjuUUM6lKJ
         0fOCPE3/zUJHCBYMX64Gbo6q8Q46F/smoRxLuIzr/VkpET5R4bvxIgADQCmlK0AFudQS
         QJevHdrcAnCqas4nrOY8ESVlsOYn3glalmD8nyZLXVFBLY+6qT97ReOXJNmVZ0gQKi0a
         bz2FT6V4k0uUYYz2L2VMZNvq7pwRcgDnR4nYp2jqIw+bGIm633mbp+9V2lpmNazKG/Ap
         4sfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hl5Hnnx7NrjMW9iAgdcLyzYrelNFuJ70gWNfaykfBYc=;
        b=Na9J+Gyrq4EMHDg+lx8wcupLBEh1MmIkbtLyx5I77bd1Zd/DQK+xfCYV+rljpiS+gm
         oJvtt85i9NW9plGugRPPm2MHKIrVT0PpiwuaUs4k4aFMU+3EfzUTHvgXzReK9ea7strx
         /Fdgsw1fwTgVTO17jIIsxKq+bkYJemftdNsCBCttylBJ3tGS5pKCnasiMd09woSud3G5
         CywXJMH+C7z4CTFNpwy44xvTneC9wK9oWgD85Bt/15pvNuxrCLpCa3Rx24Fw9JWacIRD
         MHhZAW9N2XPXlX2GOr36A3gHE+AROUhLGn7CK70XnKXOsuqhn805ZUhv7X1qCLfsu7Y4
         ED8Q==
X-Gm-Message-State: AOAM531P36YmGgSMjYPMZRZ9HMCStIgAg5PgZMJDHWe6YKLbT69f1zOF
	y2rNRcxPQUtC4i/D985ZZJY=
X-Google-Smtp-Source: ABdhPJzFYqKgQHg56wbwurlqc7rt5pqCA5lHLx8JfEqAcS0N5C5nGRwViksW6nM/ZUmDby+e6Rm7CQ==
X-Received: by 2002:a05:6e02:58f:: with SMTP id c15mr11148437ils.84.1602260028209;
        Fri, 09 Oct 2020 09:13:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:cba:: with SMTP id x26ls870198jad.2.gmail; Fri, 09
 Oct 2020 09:13:47 -0700 (PDT)
X-Received: by 2002:a02:9543:: with SMTP id y61mr11829133jah.64.1602260027603;
        Fri, 09 Oct 2020 09:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260027; cv=none;
        d=google.com; s=arc-20160816;
        b=xKXevx84X9Yb8jdgfrbIDUy42yM+ZEVbPamX7fpnku6Uec/8Je/lzxS/xj68y+WxQI
         rgR58IOeZTNFe4mfmauJ4vO1qv6Ssgw2oIApEDbFJEXzeT1VM1KW5TCSJeFvSaUNwB4D
         pVRekilYbe3NVJj6bycoXxC47INUa3aB541+sMivQt7OrFVzJZ2mZD1MFUrwyuqSc0hr
         ILlTz79fmOAYRGrF4hia5FnIbo4X4NKXooPylw2teHjiEOlbAn5Qe4J/7Zn4JWC622Js
         JtZqdDjqLuMXB6U4dKZNtroWWSbTN7TYAxMmgUOizuPkOo5GRxqSiDDDbcZajn/RtMyQ
         Hjtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=U9AWLI1l8Wt7A0cF28qGkPASeONcRk66Flk+7SBLZDk=;
        b=RP68IG/8jtPdfyRdQmvH3ekAfTl6R2Y8nAu9G+khRNzrZP4zayLuZIk0RzdtZ26M5M
         orGRItBpywpwgarl1haDg70eEPxDnOiBjeVEVGLMTLU712+gxG3sJYDpCwP+e1hX5mqM
         Bb3A6fzsRui5kyY38Blu5lvylTKO3TyCyt8nCykeh/sxWeNKWZa6h/oNq0TxhB3G+/ce
         EecvYZ5Khf24iyeSkC7Tl0H/fQJkGpHi1apBvk9iuB5P0dUWZszoZZExXqvK5hZOTCdY
         XSY7e3mvvJLiRjIZeA0tP2Q0XqAxks+9eCDP6QVU6dSkup2WcWLSQ8cDe6jgjns2KS3z
         j/ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cs8QGabJ;
       spf=pass (google.com: domain of 3ooyaxwwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3OoyAXwwKAFcHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id k6si78849iow.4.2020.10.09.09.13.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ooyaxwwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id u2so7153185qka.2
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:47 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4454:: with SMTP id
 l20mr13954751qvt.49.1602260026976; Fri, 09 Oct 2020 09:13:46 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:12 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 03/29] objtool: Don't autodetect vmlinux.o
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Cs8QGabJ;       spf=pass
 (google.com: domain of 3ooyaxwwkafchzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3OoyAXwwKAFcHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
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

With LTO, we run objtool on vmlinux.o, but don't want noinstr
validation. This change requires --vmlinux to be passed to objtool
explicitly.

Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/link-vmlinux.sh       | 2 +-
 tools/objtool/builtin-check.c | 6 +-----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index e6e2d9e5ff48..372c3719f94c 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -64,7 +64,7 @@ objtool_link()
 	local objtoolopt;
 
 	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
-		objtoolopt="check"
+		objtoolopt="check --vmlinux"
 		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
 			objtoolopt="${objtoolopt} --no-fp"
 		fi
diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
index 6518c1a6ad1e..ff4d7f5c0e80 100644
--- a/tools/objtool/builtin-check.c
+++ b/tools/objtool/builtin-check.c
@@ -41,7 +41,7 @@ const struct option check_options[] = {
 
 int cmd_check(int argc, const char **argv)
 {
-	const char *objname, *s;
+	const char *objname;
 	struct objtool_file *file;
 	int ret;
 
@@ -52,10 +52,6 @@ int cmd_check(int argc, const char **argv)
 
 	objname = argv[0];
 
-	s = strstr(objname, "vmlinux.o");
-	if (s && !s[9])
-		vmlinux = true;
-
 	file = objtool_open_read(objname);
 	if (!file)
 		return 1;
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-4-samitolvanen%40google.com.
