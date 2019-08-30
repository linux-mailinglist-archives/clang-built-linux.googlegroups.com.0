Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBZXFUHVQKGQEGM6LDPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B0BA2BB2
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:46 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id r1sf2401079wmr.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126246; cv=pass;
        d=google.com; s=arc-20160816;
        b=E2GL+gix8FcWa0a9hMFuu7ggLJiEWC2LClk6Wd01AjMsgOuwoJQQcTCaVvpJmNeqg6
         Zb7RSMi/6jjNJvYRQNzWLa6eGadbf7aOW2YI8osMhG0u4OsGatM16c1zc4pDT5+Pr7yP
         fIBU2O3oL4EE8cEqRb26n8vsLiueQEuDt/Qx7ScSjvpgyza917671j1iB+4cZjYQhI8b
         o4rsQKpPLnzmsXyJXJf9gdR8oX+EoOiFquSCfbIVaBgjRrFihyYmjftPDB0yRmLqD7Yi
         Wl9Je7aAariPumYfqkjSpMqu00bunFoa02Eah1ftUmnbbMp2dCEI8l72A2Ev1ca0seJ4
         ImVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=kdu1fTaiLJ+K1mVHon6p2iCvyA27SFLyNkYuzDD/nLI=;
        b=0sCl+K/io9zlZo3s9yPDW0n/OOIzB7S1XEechifipDUcZ5s6IibhBoUGkoeyQMPd3q
         VC9QvU+U2quEe45vKV8lKxevnHZpuIvdYeGhzMIVXbhdvSd4Kjlaie4/JaOPB6rBjRk5
         IDwbx6pA/VhVfvArRj2vooJ++qNXcZrDdoFa6hfHWdAWJEYekrVz8e0fybWXgBBRpd7n
         inNWAgRyCJzP1O6ke3J+j4RyCzaMIdUzrdoI2o2eDQ/XDj6eauyv8j0hIElTOasYs7S1
         s+J4Jd/+ElKKDEMDDWZHCdgRFczmThgk6KDJij6dKjdr3J2LpX4f+sl2UYJi18fr8vFq
         RILA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=biPM7KPd;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kdu1fTaiLJ+K1mVHon6p2iCvyA27SFLyNkYuzDD/nLI=;
        b=nr60u+9EKcB/UQuFPC1rugPRQZvXMyhBl6EFpgFV8EZRRVeFUdr4soc3FZS6bA8x1D
         +XYPb6dwdObIQJO8Zx3JiLvNF/BSpnNqfFNIIs39cHhbT32tsBntooVfKu1u9DIiigtr
         zFLAVUtBUnXRaym0YE0Z6B3cbYw0gi0vrBB0GdCrsunCUmt82hdcl01uMpEzuJatAVuo
         gU/6IV+t/+wYELqJTLPO+tn+XAFHs+uIRZc48r7jcfGO6kLDz/9+RrCVLmoBjw54VwQ5
         5AVmg6Aq3hqxS08wJvCCNRRC2StS/lk2gJQeaiQqlyWGy5Zr9rXmm5W+sizyzPl7VExZ
         28Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kdu1fTaiLJ+K1mVHon6p2iCvyA27SFLyNkYuzDD/nLI=;
        b=YmiGECp5TpHI74R8+bM2/4322oq3t5nnPnLomhQcTvkjwuMRuqpqBrUaZ1BbBlDGlb
         Yjxjm/Sp+NSFiXC79VkTAJ0ykzgePJZnaHOnjy3nVNWM5l0Y6UqTgcoSluHlPLLQVlTG
         zlLHMU2unuwu0AFQpE7354NzhOtzD2HUAtFviolSu454m56skhvAFIaQSrWoRiPuWi87
         BsXuUe24/oIecZ9pD+ZF+vbmnH8uEfZybkTlve3kWVI6MFibRgcIIe6dAZzC2pA3WFY/
         M/MlFNRH0+86vmzRJv2+6FFBrAW9Mcgo5R97E69LDy5/GbIiED68q1DskhJaccW8P9P/
         zABw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUFqzvQjo0RjPg97bM8Kn2KyJbwCG7BIje/pFWoxb4H7FDPNeLn
	5HxUuBIAw530XSBg4B3f6z8=
X-Google-Smtp-Source: APXvYqx4FTK9jxM3DkmDicN1jHFAKkFYFbD6RhW85NFGkNE6aapZhzqrTEkvBETrzAdfB3NRpv39Bg==
X-Received: by 2002:a7b:c148:: with SMTP id z8mr15366150wmi.168.1567126246323;
        Thu, 29 Aug 2019 17:50:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9321:: with SMTP id 30ls1276019wro.1.gmail; Thu, 29 Aug
 2019 17:50:45 -0700 (PDT)
X-Received: by 2002:adf:fac1:: with SMTP id a1mr15606366wrs.56.1567126245952;
        Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126245; cv=none;
        d=google.com; s=arc-20160816;
        b=J/vbeVAMXaBoX0qasG4BB9MlkDqvYHDbZFD4XiYLicYseDJPBc4uWq1UKspwN1N4WO
         jxwJ+BaiTbwQtjy5brSVsDbUIHI1ReEYPtXzaOUwD6bNuBwz+FipAy8R5iF7ozkkTHB5
         1ehOzsa1qVFYKvWpWDKe1xgT9sLClJ+g/HTyeWVLERSUHKLUQFpINpZhreq1LlTalZNF
         nb1nC3rFas+SH246GywHlJS+XwCpngxUKT9Jedemby+1MihYUVJ2bqvqrQErQKrBYVEP
         pe2eXqKlJx/rHFraidJekyn35aAYkDJIcCL4cYDw+8VXsgFVd6ucQdc/LAAodTL12WMb
         Ifqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=baF6/BEW5KEVo2LOFkZZTRTkQs3Veu82MyQ6XaftpOU=;
        b=UoaqijNZGQxWcIbn0eIxDger0Sp7BABby3bYDbAknEdkKP1X6Dv78C9s+YVfOjs+La
         qUEVdNOWlc/QLa/j/ADJNHm3IiJYFV+VrgCduKJCbyDF3mQB544btz55zm7/1TYGUgwX
         1MEuzeXD62fKSkCzZHGdIOIzTkUnfIgbYL/EAY0TSDR6A00aYXOOPu9XZ92fPDOJJDzY
         o/4LE0bNhzY0JouiFD2fO75r/33QEnTw+D1fxQiLrxVNDHDzPtqfw+qMwGdDxAWs9Y3d
         LLFY+xDUEn71bTap3EEQPr2yxJGXIDYbCTXj+EjYGJYvPnC/YtQWAG4nDUvYJLjQsdoI
         i+6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=biPM7KPd;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id b15si380484wmg.1.2019.08.29.17.50.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id t14so4834185lji.4
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
X-Received: by 2002:a2e:900c:: with SMTP id h12mr6901426ljg.151.1567126245707;
        Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 03/10] libbpf: Makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf targets
Date: Fri, 30 Aug 2019 03:50:30 +0300
Message-Id: <20190830005037.24004-4-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=biPM7KPd;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

In case of LDFLAGS and EXTRA_CC flags there is no way to pass them
correctly to build command, for instance when --sysroot is used or
external libraries are used, like -lelf. In follow patches this is
used for samples/bpf cross-compiling.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 tools/lib/bpf/Makefile | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
index 844f6cd79c03..d606d249e334 100644
--- a/tools/lib/bpf/Makefile
+++ b/tools/lib/bpf/Makefile
@@ -99,6 +99,10 @@ else
   CFLAGS := -g -Wall
 endif
 
+ifdef EXTRA_CXXFLAGS
+  CXXFLAGS := $(EXTRA_CXXFLAGS)
+endif
+
 ifeq ($(feature-libelf-mmap), 1)
   override CFLAGS += -DHAVE_LIBELF_MMAP_SUPPORT
 endif
@@ -179,8 +183,9 @@ $(BPF_IN): force elfdep bpfdep
 $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
 
 $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
-	$(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(VERSION) \
-				    -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
+	$(QUIET_LINK)$(CC) $(LDFLAGS) \
+		--shared -Wl,-soname,libbpf.so.$(VERSION) \
+		-Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
 	@ln -sf $(@F) $(OUTPUT)libbpf.so
 	@ln -sf $(@F) $(OUTPUT)libbpf.so.$(VERSION)
 
@@ -188,7 +193,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-4-ivan.khoronzhuk%40linaro.org.
