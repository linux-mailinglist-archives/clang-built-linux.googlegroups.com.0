Return-Path: <clang-built-linux+bncBCV3JPPW7MGRBUPZ2KSQMGQE7AFPXKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 02270755A63
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Jul 2023 06:00:19 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 41be03b00d2f7-55be4f03661sf3251761a12.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Jul 2023 21:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1689566418; cv=pass;
        d=google.com; s=arc-20160816;
        b=J85Lod5MjqEiOQsxDT5sNMkssuzSc3vFMSilyeHTUdg38oJPyRWAg9+euB94t+xHNK
         +m+UHOnfA0NOfZn94O4+VkvGt74KNKmCO7KqqnqxkgOcoQQVlQGBq1B5WJCe95KpNk2H
         m74T0tERbW6JuUkc/Y2tVQV4poy+o1Wi0tB8KY2SpNRY+s3HcY/iLf/vaa2YWhxsFzX2
         Wzcw6pVM3tgPIENqeoBtiVMq/e+ckmz1r4sOVQleMzQOK6QxGmFRN+ZwvZPSxwOTIQZa
         bC9nhifu0QE/aGRHkj3Pope8vl2CTGluqrgTPGKhrYI1v7KymvML/IaEbmCbf+HxYv/t
         6Yag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=a3eDRkFrpqMHiMY0sBl4cZGTI3wkhXtcl3WI1pP9CRs=;
        fh=Gn0za9IofUvY0cbWKtLXOOTigPnPl+k87XX8KYQTmTs=;
        b=RAXINpm8gJwnO+fRBVPNfgUcLFhDE/qKWlSuqFGSzADSv4zvMvmNVl3WNzPsRAuNtO
         ysUgPSLPxIhHunRyMw/CfO/ivzTY1oS37pHvkcW+dBNCxkwiBvPCNQJNSVXd60BG3LTs
         K8KwioulFLYPqY/ZS3GjCBVohmcWX4u+YAli5r5+8qurrX5reXIi3qbq/2dQmjR2CrjI
         KTY7Gvl87t4jjF6YFnHb54M9G/GopHFlykZhmj19fyN3O+iT7rMRnvM4+m2q5gBn/FSw
         COc6FXLarJzf1sBK6+X0yNiHtasAoZ6+8JXB+TEg/TGdVTvDUMjPQ5uIPJ29NeoFs98S
         1rpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DeAi7UPa;
       spf=pass (google.com: domain of fshao@chromium.org designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=fshao@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689566418; x=1692158418;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a3eDRkFrpqMHiMY0sBl4cZGTI3wkhXtcl3WI1pP9CRs=;
        b=ZRWWkfP8X9YZ/nj6FZrmzcUf6vFCvsjJbAjPF8QFSbLSOIhVdOtTSfib+J1etmqjnF
         qhwQykhXDTue3vcfG37WdbkfRbFDtcEs8mL+6RSn+t5OI0pp/yTpRQo3Am3/BLIzJD/8
         o34676SCzApW9EH4fhYFCS7/6EBWHbsTlA1+6CjUCRZUGoysDUCFASYnChe2qtnI1jZ+
         S9J8pqjB1cDLDdPsy4Z1D8wHcR26nPA3sfLQOK4JM3PIeid67LL1kuC2fP+EXdAwSWbw
         E9T9yf7n/4SHLdlqqbeOzzKBv1Je8EKlpAKQA6T7NNdR574SfBA0GLg9+ftw3FgM3gjp
         kZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689566418; x=1692158418;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=a3eDRkFrpqMHiMY0sBl4cZGTI3wkhXtcl3WI1pP9CRs=;
        b=YBA7mFgUtx075Ett+bnJAZyIfe67J+K/fDWMWkj5iz8j68PHCmJQ/zaSK6gHNV3Mw4
         ukUOTMgiHUTti8//b8kym/hBhjx5PqUWXKnHzTpMUtVvu8MzaFSnLxbUSnYgosAK0JJt
         /vpAJVPxtX/EUczdzXoY6j1poC/FKPnC0hv+9y6IdbmxOhvfgzcVsSQ+RF3hRN3UXtdu
         QOhk5Wha3+BZUUzsO6iqeHFy/7Hf7k7ilg5O5hPrbkhVLZwagNP9OP0zR67Zos6ObyaT
         XkfndHxIymGrDebJtKQr0EXjgsHWE6jSUdJ4rX24j5QwudRRI0xDGmDjY30AIdCj6Yyu
         B0hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ABy/qLbH8iN6PQnJnMXsJVTWdvOfMroFw/5f5pXJJkAOZaxzNs642yyG
	tE8TWavUIdDypeFlZyidZSU=
X-Google-Smtp-Source: APBJJlHq5IFDqEgIgfpb/g5bQJtHHy3ZVomlt73J4fNOXHj2zzC6ybFAmcwntikLbHLE0gIAialq3Q==
X-Received: by 2002:a05:6a20:1603:b0:134:8d7f:f4d9 with SMTP id l3-20020a056a20160300b001348d7ff4d9mr4223524pzj.52.1689566417774;
        Sun, 16 Jul 2023 21:00:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9d8f:0:b0:669:ebfa:6b19 with SMTP id f15-20020aa79d8f000000b00669ebfa6b19ls2377559pfq.2.-pod-prod-03-us;
 Sun, 16 Jul 2023 21:00:16 -0700 (PDT)
X-Received: by 2002:a05:6a00:2451:b0:682:4c9f:aa0 with SMTP id d17-20020a056a00245100b006824c9f0aa0mr14690631pfj.29.1689566416841;
        Sun, 16 Jul 2023 21:00:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1689566416; cv=none;
        d=google.com; s=arc-20160816;
        b=oJNVHDH7KYXPfMnn78TrSMCP4WuMVuvdZiDmdHjFDYkARmxWX0JPxD4B0WAV1nv2UJ
         6TRdYrjVaSiFP4PzcGqmKXG2HywnO7K/N+gF8NwN3X87vJmnpDNEvnuOtm5I0VkwCJJ5
         62UhykGTIEZTgrd5WX4BuEcnMh6QuoWITewBMyhSjrVtoNbracIj8hWglz37h9z0JhYa
         oAbj46X7FbZ0Eahy9zlVJIDWhvPeQuCgMIP1btQ0+B9P5vhwFhQivDcNeqaygYfmPIdb
         KizDpIv6Gsxq2spPlmtFBqyv4nET6/70+OXQ21GCNVldw2Bn1kHwhMRV6IgwNNUg/g8D
         je2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rane9LymWOzuf5nVdxKmicrrVi/5Plm4e1af1OJmuGo=;
        fh=Gn0za9IofUvY0cbWKtLXOOTigPnPl+k87XX8KYQTmTs=;
        b=Mr/pI47jz9pdJdFHntJIzP8MI7YX24BfSdtGUn/T5tb0blPrz3O927Aq7mu3ajMAKU
         Cszq1YYWyT24WlhZ6zyQJSo97I0vbQBA0WTTWtzaN3UlrQOlltuiv8pG22AKqpe25Ihc
         pLVSxCRPcZ29NPbUQxHoZPz1n5ZxtMTJFXLzO5006XE/Yh/Bf0nylCNOFIuZJfVdPVz0
         6OiheM8DPXOCWpOuG6euz6eq4TlV/C2E1Od5GFuuEjxWQI9lULNkt5GZ42dpU2us0UaP
         KS/pzago1BcLSgRfms7QXmqp4WWXISOzB3DVHhJl4QV4t4C7MslQR3O/JI9NBlRGckiY
         vPkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DeAi7UPa;
       spf=pass (google.com: domain of fshao@chromium.org designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=fshao@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id t38-20020a056a0013a600b006819db556a2si1511621pfg.3.2023.07.16.21.00.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Jul 2023 21:00:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of fshao@chromium.org designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-78360b822abso160890839f.2
        for <clang-built-linux@googlegroups.com>; Sun, 16 Jul 2023 21:00:16 -0700 (PDT)
X-Received: by 2002:a6b:da07:0:b0:783:49ec:8115 with SMTP id x7-20020a6bda07000000b0078349ec8115mr10213063iob.5.1689566416124;
        Sun, 16 Jul 2023 21:00:16 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com. [209.85.166.45])
        by smtp.gmail.com with ESMTPSA id w18-20020a5d9cd2000000b00784315b7f86sm4407662iow.24.2023.07.16.21.00.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Jul 2023 21:00:15 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-78666f06691so161850039f.0
        for <clang-built-linux@googlegroups.com>; Sun, 16 Jul 2023 21:00:15 -0700 (PDT)
X-Received: by 2002:a5e:890a:0:b0:77e:288d:f3c1 with SMTP id
 k10-20020a5e890a000000b0077e288df3c1mr9803357ioj.6.1689566414860; Sun, 16 Jul
 2023 21:00:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230421021609.7730-1-nancy.lin@mediatek.com> <ae96299cffaacdbf51beae96e3a257c95a04ac95.camel@mediatek.com>
In-Reply-To: <ae96299cffaacdbf51beae96e3a257c95a04ac95.camel@mediatek.com>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 17 Jul 2023 11:59:38 +0800
X-Gmail-Original-Message-ID: <CAC=S1njEG2sV28XAWDw8FoQ0p5w=-sU4i+D-ESfapHMQC1ZW3Q@mail.gmail.com>
Message-ID: <CAC=S1njEG2sV28XAWDw8FoQ0p5w=-sU4i+D-ESfapHMQC1ZW3Q@mail.gmail.com>
Subject: Re: [PATCH v2] drm/mediatek: fix uninitialized symbol
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Cc: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	=?UTF-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, 
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	=?UTF-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>, 
	Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: fshao@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DeAi7UPa;       spf=pass
 (google.com: domain of fshao@chromium.org designates 2607:f8b0:4864:20::d2b
 as permitted sender) smtp.mailfrom=fshao@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi CK,

On Fri, Jul 14, 2023 at 5:27=E2=80=AFPM CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89)=
 <ck.hu@mediatek.com> wrote:
>
> Hi, Nancy:
>
> On Fri, 2023-04-21 at 10:16 +0800, Nancy.Lin wrote:
snip
>
> In line 566, the statement is
>
> if (nodo) {
>         comp_pdev =3D ...
> }
>
> The comment says that only ovl_adaptoer has no device node, so the
> checking should be
>
> if (type !=3D MTK_DISP_OVL_ADAPTOR) {
>         comp_pdev =3D ...
> }
>
> and later it would return when type =3D MTK_DISP_OVL_ADAPTOR,
> so there would be no problem of uninitialized symbol.

That sounds fair, but IIUC what Nancy tries to resolve here is the
false-positive Smatch warning.
How about this: given the `if (node)` block was exclusively added for
ovl_adaptor in [1], plus the init function will immediately return
after that in this case, it should be safe to do the following

```
/* Not all drm components have a DTS device node... */
if (node =3D=3D NULL)
    return 0;

comp_pdev =3D of_find_device_by_node(node);
...

if (type =3D=3D MTK_DISP_AAL ||
...
```

which is equivalent to adding a `node =3D=3D NULL` check before [1].
This should suppress the Smatch warning because `comp_pdev` will be
(again) unconditionally assigned to something, and the `type =3D=3D
MTK_DISP_OVL_ADAPTOR` line can be dropped also (optional?).

[1]: commit 0d9eee9118b7 ("drm/mediatek: Add drm ovl_adaptor sub
driver for MT8195")

Regards,
Fei

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAC%3DS1njEG2sV28XAWDw8FoQ0p5w%3D-sU4i%2BD-ESfapHMQC1ZW3Q=
%40mail.gmail.com.
