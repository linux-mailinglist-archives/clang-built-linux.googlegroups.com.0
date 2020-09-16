Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPVHRH5QKGQEZ7SLQTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id AE57F26C6D1
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 20:04:47 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id t11sf6339589ilj.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 11:04:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600279486; cv=pass;
        d=google.com; s=arc-20160816;
        b=is5glMWEXHnR9qv2+nV8jFzdtcyFsnsMkH2si9aKJL5wFbPMVBXCj8rw9JHIp/Mnls
         V4FvU7/lErj0BopzSoQhduedbPSKvXfS66QH4ScsA7Bgk8Um3sglExP4/M8ArNXis/4D
         19Wdn/+QH341RXQxAOBuyInD0P5yuKWWwx6bBl3BXhi7UqmcG+WOU4YABzPnHAwYd4x/
         RPy2Zvk7oN1MN42Bcda4mnc11D/hFbGefSfdBc6lUvvgjAfRKmZ+/4spE3lqKz3gSF4M
         VDVWwXPFe4dLmEhJ/ttMNcW2AToKmw7+ycmd0MqWY7DB38MCsaYbE9/NdiQpBJXRBoiG
         Mw7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tUQvxxpnZl4Nnh2d/S7/shDJqFDqSOxsf7PUFKLBCyk=;
        b=SnKVaOOvB2ZmWC/vfrQK+4KBKehrlpe49x9yoIurViGas4qK1bJkumEfosK80PBKSe
         osTlF9iOyHdkhPXTW30I6hsoNIiRP5xGy5LcT2C8+AJaxuxCcb5F9Oax+ZBfFgFki8Zk
         JXIatROyjqALR09K/uCfyVY6CqWMXOh7z9SZDnUiVovgCYGvzP7oXEAIFY6/9lUfGrID
         PNJbQ96Jr1pzahby0m6JqrVAuF0cUI91yFqOaZqbrz+bIzQYqwrkmhPqd39dQvY8c59E
         c5CIW7phiElFr1/8VLrvVowzOuggDr4LZeiU/Nl8KdOWguz/Ne+BxEMJqih2lQsVuG76
         BSog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bZvY9lcA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tUQvxxpnZl4Nnh2d/S7/shDJqFDqSOxsf7PUFKLBCyk=;
        b=Kx827LuOVgPMnz6J2RtKTVaIQGw6u9TY07S+yxo13tmaVDDvvEfyV7eRTLTDNiqTO5
         FEPmfGY1ssKEgdMMwLmPI5serTmMT9Yv+QwqdQPhL3mTZGGiJt35bdeZGdRsSPj9YY1C
         Fbra7+pADR6LKQ7XsbFi+GTmdvbXC8hbkvhNb71vjo6fm8HLO9psYTRiQ3+UpYdi8K4X
         1WekWrk8a3koyoG27mXnGa23IIa3dQAM3d7Aw0Cyzmx56+8Mcx1xXNGXHz+Z7XndpH9L
         3bFoUeb5novAydC6XYsmAWurcWEu6uh8+ahZ0rxri3Hk3+kmmlOqHj+QMG16u+eKZRFN
         r1rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tUQvxxpnZl4Nnh2d/S7/shDJqFDqSOxsf7PUFKLBCyk=;
        b=jONaUrBMc/6G3lp9vbxwMY/jYntiVu5KCJhQO0QKR6w1RPAJISbgU+MfFXe6L3ghQv
         su1Upu1l9ec4EMaKJttazdD0wnkxS/2YJq5Seycw1ZOyrqEAg2sUtIYaWwC9NEWC0Tns
         3ywXJ1mF4GdtInW6U2gCjzyqECL9nPz3PLcbp6h6mL7NvYjHVlU1PREMOD8p7GRNf2/2
         QCAW0OjQrexYkRQf1GtSv70a+bnyXgl6df83fXpo26jqp48virsku6ZkSPxSxIBK6ubJ
         54WqTMPVQciyBb/u5ketAMfWzVDsv82ZmsXA3KgBB4KqVHXRdbY3PpJsorHPq5S1i86j
         MiSA==
X-Gm-Message-State: AOAM533tQwEHHNnQc9xvzy1O6Y0TtFBpUUK72DC9mV+JQqD9XstlBtu1
	KPCK8gNkTKbdP2HaFiheLX0=
X-Google-Smtp-Source: ABdhPJw2sKCOZ9vOghSaQgeA5E4+7s+p4TYrynD1s0o6P1OIuru6Nifnl6heAItOCQDus/acPR/JSw==
X-Received: by 2002:a05:6638:13c4:: with SMTP id i4mr23628266jaj.85.1600279486552;
        Wed, 16 Sep 2020 11:04:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9142:: with SMTP id t63ls784298ild.10.gmail; Wed, 16 Sep
 2020 11:04:46 -0700 (PDT)
X-Received: by 2002:a92:358d:: with SMTP id c13mr16392566ilf.73.1600279486143;
        Wed, 16 Sep 2020 11:04:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600279486; cv=none;
        d=google.com; s=arc-20160816;
        b=eg0brG14rc0xRuIjEwbNO6foVUoPs3GYRKDG4+LI4iyFLpJ5g6FY0vkFGuKnKTX0vO
         8upJQOGihPbQAUNwFOFSnlOOUnId3I6i0r9aeZGk4XRUJtZzk00L/E5LmVONa6losy3c
         05xQe8naNsKOv0FPopHn5Lj1SF8Y2ODfUI5RuOtCZT7qwp/FIWqtGEanS3wiP2si7/7Q
         A0GXmRAPDLJY+oGm5fIDh1/PqmC0qE2tzZruhOLzWzdjPL6fQBzf7Z2938elZmejspA3
         23VXJG0PQTHP/zOI9lW/BOUPvXPSlif3Nvt+P0FaN2PvSsEPlNwB1PDZ2CZSLd0hyN3C
         00qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rZ2gqOCFqYdMmC6UEOtaB1iVFCf6huan47rtv+YEmwg=;
        b=Z+ORzZEDXJEu81dRfddeOYxvQnrIH9wOuNmHa1hdblzTYfBefE0/Dw5JcxU7cLQgQw
         Ulcm2cK+cRwYbQ4kdCFtKuPVFqRGJX6r1Ar+S6gu0SPenrwgmz/uPt20qxO30pLPX9Jq
         BY7fqme2aIVkV7XLokxsJWmXfx3o+tMzVDQUZY+ogeabSpR7kRUlx5R9nzZw+0EXYBba
         lZJ5VUo5D1vSJyQYpqfeMWWIQNgiNoqVPcT5xHNYyA0wleMfEmB8mXVZsI544U09YJZa
         x+6C2pe09wW8HQRbn+xJ2yNcX1OL8Bnp65b1yyOxM7/21GsH/NrBj+HqEkhod/UhkYD7
         fvMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bZvY9lcA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y1si397161ilj.2.2020.09.16.11.04.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 11:04:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id u9so3608821plk.4
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 11:04:46 -0700 (PDT)
X-Received: by 2002:a17:902:7295:b029:d1:e3bd:48cc with SMTP id
 d21-20020a1709027295b02900d1e3bd48ccmr8828151pll.10.1600279485421; Wed, 16
 Sep 2020 11:04:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200912172643.9063-5-James.Bottomley@HansenPartnership.com>
 <202009131413.8dt8QEc8%lkp@intel.com> <1600016571.7833.9.camel@HansenPartnership.com>
 <20200915091140.GC3612@linux.intel.com> <CAKwvOdnDJKPJ__sVKX2HmLUWyNPo=b0ccLvyBLyWoFfC0EFkiA@mail.gmail.com>
 <20200916162707.GF21026@linux.intel.com>
In-Reply-To: <20200916162707.GF21026@linux.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 11:04:33 -0700
Message-ID: <CAKwvOdnM66H2CNwsscgvALsb=gdiV9UDLQuqrKzdbmCr5S1McA@mail.gmail.com>
Subject: Re: [PATCH v11 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, 
	kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mimi Zohar <zohar@linux.ibm.com>, 
	David Woodhouse <dwmw2@infradead.org>, keyrings@vger.kernel.org, 
	David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bZvY9lcA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Wed, Sep 16, 2020 at 9:27 AM Jarkko Sakkinen
<jarkko.sakkinen@linux.intel.com> wrote:
>
> The compiler that you use in your example is unfortunately not
> preincluded to my Ubuntu installation...

$ sudo apt install gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnM66H2CNwsscgvALsb%3DgdiV9UDLQuqrKzdbmCr5S1McA%40mail.gmail.com.
