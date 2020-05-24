Return-Path: <clang-built-linux+bncBC25XUMBOQIMP45L6YCRUBECJXPNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC2C1E03B3
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 00:48:40 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id z29sf18127213qtj.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 15:48:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590360519; cv=pass;
        d=google.com; s=arc-20160816;
        b=LQbZrJu+5DK7X5cyx1kVTuvKxaW3t3lnxQUATKRq1Z/QaGbSuCv8up40YE4fF4L6cP
         vnZj4clxiCMdIm0B03j4Ke2IUOuZBOVRClYUncLfl6jKTAle6b/bbF1q5Ud5B+o95hJo
         g9MiL0WuN++7vKE52kvY9j1+ZmP4iGUQD3JgtSmGB2c1K+1epiLgPVaKcXQ4UCXUeNZT
         Ee2e26VNhI97DriKuwtR4otCVyycUQpD4G1/+V2dxbJr5xWPnI1bijSLcoro9EAHnpRw
         8Rgkay45r+9x80P1skRT6E6ZbMvY98A1ZtD6/fwso6pod2FKnWseK8b9dtNA7warlqxb
         OVVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=/Rg2wOOJL8QNmljGYEOXkooS15f/tslmv9oRPn7EZL4=;
        b=rpEvlp8Zq9xvsok6ZTXuP9/AcAbGtezAvoZLIz5SEVbHjkfOKZAjryhtbaz4fbTDH5
         Hw2WvfJPwRp/SQ/fGAWtDOG/tvdbuX84POeSIROX/qH0qUXNmQOz1WVwloUYJgZgV6XW
         wD731ReTEjyPBRPU9oLPTGe91kC/qvCGztWEpOur0R8cAp2tiCNMcxF6ZWcZDuesrqvF
         df+SJPobLr9pYlbbltFViPZyejSoRt2Hnvcd90UzBEMC6vYsthUPVgBtPhvubVNVHTvC
         T49Rah22EXBp6uyM6XTNiJgfs3EIu68wrxg/q9tEFsFiG3nJsaFWmvV3CxiIZyQ/YmFC
         K47g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PN+Dr78Q;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Rg2wOOJL8QNmljGYEOXkooS15f/tslmv9oRPn7EZL4=;
        b=cAxaWV81LRW0BQgpHiK+y1Fx44LUGNaZH+UaCgKP6qXy6Os2FqoWLgCYsiiJTiY/PE
         lHhtgA6dKi+Muj0TCMKignqIVr0OytwlMaLOZqUSiJnnaCvWESza7jPFJrxw5IKQd6PR
         JeUyV+0BVJwMGvY/7nMb+oSToqsGkawsgqOXIu3zvrqDQ4QMkZmdRf5e4dog+Mj1slVi
         GxwNTCSBKiNYwbYKyds/bWOrtiAlqJhEaPavh4RI6vDpeum0rnTrUQ01BihkpWfsbDi9
         XsO6aA/evc6uCvWdS+BnXn7t6NyrmqkUymfFHNCTRckyw8EIouv6rOeo0A32gMlZ6qne
         KQ6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Rg2wOOJL8QNmljGYEOXkooS15f/tslmv9oRPn7EZL4=;
        b=f+RFlLe67qpWoTceLPiTmu9jUMqMUHGWr8ljVfbpXYA3as9vBPGKrMLMBxlysU9HjI
         cbPjpMnYDjGnad8h2s0JNNzu99i9jtm7FcCEpUGI/ESBgRDUCnmUmPReQ3O2+V8Zw4Pz
         n3WQCgEGX/av0k4ezh5QBTYUjne8YNdYTs0An4lnMkZQUkFBgcIYMNy3BgaLb3blyRcH
         xUTjWDkt3wWw8FRt9vOVt+WFaqKZtswxQKU6pkHn4CPiybotbWEVc5OmKc1GwMSmoTnf
         1YcAj9CDovxiaW2MiTMjyDAJL9+qv/7wWdWcJDnOvwmEFVcBRa/FPZM3oPB/0/wdIGfv
         4N+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Rg2wOOJL8QNmljGYEOXkooS15f/tslmv9oRPn7EZL4=;
        b=uSUFFa058VAJUK0tmuKmhlRpgOiPSGpZx34zvVjf2lVORZFzyqajOFGloVHkOgvnHt
         EPamZBV0ppLUMeehT+hoXVRt5a82cp2TXcnATSVZjXUwlkSvzHDiIxEc+Si06XO9ChzT
         Dzhj1EYPELYi803Kxxq5T0MEyg0ayeyVDqmBmFqxQgjPJxw0Qeo296fdoTj/Ie23dz76
         hNz41pfXLYq3tJu4ZF/MeNnAe1cFv6h+c5CF6U6nv67FzBdyjQV/ZxhklJQoTjt+2Pvt
         KC/otsoFozWvK2KB83PrpJTrHxApm497qQ92aITC2v/ztvvwQjOaSpNFS6pWPh49zI5Z
         ymVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320P+ubj1CuSsvzbPvKZRsFlhQ+YAO4V1o3sCA0Yme2Q5sPmxw2
	Y+SNSPUSerIgIi4tHW+9pgw=
X-Google-Smtp-Source: ABdhPJz8Gpk4Jz7SzsSd7IYJylQQuvJlQOpWqsPOB9DJfACSXhUWqn6CojeY3J03Pg0PaGAcNsXH4Q==
X-Received: by 2002:ac8:6f55:: with SMTP id n21mr6797193qtv.175.1590360519720;
        Sun, 24 May 2020 15:48:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8c81:: with SMTP id p1ls1623690qvb.7.gmail; Sun, 24 May
 2020 15:48:39 -0700 (PDT)
X-Received: by 2002:a05:6214:3a8:: with SMTP id m8mr13460441qvy.182.1590360519456;
        Sun, 24 May 2020 15:48:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590360519; cv=none;
        d=google.com; s=arc-20160816;
        b=dDZQ4BaMPxDRk5Dd4v0LNzVJyzOTQva14Kep+jhDLQVk+ON5zpaOXAFtsQihZ2cCoq
         r4o7FN9iwOExOhLme0rksp9TzomcuurtntO+l8UOtv81BVAtH6kCaLHDzoFYLZt4darv
         e4LBRTlguDD/1dCS0Id9Hmr/M6dUye0ZsAx/80hnYVQfguHSMSvl317AQhFj4ykgBFxj
         p17BfoRYGAobsXG+p61GZTZvsz5SnAE7xvOU3v0OTaPQyC4bijKMGsvoDMSRoqJOavfT
         fYcbTY+o4+3MKiJTtYYyoultJNYeK3NHeHghhkY2nQ0s8CUv/zHDnBXs30USekIdo4jb
         NqRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nx8OHjNfdF4RbJrElp/4RxNwoLrVNtVMClUKyIlLrTs=;
        b=BBnar3EB69JvxeqLA4T9Asf4lOAwuJSRJ00Vycqdn/A4JSYnKzDQCoRn7Q0ZcuP0xn
         uLnkAIlRxQfZzCp+aVgsBTCUZ+xLGTQ4X0Yvdru8METu7j09aDiIlQwstSJEkhqiJPBS
         ZP4cF+KusxL7YXK1enD9DPtUQRVynFOjXxGhBFDpGyxpGtCJybFfh9YtmZX4w/JYKvKl
         YAUtVSdACwpuq3X3tic3x5fBNIVqBfh2bgfAY05aTofpQcuTS1ouGYuBm8pXqWEw83EV
         vu7R6WgCbFXZ5ifhFX+jT21b2VULhU6DqVSFNZVEUMek7IatKId6oHB/MOicsjD1bHiq
         7NQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PN+Dr78Q;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id n23si1036994qtv.0.2020.05.24.15.48.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 15:48:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id y17so13662620ilg.0
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 15:48:39 -0700 (PDT)
X-Received: by 2002:a05:6e02:13ab:: with SMTP id h11mr21007822ilo.191.1590360518989;
 Sun, 24 May 2020 15:48:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-2-nivedita@alum.mit.edu>
In-Reply-To: <20200524212816.243139-2-nivedita@alum.mit.edu>
From: Brian Gerst <brgerst@gmail.com>
Date: Sun, 24 May 2020 18:48:27 -0400
Message-ID: <CAMzpN2hddTQkHvOYh_Q-4oO3yvZ25LA0N0rBdS2oqn8poiZn9A@mail.gmail.com>
Subject: Re: [PATCH 1/4] x86/boot: Add .text.startup to setup.ld
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Dmitry Golovin <dima@golovin.in>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PN+Dr78Q;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::144 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, May 24, 2020 at 5:32 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> gcc puts the main function into .text.startup when compiled with -Os (or
> -O2). This results in arch/x86/boot/main.c having a .text.startup
> section which is currently not included explicitly in the linker script
> setup.ld in the same directory.

If the compiler is making assumptions based on the function name
"main" wouldn't it be simpler just to rename the function?

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2hddTQkHvOYh_Q-4oO3yvZ25LA0N0rBdS2oqn8poiZn9A%40mail.gmail.com.
