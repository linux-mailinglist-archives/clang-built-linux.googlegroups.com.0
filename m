Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBAWRRCAAMGQENYVJOYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EFF2F8983
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 00:42:59 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id p13sf6088223oos.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 15:42:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610754178; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uxsb+jdxlvbddl9QQjaAaM++Hu2QE0cTScmBpdwil7GjSDLgeCtaOKETkQ/7n9YkbX
         aK/vsXm1Kr/9XOpYKkHVTufpc0BoS8BByKwwaIKveHKFZy10lVymsY39az/TRIrze8S5
         RvJMiqCAZ1A0MpNtEgnhwJaVZArUjBZhrEh1BxBO5RgRVl3FjomansitRkh3N5H8uto3
         qE8dGL4ZiQnSc3z9/S3y5MZw1CQjcO8Lqcme1YKkAHBowRKF/S7xIQWFt0DVM3TNad7G
         vhdt3GuDhegnLE4Cqpa6mdu7IY+6KgB3kG7wyJJPhuhzxakcgNExMrKcdgKMtsiOYgkq
         Sctg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=WXDljf9ENAyqtkib9leys8b2dVbG6JtwAKIDaM50kT4=;
        b=aqo3Khc5PFpSKofPoiZOC7BJp88FlLTMDI+LdWlocx69PbVeeb6Fl1QMVlQC59uAn9
         tMenwplY8jPvkR+QPiQEoVR43pc8O2qUNbCGXGzTsiSUJ8j1BPn3xPZx62eGErO0t2Nu
         ZdWS494n4pSiXs0rZxlbWuFnzQCwExYN7uko5GnqJovmf4Yt5GA/cVK6qaXhKy7SUtSH
         JeCAyjeOUVVRuOjIbFrKPsUc9nra7Pcx6zNZn+lDYtvlhMMYOHNxEJMpsKQNj5ZUmj+c
         EkOQwFKEOsg7TQi0juG6h28M+mEiiXZVL/2P1miTgG2E0XREJlpo9TgmF2ULOPrm2Mgm
         66XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruZ8RBfU;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WXDljf9ENAyqtkib9leys8b2dVbG6JtwAKIDaM50kT4=;
        b=W3gtNTfAo3uaVtC/QwGF0UQgOsEHLRRoeJi80kpxhslIZSmmfb3LuZPQdPu3MUiOBY
         xZkcvOIYUzMy43TOogIw9gMUYKw/+HkVf5j+CyFW6rZqFDoR3bk6BljB6jeRNNUJ3MSp
         MEbd8qDhBmB2lMp5qJJXv+hAMm5+Zu3MRAtbDPvPuarCUPJFPUBjrWpvXqTLNoDEoumy
         fvfecmmN1Mnr9fkfd4lfz4gCnKYJ5dYjwnekm3Nx3pV5NxDdHQZlrEmdcuk+BQ49zTyg
         ewh3hF03S7tXhNeajDBVhOUPDAIOJFK6kmlfxhy5Oj6JLYm1bIjcrL0z51FUvhNTONgd
         WC1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WXDljf9ENAyqtkib9leys8b2dVbG6JtwAKIDaM50kT4=;
        b=Y3rqcQXx+lqN/nSfBKz8poavgyewdEI0wNUgxhUQ1qG88j491bUZ+h7ylG8seBddUq
         1cCXrIswA6x61H19MyOgEvQFzYcAf0tIoSU05YlUh5WpD7PleC1PwwUlk4cVYgqdrWbB
         2hYqq5QmZz1VHFTXa3sD5RQs7oBEmM8Z4xFXXkgyosVokCbJ3dlLTpwulhwro+WdJsVM
         oQ0suNWV0k036cmufraZSsyR4E+PLf5ayPjocTdKTsZpPDcRV2BdHYkFzeNxjNgr6Rvg
         CanKvGzpUADuJrO3itjIxI2J3WgMStFgpBPY4TOfnCtE0O1DFRbEL3VGLLB623Xi6LQ4
         4f/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WXDljf9ENAyqtkib9leys8b2dVbG6JtwAKIDaM50kT4=;
        b=agYrKOnukWYwZVmhOSU3ehdkULfI9SBgvHdLuSjfEcc/SD8n4eh6HQgL9PjN57jJ0Y
         wdVOf38jVHiGG8tIPM4vMfWkoiR2SMpPCBv4V1KzNNc2LiKcLoQovb+VT/rwLVhXsmxV
         NTU7OX9l8mWk7b7gWmnfxNfUb3FcZMV3w0ejiACRVvyASAwhwfiEsomrbbFcASDjuxuU
         hzNYas185lVH1DmBITRoWiyQQYHybLqkGG70K6DUGBcE6HgKfkbr8CqwZ7UUdRqf+yUh
         ds+iqvD+HFRzT/U4bG+Zh9s3l13Un+Vm9Imb+Mg/KhS+wWeNkLL+c3251SZjGYtPMbFq
         WkSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UL7QZWXUeKJlBNn4/Rzxr9pbVoVENAPDUG2eEnlzX3l/uVIaz
	XSZPYQcJ/rkJSeiEyqmOSf0=
X-Google-Smtp-Source: ABdhPJwALyc/FpK9HSyxMPMoYgFx8OusQ0Uejnhe72RbsKxcaG88ZSMVqID80TVDMZ/QcWuc+dOPlg==
X-Received: by 2002:a05:6830:150c:: with SMTP id k12mr9958364otp.11.1610754178472;
        Fri, 15 Jan 2021 15:42:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2119:: with SMTP id 25ls2560975oiz.10.gmail; Fri, 15 Jan
 2021 15:42:58 -0800 (PST)
X-Received: by 2002:aca:5196:: with SMTP id f144mr7170080oib.51.1610754178082;
        Fri, 15 Jan 2021 15:42:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610754178; cv=none;
        d=google.com; s=arc-20160816;
        b=W3S/V/cjpkfkpNtjIxXCc+LxVveOFK1K3clGS9lhv4Elidr+fX8LaLlsjOvvqb7yOc
         3cAIv9rk+Jwu0sST+D1zx9ugYJMbp9rHBvSmEzOiflFFKClJlcbC2AMquqSRfaVRHEW1
         GbdeNWX//Xg7MRX9dwFnwzv2r30BaM+2xNctYgOBE0Xqp1UPeVRhQnfDEuW6CKDI0vTk
         HsEa1aWjPejvTPMfu9aqLwPVVHume90liCnwJ+xFIIy8FOsSH4Bdrf12oRLlZkrGQQek
         n5vLft2Qvf3kgIZyjYbDzCb6ZYa0ahbdPqKL7CX1bEDOQMvrfFALDZfC0xjeNcl2B39i
         eXlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2F29hULLcdjxbbHgzXktPmVGYBC0Y8dyyq9NoQsYzh8=;
        b=ONV6GfSbcAPIgt6LZeNFpgyzUZAfXWBHy5MbGv49wqyIuSIGqVE3R4obKEZWlssqNc
         A9qygAgAtkbFQlq7FYxtXVYkaa22ybg/I/J7FUi2sMxomELz40yUUsvJUEjJ3SuJNUmc
         erR5KuhCjTSg6/2BCnX8YLaOEiK//7cHtAeIiYkFiGGkk3tCpqOJmTSr6tifZbj3d8bI
         0x/1cI41umZ6ruix3H/bZdn/OT2LCb/4UAL505lcafowjCZnFrxMWg8EWbaX//2fSY4H
         OQe87ZrQ23ROaXr1xcXKc/DQ9/V7DQbL+poXLX5hncha5xcP0FAEC33AT6/HmHWAr6GW
         8pUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruZ8RBfU;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id r8si941969otp.4.2021.01.15.15.42.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 15:42:58 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id x78so2140316ybe.11
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 15:42:58 -0800 (PST)
X-Received: by 2002:a25:d6d0:: with SMTP id n199mr20593271ybg.27.1610754177664;
 Fri, 15 Jan 2021 15:42:57 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
In-Reply-To: <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 15 Jan 2021 15:42:46 -0800
Message-ID: <CAEf4BzZ7y84+oe9CD4g3r19qGup=kYnm8+f+5K4YQ=6gqTWtcQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Yonghong Song <yhs@fb.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ruZ8RBfU;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jan 15, 2021 at 3:34 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> >
> >
> >
> > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > CONFIG_DEBUG_INFO_DWARF4.
> > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
>
> Can you privately send me your configs that repro? Maybe I can isolate
> it to a set of configs?

Why privately? To reproduce and fix the issue we (BPF and pahole
community) would need the config as well.


>
> >
> > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > It is not there before and adding this may suddenly break some users.
> >
> > If certain combination of gcc/llvm does not work for
> > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > should fix.
>
> Is there a place I should report bugs?

bpf@vger.kernel.org (BPF in general) and dwarves@vger.kernel.org
(pahole, which seems to be emitting these warnings and having problems
with DWARF5).


>
> >
> > >
> > > I had some other small nits commented in the single patches.
> > >
> > > As requested in your previous patch-series, feel free to add my:
> > >
> > > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> Yeah, I'll keep it if v6 is just commit message changes.
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZ7y84%2Boe9CD4g3r19qGup%3DkYnm8%2Bf%2B5K4YQ%3D6gqTWtcQ%40mail.gmail.com.
