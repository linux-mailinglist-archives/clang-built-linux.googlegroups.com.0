Return-Path: <clang-built-linux+bncBDPZFQ463EFRB2GHZPZQKGQEL5ZNJLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D4118AB09
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 04:15:52 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id x7sf417517lff.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 20:15:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584587752; cv=pass;
        d=google.com; s=arc-20160816;
        b=vbIs/HezlX2e2HShcgjQawprpp2MIS6/NPy7diGTNu3vAj8k1NYK54Lb7fuAedeSCW
         soJuiggnXQw6HmneHzFmZYV83+aidhs2tu57HK8cP1qDYr3UnjfbLT+vSfzhOqfeqq4S
         3/HLKGdHlu8HN/djNO691MdVQWKpdBEVJhEQPAHSmmcv2ohGtdpc+9RfGPEsAUoLKRTD
         j4w6cQfQgQ2sJHfzcA9kO4NsNiVIW6qevxZA86OGQnEU0QdcQGKAez8O/kTRAj/S5Gl7
         nconmm2dUrA65J3IJcg+ANhYHov6Nicy5luZuH58bt7Cgq1Dz9sA5bziN6Isa2c11DtP
         7nTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=nLMNUqdnJIx/7TgtF+YOKNmihCNA/mrKtAweSOGT/d4=;
        b=gBil+HSTuyxwNhe2YaaxnmP+tgvBUxAf7DowYoRUrKHAljsgfez95jt+2XxVlhVXUy
         7/sMAG6EsT9ugG96zulMDAA0dNAp6qQE9UqVKxtB9tsuh7ibyX8NQNS4lieT/CxGAEF8
         tcMvE1HzxT5X06UBhsdrvRMx2p0OLm1OQYMQGQEuQ4iCMaIlttGuFSZSaZRJDHLwUEqj
         jvRHODfgWj5xyaNzBXCvYgLnzA86u1RYwkbrA4vR4sP6JvLW2MphwINZtwKsFzmbgrYl
         +5q2Loe44os7H7RtgIU1NYO55LSux9mFqyTe6oUmepZcQ86kuA5kThn1x0PYCAsZ3rom
         kzJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=juAR90r9;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLMNUqdnJIx/7TgtF+YOKNmihCNA/mrKtAweSOGT/d4=;
        b=NSdDdTG6SlrTU4BI0rHN2Hx13m5+G5q4gSnXF435SbqCk7pU2fIwMfnrXg1/odgvSQ
         FeM7/COr/GsZ2KAS3gZqVBrYwjFiS9M3rI7J5+v+2hjmL/La1eH3LjvkxK12XiCYjpbM
         ayZ+E6kpeX+MIzBFt/YBcakP7NJ63uINubScbeXssg7hXJjp6Mg/jAMRqfcpOATHz0d2
         pun6iyynjvMP/t/BrZ8dS4ynpETSr5DHUGPCay5hXZLe9GjDuwoZmq56WILhaAMoTCny
         Uo8wM7ajGYq44lP2b7bJEDPgusKBOu2C1p89aFZwpN10ZuI7HrorvHYWkS2ghZQuaq7a
         em5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLMNUqdnJIx/7TgtF+YOKNmihCNA/mrKtAweSOGT/d4=;
        b=YrYIh7hFqfkKnrehja52NUZwHv5NVCV+ny2bbZUpPqB8PR32gT1sD/n4CT6G99Q9kT
         pK4QnzAlh5tkkVbOlKPak4rXDIaO0y11DyQpQNpgWz2eMaB9xx+IFL+G5o4FupbSki06
         kB1e90Eqbh6lRoDycn2rAT0ca+Smez8S4kwp8v+mBgibpvMpjBGy3LQ6AdK6ZDbPqo5b
         HEVnrtA8UYX4wHZBTIwlg1r0E2FmzlIwds6vsEA3KbVRTAhtRqO/FWdIK5VdyafWZ+oF
         PiRAg/qOx0WHBYifolBi0wUZTpKa2lnrTpjbzJ5azNXmNUxwUc50xFodPDPbEhfDiUX8
         uCIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLMNUqdnJIx/7TgtF+YOKNmihCNA/mrKtAweSOGT/d4=;
        b=YZ2vfPyWA46bwq+uzTTc+uf5wPHsdNXTjIhSTVRzhwEHJycRorp3+AXUdfkFOQz1P/
         hPWti01FkARABO9JZUa+EAWCJFksdVYBTo6gdoa+GbmgB6qBUXmn3aGUMjfjayVcUv9S
         fxobCB9As398fvPjDjsPgnckGCki5g06kV1bgMCeYZ+NguhwTvuPKD9iO3DYTSa0xW5G
         DJmBSp57a26dBJADNx1Q34jOC4TYzrEJe2SDj0sULPGO2ZGOSo3IyaTHbLno00J0KVE4
         bZECETvffGBLSxeG0K0mAjuJzr3TuI4MnRFBejC/InTWNWa/tJAiSG+/fmTv0/tmiQwb
         6WKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2EQurHJJXbKF2Li26i9CLsZafktBDdPw5u8QMH186kWcgxlJ1E
	VIhB/O4BKBD0sE/dpSekaTk=
X-Google-Smtp-Source: ADFU+vs40qR5uYdyMLgygMxB6IK/ntl/SF8eNb2vwG6GzTFvh/z+n5yFXjKilh2Fzk1SuxcR8jO0Dw==
X-Received: by 2002:a19:6e0f:: with SMTP id j15mr752141lfc.76.1584587752180;
        Wed, 18 Mar 2020 20:15:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8541:: with SMTP id u1ls183261ljj.10.gmail; Wed, 18 Mar
 2020 20:15:51 -0700 (PDT)
X-Received: by 2002:a05:651c:112c:: with SMTP id e12mr718111ljo.7.1584587751621;
        Wed, 18 Mar 2020 20:15:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584587751; cv=none;
        d=google.com; s=arc-20160816;
        b=HnCSjxgn6TinaZliunlvRR8cf9yc2Q3KKP7E4mbgFfaaHH/KP5m9LuQLlg27fC3Z+D
         UhjRBrOKA014144AthnTiIEdlzjrR7EMyOw5zunKx5nrzG7fLxwFYuhvh/O7IjUtVzKp
         A1/qxVfcusAfhxpfR9EuOjKhYI9QEkTlrFR9ir5oizyr+SXNvt+ctyfJfYIInOanVfBi
         hp1YW9AWpsDav7lwx4TnRRI024a2IHFc6b98gvst+96b9zsPQV7/YXp2Krohy56w7VnL
         msBXFIuhaHkunyZKr2cGUGeotfUEsTXjbdw0mY7ApoxdiUMBhdRI45hGeAByOlBcHTV5
         d9rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qXI23a1IwY3ie8JXqjTRuDBwO8bkem8ij+8i6dgXZmY=;
        b=e/ac7iOI1z6i4m+fgLvLJfrrWC3fc7HhGP+ZuJIsODJELj0MnRpulgUNdLffKBH1BH
         BwrsdaeKJlOFuESM3+JO1J0ubcSuglbJWu+8Z23+MRVveOEv7KsTM7P7mmNTLZ3X3sMt
         XJ69t3Xcm3256fKD6LFUNLNXtfvH3rKTZEzlUeT1qIGRTkyI1gzsUVYGSGyOAR4FgkMw
         5/lQo0GzrulsfIFt9X3cmMfJBuHN8n/pQSBkJ9pOyYU7gRdbgibxEtgnJvcdbbsSNGXx
         EWavWpUSPFawwlOMaV5c4d8cO3M5yBamTYH1Xsh/M0GzLh6kZWMqCJURgn3XTHbmI6TE
         Y2rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=juAR90r9;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d12si40061lfi.2.2020.03.18.20.15.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 20:15:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id b2so886309wrj.10
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 20:15:51 -0700 (PDT)
X-Received: by 2002:a05:6000:111:: with SMTP id o17mr1210855wrx.111.1584587751002;
 Wed, 18 Mar 2020 20:15:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200318002500.52471-1-natechancellor@gmail.com>
 <20200318210408.4113-1-natechancellor@gmail.com> <CAKwvOdmjzemFW9jF-CW1RhLJJbMvFO_NrPUeyi=rdLNVZURsfw@mail.gmail.com>
In-Reply-To: <CAKwvOdmjzemFW9jF-CW1RhLJJbMvFO_NrPUeyi=rdLNVZURsfw@mail.gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 18 Mar 2020 23:15:40 -0400
Message-ID: <CADnq5_NjjorZhuAx+4gCW=LLGGvRhYqVKXUhAcXriehN3_y-UQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/amdgpu: Remove unnecessary variable shadow in gfx_v9_0_rlcg_wreg
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, "David (ChunMing) Zhou" <David1.Zhou@amd.com>, 
	LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, Alex Deucher <alexander.deucher@amd.com>, 
	Joe Perches <joe@perches.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=juAR90r9;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::442
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

On Wed, Mar 18, 2020 at 5:08 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Mar 18, 2020 at 2:05 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > clang warns:
> >
> > drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shadow'
> > is used uninitialized whenever 'if' condition is
> > false [-Wsometimes-uninitialized]
> >         if (offset == grbm_cntl || offset == grbm_idx)
> >             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:757:6: note: uninitialized use
> > occurs here
> >         if (shadow) {
> >             ^~~~~~
> > drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:2: note: remove the 'if' if
> > its condition is always true
> >         if (offset == grbm_cntl || offset == grbm_idx)
> >         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the
> > variable 'shadow' to silence this warning
> >         bool shadow;
> >                    ^
> >                     = 0
> > 1 warning generated.
> >
> > shadow is only assigned in one condition and used as the condition for
> > another if statement; combine the two if statements and remove shadow
> > to make the code cleaner and resolve this warning.
> >
> > Fixes: 2e0cc4d48b91 ("drm/amdgpu: revise RLCG access path")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/936
> > Suggested-by: Joe Perches <joe@perches.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied.  thanks!

Alex

> > ---
> >
> > v1 -> v2:
> >
> > * Remove shadow altogether, as suggested by Joe Perches.
> > * Add Nick's Reviewed-by, as I assume it still stands.
>
> yep, thanks
>
> >
> >  drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c | 6 +-----
> >  1 file changed, 1 insertion(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> > index 7bc2486167e7..496b9edca3c3 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> > @@ -735,7 +735,6 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
> >         static void *spare_int;
> >         static uint32_t grbm_cntl;
> >         static uint32_t grbm_idx;
> > -       bool shadow;
> >
> >         scratch_reg0 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG0_BASE_IDX] + mmSCRATCH_REG0)*4;
> >         scratch_reg1 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG1_BASE_IDX] + mmSCRATCH_REG1)*4;
> > @@ -751,10 +750,7 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
> >                 return;
> >         }
> >
> > -       if (offset == grbm_cntl || offset == grbm_idx)
> > -               shadow = true;
> > -
> > -       if (shadow) {
> > +       if (offset == grbm_cntl || offset == grbm_idx) {
> >                 if (offset  == grbm_cntl)
> >                         writel(v, scratch_reg2);
> >                 else if (offset == grbm_idx)
> > --
> > 2.26.0.rc1
> >
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_NjjorZhuAx%2B4gCW%3DLLGGvRhYqVKXUhAcXriehN3_y-UQ%40mail.gmail.com.
