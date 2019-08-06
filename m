Return-Path: <clang-built-linux+bncBDPZFQ463EFRBXUUU3VAKGQENFWC5CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id E4675833A6
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 16:10:38 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id i9sf53973516edr.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 07:10:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565100638; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dv7an+3P6z9l6nHHuboawW7TpbXUukTEfKm2ILd0jA+R5zcj6xn3QO4hiS+KK2IiZ/
         ng2bKz9r87RCUb0pRhMu4YhBQYj0JXmQKQhHR1V5jxzqPaSA9wpQgfYBKMc7lo2IGO9E
         wGP64EOgOHItSbXsH/EdRmdsQSBUfnfrUT2PalOLGvgqZc/PCUUurK7ek4sLNNlESOPH
         KO8ZcBXwXDxyiTT/SeBMcQCuLaG50Cp5z8ZUni2OlYRSaVwE2jP6kX01+JDk9llIAGgw
         awD0sHa2eQ73rxhLTeYW083qikxnL60wh73RR1lIUwUx0gMM1Ki+9D8+Nz00KtPaah7k
         2neg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ry3w9tpu4eAuWXDu817CIcaX59IRWVg4NJIkAWfWKWM=;
        b=RtFHB7UL1Q+HYr06U0Xe4ysBMx3sin+moUhWOieOzKg+EkR8/vPysL9efkC6imJ22U
         secPY8fkNEdocW6q1ltZhp2NpuNSKNl4l7jgT0CfdN1hI7Vv4ibeBSwAtUQCBt/OPDeu
         mYUboi4fmFi0w94NscqODXzeF5gkhPe8cLUAFX81016dM+yhx7vB2jVb64iE2Hdw/bUh
         B5xqsiNc4KFvgEkIxenBuhsFRCw/4v1qqcuXgyf/HjeN+AEI22fiLJSAGQ10OODK145i
         RgYdwnxbAfReZqytzHn3qFmU5KcYBQGntdLObed/Rxj6wpGx9Vn79mZRtyqkng+vU2cv
         56Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVmlFjkW;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ry3w9tpu4eAuWXDu817CIcaX59IRWVg4NJIkAWfWKWM=;
        b=HCEGfP4mCu2Q+TuPD/yX8AKnoHdmSlF3Vm6MfOtJ3NNowRtTnR0n/CjexQ/qo8CWlK
         9rYO9jbXjE3QUIZof4bY+A3pzDg/+VQHM1HXMFgLvU1e5aCz4mVAGOhsCwZKl+FYJ1tO
         B77SSfsyMijKg03eVSnVl3xGlJMRxYjCLXAtmpJ5tS5uhSTlhpAv5pWZd9OciLnjyXpE
         dEuBrj484Jcbe6/pb5SD3CCi19FBRufRvejzMrpHjKlWicxoUwgL/1uBrQ0+oyAqY9Vx
         b/KleDTC5WexIzfXczyOXdsC0veUw9s1uCBWbirVKYI6j3vkGzbrWxbq1A1c/ziWj95Q
         Z5Hw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ry3w9tpu4eAuWXDu817CIcaX59IRWVg4NJIkAWfWKWM=;
        b=SqPvDClJQT5+sfSBdPfxxTHVcIuO3xDxY5fgbtsaWTrcr4W+cbdu5965BHeCDbmwgu
         tE6/7NPscRnuBNZnJQOIFIUJ1eMmltU4hYrP3co1gmrH3NOA72yUrTtNi7inVGCoEIfH
         fIXPTKeIIdHeaTMEeyavoPUkOIH22NnUmmfSCaBkDDtGU05ZoXnLz6Zz+VI0bBthsMsv
         sp1MbojVNP7ZaWB5HloC/tE2xFMXTd06xdc2M1ay5D7Xqd6kctJP2B8h4el6YJiBWs6n
         IVGqRz8TddX8Skrz/MOIZd646gGTAOJ4eWaD0OV9HcrxFfCwBXgno6N/BdSjPfWPGJ5Q
         vznw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ry3w9tpu4eAuWXDu817CIcaX59IRWVg4NJIkAWfWKWM=;
        b=koBB8lYpCjzuE5sIhvdENoemocur8QwzMAkq1/MkIINIa1JPOWkINU2h3W0E1pVOkG
         oQW8RSz0isF1ZxzC6bzAu5tg67HLxuDQW4vEv/VlHt/NqbkkxIGWvi5oTzOieKQCqOHx
         XykZHx1R/0KNFuQRFGkzI83KqS7C/7MqnmDjegguPy+mD7YsNLdycrUuWmvo7rswDW9P
         ThIIa65PdGca3WXvXd7O4ksntw73yiEdrdNx0+TS73KpTj2dkdyFx5j1Tp6bxZGUkFHB
         ADGd+6FmRyl3yug8DtVPveJg8SnmlLoRXmVi2Xi/QIreH6gDQ40m/GCL768UI0PZ9tBn
         4zAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVK1FUzmjYApVlED5J/pYQC4NXV1SPX12UWeHYzKkvqWSmghW2I
	yWQD+EXdVe4b0FgzjMzpz8o=
X-Google-Smtp-Source: APXvYqwDL5a9TDwBBZP+e5s1a4TjeflWL9M5cgDXrnjp2TddfquW1AcWAOAzAY+1gB8VukSfVMPo7w==
X-Received: by 2002:a50:a56d:: with SMTP id z42mr4070949edb.241.1565100638647;
        Tue, 06 Aug 2019 07:10:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8052:: with SMTP id x18ls20812941ejw.10.gmail; Tue,
 06 Aug 2019 07:10:38 -0700 (PDT)
X-Received: by 2002:a17:906:32c2:: with SMTP id k2mr3455113ejk.147.1565100638238;
        Tue, 06 Aug 2019 07:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565100638; cv=none;
        d=google.com; s=arc-20160816;
        b=D62MoCTAawlw/n+BdhgSi6r3VpdqRre5nsytbfAzTKnkucf3WxZ6d6jBzh/XXlLNWn
         tfRomkpawPbFtTNIO1T3fkMyrrIAh7rLO+zwxA7md5MnFQGFQzY2Pqk4zFbpQfWOT7t8
         pTItWkpDOqo3qsfhOkQCIjKnzQkk/Yu0YpeoKWGkrC5KjFosk08AYX+ysslPb0CrFbo7
         60iU4aHh5fFAzDqxLgUndXy8osnWIp1Sa6y7pumWwj29G+FI7ppoFcnrYgZcGk1ZiDSK
         Yn3b7wvRoWHXrYTdyADIqFTl0+l3RXwLXs+ozFfDEGzf0g13zQ24WuMTPSZVKXj5mgzP
         L+tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cARuDPvllFn1lWUM9aELb0vIdKd2MGWlXsw/sP4g2S0=;
        b=hGyjfoTHue0aj+fKREsuS4RYIqlk1t7rUGvkY4Z00vog3u5uJNeyzyKPR8ghp+9Y4H
         GHcA89oDkeR6ywaCuzEuy+wUZDx/aghgSDgjayimvNW0ej+6qqH4uiySJCMe6eqFc758
         ZlUd1frjF1VtMsn7BKCTM7CJarj3pomoPwSt/iOKi6Ffta7bStmJiDscSZrJg+hKyeq2
         BwUoQeu+Ioxh+VTgsAeK8HG7tUbTgswrdZzuv+1PmyKP5KW9UVzPiPSFSKc83gmwQcBv
         d8Gvv7j3oIffYAFKb2P3wjTbA3gDg/yqwY6Gbwt1j4w1990aMWgigt1W+n162HorVEFx
         /+0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lVmlFjkW;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id a41si5042946edc.5.2019.08.06.07.10.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 07:10:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id x15so78381627wmj.3
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 07:10:38 -0700 (PDT)
X-Received: by 2002:a1c:9e90:: with SMTP id h138mr5312157wme.67.1565100637820;
 Tue, 06 Aug 2019 07:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190804203713.13724-1-natechancellor@gmail.com> <MN2PR12MB3344B936DC2DBD85443C6AC7E4DA0@MN2PR12MB3344.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3344B936DC2DBD85443C6AC7E4DA0@MN2PR12MB3344.namprd12.prod.outlook.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 6 Aug 2019 10:10:25 -0400
Message-ID: <CADnq5_OWUn3Y2RA68pT-Sw1yRKSY0Eqtz=TAoPOXZ5V-KY5EWA@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/powerplay: Zero initialize some variables
To: "Quan, Evan" <Evan.Quan@amd.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian" <Christian.Koenig@amd.com>, 
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lVmlFjkW;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::344
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

Applied.  Thanks!

Alex

On Sun, Aug 4, 2019 at 9:21 PM Quan, Evan <Evan.Quan@amd.com> wrote:
>
> Thanks Nathan. The patch is reviewed-by: Evan Quan <evan.quan@amd.com>
>
> > -----Original Message-----
> > From: Nathan Chancellor <natechancellor@gmail.com>
> > Sent: Monday, August 05, 2019 4:37 AM
> > To: Quan, Evan <Evan.Quan@amd.com>; Deucher, Alexander
> > <Alexander.Deucher@amd.com>; Koenig, Christian
> > <Christian.Koenig@amd.com>; Zhou, David(ChunMing)
> > <David1.Zhou@amd.com>
> > Cc: amd-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; linux-
> > kernel@vger.kernel.org; clang-built-linux@googlegroups.com; Nathan
> > Chancellor <natechancellor@gmail.com>
> > Subject: [PATCH] drm/amd/powerplay: Zero initialize some variables
> >
> > Clang warns (only Navi warning shown but Arcturus warns as well):
> >
> > drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1534:4: warning:
> > variable 'asic_default_power_limit' is used uninitialized whenever '?:'
> > condition is false [-Wsometimes-uninitialized]
> >                         smu_read_smc_arg(smu, &asic_default_power_limit);
> >                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/gpu/drm/amd/amdgpu/../powerplay/inc/amdgpu_smu.h:588:3:
> > note:
> > expanded from macro 'smu_read_smc_arg'
> >         ((smu)->funcs->read_smc_arg? (smu)->funcs->read_smc_arg((smu),
> > (arg)) : 0)
> >          ^~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1550:30: note:
> > uninitialized use occurs here
> >                 smu->default_power_limit = asic_default_power_limit;
> >                                            ^~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1534:4: note:
> > remove the '?:' if its condition is always true
> >                         smu_read_smc_arg(smu, &asic_default_power_limit);
> >                         ^
> > drivers/gpu/drm/amd/amdgpu/../powerplay/inc/amdgpu_smu.h:588:3:
> > note:
> > expanded from macro 'smu_read_smc_arg'
> >         ((smu)->funcs->read_smc_arg? (smu)->funcs->read_smc_arg((smu),
> > (arg)) : 0)
> >          ^
> > drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1517:35: note:
> > initialize the variable 'asic_default_power_limit' to silence this warning
> >         uint32_t asic_default_power_limit;
> >                                          ^
> >                                           = 0
> > 1 warning generated.
> >
> > As the code is currently written, if read_smc_arg were ever NULL, arg would
> > fail to be initialized but the code would continue executing as normal
> > because the return value would just be zero.
> >
> > There are a few different possible solutions to resolve this class of warnings
> > which have appeared in these drivers before:
> >
> > 1. Assume the function pointer will never be NULL and eliminate the
> >    wrapper macros.
> >
> > 2. Have the wrapper macros initialize arg when the function pointer is
> >    NULL.
> >
> > 3. Have the wrapper macros return an error code instead of 0 when the
> >    function pointer is NULL so that the callsites can properly bail out
> >    before arg can be used.
> >
> > 4. Initialize arg at the top of its function.
> >
> > Number four is the path of least resistance right now as every other change
> > will be driver wide so do that here. I only make the comment now as food for
> > thought.
> >
> > Fixes: b4af964e75c4 ("drm/amd/powerplay: make power limit retrieval as
> > asic specific")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/627
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  drivers/gpu/drm/amd/powerplay/arcturus_ppt.c | 2 +-
> >  drivers/gpu/drm/amd/powerplay/navi10_ppt.c   | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
> > b/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
> > index 215f7173fca8..b92eded7374f 100644
> > --- a/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
> > +++ b/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
> > @@ -1326,7 +1326,7 @@ static int arcturus_get_power_limit(struct
> > smu_context *smu,
> >                                    bool asic_default)
> >  {
> >       PPTable_t *pptable = smu->smu_table.driver_pptable;
> > -     uint32_t asic_default_power_limit;
> > +     uint32_t asic_default_power_limit = 0;
> >       int ret = 0;
> >       int power_src;
> >
> > diff --git a/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
> > b/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
> > index 106352a4fb82..d844bc8411aa 100644
> > --- a/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
> > +++ b/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
> > @@ -1514,7 +1514,7 @@ static int navi10_get_power_limit(struct
> > smu_context *smu,
> >                                    bool asic_default)
> >  {
> >       PPTable_t *pptable = smu->smu_table.driver_pptable;
> > -     uint32_t asic_default_power_limit;
> > +     uint32_t asic_default_power_limit = 0;
> >       int ret = 0;
> >       int power_src;
> >
> > --
> > 2.23.0.rc1
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_OWUn3Y2RA68pT-Sw1yRKSY0Eqtz%3DTAoPOXZ5V-KY5EWA%40mail.gmail.com.
