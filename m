Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBNEZ77WAKGQEDBCLOVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F19D35D0
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:37 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id z205sf3327851wmb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753716; cv=pass;
        d=google.com; s=arc-20160816;
        b=CkT0w4k2TVzh5O45ejYIugSBoLXE6FK61Qasm3vk0BNWc3xM1ZyTBeYmGvS92EkzSF
         x76/fCqpG8JfuBRmYEjyBJTbEIQu4Qh5gGgYsEh0xeNkZixXNhp0AFtPxcdFXoRo2X7v
         2LDwPj65NqtJq7nDw3JsZc7ppFU3+qKHc/aWsKMorcvTuWeTEpjIon7z7WIH5a2qW3IU
         DctB3E4JDN1M7Py1C8ZrhojTycKKh9WWfeA/HF1MWusfw78yqE/9L9LHski+30kMxRet
         6khwGsnj0L/96Prtwu9IGJYKJhY2TLa6evlmeHRwZXOceXpSw6EIkszulHewG8slzcl2
         LS3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=PBoVYzhpfSz0mT8DzHBR4jpeY487JaJ8cBS+Fgct+8w=;
        b=QEOcySoWVhODt41a7bSZ8jfc07F8jrSc17WFTb4f5cdNjWpkC04vqBxBCXP17vDK1g
         wpU33Pd5KWHn4q/MKjfWttmd/vYP+MH6KUTsuh/Eq92tmEHoYlsk1Lanto9na8Dv8Xgp
         bVV8KWqu70BVuc5rQi3RVObLUO3YckbMKNxHrALdPGLmThuGqR9AbgUMd6KoYFFq2Qsy
         lw83oaFnr42t1PPFfh0txJ9p12LpcuRRNRtLb8T09J0gHQrEOJDA35n8tVjRSiKdy+bP
         vSRL/sn5n/sris++xveWcoMjaH33nmvatpeE3rc+Ua0VE5fXZ1xlaxYAe41cEyRmY9YS
         /EJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=oZoFP4EB;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PBoVYzhpfSz0mT8DzHBR4jpeY487JaJ8cBS+Fgct+8w=;
        b=riijjt7qgb0zP5fzt6m4rwk+0bhOS1KEm+AqovKDzBIYggwpa6ANzApZUEX6r1eN4P
         F8d1HOxgQ7weCfI9bveZuF78FzBNrzDXiiV9Vadymeftb7dDObV927fOxh1EN6Imx+eH
         wc/neIJNb8wH5qXBuL+XUqRI3xwHBueDUW85bQA1iAKJAQGGYjQesvvMZjr6MgT8jcZV
         UZqp3SksznpqMTf9sV5nTEjh6xfRMyMdeNOTJ9dTHsQfHzyaJakWMJeUDDLEhaAVt5aQ
         En47SAV4dxwhLHaX/AiU25ZeOSjlZRsE7zQzWl7tLxtmrS0XjyyMFL07tQDv6/Zej8Mi
         ICQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PBoVYzhpfSz0mT8DzHBR4jpeY487JaJ8cBS+Fgct+8w=;
        b=W8T4ZyWrPWUudtKQGnuMpEDmVSZXRcHE8MPNZznqIDvjDMwMl5qC+RFevYHR8qr2se
         T0Z7S6QoFQv1+uhqzZyOIIoPBZfQRBwwz4CExMvWZhL4X857zGHwtNlaPI7bMYPQj3/8
         JMotRwrUUGEIiyhBslUGTw7hPFahTP4CzMsLMeq9rxHjLx721B9Jf6SIA7TMPCW0JNbU
         eRKxSIIEm/XOkMxed8OtTyDj63gc1GVyDLK+SRzVpzdZNNYza3f+uMlvSUF0xSwIxVuT
         SUu4ZNJ7J0AGbenq7QRc+JGBLAtKepfEEW2/vWio0d0y9juXwKNHP1qTol7WRcvdW1qE
         6u+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUqDDVAHi2sf486ImaPVdjRz8pTIABHZTPg9rqYsCh3U72bOZ0u
	yJHaPV+f0Hc//JXL5TWjlyU=
X-Google-Smtp-Source: APXvYqx1anLLN4IjygeBLpiZDh6tRzmrX/DmMnR+3hKUy4pXsKmGdSyDns9zfZnJrWWtUCz64sRslA==
X-Received: by 2002:a5d:6a4e:: with SMTP id t14mr11041195wrw.286.1570753716844;
        Thu, 10 Oct 2019 17:28:36 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cf01:: with SMTP id l1ls2147728wmg.0.gmail; Thu, 10 Oct
 2019 17:28:36 -0700 (PDT)
X-Received: by 2002:a05:600c:28d:: with SMTP id 13mr885249wmk.100.1570753716416;
        Thu, 10 Oct 2019 17:28:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753716; cv=none;
        d=google.com; s=arc-20160816;
        b=aJ4vsMEjeU2n15ZC4p1wVXWSQ9USLCLUoa5nxkfzU+4Xcwrrf7Djy8DtquMZ1vc32H
         yxNR1URa2YvPUMGahotf6OZn4lB+nn1G2DDdwkcutsdbjsF6tNtxBukjw8CwAcSAASZM
         GKrhauBnzsIE92cdkckIeJxq6xhSjCsLt2EQFF3LR6hL+PstImjIrmZU6f2Mjdqb5bfT
         oHpTPsHExprX6SjSTP7FiqCs0MqsmhMyDtjCrrt4nm+5t/WP5dW1gJqDTaQ5+aIAmvxz
         avtap4NBhJDrXwDVBL2RQhZcCXXGYwSVDXl3JOssc+BKqiA01scQIvf3KX3AoIifFUqu
         1wRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=oHm0qgs35bdRmF9F1S/p3tYJstCeeDVx8Vw6XCI5qDc=;
        b=fc72cVGAMAgs+DoqR5W9BFPnEfOiYyJ6zE8YJ918KO9htiy2UB6a8zEdL9rLrn6/la
         Uvc4UdtKy47UtPs5JXRgnow2H3urlsyADzD5YcVgCkAhXGHaL96gs1ehtCbOio+lLsGB
         7PxvBp0vU37u2jVIRNipOINyFas5B7Js0f8LofUb9+k31iP4Vf63Jx3dujWchNPX1g8q
         YFR89kzd1Y0kFYiNDf4CkbUW/qW0/ZrkMwBFtJGnfN3B3i1qhoyoVXNSui2sHsOgD9FF
         qU1ol7HU2+8WpHHrHqyCZv07BSwT7G2QmwL69yNO6cSA6BpDTzWOKidR0yQTDz/vMocr
         U2yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=oZoFP4EB;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id 5si608040wmf.1.2019.10.10.17.28.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id a22so8065806ljd.0
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:36 -0700 (PDT)
X-Received: by 2002:a2e:658f:: with SMTP id e15mr7832403ljf.254.1570753715857;
        Thu, 10 Oct 2019 17:28:35 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:35 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 11/15] libbpf: don't use cxx to test_libpf target
Date: Fri, 11 Oct 2019 03:28:04 +0300
Message-Id: <20191011002808.28206-12-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=oZoFP4EB;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

Add "return 0" in test_libbpf to avoid warn, but also remove spaces at
start of the lines to keep same style and avoid warns while apply.

Acked-by: Andrii Nakryiko <andriin@fb.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-12-ivan.khoronzhuk%40linaro.org.
