Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBAXD6GAAMGQEWB3PYAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A0030FFF5
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 23:13:22 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id u15sf2699783wmj.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 14:13:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612476802; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Na73MzfbsO9iUayvnehgUYsmDR0BAhng0bzgByA598aNWSKqMI833ZwpfuAnei3Cz
         lvYrahs2Gfhw5W5m9PeQ/R+C2wMQ3BAV2nCidDfZLgU/4xqGWMTKHBZls1Pid59+TxGr
         QSAPw1w45W98T9JkbWlHf/MAUIqBVdK/zKDuBGcqiA6mDIgSEq6Y/SUjvjqEDwgnqXLq
         WVYLz1KeVBTxCB0SkAcUjdM+w8jyXAogzPvE17xW5jWfwG7gdaUttJFZPMAR7gLLfByQ
         FUJfkrnJ0oTGyT1KJdTZI76W9FLXYQ/GitqPhNRjLJiSW66LSuBzrNYHfVBn8KDQSEzp
         NoLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Bsc9QKF/KCf0xnptQwhCjzmPcpYTrzjghxbHTBIyl90=;
        b=QvxI47bmpR0wA9rPPcA/ijzLNf/e66h9x7FuhtqKwvcuxFIgy5Wfb7XpBPKo67LRJ2
         SdYP+eYCex4mJbDKc7ISIJrxTCO+tqBIC91OSb3LP11hpZZZ1E09tVMp43xTyQU4P5KE
         rMt51fVKoWAdpCdiNc0OQDk+q0i5GHlykwqnHVAA4h5fZbJggAiNYacI2HH3qqwFjW7j
         N4dr4ao4NppEjd85CZyFmqDY5Qn0bv3HO2NQps2n4J5UZQdzPowYcqcjFI120jVoKsiQ
         h+Iyyv3Nx1RcOnutRDP7OieejVrQAag9OK55eR+K3XZ9MzCY5d54RvsKwbMlClGvBPep
         z0Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=RMPqKhZG;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bsc9QKF/KCf0xnptQwhCjzmPcpYTrzjghxbHTBIyl90=;
        b=jMoFEMRYO3USibKkt6dm8js2UdDOD7dHkYzPpFXZxA0e0SScUHpMsmIRRKwHe9+9fT
         zHEV55BPiWNtSQzfcTwHR4sbJAGk+7KeFSNvsVhPyNMU4zBy7tmComcpfJxMcNtP/42D
         l9xRn/rlnONJV0gS6w1C5iU/x1vtWqjNPTKJUTpIxR12H+aXJb8tK6uiq1/Nz7+vscm0
         VN1bFClOinxz8PV141NXR+5jCuIUeevHcUvNDnDXJpIx/u5HyRXrp/ExjQkxJXrYCx7y
         0ET3dPHKcRSQFXn2BvE9xuf960e8AvCvkLKm9+HwTaXjnaXI8zyhC/+YiY5S2BSkvCyS
         Z30w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bsc9QKF/KCf0xnptQwhCjzmPcpYTrzjghxbHTBIyl90=;
        b=WLpXfkS1IwxI1SzY1eI71/wHMnbPNGvI5kqIJWp7rX0HqZmUZ5V8670W1WHAaw/i1a
         aD6rOI3IfwfkWBy20OP7d2bGC6ykqEvNm6rlf4OOetdwcnRJQ7Iwrwz9h/iNJaeoQzT7
         8238DlN9aLi35vTVj7yq0ZB2Zn0Ruw3Ib8RZw5K/srZ2H2X+UBgcGguOuMK1MGz+/kQf
         sEN166k5DFjCG/hJARxjcs9FPlL4OJ0pJXI3KxpSRb9PeiWZ0Do1fJWaLRtBrIwbROF9
         oXMAPkCF8HElmaT4tZe5t+Eh5wEIUSa7740i3UKVa6cEn9pSRkAOi5mo3oTQi+whmJaS
         7sKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tzeUq9pLW/h5u5BXAF/NwDtAECx2nayccGtVJpDQzByMQn5ee
	YGFK4H6xx6IDggcl4j1CX6o=
X-Google-Smtp-Source: ABdhPJxGgUyoaOnhmCPdvTx4QIpUibmYopwQpvjk9JKTeUI22XWG/YGlKQKNtqWIjzIHb3TvDeZpTg==
X-Received: by 2002:a5d:5502:: with SMTP id b2mr1512585wrv.245.1612476802324;
        Thu, 04 Feb 2021 14:13:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f852:: with SMTP id d18ls1785222wrq.2.gmail; Thu, 04 Feb
 2021 14:13:21 -0800 (PST)
X-Received: by 2002:adf:f4c1:: with SMTP id h1mr1583661wrp.102.1612476801555;
        Thu, 04 Feb 2021 14:13:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612476801; cv=none;
        d=google.com; s=arc-20160816;
        b=k3F8L7KJ3S66++SpdGBstiOBVjrjYhMdapruVuQVNDmvFNP/DJ8fa6YVOHkBWvnGas
         IyDzLXfKeYVoihrvaJUYHdI/Q2ben93YoTFd5ZrUx4eWsAGQagRjCcU1xXT/h7Z5Rbbd
         4sD4ShsSa7RFeS3Fo7Qhd8cRqpEOKJMDGupEEcFBIprThewcqycCCEyaIvR7tdT9Bdpy
         3hMRExMWlrK3X0Q//xO48yxVmVbneAe0LzE1txd4kh3j8waTfv7apo3OZf97r0bxivb/
         6LV9KigoERe2NZ6pfIIgE3LmnE35nh2oEPqqs6FVWWfRdsxHCGrH5E3F12vRxlxFbXiQ
         IHEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qUcBmX7dmaTykemYNBo1gvegAj0QB+Et810B66xa7FI=;
        b=CKyrbG+NuJEmOn+hjzzpJJ0moKuyXNcUjc3r3U4wPqiD8vwuBGfRBcqpoox2h3bTQK
         8g5ikl1E76yTn8BgaFhFgmLDk2ETll3I1ERbok0sGyxDDSCFqnoxaTuH2gVRtcI72hpm
         5nIUDgxxrYU6wxfz9BBWsomU6JHOxcspYSQkcNJkn/XEOHfkiXFJ1I/aez+uObv2E/lz
         7ngEcZCsxX1lk6qE4scZY6KgZhsuk5+2D/+1srbFsn/5Jy2k4gSF0sohYnyVLd+V5OiV
         rkSrpViRVY4zzwKwUL+e6moeasRvF2ssBSlkK2XQlMCvKHp4FbZ8C2CxPV1VCj7pfmKC
         Ns9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=RMPqKhZG;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id v16si534569wmh.1.2021.02.04.14.13.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 14:13:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0c7e0006ca03b6d355ef00.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:7e00:6ca:3b6:d355:ef00])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id F35AF1EC03C1;
	Thu,  4 Feb 2021 23:13:20 +0100 (CET)
Date: Thu, 4 Feb 2021 23:13:18 +0100
From: Borislav Petkov <bp@alien8.de>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ard Biesheuvel <ardb@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
	Arnd Bergmann <arnd@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	platform-driver-x86@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210204221318.GI32255@zn.tnic>
References: <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost>
 <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
 <20210204105155.GA32255@zn.tnic>
 <YBxqnosGDroAnpio@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YBxqnosGDroAnpio@rani.riverdale.lan>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=RMPqKhZG;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Thu, Feb 04, 2021 at 04:43:58PM -0500, Arvind Sankar wrote:
> This should check EFI_VA_END instead of EFI_VA_START, and maybe throw in
> a BUG_ON if EFI_VA_END >= EFI_VA_START.

No need:

        if (efi_va < EFI_VA_END) {
                pr_warn(FW_WARN "VA address range overflow!\n");
                return;
        }

We already check we're not going over at map time. And our runtime
services range is hardcoded. And we're switching to that PGD on each
runtime services call.

So I don't see the point for keeping any of the assertions.

Unless you have other valid arguments for keeping them...

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204221318.GI32255%40zn.tnic.
