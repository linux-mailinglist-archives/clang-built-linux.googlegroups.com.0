Return-Path: <clang-built-linux+bncBDPZFQ463EFRBW6I2CAQMGQEYQCOGBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E708322188
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 22:38:36 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id a80sf2384882qkg.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 13:38:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614029915; cv=pass;
        d=google.com; s=arc-20160816;
        b=SeSAEhqDzbO5SAlQTvupLgMU66qUV3FZwe5Li9YDQIf0OUWDyS0WRXvuShYRt5C/yh
         fbmSrrpHxtSQEx1nGFSC4Hk4j5RN5Rw+tAJfE2tUcpbbfHeP+oeUdrrcH/nVp4/EGIp+
         D1m/H7OaiYs1jB8XaWGjwE0vcyc6FFa52gRcgN+JyIHJ64U5JdzpBMVeAsD4dp+aySSy
         MvVrbf0+bHVUXv0SF8Rh3CjXkfbYwRt74H9ovKVByhmNp1gzOVCWR2sd5bGwfvu//bxh
         NO39NWmx1JwtuMc6zsrV2Lqkf8yQikL5EXSXSXlp6khYfWQbe0WcsILNDsafQheG/0x3
         FdVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=kBzsgzcftLGV5BTP84lPAHk2ryqbNeXeXSh3F2pSTXw=;
        b=eu98rTmkJBTfxahnRCWNh9YxB5510Ccl1fm4PW67M4XoRp+29Ng0hsX69b0KojVEnP
         DqlHuPb5ciLTAIFo/vMh/qhfByTx0IoIw/aFnw8nRVN+10EiP3pJsDFpkj8lVVBqV3aT
         9Z2szq/LgtstU//2IweWpuJ1DxsJQVodZPiYiHd9z2WYmzmhtUXk+r8N6vOVUlfHIOzT
         g7lGDGwkIBOTo1ezmSMMRjaHlJ0HurRwlBMHxNIBu+NaMHsiAEnBUVsR8zJYBLZmO6Gq
         ZNeQT4MYMaT6GSjDkjeHxBTgfPiMdrj23xl18PDvHboN6h54zuWGTvPjiC7Zj+eTPvQY
         eS0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jV8vA8ff;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c32 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kBzsgzcftLGV5BTP84lPAHk2ryqbNeXeXSh3F2pSTXw=;
        b=PP5EaxSSD7jEi385qy0G5NHgcnvJBvdFvcItUGqdxOtO5jUE9hgk9rIf3hdEYmBs9K
         mIf2HP2Pa4VIzF6eXF3Sin/fW7FsPZw+ndvzAB44My3zV9r+WfQo0u5ngRlbnL3IHZPd
         wV+Z0jCx8UPifjHTqt3ZWsGCQ/F8qICo53Q4RhtG9B0AZWLpmmhv8unot+j6IAULfj0U
         2wXSsZzQanRRQfzlPNo9H1EO17kasQwWsHl15HljfkZGXxAs2fKxGZC1YfGEHZph/rrF
         cQK1L8zuOb5X8ZCrJ5cdWrZ2Zl2Tc9ht6niWU7Ud+RI3iok0iq9b+Pm+ZjhpbCLaIw7p
         eBmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kBzsgzcftLGV5BTP84lPAHk2ryqbNeXeXSh3F2pSTXw=;
        b=BHK37EXO/iPSoSxwD60cw7WmxmIDP50A9PCooNpSJ3niwrmzeXMp/Mq9qxUkitKRUP
         Kuu4LupykNDmNMSY4bzMi27hftggFAcMUeuI6B7N52RJ9LXJOWffcZdlbP4NwB6iOxEL
         fNejxVU+xA5Koid5aeiRSV+vM8TofI9qp828pw3TMvAI1iR5s9NLc6q6p7KL3ykOAUim
         DpDee36ewKlKuLeyp+gYTKkl5+cYVoLa3D3aGnto8kHuS9vHGPuAJjF7Pt8Ci50ogGhl
         bTD2CAU6qRb2/u0ElA0NCPpWSP9gnIDPWd2/ura5roL3esfd2DXxV6gczBpSiYr9rmuO
         41kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kBzsgzcftLGV5BTP84lPAHk2ryqbNeXeXSh3F2pSTXw=;
        b=el497ObYBRGCI869mHRnkBhgB5Hs49p0wrXSFfbyJfHXSEwpWyVdIinOLUDicZABv0
         XkJ9ioiS3gcuQv2tJGI66nOJHHEeeQkvFii4rwRM6RmgvkU4KvaL4IpZwXjafyCuL2Df
         Mv5qyL1sF6/AfaFswZz5vQt9wL6oxxROyBwTAelJh51Ng0FnDY9ewxm0C8qVcGPTTRpC
         nJWX4oC6RXr/965/w6FSFx7MAiT46xLaPUJDXMtA5gdVxd0CsHx1I6/VpbfemvoxOxCU
         tA7LjBKnn7m4jrHu1KncEgCjPzl5ygf1vGpcPjQGJtTj4qJTTB4LwIWqcX/FZPpBTmdU
         ux/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532A7brF9TtHsAAcfB+8qAWfzC/nNzOhkl+s4yG4H/N9dFMaPQgA
	nt4ksnfpAkLAgvnx7lR5XqQ=
X-Google-Smtp-Source: ABdhPJwDmt7OelFFJhrcAgGeDXZQwOex3m3rqOmkvJYoSVqZX9X38FIEDd51vf+/LJOUrjBbv9EZuQ==
X-Received: by 2002:a0c:b526:: with SMTP id d38mr22373672qve.7.1614029915522;
        Mon, 22 Feb 2021 13:38:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1c91:: with SMTP id f17ls6912157qtl.9.gmail; Mon, 22 Feb
 2021 13:38:35 -0800 (PST)
X-Received: by 2002:ac8:4e55:: with SMTP id e21mr21712111qtw.159.1614029915225;
        Mon, 22 Feb 2021 13:38:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614029915; cv=none;
        d=google.com; s=arc-20160816;
        b=j3vP7WUV/oqHZRKevWlgmFGE4SlGTbtZ1A2qDofq6DM8Pg0x0QCcAxgKqJUOzbbVEu
         ZhLo8k0eckm4PShrUbdNkyYTocUFTiSokMiWMCrfWOhL8vdCZFdP7k6MfLhNVe47c04X
         +W3pwJT50gf5/PAbyjYGLS8WSZJ/LvXmqZFbPckoUx8U5l7QR6XvkJQwXGAv00zuQNIj
         AWj6ZGLsdv5cx6AJp+616Buuw26VXExY5bfE/S8jZy9X09Sg3yHRaNgACJu9kwgUK5P8
         6Z038P8HHRkkY5SK0Mec3YK6JeLfDkyjd1EnpZQ9owPzDVhj7/ZktDnDvkm67Km4Xoj8
         Tkaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BdA4QMTkvcuLnrvRLDVtBXvNd3HImh3DqClB8gl/vNc=;
        b=O3wwmlKfeeFyLHoofPV+FnGnmrcpbfBHWW3ekeNFvVL+41bOkt8gTKycHVnSacE8iX
         lRK+F/f4oaeyf5O7l7HuPhq87eU4/uembllZulUnmql2lIYzjDzAwjuy24UBcDvBRpsp
         Cgj5v3rAd091iXRHYVSv49QO5LVqeNgxbAM0azdDT74vGW0sm1mD/H0EJucLclnSIU0R
         V8OZpHmsuYg2k4jxwfbRt95+6fBM16dZJtYjdtQtQnK2s8z7WncAakl3bkswNxu5mq9t
         +jaB/id7DwnAgOejKGFBKoiCu5txtj2+/GR/eqFAqzXPL4yCACuI1K90JoZn2ZJuLGIg
         j/pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jV8vA8ff;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c32 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com. [2607:f8b0:4864:20::c32])
        by gmr-mx.google.com with ESMTPS id p6si1031619qti.1.2021.02.22.13.38.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 13:38:35 -0800 (PST)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c32 as permitted sender) client-ip=2607:f8b0:4864:20::c32;
Received: by mail-oo1-xc32.google.com with SMTP id k1so1076792oop.0
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 13:38:35 -0800 (PST)
X-Received: by 2002:a4a:9801:: with SMTP id y1mr1728430ooi.90.1614029914834;
 Mon, 22 Feb 2021 13:38:34 -0800 (PST)
MIME-Version: 1.0
References: <20210218224849.5591-1-nathan@kernel.org> <DE2DF569-7545-41C2-AF18-400D6BD73215@amd.com>
In-Reply-To: <DE2DF569-7545-41C2-AF18-400D6BD73215@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 22 Feb 2021 16:38:23 -0500
Message-ID: <CADnq5_Oc5U9-bPzr4vNiF=BvxSfQHKCvGmSjJjKh=6OUbxmZ0g@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/pm/swsmu: Avoid using structure_size
 uninitialized in smu_cmn_init_soft_gpu_metrics
To: "Wang, Kevin(Yang)" <Kevin1.Wang@amd.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, 
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian" <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jV8vA8ff;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c32
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

On Thu, Feb 18, 2021 at 6:12 PM Wang, Kevin(Yang) <Kevin1.Wang@amd.com> wro=
te:
>
> thanks,
>
> Reviewed-by: Kevin Wang <kevin1.wang@amd.com>
>
> Regards,
> Kevin
>
> > =E5=9C=A8 2021=E5=B9=B42=E6=9C=8819=E6=97=A5=EF=BC=8C06:49=EF=BC=8CNath=
an Chancellor <nathan@kernel.org> =E5=86=99=E9=81=93=EF=BC=9A
> >
> > =EF=BB=BFClang warns:
> >
> > drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning:
> > variable 'structure_size' is used uninitialized whenever switch default
> > is taken [-Wsometimes-uninitialized]
> >        default:
> >        ^~~~~~~
> > drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:770:23: note:
> > uninitialized use occurs here
> >        memset(header, 0xFF, structure_size);
> >                             ^~~~~~~~~~~~~~
> > drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note:
> > initialize the variable 'structure_size' to silence this warning
> >        uint16_t structure_size;
> >                               ^
> >                                =3D 0
> > 1 warning generated.
> >
> > Return in the default case, as the size of the header will not be known=
.
> >
> > Fixes: de4b7cd8cb87 ("drm/amd/pm/swsmu: unify the init soft gpu metrics=
 function")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1304
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> > drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c | 2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c b/drivers/gpu/drm/a=
md/pm/swsmu/smu_cmn.c
> > index bb620fdd4cd2..bcedd4d92e35 100644
> > --- a/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
> > +++ b/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
> > @@ -762,7 +762,7 @@ void smu_cmn_init_soft_gpu_metrics(void *table, uin=
t8_t frev, uint8_t crev)
> >        structure_size =3D sizeof(struct gpu_metrics_v2_0);
> >        break;
> >    default:
> > -        break;
> > +        return;
> >    }
> >
> > #undef METRICS_VERSION
> > --
> > 2.30.1
> >
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CADnq5_Oc5U9-bPzr4vNiF%3DBvxSfQHKCvGmSjJjKh%3D6OUbxmZ0g%4=
0mail.gmail.com.
