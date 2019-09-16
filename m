Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBAGU7XVQKGQEPDSGUWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3440CB38B6
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:57 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id n3sf116895wrt.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631297; cv=pass;
        d=google.com; s=arc-20160816;
        b=NQeiinEHX9pTDq7DlocIIE5VqTKJ8cRi5QhEWOonsNrgwrjHcXVIniVTX+79B/DEQU
         bsygd41Ek0VBmOSntY6tIvI60dqxNHCv8E0RLhZSyUsdIjOdmMw8lyP+OLNakW08uHK2
         /Qpe+sitj5rVeL1ZW9SnzX8Pf93M84xLDg7Fq3khpomknEa6DSefQ16K339v2eLq0NkB
         X7svyU7m/I6hQ1zmUL32YOl2ydxDMkx0b6wjoJ+HwoKarX/mH80ivbzrjRnEnkJsa42h
         DokUfqjyy4qzr+E9U6N8VBdWUizFvBZ1+qWZgxVlwBDeRnkDPqlqsRU0r6bDc+NE+ngP
         Avgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=fQqRp7yMcYoxRTGS0UVO8i/RdbhdA519ZHmD+HIjP+c=;
        b=UAyWn4aArJO5papnjVRa38V39Hy9nYz7ekT+05LAJzi19l338oUc05U/MCAh7G5EH0
         /F2iQwxxD4rBFaes7BJW1ITeSHWxAmBBteE7/+ManFsvU1tKERKdEjXM1g14vLf1NvrD
         MqBWGVDZasnLGFZSA9vvZ21rLkI0dzLwUPmDZo6ZNXA8O4XGwaQb5MznTxLGDUgb1pln
         PdMvE89p/MnLT45ELXymCG7nKkJuAuRBbljaYkBmY29oODtbQrkmnMCi+uZ1SkNZhLAO
         rW6AXppRdy4YoZZMG5gFxTYfQ7tKl/fi5upjaeIgKZKrgHelOWyTy5V+X5L9FtKamSJQ
         H15w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kBKPwGq0;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fQqRp7yMcYoxRTGS0UVO8i/RdbhdA519ZHmD+HIjP+c=;
        b=gYWwWW+H+moZ82dQ5Ap145b2oGyGT5TKOPu9NfV73IJvQrL5U/ij3odWCzLKELiChK
         oR1gA4Bn/zJmvITk8wHlD8Hb77wlv6JMTMIoQzHldgnIIOvBBib/NxeIowOUz5VttvYB
         lAhazGJJ/gROGWTR7URUXKNCg5qXterpcSk80AFiyK10mJj//AdJpkX/Qxa4DUNtDT1I
         Munui4j2BgYwBnLs/ONqdtpk8u7sz5KrLIprXtvLOt6GAsvQB6SOGSrYx21FCVCKgWqs
         HzDiQpcJuochItNWRbAwCCF676ig5cdvMclJTTRqVbyEkOfGwApUeOlsqs9STlYdUJMW
         fmDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fQqRp7yMcYoxRTGS0UVO8i/RdbhdA519ZHmD+HIjP+c=;
        b=idcd7xoDbs8sb1ZQRVNtFp3m0eSm0iHdBlXb+e4f4i4Go4BrAjK9lWDOmR+FQi/AoG
         wcDy9moQFzEeO2Og/iEdjlC4RwwOu0MqMonGv/tGm+vuAlTSUVgzh9Al8zRhkRfmDjdr
         1HryIXK02FSIGJ7c19hLDRRhl/uy/XU/VKJ+Ql1IJj756p8BKn3JWU/ZZeWgayQOrzC2
         OxBmmwkfHCq+n9pcF02MAo+hChsA/yo3tVdBjq3S6RkegJL8zbBP+uiHZwUIAdoR+QqK
         pVB0mcoF/dy0AOktvbKg5L/hbLnPpReuaFhC08oNcz2G05kpyLQGwSebnI6qxNvLalHI
         TSeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV+Y7GDeyAg++wMOklBekJhDt1rh+96OB0gq2gsWA61PRaZQmuF
	kI3P1ZiRA2z5HhMjcu5b62U=
X-Google-Smtp-Source: APXvYqzAQYTS1WmLsonCJ2EyuherHu/nCiaiNwQ0/TatA/YFe7GrytADTsAG35gPHd+5bri3zXZmNQ==
X-Received: by 2002:adf:f5ca:: with SMTP id k10mr16333648wrp.236.1568631296891;
        Mon, 16 Sep 2019 03:54:56 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:ca06:: with SMTP id a6ls1610035wmg.0.gmail; Mon, 16 Sep
 2019 03:54:56 -0700 (PDT)
X-Received: by 2002:a1c:6607:: with SMTP id a7mr2436289wmc.125.1568631296507;
        Mon, 16 Sep 2019 03:54:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631296; cv=none;
        d=google.com; s=arc-20160816;
        b=TkydYNabfltSqaimWxVGWeJjPlAjZvkR02mxk1LrDFOuzfYsINbiR1rs6SvVB4TLvp
         jRIyYfne1BYV6KZrreNNVD7m1hmhp5fil9+y5IbomnT0aVQmHoD0bp0k6Qr6HWP8ewS+
         VXL0uadRDYKy1rC+NI9377WoSl/WJ7OdjoL4AAJ+mQwA0T39y0cedd/7BlfBPweDKX2y
         eoH075IVwddHvl17SRp8eHzxcsjYiItDpI5aNoZRx1/K2g2a6rKczTIcms6bRhtIuR40
         AZZcHLLd9BWCkmCRzIH6NJAQEZ7u38GwOJp6rvdba6Pc+4Z8m15dEVrDm7BPsSvHFRiD
         f65g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=GxawIQ/MKoaOi42wOtzkwYPMR5CVbDtqJel19jnEoB8=;
        b=LSiQZ0E65EpS0rzFqZT3ef+oet2qurJuXIbMpmiNy7kg95eBTFs9olW1QU9xgn9pXk
         dAP50JRP/ijHTiUpZCn4rJ3UOFHgZD8k0mzVFVUw6sUKlE8APPCu6PbWPuLLhwwhDIM3
         krelvyDGsB6aki8V1+GgxKeUDteH91Z2Cl0e2SJSvweM+6PfvfYylY/edrzLMsVA+Poi
         PZupRJvpJL0kNBLBnmUEFgD6v53RkodKt6KX8s3X3nhmoweNZ0c/EdCXSVU/oQdhcQMB
         tQLGXwdSMY4u0dpMStDiyhrlhbdtI61fddZuesTxLPnIWo12T71ei4Xvc/+sJJCJrUuQ
         C9Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kBKPwGq0;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id n22si502668wmh.3.2019.09.16.03.54.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id c195so12188054lfg.9
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:56 -0700 (PDT)
X-Received: by 2002:ac2:5090:: with SMTP id f16mr39613241lfm.66.1568631295949;
        Mon, 16 Sep 2019 03:54:55 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:55 -0700 (PDT)
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
Subject: [PATCH v3 bpf-next 12/14] samples: bpf: makefile: provide C/CXX/LD flags to libbpf
Date: Mon, 16 Sep 2019 13:54:31 +0300
Message-Id: <20190916105433.11404-13-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kBKPwGq0;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

In order to build libs using C/CXX/LD flags of target arch,
provide them to libbpf make.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 18ec22e7b444..133123d4c7d7 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -182,8 +182,6 @@ ifdef CROSS_COMPILE
 TPROGS_CFLAGS += -Wall
 TPROGS_CFLAGS += -O2
 TPROGS_CFLAGS += -fomit-frame-pointer
-TPROGS_CFLAGS += -Wmissing-prototypes
-TPROGS_CFLAGS += -Wstrict-prototypes
 else
 TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
 TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
@@ -196,6 +194,14 @@ TPROGS_CFLAGS += -I$(srctree)/tools/lib/
 TPROGS_CFLAGS += -I$(srctree)/tools/include
 TPROGS_CFLAGS += -I$(srctree)/tools/perf
 
+EXTRA_CXXFLAGS := $(TPROGS_CFLAGS)
+
+# options not valid for C++
+ifdef CROSS_COMPILE
+$(TPROGS_CFLAGS) += -Wmissing-prototypes
+$(TPROGS_CFLAGS) += -Wstrict-prototypes
+endif
+
 TPROGCFLAGS_bpf_load.o += -Wno-unused-variable
 
 TPROGS_LDLIBS			+= $(LIBBPF) -lelf
@@ -257,7 +263,9 @@ clean:
 
 $(LIBBPF): FORCE
 # Fix up variables inherited from Kbuild that tools/ build system won't like
-	$(MAKE) -C $(dir $@) RM='rm -rf' LDFLAGS= srctree=$(BPF_SAMPLES_PATH)/../../ O=
+	$(MAKE) -C $(dir $@) RM='rm -rf' EXTRA_CFLAGS="$(TPROGS_CFLAGS)" \
+		EXTRA_CXXFLAGS="$(EXTRA_CXXFLAGS)" LDFLAGS=$(TPROGS_LDFLAGS) \
+		srctree=$(BPF_SAMPLES_PATH)/../../ O=
 
 $(obj)/syscall_nrs.h:	$(obj)/syscall_nrs.s FORCE
 	$(call filechk,offsets,__SYSCALL_NRS_H__)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-13-ivan.khoronzhuk%40linaro.org.
