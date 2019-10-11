Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBN4Z77WAKGQET7WPU4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CA8D35D2
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:39 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id w26sf1381749ljh.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753719; cv=pass;
        d=google.com; s=arc-20160816;
        b=coOEy++j4b12yLX25UVsLOv1aG4/4qAmCx3WsDcWH2s0GUtWOpGFCjo2oDPJT1S3bN
         wCU3RqfoHbEz+ZQia2cY9idsm7IkzfVpyLWM/sycqBeaoqos6DBq9KQ56LeOUTelhu4K
         rJeImRxHD+PWUPUvcT3amuwzfdvNcdd39u0i2y806K3OPXPq5ieFkvJUqtJtch6dV/LV
         X/ojxty7+9k+ljBRZwc4MUUBhaID2fPM0tSPjrOqT8FQLyde1efydufkLsGFjMNFeFFE
         DCSRZTj9iErp3+h7sKWv/Nruyu/pdAOaKuG5iD3hgtmVNXvwPsWtNgL3X5/L426zw8P1
         t86A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=71q925a9HxjYcTBAFZqZ8Z3d9HJLJnzyPEjxtOxymV0=;
        b=PFiKf6MzPeCgk32wJDEBuHxLXPZQrbihEr2h97FKmI+scUlC5kTrfnZfK15HNTT0G1
         QObfVE+fzhhaVekzBpqY8un3Rf9D1VvybfSdB0JZpTIZbZVf3oPwfFgZkzbYAP8RNgDP
         XZqFwdbRmeK7pv0wUAzzdUKtC0qT+6z14tRESAAZZcZ3iWiPZ0/luRNOhb7/RGg+kiX9
         TaD9Io8MAikvt6iu2mgWatw60IOScQB8PNZnfVp1RQLVmF2UiNUvBq9K7j58IPAXK+gQ
         6Mlpi9Jem1x2hKLOUpIo8R2qe33bxFkbMwm7ZF39fYUsrm+sbCL9Qj20PuGWZBhHa6Ra
         iFHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mnI2QbGC;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71q925a9HxjYcTBAFZqZ8Z3d9HJLJnzyPEjxtOxymV0=;
        b=f7n7qmZhq2mByYGOa0KAFToFMp2eRi5nKLtY2VZLeyTEtRs0I9pZXQFWeM+/m1DqG1
         ziNcMCWeg8ONc0y3UBzFlWRAPeujhw9Bw1k8XwUHzGg3zNOLA7JAFls7Ldn4SOyPrdwP
         64jlRSz7t9OLPGEOcBsIbT6djn7C/iWP5qhpY4eV39X9eM45+j7CWGjnIxS6Y6zTd5bu
         lVw0J0ME4+U06wLi6V82SzlkCqCLWpT3Yhlfc36MHjmoL7VdhOXMCFuzsjYFZkEn9oh5
         1HX9pbLs+TOF9D2MuDurBr9HHNoIpmn3MePerRBIQR/UpNe6WazK6aRECdzMC4l4/WH3
         IZKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71q925a9HxjYcTBAFZqZ8Z3d9HJLJnzyPEjxtOxymV0=;
        b=Btc5D3vAh+L1hIl5hFoHSu5P8OJAQBBkQ8BVrIhrv89ZRqzGtqB/og2FYm9XAb0loa
         97J1jM6zdjJxVKwjnMNIVrdth9ZyiGOFo4BP5MQ4oRpulYVOX0tNAcOsEVtSRVwQTdxn
         +g85IuBQ5nIWpJC5BKnT/wxdHZg1plqb+48ddpjqvZAwXlcSCwOh/ca/18YPCw6Un+Ii
         LcPJpND71zOlQRgcnqDekOWmLPewR/sL+n2sH3G+t2QHPyzbRDyIsaPEQoGxjaQExidM
         Dbpt+ZfAx9nJYT7abIZvLy5h7irfYqfpL9fmNv1XjFUHxzORt1YYA5X4K9/BJWQXKLAA
         n6Mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXXeGtD1MOP6+78nlx/YKEn8yFKeXwzQOyN7FhyaGNV0A0cpoFd
	pcw9B4BrGtJ3GMb1bHvnTOA=
X-Google-Smtp-Source: APXvYqwjnTr573VhrrppgHyv/9hvVHsD//n0PCUcW6+LS9fqExffRp6Y/2CWsGf2ka7jHGPybZetYA==
X-Received: by 2002:a19:4f06:: with SMTP id d6mr7660553lfb.15.1570753719138;
        Thu, 10 Oct 2019 17:28:39 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:47d5:: with SMTP id u204ls742443lja.5.gmail; Thu, 10 Oct
 2019 17:28:38 -0700 (PDT)
X-Received: by 2002:a2e:9890:: with SMTP id b16mr7891091ljj.4.1570753718670;
        Thu, 10 Oct 2019 17:28:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753718; cv=none;
        d=google.com; s=arc-20160816;
        b=UxHIHz4bCgWuUe+hazKuuqmusgrPa24+BBfhjXt33KvbE+bPisKWWxKooXbT9EFW5P
         N5pxH/bhihAJELqFpb4UnxySbjHd4r2txpKwuTXQUbBi1PTn4C9+z247JUPfhsecyPzk
         SCzy8ji/xDQOoCK1W/BJh52shICskuWtB2cyWuGJuj8IwwCOuY2Mci2HHB23X6jh9XzI
         BPfedoJ119aB7l7DP0tPsvNpPNLT1kzHI709YRn8PC47Xfe28xaXmuXSF6GqOIIRX8cU
         +PGdWy0RymaFPAQOUdPVHQ4uPKLMw3m8kWmqcgjfv0TT40PwEuhVXyEMxqc/8/hiYCpR
         Z09w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=LjUmR6syFZQTjTX+EMH7Sbgc4CwkKZT5NTkS4TQtAUc=;
        b=paBrkaQFsJZPcO2M/CQsrQpRjmmYm5xHXneVU6M07GTNe9jAr4yzQFtpGxDzr7qwqA
         SJ7+C0b+1nBqwAMPwBY5MnbPslvRf0hf+uxopb8PxSzpOjNTJqXaIlElRSM0wctZT9AJ
         LDBWxEwanAMNuBYt549Vz4GXtLyeVaLiD0mIYPx3O2Hhz5GSOOTsBZpq0iZcePknZjHS
         BcEBNGVMMZfjeFPHSFCrpFCd7NSP28z1hTIaCrlVl93dyTupqR5Ksh0E87FR0pMI5CJS
         mRzDjNe74CJvJI/ac2FbXm6vy0PoLKnV8dlDdr0I4xMsXV/xb/w/afHhb4P2M7ikzWhs
         arcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mnI2QbGC;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id q25si87200ljg.5.2019.10.10.17.28.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id m13so7990256ljj.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:38 -0700 (PDT)
X-Received: by 2002:a2e:9cc9:: with SMTP id g9mr7896959ljj.160.1570753718464;
        Thu, 10 Oct 2019 17:28:38 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:37 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 13/15] samples/bpf: provide C/LDFLAGS to libbpf
Date: Fri, 11 Oct 2019 03:28:06 +0300
Message-Id: <20191011002808.28206-14-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=mnI2QbGC;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-14-ivan.khoronzhuk%40linaro.org.
