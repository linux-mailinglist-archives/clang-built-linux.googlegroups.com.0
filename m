Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBOWWYDVQKGQEE7PLCPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF1BA94EC
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:23:07 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id m6sf113384wmf.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:23:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567632186; cv=pass;
        d=google.com; s=arc-20160816;
        b=BiTUIydLNNWEzX5Ds6YNR5CCNi8alsAucR2uNZtlO3+3ifwUFC63gsCLMPXyy0f+k3
         xITtWQkubC14Xduvwxv3ugKzN3ykqEfBN9/99wRJMC0ciGDU3Kzdn4j+32qmqi+hbGlw
         NXTSDVOfif7l+/pNrmC3n8lS2jnWRKAyrbca/XRNJ+7t3LnMN80ERGBNv9In9/0Y+Ks0
         5soJxB9iDldt9OFPW9NmvyASI6Nw9YaOghEbTGV3HVhUU00+C30F5TTsK02fTkftB3eH
         n4BGpaASCHIwfzneWq5WcBP3cW+qWouKN0WjejH1fQ/zGN69pspkRYp+1EzUXPFf6phl
         d3Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=+Ac231NC+HJVjNjs9GJbWPcdVQIf4JUbL63YHgKCep4=;
        b=odFuIQJCSSNZ8TBY7LsHyLTu3eRwHBI2FzV/A4mn0BYE8gTWXX3bj9cQGSjHnrP3Fh
         UUTgkYHkVt7azo6db4YPE9GMm2InXU2sJ7maGLirLbP7FLouTDNkxsiYAwzGZb24O6zf
         cx0c+LIVbAdRTB+W+aCAypMemw5Ak+zm8gcJ2uwG1LLTJMXluajdtKGDv2Y5bIpkUBgK
         EfARLKuPC2oHr2Nk/BRlGOGBo/QYyk2OUgQhjcq6OGK1Yly43PM16T39vaPUsj7wVQTn
         jM0AGzw0rwfQMyNxb9C2Age8xEZGPXDGRAs0fKdi9xu77NS585yGqdVrqfQnKQ9LlQ+A
         Vz4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ABJbZSLC;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Ac231NC+HJVjNjs9GJbWPcdVQIf4JUbL63YHgKCep4=;
        b=A5mqUbCOYTOcytELDLBxJAIjQjWooIK1LyjHojXVoLQvbX0p9zc9JwQFwo3zMl+xcQ
         9+B7GgeilBSQPl7y661DHQTdBJ6a3BDW+2sTZwDeMTXik5+RiFtKUfpzgS85iM6910B/
         TnmXMhnVTBZ3qtjt5OZaYnwuAExSSwUQOYwKlV7mAhPzNYH9ahkHsM4bQ3YeJVdFiS50
         79XCEM/TXvNUmIU5UCd8SsDZcSs+49FunSkg4Wm6Mf7t+MEXEj5V0Zdw4/iQTuLaGj47
         3+zs2DCuvZ+lMQ5wjZmvbYis4w6WSvAD/I29FhgcDyHdzsIv3W0e74YXFFvHVras9Hq7
         DZHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Ac231NC+HJVjNjs9GJbWPcdVQIf4JUbL63YHgKCep4=;
        b=Om2TJYDN6Qqw5wO4gCTLUZFVleEL/adNskok+ZaHiUMIf2wr08kUaLPnP+5Bt5rHHX
         N8iByTa/XEQx2oPxDZn7W9RGIEBOIKy/unUwuc8Tmzw1lh07h4P3SyJSUw9kn9ZegNU8
         9Q8xyVEQhPYqBDGnui1/3DVvHvm8ugT4KWx/FVrURA5eC4+CWeUPCh/imzUSIUUzwclJ
         oHx4b902/GH6j9sRioNCsKMcz5DkH+16bgIXFk+6DXpefpoeTS6MH9bKsDXG0hO/H4Xf
         1igX93WgmG7q2obl5tgXj4GDbj9qyMvVyXFw1DpoPmxGavq0bPuD0PtfYjXbANqnVWrp
         qpsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVDN5QhNpG2Uyu9zT8tA3p26OMP/OvMnVLuTHu1KLRt0/lb1vQa
	zQCvVujFRXVq3V+HatvbPpU=
X-Google-Smtp-Source: APXvYqzoAzYWuI2Mz9FAfirZ79PSfDqTinALme6A+069m3kETShuVN+owpnOs2isl06aWuze/LlUIw==
X-Received: by 2002:adf:e392:: with SMTP id e18mr25498042wrm.87.1567632186848;
        Wed, 04 Sep 2019 14:23:06 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:df82:: with SMTP id z2ls2703634wrl.13.gmail; Wed, 04 Sep
 2019 14:23:06 -0700 (PDT)
X-Received: by 2002:adf:cc84:: with SMTP id p4mr33207215wrj.201.1567632186485;
        Wed, 04 Sep 2019 14:23:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567632186; cv=none;
        d=google.com; s=arc-20160816;
        b=Q2pTxlddDWp5zKNIuMGylHumMuoJYPpVGFJ1Vlm1xR37NCFqtxzdknLyMalb6oTp0m
         ujNHizhnfeSulMqOGS+DXiKPZWiUOnXtEQVAD0owrLsrOLkRf5MopQVQCRW5n0LnwN/8
         uSaNPZH/EZn7UX438nuDv5XvABa/Vpiy13/nVFuINEdCmlG3bFhS+LFbx4XNOECEwgtR
         rPX7CX5XuVHbzfhFrD2c/CCNtwWQHOcL6jQD5bdtJYRf3ydqbY7QvZrVPlghkaB/87qU
         xRYWowQYVtbP9o+NBN0hrrpH8gyO+C/WR/vPoBsuyuPvI8qII02qvV1yIkkat41aVmnW
         BOUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Jcr7utRE+skJcsLIDmCcqhAtcA7yd+FAfx8VSIjlEN0=;
        b=GHVhksqkUM8Ry9GQfFfb14Jqzusl60cVDbNsxmPKDD93QUJQLIa0HaCDoggMbd1zti
         ZJvuuk9mNshT0QirwaiVfunHRmc6ny3tBuFbMLAU3nNGVj3Db7pfmddHQKbfM3RjbcCS
         tNmSsf2XOJRYVQQNEXidpfLt+TXbt6+tsUnNNsWZY25UPL21U0eTxWrMoJB9JMQjb14p
         658EouPw/QvXnhSxvhBs5oleCSNocsfq+D1czfjqpU3GugQERtbOayDAgnWcuS3D+6VR
         4bzzRMu2tzxo83620nxSXCv3n5EwpzGDyGeTa0/q2cnANwo3EpaUL/HA1TREWBWe3BeO
         6pxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ABJbZSLC;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a198si225748wma.4.2019.09.04.14.23.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:23:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id j16so189026ljg.6
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:23:06 -0700 (PDT)
X-Received: by 2002:a2e:8103:: with SMTP id d3mr3392965ljg.105.1567632185972;
        Wed, 04 Sep 2019 14:23:05 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s8sm3540836ljd.94.2019.09.04.14.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 14:23:05 -0700 (PDT)
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
Subject: [PATCH bpf-next 4/8] samples: bpf: use own EXTRA_CFLAGS for clang commands
Date: Thu,  5 Sep 2019 00:22:08 +0300
Message-Id: <20190904212212.13052-5-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ABJbZSLC;       spf=pass
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

It can overlap with CFLAGS used for libraries built with gcc if
not now then in next patches. Correct it here for simplicity.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index a2953357927e..cdd742c05200 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -219,10 +219,10 @@ BTF_LLVM_PROBE := $(shell echo "int main() { return 0; }" | \
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
@@ -281,8 +281,8 @@ $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904212212.13052-5-ivan.khoronzhuk%40linaro.org.
