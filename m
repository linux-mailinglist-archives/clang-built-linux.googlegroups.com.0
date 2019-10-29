Return-Path: <clang-built-linux+bncBC72VC6I3MMBBUNU4LWQKGQEKAABL7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D7EE9069
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 21:00:18 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id x1sf74805ior.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 13:00:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572379217; cv=pass;
        d=google.com; s=arc-20160816;
        b=hoBOzFrjE4chWiOpJ5bX8HNS37BKa6py/LuNlHjpynXEtHwVApqEJDf5cURy5lPWBZ
         oYCRUvkrKOKvCIZr40camJnjAmTkE0imjS/bTXa2v7352NqYFiMZMHsmNmiXaUpz7BL+
         27mPRehjPmU8bAUXHFPIY0aJrtJpzoh4n6Xzgz+JlSn1zVNvRYy4Iuowd5o52ZI66y1A
         wsQ1a/0s7J9szsfPwpbI9ZB/Jn0JbdZxTAImAHOfygbA5G990YXbIIoMNQJZAqJCJnsV
         kJVaBV2bQIwR1yJoz5UK8ZQE93HIrH/Y9FiwIOuGcWTGrcrJKCR+Krw0Ax/KorUk6noS
         JCtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=2F5jNdWgY6Fb7q0KL9Sf0Y8VTHEWyfOA35cKxL22vgo=;
        b=JNKOggJOdplaRlTNERoUqxDW1TWIzcNOckjckO1MQ0BSAVlOIjNq3RH+qITDM9+KbV
         HD+SFwhO+TG1dZ8tVqTbElkfHF5x1rrMYSCkUrwRGgj0pBztQO3lrlbsKsJ94Y+6iqbK
         KV9ODoGdmpqgSBZwZv5BoblJgrbjyVrqgC8Wlr1to9oI5EFPvf7hRtjQ9ft6ukXsErVl
         LwGr7Hsd/X6Kh6YfNyNWxUzuQTpayN5/l2Law9GpIMPMcn3qujZXmcM3Gr1Pv9cP31Rz
         Fgk2rYg8pBepuZLhQ6COsNLN/yojZDBLJDXAHtMJBThviEh8zNiz6hLTIZzCjdqiG5t3
         TxsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JR0vw0hb;
       spf=pass (google.com: domain of jim.cromie@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jim.cromie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2F5jNdWgY6Fb7q0KL9Sf0Y8VTHEWyfOA35cKxL22vgo=;
        b=TuXEksoamuhab/+r1FaCVwVqisjBIvh4LE5TRmR4Rjv/4KE0VY/dr7eVN04fhq+2hI
         AlWUYapJ/9HYyAXbDv6OjRrgJ8srtN1Jfnw0sfKZ6thQ3zERsvKFJ3fOt0qN68hePJDF
         ejJqKvwkS8hOyKAA9PmPX5YAxuVjLqstMIs3vWw6LebWOemytWgKyhaHIT7ixYLn6kWr
         jl7ZR/Y2Q0dfDsPi1bxgcztGPsyvlMVeovYLUNh5WPrJhJJsWdOodSAM+7sNKX/MYAUW
         ev9YuasWEjwCu3Ax8RPm9QbrlEVz+MIwM7fV965cFhwQasP2ypIJg4Vnc8wigbP0K3Nr
         ihnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2F5jNdWgY6Fb7q0KL9Sf0Y8VTHEWyfOA35cKxL22vgo=;
        b=jvm2j17O19jGiCMrQa74UFmLNwTphidWMjbsXjQfCIR7Q5yIA7kPhHxIGrm0qFA7kW
         L+oJfS8/OIUsxs0NESCaDB4VSRGuZV2nyjmDtBSd9H496u3wIOV2EKC2XB0O8EWmvcZs
         PzKkVEWUnq2mWwhRn9/InYjgQsaKzn4IqTEcvZI98wLHLxjhHykyycYqBZPH1FG6A/uC
         KfItt1w0kR0yGpSD0J5b94rI/bZJEhhWWJhEjvfZQ0I8LXCNdJ3QA6fi1NCzfB/nwDOJ
         s4uVfbmt1UpT70ZKsiag7E1+RAssJ/2BiiHqZb1GPieMAmD1epvP8KvjQB7+0NcJb6L2
         Lfkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2F5jNdWgY6Fb7q0KL9Sf0Y8VTHEWyfOA35cKxL22vgo=;
        b=arqj8Nqqu+NCDn3ThacOPM5S5hr8wMKN+So3QykKqL9C7yA8fCPcfmLXRbmvIjulYX
         ml8x2llYTtQ1eDKnlkMguTJXvEFtlSWf8DQYBFCw+bq0TvvgMysRYCJgc+zQPV3+rMpD
         6YLKdQuAuiZgGzmhihK4CUBtNBBQETIFq2XqVWzzy6KheMkSSetdKjct+p+q7fekPxBd
         DxJElVbl6sffiQ+fHIGewfUNH1gAAslnJrH8UiqHLxFLmS1xRMBFjDr97nMXsOBmQTst
         DcCe6QTBtcHImT+QU5oIkeKoKLw95RYG8BeRQ89i7NZIiDf/4Ijs1W0gJBsjOhnkGCFC
         lByA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX8XgHwOFaXsLGLLoilc2k/RfVwR5++Ss1tRY6OSolLy5RVXi8P
	1ZOR+ChvXoLnj37rYqGOQE4=
X-Google-Smtp-Source: APXvYqzOeX51/4rJOg+qX2o1Bgl/jp5BTx7/rGRkFb5jDs3plgclWimgYG+Po/HYfU6sFhrlaeISzQ==
X-Received: by 2002:a6b:610b:: with SMTP id v11mr5275936iob.219.1572379217225;
        Tue, 29 Oct 2019 13:00:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3552:: with SMTP id c79ls1842010ila.12.gmail; Tue, 29
 Oct 2019 13:00:16 -0700 (PDT)
X-Received: by 2002:a92:3b52:: with SMTP id i79mr30415561ila.19.1572379216886;
        Tue, 29 Oct 2019 13:00:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572379216; cv=none;
        d=google.com; s=arc-20160816;
        b=hrihh20jM8kaieuUKS/dW1EyaxLeKVb/Es0pZmYxZJsy0yBscujFuEh3NZI9TrpJLk
         SnM0ne/+liQh9qDUFtCJNTEdQMcVo+DeDXSqx5YmVShLz4anObQYqCj6YN/gGZma0+zQ
         qv263wqvJzdDLGwcywjwFelatKm7IY8Fc2BSWuGKv2Lu9+0Tm/k7myTyFvCJYvSgC7wt
         r5eY+M5diHL0FKmWVzxCUfmZJHZkFuw0zfUB7i5AuZPgzgdsFQNCRkninwnM6nVIQQ2K
         FWElLgdDYuPGOBEILiG05D4LCB9kGSVUyk61Kr/4Pwa8HwuEmnaBv4OebI4zudxr9odW
         XC0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XFtN+XGvbR1I6A3qEJqZM9z+JSUPPupQU7FJEjlcOXU=;
        b=DyZYf5IpZcqbkS2BJL1JfgPP9IE1va/WtiWHaIrgVz1FbXq2rSEHYzVonEZwRakgbu
         sJl3upwOh234AG/4RzZZrs68PzW1KUvd8NtTWjjPdtfcGVAQdTSMSiaNkKORox1Pw9Bq
         zgagyYRJGmNd48Lp4EAnAmaHemKv5jYUUELA3tOPIcW5b0PExxmZU//nwX3p7gOJ8/rH
         QvZ9kQhktEYKPPwFt2h/5eMrLd3jBcjVyQ2cqSNw8vXaIfF9qASCCK+lEbLab6khd45Z
         Zav76DweW+GNqrzXP3nGZGSepDzk1HTYzc8IydZCSKWfKXlsSUDLnliHLysJc4Wk8OM6
         i/6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JR0vw0hb;
       spf=pass (google.com: domain of jim.cromie@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jim.cromie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k11si965771ilg.4.2019.10.29.13.00.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 13:00:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jim.cromie@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id p26so6243459pfq.8
        for <clang-built-linux@googlegroups.com>; Tue, 29 Oct 2019 13:00:16 -0700 (PDT)
X-Received: by 2002:a6b:b486:: with SMTP id d128mr5670385iof.47.1572379213067;
        Tue, 29 Oct 2019 13:00:13 -0700 (PDT)
Received: from localhost.localdomain (c-24-9-77-57.hsd1.co.comcast.net. [24.9.77.57])
        by smtp.googlemail.com with ESMTPSA id v14sm420iob.59.2019.10.29.13.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2019 13:00:10 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com,
	linux-kernel@vger.kernel.org
Cc: linux@rasmusvillemoes.dk,
	greg@kroah.com,
	Jim Cromie <jim.cromie@gmail.com>,
	clang-built-linux@googlegroups.com,
	Jonathan Corbet <corbet@lwn.net>,
	Randy Dunlap <rdunlap@infradead.org>,
	linux-doc@vger.kernel.org
Subject: [PATCH 01/16] dyndbg: drop trim_prefix, obsoleted by __FILE__s relative path
Date: Tue, 29 Oct 2019 14:00:00 -0600
Message-Id: <20191029200001.9640-1-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Original-Sender: jim.cromie@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JR0vw0hb;       spf=pass
 (google.com: domain of jim.cromie@gmail.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=jim.cromie@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Regarding:
commit 2b6783191da7 ("dynamic_debug: add trim_prefix() to provide source-root relative paths")
commit a73619a845d5 ("kbuild: use -fmacro-prefix-map to make __FILE__ a relative path")

2nd commit broke dynamic-debug's "file $fullpath" query form, but
nobody noticed because 1st commit trimmed prefixes from control-file
output, so the click-copy-pasting of fullpaths into new queries had
ceased; that query form became unused.

So remove the function and callers; its purpose was to strip the
prefix from __FILE__, which is now gone.  Further, there is no loss of
query selectivity, and no real value in iteratively trimming ^/\w+
prefix and testing for a match.

Also drop "file $fullpath" from docs, and tweak example to cite column
1 of control-file as valid "file $input".

cc: clang-built-linux@googlegroups.com

I built one clang-kernel a while ago to see if this patch broke
things, it did not, but I may have messed up something.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 .../admin-guide/dynamic-debug-howto.rst       | 19 +++++++++----------
 lib/dynamic_debug.c                           | 19 +++----------------
 2 files changed, 12 insertions(+), 26 deletions(-)

diff --git a/Documentation/admin-guide/dynamic-debug-howto.rst b/Documentation/admin-guide/dynamic-debug-howto.rst
index 252e5ef324e5..e011f8907116 100644
--- a/Documentation/admin-guide/dynamic-debug-howto.rst
+++ b/Documentation/admin-guide/dynamic-debug-howto.rst
@@ -62,10 +62,10 @@ statements via::
 
   nullarbor:~ # cat <debugfs>/dynamic_debug/control
   # filename:lineno [module]function flags format
-  /usr/src/packages/BUILD/sgi-enhancednfs-1.4/default/net/sunrpc/svc_rdma.c:323 [svcxprt_rdma]svc_rdma_cleanup =_ "SVCRDMA Module Removed, deregister RPC RDMA transport\012"
-  /usr/src/packages/BUILD/sgi-enhancednfs-1.4/default/net/sunrpc/svc_rdma.c:341 [svcxprt_rdma]svc_rdma_init =_ "\011max_inline       : %d\012"
-  /usr/src/packages/BUILD/sgi-enhancednfs-1.4/default/net/sunrpc/svc_rdma.c:340 [svcxprt_rdma]svc_rdma_init =_ "\011sq_depth         : %d\012"
-  /usr/src/packages/BUILD/sgi-enhancednfs-1.4/default/net/sunrpc/svc_rdma.c:338 [svcxprt_rdma]svc_rdma_init =_ "\011max_requests     : %d\012"
+  net/sunrpc/svc_rdma.c:323 [svcxprt_rdma]svc_rdma_cleanup =_ "SVCRDMA Module Removed, deregister RPC RDMA transport\012"
+  net/sunrpc/svc_rdma.c:341 [svcxprt_rdma]svc_rdma_init =_ "\011max_inline       : %d\012"
+  net/sunrpc/svc_rdma.c:340 [svcxprt_rdma]svc_rdma_init =_ "\011sq_depth         : %d\012"
+  net/sunrpc/svc_rdma.c:338 [svcxprt_rdma]svc_rdma_init =_ "\011max_requests     : %d\012"
   ...
 
 
@@ -85,7 +85,7 @@ the debug statement callsites with any non-default flags::
 
   nullarbor:~ # awk '$3 != "=_"' <debugfs>/dynamic_debug/control
   # filename:lineno [module]function flags format
-  /usr/src/packages/BUILD/sgi-enhancednfs-1.4/default/net/sunrpc/svcsock.c:1603 [sunrpc]svc_send p "svc_process: st_sendto returned %d\012"
+  net/sunrpc/svcsock.c:1603 [sunrpc]svc_send p "svc_process: st_sendto returned %d\012"
 
 Command Language Reference
 ==========================
@@ -158,13 +158,12 @@ func
 	func svc_tcp_accept
 
 file
-    The given string is compared against either the full pathname, the
-    src-root relative pathname, or the basename of the source file of
-    each callsite.  Examples::
+    The given string is compared against either the src-root relative
+    pathname, or the basename of the source file of each callsite.
+    Examples::
 
 	file svcsock.c
-	file kernel/freezer.c
-	file /usr/src/packages/BUILD/sgi-enhancednfs-1.4/default/net/sunrpc/svcsock.c
+	file kernel/freezer.c	# ie column 1 of control file
 
 module
     The given string is compared against the module name
diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index c60409138e13..ba35199edd9c 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -67,17 +67,6 @@ static LIST_HEAD(ddebug_tables);
 static int verbose;
 module_param(verbose, int, 0644);
 
-/* Return the path relative to source root */
-static inline const char *trim_prefix(const char *path)
-{
-	int skip = strlen(__FILE__) - strlen("lib/dynamic_debug.c");
-
-	if (strncmp(path, __FILE__, skip))
-		skip = 0; /* prefix mismatch, don't skip */
-
-	return path + skip;
-}
-
 static struct { unsigned flag:8; char opt_char; } opt_array[] = {
 	{ _DPRINTK_FLAGS_PRINT, 'p' },
 	{ _DPRINTK_FLAGS_INCL_MODNAME, 'm' },
@@ -162,9 +151,7 @@ static int ddebug_change(const struct ddebug_query *query,
 			if (query->filename &&
 			    !match_wildcard(query->filename, dp->filename) &&
 			    !match_wildcard(query->filename,
-					   kbasename(dp->filename)) &&
-			    !match_wildcard(query->filename,
-					   trim_prefix(dp->filename)))
+					    kbasename(dp->filename)))
 				continue;
 
 			/* match against the function */
@@ -199,7 +186,7 @@ static int ddebug_change(const struct ddebug_query *query,
 #endif
 			dp->flags = newflags;
 			vpr_info("changed %s:%d [%s]%s =%s\n",
-				 trim_prefix(dp->filename), dp->lineno,
+				 dp->filename, dp->lineno,
 				 dt->mod_name, dp->function,
 				 ddebug_describe_flags(dp, flagbuf,
 						       sizeof(flagbuf)));
@@ -827,7 +814,7 @@ static int ddebug_proc_show(struct seq_file *m, void *p)
 	}
 
 	seq_printf(m, "%s:%u [%s]%s =%s \"",
-		   trim_prefix(dp->filename), dp->lineno,
+		   dp->filename, dp->lineno,
 		   iter->table->mod_name, dp->function,
 		   ddebug_describe_flags(dp, flagsbuf, sizeof(flagsbuf)));
 	seq_escape(m, dp->format, "\t\r\n\"");
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191029200001.9640-1-jim.cromie%40gmail.com.
