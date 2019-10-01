Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3UDZ3WAKGQEM7ZB66Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 787E3C3AE9
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 18:42:23 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id s14sf18163619qtn.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 09:42:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569948142; cv=pass;
        d=google.com; s=arc-20160816;
        b=p/JGWv/hCn07zQOfzySP0oF4PbWA3g6PUoAzX5fq+1/aKdiI5TYSLwSCVO8Wh4W8Xt
         4gNpHQWeB9WEyIVBtQSxisweLlrmPqWdyCo4XdF2vqswtMzGunfq8zp1jQBP+Dn60Aw9
         3tURa29GICleiIopdVE2oj4Pkvvg4FSZP/py7pytaWfQwXzYmSFHjU+B+nWk0bJ02XhT
         1Eg/gIFQI5nOIIZv/BREpZhi7IzzjQbovjm+2ZrJrpZdHCE6C+fZuTUS+63bXA36KoDW
         FeIYrJEDwCaK2ZLG7FLGN6yHGPrIh3iiXuip23Qiu4prlDllsCT3TQLmxTVcf1618eVH
         /m5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0KoosgEtHKxJg0bOBL7l/hnyoS4zTX6BiuFavXsoZoo=;
        b=lSD0X2cXT8bPL+8/18pKXxw1PB7Pr88yYkaPD6h1DiD89lwEtlRCYBto5nbBEuKhDc
         XdNEWTSkj1Vt+G0wIFA3qipY3rhUFC4vVsJ3rQI0dbNV1LgA23CS9mc1m2XB8TPoTJWR
         3jM1IJDIUfwWiW3HOfFvBES3pFABqwezlEO1PGpFdld/0ZnwnlwhaqUhBrbxqoXiBNRL
         ZmM9t/7FDIr9lJ6kSFu7vCVOcQhpH2iCZhuIPCb+VbyornD0wNgYGSFXaiytsOcBinLS
         MiKVBMC0/hk/DTWAXIq8+1oUc972Iy2F3FXmHFvv6vbQl19YrIA7irnydzFtbg0iDUec
         q5/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Qtdt7Gdx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0KoosgEtHKxJg0bOBL7l/hnyoS4zTX6BiuFavXsoZoo=;
        b=XVVzg7s7C64jVn6NJvJkrz9uWqdt74kmlIpnAUDkyyz+boX5VI3d6CKp96KquQAwNs
         RtlGLU4G7IQSI4KjIN57azS5JNnyAZl1TPwjKHTmWo+jF1gI4c/ynxrdlkZ/g/XFuUdp
         9mjymT0tBRhEvOJxDruNEXxXk/qTWV8hq3HJDnkK+FdVdMkpDPN9lrekn7UkwB6Fm/aT
         MSEP4LjkMsTROl/M2PKn/SffFkg5SG/wDMVwApDYYqgMj8DiTZ+NSrM6PZh6jDlnBeHH
         VaixlQETlEjbrmsVoBevPOCwhf0L3JYwtlzkeTPGFi8+v5IWALf9ZV/gTqWm3pb8Of2j
         2uzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0KoosgEtHKxJg0bOBL7l/hnyoS4zTX6BiuFavXsoZoo=;
        b=NpwAITwXtLjGzNXDt5eHGoN11pug8e/igi50Sxh/AGdtpW5/ujD6C67NVea2O9bPWW
         AAVqIkqTyLPN1fiRgrTHQ2na97KmZXRMSAvSYVB/XEujeIoyoROS1uudTWhhnDJu20AI
         iq0sLwd0btQHdDtuaG4ugslhtRoCFX0U5Ivxdav+DD2Ev3XfG7OkNvokoRfdZfvXX7Rl
         TqvYOZ4o3SPty+RAzelom/86t+Rf05l2oOAWpgYwRIb5ZE+adP3mphXS1MmNfKKUZk4l
         Yc5GGHOGLsBkIM3EtN98QsbO2l7RKS5K2OQN2BKkCz8QamHjoSVoy9+EzgfOK4X1icmV
         7CUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUlWHmF6Jcww7lRlMtS8td1py6boIku13yRC/vygeul3W/XjPGM
	B+IAc/JJl+/K+/mp3haMHDI=
X-Google-Smtp-Source: APXvYqyxsfQqh/I44CaCGN/g0nX2corfv2xRSi98bQQHodY6B/FQFT5eFKISVwNJ0/aZzhX7kWZXHw==
X-Received: by 2002:aed:31c6:: with SMTP id 64mr31631689qth.67.1569948142487;
        Tue, 01 Oct 2019 09:42:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4852:: with SMTP id v79ls5718410qka.2.gmail; Tue, 01 Oct
 2019 09:42:22 -0700 (PDT)
X-Received: by 2002:ae9:f802:: with SMTP id x2mr7106202qkh.114.1569948142182;
        Tue, 01 Oct 2019 09:42:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569948142; cv=none;
        d=google.com; s=arc-20160816;
        b=GhxgF44KEhPieMUspoCMnRENoi3pg2npgkEcB+lZh8cCf01HbN6/4Fi/++Tef7wwwH
         O+syWaJ9K2z4cloOWnoYFWJOApVawMT7h0pk2VzRHAyuFCpbwVQayfZJVctTvcD72ojY
         PaHT6eAtki7LxEb+2brmxr4KeCLC5R+zyLyTSk25BDpoKyir3TkppDu980Rsp/8MWgI7
         umsxg8pAPFqfQCmvYNq14HQs5bqVe/Pp0WjVsMkBqGNlhPAG8rqH0emSKA9cJSfUFEyM
         UrUEweTgp6BtW7O2d7FB8jCvc2BT7Rj7GA4wqKS+AlT+lxfX1RncZlLnEkkEABFrTcYr
         6ByA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LBJvyIuzJZwU6F/hhC/WJsf5lvwWOx83QfUZFfYbvKY=;
        b=XbDTHl0NMSUxFoFUYlDE6FcZA+zkKqqbxykxxmLa+YvQGsQj90lQNbAskP9aLAiBt4
         x/eDNm6lupBC3ugidnWdtCH7xHCMVdzI6Mr0DNnGYixUsFya3nEGktZqN0W9kt5KXTdO
         zsukG+hJMQ6/him5JZz5iBiKFGC9p8c3yPh6IyIa76gYAQgLYWcFxUcBtYWPRpKGbg//
         ltJ88zwsAGg433H8CVvWOAIrk/yMUavfMXSuz8lxy3LmMstMh6quXpOLelmJ8wtAGt7X
         Ejr5j9X99lFyV+F8aA9VWYyocE0chVUJxluhdlKs4UdcnmU8BfjfVPTJ9cV/xVXwcopH
         YT5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Qtdt7Gdx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l4si1378762qtl.1.2019.10.01.09.42.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:42:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 77830205C9;
	Tue,  1 Oct 2019 16:42:20 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 39/63] libnvdimm/nfit_test: Fix acpi_handle redefinition
Date: Tue,  1 Oct 2019 12:41:01 -0400
Message-Id: <20191001164125.15398-39-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001164125.15398-1-sashal@kernel.org>
References: <20191001164125.15398-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Qtdt7Gdx;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191001164125.15398-39-sashal%40kernel.org.
