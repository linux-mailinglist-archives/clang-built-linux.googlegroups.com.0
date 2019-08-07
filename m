Return-Path: <clang-built-linux+bncBDYJPJO25UGBB24XVTVAKGQE5EKGDLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A086D85225
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 19:35:40 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id b23sf23279526vsl.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 10:35:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565199339; cv=pass;
        d=google.com; s=arc-20160816;
        b=KuxDXHFQ6vNOGrkZCxyc0grQUmziRoec30k5ksAcgNuNXjogMlvdOSEPuMkMTBdl3R
         8yFUHDCbSxePNzWIANDkpI7o82UYcaHqZAzU/dGPXqxQ2/EVIptgfxWCfL7KiaCaAMUy
         eN4or5Yx4s4GsBl8LrCe2EvqCLCYVm5mfPyvx6dYcI3n2CXtj9/nN3oxaNt3WX1RveoC
         E7yUstNSZwTanBcTfLHCNHsSoY0HmljrpqrIRmE2TOn77aZiliVulU+9EIDTy1E96w+o
         0De4Y/5zM06Ong9nRxw0/IgvrVQLEFJ41c/l3CoJPFgf2cfnlyGasMYCwE4gwWBGmWvP
         PmBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Dhma0bB2bATiSIbrMbcy7SiqP4K9mZ62FRGcBCFx2Xc=;
        b=zVRXfoxOkHl5GuwV11lFO5KwbWftf6lmCoAjmIxKh+1ETBrM8PV7SXARWsGZoOzukO
         zK1spW/UbYmt4OZsOr4AqEYf9CY1IscOVaJ2hPAxovLwEGM9+HID4XNNoKvUiChuYUGY
         sXOiy+TWufaEuUl8G0P/jboKLbceMCxL6+CCYaeCNtg/zmWokVoK+gI05llqIFi9Ef0Z
         m53Cwaq+pNNzqZpbnjWWXVMTPrZNBnacQnW/rYE1LXlohyT7CxzECucUApmg0Hhoqq0B
         XG+ky9xy1Jta/gv23X9ytspC7lWGf6tCvdty4mgV+sr1E9g+ClIloYCSnZiipd1LL4ua
         QIqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z93xjPWo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Dhma0bB2bATiSIbrMbcy7SiqP4K9mZ62FRGcBCFx2Xc=;
        b=Tr57OV4m8Fnwqe4G1XwrEYynAom9fUvS6RHzo/f2ed4J13cH+ptgPRwn90eIHFlNN0
         MgzsPl3f4Ql8U3luND3ukm78iWU6gmrOH/M0XpCtqDz2wljMICayKc03uqAutPRKFzMF
         HSWeCpHcuj93l4/MO6XuP94e43+yWB7rEc7ANBgeq6KwYdNNCqe9YSs4cK/GT/49BwI8
         NdshPQ+7mrbFGfVbLdMFJcEBEUP7+w/W+ClISskcH/3atqnWWj6MTst+V+kwXVtb5KoM
         mftEyflxz4UIPAxsgjteFuM3Q/Do4hMCVoe58cp6Myyu9qkvgQdO5ituggdnGjNsMtY9
         1Row==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dhma0bB2bATiSIbrMbcy7SiqP4K9mZ62FRGcBCFx2Xc=;
        b=qRDzX9reFf3FJo4DdKNtVL66pHjUA+WuPDrn00DrcwdHVITqeQMz6jhf9L+MPAgYIG
         aJAXlG1SLe0OZDwISI+3NuE5927+z3E/lW4IbTU3eAYFJ/yDDnEF34htCQF8vwGizVoN
         +KP2dQJQRV8NmIFv4Tus2b8mm+/Sood8ESQIBnH1ALm+lNqcyf1IEqVecWQOpKjYniLJ
         cdgzGQv1rFjO+7cdkvkPoTfAHz5Qzf/9gSyJ/jgbBPTv4YnYlKMSYifrDmTXbwnW7gqt
         KK3RH52ChsEzQ7L2khR0s5I/4LQ3OFcfh9X9iPRZJdnmB09KEZ70vvrPzUPqCfFUbWzk
         VSCA==
X-Gm-Message-State: APjAAAVrFdR6+tKpidG0IkGD1PVPoR3kcF9gsSvRfkCiL24k7LEqztTL
	bgjKZ3q/Gysu+m3aO/xVWJA=
X-Google-Smtp-Source: APXvYqzdI8C325m9qotyVqgjrFbfamW2wo3LoghzzVV3xu4TVww51BhE9ySnLJvxfR+5ws0fPXaD4Q==
X-Received: by 2002:a67:2586:: with SMTP id l128mr6696492vsl.52.1565199339493;
        Wed, 07 Aug 2019 10:35:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:986:: with SMTP id x6ls6645642uag.5.gmail; Wed, 07 Aug
 2019 10:35:39 -0700 (PDT)
X-Received: by 2002:ab0:3003:: with SMTP id f3mr6590346ual.86.1565199339237;
        Wed, 07 Aug 2019 10:35:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565199339; cv=none;
        d=google.com; s=arc-20160816;
        b=MMmloWLrNt5o1BKYKJlu1U1Sp+p/jTOUKT8GQpYCJEeieLMHYp2WvvyDNWF5u3iqRB
         DKbNBE3okmo/SAP0brvXXlmrObzcqJqTTyBO5oAevW6uZw4kC7Vc+fWiyUBFx35DqeBr
         WJJ9eNocBI8VizKLhvvy4oXwLwZvIX5HsqD0bHVvpyrt1vA/gMm2C6HUXi0Y/YCoXmMw
         NrGVi4hRo7wG+GJjFp0X0qhEb3T/AuqIgMIGppC3PVHTcqNvpTwBODpq/DnEUNWKTSHI
         /0dwmTpx4vWcv8nFdW3BFsCPPYd2y9q3J86lrairf62tsry65ZCUmarbA9xtMwHmMXED
         CYxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=61fvEhxqP+oiT0iHPuddkRa3gANBQT9cEa/weMhQ9Bo=;
        b=cDm4RXTF74Cyonr7rASGVuWaGwq2lOnWCOdJ6MH+J7o7jSYh9h5yvXRc2xKfRxEiKa
         bchrY5qkm1T6M4aqQ7oJdGgjhbh8B/Qc2270DatnOFjfUbYVZ82fwd7wGEPRiDfsgKTR
         QE4S0H1GVUwSvzlO+T26LuYsCaMIPIFkkRg+5hQ1VEjIE+w4akQJscO+2lxgiGGxM4Z0
         0Yygd2KBeNd6Pylw3fdq+/jwunruipQsaf1j8Ur71Ld6RIKQw8F7exPf83y18/lZcPj1
         QOciC/tJP9kaBkleFwkV0yz+CV2SPH0KlTomIaaO4QTcH52IOA9Lav7sOW2We6sstm88
         MFxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z93xjPWo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id i9si6152019vsj.0.2019.08.07.10.35.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 10:35:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id t14so41809433plr.11
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 10:35:39 -0700 (PDT)
X-Received: by 2002:a17:902:3363:: with SMTP id a90mr8771420plc.119.1565199337835;
 Wed, 07 Aug 2019 10:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
In-Reply-To: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Aug 2019 10:35:26 -0700
Message-ID: <CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS+rfNbjE29TA@mail.gmail.com>
Subject: Re: next/master build: 230 builds: 12 failed, 218 passed, 15 errors,
 1179 warnings (next-20190807)
To: "kernelci.org bot" <bot@kernelci.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, naresh.kamboju@linaro.org, 
	zhengyang@rock-chips.com, kishon@ti.com, heiko@sntech.de, 
	Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z93xjPWo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635
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

On Wed, Aug 7, 2019 at 4:32 AM kernelci.org bot <bot@kernelci.org> wrote:
> -------------------------------------------------------------------------=
-------
> allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnings, 0 sec=
tion mismatches
>
> Errors:
>     drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anonymo=
us bit-field has negative width (-1)

This looks new, and only an error w/ Clang builds.

Looks like it's been reported:
https://lkml.org/lkml/2019/8/7/320

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS%2BrfNbjE29TA%40m=
ail.gmail.com.
