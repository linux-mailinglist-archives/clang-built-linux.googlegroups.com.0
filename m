Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBO4ZSWEQMGQEZDG3CEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FE63F6A17
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 21:47:17 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id m22-20020a7bca56000000b002e7508f3faesf1887059wml.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 12:47:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629834427; cv=pass;
        d=google.com; s=arc-20160816;
        b=sNSN4srh2BHszYwhoZgt0hal1LneM8+MtBeMCdsYqoLmQodIHznHH2jSGnlJR1Jdtk
         3OVqwQII5mNjUFrZ9qOeLJfEllezxMuucsSvrUkZL0COnrdvChFKP/UTknWcVu6Nqepk
         RE4cuxh3js1if9VanXGISfq6QfUyXrmMUsrxI/GTHcPXMkg4g7igKGvwr2QHhgXzEh26
         MIlahQTq+k5OFw/m4uJzb/WzbUP9i96ujeleJ/yCo0INq7jqUgt+CytP6krhVoiQxyqT
         il/yltxQQ9jw4zXntXSBJcYy0eP/DVaJJteE04NAeokf4b8fFW+BWkoOglTZvxNEQKYd
         J7xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4/uxINQIt+6DDxOcpOc89Zy87SEXuX77pu7MmsWg7bw=;
        b=IpVweCer3TKJEsshnmv+WOTAuy04WXlrGvbb3ELnDDJLOtjFY+iemgYgAuXlluJJBu
         gyrX0e1FZ5auCTxVec36XNj+YXC8E05PunJkIgihuFD+miucZAFkUcbAD2joMSCUA6Tx
         eZwVGqCvy9HmTBjtiFPuMSKG4Q5pP94DFG4rOd9dNStigWVlULeRTnIv4HV+eZ4i64xH
         776SztgSmk9w0lws+J/1oACT6K+10yikuvo43guC6nGr+2qupQoqnHw+4bhnaZljTtY4
         GZo0lSgAAyqY8QG/AEcYSsH612rpIu5es4igHJjz5crdHHfmqCdKFzrSjXFVs4g2nTaG
         O2Sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=GV04Oz1m;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4/uxINQIt+6DDxOcpOc89Zy87SEXuX77pu7MmsWg7bw=;
        b=TS3oU5z4n0sCE1VJFsEawL73qgCCkA5oOz43iC7dlewNO1v4+ZZetlOddu+d3iezlq
         N2wlENKS1qXcEZRUV8Wtvcv2b4N655fC9r6hibP0A29p5oGlti1VlnN2GXX9lJYW/DFP
         icSGIPemjefIGc799k2CaAYZGGs6md+x00VpplibKgslfXd87ychrBFnBOJIqXmpLR0J
         Ga4ZphKP9iv6TnvxgJXe+sUBDbRnsawWluyPULAWK2/qAk7z++hVqj/f074t8lNsfuy1
         Qrao0Q6C0oBuGBZHfGRBlxXpPndZlXQz9HP3aBlFUjNNhANuD6zwAheCTGaVX2syUG2d
         hx4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4/uxINQIt+6DDxOcpOc89Zy87SEXuX77pu7MmsWg7bw=;
        b=pEjH99psb4TiYkTziOEQf44Uba/xk3g0EKJmmyrJdI62PqF96o7ujOj/aL5N7buffr
         zXV0fadXMNSoOM30E312xBRO3jpkQmW4khdCzczpQHW50v7dnd6Yd8bPWRz3ge+Zgtk0
         PylEV28Hxzo4Pzk/IelKGFCmj8eLLO60b+rDCLojyo2qH4DLNG8ogur+ZSIDPjN/PsXK
         RCm91nod4u5/gsAbrdiOp6yqEazixxakk8MlPZO8yKBphYV6AETUSbvIduLnT0dX7ChX
         GpZR3/I53oit6GcaLEo6Wg3LXYscf0bFMJFj6nx2vE8onC2aKk1D7Oco4tvVdBM/K60f
         RYOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Mx8KYnW1iph/xOg5SmxtDTyPDSWHd3MNQUIfJ6AhiyqUUjNBQ
	f7jmpZMCCJSjVAYZSddFE0A=
X-Google-Smtp-Source: ABdhPJxlu2YEifr7856WT9Uar3rFWmIoU3K0R0WCQd+mnXqPdDbRW7Qj490paz+5OMJomf5OXHbHgg==
X-Received: by 2002:adf:f747:: with SMTP id z7mr21439046wrp.194.1629834427450;
        Tue, 24 Aug 2021 12:47:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ef0d:: with SMTP id e13ls79607wro.3.gmail; Tue, 24 Aug
 2021 12:47:06 -0700 (PDT)
X-Received: by 2002:adf:ea0c:: with SMTP id q12mr21031188wrm.392.1629834426595;
        Tue, 24 Aug 2021 12:47:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629834426; cv=none;
        d=google.com; s=arc-20160816;
        b=StOJ/mk0e46f0B7swEJJecYwvIJNHp8Ga6qbOeJ5e0sXeLh7MbtqunOSLPr+Q9p9Jy
         qVP8YdhKrGGiA4o4sH7c56V/HWsDwkneTYv1MPlS02xF4LYSnrVoX6+bgiBWgock8aA4
         47iHXLnxP3MUff1yolYqfC+oZevqR1mf+vNblp64O37yhQpVCq4f6dlquyCCyGM7YEAy
         j/S3vq0fTVKHnSJ5rlRtUjHthQlnWG/BTofTpSPhwxe/hn0AD5sE7AnIiHb4KKmSQcIa
         v8JjiRzBjTDh7odyT1W/BCcM8F2HVm4F+FCI9fXLzvTVh1q9rPMUMMb96QhAGXd7y57v
         p/tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5xmXB2Lw/5xwUTRzhqLNhETYzTNETFh6DtMn8eUe4N4=;
        b=AdBZ9Xa0s+rjxEU/3ZYNvh7fahpk6t6/qQWbpotXc8tw+0nALJ/HgIJkSEMPmfSkBP
         gYZiBMd8Wi9DDTzFftQ7R/RUD8H6hi22zdiQZMFzxJe983sO0se6v1CKKgqjSyVEK7YI
         icmY1Svpkrnf9ih1nB5+61iGB66vhif8FmQI9KRkwTXjaMvmVe/v17Rn4Sq4ml7MpXbv
         d6GwrHFBaiVMyVHQ6wBEX2R3Ty2WmVum1apRx1xhAqgPfzRW41vrZkLr4fWIgyKxiVM3
         75w+GezlHOBeHTd85P5e/CQHWwxa6NAY8C+g+Pom42OvDu2kF37/3no/p01qkfvpiRuz
         21YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=GV04Oz1m;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id o191si198958wme.0.2021.08.24.12.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 12:47:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIcNq-00CgII-Jj; Tue, 24 Aug 2021 19:46:54 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 493BA981198; Tue, 24 Aug 2021 21:46:52 +0200 (CEST)
Date: Tue, 24 Aug 2021 21:46:52 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v2 00/14] x86: Add support for Clang CFI
Message-ID: <20210824194652.GB17784@worktop.programming.kicks-ass.net>
References: <20210823171318.2801096-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=GV04Oz1m;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Aug 23, 2021 at 10:13:04AM -0700, Sami Tolvanen wrote:
> This series adds support for Clang's Control-Flow Integrity (CFI)
> checking to x86_64. With CFI, the compiler injects a runtime
> check before each indirect function call to ensure the target is
> a valid function with the correct static type. This restricts
> possible call targets and makes it more difficult for an attacker
> to exploit bugs that allow the modification of stored function
> pointers. For more details, see:

If I understand this right; tp_stub_func() in kernel/tracepoint.c
violates this (as would much of the HAVE_STATIC_CALL=n code, luckily
that is not a valid x86_64 configuration).

Specifically, we assign &tp_stub_func to tracepoint_func::func, but that
function pointer is only ever indirectly called when cast to the
tracepoint prototype:

  ((void(*)(void *, proto))(it_func))(__data, args);

(see DEFINE_TRACE_FN() in linux/tracepoint.h)

This means the indirect function type and the target function type
mismatch, resulting in that runtime check you added to trigger.

Hitting tp_stub_func() at runtime is exceedingly rare, but possible.

I realize this is strictly UB per C, but realistically any CDECL ABI
requires that any function with arbitrary signature:

  void foo(...)
  {
  }

translates to the exact same code. Specifically on x86-64, the super
impressive:

foo:
	RET

And as such this works just fine. Except now you wrecked it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824194652.GB17784%40worktop.programming.kicks-ass.net.
