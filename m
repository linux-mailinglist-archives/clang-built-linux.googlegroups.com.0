Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ5JQ7XAKGQELFF5NIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B6FF0685
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 21:00:41 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id t33sf16786990ybt.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 12:00:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572984040; cv=pass;
        d=google.com; s=arc-20160816;
        b=ul2L2yWmT1Gj9/Tk6o1ZZM6oMjUMfHARZ0fpc8TPbPoMnapyjgfbiIGpDy77T2PEBd
         yym+tFz2rV5EUnRlLTzpS0uSpPSYNvfS+h5bE2okBt3oH8DuVPsRK70CcP3yCdWYYEdN
         L8ZjIFOTVDYHMcd2FPt2wZxcLUY3wkv/0nwpxXHsXWxQBYIcsNaZteKqicJ5qL7bVV5E
         QRXoNpPAfmfGSTpmTukLswSB7n8pPVX5nI5m9P7G+MAN1W2y2Huzl97TOzmWyjcVgWH3
         Ld+0/RH1aXxt4Nx3Pyv+H7P3GhCIpc94zIO+GXBZD8OPO2yYo5HcDkqTWbNSL872DJ8N
         X9tA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=92m4xum8W+5BCEW7LcNJG40LLuus8z7oe0FzWsRT2ms=;
        b=MQS3WUNVb77m9lMs/OEuuKIC4WuKCZoHnf6nhmf/3+lZVkdaiYPbYRotrzcyXSlSyL
         v+hZ+/WHxUjkpbPgWLVXoADW1ctO1Wm0KoZ+YG+5t7LOtgmv7BNDwGcJ6WIlbLMiLsGU
         p63CIeJ8JiZpZhM1lUC1bBx+oiF4A8p8kwh9YemnXZpzpAlf/dm0cSItS7cW1h6dSVB/
         r2Aoyfa0/SgWzARKTlr/tAh7CqngT0ggGKgUkU34P+kSao5SYxwMiMCN4tEoC3PyZfaV
         i1L7fH9OoReUOeWun9tz2R9TFw3GdB3Di39Cbt8rLNsPcE2UnbMHlTiXo2Unv3feUq+t
         ZXFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IlrzHL7e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=92m4xum8W+5BCEW7LcNJG40LLuus8z7oe0FzWsRT2ms=;
        b=S/4I2FhGES8Osca19wohTVVQbv+jBCwZXeQ/oDWufVeu7ftOZsSktUBrUoMix7PX4A
         fwXYne3IVDvYJSJhA4kFu+QfLgUEhIp4JZfwStwZHs5dFP8VxmCqVM3C1HVHTP9HpVh1
         pCMcslxzoyRBCFY+ZainYn7owzlOyTGg2Lsht9Azx1l5rSaIDVPMVnrGC0XCn8CtEPv9
         NYJRDEAQlMu6BxF+IHJYQ8vpfueYTtb+nrM4m7qfPEvKzoG4uyt741xW+mwv0AtXMwNQ
         tKQ+SfxKTgpqHMsWPsBnHLTy6GrZLgp7Ldn+jt6EU2dCDd17q9XO4cPSsv/w7Ppp3rDX
         YT4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=92m4xum8W+5BCEW7LcNJG40LLuus8z7oe0FzWsRT2ms=;
        b=UEptXsaxBLSbaXBSKBByJ9TxMnT02Z2nhw3Kvyyz0/YUBlwjPh4gpeq/fGJ9GsneFa
         sWrZBBNBKNkKT1tpP2IURZSSUt954LuvP4B1gFIe9h/BfwS8hyjZB9u+rbQJ1tPLNWvj
         TS8LHkaZs2bs4XvLuT+/N62T+pAqYdxVjq5FjvnP577SYbEflzhzx71vjxk24T18uAAK
         QEzudGu/UMrLCs7Ei+QYXzYaiTXOs6MLu/Rr+08juUYacs6ttr+Vi4k35KijclslXI4B
         qHDdxeE4KOPf+UyHlPlKNT83RjHdzXhL54NgUtcN112NXvCWJ0+ybp5QabrHMntDZokX
         Z7KQ==
X-Gm-Message-State: APjAAAWQOI+9/XBPDxdXoabXy0TjoM+4bxy1nSeaeenVWShivMJO9bdU
	eA2d5LjpszKiHfUFrxfJ8q0=
X-Google-Smtp-Source: APXvYqy4jhYFonsPtZ1eWjY1VJmtUz4K/4WZvK64ugwMLkM6VQY/A0qBbJA9k72jQLGNdh933lkVWA==
X-Received: by 2002:a25:5d4:: with SMTP id 203mr14136976ybf.152.1572984039156;
        Tue, 05 Nov 2019 12:00:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:5986:: with SMTP id n128ls3297065ywb.7.gmail; Tue, 05
 Nov 2019 12:00:38 -0800 (PST)
X-Received: by 2002:a81:af49:: with SMTP id x9mr27190401ywj.421.1572984038806;
        Tue, 05 Nov 2019 12:00:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572984038; cv=none;
        d=google.com; s=arc-20160816;
        b=gytdw2GA0MjZUtDlUF8SM/95ZeWsrtspFhNu1GiF3FxySk4y0cDa+ibF+NIpk+Wc9v
         4WXtQipPobPfemKhLlO60BYLjHwEviIPFRgM6cCSqUstxGf0lSHHAXmSnMcQBCOFFBbi
         OR69+LVWyNIpB8Liz7cKI8dAgMpT5ltdfXSBRnOXEF5q9cEWfMHT73PW06+fKDubiuo3
         ZjWoZ7ujMBGPiIEpbJby/rk2h4sZTYcXsIHKoK90fBITkKMN105rR5s2jhT31IfWhWQX
         16QJcPLvZVhfvE+9W9Y6Q0PGLgNVYvFaDinMbsgjnkAhDwS3+zyQpZrNQY9dwehVtowJ
         Oi0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ijT2GiWjIk0i5IPeCeqTo4IKLHUoxPnZNqQGZcLSsUM=;
        b=XL0by5k7TX3bKxrpnbeTIM1MkiZptk4khYKxEq053GDPafIFZGnH8VJMgv80819xLR
         xdBzWdU+jNO18niZVcJ3RgD9OgS5xN4WX0AobVFUjzDj+CwKhAPFjRw4BXTBJ7f+I0V6
         DvN5eu6RxGpdOTbLn1STDMrUrAaV9rmO9Vk+dt0mQdByObx5rUqSyYYXjHSaHp++F9mK
         5b24uqusGovfkjUvb2UTMiiASXXRgdXqs3n/pI/23jDYXCnQoSylAL5AWLdi4GZXgea8
         24Oe/jPz+JQgNus8Olrrv01uA2kclVgroyeTD3azEqojO5Vhc+mah05SML75GgDWMeT+
         Og/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IlrzHL7e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x1si580295ybs.0.2019.11.05.12.00.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 12:00:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 15so15149137pgt.7
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 12:00:38 -0800 (PST)
X-Received: by 2002:a17:90a:178e:: with SMTP id q14mr1056137pja.134.1572984037414;
 Tue, 05 Nov 2019 12:00:37 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-12-samitolvanen@google.com>
 <20191104171132.GB2024@lakrids.cambridge.arm.com> <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
 <20191105091301.GB4743@lakrids.cambridge.arm.com>
In-Reply-To: <20191105091301.GB4743@lakrids.cambridge.arm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 Nov 2019 12:00:25 -0800
Message-ID: <CAKwvOd=3mEUaxMX7Q6n3DAMAdge4eB=KYdiQxn2tY77taCD1NA@mail.gmail.com>
Subject: Re: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IlrzHL7e;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Nov 5, 2019 at 11:55 AM Mark Rutland <mark.rutland@arm.com> wrote:
> Similarly, if clang gained -fpatchable-funciton-etnry, we'd get that for
> free.

Filed: https://bugs.llvm.org/show_bug.cgi?id=43912
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D3mEUaxMX7Q6n3DAMAdge4eB%3DKYdiQxn2tY77taCD1NA%40mail.gmail.com.
