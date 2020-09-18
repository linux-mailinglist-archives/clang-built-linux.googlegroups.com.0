Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBW5OSD5QKGQEQZHPVPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6B026EC51
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 04:11:40 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id f15sf1213263oto.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 19:11:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600395099; cv=pass;
        d=google.com; s=arc-20160816;
        b=XtFeVEAEvTd3RPIBqMu5m8JBJ9zHEYfaIxvVmphvu2DmMijSHatQV2W69mXrQlVPyY
         URWDi7XMPKEUK2n1tycKkgtUykvMUBAqXHquYcYNrFj347Cm+Q5n0wfzcHxiHcgI9/9k
         Bzhx4jmMsdPbpEKzAHtjU8dFIxHiYh1GdRigmBFSmYjiam4QriSbset5Rq0ydiZY8La4
         /KalVIMf5BFU/0Vb57yz93HsPN1UiV4bo3Jjb7lBJGphFuuL808+lumavuA0lW4a0B2S
         vBp3pI3drnk/iwdySUSshKXeUb2Mxmp5o5NBiAtOO4R5haAsUMfTfbpVXyL7/wFAI9lV
         Ds5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RaN55Zzdc1pzmdEY8QzLmh3oadWzamVZLwk8yR37q20=;
        b=bLKKmcG5zrVDcD+qJFSR8TH8Qa1AcKhzAoHZ2GDdI8dw+DSlbNLqzNaP9wMUKV2DFK
         YvU3e2EqV5smjO1wlTxIHUTOuY5tWtHjSxJlxcDATC5eAnlGf8m2EIeWKkzg+PDAaNg7
         wFwLvYD0kFscKWSL79fDGpVxI31TJ3PiWZMBvIfdvAMgX38Pf71JuwBJH5rrvhz4Fi/d
         ytgWDL1EpiIMg/D6YzwZhdUiluBQQnVVyPhy1n0ZA866weFE8B9s1Y1HSJp/N2bJsv4L
         WWoFryKBhzvRTXqC3RrWp0cR7VBGBWxP2EDlXaTQlS7IaVZHESvzOdaayTZS5Ipg0QMM
         wrAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AGnMA1J5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RaN55Zzdc1pzmdEY8QzLmh3oadWzamVZLwk8yR37q20=;
        b=q+mrJPG1WPenwdt3InijLnj79AvEAIwk/BpyYB/3UNLxGNrgtbmfTnEwp8tgnfS+Qy
         3zQQqWIvKf0qXJpf7u5fAg2pn69WLGtDLoCZ1VgpQzWz6FUZDXPbShdp91AJ8d0sECNI
         5iuFBjXaBQwafBg4VCFtEXhGeqVpJeeDrnS4pV1Ig8I6GicRw1o+yOLwkgXCuzR4eo+8
         v+WKPbladAhTSWk7ygz57NMGB2Ko0sWxRXhGv/mZffSFEiMClaF1m2J1FiOEm5SS31mv
         0F0EDL/7l7JR+lIQ2ohz4YIvzZxG/f72uKA3S/59BF9GhlHMAkhLrGsCxPdPS+4GaKab
         0cAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RaN55Zzdc1pzmdEY8QzLmh3oadWzamVZLwk8yR37q20=;
        b=BWgsLQXgd3p1H3xJdO0TMC4DOtUTCveASZ00gVqhWX4gA67FT/VS2cbOED7kK2VARg
         dJF2qWx8k3kBCx1gR8mibN5MHiiUANXNbWPXeNzzlcHPi+vXsBIOW3CHokLJsqdHVozK
         zjXohCSsQ2RT19FtuGRsot0v3UR6tU8DX7Q0nxDRARPMh4UVtPfDzvmPL8JdOj2AmhTW
         laLkq4+I53wIuhTnttI/w9tBCaXrAOly/SMkK3SsYEKI3W3ffh+mrXImQFtgvtJh0a3Y
         IusxN2o5cXooP+aKiioJ48W4o6YOtFaoynQeFT6YtpoD3eBZT5qOB6Z3DhwJWCqkt9Gj
         e4RA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Z9PkSAYFh/A7jCMnzN3dnrOdFYW2aQGBt3sCuItLsZMukZr+f
	BNq7YVryh5WMg0qIFsqhZsM=
X-Google-Smtp-Source: ABdhPJwO9Bc15JJtHB9bb1SxD0Ww+iKfR3J6PVIlK+nbxWR9plo2q8ws3XtmJo10yLOzfae2nsYHBg==
X-Received: by 2002:aca:c6c1:: with SMTP id w184mr8437563oif.67.1600395099331;
        Thu, 17 Sep 2020 19:11:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a987:: with SMTP id s129ls937527oie.2.gmail; Thu, 17 Sep
 2020 19:11:39 -0700 (PDT)
X-Received: by 2002:aca:815:: with SMTP id 21mr8335361oii.5.1600395098964;
        Thu, 17 Sep 2020 19:11:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600395098; cv=none;
        d=google.com; s=arc-20160816;
        b=Glt9jpA9V8sBcS/Vl8emJ9OyKCNbbGQ2nNAsA7AKBCh3JRrrLhP7R6TQ9SM8kyv4+X
         +jcL2q0xNJXgfZvQW/wfZ5uFCInnvqc6eotaWB6DZy1zB98GidLWZCW30VPcBdhr43yL
         c8PRKxKlC9ItsKQbP+Nv+mgsjxxOwlO52ZxNu7UzDFFzRhYiJcIf+8MXn5Ae0BJPnnpJ
         lYoFWgjffBlvIoMA02k2ALtikbCQV6JhuU0snPFzqY7Ld7cO0FGdqyPlv/Iox+ip8+lD
         lpBQeDaByANsEoyLF1OCHj518DBR2V/5D19WNpNMi6N+g/6QGAjG+sBx8uAeNHmHG3Ji
         cIRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bUROmX1Seau/c4kNI7hCr3xl8E512lva1OdNc4mHGbc=;
        b=bCX6zTaqBBIHbP6tTpueQojIBxtKGWH8cCM8DBSbXqA9qciJ6cD4GjE0sRDkFC9Xkj
         xdi+hYm0gOEvD/Y/1FHN8Yr3EqzrETrAy4+Onm0biUwVz+y8z85C9kberdRFWV8b9U00
         ShrmVx48RN65dC/Jh9CJpb1DF5ZDg+EBAIANvyRKFU9PJhFXZ64mza7bEnQnjn6eFkPo
         DJ9BmrVp80tm34irny6dRyEWLsMVhDrYiImGDtXTDfXzHQ6sdFASaUegwQ1sU0wRNT8V
         yME8W7LP47Mbd1PssNRzBC9R+ODbDYav7v1Yq+gVwvC9d9bmN0ZE9sHGLAcJOXfT7I5K
         K9Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AGnMA1J5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d11si177275oti.2.2020.09.17.19.11.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 19:11:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B928423976;
	Fri, 18 Sep 2020 02:11:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	clang-built-linux@googlegroups.com,
	Jiri Olsa <jolsa@kernel.org>,
	Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.19 178/206] perf parse-events: Fix incorrect conversion of 'if () free()' to 'zfree()'
Date: Thu, 17 Sep 2020 22:07:34 -0400
Message-Id: <20200918020802.2065198-178-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020802.2065198-1-sashal@kernel.org>
References: <20200918020802.2065198-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AGnMA1J5;       spf=pass
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

From: Arnaldo Carvalho de Melo <acme@redhat.com>

[ Upstream commit 7fcdccd4237724931d9773d1e3039bfe053a6f52 ]

When applying a patch by Ian I incorrectly converted to zfree() an
expression that involved testing some other struct member, not the one
being freed, which lead to bugs reproduceable by:

  $ perf stat -e i/bs,tsc,L2/o sleep 1
  WARNING: multiple event parsing errors
  Segmentation fault (core dumped)
  $

Fix it by restoring the test for pos->free_str before freeing
pos->val.str, but continue using zfree(&pos->val.str) to set that member
to NULL after freeing it.

Reported-by: Ian Rogers <irogers@google.com>
Fixes: e8dfb81838b1 ("perf parse-events: Fix memory leaks found on parse_events")
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: clang-built-linux@googlegroups.com
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: Leo Yan <leo.yan@linaro.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index cce96b05d24c9..426f1984c143e 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1287,7 +1287,8 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 
 		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
 			list_del_init(&pos->list);
-			zfree(&pos->val.str);
+			if (pos->free_str)
+				zfree(&pos->val.str);
 			free(pos);
 		}
 		return -EINVAL;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918020802.2065198-178-sashal%40kernel.org.
