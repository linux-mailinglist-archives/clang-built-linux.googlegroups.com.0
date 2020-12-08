Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGUIX77AKGQEMBWEUXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 901CF2D31FE
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 19:21:15 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id h19sf304730vso.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 10:21:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607451674; cv=pass;
        d=google.com; s=arc-20160816;
        b=o0t7vpLRpvd4n31MpYV1+8B6F475fe7DBf1lhm20CUBJjOoJhhaJ9PWjSfhibJy/To
         TSPhzFAcztH1d7Cd5X0+xXNJymHFMDjTqDyIx8SEwLLL/PCi4xw5gcpKSSd2acE7DQVI
         PJgVxZKfjUkDblCVbzvR0tSWpbTtX3SYJ0BqiC4hUMaWLvlN5xGRh8MiLrpWloPPccK4
         o0czj3G+LT0fV6rwlajj+urKhL/7oHeXVhyzPyCwE+SHFn95toQ95Vz0oqrSn+48H+6d
         +I+nGNGWc8AwarJDegXwU7GV/NKeqwPaIodhyw7HdugHeD4zxik3BJjNC6ge1Z/j3ttR
         ekaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Vlgyn9/x4RrjvcBA8+hkIlFCXkKqtR3mqa3H2/E0LW4=;
        b=sOOU1hEUFh2EZEE+JBAhOLfuoFn9nWSMYAiFtRaAbaqbEfnU2fa5Ut14hSuNOUG81U
         UPfyD3tlQ8ZWbyWLjQmUVVydQ1+cQL+4p/7K5cfnNOMvn39IXlyPWhKQhrcr1FX4v7f0
         XomS+Ry0TTxpl0fdQSFAUaPfuVP7x3shYNZVU4jakSakV00RmPVLe7FZQIR4yB7hnk0D
         4q6JNjom/B6Lp5YS6pT4a488xLNkQC0/LTX4Aa71QPGRm2KmbghU+fcwDF9pRvZPbCdF
         LT1xYVhCbP+2+VwXMb9V2NURe6QNyC8u0w+4OhQ9XKc5WS4Duw0hBr0dRqEnyd1fh+7y
         mWWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rsSy8DjS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vlgyn9/x4RrjvcBA8+hkIlFCXkKqtR3mqa3H2/E0LW4=;
        b=rYgePMSkiO+QfC6ph7SJNffTLAUwhZFbtsAFOXY4bk1iVDTtVXB1FCBOb4rlGHIBZZ
         t8qJtgPQGFVP6EyjOCnUgFFwj4dH+5kMtSB0bZIMn9GEkc2auEOzBEjW+0lXquR54C/Y
         a/p4r4CsOsbQKq0Koj+pwIfYD3ojKMNL5o6sCPXKTlfGK6AyK4cPNhqF5Ep3qepxVfTJ
         IWQa0jRTaZH/hmlv5RbflirDWlMnOJUuGEwMspyp0GfRouVG6KOudZcbwKL5VYcvAIpf
         FLMDm5CEanW89hFR0gcZ+a4wEN+VdK6T5aogEpxpB6k9BsIqeV9ujm0Viyw0iVvIS7pt
         fylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vlgyn9/x4RrjvcBA8+hkIlFCXkKqtR3mqa3H2/E0LW4=;
        b=hhB9J1+JutGAiliVuTfX3SxslCG3YUHhgsVylLpK8FHlnubjNMA4WUBn75TNlJcMAO
         JhNOKzaEfteJ7cHyBKpeieZmBQwZdLTLSpRPcNsA4bvZynqi/whretJCS2XKbdJpF6iH
         PRNgo4o3rtkMxFvncVWnkJjFjNXLsUuabEg1WNN+OoS7Jiv2mD6af8EfG0z6AopkrHZU
         XkGG5g6/qoGeOg0MtL5d1pI96KIZfp2SPDU2Tqc44HcJ3h/O14RqQf8erRIsOtPIBuMc
         mRTpEVoM2JoZ7GPQVplNWU7kSqPKa6TptrVp9ZMd+NyxQItAr2ZJTcd4E5w2Vq/NovI8
         zsSg==
X-Gm-Message-State: AOAM531HnluUrBTHSiIcREeDab/KhTyUY26aVIsNtzW/R60XPu6LSqBv
	eeXb+VuatCT1Xhds+gCP60o=
X-Google-Smtp-Source: ABdhPJyGScOMmX8jL7HBm7x4URAEDdgQ+8pR7CKk0a6kubnYVTncZahw/nhD50dflgM0OYTj/rvEYA==
X-Received: by 2002:a67:ed99:: with SMTP id d25mr18014408vsp.48.1607451674610;
        Tue, 08 Dec 2020 10:21:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2743:: with SMTP id c3ls947910uap.4.gmail; Tue, 08 Dec
 2020 10:21:14 -0800 (PST)
X-Received: by 2002:ab0:23d5:: with SMTP id c21mr16564328uan.129.1607451674212;
        Tue, 08 Dec 2020 10:21:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607451674; cv=none;
        d=google.com; s=arc-20160816;
        b=LFRdJ2wpHLf/myNY86L9fdRxS5sidw+KxHsJW9+yuceJcvMV4LGJhK1FGsfbC5alt2
         ol74savIslo82bWDoXcsAMcVTGrsRq916esPQQ4OuPIqCS9277s5HUF8C5zmJAHjylo+
         6l2rx3z750KkR0214MR3YTjyqj8oT3ucnt4xLJiDx9i8/PgVjUgLo+BKNnYP/Napyx4j
         z4dYDQNG6subQZDLy5Mk2L8K0oz/KNgNPgH6o7SsxJ+/HkWKg30twPhvc9ECLrP8SlNk
         youOFVsXBmUBgYWaVfBgZKm8JyD/eIASueEonoIz/YYsSakZf2wMpIEWaLPh3BuHa2q/
         WSuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=69ZxS8NpuBFfq3dMMUK34uoPZnuHxlhCdKz8Q7+H1iw=;
        b=UBZ+wyFk+tilhuWiiaOVdQn2Tby6W1kEkzdk3DmcXLluiLzC2pdLmow7QJVfK/1jVu
         WTBElmze7Ll9krCEfLjajRQlr9AEFv+jil4+dh0VPlz0mLhE93q03lFIsm4CWFivHvuQ
         tuq/v5kctiZfkx92Q3xqOXiIKW7KHzVGraSGRGtFld/KonYPVUi/uN9JIFa2ps1ynz/3
         yscBbrNz23XmgBejYxeazA8mzAPqyxOAQVKAXQOdN4DOqFhScvzajBsC9k91prIlTnEO
         DZruYtdhh2ym5caYlblmSq5IZr5+FeipW0WlVcPd6fjqAGLo92jjg4HlFKUhaJSxWIIF
         9bPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rsSy8DjS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b25si1237142vkk.5.2020.12.08.10.21.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 10:21:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id t3so12899283pgi.11
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 10:21:14 -0800 (PST)
X-Received: by 2002:a17:90b:1b05:: with SMTP id nu5mr5406298pjb.101.1607451673537;
 Tue, 08 Dec 2020 10:21:13 -0800 (PST)
MIME-Version: 1.0
References: <20201204081349.1182302-1-arnd@kernel.org> <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
 <b9d7e33c-4dcd-0075-d0ca-d22b2488c354@amd.com> <CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g@mail.gmail.com>
 <CAKwvOd=-2zoc06EY4R9ZJ0M874bQv3NuT8a0q9=RoYeMMtnXVQ@mail.gmail.com>
 <CAK8P3a0gjPWiRX0yg=i6Qxgyo02AtQVVsw+=w-OvF956Tn=jDw@mail.gmail.com>
 <CAKwvOd=+w6vJvvq9Pwnv1EHHzwCx=o_=PbSozXpqryN6P1yxVQ@mail.gmail.com> <CAK8P3a2_0bY+fmUHKjH8XCKpT1BepUGOV0HoKDSPnOvtKjA==g@mail.gmail.com>
In-Reply-To: <CAK8P3a2_0bY+fmUHKjH8XCKpT1BepUGOV0HoKDSPnOvtKjA==g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Dec 2020 10:21:02 -0800
Message-ID: <CAKwvOdmSzf7vFjjxWfvUR1FTeFoPToytQL_enR6CFXPCbUn8Gg@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=rsSy8DjS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Dec 8, 2020 at 6:26 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Mon, Dec 7, 2020 at 11:28 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Mon, Dec 7, 2020 at 2:17 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > On Mon, Dec 7, 2020 at 11:08 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Mon, Dec 7, 2020 at 1:57 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > > >
> > > > > Right, looking at my latest randconfig logs, I see the same problem on x86
> > > > > builds with clang as well, though I'm not entirely sure which other
> > > > > configuration
> > > > > options are needed to trigger it.
> > > > >
> > > > > So my patch can be disregarded, but I agree this needs a better fix,
> > > > > either in clang or in the dcn driver.
> > > >
> > > > If you could give https://github.com/ClangBuiltLinux/frame-larger-than
> > > > a spin again, I would appreciate any feedback.
> > >
> > > I've already tried it, but the tool doesn't seem to like me, I never
> > > get the information out of it that I want. This time it failed because
> > > it could not parse the .o file correctly.

The tool has a dependency on a python library for parsing ELF; I've
been having to teach it about various relocation types for non-x86_64
architectures; I'm sure the failure from that scenario is...gnarly.  I
don't know if my latest aarch64 fixes have been deployed (and it
depends on how the library is distributed).

> >
> > Can you send me a config to reproduce the .o file?
>
> The one attached here should reproduce it on x86.

Hmm...no warnings for me with that config on next-20201208:
$ make LLVM=1 -j71 olddefconfig
$ make LLVM=1 -j71
...
$ clang --version
clang version 12.0.0 (git@github.com:llvm/llvm-project.git
1c98f984105e552daa83ed8e92c61fba0e401410)
(ie. near ToT LLVM)

I see CONFIG_KASAN=y in the .config, so that's a recurring theme with
clang; excessive stack usage.  It does seem a shame to disable a
driver for a bunch of archs just due to KASAN stack usage.
$ grep KASAN=y 0x9077925C_defconfig
CONFIG_HAVE_ARCH_KASAN=y
CONFIG_KASAN=y

Is there a different branch of a different tree that I should be
testing on instead? Otherwise, can you send the object file?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmSzf7vFjjxWfvUR1FTeFoPToytQL_enR6CFXPCbUn8Gg%40mail.gmail.com.
