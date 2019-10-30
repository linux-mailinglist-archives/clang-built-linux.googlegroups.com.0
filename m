Return-Path: <clang-built-linux+bncBDPPFIEASMFBBFVA5DWQKGQEHDJAQ2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA22EA63E
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 23:35:03 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id z39sf1991646ota.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:35:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572474902; cv=pass;
        d=google.com; s=arc-20160816;
        b=oe2of9rw6qUcbRGNsxjfpAimzi1r/A3JhBOYFCOIyCz076H70DRHLmm94l0cw7LYpi
         kgZa6gIVXhVzFGl/A1AZFP0XgOr0FsuBv8VdIleyNAP6HV3qXJCJJeqPE7MoqokjM84B
         6Q+BPcnXLuw7/5JdX0HTMdOCrgS4+Oj+KFDPVmRL5IJ23vVZLbfzXG9tfK0DcdRTl/5L
         trL7vXMQr/7Je3e/DSCEAnr02XAGcixync6zrwsRrTj3T2jGvedfxWFTfRQx9AkBTOfn
         fva+wfa3j6gi7J0lHF35R0oklrnvJQ2eU758gh9JpYhM0P/a1MS1JDSEnxgVt9hz2HVQ
         OK7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=jkA59ajSBTPnkDsoGtxrYunr+uf+kJ+CmtFlVALvp+Y=;
        b=JtK15PtObZp4+KCNS2E2YnJHdLcsa8uOppmwItsOzNYJl07MNYLajTEU4DkNBtHK+u
         myjdMTPSz++kFVdyf8ge1wZgyRuscCH2rg89Y94iYj3aFKo3WhTcRNCxf/ga9V5QDUIk
         +Oxx0n/xS9SBbNBV8PPj/SLpICeXChzhMKdPdCDew0sqkY7Gi1hZ9Yz1tVFOlvESzl5s
         8oI527868gipyDKQRiqBlJRgTGBW89wYz9dV7yWacfidvI90XPIyzAfaAIudw/0jmX3/
         2ZFovzBA3ROnqLKUWkgMk+05Jfqvj70NxOaSaylTGrOLWfT3jQDm1cEYtNYOapN1yVnJ
         1Oog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=to6RZPB9;
       spf=pass (google.com: domain of 3fbc6xqckerez85xv89x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3FBC6XQcKEREz85xv89x55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jkA59ajSBTPnkDsoGtxrYunr+uf+kJ+CmtFlVALvp+Y=;
        b=sfEmv3PkSnYi4i1nkGIG7ty9krU3nQTSvN36cOPtKysVa0je1m2X3TVCAP3ac95Ow+
         WlSLT/T60F8pm58CxneaEj7d+GLK8M2BHFfbhWvLTBYDka211q/Ope5fTuFxKrc1Muhn
         jo7Q0x1OveE7SoO3QtM1/od3Ac+Mlc4h7d+eHxcUSe6dubFA4qRRB1A6sL2+9iD+VQgt
         0KXihB7IRuVV+dAKuoUdUL3+ZtPhLK2IM8anYjAXmKxGuJAbpUdOZ49rLa/MTmkqLRvX
         npcedp0J6BRJhzYofBfuwuUgmqwrJXLQH/9UWx44W640cShIktp2j8KWrg9NN5VW6tmZ
         6igg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jkA59ajSBTPnkDsoGtxrYunr+uf+kJ+CmtFlVALvp+Y=;
        b=WSoQXiFT57hTEOjBmAOCrX7S3fy8Nb0vof26dY98CT3tNet0y6L5tEuRalc0ZhLFA0
         HrX7NIWLbXO0I3RorQqa/9mcHfywGo1yy6u42k7bZ7dlgkHAxuTQlAJiZE0fbpwvFvQG
         eiv+WYGNQHF+/hzkeeCuVbWOk1v4w5KvH8YyVVYktJdHohiblP/90uXdSLbi2ex4MX5J
         bgAvUwsll0ZNoGo8zT262zkjPxuHnrVem0NI9dFRPyz81o7kOxgJ5ilgsCXn8VgBs/79
         a8SLmBy81P4XPq7FPUm0g4lwYupBvx1znk8zwIH+Sf6A++AvF1BdDE7VqezbCK8RQrWP
         tFtw==
X-Gm-Message-State: APjAAAWYJTWPLTCpeAzfDWjO8U4oysBFXED/mKPy+ofN1sE/UpTd6IG7
	akKeLuGBYcJmkMjEGwNxPlA=
X-Google-Smtp-Source: APXvYqwJGq03NI6mjgWcFIL10cqbuKzK/bhe78j5dBHQTYDEU9cJyscjd78FvlRZjRAxtrs5c+gBvA==
X-Received: by 2002:aca:d90a:: with SMTP id q10mr1401935oig.129.1572474902106;
        Wed, 30 Oct 2019 15:35:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ac7:: with SMTP id m7ls114362otn.4.gmail; Wed, 30 Oct
 2019 15:35:01 -0700 (PDT)
X-Received: by 2002:a05:6830:1d89:: with SMTP id y9mr1906403oti.131.1572474901835;
        Wed, 30 Oct 2019 15:35:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572474901; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9M/NuxarzKSfcb0AwuDneGkdDYH/EOG5VP4ly87uyllIqL4ZVHRoVihiI2JqxcaqG
         m8B3emGS1CG6euIvtrWKHTGq6YYIgeai1ZoNWN0rE5jOPc1JY2yrNPX8Ps/kj7rLE8oh
         ksGxgnHl7pFfI5y+nttg3g883a6i6uUE0qrol+4MMW8JuzNFk+esn6D/uXp/6M0Hq/Uy
         zuah4eGkU+JMpICwBmvZKduEtp1HWUXI6OwrMv9S9CcKBIJ4orRm3S9LYQwyoA6qgXzf
         Nm5I7yMLWvtwI9IfOCYopBM3hZL5zvNlBTGXD7/ubcZ+a4S9iyGnBveQ5lvi7XR+bWhs
         XFDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=NBXoMPDHJVu6DlppqIY2kjj0WH1XM9PlNXSL9vxvGXc=;
        b=Ek6d1iRal+yxrDqPjdkMZEECWvTREw60K3gMDjhrXIPQx/z0woG5ixV2o4MvQ5jeWO
         VtTFAPAXd07dgpSQZl43LiWoDdUBOUjtg2xcx40aHzOd/3oqXy+Rb039PAmEwnMVpPM2
         4XVudkpJu0bzCEfqvce530hURgQSUd8N4PcOBqtzYhez6gaFRmUyfW777fK5f1q16M9b
         IdmfB+f7tCVJ2AVYcAZq/C1lyHZnJ9vkpcoCMfc5H2QV9T21HrMxLYwUcMvEefrvMmrH
         OQ+ssxKgavdLXcKHI2J0YDPRs324W5uzCq2+h53QcQ6tAB38NJY/A0zkMh0GgHFNgQUh
         OPMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=to6RZPB9;
       spf=pass (google.com: domain of 3fbc6xqckerez85xv89x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3FBC6XQcKEREz85xv89x55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id k184si195622oih.0.2019.10.30.15.35.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:35:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fbc6xqckerez85xv89x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id x8so2515704plo.17
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 15:35:01 -0700 (PDT)
X-Received: by 2002:a63:e145:: with SMTP id h5mr1976435pgk.447.1572474900839;
 Wed, 30 Oct 2019 15:35:00 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:34:41 -0700
In-Reply-To: <20191030223448.12930-1-irogers@google.com>
Message-Id: <20191030223448.12930-4-irogers@google.com>
Mime-Version: 1.0
References: <20191025180827.191916-1-irogers@google.com> <20191030223448.12930-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 03/10] perf tools: avoid a malloc for array events
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>, Jin Yao <yao.jin@linux.intel.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Kan Liang <kan.liang@linux.intel.com>, 
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=to6RZPB9;       spf=pass
 (google.com: domain of 3fbc6xqckerez85xv89x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3FBC6XQcKEREz85xv89x55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

Use realloc rather than malloc+memcpy to possibly avoid a memory
allocation when appending array elements.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.y | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
index 5863acb34780..ffa1a1b63796 100644
--- a/tools/perf/util/parse-events.y
+++ b/tools/perf/util/parse-events.y
@@ -689,14 +689,12 @@ array_terms ',' array_term
 	struct parse_events_array new_array;
 
 	new_array.nr_ranges = $1.nr_ranges + $3.nr_ranges;
-	new_array.ranges = malloc(sizeof(new_array.ranges[0]) *
-				  new_array.nr_ranges);
+	new_array.ranges = realloc($1.ranges,
+				sizeof(new_array.ranges[0]) *
+				new_array.nr_ranges);
 	ABORT_ON(!new_array.ranges);
-	memcpy(&new_array.ranges[0], $1.ranges,
-	       $1.nr_ranges * sizeof(new_array.ranges[0]));
 	memcpy(&new_array.ranges[$1.nr_ranges], $3.ranges,
 	       $3.nr_ranges * sizeof(new_array.ranges[0]));
-	free($1.ranges);
 	free($3.ranges);
 	$$ = new_array;
 }
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030223448.12930-4-irogers%40google.com.
