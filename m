Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK7CQ3WAKGQEXBGRTVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 578E4B5A4B
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 06:23:07 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id d7sf3486924edp.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 21:23:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568780587; cv=pass;
        d=google.com; s=arc-20160816;
        b=ksGuyxvZawTQWMCWlEuVD6O1E2BEDLUk6/d2YEYmrdsusiHaWUxbfHksRNXcltMYEC
         GaxcWXW7pKlAhxUYGwlRogt+dAxpP10M0I91J4eYwbNnGa2t0ncUS0VcTkfUlbQ4kK47
         c2bPkgmOcnF7tG8BMAsw7NFb24XrXWmdStO2wdHhraBjOIL7LqB690mo6zJ7VWooDuBF
         HGGD1Me9Z2TyNaj1Qn2aPSl2wE10Um1dVTikXQsmou1eB8p7xGaZuGuQOWciyuGh+POa
         cB5HxMXbhNphH1Qbdl5Uw9lFd1LHk9SeJTdoafb6FZALOFNeC3pdrJContqE2wHtZCf0
         mFZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=6rq1Vsdf94Om08xkXlEuJXeoaqV69n4UzDw+9IA9x0s=;
        b=ZIXROy44l4wWbLH+mHVwHXPxwVEJUMOJFDRq6z5YklgatKEsBBHcO6DmkHAvdMEC+a
         6De07imF9xsJRGy2bZzJ0pNXNNVnzoTVp1lXiBbPD8n9SWb4lvJQ+lWIMgXAW+05PabH
         Exo8Wlgk9sFWJFehv1z3CDW3jJshYcN11p5ZIgpMWLmXCEVxpYo90j6XROKJORj//wcR
         5Jlp3zVO635/GgcE25wF0aGlyOFwHGV5F9VZrekUtfsx43szkLxlJFI8T9xz8Xu2Wcb3
         RnWLUU4U1O1LvNbaBiWOLYgXLWkRSqtGrYXd/3/50JX1h5WqEjuaS6be4zlogrBpUQSu
         bAIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fRTMoTPj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6rq1Vsdf94Om08xkXlEuJXeoaqV69n4UzDw+9IA9x0s=;
        b=pD7tjBFu3lXzNfJU+b8GLIWY4OY7mmTSLsh860uBFqfnBcwbyRhyP/wYutlSD+SeOd
         mdkJ6QQZ4/JplUgeie86R7P44uJqC8/H31DFSpn0hpHXMEalaF6fWVGpubPrYw/x7GeZ
         2egM/qZ42vFPmJh727+OniICTsJj4pkYZ33qNATdjhFeo0eFgaSBeVF7EvFzo+g4CU0X
         ZYwpnvorUy5DF2LCzR6qScn4cRUksN6WgMIh8MNdRyQx47zsnxgox9y3Rl1UfM7aiuGK
         WVMmoFjXzSfKjJ0UYeA1S68dQpxcSXHtKAeyX32JRR+AE2LmG/SaWjENX9DBIpXkuN0M
         gagg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6rq1Vsdf94Om08xkXlEuJXeoaqV69n4UzDw+9IA9x0s=;
        b=gmnhmpFdovf5neLkjyLkbbsou48Y6WxDuzyKfEX0KRsBAYxWR87pUCx/5+0oyx8Dj/
         xjboS8isKcAYrZij1j/fxbMRrxHDNJd0p/TEQbim2KiKoDYUYU9Au6N5CaGiMn9MemAG
         DCSzSRwj874ymgsGm1IdFNK3GdsFXBVlyahz8Xd3nvCSmPSi1iTR0Vvn9U1lCdNfREB5
         NnN3oOldaJblfx6/XTcyGSCavOc2j2syEnEULuEh53Xu7sd8I6LUhSf1bjnNDrnn/IAs
         CBoXtVYtzH1Q7zObyk/Op2hQojcj19/O9rz1ikkWDbNzUX/k3lj//lLOQyiI2u6z6Qk6
         Wu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6rq1Vsdf94Om08xkXlEuJXeoaqV69n4UzDw+9IA9x0s=;
        b=SnSpXqhoKRKctyKKbt3X0eCcHv9GuyweMxKT9wn2gMHy6r3O182dzyDbm4/MFrY8H5
         IhOH/2NFIZu85b41RKB9BlaaflMT5pGjRE6mEgEmS/qkP4DQo7lIuiPnXzdPuAP3N0Wo
         M4eUNxlne0NZvrv6MN5xSZPndoyRqDKvdVD5OCrU5nn0b3VDS4zqMIXo5NSRWLB0QFZI
         k5jU6UTwI/WtX/gI2qvIyxtt01rw0MRZe44JD49pfvom/w4jG/I7MPaxDCJqjjWf8835
         6pq4XzUpgmLi5lM+AYLjGjlogJqsCdF4lr9A1nFyk/yG0ZR8wj6Yx3eCz79U+UVdq/96
         fRlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUg9PHFpUchdAmfnGiuqHfYgfsX4XCwZzGrBeeno986QBWWnS87
	hkL90iGcltx97K6oZwhHqEA=
X-Google-Smtp-Source: APXvYqws332H2ce5DfCouClgwqdm1/2R1bVpNYcpeVo+RMA3CHJPZFoZTk3lNT63C+dqy82lQBtiiA==
X-Received: by 2002:a05:6402:134d:: with SMTP id y13mr8006796edw.209.1568780587077;
        Tue, 17 Sep 2019 21:23:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:11c8:: with SMTP id va8ls155000ejb.15.gmail; Tue, 17
 Sep 2019 21:23:06 -0700 (PDT)
X-Received: by 2002:a17:906:6448:: with SMTP id l8mr7856802ejn.233.1568780586652;
        Tue, 17 Sep 2019 21:23:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568780586; cv=none;
        d=google.com; s=arc-20160816;
        b=sL/sLz6tBQTUoiFxUWlvMLMe4tahEeG5op8h4ISWAcVjMcy+pwGs9qKTbjNnucvf2j
         oIZkw5ztDUM8p/hu00KvrMGGbupWeZSmG6O4bBDiJUsd0AzoniCjnJMqjvtovimbtxwo
         z8/pFG3f2jLOWFtjSoawpTLXDtcBejt3c0WQ8cx7TfyzbzrNnOL3N3B/sjmDmoWC/sp3
         2oHFwBbQ5t3tbCyR3WqUPCfSCyygeeH4PhweS2esC6TrTRSyB6Sy8HHcHR80O935I1VJ
         lPLr9rLihinB+eA+aLosNKsTYoG11qlR2iZwf8r2W2neCCX46Q1H+j8ssJLK14pjfMJl
         2yWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rIq1JW2tJfg0PLRUSRfWmLD8aLaxDS+5OXqW5mJJ9Ks=;
        b=T1ob981JnQzakFtCp5vXgFDFqctoW6fM7QWbh/AIdmxv4z9B/1PUb/5z1QCBEHlgOW
         5Knm6RFhuw/lL5zG20EduL7I1nbjQh4+8L5PfAvo4OMkuRpUfR6UwJE7uz/zwY5tCD/i
         rJZWanWD4kmdNm0/rXDbafHh9uY6BG34cW4XkI9P/cfdFvkj/GuV0zklg2QpYmlKOqwb
         3M3mtQX+cBK9j6v8gpJWHjyZ3omlVJB62ZVHhqO3dXfB2PdsrjdOSg4h3V+iM3g6zqIq
         AFconSaMauenwClUTeOHrbz1vovVCU73wL1y/gK4iUYye8AlFdB9mo7MRJ3BqckmUCBU
         /q6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fRTMoTPj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y11si420125edq.1.2019.09.17.21.23.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 21:23:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id h7so5282421wrw.8
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 21:23:06 -0700 (PDT)
X-Received: by 2002:adf:f502:: with SMTP id q2mr1179861wro.186.1568780586216;
        Tue, 17 Sep 2019 21:23:06 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id b184sm1025464wmg.47.2019.09.17.21.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2019 21:23:05 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Keith Busch <keith.busch@intel.com>,
	Ira Weiny <ira.weiny@intel.com>
Cc: Jason Gunthorpe <jgg@mellanox.com>,
	linux-nvdimm@lists.01.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] libnvdimm/nfit_test: Fix acpi_handle redefinition
Date: Tue, 17 Sep 2019 21:21:49 -0700
Message-Id: <20190918042148.77553-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fRTMoTPj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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
---

I know that every maintainer has their own thing with the number of
includes in each header file; this issue can be solved in a various
number of ways, I went with the smallest diff stat. Please solve it in a
different way if you see fit :)

 tools/testing/nvdimm/test/nfit_test.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/tools/testing/nvdimm/test/nfit_test.h b/tools/testing/nvdimm/test/nfit_test.h
index 448d686da8b1..0bf5640f1f07 100644
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
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918042148.77553-1-natechancellor%40gmail.com.
