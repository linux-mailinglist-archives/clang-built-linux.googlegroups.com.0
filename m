Return-Path: <clang-built-linux+bncBC2ORX645YPRBEPRZ33QKGQE3VKZWRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6675C207D14
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:22 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id q24sf2215150pfs.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030801; cv=pass;
        d=google.com; s=arc-20160816;
        b=pPHThS/OPoybeRRwsIemhSJ7j0tPHZkeNd0k7UE8gfwo6ACTS9UkWDUCa7n/ViWOFq
         Jpvva/TyCQixBcTfk0C2PPjXzhfHfKt/aFm5vDvl03hvKuD//RhMxExypYQffSLIksKW
         b8BxKUiF/68yNSNbLOJdBfH8ke37VRfGnqwWWehwnnZQm5C/U5vpb8piMD0zApcZhe+T
         4XpY4i8iBZvtWCitt6zqZjqmroRKkYw8baoR5fRLq0IPPF0SOKgDyiM+wuGTZt35akUo
         ckBNIPoMGOqmnNxt10UE1z64FVL/OAzrM7M2zj3ufYB0grQ+YAru8BAv4qgjtgEN8peT
         6d4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0fWc41yTJ26oCGvNR8VFrsLu+YW0w45C3bHJ+2uw8hg=;
        b=riOrucue3/UpwDGp5iRKgBIBaJEllhgpjHwBYr6CdmwYGqOHM4j2jdq/NTmzeHFCjK
         ILQX/PRhJ70YErLQYxMAzLzur7y6nKdTuSYAqE+jTBhhv/JAe25wqPVXJtPQFyJbrHd8
         3NUj9cwTLcv62xFaRilMN2pfTN6Mko3uyjUfCQb69PQ02v20DFCXPxktEd53h5nHovKl
         K4HqSjsAocd0a5aTWIcmd52rp5ttEPDM9IGa3koC1OCNBLRIDobF/L+9UY0tCoJdS4N3
         tCBS9ziI+Ctlw5FRBhUtGll3YUBaz7hF1BjYMNEqqvG+yZLeySZ9zw4VXpiS0fSJNZGV
         X/dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=btHNoJ4L;
       spf=pass (google.com: domain of 3j7jzxgwkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3j7jzXgwKAMwAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0fWc41yTJ26oCGvNR8VFrsLu+YW0w45C3bHJ+2uw8hg=;
        b=ocXPWl5us781hmo6zzzkEEQwhkrUA3MKXvXDKGoJj5VpdzVGhz4W4JB5HvEMf3F371
         Q4PEOpMvwkNuW3clOXzW9HuO5qN+Zoc5UTfQG4QeeTkuaXkIdMfKwyTp6rIgTavyK0I7
         CA05AypE7J0sHmyANVH5pLs+JjFWJjWx5NPE0qr9M4QSlB8j3IP0JdryhV6EjlTHsO+e
         qPcVd9uXHbd2oD5+t2ppNKjmWiTjsfEHiH9agaWFyAxxrDiM7gcyk86dwxJztbqWYV6n
         5cLeIyJ2svIb1/RdM9GtICUw8C/soTja1LulIk8km/JCp5icuE5jkWBu6QVU96G1zvU+
         J9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0fWc41yTJ26oCGvNR8VFrsLu+YW0w45C3bHJ+2uw8hg=;
        b=X7MvhOaUrVr7PutcEdsJoolWeiVATrfHnEoPf4f9avn0GEAgJgGn/tHnckQf3rQMuN
         ROUAn1fgNGaCdvWkpRnKvdd+NvQ7XHtBlbW2AZTJJJWXqHlgbb8SyVCqH1czAAOLWIMy
         ZScRySY+fNLLS27IW2T+3t/g4MI62NHdQ/kROWZpEOQkvHWfdSXCxU9GGcq3lUDrl4eY
         gKpAfyJn/OLE3Lxe/U/axxs+tZwEvgrWwTJNL0ZAOXQ/zI3/NqK4cgI2Ql0KGKqsvVIn
         sdSLDFcFz9i3abjyCRidG+RUDh8gltV8KnrmIVtclHvXtYOwp0UV/AXBGnUkuV2FMkx0
         VEQA==
X-Gm-Message-State: AOAM531CMiYnbmTShmFqrESzkuFhn3Jm3SHRW4HlHhFPMDMuJlu3/db5
	54SO94uBJu94LpIEBqyV7LM=
X-Google-Smtp-Source: ABdhPJyXCUNuDIpYIHCU+Ss2mpYGPHLJPWUYRfi60YnP42ouijsfYW2aS8hQFcP6JYAz6+o6otbyXQ==
X-Received: by 2002:a63:9d87:: with SMTP id i129mr23588371pgd.412.1593030801081;
        Wed, 24 Jun 2020 13:33:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls1396006pjb.2.canary-gmail;
 Wed, 24 Jun 2020 13:33:20 -0700 (PDT)
X-Received: by 2002:a17:90a:1d46:: with SMTP id u6mr31672664pju.146.1593030800599;
        Wed, 24 Jun 2020 13:33:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030800; cv=none;
        d=google.com; s=arc-20160816;
        b=vEl/PDVz+VBwj0CIMRIXnvlNS4itWVRQlab5DxQ1In1P7/fIKCbqOOX6R/gbfaIZCh
         i8Nk7BCTClXDlBMd3RY3XfN1XRqb1H1SjamS7O8adyzN+oDWfAfv3nZ9D9fzhn0jgD3G
         Dytx1TCSvGU08JEY1rWvxUe1X6eewXsRo+tV23RseO1iHhPJ6ShrO5hBUdFCUkfiho0N
         /Aelft43gRwROLo/0yt6bkbNDLpvv/uu49HUUj4aTlDvxT6VTieyPyIm269X7pUa37Pw
         PKuqJaEIZYQKETcInCsUJGSYBSMKsDbKhcHH2cUVPjyMLVykDTKRiAHqq3s64mrCYLNf
         2bxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=79pxKTlkNWyJf2vmlsIGe03zgp7TGuVtfyoMyMkArK8=;
        b=zQW1PU1S1NOEWM84zc4nl54Xl7JCvMn67JQI+eNi8c3OCA2DRhBPCuIcqeq60jP5nL
         QRjh3WeZ5lR5crENYj9O3UJ708ZQGdZM5dU4pthJrOWsD4Kvzhzz0C9hCq4U8nNp4crs
         hLauimqu/4ZUEZ/X7eagQGn9VCZ6J/BpGNWC6Ex3hlBh1DxUoeXVP/9I8RVWIeFrPsfJ
         SpygTpF/61b4n9Lrd3QMXyPkFPkgdncS3unLD70fA41kf6t6fxg2whGlhcU1WpyBwlK7
         CebxgdxfwhVnWwx3FCDhxta1dDTj5Sq88Uy9pYVamoZ14JqSZrCzKGJmC8MO+f+e3TB0
         P05w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=btHNoJ4L;
       spf=pass (google.com: domain of 3j7jzxgwkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3j7jzXgwKAMwAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id u2si1141295plq.0.2020.06.24.13.33.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3j7jzxgwkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id x16so2486694qvp.19
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:20 -0700 (PDT)
X-Received: by 2002:a0c:f109:: with SMTP id i9mr18665621qvl.154.1593030799673;
 Wed, 24 Jun 2020 13:33:19 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:50 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 12/22] modpost: lto: strip .lto from module names
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=btHNoJ4L;       spf=pass
 (google.com: domain of 3j7jzxgwkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3j7jzXgwKAMwAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
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

With LTO, everything is compiled into LLVM bitcode, so we have to link
each module into native code before modpost. Kbuild uses the .lto.o
suffix for these files, which also ends up in module information. This
change strips the unnecessary .lto suffix from the module name.

Suggested-by: Bill Wendling <morbo@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 scripts/mod/modpost.c    | 16 +++++++---------
 scripts/mod/modpost.h    |  9 +++++++++
 scripts/mod/sumversion.c |  6 +++++-
 3 files changed, 21 insertions(+), 10 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 6aea65c65745..8352f8a1a138 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -17,7 +17,6 @@
 #include <ctype.h>
 #include <string.h>
 #include <limits.h>
-#include <stdbool.h>
 #include <errno.h>
 #include "modpost.h"
 #include "../../include/linux/license.h"
@@ -80,14 +79,6 @@ modpost_log(enum loglevel loglevel, const char *fmt, ...)
 		exit(1);
 }
 
-static inline bool strends(const char *str, const char *postfix)
-{
-	if (strlen(str) < strlen(postfix))
-		return false;
-
-	return strcmp(str + strlen(str) - strlen(postfix), postfix) == 0;
-}
-
 void *do_nofail(void *ptr, const char *expr)
 {
 	if (!ptr)
@@ -1975,6 +1966,10 @@ static char *remove_dot(char *s)
 		size_t m = strspn(s + n + 1, "0123456789");
 		if (m && (s[n + m] == '.' || s[n + m] == 0))
 			s[n] = 0;
+
+		/* strip trailing .lto */
+		if (strends(s, ".lto"))
+			s[strlen(s) - 4] = '\0';
 	}
 	return s;
 }
@@ -1998,6 +1993,9 @@ static void read_symbols(const char *modname)
 		/* strip trailing .o */
 		tmp = NOFAIL(strdup(modname));
 		tmp[strlen(tmp) - 2] = '\0';
+		/* strip trailing .lto */
+		if (strends(tmp, ".lto"))
+			tmp[strlen(tmp) - 4] = '\0';
 		mod = new_module(tmp);
 		free(tmp);
 	}
diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
index 3aa052722233..fab30d201f9e 100644
--- a/scripts/mod/modpost.h
+++ b/scripts/mod/modpost.h
@@ -2,6 +2,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <stdarg.h>
+#include <stdbool.h>
 #include <string.h>
 #include <sys/types.h>
 #include <sys/stat.h>
@@ -180,6 +181,14 @@ static inline unsigned int get_secindex(const struct elf_info *info,
 	return info->symtab_shndx_start[sym - info->symtab_start];
 }
 
+static inline bool strends(const char *str, const char *postfix)
+{
+	if (strlen(str) < strlen(postfix))
+		return false;
+
+	return strcmp(str + strlen(str) - strlen(postfix), postfix) == 0;
+}
+
 /* file2alias.c */
 extern unsigned int cross_build;
 void handle_moddevtable(struct module *mod, struct elf_info *info,
diff --git a/scripts/mod/sumversion.c b/scripts/mod/sumversion.c
index d587f40f1117..760e6baa7eda 100644
--- a/scripts/mod/sumversion.c
+++ b/scripts/mod/sumversion.c
@@ -391,10 +391,14 @@ void get_src_version(const char *modname, char sum[], unsigned sumlen)
 	struct md4_ctx md;
 	char *fname;
 	char filelist[PATH_MAX + 1];
+	int postfix_len = 1;
+
+	if (strends(modname, ".lto.o"))
+		postfix_len = 5;
 
 	/* objects for a module are listed in the first line of *.mod file. */
 	snprintf(filelist, sizeof(filelist), "%.*smod",
-		 (int)strlen(modname) - 1, modname);
+		 (int)strlen(modname) - postfix_len, modname);
 
 	buf = read_text_file(filelist);
 
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-13-samitolvanen%40google.com.
