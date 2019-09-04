Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBOOWYDVQKGQE5OJVG6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B1EA94EA
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:23:06 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id c23sf164916edb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:23:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567632185; cv=pass;
        d=google.com; s=arc-20160816;
        b=NI/j1sd1cdZK9DuSVocNOPfGeft3y2on0et4NmTFf6Js6scLrSqJRzU4NeSmaz3iYb
         ynWzu9m444O9uA+o8qQ8P0BUIuzaF+I923deGr2kejAveW7qdtuwS0Ce145xQoMZrCQv
         d/D+M4J9cAFTUjSwej3sf99kEErPC8oFWWWI40YChSFep/L/q5u7KvsxeCBtHnrvWG/l
         rclMkonNQQ5YIFL1AVJKI5ELNcbxm79/QWsB8IIbzb83R51axGhYFQrK+w9Qo4WbSMAm
         ZGqdZa1qyCxewtJWNZ6iZTzp2lQGXMpGaojajGjKAtMsGj5eoMLCDf5nvswdj2qzalZi
         WHuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=AYa9oGXBdxltyiIKF/V0dJuGi3qmCjScjvwbaGsbE9o=;
        b=YHikgSaQvlW8pVQtvWBtQtgxiFZP0Vc/1Nno8UvfXaZJkFnoIBLhjW2358pjbkCl2O
         jyx62uaBaDFVYyEgJ5SIftzCGxpOR0N87SF17+IcEUhQ8i+fChSEYZIUBR4d7LrQ64S4
         7P1iI9lrNDzrDwFxudA+8Av79FvUkDO41uDPvsre1SUgpnjz4QXM9nCQopnaw5G3247s
         kJ0Cr4LXl3nUoqNE6KHm8P1pbl2Dyhw7K6Qpf9N+vrohEpJDFgC2VQvx2DtBqKRAHmx8
         NNL9T2l1rDRNDMaTxESGI2+EyrqFACNt2vP8G0XNjpA7g1eWuOcoapa/q/DEjqZlbGoz
         FFfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Cyv0J+ys;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AYa9oGXBdxltyiIKF/V0dJuGi3qmCjScjvwbaGsbE9o=;
        b=kZIPkcxaau3gcKg6X6jqwoNey7l5gK636yNQjxotlNarB4K2/MFLEpjz2jW+XUzpZ2
         O6YZFC75pc2NMA3N9CFw+aWGzP4gagKRubg8VFeIAxfpxhhLKsdULGCVWViv5in6Tyro
         3gyzIAWVkZOdjJmoBvHqiRkfWZlSXxQmuX/RjbktkJ6J3vvSc8KycptDplcg4czmY+BN
         kkP8Ch9bkMCTRtkkdCsRny6rNzRA+FBmOQ3vuBvMk/hpm3LWjoVOW5FX2RQkXlxYC4kA
         okBMEfSmEdUIhYbfMD5/Bp/aAxZgVXhp/PEQCLF3o0AGcCyehYfsml2ZpOFgflMh4wfT
         YHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AYa9oGXBdxltyiIKF/V0dJuGi3qmCjScjvwbaGsbE9o=;
        b=FugeD5a0ezSfM3oT46vWjjnweRBjl7T4Ty8yI82asDxvsuMJ4SGQgFMYtVms4KCl3H
         nIJW0rNejvPaNraiyrK5w3WpBzwWMklqWdnO8LZTNjei9z/814uB0890B4pHNxLCU4jB
         ExU3i5JllleWiotAEO3/hBITs4mloq56lMcuRA9iFEICyZu+5quADTBBHCd82CgQyvTT
         VJNmjupeWy1EjaItBqv5YR06QU9eguGtJLkBJbMOE0gl2xOBijRW7/K8hJ031DvKgj7z
         uSllwtg7b3a4Ra+u8BrgEzo30rk9LJWTjlzU0h5LIzYrqcvqbsP6QKwRRs0T76xvyfXv
         /W0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGoSW+uj4snSHbYi0nDk+7LX02XSoNPXYhhxSvs+Hv/CMTHlS3
	3EGiqoog6xiXIBS9i7dROcM=
X-Google-Smtp-Source: APXvYqwSYMFapjBbfRHiyoHBEXSYjkJbHu2fB5JqmkA4EpSlWggtEhpDYF7GLKoiecCU1awTUZKUGQ==
X-Received: by 2002:a50:a1a5:: with SMTP id 34mr389158edk.158.1567632185795;
        Wed, 04 Sep 2019 14:23:05 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ed99:: with SMTP id h25ls59857edr.13.gmail; Wed, 04 Sep
 2019 14:23:05 -0700 (PDT)
X-Received: by 2002:a50:88c5:: with SMTP id d63mr392374edd.122.1567632185401;
        Wed, 04 Sep 2019 14:23:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567632185; cv=none;
        d=google.com; s=arc-20160816;
        b=eTAxZU3D5Z6/tJH7+Aq6S9Klbv14QGEivRQXbEgukqptlUpMSxVaFxTd/doxNv/RpP
         am2mErv6D6uG3IOdfuFuML1F3PdA0x/OI9kLFrK2apYO2GVVTUV01RbBoclazWaZRCN6
         Mw+aU5RIL+kIvBQJ62IdULcbMgwmOR4ZCIqG6mGnoLiujSF7hpgHRioNkz93hMkbwb0h
         Pq6Trx3dgjXuEApc2dwCYQUyiw5WAzcn1fcN8LMa8oct7gNhdGWEcz5akcbFmhLz0MC8
         wNcoNxlcickv6OwXnrv/RGLvH5+igwt00DJv8Bt7KhNdDAA23DSKAwi7iDUYwUU0JcG2
         sVig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=yAjuHlaJV4iM+XkUvTeUDNJ1TAXGjdj3xJMvNO0S43o=;
        b=J2dAUKPbBQ++ZG3JEhLfXNp2ZQ1tRfTo56ei0IVqgO9dEuNroMIKmO3wlURnvqVKIz
         leqdWmXebRwCvQY26lOI1EnZQmsBQqZbCGIBGtiwSLGErP+jBHr+mKeNNAq57O8fD78A
         0Ct7vgYloYBoYmQqEPYANbtTYAgqermu0Psf1rnTanSpweiV7RWa6QQvZ6bcgFlUroxz
         12BvV9ttLNzxSKaHr7r1YZoaRvt6Wq64GYpLIY2zRqILZ8Y9A42q9NHURwVkwBK63/nw
         RHgEAMqMKcxoykfV02ejDMPvzZ8DoB/HiKN0xZlOh+LiFDMbAB1g9vOJp+mCxxnRKdRp
         FObQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Cyv0J+ys;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c31si9395edb.0.2019.09.04.14.23.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:23:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id y23so171343lje.9
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:23:05 -0700 (PDT)
X-Received: by 2002:a05:651c:1ba:: with SMTP id c26mr4261123ljn.154.1567632184814;
        Wed, 04 Sep 2019 14:23:04 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s8sm3540836ljd.94.2019.09.04.14.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 14:23:04 -0700 (PDT)
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
Subject: [PATCH bpf-next 3/8] libbpf: Makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf targets
Date: Thu,  5 Sep 2019 00:22:07 +0300
Message-Id: <20190904212212.13052-4-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Cyv0J+ys;       spf=pass
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

In case of LDFLAGS and EXTRA_CC flags there is no way to pass them
correctly to build command, for instance when --sysroot is used or
external libraries are used, like -lelf. In follow up patches this is
used for samples/bpf cross-compiling getting elf lib from sysroot.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 tools/lib/bpf/Makefile | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904212212.13052-4-ivan.khoronzhuk%40linaro.org.
