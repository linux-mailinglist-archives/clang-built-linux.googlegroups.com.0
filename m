Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBHWKXSBAMGQEHXAYCOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C4733AE40
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 10:13:04 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id w12sf15890506ooo.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 02:13:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615799583; cv=pass;
        d=google.com; s=arc-20160816;
        b=oAjdf4QpQrYIGjs/Nv5NsZ3m+QTDKl93PlR8/a0EUIdyjILXZc8iwKbrwKNqRR4piu
         UOL3Oixsy6nnrwVb1GTDbGhcvCWYqTAB67c7QJhr55attJatsTyWXKFS+zIvGtHjvxZW
         P1VUYor+HcFuueO3wtuH9UFq6utZ6ADfd6O9Y02OfjwhUVCaieQ/+O1yJzL1e5uH/ztN
         QwNivMHgzegDueFukYKTrxYmMbYd0uldRY1Qbz3nGvN7OC83FQebXYwgduwC7cJCx0Cy
         IHRmKTrmn81Wlk0Oe4AspU3LUFdWeJ2sxpJDfIh8/vEzPpXe39+hbhugJIk7qTFzbQWM
         7t6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6U5+4e/eLo4RQAILZ2EUPvlhwt7h5NzzZC0YU43YnQ0=;
        b=d9Q89Uhxt96ldPPnox/BeTETuTPyvRBn7YuzViO2CpvEgG6nFhfSSMQp0V10Mi+Yhc
         hegsGwmu/tASMQHGPe+tnKjDEnUW93lZrkpYF1K0HBOdU18pWbm4r9lFx/XjQ+4M37f4
         FXcbNlzrJgWbrIg8x0imcJKVGg8lJnL1FxnvZbs6iejKQ7iRHnYm91atukWLZA/mqSwl
         SeMtDPj3hh7smxCPj5G7TCrRIGQZ7+Z7G++3uK3PvnlIxY+2MjGHnr/4OSYzJpkCNgqg
         de6HNJ98JKzSMroWHFUBUgIgcWHMkPhBl+lggco+8x7u8flH66NFyDg2+AQ8yU+aDjhK
         i7eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EZ7b9z+x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6U5+4e/eLo4RQAILZ2EUPvlhwt7h5NzzZC0YU43YnQ0=;
        b=e8tVHZHpHU1G/eyNiVFDSO/0W3Pw7gZT+LXBYcHqvlSY5NeXrs/AWqZvmCPI1bivFo
         NbKQvAJ5PxNm8nOIpLjktLMSgtaol7LcedJUXFDn3BeVyP2URfG5oJxAkF3bM/4bqOeu
         y0UWJAjFuU2Jau03w2guh+4vNKwEjnSdcY0SwD7u1KN5yl22MrvAfdA8z7pk1+dVYWZY
         O8b1BwqcnLGfL00bzVa4V8HU8Rd3Bvap/zqT5QcmjN5FI4027qNPJrUAJAoxvbjoqsB+
         oQTLZya/m6xITL8ofTWdxcXUpkaTUUsU/HfP2WQ0K/xUNZQ4CiS7mgSucBtfgrD/QqYI
         WRwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6U5+4e/eLo4RQAILZ2EUPvlhwt7h5NzzZC0YU43YnQ0=;
        b=nikRAdIJtlT127wUdbhNWyG2PjE0Ljq5NSpTDPAF4v35mwFCDL+KaJpsg7zwCB1XCY
         2rfMnieHW1u87zPt88ifiVIo/6VU8wKEL+fcfXoaaLz+/4sMpg3+x+s8D1TFDeCXTSB6
         GUK8k1M2OKCnnPuqnBjC1q+XP1+UFUPZ1l/WCcXRsZx4FXQU3oFAr/4+vqKwk9o0cHew
         NkoAnKhME2HxbuVZt7RBlC4tXl7wD1G0ZyIoV1IeWRzHCHvOXFhfdaQYYT3A6eNpoCZF
         GVzirk6YOJWXOSQPqJHTDZJETGWL5pS7hj0SqfdpmZDoHG8+ucahkM6K4h5pvtEapl2L
         MT1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BTcY2Rhk3J50GxGizOREPJ4d58l2DtH1a59ZWKWwNuSdxwYWh
	HlkN47A/SZEP2gyh+0sQMJs=
X-Google-Smtp-Source: ABdhPJxXQk0pK9k/Xz/Xw1Wra4euELYU4YqEPDhTwbAmFAqOOcoZDhB+pfwOlKYJcWkGTYubP1gblw==
X-Received: by 2002:a9d:6305:: with SMTP id q5mr4363824otk.10.1615799583031;
        Mon, 15 Mar 2021 02:13:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4a0f:: with SMTP id x15ls3861943oia.8.gmail; Mon, 15 Mar
 2021 02:13:02 -0700 (PDT)
X-Received: by 2002:aca:538c:: with SMTP id h134mr17853604oib.174.1615799582670;
        Mon, 15 Mar 2021 02:13:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615799582; cv=none;
        d=google.com; s=arc-20160816;
        b=iCC82RgBUFo/R8uaK10oSP3E+dhVjCcQVueQ+zbZuEWQitTEy9kcq3EZwxALqGndVZ
         IAD0HfgoOxzVtjQme6rSqn+D8k9fMbMm20/nJZCRzUqxf6NEiXJlWK6gGiWygQBKE1eH
         bvYJoPcynQLXogM/JTGdDuRVl+NBvtEXVplDKGMVbEVS23t3XedNvnbFYeoyfxttFlrm
         innryQWfcxczv/a3rtB3OzmmW8lljgBN+UkUNnwQLcv+srrau0y0zUXcHR4dQtMqRVhM
         QJRRRRjE8vxITV2ZxGpxV7wugNbJrBV+/Ve5bVzu3EsvFo9aht+0Q4WRhdX1t8fS61vd
         En6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8ZPHcpkMSR2UREPxyIZ0p/9+hWsuPlS+Sc+370v5Uew=;
        b=L2o1fmsjBwMj+SCr90rrGfiZHScN/A2y9U3fXHohDG4EM4NAswQoqflML2BiTN8fR2
         1sZlvp7x2wDaM/1id6psXoBG2SgCf0xSRp0VY93yKf25dDUAe3F1XWNXW7BcjACaEtHD
         CwKccAIpMOGdQ5GJbsyDxBGB6GU9QPtoK3j0ReeMBpu4JBTgKEmWKkf6Rcq8OejpZHhX
         DM9BT1mkR95BXnIltotTJbOKpQwLTduo8FR9+T+pTJCYS3eK9hrdrH2rYEyePMaCOp3j
         UrT9kFml/xJc93+4/KBwVF1nVvVSMTkrlbAxzEr8RBFd0XMIJ0NdHjXKWfoE/AwO+j7F
         RaIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EZ7b9z+x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f2si603408oob.2.2021.03.15.02.13.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 02:13:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D41D561481;
	Mon, 15 Mar 2021 09:13:00 +0000 (UTC)
Date: Mon, 15 Mar 2021 10:12:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sasha Levin <sashal@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
Message-ID: <YE8k/2WTPFGwMpHk@kroah.com>
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com>
 <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap>
 <YE8kIbyWKSojC1SV@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YE8kIbyWKSojC1SV@kroah.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=EZ7b9z+x;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Mar 15, 2021 at 10:08:49AM +0100, Greg KH wrote:
> On Fri, Mar 12, 2021 at 11:07:39PM -0500, Sasha Levin wrote:
> > On Fri, Mar 12, 2021 at 09:28:56AM -0800, Nick Desaulniers wrote:
> > > My mistake, meant to lop those last two commits off of 4.19.y, they
> > > were the ones I referred to earlier working their way through the ARM
> > > maintainers tree.  Regenerated the series' (rather than edit the patch
> > > files) additionally with --base=auto. Re-attached.
> > 
> > Queued up, thanks!
> 
> This series seems to cause build breakages in a lot of places, so I'm
> going to drop the whole set of them now:
> 	https://lore.kernel.org/r/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net
> and:
> 	https://lore.kernel.org/r/066efc42-0788-8668-2ff5-d431e77068b5@roeck-us.net
> 
> Nick, if you want these merged, can you fix up the errors and resend?
> 
> Perhaps you might want to run these through the tuxbuild tool before
> sending?  You should have access to it...

Oops, wait, they are fine for 5.10.y, just 4.19 and 5.4 are broken, will
go drop those patches only.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YE8k/2WTPFGwMpHk%40kroah.com.
