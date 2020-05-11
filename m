Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFXG432QKGQEKUSTNKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5841CE53C
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 22:18:31 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id a83sf11201125qkc.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 13:18:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589228310; cv=pass;
        d=google.com; s=arc-20160816;
        b=u+XZClKnRLLlGrKJHUrzEYimwfD6/MN2jz00dt29AKNQdwz81fcBYXUy/ytwG8dl15
         JdNfTrU737OJ8IHtgI1j8TXUYle/XsUwq2VtviKXsfLkwgEVORbCDYiAVlsSn8o/ZLgg
         nca2kIzZk6NptXdrUHQ0MJbLadfvvy1CQDpUlN+uO5TrnYLkGtuevop5LPJ8F59OuW38
         EHCwObjLZ2r8qvzefjYLpmc1QEtWR3HnrJY4CNamlCpWJg0aw647MrwFyBCAmMQnI3GN
         7v8zrqOUB/idTLmFmEWAShbO19V1Z9W26rlelzJam/Mq+RQqVfoJosDUOJA761GafTlC
         B7jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=S/ZfgFaOvuULRU479Jtwd9TYHqV/ogTsgVFJqhj++vw=;
        b=ilDhCyU2Pg+IdkJClNwydBTHyNBNnD2LezYcavmuhJSAVHRisRwufY6Gu9AGXyVRcc
         4EfmyrCGO/1+t2rwfzVBs8K3CqNPFNOkjKQ3aX2fOScacYPkTNaV8A/wVoCvBSgLoVUs
         6ksQmgvfG6mTDlF0xjMOMv2fGdo453kSVYqTZelyDxuyd6mA5tph463/quuh+DFtd80i
         ja/5fd2PX5WAEnb0+UfCKklNtTdCvZYWAhv/CgoxnPAJjS0hYJxDZpFC9fqLDlbrKuBg
         j5w29xvHhmGceY5vShNDx5C7fiALWnJGAoMIRPbpp+MEvvGL5BNBDs41Itivh7D+jOcE
         BQzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ciEjpD2Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/ZfgFaOvuULRU479Jtwd9TYHqV/ogTsgVFJqhj++vw=;
        b=K+y9lP2djYc8h289YCMblicG+mRQP10l6vLoFvqCtbin8/oly/5V9aPmkae5kYoJjo
         no9bclMxab1xWD0xK1ftV75xNwkwx22IXMN++Z0gvSBJ7svN2QUjfPCNCzEkD4trkdzG
         EnR5Tea5Ci/w5faExMCDvH1i9h7YaETorWtQNdm8WA6gHCJNzwgUjWcdCoDIOTiWCR4q
         GuIWNZXCGsKjnsQkoft3o9J7KzGO476sfjYx4LxBjbX9H2NEMqicOSqRPOs3Bf9RmXi4
         UrmlDFTdvTQtNkHPix9u7opGVqo437AfFnsIuC5ELtdTeX+117IQRr1jpmio3JkSCns3
         gPCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S/ZfgFaOvuULRU479Jtwd9TYHqV/ogTsgVFJqhj++vw=;
        b=VxQBeKK4+b3Kp/lr1lB/5co3VXHFRcI8VmIhbHhuL1ykzgxMWyOZHd5nNltPND1vgX
         +p2ggA/EGvzD8ba1FnTOv90xmj5YaiSyX1EDryKF5+BeOroDnKjO2ZszZJVoALpx2aBJ
         e7EYpjNrIwTbMlDQv1teazmls1DyN676YKZrw49xHJ34P3egHjr8vHY61BHmoijw9fEF
         H0T/v/BRLNWlPpYhH9MeDBWHMrVLR7jrMmQ/8SnjKESw72sE0UxknvHoXukIvMS9Cg5i
         O3HQko3hEaqAouXs6PfNV8QV5AwrPxC192YA31XDSYkFYTD1qRhJ8pUGZmA3MeSIULH4
         CLyw==
X-Gm-Message-State: AGi0Pubu7lK/jzIxm1Uk/Dq6g6jSsQprZqseK7taNiugn9WZNE8VWqFP
	IwZlLH0wHhSqJKhxiAk/LY4=
X-Google-Smtp-Source: APiQypJt6/WdAJS7B8p9AtyUVxJzYmmmpckjEOp95+cLVV5KT7c+NqX/wQvZY4hkCppdOqb/kR6QvQ==
X-Received: by 2002:a37:628b:: with SMTP id w133mr17360894qkb.185.1589228310234;
        Mon, 11 May 2020 13:18:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:528b:: with SMTP id v11ls2943026qvr.9.gmail; Mon, 11 May
 2020 13:18:29 -0700 (PDT)
X-Received: by 2002:ad4:46e7:: with SMTP id h7mr7532280qvw.221.1589228309896;
        Mon, 11 May 2020 13:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589228309; cv=none;
        d=google.com; s=arc-20160816;
        b=i/xfpaLvR/XXT47IhEEsldnComhYKJR5OOO4UOKjz+LRJL1oK3BKq03ksJP877htMg
         qm5g/16ytmz/DDUHee4O8s7FC1CqdyhIVGE+wreEZs8hlnLgHqtkyZD90GnWtoxA34IX
         ocYe0jHPFfl6fKDh/AWelhuhI1XcxSRvaNIyburgFcotfENjlU0PYsX0JF4QaqzZe9+H
         VcFBA/wP50nnp2OrxORO0xQXoYuTqTRRCtn2rfxW3Z9h6vv4GIz7OzWFJ2vXf4fnlbXz
         w8wDZpnyJ/sxAbp5bwKSCXZy2xok1Wz1ctxTPYATsZs4noIWS1ZZMtEVqm3iiq4mXQQ3
         IwkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+m8sVUgc8aPcmghox0D5Tb+emn0mp6DYOcFERI7ISpQ=;
        b=oA5mgooRRGjQAIkOGUkbVR+wRFrPmqiQ1f8QU1DEXG8Hti6cBqcfdPS7ExqmVKKhCx
         qZgDA2HlF9vNYsqbqZlDg6Kkw+WvCoar9c+KCS9bqoJ+YKHR3EQ0haHIBh6xvyOEO30U
         EF4LixOl2oc1RlP8Bbp7pVDDDK1cBKOnH0lR8IqRI/peGGcuaGobQtrxYzkQjr4744UU
         bfetYff4PwqkayVNan6hX58a/lvh28DNsldLbr47fBIT9BcXYCpb9q5o+gfJY9qYQw3w
         XY5WBRhpE7MZNXUExzEq44pSA7H7kJFNcvBT2VkZEcLHqa1h4inMan8KCIrP+mwWW0g1
         /KrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ciEjpD2Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c186si670136qkb.7.2020.05.11.13.18.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 13:18:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id l12so5056424pgr.10
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 13:18:29 -0700 (PDT)
X-Received: by 2002:aa7:8084:: with SMTP id v4mr15521498pff.39.1589228308658;
 Mon, 11 May 2020 13:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
 <CAMzpN2iDottAY3p=GS0A_7XX7bpmWsmSOEcztMXNEEvcwHirjg@mail.gmail.com>
 <CAKwvOdnxV_KwC-q73e3basJvo4-9FCGeMUOrZLj5xyt6Yyeh2A@mail.gmail.com> <CAMzpN2gTEwGh0U+L3_R6pC8Qmv1iY7bRTiTEXD86mF3u9Nnkqg@mail.gmail.com>
In-Reply-To: <CAMzpN2gTEwGh0U+L3_R6pC8Qmv1iY7bRTiTEXD86mF3u9Nnkqg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 May 2020 13:18:15 -0700
Message-ID: <CAKwvOd=dxX-KG3o6tyYmnoxMwVHvFvvHdaC5G+8ynGEFhZarVQ@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Brian Gerst <brgerst@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ciEjpD2Y;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, May 11, 2020 at 12:34 PM Brian Gerst <brgerst@gmail.com> wrote:
>
> On Mon, May 11, 2020 at 2:46 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Mon, May 11, 2020 at 11:09 AM Brian Gerst <brgerst@gmail.com> wrote:
> > > This looks like the same issue that we just discussed for bitops.h.
> > > Add the "b" operand size modifier to force it to use the 8-bit
> > > register names (and probably also needs the "w" modifier in the 16-bit
> > > case).
> >
> > While it does feel familiar, it is slightly different.
> > https://godbolt.org/z/Rme4Zg
> > That case was both compilers validating the inline asm, yet generating
> > assembly that the assembler would choke on.  This case is validation
> > in the front end failing.
>
> > long long ret;
> > switch (sizeof(ret)) {
> > case 1:
> >         asm ("movb $5, %0" : "=q" (ret));
> >         break;
> > case 8:;
> > }
>
> So if the issue here is that the output variable type is long long,
> what code is using a 64-bit percpu variable on a 32-bit kernel?  Can
> you give a specific file that fails to build with Clang?  If Clang is
> choking on it it may be silently miscompiling on GCC.

I'm not sure that's the case.  Applying this patch, undoing the hunk
in percpu_from_op() we get tons of errors.  Looking at one:

kernel/events/core.c:8679:8: error: invalid output size for constraint '=q'
./include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
        raw_cpu_read(pcp);                                              \
        ^
...

There's nothing wrong with this line, it's reading a percpu u64 into a
local u64.  The error comes from validating the inline asm in the dead
branch.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DdxX-KG3o6tyYmnoxMwVHvFvvHdaC5G%2B8ynGEFhZarVQ%40mail.gmail.com.
