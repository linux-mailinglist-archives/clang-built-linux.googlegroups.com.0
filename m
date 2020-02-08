Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB47O7HYQKGQESYIG7AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D17715637D
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 09:55:16 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id p13sf1176445oto.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 00:55:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581152115; cv=pass;
        d=google.com; s=arc-20160816;
        b=NjbSSHb7anKEMCw3Y5br6Dp5HMABL72JoKSxU/rSbeI4cfEGPoV5KGgm9qZdKDfFPO
         bmw0GF+xil8Zz7iIIWmuxu8/fjehfZPQX8GOzZSZRHgdEmrO/EI7G82PteKynyoF47Kg
         kyEFGM5mft1HJ7MymqiwFzgHzXNoQNcNGoWLL0SJeOal7rAR0xPSqtzc9YGY+QrhlXtl
         BP0AdCYGLAJRIfnRcv2r5iuatGrqHINjCAbgwlhxy1Lmz1xRRwEE65ymXpocVDObMuTZ
         fCZqMoB0AidhLXtWwW+CZBaHdBvETc0smCjoh/rSgQYp3rEBFQiearxlb1SCqbI/aDky
         p/Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AAtvB7TzYZlZf27d8HnVILcJHWoZh2oDNitxhJQKIGA=;
        b=rNed68oi+09vh00c2Ro3kPVa60peIOxxhofpvgojTBsiXEufiXLCiheF5kxUWGCu2G
         kQqE8HehQqz/Nfja3aopgazl77JOfBwztL+oZk1noJvA5qx2reKDPoe3ckBL09+QR2Sa
         +2j1NIMsbiDQB5XdIpjO23FN/+PXAfRxcij/ZpQ0T/xyAu6xncnFPZXFS6rIkFl7c+Qu
         mpmnEiB4OOqL+WL+K+0l2AH0E0TljBjivWlu+bpz0640mBJJ4KhI8CBr3VMJPo0m8ch+
         b37WjWT0pxrl9KA6SIWbJnS2PstOpCGAE7j2LYjWC7eQP+JOer0H/bqAKLoZ57oTPeFn
         SF7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SO93iRw4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AAtvB7TzYZlZf27d8HnVILcJHWoZh2oDNitxhJQKIGA=;
        b=rXV2busgApz/G+5T2yN6CnAvM7nUqU/+PbussUB57fLL4cSJ0vMYdPkd+Jlmt/QLn0
         pGRlg+vSdSMKW0Enm6Bj4KJ2T46c3HWE8nebShX20aXPyuoA2LmVuMLgly7PuEmK4xJr
         8psqeQW2/SZYpkPNzdtvMO4VPivzB5GhNFPMmflwZ9AJODPknbbCF9Mpj6sGCQl5Nyo3
         BydkW5wdIVRFpSPkJwgkWcAomSTBdpBo07jAJh5wnIBgzIyE1GZcsZcomQxmZhnp1obK
         A4ZXdr6FI0gpAq3CesieJyej+mpq/ozEUVc7JhtAsaOSPJ6ASsGT159loheE8LI+7Osz
         76qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AAtvB7TzYZlZf27d8HnVILcJHWoZh2oDNitxhJQKIGA=;
        b=AXz4i5gAGY0UP59UiHplUBwRyBtWqniJllC8ImytNbafgvbS0imgD3ey6f6JpD70D9
         /WxdOKLdeMW2nxtGXpW+Y1OR8OHuZvlu4R+1bFqSlqCj3IknlpqFJ4RD17rKVvFhl7TW
         po/cF5KnysfnC28KFdNgIym9pmlv9dT61VQpQBuwZtRlpuXfhxqQAZhVuM4UVHacEScO
         5gxQtKGoTMKf4xDMbeC3n3yewbzSr7JYwPnklV7UUluSIjF5q0GbMIizMysDBZZZGn/M
         ufUL1V2J4C9rIRUdNAWANH1H5ORAQ0yTKArGqN2NwUbeklHmtVe24sDLUBQKeIgx7J5o
         6kgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXPtZexQw6ng6ThDZLa+xdUHyD8he7i27NjgNlzYFCzzfbFJo48
	8qyUWiES6YZ6x5LD9nW2vfM=
X-Google-Smtp-Source: APXvYqy/h84DFVZYua9rHrJv+SwquIsw4QO/a8ZsM23LfLyFmdL04QUielg54CMxuKjtZEG2PkmESA==
X-Received: by 2002:aca:1005:: with SMTP id 5mr4936104oiq.16.1581152115281;
        Sat, 08 Feb 2020 00:55:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7999:: with SMTP id h25ls471538otm.2.gmail; Sat, 08 Feb
 2020 00:55:14 -0800 (PST)
X-Received: by 2002:a9d:394:: with SMTP id f20mr2740394otf.148.1581152114793;
        Sat, 08 Feb 2020 00:55:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581152114; cv=none;
        d=google.com; s=arc-20160816;
        b=R27fkhwxG+usr3znMqjGwkuWxKhMOZTZEcFz4wsw3F/7LgIk+C1xzL+lKWSbekKQ31
         c2fAP//sQ+zOf7kI5iqM6bcscFSsDKS/o8xOmfB4hQwQLhYrG6CI/SMQHiAruok6ay1S
         N06toiYIcNNm8eBVbMpF8NQGfPEbfrDUtNIl3qy1j+mNRGBUJpc/We/hmOrvJ7Wh6lqI
         Mrw9wI8SiASyaRkUAzxmbcn3dLZJ3iIDeOs0S3ZHteipIjWthp/ZKIfMLusAT4ZkbDCf
         awMXmji7Chcn3L4masSYvOEpo9R3sPDRRlK8jPTkI7CVHPq+zEIhs1XdZGx8b9Dp/NbA
         FGrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mYQGK6YXfcZc98jtf4E/uGifjg8qJuSxlB3RUf5LzII=;
        b=R0r9L4W2rnKH+kLgIh9GVEeAvqn33FAAqKsF/Lxp8TYO3cPVMrBvgmcmcDarMDtfAC
         pb+EScL7FRNw26CYsJnha2ENcf0M/z08nLJdofWMRpbXns7lu0CitEaFqCpix1VkB/pq
         MWR2abGOwUv3rPswYdq9ig/P8OtD65unNGkBR1nWNLvYb+5/Jhmb3Cba9srnVhTCd/tL
         sewj5x8Ds5L+Bg9wHPcSbVxjl2k5N5EoGikvNErb/tK58+StE7TwzgE+kkLM6JTLFiv3
         ywXzbujIwAMI5xLMILW5vIMDFjFaBBCzDdMkxBkP2AMq/FHGGKvisAtRi739EiikXwG+
         N8MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SO93iRw4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id t18si101015otq.5.2020.02.08.00.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 00:55:14 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id d62so4467353oia.11
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 00:55:14 -0800 (PST)
X-Received: by 2002:aca:c70b:: with SMTP id x11mr4907987oif.29.1581152114456;
        Sat, 08 Feb 2020 00:55:14 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n17sm2063897otq.46.2020.02.08.00.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2020 00:55:13 -0800 (PST)
Date: Sat, 8 Feb 2020 00:55:10 -0800
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Nicolas Pitre <nico@fluxnic.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Russell King - ARM Linux <linux@armlinux.org.uk>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] ARM: rename missed uaccess .fixup section
Message-ID: <202002080054.CBBE423@keescook>
References: <202002071754.F5F073F1D@keescook>
 <CAKv+Gu8Wt-QX1+9E+QCk30CAttkXP2P5ZKQACqeMDFGeQ9FCKA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8Wt-QX1+9E+QCk30CAttkXP2P5ZKQACqeMDFGeQ9FCKA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SO93iRw4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::243
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Feb 08, 2020 at 07:54:39AM +0000, Ard Biesheuvel wrote:
> On Sat, 8 Feb 2020 at 02:02, Kees Cook <keescook@chromium.org> wrote:
> >
> > When the uaccess .fixup section was renamed to .text.fixup, one case was
> > missed. Under ld.bfd, the orphaned section was moved close to .text
> > (since they share the "ax" bits), so things would work normally on
> > uaccess faults. Under ld.lld, the orphaned section was placed outside
> > the .text section, making it unreachable. Rename the missed section.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/282
> > Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
> > Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
> > Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")
> > Cc: stable@vger.kernel.org
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reported-by: Manoj Gupta <manojgupta@google.com>
> > Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

Thanks!

> As Nick points out, the *(.fixup) line still appears in the
> decompressor's linker script, but this is harmless, given that we
> don't ever emit anything into that section. But while we're at it, we
> might just remove it as well.

Agreed. I'll send a separate patch for that.

-Kees

> 
> 
> > ---
> > I completely missed this the first several times I looked at this
> > problem. Thank you Nicolas for pushing back on the earlier patch!
> > Manoj or Nathan, can you test this?
> > ---
> >  arch/arm/lib/copy_from_user.S | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> > index 95b2e1ce559c..f8016e3db65d 100644
> > --- a/arch/arm/lib/copy_from_user.S
> > +++ b/arch/arm/lib/copy_from_user.S
> > @@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
> >
> >  ENDPROC(arm_copy_from_user)
> >
> > -       .pushsection .fixup,"ax"
> > +       .pushsection .text.fixup,"ax"
> >         .align 0
> >         copy_abort_preamble
> >         ldmfd   sp!, {r1, r2, r3}
> > --
> > 2.20.1
> >
> >
> > --
> > Kees Cook

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002080054.CBBE423%40keescook.
