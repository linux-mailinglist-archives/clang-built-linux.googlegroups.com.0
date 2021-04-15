Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUMJ32BQMGQEFDSMVVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4357335FEBB
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 02:12:03 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id m7-20020a0566023147b02903c31e071e26sf506674ioy.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 17:12:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618445521; cv=pass;
        d=google.com; s=arc-20160816;
        b=ujtrKB2u9BU9f5ow4hMPXz/QjUOY75EFBKYdr9JFgaGih8qweH5I5JlzG8XNXsWjGR
         rA8WiybWTINt/BRASqZg2wlOKmvdwCpTtsKnpu6ZyRvUukJ+mFcFg0k2wMjr5kbcRhNC
         HN6l1PHKkT+UwXiSEH6Wlr06fYn/9zv5EKMQxmUfphE0qYtOt+tX6jsnEipUlwjy31bD
         fvtYxaaX1TgWJHG/5RTEJIywyj0K0rKekiHX5sz/HnvzplpVaTWJgGsQvf5IJ24TIxno
         nbj0ENd3tqIs7f1zCANGrv+EvTlZABINcA/mRj8w3IJl7ZXZWjipEOCznrRXO8E8DkQU
         hicA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=2e/s07cAghrBWjrpSEBoEXd0SXrSZdSOXceOO0MMDBM=;
        b=SD04WHpM3tGygDxvmygLj7XOagPUBS2fdcu81cjhdIOkeYxrOlfZuB81e0LkBV49nD
         RiTiDat1QrWNjVvnS4goUq18Dr3vzyyEAuZExd2VmA8DRgG3+zKyUBn/6l43G5ayhync
         fuQZscXJV2F3hbMEPtLcTh1GPBt94OnZKiUjLVOOgE40AKm+l0nbv+Z6f4KGRLWodwfs
         BPAWYNCtlkuiMKXAGLOSwwRP8l+DwY6NisnkGDfOyLCPtpdNnadvpbHm/3aMgaRMZ89S
         8SnC0h/0YKcq4QTH8aDd4gtiBDf8kO91Tfr5i196lHuMzrwCuTPSiqods6GqZtVyR32r
         l7+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mZ9mNCKO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2e/s07cAghrBWjrpSEBoEXd0SXrSZdSOXceOO0MMDBM=;
        b=jBhilvWzcQ4Kv84S3vzb9d2XemdSHinKqjv2+6aYK0hiZOD+a8RIUCl1L0CmfjKnOZ
         gbyfByRus49hJyEzo5ZVSMC9WQC7BhYpxnuR+hl+M0pZTOMLW1+2mYgd53CiW8Ypn/JA
         JwfC8Rlh3niSGikjmJ7/lJTF6vossMtDJGnikVweGTfVDvYGlh6k7UCzPSvqWJLkws9P
         hrc82/hherWgnGsRKl9fK2OuAE5GB7YZSPN3ywULkhYStWCguqh93j97LVtYuxm2rw1j
         7h+MnQa5eZV+s0Khcy+4zkHulVaUXkCRWsyE1AFcTMjkLfn+R4o/eglGd4CfSYQS2elb
         9UVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2e/s07cAghrBWjrpSEBoEXd0SXrSZdSOXceOO0MMDBM=;
        b=qXM8r4z/rbZ83f6NJ6P+NyiapMUFbulHH3cild6f2G4GWAqYiorhNX6GR0GB5Sip29
         6d8ZeMeawxGOeo01pf273K1+DFV2so1zqhgLzQSk9rHg9slEqTupKGkjzd9gUbAHqjS0
         iZHHJdrR0IpuZcpQUf+WVOkWiwvBCY1dtc4utq1HfQmSLRGpvRHRO4QNzBPHeK3l0afu
         Yjeu7RA89SQJzvdQ4QofurvFaeJBZiVVOAg2TfOnElx9oLlofDTz8m4SkpNMimSL2A4k
         Q0C5ZzNOBW2OQ3tJE8hLPa2MBPA9cJEf+L6CCxmHdQg+kGFsUEgOPt2B8ghBmEk32KB4
         b9lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ruoFptly28PRbz5wwTlq0AiS2bRaZGG6R/JkLW2JmwVY1oBV2
	lyYuNiOJ3k95s4PqIakRxHc=
X-Google-Smtp-Source: ABdhPJxmQDC987FfztxKUE3UcrWE6ixfC147sqoZDBSgmC/YMKbA9FLHa8Y7gPGuoNLehu5pNKLdWA==
X-Received: by 2002:a02:77d6:: with SMTP id g205mr478312jac.44.1618445521354;
        Wed, 14 Apr 2021 17:12:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6102:: with SMTP id v2ls546955iob.0.gmail; Wed, 14 Apr
 2021 17:12:01 -0700 (PDT)
X-Received: by 2002:a05:6602:1649:: with SMTP id y9mr471132iow.209.1618445521015;
        Wed, 14 Apr 2021 17:12:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618445521; cv=none;
        d=google.com; s=arc-20160816;
        b=wN5BpGeMANA+1VX0zKpSe9WWJ8QpHt29T7fDNF80ICPmu5brFFgTwq3pNBhls1ePYZ
         v6fHg0X4wCZObWNc7R7THGGHhg544pDofhg/tqKqMqncYKZMjbQ1WOW7HzSUwmsqYZo+
         SvOCjEF6V5qys60vT0ZJC//9I3MOitTu7xWQdCMHNGHNNqjNk7z0S4F5A6zw9G9I9lwv
         Nn9xd3z9+qOxUvKYY5i494+Rq+jImZbXMQpor6MaGDeqP7fXYPM1gSuKOJRvXPzEbCLZ
         ClcvsdYP2xMuomWlrjUqpkB0HgRxPZXcL29TH7G+zYU0xYvyUhleC+VeE+9GPjYaHXp/
         iuhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3bEbZjHZXy9xYt4Np3HPg1kM4HvLEvF/Rl/hOnlX9L8=;
        b=BLwNWKDqOfYRxMc6pqVYyt5NwzCfk+bepsAKEj8D6fE2vNXxDX9PmVGSNvAsPo7xZt
         GRlFv+f9tSAFeWoz1Zq7lUAG2/FOltnB8QRk8qQ+ao6BUkGN2bmwS//eGFPIlDV33Jbw
         rECBXHz8KdtRJkzb+QHE6K8sNYeVkcrDp8tZ39yeK1wHlqRCTNP9OW1YvPHtiqJ4gxDD
         5qk6nfjpKeZtZGyFprIJkfWq09UJN0dY/QEhnY470BI+DEu50uaAVobT8/FZJCZyi8Eq
         aCjNZ3d7XPnsyxlI1mmg9vMbyhT9xxVhBFFUiBMJK4PpD/XlilkG8d12Xz+4lUZV5O46
         1ycw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mZ9mNCKO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x7si45993iow.2.2021.04.14.17.12.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 17:12:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 94387611B0;
	Thu, 15 Apr 2021 00:11:57 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 1/2] x86/events/amd/iommu: Fix sysfs type mismatch
Date: Wed, 14 Apr 2021 17:11:11 -0700
Message-Id: <20210415001112.3024673-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a5
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mZ9mNCKO;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

dev_attr_show() calls _iommu_event_show() via an indirect call but
_iommu_event_show()'s type does not currently match the type of the
show() member in 'struct device_attribute', resulting in a Control Flow
Integrity violation.

$ cat /sys/devices/amd_iommu_1/events/mem_dte_hit
csource=0x0a

$ dmesg | grep "CFI failure"
[ 3526.735140] CFI failure (target: _iommu_event_show...):

Change _iommu_event_show() and 'struct amd_iommu_event_desc' to
'struct device_attribute' so that there is no more CFI violation.

Link: https://github.com/ClangBuiltLinux/linux/issues/1350
Fixes: 7be6296fdd75 ("perf/x86/amd: AMD IOMMU Performance Counter PERF uncore PMU implementation")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/events/amd/iommu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/events/amd/iommu.c b/arch/x86/events/amd/iommu.c
index be50ef8572cc..6a98a7651621 100644
--- a/arch/x86/events/amd/iommu.c
+++ b/arch/x86/events/amd/iommu.c
@@ -81,12 +81,12 @@ static struct attribute_group amd_iommu_events_group = {
 };
 
 struct amd_iommu_event_desc {
-	struct kobj_attribute attr;
+	struct device_attribute attr;
 	const char *event;
 };
 
-static ssize_t _iommu_event_show(struct kobject *kobj,
-				struct kobj_attribute *attr, char *buf)
+static ssize_t _iommu_event_show(struct device *dev,
+				struct device_attribute *attr, char *buf)
 {
 	struct amd_iommu_event_desc *event =
 		container_of(attr, struct amd_iommu_event_desc, attr);

base-commit: d434405aaab7d0ebc516b68a8fc4100922d7f5ef
-- 
2.31.1.272.g89b43f80a5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415001112.3024673-1-nathan%40kernel.org.
