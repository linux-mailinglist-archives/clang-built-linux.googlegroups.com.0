Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBYW7Q2AAMGQEPBW253I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD0A2F7EF1
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 16:08:19 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id a11sf7562633qto.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 07:08:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610723298; cv=pass;
        d=google.com; s=arc-20160816;
        b=NUsK3sZ1SOFDKc5vPJ0pU5tGXzbZcbQ+mwf5MXrQdwWCPJPpCFCZvjMr0qBNwSGfw2
         9hW0OIrvG2MSgrNChndAHT7p7DwJMLzYVkWiG2453VPfWzl7C9MHRdEStqRWmwBxC+eV
         m5STVW6bp2G4gPllmlnqLJ12vEwAIMOWsDA61+0Uo2Ud5lqK5MIm+F7iczM7MwP3YJMl
         iINOWBrpcmNjelMYtafssQFyVGdfrRxtgHBucXQqiZgbBwTbdo5eZwe+OT5vAgokdZ5V
         9CemQ6ehYDelIqbeeQnMug0AgrM/ROp3PiGjXihWIeNkliVsh6srAO3AlfnG3bpbWmQd
         ewFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=QWMAYY4Yl97asCXntDuQh94ZIUTkf9mQJXMqKngzPFE=;
        b=CPXEte3yVGkZPunlR8uUdEtXoYDIctNulmBnMvPjuJC5Ar8T17E7gHoNl6PX4CfUYW
         t5Nnz4uli0+tfYnBnB9TA/zilb9AANH1nLxBu93SDhMwLyD00uCaic5dM/aUCeB/Xmtw
         PjKqFmnD0zPcGcH7awLS2NcyNjiHCfjkqo2a9jfJBxCk+nCASDtKyYV6YM/tPNlvt5Zr
         tDar/TOp6q0JbH/jkvteycy5YS/F1Uabbf/nMI3J1SURTQTsPogQCrryWqd1vWNyCeb7
         MalV2/Rhe/N9gkp6iKchDkEVSVc7KgdPuit/3vUpZfJhMXPqIcpH4IwJ910IIStdqbY+
         DXcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RJPr4dBR;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QWMAYY4Yl97asCXntDuQh94ZIUTkf9mQJXMqKngzPFE=;
        b=CtOKxV5pxK4d2Iza7rembvvjtiWCAP5GpDdXWfhMGw7g4As+g/a5DwF46zsrbnFA0H
         Vxw3XKnQtayf9yK0dzdhiLWzgP1g91PJdZyHuEGmzz9/4oiX0ZCn6oqlg9H0yQ3a/gUv
         an6YYVWcLrt1kksOGwWvqokVSyY2aGMFdhVxpD5jXSSGJaWK0Yp5fGOVGt5hpz3Mew4c
         qZSxpTacbgHFdoXJ8Ln3JWY878YqbM8E2B/uxkvQNIxII4JJ0ruByOQUqE2uZX00bABc
         sDUGoyZDDkJKFxDDYUQXTMYFC5BlWiQ9mgidXAUiVjwgj3Lofl9u/4v5S3ArOOP+glzm
         U+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QWMAYY4Yl97asCXntDuQh94ZIUTkf9mQJXMqKngzPFE=;
        b=DcxhAhMjdwch0+sYyp+U7rcuLgwT/7onHnZ9EL80CkpQ1F1E/mu/dWCQQ4Lss0rm+B
         t9HYNQVyCxxg8Jk0Ctgm4vpzcGBgSadZc+kWrgW+1u9C8El/c329QwPvCErLyJakR4yS
         MH8OL4+3YbcdpaMPOk6f81zaNqqmGDGe1CzpcWYfdLXO5Bw8/ZtmkxZduBqzls1s2hYv
         NrnOWyP/VC4SRK+iMGlCJw8cj/9vVvtSdfSAUwxqjr2PI7g30peb4VOu6M4enlnAMnFX
         ktZtZ3TS5Xw0uodOfbsuy8EfZuqrZr9JoLpISVqjfRsYnTG9o2ZqqLJxNVBfYt8EiR9U
         YPbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ixA4qyiXNuOyFVneoVXtuAHO3C9LP6I28VEK2tgo9uEhZTVr2
	gMnSPKl0CsEphveHu/wSH1E=
X-Google-Smtp-Source: ABdhPJyafpFjW9iYqLbEAXG3ZXyq/eqUASI6HCyFJvP/1jcxjrrBrVOsCZL5t0NLDhGgx5cFVpOuMw==
X-Received: by 2002:a05:620a:63c:: with SMTP id 28mr12639173qkv.26.1610723298330;
        Fri, 15 Jan 2021 07:08:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:bec6:: with SMTP id o189ls4721978qkf.4.gmail; Fri, 15
 Jan 2021 07:08:18 -0800 (PST)
X-Received: by 2002:a37:a06:: with SMTP id 6mr12468931qkk.376.1610723297980;
        Fri, 15 Jan 2021 07:08:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610723297; cv=none;
        d=google.com; s=arc-20160816;
        b=XtTUgtYk7OOBjSU2ppWqIKQ6X+nVw8LYuOCuRIETdF6TELpvmhr64QctBrp++0HRta
         5FbUGuYN9CxfeGtG9mvkJ+vRuIcVrhUv3NKueIMnpAc77rlBFpWxe+DE3jTpKGdL4S6v
         V1yBDI0Dcfki5n5iAF5Bk7A6w6wutRfqLdq7Q1hzlcuxjGXFvPcSD/LU3bc+SY3tTJ/L
         xcFbzjPRmrsQdrD7jiwbRb40LPwnXfaE3A1hxV0+BJlj2bk038Pf0fYcu7KY5Rvzc1kT
         HSCUCNc1fqzX5EAcd55SlSv/mRWv5+36vTcL8bzPYW7kLiuL18mlYDDAIyhMGHcshAhu
         Satg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=NJb6ukKVIDGK20PzckBJC7srAf03mNvPdQ0z7RPLWw8=;
        b=IO3KfJxaRedcLAfDHAGwr9JoC7PufuTeleJ2A/2zaEg/URYwvD0u//9+NhHC5/In7k
         58yzAFc/T1Ni6Z36IKUSGbuka1OWAwqVDAGvGHwlF+fakxulUsCmI7fjOrzsIFzADKdj
         tjpUi2HDMqdJEBEo9LRoIJ1+77HIPfUUQPiRmJAJVKT33U2dL4546NcXwL2iaoCzzAfu
         0OJZpAWJRaofugMi7R0iXCaYBDmCgcVnixytfpMpD9fo7LnxkvbMQyVp0/fIEyGPJRpu
         2gq1Bb49+Osak5LgLDttQ7SgIvwdSagCdXKGSx1rMUFOoQX1CmCfljguJdH/QDskYt+Z
         rhwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RJPr4dBR;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id y56si671294qtb.4.2021.01.15.07.08.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 07:08:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-iMfeSiUpMzKE07biV3KWzQ-1; Fri, 15 Jan 2021 10:08:15 -0500
X-MC-Unique: iMfeSiUpMzKE07biV3KWzQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C759CE650;
	Fri, 15 Jan 2021 15:08:14 +0000 (UTC)
Received: from treble (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE9DD60BF3;
	Fri, 15 Jan 2021 15:08:12 +0000 (UTC)
Date: Fri, 15 Jan 2021 09:08:11 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: =?utf-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>
Subject: Re: [PATCH 15/21] x86/xen/pvh: Convert indirect jump to retpoline
Message-ID: <20210115150811.abom3lkutyrwetpi@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <adfa2afe5ddc831017222db9f48ad0fbff17c807.1610652862.git.jpoimboe@redhat.com>
 <12afb52c-f555-656e-d544-c2965a616bdc@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <12afb52c-f555-656e-d544-c2965a616bdc@suse.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RJPr4dBR;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Jan 15, 2021 at 06:24:10AM +0100, J=C3=BCrgen Gro=C3=9F wrote:
> On 14.01.21 20:40, Josh Poimboeuf wrote:
> > It's kernel policy to not have (unannotated) indirect jumps because of
> > Spectre v2.  This one's probably harmless, but better safe than sorry.
> > Convert it to a retpoline.
> >=20
> > Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
> > Cc: Juergen Gross <jgross@suse.com>
> > Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > ---
> >   arch/x86/platform/pvh/head.S | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/arch/x86/platform/pvh/head.S b/arch/x86/platform/pvh/head.=
S
> > index 43b4d864817e..d87cebd08d32 100644
> > --- a/arch/x86/platform/pvh/head.S
> > +++ b/arch/x86/platform/pvh/head.S
> > @@ -16,6 +16,7 @@
> >   #include <asm/boot.h>
> >   #include <asm/processor-flags.h>
> >   #include <asm/msr.h>
> > +#include <asm/nospec-branch.h>
> >   #include <xen/interface/elfnote.h>
> >   	__HEAD
> > @@ -105,7 +106,7 @@ SYM_CODE_START_LOCAL(pvh_start_xen)
> >   	/* startup_64 expects boot_params in %rsi. */
> >   	mov $_pa(pvh_bootparams), %rsi
> >   	mov $_pa(startup_64), %rax
> > -	jmp *%rax
> > +	JMP_NOSPEC rax
>=20
> I'd rather have it annotated only.
>=20
> Using ALTERNATIVE in very early boot code is just adding needless
> clutter, as the retpoline variant won't ever be active.

Yeah, Andy pointed out something similar.  I'll be changing this to an
annotation.

--=20
Josh

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210115150811.abom3lkutyrwetpi%40treble.
