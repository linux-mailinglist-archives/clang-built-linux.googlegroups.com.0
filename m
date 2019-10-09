Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBEUM7HWAKGQE6DZ5Z5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B96D19C5
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:55 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id v17sf1629262wru.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653715; cv=pass;
        d=google.com; s=arc-20160816;
        b=gywykwVLBjkGkdHXNfJGwai3AMYZM+rpyi3FTGHLWC2GMLJAxlKkxarebeI0ADFQcF
         oFauec0NoCYK5XhOGbaDeUyuLRZnfJDo7Zp0jrmvjyPyKDnQY7n5Q04mTRsOQI5u+3ww
         a3vFOLFMEQIvojO9QHIY8e3XcRD4cPRPzhoW/QKY7KKB4yKnY4RdRNaxrY24otjX8Xvi
         JgiUOyN6h/8oH61sW5Oo9q20s5+mYpr+nhDdRD7nbSxymMwWfVh+ZhIgPm/GslHxjzIn
         E+qL7PwYcK7eFTHCz9oCLNAmRR8Pyd3nmJZKTOOF7anp04grctrCxJX3tXvSB8zVLae9
         NBww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=2TtC1s4U4IBihw806DoUV9PtlxakbVM7QtPYua48eRk=;
        b=gAtEz88F13+Zmauu77dwzANeg+TXQyGqXo/+ejTy/v5ss2IE1Op5GNEyWQ/hUSNz8V
         +XimvBDgyOeRa4LWZVNdWdNYPapdalEC9DuXrLay3BLhdMZFh3uDdKKnmTwjymTWvUr2
         zOtvDoUTUtHi4xdrGOTKzhEVwd/bq8jzptIEAmSVTht01kavXy4FhyK8R9L/y2+sMGZy
         rQ7FQcdpcPoKUY/h+z7Bc+0iRmXzohPkXOt9jufEp5rKulXD8zkIk47OwrXwfXQwZrHH
         hLSu9Xm8kOU+rFA9DXOSxogpxUPv2Tqn/s47zDZkW+JJ3sp8hVqVk8PJ2wHozzFyIukI
         eORg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=A3gY6o7H;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2TtC1s4U4IBihw806DoUV9PtlxakbVM7QtPYua48eRk=;
        b=fXmQk7uUGCcvgBZsIJK9WzEF5DFLxTvjjvenwkUrgn3Rg1kRW358k9uZnrheiYPI/S
         35TfDvX5DiegBx2K0ErikJLvHuCIR4+mgzFbihPhZqy6DpB16XvryPcwYjodZ2UzL1Pa
         Xve+kOBdd8tAbm4eCqtBD5kHEQe3l7M+q/OQE6/uw0l8Ao9pKH8Wk+adQTt9mrNvAzYH
         MrqnypYRIEcNBiJqay3ZIO89zXtaKgofvamGm6xcKFm9bYxQnYdCNPZA19jpI5xdNXU8
         9+81G9kPcvwv1JYvc93vqJ5g4cDi5oDakQ9dSsSZgEEbX34FNWgJgDgYVUcj86PhoKUg
         6Usw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2TtC1s4U4IBihw806DoUV9PtlxakbVM7QtPYua48eRk=;
        b=QjCQ3QP/s9Q19gQ4ok1IugcgO3cLR6Cn1St5y/t3UVcta8TgHzZ1NGgHn4b5C9PhVs
         5PfUUyX8gdDLsSVJU8uNTKPwwX4/7QxIt0rqxYlNs/9Kqz8s++tsjNlXqSOGc/hROefH
         jWDflCY+l3tdhrNm4fnn5zdIQbSDQ57IfUhqcnjXBP4Ck/GEIe+j75nPcmKLD/kLRo5E
         VWbXptM/SI2B87sMLtDgn8FSXsZc03mibo0yZ03SKguuoqSLauxDjewdMP6ou4CDPzYy
         2tl3yd8YWrHXVI++6sLJ158fuPfZ6+KEjx1rai5j/zian814qwDEo6rWiNhP/XT631YG
         P4+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXTxD9kY3Q15ttxG2zf/nJRo2U9tGu09/slRa1cw07RBdEpFWoX
	R7uDbff56rjFNMCadZROwyM=
X-Google-Smtp-Source: APXvYqym85CRKysMFBx7HpW7XzQvJ4RH8zr6YjWsdVohNHaipiJ6xhm0HzXvZGgkqQyeN+sqzsrpzA==
X-Received: by 2002:a1c:990a:: with SMTP id b10mr4058224wme.39.1570653714985;
        Wed, 09 Oct 2019 13:41:54 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9c90:: with SMTP id d16ls577163wre.14.gmail; Wed, 09 Oct
 2019 13:41:54 -0700 (PDT)
X-Received: by 2002:adf:fe8d:: with SMTP id l13mr4617382wrr.365.1570653714042;
        Wed, 09 Oct 2019 13:41:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653714; cv=none;
        d=google.com; s=arc-20160816;
        b=pwgkrW3i7MHXdbhVl8MOPE7ba/mabNJ7tAkQ7VPzFdrFIoHNuvZtaZgoeUNVg7W8h9
         p9SuIo/uYB3Fs7JzKlBj82tBOAGukYXR9WZBQjHO+yfK4K6uimABxVb4IugkyK+jE9Ii
         oH6mxJGPARjJ+/czaTfEsIRRLxkwP+iiEl75iwGffc4Xj0VkB5zmUa2BkeJbXqkcaSrJ
         JO4zSmHRSmkYY2mWTlD+vZ5nd1HQ+diB2stCwA2L76YAbNePb7uvBw3dmdFNDWjHpm5d
         PA00J4mkx7wBpcp+tKkaYQ/0V77WG4Ode080E6ddHLV+44QCQJoU21DIq425ietwoK68
         twTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=wbL2nu6acnton90gIbsX5qxq9tLlNkmN4RUryN8fm7M=;
        b=dyUJqOxSd8eZdUzkneV2Lf8HLgGCoeZrTGAWotOkqWSKW+JVoxOKfo+XPQyJVNXomq
         6lEv2qn0lhn5RUKZSnHpg5IaGrhdtNHlZ6JWIWQYkrKYcdXWBTiikH3XUbLhZGqwWS8l
         1ZTy7NLlOwua3lLbEpOEawdPKLHBPEe/otkRfc/qYOTohLlnbQ6jBg4BrchpNB5+aMZN
         vaNly4HXuFBqtcJkcBLJpBjibK1IoHx2V2a07PJuyqJVCc31EP9J9VAlpTNgalKwCyBy
         savZISciSmTm7rIGInyaaGKCkf7OOiAfWYJwH+3ZfSWkhLFlTivSu5l6EfZQ8RDKbESF
         BXcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=A3gY6o7H;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id n16si211764wrs.4.2019.10.09.13.41.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id j19so3922069lja.1
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:54 -0700 (PDT)
X-Received: by 2002:a2e:9449:: with SMTP id o9mr3534903ljh.110.1570653713531;
        Wed, 09 Oct 2019 13:41:53 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:52 -0700 (PDT)
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
Subject: [PATCH v4 bpf-next 10/15] samples/bpf: use target CC environment for HDR_PROBE
Date: Wed,  9 Oct 2019 23:41:29 +0300
Message-Id: <20191009204134.26960-11-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=A3gY6o7H;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

No need in hacking HOSTCC to be cross-compiler any more, so drop
this trick and use target CC for HDR_PROBE.

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 57a15ff938a6..a6c33496e8ca 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -205,15 +205,14 @@ BTF_PAHOLE ?= pahole
 
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
-HOSTCC = $(CROSS_COMPILE)gcc
 CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
 ifneq ($(src),)
 HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
-	$(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
-	echo okay)
+	$(CC) $(TPROGS_CFLAGS) $(TPROGS_LDFLAGS) -x c - \
+	-o /dev/null 2>/dev/null && echo okay)
 
 ifeq ($(HDR_PROBE),)
 $(warning WARNING: Detected possible issues with include path.)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-11-ivan.khoronzhuk%40linaro.org.
