Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBRPM4GAAMGQEAHZ473Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id D774830B23B
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 22:44:38 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id z9sf10304477plg.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 13:44:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612215877; cv=pass;
        d=google.com; s=arc-20160816;
        b=kWEdD8k2A8coBVfTHn6GYLmKSoVwtHxJ/peIH1itkNUCfp5MZUVqlMlMA4heLxEcpD
         IxLL5pGC4+Z5GDjoF+RaRZHs6ilEcJaNSj3I92TNenruU7lNO3SGI0U9duYeCiRdjw7j
         vShDZDyjwO4FcEBftuoHBDoU/va0KIyja+xrYudmsETonx/fHHRUNZ73LVjrql5mfMi4
         YsFw5FumZ3PTyhwBz56IdHbJVb3rNmIIN4VSEWU9AbGQaKPwxrQh4m6BJIv33goUMjlV
         GEWAvjnYz0VxrS6yKAom+BqYhUc4MaAiFeun9uHC3/aYCNtDblD1eByuWrq+t5D8Cqo4
         yh2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IUuO5UUzFPlCJdka1y19qFegXFxAgPl1l0Wr7GNQG0Y=;
        b=yNQUHp+XHr8WvG+iNc8WkIM4hGBBiDt04Esq8wGZlqcuUR1vXyqY4cYTi8Qh3oE1Lj
         PWuyNmw3EPDU9eAz3a4U8wr/rqFg45TLHeU5hfith6LUtdRS+EU7rUqNVNHQUum8et/h
         HL15I8aK3IEYiWvzfx4fm1EMewF0bNFh/bVIqRPfWNGCiYbLjGh/nxMpXgT1m7nAMsgi
         JJig7OiyK8u2jNX9I5+z553KUhFAspmnyQu996luFyuXG0MdHERKmQasQfq+jYE57jGq
         Xfk5RvdGavf210BkxW/H669/RV6G9HBeSf+dXxwC/GjlKw5yPIi4pmgrn2d7WFYwxw+E
         8gjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZHjf6r0o;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IUuO5UUzFPlCJdka1y19qFegXFxAgPl1l0Wr7GNQG0Y=;
        b=dBNvaJyHcCoe3dpTjIdsDtd6Ktbg+NV103DHZ7FV+wueCK6yRAwylGp9edZYjMPMa4
         ElLTCBsoAzCWmZjGl4OmzyRFURTOe1LdIEEqU3brWoGqU5rer5SxVkPTeDvpOFF6lkPU
         53HalRdc4yts6KqQKb6kTbvZkudxBRqhZWT59a82mp2mzY3EeL3mkd+E2sMkMJR79bCI
         aBE/+BnQ5efqOMIIgl+mZL8mT+CTd4qNmz8sWvtAFYGvYC4/m1aZgevfmTUgWhzo6YiC
         FAh3ovBO9Azf5mpZr7UHr+5vOFv+gpBkoOR7ms20tvwQQKtoR6qHZuw6NrGhgF9sZqYI
         iXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IUuO5UUzFPlCJdka1y19qFegXFxAgPl1l0Wr7GNQG0Y=;
        b=iIhhCLKbZR+t9xiOJgJNOILB4W9vbHa3TyOPaoXlX3LEUSwuvoS4EmJPzwiU8l8WWN
         ebHmPtyZxnUdlKgK+EykBAoTnAfGbfOQxWNKFsTK63x23GPjMSVd/7Xrii+h6tVvITMv
         LihL5lk7WAMaT9imFraveCRDQr/pqG7C3sROjr0KXuUvC/AB7QJb1YreIICxCyyVvJ+K
         3AeUlkAMP6iziCEwpgxOG5Si0ezZyLE5c+hfklN7qI6P5IAZMb6PdJz3gPODWixtoki5
         81/wUquCVk3TeljzD5nJRx6GxGWum1mWwPcAZw5IJTzsjcz2DtyvLoGlBjQNmOzTZNU9
         7//g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531h+dFL7bhL0r3ViU0jCiPxf91Pi2Y8gdUHgPHULGaOaweuElpn
	voLIzp4LcDeyCsHE1sGE23Y=
X-Google-Smtp-Source: ABdhPJzYMVwe6JVIJpRikSFmQ8C1vLcWpgs1q9/+Y0r1EOmt8cHv0ZlFW4QbNEa0vbwLvb5mXZt2xw==
X-Received: by 2002:a17:902:7793:b029:e1:8692:aa93 with SMTP id o19-20020a1709027793b02900e18692aa93mr495377pll.21.1612215877551;
        Mon, 01 Feb 2021 13:44:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba17:: with SMTP id s23ls259377pjr.3.canary-gmail;
 Mon, 01 Feb 2021 13:44:36 -0800 (PST)
X-Received: by 2002:a17:902:f54e:b029:de:19f9:c45f with SMTP id h14-20020a170902f54eb02900de19f9c45fmr18987082plf.48.1612215876878;
        Mon, 01 Feb 2021 13:44:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612215876; cv=none;
        d=google.com; s=arc-20160816;
        b=IRaJgPfXt3CwPIQ7fxA0RJp2A2PHhNrSe5GCPVsps+yFXXqdHrIMuf8Ca/Zb9BvWUi
         OIN5UsyIRUzsnaGXIbfh4I45JeDDq45aDXa24kdgwNv84AKZPJd/unCLixpEaDUVxuzh
         llzgc79UMOtjjKcT5M0FDzZYgTfc2Ug0o4ivksO6Zc4b8PXsi//mLYXApiAcfgwyQb3D
         NMcFxRfO93Zg7qdZZ1H2YC9iG4mwNbrnPwzj01rVbTbGibSwcIPZXkmtpzQ7mDpolsiV
         y2Y+74i9TUFJuwsNZul6pKc9Nd553xeUAZJJD4rWQrX0RtranMrQuiG1Fgi5pDRXFz2l
         RN8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MSmYYJUxjx/txjv3Ym8eyrnxTI/eSH9db57IFYwcwok=;
        b=C2e1aHJ3/Bmdol43wC2kvyVEW7rXTFuakUl+CX7DcccFGG2IsTkhX1PS4aI6HRjb05
         LCR0q6jvsLSgKsXXfMmdDseqALRIyqmCyp8dMTMQbYRetrmDnaCHx6hdHmbLhvBZXK+a
         XkQdvo7ZyK6mmuh/mhylgde1LsCtQac1aN3DLf6Jg3Z0iZGFoaU9N4Bg2Mhy0s/jDuBv
         x2qswK3ddxnqeVsN3WdWzFkXM+w28ffz6hWlxokcH5TFTMC2Go0XkuguRg5vd+/6NkAS
         YbQKcYGP5ENO3CDVD0hONtifq5tKC4x3ysC6qCma3E2f4a3RnF8lBjcaajXqIAYmGX/6
         sEXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZHjf6r0o;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id 13si1006759pgf.0.2021.02.01.13.44.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 13:44:36 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-WO1Z_rXeMVGapiLOI2ZcNQ-1; Mon, 01 Feb 2021 16:44:30 -0500
X-MC-Unique: WO1Z_rXeMVGapiLOI2ZcNQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F5401005513;
	Mon,  1 Feb 2021 21:44:28 +0000 (UTC)
Received: from treble (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0341739A50;
	Mon,  1 Feb 2021 21:44:24 +0000 (UTC)
Date: Mon, 1 Feb 2021 15:44:23 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Julien Thierry <jthierry@redhat.com>, Ard Biesheuvel <ardb@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com,
	Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Message-ID: <20210201214423.dhsma73k7ccscovm@treble>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZHjf6r0o;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Fri, Jan 29, 2021 at 10:10:01AM -0800, Nick Desaulniers wrote:
> On Wed, Jan 27, 2021 at 3:27 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Wed, Jan 27, 2021 at 02:15:57PM -0800, Nick Desaulniers wrote:
> > > > From: Raphael Gault <raphael.gault@arm.com>
> > > >
> > > > This plugins comes into play before the final 2 RTL passes of GCC and
> > > > detects switch-tables that are to be outputed in the ELF and writes
> > > > information in an ".discard.switch_table_info" section which will be
> > > > used by objtool.
> > > >
> > > > Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> > > > [J.T.: Change section name to store switch table information,
> > > >        Make plugin Kconfig be selected rather than opt-in by user,
> > > >        Add a relocation in the switch_table_info that points to
> > > >        the jump operation itself]
> > > > Signed-off-by: Julien Thierry <jthierry@redhat.com>
> > >
> > > Rather than tightly couple this feature to a particular toolchain via
> > > plugin, it might be nice to consider what features could be spec'ed out
> > > for toolchains to implement (perhaps via a -f flag).
> >
> > The problem is being able to detect switch statement jump table vectors.
> >
> > For a given indirect branch (due to a switch statement), what are all
> > the corresponding jump targets?
> >
> > We would need the compiler to annotate that information somehow.
> 
> Makes sense, the compiler should have this information.  How is this
> problem solved on x86?

Thus far we've been able to successfully reverse engineer it on x86,
though it hasn't been easy.

There were some particulars for arm64 which made doing so impossible.
(I don't remember the details.)


> > > Distributions (like Android, CrOS) wont be able to use such a feature as
> > > is.
> >
> > Would a Clang plugin be out of the question?
> 
> Generally, we frown on out of tree kernel modules for a couple reasons.
> 
> Maintaining ABI compatibility when the core kernel changes is
> generally not instantaneous; someone has to notice the ABI has changed
> which will be more delayed than if the module was in tree.  Worse is
> when semantics subtly change.  While we must not break userspace, we
> provide no such guarantees within the kernel proper.
> 
> Also, it's less likely that out of tree kernel modules have been
> reviewed by kernel developers.  They may not have the same quality,
> use the recommended interfaces, follow coding conventions, etc..
> 
> Oh, did I say "out of tree kernel modules?"  I meant "compiler
> plugins."  But it's two different sides of the same coin to me.

I thought Android already relied on OOT modules.

GCC plugins generally enforce the exact same GCC version for OOT
modules.  So there's no ABI to worry about.  I assume Clang does the
same?

Or did I miss your point?

> FWIW, I think the approach taken by -mstack-protector-guard-reg= is a
> useful case study.  It was prototyped as a GCC extension, then added
> to GCC proper, then added to LLVM (currently only x86, but most of the
> machinery is in place in the compiler to get it running on arm64).  My
> recommendation is to skip the plugin part and work on a standard
> interface for compilers to implement, with input from compiler
> developers.

I like the idea.  Is there a recommended forum for such discussions?
Just an email to GCC/Clang development lists?

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210201214423.dhsma73k7ccscovm%40treble.
