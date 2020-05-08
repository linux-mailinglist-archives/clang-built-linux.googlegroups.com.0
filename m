Return-Path: <clang-built-linux+bncBC25XUMBOQIP76GS6UCRUBEHTBMTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1851CA063
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 03:57:20 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id c26sf340282ioa.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 18:57:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588903039; cv=pass;
        d=google.com; s=arc-20160816;
        b=DzTs0VQ9MZTvZZxtXkk6Pubu6HXgIKUAKLAIL4r7USz/UwilN+BZol2XQkiSDJD8B0
         62dEJ6r85IidDHGmJ+DXhLK6KTSalZJiX9qeKpFnCxPXvOKkIfLkJqRwZ52HeeL92HGj
         mBXT1m8fd84ElJpdo4opBPXsmTyqkEgf6eaiYC+DndvNNo5CysFnJrckNRzSdm0FGBot
         fr9G86N5bhAOk9OWFlIA6VdY2NLtp0w9z48ZLAKz/57+bbWr5cGM35Pl7hboeLQzGoCN
         vjr/gAtIJxQKADqFT+H2DzBFS6oVx7M9aDZAOYsrkOTw6anTSrKhd95R2V7zLVLmjuv1
         QptQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=lWpbSGYQ5W/QP1/ciEuaMR2WMhAW011+V6TTGWXeW0A=;
        b=p1HUJxgdsdEk29U5XplyEHuRmvsqYuSrLfDLNVx9LKpIE9gFLLQ8IGdOyOqZlETTYn
         U16q4IXmYBwdu6/1DC1ie+GTmwrtQvZZcFyJ3DW3NqK8xiadLNo6AVLKgitYYvw3o9IU
         zQ99l/hRK7qu+1MIHHCLNSgIFdYFI3KAQNM4iBKB0ESd7o7sUSBAu34xRCwGouKJZmy4
         zcZIfhNv/TuhW7mLJMpIh+KtRSD0qb7eYYIr3gdjiTcyKfiy4SUc3PwytVVPP2F3OLNj
         p22p912QZSMg9ec1+9tNo1ePtoKqvbM9ZdvrRofm6oXNK/2JNgjEQTmWjUr+HdKqdGP6
         fk9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HxLwCwC8;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lWpbSGYQ5W/QP1/ciEuaMR2WMhAW011+V6TTGWXeW0A=;
        b=AOgJozWtevvkK36FLVAe6Fn7++SOAfdVtrF8zz+K/Bf3NKVQVLX9+QzTyMjAd8xCG8
         tD49psFeqeiA2Nj0tKZMBzZ0IkNmIQxgepZyaixTKqhGBdOOuGfagfKRF6nxxuDfZuF+
         hTc5E7yvGKQ6s+Gp/+J/SBXewCQ4Rxkl+XCaOkz75iW5dvoj+qh2vzLfT9xFpGLqUDxP
         5xs09iAO9ccLfBBRgn9r/G2KM8NaBj6f2H1YyNjVTMnEALBUGTSe37YWVsbSc6Iqe2hI
         IIMSX5MhK5IkMFa+M9pANMtPCBdpamtYhTpouzSSTqYCEop2Q9qvjG4E1qzd6j6WwzMj
         kyow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lWpbSGYQ5W/QP1/ciEuaMR2WMhAW011+V6TTGWXeW0A=;
        b=sZag/joHuAlm5af2dSfvjx9iD7zLP+dR0RXf17GlAupnagaDm+FleIKAyXCYxHAYNN
         6B7iczcLvDicdc/AmZEiQDiFa7x9t+oJnItfN3fI2qnGVv/tZYujehY0QcvomzYgzHhZ
         pgsCdgNGoGPsrTnY8BgXLpYtQa67cAJqi/wz9ha+Yjz/DJAnOostyL+ZutbWhAT/49va
         jXAdoXbD+RzY+ggGM9zT7wPUGNlLHbSsNFBGEuLWibltTSVEH5yXJZ7vTbjHuFod+nDH
         DaukAqWyM4g/Nz5RwQ9/rXMC1RCu+Wp2TvGFwGRkX6UxtNdGPlcaxUVLJ1LtvC61NwTQ
         vFUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lWpbSGYQ5W/QP1/ciEuaMR2WMhAW011+V6TTGWXeW0A=;
        b=ejegACDGb0NkIaj8TjNAVBD41Odu2/qBRAdfZftQfkf9KNbeikqpGyhZbd8DVBVW+d
         VMJiuRhp+8X7CkRQHww+iaRteppd82yg3vlBH2CLaxXTKlZNeKWVJ/fX+CyeIJMXMlaO
         5FAohDVe34S0iz89Yt7XBIXB0a3/O/3TNfXr5myRljGD/q2L/7YGMyCFx78uJ//ttnis
         v6ZAEQCaEuWJevkvZO9hTHDckQRn7+gmFnArX0rrolocNST5SLa3hy8y/yqIlpiHXO92
         /CkZftGJiL8FrmE7chWEIEYw1dTotj+jKN81oS41wG3kAJMY/xxqT6xezHWexf/I9XEn
         2zIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuahWDPhILTxbk+p8fPkU2immXZYDRV0tW5SFZ5aqptgen6dgmB4
	lm5VBJuw+fkXo6rijqWX5LI=
X-Google-Smtp-Source: APiQypIvHFbLzamwG1AkHvCtJTWr8Qj4wOXTgq1lDOD4BcHdQHmKDl8mODk6Chxq+lqeZhd/TjdzKA==
X-Received: by 2002:a6b:3bcb:: with SMTP id i194mr336372ioa.120.1588903039574;
        Thu, 07 May 2020 18:57:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b60c:: with SMTP id s12ls42390ili.5.gmail; Thu, 07 May
 2020 18:57:19 -0700 (PDT)
X-Received: by 2002:a92:7e86:: with SMTP id q6mr268742ill.9.1588903039210;
        Thu, 07 May 2020 18:57:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588903039; cv=none;
        d=google.com; s=arc-20160816;
        b=Fuo/kW17KIEMnB5R4DdiQtEKu8MUDsPHhTIFLE+oNXpWJ/0+x9yqxM0PfxfZdWpokX
         Oey0/SYRTmGD2DaMady7OA+eW5kIjloBZ0Dc4ZwRuVVU988BA0wjVAOH6LQGhox1BoDb
         Gfq7Z/VJozZ53k4u2qBaEImoJakjKrSW+Ve2FRdVhzAIS3PcW/RAf+xSiogXr2CuAc6d
         94r5ty09fJUla22tcYR88ae4U0cB22xBpOEA+8FKUCcpblYdRLeTs8sfNuSc2co3ywSA
         nzUT3jk5gqvPC9Lv17wXBfzuds88yuyJCglKyEbGOsSNS/mkezqAmAJvOFqOBTgY872u
         28jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+69UJCHoe33EYwKtcLPJBKj4jo21jYdcKYJIlnvd2X8=;
        b=tDFEu7x3AWV1gXDAWQRs4TLaYX7KD2v7go5XR/4k5S7IkoDPYgKfQI/bc7IZT1NoF8
         Hv6Zccr8ch1d5l5JrJuhwkWhDKnYnsE0C4ga6yOrzPXdmdWvGrtPiB3WG7pZaRwrdQch
         K+SED6DmZOD7UQjBLqdoqHfz5P2qlq4w9pBaAygVmU0b7HhVo0Z/+7ILwduEVCiy+jqy
         UHjQHn3k7oGKrMUQi8/e4v4fP7n2Gn7C5zZrBgy0CbBzWuct++MM3i9aIK7ftAUB3lmm
         j+dwqkHJfy3zSEI54OefwWH5WTVYbc+d7mwa40NLcZmh0ZbAXd6e4lGdKXElHeruzoMI
         zxRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HxLwCwC8;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id g5si4721ioq.3.2020.05.07.18.57.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 18:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id c16so3167816ilr.3
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 18:57:19 -0700 (PDT)
X-Received: by 2002:a05:6e02:d0c:: with SMTP id g12mr245188ilj.27.1588903038948;
 Thu, 07 May 2020 18:57:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com> <20200507113422.GA3762@hirez.programming.kicks-ass.net>
 <CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g@mail.gmail.com>
 <CAKwvOd=a3MR7osKBpbq=d41ieo7G9FtOp5Kok5por1P5ZS9s4g@mail.gmail.com> <CAKwvOd=Ogbp0oVgmF2B9cePjyWnvLLFRSp2EnaonA-ZFN3K7Dg@mail.gmail.com>
In-Reply-To: <CAKwvOd=Ogbp0oVgmF2B9cePjyWnvLLFRSp2EnaonA-ZFN3K7Dg@mail.gmail.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Thu, 7 May 2020 21:57:07 -0400
Message-ID: <CAMzpN2gu4stkRKTsMTVxyzckO3SMhfA+dmCnSu6-aMg5QAA_JQ@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sedat Dilek <sedat.dilek@gmail.com>, stable <stable@vger.kernel.org>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Daniel Axtens <dja@axtens.net>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HxLwCwC8;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::141 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, May 7, 2020 at 6:29 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Thu, May 7, 2020 at 12:19 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Thu, May 7, 2020 at 7:00 AM Brian Gerst <brgerst@gmail.com> wrote:
> > >
> > > This change will make sparse happy and allow these cleanups:
> > > #define CONST_MASK(nr)                 ((u8)1 << ((nr) & 7))
> >
> > yep, this is more elegant, IMO.  Will send a v3 later with this
> > change.  Looking at the uses of CONST_MASK, I noticed
> > arch_change_bit() currently has the (u8) cast from commit
> > 838e8bb71dc0c ("x86: Implement change_bit with immediate operand as
> > "lock xorb""), so that instance can get cleaned up with the above
> > suggestion.
>
> Oh, we need the cast to be the final operation.  The binary AND and
> XOR in 2 of the 3 uses of CONST_MASK implicitly promote the operands
> of the binary operand to int, so the type of the evaluated
> subexpression is int.
> https://wiki.sei.cmu.edu/confluence/display/c/EXP14-C.+Beware+of+integer+promotion+when+performing+bitwise+operations+on+integer+types+smaller+than+int
> So I think this version (v2) is most precise fix, and would be better
> than defining more macros or (worse) using metaprogramming.

One last suggestion.  Add the "b" modifier to the mask operand: "orb
%b1, %0".  That forces the compiler to use the 8-bit register name
instead of trying to deduce the width from the input.

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2gu4stkRKTsMTVxyzckO3SMhfA%2BdmCnSu6-aMg5QAA_JQ%40mail.gmail.com.
