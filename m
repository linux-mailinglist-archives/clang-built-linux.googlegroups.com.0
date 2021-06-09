Return-Path: <clang-built-linux+bncBAABBFW4QCDAMGQE7KE4QXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE763A0A5E
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 04:57:27 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id k14-20020a92b70e0000b02901ed867bd16fsf1814177ili.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 19:57:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623207446; cv=pass;
        d=google.com; s=arc-20160816;
        b=iUpsYig5B2A1cCvWY7276GfP/jQTX3ilvX36N/OzgDnftXG3lOgh8c8beZBe3q1EzL
         GtLOd1NoaETrQMloPxXOKcENy5k1vcPKZmZSdrTyCPtzgLAoC3mLJwZrG1ETcqz1C8/H
         VX4QtFyW0so+jUNCOCFDzlxt3SQ/WPeJDXwWTQdErZi0YYD4q1ceYKDiDPa2johFetEF
         4xsRA9rMLnzPjDugrCTfp7vwhQU+FScjQzp1/Ju2FYbRpbD01/jGsyKYn5FjgsBdYzYI
         52+xDTVDz5PUsE0G5a6ggYVAF/V/P3d6HIn2wyuqNN5mRo4yiHEr4gBQ7vmbm6sa3dRR
         Rt7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:references:mime-version
         :subject:message-id:reply-to:cc:to:from:date:sender:dkim-signature;
        bh=3rqOBkI/yeOYsm+yHx9wZs5kKr8r7XFUOXEmGUYzt3E=;
        b=NhLJ5bvn2xp7zN0eHovia8fu2VVRQJilpihU3PkqMu/BNV1osJtuVucfU5Gmbw86F4
         zmFJEuhkqf55FaHAjO3vln8p2fTwhiamNCyP+kNzuqjwsYaALXUd55ltYZAzxjdFm6qx
         hXKgDKVK/V5jk1rXgB/6AX6/gKfaWOwDCn7SiGf2STrk2aNf3gxt+ovgyxBW02MpMcxL
         EiinUL+1IvCOflacReMh+5Js2OExL4JUoGxHgvs6FKKkrtlud6AEbSLzpDet/npLYIsC
         YtXirK1FJVm3jNXkVGaUHiXQ6AJvBIf/gQR/4y3asVs+yLY839iVgx2VP7S0OnkQZh4+
         wURg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:reply-to:message-id:subject:mime-version
         :references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3rqOBkI/yeOYsm+yHx9wZs5kKr8r7XFUOXEmGUYzt3E=;
        b=gfg5PBnz3veHqWcY7J9eco4qkxuUBXS30iyN3DKzMd+Zqkp+yXCAAZC8vRj2gx87Ni
         /77FHxtkifkhESgJe2SydQk6DzpuevrZPgM/PfmP8Mr8BfemML7PTGZ1aqDTmf0JYvd2
         PURP2fyX4fVGagWM+jjH5LADYWM9vmsIgfLtVX2aW0cjMoj3shaSJkGsvvhi6acA2pKd
         n5e+qbrXoR4NBaj9wd0lxos9JpOELd7NRV4qnhOVtH1+7p58zwFWJ/IRTw6MYCHo4Z8O
         HVOv3xksVkz5mqDOhJ2hGWv+19dW7vZRKKYNtf4th6aWm3gbSbPri877RbvY+7l8EKcD
         aOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:reply-to:message-id
         :subject:mime-version:references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3rqOBkI/yeOYsm+yHx9wZs5kKr8r7XFUOXEmGUYzt3E=;
        b=EIpXyGnRQiSac2RXpGH6hjdNLs5NmZNteclrixRXquRUIrWGVknCcQDxwlifiC+k3Z
         aLCse1TQRvjgyCYmoHoegN+oRWT8cksX76XYxetw3ueeY3tTN70aTMgVyOZ9Xudyk58k
         5RRk0hA5i+W1PM1H6dbgoKe2MuRs4fyCkjZmeb2g1uD3fwwgWDBsDNnvpWW0cBfusiEo
         yQYv6EHT3fGrNop6S6PUZwINyzW44f+mjiMxXHqiG1dq+ydMT8f1meQzeuQBcgHH7plH
         rIE6WQVpDQT6IWQ8udFmuWn1ua9PbxGZrErhgW3aJZ7hwPUg/fpljMkTxikWY7Gc+f1d
         gLCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vaYOYTVMNsLZv14T8PP5koylekmN8yX5MkWF8MFj96o3yLONN
	tt8qdscyqFh8m65J2FTayJ0=
X-Google-Smtp-Source: ABdhPJw/pKAhQhAJNwL9LmORV2KcRIR1II2dkRN5jrq9D6j8XO0xYpbc060Z5k3HrOsH8103eDZlAA==
X-Received: by 2002:a92:d145:: with SMTP id t5mr8918611ilg.292.1623207446109;
        Tue, 08 Jun 2021 19:57:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:68a:: with SMTP id o10ls264158ils.3.gmail; Tue, 08
 Jun 2021 19:57:25 -0700 (PDT)
X-Received: by 2002:a92:a302:: with SMTP id a2mr21775679ili.184.1623207445761;
        Tue, 08 Jun 2021 19:57:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623207445; cv=none;
        d=google.com; s=arc-20160816;
        b=DLdD3g+2XR31+l3OzH+c6JaAo2un8T+NztVyQOhE3N5zJzsEHeHH4Y6YGuhsHqndYX
         IHU/mihOeYWkQaWtZVPa68Qg54AtT/mUSvnWAQPCnm+Ocz1KjRuvgHezLYiGP2PqV2kk
         9lslUWXCZMnLoXTkIVSIQ/Aea+5ShQwhDJtHIi/nD5dX4XpZ2EAY+3Se8xYhflmfwfwh
         xyr6o8RNvrp1odwZ8mvR+GJco04PdOHCfo3KHXBZR2NdliZ6K2gksD0L3yYjyuQ8vtrn
         OG9KW0YxT49uf3YlmdGXx5hvOpl2lDO7sD0H3maxz59f4MJRq+NvCDLvIDCU6Ki8Noto
         R2vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:references:mime-version:subject:message-id:reply-to:cc
         :to:from:date;
        bh=Cd5W1awqaVvyo5NSAlPoqvFkNVssqMe8Ye0xegESugI=;
        b=Wo2/kNBdPMgJqWRcWRTQCLnL5xuGUWYepN6agpmu1szD+omCYUlWFgGlpMjgrt8Gcl
         XIYXYCcjED8mZNAPDdD4uVw/Ij/F2NPw+Y0z2+T9F4hDF+gUiDp3EFzc7mS5sCC/JYnA
         xBicrZFZ+QGQ66/NjKrefTyHqq4Q7t94pmiZCAGkcslKSvWsKsl6jJ78BpdDDBHr3VW6
         WPvkj4KcvySlYfwaHNlvKMd+IpYDorKpj8YRDbm8Cw3d1hiib1D2AwKbk4QA1Ppp3KDf
         aBgRH8ZjAqItHMdv1nC6Vush7Ny+25gIXUrUjCjC8JIrY4CATtu1LGHE1PIIfpMmkSUT
         mvWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-43.freemail.mail.aliyun.com (out30-43.freemail.mail.aliyun.com. [115.124.30.43])
        by gmr-mx.google.com with ESMTPS id f9si190193iop.1.2021.06.08.19.57.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 19:57:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) client-ip=115.124.30.43;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R221e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=yang.lee@linux.alibaba.com;NM=1;PH=DW;RN=10;SR=0;TI=W4_6173578_DEFAULT_0AC264CA_1623207392218_o7001c1522;
Received: from WS-web (yang.lee@linux.alibaba.com[W4_6173578_DEFAULT_0AC264CA_1623207392218_o7001c1522]) by e01f04446.eu6 at Wed, 09 Jun 2021 10:57:22 +0800
Date: Wed, 09 Jun 2021 10:57:22 +0800
From: "Yang.Lee" <yang.lee@linux.alibaba.com>
To: "Nick Desaulniers" <ndesaulniers@google.com>
Cc: "hyun.kwon" <hyun.kwon@xilinx.com>,
  "Laurent Pinchart" <laurent.pinchart@ideasonboard.com>,
  "Vinod Koul" <vkoul@kernel.org>,
  "Michal Simek" <michal.simek@xilinx.com>,
  "Nathan Chancellor" <nathan@kernel.org>,
  "dmaengine" <dmaengine@vger.kernel.org>,
  "Linux ARM" <linux-arm-kernel@lists.infradead.org>,
  "LKML" <linux-kernel@vger.kernel.org>,
  "clang-built-linux" <clang-built-linux@googlegroups.com>
Reply-To: "Yang.Lee" <yang.lee@linux.alibaba.com>
Message-ID: <e0315bca-fbf0-480a-b9fa-40abe162c73d.yang.lee@linux.alibaba.com>
Subject: =?UTF-8?B?5Zue5aSN77yaW1BBVENIXSBkbWFlbmdpbmU6IHhpbGlueDogZHBkbWE6IGZpeCBrZXJuZWwt?=
  =?UTF-8?B?ZG9j?=
X-Mailer: [Alimail-Mailagent revision 2546561][W4_6173578][DEFAULT][Chrome]
MIME-Version: 1.0
References: <1623145017-104752-1-git-send-email-yang.lee@linux.alibaba.com>,<CAKwvOdkhQrnunYDtGPvyfMcjW-yMihQQZY_8VYLbD3+Y5pHryA@mail.gmail.com>
x-aliyun-mail-creator: W4_6173578_DEFAULT_TCwTW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzkwLjAuNDQzMC4yMTIgU2FmYXJpLzUzNy4zNiBFZGcvOTAuMC44MTguNjY=FR
In-Reply-To: <CAKwvOdkhQrnunYDtGPvyfMcjW-yMihQQZY_8VYLbD3+Y5pHryA@mail.gmail.com>
Content-Type: multipart/alternative;
  boundary="----=ALIBOUNDARY_18561_7f878639c940_60c02e12_e74a6"
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

------=ALIBOUNDARY_18561_7f878639c940_60c02e12_e74a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We test on linux-next, and the original report is shown in commit.

"drivers/dma/xilinx/xilinx_dpdma.c:935: warning: expecting prototype for xi=
linx_dpdma_chan_no_ostand(). Prototype was for xilinx_dpdma_chan_notify_no_=
ostand() instead."

In fact, we see this warning when we run "make W=3D1 LLVM=3D1".
As the discussion in https://lore.kernel.org/patchwork/patch/1442639/, this=
 warning is generated by kernel-doc (maybe because we use W=3D1?), rather t=
han clang (LLVM=3D1).
We will fix description in commit and send V2.

Thanks for your review.
------------------------------------------------------------------
=E5=8F=91=E4=BB=B6=E4=BA=BA=EF=BC=9ANick Desaulniers <ndesaulniers@google.c=
om>
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4=EF=BC=9A2021=E5=B9=B46=E6=9C=889=E6=97=
=A5(=E6=98=9F=E6=9C=9F=E4=B8=89) 02:44
=E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=9AYang Li <yang.lee@linux.alibaba.com>
=E6=8A=84=E3=80=80=E9=80=81=EF=BC=9Ahyun.kwon <hyun.kwon@xilinx.com>; Laure=
nt Pinchart <laurent.pinchart@ideasonboard.com>; Vinod Koul <vkoul@kernel.o=
rg>; Michal Simek <michal.simek@xilinx.com>; Nathan Chancellor <nathan@kern=
el.org>; dmaengine <dmaengine@vger.kernel.org>; Linux ARM <linux-arm-kernel=
@lists.infradead.org>; LKML <linux-kernel@vger.kernel.org>; clang-built-lin=
ux <clang-built-linux@googlegroups.com>
=E4=B8=BB=E3=80=80=E9=A2=98=EF=BC=9ARe: [PATCH] dmaengine: xilinx: dpdma: f=
ix kernel-doc

On Tue, Jun 8, 2021 at 2:38 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> Fix function name in xilinx/xilinx_dpdma.c kernel-doc comment
> to remove a warning found by clang(make W=3D1 LLVM=3D1).
>
> drivers/dma/xilinx/xilinx_dpdma.c:935: warning: expecting prototype for
> xilinx_dpdma_chan_no_ostand(). Prototype was for
> xilinx_dpdma_chan_notify_no_ostand() instead.

xilinx_dpdma_chan_notify_no_ostand has static linkage, clang shouldn't
be emitting such a warning for this function.  Which tree was Abaci
run on? Do you have the original report? This warning doesn't look
right to me.

Again, the diff seems fine, but the commit message does not.

>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/dma/xilinx/xilinx_dpdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/dma/xilinx/xilinx_dpdma.c b/drivers/dma/xilinx/xilin=
x_dpdma.c
> index 70b29bd..0c8739a 100644
> --- a/drivers/dma/xilinx/xilinx_dpdma.c
> +++ b/drivers/dma/xilinx/xilinx_dpdma.c
> @@ -915,7 +915,7 @@ static u32 xilinx_dpdma_chan_ostand(struct xilinx_dpd=
ma_chan *chan)
>  }
>
>  /**
> - * xilinx_dpdma_chan_no_ostand - Notify no outstanding transaction event
> + * xilinx_dpdma_chan_notify_no_ostand - Notify no outstanding transactio=
n event
>   * @chan: DPDMA channel
>   *
>   * Notify waiters for no outstanding event, so waiters can stop the chan=
nel
> --
> 1.8.3.1
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e0315bca-fbf0-480a-b9fa-40abe162c73d.yang.lee%40linux.ali=
baba.com.

------=ALIBOUNDARY_18561_7f878639c940_60c02e12_e74a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"__aliyun_email_body_block"><div  style=3D"clear:both;"><span =
 style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#0=
00000;"><span  style=3D"color:#171a1d;font-family:Microsoft YaHei,Segoe UI,=
system-ui,Roboto,Droid Sans,Helvetica Neue,sans-serif,Tahoma,Segoe UI Symbo=
lMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;font-size:14.0px;font-st=
yle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weig=
ht:400;text-align:left;text-indent:.0px;text-transform:none;widows:2;backgr=
ound-color:#ffffff;text-decoration-thickness:initial;text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline;">Hi,</span=
><br  style=3D""><br  style=3D""><span  style=3D"color:#171a1d;font-family:=
Microsoft YaHei,Segoe UI,system-ui,Roboto,Droid Sans,Helvetica Neue,sans-se=
rif,Tahoma,Segoe UI SymbolMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91=
;font-size:14.0px;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;text-align:left;text-indent:.0px;text-trans=
form:none;widows:2;background-color:#ffffff;text-decoration-thickness:initi=
al;text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline;">We test on linux-next, and the original report is shown in =
commit.</span></span></div><div  style=3D"clear:both;"><span  style=3D"font=
-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;"><span =
 style=3D"color:#171a1d;font-family:Microsoft YaHei,Segoe UI,system-ui,Robo=
to,Droid Sans,Helvetica Neue,sans-serif,Tahoma,Segoe UI SymbolMyanmar Text,=
=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;font-size:14.0px;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;text-al=
ign:left;text-indent:.0px;text-transform:none;widows:2;background-color:#ff=
ffff;text-decoration-thickness:initial;text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline;"><br ></span></span></di=
v><div  style=3D"clear:both;"><span  style=3D"font-family:Tahoma,Arial,STHe=
iti,SimSun;font-size:14.0px;color:#000000;"><span  style=3D"color:#171a1d;f=
ont-family:Microsoft YaHei,Segoe UI,system-ui,Roboto,Droid Sans,Helvetica N=
eue,sans-serif,Tahoma,Segoe UI SymbolMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=
=85=E9=BB=91;font-size:14.0px;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;text-align:left;text-indent:.0p=
x;text-transform:none;widows:2;background-color:#ffffff;text-decoration-thi=
ckness:initial;text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline;">"drivers/dma/xilinx/xilinx_dpdma.c:935:&nbsp;wa=
rning:&nbsp;expecting&nbsp;prototype&nbsp;for&nbsp;xilinx_dpdma_chan_no_ost=
and().&nbsp;Prototype&nbsp;was&nbsp;for&nbsp;xilinx_dpdma_chan_notify_no_os=
tand()&nbsp;instead."</span></span></div><div  style=3D"clear:both;"><span =
 style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#0=
00000;"><span  style=3D"color:#171a1d;font-family:Microsoft YaHei,Segoe UI,=
system-ui,Roboto,Droid Sans,Helvetica Neue,sans-serif,Tahoma,Segoe UI Symbo=
lMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;font-size:14.0px;font-st=
yle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weig=
ht:400;text-align:left;text-indent:.0px;text-transform:none;widows:2;backgr=
ound-color:#ffffff;text-decoration-thickness:initial;text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline;"></span><b=
r  style=3D""><span  style=3D"color:#171a1d;font-family:Microsoft YaHei,Seg=
oe UI,system-ui,Roboto,Droid Sans,Helvetica Neue,sans-serif,Tahoma,Segoe UI=
 SymbolMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;font-size:14.0px;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;text-align:left;text-indent:.0px;text-transform:none;widows:2;=
background-color:#ffffff;text-decoration-thickness:initial;text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline;">In =
fact, we see this warning when we run "make W=3D1 LLVM=3D1".</span><br  sty=
le=3D""><span  style=3D"color:#171a1d;font-family:Microsoft YaHei,Segoe UI,=
system-ui,Roboto,Droid Sans,Helvetica Neue,sans-serif,Tahoma,Segoe UI Symbo=
lMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;font-size:14.0px;font-st=
yle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weig=
ht:400;text-align:left;text-indent:.0px;text-transform:none;widows:2;backgr=
ound-color:#ffffff;text-decoration-thickness:initial;text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline;">As the di=
scussion in </span><a  href=3D"https://lore.kernel.org/patchwork/patch/1442=
639/" target=3D"_blank" style=3D"box-sizing:border-box;background:#ffffff;o=
utline:none;transition:color .3s ease .0s;font-family:Microsoft YaHei,Segoe=
 UI,system-ui,Roboto,Droid Sans,Helvetica Neue,sans-serif,Tahoma,Segoe UI S=
ymbolMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;font-size:14.0px;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;text-align:left;text-indent:.0px;text-transform:none;widows:2;te=
xt-decoration:none;">https://lore.kernel.org/patchwork/patch/1442639/</a><s=
pan  style=3D"color:#171a1d;font-family:Microsoft YaHei,Segoe UI,system-ui,=
Roboto,Droid Sans,Helvetica Neue,sans-serif,Tahoma,Segoe UI SymbolMyanmar T=
ext,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;font-size:14.0px;font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;tex=
t-align:left;text-indent:.0px;text-transform:none;widows:2;background-color=
:#ffffff;text-decoration-thickness:initial;text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline;">, this warning is g=
enerated by kernel-doc (maybe because we use W=3D1?), rather than clang (LL=
VM=3D1).</span><br  style=3D""><span  style=3D"color:#171a1d;font-family:Mi=
crosoft YaHei,Segoe UI,system-ui,Roboto,Droid Sans,Helvetica Neue,sans-seri=
f,Tahoma,Segoe UI SymbolMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;f=
ont-size:14.0px;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;text-align:left;text-indent:.0px;text-transfo=
rm:none;widows:2;background-color:#ffffff;text-decoration-thickness:initial=
;text-decoration-style:initial;text-decoration-color:initial;float:none;dis=
play:inline;">We will fix description in commit and send V2.</span><br  sty=
le=3D""><br  style=3D""><span  style=3D"color:#171a1d;font-family:Microsoft=
 YaHei,Segoe UI,system-ui,Roboto,Droid Sans,Helvetica Neue,sans-serif,Tahom=
a,Segoe UI SymbolMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;font-siz=
e:14.0px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;text-align:left;text-indent:.0px;text-transform:none=
;widows:2;background-color:#ffffff;text-decoration-thickness:initial;text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:in=
line;">Thanks for your review.</span></span></div><blockquote  style=3D"mar=
gin-right:.0px;margin-top:.0px;margin-bottom:.0px;"><div  style=3D"clear:bo=
th;"><span  style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0=
px;color:#000000;">--------------------------------------------------------=
----------</span></div><div  style=3D"clear:both;"><span  style=3D"font-fam=
ily:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">=E5=8F=91=
=E4=BB=B6=E4=BA=BA=EF=BC=9ANick Desaulniers &lt;ndesaulniers@google.com&gt;=
</span></div><div  style=3D"clear:both;"><span  style=3D"font-family:Tahoma=
,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">=E5=8F=91=E9=80=81=
=E6=97=B6=E9=97=B4=EF=BC=9A2021=E5=B9=B46=E6=9C=889=E6=97=A5(=E6=98=9F=E6=
=9C=9F=E4=B8=89) 02:44</span></div><div  style=3D"clear:both;"><span  style=
=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;=
">=E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=9AYang Li &lt;yang.lee@linux.alibaba.co=
m&gt;</span></div><div  style=3D"clear:both;"><span  style=3D"font-family:T=
ahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">=E6=8A=84=E3=80=
=80=E9=80=81=EF=BC=9Ahyun.kwon &lt;hyun.kwon@xilinx.com&gt;; Laurent Pincha=
rt &lt;laurent.pinchart@ideasonboard.com&gt;; Vinod Koul &lt;vkoul@kernel.o=
rg&gt;; Michal Simek &lt;michal.simek@xilinx.com&gt;; Nathan Chancellor &lt=
;nathan@kernel.org&gt;; dmaengine &lt;dmaengine@vger.kernel.org&gt;; Linux =
ARM &lt;linux-arm-kernel@lists.infradead.org&gt;; LKML &lt;linux-kernel@vge=
r.kernel.org&gt;; clang-built-linux &lt;clang-built-linux@googlegroups.com&=
gt;</span></div><div  style=3D"clear:both;"><span  style=3D"font-family:Tah=
oma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">=E4=B8=BB=E3=80=
=80=E9=A2=98=EF=BC=9ARe: [PATCH] dmaengine: xilinx: dpdma: fix kernel-doc</=
span></div><div  style=3D"clear:both;"><span  style=3D"font-family:Tahoma,A=
rial,STHeiti,SimSun;font-size:14.0px;color:#000000;"><br ></span></div>On&n=
bsp;Tue,&nbsp;Jun&nbsp;8,&nbsp;2021&nbsp;at&nbsp;2:38&nbsp;AM&nbsp;Yang&nbs=
p;Li&nbsp;&lt;yang.lee@linux.alibaba.com&gt;&nbsp;wrote:<br >&gt;<br >&gt;&=
nbsp;Fix&nbsp;function&nbsp;name&nbsp;in&nbsp;xilinx/xilinx_dpdma.c&nbsp;ke=
rnel-doc&nbsp;comment<br >&gt;&nbsp;to&nbsp;remove&nbsp;a&nbsp;warning&nbsp=
;found&nbsp;by&nbsp;clang(make&nbsp;W=3D1&nbsp;LLVM=3D1).<br >&gt;<br >&gt;=
&nbsp;drivers/dma/xilinx/xilinx_dpdma.c:935:&nbsp;warning:&nbsp;expecting&n=
bsp;prototype&nbsp;for<br >&gt;&nbsp;xilinx_dpdma_chan_no_ostand().&nbsp;Pr=
ototype&nbsp;was&nbsp;for<br >&gt;&nbsp;xilinx_dpdma_chan_notify_no_ostand(=
)&nbsp;instead.<br ><br >xilinx_dpdma_chan_notify_no_ostand&nbsp;has&nbsp;s=
tatic&nbsp;linkage,&nbsp;clang&nbsp;shouldn't<br >be&nbsp;emitting&nbsp;suc=
h&nbsp;a&nbsp;warning&nbsp;for&nbsp;this&nbsp;function.&nbsp;&nbsp;Which&nb=
sp;tree&nbsp;was&nbsp;Abaci<br >run&nbsp;on?&nbsp;Do&nbsp;you&nbsp;have&nbs=
p;the&nbsp;original&nbsp;report?&nbsp;This&nbsp;warning&nbsp;doesn't&nbsp;l=
ook<br >right&nbsp;to&nbsp;me.<br ><br >Again,&nbsp;the&nbsp;diff&nbsp;seem=
s&nbsp;fine,&nbsp;but&nbsp;the&nbsp;commit&nbsp;message&nbsp;does&nbsp;not.=
<br ><br >&gt;<br >&gt;&nbsp;Reported-by:&nbsp;Abaci&nbsp;Robot&nbsp;&lt;ab=
aci@linux.alibaba.com&gt;<br >&gt;&nbsp;Signed-off-by:&nbsp;Yang&nbsp;Li&nb=
sp;&lt;yang.lee@linux.alibaba.com&gt;<br >&gt;&nbsp;---<br >&gt;&nbsp;&nbsp=
;drivers/dma/xilinx/xilinx_dpdma.c&nbsp;|&nbsp;2&nbsp;+-<br >&gt;&nbsp;&nbs=
p;1&nbsp;file&nbsp;changed,&nbsp;1&nbsp;insertion(+),&nbsp;1&nbsp;deletion(=
-)<br >&gt;<br >&gt;&nbsp;diff&nbsp;--git&nbsp;a/drivers/dma/xilinx/xilinx_=
dpdma.c&nbsp;b/drivers/dma/xilinx/xilinx_dpdma.c<br >&gt;&nbsp;index&nbsp;7=
0b29bd..0c8739a&nbsp;100644<br >&gt;&nbsp;---&nbsp;a/drivers/dma/xilinx/xil=
inx_dpdma.c<br >&gt;&nbsp;+++&nbsp;b/drivers/dma/xilinx/xilinx_dpdma.c<br >=
&gt;&nbsp;@@&nbsp;-915,7&nbsp;+915,7&nbsp;@@&nbsp;static&nbsp;u32&nbsp;xili=
nx_dpdma_chan_ostand(struct&nbsp;xilinx_dpdma_chan&nbsp;*chan)<br >&gt;&nbs=
p;&nbsp;}<br >&gt;<br >&gt;&nbsp;&nbsp;/**<br >&gt;&nbsp;-&nbsp;*&nbsp;xili=
nx_dpdma_chan_no_ostand&nbsp;-&nbsp;Notify&nbsp;no&nbsp;outstanding&nbsp;tr=
ansaction&nbsp;event<br >&gt;&nbsp;+&nbsp;*&nbsp;xilinx_dpdma_chan_notify_n=
o_ostand&nbsp;-&nbsp;Notify&nbsp;no&nbsp;outstanding&nbsp;transaction&nbsp;=
event<br >&gt;&nbsp;&nbsp;&nbsp;*&nbsp;@chan:&nbsp;DPDMA&nbsp;channel<br >&=
gt;&nbsp;&nbsp;&nbsp;*<br >&gt;&nbsp;&nbsp;&nbsp;*&nbsp;Notify&nbsp;waiters=
&nbsp;for&nbsp;no&nbsp;outstanding&nbsp;event,&nbsp;so&nbsp;waiters&nbsp;ca=
n&nbsp;stop&nbsp;the&nbsp;channel<br >&gt;&nbsp;--<br >&gt;&nbsp;1.8.3.1<br=
 >&gt;<br ><br ><br >--&nbsp;<br >Thanks,<br >~Nick&nbsp;Desaulniers</block=
quote><div ><br ></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/e0315bca-fbf0-480a-b9fa-40abe162c73d.yang.lee%=
40linux.alibaba.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.=
google.com/d/msgid/clang-built-linux/e0315bca-fbf0-480a-b9fa-40abe162c73d.y=
ang.lee%40linux.alibaba.com</a>.<br />

------=ALIBOUNDARY_18561_7f878639c940_60c02e12_e74a6--

