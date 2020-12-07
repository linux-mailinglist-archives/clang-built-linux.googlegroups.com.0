Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRWPXL7AKGQEPUKGNCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B722D1CC7
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 23:08:08 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id z1sf3120320ybg.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 14:08:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607378887; cv=pass;
        d=google.com; s=arc-20160816;
        b=GI8zKwfEooLX0ID3fxGeGWlJrC/DzgvSJrHzZ/laBseY78UA7Ze+HcCO44R/1iYQB/
         m2XPno9jC3wb0jZXgbdH6q2iXuUUMW+ZQPhDolKjCCIiKfHpElaY62uXa7W7k4dkY8rm
         DIynDYL5ln78vq5J6urVgyPEY+cz/VWivXhC7qOIB01PU95X0jHDwXati+zqgaYVw1WN
         ypEZRw3eSYniVN4qmpgFe5EwvgkPUBtn0p3bhBfIfwCiucoXEjRRLzHDFOjh/72NhfxQ
         89sAg7XdFHou9zf2UWOEByDLN/C0mdqJdUqaYoXqsL90AdxtljrrFxTPak2JqN1zjo4C
         SrLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OuDLJxog17F0A5j6Od986awHVFj81jw32De0hbvm7D0=;
        b=u2qrwE/J2YeIoimHQMgJAoRIbBpFeHkqWOIuDeBqnLFDnA+N0kZ+OpQvUrE662agqY
         Vd8L5r4PZUKkmm9dI63SwGrMjriEkHvu7jmbOEN6uL7yRjep6D4Jd6KDJZmV3v3t2p+a
         EQxVAVCIOod9QMTy57X9+lR/aHBiqIZm/QehiQ0ed6i83G/MDUaTQVNhGEgh5klolsVH
         LXIOBGWmQpS783rc1TrosYDxFeURbl6VMrCN+JAlLVTx6B3TGwgBUpLS1R0sojR7iWNA
         wMnn8l68Erf3oD/bPfL44VB3cIO4QDuMDPiNdEZj5DoIRKrV1Q9KBUNv5WEmmmEfAPIQ
         rw0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tKQPYnax;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OuDLJxog17F0A5j6Od986awHVFj81jw32De0hbvm7D0=;
        b=JfHIRKfY6F9nJWHLznrPdoWhMirwnc1XvD52xuYYBwuao7V897AkYWDWjqDLrtboeX
         gZe6edUfAT7TLmH/A0MvC+PZ/MfWyXu4cA7wpaiqGnh9KNSmn1THTFIO6kWz01QNSscY
         6d86+XkLLW94ojaVYsMpcEtx9XphZ9pyitL5OtUj4hfvrTD2kX9jQpbjwRRrLQYgFGR3
         p7LOg0wbQVD95mFkZorJp0wfyHrW0R+1HBTqTk/QM9qxlml5E5JDUfJlMbNZOHTx8URY
         +8/mLvVmztOri4ONM77h5apq7YNRi8hnAOF2+Qmwv0K72ILaMaTT0R3dtM5Eurp0+T9A
         C6rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OuDLJxog17F0A5j6Od986awHVFj81jw32De0hbvm7D0=;
        b=WPntks18SsNz+GgNzv/QhQMdPLYIZw66OE2TLIriEebKgeieEcPj/P2gqoVd4NFSJV
         6lFTnmkps12BwSEOjDddStYdaU1gGZinBY1hfGhzv7JU8sCBS+plO0bu4hCZRLBgSJWa
         w3XI9p7iLMKMDKwipXGe5gVy4mbebLDoAMbS72flgl0xXKTW/pybHLoTQ+/zhVaRHhsK
         uyoYdjfsQG18VRrJXMxjb4pdU7Dx+MM7F6GJvTWYqJbcZC84aMlJct1aU5TrZWXlDdmM
         Q0ZDQe3/4584xCkVNRF6msfi2PI/rZrUUUVrYZ8zmLxxhqASQMt7UK9fNjcbl+tBEuEO
         eV1A==
X-Gm-Message-State: AOAM531oWs5rQ6CU2GjMquzXcxdX3DWxzw1XLESDX+yKWwYEygpCPAtM
	mAFYXxRIARLZ2DzjSS+Yg0U=
X-Google-Smtp-Source: ABdhPJwKX6ekHfI4n7LJKf/xDzjLbLaDb10wXQBpjZbhDPjQMmgcpxSA3OIIrs+K9RWAw12yQrT69A==
X-Received: by 2002:a25:bb0a:: with SMTP id z10mr24069372ybg.470.1607378887041;
        Mon, 07 Dec 2020 14:08:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5f42:: with SMTP id h2ls8719097ybm.11.gmail; Mon, 07 Dec
 2020 14:08:06 -0800 (PST)
X-Received: by 2002:a25:16c4:: with SMTP id 187mr24126148ybw.39.1607378886647;
        Mon, 07 Dec 2020 14:08:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607378886; cv=none;
        d=google.com; s=arc-20160816;
        b=p5UfPjF5Jiow4aJyOgpkFvwsSC5avh7auWrWHkIoEV3XzfDXs/TlmX6wehWpQmOh0E
         BC4XqqeYT+yXZFDCdztupeK32+vbbhiDwUIYsmVgJFBAi52k2zozm6W+hLx3I/qA7Mkd
         LthHrh7DZMUJbswFXjpi19ePJb0b9A6MxWKntH7tlvgb4HGX5FWU76irqjNxfYb/Pqtw
         8qZK++OhyxSzpmSVI4NFzuyln3z02CJ2a9TfvYCLEehgguIXVqTp8kg2i0b98SM33uT7
         UFoTMsLhL/5XzCsAfKBWzCbIwQbUQ7XR23gwKrjJ36XL1a+hEB6AgRIbnORz9/R1JTvO
         egRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RH4pdeWWvfre3cu7j/0GaN4hr0feg8IAaGOFeWc7Icc=;
        b=P6NMloh1LLY0jA6ZvAbNz+Vktr+MrpdDtZlKd4jRXyz74sZ+jjObv6U9CAP+ZGKxgW
         iMrnN3hERRQsgGQgUSrEWQhMGawHvjxNAWw4qJPD7MthOeKRdrp545yBsbTCwX3IY+z8
         iNfPnYQXKFoeCXxT6JQFsz/WKpHUxRr/OlhB+pdhCOQzPNwlCx3VjEmIQEX3JJpja+aM
         Gd3QVJxMWuYoeLI0aDf6BRR4eAb5ZfLD+N1y/nQR+Q4HYhf1LSRqQEaxDDObns4zn/C6
         +VClnhf/OJnKBCR/YipGEqMJc6/AMkT1pwwU38dV1FZ2IHogVacV+/S3YrNr+l3h4zLj
         zu1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tKQPYnax;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x14si1157355ybk.2.2020.12.07.14.08.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 14:08:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b26so11676612pfi.3
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 14:08:06 -0800 (PST)
X-Received: by 2002:a17:90a:6fa1:: with SMTP id e30mr921328pjk.32.1607378885707;
 Mon, 07 Dec 2020 14:08:05 -0800 (PST)
MIME-Version: 1.0
References: <20201204081349.1182302-1-arnd@kernel.org> <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
 <b9d7e33c-4dcd-0075-d0ca-d22b2488c354@amd.com> <CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g@mail.gmail.com>
In-Reply-To: <CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Dec 2020 14:07:53 -0800
Message-ID: <CAKwvOd=-2zoc06EY4R9ZJ0M874bQv3NuT8a0q9=RoYeMMtnXVQ@mail.gmail.com>
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
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tKQPYnax;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Mon, Dec 7, 2020 at 1:57 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Mon, Dec 7, 2020 at 9:50 PM Christian K=C3=B6nig <christian.koenig@amd=
.com> wrote:
> > Am 07.12.20 um 21:47 schrieb Alex Deucher:
> > > On Fri, Dec 4, 2020 at 3:13 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > >> From: Arnd Bergmann <arnd@arndb.de>
> > >>
> > >> As the DRM_AMD_DC_DCN3_0 code was x86-only and fails to build on
> > >> arm64, merging it into DRM_AMD_DC means that the top-level symbol
> > >> is now x86-only as well.
> > >>
> > >> Compilation fails on arm64 with clang-12 with
> > >>
> > >> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_=
30.c:3641:6: error: stack frame size of 2416 bytes in function 'dml30_ModeS=
upportAndSystemConfigurationFull' [-Werror,-Wframe-larger-than=3D]
> > >> void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode=
_lib *mode_lib)
> > >>
> > >> I tried to see if the stack usage can be reduced, but this is code
> > >> that is described as "This file is gcc-parsable HW gospel, coming
> > >> straight from HW engineers." and is written in a way that is inheren=
tly
> > >> nonportable and not meant to be understood by humans.
> > >>
> > >> There are probably no non-x86 users of this code, so simplify
> > >> the dependency list accordingly.
> > > + Daniel, Timothy
> > >
> > > Others contributed code to enable this on PPC64 and ARM64.
> > > Unfortunately, we don't have these platforms to test with within AMD.
> > > Does PPC64 have the same stack limitations as ARM64?  Harry, Leo, can
> > > you take a look at fixing the stack usage?
> >
> > This reminds me that I wanted to reply on this.
> >
> > 2416 is even to much on x86 if you add -Werror :)
> >
> > So this needs to be fixed anyway.
>
> Right, looking at my latest randconfig logs, I see the same problem on x8=
6
> builds with clang as well, though I'm not entirely sure which other
> configuration
> options are needed to trigger it.
>
> So my patch can be disregarded, but I agree this needs a better fix,
> either in clang or in the dcn driver.

If you could give https://github.com/ClangBuiltLinux/frame-larger-than
a spin again, I would appreciate any feedback.


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3D-2zoc06EY4R9ZJ0M874bQv3NuT8a0q9%3DRoYeMMtnXVQ%4=
0mail.gmail.com.
