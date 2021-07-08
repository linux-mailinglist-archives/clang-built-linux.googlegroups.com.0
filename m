Return-Path: <clang-built-linux+bncBCQJP74GSUDRBD7FTKDQMGQE7HQ56CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BD33BF6B9
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 10:08:49 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id c3-20020a9d61430000b0290474c23d2dbcsf3363583otk.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 01:08:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625731727; cv=pass;
        d=google.com; s=arc-20160816;
        b=QZX20EYXRIVzyADpBcs1KBNiI2npa5m6s8aVBWr5h2deZjaZE0Vim3dvFd84q5J8me
         j0PlPS6fgcepOeEO0RH9GYqRcrLawu9LpWfggtrjZGOupVlWTHDcKKGDTQ3RlSXurznw
         BTrTBtRXji0TsR9KZyLWyIoRNZ5BgL0Hz+gva9T1A71lUfcLFItn5vFpHKqwtdGkKoMG
         5dpIAKIeNu45C3X8Tz4TC0dBGfGR73zZxUdqxeWrUexYtedRBeSMa3OMyKj4zVBydhB7
         xy/Jgn72Z6Be/Vr3KmD0LnDXsQpgDEq1aj1JCAOMv8HQQPw+QxdD9ES2g9EY25l74uir
         yPqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zdkSfJJICa19QXuAZ2sjo2717SDEdng9L9GdtOyTUZ4=;
        b=gsKIzt5RSb+qRbmN8xoIukk9/BnHoDY0Of4VI64pS7ZtN/0ad8vMbHKIL5CLLna3gI
         u1dycDNGR0ZJSMjOrq/pLUZpHemXNyqMsLub0GuNls9y92FMPTxxK9/kjn+AVRhwMyXe
         9T1oG+zsHrnhVgqpQDQ9H2QStMlyF+Nq7Ngf14e13Herv9lwI82yblCuNZwbDLbnltgF
         PgrWRDLpftHogYhibfRWL6udrUcuJX5W3N03Abl/Sm9RnCtGJdTuLzubEOecSqWT2tjS
         WIEywFSTuv6TxHuo+lm65zjFrQQ/H8COVj7su0wibUE65QSMFnZhKk42BN0YURjI1c1v
         6Z9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.43 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zdkSfJJICa19QXuAZ2sjo2717SDEdng9L9GdtOyTUZ4=;
        b=VBIbPUywSzZQ+KI0mwLAPWdKFGp28TN0x5xnC1rWaOSnU7BwOQK9Kqt2jf76yqQvro
         tPyukggW7PxA+TXHRjT/8ifWAXzTyG1LFHgSNG85j3aCWS8xd7IGl+mNDhg2HK8c2kox
         riQjWBVUGycNOJzgUfvhMI+GMfNYjUU6n61Q8PLVKSqOnl5i0kZ82YCcP4T006Mm/KOy
         iJK9VksAERw70TEFE3B7AMVV5x3BmAQaDuKKM1WEtVSAhBi/HP42SQW09FtowIormgMY
         1PDPLAQRF2ULwd3RHNs6tiKGAwu3zMv5rGHOwAQjmSOzWgEb8HYT3VSnL/pnUTS9q4Cx
         GAUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zdkSfJJICa19QXuAZ2sjo2717SDEdng9L9GdtOyTUZ4=;
        b=MqtHs3KbmCgc3dOMysZZkEsF9gs7VwTX/8DwIflUzC7Zx7+hqQZKfeL4u+l6GM0b0m
         RB6YehvKsdx6hkrAJ/3anCVOM/7muWLvzR08S4s2g5DXTiScG2emSR/4b0kHxmXgS0Zd
         +SBsO0+PuMTnNfefmLcyYfH/tLEvv4FBTMTRrzruTtF7z93mVt6Y5kLlNdkYDiWSiwDB
         ZziAD94V0B3EwqjJDXDvnbevHGMuXNe5AHDt0k4G8CN+WyovEt9uApeFNmiU4x+KIhWB
         IP72uK/i7u0RUqFEi/k/gHukEwLrsfarDM4/xE5sIL/o3G9Hi1l4k6kxs8T/gps+8Wnx
         OhkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eFBGm2GkQLa1tfRGM+qc/8dL/VVkOpfWbMhoxroGBaL+m5xVt
	FjGY55iuedmpfRAd3e9B2Io=
X-Google-Smtp-Source: ABdhPJwXyxCNNL2NuNBsO+n3z+4VYcIBYb8GML6cUmYimS3SPPOvekh8fHD8JfsFtc4P/fhHtNZwFQ==
X-Received: by 2002:aca:d455:: with SMTP id l82mr2618988oig.12.1625731727657;
        Thu, 08 Jul 2021 01:08:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4ace:: with SMTP id x197ls163392oia.9.gmail; Thu, 08 Jul
 2021 01:08:47 -0700 (PDT)
X-Received: by 2002:aca:a914:: with SMTP id s20mr13301472oie.165.1625731727221;
        Thu, 08 Jul 2021 01:08:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625731727; cv=none;
        d=google.com; s=arc-20160816;
        b=p4h7XzTfEmHkepRib9hFz/QIEoMgO8sh+Z6vD6f7vRMmeboYsT3vLsMc6iM7jJphXb
         DmJHvh70oQHGrO1ffvE5jVRqSIMkUY4LbmM9ih+pW58744mH1EXDkrv7UtbdZRATIBXN
         8UkZ7B/bMghB1MPNSMxJsnMhtUoBumphil17HF87GtGmybPycsVMtcm6+rx4lswRFhA1
         r/3sLuEABqyfLETnnJeIN/2uGhMEB8+5FTLBX5thosJmvKuHNfOs/kjcFnYl2B9u0X7k
         j8XvhIg33Mgtc9ZxpOmPOMqBSIyIBNBFvBorOBuMTNPA59Kbwn45Dv4qTMUrjzOvS0hv
         R3/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=O/tIWe1nqJc31V9O67iN2UwPLB/e3npgUn13q7m69ss=;
        b=gBOBvgn+7G6OLF/8z0Y6+KZdvdDXgq6gy1i5SjQgxeSbMqBGa0mO/D2YPAXniopK5P
         lUTbsu7wDkRwT0pUpP11KOmRctMap+QH7uO8Q/zqxCeWxXKp0UKWC+D+EQEGe2Tdx4OH
         Ok1+hDrLoThtBcrCWpq4JPFMwNB0YD6V7g3jcCdYPO7NpHxw4aqke7nKyZ77CgV/wxdj
         kQTyb3E5VMdq+EGiKsqk0NerNvKuHwemLXG96e7SNC/fBx8RYx8kyK1eslYCs1r+fYY0
         pcRSl/qS00dNWMynV87X5mkwkiHgHByBCH2eL/a5pdFnhBzDLKRG9jJrcaS1VR9aWSp4
         jZAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.43 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by gmr-mx.google.com with ESMTPS id e23si158248oti.5.2021.07.08.01.08.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 01:08:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.43 as permitted sender) client-ip=209.85.217.43;
Received: by mail-vs1-f43.google.com with SMTP id az11so3139258vsb.1
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 01:08:47 -0700 (PDT)
X-Received: by 2002:a05:6102:321c:: with SMTP id r28mr1843618vsf.40.1625731726611;
 Thu, 08 Jul 2021 01:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com> <20210707224310.1403944-3-ndesaulniers@google.com>
In-Reply-To: <20210707224310.1403944-3-ndesaulniers@google.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jul 2021 10:08:35 +0200
Message-ID: <CAMuHMdXuzb6PuujuCzm_FYq9ZeZeJxVZiYTGxdGeOTkZ6+W=+w@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.43
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Nick,

On Thu, Jul 8, 2021 at 1:12 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given ARCH.
>
> If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
> KBUILD_CFLAGS, and KBUILD_AFLAGS based on $ARCH.
>
> Previously, we'd cross compile via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linxu-gnu make LLVM=1 LLVM_IAS=1

Which didn't really work, I assume? (s/linxu/linux/)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdXuzb6PuujuCzm_FYq9ZeZeJxVZiYTGxdGeOTkZ6%2BW%3D%2Bw%40mail.gmail.com.
