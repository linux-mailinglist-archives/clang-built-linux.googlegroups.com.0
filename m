Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB5OT7XVQKGQEYOXHTZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B8BB38A9
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:45 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id x20sf7734688lfe.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631285; cv=pass;
        d=google.com; s=arc-20160816;
        b=hmmyptyueqvHdNDOiRJd/4bh5YbK85eogwuSlq/1UjWzQcnURW3bSbe64ntXOPtGNC
         MFvYPDdK9ymg7ELdjyRb864SCZ2WgUdZe7gb+PbdNwbL7sRrdH3ok//e/VaHRGMlrEqa
         R5GVPkf1pp3o6GnhOYZ/FKlWhn/H/ZKhAr9TjCAaJei8LZr2hHj0Dd6TJ55EaAkICJt4
         rmuEE3ym9eF7Oyn84v9ZfB+5sybyLRcftug6HsWokj2Gnynili+toKfUwK1rDoPnJ6gy
         1cMBJxbAk8aU+ethGW/G7Z/4dgJPWXShQz2ItgPGEP0zkshWm/j/kUJOIYRb+ZMtRGlr
         5+ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=F/2iVm5OD6CqMHPmPCmcqIOq9zO34ZDIgBZkjE7pNZQ=;
        b=f6+1W/5v1LgR/NV+OySL7gzo7XwKI3mP3+80sKNNpljum1YwvIGnCd1GbMn5q5awTp
         ou017+SZNRTq8LE7fd+VOrnKMryVCyT4Z7Btf0A3kFE2Mm/Fa5OOxQVP2KaDyFgXIvN8
         +vW6l2HFubfVRvaIvFufmq1JWBykswzmc0jFFyLSEepzyhBjo+vabknOgqRVRo1tq2qg
         I0ZfZvkoAiDtfTQFEFMGd5zadXZOH+VILfihuxFkF1YZkBvN5COVtBEc1zH0j9ldTR71
         CadjhHKZJrYz/3Yl+sdF79KwMDJG+jZPtxE3Yyl0odp2TVg28uhJsaGjHRahNlbK/0tE
         HfNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pNYUSbIS;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F/2iVm5OD6CqMHPmPCmcqIOq9zO34ZDIgBZkjE7pNZQ=;
        b=ht1MnvEHjyYDW/ZRuK6N5QL8zg8IJEdPZPBIpuFxLxvF3wmWsXWZpQI4eCkQ1+9YoQ
         dldS7X2xZ0phF35gPtaRTFtARqPKQ1w7y4FzZhJHJJtkDb5ET2IN4X1met7WN7oAked/
         dcr0g/uQHRBV/Gu0WlU/9oFuwXIlT4GDS0r7QH5Q3/8rDfFyeOHazUEqCX8yT70uWlZ2
         YRGc3WvAFN4XRUOa98f+PNpcCo6TJ50zDKZNyhliYNRKRV+II1o3a9BO9/sDerW78UVr
         rPIgxnVFJKkGefXIQlFoysbcZ7fWs0d3JQsilD0B0PluQ2+1TMppNROPNoidT5epU2Re
         zZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F/2iVm5OD6CqMHPmPCmcqIOq9zO34ZDIgBZkjE7pNZQ=;
        b=o//hszX22b+t9UKfUs9EY7ETA0GA4AzK8dDdzLAHBQ8xMyeENafeskxdLY/Xh0wFRU
         EEGvZbKbEhmBz9auQHfikwe0He1JnsrasbPpIbik4tUyxwLmLaUvem0BnWpeoWZcvdWk
         eCRf8T0hS2yMX+1P2UjLV55fr9X96VQpB1TP3F7Rin2Gmu6AB0EWPLN50MrQeByEOvf7
         hNmJmoaKjX8du65hFh/asB4q7t2S/w1nhG9auQtG2CKMYaQasRNR2vCz40IdIF19itnP
         YLWzdpJj+ZWZr9iY62BNDnQr8baxYM7BQ3Jq4ulfAih26wSKaRpoTuCN/HW74D4Tno4t
         6Fvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbYaF9GcjkCogkCRkv80I6ePLqgkayOGJObaGQzCV5BLyhMyHg
	TRFhy3dkPpokAmVoyfMqd3k=
X-Google-Smtp-Source: APXvYqwiLt7JNcAIRgqdtey3c92vBLCzvk5/tnXg9ayA1E+FcU0Qsvcb9dsFMXsfi80p+4A+zy+PxQ==
X-Received: by 2002:a05:651c:20e:: with SMTP id y14mr1503470ljn.29.1568631285149;
        Mon, 16 Sep 2019 03:54:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5201:: with SMTP id m1ls2108939lfb.3.gmail; Mon, 16 Sep
 2019 03:54:44 -0700 (PDT)
X-Received: by 2002:a19:c191:: with SMTP id r139mr37712268lff.23.1568631284708;
        Mon, 16 Sep 2019 03:54:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631284; cv=none;
        d=google.com; s=arc-20160816;
        b=NzW1f4w/e3sQWq21c6k8xtAHLUXcSGpttnNFIqocfBgwek7GTRX60cXMH5AP/3Zqcg
         Tt+HlhX2l7tNktifITRYSEKemnN6uJIjSTt3xFF4rvmFe36zfyOt/0woIJe2epRUykaM
         VkgMetWf6dUmscBpN+7pGQW7Fgu7zN7NRlb/V/TC49rlgdgaBe1XaPRB2oG0v1m0MdZ0
         br/JGOl06lbK2yQgKg4D4iqPWh8/KrZ5j1lnUUAmeXk1rVWmV9BlkniWamhU3dRpChHl
         9NpQnOa3FP+4Oid7zaQF1rI+GbIGY9mxDS+68m0D0jBPDMNLL8vYc1wefCQ1EJ+afR2+
         KnZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=HSB3pC6OCIzwVYGBAJ0R7QI4CKajD+8ovp0KUKhem8g=;
        b=NS/BtI9YGNQjkj1kkt/VbzicCnmsF2WZZt+GIJbzsUGhgFlzaLzx57Af6xN9IetNfK
         NiBFhNokWfJGto6SyoO+stg5fXKkdBx6Ej3/LwiWCbbyKQeGPkvIygDVGVVvmwB720NN
         GYbp24dw3CBUO37hM0EVmzcIzAT2OkzujkqyqKHEoCb7lzIF6yVuMZbaLz5A122GH3nW
         cvQMKJbJSZgTFeuq6mi4peuluoqXNKiP8EBpOZPc8Zyqga9cMxW7em06lFnJNyMRjRHe
         yyoySL6CKvEN2ZIWlhHFrwBELNk2vwRkd22gH/SrERn7biZGHB8KYUMwL8yh3MjC0HO+
         YiNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pNYUSbIS;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id q7si2150887lji.5.2019.09.16.03.54.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id v24so5649475ljj.3
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:44 -0700 (PDT)
X-Received: by 2002:a2e:9b43:: with SMTP id o3mr13477947ljj.214.1568631284266;
        Mon, 16 Sep 2019 03:54:44 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:43 -0700 (PDT)
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
Subject: [PATCH v3 bpf-next 03/14] samples: bpf: makefile: use --target from cross-compile
Date: Mon, 16 Sep 2019 13:54:22 +0300
Message-Id: <20190916105433.11404-4-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=pNYUSbIS;       spf=pass
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

For cross compiling the target triple can be inherited from
cross-compile prefix as it's done in CLANG_FLAGS from kernel makefile.
So copy-paste this decision from kernel Makefile.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 43dee90dffa4..b59e77e2250e 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -195,7 +195,7 @@ BTF_PAHOLE ?= pahole
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
 HOSTCC = $(CROSS_COMPILE)gcc
-CLANG_ARCH_ARGS = -target $(ARCH)
+CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-4-ivan.khoronzhuk%40linaro.org.
