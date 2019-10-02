Return-Path: <clang-built-linux+bncBDPZFQ463EFRBI5L2TWAKGQE3ZRYQXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C40C9376
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 23:24:51 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id 34sf213949edf.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 14:24:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570051491; cv=pass;
        d=google.com; s=arc-20160816;
        b=rMQ4ATuY5uQI2g8CS0GFu5+NOE1Vq42M6S+O0vw0+lRh9qsTf4TtaZBgvCEcEzGhlL
         rDyNc9fRTI6VmuPUsFXEnyXyRcXfJFSPOgWsyJpl0sZha8Om3MMPOZ7SyV6JdWBEHr79
         dlhh4q6NQr78iwQ5cmcr8Twk5gJHt24f+g3+psAbfcRp08J+y/VOXXpLlTghCOaqzj0L
         xyn8+6BCGaazYNWwLsDtjlYDmxz4hUfHy+CHNxbd+ExS1EDh+Ox+dhDCAf2t2y/YTu0v
         KLv70qx90xHl3YBkTcmmtawVnnS+NG5lRnEYJ7JvQhATa8j6kmeKr87sBr16uCDbflyI
         GTfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YMCdd/KlJIee0bjdip9K030dWr1jMd/i9m8mFOIpdZY=;
        b=wZQe08fMfQlBV41RD3q2BonRyDKCeiJEt+UcUKjRQ+NCUKW9uyacLFljDlwnwl/pII
         N88XB/9bemrkk8oBgnMJgUXsdl/rswo8pymdXjkp0nCnWwAMmTyTURJ0SMvw/gaYcVqr
         LXmte6DZivSOjsIYzAyYm4pY+/7ZF5K8Y8xUoM7w9w+mvhxic28fWN2xTdBaTknN8aMC
         xh9ZF4S/x7gz64YdAxinvrXTgRzJ+jtM9qbn2FU6gNbrxNn95qEBaUp4deXHZi689Ym2
         2VKJ+z354o3aoQJuJOG9wRzTUfSBLp9DnM7mCHcdur5QAIjXQOxyU+Nb1Yg/QYayMprN
         RcdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CWOsCp6R;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YMCdd/KlJIee0bjdip9K030dWr1jMd/i9m8mFOIpdZY=;
        b=rckxq/l6vwn/On+Q2jVRydiaIG2eHaDwSpuZMzpNDeJ9OqvsY8byrgxYp50pxWk7wF
         6x4eNAkrzl8H1p9U0aaeY26/MNQZEY9SqlIHpQfqtoD3CN/Z0IoGojf591NI4N/M0Mps
         mx6tQzMCASpRnHO6mGUGB62uU8UsBeNADhdN4ttRgBhQHcyfPxKH74qiZvGnsjyGZ6Gq
         /FIwMiLwImsbZ2IRUJxuQ5JgAp9CmwDLcPfcM9M9D3Ic9fIF9HknUhbTa35v+dH872lf
         agjfyMsuDzdfLwxl3QEfepy6t524vjnXb4BocKF3hiTUCg2tSVzWCzrjn6x+PgRb9yqP
         Li1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YMCdd/KlJIee0bjdip9K030dWr1jMd/i9m8mFOIpdZY=;
        b=DPpwWEWQzmWNeMkqP3xoar6ATBZtVjo/oEwuXacbDZQRfUWOb59mr98XBg8JRZaTRC
         oD275D5l6A1lz4ABUlktzP+Z0LjXM4EjkNMnZcB/ocYMIkWwAipfLcLSMCtclAOI3Gpr
         X6qqlK0DegoflvUiG8xdfkcs+23bGy+YR7UWvaJ6Ti7cVe7LJHIvyhSopuD6lF8LZMvt
         Kj47vuHkDmamcS3Jh+wRPiI0nfDGKt/n7mhYk9io0cm2i0lDPDSNWgU5ObVD/0hjKZZr
         XCJQDdQqmdyOhTE5CYHt7OBYT6vg0vEtjC4Eui+ijiGzWxqjSC0uR2wYE2qojTrStW23
         edfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YMCdd/KlJIee0bjdip9K030dWr1jMd/i9m8mFOIpdZY=;
        b=TLnCO0YWDQx+iHMhFMASlzENBYdgbY89MkNWczqYfttHVqaXGEP5rmAFSVpWfDolva
         M9ic1SqKyqDyTPX7c7dOHrkg/mA39VWhNw6K7vtUuliBKKmu5BI7FupTAsRATsAGNonM
         MWb6ZHDNsWvmwc/kbwVm5Qg4SycC7Yw5LKgSbrIeQKY9cF01uZh1Eu+oic9qSRHw3F+4
         tQeUjq5TcaxEFRO/0OrgtUmkBm9mMwC439C8mycqpSiNBIYHFCCn3WvlOmcp4AnNiqLA
         yo5EI3zyPgV5nMPLZpZrd0l62MLAOdJfaJbnSJkqU8c/PTmcqDDUFL8X8wV1G7LB+8j9
         tXDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvfOLtImoPgeRDp0lohXcy/JGQDsE/ftpHBtNjiB3OaCR+xIdT
	vu3/pv9F8KszoxrTqzGmDbA=
X-Google-Smtp-Source: APXvYqxirFfsJ5RYSRSZd9v1A1lgZYt7FR5pJD0MtOUZ0XL9s/sqHOiQ6jEj3bhAbcIC/YFO4wwUKQ==
X-Received: by 2002:a50:9eee:: with SMTP id a101mr6100917edf.128.1570051491615;
        Wed, 02 Oct 2019 14:24:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:11c8:: with SMTP id va8ls753178ejb.15.gmail; Wed, 02
 Oct 2019 14:24:51 -0700 (PDT)
X-Received: by 2002:a17:906:7fda:: with SMTP id r26mr5064539ejs.170.1570051491205;
        Wed, 02 Oct 2019 14:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570051491; cv=none;
        d=google.com; s=arc-20160816;
        b=mK+8vK+HDCzKQFhPP6HpsZqdtLVZk70Lps2sbPUm8hRdh0cqDwbsOyTr2KiOva53Pl
         0arS2Jggb6BCndmBmD+d52K03Kcn5TexP/oGUCcPSluXkuSw9fG40WvWl+nKbiXzrV7i
         tvdleZkH1hKeGc0a54DVZcR7DmO/eIvMjqepzwGxX7ptAq2ko0n9wDERbYpe+uiLjFpK
         tb8DX/nv1RruAGxJSIfxW0bYYLE4xvyKqY96NV0ZBtw9b6f91R4cNg/0PR6d3C91IVZM
         OjDZ7FvX1/5nSUMq94WBCXQkv09RdK59RbGkF1llwFde29QSHsfLkzhqidj8kkabK01V
         jZXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A8w+FHe5743TtHJppD6AZXCm6HeNHuSZ/rMyNlKuO+I=;
        b=CmvdgsEqXAqIhS0U6ITKkvAEjUQe32ni9MZpP0VVNREKhzPAKUYva2vk0iuRDNfSYQ
         s+lSmbq8FjHxUgFTJxu8zadxDlKU7uuTeBTaU3Zxwu1tIu3R/PBP21OWv2Wv0DKEn+AD
         yTF9sPoU46kaKUfnTsyEUDRpNQjzcj+2AYKmKvERVv2Q1+FnVT5NG6qZukm7YRtZeB05
         uN3VULiRDCNYQIfgepqKOSefNrjpsuqpBg4ZWXkdn9DYEB5XqYU+Pwv1M90F5Uk56Za+
         xKYSDSJWoZyXWALnvVM98T+e+jSQhnU5OoGBRnJdAZmCzDk6FqQkNF+h0eZmUJSsTRdV
         DwPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CWOsCp6R;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d14si29126edb.4.2019.10.02.14.24.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 14:24:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id q9so583620wrm.8
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 14:24:51 -0700 (PDT)
X-Received: by 2002:adf:f287:: with SMTP id k7mr4526852wro.206.1570051490794;
 Wed, 02 Oct 2019 14:24:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de> <20191002120136.1777161-5-arnd@arndb.de>
 <CAKwvOdmjM80XP7VH83iLn=8mz6W1+SbXST2FChEnH0LSRRm4pA@mail.gmail.com>
In-Reply-To: <CAKwvOdmjM80XP7VH83iLn=8mz6W1+SbXST2FChEnH0LSRRm4pA@mail.gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 2 Oct 2019 17:24:37 -0400
Message-ID: <CADnq5_MyUp9OkqM+MUHZ8BpLEe5afBpAqOwQxDwAWgvVvqbpoQ@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/amd/display: fix dcn21 Makefile for clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Alex Deucher <alexander.deucher@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Leo Li <sunpeng.li@amd.com>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, LKML <linux-kernel@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, David Airlie <airlied@linux.ie>, 
	dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Harry Wentland <harry.wentland@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CWOsCp6R;       spf=pass
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

On Wed, Oct 2, 2019 at 5:19 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Oct 2, 2019 at 5:03 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > Just like all the other variants, this one passes invalid
> > compile-time options with clang after the new code got
> > merged:
> >
> > clang: error: unknown argument: '-mpreferred-stack-boundary=4'
> > scripts/Makefile.build:265: recipe for target 'drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_resource.o' failed
> >
> > Use the same variant that we have for dcn20 to fix compilation.
> >
> > Fixes: eced51f9babb ("drm/amd/display: Add hubp block for Renoir (v2)")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Thanks for the patch!
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> (Though I think it's already been merged)
>
> Alex, do you know why the AMDGPU driver uses a different stack
> alignment (16B) than the rest of the x86 kernel?  (see
> arch/x86/Makefile which uses 8B stack alignment).

Not sure.  Maybe Harry can comment.  I think it was added for the
floating point stuff.  Not sure if it's strictly required or not.

Alex

>
> > ---
> >  drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 12 +++++++++++-
> >  1 file changed, 11 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> > index 8cd9de8b1a7a..ef673bffc241 100644
> > --- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> > +++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> > @@ -3,7 +3,17 @@
> >
> >  DCN21 = dcn21_hubp.o dcn21_hubbub.o dcn21_resource.o
> >
> > -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse -mpreferred-stack-boundary=4
> > +ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
> > +       cc_stack_align := -mpreferred-stack-boundary=4
> > +else ifneq ($(call cc-option, -mstack-alignment=16),)
> > +       cc_stack_align := -mstack-alignment=16
> > +endif
> > +
> > +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse $(cc_stack_align)
> > +
> > +ifdef CONFIG_CC_IS_CLANG
> > +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -msse2
> > +endif
> >
> >  AMD_DAL_DCN21 = $(addprefix $(AMDDALPATH)/dc/dcn21/,$(DCN21))
> >
> > --
> > 2.20.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002120136.1777161-5-arnd%40arndb.de.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_MyUp9OkqM%2BMUHZ8BpLEe5afBpAqOwQxDwAWgvVvqbpoQ%40mail.gmail.com.
