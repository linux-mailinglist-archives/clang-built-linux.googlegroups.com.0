Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHWN6GAAMGQEBISXK7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B2930FF43
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 22:26:55 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id k26sf4148334ios.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 13:26:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612474014; cv=pass;
        d=google.com; s=arc-20160816;
        b=a0hXIaWDx6015hgxdsWcIxlrztB9j318Nwa79gFW6w24yYhG0ZXjAXy7EUBVi/wqC2
         gWXeC9iXih041UM2TDlNvy2WXjzILlz+b3fYID7ww3IhXPKzPrQVecHLhy0Hp6wMs0/0
         4o4BLsp4URHEtXpXr3J9iILZQ6ioI0cvYINTtPqCGeblAmNoEWsFzbJbLnQKcsnoMnog
         B4szUWkgqGgjXo8dEa3ANrZvmUSGlMUkKiDbnge+et+FomBkTpSwCEz0D4q3+ua8jag/
         w6vRnCWzLSAJyfLnUsKbUD5xm04WdmYji+8JTDaaTWPzLQp39GWnVc3Hz/B/HKcSo3+w
         XJQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=FhRVuPfhTg+rTjd/5sI7RaUPagPeX5SYGECrO1Q/vE0=;
        b=Wl5a+KSFpAMvjxpNooUo8tgs3iKsHI986IgZJr0tY83ty6rb9mPM8Ya75BH+YRq76B
         5sPL3oe2e8yYuTd2HqBPsQhoJzPKHkqoCQNxr7wRoDIljb2PDzLayY3gvjWHnRUgLDTV
         D/zvY1Aflqf0YVxyiq+9JACkw18fXvvbMYPrmLVVapd0mY8PegNcfeDY9pBdWNGNynvE
         CW1fItB0utF4QOmsCQhnURn+UzGw8Cb61KNF5IvCwtTDCOXtOSHg0TU+xnwFvhjIqpkm
         QzZZQZCipHmzZLOLR8gYjVecumH17XmDXT6jakEMrWgU+UZ0Rvcx+oqabweWsv7fioq1
         9Vcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qbQmCRVQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FhRVuPfhTg+rTjd/5sI7RaUPagPeX5SYGECrO1Q/vE0=;
        b=QFkgKppOT2dsdNhetpAQThGSMc6gMXvpdL9fjH22oB/ygLpI5nZ4oF7LFkbwjR/Q//
         0aUMqEdQ8BlgNf6WbARWtn64+IqWooSlu3rXp10N6UCC439uMa+zC+iP+gShicKylfsF
         OUip2YHBEHjx8bTp1ifjDUY3Fp96tqqaBFEob7moJtocdtPGHtoSjnjVowpPhOuyIOKt
         6EA0cVTT8jSNQ6pLoUTkSgFlG4FYiGusSGSkjF5CLN2TAfAMdhWkN++mA9S1oGBjFUwZ
         jokOXomrBLi5J5pJxlYkrQ8SCTxy3FwUJ5XVahhFCvqcz0f/BFiaMM8WfA/I/cYFUffP
         krVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FhRVuPfhTg+rTjd/5sI7RaUPagPeX5SYGECrO1Q/vE0=;
        b=Jqa6nYjQSLGq26SlaPj9xydhTBe561qKV1UB5+RLMLXz+8WUq+OpRYht/Mxi1Iy0R+
         jb9NiE2EZYIbBkNsnQ7a30PE1Ycf9qepNDE1CFWOGERufcbQd58PPiusJxrd6hkBt+wn
         2pB4AG6ZP8jL/EL0ZP9ukI2B3vCUGvouVqUkYQfWZ8vFNByKSTI7eW9QapQu7RGLJk3l
         N9BaX+URugosHHmT/PttVAzti3alq1vhZ/M3BNGF8KjCG08IeL2OTI4rmaTrW1Gr/X/X
         d6ntx2KpFrl2YMkSBDM9SIy0RDNH14QS1O6ujcK78Y747TNCxmb3o3eoMU23FHeH2urD
         KOxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FhRVuPfhTg+rTjd/5sI7RaUPagPeX5SYGECrO1Q/vE0=;
        b=YbQSlXnoUmuDVc9IME84L5hDRf1lOeTQPdsLtoV/AT3HGLf5+DhDTHORKENQWKfTdb
         JOzpqCMsosb/+JXCyad3GG8agcuEyNqyvO+6hXxK2mDK5qzqQ2gzuoY3bxB8xQylbwQm
         Y7cXZovGX2R5BbiDny3F5UdsX9GduaoYTuGlybuPmSsFbKqX9Rj/CgmFu12um009FMDr
         9ECXLf6PjUutD2pXlpk6LJ0wa2Ych20HIl+mrOVn5og5JlxmZjoRaFsq7sxrBtRp9H5i
         rmSvd2kO1EkMBWLNkmTxlSwRn7JdJUdt8Qf4I3hur/kWpAaJCAeLoHfvfvh4xvQfJAz/
         tkgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nzHz75zGSI9dQr2r7z3/oszJsH+7kb8QiGNHlUTS4ZymdjLW1
	smKszQ54hla05MyD0UNRNho=
X-Google-Smtp-Source: ABdhPJxgrlp97JWQbMpK0DQGpvoWcOnDX1QMVJ4PSvfwBHYUd3unFFCPCVxhfvT+vZRPrG/mGBLZkw==
X-Received: by 2002:a02:c84a:: with SMTP id r10mr1486976jao.35.1612474014573;
        Thu, 04 Feb 2021 13:26:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ca4c:: with SMTP id i12ls918418jal.6.gmail; Thu, 04 Feb
 2021 13:26:54 -0800 (PST)
X-Received: by 2002:a05:6638:3795:: with SMTP id w21mr1495170jal.65.1612474014138;
        Thu, 04 Feb 2021 13:26:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612474014; cv=none;
        d=google.com; s=arc-20160816;
        b=JtbChX083BPCQNgOdG5uChMZ+EWP8HL+dSLGMvQj88k0Y4yzTYPqchMFF2BnPE4hWG
         w8gTKK3xhhd1bxwPFAyGKZI0A66TEwf4cc17dl6sSykN0yzSfU1/hCCNDtzXs3/9hmIm
         koQCjVwCK2N/IOi/Qi6uGmwvKJUDSY71mzclZY7LfODrZPGDYNxjlM54ZJDxf0PRFYTp
         Jwd3jHWRy3EaM9EPS4YsQ38Kb/17uM4ge/u0lwqJo7Ktot3IeWZ0l3KEgQyivf/OJQq/
         N1kE3a0ovvnx44B5VHo6puUAD46sddhwH8FUV8Mv7pBqfbd0KM6L4K39cGCkZTp86Swy
         GEew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QeaYy+WArPqiJSBWA655fKpOiYY64b6xuzEFq+Qmn7k=;
        b=XD0gk+GIBWE1nbQl8eu2q/Evdw8ML1ykAKfuHdGP13XQbEg0vwk21TXwlvlaZaN5OQ
         1M5cLZU9WdSHSgT+d33QzUqRIKAz5Na1KGIv2yIlvretfFMmEZbr5p43zAUneMg1SuDG
         pQT3c0lKMzCQhL3BKAR6/FRuNC+th/M/Gy3QIUfYJ6zzoTB+s15up96xUkImEBJhbA6y
         Z0pr5jY6qHgCFmZriVgzyuXKFpbTr+cGbjnsH2TRA4HvR0BXkBDOxVltdBrtiDMqFRzc
         Xg51IHkV3wuo9mAH8Nh9oghshpj9oBoVSnV35tNz6ZuKBdya+Wo2yCUPN2OgypAQqpI1
         UKCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qbQmCRVQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id o7si436132ilt.4.2021.02.04.13.26.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 13:26:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id z18so3974823ile.9
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 13:26:54 -0800 (PST)
X-Received: by 2002:a92:444e:: with SMTP id a14mr988950ilm.215.1612474013801;
 Thu, 04 Feb 2021 13:26:53 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com> <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
In-Reply-To: <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Feb 2021 22:26:42 +0100
Message-ID: <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Rachel Sibley <rasibley@redhat.com>, CKI Project <cki-project@redhat.com>, 
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jan Stancek <jstancek@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qbQmCRVQ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Thu, Feb 4, 2021 at 10:03 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Feb 4, 2021 at 7:09 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > We can move to vger+lore. Google groups was faster to setup, but has
> > many downsides.  I don't have resources to pursue archiving the
> > existing list, and corralling the folks to set up vger and lore, but I
> > can point people in the right direction and would be supportive.
>
> I can submit the request like I did for Rust for Linux if you want.
>

+1

I am fine with that move to vger + lore.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWPN_fjpWyQN1oW%2B0y0naf_iajD9TzkfyxyMmHTnaS9Nw%40mail.gmail.com.
