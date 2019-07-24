Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBNWL4HUQKGQENEPDPBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B8F73101
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 16:05:44 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id l186sf20440659vke.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 07:05:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563977143; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+kxqVTUXFYGmkvg0U7I7jo8GKOoPYRHuS6Hsbh0W/tvBk6eDCjWsGgsXks0Vx1PQz
         9afJgRmIilbk5+QUmzhL981Wa8ZD5PEMnfkeJ3cwCqfQJ8J6lfVIVuvwddgEx33aZnyx
         T/HVLwAJAPjOANwFing/xMxORAaCz9Zc/bo7WWnSl83gRclP/CvsTOXrJ2zJLgnThlLh
         dGv2/7dZ/he9oTHsClyJPnC1o3KGYjN43rWlugDFk9SUvjht+LR5a8UqKFodShVD8FNF
         RXCtPSvDIDZQ+gJxZLD1ZrUmriw28RpeCsiKb/JkjsGSqYP/LMbXRM+ZmthnN/0oPeuf
         IWWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=z89KmqlW1KA540gkN7zLaYQJxDv7ALhcu4qOqQ9OZ6w=;
        b=ChzBgofauogfbnZWkIrwrhZT2MVo5pSkdvAmAwl6rxv4fNKSCbfnRExAyyRs8G4qw5
         gcIatUyG3lwL7JT4++sOoGPbNQhxfgoqzgrq6bJyoz/GJXj+AYtjmTXFa1Ac2SI5MWRv
         miveyniWpdCBU60tu6+j/el/d2vqgnJgoIQs12R2zNoohVUiJ+X+TvGmZAGqF0tT7EMD
         Pc+sj8Viu8kd24zRmqDs7d5/2xR8lq0A5OPdlzB+BvFhrFLx2+yOFEpU3wK88pR29Lxv
         chX+4JWRFYaNREIlClPCp9HFHLuD9dwyWof+cS42B6UkrVCe+70lBqfZXvQOCEEnLBUf
         d4Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z89KmqlW1KA540gkN7zLaYQJxDv7ALhcu4qOqQ9OZ6w=;
        b=d9JE1pz6eGN+woHlGWXBCHsi2amDeqNNwTswwNYso/7VgrTQEKYSxV2nEvmfZGSZzx
         3p6Y5d7EgHRD6c0AwvQQAhY9oah2OW6rnXYBmzJjGqYQWd8i5lrmZdinepD76R2wJC3L
         77EF9bIPgZzXQ7HI++EHvT+qiYHoV71m42WS53GBOdsut4Fc5NETBwyrnTwxaazt1o48
         i1JG0Ql4vMhul6Ct2jkDA2D3SvdalZ4vPhOfP4UkDL8T6zSvYT17l7LALQ0ufXGpUhci
         P9kEL7hrBvdmPn2ahgPcgHM3WMRd+cWh3FGED4eMKU0arsxK5NFn3g2nNYI3JNg1vfGD
         Kj6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z89KmqlW1KA540gkN7zLaYQJxDv7ALhcu4qOqQ9OZ6w=;
        b=lZnQy6BoxcA6d9FTpblcrAWSzMW/QqmHANKwz8jAfDt7Xx2Nfonwjsk/hBPL7vfERm
         vCgHEQ+FWwLl51E5fizgr3/Ca7Gg/eF7lEUBNN045LuY5d0/Uz6/+5AcjbqyLJSZiI8z
         /YRBiAo4+P4GywS0Njlrzk6sJfCYzFaT616zjZ3sbcNa7L0yrJ2jIhhlwdu03sMXmBu+
         YIvSP6/nr2Y9e05SSRXeRIFUxgNj8sbjgagf9BJ4Qp/FyZaUnHaM64jwsz5CuY1ir0SZ
         EoIQEbO0Zt3x0uRggIcn4AHeBCYFzzYYnM5Ez8ZMaBZCxIXZS4JyIsVRB7TEODV/iRuN
         OcYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWX7QQJIKSvNWzM3i+9/VZrBJl8mmaU13ucDCcXFbU+IJfSHNa0
	GtNvS6QsUXug3ZWQqksf1oo=
X-Google-Smtp-Source: APXvYqzEjP0T9Qs7az3B3HYGtXqwbvxQOLOT+iWTBX95L9MyiwxphfpNP0a6cr+hSz5cRR1sf3iL7Q==
X-Received: by 2002:ab0:2556:: with SMTP id l22mr41279752uan.46.1563977143015;
        Wed, 24 Jul 2019 07:05:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3ca:: with SMTP id n10ls5971696vsq.4.gmail; Wed, 24
 Jul 2019 07:05:42 -0700 (PDT)
X-Received: by 2002:a67:ea49:: with SMTP id r9mr31665758vso.223.1563977142731;
        Wed, 24 Jul 2019 07:05:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563977142; cv=none;
        d=google.com; s=arc-20160816;
        b=YXl4AQAuoafkKRDfnYj6UZcyXsXx5Rp9OrXS23IpSrHoghmTs+0KYoePnoPLV0PDo0
         5dyHMi7cz0PKivPE1vX+7Hbzj1t6+d47a2vQMQ7tHpaKJwr5SWVNLdgs8qUgRdqrPje4
         olxzw87hfMXMH1WKcOWDnLBMDa5MX8yzvuJ/Y/lRi8KWTgpdNWFCYxuU4w4KWnVriD/m
         GKVSNvzrDoFab0Huy+IQFejXqOWrAOe5JJ3xxsnIuExLuN4p0B0uVTBMLtjDUpDW5BMO
         qPCaS+qm0qQ8LYaV3/7lGwARgsVufT/+5kysiAmcnNecF+BXptyXwFyjREUqhLJYntQ6
         gmvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=VSU8LRMd4z+Mjm2rFL+HkbsJP1JxBHWskA2dkwiFRdg=;
        b=dRN2tOZkuIlg8CKvt1WmaIloijz6Q32J6yvkoOZ5hmMu9VQ0EeIV4KSMDWAwG4XMlh
         GvdpWwXpHQqJ72pVB/ipeyrbpbqnDJqu3B3RYmu/VQFNbCAJvF1KLaDLRTgRCOnUMudT
         HFnRXDteJ7NrPRW/n7ZHBYZUFZ3OmEvIRYbFcU/grVdzFS1XqwktmM+gM7mx/wDBOuUT
         s0j220PGe5Qt2homHDAaNssUIHc8/X53Xe75JlMNurLkHFbfZy0OWniFRprZ1twKAEbe
         QCi7YsK0Ew0d+yt3uiYjYtv1Io3Ppv1Z9/Ma70iQC+hzavj3Wc5vNV6ycFP2deGEzkoG
         OSOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id u189si3217929vkb.2.2019.07.24.07.05.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 07:05:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 9B1A0308FBA6;
	Wed, 24 Jul 2019 14:05:41 +0000 (UTC)
Received: from treble (ovpn-122-90.rdu2.redhat.com [10.10.122.90])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FE6B600C4;
	Wed, 24 Jul 2019 14:05:40 +0000 (UTC)
Date: Wed, 24 Jul 2019 09:05:33 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: x86 - clang / objtool status
Message-ID: <20190724140533.yxwbq4mlqzrviaf5@treble>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble>
 <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
 <20190724125525.kgybu3nnpvwlcz2c@treble>
 <20190724133516.GB31381@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724133516.GB31381@hirez.programming.kicks-ass.net>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Wed, 24 Jul 2019 14:05:41 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Jul 24, 2019 at 03:35:16PM +0200, Peter Zijlstra wrote:
> On Wed, Jul 24, 2019 at 07:55:25AM -0500, Josh Poimboeuf wrote:
> > On Wed, Jul 24, 2019 at 09:47:32AM +0200, Peter Zijlstra wrote:
> > > On Tue, Jul 23, 2019 at 09:43:24PM -0500, Josh Poimboeuf wrote:
> > > > On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> > > > 
> > > > >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable
> > > > 
> > > > Looking at this one, I think I agree with objtool.
> > > > 
> > > > PeterZ, Linus, I know y'all discussed this code a few months ago.
> > > > 
> > > > __copy_from_user() already does a CLAC in its error path.  So isn't the
> > > > user_access_end() redundant for the __copy_from_user() error path?
> > > 
> > > Hmm, is this a result of your c705cecc8431 ("objtool: Track original function across branches") ?
> > > 
> > > I'm thinking it might've 'overlooked' the CLAC in the error path before
> > > (because it didn't have a related function) and now it sees it and
> > > worries about it.
> > > 
> > > Then again, I'm not seeing this warning on my GCC builds; so what's
> > > happening?
> > 
> > According to the github issue[1] my patch doesn't fix the warning with
> > Clang.  So questions remain:
> 
> I was thinking your patch resulted in the warning due to the exception
> code gaining a ->func.

I had the same thought.

> But then that doesn't make sense either, because all that lives in
> copy_user_64.S which is a completely different translation unit.

Hm?  __copy_from_user() uses raw_copy_from_user() to do the STAC/CLAC in
a header file for the __builtin_constant_p() case.

> > a) what is objtool actually warning about?
> 
> CLAC with AC already clear. Either we do double CLAC at the end, or we
> do CLAC without having done STAC first.
> 
> The issue isn't BAD(tm), as AC clear is the safe state, but it typically
> indicates confused code flow.

But as I said my patch didn't fix the Clang warning.  Or is there
another redundant UACCESS disable you know about?

> > b) why doesn't objtool detect the case I found?
> 
> With GCC you mean? Yes, that is really really weird.

With both compilers...

> Let me go stare at objdump output for this file (which doesn't build
> with:
> 
>    make O=defconfig-build/ drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o
> )

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724140533.yxwbq4mlqzrviaf5%40treble.
