Return-Path: <clang-built-linux+bncBDB63H54RYOBBY4B7P2QKGQE3KUYU2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB6E1D55B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 18:18:43 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id r7sf1413110wrc.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 09:18:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589559523; cv=pass;
        d=google.com; s=arc-20160816;
        b=NfJmMjccodSI1R66tZqfEPHuwMMcm+lIX2JfZIAmij+PnVDqKG8AtuyWKH9gwWPl7P
         dFAr4OQ8brR7c15n8WB7sAZ+BSwDnpXCVS9+D0JXFFkZ186ulAv7Ub/U405KN+yHRLrQ
         f/n9hYABUVjko5Vx/h5qvB/5apfiwVw22yK9G4gK4K+iHIkpArJkCIgk/KXMrWU7E0OQ
         U8j78ZGXyMc/6TmAZHqAU+Wcmres518PTPxlmWjr/gwd2lZQh7NOvz6kWDk/mH7aG4am
         rgtUidr19fztnn8fZYPzNXn3xg4Ej1rOO0wa3kXYViC3PQSEJzWl3R87tA0dCtg2iqjo
         HP8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:date:mime-version:subject:references:in-reply-to:cc:to
         :from:sender:dkim-signature;
        bh=akvlj1rd1vAe0tbgRnjO+CP35xUVLcMEQNjY80Pih5U=;
        b=RROwgmBFC1bzv4aq8JDjZGjoOkG1Rd4HNtPjjG2Gq9w4jT5g8Dp7ktKo4paSrFUd5t
         5L/vy8i+v5UGdpEWCQ9dTCMnqy0y1bTUkcu3CTFzSTbcqwBDM7ZWa2sPjgxEMMS3tn++
         1bcE4ARVmn+MZ04heUApiI/EtfcIXd3+Y6mHUiIUdUINZqu641xvZU7ebEwR87MqmYa6
         MinxCi1aJNuqgDyTk9XsYKljFZqXU5uM3sQyZNyoP5FZWdjC6l+GgKXaVnGxVlSt0Kmc
         IiQcQoXUxOpfvl4OWUxCg37Xf48+uoPxB5kezQ9W2oIrcMZQ0XRxsDFKPpxQ1zgYhDi2
         vNUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=aeqw5ofj;
       spf=pass (google.com: domain of dima@golovin.in designates 37.140.190.195 as permitted sender) smtp.mailfrom=dima@golovin.in
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:mime-version:date
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=akvlj1rd1vAe0tbgRnjO+CP35xUVLcMEQNjY80Pih5U=;
        b=qwpDHOuqYa7bD2PmroAp0STJ3w85b6vgnOakqGpY0BDKLMJeI3D4Fa0T9wU1kExfJE
         KcDhn/7Ux2B1QRy0rlal1N7YepmnrI+sTTsSoq2cHU62fXm7UhQVBUq8gedDIWYi+l+N
         f56MtxI7zoHeBqbEA7h2oV/mWV90lS22BCCMJ0Ex5eD2HjByWfKUcsl43Zb9TORwYxM8
         4nrPF9qLE75hWpZWlLC0P6o/ZWWy8XVFDKS/rfkF2Vp1mKpAGjoR0zgbR9Tx+XfknsEp
         0nXJmbKE59K37KGG3DvIBOjTFrI9Azi7Z3Nfygm+vhx7NMes7RoPGSnN9ju0dDYJKRkI
         QhsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :mime-version:date:message-id:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=akvlj1rd1vAe0tbgRnjO+CP35xUVLcMEQNjY80Pih5U=;
        b=OIENLSJyjiCTTIaYsB4XiPV7L7H+hM2kdC+9+6sVoZQjIKiPFO+dn7a2abxs6UIJ9+
         bycyX6N2RWbb4FVnkiaM/3b4to7ebDvNgjee4ua7+zlallqfu30xcdJO9F/o7Xf3DpEW
         +F4MAVfQjtgdLHHRRCgJ7xPzNxxwxTFIVLqxmjuBXcARtQtAux57w5UclCmTiI4CcejG
         VX0RJyWRMQOZTCs3sqgvK4WSFANWLKcRm0gLZXZf+iXY2CuJZyCFwamqrw99PpWJw6HC
         utYfEui4VotA91T4tZDtvP8uQ4hB7dboSk2LCtaJxzOosO0AD1R4QSdD4IGtHjxG0U4+
         rjug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531d2pYLxpi7f2vIncXEMOKa1VsjGF2wUmC1uqSnSEuOaxKTmYlB
	xKyI1+g29rcPnbiWfw16Rdc=
X-Google-Smtp-Source: ABdhPJxhA/Bk/rrhbF1X/pSTy3eqtzJE0Bq+TK+v8I+I/ikM6QTSmUtLpmO2aqTZ90YDBtRMObtJhQ==
X-Received: by 2002:adf:f651:: with SMTP id x17mr5297670wrp.277.1589559523396;
        Fri, 15 May 2020 09:18:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b441:: with SMTP id v1ls1188154wrd.3.gmail; Fri, 15 May
 2020 09:18:42 -0700 (PDT)
X-Received: by 2002:adf:f512:: with SMTP id q18mr5424210wro.38.1589559522934;
        Fri, 15 May 2020 09:18:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589559522; cv=none;
        d=google.com; s=arc-20160816;
        b=lby9NWUGsTgy+7fM0GMrToim3jwcdlycOqiyPWilxZifBliL9lP+r+VmZ09hHN8Yoy
         MeqfV9UQNk4P8OfkQMTmISsn5pWJav8qhaZC4QPZ+wzyejqkgmdQbogwh2e1Ojnv8YsE
         LF+v8ukKZYFEkFBk/ccDbenb4L2lJQoEYJIy7rMBGMS8gHRRkpWbPYkHHZRfbbD2JBQE
         zeYKE3FeAymMNit7gpzSctTxO1Lsa1Xbnie751EFxvHEoUP6KFHZG5+cXKCBNlBBNUca
         KXjfRJlkdpfrbsBu8EJlIMf/lnihCqvb995ewN8bMT3hYW4WA4wIzqvW7tDrgjvmlTHM
         Spkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:date:mime-version:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=/2Gtqv3Ji6sA5Gm7Yc+q8t3AHOS6Pv+8xSIKS8li5CI=;
        b=EZKIP5vv3uZcAA/SoMy6jUx34Qm6FbyGE9Oyotb8yolP/VSbTUXuuTSoaz5tdcUsMK
         guwbYd8gGe1Bnx35RnFAVkkUMZsCLObbkSf7fReFvAxcXUyw8+P/vQ+IxGJEPWwuYF5y
         WmSc3kQlNZ0HX0MeDjwlXEgL3d4AUGZm4XHEVXyBnm01qhQtNxepHW9tq9JmSkabhzgb
         E1Go+wbbRE70cQfvcnDDP2RRq01vD6J8DpMNUuoMUkwZPMYpHxuYh2X9sP0cpdhPPdJr
         aFdn5afT6KzsYDyz4qzrIMCvzdk6fJx3nHXqXndjT7v5M+2ajw1diZjAsjbp4ltfZ1qd
         Pj3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=aeqw5ofj;
       spf=pass (google.com: domain of dima@golovin.in designates 37.140.190.195 as permitted sender) smtp.mailfrom=dima@golovin.in
Received: from forward500o.mail.yandex.net (forward500o.mail.yandex.net. [37.140.190.195])
        by gmr-mx.google.com with ESMTPS id 61si148455wrm.3.2020.05.15.09.18.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 May 2020 09:18:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@golovin.in designates 37.140.190.195 as permitted sender) client-ip=37.140.190.195;
Received: from mxback5q.mail.yandex.net (mxback5q.mail.yandex.net [IPv6:2a02:6b8:c0e:1ba:0:640:b716:ad89])
	by forward500o.mail.yandex.net (Yandex) with ESMTP id 9FD0660381;
	Fri, 15 May 2020 19:18:41 +0300 (MSK)
Received: from localhost (localhost [::1])
	by mxback5q.mail.yandex.net (mxback/Yandex) with ESMTP id 5dAV4rbVvT-IeiO713I;
	Fri, 15 May 2020 19:18:40 +0300
Received: by vla5-dcf36e533bf7.qloud-c.yandex.net with HTTP;
	Fri, 15 May 2020 19:18:40 +0300
From: Dmitry Golovin <dima@golovin.in>
To: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"x86@kernel.org" <x86@kernel.org>,
	H. Peter Anvin <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
In-Reply-To: <20200501084215.242-1-dima@golovin.in>
References: <20200501084215.242-1-dima@golovin.in>
Subject: Re: [PATCH] x86/boot: allow a relocatable kernel to be linked with lld
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Fri, 15 May 2020 19:18:40 +0300
Message-Id: <592431589559423@mail.yandex.ru>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dima@golovin.in
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@golovin.in header.s=mail header.b=aeqw5ofj;       spf=pass
 (google.com: domain of dima@golovin.in designates 37.140.190.195 as permitted
 sender) smtp.mailfrom=dima@golovin.in
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

01.05.2020, 11:42, "Dmitry Golovin" <dima@golovin.in>:
> LLD by default disallows relocations in read-only segments. For a
> relocatable kernel, we pass -z notext to the linker to explicitly
> allow relocations. This behavior is the default for BFD.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/579
> Signed-off-by: Dmitry Golovin <dima@golovin.in>
> ---
> =C2=A0arch/x86/boot/compressed/Makefile | 3 +++
> =C2=A01 file changed, 3 insertions(+)
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed=
/Makefile
> index 5f7c262bcc99..7214751e1671 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -57,6 +57,9 @@ else
> =C2=A0KBUILD_LDFLAGS +=3D $(shell $(LD) --help 2>&1 | grep -q "\-z norelo=
c-overflow" \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&& echo "-z noreloc=
-overflow -pie --no-dynamic-linker")
> =C2=A0endif
> +ifeq ($(CONFIG_RELOCATABLE), y)
> +KBUILD_LDFLAGS +=3D -z notext
> +endif
> =C2=A0LDFLAGS_vmlinux :=3D -T
>
> =C2=A0hostprogs :=3D mkpiggy
> --
> 2.25.1

Ping for review and acceptance.

~DG

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/592431589559423%40mail.yandex.ru.
