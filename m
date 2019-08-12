Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB6WWY3VAKGQE6VC4B6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A688A569
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 20:10:03 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id k5sf3589084qke.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 11:10:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565633402; cv=pass;
        d=google.com; s=arc-20160816;
        b=07VyXUxe37s9/O+SdmiRpukn0CW8a2K5BXWGckMcGUDf+WafnMVJPWOq96QAfeoJV/
         frP37e1IiVa3/gOV0pMyi3O2/siQ9rZhxQNg4NJ8NtAoO7QIetinRx4biyL71N/GNc5k
         5bRbIBzpTxU3lAbU1oLeCRvKIFBCWO91knTnNUbZkml/oVOeNmsCkfutRZaPCl2mjegM
         tvX8ggtHICnLDwwg0AOTF1I2wtN/m0tGb3oH9AZi3QCNi2nqGqlfq9zMXgOoiDiqKaIh
         mbJCW/LaZRxpS/sKe4/J00rq04IkzjmJGJd6vchP8brPSF7X4KcnjauOlxTI6EPsQI7t
         aGCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=S0n0uZBYKBr4/N72b+C4mfJ5+lyOTqvQeZ8ueve5np8=;
        b=dS+45bGA2WrUWLWYHwnb/zsYpcsop931YfFqKPd08cdWy9Lxx1B7AIrF6i6LsGM8M9
         un+Gl7+wipCwSmNOY/AwSJTM3NBd9kJDOJuEzACJtxmVlzHYRRQObyOVEcB+8JNE6KOT
         eLcm9Zut4G68vheDav3Gp7rM6Aq7Oh+oa1qRXZjNiMaJ+NpCM2N1hQy4LS+yWPPqHeJG
         KVO68IK9KsKrnBIhOBvH3OijKhWGzls5BkHXAXlZ8XPPy91gmKtD/xHmsWKe5M6ZpRYh
         GIXQIhVjtn/3nFmqDQ1CGiMSFUx92djB4Ytbj7rsqTfuaH44HLUxtsU0sSQA7P3Oadya
         ApJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JAVxM2ec;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S0n0uZBYKBr4/N72b+C4mfJ5+lyOTqvQeZ8ueve5np8=;
        b=g9tSLADhQ90+a+/TmMiYNG1Gnu9J5E0jFbyCxqM1hkaW2xKlemgDNYAYu+h4wPek5c
         NHNOOr8RSnFVXmw9ZJ1ulOf0YE9uJVCwpUbO5WwkKfewYGFBv9AUE7ZByMPtGLNwYRkQ
         R0W6g/a27bqLR4Vk4AP6ZpTwQ9O1xBVVh17aGS+MUGNEIgRltwZTx+v3I/tqLfSBtqGd
         JD0Cb3Rrm0ZHbul/c/2H7L40d2639fWw6J4hR7yl/zEjusetNeFMCISWNqk6jG0aiti1
         MCJ3ypmNqvp3LWKB9EBKnN3WRyLPof0BVrshkbfO7wvThTGEbkr34UXqZKbAp9d0Vm9y
         jFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S0n0uZBYKBr4/N72b+C4mfJ5+lyOTqvQeZ8ueve5np8=;
        b=AI0vTi8LQkP+uB/Vzgmbkbp/IH64lPAzbZmsQF0MymsRsEvIH9dtREvlwiPtUQ0//4
         Z63cYLv0sj9xljZp1mxdZ0yUoTHZmeio67K+JgNPoK8DOGejlNrurq84MyShfP/6ZGOq
         Y0VLO/hY8vBxZkGiRpiCHBYyPvmwF6U5+0G7Eu/J/HC6PWpYZqoMyUKKc3b4FuS6XZZt
         bwQiwpT8qJIOUrs7B0oZPzGNNSfJIffp7Vt+I4I1uLI1qEhOSm1F3cjzdzmHKr7k0PXN
         Aqe54xhsqb+dd2pNqpGUNKF5cpGnflhb+0rRSGHP6y3980f7aNIcb1YH/gRECILUR8CG
         Sofg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfCtFMmCM2PdKv77T+PjzaG5yXVU7FtqWG6SBr7NN51nIMda3+
	Mcti+kska1NjHgJaltEglb4=
X-Google-Smtp-Source: APXvYqyxTQqD/unwQ9vQDj9SqGIa+bjILMzumG7xP5od2PatYLVt/7C1ZZp+sh9Ob8EGvA57XtAfZg==
X-Received: by 2002:aed:3742:: with SMTP id i60mr30925837qtb.376.1565633402384;
        Mon, 12 Aug 2019 11:10:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4d83:: with SMTP id a125ls6304033qkb.9.gmail; Mon, 12
 Aug 2019 11:10:02 -0700 (PDT)
X-Received: by 2002:a05:620a:691:: with SMTP id f17mr9891444qkh.470.1565633402143;
        Mon, 12 Aug 2019 11:10:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565633402; cv=none;
        d=google.com; s=arc-20160816;
        b=n7WL3TvIF7Tz5qPDr38xrv61kOBskPUmvqKBcYmX50RRJ/eHFZF+jvSatyKpX5R7NP
         qPAanR7bCre3iRS+ntgmx+3BD+u7cz8IKzbtxFQ6uk3k1gWX6KFV0Vm7RWk3AtgZZFky
         q8eUI1ClEh2CNEk7L2pFlqoNq7wjC6BygWJD4jSLmJlqolyRD5ooyMYLVT979ZHO6XKF
         bt3vieN9qISe0gNfBcc86qE+O01K5/s+qCWm8JQUNGRz4fk8+VqAmHug+qrAtb2uNBXh
         e+DFpHf0CCIdnJ/Rtafu3DOgc6+BHIiriUzdxhpeYl+3cwLows+ee4toXjLlZV3RXqyF
         0hPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=w6tzHdEd/bz8p/qCO+pJa2lCwH6mfcHDNdZRRxko7eE=;
        b=mpDj7+Poa+OSqDtnbmJQQH6it7QeV2EfKSB99DSITvhR/cYGvOQukm65umsiOJB+o0
         bLizyz36nP8K2qUHiuIUwHpWM6vR+3cINwYVHfIyA81WqmYs+0y3YQzfvLulrPN6cnsY
         CwY9XrmM8GtwqrRLAgyJiE3l2Qm2C2VDuOeGkfE9eIamlxXuwQcwsuSJ0ZRRPvCG9qxK
         CVJL+11K90hkU2+NOvPkrGH2wV4J8KkNlwdllyB86w/mP5c02K1hCGXuj7tt08Sx3tHk
         MXfrDtQrvwgj5OXULquuQc7Llvc9Spt3+2cd6PeODPhWpDRsCQO3eZXkFNza/+3FI4o5
         0KnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=JAVxM2ec;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f22si413005qkh.5.2019.08.12.11.10.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 11:10:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 594E52067D;
	Mon, 12 Aug 2019 18:10:00 +0000 (UTC)
Date: Mon, 12 Aug 2019 20:09:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"# 3.4.x" <stable@vger.kernel.org>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [stable:linux-4.14.y 8386/9999]
 drivers/gpu/drm/i915/gvt/opregion.o: warning: objtool:
 intel_vgpu_emulate_opregion_request()+0xbe: can't find jump dest instruction
 at .text+0x6dd
Message-ID: <20190812180958.GA14905@kroah.com>
References: <201908120108.9KdVOsTD%lkp@intel.com>
 <CAKwvOd=JpUsD1XDSBzgwDWcAO+1VuGOLjbGNCTFne-WAqjGzXQ@mail.gmail.com>
 <20190812175828.GA13040@kroah.com>
 <CAKwvOd=ORE==PVaXdyUc44CsNp7bShapjaQ00Ej-UA7_r4CWSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=ORE==PVaXdyUc44CsNp7bShapjaQ00Ej-UA7_r4CWSQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=JAVxM2ec;       spf=pass
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

On Mon, Aug 12, 2019 at 11:00:38AM -0700, Nick Desaulniers wrote:
> On Mon, Aug 12, 2019 at 10:58 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Mon, Aug 12, 2019 at 10:49:47AM -0700, Nick Desaulniers wrote:
> > > On Sun, Aug 11, 2019 at 10:08 AM kbuild test robot <lkp@intel.com> wrote:
> > > >
> > > > CC: kbuild-all@01.org
> > > > TO: Daniel Borkmann <daniel@iogearbox.net>
> > > > CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> > > > CC: Thomas Gleixner <tglx@linutronix.de>
> > > >
> > > > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable.git linux-4.14.y
> > > > head:   3ffe1e79c174b2093f7ee3df589a7705572c9620
> > > > commit: e28951100515c9fd8f8d4b06ed96576e3527ad82 [8386/9999] x86/retpolines: Disable switch jump tables when retpolines are enabled
> > > > config: x86_64-rhel-7.6 (attached as .config)
> > > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > > > reproduce:
> > > >         git checkout e28951100515c9fd8f8d4b06ed96576e3527ad82
> > > >         # save the attached .config to linux build tree
> > > >         make ARCH=x86_64
> > > >
> > > > If you fix the issue, kindly add following tag
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > >    In file included from drivers/gpu/drm/i915/gvt/opregion.c:25:
> > > >    In file included from drivers/gpu/drm/i915/i915_drv.h:61:
> > > >    In file included from drivers/gpu/drm/i915/intel_uc.h:31:
> > > >    In file included from drivers/gpu/drm/i915/i915_vma.h:34:
> > > >    drivers/gpu/drm/i915/i915_gem_object.h:290:1: warning: attribute declaration must precede definition [-Wignored-attributes]
> > > >    __deprecated
> > > >    ^
> > >
> > > Was there another patch that fixes this that should have been
> > > backported to stable (4.14) along with this?
> >
> > If this is an issue on the latest 4.14.y tree, please let me know.  Look
> > at how far back this commit is before getting worried :)
> 
> patch 8386/9999 ???!!!  Were there exactly 9999 patches backported, or
> does git stop reporting after 4 digits? "4 digits ought to be enough
> for anyone!" (except GKH, it would seem ;) ).

I blame kbuild, every once in a while when it adds something new to its
system it goes off and does crazy things like this...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812180958.GA14905%40kroah.com.
