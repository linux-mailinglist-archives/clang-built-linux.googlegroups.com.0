Return-Path: <clang-built-linux+bncBCILLLGERUHBBBWJX2AAMGQEBD4NGRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CEB3033FE
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 06:11:38 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id x71sf4164400oia.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 21:11:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611637897; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXcSPqCKFIU/9euXSd6h1tOvbXK5WHs3el2rnnH+iX9cA/tEbk8BD0bHWPwwwaJ2ho
         ZiAms7qxSW0FZGffmKa6CJqG7H0FF3Iz3wU/zcx3MBOr6RGVsPa61eRqKdj1My/HE3zk
         PVeaJHNpgAVm9tSb28W5/V3u8fwlR++vJ0la8tAwBoliDQ2I3IFxM7rLzU4h/ZqIYSxX
         J+dUAEa38B5LujFRlK3BReFl7ZxOL+/isIrDFxizFGFdaTNAHcZPdYVa8NZq1eUK2BgH
         0XR3Oolfhqio3hMmcC4Wx1bc0HGdx4LT5/ghjGZxsnCIiwoxjhYonaGLk8aEPjryTwnc
         MlVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gap9T7B1eoXZVO3RVewzKvif6YUgLKlGlBJZHClGQ8U=;
        b=nhJbruJ6/cKZRDShoO9TR9sDgSkGXmvZXgAC5Art8hnRcfBRXcHGhD1TGItVHnCsB6
         KWTGEN2xfbm8uIGPHkpbac3jzGXjQpDxNh72obTAxm9kZXSPiaOvNKgHkNWZamVVVeM2
         f1l8NyPPndkbUtscxIcNNNHd+GnQknW5d5zY3YE03Y2S83d496RGMQWWTnEsxyraFbQ2
         H4nxe6KJ3hYRs9pob/2NrcOr3ZMHHgWb0khVILjHL1wfymU+S6AhgHMpNZRCttTIFq0f
         HSnFgpYlTZUuvFur8LJU1FtySAo+kku29c2maQBerqfDJyc4kJHsUb+2dv0ZpfhGXnmG
         j9DA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.52 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gap9T7B1eoXZVO3RVewzKvif6YUgLKlGlBJZHClGQ8U=;
        b=DbbnOVgd17FyJcqp6uL/BH8YcnBGLjhPUmJMUtGWCRmD3mGg26wu4TbW5rqUSgBr3T
         3WsfHBc181h9+r7hVEmGoPnmAXvLl6aPwCUvUZ5Hsz89Qa35FJgGdGut+fOqfVYjX3IJ
         BxJjeg6eUkNuhvYvGWMp9j9CirIcWM69jTnqING/Qqob+TRea9BMWGXar82hOh+7giJl
         oVbA1zHnE0+wNywRCwKK6zYcRtG/cnawTyQUefDJc5JELYb7yEfjBfCjW+yYKo8+ReKb
         drk9q3dFO2ZJ6u9TpW2+O7CfF/b9FH2ljIh8UigL964sUYhktoNMZ1WAfcLMcx8sR7Wt
         Rp5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gap9T7B1eoXZVO3RVewzKvif6YUgLKlGlBJZHClGQ8U=;
        b=L8MZlsjEXWiFI2NgICFuNtw6gCakL6v5WU5fHr+kPKUTYsQQbgoAxZsxb/Zyy/GS1c
         03TJVa0cXoaGvUm1ToTi4wGGKhyEiHO9UAknb2tTzO8Ea2FNAzzWrw7XrdDPcBaiKhn8
         9uAiokmM4Zxdi45TTOS+FNySM4bVUacXACuoJveWXYpop2W0tqEoThof6gBwKM2tYo3I
         yNvkgBaoUNqNY4zMBWlaE65uy586SDnZG1lxpdvWLdhvPsUFNE1efBoVtnd+rBAuvSs5
         8e6+l2v3F/P3v+8rFgjhKBL0HNIBY5WZDRsc27PvzY+mQ+cyHpmwHhDTf6NQosVh/8hM
         /nCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Fnudr2kHgxWp+lg0BCARtGBLoVRmSGrE4QvSJCPDcV3ZB/bNi
	QwBshH9dJXfsICTX1KUGTF8=
X-Google-Smtp-Source: ABdhPJzHMzzJiw/rpK0G/utuHc/uGtxgB/85IYogqOb3XwfKWhIT8ifRUFMtX9Me0gr/EOf7s8YC3g==
X-Received: by 2002:a05:6830:1bc7:: with SMTP id v7mr2789062ota.69.1611637895007;
        Mon, 25 Jan 2021 21:11:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0d:: with SMTP id u13ls3219145otg.8.gmail; Mon,
 25 Jan 2021 21:11:34 -0800 (PST)
X-Received: by 2002:a9d:1903:: with SMTP id j3mr2853388ota.256.1611637894592;
        Mon, 25 Jan 2021 21:11:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611637894; cv=none;
        d=google.com; s=arc-20160816;
        b=l2PHwHNBjkax9wb7zpvKkUeMZ5U2zzn6Au8mwJmyxekh7c0V0kC5/tLyvbNug07hZw
         vaoeLGikAeWFLN8Y5p8AgXl+5H9BOVN7uj1bl2xu3fI4jHjnXUPqS2b9WCC7KORC/dq2
         vfECTSh6LxZo9l1N0mNA6Ylwymda26eBf1Bw5gKixrE3TmZBXRRA/z7SNB2dqt3dL4gv
         Pch3EtloNuJwch1nbBzpFVIhm/VMdL9PZ+CNWsD/lDxrKTtkte3C8XwxvRxwWoB6Tb/l
         JOQErh7ZqJja+I+6OCYOweDB132Ewljdm/OPxPeXzbYwbL+9n0aKXHBj0HCu6Xqpm+IJ
         CtQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=DmaMPZV/VxgqIwEqykBR9Gxeq43EdO4m32aypNvWqws=;
        b=d2BjmyzDjM+0dKVY9ZoRhGGWwc/xk4sSKn5QAftgWlaACZyxcZ0Mtd1eLo+bsF6/ps
         MgTQ/JoaVqUCfHM0iSA+aMqeP4l4nGN4W2qoVd6Ud7faf0RmOfryGADAVou/XcQQbgNF
         XUA9MyAaSu7IZWY/s6jCFnfm9w5sxxISeE4jOZoEJHrDYzJpYsLlSxRty7eQEq8PYhdi
         ye+ahlJtG/G3WwsyPTlXgY0wLx9vNQbpeO7bh/UhyoJwSTXCUwU7vEElvOadjSOFgUOE
         XTA5jKEGmYOuSwzmTHz4PJRSzN86l8MOorzpANWjw2VpvQC8hu3zUss6fZND8VuJAMhT
         g42w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.52 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com. [209.85.166.52])
        by gmr-mx.google.com with ESMTPS id j1si255368oob.0.2021.01.25.21.11.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 21:11:34 -0800 (PST)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.52 as permitted sender) client-ip=209.85.166.52;
Received: by mail-io1-f52.google.com with SMTP id n2so31363055iom.7
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 21:11:34 -0800 (PST)
X-Received: by 2002:a05:6e02:1564:: with SMTP id k4mr3219033ilu.282.1611637894279;
        Mon, 25 Jan 2021 21:11:34 -0800 (PST)
Received: from google.com (243.199.238.35.bc.googleusercontent.com. [35.238.199.243])
        by smtp.gmail.com with ESMTPSA id y1sm12045326ioj.32.2021.01.25.21.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 21:11:33 -0800 (PST)
Date: Tue, 26 Jan 2021 05:11:32 +0000
From: Dennis Zhou <dennis@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>, Linux-MM <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] percpu: fix clang modpost warning in
 pcpu_build_alloc_info()
Message-ID: <YA+khB+34zmp+Aj7@google.com>
References: <20201231212852.3175381-1-dennis@kernel.org>
 <20210104234651.GA3548546@ubuntu-m3-large-x86>
 <X/O46grb51Z4faI1@google.com>
 <CAK8P3a2ZWfNeXKSm8K_SUhhwkor17jFo3xApLXjzfPqX0eUDUA@mail.gmail.com>
 <CAKwvOdnxnooqtyeSem63V_P5980jc0Z2PDG=0iM8ixeYTSaTCg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnxnooqtyeSem63V_P5980jc0Z2PDG=0iM8ixeYTSaTCg@mail.gmail.com>
X-Original-Sender: DennisSZhou@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.166.52 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Nick,

On Mon, Jan 25, 2021 at 10:27:11AM -0800, Nick Desaulniers wrote:
> On Mon, Jan 25, 2021 at 3:07 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Tue, Jan 5, 2021 at 1:55 AM Dennis Zhou <dennis@kernel.org> wrote:
> > >
> > > On Mon, Jan 04, 2021 at 04:46:51PM -0700, Nathan Chancellor wrote:
> > > > On Thu, Dec 31, 2020 at 09:28:52PM +0000, Dennis Zhou wrote:
> > > > >
> > >
> > > Hi Nathan,
> > >
> > > >
> > > > Hi Dennis,
> > > >
> > > > I did a bisect of the problematic config against defconfig and it points
> > > > out that CONFIG_GCOV_PROFILE_ALL is in the bad config but not the good
> > > > config, which makes some sense as that will mess with clang's inlining
> > > > heuristics. It does not appear to be the single config that makes a
> > > > difference but it gives some clarity.
> > > >
> > >
> > > Ah, thanks. To me it's kind of a corner case that I don't have a lot of
> > > insight into. __init code is pretty limited and this warning is really
> > > at the compilers whim. However, in this case only clang throws this
> > > warning.
> > >
> > > > I do not personally have any strong opinions around the patch but is it
> > > > really that much wasted memory to just annotate mask with __refdata?
> > >
> > > It's really not much memory, 1 bit per max # of cpus. The reported
> > > config is on the extreme side compiling with 8k NR_CPUS, so 1kb. I'm
> > > just not in love with the idea of adding a patch to improve readability
> > > and it cost idle memory to resolve a compile time warning.
> > >
> > > If no one else chimes in in the next few days, I'll probably just apply
> > > it and go from there. If another issue comes up I'll drop this and tag
> > > it as __refdata.
> >
> > I've come across this one again in linux-next today, and found that
> > I had an old patch for it already, that I had never submitted:
> >
> > From 7d6f40414490092b86f1a64d8c42426ee350da1a Mon Sep 17 00:00:00 2001
> > From: Arnd Bergmann <arnd@arndb.de>
> > Date: Mon, 7 Dec 2020 23:24:20 +0100
> > Subject: [PATCH] mm: percpu: fix section mismatch warning
> >
> > Building with arm64 clang sometimes (fairly rarely) shows a
> > warning about the pcpu_build_alloc_info() function:
> >
> > WARNING: modpost: vmlinux.o(.text+0x21697c): Section mismatch in
> > reference from the function cpumask_clear_cpu() to the variable
> > .init.data:pcpu_build_alloc_info.mask
> > The function cpumask_clear_cpu() references
> > the variable __initdata pcpu_build_alloc_info.mask.
> > This is often because cpumask_clear_cpu lacks a __initdata
> > annotation or the annotation of pcpu_build_alloc_info.mask is wrong.
> >
> > What appears to be going on here is that the compiler decides to not
> > inline the cpumask_clear_cpu() function that is marked 'inline' but not
> > 'always_inline', and it then produces a specialized version of it that
> > references the static mask unconditionally as an optimization.
> >
> > Marking cpumask_clear_cpu() as __always_inline would fix it, as would
> > removing the __initdata annotation on the variable.  I went for marking
> > the function as __attribute__((flatten)) instead because all functions
> 
> I had to look this one up; it's new to me!
> https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#Common-Function-Attributes
> https://awesomekling.github.io/Smarter-C++-inlining-with-attribute-flatten/
> 
> Seems pretty cool/flexible to control inlining on the caller side!
> 
> At the least though, we should avoid open coding the function attributes.  See
> include/linux/compiler_attributes.h
> 

Arnd do you mind spinning a new version to add __flatten to
compiler_attributes.h?

> Testing quickly in godbolt, __flatten__ has been supported since at
> least clang 3.5 and gcc 4.4, FWIW (so it doesn't need a
> __has_attribute guard).
> 

Thanks for testing this!

Thanks,
Dennis

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YA%2BkhB%2B34zmp%2BAj7%40google.com.
