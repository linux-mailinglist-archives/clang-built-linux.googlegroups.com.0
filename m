Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKFZ7WBQMGQEMTI3NXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAB3366256
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 00:58:49 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id a19-20020a194f530000b02901ae58050516sf3452967lfk.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 15:58:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618959528; cv=pass;
        d=google.com; s=arc-20160816;
        b=aqC5crzc3WKWQOHvWCjmch3qj/4potXL8f3jGgKREXfRfwhcciasW+1Ur6PuERfgbb
         tRvznBouNx7HRd7Gv4Atn4//W3zEBSo10E6Gkos1MrxoOas1RX67jq91ST9jmBAu/bY9
         QvPwhmehSfYhGlV+QXwrX/TGFPbVkayam28o0Im1WsnRjOPpzUd2CmjUI/wsGmjk+eJl
         d8KDhPkT/69R74f0XpXrNH7quDUmYd+esMncvvhzWcyCfuxC7OLMbzLW2CXiV9cGZ3p5
         +3KHCW18+uZTVYX8u0KdgyftTbVLWDGJ9sh7UUrVl+bDXcJIIEUIPvnhT+8sxd1ZjjNB
         +/LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0EDuc29lmGmWiWDLmq+TcpF2zA+z6K7rqbBGAYC/5D4=;
        b=Tg6BGtHnQAuoMcDdB79Xws+QJ4z0E2hyAHQyO0ZB1QGXWshlxpD8sXly69sACuTEp7
         XO4Qvg5Mdwo8yuZehdTMFyxWdrbnbNwP0tMaO8lZ1to8OdsvCuZBsRYDjFiCJf2GwKPa
         gd5W8gUzYL4Scq3KxDJoN4QxGzTgjP14f/VrZfaq0B7fGw/GLx3EHMad/bMbZjJGrL+G
         CVlZhmiRyUQhwwszNbyEM7pWATDxSOBNhHa2RC0X7Z9pwcj0tfAQ/Q4JYRgmO3FByIuT
         JuwF+tnmCb9qSCM2u/b6hth6M5hcc2jsyQsOXXa/Dh4BrT0IWLI8FoRQyxv4Z6kHg/ag
         jsrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XMVQ7EZX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0EDuc29lmGmWiWDLmq+TcpF2zA+z6K7rqbBGAYC/5D4=;
        b=VIeKbofHFjVs5YWSCSYXyX+tpTY36tk8VQGkLoRa9FoKNr0iEtS7NkdZGO0IR5jW3I
         sqxG6gy7WqqD5qSSqHUiC+PPVnuF7HbW3Ca1gDAnjoOA9jK/LStOk+s6k9ljiiAgZhIC
         DzO6+QilM+cuS2bKsRlpGQw4H9ElslR59h0rr5gJM9W8D5ZGlnP+ENCjjRC9Ib0LyHxo
         CZl17agKldlOklNVWB/WO/r2HFWg/6dNhCz7vpWh2Z1EgIaxY48a+6sX93GaxORteSiB
         eTGhPogSlzmt1MlDlk0+gNo0Rbtj2n6lbQ50YXbrgDiIsb6S+/4Xdz649WgL0n2EQNeq
         W21w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0EDuc29lmGmWiWDLmq+TcpF2zA+z6K7rqbBGAYC/5D4=;
        b=h5NQ4fiDpu+NcCGzVBwtHlCDUarBUVtrURhhlgMyOnsikyANKEgtk9LgLKtyJI2j9U
         4ctSSv0ljWAOgaOAHh0Ct8WUUBCpp3AWTwZ0Vj9DJltBEBrRMsYGfJ1jcuPx8Ts7+qTR
         xyw0Hbpg0tQz9yYvpnEvt5njkpHoeO3W1zZyol0KOsIxufskrmavOzAk+rEuwnWYhXPF
         qlHlE9ntRv7DKm2N7iyvcF/3CzxbZUM44UtBwIRmNWclUV4Oi3w3PbMo5P9GB+Uswh1g
         9IFYp0Fry1LeXstn7qDGDMwx3xitVmXBBlXeNAMTi6rpDGqwEUbRt3agjIkouMlsxGhE
         KORw==
X-Gm-Message-State: AOAM533KcYOVJZUPVeOQzUkhzctPdd1WtrmRji9rb5lEgNrHbCHme2ZZ
	lZGCvTpuwWzWborU5DeMgdo=
X-Google-Smtp-Source: ABdhPJz/0xj2y8dUjReYh5jKimu9rS8pbNwQMGox5rllhGRYhQSyKSMgmkApBnrWBoEeMzInhp49Gg==
X-Received: by 2002:a2e:b16f:: with SMTP id a15mr17563029ljm.2.1618959528647;
        Tue, 20 Apr 2021 15:58:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls272575lff.3.gmail; Tue, 20
 Apr 2021 15:58:47 -0700 (PDT)
X-Received: by 2002:a19:ed19:: with SMTP id y25mr9660330lfy.44.1618959527654;
        Tue, 20 Apr 2021 15:58:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618959527; cv=none;
        d=google.com; s=arc-20160816;
        b=poe4msxLVacQSNl5kPWLgfxwTfBGwfGt9stJcd+5pEoGeaMRVyvaS8JcNgPU78majN
         jw+CYrZLhl4601KHMu+YKVFuzAy/OCoO+kLLLCcrx7vmpiwXpHIzUE83IAKgww0wEfvp
         cCpmbN/GaDUJyf7BTn9fYqmJmxNO4rc6KUU9ki4/EKrN08xg2+2IOWOsK6vUNyFliBKl
         R1n/BRvO8foJzKoZMsxIVbPN0l1kB3H4271KqBbNPnt65mRrPDV8dVvh+Myyv2g3+zvc
         Jy4u/7JcMpw+gT9UHplXpZ0Ud7HXOYY+iUC2F3NfgH39o+1z+6T4icV/rJ67r2Btv5ut
         PDjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TOGjcz7X/da2vlQcucDwkjw91MaUbIfF1kNjU6kRW7s=;
        b=zF54RawtYcIo40SeJ1sZmSOnWKAwgGvmIL2ULY/7Gbq9foZvWBfP9pTEC1fnigHX8V
         bvfdirtEaw/m217e8I9DEvG68X+1dCTo+pX4whuY5NJjHA10w4wdqp71sg7+l+x+lBiV
         eTr6fOEbU0Y83TkV96ScDxdC/HQ0jFl2qDzimK9IaOeUbsZhu0eEMDbGrutr0VRLQddw
         7Nk0WKIvQKSr9nv1kNV47DxPBZk+0+GJHCJOEZjWjefWwr+qIjG9JRw3nhFHKpAUeE+w
         xWpOKDpT3FciF7wf2W7yYfuhpla1q0QC7IH5xQMfF1IC+jqQ74PaDaz/K77HKQrg/RgT
         /vRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XMVQ7EZX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id n10si21792lft.1.2021.04.20.15.58.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 15:58:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id x19so33542977lfa.2
        for <clang-built-linux@googlegroups.com>; Tue, 20 Apr 2021 15:58:47 -0700 (PDT)
X-Received: by 2002:a05:6512:985:: with SMTP id w5mr17201660lft.122.1618959527235;
 Tue, 20 Apr 2021 15:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-2-samitolvanen@google.com> <20210420181412.3g5dsyhggxnvif7k@treble>
 <CABCJKudO9Ovuih3ieQ70w8y744Cg3tPnciVBhCuuBPuhq4i3Xg@mail.gmail.com> <20210420225550.szbmrpwv6awd7tp5@treble>
In-Reply-To: <20210420225550.szbmrpwv6awd7tp5@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Apr 2021 15:58:35 -0700
Message-ID: <CAKwvOdkOu4RSw9fwr_qdh7VLHjGD4nLjMZMZxzvpJUqjsWFBww@mail.gmail.com>
Subject: Re: [PATCH 01/15] objtool: Find a destination for jumps beyond the
 section end
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XMVQ7EZX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Tue, Apr 20, 2021 at 3:57 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Tue, Apr 20, 2021 at 01:25:43PM -0700, Sami Tolvanen wrote:
> > On Tue, Apr 20, 2021 at 11:14 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > On Fri, Apr 16, 2021 at 01:38:30PM -0700, Sami Tolvanen wrote:
> > > > With -ffunction-sections, Clang can generate a jump beyond the end of
> > > > a section when the section ends in an unreachable instruction.
> > >
> > > Why?  Can you show an example?
> >
> > Here's the warning I'm seeing when building allyesconfig + CFI:
> >
> > vmlinux.o: warning: objtool:
> > rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c()+0x149:
> > can't find jump dest instruction at
> > .text.rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c+0x7dc
> >
> > $ objdump -d -r -j
> > .text.rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c
> > vmlinux.o
> > 0000000000000000 <rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c>:
> >   ...
> >  149:   0f 85 8d 06 00 00       jne    7dc <.compoundliteral.4>
> >   ...
> >  7d7:   e8 00 00 00 00          callq  7dc <.compoundliteral.4>
> >                         7d8: R_X86_64_PLT32     __stack_chk_fail-0x4
>
> Instead of silencing the warning by faking the jump destination, I'd
> rather improve the warning to something like
>
>   "warning: rockchip_spi_transfer_one() falls through to the next function"
>
> which is what we normally do in this type of situation.
>
> It may be caused by UB, or a compiler bug, but either way we should
> figure out the root cause.

We probably want to creduce or cvise this.  IIRC we still have
outstanding issues with switch statements with user-annotated
unreachable branches not getting eliminated.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkOu4RSw9fwr_qdh7VLHjGD4nLjMZMZxzvpJUqjsWFBww%40mail.gmail.com.
