Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6G2SHVQKGQEIZZZGOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 013EB9DA0B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 01:38:33 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id l16sf323944wmg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 16:38:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566862712; cv=pass;
        d=google.com; s=arc-20160816;
        b=dHW+Lcfkk55Lm2ZJ7zqKK9wLskEstiV+QLxkyQyb4vSBeIvKPiNbCSG6z98kd8LaB4
         qC5H0jW7jMtCTHAUvAWThvOSH1E2pi+cCOKUQu2DfJktKva77UNnR5lhTui5JHBcHb9U
         LK/IfMWNpskDTk29wCa7VBBJFrRcvrL5qxXlbqS/+jbLFBeJP0pVEvGg6HnQtl3U/0rM
         k6cegoP3M2JuI/EXulOE65S9dPiXPO/jsRBHmmmL1vwH5dVK0UY4pUYBIpJvpGEPFwUO
         fRmJjKYdLqSbH/pomzcWSepNhbTaYTHuCRHzIhnWAdfM8tx47GRQZK/lclXkQT9/WwWV
         czmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=jtX3Idzt7/hqs3ucsiK55THpsRHBE+WzItCWJam7rz8=;
        b=Gfl7z0sJpvNuaryM9tbYGuBKOgW19Lm9w9f7l+yYRj1zImlqlDC9MWcynv3bJe46W7
         itY7mt+nX0sQdliFWewLy8RwaZjeU12WWa/VswX/Vm9Be1Id95jWNAW28aZaWudYtANm
         4lqG6CCSqFBn7H/m/ntL7sx7sJdio7DUgGSGU6RdDLpy0jaEK5udKGXqAximl9LohspY
         w9ZflRRGQ/zGmYYDNGlOqJssdAioUoYZyenM37aQDf1IGFnvi6UVmVBZTMg3FzamwWTA
         uu8M0Uw61X+bu1Cl+0w/6I60jrAAaEMpkw3l58KezvpZEfdr6vlp1nRqqPx7RwSAhole
         aZEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VjcAQKEn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jtX3Idzt7/hqs3ucsiK55THpsRHBE+WzItCWJam7rz8=;
        b=MNXnrTKCq6DJrNKWPPLuq//Nxl5iKxrc8/iIFhHGTm/LR6AqTYPa9eA08VBBS8OPbK
         lnNnawwyiOARYcLWrQoGnmDz2tFfKmzKyh3F+oyReCd+C36lY/caf8pndXDezPIYf/Zk
         SGKQx9VSaKOAHErBR4+z/UBJVrfX4PY/lZc8BL1dRXSl/InsdGGOKlf75gAccWLtCcpV
         O8RUTawFWmR7EBfchFYtJ0fSpRnCZqkqi3L3DZlnrB1/OAI6q8WVx2z04EKybuGy0D05
         JJsMB4oBXC0Ve+7gF2PgKz9KS4Ih7VLi/a9IwyBAxIKb9CZ4GZfR2BseCeJLHS8AJcBp
         fBGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jtX3Idzt7/hqs3ucsiK55THpsRHBE+WzItCWJam7rz8=;
        b=dVLnd8lTluE3XHPk8VJYzyrJAML/fCsoEW8yI76Qy9P7n3fcIaY+HYDmMIOytwKVxd
         RtnV3eXqqJFiMXv027NG7d1q0yFEcM1zdvbHfINDkhqqD7koh8vcmJIayG4GZ77SddIY
         deOSRmLF67rjEK260qcrCRBRknlHYZP2oSSRH+sAl7bZtISZbWgI26mzHSRxFlUeFsmu
         XJ8IQ1CQosTKbCzLBq6GsUs7yGxl3ljTUA5ziftFKlYcIaTOD9KyJrtLI1vDCxTdo0Px
         CG9VhdBuJ3fhXMsT41QdJ/Q8G2lA1h1Bz5Owfnp3GgkWaV+ORrB//RaN7EYOrrosMt6c
         o0TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jtX3Idzt7/hqs3ucsiK55THpsRHBE+WzItCWJam7rz8=;
        b=BTMV/9uwzrkGs6b7SeP/VtdGpfbaZ/4vkL/d7+gh1dYITXzRj+/AFNFvjLpITZU8gU
         FqxJFRgIFAWkX8+TZLwSbdAnenmDnzp+S1toiTmQISNVh3+UgvTKCUY+LKZTKjHU7a8y
         UzfJI1RoBmWJXwAP6nJ8tf9SrV/CVGN/VyHaoYaXK0tSzadgPXj5zy54zOyXIYzoVQnR
         hKJfZ3c8vvCTqATGCXH3/EwWTkjP6H6ks4X2Qb+lEK9/d4VkhvofHfh/5ksB/UfDA9qw
         oYb+3YuRgEYTKe7W7PZaQKVz7NSdxxRGnLntisqMcP2Kw3Uu/a0gkiisjWy7mrgbpMRu
         Uf9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWfcXqBTUw9SUsJsI+q2xC3vSm90fXql2tueiQz7SxEKveTBrZd
	jNNrZYKvscryhTcWjydouNo=
X-Google-Smtp-Source: APXvYqwSSRgLFdQNjzEZWa76DOJzWMWprCi/7SE+PvHe9nzoJyIP5EASAJ1EX5qJAVwLGge/SuFPcg==
X-Received: by 2002:adf:eac5:: with SMTP id o5mr1079781wrn.140.1566862712688;
        Mon, 26 Aug 2019 16:38:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5411:: with SMTP id i17ls6797701wmb.2.canary-gmail; Mon,
 26 Aug 2019 16:38:32 -0700 (PDT)
X-Received: by 2002:a1c:411:: with SMTP id 17mr25296092wme.34.1566862712244;
        Mon, 26 Aug 2019 16:38:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566862712; cv=none;
        d=google.com; s=arc-20160816;
        b=VtiwxyKWDN+pexbfrpM4tT1jDly7Pmq8dgWsDXgjj9Cf4jClGaZFf1bZiscxVj5onE
         F5CIRgefi9Sv9uwTMMLjNW2dQNx6oKZHX841cPj8f+0w3K5rw4Ib3FcuXBfD0abhHEH+
         sQ4MDTHZek8a+RCqUGQ+Mtg9zoYM+cHNSuQAvQpeLGQMfhBCPmRdUAuR1J2I5T4ADNr1
         nfw7ltgGA+sf36N64n9s4D5zXcW1E5vHfMLVIgBqBTAQJUjBzikPO5+PBrYgsCD51sw+
         OcrB39Bst7QD+eKah8/qTxzdlrHrrFcVgLc1pPw1cqwNgSzzJAHKS6WUgNZqvN+G4r7f
         +uxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aM/+n5EN1EUh4pevfHPaY7oT40AfQ2ygXNAKqa7gxvM=;
        b=zlmszSlnLA/tRtoz3/9AxOIwUNWNojmDczSfameX5p+vFnMszBHPe16XK9Yz97KqYB
         akUfWz42V9hFqeCuvx0HVgaS6rYMPzwiy+kiFd7fC91fA5DDDsYeh1X+W+NO4VEgi6HT
         ylNianYSEWffR5me2GJNDUMSG0ECfLUTZb9ETGNq0sEFv3QGimj28aB9F4Zl7LErVa7s
         dMCCblY7ykPAzDftMoMfYa8RZtGJlu0xXzRWeWVX69rmuSqd3kCBtqMqko1SFUGMaHrQ
         h7520+xkFCaBxaMGgs9DL2QAt/mOpQ1axq6E9isE/orSp538Atmm2xRdScdL0ShX//X0
         xXMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VjcAQKEn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id g7si113585wmk.0.2019.08.26.16.38.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 16:38:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id q12so16865213wrj.12
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 16:38:32 -0700 (PDT)
X-Received: by 2002:adf:fe10:: with SMTP id n16mr25904248wrr.92.1566862711681;
        Mon, 26 Aug 2019 16:38:31 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q24sm1415669wmc.3.2019.08.26.16.38.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 16:38:30 -0700 (PDT)
Date: Mon, 26 Aug 2019 16:38:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Bernard Metzler <BMT@zurich.ibm.com>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] rdma/siw: Use proper enumerated type in map_cqe_status
Message-ID: <20190826233829.GA36284@archlinux-threadripper>
References: <20190710174800.34451-1-natechancellor@gmail.com>
 <OFE93E0F86.E35CE856-ON00258434.002A83CE-00258434.002A83DF@notes.na.collabserv.com>
 <20190711081434.GA86557@archlinux-threadripper>
 <20190711133915.GA25807@ziepe.ca>
 <CAKwvOdnHz3uH4ZM20LGQJ3FYhLQQUYn4Lg0B-YMr7Y1L66TAsA@mail.gmail.com>
 <20190711171808.GF25807@ziepe.ca>
 <20190711173030.GA844@archlinux-threadripper>
 <20190823142427.GD12968@ziepe.ca>
 <20190826153800.GA4752@archlinux-threadripper>
 <20190826154228.GE27349@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190826154228.GE27349@ziepe.ca>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VjcAQKEn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 26, 2019 at 12:42:28PM -0300, Jason Gunthorpe wrote:
> On Mon, Aug 26, 2019 at 08:38:00AM -0700, Nathan Chancellor wrote:
> > On Fri, Aug 23, 2019 at 11:24:27AM -0300, Jason Gunthorpe wrote:
> > > The latest clang-9 packages from apt.llvm.org do seem to build the
> > > kernel, I get one puzzling warning under RDMA:
> > > 
> > > drivers/infiniband/hw/hfi1/platform.o: warning: objtool: tune_serdes()+0x1f4: can't find jump dest instruction at .text+0x118a
> > 
> > Any particular config that I should use to easily reproduce this?
> 
> Sure, attached. With the clang-9 build for Bionic

This is reproducible with the kernel config attached and a tip of tree
build of LLVM.

$ make -j$(nproc) CC=clang O=out clean olddefconfig drivers/infiniband/hw/hfi1/platform.o
...
  CC      drivers/infiniband/hw/hfi1/platform.o
drivers/infiniband/hw/hfi1/platform.o: warning: objtool: tune_serdes()+0x1f4: can't find jump dest instruction at .text+0x117a

I ran creduce on that file and it spits out:

a() {
  char *b = a;
  switch (b[7] & 240 >> 4) {
  case 10 ... 11:
    c();
  case 0 ... 9:
  case 12:
  case 14:
    d();
  case 13:
  case 15:;
  }
}

to simply reproduce the warning. The original preprocessed file +
interestingness test are available here:

https://github.com/nathanchance/creduce-files/tree/4e252c0ca19742c90be1445e6c722a43ae561144/rdma-objtool

Looks like that comes from tune_qsfp, which gets inlined into
tune_serdes but I am far from an objtool expert so I am not
really sure what kind of issues I am looking for. Adding Josh
and Peter for a little more visibility.

Here is the original .o file as well:

https://github.com/nathanchance/creduce-files/raw/4e252c0ca19742c90be1445e6c722a43ae561144/rdma-objtool/platform.o.orig

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190826233829.GA36284%40archlinux-threadripper.
