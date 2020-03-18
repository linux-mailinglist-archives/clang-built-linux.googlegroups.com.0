Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBXH7Y7ZQKGQE4LQGGTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E637189A2D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 12:02:54 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id 191sf753670ilb.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 04:02:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584529372; cv=pass;
        d=google.com; s=arc-20160816;
        b=eaxtI/wi/9BVsBwChKshSx8sabAQCk5T5xXwnoRwCzUeG8A3PCfSPr9HERyGPTS67s
         nd74q6FiyGtX3vWjZNWgMS2YX5lpxMoa76rBkAnIHdxxff+CVFXLZ2Tz/fgS7TdMJ+me
         EzyDQdKI+ovpiG4zsjIEus1U5vX6AhWSa1Ichv64HIhqNGSQ57ZsVr+P641kJ2cK93Nw
         H0uaTmcH9HaP8vd4kmZF1s+WcXYN37bu4A+6y2Gv3KvP0PQkfJ+vLAKi7qW4n7LbT4pX
         9YuyGWQJUoRMsFPzQqSQZ8a0MCGBrsUVpVOGRnHPC2EEdXeFjT9zHH156D5Ipvbch2+v
         fxzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sxanoAMlc2LrbWvnsds6rTp3fr5MnUYGif7B2tBM7oY=;
        b=TzRqxNLbbp8AOvWuaxZge7S+l4L6BJyUPKIb+62OYGqfFIskiNqdHUgNPadljsBSJN
         fLIoSVLhte9gsX1GVtUhBmQvxptwBPK4u0AOKwkfE6svSOyZNr0eEqz8NUjPq9NUkc4J
         JCL/532gFtq08bU4UNqvLkBYQ1SpxgX32s8tf55JzU1Bmz7Fdl3W83+emQlSlJ4kBEkr
         sg4RtOZ/m7G8Utxt+xo1kGj9vcLzADAUT/rwauYvZ1FLRWH0r9djtJ2cJlxLsLxx5zek
         bEVimt+oXfT2jKtCSaviPpTqcuoIAEStAsdOhm8ZLMU6f1N8+BxdU9mvQmXVkSnOIkYr
         +1Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="RQ2F/4dY";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sxanoAMlc2LrbWvnsds6rTp3fr5MnUYGif7B2tBM7oY=;
        b=qeH2XWvFkiWw/+uTEPsAsZ2Il7oW/AvSPOt7xyREoKIpg8O3dlL4wJ4pSmsufLYEa+
         tYJEDIkDhbTNWNdeEK4i2/PZOoacMcGQKZP5oo/p4zw9vkDVMVeaozA8C5I7bjSw8A02
         qhyWqBoJ8Nzstu188ribqoVM/lXllU5Y63w1JKqm55FfD1bMuN2HG4Hs+idDex7v3mJk
         vNgt4gpOnpblui0lhKFLkV9sQo7RLrIg1aqfB5d6FbCKME1YTBp3PoKodZilM27MsKPm
         sJnbkzhOl77zl/xP7oSqA3Yvb8KAU6KWds2/JmhkctFhZoiHpc7YTgEQOt2e/K1GtI66
         HWsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sxanoAMlc2LrbWvnsds6rTp3fr5MnUYGif7B2tBM7oY=;
        b=eZRzUlFY7Tkq6djTKymJesYNQK9LbNG6PfatTTbEIiIMRCSCG7MLFGK+IEVISsKDhb
         HApl6F1TIE/5Im9hnLOiyWKVoDp7vBtKBDc8pNVmxFXX4YaF2okh/puNO/Ar5/O21giD
         hGfVFQbQSJBVtMuvsjY54B6H5N0DZVw2MkNZc9xcggmhKkGK39+RcwqjovC4a75k93y4
         Gt7w0H/e+bRikXelAIXz/NvP2nd7YBAnx75e9RQJ5+rh9PQTRddhUEvJRlM9ouLIC1tw
         U39Hji0ToOxO83LM2uTSzowfX7xGGs2DcbjgNYfupdYKAzzk7USNYC/H/Ogs7jLU/jN8
         8rrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3usyu9j+QHAvSoQvsHj1+/qfxrZJQ6AmB6pJNxdneFdxp4jt1j
	CTNAnIzc7YcVkUiEcQHxHwc=
X-Google-Smtp-Source: ADFU+vtfYrxl88+FkAoyEJz7HX4hwKh/yWsoJR7vf+oSbFBSils4sRbFR18j9ki1sPSfIU1Jlrb2DQ==
X-Received: by 2002:a02:90d0:: with SMTP id c16mr3879454jag.22.1584529372622;
        Wed, 18 Mar 2020 04:02:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3e83:: with SMTP id l125ls1725534ioa.9.gmail; Wed, 18
 Mar 2020 04:02:52 -0700 (PDT)
X-Received: by 2002:a6b:9388:: with SMTP id v130mr3198278iod.58.1584529372246;
        Wed, 18 Mar 2020 04:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584529372; cv=none;
        d=google.com; s=arc-20160816;
        b=rZYhzMEu4l1CVGkgO8A38rtUsP0DfES8LkwC6LNFf8hw8Yx18GF+mAzQRaMgl60Q7R
         UCI2VpuK7QyntFMBzmYly60YkhufBx1a8JW/u2QUZ3WLKA2iAEfCnX4kOKzJThaLx8Fr
         NQ7VqtfFLzxCMoL0jDWiN75NkzxaouGz87DmesdOKEIdKZHIRa882KiA8kG9pV9pAJ0i
         41CyvO5n0nwwsXAXNj/XnxfGo+6UvsdtjMJKmoWfQ7sthb1pQ1m7x5XxmyqUR4uR4E6+
         nurFh/FzMBrxIo3xofsOWdFtgSqVU0xg3G5C5zIaID+DwevpHO6Xu1RO0E5B7QdyDTLs
         Qx4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mwfvDj/eaZ0pv7OSWbFQbRzvMXJOloFIlf7imRJqKpM=;
        b=wPtoFQOStF6QLY/wZt2nKJAhJGS7jstkSM+6gUr6KzUvFFkVqf4zyVFNiLB3AEGGcT
         P+jX1+B4HtCfbfN5Ynj5VcSXj2rrla+xKqfcKP9pwYPq9bSInhabjICuATJ4poNcgYws
         kblK0eLQ+J55mjcJauk8S1XL+uat3Sw+KwazI2LvHj5PI+MxC/T6BS6DH3DorrYmFbXr
         xJpDgfgHRu/JKeOWTSqksJMuVpGx3b7cvZmtQD27QvMKfV4brau23GPhnR8JecjHR4h2
         7vaHNE/XVpeg4RAt65HbXM2llW+XXBILW0O0J1Z9VivSlTsQpvZOv/9THgFLEP1m17nR
         mh0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="RQ2F/4dY";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id v13si393383ilg.4.2020.03.18.04.02.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 04:02:49 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWTG-0001Ri-0i; Wed, 18 Mar 2020 11:02:46 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 8834B30047A;
	Wed, 18 Mar 2020 12:02:43 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 7643A203D72A3; Wed, 18 Mar 2020 12:02:43 +0100 (CET)
Date: Wed, 18 Mar 2020 12:02:43 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>, mbenes@suse.cz,
	brgerst@gmail.com, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v2 19/19] objtool: Detect loading function pointers
 across noinstr
Message-ID: <20200318110243.GE20730@hirez.programming.kicks-ass.net>
References: <20200317170910.983729109@infradead.org>
 <202003180747.qU4yJl06%lkp@intel.com>
 <CAKwvOdmU57K8vRRZd0cfUve2WZXJT0ysEwi+zRTngD3VhLxm3A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmU57K8vRRZd0cfUve2WZXJT0ysEwi+zRTngD3VhLxm3A@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b="RQ2F/4dY";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Mar 17, 2020 at 04:43:47PM -0700, Nick Desaulniers wrote:
> Just needs a `default:` case.  From personal experience, this warning
> helps you track down every switch on an enum when you add a new
> enumeration value.

Except of course if those switch statements have a default clause and
still need updating for the new state.

Anyway, I'll go add the silly line.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318110243.GE20730%40hirez.programming.kicks-ass.net.
