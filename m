Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBPMJ2PWAKGQESZDGIJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 98239C8D08
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 17:39:42 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id h145sf9739530vke.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 08:39:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570030781; cv=pass;
        d=google.com; s=arc-20160816;
        b=USpXnSTHczBByOvaNz1nVFq0kEWHTn/BroTbwKdV8BqTTEGUbkw524uGYNuDCZCMb0
         ky4VraDR+WN+i09Bqs6zWxZJMKeoKYNjWQz+QtL7RBcKb2anflZPtj+E38eB3nVDEoOW
         qXu1Ux1s82mF45vdQf237uZYFPeHMZZoSukgtBExdwbjO+iKM/zzWujeS5glMuzhfzMt
         8cp7/upLA4BQNOAR2kfDjiu6GM6XVQBQe+buRYNmd5ALAkWbc/rRNwSjOOEy8uTQLIik
         Iw2W4CI0N3wzosgS6QKxsb4LSXQ52N+YbZci01hCiW3beqzYm4EBfjKaW+ZALn8EZkiT
         yCQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=tsrwud1ohfRnOZ4T5qxLIkAG33HxLJ0p2LHOdxK5STo=;
        b=ZuB82rJOvtZufchHqp7w1VVZ9PuKcGng84bpwLibR4/mm7gSEBEE/DfiSUzO/rfQpI
         pV/MTeMhd08EwwA2U5jiL4Iui51l4g69Ie5ZzZkPuR8VN3r0jxitQpGNT+K9merpMbFh
         ahgFbdAJ/LZnpmUTnlAMcfxR6MbMqhT8frZMDkkYRrCX6CJbYaUPqIwgw6SmhiqNih8q
         s64/xnkhh192DH3AXHAQEhGYQUyTzEiRcMvTOH33Wq7MLYRilE9ALUkMJkx5IbJn5UWl
         7OEGwDEtbCmwSk5ZuCnrakqNk1GvY9SBnM4mlZtmSZPy1l/V3409gLeZg3S/Mz+uybHb
         ubdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tsrwud1ohfRnOZ4T5qxLIkAG33HxLJ0p2LHOdxK5STo=;
        b=nFrfKYouKLQKUvJrL2dB3LTo2PxCYnj3GP4iwYLolCWwcTIdZPAugwGwQEux3gXkRs
         dvMxhPOwq242wkM9aCzQWhvuwNfRPFIdBaeNQMCqOLP0wWfYrr0vUM8T01daYTFRm/2s
         WZYnZCKpSV0O3zdinb9MZqVbTXE85jCMYIIjdeX1EwukuxMsO36Pu/wdQreALeKayka9
         mDEht3pf8urCBXDiovxBlnP0eoXNDUSBx16FwSCMXy6UB1eB/yYDrb06Gc0BC9svOAAZ
         tTEH1IuV3xKnSBmeZkJiuI54WQeRo4vsEhEVZE7EfWjr9qQbY3952zmmJ3+4PfrY3WCT
         PZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tsrwud1ohfRnOZ4T5qxLIkAG33HxLJ0p2LHOdxK5STo=;
        b=fc7nYEuj6U8KsSOFErnXVtxe4/3ikRPobp1CrlOXV09aB73E4MLONY/RCk0LrNUV15
         cvoYoW3cP6DaYL7iGC17g282UoLE6NHa0pLh2xuuO2hZgrD9YF874uYlCSagVh7HAEux
         dE5IQQBOWI3W0/2Ni9FuDZju9Zo31+J0vf+PyQq/aB8peihHN2DUPA+WABFvUy4nWFYY
         G3TnIUr58fATenypdg5CuCmxl+oi76t3WWC3KhOitrRd7HQo625tzkFJaxKoCbZT9V5g
         kAihHh1tXzfc/OYYPW8JlJQG1WK9Bze/PjppF6Uw1VteWjIvI8iYtuggMPKM1IEdqeFR
         qlHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWYPcmtPZr3XyRJhJHi3H4OCtzKcCldnEwOIb1X8RWiQNInsRjn
	P14h2EFYEgXhcegn3rcEWHc=
X-Google-Smtp-Source: APXvYqwqfgds/NBc2kIrE5yywEp+4kj6oMqkf0nxAbqBbxU+h5UNhMQ7+e6uv/gUGwtpHm8Uk3xxew==
X-Received: by 2002:ab0:618f:: with SMTP id h15mr1898711uan.17.1570030781558;
        Wed, 02 Oct 2019 08:39:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e891:: with SMTP id x17ls289434vsn.13.gmail; Wed, 02 Oct
 2019 08:39:41 -0700 (PDT)
X-Received: by 2002:a67:ad12:: with SMTP id t18mr2264359vsl.45.1570030781245;
        Wed, 02 Oct 2019 08:39:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570030781; cv=none;
        d=google.com; s=arc-20160816;
        b=bQREUQMy65/S9EKw1Szy0wK05Lbi8Qdd8djInvk4geCiZ2kYAfrydEX0vcoc3sScbD
         /BfjfM86HrGNjhMRMJI2eDKq7/hs74AxZmQEmmK7AzVrKv36F7NRdxzfF97aUf4dlap/
         IHbJb7odGWkG+RC/FRYPU+nDhaPresR1aKESlr+KhuVzMDhtG4J4XCmOCPwBw4e3CzuV
         cV+B6xM/bC36OaC77z0WEHjtpwzFhDJ0z2NxCEpWWEwg4upHODU236/qEo+hFGoEG5u9
         DuOsDnP3gbbJ7dMvt0fZlui5EJH8BXSh9Icz0N/cGrxGmCOw5+fTKf4k+3scnUfL+2DX
         tu7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=N9xgxObyHlo32PssmGV4PbxM2Gv46DJwY2CihzT//HU=;
        b=K5Ro4pO13RC6PPgyUmzxgeidKLDDSD7jDVUoRwXOtM45St63fVfOVCsJe4p4zW/eWx
         y8Rxs1sRjBl59PgJl955F4cDcA+ldO8FutKySYwoNmNdfvp7aAg9Dq2SFYJvaes7lrAe
         3EXnjqEvlS/WIzLWOfEbuFLD1uF9QYpAkfJR9e6Zt+uxT01vSCTJAobksG6g+rHqv4eU
         Nwd9157aVAIW9YSgaE8Od5MgbHDapzXeWYBualyY0GWxUec2lc4g5eeYiQGp+Lj9qI0J
         xcODIw7IazCiNUxBifCPMBZibbbzSdxMs6KF3gavdpBrDiOt043i/RwpqO3ybHxMbrn8
         eohQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id u206si221446vke.2.2019.10.02.08.39.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 08:39:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id y189so15469196qkc.3
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 08:39:41 -0700 (PDT)
X-Received: by 2002:ae9:f503:: with SMTP id o3mr4266633qkg.3.1570030780522;
 Wed, 02 Oct 2019 08:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de> <20191002120136.1777161-5-arnd@arndb.de>
 <CADnq5_PkTwTBbQY9JatZD2_sWjdU5_hK7V2GLfviEvMh_QB12Q@mail.gmail.com>
 <CAK8P3a0KMT437okhobg=Vzi5LRDgUO7L-x35LczBGXE2jYLg2A@mail.gmail.com> <CADnq5_PWWndBomBOXTYgmFqo+U8f8d8+OdJ5Ym3+a2mgO5=E0A@mail.gmail.com>
In-Reply-To: <CADnq5_PWWndBomBOXTYgmFqo+U8f8d8+OdJ5Ym3+a2mgO5=E0A@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 2 Oct 2019 17:39:24 +0200
Message-ID: <CAK8P3a05ZSWcw=XUZrLyjMLY7wCHLKhpe+MF9p5P3URWpAcj+A@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/amd/display: fix dcn21 Makefile for clang
To: Alex Deucher <alexdeucher@gmail.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Wed, Oct 2, 2019 at 5:12 PM Alex Deucher <alexdeucher@gmail.com> wrote:
> On Wed, Oct 2, 2019 at 10:51 AM Arnd Bergmann <arnd@arndb.de> wrote:

> >
> > Nothing should really change with regards to the -msse flag here, only
> > the stack alignment flag changed. Maybe there was some other change
> > in your Makefile that conflicts with my my patch?
>
> This patch on top of yours seems to fix it and aligns better with the
> other Makefiles:
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> index ef673bffc241..e71f3ee76cd1 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> @@ -9,10 +9,10 @@ else ifneq ($(call cc-option, -mstack-alignment=16),)
>         cc_stack_align := -mstack-alignment=16
>  endif
>
> -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse
> $(cc_stack_align)
> +CFLAGS_dcn21_resource.o := -mhard-float -msse $(cc_stack_align)
>
>  ifdef CONFIG_CC_IS_CLANG
> -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -msse2
> +CFLAGS_dcn21_resource.o += -msse2
>  endif

Ok, so there is clearly a global change that went into your tree, or
is missing from it:

I see that as of linux-5.4-rc1, I have commit 54b8ae66ae1a ("kbuild: change
 *FLAGS_<basetarget>.o to take the path relative to $(obj)"), which changed
all these path names to include the AMDDALPATH.

It seems you are either on an older kernel that does not yet have this,
or you have applied another patch that reverts it.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a05ZSWcw%3DXUZrLyjMLY7wCHLKhpe%2BMF9p5P3URWpAcj%2BA%40mail.gmail.com.
