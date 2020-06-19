Return-Path: <clang-built-linux+bncBC5JPJ45Q4MRBANWWD3QKGQE7PCGKMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D2C1FFFED
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 03:55:14 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id g72sf5955275qke.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 18:55:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592531713; cv=pass;
        d=google.com; s=arc-20160816;
        b=CQlN1uy+lpO2CiLCb/B5nNR6MOXeUnrUA9MPcDq65pSigbAmLEAdFVLZAlo943Ks0t
         z0LuO8MsgLEQiYBe/KMHZwCXH8QAm7RlTXtVjE/J1RUf7BibW+Bq02HYO6xl/+PBC6Li
         F7bYjOtdz8SOik1hIUXmW5tgm2bcJkhoa9eDARx8jERPJuqwwVabme0wlj4eoUKzLtNX
         T6qyRT4Qu+EhpRSzUialF0w/jroPIBDy/ANc1KAx6/gZqo7AWmIG4pfGAc9NYujEps5r
         Ki7aJ+xIwaM6Nm9N97byFyndiEmkfjLMn9URGScEKzim0d/dDnV6BCCvDf/kOz+d/oOc
         7zrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=44NlysIBEqreV16VbJQfCpaCoy0QuCuvTeyOp53dfVw=;
        b=t68j/nn+PLYo0Nvxefb9GRkuneHv9CiifdXL8S3noFFASSPmthkhAmfF1JvIi7C2Jx
         +ccYMc807V+CZEUCzYGjemDvLLj6ApP79GrbhakG69ciCvy+GAPT4PyvkkKmwy8Pd5Rh
         enX/G7pjxyfcS539vWsnf5GydgxXhHdDczujBSkwd9QA0l8xCY5qLeak+HQSbmWNdLUR
         ZidJ0ZjSsIwylfGxtFCSkDULOIM9SARsyYBronkNBD7U/sjJLrVfK13Q3d0blC/WlaKS
         oD02JfMXJcE0L0WnGoRdqd4dKPktxEhi47auAfURlsfoJdaohk6zJTCHFtY6fYDfmEL8
         Dctg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=YSqcfWE7;
       spf=pass (google.com: domain of miles.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=miles.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=44NlysIBEqreV16VbJQfCpaCoy0QuCuvTeyOp53dfVw=;
        b=oS4SnyyYyOysIQRj6sVsgGafJqDAtyR2shIhNVHTjU2L6T9UANTAyTl/0Whx6c7Wk1
         4Y6G8v3iGTIeomUd9p9Tk+WqKfcaeb98muWCx2ibV9ahO92dFDqUg46eTWolgFWSZAgb
         FrdG3H4C2Pz/DiFdj0hIy6GNdz/+x7a+GKB99XfdOQOoCYND1kZBCEAqu3DOIWlOHu34
         G1ST+r9e5Qa9yb2R8IMlMVR00lLz3IJXxv0C8H5U9zYjq2SO1SIND5qckZENcB5BHqOB
         1SvgH+QKbGODQvnst07N0vDi8XFjWwUn45gZ3UzsrDUSu/BDffRSRJPpeWaWfC5S//1h
         OjCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=44NlysIBEqreV16VbJQfCpaCoy0QuCuvTeyOp53dfVw=;
        b=efWLah4GlW4eX4fBhuRMGjPVIy9MLoGXtbviNhw1tXBfdHcJjGYYEEPr/7nABSfVDo
         8KbyQTJgq91ZZK3grrMNLz2iDcuWk8cOcLBx3/6fiyF15SLvhpoRbYtSOfyZuoWK8HO8
         uPDcEy+RA3TLE93C/cjosetxuk5aqR41Ty2qjTDpsqLGLyNgHRJDNrzW/1h+OhQCzGMM
         yLRnzhElOpLUM8thJ1Wdnpaq6M4LW5HeemVwMdpP1uzYA8AtWCYWdtRP4+9M2rYYwg3o
         X2KeMUwq2jaEMVhrK/lKJ0dO1KPwpqr7BVxBW7RqBqeUAc7SW0efg6FUNN7eFyExavb0
         7D3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531n8zieG8u70BapYUds+EmJz0vK4lvQzPTfAUxU6DmpX5MuT4f5
	D4VTcjH6H6lNvDGX1vAbJVI=
X-Google-Smtp-Source: ABdhPJx36MsEkb28ymTWzQRRTRT6EbNmkGpLwC+dHVYL6/v+MYvqRioqDY9wbsMY1Vt0rQUQX/jnpg==
X-Received: by 2002:a37:a409:: with SMTP id n9mr1287960qke.481.1592531713418;
        Thu, 18 Jun 2020 18:55:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a3cc:: with SMTP id m195ls3675388qke.11.gmail; Thu, 18
 Jun 2020 18:55:13 -0700 (PDT)
X-Received: by 2002:a37:8d4:: with SMTP id 203mr1409441qki.11.1592531713093;
        Thu, 18 Jun 2020 18:55:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592531713; cv=none;
        d=google.com; s=arc-20160816;
        b=Gl2Z4osSXeAAndt14DicQPYsg1D2+mtq99LlTd75HM3ibCnhKc/Meyh4GQ8KxOvad4
         ljcAUgLMp/4jbtncpDp+HFTaPDe6K+EFltJr5gr7+0VSxTegdjy16eeksYqFico+dcfT
         hl0hluCbz+rzvkc8B1Wekuq3gSi6j0F5pYO5U00mVvH7d9xqeioo9iqqnV98mq7pIbNE
         bg547KQw53hLm3LWqh9VLDBiEqnaiM8e9B4ihDM8HKqs21jq5hWA+JKupmru31/uS88h
         D984szLY2/8kpzS4SvTiPHPI4bcJE2Ev4QFALcjbRzS3Li2+y+Gf5P1MS/K0Qu+mZnKK
         o1nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=eSIoLyaJEFkINxafFPsx03C8ForADV0MP2v7hBefnU4=;
        b=mzfm/GBvkPUN2g5ujFw+w5UnpcrAO7CjV2CDjY9gw1mqj7P/Ljokx/FmmEADPUv+3D
         QH4giTdDgrQ8J+6WfZW+0bgd8TZlBNscTrcQjtX3pFpXK/I7uOWCMjAwzGS3pIMadHuK
         rhD0M1naZWDeMIUbND9p9U06Vy40juKkvsMqkUuAF4TTL8n6jctjFTqF5NCfaHqT0vlj
         KIZjJGiULCVnwwJTJqlIVXbM6Pat+U2MJsNvXUbTa2Vi9hw1Gs3HoijKmHnZkzzokd4e
         4aThSnhbSts+2+B0Sh3gFaWl2MljS2WTK/mufAkkDFCE6z9u411gFa5OTAETb1ORKzYf
         ESiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=YSqcfWE7;
       spf=pass (google.com: domain of miles.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=miles.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTP id w123si314171qka.1.2020.06.18.18.55.11
        for <clang-built-linux@googlegroups.com>;
        Thu, 18 Jun 2020 18:55:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of miles.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 36793c47f4934525899c2ced162e9734-20200619
X-UUID: 36793c47f4934525899c2ced162e9734-20200619
Received: from mtkcas07.mediatek.inc [(172.21.101.84)] by mailgw02.mediatek.com
	(envelope-from <miles.chen@mediatek.com>)
	(Cellopoint E-mail Firewall v4.1.10 Build 0809 with TLS)
	with ESMTP id 485305922; Fri, 19 Jun 2020 09:55:08 +0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 09:54:58 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 19 Jun 2020 09:55:04 +0800
Message-ID: <1592531704.23014.1.camel@mtkswgap22>
Subject: Re: [PATCH] Fix unwind_frame for clang-built kernels
From: Miles Chen <miles.chen@mediatek.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: Nathan Huckleberry <nhuck@google.com>, Russell King
	<linux@armlinux.org.uk>, Vincent Whitchurch <vincent.whitchurch@axis.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>, Kristof Beyls
	<Kristof.Beyls@arm.com>
Date: Fri, 19 Jun 2020 09:55:04 +0800
In-Reply-To: <CAKwvOdkibnsr+z8-pXG1RjOEcrGQ6HQ0=PM-B9p-i85_BKS0cQ@mail.gmail.com>
References: <20200616223633.73971-1-nhuck@google.com>
	 <CAKwvOdkibnsr+z8-pXG1RjOEcrGQ6HQ0=PM-B9p-i85_BKS0cQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.2.3-0ubuntu6
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7E2F102F10D549D6E1CCFDFA8195D3DEE40C7CE5360F0C642E1E211402486FC02000:8
X-MTK: N
X-Original-Sender: miles.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=YSqcfWE7;       spf=pass
 (google.com: domain of miles.chen@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=miles.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

On Thu, 2020-06-18 at 13:22 -0700, Nick Desaulniers wrote:
> On Tue, Jun 16, 2020 at 3:36 PM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Since clang does not push pc and sp in function prologues, the current
> > implementation of unwind_frame does not work. By using the previous
> > frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
> > kernels.
> >
> > The bounds check on next frame pointer must be changed as well since
> > there are 8 less bytes between frames.
> >
> > This fixes /proc/<pid>/stack.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/912
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> 
> Thanks for the patch, Nathan!  When I looked into this, I found the
> latest ARM AAPCS [0] specifically says (with `it` referring to `a
> platform`: "It may permit the frame pointer register to be used as a
> general-purpose callee-saved register, but provide a platform-specific
> mechanism for external agents to reliably locate the chain of frame
> records."   While it's good that's acknowledged in the documentation,
> the current wording is relaxed in order to not force current
> implementations to converge.  This has the unfortunate side effect of
> making finding the frame pointer toolchain dependendent, hence this
> patch and your previous commit 6dc5fd93b2f1 ("ARM: 8900/1:
> UNWINDER_FRAME_POINTER implementation for Clang").  Being more
> specific in the documentation would force at least one implementation
> to change, and I think that would also imply an ABI break.  So I can
> see it both ways, though I still would prefer that the language pin
> this down, even if we had to change LLVM.  Just providing additional
> context for folks on the thread.
> 
> This should also have a reported by tag from Miles, in v2.
> 
> Reported-by: Miles Chen <Miles.Chen@mediatek.com>
> 
> Miles mentioned to me that he tested it, but maybe Miles can confirm
> that publicly on-list via an explicit Tested-by: tag?

Thanks for the patch.

Tested-by: Miles Chen <miles.chen@mediatek.com>

> 
> This would be useful for us to have in stable; otherwise we'll have to
> carry out of tree in Android and CrOS, which I'd rather not do.  Via
> Documentation/process/stable-kernel-rules.rst, if you add this tag to
> V2, that will greatly simplify submitting this to stable:
> Cc: stable@vger.kernel.org
> 
> Miles also showed me the behavior of this patch for different kernel
> versions, which varies anywhere from empty or single entry traces to
> panics, so this is pretty important that this works for Clang builds.
> 
> [0] https://static.docs.arm.com/ihi0042/i/aapcs32.pdf
> 
> > ---
> >  arch/arm/kernel/stacktrace.c | 24 ++++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
> > index cc726afea023..76ea4178a55c 100644
> > --- a/arch/arm/kernel/stacktrace.c
> > +++ b/arch/arm/kernel/stacktrace.c
> > @@ -22,6 +22,19 @@
> >   * A simple function epilogue looks like this:
> >   *     ldm     sp, {fp, sp, pc}
> >   *
> > + * When compiled with clang, pc and sp are not pushed. A simple function
> > + * prologue looks like this when built with clang:
> > + *
> > + *     stmdb   {..., fp, lr}
> > + *     add     fp, sp, #x
> > + *     sub     sp, sp, #y
> > + *
> > + * A simple function epilogue looks like this when built with clang:
> > + *
> > + *     sub     sp, fp, #x
> > + *     ldm     {..., fp, pc}
> > + *
> > + *
> >   * Note that with framepointer enabled, even the leaf functions have the same
> >   * prologue and epilogue, therefore we can ignore the LR value in this case.
> >   */
> > @@ -34,6 +47,16 @@ int notrace unwind_frame(struct stackframe *frame)
> >         low = frame->sp;
> >         high = ALIGN(low, THREAD_SIZE);
> >
> > +#ifdef CONFIG_CC_IS_CLANG
> > +       /* check current frame pointer is within bounds */
> > +       if (fp < low + 4 || fp > high - 4)
> 
> The patch LGTM; maybe Russell or Catalin could triple check this
> bounds check?  Assuming there's no issue, you can include on a v2 my
> reviewed by:
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> I'd probably wait the remainder of a week before sending a v2 to
> collect additional feedback.  Thank you again.
> 
> > +               return -EINVAL;
> > +
> > +       frame->sp = frame->fp;
> > +       frame->fp = *(unsigned long *)(fp);
> > +       frame->pc = frame->lr;
> > +       frame->lr = *(unsigned long *)(fp + 4);
> > +#else
> >         /* check current frame pointer is within bounds */
> >         if (fp < low + 12 || fp > high - 4)
> >                 return -EINVAL;
> > @@ -42,6 +65,7 @@ int notrace unwind_frame(struct stackframe *frame)
> >         frame->fp = *(unsigned long *)(fp - 12);
> >         frame->sp = *(unsigned long *)(fp - 8);
> >         frame->pc = *(unsigned long *)(fp - 4);
> > +#endif
> >
> >         return 0;
> >  }
> > --
> > 2.27.0.290.gba653c62da-goog
> >
> > --
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1592531704.23014.1.camel%40mtkswgap22.
