Return-Path: <clang-built-linux+bncBDGNZTVZVAFRBZ7NSTYAKGQEYYTK5XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A0E12AF5E
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Dec 2019 23:40:41 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id f10sf12539955plr.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Dec 2019 14:40:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577400040; cv=pass;
        d=google.com; s=arc-20160816;
        b=VuU0i8LdYcsyPgvxAX8mvuxzZujDrcuHxmkiHUIfAREL/Navk2GQIhfgP+tCmuNkhq
         1cWF9JOOI4UYBhT80HHkAcTuhkE2m1jcMjd6LltKvbH0U8Vlx2aXkZnVcEnu3AihXt/J
         7y9+wu1LBI/d8GYYQOKp/hVWOpwa3b8zioObVe6yJl7tQvEkPtLPgfZ53f5O57WOM+o9
         5QRHWt1iX47EezwD0SpqmNMy76uBJ7f2wPcuLCyr6TJWDGKgIVrPn3GDMt+tJJiMSpeD
         soUX0EfXpp1NJ/YV7yQ0cei0pW4E8t02Cn12E11DpVcmanXO1O/xYxn60/aNEShgV+Rg
         UFYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=SoBt8bjjmAeKkSH5W2ZpEtJdyz07AVw1dt0fIM3HER8=;
        b=eiqY8Uag2Ztnn7RM8DH2jeHgcT3xePEcrjSrxnDBn0yEkDqzyMawcX8SwD3HaY9Bhh
         2qjD561sspDj6XZEG1iMr0kWoqDZSP+LnIAmhPaCXzVt6dwLvgx/+8BOUMYbUTp0rYCk
         /nAH/BPzunSnlAuGe06hXobPJ4JoIMCt+Lz6Zo8JfqEezcjMJYuWSzszi4zj9MA6VLoz
         aNRjRu1J/DX7JFu9obzinpF5NpsFKwBxgSBYaLuqmeqM7hz5Bawe4SZ4R3/m+Xtq+HTl
         jjn3tU+g+X4hlLGN/MnkEIlwLnqDERbKYy7ZYnOvkGHCNqKbuwPyC7JUE+ljYj3jIhV2
         hBHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robherring2@gmail.com designates 209.85.166.195 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SoBt8bjjmAeKkSH5W2ZpEtJdyz07AVw1dt0fIM3HER8=;
        b=QubNKbvsnk+tZzfUwOaoBZgY8HzANqNAXZmp5vb99gxeIZC7+NZIJy8zW3UVUj+R6r
         gd7zLJt8XojlZbf9PGRE/rzZO45SNz2qrKIiMRlezo2M9BrLxbDIOBW6a2ltfkR19Fq1
         l+qnuwdPGoEgM1tlCwjHBd0n6bY3KKGbnBAb98pfzWxzv5CDAhnrneCfP8MqjaQNi5pA
         ztzRYSuYBJnO7BhMBLjEhyv4euJwGTrDGxHKzO7Dn4S1u9T4rtX+NnkN7F6gmFutw8iv
         tOwkfvnZjJM13ac9fyhNr5XaY8o9pxytVg3Us5WWLqiSuGuiSGLpdXS9X90TBQvmol8I
         rvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SoBt8bjjmAeKkSH5W2ZpEtJdyz07AVw1dt0fIM3HER8=;
        b=p5q2vaW0NpEumg1ujoPYNRJgBqcxWIIC0+smv9D2yZyvtgPAb/FyeM2/xEDjTo2kau
         ui8KTXZWbRZo0+Vo97W+lN+8ctX06fCgPextgvm5Hzc4W+MLXQBfuGK2SRtT0E1WXMWl
         mVjlbp0g3wOprT8wqrLNmf/RsAVEr43cMG9uk6w+WMXqrTJADClJfRfKYP5sDRe+kS7P
         wfx8AeS0r74yAv8mnVHzXO5S/WQpiv0Ljy1ss6E8qfBWutuIUt1rQAJazUf0lbYMHr4K
         OyuDFehFtoKbgrMbQ+q1WJ0NcYotV0JfqjnuJuMlF6QlsV8cFg9WJKvpPt5yfNpARk/6
         HI/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/wu+OMm1YOn+Q4UneME8Mr8ofyNrb9mOSuCefCt4W961ixyex
	uucNb6ZqNuU9Zt/ruJL3l5w=
X-Google-Smtp-Source: APXvYqyWg96FOoZ7FFEemQnJ7q2Fov/4YVuCgrLjD8HTJFuw8gSbLLwovL1H6rKxSMAjFcs0mRzrSw==
X-Received: by 2002:aa7:961b:: with SMTP id q27mr51557483pfg.23.1577400039750;
        Thu, 26 Dec 2019 14:40:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d207:: with SMTP id a7ls6529963pgg.1.gmail; Thu, 26 Dec
 2019 14:40:39 -0800 (PST)
X-Received: by 2002:a65:6451:: with SMTP id s17mr50812324pgv.188.1577400039126;
        Thu, 26 Dec 2019 14:40:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577400039; cv=none;
        d=google.com; s=arc-20160816;
        b=KEiTUtWtG80L86Z/RPg1q2B9uONu0RCzJ4/UcJ3e9ov+L1pvjq+qDJiBUKipBcQTBB
         dFhtUBMP5WZRoNCoJaJ7LiAeq8bzj4qxXhLxOsnjZKVipIdRsrUMqoxDI0US3wrCQkFu
         G202F5u6r2Q8CH+XRXQukBfvuHc5kZ5jfUdgK4P6ZRGQH/kRsxtAAypdwbLhV5hvOr5O
         TN3b9PPQoWw45je9dP0bY4KKvfbWjtILTbqETMsmn25jEnnqTKfjDuEF58X3CnqoCkpy
         IbOIeIlCUiE8ako0XXBPQ3ZgnsokxiK9jPLPoHToDlcSk75A5AwEnLM+eA8fuTN8o/h2
         RGfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ScU1MX2NEah2LBpw4ejnPwfmUzUDKflMUjp7TE9pgIw=;
        b=OC9wwVWeCjBRWXKWjd/EV2dmxEiJAYa+XDQ0aKdpxfYkP/RzT2pULujhsZWiVtszSm
         aXG2mcRpZSjIu/HbobjXQdo2jJ7K51OU0SspY3cHk9VIglXuW4IqJq+2CBtRiS8ja+A1
         aygr1tqT+dt7iC5VACOk9P1CcRxwefO41AWwRxtcXmLUTsn8zF6IWcrTX1/05eN2+YyZ
         lx8wZ5cauny3GI6Ab4pjUkVQQLBv+HkGtUc9S3W4NOUJGQxlSqW6am9vygKfgmhMzGwl
         jhgKsBoc52GXm7jD13n/9RnkvbkSmIsV/BF3hNjpE4c6bjSfvVMmJuQOcFw9BKxuiYfF
         3Tfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robherring2@gmail.com designates 209.85.166.195 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com. [209.85.166.195])
        by gmr-mx.google.com with ESMTPS id v13si1222346pga.4.2019.12.26.14.40.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Dec 2019 14:40:39 -0800 (PST)
Received-SPF: pass (google.com: domain of robherring2@gmail.com designates 209.85.166.195 as permitted sender) client-ip=209.85.166.195;
Received: by mail-il1-f195.google.com with SMTP id f5so21125201ilq.5
        for <clang-built-linux@googlegroups.com>; Thu, 26 Dec 2019 14:40:39 -0800 (PST)
X-Received: by 2002:a92:91c7:: with SMTP id e68mr42884312ill.161.1577400038309;
        Thu, 26 Dec 2019 14:40:38 -0800 (PST)
Received: from xps15.herring.priv ([64.188.179.250])
        by smtp.googlemail.com with ESMTPSA id t19sm6452533ioc.38.2019.12.26.14.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2019 14:40:37 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Frank Rowand <frowand.list@gmail.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH] scripts/dtc: Update to upstream version v1.5.1-22-gc40aeb60b47a
Date: Thu, 26 Dec 2019 15:40:36 -0700
Message-Id: <20191226224036.21691-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robherring2@gmail.com designates 209.85.166.195 as
 permitted sender) smtp.mailfrom=robherring2@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

This adds the following commits from upstream:

c40aeb60b47a travis.yml: Run tests on the non-x86 builders, too
9f86aff444f4 Add .cirrus.yml for FreeBSD build
34c82275bae6 Avoid gnu_printf attribute when using Clang
743000931bc9 tests: default to 'cc' if CC not set
adcd676491cc Add test-case for trailing zero
d9c55f855b65 Remove trailing zero from the overlay path
7a22132c79ec pylibfdt: Adjust for deprecated test methods
dbe80d577ee2 tests: add extension to sed -i for GNU/BSD sed compatibility
af57d440d887 libfdt: Correct prototype for fdt_ro_probe_()
6ce585ac153b Use correct inttypes.h format specifier
715028622547 support byacc in addition to bison
fdf3f6d897ab pylibfdt: Correct the type for fdt_property_stub()
430419c28100 tests: fix some python warnings
588a29ff2e4e util: use gnu_printf format attribute
bc876708ab1d fstree: replace lstat with stat
4c3c4ccb9916 dumptrees: pass outputdir as first argument
aa522da9fff6 tests: allow out-of-tree test run
0d0d0fa51b1f fdtoverlay: Return non-zero exit code if overlays can't be applied
4605eb047b38 Add .editorconfig
18d7b2f4ee45 yamltree: Ensure consistent bracketing of properties with phandles
67f790c1adcc libfdt.h: add explicit cast from void* to uint8_t* in fdt(32|64)_st
b111122ea5eb pylibfdt: use python3 shebang
60e0db3d65a1 Ignore phandle properties in /aliases
95ce19c14064 README: update for Python 3
5345db19f615 livetree: simplify condition in get_node_by_path
b8d6eca78210 libfdt: Allow #size-cells of 0
184f51099471 Makefile: Add EXTRA_CFLAGS variable
812b1956a076 libfdt: Tweak data handling to satisfy Coverity
5c715a44776a fdtoverlay: Ignore symbols in overlays which don't apply to the target tree
b99353474850 fdtoverlay: Allow adding labels to __overlay__ nodes in overlays
d6de81b81b68 pylibfdt: Add support for fdt_get_alias()
1c17714dbb3a pylibfdt: Correct the FdtSw example
ad57e4574a37 tests: Add a failed test case for 'fdtoverlay' with long target path
bbe3b36f542b fdtoverlay: Rework output allocation
6c2e61f08396 fdtoverlay: Improve error messages
297f5abb362e fdtoverlay: Check for truncated overlay blobs

Cc: Frank Rowand <frowand.list@gmail.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Rob Herring <robh@kernel.org>
---
 scripts/dtc/checks.c                 |  5 +++++
 scripts/dtc/dtc-parser.y             |  4 ++++
 scripts/dtc/fstree.c                 |  2 +-
 scripts/dtc/libfdt/fdt.c             |  9 +++++++--
 scripts/dtc/libfdt/fdt_addresses.c   |  8 +++++---
 scripts/dtc/libfdt/fdt_overlay.c     | 28 +++++++++++++++++++---------
 scripts/dtc/libfdt/fdt_ro.c          | 11 ++++++-----
 scripts/dtc/libfdt/libfdt.h          |  4 ++--
 scripts/dtc/libfdt/libfdt_internal.h | 12 ++++++------
 scripts/dtc/livetree.c               |  3 +--
 scripts/dtc/util.c                   |  3 ++-
 scripts/dtc/util.h                   |  4 ++++
 scripts/dtc/version_gen.h            |  2 +-
 scripts/dtc/yamltree.c               | 21 +++++++++++++++++++++
 14 files changed, 84 insertions(+), 32 deletions(-)

diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
index d7986ee18012..756f0fa9203f 100644
--- a/scripts/dtc/checks.c
+++ b/scripts/dtc/checks.c
@@ -691,6 +691,11 @@ static void check_alias_paths(struct check *c, struct dt_info *dti,
 		return;
 
 	for_each_property(node, prop) {
+		if (streq(prop->name, "phandle")
+		    || streq(prop->name, "linux,phandle")) {
+			continue;
+		}
+
 		if (!prop->val.val || !get_node_by_path(dti->dt, prop->val.val)) {
 			FAIL_PROP(c, dti, node, prop, "aliases property is not a valid node (%s)",
 				  prop->val.val);
diff --git a/scripts/dtc/dtc-parser.y b/scripts/dtc/dtc-parser.y
index 2ed4dc1f07fd..40dcf4f149da 100644
--- a/scripts/dtc/dtc-parser.y
+++ b/scripts/dtc/dtc-parser.y
@@ -2,6 +2,8 @@
 /*
  * (C) Copyright David Gibson <dwg@au1.ibm.com>, IBM Corporation.  2005.
  */
+%locations
+
 %{
 #include <stdio.h>
 #include <inttypes.h>
@@ -17,6 +19,8 @@ extern void yyerror(char const *s);
 		treesource_error = true; \
 	} while (0)
 
+#define YYERROR_CALL(msg) yyerror(msg)
+
 extern struct dt_info *parser_output;
 extern bool treesource_error;
 %}
diff --git a/scripts/dtc/fstree.c b/scripts/dtc/fstree.c
index 9871689b4afb..5e59594ab301 100644
--- a/scripts/dtc/fstree.c
+++ b/scripts/dtc/fstree.c
@@ -30,7 +30,7 @@ static struct node *read_fstree(const char *dirname)
 
 		tmpname = join_path(dirname, de->d_name);
 
-		if (lstat(tmpname, &st) < 0)
+		if (stat(tmpname, &st) < 0)
 			die("stat(%s): %s\n", tmpname, strerror(errno));
 
 		if (S_ISREG(st.st_mode)) {
diff --git a/scripts/dtc/libfdt/fdt.c b/scripts/dtc/libfdt/fdt.c
index 179168ec63e9..d6ce7c052dc8 100644
--- a/scripts/dtc/libfdt/fdt.c
+++ b/scripts/dtc/libfdt/fdt.c
@@ -15,8 +15,10 @@
  * that the given buffer contains what appears to be a flattened
  * device tree with sane information in its header.
  */
-int fdt_ro_probe_(const void *fdt)
+int32_t fdt_ro_probe_(const void *fdt)
 {
+	uint32_t totalsize = fdt_totalsize(fdt);
+
 	if (fdt_magic(fdt) == FDT_MAGIC) {
 		/* Complete tree */
 		if (fdt_version(fdt) < FDT_FIRST_SUPPORTED_VERSION)
@@ -31,7 +33,10 @@ int fdt_ro_probe_(const void *fdt)
 		return -FDT_ERR_BADMAGIC;
 	}
 
-	return 0;
+	if (totalsize < INT32_MAX)
+		return totalsize;
+	else
+		return -FDT_ERR_TRUNCATED;
 }
 
 static int check_off_(uint32_t hdrsize, uint32_t totalsize, uint32_t off)
diff --git a/scripts/dtc/libfdt/fdt_addresses.c b/scripts/dtc/libfdt/fdt_addresses.c
index d8ba8ec60c6c..9a82cd0ba2f9 100644
--- a/scripts/dtc/libfdt/fdt_addresses.c
+++ b/scripts/dtc/libfdt/fdt_addresses.c
@@ -14,7 +14,7 @@
 static int fdt_cells(const void *fdt, int nodeoffset, const char *name)
 {
 	const fdt32_t *c;
-	int val;
+	uint32_t val;
 	int len;
 
 	c = fdt_getprop(fdt, nodeoffset, name, &len);
@@ -25,10 +25,10 @@ static int fdt_cells(const void *fdt, int nodeoffset, const char *name)
 		return -FDT_ERR_BADNCELLS;
 
 	val = fdt32_to_cpu(*c);
-	if ((val <= 0) || (val > FDT_MAX_NCELLS))
+	if (val > FDT_MAX_NCELLS)
 		return -FDT_ERR_BADNCELLS;
 
-	return val;
+	return (int)val;
 }
 
 int fdt_address_cells(const void *fdt, int nodeoffset)
@@ -36,6 +36,8 @@ int fdt_address_cells(const void *fdt, int nodeoffset)
 	int val;
 
 	val = fdt_cells(fdt, nodeoffset, "#address-cells");
+	if (val == 0)
+		return -FDT_ERR_BADNCELLS;
 	if (val == -FDT_ERR_NOTFOUND)
 		return 2;
 	return val;
diff --git a/scripts/dtc/libfdt/fdt_overlay.c b/scripts/dtc/libfdt/fdt_overlay.c
index e97f12b1a780..b310e49a698e 100644
--- a/scripts/dtc/libfdt/fdt_overlay.c
+++ b/scripts/dtc/libfdt/fdt_overlay.c
@@ -733,26 +733,36 @@ static int overlay_symbol_update(void *fdt, void *fdto)
 		/* keep end marker to avoid strlen() */
 		e = path + path_len;
 
-		/* format: /<fragment-name>/__overlay__/<relative-subnode-path> */
-
 		if (*path != '/')
 			return -FDT_ERR_BADVALUE;
 
 		/* get fragment name first */
 		s = strchr(path + 1, '/');
-		if (!s)
-			return -FDT_ERR_BADOVERLAY;
+		if (!s) {
+			/* Symbol refers to something that won't end
+			 * up in the target tree */
+			continue;
+		}
 
 		frag_name = path + 1;
 		frag_name_len = s - path - 1;
 
 		/* verify format; safe since "s" lies in \0 terminated prop */
 		len = sizeof("/__overlay__/") - 1;
-		if ((e - s) < len || memcmp(s, "/__overlay__/", len))
-			return -FDT_ERR_BADOVERLAY;
-
-		rel_path = s + len;
-		rel_path_len = e - rel_path;
+		if ((e - s) > len && (memcmp(s, "/__overlay__/", len) == 0)) {
+			/* /<fragment-name>/__overlay__/<relative-subnode-path> */
+			rel_path = s + len;
+			rel_path_len = e - rel_path - 1;
+		} else if ((e - s) == len
+			   && (memcmp(s, "/__overlay__", len - 1) == 0)) {
+			/* /<fragment-name>/__overlay__ */
+			rel_path = "";
+			rel_path_len = 0;
+		} else {
+			/* Symbol refers to something that won't end
+			 * up in the target tree */
+			continue;
+		}
 
 		/* find the fragment index in which the symbol lies */
 		ret = fdt_subnode_offset_namelen(fdto, 0, frag_name,
diff --git a/scripts/dtc/libfdt/fdt_ro.c b/scripts/dtc/libfdt/fdt_ro.c
index 6fd9ec170dbe..a5c2797cde65 100644
--- a/scripts/dtc/libfdt/fdt_ro.c
+++ b/scripts/dtc/libfdt/fdt_ro.c
@@ -33,19 +33,20 @@ static int fdt_nodename_eq_(const void *fdt, int offset,
 
 const char *fdt_get_string(const void *fdt, int stroffset, int *lenp)
 {
+	int32_t totalsize = fdt_ro_probe_(fdt);
 	uint32_t absoffset = stroffset + fdt_off_dt_strings(fdt);
 	size_t len;
 	int err;
 	const char *s, *n;
 
-	err = fdt_ro_probe_(fdt);
-	if (err != 0)
+	err = totalsize;
+	if (totalsize < 0)
 		goto fail;
 
 	err = -FDT_ERR_BADOFFSET;
-	if (absoffset >= fdt_totalsize(fdt))
+	if (absoffset >= totalsize)
 		goto fail;
-	len = fdt_totalsize(fdt) - absoffset;
+	len = totalsize - absoffset;
 
 	if (fdt_magic(fdt) == FDT_MAGIC) {
 		if (stroffset < 0)
@@ -288,7 +289,7 @@ const char *fdt_get_name(const void *fdt, int nodeoffset, int *len)
 	const char *nameptr;
 	int err;
 
-	if (((err = fdt_ro_probe_(fdt)) != 0)
+	if (((err = fdt_ro_probe_(fdt)) < 0)
 	    || ((err = fdt_check_node_offset_(fdt, nodeoffset)) < 0))
 			goto fail;
 
diff --git a/scripts/dtc/libfdt/libfdt.h b/scripts/dtc/libfdt/libfdt.h
index 7b5ffd13a887..8907b09b86cc 100644
--- a/scripts/dtc/libfdt/libfdt.h
+++ b/scripts/dtc/libfdt/libfdt.h
@@ -136,7 +136,7 @@ static inline uint32_t fdt32_ld(const fdt32_t *p)
 
 static inline void fdt32_st(void *property, uint32_t value)
 {
-	uint8_t *bp = property;
+	uint8_t *bp = (uint8_t *)property;
 
 	bp[0] = value >> 24;
 	bp[1] = (value >> 16) & 0xff;
@@ -160,7 +160,7 @@ static inline uint64_t fdt64_ld(const fdt64_t *p)
 
 static inline void fdt64_st(void *property, uint64_t value)
 {
-	uint8_t *bp = property;
+	uint8_t *bp = (uint8_t *)property;
 
 	bp[0] = value >> 56;
 	bp[1] = (value >> 48) & 0xff;
diff --git a/scripts/dtc/libfdt/libfdt_internal.h b/scripts/dtc/libfdt/libfdt_internal.h
index 7830e550c37a..058c7358d441 100644
--- a/scripts/dtc/libfdt/libfdt_internal.h
+++ b/scripts/dtc/libfdt/libfdt_internal.h
@@ -10,12 +10,12 @@
 #define FDT_ALIGN(x, a)		(((x) + (a) - 1) & ~((a) - 1))
 #define FDT_TAGALIGN(x)		(FDT_ALIGN((x), FDT_TAGSIZE))
 
-int fdt_ro_probe_(const void *fdt);
-#define FDT_RO_PROBE(fdt)			\
-	{ \
-		int err_; \
-		if ((err_ = fdt_ro_probe_(fdt)) != 0)	\
-			return err_; \
+int32_t fdt_ro_probe_(const void *fdt);
+#define FDT_RO_PROBE(fdt)					\
+	{							\
+		int32_t totalsize_;				\
+		if ((totalsize_ = fdt_ro_probe_(fdt)) < 0)	\
+			return totalsize_;			\
 	}
 
 int fdt_check_node_offset_(const void *fdt, int offset);
diff --git a/scripts/dtc/livetree.c b/scripts/dtc/livetree.c
index 0c039993953a..032df5878ccc 100644
--- a/scripts/dtc/livetree.c
+++ b/scripts/dtc/livetree.c
@@ -526,8 +526,7 @@ struct node *get_node_by_path(struct node *tree, const char *path)
 	p = strchr(path, '/');
 
 	for_each_child(tree, child) {
-		if (p && (strlen(child->name) == p-path) &&
-		    strprefixeq(path, p - path, child->name))
+		if (p && strprefixeq(path, p - path, child->name))
 			return get_node_by_path(child, p+1);
 		else if (!p && streq(path, child->name))
 			return child;
diff --git a/scripts/dtc/util.c b/scripts/dtc/util.c
index 48af961dcc8c..40274fb79236 100644
--- a/scripts/dtc/util.c
+++ b/scripts/dtc/util.c
@@ -13,6 +13,7 @@
 #include <stdarg.h>
 #include <string.h>
 #include <assert.h>
+#include <inttypes.h>
 
 #include <errno.h>
 #include <fcntl.h>
@@ -393,7 +394,7 @@ void utilfdt_print_data(const char *data, int len)
 
 		printf(" = <");
 		for (i = 0, len /= 4; i < len; i++)
-			printf("0x%08x%s", fdt32_to_cpu(cell[i]),
+			printf("0x%08" PRIx32 "%s", fdt32_to_cpu(cell[i]),
 			       i < (len - 1) ? " " : "");
 		printf(">");
 	} else {
diff --git a/scripts/dtc/util.h b/scripts/dtc/util.h
index ca5cb52928e3..5a4172dd0f84 100644
--- a/scripts/dtc/util.h
+++ b/scripts/dtc/util.h
@@ -12,7 +12,11 @@
  */
 
 #ifdef __GNUC__
+#ifdef __clang__
 #define PRINTF(i, j)	__attribute__((format (printf, i, j)))
+#else
+#define PRINTF(i, j)	__attribute__((format (gnu_printf, i, j)))
+#endif
 #define NORETURN	__attribute__((noreturn))
 #else
 #define PRINTF(i, j)
diff --git a/scripts/dtc/version_gen.h b/scripts/dtc/version_gen.h
index f2761e24cf40..6dba95d23207 100644
--- a/scripts/dtc/version_gen.h
+++ b/scripts/dtc/version_gen.h
@@ -1 +1 @@
-#define DTC_VERSION "DTC 1.5.0-g702c1b6c"
+#define DTC_VERSION "DTC 1.5.0-gc40aeb60"
diff --git a/scripts/dtc/yamltree.c b/scripts/dtc/yamltree.c
index 5b6ea8ea862f..43ca869dd6a8 100644
--- a/scripts/dtc/yamltree.c
+++ b/scripts/dtc/yamltree.c
@@ -138,6 +138,27 @@ static void yaml_propval(yaml_emitter_t *emitter, struct property *prop)
 		(yaml_char_t *)YAML_SEQ_TAG, 1, YAML_FLOW_SEQUENCE_STYLE);
 	yaml_emitter_emit_or_die(emitter, &event);
 
+	/* Ensure we have a type marker before any phandle */
+	for_each_marker(m) {
+		int last_offset = 0;
+		struct marker *type_m;
+
+		if (m->type >= TYPE_UINT8)
+			last_offset = m->offset;
+
+		if (!(m->next && m->next->type == REF_PHANDLE &&
+		      last_offset < m->next->offset))
+			continue;
+
+		type_m = xmalloc(sizeof(*type_m));
+		type_m->offset = m->next->offset;
+		type_m->type = TYPE_UINT32;
+		type_m->ref = NULL;
+		type_m->next = m->next;
+		m->next = type_m;
+	}
+
+	m = prop->val.markers;
 	for_each_marker(m) {
 		int chunk_len;
 		char *data = &prop->val.val[m->offset];
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191226224036.21691-1-robh%40kernel.org.
