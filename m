Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOUV42BQMGQESXBA6RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EF6362066
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:01:47 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id q2-20020a6552420000b02901f9b22f2a79sf2926052pgp.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 06:01:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618578106; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sl561g8fN5R++r725+8WvKf9uzdBr5Ali9jDuvhzfbVB4V5oSN8bWY0rjB2A3ygGp/
         ILAVHuETgJhW+rjN9hbBmaCXzmsIm0zShgWqyC30Eg3CnQHOKyF4Ji8MtfZG07uR7uI6
         ZZl9KOxspzvh4jmrjk7ZZsqI7XJyHIOylBhsF6MawQ5TdZ/uHoEXqupBkZaVJoKx+ukb
         JvFDsE7jvyb2fNxDimZ3C/WEdg2fuCQnAwRUcBZHbAwylgJIm2SNfsFx+aQOdopRr0x9
         XoxO7DzozNhSbeJPzuqSE0k9qFW8fu9RjuNoXmvfalxwmwmxAwYGBStS4wYitMP/i5FN
         V1nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=QIlcFGgpdK3tfphJ0H6v/FQdq6CYg3cxKbWuVn5/Wl4=;
        b=xWsCP8FZKZifkFyhTxEvihSa5p+TeOG0+5w7DTfAGGe2LexXXCYCw2xIFlnRMwp4QZ
         UYfb5JclIjoP780DnD4UJUgciu3t3BPGZpkahyf5Bv0K9tM/FDPe0gK6EIBrGgzR9VZY
         LtFj3oQw0tqZb/i4uCCEEylZq4HKxXVO8nkbQQd2zIbq5El17brZPKd7BCQbiAIaTUof
         u2tIsncf0ZpKROq93Yw2igp/ODyXYiDlDja7/M1ZwZ/Qmm5Trwjh+g1NzMQ6aRALvaGZ
         4newsimvLMhZxhLLadXXP7eM2lSU4xpUGdss4X3fcL17SqM/+NAvbLGuC8IwZFAOVFGL
         BQ1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=cohJ7HYO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QIlcFGgpdK3tfphJ0H6v/FQdq6CYg3cxKbWuVn5/Wl4=;
        b=qm9kzILfEpOk8Wi1OhRRbrclvs0eCAgtmkCIuay4IiWRniATqjNgWmZkF64UsDIeeR
         fzt18m9/aY5xA3OplNFg/t+HDWFaR2FZ6TyTXPA+Ze3xTsyaG/zT3uMH8mFpir5vOwld
         nQA7+20w9f35gXKxATdSutXz8MD4di1iqDJxa/XOtjgI3Ml0nqN+JYhAP1UmOzlFr2Tv
         W3ZRbKqtHCF/hE3AGWcPqmilSwIGQGCZBOVnV0SVIolZtO26EDb+x2Sgtzynq5AnudBu
         1ZITu2eBgvN66Rw3xIhgnBW5HqKfhHDePFSoHCVBWrrJ3Ho70mtl7tjq1FTcJhKA7zo4
         sxbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QIlcFGgpdK3tfphJ0H6v/FQdq6CYg3cxKbWuVn5/Wl4=;
        b=NR4pDErNIbq/HIdpCjp4k3831i6A1lsnqYcNu6f3/+DE9pCsqhPp1PJ7S2Ss5y1JPy
         9BM5tAdwxekBdkmlG+RsSYEsS9j6R4NcVB1N1g9ldAMUms5xVARs7DeSlOPEdTdmJ1v8
         6bcwOqz8jtMa73+2sTGddqNusy5XuJuE1Ft5KT4xC7gAUmXr4mm33afDIpX4Ar+Rs8uw
         TLCa5fv7NzROg7VW0UZQPioWTWmLm3RV9EHBCAkJpQG4+N6pGo16qFZDWTlIEL0rmUK7
         I1i8kyDiSPyrvDnEyAAKoRy5DP/0ZziQQgdPP6CENMAjofCamH/AU979/feX57N9ev3r
         NqKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301x1pzmQpvalFM2/gt1x5DCRZGjmB4Jh6nhUlCS6YNKWurWcLd
	btxz5S1T0lXy0nc34BN+HvU=
X-Google-Smtp-Source: ABdhPJw7F2UVZ7S5PldvzKN+Uat07XHxpmehlMq07HuZC2kB25rYI9NESxvyC+TYUFfl8DZ7ytFcXg==
X-Received: by 2002:a17:90a:314:: with SMTP id 20mr9886944pje.72.1618578106475;
        Fri, 16 Apr 2021 06:01:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls5077002pll.4.gmail; Fri, 16
 Apr 2021 06:01:46 -0700 (PDT)
X-Received: by 2002:a17:902:ed52:b029:ec:824a:404a with SMTP id y18-20020a170902ed52b02900ec824a404amr1027089plb.73.1618578105980;
        Fri, 16 Apr 2021 06:01:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618578105; cv=none;
        d=google.com; s=arc-20160816;
        b=sIrEvyYIUPokkZPAHThCnyGuedFYEdPbIZYOmo6dt+tQ5VA8yb5MlfY6THnBAhTiTt
         euM6TKnK3hJWkZz4z+i1xhMeTTckeNo+o6ARpe0iOTcnFuF7OUaJAEWN1a18rBY+IXv7
         w127bUawGvHa8kzhRdb6xAdu3IEnzzw1ANyeHLtQYn7GWYC1yFg9l+aoUnD64G8lwZul
         wgzxo1ZIM1TupNx+VdvR9wYuxf7kK8B4EGSeUqQ9aMuGEjOawAZLqgFtGml4I2QaxyIs
         +f0M7P6UhGnFNCwOytVfdGS+fpq+YD9M8442Z/AmzBwBxYilbnl5XkV01omgAGji/gtR
         0kFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=Bj3vmQYuw6AVeyGMQICNThf6rcoOcN89RQenb/sBZqc=;
        b=YrB0vXKDqNUnmtl3mdsDDmdKpH9TgHm8SYjxDxVdlZaFMFA1coes6k0P0iNPkhb3NY
         s53ZvO1iGmjXY4fKDG5zurSgv4aBwxPSRmFTxKNP7E+kTIJLjc7oJi/U5Seo80QE8scQ
         Lz5kNbrwZcJDPNoXgvfIjNFvHTJKPtN5VPWufbXuj4G1dIeHybzCdSB3zPxZs6JYi/Cd
         y5qfDkCA8c2i2Fo1TPynXiKm6U9S93/rLfYtIi1/Da7vgcxlb6Yf65kjTrLSyFB/BnAs
         67074DgHCeH7Z78Cwu0hOSaglunSWhm/DWZcChBQzbdDWKGw6xmLP5ZdG1736425DAdd
         Eh8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=cohJ7HYO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id 131si354513pfa.2.2021.04.16.06.01.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 06:01:45 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 13GD0vCC002141;
	Fri, 16 Apr 2021 22:00:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 13GD0vCC002141
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Janosch Frank <frankja@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Paolo Bonzini <pbonzini@redhat.com>, Paul Mackerras <paulus@samba.org>,
        Shuah Khan <shuah@kernel.org>, Song Liu <songliubraving@fb.com>,
        Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
        clang-built-linux@googlegroups.com, kvm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, netdev@vger.kernel.org
Subject: [PATCH v2] tools: do not include scripts/Kbuild.include
Date: Fri, 16 Apr 2021 22:00:51 +0900
Message-Id: <20210416130051.239782-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=cohJ7HYO;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Since commit d9f4ff50d2aa ("kbuild: spilt cc-option and friends to
scripts/Makefile.compiler"), some kselftests fail to build.

The tools/ directory opted out Kbuild, and went in a different
direction. They copy any kind of files to the tools/ directory
in order to do whatever they want in their world.

tools/build/Build.include mimics scripts/Kbuild.include, but some
tool Makefiles included the Kbuild one to import a feature that is
missing in tools/build/Build.include:

 - Commit ec04aa3ae87b ("tools/thermal: tmon: use "-fstack-protector"
   only if supported") included scripts/Kbuild.include from
   tools/thermal/tmon/Makefile to import the cc-option macro.

 - Commit c2390f16fc5b ("selftests: kvm: fix for compilers that do
   not support -no-pie") included scripts/Kbuild.include from
   tools/testing/selftests/kvm/Makefile to import the try-run macro.

 - Commit 9cae4ace80ef ("selftests/bpf: do not ignore clang
   failures") included scripts/Kbuild.include from
   tools/testing/selftests/bpf/Makefile to import the .DELETE_ON_ERROR
   target.

 - Commit 0695f8bca93e ("selftests/powerpc: Handle Makefile for
   unrecognized option") included scripts/Kbuild.include from
   tools/testing/selftests/powerpc/pmu/ebb/Makefile to import the
   try-run macro.

Copy what they need into tools/build/Build.include, and make them
include it instead of scripts/Kbuild.include.

Link: https://lore.kernel.org/lkml/86dadf33-70f7-a5ac-cb8c-64966d2f45a1@linux.ibm.com/
Fixes: d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Makefile.compiler")
Reported-by: Janosch Frank <frankja@linux.ibm.com>
Reported-by: Christian Borntraeger <borntraeger@de.ibm.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - copy macros to tools/build/BUild.include

 tools/build/Build.include                     | 24 +++++++++++++++++++
 tools/testing/selftests/bpf/Makefile          |  2 +-
 tools/testing/selftests/kvm/Makefile          |  2 +-
 .../selftests/powerpc/pmu/ebb/Makefile        |  2 +-
 tools/thermal/tmon/Makefile                   |  2 +-
 5 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/tools/build/Build.include b/tools/build/Build.include
index 585486e40995..2cf3b1bde86e 100644
--- a/tools/build/Build.include
+++ b/tools/build/Build.include
@@ -100,3 +100,27 @@ cxx_flags = -Wp,-MD,$(depfile) -Wp,-MT,$@ $(CXXFLAGS) -D"BUILD_STR(s)=\#s" $(CXX
 ## HOSTCC C flags
 
 host_c_flags = -Wp,-MD,$(depfile) -Wp,-MT,$@ $(KBUILD_HOSTCFLAGS) -D"BUILD_STR(s)=\#s" $(HOSTCFLAGS_$(basetarget).o) $(HOSTCFLAGS_$(obj))
+
+# output directory for tests below
+TMPOUT = .tmp_$$$$
+
+# try-run
+# Usage: option = $(call try-run, $(CC)...-o "$$TMP",option-ok,otherwise)
+# Exit code chooses option. "$$TMP" serves as a temporary file and is
+# automatically cleaned up.
+try-run = $(shell set -e;		\
+	TMP=$(TMPOUT)/tmp;		\
+	mkdir -p $(TMPOUT);		\
+	trap "rm -rf $(TMPOUT)" EXIT;	\
+	if ($(1)) >/dev/null 2>&1;	\
+	then echo "$(2)";		\
+	else echo "$(3)";		\
+	fi)
+
+# cc-option
+# Usage: cflags-y += $(call cc-option,-march=winchip-c6,-march=i586)
+cc-option = $(call try-run, \
+	$(CC) -Werror $(1) -c -x c /dev/null -o "$$TMP",$(1),$(2))
+
+# delete partially updated (i.e. corrupted) files on error
+.DELETE_ON_ERROR:
diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests/bpf/Makefile
index 044bfdcf5b74..17a5cdf48d37 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-include ../../../../scripts/Kbuild.include
+include ../../../build/Build.include
 include ../../../scripts/Makefile.arch
 include ../../../scripts/Makefile.include
 
diff --git a/tools/testing/selftests/kvm/Makefile b/tools/testing/selftests/kvm/Makefile
index a6d61f451f88..5ef141f265bd 100644
--- a/tools/testing/selftests/kvm/Makefile
+++ b/tools/testing/selftests/kvm/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
-include ../../../../scripts/Kbuild.include
+include ../../../build/Build.include
 
 all:
 
diff --git a/tools/testing/selftests/powerpc/pmu/ebb/Makefile b/tools/testing/selftests/powerpc/pmu/ebb/Makefile
index af3df79d8163..c5ecb4634094 100644
--- a/tools/testing/selftests/powerpc/pmu/ebb/Makefile
+++ b/tools/testing/selftests/powerpc/pmu/ebb/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-include ../../../../../../scripts/Kbuild.include
+include ../../../../../build/Build.include
 
 noarg:
 	$(MAKE) -C ../../
diff --git a/tools/thermal/tmon/Makefile b/tools/thermal/tmon/Makefile
index 59e417ec3e13..9db867df7679 100644
--- a/tools/thermal/tmon/Makefile
+++ b/tools/thermal/tmon/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 # We need this for the "cc-option" macro.
-include ../../../scripts/Kbuild.include
+include ../../build/Build.include
 
 VERSION = 1.0
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416130051.239782-1-masahiroy%40kernel.org.
