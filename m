Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBE4M7HWAKGQEFGZC3EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ABDD19C8
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:55 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id k184sf1580325wmk.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653715; cv=pass;
        d=google.com; s=arc-20160816;
        b=z4iFaOlPZ4yhbjGKRUktmdVGXnpHyPqtmkPygSoWX6YviOslV+gT58Q9HfqK72noyF
         52VoohxqD5dfZqR7QQjYEOY3XIQmRlxA4KSsRUvNmh+q89/e4+4MDK/OOl/tpkruqzpO
         OOwAPkqv19feNNdDgakfGbZ4Hk9ftHZ/NTUd0/NOJtKRMJTRxhH+lt4U51sl4wEPUpvV
         GAXGgJ+pLPDUH82mfJkY6PNYRSS5P1+odjJ51mZ5a/N2TtnY2vGZ9f8eVm4PcQfKzMlj
         Kb0PqgeAJK89bueOrUd//R7120rv1U30fLYLrkmrnOT1OpIXzKMKmHrDEjUoKXLwXp/x
         1B4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=EWHQIbY/Oma7inmSerYK2xDfRPxW0zFXTRGa7TUL4jU=;
        b=UH9+0/CfI2u9NRVKMHaH0Ng/5S0otB8nqBAj6QUcH3CiGjgWiWjinC0GTdAecybrmB
         LtV0P2JoFkqLeoKxezzA7IARkfmUOJqz/McCGDIf+RoHWWhOXZF1r13dhZzI/CU5B1Gm
         Vq9d/SmwzDbUh5PABczaspIWjRu+snq+DNPHr2jNzz1tdfY4gBhLUbJCYzq9lGpnWZ58
         vz/XH27IBayOzxva5T5ZvjKsthY5JtvcvXKRRChP8ZPxNjdlyfhn88DyYkQ7tOQujP0H
         spVqy/gnkLRivj4SivSuAEdAdyOHG4Nfmgv/lIpuFgJU6El3Pa9xlffAfGj5Hm5mvdqr
         leKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=m4lZEO5Q;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EWHQIbY/Oma7inmSerYK2xDfRPxW0zFXTRGa7TUL4jU=;
        b=RpT+XHgc5kmiw14+7lU/6/m0E5P919EcPuTaCp8rgz68EH6VYyEXG4jkHdt0qnI84Y
         qPzDvknIR3sgkAoZqjMkscyh9oaS15J02duqJznEUpN+sBKI5fYP9Y6/UcwBMQx1AS+/
         /X+K3ZR+ZuGODNT4FvTV7tmOrGRHZrDxo9vyxa8Yq2jVMWZ+VwzkdleGc6Dl3c5Mfit6
         y2ScpVR2u3FdCE3N7267xvKI7j/LJkrDl8uGa35Iz367j3Cteasa/CzSQiWqXASz5m87
         4QdrRgpRlvwDccYqzSw9GvkVfKG9ASCvDAF6KPCB+DGJA8rafylLayAlwMLMf92FGkaj
         e9RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EWHQIbY/Oma7inmSerYK2xDfRPxW0zFXTRGa7TUL4jU=;
        b=Ec4p4Lv4sM0zoCQ8zqRohHU87vNgIHOkqqrCKRlvechvKW9eZqkmobkteXW7OZsRer
         DTWNwlXrQNMemHXrgQrezzfr/yulqJnR6iwm9k3yrGDzC0Ox/oMUPrxh1RsIcynn3xfp
         1LQO0/jKLkBJ/igoCse2gckYnWLPVQgejvKXYSkTFc1wlOO9dmlHmsBFA2iTx0T9H6yp
         uMSXgd82+uGnCPcj5f380UnIzBTPKCA9bIaPE3bt2LUsfiWLdfS96BoySOhGq9Dt+8um
         9Qb1KvZToCl/Wzn+qmX3WbaHi88PI82Jv8c7gp76imRChzt1SNlDmp6tBRnt3MM4ov+i
         T2FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUTRh1yn/jBOyLwx8yK5grBCWaGM9UUEPDPWqvPE4l28bFYOAGA
	pfiS9NQ0NoJ854+A6wzn7rY=
X-Google-Smtp-Source: APXvYqzmUiqAFjbMdw9cx3EigtEXUuRhhMvKg0vRpkz1PBNYWC7NRPTelrvQPrAvHb3rG6+M/xOC5Q==
X-Received: by 2002:a5d:558b:: with SMTP id i11mr4580352wrv.166.1570653715648;
        Wed, 09 Oct 2019 13:41:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b7cd:: with SMTP id t13ls585689wre.5.gmail; Wed, 09 Oct
 2019 13:41:55 -0700 (PDT)
X-Received: by 2002:adf:814d:: with SMTP id 71mr4699987wrm.193.1570653715165;
        Wed, 09 Oct 2019 13:41:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653715; cv=none;
        d=google.com; s=arc-20160816;
        b=Tdmot1qJPpTurZ+aHeRy/W4ccSNQuJvJgaB+KTpAZXJcY5DhGWZE1hOZ/NRB81i2N7
         +sD323cg1DhLvkiFl3kvPp2ICAS93MmI+XdwR/pViOh5GNlsLNV70X2fRTYgCHRf4n9G
         USmIXOTUJVkRIxNMVwpX5mMngJLY5kPxMejBFJvo2yRDK/7RFEIOQMdHPU2+yMNwGdsi
         mZrqGuHYlYtt1vLb7r5EZoPbSejQPkXxA5pqliqdnVFAteTmogPB3bZAk51C6o/n8c0W
         FOaLRCU6hl4cuz5ke26Vx2qUES/gssFqhp9kxARvtL6M/i1b1x6Z/QnyQomxBI7IAbjO
         HZAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=TqVgt5uW0tXMG2sk40opbI2NrMbssP1O1eKE+O8MvT0=;
        b=IgotBhyUtD1vz7wJNT4zbvf4nt/5l+1CJTCUjqRA0RAB61K8rWi8RCMkKkYtdeZluZ
         1XOUzNxLsK2GongAczoEN89QO4aXVzMkJc2yWY12o1pbPPYYeUv/5Z87Xlp8S7N/j5EO
         otJes08IxHRtOjjqoeamsA/I+JBZ7ktv9Raxp/qm4zjtqhj6prX3XjX3fkImQvsEfLSu
         e/4pcWAsr/EMit8kPhjv7yihk4EBPmpxmXmartXL+oNaO0/PDpSg7r30/jVslrqIok1h
         yh/5CPeD6FwO335QwE85h6AWI2bFKryRh7RTXo0+RQXvkXLNZEl/UCFvSRf22VmiFweC
         1MSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=m4lZEO5Q;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id n16si211749wrs.4.2019.10.09.13.41.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id m13so3837756ljj.11
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:55 -0700 (PDT)
X-Received: by 2002:a2e:964c:: with SMTP id z12mr3473099ljh.79.1570653714859;
        Wed, 09 Oct 2019 13:41:54 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:54 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v4 bpf-next 11/15] libbpf: don't use cxx to test_libpf target
Date: Wed,  9 Oct 2019 23:41:30 +0300
Message-Id: <20191009204134.26960-12-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=m4lZEO5Q;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

No need to use C++ for test_libbpf target when libbpf is on C and it
can be tested with C, after this change the CXXFLAGS in makefiles can
be avoided, at least in bpf samples, when sysroot is used, passing
same C/LDFLAGS as for lib.

Add "return 0" in test_libbpf to void warn, but also remove spaces at
start of the lines to keep same style and avoid warns while apply.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 tools/lib/bpf/Makefile                         | 18 +++++-------------
 .../lib/bpf/{test_libbpf.cpp => test_libbpf.c} | 14 ++++++++------
 2 files changed, 13 insertions(+), 19 deletions(-)
 rename tools/lib/bpf/{test_libbpf.cpp => test_libbpf.c} (61%)

diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
index 1270955e4845..46280b5ad48d 100644
--- a/tools/lib/bpf/Makefile
+++ b/tools/lib/bpf/Makefile
@@ -52,7 +52,7 @@ ifndef VERBOSE
 endif
 
 FEATURE_USER = .libbpf
-FEATURE_TESTS = libelf libelf-mmap bpf reallocarray cxx
+FEATURE_TESTS = libelf libelf-mmap bpf reallocarray
 FEATURE_DISPLAY = libelf bpf
 
 INCLUDES = -I. -I$(srctree)/tools/include -I$(srctree)/tools/arch/$(ARCH)/include/uapi -I$(srctree)/tools/include/uapi
@@ -142,15 +142,7 @@ GLOBAL_SYM_COUNT = $(shell readelf -s --wide $(BPF_IN) | \
 VERSIONED_SYM_COUNT = $(shell readelf -s --wide $(OUTPUT)libbpf.so | \
 			      grep -Eo '[^ ]+@LIBBPF_' | cut -d@ -f1 | sort -u | wc -l)
 
-CMD_TARGETS = $(LIB_TARGET) $(PC_FILE)
-
-CXX_TEST_TARGET = $(OUTPUT)test_libbpf
-
-ifeq ($(feature-cxx), 1)
-	CMD_TARGETS += $(CXX_TEST_TARGET)
-endif
-
-TARGETS = $(CMD_TARGETS)
+CMD_TARGETS = $(LIB_TARGET) $(PC_FILE) $(OUTPUT)test_libbpf
 
 all: fixdep
 	$(Q)$(MAKE) all_cmd
@@ -190,8 +182,8 @@ $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
 $(OUTPUT)libbpf.a: $(BPF_IN)
 	$(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
 
-$(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
-	$(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
+$(OUTPUT)test_libbpf: test_libbpf.c $(OUTPUT)libbpf.a
+	$(QUIET_LINK)$(CC) $(INCLUDES) $^ -lelf -o $@
 
 $(OUTPUT)libbpf.pc:
 	$(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
@@ -266,7 +258,7 @@ config-clean:
 	$(Q)$(MAKE) -C $(srctree)/tools/build/feature/ clean >/dev/null
 
 clean:
-	$(call QUIET_CLEAN, libbpf) $(RM) $(TARGETS) $(CXX_TEST_TARGET) \
+	$(call QUIET_CLEAN, libbpf) $(RM) $(CMD_TARGETS) \
 		*.o *~ *.a *.so *.so.$(LIBBPF_MAJOR_VERSION) .*.d .*.cmd \
 		*.pc LIBBPF-CFLAGS bpf_helper_defs.h
 	$(call QUIET_CLEAN, core-gen) $(RM) $(OUTPUT)FEATURE-DUMP.libbpf
diff --git a/tools/lib/bpf/test_libbpf.cpp b/tools/lib/bpf/test_libbpf.c
similarity index 61%
rename from tools/lib/bpf/test_libbpf.cpp
rename to tools/lib/bpf/test_libbpf.c
index fc134873bb6d..f0eb2727b766 100644
--- a/tools/lib/bpf/test_libbpf.cpp
+++ b/tools/lib/bpf/test_libbpf.c
@@ -7,12 +7,14 @@
 
 int main(int argc, char *argv[])
 {
-    /* libbpf.h */
-    libbpf_set_print(NULL);
+	/* libbpf.h */
+	libbpf_set_print(NULL);
 
-    /* bpf.h */
-    bpf_prog_get_fd_by_id(0);
+	/* bpf.h */
+	bpf_prog_get_fd_by_id(0);
 
-    /* btf.h */
-    btf__new(NULL, 0);
+	/* btf.h */
+	btf__new(NULL, 0);
+
+	return 0;
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-12-ivan.khoronzhuk%40linaro.org.
