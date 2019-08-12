Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBPFPYTVAKGQEEUTUFXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8C1897FB
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 09:39:41 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id k125sf92443213qkc.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 00:39:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565595580; cv=pass;
        d=google.com; s=arc-20160816;
        b=I+LGG7Kc0PrSEdXrOiFuyRe8kkQ9rxh/sQKPfOU2RDHo+rNnYAm9CwCc21u2InYoYW
         xIboP/sR3DIx6+V1E4JVy1M/F9LSp2PcPQF2THzAe/yoYsDdzJEPpBAu98YbRaQS9hwN
         VayNUQndJ1h2A9Dy6ZHYStqlgWMMgpyANzS/fWPGWjTYW2pXZfyc0Y/DqlFUPNj3efFD
         9f8NNoG3u8nP7tw+VaXtswBWhXo4FSBlMSebrQ9fA5r1PtU4Yni4KR+SbGjvJ1uGxR6I
         +hhjfoR6VmpIHJGoPTEFg/8dw2ACerLFCB5fY2b+nUR7UTtSzbWSwvWvo/PyWtfGslXx
         DXGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UWUQzLt5g1LQXGex2ddZdvrdFlP+wUoQxxf/ktN8Uxc=;
        b=IarUeoxdPWipGIig7F+bnqduEx5t3dVC4c1D7TLeYlHo/fVMRdBL6WAvDqav7YznCB
         /KFSTwoQNIYsU4VcT5GfDJfIs877ieJvTnURPXzgnFkkq+qCBPoF6mBMSuGLilIwcqQa
         16gKGJGNTw8w3QTWaK9D5teO7dNez4ZX7TBh+GgkOM8fdAw2c1GRMmWjOvLqivICjlWS
         59xAEgpAm0DZ3YJzk7g5ncGmZPG4Y85HuOQJK1lqdq+HnDEUQwrORnJlEVJrypcpmfk9
         iiTyq5yXQzQkksT1CG374gmBLSWfBkR4cJdjLJjOGqCh6bPOzViuxTOyVsFAI4npQKqn
         hOrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UZbvpYbc;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UWUQzLt5g1LQXGex2ddZdvrdFlP+wUoQxxf/ktN8Uxc=;
        b=ABZ4BVsjmOs5Mf+OE3PwMNqv3gPqemGNemvKDf2TNI42gnPvzeaBhp7RrW2dgreCgW
         24RwvKP8POszwh2Bfo0i6/LPY1HunwsWNbMxbPuxaNqiapwqfn9oxe2AM/rjeOi6xd6P
         aVkMoYRHAws0EiEbSOPwFBU+VxrHxb2NucCbQQy5R+QRh1R8xf3bJYGIbwmZyGw15Mtp
         AyzyqILjPvf3euhK26JMZfhBwrybyen6Si0CJqaXhZCyOjJsAUxQ87/GOogI/lHEEBsl
         P4zp9PYrpoUB56NQ4jaPC9JRlYNUqoIENvfjn+rTmVOjWiJNHUiRFwpt0FVJiqY8h7a6
         QEbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UWUQzLt5g1LQXGex2ddZdvrdFlP+wUoQxxf/ktN8Uxc=;
        b=GVf61ceT58xYa84dWg5KNLUHNF9Ws4JnWiYmiJ23smO290f5DlZgXQNAD+Xt/vtXKC
         dPCdCaORRnfmABDfOrwgEnCZ/9uRdR7FPl/4pkMw+9kjl4cn01M22ZbwQkysjhe+KvU4
         KhvnYsEL9GNhMSOuP5Naa20M0cwSQ3ep0b5TrnJbT4hP/1Pq2rWoCSpnDguhuuozKqYv
         r9JjNr10o2L6AcNrfWtOTl6JiNrjMNmxMUetz/bza52y/QZ8IWQeoqGa5nCgozAc2GdE
         DB4k9mn+G8vpIibGq3E3K9/8ul4IYKtuo4mityGlfqwBYKjUYNsg17smmPx8HPUWPV3t
         QY/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGgSGkhV8tAq2k2o29uy2Udi4YazG8fYbM9EbWDzIarmMk1YGZ
	74bvjagntCxwYobjToXAyUQ=
X-Google-Smtp-Source: APXvYqxNiDYho9hVyBzWKLRhTaZWTXV/+CvzOOJItn+2/APld9QHBXfEQQFFeQQIYVh6E/eGPZ8HFQ==
X-Received: by 2002:a0c:e907:: with SMTP id a7mr8201925qvo.35.1565595580580;
        Mon, 12 Aug 2019 00:39:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3927:: with SMTP id l36ls4601383qte.15.gmail; Mon, 12
 Aug 2019 00:39:40 -0700 (PDT)
X-Received: by 2002:ac8:95d:: with SMTP id z29mr29083253qth.380.1565595580341;
        Mon, 12 Aug 2019 00:39:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565595580; cv=none;
        d=google.com; s=arc-20160816;
        b=ZCu3y08iXEJub0QmzcTDdTRCN08t8s2rUsLTKvnJFLpX1l/QXrAEmkk7rFQe5h3Bw0
         3QAnDHVs9pdNzwO/ItvJUn0Z/KEAgwueB+dK5fTFHlzlfcuFRo0DudQ3hJtgzFHobH3u
         ONtDtmmoyKQ3zPLqOYmPmcAvx7Yhowj/ZDFS9fUHGGM8f/FT0TG/FaMfWIH28NvJJB6w
         FCtz91kBps0/r4/W4mTYMpZ/+wUFk10h/Y4v2CTCUsuLYwOfdK7Ej7SZszQcsMXDuGnH
         M54dw3LyCFzOe6A+WWfKModm8KWFCWMJMrEf1g++iv/77GWRsUcp2jvyTO1GaWcDtnoM
         bJtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2quQnHJeT9Fa5IrcwEwRCo1YcerZTXomN5HFRZFMkZA=;
        b=AUTBM7iezCJmxung2cp5d2oSP1gsCRXWhWmGvWYMk7f8qe/S2cpxQ+welwRJy+xakr
         oP/3B2SebkwuHINIlPnx97754BIQ4Ujg29b2cDt1UQKZFlsVOjyOP/Ycs3X6C1ZbwQqN
         kyt1cKuIv5ySK4jk/n3SgXb8BblgrOqsQz2zkQV8UspSyO4YvLZxWMT6Xwbzy/PMQS2+
         BetWNXF2gtb5SAD7YC33Pf7rw/a9SJf9ITNgXpKRlBLA9KQBFX4JGvUZ9O/QynIacNzW
         E6vwCp0CjmvzmsEcmFIRSh775Fb0qhAdLUNEL+3G9isVGPOdcXKzBts5XtRkE6g4KBmm
         LLPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UZbvpYbc;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w2si843362qth.4.2019.08.12.00.39.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 00:39:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id r7so49285439pfl.3
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 00:39:40 -0700 (PDT)
X-Received: by 2002:a65:4505:: with SMTP id n5mr26188138pgq.301.1565595579238;
        Mon, 12 Aug 2019 00:39:39 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li456-16.members.linode.com. [50.116.10.16])
        by smtp.gmail.com with ESMTPSA id k6sm115551672pfi.12.2019.08.12.00.39.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 00:39:38 -0700 (PDT)
Date: Mon, 12 Aug 2019 15:39:31 +0800
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
Message-ID: <20190812073931.GB8062@leoy-ThinkPad-X240s>
References: <20190810072135.27072-1-leo.yan@linaro.org>
 <20190810072135.27072-2-leo.yan@linaro.org>
 <c1818f6f-37df-6971-fddc-6663e5b6ff95@intel.com>
 <20190812070236.GA8062@leoy-ThinkPad-X240s>
 <250165c6-908a-c57e-8d83-03da4272f568@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <250165c6-908a-c57e-8d83-03da4272f568@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=UZbvpYbc;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::441
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

On Mon, Aug 12, 2019 at 10:23:21AM +0300, Adrian Hunter wrote:
> On 12/08/19 10:02 AM, Leo Yan wrote:
> > On Mon, Aug 12, 2019 at 09:37:33AM +0300, Adrian Hunter wrote:
> >> On 10/08/19 10:21 AM, Leo Yan wrote:
> >>> machine__get_kernel_start() gives out the kernel start address; some
> >>> architectures need to tweak the start address so that can reflect the
> >>> kernel start address correctly.  This is not only for x86_64 arch, but
> >>> it is also required by other architectures, e.g. arm/arm64 needs to
> >>> tweak the kernel start address so can include the kernel memory regions
> >>> which are used before the '_stext' symbol.
> >>>
> >>> This patch refactors machine__get_kernel_start() by adding a weak
> >>> arch__fix_kernel_text_start(), any architecture can implement it to
> >>> tweak its specific start address; this also allows the arch specific
> >>> code to be placed into 'arch' folder.
> >>>
> >>> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> >>> ---
> >>>  tools/perf/arch/x86/util/machine.c | 10 ++++++++++
> >>>  tools/perf/util/machine.c          | 13 +++++++------
> >>>  tools/perf/util/machine.h          |  2 ++
> >>>  3 files changed, 19 insertions(+), 6 deletions(-)
> >>>
> >>> diff --git a/tools/perf/arch/x86/util/machine.c b/tools/perf/arch/x86/util/machine.c
> >>> index 1e9ec783b9a1..9f012131534a 100644
> >>> --- a/tools/perf/arch/x86/util/machine.c
> >>> +++ b/tools/perf/arch/x86/util/machine.c
> >>> @@ -101,4 +101,14 @@ int machine__create_extra_kernel_maps(struct machine *machine,
> >>>  	return ret;
> >>>  }
> >>>  
> >>> +void arch__fix_kernel_text_start(u64 *start)
> >>> +{
> >>> +	/*
> >>> +	 * On x86_64, PTI entry trampolines are less than the
> >>> +	 * start of kernel text, but still above 2^63. So leave
> >>> +	 * kernel_start = 1ULL << 63 for x86_64.
> >>> +	 */
> >>> +	*start = 1ULL << 63;
> >>> +}
> >>
> >> That is needed for reporting x86 data on any arch i.e. it is not specific to
> >> the compile-time architecture, it is specific to the perf.data file
> >> architecture, which is what machine__is() compares. So, this looks wrong.
> > 
> > Thanks for reviewing, Adrian.
> > 
> > If so, I think we should extend the function machine__get_kernel_start()
> > as below; for building successfully, will always define the macro
> > ARM_PRE_START_SIZE in Makefile.config.
> > 
> > @Arnaldo, @Adrian, Please let me know if this works for you?
> 
> I don't know how you intend to calculate ARM_PRE_START_SIZE, but below is OK
> for x86.
> 
> > 
> > diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> > index f6ee7fbad3e4..30a0ff627263 100644
> > --- a/tools/perf/util/machine.c
> > +++ b/tools/perf/util/machine.c
> > @@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
> >         machine->kernel_start = 1ULL << 63;
> >         if (map) {
> >                 err = map__load(map);
> > +               if (err)
> > +                       return err;
> > +
> >                 /*
> >                  * On x86_64, PTI entry trampolines are less than the
> >                  * start of kernel text, but still above 2^63. So leave
> >                  * kernel_start = 1ULL << 63 for x86_64.
> >                  */
> > -               if (!err && !machine__is(machine, "x86_64"))
> > +               if (!machine__is(machine, "x86_64"))
> >                         machine->kernel_start = map->start;
> > +
> > +               /*
> > +                * On arm/arm64, some memory regions are prior to '_stext'
> > +                * symbol; to reflect the complete kernel address space,
> > +                * compensate these pre-defined regions for kernel start
> > +                * address.
> > +                */
> > +               if (machine__is(machine, "arm64") ||
> > +                   machine__is(machine, "arm"))
> 
> machine__is() does not normalize the architecture, so you may want to use
> perf_env__arch() instead.

You are right, thanks for suggestion.  Will use perf_env__arch() in
next spin.

Thanks,
Leo Yan

> 
> > +                       machine->kernel_start -= ARM_PRE_START_SIZE;
> >         }
> >         return err;
> >  }

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812073931.GB8062%40leoy-ThinkPad-X240s.
