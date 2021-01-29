Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBRHS2GAAMGQE77BEBUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C60CC308F01
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:08:21 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id g20sf1330684vsb.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:08:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611954500; cv=pass;
        d=google.com; s=arc-20160816;
        b=BIVcbGKKZe8N3Lil5MR6Cy6h3p0PBov+SudhN2E6MbtgSxVYoaMyS/iLsa3eTWmaiQ
         L1WQxp6/RO5yYLH9q7S6MjntdwqgWQwqg5nrOxLpRfFXhZaUmCCy5Y+6R45+u4QhEcsD
         6vOHYaF6z3NBdf+b4nDDmAGSQzM57xs1hsyjoqh6QXq+NRWsrgOkrGtvf4Mc+a8RFkUa
         4TRlkr21m9Ttu2KM4dUdbq8v4OMbqrQX/JE6qjp4bA1WYQlritjvvmBbcfZ4U0cbP0nZ
         LzzfJrYpQ9xCQ+3Rvo8/UX2EJGXr4IYeAI7Gw0C2QaMpnAtDtBjoYqrY0FQJwA98evF8
         QZXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=pGArNd4BLior0PKmS7/L3MimOEn/ZUGyNj138LZxRUM=;
        b=p9DlFiFLDjlgJCCQmElFomT0hzn8deapQ6YOk5tmJpC9c8dlKVzAyiftCUJBFnEy2p
         eDfQVomGprKW2jmVjYBc2palpMEnSZf8vdxi3V0IGHBtD4MtoPnFgkzSl+fSEcD2IPrT
         nMCeqHQ2SGGxKgF4+gqJzx2pHf+qLaIglXHd21yHTDY05AssNsm/M9vtTCYXUq1M0cEH
         tq3RokYsCdClKkv/rWxet1jEjV0cyqKCYXXjs7Li7j81G10PkGV6ngpo5f2TPraUB+ju
         ggTzRXglObk+vyXq0sTVpfWm8HaXj0OWVl06jJBpSn07rfajB+XPSwejIkjOGdL0FcjL
         yRhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fKeVJxhe;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pGArNd4BLior0PKmS7/L3MimOEn/ZUGyNj138LZxRUM=;
        b=gptgqu3+1GrM8DKyxicxm+RyJE/WWbjzhKi025sWqjxv2b7WoStdKzvldzo6glXpfI
         CHa0RBrYgv4ngIsHcGCB2Fn6Nwvp8DbpkLO9irfPIaYhMGnpcHmu0IJZGpL3ju5a6eby
         Aukf6H9NFjEm4UAp/LsIUdEs9nCF9iGjzrUdAcayoSZ4DOhCfIqLmrrmOu2C/t/IMn64
         n8/EEAnhvPjDOroYEtAn4GElu2Oc103UtfQdDL9MzJxQRHEZZJc6kgbxM0wflxIS8T9N
         Oexqlto7fTxZqOsxNPvETQlcPa2fBlsUivnrEjb46DPgrRFJaKYS35vyo2dA6q+9aaLG
         EoYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pGArNd4BLior0PKmS7/L3MimOEn/ZUGyNj138LZxRUM=;
        b=qLMHfLQ68qIgpblo6Eb85HUvRKij+A7yNQCgCsyIso0R6riDmLmb/esDgzAtYIQVcw
         M/8AYe9vodxIWKo9uRxQgIYBJQTKYlNgEiXG1blimarXW9bgSLXrtANj+s/nTDX7i1uX
         6qafBHeTZuAwZBflAbqbzbfq/lrGvuVu/UC+KALF+LAv2Pkf/a6XTd5fzvv4ZZxT87oe
         YGlDGuP4Mf/pMwlDRTgqiEExyAuTIVbSIJPec7B8h+8VssXB0cAXM9ssS1LQVhSTMsv6
         Il9zAK5suYCawnj2MHrqYcsDCjnMxqdYr59tqZeQ2G5B7hhgnfYxJW1kOXdDMCnJxyUI
         8coA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Omx3LptMqArfbgp4DDhVBky98WXcKA2rCkM+CTuIcpLmz1CiY
	XNsi3QYkZQgNf1ggb4ZL4wE=
X-Google-Smtp-Source: ABdhPJzpf3H9sE8HtynV01sT/8F7R2EEPeIFquj+gwODyv0iSUulFDCg7FX91IdQQ0hXZ6VE3xDHyg==
X-Received: by 2002:a1f:1c4c:: with SMTP id c73mr4524703vkc.22.1611954500695;
        Fri, 29 Jan 2021 13:08:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4c41:: with SMTP id z62ls568568vka.2.gmail; Fri, 29 Jan
 2021 13:08:20 -0800 (PST)
X-Received: by 2002:a1f:b24b:: with SMTP id b72mr3958483vkf.13.1611954500284;
        Fri, 29 Jan 2021 13:08:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611954500; cv=none;
        d=google.com; s=arc-20160816;
        b=y5DT64yffZ85YNP68K5vKrcEbnEuxXjsThrvzOu1xCXWFN2A7455f1PbQWZ9ig83oE
         8BM0A+LU4/Zwz2KSOdPgHNoG76BVORefLQ/ln84Fyd5e8pCmsO7B0BN6EwAAuWJmX5rc
         kF+RYygYOhEBPrrCrcOxKeYJpm+sgpoFP1WOPeVI3z6SDPN+moGI+p5ExXPoE0pGbcy4
         1EOFatYQDNC+h/StlpPE5fTnyC6v58V+Baed3T0ZSRZL+zU921x5Lg3ISDcaUhPKOK7Y
         VFkRvhFm4XV9Sq17tRLD6a3NwsJ8l7Hpmux0S/eeS+gilj29RePoZAqpetfM7/eZ4V6N
         z4Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=MoEJilFaLzSKvHTw5e08yZQI2j3F21oKcR5gUJEkaX0=;
        b=ZyxeV62OpXSWG9SXSXWrrjJhhop0e42T0RRMLIS0b31RZMxtvfjxQvlWyLzGyY9nYL
         HYNAMjKhNogHa9gSlUBqvD0AFkxy8OfmdRK5qOTWKGGm+OueVMb7iufDloxv8lYYBlOG
         Ez6GxWHZaxgEufMHw2BvtAnC2qWm2EDAMyrQSmQO0or4S717qA1vxGTrIj28ZG0mz9iZ
         MpYnI/2kttDaiqjBP6XLRwAY0qRZ+sT/ZmOnnCQ+OK0ts9I1W1HgP5GCuTm6cB+Z5MOi
         MnmTh77MJvuxDm/JH7Rb4q+BiTH+NeQHIDluEzzRcQ9b/g8ToZwq/aw5ZrtI44EagXuN
         L9OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=fKeVJxhe;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id s196si494415vkb.2.2021.01.29.13.08.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:08:20 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 10TL7kX9009900
	for <clang-built-linux@googlegroups.com>; Sat, 30 Jan 2021 06:07:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 10TL7kX9009900
X-Nifty-SrcIP: [209.85.210.170]
Received: by mail-pf1-f170.google.com with SMTP id w14so7017443pfi.2
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 13:07:46 -0800 (PST)
X-Received: by 2002:a63:575e:: with SMTP id h30mr6319221pgm.7.1611954465639;
 Fri, 29 Jan 2021 13:07:45 -0800 (PST)
MIME-Version: 1.0
References: <20210114003447.7363-1-natechancellor@gmail.com> <20210129203106.GA2658360@localhost>
In-Reply-To: <20210129203106.GA2658360@localhost>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 30 Jan 2021 06:07:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS28W+rjC=Y-6AusFynMGLX_RWPZPo37gGr=WRdR+TkkA@mail.gmail.com>
Message-ID: <CAK7LNAS28W+rjC=Y-6AusFynMGLX_RWPZPo37gGr=WRdR+TkkA@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Add a section about supported architectures
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=fKeVJxhe;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Jan 30, 2021 at 5:31 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Wed, Jan 13, 2021 at 05:34:47PM -0700, Nathan Chancellor wrote:
> > The most common question around building the Linux kernel with clang is
> > "does it work?" and the answer has always been "it depends on your
> > architecture, configuration, and LLVM version" with no hard answers for
> > users wanting to experiment. LLVM support has significantly improved
> > over the past couple of years, resulting in more architectures and
> > configurations supported, and continuous integration has made it easier
> > to see what works and what does not.
> >
> > Add a section that goes over what architectures are supported in the
> > current kernel version, how they should be built (with just clang or the
> > LLVM utilities as well), and the level of support they receive. This
> > will make it easier for people to try out building their kernel with
> > LLVM and reporting issues that come about from it.
> >
> > Suggested-by: Miguel Ojeda <ojeda@kernel.org>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Jonathan, did you need anything else from me on this, or does Masahiro
> need to pick this up?
>
> Cheers,
> Nathan


Now I applied to linux-kbuild.
Thanks for the reminder.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS28W%2BrjC%3DY-6AusFynMGLX_RWPZPo37gGr%3DWRdR%2BTkkA%40mail.gmail.com.
