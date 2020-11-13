Return-Path: <clang-built-linux+bncBAABBDXNW76QKGQE5APRENI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2872C2B147E
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 03:59:28 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id x11sf2546702plv.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 18:59:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605236367; cv=pass;
        d=google.com; s=arc-20160816;
        b=rSliH1GuIeEYOuWK4eSe0VyVyfrV6JVnKbLLK85THbsmtoALuGhaxLrFc9KE05Hb2A
         0C1c9/p1xu7oYgzis+OlbR2VyP4786Tbd3AKjW6LPagbLxa0XUv6fYnjYko3w7cr3g1n
         3gDMHi/VGI/qVblPCfAL0sGxHJ1GuNWrGseQtUFeONPsBilQQnSvuc6GWJh2vUzOE5YH
         mkNLkrNe3IagVQOgB3fRfpxeo1cxYtFicNZfd+It11TLs7PAGtvaiAqlzaDDXa2mfU/v
         CGYwkJ7nNuGjAlgIJ4qMS8JcBH+k2K0lInphlYWx9P1Q/ibWvGWus/7t7WUnHDb4P/VT
         l21Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=B5PujMcy4dWSSc7GymmWK7PKfEne/9L5D075yPUhV7E=;
        b=VaUvhb2GCLBS19VuRclCM8Nak/QOWJaC9p8dBMILT/SS5bRGK1mwmctN4vx2ZsEUnn
         v9R83gRQPwgXiVjQAzR3cLIybQKPEPcE7MdpmqtF4vwE4FupTcAdEDtdy8eA6Xr9dwCz
         mpBpPxqgHaSAo4HHtR50pfXAk/CkvfBHtyEt+pwH99dyWGlw/UgFayHsPm6lEe0ph6ew
         JTx89Dd3OhN4cGkyYIiv+XFGgeWZMcnyMEpwgMovCY3f4SKvHGETlR3q75gQlgMukYHk
         7HM56wst8twWIPBP4tNTGnKsRwkKGNEmeRJ841xoP7EPPvuF8W2QKtz+3Lifr8Dj4mFH
         j2kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b="Q/1NFDtO";
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5PujMcy4dWSSc7GymmWK7PKfEne/9L5D075yPUhV7E=;
        b=C1vQpZWBSJTYwsfpoE5uzua8tUS0uGUX3tLyJsVXbT5nghU50nePqJJwndPYQRKLK/
         1jWV5Ej8LK9QNsaP8jGk5s2bzg924DzXRF1TYDPOdipTeczRi5mOvcBuWD5tsUp6NOwZ
         NGTSvD0n8p05IuCE5ydTyPiYV70tTZ8WIhEi2U92Q64HTjO2RjUijfNYOkgOIpEyuHHo
         wjA2/4AHebPTNEG4p6GxUqcQ86bPHOLvWrtEcNwULgMNOp721zEvr763VlolUKpWhXH6
         rNcNZCTvRF0xr9FCdmdZFiHZApWe2w66Up3iRZkaOtbWej0TxYc+gmTJMaFrQZOqrMlA
         n1Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B5PujMcy4dWSSc7GymmWK7PKfEne/9L5D075yPUhV7E=;
        b=KzJh6M6pAa+1u4BVT3Ca7s1RBbSaiF9q5FHLo7J5kcjnSQmj3M47lL+RKXsEIPK7vM
         Yutxh8dKMoAxXq3FZuu0hDWsMh+ZB95IM65v/4M7LA+Wvv0EvxhEUL3oZo/LFdl3EUi+
         ppAewj3e+VwvrLN/71V5m69/eQRysnCqXCRkyz6+5rR8taoXWtTofV7OpFM3dxvStTNu
         8466yXqEfEtnwlq+9ApjOhTHHzE6W47g5xRqf5cxHOw4r2sg5uC3QWOeZLzOt0wVwkO9
         nY+NCY5caBMLRBTGq/XfSqFKnRZChFLy2fPHayOq9nslt6jUgm0zv8GGPcqUNbyfCG0n
         rOKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YJ2L9gNn89SfMUFugaofn2eUQhxnuKhXufkt+y1GXqqqz4YqG
	eLpfVMeXKlsysW4N6D/ftDc=
X-Google-Smtp-Source: ABdhPJw5m1Kt6+hbr95EcxYIVX8Dz+6lLamX/gBAKFzt4B53x2cXrSZGuxVFIzepBlhyKr+UK7GHUQ==
X-Received: by 2002:a17:90b:34b:: with SMTP id fh11mr401498pjb.201.1605236366837;
        Thu, 12 Nov 2020 18:59:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd8d:: with SMTP id q13ls2371689pls.0.gmail; Thu, 12
 Nov 2020 18:59:26 -0800 (PST)
X-Received: by 2002:a17:90a:fed:: with SMTP id 100mr427989pjz.65.1605236366332;
        Thu, 12 Nov 2020 18:59:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605236366; cv=none;
        d=google.com; s=arc-20160816;
        b=P0kOipn6BiQ8zbG94qCXMyZRPm1jtg+UFqsK9LkmOQiA1yWvk5i5GuWvnK2dwWOyYD
         GpxI3/H/nJYCh6ZN7KxHOofj+NxqQppxUDmdafH6GGLYOZzlr/mBm+GGxvnOQOQyEPqD
         mQT8l/cqxglUjC3Q7eJKAB64yXyw+apny0IX4bj0QuQzSkVy8ZpZ2iI1yQDt/XkFlskm
         4YJSABvSLrcYKKBPf+N+a1Off5Y3Vwu+XXRE/wAl0I8URBxmNCey4MqFLKrIG5cPlsV1
         6URIgaQmc1jMi13iTOHyLiP0uLXVKkE/mtvvL2blvoX/xOUZk+G8m+veP5uuK504/HLN
         hCHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=d5Lc0YjAvi+/83s/MY3Hf9Z6pggitK4YIoSWpqH8sdQ=;
        b=Q881X1eDTaiw9cTKw2gpdFWRnZUNLfXgqo6FwToTzoct2FBdzuAGvd+oyd0pN/cFJ/
         nDG8W8x+GdxCu4GvuxHThV+aQvUHSWseiKBmFR/frG7UG2vvc0FuGsYfdMDVmGgybMsE
         RL1Mx+e8HwJAWJAwWFCizFX4GU6CnkghYJ+uXXTWe24zc5ZGksNlMa39J2oOdMXVMRxm
         1PJYHWytbMNdIFv9Wb3/WDDRsnJt7nUKoQjC+1a4Kkhh6oqxjvoWVgBuGFjgWimYB+pq
         W694asUDlZ56v6HQg72MrtC17kO2439bxUm7nb6mzYHqyjP5DQajribPX/GfgRgQ7FQ5
         K4Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b="Q/1NFDtO";
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id t130si432885pfc.2.2020.11.12.18.59.26
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Nov 2020 18:59:26 -0800 (PST)
Received-SPF: pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by linux.microsoft.com (Postfix) with ESMTPSA id C32AF20C289C
	for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 18:59:25 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com C32AF20C289C
Received: by mail-qk1-f179.google.com with SMTP id y197so7655492qkb.7
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 18:59:25 -0800 (PST)
X-Received: by 2002:ae9:dcc1:: with SMTP id q184mr166427qkf.436.1605236364820;
 Thu, 12 Nov 2020 18:59:24 -0800 (PST)
MIME-Version: 1.0
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com> <20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
 <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
 <20201112171826.0fa3c6158f3c2780f90faafe@linux-foundation.org>
 <CAFnufp1OrGeGgUn9_2V9HMtfb-7GwuEwz4+Co_W8ehcVOQVscw@mail.gmail.com> <20201112184637.de44afedf0ce0dcab36dd0ad@linux-foundation.org>
In-Reply-To: <20201112184637.de44afedf0ce0dcab36dd0ad@linux-foundation.org>
From: Matteo Croce <mcroce@linux.microsoft.com>
Date: Fri, 13 Nov 2020 03:58:49 +0100
X-Gmail-Original-Message-ID: <CAFnufp31YO9yTXVqgKNZGR9XXRKfGKM4Y4NLk+4_uXdoWa+G4w@mail.gmail.com>
Message-ID: <CAFnufp31YO9yTXVqgKNZGR9XXRKfGKM4Y4NLk+4_uXdoWa+G4w@mail.gmail.com>
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, 
	Guenter Roeck <linux@roeck-us.net>, Pavel Tatashin <pasha.tatashin@soleen.com>, 
	Petr Mladek <pmladek@suse.com>, Mike Rapoport <rppt@kernel.org>, 
	Tyler Hicks <tyhicks@linux.microsoft.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mcroce@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b="Q/1NFDtO";
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

On Fri, Nov 13, 2020 at 3:46 AM Andrew Morton <akpm@linux-foundation.org> wrote:
>
> On Fri, 13 Nov 2020 02:38:18 +0100 Matteo Croce <mcroce@linux.microsoft.com> wrote:
>
> > At this point, since 'pci' enables BOOT_CF9_FORCE type and
> > BOOT_CF9_SAFE is not user selectable, should I simply leave only
> > 'pci'?
> > This way, we'll have the same set of options for both sysfs and kernel cmdline.
>
> Well, you're the reboot expert ;)
>

So honored! :)

> But my $0.02 is yes, let's keep the command-line and sysfs interfaces
> in sync and cover it all in documentation.  It would of course be
> problematic to change the existing reboot= interface.
>
> I assume that means doing this?
>
> - #define BOOT_CF9_FORCE_STR     "cf9_force"
> + #define BOOT_CF9_FORCE_STR     "pci"
> - #define BOOT_CF9_SAFE_STR      "cf9_safe"

Either BOOT_PCI_STR or BOOT_CF9_FORCE_STR, I have no strong preference.

The syntax is 'pci' while the enum BOOT_CF9_FORCE, so we can't please both.

Regards,
-- 
per aspera ad upstream

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFnufp31YO9yTXVqgKNZGR9XXRKfGKM4Y4NLk%2B4_uXdoWa%2BG4w%40mail.gmail.com.
