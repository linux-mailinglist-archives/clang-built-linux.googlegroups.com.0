Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWVDYXVQKGQESSJYJ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBBEAAABB
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 20:20:11 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id i11sf2510509ywc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Sep 2019 11:20:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567707610; cv=pass;
        d=google.com; s=arc-20160816;
        b=L8iolse21VVygCn7r0RerykYdMgRhU0W5ouFG1t1C0YjokfsQxVchBWIW/r0+QmkLu
         uR21TbG0fGDxe/gEZFQT2mCB/R1kOzeVogrLlyXkIbah8Pr/zB57k6CkEDuT4BoBYInF
         VsBn/aRRjBiMkUIJsTcNKLiv4GVWgilczUQja350Xfu9xU8Hi43DwqKcdKrtNBH+Zd0D
         IAH8sJ4Ga7peCQmEu63aBCut+yIypXoOk4jPCguIzFjzRtQAI4r20okIAEFdVPrZTISq
         T1r8nw/oY07WgEv9FyALNxGYhU02bx78hwqFQJjf9IWU8JVm1JJTCwKdkD31+XqQI/iD
         w8bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8Ei+rKPZAD/ppK+IZWt1w4Oh2SABOMQry5dgYgoQkxU=;
        b=i7jxZwMPlaYfC/Sd8KQv4FCQmhiKC0D02ALPzd7IsNCyPiOO6FdLgivyKNjAFiwpBy
         QanRhHUpD8T2E8Ke2wBkaD/xYntanvbLpuGwQ3fsUe0aLeDGjWlEGonD7TRW3uMlhDmM
         0ebjH8OMTRmdAL5n7T2hp38zKsQvRgENhRCXf9TsVlUwgZRNw9txc62ntNUDTGYEd6/Y
         IqapFW8osJxrXBvzbzGXPjOm9oQa42+drMSSBgZ6zL8mLIrtaJC+lFkqAsCJB8iSotjI
         f/DATW0PamnBRLzABZmu5XhdLJTxwT+jjY0v+vO8i0yJn0JDymwmuhzItLzAI0OiurWc
         23ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vmxz18y5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Ei+rKPZAD/ppK+IZWt1w4Oh2SABOMQry5dgYgoQkxU=;
        b=SWmiUzOrTUtbDhGinJBTqZ/evnhAmCTC4mjheOT0+sNWH91wMFuXT/s0HYt1CTVX3T
         bBSerk10NB3YWwOa4Z7Jdz663o+aNM41WqK3P3bNjkPp4I18EUBqIIshRC2hPAVAJJu7
         PjNGxBsBWxEV3nGb9CmCOAZaTrolcoAhavXckkd3vGOFXpCcfpW48FiKQ6ZgH+icSKQ4
         nDdAqktmKTu8Ab5gsZbip8eSGtXZYM31Ge/hgyF2smsS9CLfaOCJSIC0tuN9uJpg5BKo
         XJ606I1Hk0yd+96sqk5oTKBOeoCEN9zx+TO9obe8vkYPW9Y/pHz+qdbo4ZNBSvkwRfM/
         iwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Ei+rKPZAD/ppK+IZWt1w4Oh2SABOMQry5dgYgoQkxU=;
        b=PKYSGnFyXvpGZQWt6stNUfk5KivT17kosNb786oeVaTXYqSLcBqPHP3B72TpDx+mhQ
         FA8+245mv1Uz0rVreRNYY+/Sioxj/aAwM7bYKnXOl+a803EHS8IQLgpxme/XOo2dtj8o
         2LNppKxJxZXJ/IE6iDBC4CvDEk6IA7JB+8M7V/JSC8YgMXsxEUKDBz4kKFo7NTfIc62x
         VXx6O2VsnIsIekxmS2cR/azJrgGSFUsqDPK9kQV1tpaBWmwdF7I8bciPBAGpCPFL+axA
         ITmhGgSTh1fTeKNOcUMYtHk/owysAK+LLHZi62VYE9xTed4YH5NRr7Xr+QhB4xxnBDg9
         xcNQ==
X-Gm-Message-State: APjAAAW1YtJkyMeEXNgVPra+QWSGpvpLnvhRT9XLPfjd2rCcj4sjkdup
	an08+Ovhx+eT6Z3PMQjJDTE=
X-Google-Smtp-Source: APXvYqzP6Scj0zKGI3v+qCxJ1mg7A4u/3m7JjLQzaGxcRG/Bum9fyPrZPNctq0Z6oW9L8wSWnxIfHA==
X-Received: by 2002:a25:8585:: with SMTP id x5mr3705632ybk.405.1567707610366;
        Thu, 05 Sep 2019 11:20:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:34c5:: with SMTP id b188ls518423ywa.2.gmail; Thu, 05 Sep
 2019 11:20:10 -0700 (PDT)
X-Received: by 2002:a0d:ea06:: with SMTP id t6mr3583795ywe.116.1567707610078;
        Thu, 05 Sep 2019 11:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567707610; cv=none;
        d=google.com; s=arc-20160816;
        b=Brl4nS0sflHA97oZXBRqdT+ph72IQGhaOg5Hw79QjktksD1f8EMInd54oVtA7cQ9Je
         LXtwbTGX9tF9CsLt0phXtXVAKUFrQlFIYKjR1DippphYLF1tH/VbgRvGskMJTsTU5dmT
         DFNaP5N1o4XXkkMZney5eH4yaHZ6csp5EHVn7isSaAYG/QES2p5aEmE1rmQ9+eKcTBTm
         oXyIHC6WXPl+o6TwwqGDlOtRe2766NuILvVmYu+0ISaiFuUtFPFhSHuCMzzcJSQ22T7+
         ovKek/EFO7Ux/2qYKLhX8Wk312im8LN2KlTNFqnGbw4W1mRgfFMUWSZHDSv3aRV5EZjR
         bRjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u0s/PLxFo+syH7M9Wh4VFiPBwZwXzQ4qynXsfqd0qpc=;
        b=ls6Mm/teIDYNBmUgMt0mz9OiJBGBQFKTd81528NwlvNm3D3FB8vBZfEsrjVcAydV16
         SEnM07yp4z1v3h/gsM5AqpHBlljbVz+TkzGoQQX3nCE6Zm4HSAVET16dJV3CTaCdE/ho
         25GVL988Y+FfpYHDDjpBqaogtnI2JHOmoPI3mc0C/eOMRGkv10/1Ole92IkoZw3pl+u1
         ibmhM1DDk6o/b/g81YmyyN2QLJK1f8BHooU2wO4t8od5rqkUpj/CX3DKSKkdOTlsZ39F
         VyF/n3EVEG5BazZsQ6yyr3EKiKT+hxxh8RJybJsU2n/I16B5Q/Klv8tkxc+lWzsWa5wQ
         BROQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vmxz18y5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id g203si192464ywc.5.2019.09.05.11.20.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2019 11:20:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x127so2286138pfb.7
        for <clang-built-linux@googlegroups.com>; Thu, 05 Sep 2019 11:20:10 -0700 (PDT)
X-Received: by 2002:a63:6193:: with SMTP id v141mr4496292pgb.263.1567707608710;
 Thu, 05 Sep 2019 11:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190904214505.GA15093@swahl-linux> <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
 <CAObFT-RqSa+8re=jLfM-=yyFH38dz89jRjrwGjnhHhGszKxXmQ@mail.gmail.com>
In-Reply-To: <CAObFT-RqSa+8re=jLfM-=yyFH38dz89jRjrwGjnhHhGszKxXmQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Sep 2019 11:19:57 -0700
Message-ID: <CAKwvOdk00-v=yT3C3NfN=-FJWLF+9sAYXm_LeFXo+DBZ-vKSxw@mail.gmail.com>
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
To: Andreas Smas <andreas@lonelycoder.com>
Cc: Steve Wahl <steve.wahl@hpe.com>, Thomas Gleixner <tglx@linutronix.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Vaibhav Rustagi <vaibhavrustagi@google.com>, russ.anderson@hpe.com, dimitri.sivanich@hpe.com, 
	mike.travis@hpe.com, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vmxz18y5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Wed, Sep 4, 2019 at 10:34 PM Andreas Smas <andreas@lonelycoder.com> wrote:
>
> On Wed, Sep 4, 2019 at 3:19 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > Thanks for confirming the fix.  While it sounds like -mcmodel=large is
> > the only necessary change, I don't object to -ffreestanding of
> > -fno-zero-initialized-in-bss being readded, especially since I think
> > what you've done with PURGATORY_CFLAGS_REMOVE is more concise.
>
> Without -ffreestanding this results in undefined symbols (as before this patch)

Thanks for the report and sorry for the breakage.  Can you test
Steve's patch and send your tested by tag?  Steve will likely respin
the final patch today with Boris' feedback, so now is the time to get
on the train.

>
> $ readelf -a arch/x86/purgatory/purgatory.ro|grep UND
>      0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND

^ what's that? A <strikethrough>horse</strikethrough> symbol with no name?

>     51: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND __stack_chk_fail

^ so I would have expected the stackprotector changes in my and Steve
commits to prevent compiler emission of that runtime-implemented
symbol.  ie. that `-ffreestanding` affects that and not removing the
stackprotector flags begs another question.  Without `-ffreestanding`
and `-fstack-protector` (or `-fstack-protector-strong`), why would the
compiler emit references to __stack_chk_fail?  Which .o file that
composes the .ro file did we fail to remove the `-fstack-protector*`
flag from?  `-ffreestanding` seems to be covering that up.

>
> I just bumped into this issue as I discovered that kexec() no longer works after
> the x86/purgatory: Use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS -commit
> was merged.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk00-v%3DyT3C3NfN%3D-FJWLF%2B9sAYXm_LeFXo%2BDBZ-vKSxw%40mail.gmail.com.
