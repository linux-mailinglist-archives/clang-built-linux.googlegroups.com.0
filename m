Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQFJZL3QKGQEH7CQBQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F08772068A0
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 01:48:17 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id w2sf123923iom.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 16:48:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592956097; cv=pass;
        d=google.com; s=arc-20160816;
        b=xcdEx/66yuGb5Q0t6rSvd8afIiUiHZLCeuhocJpm/vJHFI5b+s6nF1AdHkyAM/f+9O
         WESTkyyK6L6QHQdb9xbBFaQlz3N9c6yhBiQkx7eGH2DtZkNp1EpWIdrK2aN93ZK6Iuu3
         SEMdCaprOS9l70f8wr9U0p1bnAmmd4MmLqiOo4CCNIj0I8jfUqYKCCeXY+Z1+W3lRMQh
         7a+4fNBK9ocZfJbtFHpDyHeUQtSkNzZzLTk3a3M5OcGpXo29Zn7U/9C8Br3k1h9mB2q9
         wFerWaezookrA6F9h41IchOwg510j7VlNCyHgLHU8bUPZiF7NRFCqaiZaULwVQqaBysC
         gj2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dajtymm1PP+iZJtHB0koHbrCsy0+r2hmL9ELTUieD1I=;
        b=X1vzX0dw/DzyRKkRYL9qaueVthQmLufITkeliApnfjVpJ4mJezGz6ETBP78qVfFlIO
         OGDeMbxb9i8zrAcE3qVfJZV6hC4FHIB5xvpxv19EojTVMeL0sy5nkgN51oHd98OGGK+V
         1C0mOSyoSMiai3RUvzP4m1RV5hcZeAm3edceEatxe2vMzWu3h0Ev9vWx59+CEJU8yPuf
         NOnzbAr33m6raAv2/PfLIwfRP/Wqan4dnPab5E2BomJOYqCHt0icw45QCC6ZbeZ2QjTV
         5EHSm1SXMPyFsHE/NRnT3/5cZog5tou31Ij4u9Zdc4LDb8dRNoIdVg6gTNjd1xw9oVR2
         KBbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mJ8WOQRS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dajtymm1PP+iZJtHB0koHbrCsy0+r2hmL9ELTUieD1I=;
        b=DZ8mlc85DnKeP3148V5eC3SUI12IW0TYi3+k0ZrrDS+VSMcjrk3u5H5mcLNitYrIht
         XqohjBUaxNkjr8nM1aXEBhbAFlKtKJKXG8IDFbrmSRJFHqLvouuAdUAbjk5/utn2dOB1
         2TcBe1qvAuOcUoXN4bajjBECkC+FASD1sXaG7hrEyPq5NcysE7whhJMwXAXryg7X2JcN
         gN8VEXFjNqgsLV41o2KoPpe4H5pY2kqYUm+phxjuiUyfwPB7cYwiimJFEY5qcIcnhCcM
         lUpBzOv2bbrOYn3i4O6wZQ/hsuh3n2rrBkjzhNV1CElXZdH0pa4XJb7JJosSdxzdW+zF
         dtwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dajtymm1PP+iZJtHB0koHbrCsy0+r2hmL9ELTUieD1I=;
        b=l9NrJofIzsYK7zOc1KiI9KHDXK3IOKWjPoRyWA+0UU8nauI2QK2BYoH6ignbEkaBh7
         UMRevIEIT/K9bghiGfgLmsb5AS+LnOTrxQ64murO0ZBg1jegQQQre3KF2HlPnohMu7fk
         DH8PSoEhk8PXAdoL1IBSsjxAuHq+VyyNVLNP/BXjURICm4zUv+ZXvbjBOTzqBXJE98Ox
         lXopoNc1bb4EkonSZ+ENzJXn9Zd18E0iaBx7Tek7MVKQ8FPL9D3GHODqLuOAJEClijc5
         DHFnNjntWH4zenUc/jrYcJxEYrH4YBF0aFn4gbpeuQdLl1nv0IKogqE8ftiYFnvsMlm6
         PE8A==
X-Gm-Message-State: AOAM532nmBJYhFULT2mur25yJB6bmZ8EXvkMrGTuphbl0f1XXTtuG8lq
	rwXbngWTudNok0MSIbLogEo=
X-Google-Smtp-Source: ABdhPJy3C7rqqYEQMFZNTsMO1khbTnp+qIpvpJFCMZhppeCdzYTIGylkzzIWPlpZzfRfBF0kAFkkPQ==
X-Received: by 2002:a92:3604:: with SMTP id d4mr3597554ila.117.1592956096947;
        Tue, 23 Jun 2020 16:48:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1389:: with SMTP id w9ls77779jad.4.gmail; Tue, 23
 Jun 2020 16:48:16 -0700 (PDT)
X-Received: by 2002:a02:83c3:: with SMTP id j3mr23834070jah.81.1592956096641;
        Tue, 23 Jun 2020 16:48:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592956096; cv=none;
        d=google.com; s=arc-20160816;
        b=kGBUg9JP3B1s6qrs3qr5piTttOpUR/X6xc9GiiR53wqR5AH0IoxK7lspF7i1pCIunk
         4Do2gM0Cv9wwVwpPDCbs7eTTCfaGhdg4f6mpJh3srcujKzQsTN6wSu7zlAoak5GtdT9t
         1tRjiy5oRtFIPykc82Hqy7xN+WDgojiKDHM52ka4WJ+TuMhg6at5XTKoFphiLMUG7IuG
         l7kvBwa9CSujVIncyDoYv8DFrywCM0h7or66jsedBpc4emWroDIG/zJy0jJnrxdkEmNa
         E495jW2iBAsH/iMhEGFCP+/RM7/t6oWW9cb5ORj0vhhjIQpTWV31FMTuLonrtdTl0eq6
         zqbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DHZZKiSLXcboJarF7KlXMylDXhRDjmeHp5heeGxNd18=;
        b=07z6MOXBRFSjoz41UUU5hgG5fSiq90EC8+UhNYAQYiQRQ2uDxS9dwTH3tsxNltrs73
         u/yGiSg4tK620TjEOC/LKmRzvmcDecWt/JMqJYugbgi6opXprzZlTv/epfvSFyV63Xe7
         16y8D3kt94scNhTx4Ud5GimHENCCw0/EmBwTDRuG6q+BEGbHCOFaOjqzprYtvWOP5469
         aoP723Nol/lSTG9H5Oxi1x6HtkeGhvBeoKYUdaLRx1E2RnR8hTmaBwdOBmgjJKm4FMhP
         35EZejCh3D3HpMUUDLRo9AHs/tPc4z63IDKMcODvtMOqmvnURHIM98nPlvb6lhMwfISg
         mjtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mJ8WOQRS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id r8si544223ilg.1.2020.06.23.16.48.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 16:48:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id i12so217150pju.3
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 16:48:16 -0700 (PDT)
X-Received: by 2002:a17:90a:21ef:: with SMTP id q102mr623667pjc.101.1592956095777;
 Tue, 23 Jun 2020 16:48:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnaoaZPLqcn6yiFEpEVx=HmpRe1ExhLZfzLhHs7e7Atww@mail.gmail.com>
 <31688.1592897284383266895@groups.io>
In-Reply-To: <31688.1592897284383266895@groups.io>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Jun 2020 16:48:04 -0700
Message-ID: <CAKwvOd=3qs9TLkzNE+uPH-fY=+u=P2Abz0sZxroauEDdr=jLJw@mail.gmail.com>
Subject: Re: kci_build proposal
To: Mathieu Acher <mathieu.acher@irisa.fr>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mJ8WOQRS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

bcc: kernelci
cc: clangbuiltlinux

On Tue, Jun 23, 2020 at 12:28 AM Mathieu Acher <mathieu.acher@irisa.fr> wrote:
>
> Hi Nick,
>
> Thanks for your interest.
> We didn't target and gather data about Clang, but it was only a technical limitation at that time.
> Right now, it seems possible to build kernel configurations with Clang (thanks to kernelci tool chain) and we are very interested to invest some resources/time here.
>
> Indeed, we could differentiate GCC and Clang build and see what's going on.
> We can also pinpoint combinations of options that lead to failures: it can be useful to indicate the root cause of the issues and investigate whether it's specific to Clang.
>
> I'm available to have a chat
>

Cool, we have a bi-weekly (every other week) public meeting:
https://calendar.google.com/calendar/embed?src=google.com_bbf8m6m4n8nq5p2bfjpele0n5s%40group.calendar.google.com
IDK if that works for you, but I think if you gave a 10 minute demo
that would be neat, then we could discuss more?  Otherwise happy to
stick to email, too?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D3qs9TLkzNE%2BuPH-fY%3D%2Bu%3DP2Abz0sZxroauEDdr%3DjLJw%40mail.gmail.com.
