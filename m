Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXEURLZQKGQEJAMFXXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 508DA17C490
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 18:37:34 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id b1sf1910451pft.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 09:37:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583516252; cv=pass;
        d=google.com; s=arc-20160816;
        b=rz1JRBwHgcF/Cb7qj5oopgCcxJjicUUXwn8TojDuCypttf3yuO2GXJvnZCLMaIoK8K
         k/n6UpAPQ/qlI5S4Hk+IIXXgRmnF7UcqVN7urg3b0t5ZaZrgkKcc8XW1FFKD4bfSh8tI
         Ww8OLSrgQE1JNyivMbsBt0dGFfzV272mI9yLwXZobxXrlqY9RvHhla6+kV4koM5HQ7up
         723AlTLyhL2D7BJxsGRmZLm2lz+jZTRcJyKNtF4BC76a2C+tlt8bG6j7Fmiw7rqvxgCL
         XlkNpOJ2oJ1dIcVZHUm56n1bGvhByz+sbJGY9tyL8zHa3HeqcX2zgmny8aLn0kH1xjw3
         LouQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ckbysUihlNc28ttzYoLsPDb8yRju9il7/mw2v/VLtXY=;
        b=HxjU0tIWRcDxOztdq4RA4f26qgXx7CpCnhEErf8EA5pBVZqXWo3Ezso6x0Pl8ORAjy
         HN9bGP0pdzV5L9k4DjS9zkH8Ba7HpUpBK4XU4VX/JGcZjwewRV9Mm832KquD5khTw95G
         3Df06lw8ZcrzwaBl4C73anmBtNqYcOrC3e5yaO4trD3HGQFvhsk0dxkFcCklYXocOssZ
         Ep6qzKFLxHwMk2Qz51b3CtFbPhgEgPlak0z5xYvW15DX64Q41hVtjj4NTHTTSp0bTcND
         lyD8ypJ9ieMFp0q3J3giPGSeIRXvHyx6VcltoDRXaSEK2kb7iTlZwdiPZP+hRiiTdtnj
         1m6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="D0br/Nlb";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ckbysUihlNc28ttzYoLsPDb8yRju9il7/mw2v/VLtXY=;
        b=gUVjdsWps9cEBPXXtW2QcS7n7SOhXg0CuJJ6F221Bjjti0LgORUoZW5o3fchMGG0Se
         PFhnLyr7zAz3zvc4Ue5Hl7Tfei22RP+KxqnlCoBPmeAOz4XUWFXBekbmtansZ3RYIYIT
         LqJW5vxwkwxTVmHDjBNxf879v3diKYNcm2mExRLEP41QJBNTC9PUMNFfB/e8dc0+s1CT
         g1gGbBXpaFUW/Zs1dyiCYjk5l4WpfPHdz0gdvARjdNmhSskBzY7d1EyOTZnXl8GPNjGd
         Stkx3ww8JvgePYpX5kLZ4SulSQp57FHmyilCHhZVRpsgbDtGhOPwZuvydvrnYIItGsth
         1ZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ckbysUihlNc28ttzYoLsPDb8yRju9il7/mw2v/VLtXY=;
        b=rN0kSvLgcyC1oYqhYRvkgRWn0O//HpmPnTk648/JpC/BZ3FAlNG7BTokJ2G00u+367
         otstRCnU7pNL0rN1g1vSdBEon2A3hIhvtsGXSZkhrNxWyQaCVb2wZQuTib++hhPmTthl
         R6R7B8T8URCnAGHpLWcsHYiYuXRgI1HuzaMAlCRXaZjclXAHLYhqlDj2HEknCPW/ijfL
         Q3+ef8yNhiXxZf9rvMu3rE9bpguwWjNPqCr+d9v0cwO0fPP4nP9xm2zR9+TLkpc9mfnz
         9mrOBRbZKJtbvZo0VwqeYcqQnsWZGgnz0GMhYg0aGZGShyXchQmSYhbFPHh8kqCJ/jPs
         pH3Q==
X-Gm-Message-State: ANhLgQ2X8gAG3sT5Jhy0tdMuCSV3l71tOjdb7wvapgtRZ8x4KuOsOB+a
	s/9PLF2fDq3r6buq/Va8ISY=
X-Google-Smtp-Source: ADFU+vu+l3o6kodiJkqZ7VSWuXhDkbAFyQlt1G6x5b6XbX5o5KKkyD4y9sHoWPuux65f24L5ObTEVA==
X-Received: by 2002:a17:902:76cc:: with SMTP id j12mr4177282plt.129.1583516252628;
        Fri, 06 Mar 2020 09:37:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:364b:: with SMTP id d72ls1001718pga.5.gmail; Fri, 06 Mar
 2020 09:37:32 -0800 (PST)
X-Received: by 2002:a62:7587:: with SMTP id q129mr4947963pfc.53.1583516252091;
        Fri, 06 Mar 2020 09:37:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583516252; cv=none;
        d=google.com; s=arc-20160816;
        b=AAVOCLAObE98cfRK/jz5T9qpp5ELjYFIHtqnjo1WFPTJVoB1V30ZeojV+o8Do47FKI
         DU+RdJGGwfr+i0bjin8hzF6a5a2+aF7CUjp8vugkenSjvaF1WM++prpsGpfwLNMvka4R
         TuKpXckhDwsLvL0eKySI49O9qu7r+gSce13ljcQBurRbq/fqeC10/2jlnVLXZ1zjVnQw
         /8Vv6jBVc5MBwM2+uhc/u85N+Jarm6Qfo1Ttq0sTwJp9Pv+oggGYJl6uz3iTPl53KSrE
         FZhsuMvwe+CJyFt7d0OZR7fqGAiXzIQVL9gf7cvP8Xfh6J132P/evZrq1FE2s3A8tpdG
         qrbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NeDvLUIAgc3P9ZWfiEiKoaXL/UdWw2NQZoEeQ03LjSg=;
        b=LHyC8slf7Ec+Ou9dV+qXLP+Qt2L7OogUMHH4zJs4HypZo6OujGzuhfXcOUFk+RYsPB
         NcRJGRaJKTQASvoUoojBZcRawEy0+OSYTMwYEnKGEVfFfI3/R9NQpEE/TxI18wWRbR5W
         V8yvoMfVcQlBmAd1N8D8NJQxu0NOLBBXaF2WiOL1J3xn/+1EDDe5bgtj6AFyOTVpWYsU
         3cVk50J84z6c+JBJ17K1dD6Pev6lHy4KEMlCbEiWZcmPkNNr9gNjmG5wSOKw1RZyWPkZ
         cOemT0/r0H34fRI8RotxroirWeNwqfZqKnnI8nMmBfXLA68U4VjO5BfNV0C2bH35q8H1
         yx0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="D0br/Nlb";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id y13si138631plp.0.2020.03.06.09.37.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 09:37:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id j20so1140674pll.6
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 09:37:32 -0800 (PST)
X-Received: by 2002:a17:90a:ead0:: with SMTP id ev16mr4798094pjb.164.1583516251450;
 Fri, 06 Mar 2020 09:37:31 -0800 (PST)
MIME-Version: 1.0
References: <202003060930.DDCCB6659@keescook> <CAKwvOdn4q4OWzvhAMHFf441DNrmO00ye_H_MnoegP7jw3YAWqA@mail.gmail.com>
In-Reply-To: <CAKwvOdn4q4OWzvhAMHFf441DNrmO00ye_H_MnoegP7jw3YAWqA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Mar 2020 09:37:20 -0800
Message-ID: <CAKwvOd=POMeVJmu4pU78kLqZf=K-1s9kn7MagjGF8_BdztRTNA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/edid: Distribute switch variables for initialization
To: Kees Cook <keescook@chromium.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="D0br/Nlb";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Fri, Mar 6, 2020 at 9:36 AM Nick Desaulniers <ndesaulniers@google.com> w=
rote:
>
> On Fri, Mar 6, 2020 at 9:32 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > Variables declared in a switch statement before any case statements
> > cannot be automatically initialized with compiler instrumentation (as
> > they are not part of any execution flow). With GCC's proposed automatic
> > stack variable initialization feature, this triggers a warning (and the=
y
> > don't get initialized). Clang's automatic stack variable initialization
> > (via CONFIG_INIT_STACK_ALL=3Dy) doesn't throw a warning, but it also
> > doesn't initialize such variables[1]. Note that these warnings (or sile=
nt
>
> That's not good, have you filed a bug against Clang yet?  It should at
> least warn when the corresponding stack init flag is set.

D'oh, link is below.

>
> > skipping) happen before the dead-store elimination optimization phase,
> > so even when the automatic initializations are later elided in favor of
> > direct initializations, the warnings remain.
> >
> > To avoid these problems, lift such variables up into the next code
> > block.
> >
> > drivers/gpu/drm/drm_edid.c: In function =E2=80=98drm_edid_to_eld=E2=80=
=99:
> > drivers/gpu/drm/drm_edid.c:4395:9: warning: statement will never be
> > executed [-Wswitch-unreachable]
> >  4395 |     int sad_count;
> >       |         ^~~~~~~~~
> >
> > [1] https://bugs.llvm.org/show_bug.cgi?id=3D44916
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> > ---
> > v2: move into function block instead being switch-local (Ville Syrj=C3=
=A4l=C3=A4)
> > ---
> >  drivers/gpu/drm/drm_edid.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> > index 805fb004c8eb..46cee78bc175 100644
> > --- a/drivers/gpu/drm/drm_edid.c
> > +++ b/drivers/gpu/drm/drm_edid.c
> > @@ -4381,6 +4381,7 @@ static void drm_edid_to_eld(struct drm_connector =
*connector, struct edid *edid)
> >
> >         if (cea_revision(cea) >=3D 3) {
> >                 int i, start, end;
> > +               int sad_count;
> >
> >                 if (cea_db_offsets(cea, &start, &end)) {
> >                         start =3D 0;
> > @@ -4392,8 +4393,6 @@ static void drm_edid_to_eld(struct drm_connector =
*connector, struct edid *edid)
> >                         dbl =3D cea_db_payload_len(db);
> >
> >                         switch (cea_db_tag(db)) {
> > -                               int sad_count;
> > -
> >                         case AUDIO_BLOCK:
> >                                 /* Audio Data Block, contains SADs */
> >                                 sad_count =3D min(dbl / 3, 15 - total_s=
ad_count);
> > --
> > 2.20.1
> >
> >
> > --
> > Kees Cook
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/clang-built-linux/202003060930.DDCCB6659%40keescook.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DPOMeVJmu4pU78kLqZf%3DK-1s9kn7MagjGF8_BdztRTNA%4=
0mail.gmail.com.
