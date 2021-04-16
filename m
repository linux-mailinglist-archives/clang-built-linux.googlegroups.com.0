Return-Path: <clang-built-linux+bncBC42NVMF3QDBB7VJ4OBQMGQENZO6WBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F25A3616A9
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 02:06:24 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id mw17-20020a17090b4d11b029014cf3b640f4sf13109110pjb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 17:06:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618531583; cv=pass;
        d=google.com; s=arc-20160816;
        b=03NsX/RblCOTvs8YX8vye9MmNqWsU/vxWl+abQSkTeU/qohnOq/Hy3GeNE5GchsDIt
         V+ZbmoM4N4p8I7TpF6gVql+1D545hRJ6evOBAgzrUKXwJv+qfjLu26Ab24XfNVe4GKYu
         RvQKVkDYwcEErEopL/9niwN35BZ7WpItJYBvP4RXks6nGbzMduY22qZ/V36/jWpdRLBX
         dMqsduAUahvyr+icK6lV099uBBXvp9MMPMgSgl+/KgA0Y/bf9VnobSBqeuMNNP2DROEj
         xegf/4TLOYcBn/xBK7YHPmoMXG1r6hOGFepL9TsSiRHwCLTTWNPfaMcPmGqk0tjnU1KU
         /GyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=GhfhsRc0VCWMbTIaMEfykNRfOJ6BKejR6Y/zlAYr7d8=;
        b=qX1xZYw1zREGaAm+oPqZxPawyG9w9K5zTi2UmkQlgUvoi+n4Z8q/I2lmXVRfwwSbVP
         tu8stpE6qGnRD5wMAsjzbg4HLDn5Y/g6Ms61PK8cbcCaX68upj8+VjuFPW/U9ebzIKjY
         7HLRB+hvG5JVp3m+/+H67nKE9dsbcixHlZgdiyjJlM6Rvz2C2j5YezaX/p+uvQT0IM8p
         6Lcbzpfpr+Ijr5B/pVH7/LfAGevTMN4NIYq7HEVuvMQYtkSlpVE3ksuSflNdoYlMbg8I
         if4uvl4cmrOxu+uGwvbTZeJrYjmYsUHFGCCeyefk4BmY6uiV2D6tUPZrDfVF1kBmuh/R
         A2fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D/8Cbc+B";
       spf=pass (google.com: domain of dillonhua@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=dillonhua@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GhfhsRc0VCWMbTIaMEfykNRfOJ6BKejR6Y/zlAYr7d8=;
        b=bdcey1YW8CIKepO/wsrYMnJrJ2KHZZhe5vmV8MdSJqVFGClMZ3t+5ReoAhW8potJ8u
         WUYpkBPrahx6tQOc5/h8Xtl5VFUpqsgUSmzQOh4dfqKEsvZzYpRur5GFAY7+ddauQ/M4
         w/SAYzYJqXC85qpBflS9TSg8oeALk0haJhuT5/z5WQ5j1Ozok7z5/Gu/6zC6KhmrFVgk
         68a7+LOpsnD4CzglckaAHd7XbCdOqlnHRWU1t6LlaO2PzNIrOI639kBAxt78DhDZhSBw
         Ze+PoB4dsaSTWOdxe9rS6uM+YPmF0lLPrIgar/sA2QjgfeWy4mWA30GZ271KxuTwVcUC
         dvBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GhfhsRc0VCWMbTIaMEfykNRfOJ6BKejR6Y/zlAYr7d8=;
        b=H7akJHJZjI5Bn7oKRA8NucMqk9bZEMdNmNK2wBR5JdbT9WmOs8KhwD0dxntqA/qJIp
         zVAHQOub5s3VusrPhoZc74KYBNVJRnSDbH96rNk5wev+5XH7X+1EPhF8NGKNrda4bWIe
         FGV8+P7WEoWGWfv6xgjyAcp+lAiS+TQsE+27kA08xCtU7AY66jdI2OV0b9WtlZAKuk1a
         LvLa8x/c27Y/pxUcVWA9+THV/nJr/CMKtwzawfWvg740FiiwsHNrmIgD9DIOXMEw4M/c
         B/bMh5JskJ2cAdMcEWDVMrR9jilMbKATiNpegVLj1tx9yxi+y26W4yNcRkwl+Zz7NEUS
         DA1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GhfhsRc0VCWMbTIaMEfykNRfOJ6BKejR6Y/zlAYr7d8=;
        b=bownPRP1QQD1RE61KCutsZPCgmNPws+58xdhV9LsljnMKyx10BmGvIJRmd9awuOcc2
         7dexZNzkStamhvO8xw7PGPPWNMUIKICyziGEgxcN+wkXWTbSZlQ8Br50sAmsQeatlp9C
         KSVCvmMDIYhu6L1b6PWkJOEtxa2g65KcqdYEUqKjqfF4OEXpE8EXmLMyMYnxuPfdNag8
         OtcXOxOjfmjMDAZP8sdBU+TMVYKhRmOp+b2rTz98QV1ll4rpIz3yrcQGDdVFdDgeV10b
         Rfl8ohVNMNSbrHYh9oP5IkypMzwtIK4Yy6wzKDU4vhJ2yGqKp9ms6eWWOM/vZyQzkRsn
         sguQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zBfk4kQTKK7VjIK3qBTw1BoGYreytNnZ22/diYh20cLOUZ2hb
	47HLIUG+Py2PQ4/lUhiFFSQ=
X-Google-Smtp-Source: ABdhPJxxKU/q+UgZkdJ3wrj6oXDrevwJF96LhBfXhZuPpIJ5xjNgJQsnp8sMq39IWuaS+E0xfiDpzA==
X-Received: by 2002:a63:ce03:: with SMTP id y3mr5614161pgf.414.1618531583036;
        Thu, 15 Apr 2021 17:06:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2f88:: with SMTP id t8ls3974193pjd.1.gmail; Thu, 15
 Apr 2021 17:06:22 -0700 (PDT)
X-Received: by 2002:a17:90b:302:: with SMTP id ay2mr6637796pjb.84.1618531581948;
        Thu, 15 Apr 2021 17:06:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618531581; cv=none;
        d=google.com; s=arc-20160816;
        b=dUmxNFmKOOrUKQ+fjFig+P9OK3gWWsz2OArZNDcfBTvNd7sj9ghqT3R3WCggoj4lUU
         nhvqBOZaWPyrDC7zDR9H2CwFiDdh6KEM256x8u4xPuh8aTpSUBDmuucGUAdkl1WR9vkZ
         XMCPZeG8iyVVi3nUMfQz2QEOzd8A1Zb5QreuaJBkLYh+Gee+on1wSy4MOnKusjnt3g7l
         TIC8ToS9NSYd3vBCVCgeMW8yToxE5QZt1Mp4m30mIjtEtkfoOoY5xiG5APlJd0VLQ0Jy
         FFi/RFJMZyNvI6khRgzyVm2CcCPrOVLYxPDV+LMdCI7SfFsgWh+d6jRkzAWuvHQInYFO
         dNPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EWbin3LRnkS15U3EHv3eMCbIAS87ffxpyM/9vbY3Lzg=;
        b=tAL5v3ephH/RBsq6VJiOmC8L3V6DUsKQNGRoFbUzA34jbgAIaaOqeOFaosJLs7gBiT
         II+5PLIyHb1kHMagjdg4lQQttzjyE3QjIjzEmo0RSqQ3fQpFy3wZyV3unebHoFEZqn2n
         5gzl2Us6NXuGxlM5hAw+vSOntpgfCJ7n1xGB29gKxEmvqvl4tOCyXa5pMEou1q+DBzgM
         4xmRK6rHJFzUcrgXeYVTaWckcIexL49iAZwct7CcGnIU47NHFkBGqvjCCVZ0KD8uInq9
         TPubeKj/WODwqmtbREx5dWpU6mgkl+CwaNW9i5UCe0QmjesIZqkDnlrKsStdmOQ1Ga0p
         FhhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D/8Cbc+B";
       spf=pass (google.com: domain of dillonhua@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=dillonhua@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com. [2607:f8b0:4864:20::134])
        by gmr-mx.google.com with ESMTPS id nv12si427479pjb.3.2021.04.15.17.06.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 17:06:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dillonhua@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) client-ip=2607:f8b0:4864:20::134;
Received: by mail-il1-x134.google.com with SMTP id j12so7788902ils.4
        for <clang-built-linux@googlegroups.com>; Thu, 15 Apr 2021 17:06:21 -0700 (PDT)
X-Received: by 2002:a05:6e02:1baf:: with SMTP id n15mr4893724ili.148.1618531581637;
 Thu, 15 Apr 2021 17:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com>
 <YHRGPpQ03XgBMkiy@hovoldconsulting.com> <CAL9mu0JF-9hy3Z_ytpEO+hzKh0D+f-0gYaUBEA0v28EOHpC80w@mail.gmail.com>
 <CAL9mu0Ke97FUZ03jvdH8Lz2qRnVY82B7tAEtjbhW97sPOVkAxQ@mail.gmail.com> <e17fddfb-f9b8-238f-da74-a4746f33134f@foss.st.com>
In-Reply-To: <e17fddfb-f9b8-238f-da74-a4746f33134f@foss.st.com>
From: Hua Dillon <dillonhua@gmail.com>
Date: Fri, 16 Apr 2021 08:06:10 +0800
Message-ID: <CAPTRvHksyOR-XoLUOA+fCf33CWj--Y8jUiN99qMFcnxrQ3M_FA@mail.gmail.com>
Subject: Re: [PATCH v2] serial: stm32: optimize spin lock usage
To: Erwan LE RAY <erwan.leray@foss.st.com>
Cc: dillon min <dillon.minfei@gmail.com>, Johan Hovold <johan@kernel.org>, 
	Greg KH <gregkh@linuxfoundation.org>, jirislaby@kernel.org, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@foss.st.com>, 
	kernel test robot <lkp@intel.com>, linux-serial@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, Gerald Baeza <gerald.baeza@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dillonhua@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="D/8Cbc+B";       spf=pass
 (google.com: domain of dillonhua@gmail.com designates 2607:f8b0:4864:20::134
 as permitted sender) smtp.mailfrom=dillonhua@gmail.com;       dmarc=pass
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

Hi Erwan,

Erwan LE RAY <erwan.leray@foss.st.com> =E4=BA=8E2021=E5=B9=B44=E6=9C=8816=
=E6=97=A5=E5=91=A8=E4=BA=94 =E4=B8=8A=E5=8D=881:10=E5=86=99=E9=81=93=EF=BC=
=9A
>
> Hi Dillon,
>
> STM32MP151 is mono-core, but both STM32MP153 and STM32MP157 are
> dual-core (see
> https://www.st.com/content/st_com/en/products/microcontrollers-microproce=
ssors/stm32-arm-cortex-mpus.html).
> So your point is fully relevant, thanks.

Thanks.
>
> ST already fixed the same issue in st-asc.c driver in the past (see
> ef49ffd8), because a systematic deadlock was detected with RT kernel.
>
> You proposed a first implementation in your patch, and a second one in
> the discussion. It seems that your initial proposal (ie your V2 patch)
> is the most standard one (implemented in 6 drivers). The second
> implementation is implemented by only 1 company.
>
> It looks that the solution is to avoid locking in the sysrq case and
> trylock in the oops_in_progress case (see detailed analysis in
> 677fe555cbfb1).

Thanks for the detail information. the V2 patch didn't cover this case:

    stm32_usart_threaded_interrupt()
      spin_lock(&port->lock);
      ...
      uart_handle_sysrq_char();
        sysrq_function();
          printk();
            stm32_usart_console_write();
              locked =3D spin_trylock_irqsave(&port->lock); //better
than no lock(locked =3D 0) if other uart interrupt coming at this point

Find a same solution on fsl_lpuart.c
commit abf1e0a98083fd0a1069ce68ad8c92bfb97a57db

Thanks.

Best regards
Dillon
>
> So your initial patch looks to the right proposal, but it would be safer
> if Greg could confirm it.
>
> BR, Erwan.
>
>
> On 4/13/21 1:44 AM, dillon min wrote:
> > Hi Johan, Erwan
> >
> > It seems still a bit of a problem in the current version, not deadlock
> > but access register at the same time.
> >
> > For driver , we should consider it running under smp, let's think
> > about it for this case:
> >
> > static void stm32_usart_console_write(struct console *co, const char *s=
,
> >                                        unsigned int cnt)
> > {
> >           .....
> >           local_irq_save(flags);
> >           if (port->sysrq)
> >                      locked =3D 0;
> >           .....
> >           access register cr1, tdr, isr
> >           .....
> >
> >           local_irq_restore(flags);
> > }
> >
> > if port->sysrq is 1, stm32_usart_console_write() just disable local
> > irq response by local_irq_save(), at the time of access register cr1,
> > tdr, isr. an TXE interrupt raised, for other cores(I know stm32
> > mpu/mcu do not have multi cores, just assume it has), it still has a
> > chance to handle interrupt.  Then there is no lock to protect the uart
> > register.
> >
> > changes to below, should be more safe:
> >
> > .....
> > if (port->sysrq || oops_in_progress)
> >        locked =3D spin_trylock_irqsave(&port->lock, flags);
> > else
> >        spin_lock_irqsave(&port->lock, flags);
> >
> > ....
> >
> > if (locked)
> >       spin_unlock_irqrestore(&port->lock, flags);
> >
> > For current stm32 soc, it shouldn't happen. just a reminder for future.
> >
> > Thanks.
> >
> > Dillon
> >
> > On Mon, Apr 12, 2021 at 10:04 PM dillon min <dillon.minfei@gmail.com> w=
rote:
> >>
> >> Hi Johan,
> >>
> >> Yes, there is no deadlock. my fault.
> >> I forget the local_irq_save() plus spin_lock() is spin_lock_irqsave().
> >>
> >> Thanks for your review. please ignore this patch.
> >>
> >> Best regards
> >>
> >> Dillon
> >>
> >> On Mon, Apr 12, 2021 at 9:08 PM Johan Hovold <johan@kernel.org> wrote:
> >>>
> >>> On Mon, Apr 12, 2021 at 05:31:38PM +0800, dillon.minfei@gmail.com wro=
te:
> >>>> From: dillon min <dillon.minfei@gmail.com>
> >>>>
> >>>> To avoid potential deadlock in spin_lock usage, use spin_lock_irqsav=
e,
> >>>> spin_trylock_irqsave(), spin_unlock_irqrestore() in process context.
> >>>
> >>> This doesn't make much sense as console_write can be called in any
> >>> context. And where's the deadlock you claim to be fixing here?
> >>>
> >>>> remove unused local_irq_save/restore call.
> >>>>
> >>>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> >>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> >>>> Cc: Gerald Baeza <gerald.baeza@foss.st.com>
> >>>> Cc: Erwan Le Ray <erwan.leray@foss.st.com>
> >>>> Reported-by: kernel test robot <lkp@intel.com>
> >>>> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> >>>> ---
> >>>> v2: remove unused code from stm32_usart_threaded_interrupt() accordi=
ng from
> >>>>      Greg's review.
> >>>>
> >>>>   drivers/tty/serial/stm32-usart.c | 8 +++-----
> >>>>   1 file changed, 3 insertions(+), 5 deletions(-)
> >>>>
> >>>> diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/s=
tm32-usart.c
> >>>> index b3675cf25a69..b1ba5e36e36e 100644
> >>>> --- a/drivers/tty/serial/stm32-usart.c
> >>>> +++ b/drivers/tty/serial/stm32-usart.c
> >>>> @@ -1354,13 +1354,12 @@ static void stm32_usart_console_write(struct=
 console *co, const char *s,
> >>>>        u32 old_cr1, new_cr1;
> >>>>        int locked =3D 1;
> >>>>
> >>>> -     local_irq_save(flags);
> >>>>        if (port->sysrq)
> >>>>                locked =3D 0;
> >>>>        else if (oops_in_progress)
> >>>> -             locked =3D spin_trylock(&port->lock);
> >>>> +             locked =3D spin_trylock_irqsave(&port->lock, flags);
> >>>>        else
> >>>> -             spin_lock(&port->lock);
> >>>> +             spin_lock_irqsave(&port->lock, flags);
> >>>>
> >>>>        /* Save and disable interrupts, enable the transmitter */
> >>>>        old_cr1 =3D readl_relaxed(port->membase + ofs->cr1);
> >>>> @@ -1374,8 +1373,7 @@ static void stm32_usart_console_write(struct c=
onsole *co, const char *s,
> >>>>        writel_relaxed(old_cr1, port->membase + ofs->cr1);
> >>>>
> >>>>        if (locked)
> >>>> -             spin_unlock(&port->lock);
> >>>> -     local_irq_restore(flags);
> >>>> +             spin_unlock_irqrestore(&port->lock, flags);
> >>>>   }
> >>>>
> >>>>   static int stm32_usart_console_setup(struct console *co, char *opt=
ions)
> >>>
> >>> Johan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAPTRvHksyOR-XoLUOA%2BfCf33CWj--Y8jUiN99qMFcnxrQ3M_FA%40m=
ail.gmail.com.
