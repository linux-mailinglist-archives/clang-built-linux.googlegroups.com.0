Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBTMM2P2AKGQE7GJCIAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f60.google.com (mail-ed1-f60.google.com [209.85.208.60])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4DA1A6CF3
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 22:06:37 +0200 (CEST)
Received: by mail-ed1-f60.google.com with SMTP id d1sf9936482edq.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 13:06:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586808397; cv=pass;
        d=google.com; s=arc-20160816;
        b=NYP//HEhUehuA9VR841KC8ms5TrnL4sZkpWdQAG04EyK/yf+EGvPF25lNo3uS4kdEX
         UR8ibQlb3iqnHjdYKtjLWFJctD4yZwbV8cDadjXdKpWbqMzmaAAQR6hYWxtFcGCD493r
         Tl954rdLiiKA7Qjh3T2ci4Ax6D2cb1P1YjUTeuqMAqCCdA4la8vDF7bvPCs8OlF+WW08
         ZDQPD68wh6PLcx+38FigwnRr5ejO49DV301WOnwTaJdZ5S1TeOQ4u0kFlDHIsrr+MTPq
         222GWJ97T+itH45Zps/1OZxP5Y/wOWDhmEb3NJ669xi2hYiGhg2f6xEeTYqbaCxXaJGb
         0kCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=DDrK+0SWMqK5YccvDdUp56I2R/y1tTmy9N2PoCdWFXE=;
        b=P4lc+7dTwsAV8q37U81+4uS0sWOqCpbCj+YdqgJfC6ZeyhJAqV9HRjgJi+hrqowVm0
         xNFZmpSlzay4H4loLgyvTIHnH/6V7PQkaWkT1rYUE8k4OER+4/BwDa++KIbjOemeb4Hi
         paTpK2tE+GfUvKUpfgVckLUhRwPty9bhoD89/J+RJVpp9hgDwL+IfI8Vlr+Ym5yCLtl+
         PuhF3q6rnCMLubxbnxcaTxTAl0gbVe4wjKTrt0ejG9eAE7wren44FAOHJ6B5b0yaiAbf
         s0e8GNH+PKDLojfs36GnEpbrDZtF5KDRE3OWCtqLuBvdHT0hqgrv7bn4q2liOC3Fo62s
         NLmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DDrK+0SWMqK5YccvDdUp56I2R/y1tTmy9N2PoCdWFXE=;
        b=kTfFRWNvtk1ITuJuSlEgWg3VI4jbgN+ONmLavQdY/SfagWJSSgQqEAU5aeNZc+8H/c
         d3hVpJLK90wJukX9AwlIR985gYapiRbbsHp9Y4PmpB++v9v5IWvvwiIMfevYQ9860XLw
         4qIQosWlQ8OooOivMiYy3dRGUA1Z9Q+hLSWCB3tqri5qVT8kjfrCJ76tvlPLgrJNyYq2
         65YahlaoCxHF2ir6VnxxLYyxRzTZG9h6pKDYJk/6ihB0y/2Ky2d7+mqBQ5mZ89G02igI
         ZE137eq1lAyq7hYN93VbQ3QSRFLw1xhGqMmSvXc1UuPUAi5+JSpkqS6zSFd6+wdNhpWt
         xZ5g==
X-Gm-Message-State: AGi0PuaRH5ckKKO+C5mhRl9Ik3J37mlZTKQ17YhHlUgmLTE3ojZHRnpQ
	uwzC4lHyn6HK6VazzlM3Km4=
X-Google-Smtp-Source: APiQypLsAVfN2QlYKP81OAXewOisJfGg3lGjWPflB+b5VyphYq79x0UOtT8TTV7IL5DVdfcAyW1N4w==
X-Received: by 2002:a50:aca3:: with SMTP id x32mr18109346edc.368.1586808397225;
        Mon, 13 Apr 2020 13:06:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f102:: with SMTP id gv2ls614505ejb.0.gmail; Mon, 13
 Apr 2020 13:06:36 -0700 (PDT)
X-Received: by 2002:a17:906:2daa:: with SMTP id g10mr16382431eji.341.1586808396710;
        Mon, 13 Apr 2020 13:06:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586808396; cv=none;
        d=google.com; s=arc-20160816;
        b=Gx1rfnYyFHvhUlvRfrm34BFTGIU8G0agTry4FS52I7+Y//9J8l72ME7p9Z/Yv0ySHw
         cIMxr4+puMTjgWJgrTtXLFOpeX3mA89BqFuqqCz2EqMirxtKlVXNdsPTEG1pdt0M8ZZk
         YXxtzG9DoFXuuVxv0/iuh6sel61j3syxwWU0Gcw+2qblpnyDv63SGvlR/qpdDkRbwAa9
         d+1osvtQ65LdPj8PkYsoQb+ha/dU3HGsjF0Yv5JLp3Gr5JCJF3nNQGU8Zxil0dm0E183
         UI98hDZdaXa8IjH4xp+dgzGnVP7/dSeuLBE+mhsROK85ylp+KPs51prtdgdEZiLkZkrV
         U8bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=lyUaSWzJW//VWeDUf/80b46NLxHfWOcdZGrHNeWbJso=;
        b=NaBVidAnAMIWuevoKn00iLp9CVolGNO6WXKwbbNfLQCWrpd2c64sqmAaQwPgv/vIlU
         j71DjdBKBXYTQKEFxYbKEehsHmWOuQ5rP5NGF/2A4Om9B2BT0IO+1Yy7fEzpElvsmw3g
         X7FMa05Ugg1TE52LTNPE1GB1pmU2iDm9ys9Jo4PAMrue1Mu9fBBpeDbxgCGvTQwceCSQ
         YF+wxP7IBRp7qpPdH+NOi4H9J7fqYifPWMBDZinUF3rNiRlwB3N94MuNyVub7JKNQaZm
         3gsPxyjqmW9i/yYPHHuuroWsqGB7lWyFTmeY36LYlyUHAJOnV0z2ZhtXUB3OGsFuDN9/
         xJTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id a41si356307edf.1.2020.04.13.13.06.36
        for <clang-built-linux@googlegroups.com>;
        Mon, 13 Apr 2020 13:06:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23992669AbgDMUGdVs0Uc (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Mon, 13 Apr 2020 22:06:33 +0200
Date: Mon, 13 Apr 2020 21:06:33 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
cc: linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Borislav Petkov <bp@suse.de>,
        Kees Cook <keescook@chromium.org>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] MIPS: Truncate link address into 32bit for 32bit
 kernel
In-Reply-To: <20200413153205.4ee52239@flygoat-x1e>
Message-ID: <alpine.LFD.2.21.2004132103080.851719@eddie.linux-mips.org>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>        <alpine.LFD.2.21.2004130736410.851719@eddie.linux-mips.org> <20200413153205.4ee52239@flygoat-x1e>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Mon, 13 Apr 2020, Jiaxun Yang wrote:

> > > diff --git a/arch/mips/kernel/vmlinux.lds.S
> > > b/arch/mips/kernel/vmlinux.lds.S index a5f00ec73ea6..5226cd8e4bee
> > > 100644 --- a/arch/mips/kernel/vmlinux.lds.S
> > > +++ b/arch/mips/kernel/vmlinux.lds.S
> > > @@ -55,7 +55,7 @@ SECTIONS
> > >  	/* . = 0xa800000000300000; */
> > >  	. = 0xffffffff80300000;
> > >  #endif
> > > -	. = VMLINUX_LOAD_ADDRESS;
> > > +	. = VMLINUX_LINK_ADDRESS;  
> > 
> >  The CONFIG_BOOT_ELF64 cruft right above it looks interesting to me,
> > never have ever been used.  We have had the current arrangement since:
> 
> It confused me either.
> It's only used by SGI so probably it's time to rename it as
> BOOT_SEG_ELF64.

 Well, as seen above the first assignment is immediately overridden by the 
second and the rest of the conditional are comments.  So as I say it's not 
used ever, not even any SGI configuration, and from Git history it looks 
like it has never been.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004132103080.851719%40eddie.linux-mips.org.
