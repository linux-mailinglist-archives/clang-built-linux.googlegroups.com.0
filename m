Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBNP23XVQKGQERP2OQSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF32AE853
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:46 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id w193sf3310004lff.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111925; cv=pass;
        d=google.com; s=arc-20160816;
        b=mRkP+fInfZbdJ6cJKWi4g192rqxylFaLFoi3V0tZ6weZmqJApNFhUlD7noE9BOx57T
         V4wjtiAkCkLPQOXgYjV12w01O+e2CusSgUbFD99j7S2nGtOdXM0Rhw0B8cpOoMbmlChU
         zl0NAvaGRqTurM8FphT586rYpy2037JvfjvVFXOUpyXbXvZFlBHDcOrS9SjpAKPjkqtB
         0w1Qdt6t2KajPxs68YVVuv8nklhsJNNGYhiRsFQ80mFJ6Gq1/pxTI2EE/U6FCXY7pM+4
         CjvqEr8lWtlepWkvO9V5EwU8vQwDK6xL8Fe7zSIuU7optNLcHlcDhHXMMUov1WN2ub8S
         RhfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=X6d1MH0ocUWm8rHo6AhKq4iQcfIOTosfR5X32KG21xQ=;
        b=QvBfMbXgSdcP8U1n84O6kgEYLqd/VdxQY9gkHPE6ectnxKv74oLfH6ETfr4n+I8kdq
         5n48mC1NlBkJMXh9t5aD9hk9knPKRU8IbvhfHpPzQgFYjo0zDxl4w87iP7M36kC9r1p9
         OE3zmun/coJh3A3oMaDQutZctvP09byhnR1s1OBsRLm4mNFRj99BKXDPPXoIjr4nQPYn
         Rtv1xZxz+asl2ydOuvPyFMwj2JcY4u2N8S/CBSy2C8j4OywGs7tJkvGQbbY1a3iOp9VJ
         Cix5R6BfRwswgKIoLVgBN9k0CZUu5YXFnxsE40Qlt3wfSWy3ErpGManE+kz1qBG9pKtp
         iEGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TacAjaCh;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X6d1MH0ocUWm8rHo6AhKq4iQcfIOTosfR5X32KG21xQ=;
        b=mOzL1wLiKKzsKNfNFWfGlIsaQpZKEF8xoDRPxK6d6wAljXOFu1EJXVJT/3I+NRK02/
         TaKBjrd8hdiSPvOn3WjEEUNzf9dzubbzkhDwsw+AC637ClOPvcYd/9hDiCFjiqj4/Y7d
         492QTE2CdBU/legEYtUNUxMekqmNUB0HKJk1VuyoNVdphV+itScib+wpV3nfJ2z3YTa2
         kxHnQ2HCkB9sFXmKgrueWdGy4oahcHqG2TAz2WVJin1fnBGkX4KFsuSWEZzg/TGPU2qv
         LK1U0qZVsvUCTKlwLcj671dG//fW3DTvGW+vKvNajCVwbxlkWhZJQQ8OyBQm/NtsrNzm
         OE/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X6d1MH0ocUWm8rHo6AhKq4iQcfIOTosfR5X32KG21xQ=;
        b=Ybf8aWSGlSdMvrz69mDMKBCcQs5EPn6M02KdPm5hVPBqngh4JnE3VdPVpBELO8OPaK
         SpP1vJQedQQkGZC6K0nFCgodlC8dDB/4W35X89owrcE0NK3JeDzjnXXfK1sYFV7U5KTP
         AtjXpm8+EzS16Uu2OibHWRl5E7qm/gqs4VtwNV9eIMVYBqQc2HdPk+2wcWWfctKsBgo4
         Uxd4PBkc/EuwohlwoC4W+WeZglGvtrL23drYOsymDgPqfCaHO4Bi8jgK56jGXOtb8BzI
         f9cmw8zpcFbe2wSdS87hFOFZIuiDdrUAu3wDMo0vqS86BZpf+tddiDTg1FAvDEwVw+9r
         Qgvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAURqnBmXGPRyYw9ijw06+VqWgvBoWWkzma2fOyWnDY4TN4Synuh
	XGU34/HdOVWqIYoZcBQOzT8=
X-Google-Smtp-Source: APXvYqxT68/kHtvt3i59nqs6jFDACt8pNgZ9uUnw2DHaUsHgDwW03a99FN/R22ivrpYxJTOtg/OnPQ==
X-Received: by 2002:a2e:8410:: with SMTP id z16mr19050174ljg.16.1568111925590;
        Tue, 10 Sep 2019 03:38:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4ef:: with SMTP id s15ls2006556ljm.14.gmail; Tue, 10
 Sep 2019 03:38:45 -0700 (PDT)
X-Received: by 2002:a2e:551:: with SMTP id 78mr19553758ljf.48.1568111925038;
        Tue, 10 Sep 2019 03:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111925; cv=none;
        d=google.com; s=arc-20160816;
        b=XMkjcYWiWKIYukxTvPllhoxN3ZlM0+5BoqB45ghnL3gHS+kww/8uWZQwyzSxcGqwj0
         qiOcw3f9ystUj4hq84je3RqC0HgWYQB993epsoEKmt0ZXigC5tTxz5SrS3zNDqfjJmP7
         1e/NR1OUMX819Kbl5Wn4wr3CYGqDYeU/EyvgPmeiCO+suFwlEcBBEtAUKVYSgrttu80w
         kks8pQ5lu+6TVs39JlWXp4O1a3O+P85ibOQTQpYhoFhONDnvNjhg9Gii9KCTKCWrwOrh
         K+MKjPXaxodYH0GGMNdDnJEMIQTsZuahuhsjKEmHBY6n9tq989uqybWdyEcC7bt9ET7E
         /v9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Jcy7fNNZJS0bHfCAktRnVFRPdGNhHeHDFWh1+uGNMgg=;
        b=jFT/w8nXoLKzSMuLTwU8VzuNjYlpucvc8V+4KFhOVZHm9wYDhom7n7mMoYOpglxPFp
         7Puef5qMhRnuV+646mI1uy+4IX/1apE/Bci7x1kIwYlOGOCNDT8/c6kfxFPBd4xIndsS
         8g3ewjvYN8Gxz8Vv/VwBsXPPaltytew4ydu7DtgoR/jdSjHr/ofKhBkivtmV4au2a2nY
         Q3fXFgLl2TobVeA5aKXhgDJ0MJbBNdD/qUpHNAPBrUGIPyY34bc3OqGn71m9iWiy9GbZ
         WZiYMebeKQn70eUJezAXuPJAgrTzptGGXqdhPP/rGvATCee8xNZH54MfTKzwcoR7yO4u
         2w9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TacAjaCh;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id q26si871533ljj.2.2019.09.10.03.38.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id l11so13021749lfk.6
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:44 -0700 (PDT)
X-Received: by 2002:a19:2d19:: with SMTP id k25mr20950410lfj.76.1568111924828;
        Tue, 10 Sep 2019 03:38:44 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:44 -0700 (PDT)
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
Subject: [PATCH bpf-next 06/11] samples: bpf: makefile: drop unnecessarily inclusion for bpf_load
Date: Tue, 10 Sep 2019 13:38:25 +0300
Message-Id: <20190910103830.20794-7-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=TacAjaCh;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

Drop inclusion for bpf_load -I$(objtree)/usr/include as it
is included for all objects anyway, with above line:
KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 6492b7e65c08..f5dbf3d0c5f3 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-7-ivan.khoronzhuk%40linaro.org.
