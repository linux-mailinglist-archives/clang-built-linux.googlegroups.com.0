Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVONZL7AKGQEDAOEBFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB3A2D6A99
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 23:53:10 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id g1sf31831ilq.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 14:53:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607640789; cv=pass;
        d=google.com; s=arc-20160816;
        b=DDz2cdOwksuwJznDkvbbzgLdTCEv2YzZmFmpS9mxU6z6uXqQiHjbOlCUVdOYc+W1Ex
         fCrYS3qPtP5XGdsJnWUAdeyDmQC9TFoAh3E4ePM+SoxytgFkkp+OuDdVLTPYS8Ka8dv6
         BzBqUc5RWiOJjODLLJGneMx8SyEDMLf5phOM6s5XimHun91P5dHDbZVUdTJuA5GXFRkI
         HEL2QMhPbDcEYObzLDyIOc+y0zSbybTtNFReRdbTmSbBjHIIfYslxMWFtyvgfg6Yr71N
         koU9eNb3u5qhzUb0WBQeG5tGVeKQonxprihEpRnU6vLVGjGF7QQd2Q8nUhjkcZHXq+6n
         0M/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5MnbqxNgI/m3Y9Ze6/Vui2pLy7yMDoVK+3d1Wv68xDs=;
        b=uNbt+65O2A7vcocshatTG7EXsH98Vq1y6iqIcQJUXlRVg/JIHjHI9qyIDfxiLFea9E
         kAmuadzpz8HLJKGmK3P/ollJIDzVXO5fcd20T/HjNyOjABsJhdaHvg7+GxTtaKF2iPug
         /L/1l4wRSIu3qgSvx0Fm33a+qhCyn2Pg3pEe8OutxlXe4cKkDFdL+AEDe3V2zFyE8eJ4
         lLckuBxdD+4Cof5Sk2Wz7bDimZ+2OAL+V7ISmMenHX3oRXjguGjJJlOGODsXmm09zDfl
         R+WTliAvrsPfjfSB53jyOZX/Z5zDAGBhPkYLGlofw5pLcJM2COQ6RzeFy7m6THLguxqp
         fW8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=epzIn+GX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5MnbqxNgI/m3Y9Ze6/Vui2pLy7yMDoVK+3d1Wv68xDs=;
        b=niWkGWlTqIfmeW77cUluGGy8vHhBhYDkKBO8LVn38qJbTUjwlbCz+HAWsHh5Do1Y+G
         wIS4WQPceTrArcWVVhcURC8VzowC/MXNh4sTFIW2OleF/mAq1M/TY70zzzXVmRciXXlD
         mkGKaGNJeZvgzdEHsY0U0apqfdsxP75bwC1rvFQE4fvWT6Q3GjLbzbf/7yRim8Zs+zvU
         CPd/l1Xe+nUlFVZtHPi+RJisUklyqsLcvlUTs6KMqxKnVGJf+0LN7qClyCtK+ZoNEBtI
         m6pg7SlhuuuykqIGRz2oqju6S7SJS2HOlguF1UzyqXUo0WsBt+AgBf6HE2tBaFy89pB2
         ozsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5MnbqxNgI/m3Y9Ze6/Vui2pLy7yMDoVK+3d1Wv68xDs=;
        b=iNtdM5CzZdOVwE6Yjnz/z+ddgPxCBk0XkHNatA6SA/L6wtmjRLGkRCChTK1h2+Rfod
         hh/OQTFGiCC059xDyrSE9zkH2rCswT+bkK9x7BBLrR8EdHhZeuoGkaPR7bN6AtkfCq5C
         ZTj3IuZnNDqCjhPO7XT6Kw7f5y01eq6ndFMCADGO4YX+NY82CyBAKJQYuIU+MXfU4w0U
         P2IulbNS7FTCC6QR366WzALl4WPrypR8uebAUADMJoLJkhwU2gW/XEozWgdEnhkfcTz6
         LMaXoL49Ik+/zlhm5PsKeEjRpPY7VYKOAp2DrAVBTmqFp8W5BKNawqbLihOXqlcBu4gk
         afuA==
X-Gm-Message-State: AOAM530/q0G5l4YOqCHBciJxT0V49pMFOiSkyoCiHG8M/GJAb4W3IHGD
	B43/+J6Q/57JxzstxZvwVVc=
X-Google-Smtp-Source: ABdhPJyJs8n6ScMWYfGSzhtxq7DGKN+gJFVjihrnM8bVLesSsRcJuOF1fVR4pXMk95iwwiNNSnmJOA==
X-Received: by 2002:a5e:dc0d:: with SMTP id b13mr11258899iok.31.1607640789663;
        Thu, 10 Dec 2020 14:53:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8356:: with SMTP id q22ls693074ior.3.gmail; Thu, 10 Dec
 2020 14:53:09 -0800 (PST)
X-Received: by 2002:a05:6602:13c5:: with SMTP id o5mr10710003iov.46.1607640789127;
        Thu, 10 Dec 2020 14:53:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607640789; cv=none;
        d=google.com; s=arc-20160816;
        b=UDQMS5BB19PoIz7++mmAg0vlAxuazY5AD4ouMi3jeX0DBHlETU046acXPkNoen9N8J
         iqpSZrrImRaJM1xuf2KR1odvoR+XX2pWTCMPnR68ilYm3iaBv78IZKa8yLMzllb2Qab3
         vmNkNlkzi+O1nF1bwAZMdeElQX4HcB717GzoUn8KCOQZlCCs2J9ttV+FBMu2eutUZkys
         CuM59DJ2GjZfXVLapDPOk8yQ5VQwNxfwuFMBmkko9i8B9//18qDuCPo1J0eIPHbEEwEm
         1sZuXsGSN2VMY7fUnRgXCggvRVbwRAhvLeWIENOJtP6AF2hOXwSZiw3OJkx/t8cbigb5
         4XNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zBQoi+y+4cg9DRWgUXN6Y3g43b49pmfyTju9GNYCKF4=;
        b=dinhacrA/LqIBuNwxhN03HW5FAtavHvH1Xzl1Xk3T+BcZV8ZlAyZAJ14zcfQ9le9SJ
         Yqp6sdi/F4GJiA/Y8jNx76fx3EjrdI6oEPN1Vn0kzvJEoN1K8N0k28m7dfYTu016t3Z5
         Brpi5y35E/bbJmgazXCPu0dDbWU4U4gikDUrutbtTF+CNouO4rZKO6mx/sWf75oMkWf6
         qMiZwtytvMOQOrIdrrMM2PCvQyWcC4Q60Fg93fT936TS5FTln+cHf+pZzbwVoUSAgCSg
         OcbdgVuDgaPPX2G3l5Kl6TFezyR1JsIJFzQPTg4BG7c1Xq6Fsf6g49W/5QkWpUNgSzXU
         IWow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=epzIn+GX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id p8si512742iln.0.2020.12.10.14.53.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 14:53:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id v29so5657067pgk.12
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 14:53:09 -0800 (PST)
X-Received: by 2002:a17:90b:1b05:: with SMTP id nu5mr9889752pjb.101.1607640788371;
 Thu, 10 Dec 2020 14:53:08 -0800 (PST)
MIME-Version: 1.0
References: <20201204081349.1182302-1-arnd@kernel.org> <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
 <b9d7e33c-4dcd-0075-d0ca-d22b2488c354@amd.com> <CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g@mail.gmail.com>
 <CAKwvOd=-2zoc06EY4R9ZJ0M874bQv3NuT8a0q9=RoYeMMtnXVQ@mail.gmail.com>
 <CAK8P3a0gjPWiRX0yg=i6Qxgyo02AtQVVsw+=w-OvF956Tn=jDw@mail.gmail.com>
 <CAKwvOd=+w6vJvvq9Pwnv1EHHzwCx=o_=PbSozXpqryN6P1yxVQ@mail.gmail.com>
 <CAK8P3a2_0bY+fmUHKjH8XCKpT1BepUGOV0HoKDSPnOvtKjA==g@mail.gmail.com>
 <CAKwvOdmSzf7vFjjxWfvUR1FTeFoPToytQL_enR6CFXPCbUn8Gg@mail.gmail.com> <CAK8P3a0ViH90qvr63H4J5Qn0FMfV4r9CeTHurj3N2qO2f=Dq+Q@mail.gmail.com>
In-Reply-To: <CAK8P3a0ViH90qvr63H4J5Qn0FMfV4r9CeTHurj3N2qO2f=Dq+Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 14:52:56 -0800
Message-ID: <CAKwvOd=AKjojWfsB6UJKyJNkNZE4duYzGzRHSF1PubxmUazpJg@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: make DRM_AMD_DC x86-only again
To: Arnd Bergmann <arnd@kernel.org>
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
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=epzIn+GX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Dec 8, 2020 at 2:18 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Dec 8, 2020 at 7:21 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Tue, Dec 8, 2020 at 6:26 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > On Mon, Dec 7, 2020 at 11:28 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > Hmm...no warnings for me with that config on next-20201208:
> > $ make LLVM=1 -j71 olddefconfig
> > $ make LLVM=1 -j71
> > ...
> > $ clang --version
> > clang version 12.0.0 (git@github.com:llvm/llvm-project.git
> > 1c98f984105e552daa83ed8e92c61fba0e401410)
> > (ie. near ToT LLVM)
> >
> > I see CONFIG_KASAN=y in the .config, so that's a recurring theme with
> > clang; excessive stack usage.  It does seem a shame to disable a
> > driver for a bunch of archs just due to KASAN stack usage.
> > $ grep KASAN=y 0x9077925C_defconfig
> > CONFIG_HAVE_ARCH_KASAN=y
> > CONFIG_KASAN=y
> >
> > Is there a different branch of a different tree that I should be
> > testing on instead? Otherwise, can you send the object file?
>
> I was on a slightly older linux-next, and the latest version contains
> the patch "ubsan: enable for all*config builds" in linux-next,
> which enables CONFIG_UBSAN_SANITIZE_ALL. It took me
> an hour to figure out, but after turning that option off, the warning
> is back.
>
> I'll send you the object for reference in a private mail, it's kind
> of large.

Got it, thanks.

$ llvm-objdump -Dr
--disassemble-symbols=dml30_ModeSupportAndSystemConfigurationFull
display_mode_vba_30.o
...
   1584f: 48 81 ec a0 08 00 00          subq    $2208, %rsp
...
$ python3 /android0/frame-larger-than/frame_larger_than.py
display_mode_vba_30.o dml30_ModeSupportAndSystemConfigurationFull
No dwarf info found in display_mode_vba_30.o
$ llvm-readelf -S display_mode_vba_30.o | grep debug_info
$ echo $?
1

Can you rebuild+resend with CONFIG_DEBUG_INFO enabled?
frame_larger_than.py relies on the DWARF debug info to know what local
variables occupy how much stack space.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DAKjojWfsB6UJKyJNkNZE4duYzGzRHSF1PubxmUazpJg%40mail.gmail.com.
