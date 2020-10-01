Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD7S3D5QKGQEYLSUI5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A63C3280846
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 22:16:16 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id v64sf2429036pfb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 13:16:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601583375; cv=pass;
        d=google.com; s=arc-20160816;
        b=dHFUpCpqHulumTzs5168o9AZ9mXjXwfp8gVNDdLds/iYOwYiDqV7Yau/MzkjimlGye
         d40Foh9R+me41R3k60BOboZh+qiNoBoxqC5AQDEfY7j12rWOAFiWm9zVa81VFz6FWgJy
         xTT5ncRN13yLLQTwPPncImrcTOdtkFS48VfvIVqpqYz76RbNu5yjs9uReoDglvZK4eOW
         xVGijBqlwuZA6ypufejBoTwxCDRruRFHnadic3g/RqQl32KnX/2iunfuNRguz38SvhcK
         xbwQPEDkguW+snTWjrZXGnZffH9z/UaDb+Ergzd78Z6ReITQKhOxabb8ODwhxhUrAjdf
         c6lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=PqujAvwQ6ZGdx3fR+hPvdPhMvV4Fu97XAAgmXkFi7vo=;
        b=tBHg/0ME+PMO88H8txFEwdDVzsKHs5s1kOIOa1w+WfBYppnEhVnWFUIxYswsAjiLNI
         2oexyic3Nypad24Dm9eT7O0Ry2CxrVub1nKXdFkk7m2maDhxVIMe+L6Xbn/vAYd3FoJ8
         j25nxeDfUxEDpo0aESlsOgJGkzosGQHzdDLRIb1mFN0Q3EkDmm239qDGHu3csBxnkcT3
         pkyFOChJHEtLMBD7iJZ8guzxRjBpF4vxVFQ61wxLV9G/r9IemwVYx+zGZ8mjW+5LZGtN
         A6tDdppxLKvFR3pHpUN8DrRgAtNOnbz0/UjRzU4qddQ3ihZqa+dkF4h51LpSkoAfqFuR
         g6Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oRBuP8E3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=PqujAvwQ6ZGdx3fR+hPvdPhMvV4Fu97XAAgmXkFi7vo=;
        b=cSceDz59Zc0TbUllV48KT6uHWoshW8d+UsW3ooHE89SG/YG2UjB8GR+lZ+WMx3Ceyh
         qfPuKm5cP4WvYM5WAjnk6ZyoQpwoZk+DWpDD0DLVm0OdXWzb3c8wOU5wVQnpM13/+0mD
         xoVO8odutrN0mO3qnBZx5g3NpFfrSbb6lHlZXvpGjPnMGKiXCZDrj2YD9pU7JKE3+T9p
         m/v/nZbArMU0erGgZj6HntjvbIcjtcrRqU2ApJcPz1kjQzNf9yJUxFJeKwLUdWln84BC
         uejD1pMx3MzJ9y+ek2wmSmlO1NBOvAQWBumKPg9t38y0Y+WChrUbG2WSZ+rTLF6jBXzn
         btCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PqujAvwQ6ZGdx3fR+hPvdPhMvV4Fu97XAAgmXkFi7vo=;
        b=ezDRRp0ky8RSK0AV4FXYUI2Df2oumSIco06B4yjgS29WMbxfEGX87BX1A8J9PDo/VC
         SsnCvLOZlSN2hQ+OKBxVYZHPmXyTEfVu3qB203LTf1bFD0kFCJKWg1Uw0XzeC4JPBZHo
         CrG2gwc+OZntc+ATqh0Ko5SrdUfBk6og5wWjN6tYb5cHlmKGluZzLZqUzyGrQgQLi5Vc
         F0SDpW2vngHzxMlSoaJcQhNkFdxevOFAqRnMd50ISO+wVzFbv11FdG0DXWOZJgCPB3AG
         GXM0cI78EujTX2Cf0casOXK77aJp8c8NI1aeubknvzwZfnGgoU6sH+wMIzGHSwML4w7+
         +xlw==
X-Gm-Message-State: AOAM5326TJODBBUGJKqh2aHzh9uhUYyGuHipehdIPsGTF5n81ZaPEX0v
	yihWkkXJHqy8SNA9MiJFWtk=
X-Google-Smtp-Source: ABdhPJwGyFYU//WbZ32PhMzHaJpJmWrHN1KyprBMsA7qrfdOuUVHVzTFzyj6Qqh7KVMTdp13OLMpfQ==
X-Received: by 2002:a63:778f:: with SMTP id s137mr7346607pgc.7.1601583375211;
        Thu, 01 Oct 2020 13:16:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6485:: with SMTP id y127ls1087984pfb.9.gmail; Thu, 01
 Oct 2020 13:16:14 -0700 (PDT)
X-Received: by 2002:a63:e354:: with SMTP id o20mr6406118pgj.317.1601583374473;
        Thu, 01 Oct 2020 13:16:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601583374; cv=none;
        d=google.com; s=arc-20160816;
        b=eZ4CHQ/0XBBWhLdBU16aK4BGgTCIriuM1bQ/y4+km0+Gifnt+O7Nx/4sZFrOA8mERI
         f2hFfLYjV++Wlt5CkyfwVosK9UPdKoedXYSRceGvdgdlFpwYhnGiBCOil2XCLT7wOrfP
         /2tttaYHvnve/5uCpPPbq0UG1/9tOH1TnfltW0FgFM/XNEsZMx+EklDjhPGVc0a8mAT5
         +XRbX9qPtDCBmHQWvN6jyScKMlzsejTDe2E6I3wk2f9F6N/CX99nzKRI3LjRB19CuAYz
         xBadbxOhH9Viz1sq30DUJlHVC66xQ8rXl5LqBXKp5Tmiu1xSVzfPwPBE965Lgejc0nOr
         pFEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=8/acEsws2GMZVukilV5UT/Ja6AZUCMghvU2sECGdQRg=;
        b=N5mmiHk7MUq7nCOH9VaZ4EIbqqctaoEfc2S7IIySj0d3Sr/UdlZue0HMlnvUyOLu9A
         SHlKbj/Abs/1DJ0vPS6mJHb2Zp+t4YqSJDZllg7MfGpNBbmBqs24Van8PXBz/b/O6VBm
         Pg4fVs9Yf+xiALHBnKns3g3mTStn7QEk/w05ElOJW18Z9WJyj1n/f56CchnthSPMQP/X
         FKY2Y8keFcfW3EyBCqQ8iU90saQXRQd6bJ/r2AdADuZZIjSsIfQMNg1ZtlpamtUMaxbl
         GtlaaR2ehDAgDESfe49I8LGDsDWC/sl5rRbyZwC/NSjiyTwzLsIjL8Cd5wc6RwehUUvP
         uP7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oRBuP8E3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id f8si34027pfj.2.2020.10.01.13.16.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 13:16:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id x16so4920396pgj.3
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 13:16:14 -0700 (PDT)
X-Received: by 2002:a62:d44e:0:b029:13c:1611:652f with SMTP id
 u14-20020a62d44e0000b029013c1611652fmr8745142pfl.15.1601583373973; Thu, 01
 Oct 2020 13:16:13 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Oct 2020 13:16:03 -0700
Message-ID: <CAKwvOdmdZgnWtJ7=WUF1GVQeeGD9x6iVk7sTcFnwyiSeo-C21g@mail.gmail.com>
Subject: request to cover linux-toolchains w/ lore
To: helpdesk@kernel.org
Cc: linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oRBuP8E3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

Hello!

As per https://korg.docs.kernel.org/lore.html, I'm reaching out to
request lore track the newly created linux-toolchains@vger.kernel.org.
We don't have any email archives yet as it was just created this week.

Will we need to work with the majordomo vger admin to get the lore
link added to http://vger.kernel.org/vger-lists.html#linux-toolchains,
or will that be added as part of this request?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmdZgnWtJ7%3DWUF1GVQeeGD9x6iVk7sTcFnwyiSeo-C21g%40mail.gmail.com.
