Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBLFN76AQMGQEA6PFFLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 257F632B9E6
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 19:34:22 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id f7sf14801300pgp.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 10:34:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614796461; cv=pass;
        d=google.com; s=arc-20160816;
        b=K5rdtVe5xvRMHw6BydY+Jf/2UxraIk//JhXS2nTLL+N0Yu8gaU6sOoKFmVIke54aoZ
         tetBttovtk9vaYHldfZn4Af2maHlCEfJLs5Vq32zh1kS+ZG3oR5i9Cqm5c1YUwBavbvU
         7C5bL3HQhGBuHcp8Zoar2GuTLSt02EBWBLPjO2ZfXVUGp5kz1wqt1JejFMJfc0CtVgME
         GJsVYjZFYVj/ofFJqWOYk9K56u9kKsmA9HC7TLOL7MqJ4iaEl8bKnpOq5srNLQnjfYZQ
         sPVM1/oeTWo3GI0Ex/cvHLRj/Su2cFYL+OJ9xNJ8gJ96ac7unTkkx/nofnFSiLD3axZB
         zlsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=HA9WVL1C/RLTU8lzHY+zucA04xz/sPeyiDqSTpqr/hA=;
        b=Ed/IID4Lkt0aanw6DnTxS2l5928HepqYfHXl3jDiLDbWBOrn3XOQNQC1L/9tlnQHgn
         QeDM0XNM1feNtewTjKgrEa74L2zk+toLQmzo7rYx3/Wx/EmQ/2gvEVj3WvdUz6jPBh6K
         laDwYzi1dX950nSEUuDvNw/zIeBtWl2TjV6+ZR1XCSXbmNhEu5OF0/XNHVIfVHEMamM3
         vOIk7oby04izhebp4ffw4CvZfm5FhricWKMQ5aWpxeB2/SHO9JTkauEvH5RQEW20fFz5
         mvIH7wsS47YR+qQeYXKfnE7nNDQaulXRCbumb5fgTf1c4HBudHlD5y0i7LAQRf5m/Adr
         v/Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=y3lXvknL;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HA9WVL1C/RLTU8lzHY+zucA04xz/sPeyiDqSTpqr/hA=;
        b=C8fqfeye1RI+0KQRDfC6cEmbKtCPaKNcg/uv3AjlT5xnw9g7JZKyO3OtKLeUVaGY5N
         xfrH5qCAD4DL5gNfiQkDjqPhbtP9+wz1mBCea1H1nJNlmKZfnl8ydspYX6p8izbE2k3m
         Ccjjjp6zYVbE7mkhuNV/j1FYUNY6RjjincglcX6MN0g1Jl8dztkyGU8cHr+vroanAQ+7
         gyevyaXeO44nHcw5XEiTys77PxmQelhvK3h/MYjsA02SwWI6pqWijfeQCRz5SXGo7Qxc
         SuVD0l1zxJDuEC8E8eo5BradPORjhemfNWVaapi3TUIOZ5doR8RacjGzwRsx2yh+ZP9I
         Shig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HA9WVL1C/RLTU8lzHY+zucA04xz/sPeyiDqSTpqr/hA=;
        b=gRQc/5Mf/MN0ERcRdjfSZZuZpZ0V1e31pXcwW5irV+ulvxEUjXodMCKMDbJc465Ncm
         Ou5Fdfe4iFlRs2bcd/W9bQtnHfKsnvYdMJZ8fxl7A/ZwNEdfAq16wyNztGeHL0e2G9oK
         NukzIrKbCUux9/KGiSL+Z61zaceOHJjFQ2sx81ceFo/e3RCx5jvNWDhjJJS8UWOJMvYK
         4Mob7lMy/FZcdyWtgsOOPpmq3zgS5fgEatPkQHqD9uU0O0eKL8GgOro7VlxH+FwVUCnb
         YSahBUwwglnwn3suKCAExje5RemGokx1W9VlRUCRy8FiRvNGR5gmLof7V6ymBsaWGgeA
         2jxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fBW7OkgU/oI4inrbQOPPkmOxSKDURYDdNnA2lE4Ik85xS++Wt
	hk8D0+WRQiELgup7RkWt6J0=
X-Google-Smtp-Source: ABdhPJyDWf96bXIaDNYD3AkyIuAtGJocC6VDqaZ09/qj9OIRcIVCys5myaWDJ/AZPaBBL3E9dnbDWw==
X-Received: by 2002:a05:6a00:2353:b029:1ba:d824:f1dc with SMTP id j19-20020a056a002353b02901bad824f1dcmr132782pfj.9.1614796460837;
        Wed, 03 Mar 2021 10:34:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:eb43:: with SMTP id i3ls1468897pli.7.gmail; Wed, 03
 Mar 2021 10:34:20 -0800 (PST)
X-Received: by 2002:a17:90a:bb95:: with SMTP id v21mr457391pjr.30.1614796460215;
        Wed, 03 Mar 2021 10:34:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614796460; cv=none;
        d=google.com; s=arc-20160816;
        b=wTGwmmqzWzPJm8w2iWOSEP8kwK4OUyJirNLHEzqC0+bAA7/SRoApwZttgmZDAgpPmj
         8Tx/dZuWuHAabQ6sCZ19anbY40ccSxXnoeNJc5Ali0ljAoCo1/6l/gjeLWjRReq+L9bR
         kSqbjCHiLAvOnBPme6slLp80aOFM4CEk7yCnsAouPJ9Eug00X/Jp/1pzz1s6DMJaD0Vq
         sMNTXVIVqhuyNfYBWqIe/HDIQwWHQveUjSr3mLaqtP/QfdLmrjzSsRia9nF3pVaCPoM1
         DCnxToujQO0QqBCkHusrEs2cMkCZUH0aVkxyiWUfhMZdO9RDm1E0nyKFTg+5N33utQf3
         gydw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=LVGA05n7Wz/yiErDayOXN6cwfEkjWcwwyvZ95yePyvU=;
        b=fbqS76ZfNlgKytd9qF2YxQCL5mHU5n+wf2TNBFtAlt+5xrDRtIQEBvxOJcgtEs+LSk
         Cesbi6X8TG5T707Rj9ew2wmGuI5Pgn1DBcSp2nglj4HpLEgh/Xwh+aRTLdWoIzkJQnSM
         ur8yVNJUIURAh6uCL/rgyyOVumnVCoMnAkAgceAogFNeD+edazYMz157+mqdRaqZ0wHK
         MQGh/IoPH3iybfs/ucT6+R6Ymnu3Bya/Ba2GoOODlRLB7p3+gWlmyZ7nmmhr7MlFbTMw
         srn72q71YhgTY4Banun1M1JkurLBbQ7XQt4uZEMgiVZ9Sm0Kv7UB5J9vpDViDnFcdcgC
         L/VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=y3lXvknL;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id r7si781882pjp.3.2021.03.03.10.34.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 10:34:20 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from localhost.localdomain (122-103-140-163.kyoto.fdn.vectant.ne.jp [122.103.140.163]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 123IXcJd023524;
	Thu, 4 Mar 2021 03:33:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 123IXcJd023524
X-Nifty-SrcIP: [122.103.140.163]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] kbuild: collect minimum tool versions into scripts/tool-version.sh
Date: Thu,  4 Mar 2021 03:33:31 +0900
Message-Id: <20210303183333.46543-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210303183333.46543-1-masahiroy@kernel.org>
References: <20210303183333.46543-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=y3lXvknL;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The kernel build uses various tools, many of which are provided by the
same software suite, for example, LLVM and Binutils.

When we raise the minimal version of Clang/LLVM, we need to update
clang_min_version in scripts/cc-version.sh and also lld_min_version in
scripts/ld-version.sh.

In fact, Kbuild can handle CC=clang and LD=ld.lld independently, and we
could manage their minimal version separately, but it does not make
much sense.

Make scripts/tool-version.sh a central place of minimum tool versions
so that we do not need to touch multiple files.

This script prints the minimal version of the given tool.

  $ scripts/tool-version.sh gcc
  4.9.0
  $ scripts/tool-version.sh llvm
  10.0.1
  $ scripts/tool-version.sh binutils
  2.23.0
  $ scripts/tool-version.sh foo
  foo: unknown tool

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/cc-version.sh   | 20 +++++---------------
 scripts/ld-version.sh   | 11 ++++-------
 scripts/tool-version.sh | 27 +++++++++++++++++++++++++++
 3 files changed, 36 insertions(+), 22 deletions(-)
 create mode 100755 scripts/tool-version.sh

diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
index 3f2ee885b116..4772f1ef9cac 100755
--- a/scripts/cc-version.sh
+++ b/scripts/cc-version.sh
@@ -6,18 +6,6 @@
 
 set -e
 
-# When you raise the minimum compiler version, please update
-# Documentation/process/changes.rst as well.
-gcc_min_version=4.9.0
-clang_min_version=10.0.1
-icc_min_version=16.0.3 # temporary
-
-# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
-# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
-if [ "$SRCARCH" = arm64 ]; then
-	gcc_min_version=5.1.0
-fi
-
 # Print the compiler name and some version components.
 get_compiler_info()
 {
@@ -48,18 +36,20 @@ set -- $(get_compiler_info "$@")
 
 name=$1
 
+tool_version=$(dirname $0)/tool-version.sh
+
 case "$name" in
 GCC)
 	version=$2.$3.$4
-	min_version=$gcc_min_version
+	min_version=$($tool_version gcc)
 	;;
 Clang)
 	version=$2.$3.$4
-	min_version=$clang_min_version
+	min_version=$($tool_version llvm)
 	;;
 ICC)
 	version=$(($2 / 100)).$(($2 % 100)).$3
-	min_version=$icc_min_version
+	min_version=$($tool_version icc)
 	;;
 *)
 	echo "$orig_args: unknown compiler" >&2
diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
index a463273509b5..e824f7675693 100755
--- a/scripts/ld-version.sh
+++ b/scripts/ld-version.sh
@@ -6,11 +6,6 @@
 
 set -e
 
-# When you raise the minimum linker version, please update
-# Documentation/process/changes.rst as well.
-bfd_min_version=2.23.0
-lld_min_version=10.0.1
-
 # Convert the version string x.y.z to a canonical 5 or 6-digit form.
 get_canonical_version()
 {
@@ -35,10 +30,12 @@ set -- $("$@" --version)
 IFS=' '
 set -- $1
 
+tool_version=$(dirname $0)/tool-version.sh
+
 if [ "$1" = GNU -a "$2" = ld ]; then
 	shift $(($# - 1))
 	version=$1
-	min_version=$bfd_min_version
+	min_version=$($tool_version binutils)
 	name=BFD
 	disp_name="GNU ld"
 elif [ "$1" = GNU -a "$2" = gold ]; then
@@ -46,7 +43,7 @@ elif [ "$1" = GNU -a "$2" = gold ]; then
 	exit 1
 elif [ "$1" = LLD ]; then
 	version=$2
-	min_version=$lld_min_version
+	min_version=$($tool_version llvm)
 	name=LLD
 	disp_name=LLD
 else
diff --git a/scripts/tool-version.sh b/scripts/tool-version.sh
new file mode 100755
index 000000000000..b4aa27e2c3d3
--- /dev/null
+++ b/scripts/tool-version.sh
@@ -0,0 +1,27 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Print the minimum supported version of the given tool.
+
+set -e
+
+# When you raise the minimum version, please update
+# Documentation/process/changes.rst as well.
+gcc_min_version=4.9.0
+llvm_min_version=10.0.1
+icc_min_version=16.0.3 # temporary
+binutils_min_version=2.23.0
+
+# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
+# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
+if [ "$SRCARCH" = arm64 ]; then
+	gcc_min_version=5.1.0
+fi
+
+eval min_version="\$${1}_min_version"
+if [ -z "$min_version" ]; then
+	echo "$1: unknown tool" >&2
+	exit 1
+fi
+
+echo "$min_version"
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210303183333.46543-2-masahiroy%40kernel.org.
