Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB4OU66CAMGQEEGZQ6MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9EA38024F
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 05:11:47 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id l35-20020a635b630000b029020f1edbc5dfsf18316720pgm.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 20:11:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620961906; cv=pass;
        d=google.com; s=arc-20160816;
        b=XtsZuFiZAgsrxBbazXdcJ2S7ak3bNtji0c2MKGF8eqpV1IGpM+yUOtPSOCF9zSm8Xh
         fmRHkA7ChUFJYofwKmOzgf1BPLdoKkIYMPMJJAIq+yVTMoxHz8jFy3PHzUXyV9gyVCnd
         Li8L66q5H67XeKtn/R644uSEeipbAgD72+IUI+YwHqaQYPROt1FmehEY5jV+0/RDo3Jj
         IeyX+NvGtf+17/ehDoTVPPuQUDzY4q8KYaL6tUzOKe90ea+PAEbNpv8D2Nei1VxliUKd
         EY/9pqYJdte6oZi6jJkjrWhii9xTFu88mZd84bojGWsdgCKPCru8CNILoD3nyaXrwk2O
         +TrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=kR6XiQ2h4qSLsxo1DrJXi4wqtv+eb2oJvPN9PP+U7M4=;
        b=XzorUOTP2vPPhTOow+A6lgFSrvoP5510etJpXAhFgaaSLh9OVo1eMc530JWxUrrAOV
         2sy2BjVPLw7Fd5yfCM7rNBtM/t7RlXksjH8O4VQJJiVIRjHHtFDLvqqSB3BwK+MY9NWp
         IiKfAwzrIPb8i7q7RwDoHl/OoxYXv79QZnw9SESWDcqf0umIRa5Ag6LPVR8psqt1ZnMR
         v5U+z4E6BQw8sbjME1mqTAqhuVlM5Vn8UmmvZvfCAKNq2F9B2ylfzJNFbit9UjSsVaYR
         SCoIbPA8NkkPN85wjwMr45NNtAcrMXVI4Kqqw8iAbTq6VZOE4xiFsij1FyZjcF2zYaDF
         iywA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=D8RoOex7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kR6XiQ2h4qSLsxo1DrJXi4wqtv+eb2oJvPN9PP+U7M4=;
        b=oVdMtBJEvSyHvYVkt/gQ5CmcPI34Sp0RhmJRr62G4fW6vJlnuDNVRt9QenYoH+J0P/
         P9ikMpwv1nMoG1lxvQJil1Y49FhRyYQDrFCSN+ol9A13exjmTUMTCJKVCMEZLLySjwu6
         K3z2yy7tJPUU37A5KC3WU91i0jWBbzgb7UrIRDThdGT+FN1DNNhOdyG58QIGmXbhUf6h
         Fq9oBPeL7NxIgncgXtfodZxfSvT9wzY0k33zyN5LJP/dbltYx1xw+e9wHyiwdw3YEP3r
         mkKeuDTzS9JZFqtQ9H7D8geAOFtfn+NC5gLfQXa9j0eVShiN4TUB7R/88cLvXUFS3paf
         WEYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kR6XiQ2h4qSLsxo1DrJXi4wqtv+eb2oJvPN9PP+U7M4=;
        b=Ty4WmFI0JBllJ7++C7gj3hkprmCoks+EaHEPIGac9/oz7eN6TIiEhItYzbhy8csNhn
         IucVhGpPtE7QQqMrpKQxQBaCN+xcbn2w4Yqj+RdXL4boAnxU8V/9uNix0l2e3wfUOE9a
         UzUnm/ua/encM846nlhlLZkL/fedFGWfCsRyrtMHosCM3ozyka8XlVQ17wf7Sa4aMBi6
         f3wmqNxLyQhYA9MlxPBAHu/arDj5i7wRANN8/qGHaw1hDwbfSiyOuk0yHSrCDTn0U/ur
         ngegAa5JjntasgfL/qszaAQnIfOnQ3UGbjobJEl3sUkUjmxptGhJDMi9MzaNjeDCqQxX
         kkIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dulJFForikCPKlAZkGfYh3AmuVdSCDp+fJ3PDjwKUWux259wl
	R6x7MxOmtudYt1ZPtFuVHaI=
X-Google-Smtp-Source: ABdhPJwH9IgPfuKhJo1vP+JCGJvmOIv1Jc9OudjlxtQhqEJx0NPYacneQykFp6gfdY/CdjueLuQKKg==
X-Received: by 2002:a17:90a:4898:: with SMTP id b24mr8649217pjh.110.1620961905881;
        Thu, 13 May 2021 20:11:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7e1c:: with SMTP id z28ls3513752pgc.3.gmail; Thu, 13 May
 2021 20:11:45 -0700 (PDT)
X-Received: by 2002:a63:4706:: with SMTP id u6mr44181630pga.152.1620961905303;
        Thu, 13 May 2021 20:11:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620961905; cv=none;
        d=google.com; s=arc-20160816;
        b=Y/bMPD8lvFOtV2tk946jebRHd0vvyuxSKL+Xzp/bajgGWwfMe0HRi2yA2PiVrbAGYN
         SwZndckj3N3gqqhJrYFewPH9RdsXNcyZ9T3gf4xHQd8oDmOiuD+PKU4qa5WLR1L5hJbr
         uy8ul1RsKaoqx8svOolHcscQFGOs3WShbOZ/E9OnZ1aYiPfm8xKK5cYWdM6FMGUKD7G8
         BXKQXl4XVIf9NZOpHx+SV3ugtes2o4RFyoBUjtccgHPrYsQTbzf91nI+8DB+WBYMdrCR
         rdhYi0oiPTFCWISDzX02jD8I05pwh6lXnvfAxa/p0PjVjofz1Y+dvSf+Aig9ac/C062Y
         BOiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=pbbpGUR6yrf1GL48OQICvHJRZXOz0W4ICJk5HTCek/0=;
        b=KdAujN545v+EDOWYkFF9UVz1ERCBSofVdooQrFeYsZQsRjulgYwr6hwLnsNYbHgYba
         21Puv4OCLwoGE37XsqVCvpe/oh3326+w8uybq1zSt4iWB/0PgX1G65Oy0/xSNu8EFuL2
         2D+dqSw1wxOys2e1rTFx2EteB3moXqEKEB/F37sIyGP2hvwaeNCI2+ybGKfAiiP2Y9uc
         qa0aP1Yquzl5dwvOiydC34nb+pufyoSPd0rd7iBryj+zwVlNJSwgLhYECfVBk3gqfy4S
         u3MM2qmt4vcCpZqOQQl6ygoJPuJ+e8LQBs3Q2FX9ladIQfN78lhCiVJtkqykmyvT/Cb5
         /16g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=D8RoOex7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id q59si876241pjh.0.2021.05.13.20.11.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 May 2021 20:11:45 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 14E3BSew021815
	for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 12:11:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 14E3BSew021815
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id gb21-20020a17090b0615b029015d1a863a91so947073pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 13 May 2021 20:11:28 -0700 (PDT)
X-Received: by 2002:a17:902:bcc7:b029:ed:6f73:ffc4 with SMTP id
 o7-20020a170902bcc7b02900ed6f73ffc4mr42803945pls.1.1620961887766; Thu, 13 May
 2021 20:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210511044812.267965-1-aik@ozlabs.ru> <20210511112019.GK10366@gate.crashing.org>
 <1795b9efa40.27bb.1ca38dd7e845b990cd13d431eb58563d@ozlabs.ru>
 <20210511231635.GR10366@gate.crashing.org> <80ae1561-ed8d-cf3a-f3bb-d89cd07bfc24@ozlabs.ru>
 <20210512102640.GT10366@gate.crashing.org>
In-Reply-To: <20210512102640.GT10366@gate.crashing.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 14 May 2021 12:10:51 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQkDDVigJbPKsPEcqQNz0z0Hc0r8h22MGB=8vMxMiMuDg@mail.gmail.com>
Message-ID: <CAK7LNAQkDDVigJbPKsPEcqQNz0z0Hc0r8h22MGB=8vMxMiMuDg@mail.gmail.com>
Subject: Re: [PATCH kernel v2] powerpc/makefile: Do not redefine $(CPP) for preprocessor
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Alexey Kardashevskiy <aik@ozlabs.ru>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nicholas Piggin <npiggin@gmail.com>,
        Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=D8RoOex7;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, May 12, 2021 at 7:29 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Wed, May 12, 2021 at 01:48:53PM +1000, Alexey Kardashevskiy wrote:
> > >Oh!  I completely missed those few lines.  Sorry for that :-(
> >
> > Well, I probably should have made it a separate patch anyway, I'll
> > repost separately.
>
> Thanks.
>
> > >To compensate a bit:
> > >
> > >>It still puzzles me why we need -C
> > >>(preserve comments in the preprocessor output) flag here.
> > >
> > >It is so that a human can look at the output and read it.  Comments are
> > >very significant to human readers :-)
> >
> > I seriously doubt anyone ever read those :)
>
> I am pretty sure whoever wrote it did!


Keeping comments in the pre-processed linker scripts
is troublesome.

That is why -C was removed from scripts/Makefile.build


commit 5cb0512c02ecd7e6214e912e4c150f4219ac78e0
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu Nov 2 14:10:37 2017 -0700

    Kbuild: don't pass "-C" to preprocessor when processing linker scripts




You can entirely remove

 CPPFLAGS_vdso32.lds += -P -C -Upowerpc





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQkDDVigJbPKsPEcqQNz0z0Hc0r8h22MGB%3D8vMxMiMuDg%40mail.gmail.com.
