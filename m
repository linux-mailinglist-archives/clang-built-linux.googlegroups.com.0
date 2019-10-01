Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJ6ZZTWAKGQEUXTUUHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EFEC3196
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 12:38:32 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id g24sf2703952lfh.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 03:38:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569926311; cv=pass;
        d=google.com; s=arc-20160816;
        b=zxhXHaD4b4EjB2I1H6rTn3D/rJ4pj2k747Kw/AV2D57AirtSuTAcX5TGLiEl9SYdiS
         jgufllWmDY4n6wPalzXXZYk3WaXOU1xwrjKZ4pTZXjWD/HEaED/cWwNqo2ja+TkQB/+/
         PN26mHs/TQWDBEz3eoGoQphra4rnwQHlCNg+WT4+VAQQtWkrVVaUrBmlJmdL9QNPiy2n
         tJvuFaxYv2g1B+4tf8cn1S5zOCBvnTdcf12JqhQrzEzTyLn9QuXX21FV/BHUPXQjE9LJ
         TphewgdtvBQEC8ScDwslVQGjItao3j25RHqqjajHLzyhGX+Uzt9+Qs3Sic6ucrrkrBJu
         3HPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=c4XLA5L+bfpMd5e/imp4wk3MfT/Tmoit7U6bT8z+uVU=;
        b=wvjuKx2grYVKM3UiA1Lf7VRVaI+VYOO1TJxG/9/6jsuMBroHX2rbiCCGz/Zqx3/ue5
         CcY/HE1oZQRoDO4TegyAwat0Er7taLptxHKAAWDUohntsYFS7W1Zm0XZPeTakwK03Bhc
         iClRgu+/ZeKBMPbOZxnQEMrf4gIEmkmJhjp8WZ2NIv/z5u5wGTi1X4aLitUh1GX0omNY
         5kpi+3itSeo3H46WfXrafH92yfzEaEdYKM3T1LyflMI3q0Vs/gIRkiAkSjD0J6kXgmZh
         Tz3slezIBssVFy7LXZ39i6KwWHUv61kbMyeGWKdMF+tYLjuW5/Vh6UzTYyjom3m6VDg2
         SjFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nIK/sjX1";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4XLA5L+bfpMd5e/imp4wk3MfT/Tmoit7U6bT8z+uVU=;
        b=KzYftz85SFF5QmvZmKUA/2fdielsc1SB/4AEy7VAOO2fNJL3xTtXsQtwaW7MXyf8QN
         lRCM5txvulxx1s8oppf8kc75EMnFprQM5zMdOW4mBUDgqy/0WlHfUulPdCIOFoJ0Yjke
         6ev4VY42nl3BYt4Y9qoXSd2XZTTCvMyd0XoVSVUdGTvf/2KSTbk0obSR73bUeFKKWQXp
         YBYTLWUZeJ4BkNdrepX4cNTwstvg30Tqg0ncYS0u+UImiRs6n9DSSpVR37Csn9VRVMgy
         vjFMfqhG1zy8rNKxQLyUK9ItMr9bsqRpvsC3p8+7GkpdkmEHL7okPif96kxBDExwWBO5
         SaOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c4XLA5L+bfpMd5e/imp4wk3MfT/Tmoit7U6bT8z+uVU=;
        b=oxiSpofHq8QgnzPlfmwBQ3Z+Pm6z1pzPf9s6A9RyDcWEKHDl78yG6t3+YO2SnoPw2O
         w82Tfen9+ka1F7hya5hm0+BnpEwy2X+nRbrg12Y7WJE4HyXQpd3jaku2HL0Ip2ksnUVP
         k/XsEGoJdt9sgWkM8auXZ4OznDp4rboI0kLiDC2qGbMPro/tNC1TVUH3eL7DcNWfbCmd
         HHAjqjDPHAS6Dw/n9XZZoRYIf0hD04NC5wUrUP32I6de9cM2oYpNF/1+9ybh3VSDsH2X
         SNifj3uJ7cgoKq66C+4yPDz+9YXp4uO98NkrsuMCsNI8WzhqSSxmQl0CY0b1377eIxYJ
         V9eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4XLA5L+bfpMd5e/imp4wk3MfT/Tmoit7U6bT8z+uVU=;
        b=CsrghVOVLPemEDoHeG1XgTfUz7DEELcad5ORP/s9iuQ/si8U6Xa0dZX/ngeDK9OzMJ
         nF8EwWM/sSv/CiL7Ox8IhWaArPg0kEPrk5m7nmcWJ8GxBWWVyYbngVhQakXaTQHgjpw3
         o9vRuJjoQHvHAHL1Jl6lLMQB7yjQaVYNvto2AlWv8ACCbePHxLQqfqraVHDDYYao5vW0
         TgI90dyvVe6ljiXsMZqGJm7llY0RFiLn2S0FJYcHvqq2wQaL1VUeS2B2omC9pEiMIc5H
         4cqLmZhWj6KsUpXXqk2r5HKQaKzBqRpIQHSCkSZVLWtpRapQMRR1puqUTlw4WFRm4mwh
         TjrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV7+mwNELJo07QBYD8ElhJyKa9CqVYOy/rGoXKj14T4Lthhh0Lw
	N7P/M8g2YkCR5GqRLw4Kyu8=
X-Google-Smtp-Source: APXvYqxN/f6v8aRSOqizoC1xJ+NTtkg+ha9dtN5fUOGw+9IPpFQn6bx9dg9QSowWZAfy9tdSZ5QIIw==
X-Received: by 2002:a05:6512:14c:: with SMTP id m12mr13946943lfo.27.1569926311757;
        Tue, 01 Oct 2019 03:38:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c709:: with SMTP id x9ls1469223lff.12.gmail; Tue, 01 Oct
 2019 03:38:31 -0700 (PDT)
X-Received: by 2002:ac2:48ba:: with SMTP id u26mr14720057lfg.164.1569926311139;
        Tue, 01 Oct 2019 03:38:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569926311; cv=none;
        d=google.com; s=arc-20160816;
        b=NRTF1bqaZxj87aOQvCtLvYX2vvVcTdwYkExKqU6DOsTeMBSZP8B+ZORzMq+nX4xlbO
         Wy+Cyb8bZmJp4bLlBNUJ4s8vl8gIiI5daOe11RuQpkwupdEZoR/V3TPXMocRVpprg/Kb
         g0jGwVkphZlzqsW0vBXJsFYqdR0xpCByM9qvszzbuBwtAGOos0sbWQme0q0UYLWfmmpv
         KzJGR9YUM79+sWg0HozZrq9yansqyEpZZRH2Lh3zJP0Bvy3oIvNaunOwn/4UNu92EXTZ
         4PS8fBBcXyJLjx/slzpo2QZcAXmB8CnlMDKTiSAlIzXf9S+bOwyoM4laAt8FFAZLQ1O3
         Slfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=zw4dGaNApGaLp5V/SJ9x1nhUTtWRtLezK+ksztsbj0Q=;
        b=axGyb1raoXOmweZAXcwgyPy5lQwJqn5Tcm6mggTXuE8+Nefix/e0+H9vcdiYEwHCZl
         HDMoPBWZneFX6N74TsaFT9/juhrF4o01uyVsDw1OFLZBFzEp1HOjItl5ImvaGx3b1c7R
         a3iokmIXSYMeLZI/REHWqUfMDhTSRkp7bLhOhjI/DFsP0lzTPxfNAIRYdJhVfrd3RMlS
         4+wXYIZlDUCH4P8dOnSMMKiupGcmimjJZl4m+A11WhFiq2cX98p0tH/KBAKJDjFFuunw
         Dw/RYnMNDhFRzgg/f9Oy48SEQRa124OhXxPwmRXMkAlfAtF5Ras0eufD3pXtWmlVWPd1
         QHQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nIK/sjX1";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c8si1087710lfm.4.2019.10.01.03.38.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 03:38:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id v8so14882162wrt.2
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 03:38:31 -0700 (PDT)
X-Received: by 2002:adf:f44d:: with SMTP id f13mr16498594wrp.197.1569926309774;
 Tue, 01 Oct 2019 03:38:29 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUVQqOie6Q-r1wHXkNsRASYqzTAdGqrkhfYsA5Ryh2WT0g@mail.gmail.com>
 <19f1998d-a8b4-41b0-b86c-559c694f0c06@debian.org>
In-Reply-To: <19f1998d-a8b4-41b0-b86c-559c694f0c06@debian.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 1 Oct 2019 12:38:17 +0200
Message-ID: <CA+icZUWWEQQuG9fqGq-06WGciktgGeOgpZA9iVDHxw9ut58Y4g@mail.gmail.com>
Subject: Re: llvm-toolchain-buster-9: LLVM/Clang/LLD/etc. 9.0.0 final
To: Sylvestre Ledru <sylvestre@debian.org>
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="nIK/sjX1";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::441
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

On Thu, Sep 26, 2019 at 3:04 PM Sylvestre Ledru <sylvestre@debian.org> wrot=
e:
>
> Hello,
>
> Le 26/09/2019 =C3=A0 14:44, Sedat Dilek a =C3=A9crit :
> > Hi Sylvestre,
> >
> > is it possible to have version 9.0.0 in llvm-toolchain-buster-9 APT rep=
ository?
> >
> > Currently, 1:9~svn372167-1~exp1~20190917193038.54 is available.
> > I have seen 9-1 is in Debian/unstable available.
> I don't upload tag for apt.llvm.org, just ~svn versions (too much overhea=
d)
> They are usually the same (besides the version display) and rarely introd=
uce regressions.
>
> Is that an issue for you?
>

Hi,

a clang-compiled Linux-kernel is getting more attention and a final
(tagged) version is more profitable for marketing reasons.
An SVN-version looks like a development one.
As Debian/buster is the current stable release people will prefer this.
Just think of bug-reports: If it says this was compiled with a released ver=
sion.

For me personally: If I can choose I prefer to use the final release versio=
n.
Technically it does not matter.

Thanks.

Regards,
- Sedat -

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUWWEQQuG9fqGq-06WGciktgGeOgpZA9iVDHxw9ut58Y4g%40m=
ail.gmail.com.
