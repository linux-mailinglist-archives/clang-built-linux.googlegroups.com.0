Return-Path: <clang-built-linux+bncBCUY5FXDWACRBD6U7P4QKGQEBAB7EUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 667DA24C726
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 23:24:32 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id f14sf769443ljg.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 14:24:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597958672; cv=pass;
        d=google.com; s=arc-20160816;
        b=yEy+7sYQNveDj5+0145LfJP2amgV+taYBYvgG1ADj4sYPecrgMr+3BdSScp+OUDWk5
         +x7iJq34dLyRkKBhHDtFlF4+A5bflkuE9wK/Ly2StbsdbL9DT9MjYkCDJiF5Eduq+w/5
         P504wDGGghkJ30uLSWVOjLCbQTQ0RXNEn9GHOwm6prLWKPfLycT4X3yMlt7eV1CDrRlh
         kPT25eMdZb4HMKZSNUR1OsnbFCIgybBgEFQUMNK3EcJFbnUGSAADhXHFVZhSkd0SQuWy
         CrUmppWmjloEdGi0RT7G83nu4d98MeJWKcVAM3lgce+d9i4timnSz0V/Mdb3azhNz1yq
         xJCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RIOQhTgAOQOc8Q68TyGY28HUsl6fvP6mYSkOsZebF14=;
        b=DuHRlGXCD8sevwqNMoHkgHbP2en9rXv5HOsd/QzGuhs358rS/aKnDtaWZ7ogYeVoB2
         wneCSQFWVY7WJyntGiseyBasGLz6x30Q7r8F1Gt49Pjt1NvmtkK+A5WwVD/6Y0GFUTKO
         lGJxAhsPCLBzdq3WInnYYwLq4Zn2+OPf2Wq1Jrh9Natf1z76bL5mSaHyAAS+vjqjUyF+
         i8z2aQda6mLaZjK9sNVZabD26VOvXWenZ01CJaW1S3ke7ViEw9FcB4J2o0Nzm349HRkR
         TOkS2Cti+9vd/hU9P24vyIBGfFPYLUJXQ3HGron5QGUymIn2crClUiFL69c6JcEM7ohN
         /uCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYEn1j0M;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RIOQhTgAOQOc8Q68TyGY28HUsl6fvP6mYSkOsZebF14=;
        b=Dn6Nno0aT+LI/h2qmCiQNAve1rzsplXqLX7G4wt9geVDRZ0MHbn9vpf+v2b3n7dnLp
         L1HGcNji1uVUlG2EDOGyWDhnHfj55Ys8m8B9dkOkVYn0npA2IGdmnAYOMp01ozfuDNlG
         /V3fl2QzxwByfGARvoYR9Opx0dcipNaQFMsZ+hn72afkAihZDW3wc/qkIqu3scxBH8ez
         usgczFschGiIgidZweBhIYeRk0+k6SCHHFklCaz3+ISldBx82EEsPplxPtHkCdagtD9V
         yoCz5iu4N6HVC0AY2b6YpvUz3BX6rBiaBOy8OUgeXGiyz2gO8ayxgV1xQzoV0/0y4SEs
         wKMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RIOQhTgAOQOc8Q68TyGY28HUsl6fvP6mYSkOsZebF14=;
        b=XYCcLDX2sLD2OYAkLMVrA7bOTYDiapUbY0BxQH6HBN/T4Vlrx4bYPbCsCuDAP9WBmq
         KSjrC4NZPesP3DtGGAshQTkb9uleOiLzyvYh6FzKBllvjuOzvwhQuhDthDpWbl+3n1+3
         R0lLYEWbJhaGB99jc/x4ZQFU+rWCrxp1j9jXNh0in/5yRzKcCbe3rXTasicEuyv2aEXm
         ehNOtwd29sb5vst01lt14JrkUoJJOMhoOIezwf4sHZcmBSoar58yOVbvB4LOmT5ZGeE3
         YvozNDQwVMjzCxsUU8uAo34o7IrWHTbxGt0Gfs93Zah+4Y+gohsXysKm8XeYckhzHE4z
         rW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RIOQhTgAOQOc8Q68TyGY28HUsl6fvP6mYSkOsZebF14=;
        b=Gk9FLU+rcjcAotXqJOUH2xeXgpMBHsK1cCBcHmmj6seNScO2gO7YrjhGBCc5mAaWzF
         ZNclh0i7UpwJDAU3EY1ymhPHphr7kZ/ZNTWh/eZ29xUhSxhiG4AaalFf3S0XWvzcaEFu
         OBXKbz2Ypmv7Ov/UcRzvkJROhpEJ8mptBj7sVQRwaovmWaTufIkldD9FZC0tP3AkKZC8
         J+E9xLkPZFenKA/a0AARyR39KXQRX7nZ+CcAwagm7NfYIeBodfY9PGO0uFeBXVc1ztr8
         NDyYQsEo7B/39hippxlIsw+Za8Vhk7RvBsrn+bpOLpy3LiztTmHlfBsq0RZ6mVIuc8fh
         /Htg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533W9LFJq9oEBcdXih0LKiXuNVie1KpmXJtpad9cuIEmyk/k+YSu
	3kyFGOROwlxxGnvvoVcYxOE=
X-Google-Smtp-Source: ABdhPJzbNS8vfiBK38Ei9diyBxCLwJADIreP6gXe88tl2mXPyIWCNUby8jORXdlkwFHarQc/o02MNA==
X-Received: by 2002:a19:c6c6:: with SMTP id w189mr146118lff.75.1597958671826;
        Thu, 20 Aug 2020 14:24:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:300f:: with SMTP id w15ls1985ljw.1.gmail; Thu, 20 Aug
 2020 14:24:30 -0700 (PDT)
X-Received: by 2002:a2e:7e0b:: with SMTP id z11mr102168ljc.133.1597958670896;
        Thu, 20 Aug 2020 14:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597958670; cv=none;
        d=google.com; s=arc-20160816;
        b=MbN3MjDxoCSUpnVEJPTRV9C6tLjkHP7B0QZeXNlebLsaV9BG9BM+oVZ8EEi6250plx
         Z0AUvBqPaER9RlGAXBuD2SBHEzzhwl3/3kYBa/a0ZtXNiBwK0bxMfiDqYafrTasc9hm2
         1C7a2tvELIhC6oe3EpCQ4dGh4ZazqnvPxdBo/iwDSnVC5DopWc/zxTNAsX4OqkGAAsay
         hofS+BOos/qkW2tuwXNmnryACKqsyrjxAVx9tXkfi5z0VLT1/5Fi5u41cWAk5ZbRonO+
         LyljpHQUX+ElUJaouej1uIOD1AwD40slCKLlKFBygeJ+XqGRBRpk/6kLYxkjX/z+WFu1
         Xklg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=T8K3hU+6RbHXPV23LYzDkjtWzAtVysJstQwvCAunJ+Q=;
        b=zsF9FY2fxcv63jUdGIAFha0YPuUHRlZVQtzpv/H1XAfOqGfd+LGPpPlRxZq3TgYfLe
         R53zS/qi6zJla4QnVyZlKlrrS+MvALcYC7A0qBJJDOvoIG166dFKgcWvEqzC5dQn+zD4
         iuclREbnKTKQR5ID1qOGZiYHHlO5jIl7RyLe6TVXudOKX8UVmDj/qvbU90mrecE9k4Ys
         LykPUY62jwnY5jJotkjw73tIjs9fmuP2sTUvolXkuZvcimYDzDOVLzHJFxj8hxRH6TxW
         ao79n6v/1Ts+hEOp3WHUrkfNij5RwkoAidbqgpZRhWaI6cH8y/M89P16ZeH/QN5xX7oe
         T70A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rYEn1j0M;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id f16si81285ljk.5.2020.08.20.14.24.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 14:24:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id v12so3682912ljc.10
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 14:24:30 -0700 (PDT)
X-Received: by 2002:a2e:8e28:: with SMTP id r8mr104036ljk.290.1597958670606;
 Thu, 20 Aug 2020 14:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200819092342.259004-1-jolsa@kernel.org> <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com>
 <20200819173618.GH177896@krava> <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
 <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com> <CAFP8O3+mqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc+wi-8-HOVQ@mail.gmail.com>
 <ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa@fb.com> <5ef90a283aa2f68018763258999fa66cd34cb3bb.camel@klomp.org>
 <7029ff8f-77d3-584b-2e7e-388c001cd648@fb.com> <a6f1d7be73ca5d9f767a746927e7872ddcf18244.camel@klomp.org>
 <35b05eda-f76a-a071-d69e-9ba8c6f48382@fb.com>
In-Reply-To: <35b05eda-f76a-a071-d69e-9ba8c6f48382@fb.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 20 Aug 2020 14:24:19 -0700
Message-ID: <CAADnVQ+C3OMe=5=j-zqcTNA=Yo1NtGRkzpwNzUrDfGsQnMagZQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong alignment
To: Yonghong Song <yhs@fb.com>
Cc: Mark Wielaard <mark@klomp.org>, =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Jiri Olsa <jolsa@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Nick Clifton <nickc@redhat.com>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, Network Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rYEn1j0M;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Thu, Aug 20, 2020 at 10:54 AM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 8/20/20 10:36 AM, Mark Wielaard wrote:
> > Hi
> >
> > On Thu, 2020-08-20 at 08:51 -0700, Yonghong Song wrote:
> >>>> Do you think we could skip these .debug_* sections somehow in elf
> >>>> parsing in resolve_btfids? resolve_btfids does not need to read
> >>>> these sections. This way, no need to change their alignment
> >>>> either.
> >>>
> >>> The issue is that elfutils libelf will not allow writing out the
> >>> section when it notices the sh_addralign field is setup wrongly.
> >>
> >> Maybe resolve_btfids can temporarily change sh_addralign to 4/8
> >> before elf manipulation (elf_write) to make libelf happy.
> >> After all elf_write is done, change back to whatever the
> >> original value (1). Does this work?
> >
> > Unfortunately no, because there is no elf_write, elf_update is how you
> > write out the ELF image to disc.
> >
> > Since the code is using ELF_F_LAYOUT this will not change the actual
> > layout of the ELF image if that is what you are worried about.
> >
> > And the workaround to set sh_addralign correctly before calling
> > elf_update is precisely what the fix in elfutils libelf will do itself
> > in the next release. Also binutils ld has been fixed to setup
> > sh_addralign to 4/8 as appropriate now (in git).
>
> Sounds good then.
> Thanks for fixing the issue in upstream, both libelf and binutils!

In the meantime I've applied Jiri's workaround to bpf tree. Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQ%2BC3OMe%3D5%3Dj-zqcTNA%3DYo1NtGRkzpwNzUrDfGsQnMagZQ%40mail.gmail.com.
