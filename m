Return-Path: <clang-built-linux+bncBAABBN7XX77AKGQEZQ5MLFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C25A92D3606
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 23:18:32 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id h206sf15671056iof.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 14:18:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607465911; cv=pass;
        d=google.com; s=arc-20160816;
        b=qFy8vXlsWsRoFdZEcjeAbo5Pm1VnaWpBarRgIi9lRt747Cl0SiOaGMamHhFLvUGEwQ
         SN9CfXQl4elSMawPPwU5iwPWUl2J5matIpu6nfc4Nv00nlC2KBjdugQG2zm5VyM0TsU6
         PL7oTviTWWxFtpffbJPDsgJ/VhmB6InbFuOOuIQx4+f1nPy9wEsJdzWyW+r4C/Wc9uQV
         F5aZYGARylPL0dxCKZllY762Qhm5eRT1ipg19buNlYkGFYXgs4270Zkfdo62gnJGOCdT
         5xEW7hEf8fFGMJi6E2BvMbmwPZggcCaTSlajdPtQCjEJdAofaBYfc54lLioyYlyoYx61
         NiLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=/oPANGzn+i6nCWysn63WFEa6ioigwov9AyEXl0iYpAY=;
        b=UHVPvTrSnX61ruR30KSMM9yQ7xyGmkSZpWCdcJjiPUC2clEwXnBXNowFluo5d939c8
         uXWoeIyssSPAiev4tVU3c5k+zgc4a2Gh8kmuoaX2HatoOzDSZZfcpcfyH+2CLH5cCF+t
         WR6XNO/6iUuT7oojuD5xdKWF40TGqlczJpzF8eapNcjPMiX0Y4jokQjGppA5d5SGB+8Q
         fXWddnfyudfjw0DlpDkdC/8q8TCUHx4CZIKGgIQrHyUKf6ktH1f2g2eRjvF4Wfyn7Dmh
         KFykGRAiGXiV3YfjK4jSN/wCN83cMWoRWkUG2IStsCUgiODNvoOQvdnQA+m8+pAz/3NW
         tIgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="D/Bamd5Z";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/oPANGzn+i6nCWysn63WFEa6ioigwov9AyEXl0iYpAY=;
        b=q4Tz1EJnrp7FksiD6I+PmPvtun+OUrvsLMSbIknA9Yn9WiFn6/6sBJlzwykHcV3QHe
         KT1RTwkQZI1Ba720KwnNGhWiS8uVOZRAsJZ9Dox+nkBNt56DqWJpiI1OgGxTOxtPQucX
         Uu6RnCYNaxXfkT/WkaTAZJ6UgIPsW/EYSJ79/wRt3TzmmIRBbqIJ9/pBhLq1FkipphKq
         DxgdzIGN0NFCRaVn1CD++BHfvhcCYXwMQQ4pmiezEkxLLZtzft+XtKVNYft0To+xoo0b
         F3Qvo9ZfMxCXGp+Tca/EtbsAkfj17kHV8eL+8kwHLqi4fJdCx0/DysG2vMnYNM9qtKiv
         xgvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/oPANGzn+i6nCWysn63WFEa6ioigwov9AyEXl0iYpAY=;
        b=A5ovi3+CVhN217U6KTi7yNuuhAPFgrbzD8uW19SStRas4fbIk4CtTN/C+pEPo8Ra2z
         g6+1dwYDEaj6i7P8JuS96O6KzvtvXJPOTuJeMJxux2svTEK3iUKA1S8F1seCt9vCE4/j
         J5IEjN+MNC45kpsDgoLQ4VP54fZ5OiMCsL0UL5bKv4QKme31UxMCaHErfWIxuRNdN71x
         UeIJJk1OcbSKYatycCadsP5kzsP/Xx0iwHgLAI5haAOd1jjvQRY0yI4lRhYF4D6LLbfe
         YQklhPAu4ZjFqBrpfGEgSWYGGQhJLvZBtyDQnZ7OLWm/jUqlaaB3oCDd03JXZSCa6we9
         3C/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uJXJ2XL9yr+n8Gt6/YnsRZLnK2Wpl/zcv+KqMtyl+QQrR881r
	MjroDdE4Yd4Wi51hkhlPUmY=
X-Google-Smtp-Source: ABdhPJwxQmLorpRF3llhUU8jSiqnLqyGzvp4+EIsVvL5b7C6gNmSv5vt1oObvugd156IoMxq1bFuBA==
X-Received: by 2002:a92:c68e:: with SMTP id o14mr479ilg.233.1607465911554;
        Tue, 08 Dec 2020 14:18:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8993:: with SMTP id w19ls48650ilk.0.gmail; Tue, 08 Dec
 2020 14:18:31 -0800 (PST)
X-Received: by 2002:a92:9ada:: with SMTP id c87mr23317ill.5.1607465911175;
        Tue, 08 Dec 2020 14:18:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607465911; cv=none;
        d=google.com; s=arc-20160816;
        b=gbd1x/LRHMT+n+ZcYkAspREDz8fSHOhRJPi6+e5R3Ok+b4BBXvePQGLaWnR6olwpqF
         5P/qe/dLGaZLltGW4ZwcPIs/fAyv5oxJkZ2u1O4vZTAqaWpdmv2Mw1RQZg93SUYcwwqO
         qg19lhCeYAkOkgqhKgPsLWPloaoEPOQguW94nfkBcu0KSekAXdMVhnsy+XyUNxzUL1AT
         4jlqIM7IgVkDNm4zBT5OgefJmkPypCdjQ+dsMawuQcZEJa/MnXIvff4OblJVA+zuKptZ
         Qb10TSf2mmpki7XnbfyOjUb/vwwvaz09lE9F6Ls+TXZXa6q+kfj6gANBu+SPYB7juQJQ
         p9aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KFydaOfQt8EiekXfCiMTJQvU/VVuoNtUf7BnCi9Z7Dg=;
        b=xed7Xc+oclK+4wsI0JGhJ8LPcj1Kn5rc/tVVDZ3JGnXre6F+eibnWeFt2NGDtmSIuq
         XgdKrB9oJtRATYPU89R/10FSjjpkRLFF2UGlHnzNnM45NB96NajoaN/l7lwpt2Sh1GQV
         QgjYjbGndAtotwll8Lp+DHb6kdr78EzioHA9TVEEHy06yJhOwma9i+xmwhPDSYzJzmB1
         kd6gKZF/3SiV7rS+jO/eVBtKwf11vTK2gk3/2gIUdE0ZOxn4pC7MUn4Y0BQl5E4rqOsA
         1M78dN/WOLcEpXWh90tH6gGIA+aLBctUo58oMBEkS8QcU1djSzKhXbmZXjsxzgFk3CAv
         wbug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="D/Bamd5Z";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k131si6050iof.1.2020.12.08.14.18.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 14:18:31 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a4a:3b81:: with SMTP id s123mr110633oos.15.1607465909604;
 Tue, 08 Dec 2020 14:18:29 -0800 (PST)
MIME-Version: 1.0
References: <20201204081349.1182302-1-arnd@kernel.org> <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
 <b9d7e33c-4dcd-0075-d0ca-d22b2488c354@amd.com> <CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g@mail.gmail.com>
 <CAKwvOd=-2zoc06EY4R9ZJ0M874bQv3NuT8a0q9=RoYeMMtnXVQ@mail.gmail.com>
 <CAK8P3a0gjPWiRX0yg=i6Qxgyo02AtQVVsw+=w-OvF956Tn=jDw@mail.gmail.com>
 <CAKwvOd=+w6vJvvq9Pwnv1EHHzwCx=o_=PbSozXpqryN6P1yxVQ@mail.gmail.com>
 <CAK8P3a2_0bY+fmUHKjH8XCKpT1BepUGOV0HoKDSPnOvtKjA==g@mail.gmail.com> <CAKwvOdmSzf7vFjjxWfvUR1FTeFoPToytQL_enR6CFXPCbUn8Gg@mail.gmail.com>
In-Reply-To: <CAKwvOdmSzf7vFjjxWfvUR1FTeFoPToytQL_enR6CFXPCbUn8Gg@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 8 Dec 2020 23:18:13 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0ViH90qvr63H4J5Qn0FMfV4r9CeTHurj3N2qO2f=Dq+Q@mail.gmail.com>
Message-ID: <CAK8P3a0ViH90qvr63H4J5Qn0FMfV4r9CeTHurj3N2qO2f=Dq+Q@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: make DRM_AMD_DC x86-only again
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Alex Deucher <alexdeucher@gmail.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Alex Deucher <alexander.deucher@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Nathan Chancellor <natechancellor@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, Mauro Rossi <issor.oruam@gmail.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Roman Li <Roman.Li@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Daniel Kolesa <daniel@octaforge.org>, 
	Timothy Pearson <tpearson@raptorengineering.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="D/Bamd5Z";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, Dec 8, 2020 at 7:21 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Dec 8, 2020 at 6:26 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Mon, Dec 7, 2020 at 11:28 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> Hmm...no warnings for me with that config on next-20201208:
> $ make LLVM=1 -j71 olddefconfig
> $ make LLVM=1 -j71
> ...
> $ clang --version
> clang version 12.0.0 (git@github.com:llvm/llvm-project.git
> 1c98f984105e552daa83ed8e92c61fba0e401410)
> (ie. near ToT LLVM)
>
> I see CONFIG_KASAN=y in the .config, so that's a recurring theme with
> clang; excessive stack usage.  It does seem a shame to disable a
> driver for a bunch of archs just due to KASAN stack usage.
> $ grep KASAN=y 0x9077925C_defconfig
> CONFIG_HAVE_ARCH_KASAN=y
> CONFIG_KASAN=y
>
> Is there a different branch of a different tree that I should be
> testing on instead? Otherwise, can you send the object file?

I was on a slightly older linux-next, and the latest version contains
the patch "ubsan: enable for all*config builds" in linux-next,
which enables CONFIG_UBSAN_SANITIZE_ALL. It took me
an hour to figure out, but after turning that option off, the warning
is back.

I'll send you the object for reference in a private mail, it's kind
of large.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0ViH90qvr63H4J5Qn0FMfV4r9CeTHurj3N2qO2f%3DDq%2BQ%40mail.gmail.com.
