Return-Path: <clang-built-linux+bncBDPZFQ463EFRBZNC2PWAKGQEDY7LS4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 994DEC8E70
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 18:33:41 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id n3sf7746611wrt.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 09:33:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570034021; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHXGE1Ox6OeU/EUVnVtRAmI4+LrRdTHLjCKvAxLSPI+6A++MJKzga8tK4dHEQqPUBh
         mWZJo9B8qmsgBSXNo5vm0BP7EOWxPvCFPu6CifUivLFDM8NvlIUwDpzj84+jFv1vHL5x
         /9dI2x0Bv+MFdShaeZ7VovymX6F8PZURthjb0dB6wZcT45HUSny9PoVsZh2XYLu9RUFR
         tH9zW4SlLJ+Xl03LTa/WYUbS7j8rF8bF0cYUOooRYoU3Rb9lS4a3k+qR+xll9jfA1X8d
         +SqyM174fV/ptuaMAVNnTh55/THa3gNsWHM5Ee+6ZDJD+ajv+S9xDwrhi+0Xs2mYrGn2
         EqYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zApyOkOG0s3Z7cu4wyc685YyR5VUoGIOOCxkoMdqZMw=;
        b=h4UwFx2bVcSuL2NQ+w/jD0jP6tVtPYSHeZkoWlnTpHo9NuRiaXERAaxvSHA2OdKOo+
         G6CrkAU1nM6FrHpLjEZks70eEJlz7yD+4m2Ore1nB5O3QFF0pDcgf8HbytiAsDAuMAAf
         TXKXC3B4/Jv1WAQukhodaiEq6D4JcxfAyjuL5Zhkq8YHkDnsuGC3G6oNw5sK3BSr9tiY
         /Q+Ilzi/zAI4gJ8V2ez4qHr/BIk7EuXL4G/vn+O+kfcJbX7CEf702LGStTErBdnsEfAy
         M4frp1KdUFmUGGVSgj+7hUlpYL53lBYn7WPsh8XTH0bzCXCqhWFub17tldH/7iPVo6Vh
         Kaag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qNkjivrT;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zApyOkOG0s3Z7cu4wyc685YyR5VUoGIOOCxkoMdqZMw=;
        b=q4NdHSdeR2CAjwiijxCav10N9PjBk7XLg0C7uOWLqZEU/BtzzMgSQQXQ89U32xaqYA
         UEK5czkBnEYq3DB02QljrD/MYzUlD0V7UmxHBwJLiEiaK9ER4EkBNMCSLGCLspQGsP2q
         yyNbWm6/uIGZX+iVK5TFqXnoAwAC54XDLA9HfkvEwyrrc2x5Weio9j1jnCEy8osStA2s
         cvzUG18yEQm3wbVAbwe07IN1s/LgN0LNcyqVDIHj2eCmRDo4gImvzbSq2BuoVg7x4Vos
         nzh1wrn8PyU6aiTLjxI9qK3lr3PacXmptja1L+WI8AvXmpmW30POybblwiO29A1CvWHE
         BJYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zApyOkOG0s3Z7cu4wyc685YyR5VUoGIOOCxkoMdqZMw=;
        b=uPo4Bxg+4xKW6pIVNwUKwDqK3F7gYATcRkV+7HqIM5b7GSpDvCoTCYmQ02x4PXPfnh
         IhfIBnCY/K0WNhLF8hXWM0FwsVWadPOI+O+JE5NEzN5WRysQ64y0h1qFAE3RAir02fqD
         CiOCu0EUiF07T1fm3CzclrcKEE7P/Uz1TC2VOTmHJ1fzKYKE7TG6xm5pDpPLTg+oESlG
         1jNuLxd95iJQFw/vtKB4IooE0HqQpIqdWfFWTb0jzEmBcVbC3ajrvfD4fnXBP7iMKSvk
         NOPlo92nq6zFzXkubNaUHvMG1kTfTMHJy8ugogk/ENMi6oQbE5Yd0Owc/IubfY7JfmK5
         sWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zApyOkOG0s3Z7cu4wyc685YyR5VUoGIOOCxkoMdqZMw=;
        b=RMpEGHhv7Ohex9et4sSaGFEDAtil4fQpF8mEdUdUZ35wF4J+AkVJLbJ5+wtFVwdtv/
         LMo1r0X61fY7gMxtwrnmnewV64HM7kHzSV6rcos2gHpIi6lCJumsNuWrl6QfcOsycQUN
         Z+dYYMkldSJU+bQNOL/oO6CkQ/vgQl+YlsZg3Po7EhJ54PXlb+RuNwYg3fgTzQgGESbP
         l+AmxXdtF/nuTe0/cqQwd29aY+4QBAU+64+YcOf21fG9RP1YzxFogggKVQaBzV02oaTz
         Zo2R/ADJamEgQiGxuDXaEXn4UwjHn6g7lFkhtPdtktCwuyR/oGII8Mjjtx//Q2GdJvpE
         0QHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUElVR8Pfz76jvXDphVY4LN5EdVggZjXx6K8hJf4FLzN0RzC0ji
	El/xVmROdsBETyROp0zcCgk=
X-Google-Smtp-Source: APXvYqyp12AIGfaXgAxJI9ppzBie4RYc6r+4eZmhFttM0iMCtORBdbR8K0qg1s2IlAepIaeoWs9QWg==
X-Received: by 2002:a1c:cb05:: with SMTP id b5mr3513851wmg.79.1570034021289;
        Wed, 02 Oct 2019 09:33:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:50cb:: with SMTP id f11ls895138wrt.15.gmail; Wed, 02 Oct
 2019 09:33:40 -0700 (PDT)
X-Received: by 2002:a5d:66ce:: with SMTP id k14mr3602569wrw.258.1570034020903;
        Wed, 02 Oct 2019 09:33:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570034020; cv=none;
        d=google.com; s=arc-20160816;
        b=qFKShpnikVh9kmVPxjkZBnWB34MV4aSv0+pDGZXSCHWZdyjqJwrLvoLJcEZDQjeIPT
         VmlYNlyFgThfourUEUOTcIuVlcAbNscqEBshWJrQ5HapVCYOLxDnq/WK0SLaiPY40u6S
         gbGt14S2jO7LJdEk6odFZlz3T7gxbvbxWJhPpIj7Y0f5OcadLjhOLMiBFp8vo1wsM0kA
         9kB74p6acUrdJ98pcGTiJ+x/YmZ9Qn+5JNRWlG5yDGBid2mxWfmdEdKxKuvKs29bYme4
         UkpUVhwLHZ1thyDEwV0gTryi0itDBkHDmxbkFxgcP7AwP2x2LVq0iLKGp9db6ntK7u5A
         Ar/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oWuxqHH990fVUCMM6jqcLulz0ftwLl/bnFae9PcvIP8=;
        b=MwAPCT050xBS6O5klHuHlupNHjrJEGBLi28aZoe7GXfGtPxsvFQtsmSAVwDHvnr6Ag
         1sFkabsDr2r/flojWVFjhwb7DxBQxaCsKEyliwLCGFf1duBHjCVjjTVLpp/+Pvu+BxKZ
         l73uIFyrJuUdvFCMdYsusaMYVednCP8vpulLDn+TdbnYV89VCUoVAEV7MRi/teFuzX9l
         cA/oODqjLz4ExyjagEEE3ZlH7m/i5kvhhmIZBDY5VVY60wislV2B/7XWWDCj/RXTIXcX
         0pk9jZTN2iCcdKZJPlXtpcV4XptSU191G/+2BrfIyAL2rJwLyyZ8CRaf7Tq8M3ngvcH7
         6DrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qNkjivrT;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id p12si408911wmg.0.2019.10.02.09.33.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 09:33:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id b9so20441337wrs.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 09:33:40 -0700 (PDT)
X-Received: by 2002:adf:e951:: with SMTP id m17mr3421662wrn.154.1570034020467;
 Wed, 02 Oct 2019 09:33:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de> <20191002120136.1777161-5-arnd@arndb.de>
 <CADnq5_PkTwTBbQY9JatZD2_sWjdU5_hK7V2GLfviEvMh_QB12Q@mail.gmail.com>
 <CAK8P3a0KMT437okhobg=Vzi5LRDgUO7L-x35LczBGXE2jYLg2A@mail.gmail.com>
 <CADnq5_PWWndBomBOXTYgmFqo+U8f8d8+OdJ5Ym3+a2mgO5=E0A@mail.gmail.com> <CAK8P3a05ZSWcw=XUZrLyjMLY7wCHLKhpe+MF9p5P3URWpAcj+A@mail.gmail.com>
In-Reply-To: <CAK8P3a05ZSWcw=XUZrLyjMLY7wCHLKhpe+MF9p5P3URWpAcj+A@mail.gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 2 Oct 2019 12:33:27 -0400
Message-ID: <CADnq5_M9H2R_6KnxutJ2F3ZkZ1FxqPufcyTxwcQ1cdWYFDbdLw@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/amd/display: fix dcn21 Makefile for clang
To: Arnd Bergmann <arnd@arndb.de>
Cc: Alex Deucher <alexander.deucher@amd.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qNkjivrT;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Oct 2, 2019 at 11:39 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Oct 2, 2019 at 5:12 PM Alex Deucher <alexdeucher@gmail.com> wrote:
> > On Wed, Oct 2, 2019 at 10:51 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> > >
> > > Nothing should really change with regards to the -msse flag here, only
> > > the stack alignment flag changed. Maybe there was some other change
> > > in your Makefile that conflicts with my my patch?
> >
> > This patch on top of yours seems to fix it and aligns better with the
> > other Makefiles:
> >
> > diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> > b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> > index ef673bffc241..e71f3ee76cd1 100644
> > --- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> > +++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> > @@ -9,10 +9,10 @@ else ifneq ($(call cc-option, -mstack-alignment=16),)
> >         cc_stack_align := -mstack-alignment=16
> >  endif
> >
> > -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse
> > $(cc_stack_align)
> > +CFLAGS_dcn21_resource.o := -mhard-float -msse $(cc_stack_align)
> >
> >  ifdef CONFIG_CC_IS_CLANG
> > -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -msse2
> > +CFLAGS_dcn21_resource.o += -msse2
> >  endif
>
> Ok, so there is clearly a global change that went into your tree, or
> is missing from it:
>
> I see that as of linux-5.4-rc1, I have commit 54b8ae66ae1a ("kbuild: change
>  *FLAGS_<basetarget>.o to take the path relative to $(obj)"), which changed
> all these path names to include the AMDDALPATH.
>
> It seems you are either on an older kernel that does not yet have this,
> or you have applied another patch that reverts it.

Ah, I don't have that patch yet in my tree.  That explains it.

Alex

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_M9H2R_6KnxutJ2F3ZkZ1FxqPufcyTxwcQ1cdWYFDbdLw%40mail.gmail.com.
