Return-Path: <clang-built-linux+bncBDPPFIEASMFBBOXUZTWQKGQE5GZ2MMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E68FE5340
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 20:08:59 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id d6sf2934106qtn.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:08:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572026938; cv=pass;
        d=google.com; s=arc-20160816;
        b=FdG6bya/wSYiPts+E7zhyEM0khfCvHPl9BnlI0j2kb8CW7e87rlPCnYMuih3uDcyES
         f38B2Y1DsfjrBt0zckWEc2ncmVhchliptmUNQ0iFTMYbxVUu27MCa/NwrEFXvFIjwCut
         FRCCxTy8+v1n0sraZppSGjDmuoe+ZHFhj5sis3MA8WnsAkUE8spzVSmvCmmX0N23gXpj
         h53ENQdOwjcuyPG6hLvU9Ak3hx0R+ksWmRE5/Soe5QyI3tpN7+Hv4+aBpcl43jQL6HUA
         0BfJciy/JMyDZ10LQFoNrKNbD0/+lZuE//QpjW9/wro/U+CUB35em6VG6Lo9uAsRwTyD
         tdGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=k49tNRd8u5ue6QpJJQTYsAYEkx2MqYoBBvGlfmssP7I=;
        b=TcRJyI737pb7CjTJCBa3h+m94lM0QcDZa2fAKsme8bTmRLHZI34fFwPUh6iDGdwMS9
         d4dcpGjIwR+QwqDHx6v6LdZsNbkdBu/xT9nagiN7AK1HpmRkAFDIls2CP8Zo2EkxJ2Cb
         X+kdfhSoRNDn1yoafcrHqWjF3Avrtb/7dnd9bDIBkHFdqW25z9hm4cN46qJMOf9Fz/20
         jjd1B2iWyMtbg17qM+xLNpiJYWsV+4PHynNgQJD8akVdkWlGG03DRB0N3Fis3ON1KHoU
         lMJSN3RiFnFv02t7yb67OgSN4Jp4mP78O26f47gYWPri4c+AjaFB8XzoqoycWWtk/dy8
         iDRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TE1I8ODd;
       spf=pass (google.com: domain of 3odqzxqckew0tczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3ODqzXQcKEW0TcZRPcdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k49tNRd8u5ue6QpJJQTYsAYEkx2MqYoBBvGlfmssP7I=;
        b=hPk0q/B3M0bs7sd4fIObM9sqPdVlIWBYolpHOGYRohtgELL5mfG+sf7sJnjLPro6ND
         SboOfDOtErKddSrFfgZfwKMdycOxDq8f0ora91PnsJbC9cW2feZy1yFChHNfZoaFDhBw
         5xP/9wYtTuShoHBzi+d1KsUrXpyNDsQLie8xHBxF2VQY/ug04q/bclW5nmf1vV/7yjr/
         /SYEDfQ/JTZMtN9MhVLH8Vbd8ZFhZkR3Ng9AsMVPb0zzwfOHNY20fZ8yvI13zS/XnWPV
         aICtaQkYMiYL5z91CSmkuw0T8UBoPwNYIZUYChw16W0Pn7gYCrQxypcFGz6cbdxVCqjf
         HhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k49tNRd8u5ue6QpJJQTYsAYEkx2MqYoBBvGlfmssP7I=;
        b=bu3EE7nuSiWhm1xQ6RByazo6KSe2UoNZjdFztldOlVTX7k0ih3ZpI0zhR1EKKk10hZ
         mYIagvH7yJ0bLcu7dD9W6MSLtL9M5sMm7jyD5qDZI7e1oRiV41oR2Lvn4E9UMVoekUmz
         AJDymahV95i47w70w9oR9F2KvgPAgRWUZ26ySqXYYsUc1l71CqGfu/OOdTwnnAiMxLJi
         EwyAetmrXdiY4oMb6DPI0se4GcoYnFy7aJHD3unzDYe9uGH1C5DDNY1LkE7QdE/Px5TR
         ZUzZ6P5WHbPhb1L/OpTnewYzSbyNM/9IHMC6R1kubf+T2bVd4d8NaVuzeroIlQMKM3qs
         BPAA==
X-Gm-Message-State: APjAAAV9AvCLrT18XaGWCP2FwWW2wfUCIm7U6sdcXF21KQr/AV5emvsn
	SkvSJXgRKzjEhoJ5EZPn/z8=
X-Google-Smtp-Source: APXvYqxvIGxlRmp9evMuL8vkTYqYj2mcNj5QGuK7mkmCmVo50dP9tMzE4wkuEtGqFMt2VU70dbxzfw==
X-Received: by 2002:ac8:1b45:: with SMTP id p5mr4204496qtk.330.1572026938546;
        Fri, 25 Oct 2019 11:08:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e0e:: with SMTP id h14ls3461369qke.7.gmail; Fri, 25 Oct
 2019 11:08:58 -0700 (PDT)
X-Received: by 2002:a37:553:: with SMTP id 80mr4168881qkf.353.1572026938150;
        Fri, 25 Oct 2019 11:08:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572026938; cv=none;
        d=google.com; s=arc-20160816;
        b=Ir7YnvQ9vxhKlpQay/ITNC7+1gR7ArFrkZmdntp/64btStrRM9alJVBUFUWSAeMaIv
         1qPE45JfQi44/aQZOd8qLdl8mos6OR3NpmWmlwXOMidi2LGBL5L2DtwsmQRTMKP8hp2l
         VhIOSCSXSFxG8k9PQZSralDRKqzWEcBN822nSu60/VpdTTRMWgaP22LB0hrTSlTQc10I
         N00BsBkx8sA+QkXreTTv2iApFzvnUjHXQbSZ9NULyppYoVImv3JWRYLiegBAPS66gy9L
         AP3Wxv/FycVVfeG7tS7UFa+A06lVmVHJT4fLNePHBPC2zjK9Yf4Twmb13f58M9hcUwoA
         UJ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/dDefoMM36PIRowlZl2Nw9qTsavoFN0b32BVnZFbmdI=;
        b=o7NGLKgv+lnMhCzqE1nuGhLuZ9wATI7XA2cO1vHjn9ZY8jIZQVB3/F5nZgw22GzeBO
         iulqhfZ74MQaugMjJZoPIK1JdhT7yLSdWzkESIsU8Kg4MoIB1i4KUvC8yAxhCJDK9Eop
         kkFOQUvLmJGMOvljiGCoAzhwpH/Mb1q7kv0budpm9dKQiMu18JeL4d8kk7XzLui6WN2I
         yNrEcTqlanjz5pv1QyohmzhcWUcnlBPovZ0k0RRWNYFsqtpz4GUrAaQnaGBOCiP46l3T
         c3xJxHf2EMivIEY9aWfAI6Ce0tbo2aODWtjXHQ77V+pVekwFNmyK3noAlFLD+qRxRdSC
         faPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TE1I8ODd;
       spf=pass (google.com: domain of 3odqzxqckew0tczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3ODqzXQcKEW0TcZRPcdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id d189si163792qkb.1.2019.10.25.11.08.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 11:08:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3odqzxqckew0tczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id m20so2358757pgv.6
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 11:08:58 -0700 (PDT)
X-Received: by 2002:a63:5d18:: with SMTP id r24mr1468551pgb.53.1572026936817;
 Fri, 25 Oct 2019 11:08:56 -0700 (PDT)
Date: Fri, 25 Oct 2019 11:08:26 -0700
In-Reply-To: <20191025180827.191916-1-irogers@google.com>
Message-Id: <20191025180827.191916-9-irogers@google.com>
Mime-Version: 1.0
References: <20191024190202.109403-1-irogers@google.com> <20191025180827.191916-1-irogers@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v4 8/9] perf tools: if pmu configuration fails free terms
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
 header.i=@google.com header.s=20161025 header.b=TE1I8ODd;       spf=pass
 (google.com: domain of 3odqzxqckew0tczrpcdrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3ODqzXQcKEW0TcZRPcdRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--irogers.bounces.google.com;
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

Avoid a memory leak when the configuration fails.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/parse-events.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index fb6436a74869..3db1b647db38 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1390,8 +1390,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025180827.191916-9-irogers%40google.com.
