Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXURY32QKGQEO6BQAQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id A21DF1C5BAF
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:40:15 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id bg6sf3047702pjb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:40:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588693214; cv=pass;
        d=google.com; s=arc-20160816;
        b=AO2EQHIEDL+JIrGVNIxrBU3SURv+PZF1aGLwx5Hf1clyY0TH7l7T84vjLWVMRS0Ra+
         VAqkKXqgoO1/J3V1+sNVGkm2DyTHPwZ7BOVtThqqvVtkxufuuQEeuynSp+GLsrZZHW2H
         W9uPv2DAH3KiEyISe2mubWJ9hDbhjRSEE5Y+goDCwlyFkYWxUB3/x6EjTPBiKlRCBQV1
         OudemwfRHCWMJlWx2YVG6+EcnoxDT7Rg4IH4SMFk+spG2S+TcuQQMc0EQVGCWlAf6phZ
         c+Vtim5LuTx5sovCxVwqpDf8Qm0531l9i5jUas3MgYYyZUtdKgXE3nGVLG/94i85l880
         L91g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0Km014h4+vTgn/jKEP8jj1b14V+hCwnMPB0gpbrTuzY=;
        b=MVS/wC1fisdS8PGsVnIxuavPsD+7mseZdNU+lyGYtX2e76FnxcMNniaCbd/2YF5r4J
         06c6cLON8QrS31lkhlIj64nmdq+piUicpg4IbHSnsnT4AljodJIKbGd+zaAHLaAzu/Dg
         EoI6/Ax6rmIHiKqdV9tU1ZtHsVejLJQbGIlDdnbtvvg6OfmWyH3hmM22VW11iEls6vuc
         bcTi7jbJ16SjAmA5Ao2DT2HRZhIaDZ4E3e2seRDMdaiR8ufJwXF289zBvq5qfi4Wmxpr
         X5r6kue0xmasOlPL/BDeUT4UZeBwtuxs8FGEPlV41X9MesFyM6YBOMwgZNrCKaNkoAgW
         SBdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N+27bzh+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0Km014h4+vTgn/jKEP8jj1b14V+hCwnMPB0gpbrTuzY=;
        b=bBxw+xifDMhl34AtgJxuWyRMQSCRlHEeabu3J7s2nXxPSvAwqpBKca1DIxaxxupglD
         6Kt3xfIL7Ug65xqJk1vDlokbZj9ksjlmyBGxBFtIPHS/uCxsqiFoI5To/f9NqkoKvCy5
         d2/UoN4owMQtdAEeK48S07LI15kWZyKJ6dIZgX1TYQ3+1L0TxwK/9KF/fu/tIrlyfgqx
         YrBIDMidKN4TF9xZ1v6HbVT/xcBpLabxVWWQgecpjNyrcVWahWwiDBnIPRFRGj2uncj8
         st62eKq3buzAUOOUOOTvR/t6ver/2YrsJ8jae3yHRtO+1uAMsp65H9KeHqsoKf9odKsm
         rumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0Km014h4+vTgn/jKEP8jj1b14V+hCwnMPB0gpbrTuzY=;
        b=kvkluNILbB03clpYofcLyJG70EU7dA4evEDo6fc2DSH0ic6oG0OhQ2shmsVVFDfNQt
         3qBGzESdAcOmtKwPKIEJdGCHIylCiYbj0rVlrXQR3gS1JBcOep0uZHGrL4/LUQ3NWaYi
         xMFb80M+USgO+INd4hB8XBGuJM+wYs8FZZTIdY0LWoYbpnoiOlUSjemjcO2FDqKF5yQZ
         wqx1EKai8vlapp2BDp0Yhg7nXOvEqw2owg6iJvA7x+Sv1a1z3MKx0rRkfefvHFEVC+p7
         GH51LvsN5T5KLYYyQtABvI0T5Lf+aLOzW+i/WYbszaBOPhnH5aWD4AaWUONAAeT0mHKk
         dqIA==
X-Gm-Message-State: AGi0PuZKiBe3J9852Z3IDyeebjHks/Vv63jTNHdcGHdkVpj0SD2yP9wM
	V7zWxYP/4+zSpdlWEjCN2cE=
X-Google-Smtp-Source: APiQypLfDfAtKnSSrMy81uwf3+36dsVU3EdQE+cR3o2Jz+8RocbkFnihL02IVxpO/NXjituwLHMZng==
X-Received: by 2002:a17:902:74cb:: with SMTP id f11mr3613018plt.171.1588693214293;
        Tue, 05 May 2020 08:40:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d68d:: with SMTP id v13ls14909ply.2.gmail; Tue, 05
 May 2020 08:40:13 -0700 (PDT)
X-Received: by 2002:a17:90b:2388:: with SMTP id mr8mr3823758pjb.107.1588693213785;
        Tue, 05 May 2020 08:40:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588693213; cv=none;
        d=google.com; s=arc-20160816;
        b=a8ndzi3sNs4flYcxB5QyzRKPXkyTqG/QpUaeEEW/FNUPH63yijTMq56mY9YezpeOun
         aEYxKIWLGIL+IXlud1LUVEwI+aEEjsHyPmS4QbaSe0gm5duYcEq7fG9GyNat3B//e/ur
         TzIEYJKxA7aboXNffrIbEU9gNxrxKlMKufmGCybBy0tQEC3ZNrwKh1MVNAQAgkzdqw1D
         8Xt4iOBflS0NVoxKvN9SpdEOqq9oOmgI25L5eiHQlemPDyu3whJf4MshbChYpWC7OFG9
         yqxZvuZmhlLbLY9vFJnKcaXexGoHx8wiuWd00LjnSWG0GDFfEyagWDkiy7keTn5G+Tgz
         4uoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bSFaPsY9Q06ol7z3I9i5NZy6Mx1BYRJOSiQQ/ADJ9Gg=;
        b=cpWdJwtzlP3TNxRBNb3kxygE1Q8LmUvJqHYVixSgNsmObgWjiHgtMx0ukV1Dz7GhKK
         YW+zmPcCubwL2td541vUAdoVMbd+9LrBmHsJVfdL+gM3WQvDqpURMAvzTTEaF+dUjUGs
         Jn7JEU/TjPcpHXn19zLFNERfXZ30mD9SQEgEyTo9LAnA+xU//wrJyyrx+5BAwo1g0pWt
         vVooi1dtKiVDtTirayQOaK1KD6bQtJi6tsjZu3donUpAZpeIB4Qsl+1gnXUV4g4CmfQu
         hy0N9TOAl9EnscSoVG/cTM+xbHAoAp+o/hdudlnbhxo/u0XCalGiaFP6lM/JcgKCDqF+
         q65w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N+27bzh+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id s65si122262pfc.3.2020.05.05.08.40.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 08:40:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id hi11so1316903pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 08:40:13 -0700 (PDT)
X-Received: by 2002:a17:90a:8c85:: with SMTP id b5mr3737036pjo.187.1588693212806;
 Tue, 05 May 2020 08:40:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141606.837164-1-arnd@arndb.de> <e4a852b2-807b-bc73-7328-bcc399341085@amd.com>
In-Reply-To: <e4a852b2-807b-bc73-7328-bcc399341085@amd.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 08:39:59 -0700
Message-ID: <CAKwvOd=JLsksy5adE_rnRKetqAMcSFsJPHXVsidOP9RPo+YpCA@mail.gmail.com>
Subject: Re: [PATCH] amdgpu: fix integer overflow on 32-bit architectures
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Evan Quan <evan.quan@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, 
	Andrey Grodzovsky <andrey.grodzovsky@amd.com>, Monk Liu <Monk.Liu@amd.com>, 
	Kent Russell <kent.russell@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Alex Deucher <alexdeucher@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N+27bzh+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

See also https://lore.kernel.org/lkml/CADnq5_NdtZh5_RGDWKJ9c_42XLvrncCs5DDU=
1YSptfZP94KXkQ@mail.gmail.com/T/#me707e09e92c6e487285e8bb382a607e4e782c249

On Tue, May 5, 2020 at 7:17 AM Christian K=C3=B6nig <christian.koenig@amd.c=
om> wrote:
>
> Am 05.05.20 um 16:15 schrieb Arnd Bergmann:
> > Multiplying 1000000000 by four overruns a 'long' variable, as clang
> > points out:
> >
> > drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4160:53: error: overflow in =
expression; result is -294967296 with type 'long' [-Werror,-Winteger-overfl=
ow]
> >                  expires =3D ktime_get_mono_fast_ns() + NSEC_PER_SEC * =
4L;
> >                                                                    ^
> > Make this a 'long long' constant instead.
> >
> > Fixes: 3f12acc8d6d4 ("drm/amdgpu: put the audio codec into suspend stat=
e before gpu reset V3")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>
> > ---
> > I'm not sure the ktime_get_mono_fast_ns() call is necessary here
> > either. Is it intentional because ktime_get_ns() doesn't work
> > during a driver suspend, or just a mistake?
> > ---
> >   drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/d=
rm/amd/amdgpu/amdgpu_device.c
> > index 6f93af972b0a..2e07e3e6b036 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> > @@ -4157,7 +4157,7 @@ static int amdgpu_device_suspend_display_audio(st=
ruct amdgpu_device *adev)
> >                * the audio controller default autosuspend delay setting=
.
> >                * 4S used here is guaranteed to cover that.
> >                */
> > -             expires =3D ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4L;
> > +             expires =3D ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4LL=
;
> >
> >       while (!pm_runtime_status_suspended(&(p->dev))) {
> >               if (!pm_runtime_suspend(&(p->dev)))
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/e4a852b2-807b-bc73-7328-bcc399341085%40amd.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DJLsksy5adE_rnRKetqAMcSFsJPHXVsidOP9RPo%2BYpCA%4=
0mail.gmail.com.
