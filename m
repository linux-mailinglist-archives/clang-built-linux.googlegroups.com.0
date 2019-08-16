Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBTUV3DVAKGQERCJZVBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 850BF8F88B
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 03:45:51 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id y18sf3274748oto.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 18:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565919950; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wkey9BT8ySR0HID8I6CoLAENBSe/vgODR+qKjwCxNUZO2u5qHK8MYLtWE9gutjAAoi
         QrLy1bYQg+rguoYpVryFLrXdR6YPpdEfGjlSYuC4dv7tkwG0+OPCvvZfZLfoNrYrt0AX
         RT2wOdBD88zNP28pN0HdkFI9I9JpEgY+69YNegIe/t6a+m+KPfFwDKITHfuT3Y9NZi2+
         BKGExPhsPLWwrR8RQvOKd5IWP1FDKvLT17gsfKx9alnup/RHfr/8SspSnw4g2zDg7tWL
         jAk/fx1txYg/ZHri6Qdg2uhsiIsRDbQcPhWbDD70y6rexbZPjweRP0grGmgpQSIA58JW
         P5aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TMRPvbNjgdy+z7lwq+xvR8jQNdq726WQILpfo3hWzfQ=;
        b=P0aH0L8mWmbKBYiTl2ov9ZUutPLBe/0GlmJ8MuNsXCR5NmZDJ9zn2v/eQ8CKOpgH+3
         usGbR5lL72WoQiWWgrKDtyMFnkr9LHz2mK+VEhhJ2SglPh+e6DVW2q1RVm0bvhNr/FKG
         sx6rSbYXm8/EpeBNPoVoApEGi1LHKyclMzsEULQKxAVKo/9LehJAFg/O/dQR10AbzlWU
         skVgqxqTW3HPQUuC+XT/mHIkbVO5AA54ENipjNunxfjxKmukyXXbNjwTw3AIEFmjIrHS
         6yc1Me9Ah5t6Yp5qKk/XhvoXNgR2cCK4D/SNcq8c2WxdIXXo7wNiKVphj9lrt0jWn44n
         /xkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Gg18FaJL;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TMRPvbNjgdy+z7lwq+xvR8jQNdq726WQILpfo3hWzfQ=;
        b=MrJp23TBx05ZQ8n4vVyZW5BumONcOPb0j61g0Fm/1jJc1gM8rAnNr/srHaGCZBcJcz
         Q7hCkUNfvcgsMHS8Cnd5a0Y8KQpRcBzjSGWuAtw9zXssUd3io+yEqmSg2crbEtEQTHHz
         ITgdxgIyTHx4RxetPGs3XYHbF2ty4xmBTEgZDleYwyOGHhnTG2BBJo4P2nzzoRAg5Jno
         lYTnkud2nlIIHK88/6DlVUQWWLds7roHca7WyHVqAThS9wzcUEQLRhKV40a/cCvBE7KT
         FRPau1qDn0xizRjyGKZzhwZdg1Q/062/Khkkcu12HAsJ8O1lR70EjSL+A8WZf2A55GIs
         iCQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TMRPvbNjgdy+z7lwq+xvR8jQNdq726WQILpfo3hWzfQ=;
        b=PFzZB2eZg/YQhE9WPj0Tsh/uD62JHmUAQ+YdfQn/FhuC66KHjJlHdcbAJ79ZVAu1A5
         q+OmCr56OTZxGSMJo3f3UxZ/iEeacAGpYbsejQPRbzAm1eF9GwfvFj+LDttMmykXEjXs
         mqQttLed1tgMA4a7PJ/U8k0FLwDT0np+IeJbX5/trmFSOeSbtxGN1NGiYkB6IbEbB5MU
         X+pHxRE/IqETpcjOHSCod1zpcYTKtSrNWWcjKCqyPYPpchYuRR3F8/v7vmhUhJ+IwGNW
         m3e0PnW9G505oW2sALaA3ByS17wL8UfevbEQaTb2lvC7nUBGJFpAGV1MC7ih7G0szfiW
         j6ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUe+GRD89++HmtEKiWVhUcHD6IzAdAl+e0p0n1itCvUvIX/b+CN
	axEeBc2NXYCLl00CJugJIPI=
X-Google-Smtp-Source: APXvYqy/XOCVgIrWRgEdIV+l4FQeWdaRDc9BORMSQIOpYY0eZElAykDaIIwg/vcHhljRrBqQqyktMw==
X-Received: by 2002:aca:f443:: with SMTP id s64mr3723302oih.108.1565919950307;
        Thu, 15 Aug 2019 18:45:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:12ee:: with SMTP id g101ls1365302otg.16.gmail; Thu, 15
 Aug 2019 18:45:50 -0700 (PDT)
X-Received: by 2002:a9d:3b34:: with SMTP id z49mr3402781otb.9.1565919950037;
        Thu, 15 Aug 2019 18:45:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565919950; cv=none;
        d=google.com; s=arc-20160816;
        b=aHqUd0QMuyHjXuG3lmQycxB3e9jh9qLhMpSDFcZSDnOXJMEnpSAl9A6Pp39CBPFalx
         kET6uq59khBmeOndLcishXgzB6XkmW81xoeyMNFgGAbTvM94UTmMT76YA7StOAcfH+Ya
         M6ZOtPVrSVkZvgAF7WACwvv1tidwdsykLg8pk2MCVT+Wj4CAFjT/OlztPqWs9kU6ETvH
         XS/sKM8D0SlW+xAXU1WfGL1trNVZId3yWonn8L4UZJgoDNzBKUtnouK5zGGUpuz9HK47
         Ek2UtsUnvMmzCA5BP0gQ+RlgzSdQAychUn1t9InJdb1ys++2U39NeVolUHH4GyD0qstU
         dq0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1/p96Axpw0rHsxKvgAnkX2TPQwGbqpRMoy2NJLiILjI=;
        b=HyCbE4WIDEzUwkq/hGSyQddyic/Bz6oMCI9zh+1TPTV/JU832XAZo2p25c0zsG3oAw
         UdYReoXwyjGfx0EJ04fXEFR1TvMGvafj5ohIZVgXw4snMcfL1CJ/4+Wj8Xym4an6XEvB
         PyfOtBUh08QNZBrCYHSyd5AgwMtyfGmxF8fHnUPn1P30jNtZ0K4H9J2nzCSFhz886IZQ
         kSTN7IhapO/ze9yQAvB/+SjttuYHtvbz+pHzC3BgFeDF4kIeC1aTgOu1tZiN2niBF0z7
         niV1acpaej2fgqCcqBr8oSEKec556Mn4AHUn9m5W9jbvjAqV+I5uvakV3C/WctbtJLo+
         6r1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Gg18FaJL;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w3si299907otl.3.2019.08.15.18.45.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 18:45:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id v12so2249206pfn.10
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 18:45:49 -0700 (PDT)
X-Received: by 2002:a65:430a:: with SMTP id j10mr5932866pgq.374.1565919949052;
        Thu, 15 Aug 2019 18:45:49 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li456-16.members.linode.com. [50.116.10.16])
        by smtp.gmail.com with ESMTPSA id v15sm3255539pfn.69.2019.08.15.18.45.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 15 Aug 2019 18:45:48 -0700 (PDT)
Date: Fri, 16 Aug 2019 09:45:41 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Suzuki Poulouse <suzuki.poulose@arm.com>,
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
Message-ID: <20190816014541.GA17960@leoy-ThinkPad-X240s>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Gg18FaJL;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Adrian,

On Thu, Aug 15, 2019 at 02:45:57PM +0300, Adrian Hunter wrote:

[...]

> >> How come you cannot use kallsyms to get the information?
> > 
> > Thanks for pointing out this.  Sorry I skipped your comment "I don't
> > know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
> > the patch v3, I should use that chance to elaborate the detailed idea
> > and so can get more feedback/guidance before procceed.
> > 
> > Actually, I have considered to use kallsyms when worked on the previous
> > patch set.
> > 
> > As mentioned in patch set v4's cover letter, I tried to implement
> > machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
> > parse kallsyms so can find more kernel maps and thus also can fixup
> > the kernel start address.  But I found the 'perf script' tool directly
> > calls machine__get_kernel_start() instead of running into the flow for
> > machine__create_extra_kernel_maps();
> 
> Doesn't it just need to loop through each kernel map to find the lowest
> start address?

Based on your suggestion, I worked out below change and verified it
can work well on arm64 for fixing up start address; please let me know
if the change works for you?

diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
index f6ee7fbad3e4..51d78313dca1 100644
--- a/tools/perf/util/machine.c
+++ b/tools/perf/util/machine.c
@@ -2671,9 +2671,26 @@ int machine__nr_cpus_avail(struct machine *machine)
 	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
 }
 
+static int machine__fixup_kernel_start(void *arg,
+				       const char *name __maybe_unused,
+				       char type,
+				       u64 start)
+{
+	struct machine *machine = arg;
+
+	type = toupper(type);
+
+	/* Fixup for text, weak, data and bss sections. */
+	if (type == 'T' || type == 'W' || type == 'D' || type == 'B')
+		machine->kernel_start = min(machine->kernel_start, start);
+
+	return 0;
+}
+
 int machine__get_kernel_start(struct machine *machine)
 {
 	struct map *map = machine__kernel_map(machine);
+	char filename[PATH_MAX];
 	int err = 0;
 
 	/*
@@ -2687,6 +2704,7 @@ int machine__get_kernel_start(struct machine *machine)
 	machine->kernel_start = 1ULL << 63;
 	if (map) {
 		err = map__load(map);
 		/*
 		 * On x86_64, PTI entry trampolines are less than the
 		 * start of kernel text, but still above 2^63. So leave
@@ -2695,6 +2713,16 @@ int machine__get_kernel_start(struct machine *machine)
 		if (!err && !machine__is(machine, "x86_64"))
 			machine->kernel_start = map->start;
 	}
+
+	machine__get_kallsyms_filename(machine, filename, PATH_MAX);
+
+	if (symbol__restricted_filename(filename, "/proc/kallsyms"))
+		goto out;
+
+	if (kallsyms__parse(filename, machine, machine__fixup_kernel_start))
+		pr_warning("Fail to fixup kernel start address. skipping...\n");
+
+out:
 	return err;
 }

Thanks,
Leo Yan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190816014541.GA17960%40leoy-ThinkPad-X240s.
