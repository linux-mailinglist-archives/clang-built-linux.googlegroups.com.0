Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBLVPUCAAMGQENQMJDUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 793C02FCF2C
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 12:44:46 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id n17sf490610wmk.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 03:44:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611143086; cv=pass;
        d=google.com; s=arc-20160816;
        b=r88DF0VrjPj8gmoPtf7ri1wU6wqr09JmqW9gx6S95t6KEPCwgig90GgANV+kgCCsE0
         LnGfI+fPMc+QesEmZ7hDRgMm4PWbwl98v1mJT3Alt7PJKZj8U8Q64spCYix1HCFlTzNl
         jKLTUn0zaebhQmipiKnkyt/52kr7XXVD3iC9IX6FE5Rdu+yJXhee7+67ocgSQ4UmuSKz
         CCtFr+4sB4InW6dfpjPdM/EictRmyiWlP+OBsF9t1faqUOUfm0EEcjG3APuUmNAaJyN/
         OjrEjvxVoucpJSnnTfHe/izMnXoZZNbgu70DQHjIqfzv2NwjpFdKpnbmuI0FcAdzNfkw
         Q8FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XE66tawSXeudkOLMWeaC7NG1V9pUt3PGzsiDqPz/rf0=;
        b=jNkJnKCoq/YXXQ/5Bh4HFMvGCjPSYgwbZShvw71xgPDRH+mCiUTT0C2SZpga0wVSqg
         0yxWYiaKGn+3nB0xYp9iXmqQDTzzAhblbAUyUGMFzcrOQzH1RghRBqJUvIatZRb6Q4w7
         ehuZmqKG2mdXH2KZW/cgZvSzEAn+VhKqoVc5NB8lWmgkRhqta7oXUJfdRbB2uim3VotY
         /6UpRtE9cd7HKP4Rwgwzmfo+5pYIkOHNbyxYmHQjHbgzgSqpmuTBnbfjsuvGajY2NCI6
         4+oG7GDgoDIS4vaAEEsxfuB3407SLPwOaBUxttY9ELIkMYa39y6b7LSb1rXesYIcAtXa
         Xx+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=E2E7ATLf;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XE66tawSXeudkOLMWeaC7NG1V9pUt3PGzsiDqPz/rf0=;
        b=PjeCXnFWS0FKnPZV8QOnaVZI/XsdZK+k1HGhytiPu73nAhKgsngSogvFSZxJ1mUXPo
         FeNsoMbm6U5yqoMT/XR87oDIgxpNSyykMVSCfn5ByRCDXcU/0RNvxEW7ufuiXRrfHzP5
         Qmo68lrjaHxxby8zFOY/AWmRk/eSlxCV8TUCxBFpTDuD1B3qRvfvNOgmyf3Bbq7Cj13S
         nBCH/ZSmiDo6bE8nBFG64K+HHWb3tpaky3BuXeN2nd01+l95N2NFWGz0N/DmojMvzW2j
         TaBzx+CV93q5RiRSYBEJF3Gi8eEIlHD0ExzL6Qfq9QgYcYf+GhKiZfGB17ESTv5tphY/
         ilog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XE66tawSXeudkOLMWeaC7NG1V9pUt3PGzsiDqPz/rf0=;
        b=J0yqquqN0xI8RV0VYRtEHaZmtCTkzNzMnWhyvmuQgrN0+JZ4Z774rm0vu3LOyJKDHG
         ywQ9TxrGgXSCLLCf7dzkecs4G4QdjF5t5zJe2W8ZNdC/zmxYXEn3bEyHAnq1Hgl3zNLB
         4auAO+HsfrOvDSDDQmGtoqwMy/cYXHEs4Sfw2pLfZOaaDwgbo3gTpu9gqDnRFFVXbMNQ
         kvlBnQ5Wjpew/KSzUcmQ19bulwU2j+zcgpjgudnC74pzottLFEcbKuX/GsW9hsz0ro8h
         4KIzYNwzeeJ6cQB2A+2iux2f3PGhUuHxjrradAOOWRTelYL6y7F/pZZ1pxNP/2zQUPX3
         +URA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NWYAhiZcD/IEWcZKw52KiRUv/ePQ3lcw97gLpUGpKwjttb2Sn
	tRl9+8Uy6/p0jwHnUodUnfA=
X-Google-Smtp-Source: ABdhPJwTWhBm+PqmWG2KlaNFIl4vh6crTLzn5Upnjbk9I06LJdAuxNz1PSk+C63k8dTQ83hQu8+cEA==
X-Received: by 2002:a1c:7206:: with SMTP id n6mr4009448wmc.77.1611143086175;
        Wed, 20 Jan 2021 03:44:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:60c2:: with SMTP id u185ls1608484wmb.2.gmail; Wed, 20
 Jan 2021 03:44:45 -0800 (PST)
X-Received: by 2002:a05:600c:4e91:: with SMTP id f17mr3969256wmq.142.1611143085421;
        Wed, 20 Jan 2021 03:44:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611143085; cv=none;
        d=google.com; s=arc-20160816;
        b=OBag0oEGvTgkh99Rh5f++apfyFAdjg+E9WmXnDPGoULGwMGNGiRMCgqKrlA9EuRGSq
         MftyqKzucJj6VVeXxyu+Zk52u5/bBTOrsEPZUSdZ2Y/yUAa6Noc9rFjc6vI6HVDcvffd
         J07wHUz+nqr083f3l5TyRerEWcTVwjJjv8B3bZ6f4eAfaab6Hu1j1uoik6+EroH5C8Fe
         tUS89DF2yh5MNvInlYeo57MmS4IE3amVeZ/hf+fCWwly4nmbRKybjkyWthKG8X9uCjDD
         tcDRAIxCUOS+MJ43E2gTdRafle3sajmsIn0VSIFVQlHBBVEnHAcW2elAZGl5cPCaxDFl
         iTlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=20LzYZPoh99oMXgfw4CHHwaH/q6GrOZfZD3z4Nnb0wg=;
        b=nAmJFTLyU2Sred9d8lbxKbVqu1bixr0kyus45I6nMoGK6g+OULYI7KjW3Nwnh/I0sm
         Cr0C3/ofZ2K+EfMYGBcK3u+5IBQ91FfeJfuJcJFwpKyrVmyak05qxpiVzL3R50Ew8aIT
         hgYXQduczbxyQmnb0tKDIfCkiC44CB1DiM3Knt/+iGemMtqSj4lUBxnbpO/h/OYGTYoS
         XHY8szA9WKc4tVtMdp1bwvxLJdLOtICoAgzotM7YtzYzL/44CLjBy9SVJxkrb/u2LK7x
         0rhoTQ8cbTBE8YsDT/PZsVTbiSUmua65jt6WzM558LI/8p7GC743xs3jdGgxEYW7hTW1
         5fhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=E2E7ATLf;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id d2si140334wrc.2.2021.01.20.03.44.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 03:44:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0bb0007fac97ee58c503f0.dip0.t-ipconnect.de [IPv6:2003:ec:2f0b:b000:7fac:97ee:58c5:3f0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 570471EC046E;
	Wed, 20 Jan 2021 12:44:44 +0100 (CET)
Date: Wed, 20 Jan 2021 12:44:38 +0100
From: Borislav Petkov <bp@alien8.de>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Arnd Bergmann <arnd@kernel.org>,
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
Message-ID: <20210120114438.GD825@zn.tnic>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=E2E7ATLf;       spf=pass
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

On Wed, Jan 20, 2021 at 10:33:43AM +0100, Ard Biesheuvel wrote:
> The churn doesn't seem to be worth it, tbh.
> 
> So could we get rid of the complexity here, and only build_bug() on
> the start address of the EFI region being outside the topmost p4d?
> That should make the PGD test redundant as well.

Yah, makes sense to me.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120114438.GD825%40zn.tnic.
