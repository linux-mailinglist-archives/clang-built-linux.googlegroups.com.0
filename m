Return-Path: <clang-built-linux+bncBCM5BN4V4QDBBAMSRGDAMGQE7RMVFVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EC93A31E2
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 19:16:51 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id b23-20020a17090ae397b0290163949acb4dsf4281460pjz.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 10:16:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623345410; cv=pass;
        d=google.com; s=arc-20160816;
        b=m3WFAt7WBx26kXj/xg/XfyHojN8ZZhl8hVTvaC8Ba42jzoKPQy3TnWYuL6njLnv80G
         Wb6n2B1JqB1pWn0cpqwQVDoreVdpBPXzPg7iWBy8Y19lA92E/2yviKTDlromSYEcN23T
         FJlsohgJkXWeJmN0Nw7Fv9QTl7czX09TVFi+b9Die09+ZEwGuJjf8K7OMSsXTpUzQViT
         pq2pCI8TrBDWmipng3wlQ/TMK72voRxWaqdPfp/hU8a754h+oQ81CiSpm5WiDlnTAjMD
         P5arsCx+eRW/6E0Ttk5o1s+uENehrFRsClV9PfcFAP0qIEROK7tsegK17om4lpgKMxs4
         2DSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=Y9gQaFBp4HDaW1U5THdI9c6AhzjhzKOgkLPPiZZoCS8=;
        b=H7p/3vGFWZYROdNavABK6VDD1PSJu9roH7h+9sLQqIjhQalqqfGHh4q7mZqE+VhlAx
         P2Px/01kGcFJYuvKsgnQlVZVuIAsWW1t4kGyBoU+jvOgxIE+w7bslmeGc4ODdQ8tLqDi
         GIXJQ8KeyQDdcoj0CFYYzKOy4MsNGmDf4IuhadLDEaq4UxnI32PvlE+91z/nLKZdJFDW
         n26nNTTSs8zFyU4QsSPS8+zfFETwoH/BsmAyzLwZo4r4C9VAqJ6ouNgKhgde0FAG3KB3
         wOG1WFLhixtTJXkKqt+D5pOsOgVCFUwqrAaU1beDZy1etf4HOsPZ4/RZYUE16Y+VFYHi
         MDkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=hYKpETYc;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y9gQaFBp4HDaW1U5THdI9c6AhzjhzKOgkLPPiZZoCS8=;
        b=kjaWSzlpe0SnkTI21on3ObLrYlAkp3Wtvqo+mS7dQ2CxgeTE21IxsSiSRSdzW+opo3
         mtva0XT7B9sowYk76ZeM+n7wfdh/8kvPfFPUZlsxn5ij+ujOhVdUpdoGb95+0aBvpFNT
         c7EKFWXFDM46v7UgEa8V/l/mPcTIJdrwkYCS3deRba6qDeIaCuMY2vc4MFi76jvIB1Jd
         mEKNdLiokR5M/K3z7k6bg26+5tJH7I7SQEZs0CggbpOmkTkilUmd9DGTDeI0cK5uZjIE
         EvgqMS+qZhodcVaIBkQ/AE9rdhkr+8yx1tVWX3V2yAnEa60Nnwe67jEwPICf9ev8GqDI
         DnTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y9gQaFBp4HDaW1U5THdI9c6AhzjhzKOgkLPPiZZoCS8=;
        b=jR+0gJSkcTg/+tKwNH7DLxt9E424vvGvClRh3r9Qdm6kE6HW3yUQrdlAZt3H59X549
         LJOvWLTQpHvcQOhjUR5h1C59yco1tNWm/OAUHBSQRxntCgkqtdF1y+gNKY0KRqnqrs4J
         1b45rAJK3Ruh78TL4OsZlZ4uun6NTawX8JAKEp8bil4GXlNsRLVraFeYzT7A9/Oo5p+y
         VvocjMOXLPZ/6U0th8nRuR+Ezq5v3kge9kFjFYljmjHzArovn0858JUnECDLBTvCk462
         +PRXJHIOGzG3aVYfMiH1uAGrD2Mg0RivW225eFsdllq8bY43c8a2U+S7t2OliqOh0oAy
         wWGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532S+h0xJE08BITMZBfNVX4zHPadMthlGhZqc2Lnwl6ck0aBIRgg
	oXjx7bGzPQK8by9viPioUcE=
X-Google-Smtp-Source: ABdhPJwcAMH0iRhKm9tbo0fMg5XUQBaoVn3tDrF1FU6E+6bbDekSd6NLA9uO7yY30A6dFeB1CQgDDg==
X-Received: by 2002:a17:903:2093:b029:117:6a8a:f7aa with SMTP id d19-20020a1709032093b02901176a8af7aamr2503572plc.6.1623345409986;
        Thu, 10 Jun 2021 10:16:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9517:: with SMTP id b23ls3346239pfp.3.gmail; Thu, 10 Jun
 2021 10:16:49 -0700 (PDT)
X-Received: by 2002:a63:43c1:: with SMTP id q184mr6068013pga.94.1623345409301;
        Thu, 10 Jun 2021 10:16:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623345409; cv=none;
        d=google.com; s=arc-20160816;
        b=xu8yUsytuWAkDTD2x7/zZai6MQM271yTq03UCe0Ys0HZBX/7W13MMtIIlcY8FtO54J
         9Mq1zNuGTkpKjG4oJrKUYW13dzUmfCULysKWwpCcL54iv9JrudMWVlQZbGn0IpCqzTNZ
         gBxoKlASgVbYJjKsJkfIHsPXjFzNWskyc1qA/c3qhkYW5oJcQKCM4yxjyXAJqD2sYXwZ
         lIx3XVAwV1t1zzWME/uxeDfd71Fl6d8n/bcqqVv5vkkKFwOWHfDpQqgIwHrpO4bK+5Rx
         5OZVmj6969urZriU8gif8vJQ2Y1cy9SKqHORa2uVd5Ct6RyYRFAS3q084JsxixYGmAIX
         bagg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=QI9MxdMZ4JjR7zc8B0qW2kh7lEaVTJjZJKw3Xc8/UQ0=;
        b=ulm/99jmZOq1zFa+OJSgT32S0XgjWGr4DJTd982pnY3B9ffxA9Sas4OQ24mFzvME4X
         4fWV7E/effJ4y1PfT8bHoKCDRCc2UNYFKP6ipmAnpQe1v/AdrgD3DN09XQ8o5VE31cWQ
         G2bG+Mp8RL9SUtEW1lHDND8uNsYFg7Jx9dMgIG9rS/17702PsfXhp6wVpIEVOVDZg5qs
         0sO0e+Uj7wrlCZY889PNkMqMqHBHPYfwe7JQbxVlxuszgaZSqvN85DNgTzDMYRjdWycG
         uJnGZce8dE3E3fv2ED/Vw9osAuP3VA7/ASxxKT8NYZ0fxnQwYK5b1EvnusJqLInk5eD/
         oM1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=hYKpETYc;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id n2si61898pjp.2.2021.06.10.10.16.49
        for <clang-built-linux@googlegroups.com>;
        Thu, 10 Jun 2021 10:16:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from localhost.localdomain (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
	by linux.microsoft.com (Postfix) with ESMTPSA id 9E24420B7188;
	Thu, 10 Jun 2021 10:16:48 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 9E24420B7188
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
To: zohar@linux.ibm.com,
	robh@kernel.org,
	bauerman@linux.ibm.com
Cc: kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-integrity@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tusharsu@linux.microsoft.com
Subject: [PATCH 1/2] ima: Fix warning: no previous prototype for function 'ima_add_kexec_buffer'
Date: Thu, 10 Jun 2021 10:15:52 -0700
Message-Id: <20210610171553.3806-1-nramas@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: nramas@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=hYKpETYc;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

The function prototype for ima_add_kexec_buffer() is present
in 'linux/ima.h'.  But this header file is not included in
ima_kexec.c where the function is implemented.  This results
in the following compiler warning when "-Wmissing-prototypes" flag
is turned on:

  security/integrity/ima/ima_kexec.c:81:6: warning: no previous prototype
  for function 'ima_add_kexec_buffer' [-Wmissing-prototypes]

Include the header file 'linux/ima.h' in ima_kexec.c to fix
the compiler warning.

Fixes: dce92f6b11c3 (arm64: Enable passing IMA log to next kernel on kexec)
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
---
 security/integrity/ima/ima_kexec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/security/integrity/ima/ima_kexec.c b/security/integrity/ima/ima_kexec.c
index 667887665823..f799cc278a9a 100644
--- a/security/integrity/ima/ima_kexec.c
+++ b/security/integrity/ima/ima_kexec.c
@@ -11,6 +11,7 @@
 #include <linux/vmalloc.h>
 #include <linux/kexec.h>
 #include <linux/of.h>
+#include <linux/ima.h>
 #include "ima.h"
 
 #ifdef CONFIG_IMA_KEXEC
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210610171553.3806-1-nramas%40linux.microsoft.com.
