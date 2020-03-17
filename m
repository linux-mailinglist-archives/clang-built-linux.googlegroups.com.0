Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBTF7YDZQKGQE6LTVHGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 044AB187721
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 01:54:38 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id a1sf11511055qvt.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 17:54:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584406477; cv=pass;
        d=google.com; s=arc-20160816;
        b=WjKq2nJLgUnOCQMNGhEsws5CtPvLEMWLsdsFHltNZGzNxDkRXXse0wSl3XNLKgfCFn
         yBI20m7jTv0L4hA2wW01aBPYZPXH/d01/qaUQYaWBCck+7bZ4wx9pf4j1rOXLNxtH1F6
         wsl7gAVjVFaZXm/TU4YSYqeHAbgZ3f6SxKXbjsATLs4fjm3zIulrg5xIi6cLdmzpfX3+
         GdJT5qU7eIVU0J9vX1fqEVa1+7Z6S6wTxhsfukcM+EDBZW35h6K3u7AJ/NBSat0vmz8i
         l72cRJCzZWSp9+r/M1QZi0C9HbNqwnHtGYG09zjVtbVPnqnC703YI4+PL4ik4w/6P8fj
         kksA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=PtsY25oHefl7lNyUK1Z9Jxn9QdSk1+4ADMERYaY6kXw=;
        b=WmLtZ3XbLgd77ABBa0opDgIqbG04u5VJU1IQqvGNaY1mUHd+BK0RQ6TTMskz0Rid34
         h/LzB7GufJmURIpFwwhW4/3BWudgaOEygYgz0aB+EJW43jr0TrA6qPndCfsqsbev+My9
         xSvcCI4RWVRZNK3O7Lz8zESNq/EBwNrLf7MGWLRCYpxvFdgtMyC3kH7lnlPzaley4Zx0
         UorFLRYpt2HczqjujVJp0kMw70H5sI3JxLiG7gkYC8MRl8tfUoyZ0E7gitUbi5G/riWV
         8QjPXMufbWU121hskAim23jNSqoO58cwW9eAIDgCjrOg3IehnpEvV5d5HDdggHAX2Hsf
         KVIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PtsY25oHefl7lNyUK1Z9Jxn9QdSk1+4ADMERYaY6kXw=;
        b=neTYRntzACVIEX+U9/XwdJ3DZMgrfVBJDyqTZ5WucAGj4ikZXj0lCrtdv9ixDlzhyk
         zSwvK+LlDYRY6+GZLNXtMZgUNmo8jf7e1xilNEuqvLwa85aFZGbU16UBwwFojTF6bq4H
         dU2r225hyEgzPkwKmJ1j3aDSz0JaqUSnEHFtO6F05auABVBwT6/K9ylTAUcI82Zaerf4
         uHD5LPS4IfAopr/JjK9elSSd1OStBHgp71R92tAsXM9JDqL+E/p+fq1X4HWsNlMRdQft
         xpPp3xsHjKtoUpMk9RHAbZgKr9lJcMECgee3dr769RVY8E8k/ipBkERu1ADySSZi03eK
         iInA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PtsY25oHefl7lNyUK1Z9Jxn9QdSk1+4ADMERYaY6kXw=;
        b=KCxIRbubgLuflucYRHEA2pwAj7HPnvAnzS0DYkf3B65/xv1VmjXg6TiHXvPWhwjV4/
         FoUVVMjySWtwZR0P8sMOkkzCwnJAdsHv8H3g8Do6mcIJSAdgMajaTrhUvCPbVuQwM9OB
         07oI/ZiIhnGfplhoKZPcuupm+LpTeulQpGotM2+uSsAUFHnHx4Qq82dU5jnqy/zmq1ti
         zUyR+WLR5epZzyVzPM4ozJXYFYiOZPdDSOyW2bsxfW3ZdxNPSpUks0XAl+FF3jjJizRb
         UDM0dMvEIrTyxOPA9nzeJ4q/5PRDb/ucMn9PXK0OBhG0+XXqmh0Cv15wKGmq6HmzyXy9
         eThw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1GkNghogWSpcczcAK6jywhC1lP8EelzDlMnmLlEMM4E7w5wLVZ
	KnvkzFY+V9HUT0SGZ2AyQjI=
X-Google-Smtp-Source: ADFU+vvvVxibi+ZD7CCGWpwWJIx33YR1fEDxge/YhvIM3OPddgz8izsu2Cjay4OctU6qjdYPB4qSNg==
X-Received: by 2002:a25:d3d4:: with SMTP id e203mr3542933ybf.75.1584406477051;
        Mon, 16 Mar 2020 17:54:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d982:: with SMTP id q124ls1689205ybg.11.gmail; Mon, 16
 Mar 2020 17:54:36 -0700 (PDT)
X-Received: by 2002:a25:e84:: with SMTP id 126mr4031414ybo.0.1584406476644;
        Mon, 16 Mar 2020 17:54:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584406476; cv=none;
        d=google.com; s=arc-20160816;
        b=0MotGWPXRJtjXV6MiPGZWknFMpTLPcMub39pGW+/i/nmzpXbo3y4EUSHBz/IfFnFuu
         KVy/q6UG/uHT1ZQErI2kU/dx7Li14wNIgfCXPSY6hO0AMoC2V/kMQs/hwYtMBAKTP9u5
         LkjtL8cjoKisc5rIQH3Vrmw6viWJj1JSaJqxOwjn+w3mLeywWHkiaG7Uzj+IOwmDMuWL
         cnkD7PPdoPI+p8+/SMOCvk+eYOJEYEig0nCFxUCvrMpYsZZciAjTGLy8iqBU+Q5yKKXK
         RMITgRIA3z8Glbi2rhVukxHVDtNihvXkJg44EW4hUkpKJ+B9+VxeBNDgCcL5mZT3MRYd
         y96g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=bGhOzFRsHJyc5oR9RvWYMjFedCLCVJSfVsIgYKwmD/4=;
        b=nQibXF8jyfb/uRED1+PcF8+IsrvDDbKpdcZuQXby2eKATrfPrwuy0g9rg+2MyypEwq
         efQzfalRIF36muJCeyqZKuS+wbb7V+ukKSfGSOOp1w1JoE803BxwB8PhxOHXuo7awCLJ
         rPlG5uJMhcay8598v750llYKjo7z6kK4sTSjv/d1pIdXaaBGKzw1SDn3SPHWk4MlRFYs
         IC2nbX93072WJgXZ/wrH+zbiDI3yv8cTha2pKDIx7hn5d1H1dNnaA1gkyemeqh2rNDmi
         eABbgOlM5SmjB1JaXkLdmyKjfBnED69NUMKoeA7Ldkdz8CxegNde1OSJ/zYeq5zs0EUq
         gTjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id e14si184223ybp.0.2020.03.16.17.54.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 17:54:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 7fItsDTN186cFiK88LNnzzAUvr0MHkLe5j4ppp8+ZTgmB8eJXu2lVJ098gLx71PFjNh8FedhCN
 8EASi3+2s2Mg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 17:54:35 -0700
IronPort-SDR: B3zuBSvRgXW+wUl4yuzNHijRAM5a2ulZgnNi8HAnbR2+aenvaciiIOXtx7LdIrFiJoz+NN1n9B
 UHyMP4PCZu0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,562,1574150400"; 
   d="scan'208";a="247657199"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga006.jf.intel.com with ESMTP; 16 Mar 2020 17:54:33 -0700
Date: Tue, 17 Mar 2020 08:53:27 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Rong Chen <rong.a.chen@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	lkp@intel.com
Subject: Re: Should 0day-CI support more architectures with clang?
Message-ID: <20200317005327.GB26990@intel.com>
References: <e841a11a-ba40-e999-e840-4b5352262729@intel.com>
 <CAKwvOd=g_Soj_xnrz-ptUoEgek87sbeikcRpdrvEJGa_F72fiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=g_Soj_xnrz-ptUoEgek87sbeikcRpdrvEJGa_F72fiA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Mar 16, 2020 at 11:14:42AM -0700, Nick Desaulniers wrote:
> On Sun, Mar 15, 2020 at 7:28 PM Rong Chen <rong.a.chen@intel.com> wrote:
> >
> > Hi Nick,
> 
> First off, thank you guys so much for enabling Clang in 0day bot.  It
> is an incredible system that helps prevent so much breakage from going
> into the kernel, and I am so happy with it.  If there's something I
> can write up that you can show to your boss as praise, I would love
> to, just let me know what I can do.
> 
> >
> > We have already supported to compiler to
> > x86_64/arm/arm64/powerpc/powerpc64 with clang,
> 
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration is
> our dashboard of our minimal CI.  Comparing it to the list above, it
> looks like we're additionally testing:
> 
> 1. mips (malta_defconfig)
> 2. s390 (defconfig)
thanks for the info, we will consider the build for them

> 
> We're very close to adding riscv support, and I can keep you both in
> the loop when we do.  If you use github, I'd love to send you an
> invite to our github organization, which makes it easier for me to cc
> you on issues/pull requests within the org, and for you to get emails
> and notifications.  Please send me a link to your github accounts if
> you're interested.
> 
> > is there any other architecture you wish us to support?
> 
> Those 2 or 3 would be good.  We're currently running into some issues
> at boot with s390 and riscv, but I'd like to at least get build
> coverage for now. 0day bot it not doing boot tests, right?
the boot we are doing is limited to x86 now, it would not cover like
riscv.

> 
> The next thing I'd like to do is more than just substitute Clang, but
> all of binutils with the llvm equivalents.  For example, GNU binutils
> has `readelf`, llvm has `llvm-readelf`, and you can use the llvm
Got it, this is something we will look into. Considering the computing
resource, if we switch to READELF=llvm-readelf, we will not cover binutils
readelf, is this ok?

> version during a kernel build with `make READELF=llvm-readelf`.  In
> particular, testing llvm's linker LLD is critical to us (and is a good
> first step).  It gets unwieldy to specify all of these at the command
> line, so I'm working on simplifying that, you can see a preview/RFC
> patch here: https://groups.google.com/g/clang-built-linux/c/1j6_AfP0CMQ/m/WEEHsL6pGwAJ
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317005327.GB26990%40intel.com.
