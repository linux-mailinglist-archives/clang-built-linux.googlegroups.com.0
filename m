Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6UCZ3WAKGQELY7I4GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E726C3AD5
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 18:40:28 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id r15sf18074480qtn.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 09:40:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569948027; cv=pass;
        d=google.com; s=arc-20160816;
        b=w+tij1+D+w14Lu/JpDKNDaC+90swQKyJGEEWY7N2+iFrz49EY9U/kFctjhyiKuGnm9
         sMwIHToJbpewfsBbbNwIu3F+1b/+z8forF5odKMe2VFxCVItvEBH5Vg3EiajHSuk7DEy
         zBZG8MX6/oeTnnxsmQlz9MAGviFyTgIcxRouWB/RhQF1kcI5ePLQuTqUOdRC63rj/iJx
         q2KU+9u3SFzw8PXtkSIBTu396vIqCqZIE85n5bfe1CHNGFn6aJhimnzKQnGRpLUeZWIY
         4ZInhCqCAAn4BfUITX0HlXejRaOxvc/arqm9T4BmMvfumV6cHL4ZBPyvlyo4vVYovc96
         VpFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mvl/eyOHEqDFxO6gtOgqEdkdrYjwZHGviQFA5wMCh3Q=;
        b=a9vGBicG0MXz99rv4fGcklrE6zyDEbKmVOEg6alFUdQiHgYlmKfNfZef/cG7RzO+ue
         JzJJvlrBPKxkGFOY2QuRkgCq85hsxfVBuTMx7xM16lkmujWh6GGlgiXgDjlbdJwAe5Yh
         s8B6wuregjqNhj6TlqRAVimXmVLEbb6k8kSg/dpWcgKRWGoD+VgP+4Md2kcTrboRVa50
         Mx7gMDG+VpIASNF3F/kQfYWWhPfXWLylSKIObn8rXwku11ed4Blm0R+ySPrfBvO8kgx0
         WrHZbie6u0d5zaIV+oShrA7IVVFmyhN6CtIiGJvhvOfpMlaYlzSOtfTQIZkAXc7dqdn3
         DDMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=b0szmmoC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mvl/eyOHEqDFxO6gtOgqEdkdrYjwZHGviQFA5wMCh3Q=;
        b=VNRm6F3AAAuV31XrvC3YJzUM5yMcXhlTmQXTFL/xsSxsdJaF7a3nrRqpEg8G+1oCiD
         FPG95glm/xc94kc+nL/vd5I10dUjnp/+BsTx6tRLGL6JVZyUSdtoRmH2MHkXMGiOZvgu
         dPTkkZFkmTb9hURWZFdhXOroEftSX7PrBkfc4LntWFRI02nnV1JvSskh970kIKYsfShy
         KtzoVOlrTCxpkatB3K9GURobqm1y8EP1x8tdbF4Q6qjP5sYNtGsSZU4APu0+qxeoQfzO
         sg8u+nsOfIZPHFfdgQP1orUHPAecXfMmJsdWZDWK13htZpgUpuJvLbVkl/IF6BoDnF51
         TIyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mvl/eyOHEqDFxO6gtOgqEdkdrYjwZHGviQFA5wMCh3Q=;
        b=e5ez6aH3ltqZMlnqkmenesiVE0pNdH1uoSPr8wUOHxEdme4Yn+zgvjKoKNQfqctISx
         vBGkEmrYvKt10tDejoDBlQQhWJqvOn6QZ3EHsiF0yVZelgLweeNgMZH87YV7Wr5aj+9R
         PIjZzJpMsdJjsVqgtf+vHiZV9n4AmJSRkr2YdxV8xMbreVhk8xOv/H/dVzUV6ERmnRz4
         8LsukyJ7UwY4qIPOG2Rbj9Chsa0HAI7D62FDiYoVSI/lcO0YqqFhuhdjqJ67u8MCCAsT
         2x9sO4n68CTB4aiUIohiiYra8kIFgZMrtNhIExHBKBhvheIT9noBvCcWcGBsaxYBrl0i
         Xe5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvhPy78R+N1eAN5t7m+o2n3hTrwc9PD4eN7t3KsmG0IeXwPBEq
	/nekm3LMVKn+sTIiG3x7Nzw=
X-Google-Smtp-Source: APXvYqz84n5gdPeGr2B3SKo2o9Oo3UstRMk5PxeFe/CeHz/iYP4IH0mL2kDZf2eTpjBJsrglVwBHvw==
X-Received: by 2002:ac8:1c34:: with SMTP id a49mr32534644qtk.182.1569948026952;
        Tue, 01 Oct 2019 09:40:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:45b4:: with SMTP id y20ls3112545qvu.4.gmail; Tue, 01 Oct
 2019 09:40:26 -0700 (PDT)
X-Received: by 2002:a0c:c351:: with SMTP id j17mr25598479qvi.218.1569948026544;
        Tue, 01 Oct 2019 09:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569948026; cv=none;
        d=google.com; s=arc-20160816;
        b=Hll9sxLvuIvn+uPC2OdAOPGIsAB4tKsKIFRIjX3p8YFuoTBVSVZc0UOGlClygmXCCS
         cJXeMEbBVeSgO+ml2upnIoyqfLkCwc65/szR+TJCSMPBw9VaMyNppjqMdA3bo7qBmk/f
         Rr1qdxXRI+xBtDqaJ6ZI/RRRdSrLZxDnmQAbxUT5zXlHts4a7ZyvXfe8z5fuQv9Cvg0e
         rQ8OGCGYfEzYGmHG8NJryYigwlbjUrm3RK5RSsGp42QJ0UQ3mNSWcV2Ug2+Xqjs6tHKW
         sNoVDdCv9lUkWJHDQt9OUFx9oGoUB3patzW1fpZ2B4juDv/CKo6ADQ1Hv9lzJVD1v1Pv
         BS1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LBJvyIuzJZwU6F/hhC/WJsf5lvwWOx83QfUZFfYbvKY=;
        b=u7uF5EH6h764wWCi33gSkRHjgRScHM3Fkx8rdEM9T5CXZQMlvCtQZrLo14I0jAkhjx
         08rQFToKXyp7R5XozwndoJNlsHibzHUolTepCmoP6FDTKBK//WY9OedBfWWBKMdRva9F
         PAur97Bw5ldz2lc8U7MuPnr/QmGcub0ucTaVcG3ZvCWaZ++1M12CsIc3S50RHFk6awfH
         K45i8cdwWLQ4is81QYRG7m/BqmchibYwZGVK+1bm9cpmhMDUeHd3U9v/ORPSVgT77zdF
         xwqBll8l2tTV5wXiRoRN1lY1E/csySBmLUB+gryD9FLGHU3iQ3L0EPvC+4UP8tqqL7s+
         LGkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=b0szmmoC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o13si697350qkj.4.2019.10.01.09.40.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D25A921906;
	Tue,  1 Oct 2019 16:40:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.3 43/71] libnvdimm/nfit_test: Fix acpi_handle redefinition
Date: Tue,  1 Oct 2019 12:38:53 -0400
Message-Id: <20191001163922.14735-43-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001163922.14735-1-sashal@kernel.org>
References: <20191001163922.14735-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=b0szmmoC;       spf=pass
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
index 448d686da8b13..0bf5640f1f071 100644
--- a/tools/testing/nvdimm/test/nfit_test.h
+++ b/tools/testing/nvdimm/test/nfit_test.h
@@ -4,6 +4,7 @@
  */
 #ifndef __NFIT_TEST_H__
 #define __NFIT_TEST_H__
+#include <linux/acpi.h>
 #include <linux/list.h>
 #include <linux/uuid.h>
 #include <linux/ioport.h>
@@ -202,9 +203,6 @@ struct nd_intel_lss {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191001163922.14735-43-sashal%40kernel.org.
