Return-Path: <clang-built-linux+bncBDPZFQ463EFRBW5Q43WQKGQELKBFUEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA5AE9D07
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 15:04:12 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id p14sf657188ljh.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 07:04:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572444252; cv=pass;
        d=google.com; s=arc-20160816;
        b=zSdasX9UBBOwdhiH+knMAh+beebw3wC8OxQCVESRvosGryb4iWK4FqnTa0PS3E+Ctu
         OjpWuhF3lb25FEHKIlqykn9l7U0vpvWGK2n1wySRPG9qFoUAaXSwewzh3fUwcJFYiDZ3
         5ayCROQA9OHFutSsiayLsct2rYiwzkE6FYe/dFw1jwx1TcZGAZYtrE3SzlzNYtSvgz4Z
         hinFxogOtDYsJEMo956HcY74RX7+YLVEYthQwN0DzNyIvzfZVqeDvvi2C+kQ40kzakcY
         r6A7lNFQAY10I64GYRMT3xKfgL6ALLRQJSM4hsFZwOWq1KC8nmRZySEdYVlZhAT+D8vg
         Y6ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0Q34sxYzEvaKLgXtsInMw+bSlDhMK5hBkEm/lnKu6FM=;
        b=EzMb0CqDnrB6Y6gEPB9e5SoYTt5STKOVS6Mk+hrHSI9J1E+XwEWv78VD7aG0h8ILlE
         PnqlZdq6Smw1JhALfAvqZ5CxsMXi4Oqi/3cukF1EvZpykhL3b8hc/06F2jzNjH9xugOg
         /0mfxixYEno7hRd7Jh9zwdu0jwJIHkrELOrTALo1tkleCOsH3qfx8Rdj3sX1RiksB+Fi
         XIXqYF8FrR8pUc292Q5L21pVimabhqzoXf4IXO2atmlgflZYTlp7mrNzdz7lRAzl7f9m
         /pWEklkgQjf+8IkP3/sT5R0af3Ugkvrd8BLVT9xvdsbXbVAxnzvr8HVOxRIbx4PLdILe
         WkPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XdAUuouV;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Q34sxYzEvaKLgXtsInMw+bSlDhMK5hBkEm/lnKu6FM=;
        b=CfnNXUuYzE5LpLyGGkQhOdQ39yP/guDDjWQb/2Uanx+RZTJuYB94J/jxFe3nRie8r2
         iaMGmzFYu072yLic9r/PdXAdp60fXWTxqR9UTm3dj518Ikm8qSCz/7Y3b1EYq+FQtD/J
         LbTko8UW4N31IIEJpJLeqzMpL76ThMTGUz48zaAJ3ama3i68Lk2Duy6vrUT8jxphYuOc
         O3dPVYinjhxTCgO+EUh3UHrqD/POi5KO+pyrwlwxDsp1F5Litalgyk3nkQZzgCsH6ja9
         T0psndL824FgL5+kPiqrJt3vxoXPaP58EphzBI1svuncH5pAuHXkCRYwCexP3LcQX9iy
         HCMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Q34sxYzEvaKLgXtsInMw+bSlDhMK5hBkEm/lnKu6FM=;
        b=XWaYCFeWbpwL3lE57IxhN/rUVjIeGc+la37JXDhe2Y8pH/SubPILk1yInDY/gK0Zm5
         2K1n8XVrMi8Cr25Q0tDYNQux1gTzPWUGYVcR80eeqVsp31kWjXD2NnRYchwgf8o8xMfQ
         2zbbTq5DeZwyhyypbvekpx+g2u7+5AXbw7axnUSWMVe8+VWit3JynJhegpYpPvhzxlBH
         pbvGOgPcu/HLwAs2R0r7CgVPWDRq6ED5/BqsNSLG1IONd/1utsTpGHaDFVnAAIH5hlrQ
         qPuduV/uj0IOjESPO7Rbpjvw8S8ONvmCq75s60KKi78+ST7JP5umQo3VhrznkXaLAutV
         slSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Q34sxYzEvaKLgXtsInMw+bSlDhMK5hBkEm/lnKu6FM=;
        b=JoN6lT4wNn/K1Ef3mMnY28xN9ZguaQfXtJYDnT7htn2PYUUVmc1j+6p/Z7pKAyt5QG
         Sfve/FyoGaJ/QZmn1fkIzQqeNfKxmqrMOc+zgmj98Pa+JgXYX3Dwrb7yupET++sa/XED
         MrPMlGKmBP3ehFkTERs4UYinWXWR9sJdQd5sB70Anm1VwV8BsvGe6gvejPRUmaRc20Qh
         r27CvN36UR4lrYBrcDpOPKAGmWSkBNaWy3W0fj9LL3L4E19RsBxrDwKkei63jZJkJq4t
         7QpNmMjX02Y6kqWumPVZ0Vo6cNstL1k5+3YnXl28G7xEKZLTQ5BeJS33DtQYiyCB21/I
         HBAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+UXY+mmPZxNYv2EY97u5UPk/SR/5bauod+aVI4+zRUBLoxxAw
	VKTjUzvb9WztQ1KWcljTRJA=
X-Google-Smtp-Source: APXvYqznqcxv681ArGwq29Jy/NHwl/+8jJveIPhC/EmxxKTEp6KYL5JDkMCayERcuMUq8SpExy1Juw==
X-Received: by 2002:a2e:b044:: with SMTP id d4mr6996164ljl.102.1572444251980;
        Wed, 30 Oct 2019 07:04:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9c53:: with SMTP id t19ls1286644ljj.12.gmail; Wed, 30
 Oct 2019 07:04:11 -0700 (PDT)
X-Received: by 2002:a05:651c:10e:: with SMTP id a14mr6753616ljb.177.1572444251419;
        Wed, 30 Oct 2019 07:04:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572444251; cv=none;
        d=google.com; s=arc-20160816;
        b=JCtM6M4AUTf8s1ROBpvb+HfLcj6G/hPsoC6w/Z5TOx9Os8SeayV52ScTIzZMFDT1T8
         Tm3N+v5BKCadKzNN9GYujA1pvX5NC7G6GNB784GMNLwaoK1MqxOFjSm2x1QTQh98uCro
         DirihsnQtJBHWCT1T0tmJ+3PuqgmTvqYbeWGMxVqpNZuWQaK87wevCkB+79N++UQt0LI
         3HRaPu7pFJ0E12PK6rqCCI03T1UJrc3DyxNhu+C5V7I0R4GXmsrX2M5UCB1AWUe7TuMn
         RmT0WP9KZptmtESjG4ECv33riEVg7AXvKsa0lFsH2ePKCCXlw+AmjC5NJpf8Fucvw7/H
         7ltA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0aCQjH8ptc0xQjGtBTJNWD3Vb7W7u0ebnKJvX0R/Yz4=;
        b=qslzpaQj5znjHremG3nMOLy3OZZHnV4k6e3iRKTV5WxyXECAwO7Cx0jonW2AwNnAe8
         PWCGhqmH6vaT2yTOos7s2qQdBmS8/0fXG27MBmE7B3NqqNWfUnzrDZeVsO686pBI8VKJ
         ggRNRNB5w95eUJWizAg8fUCoD16OF7fh2fTB04l8Z3COBs9vOtVj0yI4nq2MOSwtILHj
         l0x3/hE1I78HtfIfBCmGEZMyEZ7wZN/Xe5Nzuy0o2e1YjjlXTP9fBQDq4e72ZIxQzg8g
         Io9VxStcsDtqE+dzd+drQoaIpT90zfXr+7Xk0CO0eiTpWuxOxNXPHt+vxUApKlGMq9QB
         L8YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XdAUuouV;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s4si168534ljg.1.2019.10.30.07.04.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 07:04:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id a11so2443048wra.6
        for <clang-built-linux@googlegroups.com>; Wed, 30 Oct 2019 07:04:11 -0700 (PDT)
X-Received: by 2002:adf:fb0b:: with SMTP id c11mr72834wrr.50.1572444250709;
 Wed, 30 Oct 2019 07:04:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191030060411.21168-1-natechancellor@gmail.com> <b8a9f49e-b788-82b8-ead3-0ae6fba7e8fa@amd.com>
In-Reply-To: <b8a9f49e-b788-82b8-ead3-0ae6fba7e8fa@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 30 Oct 2019 10:03:59 -0400
Message-ID: <CADnq5_Na9Lyb_9z7DY27o8SWkPQNi6pNbU1qXd0R7W6_Qa9Xtg@mail.gmail.com>
Subject: Re: [PATCH -next] drm/amd/display: Add a conversion function for
 transmitter and phy_id enums
To: "Kazlauskas, Nicholas" <Nicholas.Kazlauskas@amd.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, "Wentland, Harry" <Harry.Wentland@amd.com>, 
	"Li, Sun peng (Leo)" <Sunpeng.Li@amd.com>, "Deucher, Alexander" <Alexander.Deucher@amd.com>, 
	"Koenig, Christian" <Christian.Koenig@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Li, Roman" <Roman.Li@amd.com>, 
	"amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XdAUuouV;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443
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

On Wed, Oct 30, 2019 at 8:33 AM Kazlauskas, Nicholas
<Nicholas.Kazlauskas@amd.com> wrote:
>
> On 2019-10-30 2:04 a.m., Nathan Chancellor wrote:
> > Clang warns:
> >
> > ../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link.c:2520:42:
> > error: implicit conversion from enumeration type 'enum transmitter' to
> > different enumeration type 'enum physical_phy_id'
> > [-Werror,-Wenum-conversion]
> >          psr_context->smuPhyId = link->link_enc->transmitter;
> >                                ~ ~~~~~~~~~~~~~~~~^~~~~~~~~~~
> > 1 error generated.
> >
> > As the comment above this assignment states, this is intentional. To
> > match previous warnings of this nature, add a conversion function that
> > explicitly converts between the enums and warns when there is a
> > mismatch.
> >
> > See commit 828cfa29093f ("drm/amdgpu: Fix amdgpu ras to ta enums
> > conversion") and commit d9ec5cfd5a2e ("drm/amd/display: Use switch table
> > for dc_to_smu_clock_type") for previous examples of this.
> >
> > Fixes: e0d08a40a63b ("drm/amd/display: Add debugfs entry for reading psr state")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/758
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Reviewed-by: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
>
> With the small nitpick that maybe the default case should be
> PHYLD_UNKNOWN, but well get the warning if that happens anyway.
>

Applied with that change.

Thanks!

Alex

> Nicholas Kazlauskas
>
> > ---
> >   drivers/gpu/drm/amd/display/dc/core/dc_link.c | 38 ++++++++++++++++++-
> >   1 file changed, 37 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link.c b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> > index 7b18087be585..38dfe460e13b 100644
> > --- a/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> > +++ b/drivers/gpu/drm/amd/display/dc/core/dc_link.c
> > @@ -2447,6 +2447,41 @@ bool dc_link_get_psr_state(const struct dc_link *link, uint32_t *psr_state)
> >       return true;
> >   }
> >
> > +static inline enum physical_phy_id
> > +transmitter_to_phy_id(enum transmitter transmitter_value)
> > +{
> > +     switch (transmitter_value) {
> > +     case TRANSMITTER_UNIPHY_A:
> > +             return PHYLD_0;
> > +     case TRANSMITTER_UNIPHY_B:
> > +             return PHYLD_1;
> > +     case TRANSMITTER_UNIPHY_C:
> > +             return PHYLD_2;
> > +     case TRANSMITTER_UNIPHY_D:
> > +             return PHYLD_3;
> > +     case TRANSMITTER_UNIPHY_E:
> > +             return PHYLD_4;
> > +     case TRANSMITTER_UNIPHY_F:
> > +             return PHYLD_5;
> > +     case TRANSMITTER_NUTMEG_CRT:
> > +             return PHYLD_6;
> > +     case TRANSMITTER_TRAVIS_CRT:
> > +             return PHYLD_7;
> > +     case TRANSMITTER_TRAVIS_LCD:
> > +             return PHYLD_8;
> > +     case TRANSMITTER_UNIPHY_G:
> > +             return PHYLD_9;
> > +     case TRANSMITTER_COUNT:
> > +             return PHYLD_COUNT;
> > +     case TRANSMITTER_UNKNOWN:
> > +             return PHYLD_UNKNOWN;
> > +     default:
> > +             WARN_ONCE(1, "Unknown transmitter value %d\n",
> > +                       transmitter_value);
> > +             return PHYLD_0;
> > +     }
> > +}
> > +
> >   bool dc_link_setup_psr(struct dc_link *link,
> >               const struct dc_stream_state *stream, struct psr_config *psr_config,
> >               struct psr_context *psr_context)
> > @@ -2517,7 +2552,8 @@ bool dc_link_setup_psr(struct dc_link *link,
> >       /* Hardcoded for now.  Can be Pcie or Uniphy (or Unknown)*/
> >       psr_context->phyType = PHY_TYPE_UNIPHY;
> >       /*PhyId is associated with the transmitter id*/
> > -     psr_context->smuPhyId = link->link_enc->transmitter;
> > +     psr_context->smuPhyId =
> > +             transmitter_to_phy_id(link->link_enc->transmitter);
> >
> >       psr_context->crtcTimingVerticalTotal = stream->timing.v_total;
> >       psr_context->vsyncRateHz = div64_u64(div64_u64((stream->
> >
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_Na9Lyb_9z7DY27o8SWkPQNi6pNbU1qXd0R7W6_Qa9Xtg%40mail.gmail.com.
