Return-Path: <clang-built-linux+bncBAABBOFD36BQMGQEXDWVKLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C48D3601AD
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 07:40:09 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id mw17-20020a17090b4d11b029014cf3b640f4sf11585003pjb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 22:40:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618465208; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTRcnsAx+IH9UJm0+03Dd00ZUpxwTIttEkU1dA3Y1DRbI2iaNXZ84CHr/nXB8fLNHq
         4NRZEJRp1edmLDoVaHmViIJaytly1wAQNVloQ0kQ7rhC8FCToCFQY1M1H7LFiaAsA4gU
         Djc05zh7mO1Ras+aCaZuM8n1aZm/eGU9RSP5Tj3ohb96K62lq3GmEOSuMgiR9D47pumb
         efpj5IXdK8TNVFl8XToBktdN33d30eznkwE6K71R3IupG8dZDQt+4m0EGDbs+lz6KR+H
         meChESklCIEZyk5s4Y9f8ZINRkujPejrKUbn+Qiz9ongzyZ20GjQxMshReMTUqcgqPv6
         au6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=PNm/GGnZKS1oD0haBeTDlv3vNIvsUl5vjVVNEh3w9Ng=;
        b=nkM/q44VOXRfsgK6j+tuMME6H8JPdfqNFo5j+SvFKOZ2xPEdRxSUnZQ05w2zG36z0v
         4vzyXY9lW3m2kMxTTyVM1ICGugMbgjBUS1XGVmcLuKlnE3uTXzgAf2cMeIoIYeAkpvkT
         VFgb+25nKpyjw/1AEEJIriXyiqdWd+ADDM0IfLKTjmdSvyKyALi1N84XqrIFR1giE++J
         x4FF1JktV8/JXuqbZCwVS4VqBHBwVzEO/7TspJGNfaJZ7dClqyssMjSi59RfM1zD65qb
         aSvZs9Bvvne8oUn6nTpfzsYyHxPad06blliwebpqK/KE956mr19ojx7z9fh4F9ooj95Z
         Bwog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@email.cn header.s=dkim header.b=S5hFYQol;
       spf=pass (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted sender) smtp.mailfrom=bobwxc@email.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PNm/GGnZKS1oD0haBeTDlv3vNIvsUl5vjVVNEh3w9Ng=;
        b=lBEpMPqtinPnSH7zJHDW1HFREioblU2a09wCwuR5XRZbb1er0Yi+P0+mZitDkZRVdr
         QKkooRgAfpvhaoikFO6NyPmUXb9cdseS0rTqp0t47FC2rq6c45JCGI/prt7EKSVWw7Ip
         N80fTuPqmehNkh/l4JEjlnAsQMgOySxeurt58++OVw/DJk7dqxQQN5lvulFEfxtYwOL3
         1qG1fduWfYJTGVBNtmxJqp5PPEJvOEjH487Q6L6U1JmvinlzTqK6uHDSdE3wePnE8bE9
         9eC6WSITIZtMavi696s+lzRfxl3g3AGkY31H3E8w0MSdVp3YEHY8ohv7IkdG1lYQ8IR1
         t72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PNm/GGnZKS1oD0haBeTDlv3vNIvsUl5vjVVNEh3w9Ng=;
        b=l1EZTH5kFHMpQaMb6ANemgx3SrfFPWxeWntmfA0tMVCW2GyQukI3QQzkdIJ2F96CAd
         xnlGpz0ZWIFmFEZyVemrsehhaNvpJO+z2xgTgJz3IWD9YtAMfHCazhEQL3bY1ZRpCumI
         tZzgTIvgpN8t3BytrXbI5i7OoKqxSEiOwH7lSi7W/XWqn2eysfdI9aR+aBNG01yseELn
         OFpAnk8AoTeOed0VgF8e7hOmhq46pgrGsFfxgXQeG4DKj9fimx0ekRXkN5css+/sk1J8
         O4OIGfRvr808AR9hacklLQbrM27oNPpXpeC1p392DheRL3ucQ+O9wgsFE6AFZmUUDGYJ
         8DhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pF5Y6h7uEwT47ADestyQiJbC7n11GWUzCdcYkWE1oBWa+Ngr2
	+x4Znpufp7uYgFbaqCzI+w4=
X-Google-Smtp-Source: ABdhPJypcDfMdn/7dNoyoae5GU6gWkdF1r9IEfDYZjQGg3pBTWo1G7WHt97S4fZM7yqj0xh2Y3bwjA==
X-Received: by 2002:a62:15d1:0:b029:254:e939:91a6 with SMTP id 200-20020a6215d10000b0290254e93991a6mr1610042pfv.21.1618465208143;
        Wed, 14 Apr 2021 22:40:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls2581682plb.11.gmail; Wed, 14
 Apr 2021 22:40:07 -0700 (PDT)
X-Received: by 2002:a17:90a:f992:: with SMTP id cq18mr1945155pjb.7.1618465207696;
        Wed, 14 Apr 2021 22:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618465207; cv=none;
        d=google.com; s=arc-20160816;
        b=LnDDN9bEcnuFtzstN87Jmf7ybTdcf7ObG1Jwg6CtdHadRiRts7lO2Gddjva02H/gVj
         3yA8NXV5f97/vk4dVBwAlA8hzccWoeDApeHVHtL+BoeEaMdEang4UatCsc2FDG2H1YbX
         WPF6ocHMv+3HWswuJsSNYlUj756aese30YEwCbT4HfzGdhQeP1Tvt4GKDFr3+ldUjgLo
         mx2YfIXNLdMILnQUteHZK+lRJ6ALKPP9+k7ZylaQrXUbG4hFcVuOA+XAXHtpCe/r9eL8
         gVzQWrwcXEt84TrGwARdLRtYMXV7iY0jOMy42cqed539OLmPweF1GhKHTlPV9XKcTKWG
         c93A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=KvftrG5Lhi1GCGuoRVYKNQEyYty8Kzz1Wdzomp/vDD4=;
        b=Awp4OwB+MEfWN+EHAT7wz7c2nVZtZlWaNsbiR8PIfaCShbi+ooh1V8iHSVOGynO17T
         veN4LddQhxJlpDtzK64j961Df0+eprr0M0g5Fjndeh3PyRVYOAmRKxgFeGYqqPtNeh6y
         Rum+5IT5+vVmitbJUlGuxSkLLR4lhlA9z7YH1qwJLwUW5PU5Eib4d1p3eUqMWt63/0Hw
         RX4zbrQcBuBV+zc/t0N3TEEcNLU6uNA9AYLGrYmMfEHmg1P2P7IiPUIp/OSvUW5oldU+
         d6nv+XeG7IElPNCQ2GsPmuAMBPPML0SXPPiUFvdSmS45RIBVlj1U/V3jdnyb7YvRQ948
         vM9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@email.cn header.s=dkim header.b=S5hFYQol;
       spf=pass (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted sender) smtp.mailfrom=bobwxc@email.cn
Received: from email.cn ([43.250.32.171])
        by gmr-mx.google.com with ESMTPS id f16si136737plg.0.2021.04.14.22.40.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 14 Apr 2021 22:40:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted sender) client-ip=43.250.32.171;
Received: from bobwxc.top (unknown [120.238.248.129])
	by v_coremail2-frontend-1 (Coremail) with SMTP id LCKnCgAXi9Gu0XdghZddAA--.16668S2;
	Thu, 15 Apr 2021 13:40:00 +0800 (CST)
Date: Thu, 15 Apr 2021 13:39:58 +0800
From: "Wu X.C." <bobwxc@email.cn>
To: "Zengtao (B)" <prime.zeng@hisilicon.com>
Cc: Alex Shi <alexs@kernel.org>, Bernard Zhao <bernard@vivo.com>,
	Jonathan Corbet <corbet@lwn.net>,
	YanTeng Si <sterlingteng@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: =?utf-8?B?562U5aSNOiBbUEFUQw==?= =?utf-8?Q?H?= v5] docs/zh_CN:
 add translations in zh_CN/dev-tools/gcov
Message-ID: <20210415053958.GB26262@bobwxc.top>
References: <20210414082316.15160-1-bernard@vivo.com>
 <20210414132127.GA13306@bobwxc.top>
 <e26cc66e2a2745f994eb8ede9a783563@hisilicon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <e26cc66e2a2745f994eb8ede9a783563@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CM-TRANSID: LCKnCgAXi9Gu0XdghZddAA--.16668S2
X-Coremail-Antispam: 1UD129KBjvJXoWxCFy5uw1UuFyUXFWrZr4fKrg_yoW5Ww4xpF
	4DKFWfK3Wxury3CFW2gF1UAFyUAas7Ww4DKryIq3s0qrWqvr4Fyr17tryjgr9rWr48Za45
	Za18WFyj93s0kFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUyGb7Iv0xC_Cr1lb4IE77IF4wAFc2x0x2IEx4CE42xK8VAvwI8I
	cIk0rVWrJVCq3wA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjx
	v20xvE14v26r1I6r4UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j6F4UM28EF7xvwVC2
	z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJwAS0I0E0x
	vYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VCjz48v1sIEY20_
	Cr1UJr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JM4IIrI8v6xkF7I0E8cxan2
	IY04v7MxkIecxEwVAFwVW8WwCF04k20xvY0x0EwIxGrwCF04k20xvE74AGY7Cv6cx26F4U
	Jr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
	xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
	jxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw2
	0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x02
	67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IUUO6pPUUUUU==
X-Originating-IP: [120.238.248.129]
X-CM-SenderInfo: pere453f6hztlloou0/
X-Original-Sender: bobwxc@email.cn
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@email.cn header.s=dkim header.b=S5hFYQol;       spf=pass
 (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted
 sender) smtp.mailfrom=bobwxc@email.cn
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

On Thu, Apr 15, 2021 at 04:01:55AM +0000, Zengtao (B) wrote:
> > -----=E9=82=AE=E4=BB=B6=E5=8E=9F=E4=BB=B6-----
> > =E5=8F=91=E4=BB=B6=E4=BA=BA: Wu XiangCheng [mailto:bobwxc@email.cn]
> > =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2021=E5=B9=B44=E6=9C=8814=E6=97=
=A5 21:21
> > =E6=94=B6=E4=BB=B6=E4=BA=BA: Alex Shi <alexs@kernel.org>; Bernard Zhao =
<bernard@vivo.com>
> > =E6=8A=84=E9=80=81: Jonathan Corbet <corbet@lwn.net>; YanTeng Si
> > <sterlingteng@gmail.com>; Nathan Chancellor <nathan@kernel.org>; Nick
> > Desaulniers <ndesaulniers@google.com>; linux-doc@vger.kernel.org;
> > linux-kernel@vger.kernel.org; clang-built-linux@googlegroups.com
> > =E4=B8=BB=E9=A2=98: [PATCH v5] docs/zh_CN: add translations in zh_CN/de=
v-tools/gcov
> >=20
> > From: Bernard Zhao <bernard@vivo.com>
> >=20
> > Add new zh translations
> > * zh_CN/dev-tools/gcov.rst
> > * zh_CN/dev-tools/index.rst
> > and link them to zh_CN/index.rst
> >=20
> > Signed-off-by: Bernard Zhao <bernard@vivo.com>
> > Reviewed-by: Wu XiangCheng <bobwxc@email.cn>
> > Signed-off-by: Wu XiangCheng <bobwxc@email.cn>
> > ---
> > base: linux-next
> > commit 269dd42f4776 ("docs/zh_CN: add riscv to zh_CN index")
> >=20
> > Changes since V4:
> > * modified some words under Alex Shi's advices
> >=20
> > Changes since V3:
> > * update to newest linux-next
> > * fix ``
> > * fix tags
> > * fix list indent
> >=20
> > Changes since V2:
> > * fix some inaccurate translation
> >=20
> > Changes since V1:
> > * add index.rst in dev-tools and link to to zh_CN/index.rst
> > * fix some inaccurate translation
> >=20
> >  .../translations/zh_CN/dev-tools/gcov.rst     | 265 ++++++++++++++++++
> >  .../translations/zh_CN/dev-tools/index.rst    |  35 +++
> >  Documentation/translations/zh_CN/index.rst    |   1 +
> >  3 files changed, 301 insertions(+)
> >  create mode 100644 Documentation/translations/zh_CN/dev-tools/gcov.rst
> >  create mode 100644 Documentation/translations/zh_CN/dev-tools/index.rs=
t
> >=20
> > diff --git a/Documentation/translations/zh_CN/dev-tools/gcov.rst
> > b/Documentation/translations/zh_CN/dev-tools/gcov.rst
> > new file mode 100644
> > index 000000000000..7515b488bc4e
> > --- /dev/null
> > +++ b/Documentation/translations/zh_CN/dev-tools/gcov.rst
> > @@ -0,0 +1,265 @@
> > +.. include:: ../disclaimer-zh_CN.rst
> > +
> > +:Original: Documentation/dev-tools/gcov.rst
> > +:Translator: =E8=B5=B5=E5=86=9B=E5=A5=8E Bernard Zhao <bernard@vivo.co=
m>
> > +
> > +=E5=9C=A8Linux=E5=86=85=E6=A0=B8=E9=87=8C=E4=BD=BF=E7=94=A8gcov=E5=81=
=9A=E4=BB=A3=E7=A0=81=E8=A6=86=E7=9B=96=E7=8E=87=E6=A3=80=E6=9F=A5
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > +gcov=E6=98=AFlinux=E4=B8=AD=E5=B7=B2=E7=BB=8F=E9=9B=86=E6=88=90=E7=9A=
=84=E4=B8=80=E4=B8=AA=E5=88=86=E6=9E=90=E6=A8=A1=E5=9D=97=EF=BC=8C=E8=AF=A5=
=E6=A8=A1=E5=9D=97=E5=9C=A8=E5=86=85=E6=A0=B8=E4=B8=AD=E5=AF=B9GCC=E7=9A=84=
=E4=BB=A3=E7=A0=81
> > =E8=A6=86=E7=9B=96=E7=8E=87=E7=BB=9F
>=20
> Gcov is a tool/function, misleading for " gcov=E6=98=AFlinux=E4=B8=AD=E5=
=B7=B2=E7=BB=8F=E9=9B=86=E6=88=90=E7=9A=84=E4=B8=80=E4=B8=AA=E5=88=86=E6=9E=
=90
> =E6=A8=A1=E5=9D=97"
>=20
> I 'd suggest:
> "Linux=E5=86=85=E6=A0=B8=E4=B8=AD=E5=B7=B2=E7=BB=8F=E9=9B=86=E6=88=90=E4=
=B8=80=E4=B8=AA=E7=89=B9=E6=80=A7=E6=94=AF=E6=8C=81gcov=E5=8A=9F=E8=83=BD=
=EF=BC=8C=E8=AF=A5=E7=89=B9=E6=80=A7=E8=AE=A9=E7=94=A8=E6=88=B7=E5=8F=AF=E4=
=BB=A5=E4=BD=BF=E7=94=A8gcov
>  =E5=B7=A5=E5=85=B7=E5=AF=B9=E5=86=85=E6=A0=B8=E4=BB=A3=E7=A0=81=E8=A6=86=
=E7=9B=96=E7=8E=87=E8=BF=9B=E8=A1=8C=E7=BB=9F=E8=AE=A1"
>=20
> Thanks.

Have rewrited it.

Thanks
Wu

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210415053958.GB26262%40bobwxc.top.
