Return-Path: <clang-built-linux+bncBAABBWF4VKBAMGQEK6CM47A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 207323380D2
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 23:48:57 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id s69sf6786545vkd.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 14:48:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615502936; cv=pass;
        d=google.com; s=arc-20160816;
        b=rvisTkiks2UThIHDI2+Kf7vMp9DQViBZ+PLDEMClAItmFfAVqQYR8KEjiZtP3sMEbj
         3Y5pmY8aipSknvGwE7HJh2XtMV8BYm8/iTv/Ppkp0HCgRY2+/wqmbE61QenIIiY1sYfs
         PCYdTJ6zakPW9UMboCFmCTfaQrGkppWBQQjwuO7fwcSRXe+suN8oDflRTJo8qrFVaxrm
         lUbDScRysFg48EPxL7NgZTTfJH3sfHKk7nq2yBoOk3/QOPLUTuocgFYNLm/nk+/wkAJY
         RlhPh26if5iR6RLws9OjlSWz1fCjxZsC/A/IYW++woBXC/5eZ5aQHqKGSRR9ThEOEkky
         U3+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=TnuSCNMagxKDe5DmoAehehx8SMBzsu21lidccxVXunA=;
        b=OHEMk1EEbSQt7QNQyC7UG9Tyr06c/T19MYdYwiEUvzkJ2uN8/T7eg7YwXKX/Ca8WKI
         DR3Lvz67IGkBourxgdSIaTQWUCU3bM69dEJqM/mglxDV1glPPZmVI6tHTcoFZQasE0KZ
         n3Ir/vB3FATalOn7BGk1RZysbnJho+ZUl8HyCmGb9yO73arO1Bi6hOXlR6x4hIw4dFcg
         at3dXSN0rG5vgaOOr2f9ynkPUjSiKr6Uf4dnlNOtJ7B/uIJX7HuomYk4lno9Dmby07yj
         7cgbu7+ztuJoKnRM+lczkl8Urwkow8feS4aYI6015K0rv6FXlIyDlaZilpc9gmuIQE7e
         ZFzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KKem5FVu;
       spf=pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=saeed@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TnuSCNMagxKDe5DmoAehehx8SMBzsu21lidccxVXunA=;
        b=HrYK2p4cjvYhYQopxui8tMUlvSN5/XS/TesjoWGvj/rpn3nAq53mGLCf020Ov+ZgbO
         OGBCLt3K14PLdT6ZLBE6Sn3C2EJYAkVK7JpOfYVsCDj4qsK0B8BIV+6Op84WWRsu+dND
         mQ7HIZh1J82OUfja2ip/Bl3OC6hwAY/pMp2ijLcsJpxOEckLfK+vxqtj/13bJQqKVTYq
         6VrYwYfJvuQRVnY6O0KyQ6SdMTKOgiePy5BGJjtwX1TqmjDs1HcjFPxD1hkj6nKEL/H5
         B7+7Fy0oBVoMkMC5LSpYM9ZhInS/VmAdCeT6/4L700k/+KESOOxGFyBDa750hcnB8QJp
         PjpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TnuSCNMagxKDe5DmoAehehx8SMBzsu21lidccxVXunA=;
        b=kqBlfQVUaRUy5+EHPwhOyQGHFgbATuom7oyMB8V8p61sTvBlBqfeK4Mqan4j2KvuWQ
         3fjSpsyn0pmpIBzOiILYxBiN3ZjrTLqHVs6zFy7SL5KUlgH72R88ehBTln2cSMpdtgRd
         iRU8JrXSlzlyNVqurcaxLoNtH3iRXh8ZI3CJN+78n3qQH/sYxXnGgLL1omewzEYUWXiC
         x/n9axqdnuUjtiz1TkNYhPex0KsXr2l/7WieyB9LfOpK4TLJ5uFmL6wlU1U0vAXiRZz/
         ztTLpwSfDHcCozmFax34Re1TTO/L4R4YSJOGwYSGYcYoPuTb6kuKhgMSzeRitHbPYP0z
         qDIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mQtOkby/foR0efgQ/IHSTgHaJJT/2Dx2VoEOBMb52UTjOi2kB
	qRnJkprwMkac8yTTseeoEDU=
X-Google-Smtp-Source: ABdhPJxus/vDWBfE03oTn12X8uH4Qu3WGD0Ws8E9f3JKdC/Fc9giotCvYlrULIwQVeX7RgZ2NNOYxA==
X-Received: by 2002:a67:d87:: with SMTP id 129mr7045247vsn.36.1615502936169;
        Thu, 11 Mar 2021 14:48:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3917:: with SMTP id b23ls577561uaw.4.gmail; Thu, 11 Mar
 2021 14:48:55 -0800 (PST)
X-Received: by 2002:ab0:6d8b:: with SMTP id m11mr6800740uah.1.1615502935706;
        Thu, 11 Mar 2021 14:48:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615502935; cv=none;
        d=google.com; s=arc-20160816;
        b=DRk2/PtFH7TDVg1dYlYkN25LCxF3TNa23OnxvHFBqBgtGMsAGTevlXD3YCkqjynSX2
         AUfKfzyyJuV5mkVmJrlvwgG46jtpReFHZXi3uCUalXAEQYpRF8PlxNMrLbpnTIxng6zR
         s2jzO6CnxPrJZI8qTTbjjnIaNn5pqNdpz6z+lmC+TkIU8FwsIRgDstUr9r0CxWxco+DH
         i8jeP2Au2R21oLPNMYRDhsb1aC+sDI5s0O1/95IKR1F+Nb/IcJySH393jto530nvFqj8
         tiyqZcLt+gUFGxAbULQ6p1PGEL4aqebGE3vQ87+KULhxDFduAmZm8upH4UX3RRnNKd4j
         JD6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=bQuVSGhfiI8mncbv+75EuPoPnh2p+CYRHpOq5rxgpqk=;
        b=avu+bLVJkqabFpAUIN1XA8EFe1naeCjAsGs6MtmH11J7qfoDpEtioIfspLq4Ktvt7i
         YIZEbOfvoXQJ7hgHNkFeovFKr22XsvxdEcsjvV9/VTgntL4K9/SevxElYLsMVi+OUv9N
         vtm11gEli9bENmEu0gx9J9cA9+rVGPJvOOYt4AuqAtvnrwKYQmfEbT3SYDmZM6jx9du0
         i6R5Pl3TDqpOgpG+5rwl9iU6XlSi3TiEXfJUxdf28vISPHAEpVsJhA+q/P8vHZLagBVb
         NW4xQA3mPStQ0qXzSUAP7zMyAzQxY5fkzOb/V0WXhVC5LdrDu5Ev9SpgBPfsbchEs97m
         WFdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KKem5FVu;
       spf=pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=saeed@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u21si247238vkn.2.2021.03.11.14.48.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 14:48:55 -0800 (PST)
Received-SPF: pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 68EE164F26;
	Thu, 11 Mar 2021 22:48:53 +0000 (UTC)
Message-ID: <3bcd5407728640109a1868b2425132461cacc6fc.camel@kernel.org>
Subject: Re: [PATCH] net/mlx5e: allocate 'indirection_rqt' buffer dynamically
From: Saeed Mahameed <saeed@kernel.org>
To: Tariq Toukan <ttoukan.linux@gmail.com>, Arnd Bergmann <arnd@kernel.org>,
  Leon Romanovsky <leon@kernel.org>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Tariq Toukan
 <tariqt@nvidia.com>, Noam Stolero <noams@nvidia.com>, Tal Gilboa
 <talgi@nvidia.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <ndesaulniers@google.com>, Roi Dayan <roid@nvidia.com>,
 Vlad Buslov <vladbu@nvidia.com>, Paul Blakey <paulb@nvidia.com>, Oz Shlomo
 <ozsh@mellanox.com>, Eli Cohen <eli@mellanox.com>,  Ariel Levkovich
 <lariel@nvidia.com>, Maor Dickman <maord@nvidia.com>, Tariq Toukan
 <tariqt@mellanox.com>,  netdev@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com
Date: Thu, 11 Mar 2021 14:48:52 -0800
In-Reply-To: <31a031b3-e44e-66cb-a713-627be1f64ff6@gmail.com>
References: <20210308153318.2486939-1-arnd@kernel.org>
	 <31a031b3-e44e-66cb-a713-627be1f64ff6@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: saeed@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KKem5FVu;       spf=pass
 (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=saeed@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 2021-03-08 at 18:28 +0200, Tariq Toukan wrote:
>=20
>=20
> On 3/8/2021 5:32 PM, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >=20
> > Increasing the size of the indirection_rqt array from 128 to 256
> > bytes
> > pushed the stack usage of the mlx5e_hairpin_fill_rqt_rqns()
> > function
> > over the warning limit when building with clang and CONFIG_KASAN:
> >=20
> > drivers/net/ethernet/mellanox/mlx5/core/en_tc.c:970:1: error: stack
> > frame size of 1180 bytes in function 'mlx5e_tc_add_nic_flow' [-
> > Werror,-Wframe-larger-than=3D]
> >=20
> > Using dynamic allocation here is safe because the caller does the
> > same, and it reduces the stack usage of the function to just a few
> > bytes.
> >=20
> > Fixes: 1dd55ba2fb70 ("net/mlx5e: Increase indirection RQ table size
> > to 256")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> > =C2=A0 drivers/net/ethernet/mellanox/mlx5/core/en_tc.c | 16
> > +++++++++++++---
> > =C2=A0 1 file changed, 13 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
> > b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
> > index 0da69b98f38f..66f98618dc13 100644
> > --- a/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
> > +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_tc.c
> > @@ -445,12 +445,16 @@ static void
> > mlx5e_hairpin_destroy_transport(struct mlx5e_hairpin *hp)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mlx5_core_dealloc_trans=
port_domain(hp->func_mdev, hp->tdn);
> > =C2=A0 }
> > =C2=A0=20
> > -static void mlx5e_hairpin_fill_rqt_rqns(struct mlx5e_hairpin *hp,
> > void *rqtc)
> > +static int mlx5e_hairpin_fill_rqt_rqns(struct mlx5e_hairpin *hp,
> > void *rqtc)
> > =C2=A0 {
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 indirection_rqt[MLX5E_IN=
DIR_RQT_SIZE], rqn;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 *indirection_rqt, rqn;
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mlx5e_priv *priv=
 =3D hp->func_priv;
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int i, ix, sz =3D MLX5E=
_INDIR_RQT_SIZE;
> > =C2=A0=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0indirection_rqt =3D kzalloc(=
sz, GFP_KERNEL);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!indirection_rqt)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return -ENOMEM;
> > +
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mlx5e_build_default_ind=
ir_rqt(indirection_rqt, sz,
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 hp->num_channels);
> > =C2=A0=20
> > @@ -462,6 +466,9 @@ static void mlx5e_hairpin_fill_rqt_rqns(struct
> > mlx5e_hairpin *hp, void *rqtc)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0rqn =3D hp->pair->rqn[ix];
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0MLX5_SET(rqtc, rqtc, rq_num[i], rqn);
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(indirection_rqt);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> > =C2=A0 }
> > =C2=A0=20
> > =C2=A0 static int mlx5e_hairpin_create_indirect_rqt(struct mlx5e_hairpi=
n
> > *hp)
> > @@ -482,12 +489,15 @@ static int
> > mlx5e_hairpin_create_indirect_rqt(struct mlx5e_hairpin *hp)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MLX5_SET(rqtc, rqtc, rq=
t_actual_size, sz);
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0MLX5_SET(rqtc, rqtc, rq=
t_max_size, sz);
> > =C2=A0=20
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mlx5e_hairpin_fill_rqt_rqns(=
hp, rqtc);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D mlx5e_hairpin_fill_r=
qt_rqns(hp, rqtc);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (err)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0goto out;
> > =C2=A0=20
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0err =3D mlx5_core_creat=
e_rqt(mdev, in, inlen, &hp-
> > >indir_rqt.rqtn);
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!err)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0hp->indir_rqt.enabled =3D true;
> > =C2=A0=20
> > +out:
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kvfree(in);
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
> > =C2=A0 }
> >=20
>=20
> Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
> Thanks for your patch.
>=20
> Tariq

Applied to net-next-mlx5
Thanks!


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3bcd5407728640109a1868b2425132461cacc6fc.camel%40kernel.o=
rg.
