Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBCE36KEAMGQEF3LCXKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F173EF972
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:33:13 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id b2-20020a0cc9820000b0290352b2c7d7e1sf1345689qvk.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 21:33:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629261192; cv=pass;
        d=google.com; s=arc-20160816;
        b=ChQMgiUtald+B3Lzm3O56hkxrF6LGxn7cPB16/5wMXgGZdmbzpFFP6nLpJsAiF4D7j
         b03KgI6R1/eKjZtCePDei+pIg16DkPr51y8MHX6Is6ww0xpacJAKGS77giO6lLZkKCT1
         Ii2IrC8006Hdo/ftGp+M6pOPsC14vWiNbJZoA8hoLxtrFo3C0DtYsMuS1o5l+amGGqk3
         4ViAmWPwev5EAHrufz3ac6BGyQ9O1xHJ4Xn/T1UBC8xPu42YOwppkH5zUDxxmQD0M5sd
         gzZaxl1bvWtbbNp9OfX8aH73fhaPMN0Me+FqLtKvM6Woe1P6wLYc48lxpsO4ACauVgQO
         dvqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0PXQPXYI1RlBsKbPGHEZ05iIXzt4yYjAc47oOqXzsPU=;
        b=IhieCNCi7yOY5eT6k6VyghF+wB14yLQtXKJ2VHiQ29EbwZXCed+bdnZ9xKIuGT2r7o
         B4hZK47zTYu7gFCuWFmdizHZ0ViKrpPuzMrd0W3Op7EsQ1RhipvXPEMJpBjoblo3sZdD
         sk96QPT0x87CHEnQejnjUZCDnlu83wLGPeLLezsB9Gg+GE2x7etkenT7ado48cSaQsIp
         lEicrI2rTLMLcPADu/4+/W9Jen/ClMiifa5hpAgS4uZ4B+8x4TYzJc8zqcJg8BBNTBZY
         xc8Vccwhhx8u31QtMOVx38E89iyiwrdfbhOpaOv2KPFPsbaoHfnVvzmz5C3HnRyeQMp1
         pdTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0PXQPXYI1RlBsKbPGHEZ05iIXzt4yYjAc47oOqXzsPU=;
        b=tB41fMHNgOpJNZMgyqcuSVqqp8MfQUHz6HvGXzPcFjW2Vmz4ZVBFBsaWb9nd4VUpNe
         WevfPVXItlDBFgYJhVcAdamN/cFp4UkyQHdIy8VkMCpvtDUgLQzouqS35GmrB2K6vZti
         gZTFdMDRMpiCRU2sa/TmXiYcJx/ClywFBsePWxb+n69I5gv33FrIEVcOVlkiC8H5PzJF
         GRsz98SXLY4yvtGoRa+LjJ7Bwwcbs2KnLwvgtZNv7XDx3oyAORWe9xSOp9AAVnKox4h3
         7Bq/9rqBY0rQa5brcO4hAu3yYB+TxgSWLYQyjo3dxm1BLjOjQQr+IAYjQ6pHql7etpu0
         BDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0PXQPXYI1RlBsKbPGHEZ05iIXzt4yYjAc47oOqXzsPU=;
        b=hlBXEsKKII9yt5HShDajLo6f5CUszbykCdELBytdbygKPuhv5OOebjnoiLh7/tPnlY
         8fyX7zAiaGQzxCrJ+wK9cFpZWH3b8IvkM/KUEtK4noW3yRHz8h5uwrVwiYQQB097f3TX
         CUyXS2rPjFvH/o3XhMogUdE6ieriDBJi+Lk6zCcMZJlRxwe66FYMGQAO2IT07oGYZKPa
         NobAGmYJbMIDC6nSf7MCmVa8B3dDdRr4c8WWsCglkw4GvJSXzjWJ2I3XcWOZ4g9B9vO3
         XfsdD8U1gC9+gO1lJpERk6bi7qQroIqEf09HaNRmaj52ev/cYjB4bnWVcj5NfJmtlAfP
         pIsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Y9c8fcIBj602ehg+K9+QKEqGAa/QcKIrhj8WVUng1ec8vW3NV
	sCqktHi6TC0sHrG2af2m9OA=
X-Google-Smtp-Source: ABdhPJyr1ceSC0k9VZuLIracJhwIfe1I6IeSoqjCh8rwVZSQjzyNQqAf19egnQbHf1lHmVBwyp7KIw==
X-Received: by 2002:a05:6214:29ee:: with SMTP id jv14mr7079984qvb.5.1629261192167;
        Tue, 17 Aug 2021 21:33:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:88d:: with SMTP id b13ls652962qka.6.gmail; Tue, 17
 Aug 2021 21:33:11 -0700 (PDT)
X-Received: by 2002:a05:620a:9c9:: with SMTP id y9mr7852083qky.207.1629261191701;
        Tue, 17 Aug 2021 21:33:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629261191; cv=none;
        d=google.com; s=arc-20160816;
        b=GxOVpocb4bQ7Fay6LQGgW0kHdtDw05UQNYMo2pksaxdjI/kR/fQREeyltdxnDZj9lE
         uW6mwyZx7aFTalNDOhgrdfiKgXRBV+59PoOFiX6aDDNPV5O4LlgVKKeAIKFAfOA57HDu
         /p0o4UeVB7K2QSwRt9JswV+iRiqialkPnGwK+PKJXMo5VkP7bScSAhaUrMjD8LKyvOlB
         2hpDJA+/HhNi6ygBOHGlGTkvrVM0ivYJFdfpdVQPQ6hHQtqYMAeJFdb91+HAPfTvTxmr
         skzEWIVfu9ZgYfriRKHc1B3O6h5h7/n3CnVEAPO0z8RjbDXhhUSkdRdavkfl8XD/y27X
         D56Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=M/5AwiU0mmr9iU0HzXxkJdPv0CjNvQGqEDwuAvDs6Ps=;
        b=E+h+AtfVSXGitzqLjIqK/B9A8ltOGoCXPGIQr1iM2LbrTD+YUwLsrx+fC/Bp9F5zi+
         eiaTBIP9mMo16F5ekLlZVuwhQ7+0iroSyWhsYR9bAdqoroj/IADU/CWIFsuvXNcFr8+N
         8gp7Ce7eQjcXhYgsU6JIBn2eIYn1OjvPnyPUoWTgDztutBbmaVHMl9TaCzGuRKNFn0On
         CePqIA9kznPFJUZr259vk6I/UAsX9RkkoWlTrvmHBYppSDhzRFM0NV2+qvlltRXD+wJ+
         89p5sV7T5skZoFed0RbY5UtvdMPEG1BjFiWRXW/pQRJT5z59f9qT+zrNVGFnPxq7phye
         tY7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id 10si292325qtr.1.2021.08.17.21.33.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 21:33:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="301832886"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="scan'208";a="301832886"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Aug 2021 21:33:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="scan'208";a="488288748"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by fmsmga008.fm.intel.com with ESMTP; 17 Aug 2021 21:33:06 -0700
Date: Wed, 18 Aug 2021 12:27:20 +0800
From: Philip Li <philip.li@intel.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
Message-ID: <20210818042720.GA1645557@pl-dbox>
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
 <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
 <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
 <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com>
 <202108171602.159EB2C7EA@keescook>
 <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.43 as
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

On Tue, Aug 17, 2021 at 04:23:41PM -0700, Nathan Chancellor wrote:
> On 8/17/2021 4:06 PM, Kees Cook wrote:
> > On Tue, Aug 17, 2021 at 04:33:25PM -0500, Gustavo A. R. Silva wrote:
> > > 
> > > 
> > > On 8/17/21 16:17, Masahiro Yamada wrote:
> > > > On Wed, Aug 18, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > 
> > > > > On 8/17/2021 11:03 AM, Kees Cook wrote:
> > > > > > On Mon, Aug 16, 2021 at 09:55:28PM -0700, Nathan Chancellor wrote:
> > > > > > > If you/Gustavo would prefer, I can upgrade that check to
> > > > > > > 
> > > > > > > ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)
> > > > > > > 
> > > > > > > I was just trying to save a call to the compiler, as that is more expensive
> > > > > > > than a shell test call.
> > > > > > 
> > > > > > I prefer the option test -- this means no changes are needed on the
> > > > > > kernel build side if it ever finds itself backported to earlier versions
> > > > > > (and it handles the current case of "14" not meaning "absolute latest").
> > > > > > 
> > > > > > More specifically, I think you want this (untested):
> > > > > 
> > > > > That should work but since -Wunreachable-code-fallthrough is off by
> > > > > default, I did not really see a reason to include it in KBUILD_CFLAGS. I
> > > > > do not have a strong opinion though, your version is smaller than mine
> > > > > is so we can just go with that. I'll defer to Gustavo on it since he has
> > > > > put in all of the work cleaning up the warnings.
> > > > 
> > > > 
> > > > 
> > > > https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
> > > > 
> > > >     did two things:
> > > > 
> > > >   (1) Change the -Wimplicit-fallthrough behavior so that it fits
> > > >        to our use in the kernel
> > > > 
> > > >   (2) Add a new option -Wunreachable-code-fallthrough
> > > >        that works like the previous -Wimplicit-fallthrough of
> > > >        Clang <= 13.0.0
> > > > 
> > > > 
> > > > They are separate things.
> > > > 
> > > > Checking the presence of -Wunreachable-code-fallthrough
> > > > does not make sense since we are only interested in (1) here.
> > > > 
> > > > So, checking the Clang version is sensible and matches
> > > > the explanation in the comment block.
> > 
> > I thought one of the problems (which is quickly draining away) that
> > needed to be solved here is that some Clang trunk builds (that report
> > as version 14) don't yet have support for -Wunreachable-code-fallthrough
> > since they aren't new enough.
> 
> Philip, how often is the kernel test robot's clang version rebuilt? Would it
> be possible to bump it to latest ToT or at least
> 9ed4a94d6451046a51ef393cd62f00710820a7e8 so that we do not get bit by this
> warning when we go to enable this flag?
Got it, currently we do upgrade in weekly cadence (but it may fall behind sometimes),
and the one we use now is clang version 14.0.0 (https://github.com/llvm/llvm-project 
2c6448cdc2f68f8c28fd0bd9404182b81306e6e6)

We will ugrade to the head of llvm-project master today.

Thanks

> 
> I do not know of any other CI aside from ours that is testing with tip of
> tree clang and ours should already have a clang that includes my patch since
> it comes from apt.llvm.org.
> 
> > > > # Warn about unmarked fall-throughs in switch statement.
> > > > # Clang prior to 14.0.0 warned on unreachable fallthroughs with
> > > > # -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
> > > > # https://bugs.llvm.org/show_bug.cgi?id=51094
> > > > ifeq ($(firstword $(sort $(CONFIG_CLANG_VERSION) 140000)),140000)
> > > > KBUILD_CFLAGS += -Wimplicit-fallthrough
> > > > endif
> 
> Very clever and nifty trick! I have verified that it works for clang 13 and
> 14 along with a theoretical clang 15. Gustavo, feel free to stick a
> 
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Tested-by: Nathan Chancellor <nathan@kernel.org>
> 
> if you so desire.
> 
> > > > 
> > > > The $(sort ...) is alphabetical sort, not numeric sort.
> > > > It works for us because the minimum Clang version is 10.0.1
> > > > (that is CONFIG_CLANG_VERSION is always 6-digit)
> > > > 
> > > > It will break when Clang version 100.0.0 is released.
> > > > 
> > > > But, before that, we will raise the minimum supported clang version,
> > > > and this conditional will go away.
> > 
> > If a version test is preferred, cool; this is a nice trick. :)
> > 
> > > I like this. :)
> > > 
> > > I'm going to make the 0-day robot test it in my tree, first.
> > 
> > Sounds good to me!
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818042720.GA1645557%40pl-dbox.
