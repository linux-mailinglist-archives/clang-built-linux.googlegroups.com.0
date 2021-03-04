Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH4FQWBAMGQEICTIEAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id B638632DB29
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 21:27:12 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id k21sf8159116vke.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 12:27:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614889631; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/jiLAuHV4U7Upj9UIpa7f3DOHgfnaDEd+WAjFcxSHXuqisi4b6Osm23T633jC68Tn
         /7xgPNmqMuro4U3OoiXzfaP+3JeC+NsFCVXbEEYCD64B/SNQu7GHNeqQZ13DRG8ZXXat
         xnDWxgGX9JmZvViW9D3IQ8ZGwEKEMC6B6hw+O+zj2G8HN8y2qO2Y8R1/VTMmB3QCW8Ii
         3PtIHUgsuVow9fQBk+DgLK5DkFci3vp0+CCdHMwytXvB1VRKSuiaSNLrrb4l1yQAX7F+
         5+GlsYOKtgFz9O75KOT8pt7ijltj5HBBxf9QuRb47JpWIOFocGAmTjvbzc7hV+Z+gaxx
         NvqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Qe8vf8wbmcrur7VFJfyUZdPfM9F077BP8VPiJoPr5i8=;
        b=gQ6d0ycF1r40T8U2uJzEWcDThyH4dT+NJZeAeJpX27UeJ1JGpiIa1TjPFEX6LMw9PW
         bgY4TGO/B2k4/8BWtVbCQb2SrHOq4dRFtmNZna5f2zyuKrKdaPQtOwGiXUcx1244rNEz
         L11tojHpvga4E3pLi+kGm9xhsqPl90YIgbpTbReUH4TgS0SXQFaWYf/DMAdfxAfbVBxn
         ufywzzkSqnnPXi4rl9qoW1M/GIHREeZjvmSSdWhhFyPpIsHKGmBmQpUZPXG/s+LLTNQZ
         gA/Vfk7prOfhav8jgHfVaRU/vhO6Mf9gRR/XM1Fs0IA1NRqf9CM8h5FII19/LFHuOC3w
         MPpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JpejsELJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qe8vf8wbmcrur7VFJfyUZdPfM9F077BP8VPiJoPr5i8=;
        b=QaEiphrO5o8bm6Z6mS4bo4SjLebZDBaPmRaJLjEXsWBBxZfZ/h7YJ4Q/jEQJd+ycgq
         B0ToWUvWV/bTBCLR2ad1wG5VpWTQucpGDPBI5durBsvIEv2fgtcLEZ1STphrzOrhUivT
         hYhMyopbl4akFmROnta3K46Zz7L+28/v7aWN/NFqpsBd4BsBaSv84igFU6ty6mnkLttc
         T6XLEMcFCjdhCgT57ER2zGzPA4X+NJvN8dy/kOCBnnMx2eQKKuwglD1bCU1t4aQX+N7Y
         5EMm0r+EU0ytyw0v86yPxMt8NJRzTjLOmuxDpbql1FqdXn0ve3fUg5o3sfsA/STvvVcW
         GAvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Qe8vf8wbmcrur7VFJfyUZdPfM9F077BP8VPiJoPr5i8=;
        b=aOdUf7hxnMH6Kl/x+dE4xD1mQKLdrt1LOE/fl+clsSHPgWtLdq1IIKdP47YFHH5CdL
         ON0tetN7rsyGDHOQ2r0f5pHDY/tWnozGtoArtbMtsJQeX8k8gMu5igEIxWj6AqLUjWd4
         xu0chGNIYdT+lezOuuFQ1FLRiSTz8o857/PpwOfoqWGn4HAE+AgxegGjxUh8auU+me+w
         P/tfrK21yny6X9GRYXiRVLPPHVylJrwVDBOx3unipTzoar9FoInpW9BCWO3Ptm/75MzB
         09k5n+JdM3woR/nVA9EG5PWjgrF//pJ5wQySUR2y7oHTfKmUm/KNkmhRj9gU9kafyjAF
         kkyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KKnaJV4ZYTNVCddeu9FBJWyYDulZT8bV4mWYu4jKcf0W4GRLW
	9DF/v1WUn+Uf5bxNfxG0qBY=
X-Google-Smtp-Source: ABdhPJx/517o1e2VTaz7ktKIl0tBty+ndSH+ZydgA/5BCKL0ZMTNuFAC81jw9nEnw6WBep7mRfZ6yQ==
X-Received: by 2002:a05:6102:3137:: with SMTP id f23mr2427657vsh.56.1614889631866;
        Thu, 04 Mar 2021 12:27:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2404:: with SMTP id j4ls923795vsi.2.gmail; Thu, 04
 Mar 2021 12:27:11 -0800 (PST)
X-Received: by 2002:a67:f7c6:: with SMTP id a6mr4157369vsp.42.1614889631403;
        Thu, 04 Mar 2021 12:27:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614889631; cv=none;
        d=google.com; s=arc-20160816;
        b=Dk0aWZWkPo9HidUiK6Q/pQU4fDIE84Z5N3hPO0qv4Vp5zs7IsNY5SbcSA0o2SjNqyV
         y4Ereiif4XW6YiJLksLcEhX8E44JKD20Bx1Xw7uaWU/PlA4Wm5UUpy2l919w4g1sL1fu
         jz306/OguRd9/pNGlHQNfjYyv/wq9aH7fwSWevqkiAGiZHZc8KROpnDePo1TfSqF3He2
         1c2YEh/j3buUqFRYazTkXYKMvIJVAVMUsjRChEokG6m4XaAB4/onCRqfVgX3Rj/02ibO
         4jihlB7YXJcTpXE//yAPCoIM2M6cDPGtYU694VXXCdn+vU6gqxDdRd4rflMBY4AmoCs4
         nQvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V6xlNFx0XT/iJVC7h5kU/1TKvVpFLqNuhQfmD6ihuB8=;
        b=vWnN2ltIdq6tPBy7ZNtCFItAMwFLY1O9xeDuJQ47Jp/M24qrDqXnpKlz/dldsVMlis
         8c6j3nrG281I+0Mlv70wGfgzCVx+xG+zaPxqV8ICvsEObTckiHHMNIzM9zKz+Ev2Tyz5
         VizfayHI3/5V+UsPzzbYl8yVcZsaBn9+nQ+V+1DLQbRrK/DY3wIx6p3+tD9LNr44Ou0r
         jpciT1JwZy1TA/GJOgWRQJCPi/Qx5Rcar8CM4t0VDbPhDnvbQKyl9/qvcjoYFJFFs5w1
         3na/Jha1/xiGh4GAgf98hWHiodPyZbkpM7ZmKeVPvMCR6FkKy5tDc5JDeS94tuP0smg1
         keQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JpejsELJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id u21si58309vkn.2.2021.03.04.12.27.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 12:27:11 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id x29so11411678pgk.6
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 12:27:11 -0800 (PST)
X-Received: by 2002:a05:6a00:168d:b029:1ba:d500:1209 with SMTP id k13-20020a056a00168db02901bad5001209mr5430980pfc.4.1614889631051;
        Thu, 04 Mar 2021 12:27:11 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e22sm244050pgk.56.2021.03.04.12.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 12:27:10 -0800 (PST)
Date: Thu, 4 Mar 2021 12:27:09 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: per-task stack canaries for arm64 (and riscv)
Message-ID: <202103041226.0B00E1BE@keescook>
References: <202103041153.F42B50404F@keescook>
 <CAKwvOd=DkVdDDr0+ZKnf8a4Hc1zrW79L3UPErBX+3MUrVghPNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=DkVdDDr0+ZKnf8a4Hc1zrW79L3UPErBX+3MUrVghPNQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JpejsELJ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
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

On Thu, Mar 04, 2021 at 12:08:52PM -0800, Nick Desaulniers wrote:
> On Thu, Mar 4, 2021 at 11:56 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > Hi,
> >
> > Is there anyone that might be able to give this bug some love?
> >
> > https://bugs.llvm.org/show_bug.cgi?id=47341
> >
> > Right now Clang doesn't support per-task stack canaries on arm64 (nor
> > riscv), and I think this is sad. :) Notably, Android doesn't benefit
> > from the recent work done to enable this in the kernel for GCC's
> > implementation.
> 
> see also: https://github.com/ClangBuiltLinux/linux/issues/289
> 
> I'm heads down on trying to get LLVM_IAS=1 enabled in Android. Once
> I'm done with that sprint, most of the machinery is in place in clang
> to get this working, so is probably not too bad to implement next.

Awesome, thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103041226.0B00E1BE%40keescook.
