Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ6P4TZQKGQEHRZJRCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F55619002C
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 22:19:00 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id t10sf5485697uaj.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 14:19:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584998339; cv=pass;
        d=google.com; s=arc-20160816;
        b=LoKjEiboIyb7dJMnVMSwVtKZrghSNhJpsgS6QqgITduuSIn2Mu4XExjZpfv0bcvDhl
         nvMShnUm+m19rqQyd91qXq4OLOfWccKk3YiEvg+XkIHqscGnDBZxt0lpS+34nogEdu5B
         8YzrZcDpU1C9sRjO/HsxTneuGZYjhfP6KO5jmZHLG8/2LlEOVYAPd4PxPfc5DK/TlgUR
         JBd6W8LtEaOUpXWD4GPB9laY145B8fnA4PqCr7JqXMtc4s8LSfdkwPTYa5XlpXPJtjV7
         sOpo1udk/B8o/gPFehzfqgsvyk0laqJx3sTz4eb6G19OeZNMXMo0O+w9rI1VjLkAXZIz
         dE4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fbZ8bM/wviYGy/cdUXpjR7q8P6urbjnxy48ViTCWxp8=;
        b=UQeF8eXzW6rVeYt3uKnpgUkvKUUy/o23VnnnCjfa4Hy7eAxx/Hst05/WxCeqSsL5SZ
         nH0weAvMdeYx6aJ57oAMA0XbPmLDp0bB5HjX8/vBUcxQLFgFcbELnyXFxjRhjF8mxPxc
         6mnSCF2UzELc2r9BWcw0v+Pq1WiR3/EbG+w/4Nfs76FiRnc4GQMzhQBjQ3sd/u3CJH96
         12sx1GqRQ+NIHWn1CpkjLR2YWvPM1PMwIDA6U4jkBCnL+GvpsOogSj5yXDl8pPtateTr
         NPtxvTHISDRFPG9hO45MYz32yfH5XFytm30DdwNLcE5bGoomjA3al8ukgd9N6UEX0anw
         cpug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nfPb2+aa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fbZ8bM/wviYGy/cdUXpjR7q8P6urbjnxy48ViTCWxp8=;
        b=YHY+O4lWURq6JLKx0dJZZoZrSaWcb6v9FannxZTD35ba8IB/hONHHRJZmMsJE1hOme
         tRiZ8wiHUrEcSZSyc9L0hjZ8SJauNAdsWsG9hdaYxgqX076oPwLphJ53FQNLLjUbpAAB
         ra7nC0BussNA0TXhf6yWIboWqrb6YEDASMjXFyZZKKo1ypBNzKmLtp+Cx2cKvpY9bqSN
         IR1iqZLPY+UxsMqdKpb/jeHi0TWMQVFdFfiB2tXoGMsrbS+1KytWCZFu6RjNKOD226E0
         fgGv/7zRGa3qiCs706p07j8Hj8dykP5RXJ5+TysUvMuSObu4xAh2o5fpSkOhXT5AN57i
         zNdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fbZ8bM/wviYGy/cdUXpjR7q8P6urbjnxy48ViTCWxp8=;
        b=T8SkUAj4m8awR1zYQe7VuQ6lMrDjRcUYBb2a0j6bKpMrhYIO6aa4yvBvGNYF2qPQ9S
         7T02iTYAj6zirXVe4zUqpovL1rxPDZUxm0acTJx8cbtMSvx46ik1TPM/X1WNnyTii+6X
         mLiql4uoepYTO+F847+qeBTRtXScZlXgbeeDj+uUCHUHAOu4HWsXkqJsImav+/A+1OxC
         m2wJj3/z45MK52akoYnwK9Zmdz2q1mo4yre94iTcFin7pW1qTjla/lcgYSFjKgciS1M5
         +06fUa9636kqhC34lDKBHsf+LxHrGPnT+olfgR/sAGXV0JEVTwT2cOTN9wvHPSClfsXQ
         fiZw==
X-Gm-Message-State: ANhLgQ3zeVDI0s1ve7rXJHK9seOnSBWtcfRD43mQ2BWvjrHROWHHQGAX
	8uuAO4Bj4w18/KaH0vVEV+8=
X-Google-Smtp-Source: ADFU+vtKCrjlUMYHlsHOCTo0gfymNgJFbfVbPdLQeJUdK0RPdRU0yNetyikVJY0NE/rqpLZST60G2Q==
X-Received: by 2002:ab0:718b:: with SMTP id l11mr5248265uao.100.1584998339065;
        Mon, 23 Mar 2020 14:18:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:354c:: with SMTP id o70ls316355uao.1.gmail; Mon, 23 Mar
 2020 14:18:56 -0700 (PDT)
X-Received: by 2002:ab0:49e4:: with SMTP id f33mr15004491uad.86.1584998336422;
        Mon, 23 Mar 2020 14:18:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584998336; cv=none;
        d=google.com; s=arc-20160816;
        b=bZuCq0lFIGYx2Nw89RQRRcasHIZTHzlGHl4i3ebdHOCXSjMkIG/QBtJ9bHMObODSQp
         PkQFb3x2U+DyRY0U24tiVvdIFcl7eAJh56vfPA3AVXOCdeOa3QUHUYW3VQUDqw8BpWMQ
         hd6IBqZSi3eqOMT/+t1nuaxbEHC/kNorVNqpRFfLOKWQINgF0KIBk/p9Ajc9jkMrZHYi
         KqaSWWrZaR+gXFpdTOzeNoQ57dg7cmIRIbqRE6Be+XSg/ldrt3ht0SaFQ55FD+rzZTk9
         N/UXQMXYgbzh+DJNDX5foCzYN0dfZoaruaXJFBB7/sdhEPlN6lzQFoMYOk18Ek6CCJ2y
         YN0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SAo65VWhiT0pMfzK3jPM23q9ZFAqcr7MGIEFD3ZpA9I=;
        b=rJD5nMm5ywYEkDoVFXxylgxRMREu2jYxQhWy9akX3vVccFyk5tq7/nAT/t1SHYKNTN
         JaY1WHxfhSWpp0RcQ9AOcvixEbS52j+9BiiVHrKm35JrzSXTUig/Hqi7gCcPMPLZclhP
         rCairmFSx7MFHxYcarlPFaJgXPJK0LDy2TKD3ZqE1oLd0JD9ZFtBXtqpiHX89v6ug28H
         MBR3/5aBMLW+M2cJdFx0OH8VtRMm4ca5ZttI42GII63echecI3OT++OpoPbVlKYdG7fU
         3WdBpavpZ0LywXtlrxf8SYEBcAgytqaRdWYFFKvWBtF75IidFEF02RuwiHOQRZiJtYHc
         cfrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nfPb2+aa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id v5si431165vsl.0.2020.03.23.14.18.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 14:18:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id ck23so424529pjb.4
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 14:18:56 -0700 (PDT)
X-Received: by 2002:a17:902:820a:: with SMTP id x10mr19799846pln.179.1584998335505;
 Mon, 23 Mar 2020 14:18:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmYqncnK7SBEi7P0ZSNTMi97XhkiOkqmHoCrWUeG-7GQA@mail.gmail.com>
 <DBBPR08MB4823894C5E0C67C7FF6F6DCDF8F60@DBBPR08MB4823.eurprd08.prod.outlook.com>
 <CAKwvOdkR=wphdRX4Y406xcA2UFov57AzEN+XEdo4ifpojPaibQ@mail.gmail.com>
 <DBBPR08MB4823214DC0BBA452081864B2F8F70@DBBPR08MB4823.eurprd08.prod.outlook.com>
 <DBBPR08MB4823590F62BEE5238B04BBFEF8F20@DBBPR08MB4823.eurprd08.prod.outlook.com>
In-Reply-To: <DBBPR08MB4823590F62BEE5238B04BBFEF8F20@DBBPR08MB4823.eurprd08.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 14:18:43 -0700
Message-ID: <CAKwvOdnWYPnnnhOHc7QX6GTre4yM+dDxWQM7hOAigGA8fGETHA@mail.gmail.com>
Subject: Re: help reviewing 32b ARM VFP assembly
To: Peter Smith <Peter.Smith@arm.com>
Cc: Kristof Beyls <Kristof.Beyls@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	"oliver.stannard@linaro.org" <oliver.stannard@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nfPb2+aa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031
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

I appreciate the careful review and technical references, Peter!

On Sat, Mar 21, 2020 at 8:05 AM Peter Smith <Peter.Smith@arm.com> wrote:
>
> Hello Nick,
>
> I've taken a look at the encodings, they all look good to me, and put a f=
ew references to where to find the substitutions in the manual. Hope one of=
 the kernel reviewers can take it from there.
>
> Peter
>
> ________________________________________
> From: Peter Smith <Peter.Smith@arm.com>
> Sent: 18 March 2020 10:02
> To: Nick Desaulniers
> Cc: Kristof Beyls; Arnd Bergmann; oliver.stannard@linaro.org; clang-built=
-linux
> Subject: Re: help reviewing 32b ARM VFP assembly
>
> Hello Nick,
>
> I think my replacement at Linaro TCWG is starting soon, I think next week=
. It will be a good time to approach Maxim to ask if he can help with Clang=
BuiltLinux in general. I'd try that first before Arm, if it doesn't work Kr=
istof or myself can lobby to get this put on the one of the team at Arm's s=
prints if I can't get to it in a reasonable time frame.
>
> Peter
>
> ________________________________________
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: 17 March 2020 21:11
> To: Peter Smith
> Cc: Kristof Beyls; Arnd Bergmann; oliver.stannard@linaro.org; clang-built=
-linux
> Subject: Re: help reviewing 32b ARM VFP assembly
>
> On Tue, Mar 17, 2020 at 12:11 PM Peter Smith <Peter.Smith@arm.com> wrote:
> >
> > Hello Nick,
> >
> > I can check that the VFP opcodes match the coprocessor instructions and=
 the toolchain options, but I'm not sure I can do much from a "Is the right=
 thing for the Kernel perspective".
>
> Perfect; the encodings matching was my primary concernt
>
> > I don't have a lot of spare time at the moment so I'm reluctant to prom=
ise anything more than I'll try my best.
>
> Apologies, and I appreciate all the help.  Is there someone else at
> ARM that you're thinking of tapping who can be more involved in
> ClangBuiltLinux?  You're one hell of a contributor to lose, and the
> loss is noticeable.
>
> >
> > Peter
> >
> > ________________________________________
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > Sent: 16 March 2020 23:33
> > To: Kristof Beyls; Peter Smith; Arnd Bergmann; oliver.stannard@linaro.o=
rg
> > Cc: clang-built-linux
> > Subject: help reviewing 32b ARM VFP assembly
> >
> > Hello folks,
> > Stefan sent 3 patches to support Clang's integrated assembler for VFP
> > on 32b ARM.  Would you be able to help review, or help find someone to
> > help review these?
> >
> > https://lore.kernel.org/linux-arm-kernel/cover.1583360296.git.stefan@ag=
ner.ch/
> > --
> > Thanks,
> > ~Nick Desaulniers
> > IMPORTANT NOTICE: The contents of this email and any attachments are co=
nfidential and may also be privileged. If you are not the intended recipien=
t, please notify the sender immediately and do not disclose the contents to=
 any other person, use it for any purpose, or store or copy the information=
 in any medium. Thank you.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
> IMPORTANT NOTICE: The contents of this email and any attachments are conf=
idential and may also be privileged. If you are not the intended recipient,=
 please notify the sender immediately and do not disclose the contents to a=
ny other person, use it for any purpose, or store or copy the information i=
n any medium. Thank you.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnWYPnnnhOHc7QX6GTre4yM%2BdDxWQM7hOAigGA8fGETHA%40m=
ail.gmail.com.
