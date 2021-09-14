Return-Path: <clang-built-linux+bncBC2ORX645YPRBY4QQSFAMGQEUXSK6FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F0F40B95F
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 22:39:00 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 76-20020a9d0152000000b0053b372910bbsf134124otu.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 13:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631651939; cv=pass;
        d=google.com; s=arc-20160816;
        b=CThwCeCgjWqJdczRnTS0C543J7lOpJ+dhlGey55dypLMiHinAxDKNfHhFJCDy5NLEK
         jkttr7li4GTBcjVAWRjAKkfCH6W+XBtuSzkpOkGnS2l5if+7v+f6BcVVaFAkNVrkirP/
         +CkHpJ6rM/fybxwVuyk/q87lCjUl8BwLQCSvEN4deC9fWZG4ciVd0SuZbbbxEBr2RjAX
         vz9eD3dLpzajvER997vD4iZIfrrO1Ro7R1yvGT6D5XphOo1vypcMpO4Nqt7YBVuKdsxk
         zRzoGbJybp7cFqpx9thJS1c/MXCDj8Ogc7hXWSjxhTBem4z5TSUQ8oMWmLgYYalS9DxQ
         IEpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4lTb10CmOuPH9BlRKGWuKJI7P0qvRAbPEoEDtLXVT+Q=;
        b=nLsqHJ3J4mjUEC0I5sZppxg0SbuQfmk1AMjAp/ou/sBkarzGl7emeFFkbapl9D7xn1
         q3/Y1lwcHlD+lUoDfTAyGz0Mauk5jbBvEm6C/xodVVJWojhTIcahCE79iUk01XruiFnx
         0s8u9SL4OFHNXmQUfRnGQICXxM8s+7aK44xqFxb/u1IB0RgQopy5F/AXzsAk0In5je1o
         XLx6EVbBuMky5lVOOIa+P7Y4rxiJuzZBP/8fPtjgqW/x3nmp7d/UuAKBKRG1XkntRbeY
         be4EccBZBdJiQFSoh82JeOaglmUxxnAyplS18w/gFCamz2HjCr/bJs97vPvdCHlPPI9k
         9uow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ftQuNUD3;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4lTb10CmOuPH9BlRKGWuKJI7P0qvRAbPEoEDtLXVT+Q=;
        b=MFbMLpgpjIeIARiXdJOMvhcOXlcrrqeF33buSN5VcYvKreEjP+YqWntAYzFnasEt1f
         LTw86P23A5gJtp03ulaeQGyAneq+p/uUpmYuc1FcGUFXNA8lh+rh34IrmW7+aw5XX4ex
         JH6MtSgpdoc9c5wYA7gg4HgdO8E3niapSCZdlK9sxJfsvH/yS5IasGC9j2AXy06DdKvm
         MRMmyFBLoUDK+ItlplNOBZCAeLh4hxdHMY0LsoQx78xb9lZK/5YrzHe2ZSUkCkECuK62
         WNS14dAZC6kOA0RjJY+WHG1hMtt3Lb9teb0F61eWuZae0SXO5hA4StEkVk24B/7egunR
         /ccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4lTb10CmOuPH9BlRKGWuKJI7P0qvRAbPEoEDtLXVT+Q=;
        b=c6NgVhlbZ8qSj/QdRWVRGrARqhEFT+TC44ixNae1eokw3y2m6g9DYczsGmCIkFE5e0
         mq/MKUsfpfR5psTC9m91lBWHZXINN8334T5mu+YciONxHaX3b/1vJ/Z6+C97wjTCmRVE
         791uwNQhgG6zRnrvR8NHjKYD5BBlymaL/uaSQkW0hjXWBl98cTW3EOofKIXjyALKBLwn
         zxIu6naHghPVrJBVzFOk/4Ue/JxaWSz+1CcJTQWx9+el5ykjsM/U15E9o7rSEbYGlc46
         byzyKdCyzwwjg5r3widIbtCvydXWj9fwc81RUdyK+Req6WN9MXKiPVs9w5kmg+BXI0pJ
         uvgQ==
X-Gm-Message-State: AOAM530araIlpvn6dMffaPWs3efrgd+baJBwvQacvfDvodgWJiKs+Nj6
	OjY04tPFqsLFi5HCg4JRFYg=
X-Google-Smtp-Source: ABdhPJw/FNh20aNf5qRB35T47vacMjEHfe4Veq0VMrlI//3xwsUOLPDzznafih6MuUTnI32wh4sdOg==
X-Received: by 2002:a05:6830:831:: with SMTP id t17mr16238554ots.225.1631651939126;
        Tue, 14 Sep 2021 13:38:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:31d1:: with SMTP id x200ls32604oix.3.gmail; Tue, 14 Sep
 2021 13:38:58 -0700 (PDT)
X-Received: by 2002:a05:6808:56:: with SMTP id v22mr2943163oic.49.1631651938725;
        Tue, 14 Sep 2021 13:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631651938; cv=none;
        d=google.com; s=arc-20160816;
        b=QD7O0fNyP+j/2y9kVBqBt5BFZp/uSzzx+eQiGjte/vk+niuwcHa67LD35+VMxNDf+/
         XGb2WG2FqUJiKUlMYTemCPPxP/nrwBbBBTP6FOikmM+PLz7SJH9jNid4ngcAR8qgrt1u
         b5EZM8n/xfWv51jVY2wQqdWoaL4b/JunnFAfjUTxv3sCNDFlgXi8KIDRUAf8fx0X87uw
         sHIzA/62V1yHOH5b88QwIKN18XeL0jLKm53aVwaZb2YUWKoW/4ciMbVHyfCyKD0XxHos
         h3rrfigZdR/2cz/UhkPVVlgo79UIBzxYtSZsEzBws56TZM2pkXjpVMtUDVJuk9GuFk1P
         Aoag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8tUhNAmB3jtMO0gp42EJpLQiu+VFBOkyW3SAAAq7Es0=;
        b=Qa4/cHLDS3mmLwIefPAiAbKQFY1zy0jjhlAINGyrzRUSWNakiJDpNMLSLV/awdEoPd
         ztPm74AYdQRFkSwI3aLV1hymPlpbGq0wrGAIwwRNBPBzJwLDrH5xu+Jb1cg//wq5oitg
         tVsBHeEpYcXQJjdJhIoLaSV1qxJaRSuGWIWsW3VH2uA03sV2r9n9tJuXYT6q2ljBgGbm
         XAAqh4L4ucbytRxmR2CvR8cRJ9QbvyOlzjt9UiQqGfwKiRzbWt+eYMOFFinvdzxdr4k5
         qzhq1gl13jGABk2mZA3q1XFxUDugLYE/gkZX9Xzof44ppYKNBqE2CFjTF40IoHQ7oU5c
         JfuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ftQuNUD3;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id m6si1024255otk.4.2021.09.14.13.38.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 13:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id m70so860835ybm.5
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 13:38:58 -0700 (PDT)
X-Received: by 2002:a25:eb0b:: with SMTP id d11mr1361200ybs.101.1631651938181;
 Tue, 14 Sep 2021 13:38:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-11-samitolvanen@google.com> <202109141235.BE65491A4@keescook>
In-Reply-To: <202109141235.BE65491A4@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 13:38:47 -0700
Message-ID: <CABCJKufuv_zNEu1=X+xnUYF6WmFU=ZjSCa0QzDJdUvFSD5gx0A@mail.gmail.com>
Subject: Re: [PATCH v3 10/16] x86/extable: Mark handlers __cficanonical
To: Kees Cook <keescook@chromium.org>
Cc: X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=ftQuNUD3;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b29
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Sep 14, 2021 at 12:37 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Sep 14, 2021 at 12:10:39PM -0700, Sami Tolvanen wrote:
> > Exception tables are populated in assembly code, but the handlers are
> > called in fixup_exception, which trips indirect call checking with
> > CONFIG_CFI_CLANG. Mark the handlers __cficanonical to allow addresses
> > taken in assembly to pass CFI checking.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/x86/mm/extable.c | 64 ++++++++++++++++++++++++-------------------
> >  1 file changed, 36 insertions(+), 28 deletions(-)
> >
> > diff --git a/arch/x86/mm/extable.c b/arch/x86/mm/extable.c
> > index e1664e9f969c..d16912dcbb4e 100644
> > --- a/arch/x86/mm/extable.c
> > +++ b/arch/x86/mm/extable.c
> > @@ -24,16 +24,18 @@ ex_fixup_handler(const struct exception_table_entry *x)
> >       return (ex_handler_t)((unsigned long)&x->handler + x->handler);
> >  }
> >
> > -__visible bool ex_handler_default(const struct exception_table_entry *fixup,
> > -                               struct pt_regs *regs, int trapnr,
> > -                               unsigned long error_code,
> > -                               unsigned long fault_addr)
> > +__visible __cficanonical
> > +bool ex_handler_default(const struct exception_table_entry *fixup,
> > +                     struct pt_regs *regs, int trapnr,
> > +                     unsigned long error_code,
> > +                     unsigned long fault_addr)
> >  {
> >       regs->ip = ex_fixup_addr(fixup);
> >       return true;
> >  }
> >  EXPORT_SYMBOL(ex_handler_default);
> >
> > +__visible __cficanonical
> >  __visible bool ex_handler_fault(const struct exception_table_entry *fixup,
>
> Double __visible here, but with that fixed:

Ah, thanks for noticing that. I'll fix it in the next version.

>
> Reviewed-by: Kees Cook <keescook@chromium.org>
>
> I would note that given Linus's recent comments on attribute locations,
> it does seem that __cficanonical is more a function behavior attribute
> than a storage class... I'm not really sure:
> https://lore.kernel.org/mm-commits/CAHk-=wiOCLRny5aifWNhr621kYrJwhfURsa0vFPeUEm8mF0ufg@mail.gmail.com

__visible is not really a storage class either, but I thought it would
make sense to keep these attributes together. I can certainly move
them if anyone has strong feelings about the location.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufuv_zNEu1%3DX%2BxnUYF6WmFU%3DZjSCa0QzDJdUvFSD5gx0A%40mail.gmail.com.
