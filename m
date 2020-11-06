Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBPMHSX6QKGQEBVO4MBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB172A963E
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 13:38:22 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id v12sf481025lfo.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 04:38:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604666301; cv=pass;
        d=google.com; s=arc-20160816;
        b=IAyQZF7aZUjJ5yB5qT445o6YM1Krl51g2MSqVgLZZ5uuBwQ/c2pJkgubuUzOkfM+no
         LNp16+G3NgMNQ5GaGNdhG2LJFmJ0mJuoDAbr0Zszb8kH23M3gCBllHOA0FFNEXnP0AzD
         MxCDute7l3Xg0rNV9IapRnGYcHvfl1e8dEhypk6hIThw9s2vMOnC03TCE+jJ3D80XMKn
         txm/C4/lH87IudteJwU8WvLrEOms5jpIM5rw25NXTsjFRw4MrUBmOAGAD7FvuvAz10Nr
         F7APqdLD0sysaEkeU/EBDH/DxPWys5PiPRhJSNcJdB9WVS+0WvYaZgD1nvbqM9qZ7jH/
         uiVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=E3pRopOBOO5qwampdaL+uo/IFkqrsurTwIns6IMfb5M=;
        b=jPradkh+Dxf9Xgd0gLYYkyGh69ymqVzrrfMr8QAO5vnBbce5x40vBlj/WPQ1rCaAPg
         smDvqc1MsfGqQHN1b1D3G3Jrpre2zv/dyCqaeObLhjML8A896iX3/YVsnOMiqDrOTUFo
         a/pGuf1F4S/lyeXYsZII6kt/83fdswmT96NAswn40/Yv9Qqp+bLiqkBNmJhc1BkbN2D6
         4XkIXSxsS3rEDZQ6PvjmkM62MkIXU10DmTKz9AOX0BUC/fq7hhmtuLohR/CS9Vb7sLjt
         MTeQywdI0NEmnbwfYWWKu8fxbnfiDYUfJxeZiTUL6Fq8xqZz1SVVMpyL96Baf5LI6yP3
         /Hvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WAJEZpww;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E3pRopOBOO5qwampdaL+uo/IFkqrsurTwIns6IMfb5M=;
        b=At4T+L/2KGwLlgyh9s5tmqhNg8N4gdCQMeQiCjx+NqDv7t7ho7T15Z17e11P9gu594
         w3qB8TE5uYHCT/TZ5FFJ+37y7JyzTbxodA6iVplZuvrwCQpCOD4VUnUmw/0txdTBjgDR
         ylErwBp66h7CFzhcHIvMNVGiNVG2u4tqFOYa5Ln2uDJgj2OTMnjjb7k427ZqPdqvcEZ/
         s99IWQ29JkY2lYvj+EoFZttKZw/OOHqvphBoeFMSO3cBqdrs44NDY6ChLPKF/2sX4aWa
         xtlgMClqb9dAenn2w1bTiEsjCGhV43ElgU5IlLvK2fg1PZPX6BG8GkyZFqmIj0mr4set
         Pscg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E3pRopOBOO5qwampdaL+uo/IFkqrsurTwIns6IMfb5M=;
        b=XRo8tl+WALt+uNtOpepqR2LrTGtsrlizv0OOjOxhcVBUabe1zCDJsJhMQKNIY7Ztmf
         Tf+QRhnK+DiNGQzW47VwkyWucuNMYAfhXdcjTObc7o+k4vnr2iTmjAa7P32N2QNN3t6i
         w2gjyJ5gU1Oh/IZkTizaul4F6lIG6cG6Ichhg+YrKC5mUGIiuM4klzMhq5jUXSyyBAT+
         Aw/6tf9k1ZG5JUMU6ipcnqq8Yp3JEV5cB4mqdUAirJ57RoSQNulfrMioIG42uLjYTg1Q
         i8i1pi5PGOFVhxeHyieZljpxRj3hDn0XbBKHCFoKS3Wt7Pp/3P+v55X/YGqYCqzkDGaf
         +pvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3pRopOBOO5qwampdaL+uo/IFkqrsurTwIns6IMfb5M=;
        b=JBe8NV/7FIfksck1XJ43M4F82nUxX2tdtv/XF1fJNfe+sPTExr9b2pkYStIctvsMMz
         Il6VpVDopGeQA5tj3lPzdT2USmtZHjzBkgqx6UubWMpBbxitQ78p4cR5npTAK9ypVFHR
         aQxkHYrfAYgpRXKgFYmGC/uoVZFNR5EI0BfSZOfH/s0MWDv08gJGcM/Q8qIYsj0yiLz+
         1U6ShpIXxux+P3LN3Xw6+kxJ3XbsIANIU1fFPpReri0EzYwHDb8mHdnQYvnOLGcxF5Km
         HhVKjaL5ZmqTJYkw4fpayEONMFZnqk0Q4GEeOvZpR0Mboz4As2E39gw+S36WpyqJzr+c
         DySg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533S72iqjrl4QwJUAAqP8nDBYlt6XIvgnrqUowoYzDPPBoglsMnU
	44ubQlvAlDdHzGIXDsptmbI=
X-Google-Smtp-Source: ABdhPJz+gTir6a3nEHwQobkElyrYu2tnAjGHIp5DzqHb2YGbbN9kNy4qi8AzYUXMpmPldtSEDo8w4A==
X-Received: by 2002:a05:6512:2013:: with SMTP id a19mr797008lfb.410.1604666301796;
        Fri, 06 Nov 2020 04:38:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8e89:: with SMTP id z9ls222743ljk.11.gmail; Fri, 06 Nov
 2020 04:38:20 -0800 (PST)
X-Received: by 2002:a2e:b549:: with SMTP id a9mr619241ljn.405.1604666300616;
        Fri, 06 Nov 2020 04:38:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604666300; cv=none;
        d=google.com; s=arc-20160816;
        b=grvFEiBCJSPar5BlJNTUHJ+9ubdYLRAlwxLeC1B2o/TQDUmneG159fg7YuDiXPdmtq
         KOQ3VeT0XtktVfKPYv0JP4507O2/ICapuDEreTA72CygD/R+wmKubMfW2z70sIY7Nc1Y
         693HcTUYiU/Kr71QhWheHCeGGQeemexDEehMa0e+lCV7gFOt5qYRNjFFU3AIXc8Dcqu/
         NWpJ6vKmLx0Z4OqPZ5mckmMn8BmEiwho5eJv96lw99vO2W/sWITKRp78xnT2c5GJR7gN
         kXSevp946MKaSTsM059zrJoiVuKF/uWCZh0KzqvX4+vPo31ObRw4u8YGd4dmE2fRlXdu
         4ytw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=oJeBlvI7pAnkAsw70khux5ZoE/B4WwO2O42ItTpncKs=;
        b=DiyH5swl09VFpkEjket2FaCCOexD0UE6ojO6Dq2wksfCMuMGf2qxUeNZm9ZYxus5EW
         0PCUZhwEpU2eIzl6QHIxSkeGJgmtQAuND8Sa5wU3EfgFskDUGGNY0VU07Xzh88+TqA/Z
         fsd/tvasH60Q9Bg1WGjn5kvh5Y8osHsSzTHg9IrGzNmE5j2T0ECOa9zeasfL5Ot2rimz
         YNuuy/Hny4THg7MQPdUAWuSzAtGx1LHe6LYeEYT82m2OLwC5K09T5HxWcC/FEJeMuMVt
         9ciLmn6rWYfTnwFmSvCvCua8Davli0DKlXyQ2kGIMmFClU8P/2G5N7gY5giKYvjBJEhQ
         6aow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WAJEZpww;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y11si47840lfg.7.2020.11.06.04.38.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 04:38:20 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id w14so1159777wrs.9
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 04:38:20 -0800 (PST)
X-Received: by 2002:adf:dc4b:: with SMTP id m11mr2375463wrj.328.1604666300066;
        Fri, 06 Nov 2020 04:38:20 -0800 (PST)
Received: from felia ([2001:16b8:2d20:9d00:e580:adb5:1ef:950d])
        by smtp.gmail.com with ESMTPSA id j9sm1924110wrr.49.2020.11.06.04.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 04:38:19 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 6 Nov 2020 13:38:18 +0100 (CET)
X-X-Sender: lukas@felia
To: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Balbir Singh <bsingharora@gmail.com>, Tom Rix <trix@redhat.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
    linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [linux-safety] [PATCH] taskstats: remove unneeded dead
 assignment
In-Reply-To: <aea9d12d-88ee-f262-4328-03993521668f@codethink.co.uk>
Message-ID: <alpine.DEB.2.21.2011061331250.20338@felia>
References: <20201106062210.27920-1-lukas.bulwahn@gmail.com> <6ab2415b-0642-16ee-4be0-c909e07e7565@codethink.co.uk> <alpine.DEB.2.21.2011061126130.20338@felia> <aea9d12d-88ee-f262-4328-03993521668f@codethink.co.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WAJEZpww;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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



On Fri, 6 Nov 2020, Sudip Mukherjee wrote:

> Hi Lukas,
> 
> On 06/11/2020 10:31, Lukas Bulwahn wrote:
> > 
> > 
> > On Fri, 6 Nov 2020, Sudip Mukherjee wrote:
> > 
> >> Hi Lukas,
> >>
> 
> <snip>
> 
> > 
> > I did not try but I bet (a beverage of your choice) that the object code
> > remains the same also for your suggested patch. Try to disprove my claim 
> > and possibly earn yourself a beverage when we meet...
> 
> Lets decide which beverage.. ;-)
> 
> Using gcc-7.2.0 for MIPS:
> 
> original:- ab81d3305d578c2568fbc73aad2f9e61  kernel/taskstats.o
> After your change:- ab81d3305d578c2568fbc73aad2f9e61  kernel/taskstats.o
> After my change:- 0acae2c8d72abd3e15bf805fccdca711  kernel/taskstats.o
> 
>

Interesting, can you share the diff of the objdump before and after?

I bet it found now a different assignment from variables to registers or 
so; with the beverage at hand, we can then discuss if that is effectively 
still the same object code or not.

Thanks for confirming that my patch here really remains the same compared 
to before, even on MIPS :) I only checked x86-64...

Lukas 

> 
> -- 
> Regards
> Sudip
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#148): https://lists.elisa.tech/g/linux-safety/message/148
> Mute This Topic: https://lists.elisa.tech/mt/78069241/1714638
> Group Owner: linux-safety+owner@lists.elisa.tech
> Unsubscribe: https://lists.elisa.tech/g/linux-safety/unsub [lukas.bulwahn@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2011061331250.20338%40felia.
