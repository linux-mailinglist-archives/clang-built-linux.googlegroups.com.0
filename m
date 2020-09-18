Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBGNPSP5QKGQESVDDAYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E9E270157
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 17:51:55 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id f76sf3972417pfa.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 08:51:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600444314; cv=pass;
        d=google.com; s=arc-20160816;
        b=dRE9xk/avVU+I3w3u22uzJvI3DpH50McQG9XDj7+2Q8+6LFdIFxIOyE2epowxZGD0m
         QG9UFhi/S73l3KejfpKxIzAmvMXv428+9vm5OSkKMcxElTl6tbUJ0u00TPTPmbAVclXN
         C0glUGj2sHEiovLMInjbJEXEvVfigHojp/dvr2WIB0rRq1ERS+DuoFKjHMKoqE70nbFp
         BX6A6/jt35LLorR/vYv5VU7kqSxEjjiJyww3i0iBeTQZITnM+RYN5gqDHBcP8kC3G0Zo
         /pTIPxv7eMY4rX6FqgmGAO3PQ+eg6+SRq/9w8ZdoXUsvtwvG5A3ajozun4HR8iQUButA
         H7lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kR0NtCQ0HiPqivdTQSFc/Ho0br3k9k2f21qZB6WRQ+4=;
        b=zMLQweAuQcQ4SGAdnC7eGrTWAZE+AeM6dpXXpAXM4AR3YY+cZp4/jkm4MehuBfpYq9
         MYN2BJkzG9PS8PV/7ITW+SVKEf3ozM5IGugWiyKV4Sr8TUz1JnN1JSPl8Y1/IZNCuj5K
         DDFocYMBvgIV9pSMBThUR+oVoTPYlitOu48EDWzaIoj1L5/2sXwntz38bj4KaKvoPnx5
         y27UWoMv/8Fyrf6KtvCf9cJBCEtOGrh898035YJVjSsb1Pu32eRQvMnAmJLUY9I9SdmO
         JC568PyiPfX8EzTwe2NloXTpFh1rkJ/mjwldn1hsLwIkVcOqPidcY1MkiVsVWMdH13Ah
         UEfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xap2UwzO;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kR0NtCQ0HiPqivdTQSFc/Ho0br3k9k2f21qZB6WRQ+4=;
        b=kdjBEO+J7VCX1osC0y1r/AZ3mojygu32z+TT+UebKuOR3u0wzPUR0qTmvbUNPSavor
         5vBlCH5Lg+hPm+nW238/gy+85G8tC6oGxCCoJjzdmIfUZ3I/M6X78Uv+jgX+j/pTYzLO
         jgpCl615HgRk0A+i+rtOQpwgTPdcdKYQSXaGbTjXHESbyK70CmvR0WjE94USFuCBq7W0
         bBkA98Eug3cuScMslE8kUQGAW7RUM/YWHh6oS7q3BHXRBJW6b95VnQJ9dedgylB69wrI
         K349ljq3TGiT0l8U2ksgVpiSj6ryBnc1LhA+EPc/KShPK2+dPfHmdJxYgQPu6wtyxTMI
         cV4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kR0NtCQ0HiPqivdTQSFc/Ho0br3k9k2f21qZB6WRQ+4=;
        b=pOJh4iNzqn5g6mNQdr7mVKU+zlBU0YHYGf+QsOf/6Q64IO6AHJtNJR6EVw0YOHco3K
         g6FdFJEqyt0G7MIy6FygWqd8KK7Lt76CEg1SNL8BSoJy/5bk6b2032MTUspgZSj1I0PK
         Bn4cMLPTvNRcbirYIMaNVuhGNfHlMfTdAW7gJ1AkdGp+GIimXt6kpj8BGFm4cHnGbDVY
         SfFrfm8LwCldADtY6cQE9V8lzd5m2Tk2jolwBcimlSZjFC6O7pP1q0qIJw6NbeYN7n4L
         EdHoQzpSsPqeSTKid250VpS7FWZsc7tvJF0Q4w4KpzrcWZ/WmgN1qO/ofYuz+5uXQ2oQ
         wM9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RT1zm4HDsz/64OIvYz3azH+ZAYF0CGC9BIXFBb1VPPDpPM16U
	B2IAOvcbAe9UTQmDqm3Ywe4=
X-Google-Smtp-Source: ABdhPJxJLVmpCxIgUCEmv+M/NomfdyAPWSuXghMwWS7b6L4OpKJduhWdhoB3qEtkhKnibVYSvYQduw==
X-Received: by 2002:a63:4e41:: with SMTP id o1mr27320522pgl.205.1600444313747;
        Fri, 18 Sep 2020 08:51:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:774a:: with SMTP id s71ls2318379pfc.11.gmail; Fri, 18
 Sep 2020 08:51:53 -0700 (PDT)
X-Received: by 2002:a62:4ed6:0:b029:142:2501:35ec with SMTP id c205-20020a624ed60000b0290142250135ecmr17192630pfb.76.1600444313183;
        Fri, 18 Sep 2020 08:51:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600444313; cv=none;
        d=google.com; s=arc-20160816;
        b=OKn9ZXqdDtHxS3ot7Z8FD4SJKZYzDWLhASaSh3h+xxzQr0zTxfpEieMI2zEH7lFl+x
         vJzjAlt4GImMOS8xsxOQG+z+abocgeLvMwJNLYH6MekrkvUAPekMeeFCsGmfu91nOI/8
         HtGqcUB/IRlhurLxleHG/NxIoJh4RWFX/hL1Zrk8hMBADl8vfX4pzydUB5/zvwM8RJCi
         W+8On5Jeg8/mXvlgBeQAHMaIsQcf24dBLw0xklsKrHJp5ADFZq6RgHHUuzhuhZHBHkfv
         QaVx4oIjE7IaTZMaz1ep8Gw8Wtihp8hvNHY5gX5TfYNsmNQXwsYGakK5/Rv0xlMNRHNB
         91Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wN2Lonk3fGag+MhygRATrzJGxu02WDrFo0smM6EKPM0=;
        b=FhUc3ediW/oZi3f1xKaPzRg8yo/iCRJNRrVgqcb5BeY3hXyU66XFeiWLKgwR+/QfBM
         HA9KWbv2r7cbWGUtRG2itX/9GINNBwVGRJiwL5FAgib1a95ONMbBXEy6glaZtEEamtBt
         5mtOM50yVOO2rvk/+zB5Y6zwi0gs640r61Azu6JWvhyUKqotAlwhuYRdaNdzNd1FyAB/
         Cw9CxUyaK5KY5CBOmG03eoUIq+g4L0NWgQUaz6HWzIHRTiIT0oP+FnBEIZxYmJ+O/Xx/
         AhHeeELlwyj8ugnUhBnIwCdHzAt0Qp9/sY/LHmaS9c22EnL1ueGDDAQz9sYi/kc7/OCR
         Wv9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Xap2UwzO;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id bk9si232928pjb.1.2020.09.18.08.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Sep 2020 08:51:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-WN-K92OLM3CSA5U4WeuAyw-1; Fri, 18 Sep 2020 11:51:48 -0400
X-MC-Unique: WN-K92OLM3CSA5U4WeuAyw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 810D7188C12D;
	Fri, 18 Sep 2020 15:51:46 +0000 (UTC)
Received: from treble (ovpn-116-15.rdu2.redhat.com [10.10.116.15])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0B5555771;
	Fri, 18 Sep 2020 15:51:44 +0000 (UTC)
Date: Fri, 18 Sep 2020 10:51:43 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rong Chen <rong.a.chen@intel.com>, Marco Elver <elver@google.com>,
	Philip Li <philip.li@intel.com>, Borislav Petkov <bp@alien8.de>,
	kasan-dev <kasan-dev@googlegroups.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] objtool: ignore unreachable trap after call to noreturn
 functions
Message-ID: <20200918154840.h3xbspb5jq7zw755@treble>
References: <20200917084905.1647262-1-ilie.halip@gmail.com>
 <20200917221620.n4vavakienaqvqvi@treble>
 <CAHFW8PTFsmc7ykbrbdOYM6s-y1fpiV=7ee49BXaHjOkCMhBzhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHFW8PTFsmc7ykbrbdOYM6s-y1fpiV=7ee49BXaHjOkCMhBzhQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Xap2UwzO;
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

On Fri, Sep 18, 2020 at 08:35:40AM +0300, Ilie Halip wrote:
> > The patch looks good to me.  Which versions of Clang do the trap after
> > noreturn call?  It would be good to have that in the commit message.
> 
> I omitted this because it happens with all versions of clang that are
> supported for building the kernel. clang-9 is the oldest version that
> could build the mainline x86_64 kernel right now, and it has the same
> behavior.

Ok.  It should at least mention that this is a Clang-specific thing,
since GCC's version of UBSAN_TRAP doesn't do it.

> Should I send a v2 with this info?

Yes, please.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918154840.h3xbspb5jq7zw755%40treble.
