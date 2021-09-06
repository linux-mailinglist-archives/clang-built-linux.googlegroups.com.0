Return-Path: <clang-built-linux+bncBDUL3A5FYIHBBGF33GEQMGQEVRWD57Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id A8826401F96
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 20:27:38 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id w2-20020a63fb42000000b00255da18df0csf5358009pgj.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 11:27:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630952857; cv=pass;
        d=google.com; s=arc-20160816;
        b=cc9cUPyJbQJrj6hOXUcdNHkJ70x90tolimcZUc3lKOcbPi4pB5Am+iayyqaSGi4pnQ
         vwVOHMG9qMrur6WJ8I6Bb8DFtt9o7VsTORhBN+rPc/V/WgwLyOyFS733cHR62/ZtVdDw
         A/lV8d6lwNsBB3xTPyAHQ5ku2zTbpWqUw0WyDxjDO78Vb4XFh9AF1m7U7R9AE1ke9rem
         sDubyRUu/6zjHQtOD46DmeSUvXJMShozXVCczRN4dWWMiPH95Znv2KnccEzZYN9K0Qk9
         0iVVUaUkGgnVQO+4cG5ryWE5mHZNa29338hPA5HjU4jPBNifUVPXcJEXwWDfRe6/GSPI
         csyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=9y2kbU3wtxrIqNnwQwZKsgpLPDLt1Uz4ohGr8jhNuJo=;
        b=TXN6qeDoViT0UMKtBdzQ0OcnsETfe5RRyM15VJjJ/14l1jWwPNZMqVCJBA7SrMr38M
         d1mL6ujjIBtumwM2ael9LLnFVBjPTjdUqmZrZHAlNJFK6rqxZDfBFSmzdXR8gL+TpiGL
         QE/1LL+lMLXlhw8zBTayLw8XZClQAvGn0EJSGguDjvN6/P31E+dxGSMrg0ZIxGL5Cwzw
         13mr6vfiPBku3K3Dn2ECLUC5T6PHmRYXDso5W9m39egMtZnlVypleme0PWjgp1UCeHlg
         Km+MgfL7fDtINc87Q+VCA+GKHZWwq5EAU8BIHO+ok8fbu+WK0HKsbSoo0tTgrD3k7G0H
         rolQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DUMQUUKz;
       spf=pass (google.com: domain of fweimer@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9y2kbU3wtxrIqNnwQwZKsgpLPDLt1Uz4ohGr8jhNuJo=;
        b=c0FS3XbZ1+JPtbPlcwzdjuBzK7L86bIbjqclpC4j88merqdo3TQ2AF7u6djaEmnlBb
         xYdtDHlR2RW/Pailg1gOY9gsVUO+7eVKIQrRldj5HWYXCtJJvrK+IBM5ehWsnYdDNVpt
         WTlvZB0rzRLYFlDIrm+zx+aEf5SHhPXrbF3o4f+UCUerZGpXs97+UgRgoKEt+wPzKuCF
         TA8m36sUyvbz2Zt05Sz3Ya8bXh94JNTdLgVwFV9oBrXmgMpRAJiyJPblcySRjJvNkG8X
         /KDGpBIZc43Qu0PV57qtttydDYv9SsN6Y/nb6SPAOYKwYx4nTdH74rbkM18BMSUTRhbi
         FkRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9y2kbU3wtxrIqNnwQwZKsgpLPDLt1Uz4ohGr8jhNuJo=;
        b=qBVBADIdIy9sF9PMm1TerHOn4+cztm9lI8Ehfp8ycGArjO1YGo36QgAm3D+eK5D7OQ
         vddKbNo3RkiMyl05L+Vh5z5aBaWsXd7roZZUON+7LX53P8QANBUoLVLhjQXmPBKdrXzi
         5Rmvzs5AODBdI4+/KNhLQAPHPAzEugRPLRnszQMbwQFW3W8Fn2RgKEJ3KNVHUzHZ/18t
         6lPq/bWzdXAVMM/bNxSmF3jOYmvheVAH73kh7zAkQ1lrXNJ85TFfKHJP6f1hu1dBLD1Y
         knxB3wlLfJ2ZN7lmLNNBs6QMpSFpFaVGLEFaBgAT6xOkSpYOlSe9cLbeU9u+Iq2bNQ15
         y3iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sbuf41eBkMEyzIjGhQhRnKh+SKkJTh0HwwEKXaKxG1rP+gra8
	SWsL3WDPSJoc9Fi2fl4uuOA=
X-Google-Smtp-Source: ABdhPJzCjjuqenk1ST6Mbs9TaOQHKMTzJ1D9CGP38pNpBvES+JkmEGHJ66FbA9STPBKP4P3Lw555MA==
X-Received: by 2002:a63:1618:: with SMTP id w24mr13414205pgl.146.1630952857062;
        Mon, 06 Sep 2021 11:27:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:430a:: with SMTP id q10ls110457pjg.1.canary-gmail;
 Mon, 06 Sep 2021 11:27:36 -0700 (PDT)
X-Received: by 2002:a17:90a:b904:: with SMTP id p4mr444609pjr.34.1630952856416;
        Mon, 06 Sep 2021 11:27:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630952856; cv=none;
        d=google.com; s=arc-20160816;
        b=AqoNDMCVhzg6dWxc5NY6NsCbQipHawzLT7WxuDFlX6fQm+b7MyedLfrcz635OIZ5qv
         ogDSGGk5mf+GR+M1DV1VZXMOceyUslAh3dedKHmKjDZ6yHKGCQKo3bvJDO+6RHcXmaOP
         vQu6xudpZuHm6jKZ4V8dA4RkE+dFsucXHdWwJHifSmQFLGO3XGlU2PJM4YrZLgDdpYVF
         7Th4oQrxEIFWhvQ4JPY7XjoYfmPZ2EabXkNiNjG3+WIUhx7uiTSN33VNg3ER2N6U9oSO
         aIJp6dwGH6DAwOrpCqyNSQ6UuI+uAM25Juq0BQSw/fVu4d6MtMJ1jASmFeaJr5lRqVLb
         HA5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dkim-signature;
        bh=zdZg7k52Zmj/hALie/T8LIPyy9j0vAZZQI7YDqk+68Q=;
        b=u4XRVlSvp0ogS/hA7Anbyxn2Nrpu5VkKnKeRFY3SIgyyg94MvM25i4FodF22dHzfY1
         nVZCyTkK7HpdG+1UdruSD3MwvoPfRInr06tqfK6hyYCYsjD7PZM4x5u1ofS4yyYaf2PT
         ht+DDbCKZwMhi3S+zyU6infi2KbT52P23rNPrnLN9ciOMRdauIYvkFCGUTHKYbeOsFae
         654sbuv9grvs7/wPiWljc+KOllv6ztFDC8OZ9yFu9qk/IJ1+0OgBbSNX5lBosh7zqZfL
         TRG55d/7U3O/frt5D8wlHxzgK3z0vDxg7rCE4r1ZP3AqL6mNCxkGeySKR9BuhxtuEwtA
         xNng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DUMQUUKz;
       spf=pass (google.com: domain of fweimer@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id i123si577542pfb.1.2021.09.06.11.27.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Sep 2021 11:27:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of fweimer@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-334-8aTRbxFEMw2lx2hBnSYCSQ-1; Mon, 06 Sep 2021 14:27:32 -0400
X-MC-Unique: 8aTRbxFEMw2lx2hBnSYCSQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59C0C1883520;
	Mon,  6 Sep 2021 18:27:30 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.195.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A66C25C22B;
	Mon,  6 Sep 2021 18:27:27 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: Segher Boessenkool <segher@kernel.crashing.org>,  Nathan Chancellor
 <nathan@kernel.org>,  Masahiro Yamada <masahiroy@kernel.org>,  Nick
 Desaulniers <ndesaulniers@google.com>,  Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>,  Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>,  llvm@lists.linux.dev,
  linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
References: <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
	<3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org>
	<878s0c4vng.fsf@oldenburg.str.redhat.com>
	<20210904131911.GP1583@gate.crashing.org>
	<871r644bd2.fsf@oldenburg.str.redhat.com>
	<CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
	<20210904191531.GS1583@gate.crashing.org>
	<CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
	<20210906154642.GV1583@gate.crashing.org>
	<CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
	<20210906172701.GX1583@gate.crashing.org>
	<CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
Date: Mon, 06 Sep 2021 20:27:25 +0200
In-Reply-To: <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
	(Linus Torvalds's message of "Mon, 6 Sep 2021 11:11:35 -0700")
Message-ID: <87lf49wodu.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: fweimer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DUMQUUKz;
       spf=pass (google.com: domain of fweimer@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=fweimer@redhat.com;
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

* Linus Torvalds:

> We use the compiler intrinsics without the C library header files for
> everything else, so doing so for <stdarg.h> seems to actually be a
> clarification and improvement.

This is an exaggeration.  On several architectures, the kernel cannot
use the vector built-ins directly.  Some of the implementing headers are
very special and intertwined with the compiler.  <stdarg.h> is currently
not such a case, but it's just not technically not feasible to avoid
dependencies on all compiler headers.  I think this considerably weakens
the case against <stdarg.h> because the compiler version is so obviously
harmless.

What the kernel is doing here is imposing an unnecesary constraint on
compiler development.  Basically, you are telling compiler writers that
implementing features with the help of header files is a bad idea
because it makes it more difficult to use them from the kernel.  (See
the proposed exceptions for vector code.)

Thanks,
Florian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87lf49wodu.fsf%40oldenburg.str.redhat.com.
