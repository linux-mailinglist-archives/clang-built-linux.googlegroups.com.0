Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSUEZ3WAKGQEBUFMRLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1C9C3B52
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 18:43:55 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id r35sf11582164pgb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 09:43:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569948234; cv=pass;
        d=google.com; s=arc-20160816;
        b=Efw60liqjmSQYQ5gSZiA1YgCTWOq8QpfGPBQbV4H2yZkmejp3qm5Jt/qbyzKThBRhi
         lgYXPimE7kZgQugh5Zr3wh/uWMKFlSQDBjNNSul4Mg6L2N2/KrbrNwxB8i78wZVzA1iB
         XcVL/Lb7a8d/EYg/+i9EnV4cBXlQvwjwXqka+GO//wWBhMh74Xeki5UX2hpnOfg7MNKy
         eQ9GCNVqncxUXoY2I+s2BxK9j7WMF1yuvUtwH3jf3gkPXTE0axPVoLrS8BIYHbGgqGuJ
         sxokpfuc5b0rfDKxKOf+7mlHBM3gzZY3Ef9ZRxRgmLCbSrs7ImHaPwjdCkJhEh1jX1qS
         MeXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wWcQRQfkYPzTP8bEEgPHBnPfdzekwlBkfDf/fW46eVY=;
        b=lvbabrXI6XyixsvoUCBiLtIGDsVcxmE4TWnPHPJCqkD6/lvCJYLs3HaRrKYL4+Jkec
         ApouFNVlWuksCRi/BJKdnSE3AZG5SBmiMGDLOLIRfy64iCC17POu9yu5kErI2IUU+sIA
         5RZcVyMmwvK+IDNhGeSAdb3T0OOidTxhJGm0DPCQ7rLNBqIEgZVhak/JJAtd1NPBIo1w
         xjXQKgBaXWvGWVGteD3EqXzS7mCbk1kn4ZPplkq3L5Io9Pf5lzGqfOBkJBNPQrHewGuD
         1d45AP6XgmzWjlY4lWlF7PScQqAaAJwv1lDJyjmqN5RjWPXqJCkRd1UtPJuMwzY5QjmR
         QcbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vQdUnSa8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wWcQRQfkYPzTP8bEEgPHBnPfdzekwlBkfDf/fW46eVY=;
        b=AW1haF7/2HdRvEpdg/PEAAAxUEt98LoCoMYXozvTB/zsvbotoGdkwXQf9fUjKfyD47
         i/d54BU4wdixzhpakiB2uNdUyqTrFJ9LVr62gBuqTEGopYSMefzC+LUawod7YgeCKUXi
         bvOAXl6SRRqinkjGqp0mR7F3JPc2vCmLDqvx0+Za2OE7CApBhC87Ox+W5Kb8VaW8X+vf
         lMY8Q3CAoPEZ/YbeKFnuL50akXOystZleK5DRp9LApf2vjh6D8UQ6OTkiGFc7CGXLs/0
         GhhY3RM1YHJpsZ+I4CHB4NRzf2tGZI/7O6GkaMTJJ+1U6+UpAyrFl8wi/Pvb+Hl9PBcI
         pfUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wWcQRQfkYPzTP8bEEgPHBnPfdzekwlBkfDf/fW46eVY=;
        b=QvwfFIAvPLtP665+mMdew8SoMwIiY+2RSTcDZtKGxZAi0BKskrdWReJ5umd6EnDySH
         yVyE09w7BxLxC0qMZrfIX+l1SNSpiPErooIUe5uXMBTjmnIRctwAyx0XJQSNnGWbWZcN
         4BOcGcA6drW2HG4MjMxDP+aqxogqLZembpZuL75HTM+wO26yTiqEOl+JfwGMNjz1AVS9
         kEfK11uY2bPUFTyNAbp3lRbit4ZHXWoqrSU/1ZfeO519yoxKxCV5+lV62v7PI6nO/2b3
         yhCMOOJlyPsQOepTGE/+H8+Rl6RZ7n8TeVOfS7DzceFk0RNJmqH1dGJCwP4GfEtwJ/R0
         EvQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUFwgJCXRO5ywo1y+UrzlPI/3Gv6zgK9SMh2MGfwx37V3Ao6vMi
	XnrCEJQfTCVKx6OTnrG+kKw=
X-Google-Smtp-Source: APXvYqyz1lBxx4kZ/gLxTxNgBIu+BQykHpn19ETzQJwiUTZsb238dUSx6cVAdEbHRfwO0M5IQk+ezw==
X-Received: by 2002:a63:d60e:: with SMTP id q14mr22953639pgg.450.1569948234279;
        Tue, 01 Oct 2019 09:43:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c90:: with SMTP id x138ls3917208pfc.4.gmail; Tue, 01
 Oct 2019 09:43:53 -0700 (PDT)
X-Received: by 2002:a65:528a:: with SMTP id y10mr31508081pgp.70.1569948233751;
        Tue, 01 Oct 2019 09:43:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569948233; cv=none;
        d=google.com; s=arc-20160816;
        b=olKmWaEKkfh4pvSfl1YiRtxAcH8Hmzo++QVqAwIn4ZvNgJIM3pesDCitx7WraelO4Q
         gK0Ae2+03ahUI97iysFfmtVa4kediTy12TIrcJ7egxZWduX5P6Zuo9nEj7UbvIbNod1C
         Y+jRZ+DBQdxUz2iAvNjK2ovJ/q5ayuHxL6B3qulJq0IvOKsl3iwLZSanVgsQROKUKOcM
         9rVHthaIQTomqxYMPbVq//XYkjqSyCikHTu5MeD+kT9pv1kxd7ChDRVFXTvpebFLqMdy
         +X0JtPLbk6M3TVbaD6ldmjwB8W6+Kjbaf8CQGESq9vDpWrSDMiiVn0ALVzDMsS9lB9cP
         YUjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/5BxqVgsfrpZdq8h61Ar0pQiuW4j0AaedY47dHWxL9U=;
        b=VOOuhtS+2vyE9mV6BoLoYCr6HpWcajyZofcYdmvvwhGbe10ianG8JkH4aiswDfMJO4
         wb6/ef3X7arKxo8TWYUW6bnCCYrY6AjO79LWPGRDZbRhhUDBAX8pqY4aH/HeW1UXLvCG
         NXHH67LMliYe6p41TzqLqSWG8bYg3fNyxpMnHGXQeuoA2gcuw67sNPx9jibHerOzLM2W
         cwA4OU4HhiFzeF7f62vOoHf2WL0wL+0Jab3P9vYjPtatt48X2ubccILcaZqaS05fimCt
         J1k8IR7MUNBlsoTOZN08KspCorch/XCOfZmNioGPzgGftCODmX7LT0qRfWKtvCZkuboV
         mUAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vQdUnSa8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si610359pll.1.2019.10.01.09.43.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:43:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BE3F9205C9;
	Tue,  1 Oct 2019 16:43:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 29/43] libnvdimm/nfit_test: Fix acpi_handle redefinition
Date: Tue,  1 Oct 2019 12:42:57 -0400
Message-Id: <20191001164311.15993-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001164311.15993-1-sashal@kernel.org>
References: <20191001164311.15993-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vQdUnSa8;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 59f08896f058a92f03a0041b397a1a227c5e8529 ]

After commit 62974fc389b3 ("libnvdimm: Enable unit test infrastructure
compile checks"), clang warns:

In file included from
../drivers/nvdimm/../../tools/testing/nvdimm/test/iomap.c:15:
../drivers/nvdimm/../../tools/testing/nvdimm/test/nfit_test.h:206:15:
warning: redefinition of typedef 'acpi_handle' is a C11 feature
[-Wtypedef-redefinition]
typedef void *acpi_handle;
              ^
../include/acpi/actypes.h:424:15: note: previous definition is here
typedef void *acpi_handle;      /* Actually a ptr to a NS Node */
              ^
1 warning generated.

The include chain:

iomap.c ->
    linux/acpi.h ->
        acpi/acpi.h ->
            acpi/actypes.h
    nfit_test.h

Avoid this by including linux/acpi.h in nfit_test.h, which allows us to
remove both the typedef and the forward declaration of acpi_object.

Link: https://github.com/ClangBuiltLinux/linux/issues/660
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Ira Weiny <ira.weiny@intel.com>
Link: https://lore.kernel.org/r/20190918042148.77553-1-natechancellor@gmail.com
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/nvdimm/test/nfit_test.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/tools/testing/nvdimm/test/nfit_test.h b/tools/testing/nvdimm/test/nfit_test.h
index 33752e06ff8d0..3de57cc8716b9 100644
--- a/tools/testing/nvdimm/test/nfit_test.h
+++ b/tools/testing/nvdimm/test/nfit_test.h
@@ -12,6 +12,7 @@
  */
 #ifndef __NFIT_TEST_H__
 #define __NFIT_TEST_H__
+#include <linux/acpi.h>
 #include <linux/list.h>
 #include <linux/uuid.h>
 #include <linux/ioport.h>
@@ -234,9 +235,6 @@ struct nd_intel_lss {
 	__u32 status;
 } __packed;
 
-union acpi_object;
-typedef void *acpi_handle;
-
 typedef struct nfit_test_resource *(*nfit_test_lookup_fn)(resource_size_t);
 typedef union acpi_object *(*nfit_test_evaluate_dsm_fn)(acpi_handle handle,
 		 const guid_t *guid, u64 rev, u64 func,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191001164311.15993-29-sashal%40kernel.org.
