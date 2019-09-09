Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO4B3PVQKGQE6B2T4CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1ABAE030
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 23:14:36 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id v133sf6215925oia.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 14:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568063675; cv=pass;
        d=google.com; s=arc-20160816;
        b=YSBWYOg12wbsYzE0+4f0x2dQjBxg/QAIF/6Iwxt1KDwkn9kIRme5RvPdayhCMls9W9
         XwniMmmBegPqJiAxtmI5sg/lNPd+iL/KCjjW/kfIaD1CV8utg+OmM3TIOVgvF9HRlmEq
         6h5HkPVZBGYF4OX+yEAxS/3Z1Mtu1f7G3RFo1VnmBo9KXP7Hw2TYC3ktAMTcLoZKC9Vg
         TxZ+sbmpQ59ayZ2oL8mgtZM2M8XML0baL1f288RA55erL+/ThALYy8pVTioipUpNL/4b
         gkPLPKZTKgrVIfbbgPDoxswRimgxbvHxBqCyNDeE2+DY8fSsdPOEfObXDmhco5NUJyTo
         NLkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OYNILez24F8GvlKQQqW5GpFvRsD/TYV71KrPPeTUkYw=;
        b=mDWqEr6RaK/ntcbZzFQRmWGrfc/XgOuJo5ABPuavwri/WlJ/4/RQA/Tt0KOTao9zQ7
         xcYaQrgXf238zdVHGl3eOc6D+y6tKVkhYwyruYwqSKuudqqCS0kQXO0C5rSF4Nh/qAmp
         mO2tPZhvCVOA1k38n71/XmVKgild8b4Nk553Op6M/tJbEo4Zd8axBb33KSr2UtWl1d3j
         Z+LoCX9xx1liXJ4YvjcAd7J9IceSlehkSqnMyB6tYhHOOl5GsCqrGcAXrrhCICrQKD2J
         wY+Ulpx/Q2+Nwb36W0N3/SYzzTbOGETcfq/QzF7FI+Vk0C/q5vfFWbB5huhMx/h345cw
         Z2iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="n/dhLxtI";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OYNILez24F8GvlKQQqW5GpFvRsD/TYV71KrPPeTUkYw=;
        b=H28ACrfZfDjq/WJPjES48p50XCjA2lAkopf31njnuZIBoiWUeo8QkiTNgLtlSGykpH
         IKey99ksvJPeVl8sxbYEbc8z8gfuRDjodpaThatK8OweWV0MdMLDp68GkqZpBW7RdB31
         OcsjyTpWzC5FnpAUm9Hp3EqVe4EVZ2CJWcT06W5oYM5diJeRdgIKGuxaAgMNdJNgWHmo
         iq8NCWX/RtmlnAuw8agcUOIbyuQ/E6mnNBbPbDzEgIemai9reyl7Oj0LDleUCHK6gUrK
         SoHZSkTo1l8a9gMBOvhBtXhWTbeyaIGv8GQy0f9XeNZIYPteI11h9XgQzLfaWjDlc7US
         gZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OYNILez24F8GvlKQQqW5GpFvRsD/TYV71KrPPeTUkYw=;
        b=PyGdyzTJ6l6qYFb0ZZ3OtdJ3ef8HPtPcMavt2Ga4e568X9/V0UZThQkjQpJNRnBqQ1
         CEL4SclNeGnVJaVHHbuTZuk/NUBfP9tLpnzoNf6QX3g7+2vGxOWNIqzjb0jAAGl98b15
         HhvlyaBkdYhxpbPXCx+7hvwcv47Nu1Og0zZYbslk/RgT0V37gjCOAa+CzayScN+rxI3t
         SWFjuI98AnlgfuZeCYhSVX2i6upIjT7XVWMWhbrjx5CbUHsCifnTlSUAN4NOdYn+u+fx
         Z1blfoOl8MusWW/DeqXx34xDPx3upl6wZzCv+CRnJ8kcBnEncnh/THRiFOAUWhWYrq2M
         7KEQ==
X-Gm-Message-State: APjAAAXvAV49QnC0Ju71iAsbiEnSVzMquL0JFJJ5YBcA29+saAl58qwH
	CBtUkjUezuxov1xFb2wWi4E=
X-Google-Smtp-Source: APXvYqwiyQXprsa1OktF7uANmwOS2Z48v3acpjv/gmcuaqa2zfdrrKTWAgud//J5TZTZLUXacFRVkw==
X-Received: by 2002:a9d:200c:: with SMTP id n12mr22566299ota.334.1568063675191;
        Mon, 09 Sep 2019 14:14:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:200d:: with SMTP id e13ls3074687otp.2.gmail; Mon,
 09 Sep 2019 14:14:34 -0700 (PDT)
X-Received: by 2002:a9d:5a85:: with SMTP id w5mr22062840oth.302.1568063674956;
        Mon, 09 Sep 2019 14:14:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568063674; cv=none;
        d=google.com; s=arc-20160816;
        b=nO3IZZtpyAMRvmXoEGf8/KwNes59lIiEM+BrkG56uw+j3kMFKIKqVn+4mETUwo+1xz
         CdK0oPXyftB7brYzsCsYteFX5f2z9pQDsp6MfyPhRmssghkJ+aYR27XoOGZJPRFNO1WL
         CDEjv7ei9ji0cgb7bdOF7o8KIuTgnGHGvXW3xCOhmR4lB8I7bdGM8GR/hlS6xQyABNuk
         vRrwAvszkvS106OsgqFGkFPPgF5cE0lEIRDv9NQHEH+fYzR9Em08b72y/0eESXM5rqiW
         wkDKgmDbMSX4jnqj1pftHn+3qcI3k/yvQ6cZVc7Yx03SO0JdLNnrTuzMLM526d8NFMcN
         SHMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SWyrMvKoZeJUW2jP4aEz7GUGLNj1qlvRlvfndO0mMoU=;
        b=VGYNPFHlQ+1kEeXkiEHvjZ6a00TrgzhKj+qx66x7A93yIADPxGBKBTjExJY/hUc6p9
         6EUziizoHm/cxk/eFX04GwbMoPoZMKV0LrZn1/GjijcltYnSEZOxq7lEDtuysvrTt2HE
         zpOknim9z3TbwmpG/F8DAnMIwt2wbUyPV8wfzi1fZkDyLQnGF0BvqIGJwot9ZAiMqaaH
         JBfKGr6L2PvCdr3n3uFLi5LPdWx+w71nMeOwIOWZYhCrDdqw1GyTcI75BXO7hsDuKRta
         dzTr6ymngVaYLXODGITkm/6RSKgjQz5dV/tOe94HrSbUTo16fv6iuOrbHw1ld8iuJ22k
         Bn1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="n/dhLxtI";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c12si797506oic.4.2019.09.09.14.14.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 14:14:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id u17so8550255pgi.6
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 14:14:34 -0700 (PDT)
X-Received: by 2002:a63:6193:: with SMTP id v141mr24350262pgb.263.1568063673765;
 Mon, 09 Sep 2019 14:14:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190909195024.3268499-1-arnd@arndb.de> <20190909195513.GA94662@archlinux-threadripper>
In-Reply-To: <20190909195513.GA94662@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Sep 2019 14:14:23 -0700
Message-ID: <CAKwvOdn5pR_j=NEUtrVSS_uZYtdwVuPAAd6CqF1BOL8akSFhcQ@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] mlx5: steering: use correct enum type
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Saeed Mahameed <saeedm@mellanox.com>, 
	Leon Romanovsky <leon@kernel.org>, "David S. Miller" <davem@davemloft.net>, Alex Vesker <valex@mellanox.com>, 
	Erez Shitrit <erezsh@mellanox.com>, Mark Bloch <markb@mellanox.com>, 
	Network Development <netdev@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="n/dhLxtI";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Sep 9, 2019 at 12:55 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Sep 09, 2019 at 09:50:08PM +0200, Arnd Bergmann wrote:
> > The newly added code triggers a harmless warning with
> > clang:
> >
> > drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c:1080:9: error: implicit conversion from enumeration type 'enum mlx5_reformat_ctx_type' to different enumeration type 'enum mlx5dr_action_type' [-Werror,-Wenum-conversion]
> >                         rt = MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL;
> >                            ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c:1084:51: error: implicit conversion from enumeration type 'enum mlx5dr_action_type' to different enumeration type 'enum mlx5_reformat_ctx_type' [-Werror,-Wenum-conversion]
> >                 ret = mlx5dr_cmd_create_reformat_ctx(dmn->mdev, rt, data_sz, data,
> >                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~            ^~
> >
> > Change it to use mlx5_reformat_ctx_type instead of mlx5dr_action_type.
> >
> > Fixes: 9db810ed2d37 ("net/mlx5: DR, Expose steering action functionality")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> I sent the same fix a couple of days ago:
>
> https://lore.kernel.org/netdev/20190905014733.17564-1-natechancellor@gmail.com/
>
> I don't care which patch goes in since they are the same thing so:
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

GCC recently gained support (via me scanning the commit logs for an
unrelated feature) for -Wenum-warnings (though I think it's off by
default) so hopefully these kinds of issues will taper off over time.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn5pR_j%3DNEUtrVSS_uZYtdwVuPAAd6CqF1BOL8akSFhcQ%40mail.gmail.com.
