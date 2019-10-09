Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBFUM7HWAKGQERU2WAQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB93D19CB
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:58 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id w4sf854687lfl.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653718; cv=pass;
        d=google.com; s=arc-20160816;
        b=HCtO1vmWuPe8oREbn3xgzRUlKgunT7Y11UM2QlXMEs6bv8WuvhuUrszKJdldCWBewK
         DjBJsgoP5tdusfyeIhvLPOWZjDT4ssYgYu1MIgJrL685wDB7XMlBqpiLVqrN/AiHjmqa
         zC7goDNmXCCIrxhbClzOYUUTcPhJFwIWF/MBFTYSKb8ujRff6pShXnPDpCOF2kVoaPza
         ymyDOEY9ZngH/pyMfM8MoYOCEq2JblFhV1NBykpHijIknTLT3eaIHxJ49km2f6DtxpmQ
         v+8zESEBWIkFjmEmViksmsSI77E9e62msY+1ABm8kb931ATTojyT2XHNIMwoMMvJqjsI
         csxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=axknAN90d2/q2hMmMiRZ//6fTcwrsiM0MBFpGRa7xXI=;
        b=wYH5Gpcazfp5rMsI5cUm/+BMXmnPvfLW14oUbABvASnPnRZrElI1UHLm4ukpXTglpN
         ue9lKnfzs2Luui6gI1/mYZ8zJEMRfGxoAypMYoTU1YH9xb88jYEu4yCIW0IxA1ubqIyU
         9MaLmJ8HpATvH9PrJeMnoXgAatf6k18TNcUzv89xmtNziH+3/z1WYzDkzBdv/nZ9fOAJ
         gnbX+3VJv6rrDgcsYgw5UZQhIfIPpADnKhGhKLLsbpiJQcjelV8hNNwGIqsPl9C02Q/Q
         1YPT+6YwUwxalmLyHVKxxFk2hTciLh6inMcNfCTefnGnqaOXLYbcuSfrg+9c4fjtIZNZ
         sgLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="sam0/KZS";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axknAN90d2/q2hMmMiRZ//6fTcwrsiM0MBFpGRa7xXI=;
        b=Bl96XxhIPeLgQue7KRjeHvxNHLvyjPCfNR5X/0utgZ8m+/4EYM0UpVvCad8N+X4AXU
         OlcJnkOSZS1bNsBk43lYISxA7Ko7KZIaw/mJYAhzRKhTCco3yc1/kJ9Om5A4c7db4MB7
         175sUvYuTjRf3/KorbRuDPQy08/ONLQR/Fr9IcF3eSCp7Eb7/gAnoJOWIM2xFPOe5XEz
         i3WrAdQXckPLmnomkNjGGtK0Z09Q4WckNwT0777+K+7RhnNRB799Rro1yaiI7kyJOrAR
         Malf+wXW0f7g0y+6pA0Rs2Ol9LQW9jrGF4VZS6H0IjsBegBisWJds8hPlp9Id7JBdIig
         KKGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=axknAN90d2/q2hMmMiRZ//6fTcwrsiM0MBFpGRa7xXI=;
        b=mKuqOsNmTQ+5zys4HK0GvVRzgM+0OEhZwsNOS4Uf948rPR/W8cQNBxX0gOvDBnjYNo
         Gn91n2n2eJmiINi7sQ69AJj2pGj1oChdOiIt9l+L5ml56J3OOO6cRVpXH93U9V9a4fh+
         RnfZcOaUCC5hT19ioEEu+Yp6oeFOwo5WumVm5AYUaQAVsioVd95fyBxQSJVSGZt4dksE
         ovDcjflITf+Emp9NkD2o3rtLLdMCRObkrEVzu3sXOrYXwadB9TFAfNAdOLzQTZBobymX
         jDmOhr0zQbTcH6S7zhIaO9oTfjJ0tlBMBagf3Jeh9RBS/tVKeD4qsb8dhPZ4kLaUFUZG
         bQcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUu2SKA5hc6yHraZwWmPs2sHeqT+tgozg7GvZe6O+bV/Wi9nTs
	92sUlhsCtWPJSo8K791qVq4=
X-Google-Smtp-Source: APXvYqxkuVlCbKRStJdzLOkVbA/vn98RKmuORmeFgpkwQw9Mb4Aqirsles3WLHfeJ142DZmtDuYBmg==
X-Received: by 2002:a2e:98d8:: with SMTP id s24mr3442222ljj.72.1570653718308;
        Wed, 09 Oct 2019 13:41:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2286:: with SMTP id i128ls209486lji.7.gmail; Wed, 09 Oct
 2019 13:41:57 -0700 (PDT)
X-Received: by 2002:a2e:7312:: with SMTP id o18mr3578597ljc.216.1570653717842;
        Wed, 09 Oct 2019 13:41:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653717; cv=none;
        d=google.com; s=arc-20160816;
        b=qs7GotO6S3RKbK6QGFRP0JD1ToIDVJz9s2xvs7cIGLbRPOD3sFqtdwRGpN1gkCbGS3
         n3vbi70OlsXTI3bHb6MoXE8OpgKmjxwFle3Q31FkCfsBQOFoPgkBPmA2l3pSCupxNKdh
         aczazvJ7VvxVTLe941x7hrIRAFaY5ByfxcwLV4c8obwhuYB5oevqL9dsfqym5ungYCu5
         iAjurj85ZsBeWm+o3rxm2btYKJTyMQ5SlhCCpYjmYl4sZqCQlrhM9yXzmsQUURhM3NGv
         6Lxt8YxO/4XtXm6O9B4WvEgMk8D+v5ypXTu+mnqUGNURgsAcoP1A1Zkkm22eI6cCw9FK
         25cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=LjUmR6syFZQTjTX+EMH7Sbgc4CwkKZT5NTkS4TQtAUc=;
        b=TvzQYnV5Abf5K5ip20z9cQR4j/qQpIyM5mhNhv4DDZEhGy1LiwWwvPqPO3li+m9tL8
         s4S2S22dekej12jDBdHCFw4ZdPKmzkNbu1bn6Kc2DqropJCRcPBw6RvWkjpBUGYv09Jf
         KtU0dAgHSzi8X2Q0HX4t4BLh8N3Do5S1WInGFBUryhr2h+2t9Jr/4Q/0LbvChJbaGN6j
         ju2g85JujFQqERqI2E+irntR7W7wSijewWGAZG8kcJxYdNYJWkHE40daaADsH4UMGiMx
         NWtZJtLBvzt/Y7Bd4VAbIYc9iVJwOmPCljm8bo/GiR83Nl+uPbAHrj3wZFEu6hABqQjm
         5Cxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="sam0/KZS";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id k24si172004lji.3.2019.10.09.13.41.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id d17so2673386lfa.7
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:57 -0700 (PDT)
X-Received: by 2002:ac2:4904:: with SMTP id n4mr3170649lfi.179.1570653717613;
        Wed, 09 Oct 2019 13:41:57 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:57 -0700 (PDT)
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
Subject: [PATCH v4 bpf-next 13/15] samples/bpf: provide C/LDFLAGS to libbpf
Date: Wed,  9 Oct 2019 23:41:32 +0300
Message-Id: <20191009204134.26960-14-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="sam0/KZS";       spf=pass
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

In order to build lib using C/LD flags of target arch, provide them
to libbpf make.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index a6c33496e8ca..6b161326ac67 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -248,7 +248,8 @@ clean:
 
 $(LIBBPF): FORCE
 # Fix up variables inherited from Kbuild that tools/ build system won't like
-	$(MAKE) -C $(dir $@) RM='rm -rf' LDFLAGS= srctree=$(BPF_SAMPLES_PATH)/../../ O=
+	$(MAKE) -C $(dir $@) RM='rm -rf' EXTRA_CFLAGS="$(TPROGS_CFLAGS)" \
+		LDFLAGS=$(TPROGS_LDFLAGS) srctree=$(BPF_SAMPLES_PATH)/../../ O=
 
 $(obj)/syscall_nrs.h:	$(obj)/syscall_nrs.s FORCE
 	$(call filechk,offsets,__SYSCALL_NRS_H__)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-14-ivan.khoronzhuk%40linaro.org.
