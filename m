Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQ4QWLUQKGQE3CNCGQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BA268E55
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:05:56 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id f22sf19838762ioh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:05:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563199555; cv=pass;
        d=google.com; s=arc-20160816;
        b=huOkyq/pvwHpWEHst6VMrOBmWOAxFhnBsVU4G9++caO4SCRrF1U3wpiICcfylIot3S
         ovXfsW/TqS8zOW0nzvFZGjOxXSGVPPt1HM3aZs79pLMF+MqKXLeJP2kS3kwCYpErs9sC
         BF9kxPnPrVvAyXkjYiDzKQvrJQX5M2DhmRCcHhPaAeWmN3LZ1QCTisyPoTG+YwF39q23
         XO8HqQeYQ7jXa8tW/i87y2aNQkr8eH5UVZjg2pW1swWvzQl74NP6fM7vNsPWm84Ndns4
         Cy8g4q4yQpfI6m96TxGkbdATqUbvYueF0EoekaUflDLH55RTkSe6XLvGCZtOSQi55gQI
         bAbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2uF3sQA1bvo29Du3cOVT/fWt42RkKBB6n2PPFzeJ9yU=;
        b=DkmzsU/vex5sZRSklxdRPijUXTach3SySzIeSpxbnFfXxf7wH7+etaVHnIvbc+AsuU
         ly9yvrO4o09pDzVw0hI/QGrM0G0nJH73nb2UQf4FoSfJKOrc0u/0Wckgv9a8fqYLW+7z
         QbJb7ga+KLxYLs6iNo1+7+nXf7RqunU0RanHKISY5bZ/8yTqZMaZ95OGmYgDp8eav6XC
         /WzqEti4CgDYIovvQS9QFUecgrZCfLcymN06dPoich13d6w5x1Bz2kc0nb1OyBQlqbaw
         fpwJGImF8V3cN1cO3vHEHfUBNBNRJ9PmUt7yPBgfJlCmmGh+eCTUEPSuJsEzhT2omf8A
         aWzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j0BxwRcv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2uF3sQA1bvo29Du3cOVT/fWt42RkKBB6n2PPFzeJ9yU=;
        b=E2KYUzmt5I2lPjipnTFI1va3fyCeCxhd2+FYSIPXLv3nrTUL0M1qNV6epkEZWCcr3/
         tZAnPPFLkrl+IJPwrsaply6f8bCjMeKWDa6eIGrc6p5Ulxh3kXsKPhOQ5mpvFzlNitbG
         kW8CpbwXo2P5kMH/1FmiogusdxjZ4uABqhiYkkQ3Yg53atM+B/vdJ+gY9J506KhtKxq8
         a6ZPMCnqRx2obPquRFh8MBd5Zyz25gFn2a9KD89YOFQOaIF6SpZkPad22guIatGBr6m0
         xv7JYgD8wyHCpzr3Q5GES2gEKEUE/7g103+NIyNjnhg4D4PUEKDdNtd5Xn7AOd+qFSE0
         7nDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2uF3sQA1bvo29Du3cOVT/fWt42RkKBB6n2PPFzeJ9yU=;
        b=jFk3rDk5Y5woT4o5IzyRiDLDOC1BQoVx4ceMB5/Udh75AjJz5wSOzhJXijPgFxsQH+
         rpFjEG1OdMrrSLQxCrh5NMcrhRHGWIjSOoYgbmPUBNkM/W9n/nZoqKlRKFAX06Se3Rzz
         Dz9cvIoldzklAoHdZY4K9PkORSIUnE2DrNAOGdJM4+FxadM4rzh4DWBWO2vpRIcx6pn7
         dqp7HxmxSyJE5MViLc/IxQQnxKntO74PPb69Ky3ggJ0uZu7nKByfG+NR/sR/ZjTOSV/K
         70TwV7a5PTiXTI4ie1Soo8Y9r/4HT7VuT6Gd8TFzs8MwutdwGembhYNiz5AoUBWaUadB
         RXHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXgWloM/z771vw1f0sdrmRLbJiZ8NLjnK61JiAzRwNh2kvTJn0S
	KIgvoZOJMTmb53mE/Oo+YDk=
X-Google-Smtp-Source: APXvYqxI4GYFTUBKvKi8cjl55H6heB42nfjjYYmeH+K0gUMvr+FXkGZYdLdPaRNGmob6gbRdOAl0Aw==
X-Received: by 2002:a5e:8e4a:: with SMTP id r10mr13585783ioo.100.1563199555377;
        Mon, 15 Jul 2019 07:05:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8711:: with SMTP id u17ls4987443iom.16.gmail; Mon, 15
 Jul 2019 07:05:55 -0700 (PDT)
X-Received: by 2002:a6b:c98c:: with SMTP id z134mr24365066iof.276.1563199555138;
        Mon, 15 Jul 2019 07:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563199555; cv=none;
        d=google.com; s=arc-20160816;
        b=a17XTltqbYo18J5WT2xJ46h1qzhG+z4xgV1TKecBUgTIyJ0PLwSPIUUroaV12fXpUA
         6LZ0JY45xQfUQUD3y7DhWZ4A+DrgeovmZoQECWvZxbrrNEFBaT3Rr1Inc4viLah9iWmy
         R0vpBTcH9NMhICxhmbfiL+QaINthqBnRVocSDkoxsCUwrjwgH6Dzuveyf5ZyCxtYQ0S1
         O4II/+4i1z183LH3koyAMxQQprACxtdvlYQszA+lk8tJmBS1FfYlmSMOx60Dzy/lnnQD
         8TS/3g91m6L7MwRl4JVGSIBNwIo7NSoyGqhBfml/N0v9Xv3basMn8QoYjtYeR+OdAlFK
         T20g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AYYNk4nIkcwXAvo44vVnkl8E811DgImONh6PbSG48MQ=;
        b=X7k4vqbHDXL8zIWVu+HIQncqVnB+5uhx9KNcpWZ7Ytb/bkQsZ6MoWFrp8f0PvPrlpp
         tRnX6kGv1KbRHX5p9Dv9GyHLgMs/iq5qkbyY7aGAQXaUFt+x1h08EQvEei9p2HQKjUng
         1tx67lN6LZWAXTQDF2IQ4P9BOEKDE2UWoHAHURgu88k4vX/vGwC2Gvy4F3GfDRLeF++C
         h3AhjNB9GapxQJ9jsFUJOucbLtTX7WhflgOY9F5CL16YknZqVtaRGUcvN61/udNbo4FM
         NzWpxhPGIBvzoWstelEvC6ikpHYO9peSomz4H8KXSa+FYsZLITt8yXNq9Z1Wx8h/1HMX
         FqOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j0BxwRcv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n7si735613iog.1.2019.07.15.07.05.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E18E621842;
	Mon, 15 Jul 2019 14:05:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.1 041/219] perf annotate TUI browser: Do not use member from variable within its own initialization
Date: Mon, 15 Jul 2019 10:00:42 -0400
Message-Id: <20190715140341.6443-41-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=j0BxwRcv;       spf=pass
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

[ Upstream commit da2019633f0b5c105ce658aada333422d8cb28fe ]

Some compilers will complain when using a member of a struct to
initialize another member, in the same struct initialization.

For instance:

  debian:8      Debian clang version 3.5.0-10 (tags/RELEASE_350/final) (based on LLVM 3.5.0)
  oraclelinux:7 clang version 3.4.2 (tags/RELEASE_34/dot2-final)

Produce:

  ui/browsers/annotate.c:104:12: error: variable 'ops' is uninitialized when used within its own initialization [-Werror,-Wuninitialized]
                                              (!ops.current_entry ||
                                                ^~~
  1 error generated.

So use an extra variable, initialized just before that struct, to have
the value used in the expressions used to init two of the struct
members.

Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Fixes: c298304bd747 ("perf annotate: Use a ops table for annotation_line__write()")
Link: https://lkml.kernel.org/n/tip-f9nexro58q62l3o9hez8hr0i@git.kernel.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/ui/browsers/annotate.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/tools/perf/ui/browsers/annotate.c b/tools/perf/ui/browsers/annotate.c
index 98d934a36d86..b0d089a95dac 100644
--- a/tools/perf/ui/browsers/annotate.c
+++ b/tools/perf/ui/browsers/annotate.c
@@ -97,11 +97,12 @@ static void annotate_browser__write(struct ui_browser *browser, void *entry, int
 	struct annotate_browser *ab = container_of(browser, struct annotate_browser, b);
 	struct annotation *notes = browser__annotation(browser);
 	struct annotation_line *al = list_entry(entry, struct annotation_line, node);
+	const bool is_current_entry = ui_browser__is_current_entry(browser, row);
 	struct annotation_write_ops ops = {
 		.first_line		 = row == 0,
-		.current_entry		 = ui_browser__is_current_entry(browser, row),
+		.current_entry		 = is_current_entry,
 		.change_color		 = (!notes->options->hide_src_code &&
-					    (!ops.current_entry ||
+					    (!is_current_entry ||
 					     (browser->use_navkeypressed &&
 					      !browser->navkeypressed))),
 		.width			 = browser->width,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715140341.6443-41-sashal%40kernel.org.
