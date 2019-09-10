Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBOX23XVQKGQEVTJR2WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B65AE857
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:50 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id t185sf1157057wmg.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111930; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZnFvBvCSY7Hz0xXSvQHstAznd7PtvflpL3KMIrumHaWcc1elW+AUF+t5IdlRMvrJhO
         KBqnSrZihsfgxk7AFUL/ugf/Hn609rf7aAhRBkIYq/J2+68UwJ1KE7yUJG8LNNcK2rsA
         5bEfMJM4jkhtEIxc0ZMfX4b07Xfp3d6Qe1iyS4eZckY3GXFUos0QhOTRXCZnY8MUabkC
         gREgfIly9/PVEyGD1gP+rF5Qb3Tq4W3UNrjE584GCn4QMHpOjAFdzn1fWRMcbMsfcPiN
         E5QogXANB6DzGNICN3d3tFnGnHvKZyE9EiO9ySxUeRzft3VbCfsA4qP/nQh4h81dVR5K
         TAPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=z2k+EiBq75cS9GRUsJvd+FCz4URhqz08EuS0olS8RN4=;
        b=FP+3k19HlBdFkbhdh/P3iXPxKeCYMwJ71ACz8ZvM95IQRRxuamDvoi9C2gMXfNhUs2
         RP3UZC5qWUg67MdbVKomcbwbxrNsH9dP6k83M1IaPG0F2goqwhpbIqxG67Kz2GWpyM/W
         o16IJGJcb98b1m4El9P3YD+bnlmOITzBMp7mbt7gEcMI40U/2m7JGr+EUh5wJvxlf9g1
         chHOxpTZdm0Z2XUEPgVuNISarskxDTVfTbk3I9eLyVU2/cmKA95LVoOIB8uPZhd21299
         rlZPW+jUJxf0/xpWP4idy3J4eaYhni4DidybHljRev9RtM2DHg5YDq6a7lJxfWsAyus6
         BZdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FhMAYukP;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z2k+EiBq75cS9GRUsJvd+FCz4URhqz08EuS0olS8RN4=;
        b=nswai3ryDEnT1lDi2qVJGs8WrHyJzuzSJ74oiNAxBrTqDjldeg+Cl/zhQvYdy0x1lH
         g1n07dSnqXg46Y+sNWG7qDbTXVh/y+rf/FF+0RprooovRME9CisL9xGxinXRo6tUz5MH
         DPihPyPRbRRACaP4w5ryT75s6a4xS52/5Pyl2wcmLz0maYCZYQVnMFY60LxXELRkhFQ2
         bPsCFOp+hXH+/0dMYnv3rdkwgXMo+iBRta1eKAbhduYqtHCy8bp1YFAUCjw2PnudckX6
         p7t6c6iGJkBdHWu77dL0ycclMTwDOMsRHYj+EYrBPyHQNAFngVITh+lQxpRVZBGle4Rj
         KYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z2k+EiBq75cS9GRUsJvd+FCz4URhqz08EuS0olS8RN4=;
        b=jTMW2o48yIpj9PYWa8SJdCdNA+kS7zRvcoNxuOHVTTSMkJjakWf0SSr7X9svvy1X3E
         KrSAgbm704um3s952bPneG5w7JhYHbxRVsMXQj8mecgkKRvewAjgsDP+mMNygHSLReh9
         w/TV9tzUdkBlohPIjBnQ/W46MUuaaqUWBLPY0ynWBexZjvxgmox4M9cBrlPpXoD7Zzri
         ZpB6lWgrirA7DjYP/TVb1eh+gnQ88Cs/O5G+x1HcKjlyNfZeSNhOeFOmw55qnm4Zoqn9
         L6UAloOZry0zxxhIS4t9J87FTJH5DKStx0gnhbC4/mJXweGFhApd1jEpPpiUGV2Y5sPO
         8dfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUtNSm3RHA/ldLXquiZmPrlX1smmTpw8Y9iHv5yXDzuQ+9DDnIq
	tD6wmXH8/+DKT17LGQm16rA=
X-Google-Smtp-Source: APXvYqyLZ63jXqcD1+xu2o86dl11uCKJDEi1ZmApbJ5EEVkKyKQ/fFylklC8bcrmJEJAHQjnz0eOWw==
X-Received: by 2002:adf:a350:: with SMTP id d16mr24692404wrb.326.1568111930684;
        Tue, 10 Sep 2019 03:38:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3c4:: with SMTP id g4ls5193615wrp.4.gmail; Tue, 10 Sep
 2019 03:38:50 -0700 (PDT)
X-Received: by 2002:adf:dd02:: with SMTP id a2mr25793769wrm.15.1568111930414;
        Tue, 10 Sep 2019 03:38:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111930; cv=none;
        d=google.com; s=arc-20160816;
        b=Uz7VcIJTHanUqFVp8w7/CVqzX86JJzbRYuixrQoR3eXS1EJPLDZYC4aPzli2aF9OhI
         tP/2sGlFBWdnut78AkzPPaZjxboT/IbKA0hKMdyfDO6xbHpWHE7+kOjmfpG0XjbBAgid
         D86Hdy87AlEK9p4UcmTfOBVW7tGE7SS5RLE1OwPyzLarsbeqwc6GMh2vjtLKPZscDK84
         HSErkcWloEgklU7xon13+pEFopfRROnzKM2xQKLimR/snDC/lfeTwsYugY1/yaAZh4u2
         oEVuSWf8oqyNxg2/pkoDhMXMk94oGvqWIheJQu1GmX8rESi4dSbMHXKHcKwpS45xO9jo
         Sizw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=DyCC3oN5QH71JUakHHjEAPConBRmS2tSFKyztM41paE=;
        b=rZrd3kXEQBfKhGK0SqHazUO6//nUbuD21t7ePV+jDz/TOUh2yW5c6O1F/keSWXPcAJ
         cJvQaZ2Y4MHO03+yLCaCXWzr5SiAxICqkryZQlVDOAZONC8fbLLIkP51kJcM75e4d2rI
         gwTvmCDS9PaKY4fs8PMcbeYrEvPpa8A/pN73U3MOdkSJ4vK7bJwt4Lfjy0Tk8LCL+93n
         iQOlTozOl3hMKJ9o2ZcOQAXMjsB7A2QgC7Kap6KNVYg4fcktbe0rqVeTWnOlDLAuQzVu
         rVZmL7z4wc4dP9grtH6jB/MmvkgKPe4aJDYyKkpK4RPQQx8FZVrYqUBM7iCnfTfgU0ov
         1tGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FhMAYukP;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id m20si107856wmg.2.2019.09.10.03.38.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id e17so15856343ljf.13
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:50 -0700 (PDT)
X-Received: by 2002:a2e:88c6:: with SMTP id a6mr19550313ljk.39.1568111929860;
        Tue, 10 Sep 2019 03:38:49 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:49 -0700 (PDT)
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
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH bpf-next 10/11] libbpf: makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf targets
Date: Tue, 10 Sep 2019 13:38:29 +0300
Message-Id: <20190910103830.20794-11-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=FhMAYukP;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

In case of LDFLAGS and EXTRA_CC/CXX flags there is no way to pass them
correctly to build command, for instance when --sysroot is used or
external libraries are used, like -lelf, wich can be absent in
toolchain. This is used for samples/bpf cross-compiling allowing to
get elf lib from sysroot.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile   |  8 +++++++-
 tools/lib/bpf/Makefile | 11 ++++++++---
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 79c9aa41832e..4edc5232cfc1 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -186,6 +186,10 @@ ccflags-y += -I$(srctree)/tools/perf
 ccflags-y += $(D_OPTIONS)
 ccflags-y += -Wall
 ccflags-y += -fomit-frame-pointer
+
+EXTRA_CXXFLAGS := $(ccflags-y)
+
+# options not valid for C++
 ccflags-y += -Wmissing-prototypes
 ccflags-y += -Wstrict-prototypes
 
@@ -252,7 +256,9 @@ clean:
 
 $(LIBBPF): FORCE
 # Fix up variables inherited from Kbuild that tools/ build system won't like
-	$(MAKE) -C $(dir $@) RM='rm -rf' LDFLAGS= srctree=$(BPF_SAMPLES_PATH)/../../ O=
+	$(MAKE) -C $(dir $@) RM='rm -rf' EXTRA_CFLAGS="$(PROGS_CFLAGS)" \
+		EXTRA_CXXFLAGS="$(EXTRA_CXXFLAGS)" LDFLAGS=$(PROGS_LDFLAGS) \
+		srctree=$(BPF_SAMPLES_PATH)/../../ O=
 
 $(obj)/syscall_nrs.h:	$(obj)/syscall_nrs.s FORCE
 	$(call filechk,offsets,__SYSCALL_NRS_H__)
diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
index c6f94cffe06e..bccfa556ef4e 100644
--- a/tools/lib/bpf/Makefile
+++ b/tools/lib/bpf/Makefile
@@ -94,6 +94,10 @@ else
   CFLAGS := -g -Wall
 endif
 
+ifdef EXTRA_CXXFLAGS
+  CXXFLAGS := $(EXTRA_CXXFLAGS)
+endif
+
 ifeq ($(feature-libelf-mmap), 1)
   override CFLAGS += -DHAVE_LIBELF_MMAP_SUPPORT
 endif
@@ -176,8 +180,9 @@ $(BPF_IN): force elfdep bpfdep
 $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
 
 $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
-	$(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
-				    -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
+	$(QUIET_LINK)$(CC) $(LDFLAGS) \
+		--shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
+		-Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
 	@ln -sf $(@F) $(OUTPUT)libbpf.so
 	@ln -sf $(@F) $(OUTPUT)libbpf.so.$(LIBBPF_MAJOR_VERSION)
 
@@ -185,7 +190,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
 	$(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
 
 $(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
-	$(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
+	$(QUIET_LINK)$(CXX) $(CXXFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@
 
 $(OUTPUT)libbpf.pc:
 	$(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-11-ivan.khoronzhuk%40linaro.org.
