Return-Path: <clang-built-linux+bncBAABB2XRRSDAMGQE4DWTHHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4DB3A4019
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 12:20:28 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id p20-20020a6bce140000b029049372849df8sf18991930iob.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 03:20:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623406827; cv=pass;
        d=google.com; s=arc-20160816;
        b=EKrfNtCOojlP/Kpz7NXkR2Y6fCbqLaNUkKQ9719nY58cneyieyYrfxG821FIOmvzE3
         17335A8Yif/GGH1ZHI08NjvCiLgvpKMHxFKKQ4cVKA8Xuyp2YeEwV/jPi9otymLSHNd2
         vHgTmjQasdFYZCwnpenPlGfZBt6spbBoT4VpKLE08umedQVkBGNxgwafQruDh+CQFTo/
         ETpAibqpLMMSuS/Le2CFhXNuqfa18230iyiHcpo/j2fZTG8/2btyp+COZ++FEtDnZ7in
         +GC5SDH3VXyaLBpiEgd6rfMmRcRynsCQX7rtuzexJ87b6WPx31DaMRJBWb/ST2DeSrzr
         JNyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:references:mime-version
         :subject:message-id:reply-to:cc:to:from:date:sender:dkim-signature;
        bh=c3VbSCHmjgbKH+shklpD3Qp+z1TnUf1b7tWeSewF/kk=;
        b=vBdkr/p700fT4lPgaJvITzD0it5HH1GEOxi/2W0upXnUliZTIDur5s9WLG324e3y8J
         V6yhLjIoiDDBWcwXaGS4fLgezhvDCU1H7TAf1FtKmNLCpKl8Z3uiAZyDENdn+wDOkEJb
         FtDr3jrnkJiSRv1/63mtTcFu/5qawNPTTZe8ejEaLybcqhToLvFg22Y4cBE2y8TZg5+b
         WczvJ7fkeazNWPYat3kUx0BUttxUpVuOyudfp+uiN2KYlbWBMTbrqsOaVs4gBFe78XHX
         YcaQvVvplda59PqjF1zhXE/VRAcYd7SzJVl9tkITv/wOlM0RcA87EKws0lSQdoyZY6YT
         Nicg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:reply-to:message-id:subject:mime-version
         :references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c3VbSCHmjgbKH+shklpD3Qp+z1TnUf1b7tWeSewF/kk=;
        b=ICah3BuC/CZkfifpidMapZ7qLosMYHJi2y9V4E3x5OUK1fRtsURIZIdCaVUMLPSEz6
         qOj5Jv09lcRVeSVgITyR7zamM9ozgzV9mrF9MrU1+zcRbKVwCKgigP0saO+5IWrBs1SB
         chdQyuQ4BeIBv7WU1ZwPy8BVE6runlr3R2zDxSi49rWmFk4ZPIxZmMG2Em5tiUmcY/S/
         m3iQZvPZYb8VG6i0q2SCaerSz07GwpxILg1TE4ZM3pjqWmYe6IibBs9cFn0XfYhQT0tD
         W3ZtBXSREPqAnqzgatEJlrUbtkIlPZaWsxBCEamrjlz62mTMZErrpGDonKF+52QDB4u4
         G8ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:reply-to:message-id
         :subject:mime-version:references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3VbSCHmjgbKH+shklpD3Qp+z1TnUf1b7tWeSewF/kk=;
        b=fd2eLRRVfthCfsAMhLe4MyAGw59Bt8tykp4bX5ATO+okvsHdaRA8oixHojsN6+zGka
         BKpu9uffhL5+xRd/xsltvD6CYkkmPx3njuRcakoDQ0LAS0FNEOvt5qr+HPqKiXPYiQYW
         F06JwzNLBrIiTjpCpu9k1mitEW+sc7eGH2FJAk1XRzZkIQAbN732jVbABILCkOlWc5hL
         ZCRrRb3gR5kqFKW7pi3Pc+CVQCqXwkpA2W4CBbgoA0Xb+OtowfAVLszpMACR1NZP4vUQ
         yVpi1i6zKk6Lcwg+qzL5HTvjNjoEVAOTivQ/6uJgbDfSMB0Clz+NfMiWnHLlwKvUOJMK
         jQIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oxJpau3y4V2Vd767Sy8JWqqrs9r1FB8q9fp8PhBGO4R7DoEHr
	KBYsmXFY1eM7VunTMMFwe0w=
X-Google-Smtp-Source: ABdhPJw3VwdHV9hMFt6bSYrdiRoywQ/38yrvgeAdPpDwMAYHzwYDri1dIHAJjwR9fny9ploHuOK70A==
X-Received: by 2002:a92:7c11:: with SMTP id x17mr2650865ilc.52.1623406826964;
        Fri, 11 Jun 2021 03:20:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2297:: with SMTP id d23ls1654614iod.1.gmail; Fri,
 11 Jun 2021 03:20:26 -0700 (PDT)
X-Received: by 2002:a5e:c64c:: with SMTP id s12mr2513068ioo.3.1623406826570;
        Fri, 11 Jun 2021 03:20:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623406826; cv=none;
        d=google.com; s=arc-20160816;
        b=HoyrdMjbEZ1Ip3l+HXgCXld5+fAuZHR28K9LzE3pqOmquroTkWMAGseTRDhA+FlkDW
         IMaa6HV3LrpUw12hhcpZ2aeSEaF6cuxAPJfbiEaDUWITyAsWjCTnPYZC7fLsX/rwYWrZ
         58XUFJUAwvi6wJLLv+pr3C4kiByGywESsWngri9dl75rznMXCfP4Rqdgn/YNdz8+9mMl
         4dBfknPUNe/6Ek5VX473gB0MxjCvcHoVwj7KedP/zIXo/uKLKk3NWAoPiLgMbBlN6HU0
         jgPXGYHEtZGGCJEK/qsZGDG2lgibH4Pdna0O8Q9aJR6wLJ4dseRWLxjYvgiJFehq1WXE
         m8Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:references:mime-version:subject:message-id:reply-to:cc
         :to:from:date;
        bh=TNKa8KD0HB9yXv4t/yDklP3YoVDCaRxjT25n5wSsiLA=;
        b=dMGw9+Jm5dnf5FCGQ5OUdBPDMRmqM8qKzTmDAyHJ1BjLvysQEPNt5BLWNWprCf/Xwm
         BJjqucncqrJ07QUZO8FhxqZltiO7ZAxw8rC7f1+HLW3vjZ3XZQR3vKajpwkLHdLMbaxd
         fheRdBF8B2Y82UQ3ScIzJWxStpWDnd2nPLerQ/HX9o+s2I5Y74JzKjSHTfXznQCaYzvm
         duoEA1GfdvAhqd3yExAXjtUYdouYSi3dy3K7Xa8bg1t/t8S5AL5w1ETavOTkgLU3LQ/1
         NvLJTPmGeMEYHibUkRvHLJekp4uVIgz3iJCMYKpNQcaLmXXc9KAuH1I+oE5rncHJNZem
         v91Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com. [115.124.30.56])
        by gmr-mx.google.com with ESMTPS id m11si253667iov.0.2021.06.11.03.20.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 03:20:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) client-ip=115.124.30.56;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R651e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=yang.lee@linux.alibaba.com;NM=1;PH=DW;RN=8;SR=0;TI=W4_6173578_DEFAULT_0AC264AF_1623406675278_o7001c396e;
Received: from WS-web (yang.lee@linux.alibaba.com[W4_6173578_DEFAULT_0AC264AF_1623406675278_o7001c396e]) by e01e07486.eu6 at Fri, 11 Jun 2021 18:20:21 +0800
Date: Fri, 11 Jun 2021 18:20:21 +0800
From: "Yang.Lee" <yang.lee@linux.alibaba.com>
To: "Paul Moore" <paul@paul-moore.com>
Cc: "Stephen Smalley" <stephen.smalley.work@gmail.com>,
  "Eric Paris" <eparis@parisplace.org>,
  "nathan" <nathan@kernel.org>,
  "ndesaulniers" <ndesaulniers@google.com>,
  "selinux" <selinux@vger.kernel.org>,
  "linux-kernel" <linux-kernel@vger.kernel.org>,
  "clang-built-linux" <clang-built-linux@googlegroups.com>
Reply-To: "Yang.Lee" <yang.lee@linux.alibaba.com>
Message-ID: <d99556c9-867f-44c5-9fa8-1c69394d8285.yang.lee@linux.alibaba.com>
Subject: =?UTF-8?B?5Zue5aSN77yaW1BBVENIIC1uZXh0XSBzZWxpbnV4OiBGaXgga2VybmVsLWRvYw==?=
X-Mailer: [Alimail-Mailagent revision 2546561][W4_6173578][DEFAULT][Chrome]
MIME-Version: 1.0
References: <1623317883-54209-1-git-send-email-yang.lee@linux.alibaba.com>,<CAHC9VhQ_XkZ=ADhe5=PqV-zNuEGOHDZfsBnSErW3j+zz5b4Qrg@mail.gmail.com>
x-aliyun-mail-creator: W4_6173578_DEFAULT_TCwTW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzkwLjAuNDQzMC4yMTIgU2FmYXJpLzUzNy4zNiBFZGcvOTAuMC44MTguNjY=FR
In-Reply-To: <CAHC9VhQ_XkZ=ADhe5=PqV-zNuEGOHDZfsBnSErW3j+zz5b4Qrg@mail.gmail.com>
Content-Type: multipart/alternative;
  boundary="----=ALIBOUNDARY_82897_78580940_60c338e5_10cf0c"
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as
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

------=ALIBOUNDARY_82897_78580940_60c338e5_10cf0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I will try my best to check and fix other inconsistent comments in SELinux =
through tools.=20
I've added comments for 'state' and sent V2 as you suggested. Due to my lim=
ited understanding=20
of functions, I can't add comments for other parameters to functions.

Thanks for your review and guidance.


------------------------------------------------------------------
=E5=8F=91=E4=BB=B6=E4=BA=BA=EF=BC=9APaul Moore <paul@paul-moore.com>
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4=EF=BC=9A2021=E5=B9=B46=E6=9C=8811=E6=
=97=A5(=E6=98=9F=E6=9C=9F=E4=BA=94) 09:06
=E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=9AYang Li <yang.lee@linux.alibaba.com>
=E6=8A=84=E3=80=80=E9=80=81=EF=BC=9AStephen Smalley <stephen.smalley.work@g=
mail.com>; Eric Paris <eparis@parisplace.org>; nathan <nathan@kernel.org>; =
ndesaulniers <ndesaulniers@google.com>; selinux <selinux@vger.kernel.org>; =
linux-kernel <linux-kernel@vger.kernel.org>; clang-built-linux <clang-built=
-linux@googlegroups.com>
=E4=B8=BB=E3=80=80=E9=A2=98=EF=BC=9ARe: [PATCH -next] selinux: Fix kernel-d=
oc

On Thu, Jun 10, 2021 at 5:38 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> Fix function name in ss/services.c kernel-doc comment
> to remove a warning found by running make W=3D1 LLVM=3D1.
>
> security/selinux/ss/services.c:2437: warning: expecting prototype for
> security_pkey_sid(). Prototype was for security_ib_pkey_sid() instead.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  security/selinux/ss/services.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/security/selinux/ss/services.c b/security/selinux/ss/service=
s.c
> index 3658488..bb043bf 100644
> --- a/security/selinux/ss/services.c
> +++ b/security/selinux/ss/services.c
> @@ -2423,7 +2423,7 @@ int security_port_sid(struct selinux_state *state,
>  }
>
>  /**
> - * security_pkey_sid - Obtain the SID for a pkey.
> + * security_ib_pkey_sid - Obtain the SID for a pkey.
>   * @subnet_prefix: Subnet Prefix
>   * @pkey_num: pkey number
>   * @out_sid: security identifier

This kdoc function header block is also missing the selinux_state
description.  Would you mind adding something like the following and
resubmitting your patch?

  * @state: SELinux state

... I suspect there are a number of function header comments with
similar problems in the SELinux code.

--=20
paul moore
www.paul-moore.com

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d99556c9-867f-44c5-9fa8-1c69394d8285.yang.lee%40linux.ali=
baba.com.

------=ALIBOUNDARY_82897_78580940_60c338e5_10cf0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"__aliyun_email_body_block"><div  style=3D"clear:both;"><span =
 style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#0=
00000;">Hi,</span></div><div  style=3D"clear:both;"><span  style=3D"font-fa=
mily:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;"><br ></sp=
an></div><div  style=3D"clear:both;"><span  style=3D"font-family:Tahoma,Ari=
al,STHeiti,SimSun;font-size:14.0px;color:#000000;">I&nbsp;will&nbsp;try&nbs=
p;my&nbsp;best&nbsp;to&nbsp;check&nbsp;and&nbsp;fix&nbsp;other&nbsp;inconsi=
stent&nbsp;comments&nbsp;in&nbsp;SELinux&nbsp;through&nbsp;tools.&nbsp;</sp=
an></div><div  style=3D"clear:both;">I've&nbsp;added&nbsp;comments&nbsp;for=
&nbsp;'state'&nbsp;and&nbsp;sent&nbsp;V2&nbsp;as&nbsp;you&nbsp;suggested.&n=
bsp;Due&nbsp;to&nbsp;my&nbsp;limited&nbsp;understanding&nbsp;<br ></div><di=
v  style=3D"clear:both;">of&nbsp;functions,&nbsp;I&nbsp;can't&nbsp;add&nbsp=
;comments for&nbsp;other&nbsp;parameters to&nbsp;functions.<br ></div><div =
 style=3D"clear:both;"><span  style=3D"color:#000000;font-family:Tahoma,Ari=
al,STHeiti,SimSun;font-size:14.0px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;text-align:start;text-inde=
nt:.0px;text-transform:none;widows:2;background-color:#ffffff;text-decorati=
on-thickness:initial;text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline;"><br ></span></div><div  style=3D"clear:bo=
th;"><span  style=3D"color:#000000;font-family:Tahoma,Arial,STHeiti,SimSun;=
font-size:14.0px;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;text-align:start;text-indent:.0px;text-trans=
form:none;widows:2;background-color:#ffffff;text-decoration-thickness:initi=
al;text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline;"><span  style=3D"color:#171a1d;font-family:Microsoft YaHei,S=
egoe UI,system-ui,Roboto,Droid Sans,Helvetica Neue,sans-serif,Tahoma,Segoe =
UI SymbolMyanmar Text,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;font-size:14.0px=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;text-align:left;text-indent:.0px;text-transform:none;widows:=
2;background-color:#ffffff;text-decoration-thickness:initial;text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline;">T=
hanks for your review and guidance.</span></span></div><div  style=3D"clear=
:both;"><span  style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:1=
4.0px;color:#000000;"><br ></span></div><blockquote  style=3D"margin-right:=
.0px;margin-top:.0px;margin-bottom:.0px;"><div  style=3D"clear:both;"><span=
  style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#=
000000;">------------------------------------------------------------------=
</span></div><div  style=3D"clear:both;"><span  style=3D"font-family:Tahoma=
,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">=E5=8F=91=E4=BB=B6=
=E4=BA=BA=EF=BC=9APaul Moore &lt;paul@paul-moore.com&gt;</span></div><div  =
style=3D"clear:both;"><span  style=3D"font-family:Tahoma,Arial,STHeiti,SimS=
un;font-size:14.0px;color:#000000;">=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4=EF=
=BC=9A2021=E5=B9=B46=E6=9C=8811=E6=97=A5(=E6=98=9F=E6=9C=9F=E4=BA=94) 09:06=
</span></div><div  style=3D"clear:both;"><span  style=3D"font-family:Tahoma=
,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">=E6=94=B6=E4=BB=B6=
=E4=BA=BA=EF=BC=9AYang Li &lt;yang.lee@linux.alibaba.com&gt;</span></div><d=
iv  style=3D"clear:both;"><span  style=3D"font-family:Tahoma,Arial,STHeiti,=
SimSun;font-size:14.0px;color:#000000;">=E6=8A=84=E3=80=80=E9=80=81=EF=BC=
=9AStephen Smalley &lt;stephen.smalley.work@gmail.com&gt;; Eric Paris &lt;e=
paris@parisplace.org&gt;; nathan &lt;nathan@kernel.org&gt;; ndesaulniers &l=
t;ndesaulniers@google.com&gt;; selinux &lt;selinux@vger.kernel.org&gt;; lin=
ux-kernel &lt;linux-kernel@vger.kernel.org&gt;; clang-built-linux &lt;clang=
-built-linux@googlegroups.com&gt;</span></div><div  style=3D"clear:both;"><=
span  style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;col=
or:#000000;">=E4=B8=BB=E3=80=80=E9=A2=98=EF=BC=9ARe: [PATCH -next] selinux:=
 Fix kernel-doc</span></div><div  style=3D"clear:both;"><span  style=3D"fon=
t-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;"><br >=
</span></div>On&nbsp;Thu,&nbsp;Jun&nbsp;10,&nbsp;2021&nbsp;at&nbsp;5:38&nbs=
p;AM&nbsp;Yang&nbsp;Li&nbsp;&lt;yang.lee@linux.alibaba.com&gt;&nbsp;wrote:<=
br >&gt;<br >&gt;&nbsp;Fix&nbsp;function&nbsp;name&nbsp;in&nbsp;ss/services=
.c&nbsp;kernel-doc&nbsp;comment<br >&gt;&nbsp;to&nbsp;remove&nbsp;a&nbsp;wa=
rning&nbsp;found&nbsp;by&nbsp;running&nbsp;make&nbsp;W=3D1&nbsp;LLVM=3D1.<b=
r >&gt;<br >&gt;&nbsp;security/selinux/ss/services.c:2437:&nbsp;warning:&nb=
sp;expecting&nbsp;prototype&nbsp;for<br >&gt;&nbsp;security_pkey_sid().&nbs=
p;Prototype&nbsp;was&nbsp;for&nbsp;security_ib_pkey_sid()&nbsp;instead.<br =
>&gt;<br >&gt;&nbsp;Reported-by:&nbsp;Abaci&nbsp;Robot&nbsp;&lt;abaci@linux=
.alibaba.com&gt;<br >&gt;&nbsp;Signed-off-by:&nbsp;Yang&nbsp;Li&nbsp;&lt;ya=
ng.lee@linux.alibaba.com&gt;<br >&gt;&nbsp;---<br >&gt;&nbsp;&nbsp;security=
/selinux/ss/services.c&nbsp;|&nbsp;2&nbsp;+-<br >&gt;&nbsp;&nbsp;1&nbsp;fil=
e&nbsp;changed,&nbsp;1&nbsp;insertion(+),&nbsp;1&nbsp;deletion(-)<br >&gt;<=
br >&gt;&nbsp;diff&nbsp;--git&nbsp;a/security/selinux/ss/services.c&nbsp;b/=
security/selinux/ss/services.c<br >&gt;&nbsp;index&nbsp;3658488..bb043bf&nb=
sp;100644<br >&gt;&nbsp;---&nbsp;a/security/selinux/ss/services.c<br >&gt;&=
nbsp;+++&nbsp;b/security/selinux/ss/services.c<br >&gt;&nbsp;@@&nbsp;-2423,=
7&nbsp;+2423,7&nbsp;@@&nbsp;int&nbsp;security_port_sid(struct&nbsp;selinux_=
state&nbsp;*state,<br >&gt;&nbsp;&nbsp;}<br >&gt;<br >&gt;&nbsp;&nbsp;/**<b=
r >&gt;&nbsp;-&nbsp;*&nbsp;security_pkey_sid&nbsp;-&nbsp;Obtain&nbsp;the&nb=
sp;SID&nbsp;for&nbsp;a&nbsp;pkey.<br >&gt;&nbsp;+&nbsp;*&nbsp;security_ib_p=
key_sid&nbsp;-&nbsp;Obtain&nbsp;the&nbsp;SID&nbsp;for&nbsp;a&nbsp;pkey.<br =
>&gt;&nbsp;&nbsp;&nbsp;*&nbsp;@subnet_prefix:&nbsp;Subnet&nbsp;Prefix<br >&=
gt;&nbsp;&nbsp;&nbsp;*&nbsp;@pkey_num:&nbsp;pkey&nbsp;number<br >&gt;&nbsp;=
&nbsp;&nbsp;*&nbsp;@out_sid:&nbsp;security&nbsp;identifier<br ><br >This&nb=
sp;kdoc&nbsp;function&nbsp;header&nbsp;block&nbsp;is&nbsp;also&nbsp;missing=
&nbsp;the&nbsp;selinux_state<br >description.&nbsp;&nbsp;Would&nbsp;you&nbs=
p;mind&nbsp;adding&nbsp;something&nbsp;like&nbsp;the&nbsp;following&nbsp;an=
d<br >resubmitting&nbsp;your&nbsp;patch?<br ><br >&nbsp;&nbsp;*&nbsp;@state=
:&nbsp;SELinux&nbsp;state<br ><br >...&nbsp;I&nbsp;suspect&nbsp;there&nbsp;=
are&nbsp;a&nbsp;number&nbsp;of&nbsp;function&nbsp;header&nbsp;comments&nbsp=
;with<br >similar&nbsp;problems&nbsp;in&nbsp;the&nbsp;SELinux&nbsp;code.<br=
 ><br >--&nbsp;<br >paul&nbsp;moore<br >www.paul-moore.com</blockquote><div=
 ><br ></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/d99556c9-867f-44c5-9fa8-1c69394d8285.yang.lee%=
40linux.alibaba.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.=
google.com/d/msgid/clang-built-linux/d99556c9-867f-44c5-9fa8-1c69394d8285.y=
ang.lee%40linux.alibaba.com</a>.<br />

------=ALIBOUNDARY_82897_78580940_60c338e5_10cf0c--

