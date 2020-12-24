Return-Path: <clang-built-linux+bncBAABBREVSH7QKGQEDWQPVAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ED42E255A
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 09:01:12 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id 24sf1054800pgt.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 00:01:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608796871; cv=pass;
        d=google.com; s=arc-20160816;
        b=K+N7p8Z77Z6m7N6W3zbXmZ6ZilW9rta7e0YyRrR+wfmA3HVhe9GWaYIJKCRS77ajtD
         nsVBIOXmMr3vr8szU3ihgJcSNWoOwokctXaHvq9l2kDRwd3sPSct/Kru9Ya17DtDEWdT
         gWhC/BY4Q0nAgVZ8+/tp0LGskI8YVMWgTb5A6Kz702YFdGD6lPaxokVh2ddkBM+jSHIQ
         wsGdyJdt5Az5NYjOVuinAVHf7k8IXBLw6emy9WW2S/KrZivPucogpqkKqSKixtL6ezTh
         UogmxWxbV28Mf4sHUs9U7ATW7Qq4O6iCIRoF8TmFiIukArc9USwK4Cxvgri7XPzTfwEj
         Xq/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=sPyfabrM+Y5bJpeBz0lx5yLpbHtfAmWsfXdL9rK3R90=;
        b=qmwnD4/0Vjna1D7sCVOsXDt5rdaPmgaBb1+11KRNroyvoXweqnE1pTH37uUY4q/0fN
         E/C1WqhA4dz///g7TmMnJuOAOghjOlAIVUxascn2yAFLlRIWJnwzVXGqiUhplNagFMUk
         r2QcVFfHclvtP4HKaESn7RTF5efmt8jUoSOO2Q/FFSpE0E0nfnG91jSA19Og5mKHQhJ5
         h9he8y0eCK8X0sG7aAvSy60R7/k6y0Vd0zcQMnxh5SKU3IIBw8pz+3eaabLKsMUy5Uq8
         vLsxDa+9cSVsAe86DTWKSVgYRwc0fRkPLA++Tyugt/2u+12o40DleY53/neEFxbCf+/u
         r09Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of abaci-bugfix@linux.alibaba.com designates 115.124.30.133 as permitted sender) smtp.mailfrom=abaci-bugfix@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sPyfabrM+Y5bJpeBz0lx5yLpbHtfAmWsfXdL9rK3R90=;
        b=LucDSYZ6cskrAIwj/fwIznLx8zr5ynqnNcFfsaV71zzYfosxm7b/gYG191fCLezHHJ
         UaxWTUZjWkbVMGl3eGPZjBvNsHFyPOg8a0ttbV31JxUZ2QptcsrieEQlvX6vw8ZwZaUo
         NIUA+HICJnHEemngSNTdh9sIa80HYEew6cWkUQztG2QkBrlCCLiJoR3BB5dgW/UQpOnw
         ooqPe2ygJSr0sqJsTmfv89w+DwFxgaU3ZDKqw3DyBz2btgdfwfXnv4P2m09yveHRY5PY
         c38rdVfqp2sxFBixUXvpoeGNm7zVRowGW4oPuUns9/gWyXCnZzk+d8qDQrw3Mdc5bxmy
         vQ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sPyfabrM+Y5bJpeBz0lx5yLpbHtfAmWsfXdL9rK3R90=;
        b=JwrOC1zzqJA7YteiCOSH5erxGd6muu2rBAGAVyu+KiqasE+gvtCJTlZm3dk5JeIJH4
         WXx/3tQrRmsYtzjUe05uWB4zMMe7dt+EMwS4Twhi/AQZ4mQpSOeCZtMkzphyVVTfZLbc
         BNFqdycWvrfK2T7UO1Nlu1ODUm3KpxIlpSltODZGknX3ULtKdeym29ouCDgdjJvb5D2W
         ZJ6NIQjfZv3SACJqtv4be9AlMkrnwrWhzLXohkwhklruIvXmiEkWoJLHcMaIZ6bfVK4S
         iLNnEKgCabAGg1BGRoGVSWWrGGOctBXNnjGerxwMe7xzZfh5Ysbq65uCd4vWDIKd8hDp
         DbQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532m6g+3Nq3+BvLmgSO1LGvpMDGCMCESTqcAw/qOv/louZ/4NNEE
	yyDXwDuBZOvp0gfpmR741BY=
X-Google-Smtp-Source: ABdhPJz5WeWghxYyDjw9MA/nAD6uRVeh0P8J0Dus4K/7I/EchDzqVSA21WCsXCAt9mnrxQin3HCEng==
X-Received: by 2002:a65:51c8:: with SMTP id i8mr27716989pgq.81.1608796868728;
        Thu, 24 Dec 2020 00:01:08 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:548:: with SMTP id 66ls23013684plf.6.gmail; Thu, 24
 Dec 2020 00:01:08 -0800 (PST)
X-Received: by 2002:a17:90a:6809:: with SMTP id p9mr3257982pjj.112.1608796868217;
        Thu, 24 Dec 2020 00:01:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608796868; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4E1KvqbUH8uF7WEaljiQdx8QODVbfrJiKL3JX00gywLnhCUmohgq3q/quLrvoWAV+
         FJgng+i3dq+rvvqsm1qe7kAEU5uUSCZaVdRzz62DZjQMV5XOLKAA79/4DID8THYftd96
         QP/JcEgcCTwToIjLwjkk4MIN9R2Z+VkkaW9pk3wBRNFrCiNxGW/oLV47NQ3hjbCvfZw2
         lykoVHnhJMlGoWYOxeocE5TKAFp5XPlzHTplR0FW0vjd1g4z27dettFu7Res2N0YNLMn
         inPluFOaN2CM99dpHDTLiL/7g+GL+1H6jqdg29ae+ZkeAg3Ja/yRCCX4Q0qa8B2h1+Mp
         dq2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=2yi/tQjujrTPmzD7rAM3RBCSNutDp0deaOdZ5TtTB3c=;
        b=WD+wKVEJTN+V1+qqncHDyw3YAPxLHhNt5YJr9c35HjnMEBHRboyWg81xUcbV2PXl6D
         CffCJ9beJLwSl7BgOKMaYvvzPKNXH9EmIKyhBkb+EjEgXxSQ4uAw3INoUYhQaXfk4ngH
         ySZWHgnIR9TJiO8I888ZJBx/q1Qsd+wvMDfZ0AQrEaL9iCQpHyB/08/V3co23L8VLxCe
         j/X7rSY+Ggl6YRZB5wbKA4WaFl2Au+8Q5LxIRFASB+4fLQtMkhF3MKN01oYxKX0ifE59
         D0lkqEWlSUWKOyf/UDVxcDuurpQ1ML1AXS0TybmzQr1OeP6sfmo5RoZN6j3euhsacw5c
         LLfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of abaci-bugfix@linux.alibaba.com designates 115.124.30.133 as permitted sender) smtp.mailfrom=abaci-bugfix@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-133.freemail.mail.aliyun.com (out30-133.freemail.mail.aliyun.com. [115.124.30.133])
        by gmr-mx.google.com with ESMTPS id q15si1856612pfs.1.2020.12.24.00.01.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Dec 2020 00:01:08 -0800 (PST)
Received-SPF: pass (google.com: domain of abaci-bugfix@linux.alibaba.com designates 115.124.30.133 as permitted sender) client-ip=115.124.30.133;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R871e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04400;MF=abaci-bugfix@linux.alibaba.com;NM=1;PH=DS;RN=18;SR=0;TI=SMTPD_---0UJcXTH5_1608796849;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com fp:SMTPD_---0UJcXTH5_1608796849)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 24 Dec 2020 16:01:05 +0800
From: YANG LI <abaci-bugfix@linux.alibaba.com>
To: ast@kernel.org
Cc: daniel@iogearbox.net,
	andrii@kernel.org,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	john.fastabend@gmail.com,
	kpsingh@kernel.org,
	davem@davemloft.net,
	kuba@kernel.org,
	hawk@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	YANG LI <abaci-bugfix@linux.alibaba.com>
Subject: [PATCH] bpf: fix: symbol 'btf_vmlinux' was not declared.
Date: Thu, 24 Dec 2020 16:00:48 +0800
Message-Id: <1608796848-49865-1-git-send-email-abaci-bugfix@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: abaci-bugfix@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of abaci-bugfix@linux.alibaba.com designates
 115.124.30.133 as permitted sender) smtp.mailfrom=abaci-bugfix@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Symbol 'btf_vmlinux' was not declared in the header file and does not 
add extern, so no other file uses it. It's better to add static to it.

Signed-off-by: YANG LI <abaci-bugfix@linux.alibaba.com>
Reported-by: Abaci <abaci@linux.alibaba.com>
---
 kernel/bpf/verifier.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
index 17270b8..535d364 100644
--- a/kernel/bpf/verifier.c
+++ b/kernel/bpf/verifier.c
@@ -244,7 +244,7 @@ struct bpf_call_arg_meta {
 	u32 ret_btf_id;
 };
 
-struct btf *btf_vmlinux;
+static struct btf *btf_vmlinux;
 
 static DEFINE_MUTEX(bpf_verifier_lock);
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1608796848-49865-1-git-send-email-abaci-bugfix%40linux.alibaba.com.
