Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBSFLR7VQKGQEBLPD2RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3258A9CFD5
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 14:51:22 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id t7sf4061417vsj.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 05:51:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566823881; cv=pass;
        d=google.com; s=arc-20160816;
        b=LF+8Pswo4maMOLMu6AiySuvCoh5PoC8Ebdje0qLMt2V1+1IKidrGgYkrad9s1GyQlV
         vCN3u6C0U4PQl+B7jP6EERJO7pO2NCTpjg2cmrY6uwkAF5MzohIIXwlhJyQ8Z1RElVMo
         gFYbgAdRMsuxrzem2AApdQbDe+UgiAgQCVKi6ayxJhorDeXfhvvQ7wuoMnppNICHIbV5
         ECCFZdqr2TaQhSm/fAMRugfv/XNxtuJf3BfyraujSrl1CiYaon2tv7daicY3YMrclKhY
         oISvi/9F4PwPGgMrGcb5v7sKuk7itjrIcL13ikYbVV98LIyGAzKyqq+nODtkN/Z1qod+
         sUPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=IE9Yguwbi14WOUANuVzRxXfIr1m4nUnn0k6MPNlOiNE=;
        b=PZ9KvIm6dScrp3DbopPdrsO94uWtvBMVKyIqa9GNKQBkX5iLn46AKUExGb96NU0cMN
         g3EwEyVxTepOz/5YhvUsS/wRM9tFvtxO1MN0rgz5HOfAV2ubod0BcmnVThiOs+xyaQhF
         TUMAJSu2gzAIjYEpyfsL+SBtn4b3EHansEBi1/h+zi6qZDgPOYNqZiI9SwpJr34nIFno
         HtumbhGsiAuga3/msvt4aOel6owQmT4SbjrFZukAPgsAbpalDmGsHPWFwKtXImRSOInI
         o4Ffk98/stoEBVc8fAuET3F9VuRESzwzkoLrtELuPpcrikfnbWUy2n+JO73X1bEF+sJa
         l7rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Dz9BLZxn;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IE9Yguwbi14WOUANuVzRxXfIr1m4nUnn0k6MPNlOiNE=;
        b=IbOOgcWOxSoZKQcVO/hvR71+vBDE5z+0XaoftSDpX3keWY+5ZqZTNwt+salL6GEHGx
         2prz47L9W7wQVJiBkfRdf1t7ukmbgMv/lQN20WkPkNI4EfgaUoXSVGNjNNh7S5to28YH
         vgMgKBFrfx8zQc+YcHQIpWNEl6pwI5H9f499NzHDcBBOWRe3mSre9dkCx1L2Yf8LIERV
         JK7nN0Ji28zbKNRPwAMMYaTxEzikeYd4PR1DayjN5IBIUlYMpd42+w048SKc7z4MmoSi
         Ztww+djluE2KB781yQm2g/uy8/IYiapZQ7fq1s8XFtBOjiiCjeziaobJraax9fyjDmDj
         uE6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IE9Yguwbi14WOUANuVzRxXfIr1m4nUnn0k6MPNlOiNE=;
        b=TcEgX58g8CcxKBug/NHgD70+fMZQiZZJ6qonMcn2OFftPoBJfw30Uz2xvYLU9idaDW
         q8d1f4NYWedgGSh/nFRcytR+NIPC8zB7+5BYgmsmosbeP1GyJFw4GJ9VDPFcPMvFTVwC
         fDRPr++mVNWSqqbh6J4+HE1EQeNdfZgme06L5dGudkB486wlVBS2GisRaqQ0dw9Hjl21
         Chxi01xPaAbu1flg0uPbS47yx4hI9Ml72r82T4Qs5lQSiIyw3iJUuCfMDDmCGjoxGhrH
         ++ry0qNG13lkb9ExR/tKbJnhik8+xI6SnLVRiypdri8Yi2+DB0ufMNDi+bm1Z25yI6Ok
         ODRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUhXiwCiqCKR1BLSM4FhpauLFvBRC6y45mL3omsGvtCTlTiEeJn
	IDDxtQU1N2E4F3aPKXY4gag=
X-Google-Smtp-Source: APXvYqxthwJAGjVIHLBwomGr5k1NsLPbivo53fdTetRSWLeyCO8znjohxntheHqTtvlUE19G+ONCJQ==
X-Received: by 2002:ab0:14e2:: with SMTP id f31mr8355364uae.138.1566823880996;
        Mon, 26 Aug 2019 05:51:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:60c5:: with SMTP id u188ls550679vkb.11.gmail; Mon, 26
 Aug 2019 05:51:20 -0700 (PDT)
X-Received: by 2002:a1f:194e:: with SMTP id 75mr8009061vkz.62.1566823880716;
        Mon, 26 Aug 2019 05:51:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566823880; cv=none;
        d=google.com; s=arc-20160816;
        b=GPo0GG2iv5YUqwJcfV5ct9IKioREQt/jGJIBaNoqQMZLAyqYPt4xfGJj7CoprHfGmN
         cHviWOwUr2M6ISbv+OryLRUkiDlsDzOQnmR6mwFEKTN9jzIOGC/FVdrmu35J1JiTohJu
         hHJf9DBKPa0cyYPrGhO6kcGgo/8JI+7k9iUSIx0dpf6oAqbwMICNiHo7VQcOltw+JGWR
         Ak1LHy6OTzL4DoXVvhusLV1D7ob1R/6FTSgo+cMDwAjxbAkQNCJgzjVkCvHCiM9eQmAN
         VH9bEcAwT5iqgcOAYaWUSwXUy3T130SrFeS3beLpxrSY7OHUwTsvRtPfC1oceSAjq5dN
         MDHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tI6zYJOHpKSlhKSWsr8RRDLcFrzabmESL6aWfvKu/S0=;
        b=v2xXrIOP6Smutkh+wyrFZVRyDgp4qk8he/g7ygYTo+0goBtubQHw3t9oXU5yRYLlBp
         XBfjcDCCdyK2indgvagrBMH2nJcLZ5FXx5KEYe/3mWucUE6ZOeBUyJ77/m6sLeOqSikP
         izWmifFvW7ALnixB4UoG05OZq0duXHwlc2YZzoKD/Xn4CA0iQ0g4yOodsB2gKcAve5Fy
         +Kptiknn64osAdCPHuPbLaV5cszZO7xQ3HBIHg1qqyJUeT7EAVvCNOA5KzPqWaL19sKk
         Ft8dv9AR0LvJhg8zFy/cJTo3tAXFiN+ItTr+PbezBEEsn2Q41TsiblGVZRBE2DXfPhcq
         yevA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Dz9BLZxn;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id z67si548581vsb.1.2019.08.26.05.51.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 05:51:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-yw1-xc43.google.com with SMTP id x74so6581353ywx.6
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 05:51:20 -0700 (PDT)
X-Received: by 2002:a81:7dc3:: with SMTP id y186mr12362090ywc.223.1566823880025;
        Mon, 26 Aug 2019 05:51:20 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com. [45.79.221.244])
        by smtp.gmail.com with ESMTPSA id z6sm2438113ywg.40.2019.08.26.05.51.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 26 Aug 2019 05:51:19 -0700 (PDT)
Date: Mon, 26 Aug 2019 20:51:05 +0800
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
Message-ID: <20190826125105.GA3288@leoy-ThinkPad-X240s>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
 <20190816014541.GA17960@leoy-ThinkPad-X240s>
 <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Dz9BLZxn;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::c43
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

On Fri, Aug 16, 2019 at 04:00:02PM +0300, Adrian Hunter wrote:
> On 16/08/19 4:45 AM, Leo Yan wrote:
> > Hi Adrian,
> > 
> > On Thu, Aug 15, 2019 at 02:45:57PM +0300, Adrian Hunter wrote:
> > 
> > [...]
> > 
> >>>> How come you cannot use kallsyms to get the information?
> >>>
> >>> Thanks for pointing out this.  Sorry I skipped your comment "I don't
> >>> know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
> >>> the patch v3, I should use that chance to elaborate the detailed idea
> >>> and so can get more feedback/guidance before procceed.
> >>>
> >>> Actually, I have considered to use kallsyms when worked on the previous
> >>> patch set.
> >>>
> >>> As mentioned in patch set v4's cover letter, I tried to implement
> >>> machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
> >>> parse kallsyms so can find more kernel maps and thus also can fixup
> >>> the kernel start address.  But I found the 'perf script' tool directly
> >>> calls machine__get_kernel_start() instead of running into the flow for
> >>> machine__create_extra_kernel_maps();
> >>
> >> Doesn't it just need to loop through each kernel map to find the lowest
> >> start address?
> > 
> > Based on your suggestion, I worked out below change and verified it
> > can work well on arm64 for fixing up start address; please let me know
> > if the change works for you?
> 
> How does that work if take a perf.data file to a machine with a different
> architecture?

Sorry I delayed so long to respond to your question; I didn't have
confidence to give out very reasonale answer and this is the main reason
for delaying.

For your question for taking a perf.data file to a machine with a
different architecture, we can firstly use command 'perf buildid-list'
to print out the buildid for kallsyms, based on the dumped buildid we
can find out the location for the saved kallsyms file; then we can use
option '--kallsyms' to specify the offline kallsyms file and use the
offline kallsyms to fixup kernel start address.  The detailed commands
are listed as below:

root@debian:~# perf buildid-list
7b36dfca8317ef74974ebd7ee5ec0a8b35c97640 [kernel.kallsyms]
56b84aa88a1bcfe222a97a53698b92723a3977ca /usr/lib/systemd/systemd
0956b952e9cd673d48ff2cfeb1a9dbd0c853e686 /usr/lib/aarch64-linux-gnu/libm-2.28.so
[...]

root@debian:~# perf script --kallsyms ~/.debug/\[kernel.kallsyms\]/7b36dfca8317ef74974ebd7ee5ec0a8b35c97640/kallsyms

The amended patch is as below, please review and always welcome
any suggestions or comments!

diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
index 5734460fc89e..593f05cc453f 100644
--- a/tools/perf/util/machine.c
+++ b/tools/perf/util/machine.c
@@ -2672,9 +2672,26 @@ int machine__nr_cpus_avail(struct machine *machine)
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
@@ -2696,6 +2713,22 @@ int machine__get_kernel_start(struct machine *machine)
 		if (!err && !machine__is(machine, "x86_64"))
 			machine->kernel_start = map->start;
 	}
+
+	if (symbol_conf.kallsyms_name != NULL) {
+		strncpy(filename, symbol_conf.kallsyms_name, PATH_MAX);
+	} else {
+		machine__get_kallsyms_filename(machine, filename, PATH_MAX);
+
+		if (symbol__restricted_filename(filename, "/proc/kallsyms"))
+			goto out;
+	}
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190826125105.GA3288%40leoy-ThinkPad-X240s.
