Return-Path: <clang-built-linux+bncBD63HSEZTUIBB7NVSH7QKGQEMER4WUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 031542E2598
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 10:10:22 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 68sf1032694pfx.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 01:10:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608801021; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kyojp0iDp0mxbNN5Tc3BQChlx83qSaV3tKItkwf+pOWfPoYAcqvlA4TQ3VQyKgXAYk
         hvHQEMse07f1ZsGRmFGivWJ+E2WY30xYpMBF/echeMhRlcZrCfBylHGLhWuTi6KhBQmL
         y+DqcGJ7fm3np1Sz0kTkjGYnCkXOdvpOfF0rEm2y0480KVj+TSt3KlwwAZTJv/ZZs3HL
         7m5sTru7ukOesusFXSa6IufJbdAwLim9GVCyqLCgChHd8kJvGaGaABjGwrna7Kc+daMQ
         dJ4pNfPt7igMrPd7uFG0ad1PDgR2aQOSDG4ofm/2TYtYp2z+Z+yMyv91k4cnDgn0LIwr
         HoVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=kLXQ7YRsoiSVS9VkpWS6x0S4iYm5Z8lX19OnsUsLzVQ=;
        b=0mW9nY090nuH1bTdFaAhTcGj/CGkA0ZPN7oCgqQagBdC1HXFXZHkxAnxIfSPnOVnB0
         v3PKie8lkvKNf+zsPStJi52H3aBI6LNXGrqMOKwTaLbqeGLOEqSiDrFkO07h7XPt19yw
         hvToWWwNR95Uk56GxnlEdvm6c90O+fWQX8pX4qlAhNOOg+VOIc9hZl2MSxdC10WC+A2q
         5eC3c10h/r0HbG9kdPGW0cvnJZQP1gu2GV1Sjuqz2BJcDrBI1OJuiDhQV7pQQuNrWBoj
         YeWKjNix+ZbRfhen0UgBkYLcOpQM7CuDE5T/xjaDBe8vDRrfkAjs+HanhHbiRwqgVz5X
         Llng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Hn/+YBu+";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kLXQ7YRsoiSVS9VkpWS6x0S4iYm5Z8lX19OnsUsLzVQ=;
        b=I80BCsDtjl8W6s04UXL4Nxky5UOJDuRUr0GTJGJ0wy+Y7U+mySjvGu+2H74vaSl8Me
         67uPGQaye5GuT2zaVMl+JddnIbNTYQ3JBIBRy/4o2YHL0yJAw/JN4qyjvKs0+gfteIE8
         Qx9/i+UnH5ri8ZXUEkRDR30yWIO0iR06R14euxR6zB+NSapzQDYMKfvZMC/ZUBsbOshF
         r4+4POIn16ZRhqVr3ebQb1t/fp4dgt2zAGMfBdizEXrFhViOeaeh0/41LXmsSBak1C2/
         5fCmh5SJjNhha5/8U0RUa4g5QEWKOln6YfB66XG/bk7+qzLgRJpcwacR7rZix9vfqNnK
         g5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kLXQ7YRsoiSVS9VkpWS6x0S4iYm5Z8lX19OnsUsLzVQ=;
        b=VcJN9vdtcGeZHohDjKmYub/VYGkwggT7hxuilxI4WvOQz0+zVFm/q31ORecHeU49YQ
         0doG5KzjmU3W/LD93S/g34c3GnXCXOzD0wEo444urRBaoSFHiNZULBx2d+pwXdIowHQV
         wklAqXTmC30fTnIc/vsC6axKeuHoZ83GlvPNSile2m73fINwiaQevMoDyyABlYYZP9XU
         uFU6ojmlG7g7usM+4xYgh9S9CdMhoOehwXDrX6jLye1RpghsRMzGfDJVpYpnJY3n3Cfe
         sDsChFSJlWyFscChHepqzTKg42ZjTtBA0IO01GWfXkAwBzWhrnNnW6Yyd1IvjngKrcJD
         FGzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Vm6HZsqNIfJk0nAOTe0BBENlwKoLj3/Jn0fp57s7IyErhfE7V
	hjRIuC1TD77x7S+ePN9/anc=
X-Google-Smtp-Source: ABdhPJy+FcxpzwzAXYqq5yZiw+ynnH39+D28YoqOsYjI0wSBh4/VKKI2juXmCvx4kPcopNVPJtyKhA==
X-Received: by 2002:a17:902:599d:b029:da:fcfd:7088 with SMTP id p29-20020a170902599db02900dafcfd7088mr28825726pli.68.1608801021442;
        Thu, 24 Dec 2020 01:10:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls23127364pll.0.gmail; Thu, 24
 Dec 2020 01:10:20 -0800 (PST)
X-Received: by 2002:a17:90b:8cb:: with SMTP id ds11mr3621750pjb.212.1608801020806;
        Thu, 24 Dec 2020 01:10:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608801020; cv=none;
        d=google.com; s=arc-20160816;
        b=mqbQdUL+wGIbaxBv3WUudYe3sbx3vNHfbLENtCc9BLZNKBukL4jfEKYUoK3rkhUTHm
         ypRVsDXC5EYnfb9rWLHhMLqY4RMHr3/1IiQZOwB27yMMwiRsBMM4NY0z5O1AE8Y/lRNc
         2XIzeRzNucK/jr2TjgzOEdKQh13THj69Wt5nhLr8WySQTwxbRGWgSy81H9BJQnL3jn/g
         nYURgDFYe+YMgn6QZIEDDtWKARcMb7DudHt9kWCC/C/yLleBAEQUT8qQhIE9toIZx/rm
         OedJgm98lVifiA7xSIbEQ/zyFCFTL9eX9F4yYdF+rS6KN3w5+0hdSPFesWVO4BGP20Qh
         bnFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=63+I1n7P2+fwGQMxQ78cvsnd8t/gOAPTMjO443V0JbA=;
        b=p8Y45ue1tc/eCsdzxIuT3RiVrHTxiqn/wfoHGybJiBo66Pm5v6jISGf8jmmPHNWCOA
         GkArTy677nl7NmnZQcPaCvknlJk48dvnQbqubu932pgtC9W7FuMboFqthO0O0V1JhbTL
         uj2ucfc0VvDoU2CdoZv4q46g28L9dZOyoz38obG3ZIHleySMiDmk9jn+6sCzD1kiQli0
         x3Nhx+YVO+06Phf2UXOZsnPoQ/uc3rqZOtICqowERjLNVqjTT02QbQ+fH0CvywDaGBJq
         HIZkF24J0wLrqK+v17iEcm1r60D/xt1r2TuukFOyyYnzyGF/j6hNBN/VTheIP3ZYFIcR
         M7jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Hn/+YBu+";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f204si1182768pfa.5.2020.12.24.01.10.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Dec 2020 01:10:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 34FCF22AAA
	for <clang-built-linux@googlegroups.com>; Thu, 24 Dec 2020 09:10:20 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id r9so1337369otk.11
        for <clang-built-linux@googlegroups.com>; Thu, 24 Dec 2020 01:10:20 -0800 (PST)
X-Received: by 2002:a05:6830:1c24:: with SMTP id f4mr21556996ote.108.1608801019348;
 Thu, 24 Dec 2020 01:10:19 -0800 (PST)
MIME-Version: 1.0
References: <202012180909.WhlTpWrS-lkp@intel.com> <20201223183606.GB29011@zn.tnic>
 <CAKwvOdkA+7AYGhPk_=FA6OPxeb9Wy7FA0_5-0KCJGr-wtn_nxw@mail.gmail.com>
 <20201223210405.GB28724@zn.tnic> <CAMj1kXG58+DdfA9RDE9gnELf8ZT0dTX+g8D+3W0pVM8RUSF_OQ@mail.gmail.com>
 <20201224085533.GA5108@zn.tnic>
In-Reply-To: <20201224085533.GA5108@zn.tnic>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 24 Dec 2020 10:10:08 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFT5R11ev3GqzwLAQ8q-f2EkS0Qq2evPvdjC_XK_FX_0g@mail.gmail.com>
Message-ID: <CAMj1kXFT5R11ev3GqzwLAQ8q-f2EkS0Qq2evPvdjC_XK_FX_0g@mail.gmail.com>
Subject: Re: [tip:efi/core 3/7] /tmp/slab-258052.s:9870: Error: unrecognized
 opcode `zext.b a2,a2'
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kernel test robot <lkp@intel.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Hn/+YBu+";       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 24 Dec 2020 at 09:55, Borislav Petkov <bp@alien8.de> wrote:
>
> Hi Ard,
>
> On Wed, Dec 23, 2020 at 11:43:45PM +0100, Ard Biesheuvel wrote:
> > I hope this report is not holding up the PR for efi/core?
>
> I was just looking at that yesterday...
>
> But nah, lemme send it.
>

Cheers,

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFT5R11ev3GqzwLAQ8q-f2EkS0Qq2evPvdjC_XK_FX_0g%40mail.gmail.com.
