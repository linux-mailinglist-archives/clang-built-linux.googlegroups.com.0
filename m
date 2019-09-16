Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB6GT7XVQKGQEQ7M56QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C5DB38AC
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:49 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id z1sf394043wrw.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631289; cv=pass;
        d=google.com; s=arc-20160816;
        b=pMK5qirHr1t/8ptjRRL3btZr1Kh4F9jDxO83ZK1MboWYc9X3IAaljYpUmBK2H+vnlX
         IEXncHREigHeB2IAAeaNoWnTb4DpJRzypK0TnEUhyRxiAj2j7pSmGSZSgS3dMEuHUl/6
         mKkgPWaKtHyTpAaPMquiPuSY7EcC0rsHYVebGcCN3kL/85Kw/vAtjAB/eRTncRHpSX3Z
         SLAkQvPDek1CN71R6ja5IsH0ZwQh5kQQptU9AUzrclseus1kP0MfpHcAJwFG/yhfaJkj
         nkmRvLVdzVh9f/MtSS44M+JllgOzGnaG8C2hA+huPcSA4314dpyMfwGOlfFTSIBio6Ie
         03cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=YHsbEyFrnESllfS7E4RLKfTYsbFVbRShovmYB5ybTDM=;
        b=IUzeM85B+gbTgnbGPFmkb25mi1L0VPq/xXZLWYL7bxuP70nnpFDbifNb9KbGC0+l9R
         nWXhX4X+9sHQdexrsTsEdyzV3DziJXuMFkxZSF+FRtoa7dx67e6DwHcN5Vsv7VwG4cqv
         sMUpzytHIslNV2I2MiBb6D2Gy+N67oclViHfjwqfBPXDbSzB6IqtvOkv7S66epWcA/EH
         Si08RSDTsMiwdBy2caV4Q2AblOlMIspZCdTl3wEjMdtKNYK8AVM7OyWp0qKyvw7Js/9C
         pAcTR9bb+BAC2cHeBaCY9YpT7iLpM8aY2TNX6AfyFcXfM47b/C/NzTeo8K5NATzpgJOp
         nyQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=renlPhv6;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YHsbEyFrnESllfS7E4RLKfTYsbFVbRShovmYB5ybTDM=;
        b=KBOHRQr5get/CuRWQzCXhHTjH05WTAFKWgrtpkZXv+rqbgicH20fiPwBXp7Nt+hg8t
         de9ve4z9rJpqXbtT87Gkd4qX+p5r+Dfhgfdv8KEyfEJJV8njLLGaw/umjSXJD91wOd7R
         5ywG0Q911oiQgcqsYdHBjaqMaD+B+QRnEIakvGylc65arU05gF12wL3vHYHDbzw8SP8t
         26kZ6PQijRjJS7li0cY3Mr6ROE+/xUftbJeXW/DvTkDbIuhC43VzpcwF5m8S3jAIEXKl
         ByodBF9QRsoGvFyVMH2dM6RK4Wan14vbYqL3n+z7Jbzj2B2D5lPSuYxU4pRb4v/zh/Hw
         kZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YHsbEyFrnESllfS7E4RLKfTYsbFVbRShovmYB5ybTDM=;
        b=D/4GavcaM65LXrAaE88LcNA/yPZz3LAOWw0ao6JgrDTJ0SfBTtxGzfZKan9nkdpNxM
         gwfI5iaJM47Yrx9/V/NBVHwB7tTxztQiHJtwUDiGUHLfbfAHU7R1tCfS89czd05ayi86
         2jZ+poV0oYDvxLb/YhVPVe1BC3gf0WuWZK6B1jz6WfmpO8dbanjk+2i+HG+9wErYzU54
         zafidkvxFSZYwjCbk02wVw/qvpK+yd4ajTjGJJdd8DZPgNaj2KlbTHYkQhe9CdXfHa1Y
         PxJXJuZw5FNLiIt5YcvuIhhS/RqxargIRsjXkdq/zPzMUDlhQklb0rJyoPY+/YJj5vUQ
         jlqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXr87FAynBnwWm6GH7eb5Uoi64bjxm4yYlzlESHtJHVnEeWTAh9
	sdsinVqyWS4xep+iqtBvZVM=
X-Google-Smtp-Source: APXvYqyAHLLlWBfEGQvWaK41btuPlA49MN6RmWZGKwYJmHGto7+xepDHt6BRBiqB6NojJK328zO8sQ==
X-Received: by 2002:a7b:c353:: with SMTP id l19mr2173966wmj.173.1568631288977;
        Mon, 16 Sep 2019 03:54:48 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:630e:: with SMTP id i14ls10855499wru.16.gmail; Mon, 16
 Sep 2019 03:54:48 -0700 (PDT)
X-Received: by 2002:a5d:63c6:: with SMTP id c6mr8439022wrw.117.1568631288610;
        Mon, 16 Sep 2019 03:54:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631288; cv=none;
        d=google.com; s=arc-20160816;
        b=Qj1rVWz2uwMJGjeGupHScb7qGwT3VcLB6sqe2GrZufPJ94LmaIycJTn72U3MFfvDQc
         cPjT/7Y+IHyvS+dGrYk9ZwStPkPtNPOdqmLsT44StpLYxXME8J7B/IywqMw3RSw+B6Uk
         6PVBXyRiZE0V2QICZo1DZIbRJnUeIGI0su4ggniDjCQqHx1C0Ca6a5iEoH04/QB1eQKp
         fmBNI80bWpSKu5BMQsOCM71XxW3NrP47oB3jQnD6aixw7Lm8A1ktMIAj5vuU+sMUE/ea
         ULFP1l+46OECEUQvPSXg4tqrRo2xNRu9SyZeMogLyLFEwsaSaiUiFZVJUoP0Nx+bliF2
         Cu2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ICv/vY4XAwe136r6/MDdnRXmmJJ1JFeohZKBWO948JI=;
        b=xPHTesMiv22WKpb7O1HbB/G3iEkRLz8GaK9+iyTpEPbQmZEu4c5OCtO7UomDi0eATQ
         9ROjWEKFD25cxUguzfvMAq41aGfbF4o1ngD1BahzkcwG5q1BqNMni83cA5TkC4rvLNBk
         a29aXFiRsZ+FFAFtRiDPJPqu9OKF5BoZwFSWM/SyN3nnfsW9uFjOEMQD897TXCB1VDdT
         Woj9KWddRh0b2MM/RVLZS0CTMQIMSi8htXCzs8kgSs3rzEiiVZBec9I+Z66ERiNK3gjF
         gguBdVwAhgdCcFwZJYSQgZRcp72/6DqLKiQtirYaRLKT2zcg6DBkIFUCfjcdw2GNpiBB
         d6+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=renlPhv6;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id w8si671032wmk.1.2019.09.16.03.54.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id d5so33266103lja.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:48 -0700 (PDT)
X-Received: by 2002:a2e:9881:: with SMTP id b1mr19271028ljj.134.1568631288103;
        Mon, 16 Sep 2019 03:54:48 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:47 -0700 (PDT)
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
Subject: [PATCH v3 bpf-next 06/14] samples: bpf: makefile: drop unnecessarily inclusion for bpf_load
Date: Mon, 16 Sep 2019 13:54:25 +0300
Message-Id: <20190916105433.11404-7-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=renlPhv6;       spf=pass
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

Drop inclusion for bpf_load -I$(objtree)/usr/include as it is
included for all objects anyway, with above line:
KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index d3c8db3df560..9d923546e087 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -176,7 +176,7 @@ KBUILD_HOSTCFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
 KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/ -I$(srctree)/tools/include
 KBUILD_HOSTCFLAGS += -I$(srctree)/tools/perf
 
-HOSTCFLAGS_bpf_load.o += -I$(objtree)/usr/include -Wno-unused-variable
+HOSTCFLAGS_bpf_load.o += -Wno-unused-variable
 
 KBUILD_HOSTLDLIBS		+= $(LIBBPF) -lelf
 HOSTLDLIBS_tracex4		+= -lrt
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-7-ivan.khoronzhuk%40linaro.org.
