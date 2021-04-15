Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAWW36BQMGQETBD6BQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DAABB360349
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 09:28:03 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id b203-20020a1fb2d40000b02901c9714c9241sf1039753vkf.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 00:28:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618471683; cv=pass;
        d=google.com; s=arc-20160816;
        b=mtBQgm0biTxyc1KuIXd1dkMQ9F+rL63JF3nSpVhysiFHt0JqfuggjQMlkMcVK8G+P3
         PiWD3rn0KidxuGMbOmgNw9d0ZCAuOQlDWReyobE5UBLKbNcKuJR3yeQUIywGzDZ5BmZp
         HMnsllbmdFFwzdgRN8GTL6yD6HjLSshrUG92PQa9clCi7ndGIQ0LukYiPkiQ7L/SpgSk
         GoBiKOfCnIyTlGJ5qVQcWf8dMadwYLcFpGWoskjCD0rqQzvDe6x+SPRSlksRh5RNtXVW
         mQtpluTAAmJiZM3K2HHE07vHZxhEyLSeu6e9VGh0cMLWRdvfHzLwtcIjU3ZUhtvBolhe
         l8Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=CICl4g3oIlcIscqgSBKImxbuwJ5jEYKaqLbRZqbLX5I=;
        b=iBJIxhSkwoPmBKblz+Jf9wY2wyF3qUTt0pqdYcKcJjJIqUUHZ1dCwD5iOOrn3vjB8S
         i6jVHj2H6+Egt563QHBwE73nM8VgH9cG+7JMycToOtOe0MHCOrBL6DiAnoQfEMiYHfxs
         19Y8raJhJ1ptlLH1yUz+/CD9xAPCoHkmzCHDgFRI8oYzY4kic8KAsWr+oTjWooNAqbDM
         y+QylBritw6rdDcfTpVmreWYPl8ojeUSO2J/Gz4ZvvSPSwXg61/sSK6fgOV9uAUi5fzj
         RbEVlom1oRb9db/lvBhCh4QdQHh2N2bu1tzjOMHygAmN+mHnLsOqlHLVAVgFEAnNiiI7
         XSdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=N517H+eX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CICl4g3oIlcIscqgSBKImxbuwJ5jEYKaqLbRZqbLX5I=;
        b=KDr/ILnX6VsbyJ/6u3XbwcbjtuGoSU4rb9jHnuSpQniB0e5hTnkfM27QAl/3YSS9Wl
         NjbKJhlRReud6LTY3C1l+aWYtLBQA+Sst+Ez/DbpiUhrgoHNZAesU39EarutVh1RW/BR
         GfBQp8UnRe5tbcxApJGoEV+fko1tKZiYtGSEV5qYtt6+XOFufneK+V6Ig0FfKTNVww9d
         fcVWuO+MUCCtKHN5nOxj8NWGQuQNkx3nVdvoPZ5KTXJzylcQLLcmCvxPeca3kqTlcUB/
         TEEhwscbr9ZmDpyzSiNwD0mfaMgkkNbvpKGgd9DIurpWxpA20g87zuP2hDP9JkdQGSZ0
         Sq2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CICl4g3oIlcIscqgSBKImxbuwJ5jEYKaqLbRZqbLX5I=;
        b=aiVfpoHNRPZEXsZ7smDS0192NTQD2z8h5KK5ZxKSY4tYTWMJA187ovOn8/jBjJayfW
         tXhVGIaU6senTYBvM/YtMbuolIfXOUj/4UF6D10oHv41ZOx4GZSf1WeGgIRu/mvigRmJ
         /78eIi2xN/CHSfhV9Ox+kC7Kdr+LyWhJ4Qx86d4CwyO6YBJSV3aVdllDJrWClGGdC4U/
         7GaghO3vXqiRtoksaTZ1qRLDNnvYSrEi0nPxNHGjAit7y5D9tsh5YIE2cembuR3HQfpu
         5hFTq1kuy1gA5HqZTITPRD0bvJRArSzkwjJMMtnYgcAPSIWbwB1Q0G6lxqXpg9m7/X/Y
         t9XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Z7kQf/PE5hGQH3qav7u9D49mr15PRibyZ+HhofgT5G3yCBvYn
	wGWvvPV0SoCLiK/X6wSoemk=
X-Google-Smtp-Source: ABdhPJwuTc1i307gfrZGi/GDslwKcJ2VME26j9ckhtO4a+/APPMIm4t+Xb7mUp2h+TsNopNX1bkeGw==
X-Received: by 2002:a67:e40b:: with SMTP id d11mr978836vsf.23.1618471682959;
        Thu, 15 Apr 2021 00:28:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2155:: with SMTP id h21ls726837vsg.4.gmail; Thu, 15
 Apr 2021 00:28:02 -0700 (PDT)
X-Received: by 2002:a67:2f90:: with SMTP id v138mr3705vsv.23.1618471682423;
        Thu, 15 Apr 2021 00:28:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618471682; cv=none;
        d=google.com; s=arc-20160816;
        b=o2HkQXWUVg+z58yUy9Q+IlY8z+bUfOAR1AzVNCgBukuqYYd8NW6PUGBSP2/VOrv20a
         0afgBBP8c3Ke15Zg2eLEgoQ8pCY0XCh72g6SvEb733hmwhGGeBWsG+gLIJpLVyZeEh+1
         fqpqH63QIwzBbFyQXhFqsAaTaNc62FHDXhjKEMLRumuaO7fshBpVoUniVLO1kq9ARXU1
         QX9cVAP6mKB/PMnUkrZinCsbAq8HgypeRJQhbj/ANpA5R3SCXayj3Ha7Xbe0+Bsa6NGk
         6uwTreadmUUu3FQWBi8HG6INw0jseT8HDJUwLp0DVLaPuNCqGuiQErA/VwAINuWXeEHA
         IzwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=S3fDVUSMdnf8V+kxnVMGDGkdp8jWRQNGgMv5wUjnHkc=;
        b=Xy1E/XWmahJz9ZQaUMRsCKe11er6045zedRyQ/PNaIUC47xUEYI9qF67U+nRPciRrh
         uQY32B5uBrkFi6e7mqG73SJcJzJ7roqAFaYG9hsuMNlAT1TbFQk4V3R6NOAmsfUlNSR6
         8TK+JB5yFTpr4ac3u2/fu+iqBXxllwXhjcQ4OqHR/Zozqo6T1AegVHs0018PnrQkIOpW
         nbGi0UrOyjXusmuNwfTveNkQgRHOOwwSpVSITwr4LZ9go8EYPnAJr/UVGY2EGTg68W2F
         NDDBWrgZ+oMKjwFmIzzafhPb2hXokUEmbG4X4lt1dYH14k/e3sBhaIUyhWek38wcGNXc
         7Hdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=N517H+eX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id o198si145791vkc.1.2021.04.15.00.28.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 00:28:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 13F7REfK011485;
	Thu, 15 Apr 2021 16:27:15 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 13F7REfK011485
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Janosch Frank <frankja@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Daniel Borkmann <daniel@iogearbox.net>, Harish <harish@linux.ibm.com>,
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
Subject: [PATCH 2/2] tools: do not include scripts/Kbuild.include
Date: Thu, 15 Apr 2021 16:27:00 +0900
Message-Id: <20210415072700.147125-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210415072700.147125-1-masahiroy@kernel.org>
References: <20210415072700.147125-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=N517H+eX;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
in order to do whatever they want to do in their world.

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

Copy what they want there, and stop including scripts/Kbuild.include
from the tool Makefiles.

Link: https://lore.kernel.org/lkml/86dadf33-70f7-a5ac-cb8c-64966d2f45a1@linux.ibm.com/
Fixes: d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Makefile.compiler")
Reported-by: Janosch Frank <frankja@linux.ibm.com>
Reported-by: Christian Borntraeger <borntraeger@de.ibm.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 tools/testing/selftests/bpf/Makefile          |  3 ++-
 tools/testing/selftests/kvm/Makefile          | 12 +++++++++++-
 .../selftests/powerpc/pmu/ebb/Makefile        | 11 ++++++++++-
 tools/thermal/tmon/Makefile                   | 19 +++++++++++++++++--
 4 files changed, 40 insertions(+), 5 deletions(-)

diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests/bpf/Makefile
index 044bfdcf5b74..d872b9f41543 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-include ../../../../scripts/Kbuild.include
 include ../../../scripts/Makefile.arch
 include ../../../scripts/Makefile.include
 
@@ -476,3 +475,5 @@ EXTRA_CLEAN := $(TEST_CUSTOM_PROGS) $(SCRATCH_DIR) $(HOST_SCRATCH_DIR)	\
 	prog_tests/tests.h map_tests/tests.h verifier/tests.h		\
 	feature								\
 	$(addprefix $(OUTPUT)/,*.o *.skel.h no_alu32 bpf_gcc bpf_testmod.ko)
+
+.DELETE_ON_ERROR:
diff --git a/tools/testing/selftests/kvm/Makefile b/tools/testing/selftests/kvm/Makefile
index a6d61f451f88..8b45bc417d83 100644
--- a/tools/testing/selftests/kvm/Makefile
+++ b/tools/testing/selftests/kvm/Makefile
@@ -1,5 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0-only
-include ../../../../scripts/Kbuild.include
+
+TMPOUT = .tmp_$$$$
+
+try-run = $(shell set -e;		\
+	TMP=$(TMPOUT)/tmp;		\
+	mkdir -p $(TMPOUT);		\
+	trap "rm -rf $(TMPOUT)" EXIT;	\
+	if ($(1)) >/dev/null 2>&1;	\
+	then echo "$(2)";		\
+	else echo "$(3)";		\
+	fi)
 
 all:
 
diff --git a/tools/testing/selftests/powerpc/pmu/ebb/Makefile b/tools/testing/selftests/powerpc/pmu/ebb/Makefile
index af3df79d8163..d5d3e869df93 100644
--- a/tools/testing/selftests/powerpc/pmu/ebb/Makefile
+++ b/tools/testing/selftests/powerpc/pmu/ebb/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-include ../../../../../../scripts/Kbuild.include
 
 noarg:
 	$(MAKE) -C ../../
@@ -8,6 +7,16 @@ noarg:
 CFLAGS += -m64
 
 TMPOUT = $(OUTPUT)/TMPDIR/
+
+try-run = $(shell set -e;		\
+	TMP=$(TMPOUT)/tmp;		\
+	mkdir -p $(TMPOUT);		\
+	trap "rm -rf $(TMPOUT)" EXIT;	\
+	if ($(1)) >/dev/null 2>&1;	\
+	then echo "$(2)";		\
+	else echo "$(3)";		\
+	fi)
+
 # Toolchains may build PIE by default which breaks the assembly
 no-pie-option := $(call try-run, echo 'int main() { return 0; }' | \
         $(CC) -Werror $(KBUILD_CPPFLAGS) $(CC_OPTION_CFLAGS) -no-pie -x c - -o "$$TMP", -no-pie)
diff --git a/tools/thermal/tmon/Makefile b/tools/thermal/tmon/Makefile
index 59e417ec3e13..92a683e4866c 100644
--- a/tools/thermal/tmon/Makefile
+++ b/tools/thermal/tmon/Makefile
@@ -1,6 +1,21 @@
 # SPDX-License-Identifier: GPL-2.0
-# We need this for the "cc-option" macro.
-include ../../../scripts/Kbuild.include
+
+TMPOUT = .tmp_$$$$
+
+try-run = $(shell set -e;		\
+	TMP=$(TMPOUT)/tmp;		\
+	mkdir -p $(TMPOUT);		\
+	trap "rm -rf $(TMPOUT)" EXIT;	\
+	if ($(1)) >/dev/null 2>&1;	\
+	then echo "$(2)";		\
+	else echo "$(3)";		\
+	fi)
+
+__cc-option = $(call try-run,\
+	$(1) -Werror $(2) $(3) -c -x c /dev/null -o "$$TMP",$(3),$(4))
+
+cc-option = $(call __cc-option, $(CC),\
+	$(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS),$(1),$(2))
 
 VERSION = 1.0
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415072700.147125-2-masahiroy%40kernel.org.
