Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBM4ERCAAMGQETPTHS4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8F52F86FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:59:33 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id y34sf7242914pgk.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 12:59:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610744372; cv=pass;
        d=google.com; s=arc-20160816;
        b=SpvLdekVzUOzSkHpuWOp7qNnmR0oExKlK4fBUHR98NbtSyBijDdafquEP4SLESkXQl
         mvYX69ndeRRfERbcYWfiXYAd2TNCpA7Hh5Vx4nBtWXAmATQLYF2HI6fEk/BAe4qdfJ41
         2XuvoVCKIpcT09hMIoGyALq/8uqp4VDbfZPWyvOSCL1Oc1+sjOHcf/wv74/1Oghve4Jm
         zWQqwhiy3xLmDonRaJl4QvXUIMp6ZqJVpZZ5mGvQDzsMCoz9dVXxfYcq6zfU8tuWWp43
         JhjGtzz1Otl+TPQ89f4P9qCwjAsWOBOYLHelGa2vOuO6tQHMQ02f4WiHb1hanF47gEgs
         s3Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lDUsS6mS3u17PFPexKnZEjiCWq3r5MLJjAb9APiY7Mo=;
        b=Vp5YCk0JjpYoc+8OWnZa38L0O4AbeCsEdY3fFlkri1XpS/1gK6QqS+ZdLTtryrkWig
         iDoGZ6oNHPl9Rx9bdKFcW/qBBzA0q13naSCXMfB7Zky+/erZjlenU9V18TqojJrYgmEH
         RbaYSy+6tVqkMTliDCA+KGXsxjInwZuu5TnyFjdVojYyhfYCrl/LWjmSvM902Uf9zieM
         X/RoLWrdfua887J0RulHrmGnymRpX2lUHLBYzUxIkCYEdYd0mv8uOxprrb4LXhr88NWK
         JT5NrVh7o9pBVHjYfEylekUPukQEGvkOXu6rdSEw59GYHuzuc9z4lRzhF90xXT3TjXzT
         T/MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i3HWfQ2P;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lDUsS6mS3u17PFPexKnZEjiCWq3r5MLJjAb9APiY7Mo=;
        b=qQSbZz48EaamhJb2xDhf8siJ7jiwY7aWNn+k8z+4Jmj9FQHCn+cyCe28aTbi4k+gle
         Ss7s4xQTQ4PwiENCtaNS29ytK4q2mIzlfnQVM588iJO3Ivtb2fC8ztxcKnX7zgt+wB/T
         HDcVSIVtAua5DxT9F0jsKnGYDG1xRNg0AnJnhuowCw16aBsmJDgVh5X7pXEaeHLaHFSd
         5nkwzjxAw4/8FyZvLUnihOabcRyuU6f3lUmodJuyJ4U/XPjOpNlDuRPVCcmT3r0PfbaY
         TbTDqBil68BxBi8NSLwJWzakaPunlNGrFU7Ue/Mx+frgkpxfGg6RSJBLCY3Bz+T7oJBx
         Kk1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lDUsS6mS3u17PFPexKnZEjiCWq3r5MLJjAb9APiY7Mo=;
        b=fRw+0IgpQUAjWFxP1ib+q8DgKGH29MZQf+rgSEKp2l3AUAfkJJ90kaYpyZ3ye3N7dK
         eONjjB2yAV60mkEGCNcYELKYHI2aCcMMWd8QDa4KzvEu4tOxMTrhyB0N0IBqNEJqTVfW
         AeVphSP7KCix3c8w/d+rDg9EJPYBqZHonA+Jxtlp+cbOPhFS014c4UHI0kmD6K6hIHs9
         u42tCCWWT7/MzOJGGrmOZx/64mDOc1Fml6DG1Wdakg0NRPbC7jHetNQIUC6mSiMQhZrU
         vhyS5hTRK4m05p1V04j1m2iuGpwtO7d9p2WhxliOcvSmgHWb2sow6h0kifOPbNJXwsDO
         tK8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NmFz3Ske8D+JjKEUxDIsMYOZ9rk4k+o+VbVE0j4stogzH3Tn8
	h/meLtkYMmjUdgaSwS4jo2o=
X-Google-Smtp-Source: ABdhPJxh7YFlUwP4gZDFHyMaA7a73222YhPkeNK3fKIzPkRbi+ZM29lnTXGh2IlM2+B4f8sgiRXVlw==
X-Received: by 2002:a63:9dc1:: with SMTP id i184mr14487273pgd.409.1610744371952;
        Fri, 15 Jan 2021 12:59:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ea89:: with SMTP id x9ls4876445plb.2.gmail; Fri, 15
 Jan 2021 12:59:31 -0800 (PST)
X-Received: by 2002:a17:90a:4306:: with SMTP id q6mr12670396pjg.231.1610744371181;
        Fri, 15 Jan 2021 12:59:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610744371; cv=none;
        d=google.com; s=arc-20160816;
        b=os/Fd8Ua09FLSF3mMY/5rbe9CZ+qFeHX5iswwZPlqAv1nHoi0wI6CIRlhT394Mk2Yf
         I4FRlm+q7iRAAoDaZEsu7iikIwE07wU/liHxoG4isHBdku+bME9KsioVK28wC4e+UpHG
         ILAHSyjhc7D5S6WREKTi5kqI5/wMS/ZpMtoW/w65ygLPR8KUF9jeUXUTHaqDvQ+z9ske
         6vdamKxZfM+rB7KKM7/SCXUkXK/eqPsu2qzR1TaEaLsWaeUHBdYW/uIk+GE4TA4OiwUz
         d+kR95ZRxcspuivnFRetNKKVxAu82FlQYQu+D3idBgy1DlGXDWIezfRFxdNpnsvMeTif
         ZqCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=la5k3x6l5Nim7XIsc/rdW4MreIXzyWWyJp04sEMzpkU=;
        b=XNNorQWksadkTpL6C3Han9CzgyMx7jijQsu0SkOmY3h3LGAPxPL4vfg6cKG5YdJi2n
         xn0bgfnDHBiplEOxjrPaJD9LyQC9PuLnbKreeCJMfRZ/0+ftvpbxPzT4kEtzYUaJKZMW
         W+2RZBvvKjkTU82ofeMqCY5v0pUVktcsJOUacGf7Io5OApLr7LTj7Ui1LmEB7Tsupu/Q
         QmGf1741v6OFiKP6yTVcUrS0J6G9sql9+mFmlFqz723oOKATR/2WtV4p5Unfjs5iYYjW
         axmDDYBxUjZ+REE9/j7bR/PlgPVKZlEo0TG7rpS4XYaZ//eY8+E1ZcavdTPVjZUgyRkn
         zTHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=i3HWfQ2P;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id z2si669747pjq.0.2021.01.15.12.59.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 12:59:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-oLZI2KgHMyWoin35npKoqQ-1; Fri, 15 Jan 2021 15:59:26 -0500
X-MC-Unique: oLZI2KgHMyWoin35npKoqQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D007E806661;
	Fri, 15 Jan 2021 20:59:24 +0000 (UTC)
Received: from treble (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FB8F10016F6;
	Fri, 15 Jan 2021 20:59:22 +0000 (UTC)
Date: Fri, 15 Jan 2021 14:59:20 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
Message-ID: <20210115205920.oknluuroxlhkxd2c@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
 <20210115195226.uiclol5lji3tuxgx@treble>
 <CA+icZUXPiE_ES4V7SbKs6Et9nJua5j4HhxFcBjgzvyttaxszDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXPiE_ES4V7SbKs6Et9nJua5j4HhxFcBjgzvyttaxszDQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=i3HWfQ2P;
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

On Fri, Jan 15, 2021 at 09:19:16PM +0100, Sedat Dilek wrote:
> > > vmlinux.o: warning: objtool: balance_leaf_when_delete()+0x17d4: stack
> > > state mismatch: cfa1=7+192 cfa2=7+176
> > > vmlinux.o: warning: objtool: internal_move_pointers_items()+0x9f7:
> > > stack state mismatch: cfa1=7+160 cfa2=7+176
> > > vmlinux.o: warning: objtool: strncpy_from_user()+0x181: call to
> > > do_strncpy_from_user() with UACCESS enabled
> > > vmlinux.o: warning: objtool: strnlen_user()+0x12b: call to
> > > do_strnlen_user() with UACCESS enabled
> > > vmlinux.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x390: call
> > > to __ubsan_handle_negate_overflow() with UACCESS enabled
> > > vmlinux.o: warning: objtool: .text.snd_trident_free_voice: unexpected
> > > end of section
> > >
> > > I haven't had a chance to take a closer look yet, but some of these
> > > are probably related to
> > > https://github.com/ClangBuiltLinux/linux/issues/1192. However, I can
> > > reproduce these also with ToT Clang, not just with Clang 11.
> >
> > Thanks, I'm able to reproduce these.  Will take a look.
> >
> 
> AFAICS, that misses the v2 diff (see attachment) you sent me when
> dealing with objtool-vmlinux and clang-cfi.
> It does not cleanly apply with the combination of your objtool-vmlinux
> Git and clang-cfi Git.

Patches 11 and 12 should in theory have the same functionality as that
diff.  I just refactored the code a bit before posting.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115205920.oknluuroxlhkxd2c%40treble.
