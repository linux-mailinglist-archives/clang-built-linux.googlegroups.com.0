Return-Path: <clang-built-linux+bncBDPZFQ463EFRBTPI5KEAMGQEAA2HKDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9B63EDD59
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:54:06 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id i2-20020a67e2c20000b02902bae9a0967fsf3064622vsm.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 11:54:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629140045; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLr68KKdUvuQ0ThoPi1gb1OH6WwrZoRuJcbQ/LJeyflgAGZ35o4GxRH+K3WFqSBQeI
         4r8sXsrdsq0SQvBFsA/BDOjcwwlVkE51xGx4zhtooVMsGVRrcmzlDk/CDuDqo0QlhamZ
         p5X8MhhH9KDpiuByAEjQxW6mA5rGMVGY9TRibTn4wI5/qBjCXe17y+09yqMfrYpme/TP
         +Z/pfxvfMlg+hmtBNjuzjBDbXiQDJ/jc6vQfg8NOmpzPxpu9jqYU6miBxsgblPPiK8Bi
         yE9UesCQ68FnUO3Scv5nSVldo0WXkDtcNCCT1QqpF12t6pvIh8jUIzkYUXbJPhaHfOs1
         EVEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=DH9KfOocOeKgIpB2LviSuR8oTsfsuZHyv4//A6hFBrY=;
        b=psEraYjqAuujjVo7NzHgaWBXLC87oD/IGUZps8Jyd2yNSL9azFTgIpsjWK/UtmJt0T
         9e72LE7+Qr+sRu1LdmLVsFCgUN5Q0Egk8BJUwNT9wRMT0v/Sy4JCq8jymSTMweso02Rm
         wVf7ZS25mJopBYN0B0b8lA+iSLKfPO9jH7VjQVIt5bCHdATPv7ZvIyLFE8RxRB7WsNOq
         E1PG5eIH358ypj7W6BonVzqqUbp7N2EGlXOJenVCB962toqDmSvADR4hkfq9FTS2ix13
         0AQ2ty/A4XpCG0K7RCFB2WPrfkVgRx2D2tZI3A+e6aw5XE4QT0Ox4U2NMV4oLwhNiEZI
         rg5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=naoSBJkg;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DH9KfOocOeKgIpB2LviSuR8oTsfsuZHyv4//A6hFBrY=;
        b=QpOAmTI1IWO66Zi+hnGo6m/ECYzVOuFaDhJJHPfaP7RAmkw6YtqMUdA63XB4liXu91
         XlsQR08u3cBFZlFJkLKQPQ1hK7wamp+JVu+IE/2eujSQ1UOeh8AqbD2JuQbMUS6dU4C1
         5Xs0zrM8tPzFXskV4mHeHYWviNWisvoCMEQ2WWZRu4EJhSFxjULH+kgn+1eCKCoYI+qv
         gsrksMJxLnb1GdM5tQNYazBa9gLTNyvuAypfPFFFLg1prmTX0iJ6elwMUuelZJ7aV7YA
         Vm1tPf+MUcJQaclMtTwcEfJhwjwyMe/BAMZLLuEHWX9zXCgN2ZztT6MwEK5QkpCT1gVT
         lRPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DH9KfOocOeKgIpB2LviSuR8oTsfsuZHyv4//A6hFBrY=;
        b=gH/3g1PIIfh/bhVIkYfGTX/FfWaFSpRPHKFtJoVMMEgS2FXFio94zSVkLKvb4ii0Vw
         gcikIJ16oeB8FgZbzhira6QvKCndNh6ZtuIigZDyz4wsDr1qQXA0SsrBiHll2F2WXYOr
         UW/ctuSq5NxXsuspkZ92RhaJffRqlPcv4xssdZTlGaJlBGPj2aYlcuNkbXIy0vfi9I7g
         msR9MrbRkTC//1o7D1u0k5XyVGMo2EhDyvTstGlHWXQK6AMk7gjyyIhLdXtZ+UCdyZlu
         fzy/X5d/DtN6IM/3ZGVFwMEsoDsQWpWeoXtkKMCwoOHW+KnH73LBP/71ANzWfnkT53bf
         LXmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DH9KfOocOeKgIpB2LviSuR8oTsfsuZHyv4//A6hFBrY=;
        b=lyuTpmrBUC5yvQuLE8MyuEkx0a8G7mTM+0Bdr83frfDNVcMhCRkSXRpaNy3+AgXc29
         7LHt8lgYdWPfGdd1y4ZYdWvlWay2vfAaw92JiTUSwcI3PQ4AWNl3xJwImhaFri1AXrvN
         5KUcFuuplxmgxDgtjWVzqTaxtiVUA1thjP4Z/N26mhgnYmIKlkd3+07oPLomifz6OaSW
         sgxxzBRqkMRXKNWkaWbpeZHpWBdFzpTtKvhPiduvDjaNaS+4yj5rZxQRoqrz9xI+zxfh
         izf9qdsh59Z8AAVOmZNIqqtqns93DzIClHpItv1pdb0HeMVfd7rmHlP95bAusPuiD1LT
         o/eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oX0tFHGZNKmwO5sM78tgGWnBOqYrWsk9vwXRR2jKIAhHWfx1K
	32yHTlaqQ9m0foo9PQXKGqQ=
X-Google-Smtp-Source: ABdhPJyGI6I9I4zw7TClBLie64Hv5UOWXjpKFwh+HLPRMTitdXOqiBu8rBaCrv79CpdSmY3GLI5+Jw==
X-Received: by 2002:ab0:36dc:: with SMTP id v28mr177886uau.38.1629140045692;
        Mon, 16 Aug 2021 11:54:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5ec1:: with SMTP id s184ls3106vkb.1.gmail; Mon, 16 Aug
 2021 11:54:05 -0700 (PDT)
X-Received: by 2002:a1f:3213:: with SMTP id y19mr227605vky.13.1629140045219;
        Mon, 16 Aug 2021 11:54:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629140045; cv=none;
        d=google.com; s=arc-20160816;
        b=yViG/hYPzL/OdTCF6AOxI2mv1oLxDic2Tesw4V4G9JY7dcdjwb5D3ZZs5qsMKNYbUp
         7Yyepasb9O8mh51RNsgvDNhOSocPD52nrUHGYaUJSt2XNY6w7lTXQcRWmCUmYYQV8hir
         hGj/fXiiD7oAB361l6NpGEkfpMarsczhpTiE2oLAoR5yEHAg1a6xaDPaI6WYAbW7rPJy
         hD7PEYLVRWhbFMsEt5dVF4hMqyRUGDoEjRRlKAgMkOZdjaZbgcwlpObqecJIWyc8hn27
         qJ4xlyTDAOu5mEb1KIv4Go5cyzN3QUXGHlehWbyYoz7C9PRrnlCbqlyWNsyl8Uh3QHXs
         5BzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YoY9bHgtBFBdh+LL5q9r5ScpCfKdiLG+MRqaif3YEI8=;
        b=LjY+WgzLHkLtpfNiOsYwhqz10O0AvyhreQB1i6xUDgCgqVW9hDCE3/VvauUZ8ATV3x
         kJoNG2SIDO69tMq+inARkWuZLIPhJDCgS2P1tSad79WH7SlC+iSeaOCTZRsKlY3yq15s
         lmQWzXEf8xnTrYpia6zOUJrG9HcigwYi9XTpdYm0yGq36xz9Xn+Zi3uowhHI5Ob1Vn/1
         5bUKojI5Ja0jhzFdtEmMoiDYSLdRdI3zwBE8uhPFxHVCtDQWSRVckrEI7IE2Fwz/TWlf
         7w9QyeREE0EIZXTNBx8r2UKL0pFq4MPXg4eSKeBUW8pgg22vNmEMMEjgN7c4Bmq4OrIR
         ZKsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=naoSBJkg;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id f11si8860vkp.2.2021.08.16.11.54.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 11:54:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Received: by mail-oi1-x230.google.com with SMTP id n27so3501850oij.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 11:54:05 -0700 (PDT)
X-Received: by 2002:a05:6808:1390:: with SMTP id c16mr128831oiw.123.1629140045025;
 Mon, 16 Aug 2021 11:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210815192959.90142-1-nathan@kernel.org> <d2e9b2a0-49b9-42fe-47fc-66a44bef3b01@amd.com>
In-Reply-To: <d2e9b2a0-49b9-42fe-47fc-66a44bef3b01@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Aug 2021 14:53:53 -0400
Message-ID: <CADnq5_N0o_6vCqE0tYq=yqtPWvOzZikLoVF1f4U9DJcb2bCgCA@mail.gmail.com>
Subject: Re: [PATCH] drm/radeon: Add break to switch statement in radeonfb_create_pinned_object()
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, 
	"Pan, Xinhui" <Xinhui.Pan@amd.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Kees Cook <keescook@chromium.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=naoSBJkg;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::230
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

On Mon, Aug 16, 2021 at 3:23 AM Christian K=C3=B6nig
<christian.koenig@amd.com> wrote:
>
> Am 15.08.21 um 21:29 schrieb Nathan Chancellor:
> > Clang + -Wimplicit-fallthrough warns:
> >
> > drivers/gpu/drm/radeon/radeon_fb.c:170:2: warning: unannotated
> > fall-through between switch labels [-Wimplicit-fallthrough]
> >          default:
> >          ^
> > drivers/gpu/drm/radeon/radeon_fb.c:170:2: note: insert 'break;' to avoi=
d
> > fall-through
> >          default:
> >          ^
> >          break;
> > 1 warning generated.
> >
> > Clang's version of this warning is a little bit more pedantic than
> > GCC's. Add the missing break to satisfy it to match what has been done
> > all over the kernel tree.
> >
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>
> Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>
> > ---
> >   drivers/gpu/drm/radeon/radeon_fb.c | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/radeon/radeon_fb.c b/drivers/gpu/drm/radeo=
n/radeon_fb.c
> > index 0b206b052972..c8b545181497 100644
> > --- a/drivers/gpu/drm/radeon/radeon_fb.c
> > +++ b/drivers/gpu/drm/radeon/radeon_fb.c
> > @@ -167,6 +167,7 @@ static int radeonfb_create_pinned_object(struct rad=
eon_fbdev *rfbdev,
> >               break;
> >       case 2:
> >               tiling_flags |=3D RADEON_TILING_SWAP_16BIT;
> > +             break;
> >       default:
> >               break;
> >       }
> >
> > base-commit: ba31f97d43be41ca99ab72a6131d7c226306865f
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CADnq5_N0o_6vCqE0tYq%3DyqtPWvOzZikLoVF1f4U9DJcb2bCgCA%40m=
ail.gmail.com.
