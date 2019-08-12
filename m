Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK5HY3VAKGQEJU52JBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD778A348
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 18:28:28 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id j4sf85440886otc.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 09:28:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565627307; cv=pass;
        d=google.com; s=arc-20160816;
        b=PvHw71IAZ828bLDg7FGhSFYqxrgyVDOR2p0LqjKxiudKzGqCTSnad+OmZhR8v20SUa
         NnxUBBxOXfy++euaKnZocKKKd8Fcs+b6C5t6vAH8srPpyp9AxoHUVDLgDkRpZsy/M2uG
         rUXQ8OrMr3oJYXF2xX0WpP6dV6yynxfKjkGsBDTPeHs8YZAX14lF6OV5JS7/x/j7762Z
         P+/yMES/DfWj7Xp4Vp8DuMNfe4gLou6LkvPwjJBypwIIEBKQKkDni0I8G3suAAWe7pSs
         gGLyp70HVds/Ujkknoob72Nhx6DDxUFC0x4wH06redSn9lTeVL4YO0gaFlX/ttTd97Lh
         agjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mivb5+pKg1BSInWFmb6kii1xoVzr1MSviYlYG3OQyG4=;
        b=H5hwKWbOD+2TSAjwmN8/j26e8lPOZ0a1+JR2gBUP0sBxRfpGpeN6mHfwZ0P0pPxnLv
         HfAfd/mKb5oc7ecVJ6Vya+azI3c0Tanv2DF6P9qT2X2GloI3GfPDk2hE6Wxhf5/tBcIA
         St3yUgGNoOvdY3wksihvXNjwzrlABhGMoL2HGFWBWsw3280zCkXFzReQ14xDztlSdXat
         b9My13DCkBfBiwTqhUjSVv+0oPqk83P7ShUaJkpMaMdig4KX6QVpjP8FJ/pYmsg+bmBC
         I1DSG6GgWs89ME0+CSffJTlzJ2l3du54iToWat3A+E17xGd+EroOrt7xIUPkRg6hdb9Z
         c4oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q9YeUqrO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mivb5+pKg1BSInWFmb6kii1xoVzr1MSviYlYG3OQyG4=;
        b=gSnKppLqR2yHFfLefcBnxB2iZYt2grmCj+mry3k3/txvZwHzpl96u4LUCZvIFjJzcZ
         vuou7pKb3akJyzuJd4rh7aOcxaB0DweZcoiXzavArDRxmHFq7A+PlsNohmd5cnZIPQ8s
         aALkyZXBFn85YRBcvYQEzKNoSHPM55NkjOuvEc2EsznGtxCaRinTIdXL3W9mZFFqe2tH
         WAYgSRmXhObynhsRKE6i5alum2mYPaPE8LvXAzCWoPmL6VXen7UsClhkAOhYg6rLlWnV
         k32J9e5kdtBcnpaL0s0LO+q/wCQw/39y5GxiPacm+TSdyXSkMP90omDvLdZJQW+oNRQG
         knmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mivb5+pKg1BSInWFmb6kii1xoVzr1MSviYlYG3OQyG4=;
        b=HtSZ6RfrPS0EK6yQMk/rrv3rEN0vwMP6oHJP5rNGU8PSJmbc5zbY/cpPpgh3cvU2UQ
         ox759hksYGHZq8CPfD2A3sS5snbetNNEaixT1aLKfqAkw1m5W75dSrqSqlVOlvOfQawI
         4ibYQyKB1pDBpxxN9x3eZsqn2sU8FD7gJni+zsyZZk9z7/Kn2LW5r8V7TST8PxqvMU7i
         QpX8/wLH56US2aTzBfIadDQQFR4+Fumi7LeYQf+ImATGq8SJvSPGXkFZqkI5y+Dsmp+T
         h0bq34bEdEsYsWMyheTmUwsYsR2q72gXlL2fXKp0xu2i1FnoT8HxJsEJOO6djVKkuMBA
         3JZg==
X-Gm-Message-State: APjAAAWxxT7+0jEyXeXtsfSiDDQSs8xINh8KZ+Lsd1Ti4I0JJqTgw0TY
	AlmtaF+855CtX9U/QaobPRI=
X-Google-Smtp-Source: APXvYqzJpM8RkIOzzIKW0VlPDNgNtm8PG2YG1NTthpVjXmGwycYtJ+JZ7SRG4moDU7R44czJyx5q5g==
X-Received: by 2002:a9d:590d:: with SMTP id t13mr20498605oth.281.1565627307538;
        Mon, 12 Aug 2019 09:28:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:187:: with SMTP id e7ls750930ote.0.gmail; Mon, 12 Aug
 2019 09:28:27 -0700 (PDT)
X-Received: by 2002:a9d:7383:: with SMTP id j3mr19483368otk.74.1565627307306;
        Mon, 12 Aug 2019 09:28:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565627307; cv=none;
        d=google.com; s=arc-20160816;
        b=EAS2TYFvkL5+tTWWqL46eWVb4qq0Nh3iHAwHH2CLU8No9BdiEaNTt5OrcUUeSVhxAn
         4Hp2+rQQsoadGkJ+gJMBzl/Gu9pNB/ePpEYSUcAUx+sU2/blQTf5Tpb02T88mUGjusCa
         2McBJb6MPDGrXJTBitv5PRgp8/mlyEHU2O9mCylgqyAQpGWt64CQADYHp/v8/OYISRvX
         zCOMf8nrPKdk1jwmsvDhRHdGMmrxM+WFHMqMcAXLBw1TtkVRs2EK44CPzdXaral5dpnB
         9GAePCTNV44O/NqqjNA3L200KaZjSS953clSzcjvmVnnja4PCKiu6UATdbRHZ/FN8JpK
         yPhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nqNpCGFtDsa8a+HaBObToOYnGgLCkK9gOXb9jSunYpg=;
        b=puF36v2V+jIguhlBjhbCdsKMQdpBGvZNFCyhSylC5AOQQ3acw/wCP2I/T14q5I0czo
         4nx+nMoCtW9ryHkIkSvypRYolWrzhFLAe3/zCBLIetYv1DwGuGivT/t+W9/6wrELhv3c
         svxlGVp3FuLr90r+w0h6nsOUVq9+gptYILRycV4903LvJ6scApdC5/6QbGh7AhS9srzc
         2CFeE3OcY/0pdj8zmpRkEB4tP0+CUvVy1lbBvjq9UhfsZE55W2i8pKWj+k25ARDxrAg+
         GKxal3C0/dBK0VRj3axIcv5k6+2AaYz3rI1HgkaxgGx2dN9JGaBK3/w+zG2Yc5uwC8Mr
         PbVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q9YeUqrO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id q3si3514685ota.4.2019.08.12.09.28.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 09:28:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id r26so13793589pgl.10
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 09:28:27 -0700 (PDT)
X-Received: by 2002:a63:f94c:: with SMTP id q12mr30500912pgk.10.1565627306188;
 Mon, 12 Aug 2019 09:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
 <20190811020442.GA22736@archlinux-threadripper> <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
In-Reply-To: <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 09:28:15 -0700
Message-ID: <CAKwvOdmAj34xDcMUn7Fu_aXdtD-7xHjHuU20qY=rFcr_Kz7gpg@mail.gmail.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
To: Joe Perches <joe@perches.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q9YeUqrO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sat, Aug 10, 2019 at 8:06 PM Joe Perches <joe@perches.com> wrote:
>
> On Sat, 2019-08-10 at 19:04 -0700, Nathan Chancellor wrote:
> > On a tangential note, how are you planning on doing the fallthrough
> > comment to attribute conversion? The reason I ask is clang does not
> > support the comment annotations, meaning that when Nathan Huckleberry's
> > patch is applied to clang (which has been accepted [1]), we are going
> > to get slammed by the warnings. I just ran an x86 defconfig build at
> > 296d05cb0d3c with his patch applied and I see 27673 instances of this
> > warning... (mostly coming from some header files so nothing crazy but it
> > will be super noisy).
> >
> > If you have something to share like a script or patch, I'd be happy to
> > test it locally.
> >
> > [1]: https://reviews.llvm.org/D64838
>
> Something like this patch:
>
> https://lore.kernel.org/patchwork/patch/1108577/
>
> Maybe use:
>
> #define fallthrough [[fallthrough]]

Isn't [[fallthrough]] the C++ style attribute?  **eek** Seems to be a
waste for Clang to implement __attribute__((fallthrough)) just as we
switch the kernel to not use it.  Also, I'd recommend making the
preprocessor define all caps to help folks recognize it's a
preprocessor define.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmAj34xDcMUn7Fu_aXdtD-7xHjHuU20qY%3DrFcr_Kz7gpg%40mail.gmail.com.
