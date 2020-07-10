Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBMO6UP4AKGQECDYYQBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E2D21C00B
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 00:44:02 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id b8sf6200524lfg.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 15:44:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594421042; cv=pass;
        d=google.com; s=arc-20160816;
        b=QbcY9/XUlA7M1DcQ3oMZkx1uW9+aDJIFCXRO5aBrUBXZ0cNNA9TctalpzU7XWo9J0W
         0/Mdbrq6U3v3nWG9Im2Td0IbugFjtNFMX4LRYr67cm8U13kXOho4WXSSmUb7Kqi5iMcP
         b6lXM5J+Q9OnkleIG/PKRRFxY8wXKonOIOUBTS+q6UCHA/dQ8XA2yRlk4sGOOn8V6tJw
         VdFi3HxHHwqnBikzchrfx/DhzDv5CcIN/nE/Rsw2P1K3p59H8uGsIeGHZCig/TsAO12H
         9Gl3gfmRylES/bUBiTZE6kghQcTH83f2c/2K1MQoSPar+/pLKm+UP9mw1CKwsjmG6W8U
         502A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pYxNQ7e0IqGU/uIP/oj50DhAy27+vQb+X3OnDyfCIRY=;
        b=qfNrZ9qjzuHJv06WgkJ75TEQX4N4hWchEOIucTgSaQg+FjbAWectS9zSTQH6SOuiab
         /NVyeYP/fuy1mTchvxUXiQ/OYbLkjERQJE/J3ddDDHFSliINVcIgGifGclnSNTior8SS
         OoHLdxRr5VCG+xNboMuxLAzJi6cHvC6KBKTNeZgABKCecK5/0hJTK0kcEEVX7NDFofCc
         7Z3jGYDhxxcl1Zc6lvESK/VgKp/LkzWPYjovv6busSpI0W1d6MCdujeKhnGZx3sHW7G8
         /nL/SPUvSWwdsYqcNJmzuAuVTh0vLMiVBaeYv7bWflZ2gJ/os/DsCZxcxjlkpHchzPDs
         bOkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=EGO2snRn;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pYxNQ7e0IqGU/uIP/oj50DhAy27+vQb+X3OnDyfCIRY=;
        b=LDVosdCX4KswljkIndYjrc5Y7eim/e2accezVv+DRl4hYgg0YFshTefA67suQfwJ1k
         FXvDyiunhKhoDHQ8aRzAEVsBKTZi9v9gc4+qGBE0t5LWZsMru2bLmRMIrOcZSK/9mugI
         H32/Ya3hCFQrdPvo5NiMAXv9lZVstDxjmazIOu5mK+slAS9KnaWzBD8Axkhb5fvyusOk
         n+NQQY5SdrrhISrS5pDZrNfmct6kpcX5ofqghB6c1oEBzi146wg/tVxfPrA/u9iq7KcM
         eLIrbnnHui+rBRID8LFH2S0/uPyCCcJc8OLyLHODqWX8azUdFcPEyTcAlSfKU3e0y5tK
         zOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pYxNQ7e0IqGU/uIP/oj50DhAy27+vQb+X3OnDyfCIRY=;
        b=qe5Vk7uH2vXuGJzSEo2612w37fRv3B/Pf3LnIWbikBJ7hp1DI4m+rbIgNf1bSQqHsx
         Cy8drRe4kZVeja++rOL64WSrqyOkJjX/E6K+nJTV0BE3P2zGa4lGgz02buBiV390EC96
         ZbFJBLvRNgSPnWlhBCs8PdfVGTJqQ73DC8P9Mbg3B3MM7Bp/Zsa0lNNwJmZSF+s1za1I
         0J9dYaTcWvPdrywqxA9oTfP8mc4KIG9YjQtOPNzjpWfRWPXKJ32ag8fs+6aBURiSXADd
         RS74Hpc93pVMFMH2sWm3O9uN+DAEqMewNN+ulztystAApCOtiSJpdUgoD0bn46K0QIZo
         tTuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DOOajiXUzFUdTF99qx1TzmF1GTJYmeUe1qQgnpjChntrOLfWZ
	u2qZp3QPB1X8Gynj7kcFIA8=
X-Google-Smtp-Source: ABdhPJzIgQU57AQl5KjjgLmtz1mPR+03UYpp0FGxwheG1JxHwz3moIOtf4aj3GSZetat+wDIDwU88w==
X-Received: by 2002:a19:7014:: with SMTP id h20mr43977997lfc.49.1594421042017;
        Fri, 10 Jul 2020 15:44:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:be95:: with SMTP id o143ls23028lff.0.gmail; Fri, 10 Jul
 2020 15:44:01 -0700 (PDT)
X-Received: by 2002:a19:c886:: with SMTP id y128mr30026560lff.98.1594421041176;
        Fri, 10 Jul 2020 15:44:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594421041; cv=none;
        d=google.com; s=arc-20160816;
        b=PV9ufUMJt5mssRbrkRsoMDS/7DQJlBTOsm0Vs9KSopGdh/XWfTgsehcUrW5XOYNvRL
         f9f80C3vkuHR6Oi6Iefou2tLjkZiefDBDu/QUJh7+oBxLgvWJu8Z/BdSt6rCoZt1W72e
         KtlchRGDCCZaOLBHY9apuuFNMQn2NOqdsQCTgmFzEXDNQtmJvyUxTEze7b9FghsnWH5g
         SMVDMDGCsgKtJcXiS4vd+Z+SAjbaDacRW2NRdykT1L4C0RzGV4UfDmv9N/0OvHz2Y/wi
         4X6pJuxiZRkttwct3/R6JMqB8gKWbaB347gLPd38tu8lHlhj8/simx0txItSziOMYVe+
         3upQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+thtRKJEj4DhIkEI6p+GkkTjAsDSYTDkX8oKURyOcGc=;
        b=BU4td0ytmFWCOoRURide8DWARpEVy/ggBFQkB3n6NI431V/wfTauStTWXJ+LnH0Smi
         6v0HiiCXekIZDo/U7XgDXTarPtmHKpLZEM69JOdsQHR4+ST6JsQAmewmiapDl3fdl09r
         7n93sT+sQTvqC8UclOenMRrZ8z79wJyWs6Cw5OL6+++YRcptVaAC5imcuU8QWm4y3xPI
         OrhAdVv8xMeO6s6eIlG5Yrmzto7uCIylqXDoKmlWwFEupBFEDnHwf99/rTuGzdTXeSBe
         4w1GPYb/B6qf/wMt2r+qDT+hl0W+geZUQ+QOGTgu1P75SE2P+Roy7K4brSVMJ9+VB4fN
         WxAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=EGO2snRn;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id o10si332713ljp.3.2020.07.10.15.44.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 15:44:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id h19so8109920ljg.13
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 15:44:01 -0700 (PDT)
X-Received: by 2002:a05:651c:1105:: with SMTP id d5mr30522958ljo.62.1594421040601;
        Fri, 10 Jul 2020 15:44:00 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id f129sm2645285lfd.6.2020.07.10.15.43.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 15:43:59 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id s9so8122000ljm.11
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 15:43:59 -0700 (PDT)
X-Received: by 2002:a05:651c:1b6:: with SMTP id c22mr36397087ljn.421.1594421039353;
 Fri, 10 Jul 2020 15:43:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200709221102.323356-1-cesarb@cesarb.eti.br> <20200710223441.756320-1-natechancellor@gmail.com>
In-Reply-To: <20200710223441.756320-1-natechancellor@gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 10 Jul 2020 15:43:43 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjb_WVt2Dxe6GUVcMzgms1od7Qt83dOShQ1-ux+tp1RsA@mail.gmail.com>
Message-ID: <CAHk-=wjb_WVt2Dxe6GUVcMzgms1od7Qt83dOShQ1-ux+tp1RsA@mail.gmail.com>
Subject: Re: [PATCH] mips: Remove compiler check in unroll macro
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Cesar Eduardo Barros <cesarb@cesarb.eti.br>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=EGO2snRn;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Jul 10, 2020 at 3:34 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang 8 was chosen as a minimum version for this check because there
> were some improvements around __builtin_constant_p in that release. In
> reality, MIPS was not even buildable until clang 9 so that check was not
> technically necessary. Just remove all compiler checks and just assume
> that we have a working compiler.

Thanks, that looks much nicer.

Applied.

I think we could probably remove the (unrelated) clang-8 check in the
arm side too, but I guess I'll let arm/clang people worry about it.

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwjb_WVt2Dxe6GUVcMzgms1od7Qt83dOShQ1-ux%2Btp1RsA%40mail.gmail.com.
