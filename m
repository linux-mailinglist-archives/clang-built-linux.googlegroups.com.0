Return-Path: <clang-built-linux+bncBCIO53XE7YHBBEV57L5AKGQE2FOP3EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F8B2681B7
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 00:35:00 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id y16sf9843246ioy.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 15:35:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600036498; cv=pass;
        d=google.com; s=arc-20160816;
        b=P1dsLNw7xjNbqHVZKAyHBJkL12wUvh070l/qZKNKPhuEe0+M4xKpbuLARg/Cer68zo
         gpgLV7kVbYM9jxBvsiKR5R0wFhPQETbobvirBdQpF0ft1hQzoMKhn0Aaqhvg6Sj9sr1M
         XoLjjR85uOd6oVEiQQzpZFlMHflId7KTxY90wTpfAO0nmWsQ62P5GAUsiZRX5GWPv7FB
         /NCbyomwNPhJzvOyRbjebr944G1ISIOqz33SOvfk6VsMFKnB5ncFXFjCofC1yjO28p84
         EGMi/S002VbdqkLN8+YCcMJLCaS/ijkhqCR2RfH/9jXBBdpOCcQMDd2u5cD2hbLubM+E
         0WNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=tTqYcByTOxWcEW8HxsUaxQEiri+ADsDvIm6Od0GhBZk=;
        b=pMZjiPwF3pI1myAD1k0TDm0IrFJGmKT6amEBWi3rd64kJ/1J3Q5KX3l0jT/P6GPNGC
         2/ZLbxtdGKkgWS0QIi+iOqM03Tt0Al3bHq3fNeqAW877+ojVG+623aOMYW+TyEIu1skC
         Ckbo5okthKqsvbW6/s7jxpvd1lfTzN/1D7cnPmtjUEVT5KT4jWt9S7zWWN3qe0pCwv9B
         TmE6aVw5EAHHU4duGWi401jWM4U5lObJ5RCEd1eZPJDV5jujdQC1ZiVpmquhVcWbBt9M
         ANZb8lRoLhqafjyk5BYydUNcFyNkO6V0FCkIA2IhILs/NidCdK0kqZ/k5bKT1S0lziiQ
         hqBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y4WebwZC;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tTqYcByTOxWcEW8HxsUaxQEiri+ADsDvIm6Od0GhBZk=;
        b=lG2KVmv3imOPyjGB1k6s4PCKWVXanIRQflf+N2BIGe2pEsE4pexjVaG6IVq8jC8ZL5
         XlTKlACpWzGT9JMggaQmzmhQiZLRNjfenA7QpxtrBjoyXFH6JbgalVYLssgkC2QtvKQw
         +nFu9h4AYfMkiaLHy7zgzC5U3GcE1OQDrdVURj13gZ8EZa9XO5HRx0r3CjUZAyVJukZN
         FKts4iVlziB7fcs0PEhwGcfEPAuspUMSGLBupTJrI/J82pVHZabM01IOlv0Qdd8CkUUn
         fkj9sf153mKTyVbIEJj1gigM6T23CgGFrgfy9PLdIMAQTA9SwuS3+iLWHIXJ31QOj5Iz
         IBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tTqYcByTOxWcEW8HxsUaxQEiri+ADsDvIm6Od0GhBZk=;
        b=QgD/zMse404eb94hK1sduEONjblG9ZaJXcPLsiw5f59RG+nRhq+VIOx2TW6B5UjwwE
         bmyc/dK+LFmGn5X4HLzOFsN1sMZkwt9m9PBO4GShNPCbL5RoarAR5/WdzNsX3X0k/irh
         GtXci2qTj05yEw8u3EoPEQWOAbo3fpfmLjw8yl8TKimbPIJdRNUzNSmKAHKApBQT0w18
         zsQuAP2rRbeRlFWh6VYEcXjFL1lksvaC0mNRrPUbKNIO8CViTcLK73vp+e4yyty3XwJM
         fS0LnEqh3uC0Vq5qDgfQmYE/xpVp4b53BrFdzxRrG5MHef4+7i3Ce/r8pDj0rAdshMbC
         /xmQ==
X-Gm-Message-State: AOAM530mSaSlr5JFAaMBydv+Afv3RsPdcP+YuTwRCrw0HOgP1vm8aku/
	OIkbZJGcosAH/XNmO9WC11Y=
X-Google-Smtp-Source: ABdhPJyvxYNuGKkINofQe5qqFPuaWyiR9qSVP7VAe1Xz6tfCZi7WXdH+dLFFlCM9zS/CVEE5FX3bgg==
X-Received: by 2002:a92:358d:: with SMTP id c13mr4176935ilf.73.1600036498655;
        Sun, 13 Sep 2020 15:34:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8bc4:: with SMTP id i187ls1869117ild.2.gmail; Sun, 13
 Sep 2020 15:34:58 -0700 (PDT)
X-Received: by 2002:a92:b603:: with SMTP id s3mr9824391ili.70.1600036498215;
        Sun, 13 Sep 2020 15:34:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600036498; cv=none;
        d=google.com; s=arc-20160816;
        b=K5224FixLnsbw6Zr/blPntGVIp/0odAXxGgUYzwD/6GA58a4bY9S97Cki9/DkP11gZ
         BBSbTf9wmVpHu82yxBWxtnLWjk6o45toTIyhbca71m18QE/4J0QDeTQ2oIeKD8DU5j9V
         WK9HH2eAdmAJppmzSQKF8da0r1zVIVrftLWMQh8+CiPnzcv00wZ2PUWxljWzoV83CjCq
         a7WqkSByF1tEJGj4QO2mWLkTHr30BYu3ZSzT7FTLcSoneGn4S/M/a4QMdad62eJ1lbXe
         4luuRm6B7SnF0YkAmWAPx57eeLQPBWRc90GRB+GcNz41t1/lUTLuXxst4jDPuNXCAEcj
         Wuaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=gRT2lvKQ6w4yfe5SUHmT13C8VjhF2YaVCB4H7BehIqc=;
        b=u/0C07xJgryDx0t4HfRDyTsuXu9V98BnldH0l6TF6IA20bgnvhcxBBXF8stB8FIEXu
         Jw6uFlmaiHcZ3B4cutq1xZpGImwU0Um0vYbtu+BetjLM721zy5fUv3/KW/Ajij0qg1Ox
         C9gbEeLBpwDawGQW8LRu5DwwOl3ZB0m0Y19oP4A9onkvTQmHb9PGaVxEYPxuuTteJeDI
         uMu5+rv8X7+xjs9i7gXpgllfop5MglYudkZQ3SjwadiEwxOBmq8FiP+PwyvP0UvHsM1P
         iJ6pYgJa69XUcxBn7XicpVpbS4zFSIh5U/gYKJfLBIteDgvNJoll3n73n1ZohY5HBS7R
         k+5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y4WebwZC;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id f80si662752ilf.3.2020.09.13.15.34.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 15:34:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id t138so1136331qka.0
        for <clang-built-linux@googlegroups.com>; Sun, 13 Sep 2020 15:34:58 -0700 (PDT)
X-Received: by 2002:a05:620a:815:: with SMTP id s21mr10073585qks.0.1600036497627;
        Sun, 13 Sep 2020 15:34:57 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p20sm12931803qtk.21.2020.09.13.15.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2020 15:34:57 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 13 Sep 2020 18:34:55 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
Message-ID: <20200913223455.GA349140@rani.riverdale.lan>
References: <20200812004158.GA1447296@rani.riverdale.lan>
 <20200812004308.1448603-1-nivedita@alum.mit.edu>
 <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com>
 <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
 <20200825145652.GA780995@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200825145652.GA780995@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Y4WebwZC;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Aug 25, 2020 at 10:56:52AM -0400, Arvind Sankar wrote:
> On Sat, Aug 15, 2020 at 01:56:49PM -0700, Nick Desaulniers wrote:
> > Hi Ingo,
> > I saw you picked up Arvind's other series into x86/boot.  Would you
> > mind please including this, as well?  Our CI is quite red for x86...
> > 
> > EOM
> > 
> 
> Hi Ingo, while this patch is unnecessary after the series in
> tip/x86/boot, it is still needed for 5.9 and older. Would you be able to
> send it in for the next -rc? It shouldn't hurt the tip/x86/boot series,
> and we can add a revert on top of that later.
> 
> Thanks.

Ping.

https://lore.kernel.org/lkml/20200812004308.1448603-1-nivedita@alum.mit.edu/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200913223455.GA349140%40rani.riverdale.lan.
