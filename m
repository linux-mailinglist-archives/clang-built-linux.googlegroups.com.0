Return-Path: <clang-built-linux+bncBDBLP5PQSQLRB65G2GBQMGQEZRM3AXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7EF35C828
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 16:04:44 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id n191sf8296686qka.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 07:04:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618236283; cv=pass;
        d=google.com; s=arc-20160816;
        b=WEfbBsY5aNaKyAuqMDI75Yuzf0+RQjz6eyNFaeTpRCx40iCzaMkRQ+EQjOXsIdgEry
         3SRRyj1jgD5o2cOzwVndRl/hUPcTKUcp/53oPRvxvwCVAu9Nc/pVem43SsQkZfPDC7hY
         /Q19p9AnS62H+egY7RZNzugwvJZIX4cNzcwLfLqZvIJFV0PA8yHL5422dgBBMSo7cQYa
         jYwxNoSCjv2kMCiQmzt302PJuglxBwXouIQ604FlC8/oOO5qAd2sPEGpZE+ekMAwHpA6
         0lOZWUE36TCEwNU0lzF8Jk9fZ4a7vhCGI/3kzTbBYIgUvZDVs+OiaVN2XdJZ1BuHN5Fg
         GkSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=WxU5STh4EziWdwoYv4Y1RO0msYXIEd1vggbsIeQ+wBs=;
        b=1FlQIkNueMEC7X1h/B0DH9EfW5Zcas4tjK9PIZ04dvngQMLgrBHqtaleNPcTYDsFSI
         AFok8GBA1reyXol/J9cXEmYaRieu9NQQ+crKyRreECY87PdxYBiwzraPZUPYs4my9uWw
         ahI3CdvCTrvBNmElzHq4edQjePKzsQcX8u+YHRhe3DSw0JjpT22rSyjlpAPk0dh8R2bd
         bg8SJ+hSiLUXVZKpDOt88cScvjBXoM68ZTd6/jc+o5chx8M1r29TmQnSaoqGYr/irXMg
         UYsFMkcX+cqThBsWo3gcuhhkomvPII7wOKYUKBfbu+Z8hh190NF9Sj53tSt3os9Ed1kU
         9C5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nzm5jd0z;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WxU5STh4EziWdwoYv4Y1RO0msYXIEd1vggbsIeQ+wBs=;
        b=dW6IbQh2u1x4X5MDs7wVTIFAx86tE0zXrxg50cq0UXxQ/k0T3dM6UBpPECnZJi9xgR
         NCylTEACz5bfSySynkXqVgC/ila7fvSIHJz4qEsXB4dx2GAvgjayuyHoC4qtL13z4vBR
         uYDMXGhRJLO1m4PB9HvxQvgLP9OihoXbimJ2ascLRDDpkTlEt9vMzOAV3TZNFyRY5hgR
         V9yDbhogPf44XIXkhHzRN1sPCLgZtGwYpB4v3suaRp5v6Y+FCC3S5TNvqBOr+szfdt5G
         zAB4jz9qM+p/NF74e0lRhRmOJz6Q7Uov+iu7y4/qEZR44qVU0AJwgbfq42pDJWWTAKmI
         nkJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WxU5STh4EziWdwoYv4Y1RO0msYXIEd1vggbsIeQ+wBs=;
        b=IDc4jmm/ZZ1ze1Kc9A6iFNfjiFi9tL/vBJcg0Qy1DfQTFY/g6xYLi1E+krGwF2GFGf
         43RJoMAVDwtyqOl3wyLcsFp+kv5s7pRqTkFNKqM8REHzzH67UhsJAugdw7UxEPfPiv3L
         9jnl1kVRULDscuieWV1kXbWDAVFfCguwOtAydRe3rYI758zf4dDGUggijreiqYUy45Gd
         I3aUfzaOKWxQ3QgrSycArxOTYa+StJaBGiqx+iRIXvudFzoSQfslKDh0X6P0MDHmAaMI
         aGIxU44uOUCGkq0ybuO+P8mygsLAJ8m41rZG5+wcKvseRcq1wRuIsPXm+0FST3enI8pD
         OQCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WxU5STh4EziWdwoYv4Y1RO0msYXIEd1vggbsIeQ+wBs=;
        b=GSA+DoTjOZvhdtRW1mBJ0WTPM6iQs3HL8JVzrihp6WK79cn+JDYR2eRjV3U5p8l5ff
         J+NaTudCcpSC26fNf2hQ3sDihXdJ2U/TtSF9thgcRqF5ifDsD0PuGoBBJhZFZG/4VOmT
         FGLnKl2hFms6etuEFL6+JkzxzTdg6r7XWQh/E+/DohKydGeMaLQ/CXEwRhj4DmlNFXXn
         Pz+AjV0vLQ7tbvBHsmHdfCnfjY98VHgF9saizvHNTMDNZFS2KTqUsFf+5y95RxkUJzp/
         oZw8EOpCiTDGaB2t6xQblm6JTTKwdbvDqMbfCQCCluEk5q3vEmpOKRT4pgVzKM+CNW1U
         4wqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ThDIO7cKodZlkxxpKCAbgX1hJp8RToUficObEmqnMeFnRBkRx
	7t1TbQ9R6lpg14dHhvhtH4M=
X-Google-Smtp-Source: ABdhPJxsSpD8/5YHlcadJZZgBe6M3+mu71saesCv1wNnjNo3mu4Y4FAgZCgUiku8Rwi/atF99o0Khg==
X-Received: by 2002:a05:6214:1467:: with SMTP id c7mr13615798qvy.7.1618236283213;
        Mon, 12 Apr 2021 07:04:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1011:: with SMTP id z17ls2655958qkj.6.gmail; Mon,
 12 Apr 2021 07:04:42 -0700 (PDT)
X-Received: by 2002:a37:bc43:: with SMTP id m64mr27369728qkf.186.1618236282790;
        Mon, 12 Apr 2021 07:04:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618236282; cv=none;
        d=google.com; s=arc-20160816;
        b=V4EZvDs1usV2ZLeze3Aqcvy154DhJJLCu/B6wlvrWVA5Kt/H2lC1QIC1xZCSjzdAax
         tX1PGSbACCbuTei7eUKUzufSUX/BZ251kuasUeZKaFcCktJ7BNyd6dT8XayzZV/BTNBD
         p95CzZJGbRrzTo97m7yk67POvc7clVddPWwHcRQNYty4E3XhVx4+BDePWqRrKoh19ouC
         CtDQw3Bny9nlZYDoFvh1y3j8AiaQADKoKDuD297Bonvp40prO8P+s3H437p6hG9MTx4+
         A7V6q+rIZ7cvtxX/R6wjXj4ruhcoYixAonBAtbxZR3Fnvyt6gSP+JQe40qN1XeY8wo2D
         1B3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2ZmPHR9GUafARGNI7sj7W1J+ANavVOrnfghsbNP17iA=;
        b=Un4ut9DAEXvg8tlK8LXsFhs1fgqm+bXI1ufihbLdADmgbf1fxNS6AttGLw1J3HwDOK
         YmxJElEw0cxSLcmq90lyzlGo+JUgPmqNRoY7F4ZKTQWSb44oZj3GpLKxVXuww/3GruLh
         9PahFhMHbP/qcWIPq3/WWtskFVgxIhSNdLwHnsmbrym43IFcPtjI2GiPVoQA8/kUgvpp
         WOfjtzpoiPR4tF9KFLnr6B6YnU13b3nDEYmYtnYXf1fyMfstWdgvfYIQdecWM1h3mOAA
         mTHY7YBhJpKrewPEMy0ZbBg4viCRVMdNrLhCjVWj2IQLZLp80NWZslPPlLGXEbFA44ww
         KfHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nzm5jd0z;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id g5si439600qko.5.2021.04.12.07.04.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 07:04:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id h141so5181820iof.2
        for <clang-built-linux@googlegroups.com>; Mon, 12 Apr 2021 07:04:42 -0700 (PDT)
X-Received: by 2002:a5d:9d13:: with SMTP id j19mr23217873ioj.110.1618236282497;
 Mon, 12 Apr 2021 07:04:42 -0700 (PDT)
MIME-Version: 1.0
References: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com> <YHRGPpQ03XgBMkiy@hovoldconsulting.com>
In-Reply-To: <YHRGPpQ03XgBMkiy@hovoldconsulting.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Mon, 12 Apr 2021 22:04:06 +0800
Message-ID: <CAL9mu0JF-9hy3Z_ytpEO+hzKh0D+f-0gYaUBEA0v28EOHpC80w@mail.gmail.com>
Subject: Re: [PATCH v2] serial: stm32: optimize spin lock usage
To: Johan Hovold <johan@kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>, jirislaby@kernel.org, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@foss.st.com>, 
	kernel test robot <lkp@intel.com>, linux-serial@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, Gerald Baeza <gerald.baeza@foss.st.com>, 
	Erwan Le Ray <erwan.leray@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dillon.minfei@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Nzm5jd0z;       spf=pass
 (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::d2a
 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Johan,

Yes, there is no deadlock. my fault.
I forget the local_irq_save() plus spin_lock() is spin_lock_irqsave().

Thanks for your review. please ignore this patch.

Best regards

Dillon

On Mon, Apr 12, 2021 at 9:08 PM Johan Hovold <johan@kernel.org> wrote:
>
> On Mon, Apr 12, 2021 at 05:31:38PM +0800, dillon.minfei@gmail.com wrote:
> > From: dillon min <dillon.minfei@gmail.com>
> >
> > To avoid potential deadlock in spin_lock usage, use spin_lock_irqsave,
> > spin_trylock_irqsave(), spin_unlock_irqrestore() in process context.
>
> This doesn't make much sense as console_write can be called in any
> context. And where's the deadlock you claim to be fixing here?
>
> > remove unused local_irq_save/restore call.
> >
> > Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> > Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> > Cc: Gerald Baeza <gerald.baeza@foss.st.com>
> > Cc: Erwan Le Ray <erwan.leray@foss.st.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: dillon min <dillon.minfei@gmail.com>
> > ---
> > v2: remove unused code from stm32_usart_threaded_interrupt() according from
> >     Greg's review.
> >
> >  drivers/tty/serial/stm32-usart.c | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
> > index b3675cf25a69..b1ba5e36e36e 100644
> > --- a/drivers/tty/serial/stm32-usart.c
> > +++ b/drivers/tty/serial/stm32-usart.c
> > @@ -1354,13 +1354,12 @@ static void stm32_usart_console_write(struct console *co, const char *s,
> >       u32 old_cr1, new_cr1;
> >       int locked = 1;
> >
> > -     local_irq_save(flags);
> >       if (port->sysrq)
> >               locked = 0;
> >       else if (oops_in_progress)
> > -             locked = spin_trylock(&port->lock);
> > +             locked = spin_trylock_irqsave(&port->lock, flags);
> >       else
> > -             spin_lock(&port->lock);
> > +             spin_lock_irqsave(&port->lock, flags);
> >
> >       /* Save and disable interrupts, enable the transmitter */
> >       old_cr1 = readl_relaxed(port->membase + ofs->cr1);
> > @@ -1374,8 +1373,7 @@ static void stm32_usart_console_write(struct console *co, const char *s,
> >       writel_relaxed(old_cr1, port->membase + ofs->cr1);
> >
> >       if (locked)
> > -             spin_unlock(&port->lock);
> > -     local_irq_restore(flags);
> > +             spin_unlock_irqrestore(&port->lock, flags);
> >  }
> >
> >  static int stm32_usart_console_setup(struct console *co, char *options)
>
> Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL9mu0JF-9hy3Z_ytpEO%2BhzKh0D%2Bf-0gYaUBEA0v28EOHpC80w%40mail.gmail.com.
