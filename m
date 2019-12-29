Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBLGHUPYAKGQEAJ7ZEXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8529512C4CD
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 18:34:38 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id h2sf6807516pji.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 09:34:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577640877; cv=pass;
        d=google.com; s=arc-20160816;
        b=SEF84Oj/sD8h4bhesCYcQY5PAXsE/Af6AwdR2HLpiXH8L0B7joQ3ete3LZqhtTrll9
         JB24IHg/O0rdslB/3AYiB7oqPHhBGYUDrmdhJz4v4bNwfuJarGtC+Dvg79MGelapXEP0
         6q+nIZe2ztT13bOO85XIGDAKGrviSEQU7F5w3VqOW4RWaz8W4717tuUJSaqmrb+OlQnT
         +SV8G3J8v6ghljP2dkolanqoENbJp3urUYR6+T5rBJZjq6S7TwYpK3als6wKkIZ/PUNf
         a9pCh+E3b8QqrcQXL4XQi66qx5tlazZr7epndKaEHsw9Td1fp/lwajV7FXnXktyEcC5v
         SB3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=9TJvzOm5plbKPyqB8O+c1cyCZLOC4pyL4UGiTuNAthA=;
        b=W/IHJF9IGBe/FQsEG8mwMlWpoTt2MeQmHzG93Mj71OMWFhEwVjT+BqvFGReVYGghDY
         0anBcXvSYYMOAfIyjNOZI8fqL54tTOBWvJc4UHDuD8D/abY7XC+ueLPiKIif/yAMZl9r
         vR4XjD+MPxPweOXD7VJh2ZOYfx4IV6dJe1ixcpehnPGRXXOoLKxavBVD4WyX22j9zW7Q
         f9T84mqaYkCHGYuAMrNS1R8Yd/e6suS+giw6ILFI31w/ytiLYT6lyIiIEl1yXaXzErPH
         lKGGf+JXpKnGPNVXLglT3UqkYl9pSRPj1pT+R63Sz0ameqzlbFbJmdQAUEfOYCmuiJxB
         L/kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qjA8Oa3n;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9TJvzOm5plbKPyqB8O+c1cyCZLOC4pyL4UGiTuNAthA=;
        b=rbgzIBDXc9LplCL9SimSU96XGkVuwjQQh70gTjKkwDcWliKS4KK3BV5kMwU9OWUOpH
         G8p/iRfu/ZE2nuJOSf8BLW54UniISnH6kizo0mos5zohiTFFeHrBde2Bh7j5BNp5Wc5s
         pzoSNyvFxtYXBKQ8fZTf1qpkdJDbmLgYlLXlApr7uxSZzaT7NG0Zb8CqAOiYbeQLqgzW
         Aa7hWZrnikSPKavA5kwu/kbMXFT1IpHA61dfXCHP7ybMskJiTmwl9qucZt6Vae//fT5Z
         zQwBxTeIl3Tb9RFfDfWLPRhSWuiSfMAsnIxZEHREKDyBu42W7I4v6vKM/pPph8If3fPd
         tkZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9TJvzOm5plbKPyqB8O+c1cyCZLOC4pyL4UGiTuNAthA=;
        b=uPKhVlJMtvxClXyuYZqiqSyL87xwyKdiZT7SW+OQM6ozq9yl/PQRB0lB2m0NauxY6J
         Egz6WhauRFUTKCb1fNpdpItKNsCfyDgPRVF/MNw+TII1mq1B4ZlcaBgro79j9bGEnd4A
         FqGpf0o9kbhI9VeRcpV8I9b8gj8L4GWXPIPKM5N0wRpOOP+mB+LrCqxOBXm2CBA8a/2f
         9uFAdfhI34uXhyqxk/nCe8+Ul+KIauuwO3fRUcCCljYV9crWN/oNbN7ldpc2JoH9GQxC
         NXkwTsu056clssKOQxiGph84GqdsCj1gvX6BL4YG5c/8/+/F0DbsTZm4/g7lZTFI/WgI
         zfBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXa3fnmSaJK3PMmXZARuYXlpVTWbFqQjY0kzmqMjxr9aFck2I2o
	vcmIhq4/i4TWYIrwFpMuUi4=
X-Google-Smtp-Source: APXvYqxugE3Vz4cLrPOLTD1HrOtD6WfkHbg0DC4iEBpLVAE4+U4ss2xecca8EyJuFLyYwpRHhOL3IQ==
X-Received: by 2002:a63:774a:: with SMTP id s71mr67700974pgc.57.1577640876610;
        Sun, 29 Dec 2019 09:34:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3142:: with SMTP id x63ls6908969pfx.4.gmail; Sun, 29 Dec
 2019 09:34:36 -0800 (PST)
X-Received: by 2002:a63:8c48:: with SMTP id q8mr69353091pgn.213.1577640876198;
        Sun, 29 Dec 2019 09:34:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577640876; cv=none;
        d=google.com; s=arc-20160816;
        b=XDdJMxSBRHgQzUZ2Tl9siN73A+VHcoVrtbwCwGnhYWnY1kf9X8QNtu++uJDkQwK3Fe
         vxUGoPfnfRoraOeY2MjHYlde6+sdfGfm9EiSkQyxVaOPd2LH6jM+2KN2QT0GqOceedmg
         eQfSe704uUgxQnUEsWLzEh3VFNueO5S5N/vM5NtoA+q4pq2jy040WoCNVkHESTqAbMDx
         SCeVTh82MArPzzf4JENSNBBEz6H+I/5b33ma7pHVnewuaDeeM+E48jolZRC2XSHk7rga
         OWIJjd1P62xC2n2VcsGNlMW4xp04lBLSj0g0jEcdTCBB7EgQy6WVL09ukiWSd/hNpU1n
         7Mjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=V3vACyOIGhfxvHtLpMW+iSssgy1StTiLOKGPVGkqsxE=;
        b=NeCE37cIzrYBN65SYqG6lq7VR7tm7jtbMoH3Sa/HTDi8YW2+9cDZwAVnfYRQSf/QMQ
         56J95m4U33Mnw+aXYrhT9FOGrQ4/tKvo9eCjK8b9IBZme5uc0mamkqroo1iTH8DnVSUQ
         TvTt4h41igVDyumJvydgq8MboUqMAc2oeOHWpVxTg66dolR2Xj8TGd/feMFTvTHOrxc2
         5I9RtAK63Seub7IpBezq+Ye7ztddWOa0Nd8FK4V2lg9VvXPCN0X9Mnv+41uLJIAnCfhK
         Ycwf4bAy3CLQpkTNevNSZ12nq1tC/VW6VoiKTgsI3ql/zmh7Kd7Nt3IRQTJ+l+uxN6bU
         suRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qjA8Oa3n;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g17si1325569plq.0.2019.12.29.09.34.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Dec 2019 09:34:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 822F5206CB;
	Sun, 29 Dec 2019 17:34:35 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andi Kleen <ak@linux.intel.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Jin Yao <yao.jin@linux.intel.com>,
	John Garry <john.garry@huawei.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	Yonghong Song <yhs@fb.com>,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.19 136/219] perf parse: If pmu configuration fails free terms
Date: Sun, 29 Dec 2019 18:18:58 +0100
Message-Id: <20191229162529.130389505@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191229162508.458551679@linuxfoundation.org>
References: <20191229162508.458551679@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qjA8Oa3n;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

From: Ian Rogers <irogers@google.com>

[ Upstream commit 38f2c4226e6bc3e8c41c318242821ba5dc825aba ]

Avoid a memory leak when the configuration fails.

Signed-off-by: Ian Rogers <irogers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: John Garry <john.garry@huawei.com>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Martin KaFai Lau <kafai@fb.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: bpf@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Cc: netdev@vger.kernel.org
Link: http://lore.kernel.org/lkml/20191030223448.12930-9-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/parse-events.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 7ea1a230e89d..95043cae5774 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1282,8 +1282,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
 	if (get_config_terms(head_config, &config_terms))
 		return -ENOMEM;
 
-	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error))
+	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error)) {
+		struct perf_evsel_config_term *pos, *tmp;
+
+		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
+			list_del_init(&pos->list);
+			free(pos);
+		}
 		return -EINVAL;
+	}
 
 	evsel = __add_event(list, &parse_state->idx, &attr,
 			    get_config_name(head_config), pmu,
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191229162529.130389505%40linuxfoundation.org.
