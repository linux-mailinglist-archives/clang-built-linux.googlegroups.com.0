Return-Path: <clang-built-linux+bncBDUL3A5FYIHBBAU5Z2EQMGQE6TRZXNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A05C400BDF
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 17:19:31 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id r15-20020a056902154f00b00598b87f197csf2636550ybu.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Sep 2021 08:19:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630768770; cv=pass;
        d=google.com; s=arc-20160816;
        b=K1gMVPYK84fE0T8RbQF9Kfg1R+SZYq8bWa0p5hnOtz2vLUEhVpCT53xPITCmVpF8Er
         nm3NhqHjnsTXlJldUAotxS1Djp/UcafovjARLkCKq+OA2S//NEyVBrqjJzvGPb21mDS2
         elEmeNj4MM3uTof2OWPqOi6gqRwC9HjQzgfm6HZGcpEitGWrDgpKY8BXiI5YIi2nEtws
         uBJ+hLNztSzPvfuxZbQq+W0h4z2SuSS3yBeb0RcLkQduGnK/qsp6WI1pJeXexEUxfZrn
         rMcyvUAvXsKnt3AukfXead1TRTHHDN8QAkgdm/I0luYZFkiXMkbzvv/VVJqgCLiPsvnT
         7kVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=gD0SOithsW5t+WWB7k+gIi7iN+REKgf220Ho2qllhmw=;
        b=vZqDFx3lhdB+IrOkEHB/vDB0nXuAVP1cYGNrWG063Rayvqoiq17v38iHaFOQfI7nGr
         sk5nC5rXA6bK/uDsW4QR9pgyrKvhDiLZswMPkiJObd4zoYdzjT4kUIOx1CRCcovZOdIn
         /EpvXwL0Ttb03Nh0XG+oZ/DqGhUqrGfvPD7Sn/4xHY4jbuYjVLNknnL3vYElVxxsDOez
         ckxH3rURzX9DzfKxzUyvN0zb11P5pvZvpu1ZVJo5ZFC4q9Iz1xFKubUiIQMd8nbCdVKi
         fpIHcysC0Sy6VGJm3uBMpanA/9MSzMIKQFyIvyFZHoK8K13B//eB9CuMlQ5I7eTtLGrm
         bqfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HT9ZzgWb;
       spf=pass (google.com: domain of fweimer@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gD0SOithsW5t+WWB7k+gIi7iN+REKgf220Ho2qllhmw=;
        b=qvxd6w2Vpu5Wgqoe/GRggrqlTKZqYFHhbQ5WmDbUxIeBIMwYENPbQj/jST11EBYu+o
         +RMa5vwo63qlQDtXHP/MsWXBIqjQ4Oat8p2mGUFsLVUZSiKWp1g5lZf3+loNeCpnvtbJ
         9cI7zwOkoQi1MnOH7ac56iLu7DDxbTVo/bK4kxLZe+qhEwed9Y+yohDFn/lSw3TJPYFz
         UeZekjphik6+epfnaa9oAQ0JXUtuJmeFcIADBSrdO+dvkMcRde7UGbVu3naHqr3jILg7
         GtTd+VojOcr28W78VTnnl4vk2gMyXmYvm9hafWZU2a1xzA43AjXmSxKcqEn3uLG8cJbe
         /F9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gD0SOithsW5t+WWB7k+gIi7iN+REKgf220Ho2qllhmw=;
        b=ortoUPMvv28TRTmhknyuQVDpgpc86bDENRLEKiFPlz0xnphcb5GOFogFtDsuBEAT5V
         c4/PScwIIALSS4iEzMjm3Y+VNlxTGjTKsv01IynAL+NprD99kjBx1+4YyCUfqGqMqMNR
         miUWqahkWX6o9CJ1j2tpy9MfJ0aU08n8pdnNw53uQRTfJuviKXt4y/oVYJHbaIi+VMTu
         OETVs75OXaCPmOR1lp9gvyOJ+cMTWqsy+bqmP4fLpsxo5numT26ZEZSFny2I7Wj7Rdo6
         N/362I6vhiVx59GNVqxr1zVhPHQpz7Fpxg77e95J58bf13e4pHlWfzHuKJ8tzeJ+t6AP
         GYlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VgrV1OdQykyfCRsBm+/v3YLJ8WdXQWPQp92/FUraRzBIZ+lA0
	+X/eAHmmLEWSqZILqVTDb6k=
X-Google-Smtp-Source: ABdhPJxHowO8C4xo79NMz7+1zx48yd39URvbEwREu86KotBoR+K+FeipJXvMZifnjzp8QCpzvS+FTQ==
X-Received: by 2002:a25:478b:: with SMTP id u133mr5424541yba.532.1630768770349;
        Sat, 04 Sep 2021 08:19:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9a02:: with SMTP id x2ls1105833ybn.0.gmail; Sat, 04 Sep
 2021 08:19:29 -0700 (PDT)
X-Received: by 2002:a25:ad5b:: with SMTP id l27mr5651272ybe.528.1630768769761;
        Sat, 04 Sep 2021 08:19:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630768769; cv=none;
        d=google.com; s=arc-20160816;
        b=hX9B4TBmZ+5kYU15sY6JRkI8LJo+84bkVQLycpF7RTMi+uJZWzt9G/adSx765Pg2er
         DtHlz1DKa2U+NfBcJbHKcufPlKzMB8mBPfuojUVC1tx57JTmBfenIL12p3SdRjImL0D8
         fiWiPhnL7qlDY1KdUiZpKSQPCLzpOTaU6ZP3ACv3wfTpVr8y2vjGX9XguWOKcqWkW1UB
         I5/xNycpd5Rosb85ZfJbEmXmsVK9n2AtJPawEO/GEa/KEFyH2tzFcMh1cuTDiIWPYTDb
         C2Lg4O4GdbNUSD1dUKHj9GIy4MvxBAQp8MFvmjOBzM8Q4rDbnUXfAXLLaVTqH5ds+FbY
         tjuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dkim-signature;
        bh=zvDeup5okN2+a9recacvzIyRt8oQsyaj87C3UrFckM0=;
        b=VRUdN6jhQ6NDxwuKEReHR3OCHlOVoC+nApW4vJ9/BvQznKVBoMNSlFKnjvdyijVi37
         Gu7S+lsLQbDMMC78fYOo/xvDlMgkM4QyNXGLmbMj/cEJRxSCIScK347KLdgvZOCsf/CJ
         m7hvUczox+4HWg8r5ljbyWapGvHKNBRh5Wibe6rsU3y7jp5Ech49AMIB9O2amcjmEUnO
         ke4giNtna+TekHx5Hwc8D7Owa2EW64T3vL9ONkrXMEEn4lQPHhnYtXH53BTDqyG9nI3J
         fEocYE0BgVRiGfRuJyO3XJ38l+2klbGOWX1bJU/zQm0iftsv2gFPlxR8ALPLxqbc0hiL
         g5Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HT9ZzgWb;
       spf=pass (google.com: domain of fweimer@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id u17si159925ybc.5.2021.09.04.08.19.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Sep 2021 08:19:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of fweimer@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-523-B4_Nd3ZlP523hyVUeBxjYg-1; Sat, 04 Sep 2021 11:19:27 -0400
X-MC-Unique: B4_Nd3ZlP523hyVUeBxjYg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E763E8145E5;
	Sat,  4 Sep 2021 15:19:25 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.194.140])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28C55189C4;
	Sat,  4 Sep 2021 15:19:22 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <nathan@kernel.org>,  Linus Torvalds
 <torvalds@linuxfoundation.org>,  Masahiro Yamada <masahiroy@kernel.org>,
  Nick Desaulniers <ndesaulniers@google.com>,  Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>,  Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>,  llvm@lists.linux.dev,
  linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
	<CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
	<3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org>
	<878s0c4vng.fsf@oldenburg.str.redhat.com>
	<20210904131911.GP1583@gate.crashing.org>
Date: Sat, 04 Sep 2021 17:19:21 +0200
In-Reply-To: <20210904131911.GP1583@gate.crashing.org> (Segher Boessenkool's
	message of "Sat, 4 Sep 2021 08:19:11 -0500")
Message-ID: <871r644bd2.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: fweimer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HT9ZzgWb;
       spf=pass (google.com: domain of fweimer@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
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

* Segher Boessenkool:

> Let me quote the original mail (I had to dig it out of the archives as
> well, no nice threading, too lazy, sorry):

It still doesn't say why.  I did see a reference to fleeting reference
to <stdatomic.h> and <float.h>.

My conjecture is that the real reason is avoid atomic emulation
(softatomic?)  and softfloat code.  It's not related to <stdarg.h> at
all: this header is replaced so that GCC's include subdirectory can be
dropped from the include search path.  What I don't know if this is to
avoid obscure linker failures related to libatomic/softfloat (obviously
not great) or run-time failures (worse).

In any case, it would be nice to know what the real motivation is.

After all, <stdatomic.h> is exactly like <stdarg.h> in that it's
possible to use its functionality even without the header file.  The
__atomic builtins are even documented in the GCC manual (unlike
<stdatomic.h>), which is why some programmers prefer them over the
standard interface.  And then there's the _Atomic keyword itself, whose
use can easily result in calls to libatomic functions, too.  So blocking
<stdatomic.h> makes little sense to me.

I don't know enough about softfloat if blocking the inclusion of
<float.h> is worth it.

Thanks,
Florian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871r644bd2.fsf%40oldenburg.str.redhat.com.
