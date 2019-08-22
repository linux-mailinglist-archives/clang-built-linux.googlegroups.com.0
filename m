Return-Path: <clang-built-linux+bncBDYJPJO25UGBB27567VAKGQE4MND2YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B067698979
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 04:33:16 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id a26sf2354655otl.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 19:33:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566441195; cv=pass;
        d=google.com; s=arc-20160816;
        b=IUcGVv5WCmKkVBFgkO2REwOS5/Hm52jgXvUYG17Yll2+S0v2Bm83fMpV4geAPIRE+b
         EMC5hbgS9Ke3Uf0ZoEjrl49uWPmYmBfady0BaJ1QG/zGOoibU0HIxlW3N1GBpXoleYqD
         KPr0p6x5cAM95PEZ2l2HBKeNptwOmc9+QhogLhZaPPip1Qj36rBwoQDr2CEOrYjZ4M9+
         UfWwaqOKfszDKIQGcv8g37iIpkiHVpf08PNZyEkgW2d2bX5kJxnUzLLgpXVXaVhWLbJP
         hdReCNvL/EExefr8VkqGSdr2TjzIaokBDDZ52Vum4w4TTEbT7JaPV9GFV08Th3XYm/Aw
         RH+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pCUlZ4wRx5SuNGhXHQQWL72AY4/nClPPHPFO7gmqB2M=;
        b=ZnA/TdSdvx1hiVr1Wp27IlO9Ro3b2rDiL06+At0TNEAngwnJODjKqh9OVlQEitrdj2
         Y1109PX1qGjwND5LXsIWmIJStRocSlEM8tx1n0FBXiDp7GxgMAHMNBrCFnM+L2oIdBGX
         12uxFHl9h1lD+jYtYbeNf3ycn/RHvkU+NY/7f8lg9ZRYEKsbh3PePmsa5b2VI6Z0cjPB
         HMHadpx/nmJ6+lm9MuGKhCJS/7r1IReSCA2jZO2Zl4o54mVcXauq73Fh7EAUIblYMO8s
         Snpfb8MjVPkOu1vCKO7wYPa0AtuoK4iLH2U8ovGQDI3btuhNixQOIBOZQbhTGOG1dryF
         AEpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FdCFi7GW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pCUlZ4wRx5SuNGhXHQQWL72AY4/nClPPHPFO7gmqB2M=;
        b=IpOryHVu6qAVfogvj2jyYpwnaKLE+CkJCavBLUlxGF0Qn8uVAyqULINOU9EQUnE9K7
         tIJq4cXvxOAiTQjw2cLf/wqUVFYQqKL6i0NpR7EyWKT3G3jHRJBud70jP0Md2sXXx9pY
         ICoTXLrXWZtSbGVnxw/PFWt37TOP131Moy2dspSnvOCjXrIYYIoWk6cY54Cx3CflULtS
         egmZvEmQ2RF0mOPFK0OrT0DZ30OOBw49yU0WQoE9TvDmyCN4WqeE03TtJMvWw9qO5Ccz
         guPLR/QsN6qfCNNnVn9hzrpJkpVsWMZzHtDBzUBe13sWPRNa41HwNcWaZzqjjtOGJMYv
         VB5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pCUlZ4wRx5SuNGhXHQQWL72AY4/nClPPHPFO7gmqB2M=;
        b=gzAGtxr97iO37xdeaD3h4hCYzTtKyvrozvOm2LxysVPX6031Zctafh6iJ2i0ZjoUsb
         glk4aRSDyP+V4kUKoCbIoqsyAFKwO9rNn2dw5qjA107zlzx5uSSGRJMV2MCULpc+0UkK
         CRuypS6OrOv3eGmAt5yYalW6ExtRXRbQfJA9C37pVFfo5xrZNJVf0ONjyHf31KQ6ZqcK
         SVmcEmaxU5ux/m0D2rOnbVA2pN0Z8u6CTkWf4JhhTjmMO6DWaUO0XzZXZQKgKueksH4R
         Ef31ETaBxef7t/boRsAdnKvNMsz5DdfQseZeTV3CT/hdTms6InrxWuW1A9zM9BkWLAjn
         iidw==
X-Gm-Message-State: APjAAAXfjARmNUQi0i+0B1E7oDc4hzJwVlO6+LjznSao6wgyYCme3lIn
	Re7J1ZCJkMPiPIA+A9OHQd4=
X-Google-Smtp-Source: APXvYqx5drTuUE2Ac6bIuQbJtBks6/AgkDNIaM5sU4zJAtUjcwOvqwPwveTY9IzH+2LsgB+GV6empg==
X-Received: by 2002:a05:6830:1657:: with SMTP id h23mr7822196otr.222.1566441195630;
        Wed, 21 Aug 2019 19:33:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e97:: with SMTP id n23ls188360otr.5.gmail; Wed, 21
 Aug 2019 19:33:15 -0700 (PDT)
X-Received: by 2002:a05:6830:134a:: with SMTP id r10mr7643160otq.17.1566441195427;
        Wed, 21 Aug 2019 19:33:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566441195; cv=none;
        d=google.com; s=arc-20160816;
        b=vdQisadyxizEtr4PMil91TfDQxd2ZnORjcS+SDMmbVP+YJbdtmiF6SPB9XN8NGYadI
         kHEvfe1huySIGgingabcNxWAMYmYZG635vWb9yjxARLXXRkxzkF0bOezzA2GUC95RkLl
         UEmJ5pbVzDzR87QM4bRK163zga7qHRFsbWBaN4k+tRHEb82whgnzmURV4XXsL2tvYsR0
         RhloEYwGIgPfF9PrktIIeGEVbI2mkL70ZqQbBPa0r+TTNmaLJHAvKy6NyoIuGFgZSpxj
         XqAhoaT10muWJS0uzgWDyYfYZZBq8slpgwPZY7h6K0JFzRTCxlC65xWy+kEMSHx8GT3H
         Bz5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+tDasAzwNiV2HiRhPGR1ntFxNV2BKl3GP2YTPs2bTao=;
        b=U/SaPZqxZozPF0FXICQtDRLlEBkGMkvUQLgWA3S91wjIB/eTsgXyMEugP3rwQuKadb
         Wn00JpdOg07fVEOdfazmZssUZ7GU+/A2qWmz/6UqTnYVYmdh+cT0oANOTVfr7EoNfD9y
         Sa6Izd8vZKhHWLRm4pM6tIFBCu6hjuDLiT2swg/aN92plkWFGE5yUgOqO3FlwzlR38tv
         7OHTwq6hgL0hMnffXmC1/mfpKlw7UoIrkGsN+63G+DoMg8e2cfx76q9AWO337lqG4J5x
         429damEhhskTey8hy6wuamSUGaaupjur7eufqmAMGkSG0tfC6u/kezaRYsh9qGVA1JfR
         o6bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FdCFi7GW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f16si1001714oib.0.2019.08.21.19.33.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2019 19:33:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id q139so2785720pfc.13
        for <clang-built-linux@googlegroups.com>; Wed, 21 Aug 2019 19:33:15 -0700 (PDT)
X-Received: by 2002:aa7:8085:: with SMTP id v5mr39314885pff.165.1566441194307;
 Wed, 21 Aug 2019 19:33:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190820194351.107486-1-nhuck@google.com> <CAKwvOdm+sGyKfAMNbL10ME=DrG5=4d5kvzdMxjNC22JLLr1h=g@mail.gmail.com>
 <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
In-Reply-To: <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Aug 2019 19:33:02 -0700
Message-ID: <CAKwvOd=Uvzw5_azQuSjUovSEDTNAaB=pTht1-zMiA8mqfmJ0zw@mail.gmail.com>
Subject: Re: [PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>, Catalin Marinas <catalin.marinas@arm.com>
Cc: Russell King <linux@armlinux.org.uk>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Tri Vo <trong@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FdCFi7GW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Wed, Aug 21, 2019 at 10:43 AM Nathan Huckleberry <nhuck@google.com> wrote:
>
> On Tue, Aug 20, 2019 at 2:39 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Aug 20, 2019 at 12:44 PM Nathan Huckleberry <nhuck@google.com> wrote:
...snip...
> > > +tst    r1, #0x10               @ 26 or 32-bit mode?
> > > +moveq  mask, #0xfc000003
> >
> > Should we be using different masks for ARM vs THUMB as per the
> > reference implementation?
> The change that introduces the arm/thumb code looked like a script
> that was run over all arm in the kernel. Neither this code nor the
> reference solution is compatible with arm, so there's no need for the
> change.

Looks like you're referring to commit 8b592783a2e8 ("Thumb-2:
Implement the unified arch/arm/lib functions").

Currently, arch/arm/Kconfig.debug has:
  57 config UNWINDER_FRAME_POINTER
  58   bool "Frame pointer unwinder"
  59   depends on !THUMB2_KERNEL && !CC_IS_CLANG

So it looks like UNWINDER_FRAME_POINTER and THUMB2_KERNEL are mutually
exclusive.  Probably could send a patch cleaning that up. (ie.
removing the different masks; essentially removing the hunk from
arch/arm/lib/backtrace.S from 8b592783a2e8).

> > > +for_each_frame:        tst     frame, mask             @ Check for address exceptions
> > > +               bne     no_frame
> > > +
> > > +/*
> > > + * sv_fp is the stack frame with the locals for the current considered
> > > + *     function.
> > > + * sv_pc is the saved lr frame the frame above. This is a pointer to a
> > > + *     code address within the current considered function, but
> > > + *     it is not the function start. This value gets updated to be
> > > + *     the function start later if it is possible.
> > > + */
> > > +1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> > > +1002:          ldr     sv_fp, [frame, #0]      @ get saved fp
> >
> > The reference implementation applies the mask to sv_pc and sv_fp.  I
> > assume we want to, too?
> The mask is already applied to both. See for_each_frame:

ah, under the finished_setup label.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DUvzw5_azQuSjUovSEDTNAaB%3DpTht1-zMiA8mqfmJ0zw%40mail.gmail.com.
