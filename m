Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB5WT7XVQKGQECU5CDFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id C320DB38AA
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:46 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id z8sf5889665wrs.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631286; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1x/d/6utu/Df4V9YBwhuuV0aEszDex/HyL7nsmDS8bkmKafcsHoqUNzAe/yjuykJJ
         /uBTl06bdS03+qhZofh1/wBE0x1+dgQBSvDmQOaHwr0ANtSVTOeUVeb2tXl939dh0ILE
         ZUW6kWWEYaYio0YXHgh6W2NBSV92tTCMg3R94F0J1AJt9s4v+RZGdIY9z11t2/R83Y7D
         eA3dAYCDXszTT9EDjiC2eQO1bQzdH6RInuXgxxTBgbEnUGcqJbosEkNT8yQHKecbHfZj
         jchDCO/dJNwtsURi+iZldEdMockaHO4t9uvX99qg7uIWLlDLZbfoMWN8MmwMbCYjkkzN
         2ROA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=a+4hleXltX7MV5GrueADf8sgr3mTkfkx13dFNJOUR/c=;
        b=ARSClt8MQp0glJkm50QaopORwtYhY6n7cg9ZxJAdKbUHPfO798ceMdKC9AffoPlNjf
         g/RHt+eDTtSwp6Z4L6cFyXnMizDIquAU1SlPh8rXYzrP6xD6JMRLoF8g3YR2eoLEfLGH
         hUHEHwddT1hI5tNofX9cKFJx5+jhQ8GPckn4kjwh+qNtUcbXzVF66RGGfuqgDFf0LTf2
         M4T7nupBkYtPtNqghufhheTiBlef0cj1xqvgAT8Alwx5/gfGxnWasgFZChvxpyIMp6Oy
         dNdo/vR4iGepxTFBwK6IpreXVtFHpfFgGzS6yCuvmCHqcMz+g49JfaV4m9jKlYf5OkI/
         pB1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="g/BAdg0U";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a+4hleXltX7MV5GrueADf8sgr3mTkfkx13dFNJOUR/c=;
        b=IFm7hUEBpXZSUo9rHAv4kYMeLIZQJa4YIGDSjXl04e4/UR3oFoxwOg7/dG2X9kOu22
         0aNurauLtzA6VyKFKhv30Uptu8kzXs1TmXLUCjK7Ewovt8eHole6K/J9LRdrVF6QrmHr
         o+o0WXpmqhPi8AHIB/zHBHqreIDzWEqSuDGaa+JumxXUDDYahYeA9xJpQA7Jx67C8g/8
         Fi1hVoOi+OfCABmp6CX0uPhI9IhD8BXerR9GHSVZxse3o8NC1bHaHEfHL0Qk0zM15rTq
         kOOflXCaA9h4S0VUN0Z5ewU2hM10iqpQ5U0XEHb4RWQhvirNjCst8G6lpvScP+N6yNTs
         bMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a+4hleXltX7MV5GrueADf8sgr3mTkfkx13dFNJOUR/c=;
        b=MROqfTjBl3pnc1PuS5xPlv2C7QOh6V1trisOoOhz8mzysrE8Hidr2XBboPCXAmZtCU
         O3tmJvB8A68CQB2EHZrAceZYRpU/Pcs/nICuMjTdhQwmF/vc/P7rkbkXDw5eTrYkqDqP
         xAIlVy6b3J0kT7lzLBprAUno0SuPAim7e9vXCDEwL5hY2ygBAd3tMBJ6NXCv3hnQvjPf
         B3McDG80MtaKHGzB+5XEjeGIlLjDDaZG/p21i/31gC05iqPCpXmzA11GCAPNkNNdQxX6
         27FbmVltdLs3prQjhwnFDWURTxy9dqGL9hwk00YNJknLpzA2H4qjPfDXPT/q5/EkazCY
         OGIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX9YdojKxKC+EM9jEhaoOlf5osTsCPiKQTKGI+8OzuY/5yxxZ6C
	6TY0FhjsjAONJUHXqnR9xFM=
X-Google-Smtp-Source: APXvYqz0HvIDHjRXGnHjlLzhblwE5ipHZ2GBrt3j3XYphtQvY5iqo47Arbr8a+MCW68r1QiJAeoeYQ==
X-Received: by 2002:a1c:a796:: with SMTP id q144mr13532593wme.15.1568631286457;
        Mon, 16 Sep 2019 03:54:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a78e:: with SMTP id q136ls4876993wme.1.gmail; Mon, 16
 Sep 2019 03:54:46 -0700 (PDT)
X-Received: by 2002:a7b:c398:: with SMTP id s24mr8464606wmj.78.1568631286087;
        Mon, 16 Sep 2019 03:54:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631286; cv=none;
        d=google.com; s=arc-20160816;
        b=XNDe+lKKX9qM8QIgZcVAerIN7FAaGPXfMcGBs7j4AGcZSHoZDXUWoirInnXZC+gpbs
         1m6BVWRT2SJ2JLnqRWl3t5J4yx6+sKfZ2ZOWyfTGb8iAFPHJVT5m+xovrOIa5Mf/C+L8
         5M40YjPTmjvo1W9VXTuoXZft8w3/6Qn8MsabZpgt3nF4/7RuSpPQe85Is428+aYyij/n
         Tc7AZ79kRuOlFZmuPzevSx/iNNkKE6fa5gWXvCxy815RuOwhY4qpPBqCuKhPgVyYW7Z4
         OLjCXLy+0/GQR+VuOi8u0RTAsJvMam++IRPCnYzgTajXt8GuP93665/yYmbv+IroMjOa
         dcCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4FRJ5Ph8qMbMU6/W3VLuGrqprbT0bDHz0d1WvLmMb4M=;
        b=B6501rWMygwSbzOmIiUOCJ+6Lfv40GcoXH8n2vdq/hlxydQkNW70OzGg6IJu3Y62pt
         28RhjpZzhAccYBsdfqaeEDmwRq6q+B1nHENM/zrPWxgc45iFa2UQJxeLdx//cpkS5dXH
         jO8ChCJTs5L6mT3JBMsX7SjGxR63/an1z8iEIZRuviWseUOspgS2gwxo6t6CD66QQHzq
         jwTQM+QHTf5rhzAxxHli9AqhRzdqczAaOoeHJNyCXQDMkAq/x4SEw75HPL0DpmzAzl8U
         NIKCh4/rK+n7UTpo2Cqr0lK5N2Y4+LvcuKTZtM3UVtnlUM2DerTDCUJoHFYI+YTspmRX
         1RXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="g/BAdg0U";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id n16si712935wrs.4.2019.09.16.03.54.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id w6so27101017lfl.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:46 -0700 (PDT)
X-Received: by 2002:ac2:4552:: with SMTP id j18mr12491200lfm.120.1568631285526;
        Mon, 16 Sep 2019 03:54:45 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:44 -0700 (PDT)
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
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v3 bpf-next 04/14] samples: bpf: use own EXTRA_CFLAGS for clang commands
Date: Mon, 16 Sep 2019 13:54:23 +0300
Message-Id: <20190916105433.11404-5-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="g/BAdg0U";       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

It can overlap with CFLAGS used for libraries built with gcc if
not now then in next patches. Correct it here for simplicity.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index b59e77e2250e..8ecc5d0c2d5b 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -218,10 +218,10 @@ BTF_LLVM_PROBE := $(shell echo "int main() { return 0; }" | \
 			  /bin/rm -f ./llvm_btf_verify.o)
 
 ifneq ($(BTF_LLVM_PROBE),)
-	EXTRA_CFLAGS += -g
+	CLANG_EXTRA_CFLAGS += -g
 else
 ifneq ($(and $(BTF_LLC_PROBE),$(BTF_PAHOLE_PROBE),$(BTF_OBJCOPY_PROBE)),)
-	EXTRA_CFLAGS += -g
+	CLANG_EXTRA_CFLAGS += -g
 	LLC_FLAGS += -mattr=dwarfris
 	DWARF2BTF = y
 endif
@@ -280,8 +280,8 @@ $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 # useless for BPF samples.
 $(obj)/%.o: $(src)/%.c
 	@echo "  CLANG-bpf " $@
-	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(EXTRA_CFLAGS) -I$(obj) \
-		-I$(srctree)/tools/testing/selftests/bpf/ \
+	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(CLANG_EXTRA_CFLAGS) \
+		-I$(obj) -I$(srctree)/tools/testing/selftests/bpf/ \
 		-D__KERNEL__ -D__BPF_TRACING__ -Wno-unused-value -Wno-pointer-sign \
 		-D__TARGET_ARCH_$(SRCARCH) -Wno-compare-distinct-pointer-types \
 		-Wno-gnu-variable-sized-type-not-at-end \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-5-ivan.khoronzhuk%40linaro.org.
