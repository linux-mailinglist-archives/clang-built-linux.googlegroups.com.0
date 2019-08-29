Return-Path: <clang-built-linux+bncBD37J5WD5QIBBYG2TTVQKGQELV7AN2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id D28ABA0EFB
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 03:41:53 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id u24sf1050049plq.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 18:41:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567042912; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZP3d+FHIt3NICoLiJKwhcThC/MW3ZYK3qL/210IdstTbikqPI2BDK6nFWATgzEc7th
         7NIYfmc6K9ComKPn8+2UY5lBTpJ8UydQGD+arxx0HrPQGJttIOUTczBiGm0jXMIgPjdg
         qfhkdJa0pdFKXuOkLgt8+67YAjeP+0FzxsfDZ5XWknZpj/7KuD1fWjc7pYvicDpgzjb/
         y1NpMDzXn8Fe5h+Cy3bodwoP9U74AY5JFO4wakaKTUeAYqQcS6pYcrWtDqGYpZWM1MQ0
         XFjTzYNjWHNpwvBaOzYtx1gaUfKNlN3yjAnxCYyKcgo/p5EVZ+ZJPF82rT3EsIsEu3oP
         zHXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=U7Vu9Q2XXtqJvYEUn/x8vmbSfsyLIGSrDqe6732oXSI=;
        b=mWclq8JPRGqoxt/90l7MQzLSCRy5ACUD2lyH3h1GlLRdWXvRCabuE2YqOTaPDubaUq
         LDzW/s+hzkCTl/P03J1Uw28saRA68BQySg95juCwb4TsM+C8skUCpsRZj/bLJnLrm7RS
         3phwOK5BhURysJ9Mro+RCFJoNU7VKwAnlPT4rbIddcLf/Qi/6J6OzUWevnsI1s7N0IIf
         5Vxm+rK1x+I2lKgZ2uiWKUk1/uXu+6qFesTOUfGtsfi1+WqoArNU4yiLNjkHqxpgskj0
         e/Cei/BjdmlgfjOrdpRonOcEb20jACcL+r82fdYlxub4X+5AbYCav63pzcHbaExZCmDA
         A6FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rui.zhang@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rui.zhang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U7Vu9Q2XXtqJvYEUn/x8vmbSfsyLIGSrDqe6732oXSI=;
        b=CT1dT/M3hVJ3Ys3mp1isZHzvE//RRTR1kElgpOXasEtNxjBRg1GAPeb+p23QNi+Nsp
         OGswu7ZLB4N/OZFCqYmZPlZ60yFTchWyn88wX6TCMd1Z8A0rV745zqgDbf+MYdM1q5RY
         w3AHzimRyhsYGmDzE6L6D7E4VGBL7mRVYqbF98Ixs6r/GOp7Y5ETapuZea1lX2nRfmCL
         uzCCbhMGba5vluJEu3ukSKeCsrVOmJpFt3MWt7HyBqYoqLZy24jbrjlDzLugCuzhlA/Z
         OXrEGlTyFXBmUIvXyUppLT7gF75yNcYNgMyf6+bX9bAtQq9Yzu5kiTC4YhDrOmf5FRzl
         /mPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U7Vu9Q2XXtqJvYEUn/x8vmbSfsyLIGSrDqe6732oXSI=;
        b=l+osV2MclTFcRYMiYAohDQl4FJ/7S+Asax/Htea4TxopccPlbXZLW9xhGa/mkCzMD6
         LF9/EGKNF5p6urD0OQmb7XHlNCGeiews2frUMk7QbN7YLeLyvXO7PyYWHLIjamrhc3Oz
         IZGKBgNAqbDulAqDFlVyUNCXdx6nVJgYX0RJcsBrXqomxHerPElV0INFeG31nC8hSnP8
         wXwT6XRJxAgMZv3yZKrcqaalx0euwAf0t2r2DbC1hmvbcdFwAa1WD1mY9RRIuA4zaRFD
         iYzK9W4sABGv/RiXarg+tLjjm2HR9d2ugNu5iVbAG27l0blBwZ2jYJIoYlvvRCtZRoz+
         O4xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX4MUSiZ1/r/rT3PGYeWfkYEZj/RcYN0XQnA8umby2ENvCB2X5o
	bVryIhrMNYn+loe3Z8J4uvg=
X-Google-Smtp-Source: APXvYqyoJ9L80YyebKyPLOP6m87vmS6xEPDzl0HxNXMISa7k0fyuzsoMYmHlmY+Asbxr3jzGSJ+8cw==
X-Received: by 2002:a17:902:d911:: with SMTP id c17mr7348892plz.70.1567042912518;
        Wed, 28 Aug 2019 18:41:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cc1:: with SMTP id c184ls305175pfc.4.gmail; Wed, 28 Aug
 2019 18:41:52 -0700 (PDT)
X-Received: by 2002:a62:60c7:: with SMTP id u190mr8342769pfb.54.1567042912226;
        Wed, 28 Aug 2019 18:41:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567042912; cv=none;
        d=google.com; s=arc-20160816;
        b=WW1uXVmfhDhSFpv+vc4ZKVY1ydUmxKApQtya+pYXsbTI9tJ74JmoS2SS4DcA6klMFA
         erK9hrxh4lpNcUE+rf9y0ktk8C4W6QfNVR046H7s6STkFfnLuMJI611GAKi1h2f1xhVm
         deH8tbhdVMDiHgHpnZdAOowxbSJUV02eC3SABsEUBU5yK9tiU+i2ugfKu/imnBVPmTOt
         HnTB3gHFg7bauUk9n4oSdJHyojWSxPWAVC+20byBZ/SETy7RLQ384HLq14Yy7e70jG81
         fM+4BRqVV+cey7Pwj8cHb/KxbuDDtEC5aNHc8lNe8kOXgSSxSdVbUOjHB280h6ADRVdo
         aL0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=0aCMafv3z0O3/md7rWv64rDYMy91x8uRWwOFWIsCY7U=;
        b=WuaW/Mf3uuwc7dUKAemvCREF3hqwrkJFSueizp/eJbGYn81qL6r1ITMN+IMMXwHytn
         MP+s93h1zTzk8UIkDRXsuNmu65jo344oMZVnqynxw3aZNIs7YCVzb+sFkbaVN6rLglgu
         3Y6k/f77thN1AaUFIa4IeSimhG0FqTA3TFP7q9TOvagpWWjWOPKZEGiLK9a1P008lrPh
         pLP8B3S1ZPauLx2I3mcr0TPMJHyXMBJ9ReuNQP+VVTxqBPdPacGExiKKNqwIXzGb+JBb
         4VB7BJVF7pgVw1LZMA/mYA43Y38L0dadgQdimhPG9FtP+ySk9hCNCRNqmcQech9CUMGA
         MhLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rui.zhang@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rui.zhang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id e20si100462pfn.4.2019.08.28.18.41.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 18:41:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of rui.zhang@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Aug 2019 18:41:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; 
   d="scan'208";a="332353236"
Received: from deyangko-mobl.ccr.corp.intel.com ([10.249.168.35])
  by orsmga004.jf.intel.com with ESMTP; 28 Aug 2019 18:41:48 -0700
Message-ID: <186abb640246ea343041ed4b7904ff4c5db44829.camel@intel.com>
Subject: Re: [PATCH] thermal: armada: Fix -Wshift-negative-value
From: Zhang Rui <rui.zhang@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, edubezval@gmail.com, linux-pm@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck@google.com>
Date: Thu, 29 Aug 2019 09:42:01 +0800
In-Reply-To: <CAKwvOd=ej156MVjkVHAVbpWEew08YhCWpM-3BPYoLfeXHPJEMQ@mail.gmail.com>
References: <20190613184923.245935-1-nhuck@google.com>
	 <27428324-129e-ee37-304a-0da2ed3810a0@linaro.org>
	 <CAJkfWY4X-YwuansL1R5w0rQNmE_hVJZKrMBJmOLp9G2DJPkNow@mail.gmail.com>
	 <CAKwvOdkEp=q+2B_iqqyHJLwwUaFH2jnO+Ey8t-hn=x4shTbdoA@mail.gmail.com>
	 <c2b821f2-545a-9839-3de6-d68dfee5b5dc@linaro.org>
	 <20190819102131.41da667b@xps13>
	 <b94af6b2101f436c1bdeec744e164c78ee7c2682.camel@intel.com>
	 <CAKwvOd=ej156MVjkVHAVbpWEew08YhCWpM-3BPYoLfeXHPJEMQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1
Mime-Version: 1.0
X-Original-Sender: rui.zhang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rui.zhang@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=rui.zhang@intel.com;       dmarc=pass (p=NONE
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

On Wed, 2019-08-28 at 11:49 -0700, Nick Desaulniers wrote:
> On Wed, Aug 28, 2019 at 1:53 AM Zhang Rui <rui.zhang@intel.com>
> wrote:
> > 
> > On Mon, 2019-08-19 at 10:21 +0200, Miquel Raynal wrote:
> > > Hello,
> > > 
> > > Daniel Lezcano <daniel.lezcano@linaro.org> wrote on Thu, 15 Aug
> > > 2019
> > > 01:06:21 +0200:
> > > 
> > > > On 15/08/2019 00:12, Nick Desaulniers wrote:
> > > > > On Tue, Aug 13, 2019 at 10:28 AM 'Nathan Huckleberry' via
> > > > > Clang
> > > > > Built
> > > > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > > > 
> > > > > > Following up to see if this patch is going to be accepted.
> > > > > 
> > > > > Miquel is listed as the maintainer of this file in
> > > > > MAINTAINERS.
> > > > > Miquel, can you please pick this up?  Otherwise Zhang,
> > > > > Eduardo,
> > > > > and
> > > > > Daniel are listed as maintainers for drivers/thermal/.
> > > > 
> > > > I'm listed as reviewer, it is up to Zhang or Eduardo to take
> > > > the
> > > > patches.
> > > > 
> > > > 
> > > 
> > > Sorry for the delay, I don't manage a tree for this driver, I'll
> > > let
> > > Zhang or Eduardo take the patch with my
> > > 
> > > Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > 
> > 
> > Patch applied.
> > 
> > thanks,
> > rui
> 
> Thanks Rui, did you push the branch?  I guess I would have expected
> it
> in 
> https://git.kernel.org/pub/scm/linux/kernel/git/rzhang/linux.git/log/?h=next
> ?
> I'm trying to track where this lands in
> https://github.com/ClangBuiltLinux/linux/issues/532.

Not yet. I will push it to kernel.org after I finish my internal build
test.

thanks,
rui
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/186abb640246ea343041ed4b7904ff4c5db44829.camel%40intel.com.
