Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLUURLZQKGQELBPDDEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id A193717C48D
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 18:36:47 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id n6sf1994199qkk.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 09:36:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583516206; cv=pass;
        d=google.com; s=arc-20160816;
        b=nFudRtwhuQXST2AKcdVwPiy1qJcnFNxr2tq9ATfj8uMKXvJ1njMfJabY4gCHahTvQB
         ysbj7g0y+D2TTn+NJVpu+vy+4ynStodt9ZWE7t0oSaErf8RC4Eevb8FXGp25YUw3k9Q0
         h2DvVJCTNMtiL4bWkWHgYcy+rCN+KwwO2Ab+tU/B+cPW5fHQptTRynSD14SgL+qEkPCN
         TCmPAqarg0fO73kQ4BMWcpXfCLlhsbqmPn8Lma3n4n8+bLN9wHRMi7u1augAxXX/x+kc
         W/FU8E0s7Rj0OGCr0Tr/0xX3CiDYw3jWyHDMTSgvGsZONm2qUJBDzd/rWRdErE9rJ4lP
         qNDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PSpKnydZxP53nmy+n+Vbtrt61lBY5VAu9nzzT9ldCk8=;
        b=HdlU5mgXlsG/EJsw8E/Yj6ApNjXaXKN1UW2VZ1wqv/SBcerPB0FRrATat2PdQsJm0Z
         8DLALnPs9UIjsEpl5+jzeLbshmITIRijxVaGluJ36s7N57vg05w0GlaBFW6GDrWOltlW
         uQtgqTp++S1MPCuXW6wSaTzp3vIRK7UOJtn0C/LHJsIfeEfBId0YiF/qcdlQhfSt1Jb+
         qrey7RuWScQFFsajCBHtIrUYX8k9Wdd7Eqcyaxj+OW9KZf5EBwgxar+D0pUjUiCeXWj5
         8SLY3m5eKwcs6840FSVpxrShpNyhSK3mlUgO4e2YbiKfgDttzYyRlO9Sw4uqdl5Yqp2/
         saqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=urjBIsmY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=PSpKnydZxP53nmy+n+Vbtrt61lBY5VAu9nzzT9ldCk8=;
        b=jcm8QLRz+LOFUpCs/IQVrCp143UJHQ8hbFFMGKC6TIBlVPlaz8r6BIm0NVGDWxEOAG
         ZfYu0znCtC52SB6kzghUnBnr3Y7IsjnNPiQAe0HfR2IAfJJvpaVZ+VNivEVK7jMepahX
         P1E+9LCWBU75fLDZrjUwCPqG4P7erDx3bw6hTiTHdY+PT32R1A/T5Diz14+a7vU6frQ+
         60j0Fd53XFMyLYcoIDChCJjzRnteRHofRDUD+7Kq1x1uReCwHh0eSb5f98pd9C3gnEUz
         QlLKqvrvXKs3HxuiH56M5JjMOExFrjmZRNL1wgD/3HcVLwkMhNUNTwt4Bhku6nihBURz
         dY3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PSpKnydZxP53nmy+n+Vbtrt61lBY5VAu9nzzT9ldCk8=;
        b=QXuZCV0lZTknBhv3kLF22KCCdWukPWMdgupFapH7kTaqDtfGNGq2zpdgjmCwhdMnH9
         xVKFiUj4a0dp+0tMSImmZilkNhEkjuAOujyHXXoLxV4zRiwIk7uctdzoqR7NnRnwYJDh
         ahB8rhfbU4v6hxu9K2k/Ae4X4LTo6eY0BAD87RrGKzYN+V1wYjjw74LxJXSDbdJR//2n
         7x6eqtZckMv1A1oAlP1ZhItakWzT6q2xkkrFpDE6zJkZo/z6opAJIa/tuJ6oo1fZTQr2
         lIxRIbhZ8O2CiALxllu5K0uTVE12jYNhzRz7hSQYrhz6OyGl702TRLHdeLJisC6tcx5E
         TcHQ==
X-Gm-Message-State: ANhLgQ1drQbmTvowoPJq22G7lhAqKo5Yp3ppWKds7VAilcaP1H6kgiXY
	oiF5rSLw1kGukZkn/uKP8VM=
X-Google-Smtp-Source: ADFU+vslFqRu3ZZTi2ALpcGUCfjWFVNKdSK8sQNVohoYF1ZX+geTP939FgkGWv5J5mkLmdumqNcvyw==
X-Received: by 2002:a05:6214:15c7:: with SMTP id p7mr3805662qvz.59.1583516206624;
        Fri, 06 Mar 2020 09:36:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4e10:: with SMTP id dl16ls686041qvb.6.gmail; Fri, 06 Mar
 2020 09:36:46 -0800 (PST)
X-Received: by 2002:a05:6214:8c1:: with SMTP id da1mr3995356qvb.66.1583516205943;
        Fri, 06 Mar 2020 09:36:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583516205; cv=none;
        d=google.com; s=arc-20160816;
        b=Ov1rxhjY1jPveoVvRiF9mVuP4tetdnIfIuoWIkKbC2sF9BVVrDQ7eq4JK5eo9qYF1T
         4jFtcjtvKfP27N5bgotHL76c9Bsj/FJh0MdVpRk7vkZLIhrE15paHpUGig0bDH5vVh2s
         J74y5edzTsws1Iv629KxBrTcsBDdnnigYCevMSqj5ko5uBbBi2MeChrmLjQdimog3c+3
         26n74fjFgxRVK1CmUX7nqsxe5wFBKRTLQfA4oxYiLM+sK5FX4+8hqB1L8WVqZEe2z5eB
         4u8VuXgGxUQ+GZ+s86xVP3C0hBAA0/xltkm55XkBZuSEJt7o3yQvnXPli5g9EFy8mY9w
         Oh5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0th24Aw7poXV2kDwcH+eb4lyzzSHKTu9OdyFQYJbKkY=;
        b=P3qiBShTtLEYW5tVEFhST0ouc9HVSDmzIUjY6QcoLhiK/gXf9QsKwhiiGDw2Lv1tSr
         vuAwkk8qUP4Y+oDhwWbTCxgnUvtqf3XLg+QHd4ClcznR4Ha1YuSDfdpv3VKAXPMMgWc7
         6ZtECgZy9ixM+CWWJ0DgwG6amaVrlHyDIIWsqPoAgMsJZ9YmYSEb+uDw04DiojeJyDE2
         28rJZ/Tmh50R/3DdkxjB0xy2R/bxC3W8Yl5bfTEPJKEgYQz5Y08ZHc4Toyzf/gux8S6X
         lMlXzziZHSvt+cCraM/L97yzLiJK5UYNBHVLNCpKbyhGDnDd8f6eA8eqqZ2RQWhAw+Xw
         HdVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=urjBIsmY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id x5si161852qkh.0.2020.03.06.09.36.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 09:36:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id gv19so1365928pjb.5
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 09:36:45 -0800 (PST)
X-Received: by 2002:a17:90a:1f8d:: with SMTP id x13mr4795428pja.27.1583516201411;
 Fri, 06 Mar 2020 09:36:41 -0800 (PST)
MIME-Version: 1.0
References: <202003060930.DDCCB6659@keescook>
In-Reply-To: <202003060930.DDCCB6659@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Mar 2020 09:36:30 -0800
Message-ID: <CAKwvOdn4q4OWzvhAMHFf441DNrmO00ye_H_MnoegP7jw3YAWqA@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=urjBIsmY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Fri, Mar 6, 2020 at 9:32 AM Kees Cook <keescook@chromium.org> wrote:
>
> Variables declared in a switch statement before any case statements
> cannot be automatically initialized with compiler instrumentation (as
> they are not part of any execution flow). With GCC's proposed automatic
> stack variable initialization feature, this triggers a warning (and they
> don't get initialized). Clang's automatic stack variable initialization
> (via CONFIG_INIT_STACK_ALL=3Dy) doesn't throw a warning, but it also
> doesn't initialize such variables[1]. Note that these warnings (or silent

That's not good, have you filed a bug against Clang yet?  It should at
least warn when the corresponding stack init flag is set.

> skipping) happen before the dead-store elimination optimization phase,
> so even when the automatic initializations are later elided in favor of
> direct initializations, the warnings remain.
>
> To avoid these problems, lift such variables up into the next code
> block.
>
> drivers/gpu/drm/drm_edid.c: In function =E2=80=98drm_edid_to_eld=E2=80=99=
:
> drivers/gpu/drm/drm_edid.c:4395:9: warning: statement will never be
> executed [-Wswitch-unreachable]
>  4395 |     int sad_count;
>       |         ^~~~~~~~~
>
> [1] https://bugs.llvm.org/show_bug.cgi?id=3D44916
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
> v2: move into function block instead being switch-local (Ville Syrj=C3=A4=
l=C3=A4)
> ---
>  drivers/gpu/drm/drm_edid.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 805fb004c8eb..46cee78bc175 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -4381,6 +4381,7 @@ static void drm_edid_to_eld(struct drm_connector *c=
onnector, struct edid *edid)
>
>         if (cea_revision(cea) >=3D 3) {
>                 int i, start, end;
> +               int sad_count;
>
>                 if (cea_db_offsets(cea, &start, &end)) {
>                         start =3D 0;
> @@ -4392,8 +4393,6 @@ static void drm_edid_to_eld(struct drm_connector *c=
onnector, struct edid *edid)
>                         dbl =3D cea_db_payload_len(db);
>
>                         switch (cea_db_tag(db)) {
> -                               int sad_count;
> -
>                         case AUDIO_BLOCK:
>                                 /* Audio Data Block, contains SADs */
>                                 sad_count =3D min(dbl / 3, 15 - total_sad=
_count);
> --
> 2.20.1
>
>
> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/202003060930.DDCCB6659%40keescook.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdn4q4OWzvhAMHFf441DNrmO00ye_H_MnoegP7jw3YAWqA%40mai=
l.gmail.com.
