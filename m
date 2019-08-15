Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBZEF2XVAKGQEIEGM7WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BF18EA51
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 13:32:53 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id t18sf1681837ybp.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 04:32:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565868772; cv=pass;
        d=google.com; s=arc-20160816;
        b=bj2tvoWy6ue4LGbeZYx2/WhZ2t4vkGzoPvvzo4KRsX+MfjNdIlIzpKduJco3cx8WUn
         ME5D34HQRtHFaK8C3U0wUAlyoMuqwpdWx3yMImy33yVATXjy/gPO2LExyrK1t6hRmcxr
         LJ6anBkeYDXwfjaID/HRfO6NUw5UfD40afRhk5dJg1gUMCjjA2tFPlLWlcyq+PuIvRZd
         jXWliQc4N0aHZJZ9pCCT4UI4jrXW2UogWxsbQ+OdP8AYFhxnaDYdTNnRiF7nI3V9MXUY
         1VbhSpvdy2hzDun1mPeLYbvXEseawXjSKckNUuKsaQMLoZdOWoNnnnG7yc2i3XYdi11H
         yYQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=w9gBa0XwGt+K/NjQuwIBaANjQP0qBnvcLqYTA9Ht9Oc=;
        b=LUm/eJ/F1Ytz1buwdhSAKrM9uouwhuPuOvkvLv5Di2YRgiHR4jszHA24SI8wmxljGC
         niLBCDbEFssSVJ5DA3vsPDk0kJKaOY0QOo5CHwbzt6M8AlgqXaNHJh/uc1xWOTdbU5M0
         mam6YBAyuIR6bXHpg16MlgZJtBg6aSUVj5a7+/8NhR6MoE8HdWtHn1o3r3jguIRm3KTk
         8rqh1FcCZT158qT09QnQg38udv6kyiD+J7sG6ZLglree/JJFkOrY7wuXwDmhCUz8TM7x
         SMbNkuEHIjM46ZCke2uN5noax+MCHbnjc65Wj+h+Az1F3yJgAIEfCmq5nvgObRYzgSd7
         MAxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BdQMSyc7;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w9gBa0XwGt+K/NjQuwIBaANjQP0qBnvcLqYTA9Ht9Oc=;
        b=bqpGzaC3ur0EEK/Bo11H7s9dM5HcWYljP7YAjQl4lUNFqD0mp9uDCfoUe9NDcligdA
         D66C9q2MvKHnBVu5OnEy3vInj/5hsplBiVTSIDBa2XrMb/Ce0V4T7RrD5dH91evrEj5O
         tSwDG0ZfpcVfxHOCu48uciqWiVB8l/zL2QFxJqEWqO2xVDfBsW9c0n2efsstX4QIcBBL
         WIkGHMhV3G6PzsxUs34Y0TVclF7hiulfE4VjPinWgsCgdXRObI4qwJpQvX3DnumspAjh
         XZXjlF7yeSpunToG8WbjuAvox79FU4cEYVuSC5mNzqAfc+Qg4dG2iQpx0HvmXOP4IkI/
         Hy1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w9gBa0XwGt+K/NjQuwIBaANjQP0qBnvcLqYTA9Ht9Oc=;
        b=QmvFuGaf1WEge0ZDKOhCKbC9yeiM8NG8Pt9WJZZ0xWp/V+tO3vxUAoxuSXRUWDgdUm
         ne+bxwHGbUBirYAnmC9usz4nlUlEPTHsDqAB72wr1bdJRlMCEDMMWMndbJhiZAPCqxaN
         jHYN2kVxly6ABkKjuGXzAlfY9ISiuveos44FJQ68UeMjr7mE4Dofx4iBzMsl7/9kL2s3
         /Pxl3+pHYRCXtBIauPHEbzS7YEC/QJ+5fR4tGtm16VTUhwkiInGkYulRnpnoH/Y6zkbH
         6ZOkJyn3iNi/v8sAvNaqWX5bUfNSKlKR7djnl6BHKzpPKJOWsg9FB0XZ1J6+XXAJFv7t
         1pjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX9hMp5SV9e+K1u0vq/aswlTWHlYQJ/wSYcScj3l+OySY87cdJ2
	iUF55GrKSEYXmln97Zqth4g=
X-Google-Smtp-Source: APXvYqyKMVrK5S6OrcDCFPiOvXLWajwBnQxJbDDfTKNebcC59CbquWdVY6sk4/SNCCHRhOYhqu9jFg==
X-Received: by 2002:a25:84d0:: with SMTP id x16mr2926648ybm.481.1565868772602;
        Thu, 15 Aug 2019 04:32:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8546:: with SMTP id f6ls748060ybn.15.gmail; Thu, 15 Aug
 2019 04:32:52 -0700 (PDT)
X-Received: by 2002:a25:ef03:: with SMTP id g3mr3242085ybd.271.1565868772359;
        Thu, 15 Aug 2019 04:32:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565868772; cv=none;
        d=google.com; s=arc-20160816;
        b=i2zoA0xxZL3DnEAUyIfF1bdFOPd+f2H7NoiUNGnumTztjjkoW44YoNa+bNb4PcJ02L
         OiP1Espg0CiP/iSrDKh+CRXH95AiAicGxunESWQEBntq6bHiFlfpQNNMSvYg0ubSiD4e
         MNtqmghMOjPA5mxuJ3hueGWl+sNYlW73j/CD3arylLIaaMaOjvE0rP+Rf8Gc4s6z0IVA
         2T8k2iqQvePj52goF8bIRzYFFiTTSAA+l4x64Tjw+N7y3pqlcxpwC9cBTekFh8/tWdMO
         GWQFZF8bmzxoW2JBkQxgi/Rqlal4HHC64mxz4P7XsWNhBbOZG9pXyh0pZ41cNsuu2lHW
         5L4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6yyNNZcoZXd04iOxCA2uv7QHQpYeH3o1GL76tGnvZsI=;
        b=BwskxeyVq6rHD/TsD4zLMZth68m1lSpoIRq6HAkRaXkEihrx/At7AR9Z0xV+/eQ1Iy
         RcTlbZQ0w/dZhT/OjrR/0LZrqXSHQqvM2xT218yDwtCFnnFQc2yK7BVcQzScmqxNzg31
         tUvIIwX6AvN0NnKRuKAznuYQSxCObWdjhLUWZF3U+g8FHbVURGxDlXUbD+r2IVgAslnH
         zRVUok68n48pCpUiy9/kkDrcWYVeB7HpqWkuLTF/9WMdBEHSbcoYMmtPwbTGilx21AW8
         C9Xc0sEuBWNntNfOdptJrFg9eD5HTII4N5ymBNxvXFgCzENeMvRmzZPQobqKbQ/KNdpv
         XgkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BdQMSyc7;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id p69si124672ywg.0.2019.08.15.04.32.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 04:32:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id g2so1231763pfq.0
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 04:32:52 -0700 (PDT)
X-Received: by 2002:a17:90a:bc06:: with SMTP id w6mr1878592pjr.130.1565868771311;
        Thu, 15 Aug 2019 04:32:51 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li456-16.members.linode.com. [50.116.10.16])
        by smtp.gmail.com with ESMTPSA id t6sm1190242pjy.18.2019.08.15.04.32.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 15 Aug 2019 04:32:50 -0700 (PDT)
Date: Thu, 15 Aug 2019 19:32:42 +0800
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
Message-ID: <20190815113242.GA28881@leoy-ThinkPad-X240s>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=BdQMSyc7;       spf=pass
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

Hi Adrian,

On Thu, Aug 15, 2019 at 11:54:54AM +0300, Adrian Hunter wrote:

[...]

> > diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> > index e4988f49ea79..d7ff839d8b20 100644
> > --- a/tools/perf/Makefile.config
> > +++ b/tools/perf/Makefile.config
> > @@ -48,9 +48,20 @@ ifeq ($(SRCARCH),x86)
> >    NO_PERF_REGS := 0
> >  endif
> >  
> > +ARM_PRE_START_SIZE := 0
> > +
> >  ifeq ($(SRCARCH),arm)
> >    NO_PERF_REGS := 0
> >    LIBUNWIND_LIBS = -lunwind -lunwind-arm
> > +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
> > +    # Extract info from lds:
> > +    #   . = ((0xC0000000)) + 0x00208000;
> > +    # ARM_PRE_START_SIZE := 0x00208000
> > +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
> > +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
> > +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > +      awk -F' ' '{printf "0x%x", $$2}' 2>/dev/null)
> > +  endif
> >  endif
> >  
> >  ifeq ($(SRCARCH),arm64)
> > @@ -58,8 +69,19 @@ ifeq ($(SRCARCH),arm64)
> >    NO_SYSCALL_TABLE := 0
> >    CFLAGS += -I$(OUTPUT)arch/arm64/include/generated
> >    LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
> > +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
> > +    # Extract info from lds:
> > +    #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
> > +    # ARM_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000) = 0x10080000
> > +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
> > +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
> > +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> > +      awk -F' ' '{printf "0x%x", $$6+$$7+$$8}' 2>/dev/null)
> > +  endif
> 
> So, that is not going to work if you take a perf.data file to a non-arm machine?

Yeah, this patch will only allow perf to work correctly when perf
run natively on arm/arm64, so it can resolve partial of the issue.

> How come you cannot use kallsyms to get the information?

Thanks for pointing out this.  Sorry I skipped your comment "I don't
know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
the patch v3, I should use that chance to elaborate the detailed idea
and so can get more feedback/guidance before procceed.

Actually, I have considered to use kallsyms when worked on the previous
patch set.

As mentioned in patch set v4's cover letter, I tried to implement
machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
parse kallsyms so can find more kernel maps and thus also can fixup
the kernel start address.  But I found the 'perf script' tool directly
calls machine__get_kernel_start() instead of running into the flow for
machine__create_extra_kernel_maps(); so I finally gave up to use
machine__create_extra_kernel_maps() for tweaking kernel start address
and went back to use this patch's approach by parsing lds files.

So for next step, I want to get some guidances:

- One method is to add a new weak function, e.g.
  arch__fix_kernel_text_start(), then every arch can implement its own
  function to fixup the kernel start address;

  For arm/arm64, can use kallsyms to find the symbols with least
  address and fixup for kernel start address.

- Another method is to directly parse kallsyms in the function
  machine__get_kernel_start(), thus the change can be used for all
  archs;

Seems to me the second method is to address this issue as a common
issue crossing all archs.  But not sure if this is the requirement for
all archs or just this is only required for arm/arm64.  Please let me
know what's your preference or other thoughts.  Thanks a lot!

Leo.

> >  endif
> >  
> > +CFLAGS += -DARM_PRE_START_SIZE=$(ARM_PRE_START_SIZE)
> > +
> >  ifeq ($(SRCARCH),csky)
> >    NO_PERF_REGS := 0
> >  endif
> > diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> > index f6ee7fbad3e4..e993f891bb82 100644
> > --- a/tools/perf/util/machine.c
> > +++ b/tools/perf/util/machine.c
> > @@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
> >  	machine->kernel_start = 1ULL << 63;
> >  	if (map) {
> >  		err = map__load(map);
> > +		if (err)
> > +			return err;
> > +
> >  		/*
> >  		 * On x86_64, PTI entry trampolines are less than the
> >  		 * start of kernel text, but still above 2^63. So leave
> >  		 * kernel_start = 1ULL << 63 for x86_64.
> >  		 */
> > -		if (!err && !machine__is(machine, "x86_64"))
> > +		if (!machine__is(machine, "x86_64"))
> >  			machine->kernel_start = map->start;
> > +
> > +		/*
> > +		 * On arm/arm64, the kernel uses some memory regions which are
> > +		 * prior to '_stext' symbol; to reflect the complete kernel
> > +		 * address space, compensate these pre-defined regions for
> > +		 * kernel start address.
> > +		 */
> > +		if (!strcmp(perf_env__arch(machine->env), "arm") ||
> > +		    !strcmp(perf_env__arch(machine->env), "arm64"))
> > +			machine->kernel_start -= ARM_PRE_START_SIZE;
> >  	}
> >  	return err;
> >  }
> > 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815113242.GA28881%40leoy-ThinkPad-X240s.
