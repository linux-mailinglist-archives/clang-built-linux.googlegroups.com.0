Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBFU6YTVAKGQEYY5VFQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id B344B89779
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 09:02:47 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id a8sf82730664oti.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 00:02:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565593366; cv=pass;
        d=google.com; s=arc-20160816;
        b=qHVaSqj368fuBt73TbYVYkCYBA1wwEUh+e/IV8ATJBOFivAnVhrkA1bXLaEYCCZY5T
         yHZdCikoqpfT2s65wxF0zrld1JjMeJaMeqAiDWM7nH6XCoY4zYiXRJdcI3ZTgym/yuwp
         5dwhTmEOeo6SSw0yWvivGutUi5wo9DBb6RUe5TDio2z/Te7JqZ5ytqQPvHTlL/26kQ3o
         Y9r2yogV7W5MEvXB5YZexoPxE/ITYJ9E1QeGN3lzrEiJ1CLQrKU7+0icn1mdO0Yl0mka
         2Q7TGujLbVGSTGv++qcus1lX2l8AKIV++SeVAUyCwbTnsMmccqZPHkcpB86dzD/ry2uJ
         CcqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=npOwi/0Hv8VfTbViPTc7Mk5o32hssAWu5YShCScOlS0=;
        b=a5mzQsyS/1maz3MbsfXVe+fkbWeo76ESMz2zhBTuOruOwOwbwxZwnnrgMVdLBWO7Jv
         PJAyLrXv+xyzcGHPVbcMrXQbok2FenK22y7TECQ71AY1FSSDkQO/2cwssgwibcGbaJFj
         KbVj0K+njDohg/u01qbWsYsyBfktgxXCl2+sguI3vNSPbvlyFxttHhDmA4WSs6hCADzN
         6b+1jQL5dbxkjFovUL6soYKIcE+XXQZOWdOSHvlo3iZ9xRjNVgvdhTwHupLDJauajDeq
         0C7SDkoWrA+NwWIJDO2Rq5M3XStUYDMnkuJ6pD9QNsaikSItDmkE4sZLNJxe5Fqnp/J5
         uFOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vlQDNy5Y;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=npOwi/0Hv8VfTbViPTc7Mk5o32hssAWu5YShCScOlS0=;
        b=VlQIITUnGI8/Wg6rfix1645+TCR00CI94Iee/duBGbqOcSsUauBy5hjSVEQyaYYnqo
         K4B90xRbyhA61b+xCu5aYiWqyGHvkrUDSxtYBYjQnIOpWZv2UEdlFaGUUpI3vw9La9jH
         +Rf50+ADvgn2xn7bviISv6E8hcV7QM6BQ5gY9NhuOycZ70YQQGQpBgP+oWrmW/ScmnGo
         5KvJASsVMyvRB/J9tDk+Y7gCfCoYWe3mvO8E6EEArPl3swmBuOpfz/MZTQGHdAxyrqiy
         N+Gk9y6wz3rwpVWRh0p7JTNNgyici6Oom+wEvKZWguGp5JhmW2lGjKXBiW0USGKGLQRx
         DwPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=npOwi/0Hv8VfTbViPTc7Mk5o32hssAWu5YShCScOlS0=;
        b=o0YJ3+ZgBmCvf05FCv0bToLqej1ZX2y5E70jpwxqiqwQxzWwtt45sqrdutRZCMkeZa
         FawO1Z7ZybntMZy4ykWOm4H5YTJSzX2nIWUSZYjLZCDBuISjKcS921iiAvDsxpxlgQba
         F2xa6HkJMHQw3kPGpAPeurVsiTrd0ITtZgZuemqOtHMRMp8Ok4uusG6GTRE4DESQTQSc
         h8d1J3BTGkiPSdjcnoA2Xai3aivxFFc3aP303MnKqPKCMCzQrhGxz9/dHfOmgt/x/EvD
         inPLHp4rZ3rYoa0DufYWROWXimboyuDHGs+YFR1OnGhcTKIvyhCcmzoG7To6T1kHqgmi
         v4lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXaNbK48qi63PuugeqcrbS4VP7EU+K2045Cd6TZ2iGLDfDDv+9G
	Gll96ro5MUTNcK0MS4qxpUM=
X-Google-Smtp-Source: APXvYqzGlchgtLRj//AwiEMwScpEC/HVpx3S5YhGRwgrf8UsSt80F1ejptRKQWZAVwY4H4t67dToSw==
X-Received: by 2002:a05:6808:3:: with SMTP id u3mr12709012oic.141.1565593366534;
        Mon, 12 Aug 2019 00:02:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e45:: with SMTP id h5ls995976otg.11.gmail; Mon, 12 Aug
 2019 00:02:46 -0700 (PDT)
X-Received: by 2002:a05:6830:16:: with SMTP id c22mr29226648otp.116.1565593366319;
        Mon, 12 Aug 2019 00:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565593366; cv=none;
        d=google.com; s=arc-20160816;
        b=ncbivsMslgwUqRwv81lwncL0D+dNrR0lFEv8wzn8CErJQkDMUor5/XQXgBKiE+gGks
         0goEyXNkQK1j0Anwg74MOMC3PF8FLrkdFxZkcT2DyCOQxvLS2s3P5Gq1MvvOjYmk5maL
         weVS3j1vBuI1tGBOmZH+lBe2OFXPkZnKkzHAVD+xB26GeZw3gg8/FwBCQ9MHH8MTcTd3
         YVbH5tGoylvQZJm2l+LrjNlumSmVP6q51/EbqXWu8mvEEDTkM0e2ZUxUelFVnrzX8+0l
         h8vvz1YQrvPcoAzUQmx+uv8zfVN4SfotTc9HH6kw5UAkTd+pqoF7AbpFKtlXSc+NV785
         8bKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EOl0XeLgAx0b65C6nSeSC9yGXCtzgtHSTtqGfuyIaA0=;
        b=tvABeybX8YQ4WGsyW1RcgfjrbIDJRv3Kn8HIZFFxjH0roFAe/FuDqE4oAddEqL+nIa
         mGR7+DbMsNFLli3uvFHSjAsaVxvIiSj0WU5IHj87fEVexd4l3fZG8HzOmHwNBojzmmla
         PT67ksVyDWK0D90ijZJ77ETQVzfBJuWvBoKlf986Q5IMr5p4UTWUNuonk/pvfbYVSY6c
         6C7uunTJ0tmQyVswgoJxT0JLv28MTn30ZIQIWHWchzEQLkEur3hIo2d2ghvHdsjdlnHY
         jQbvyZfhiao04JBy97Y0g7ZCkEFvgrio5xY3C78c6Yhmo/Ii303NEJ1C8tIqLXo975ox
         2u5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vlQDNy5Y;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id o9si315202oig.1.2019.08.12.00.02.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 00:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id t132so49005494pgb.9
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 00:02:46 -0700 (PDT)
X-Received: by 2002:a63:f07:: with SMTP id e7mr30222661pgl.238.1565593365394;
        Mon, 12 Aug 2019 00:02:45 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li456-16.members.linode.com. [50.116.10.16])
        by smtp.gmail.com with ESMTPSA id k5sm6182091pgo.45.2019.08.12.00.02.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 00:02:44 -0700 (PDT)
Date: Mon, 12 Aug 2019 15:02:36 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, David Miller <davem@davemloft.net>,
	Milian Wolff <milian.wolff@kdab.com>,
	Donald Yandt <donald.yandt@gmail.com>,
	Davidlohr Bueso <dave@stgolabs.net>, Wei Li <liwei391@huawei.com>,
	Mark Drayton <mbd@fb.com>,
	"Tzvetomir Stoyanov (VMware)" <tz.stoyanov@gmail.com>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
	Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v4 1/2] perf machine: Support arch's specific kernel
 start address
Message-ID: <20190812070236.GA8062@leoy-ThinkPad-X240s>
References: <20190810072135.27072-1-leo.yan@linaro.org>
 <20190810072135.27072-2-leo.yan@linaro.org>
 <c1818f6f-37df-6971-fddc-6663e5b6ff95@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c1818f6f-37df-6971-fddc-6663e5b6ff95@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vlQDNy5Y;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::541
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

On Mon, Aug 12, 2019 at 09:37:33AM +0300, Adrian Hunter wrote:
> On 10/08/19 10:21 AM, Leo Yan wrote:
> > machine__get_kernel_start() gives out the kernel start address; some
> > architectures need to tweak the start address so that can reflect the
> > kernel start address correctly.  This is not only for x86_64 arch, but
> > it is also required by other architectures, e.g. arm/arm64 needs to
> > tweak the kernel start address so can include the kernel memory regions
> > which are used before the '_stext' symbol.
> > 
> > This patch refactors machine__get_kernel_start() by adding a weak
> > arch__fix_kernel_text_start(), any architecture can implement it to
> > tweak its specific start address; this also allows the arch specific
> > code to be placed into 'arch' folder.
> > 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/arch/x86/util/machine.c | 10 ++++++++++
> >  tools/perf/util/machine.c          | 13 +++++++------
> >  tools/perf/util/machine.h          |  2 ++
> >  3 files changed, 19 insertions(+), 6 deletions(-)
> > 
> > diff --git a/tools/perf/arch/x86/util/machine.c b/tools/perf/arch/x86/util/machine.c
> > index 1e9ec783b9a1..9f012131534a 100644
> > --- a/tools/perf/arch/x86/util/machine.c
> > +++ b/tools/perf/arch/x86/util/machine.c
> > @@ -101,4 +101,14 @@ int machine__create_extra_kernel_maps(struct machine *machine,
> >  	return ret;
> >  }
> >  
> > +void arch__fix_kernel_text_start(u64 *start)
> > +{
> > +	/*
> > +	 * On x86_64, PTI entry trampolines are less than the
> > +	 * start of kernel text, but still above 2^63. So leave
> > +	 * kernel_start = 1ULL << 63 for x86_64.
> > +	 */
> > +	*start = 1ULL << 63;
> > +}
> 
> That is needed for reporting x86 data on any arch i.e. it is not specific to
> the compile-time architecture, it is specific to the perf.data file
> architecture, which is what machine__is() compares. So, this looks wrong.

Thanks for reviewing, Adrian.

If so, I think we should extend the function machine__get_kernel_start()
as below; for building successfully, will always define the macro
ARM_PRE_START_SIZE in Makefile.config.

@Arnaldo, @Adrian, Please let me know if this works for you?

diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
index f6ee7fbad3e4..30a0ff627263 100644
--- a/tools/perf/util/machine.c
+++ b/tools/perf/util/machine.c
@@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
        machine->kernel_start = 1ULL << 63;
        if (map) {
                err = map__load(map);
+               if (err)
+                       return err;
+
                /*
                 * On x86_64, PTI entry trampolines are less than the
                 * start of kernel text, but still above 2^63. So leave
                 * kernel_start = 1ULL << 63 for x86_64.
                 */
-               if (!err && !machine__is(machine, "x86_64"))
+               if (!machine__is(machine, "x86_64"))
                        machine->kernel_start = map->start;
+
+               /*
+                * On arm/arm64, some memory regions are prior to '_stext'
+                * symbol; to reflect the complete kernel address space,
+                * compensate these pre-defined regions for kernel start
+                * address.
+                */
+               if (machine__is(machine, "arm64") ||
+                   machine__is(machine, "arm"))
+                       machine->kernel_start -= ARM_PRE_START_SIZE;
        }
        return err;
 }

Thanks,
Leo Yan

> > +
> >  #endif
> > diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> > index f6ee7fbad3e4..603518835692 100644
> > --- a/tools/perf/util/machine.c
> > +++ b/tools/perf/util/machine.c
> > @@ -2671,6 +2671,10 @@ int machine__nr_cpus_avail(struct machine *machine)
> >  	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
> >  }
> >  
> > +void __weak arch__fix_kernel_text_start(u64 *start __maybe_unused)
> > +{
> > +}
> > +
> >  int machine__get_kernel_start(struct machine *machine)
> >  {
> >  	struct map *map = machine__kernel_map(machine);
> > @@ -2687,14 +2691,11 @@ int machine__get_kernel_start(struct machine *machine)
> >  	machine->kernel_start = 1ULL << 63;
> >  	if (map) {
> >  		err = map__load(map);
> > -		/*
> > -		 * On x86_64, PTI entry trampolines are less than the
> > -		 * start of kernel text, but still above 2^63. So leave
> > -		 * kernel_start = 1ULL << 63 for x86_64.
> > -		 */
> > -		if (!err && !machine__is(machine, "x86_64"))
> > +		if (!err)
> >  			machine->kernel_start = map->start;
> >  	}
> > +
> > +	arch__fix_kernel_text_start(&machine->kernel_start);
> >  	return err;
> >  }
> >  
> > diff --git a/tools/perf/util/machine.h b/tools/perf/util/machine.h
> > index ef803f08ae12..9cb459f4bfbc 100644
> > --- a/tools/perf/util/machine.h
> > +++ b/tools/perf/util/machine.h
> > @@ -278,6 +278,8 @@ void machine__get_kallsyms_filename(struct machine *machine, char *buf,
> >  int machine__create_extra_kernel_maps(struct machine *machine,
> >  				      struct dso *kernel);
> >  
> > +void arch__fix_kernel_text_start(u64 *start);
> > +
> >  /* Kernel-space maps for symbols that are outside the main kernel map and module maps */
> >  struct extra_kernel_map {
> >  	u64 start;
> > 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812070236.GA8062%40leoy-ThinkPad-X240s.
