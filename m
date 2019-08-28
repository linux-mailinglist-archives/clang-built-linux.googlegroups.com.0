Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTMXTPVQKGQEF24YVMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E8078A09DF
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 20:45:33 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id f9sf354142wrq.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 11:45:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567017933; cv=pass;
        d=google.com; s=arc-20160816;
        b=DEy75Sr30Z+E7vQThToZzobOIdWPkUI37XVxELUqKyEMJu1ioxsGU19bOD07M3yBSf
         NNTYLYpN0Yqi0KX07a2Leaw7Pa32ZIs5nQaYQcoCpDvNfQWPhFqZXnkSFiDjEfKbUFJl
         +LJ4/HuGHW+xTWAovXQmq/nuDBFGdmbLJv0nvTeqzTzALjXgTP1+JNoKnKGik2u5Bn3y
         NN60Q0+EnHN7DsQDV9TUVvi+IRgSNM+ULdLxsfxZR9DtW6ykSfoCvPEAJfFQfFRTYCM8
         uuFygcfSa72eVGxIo4AMokzzY+s9XzGdY6ZNijsRtCR1r39Z/0igj6ySjawBnUgESDa6
         aFcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=lEs4Paib9LMZryCZmC6V625RBw9ozq1zMXjylHvLkgg=;
        b=WNxPfl8oAuyL405eDKfGc/HLDT/XgvCMbPjuvQBFUEjrYqNhIQ2iDOazKeWzD4NwuV
         ciWxv2CSFB2167iZD+vS6wCdfs+l9LBBHF4oZOYbt0sogeVoZuSOs5ESeOWtKqoPoXXZ
         N7tb1kxubWzyasI6txa05ScPJpLn6PlAqYtkyZ+ln6bT3X25LUV50gAeqyw+LhUv+Yaz
         Td++rakoqCLYfXCRc5HmsrzRTWel1iuRrGBoEr5UQq8tgzcEuWMJxuAuj2282WfEB4d+
         2NCgsMisj4qL3lOAMedrG6sNjC4h80bzrrYalfb78iKUCirTVpkRuI9bBtHyyk75jvGq
         EwOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JZb7Xt/l";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lEs4Paib9LMZryCZmC6V625RBw9ozq1zMXjylHvLkgg=;
        b=FYL0OLSCarqsUIZNdmd+AfPGU4Uh5crKS/C7G7sj7iy+tWB0iZuEzj/wSWEI1++HyW
         fZkOHobxcsMwwIZhpSAM3cK+5zxqmZ9HK3nivIE5kzB32ArhTcK2fLMrO2WDuuNQL1fO
         Bt2C1R0ppg6k1d7tqwhIeV+bN6DJRVBhPOBYqqC6BfRq5c00Djm4Asktx1akm1Be3Atk
         Dt6flv8/3q3Wfwi3N1QCs+3WNgHIS5Ideai2DyG/gjaei6BdctGxnAh6YpRFjaFzAo1k
         Tq9ev0w5uAIB6LnC0p8taxfmJ7nMV5hZLE/ekSPQJFXnFHZSWekIjyrk0gUJLYmPhDzJ
         Zvlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lEs4Paib9LMZryCZmC6V625RBw9ozq1zMXjylHvLkgg=;
        b=G0XlrsXTJkla9PrR5A4NA7xGrT7RqdqtetaysmcNA895dGFoDNIKqUxN0mdB+SIS7N
         Xqko3haadKObV0al6FdUCKFkNCZ46vIS4RClNLFmdplH5FCgsQ4DyVbt6cNsFu60C1IN
         QpnHr/OLsO+JM4MNgBXCi4x+8b5PtPqjWsPj6i3GxkKtNAagBOMZ1mvGDrfvqGvHn53f
         FD4w9qyO0BABg9CXPrxI6cdWHgimWpUTP+iY6RmsdWiQYjbwWw7WiPjy7cpHXvafqM+Z
         EtcuZ2RnVOBqDr0auPEJ4lRO6dRMYX+3VvzSMpfdkr9b5XSzyOY4zgpPxgDcppnE+a0a
         /0CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lEs4Paib9LMZryCZmC6V625RBw9ozq1zMXjylHvLkgg=;
        b=jXNlut/QTpr0Kv74vN1UpizsGmdYEby7n0AuciD37Jtav5uGQx6XsVLnqOCfn3EqVs
         tguc9YTeXSOdRwxSqT/BVerb/kfMO5eTZ92zplVgAAxVLwAEjpfUdkWAiko0062VCBYh
         PlvPihig46c9Kofr5I6KL7afMd1nGYrJ+/PD7j+fmc9HovpL7upbjPHFStrF9KUTDzQU
         81j0gXYchXeuCcmDj+oLosUbl92XLsnw8cr3LUA+6t52UwGVWghiN3Zb3j5OoNfNDv51
         aENu9cC7SuT5q6R9GOw6zmM87odlF69kMdXS8Lp4fxnXFAzVbXiZ0dE60EJld71LsNJU
         cznQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVhqI+dObZ1toaeUUqvyM64mAx/3HyK0YA8hsRaptcOPkKNhxY4
	P6+B9ergtR0TDkQitIAWV5A=
X-Google-Smtp-Source: APXvYqyGHd1XrzYTllsrue0jTMkGouJLYP8g32Wr6NSA+hmFY68DbcPSnjjDJTXXHNCRzkxR+rj22w==
X-Received: by 2002:adf:e750:: with SMTP id c16mr6601975wrn.199.1567017933632;
        Wed, 28 Aug 2019 11:45:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5651:: with SMTP id j17ls20235wrw.0.gmail; Wed, 28 Aug
 2019 11:45:33 -0700 (PDT)
X-Received: by 2002:a5d:414f:: with SMTP id c15mr6632200wrq.248.1567017933066;
        Wed, 28 Aug 2019 11:45:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567017933; cv=none;
        d=google.com; s=arc-20160816;
        b=ZLiVaBEHnSb2dWE/lDT5eeoL6XAEhxpBlyJqtTHT29qh2VRtnum/xxxj7O/dQ7bVop
         SgTEyoOUaRQb0JPhVnh9iJwGV0Bqu/aMxMYGPkOJWUSp51/OhozkS/9Hthg3My36rs/S
         Jpp88LkJvGKGFzrEgLTuEeSGQNm0vDDkelfV4OJDjcUfQGEB2QZHJYWQuTJbLSs1H6/H
         6OGEMrCNkB/PsnXAL/AuJBk+whxbJu3hM6Zg+53z+MQD3P1lyZs+l1IIzkeigJA6jQ24
         E49vSNKlHN+uAdDMM82GSH6AcQhWQ7wnKpfxgZk0REDbJnaUIGxWe00zQwNhEXB6t9gR
         e9uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uzb7erekU8g2iYVyP5gycVR/YMGgpJBA2pn7vNp581E=;
        b=SD224x+5jqSoFwnleNnA7RWrvsW1sCnfScwmdtaJslteVZ3g6slYo/EG9lErXRwtMx
         m43A+qySoo3dS98zIkkWPP/XssUP8kBB/v8nMXXoM6STWz4qA/dqj/sGA+5zjuZprX/k
         TwpLv0v/QctpUgpIG6KWcYsP26RHTjIvQOhPt9F4FMyvppoV4ry8TMlvpZJ3czih9ssc
         2CAc3lPiHWhoqu7weN2kpap8Mx7jcLYhpaAuMgmDDrFOsy4DaC7BwUKPi5sLOEdiTqBW
         MKsQwifBgjPAGRc9Bh8hfxJpFDoczq/L/6+4dG473TEFiZ3BZvCnMpZeuv9uH4qi2Ojp
         Xk1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JZb7Xt/l";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k17si2520wrd.5.2019.08.28.11.45.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 11:45:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id j16so815284wrr.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 11:45:33 -0700 (PDT)
X-Received: by 2002:a5d:4211:: with SMTP id n17mr5917722wrq.137.1567017932509;
        Wed, 28 Aug 2019 11:45:32 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id g65sm298385wma.21.2019.08.28.11.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 11:45:31 -0700 (PDT)
Date: Wed, 28 Aug 2019 11:45:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190828184529.GC127646@archlinux-threadripper>
References: <20190812023214.107817-1-natechancellor@gmail.com>
 <878srdv206.fsf@mpe.ellerman.id.au>
 <20190828175322.GA121833@archlinux-threadripper>
 <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="JZb7Xt/l";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 28, 2019 at 11:01:14AM -0700, Nick Desaulniers wrote:
> On Wed, Aug 28, 2019 at 10:53 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Wed, Aug 28, 2019 at 11:43:53PM +1000, Michael Ellerman wrote:
> > > Nathan Chancellor <natechancellor@gmail.com> writes:
> > >
> > > > Commit aea447141c7e ("powerpc: Disable -Wbuiltin-requires-header when
> > > > setjmp is used") disabled -Wbuiltin-requires-header because of a warning
> > > > about the setjmp and longjmp declarations.
> > > >
> > > > r367387 in clang added another diagnostic around this, complaining that
> > > > there is no jmp_buf declaration.
> > > >
> > > > In file included from ../arch/powerpc/xmon/xmon.c:47:
> > > > ../arch/powerpc/include/asm/setjmp.h:10:13: error: declaration of
> > > > built-in function 'setjmp' requires the declaration of the 'jmp_buf'
> > > > type, commonly provided in the header <setjmp.h>.
> > > > [-Werror,-Wincomplete-setjmp-declaration]
> > > > extern long setjmp(long *);
> > > >             ^
> > > > ../arch/powerpc/include/asm/setjmp.h:11:13: error: declaration of
> > > > built-in function 'longjmp' requires the declaration of the 'jmp_buf'
> > > > type, commonly provided in the header <setjmp.h>.
> > > > [-Werror,-Wincomplete-setjmp-declaration]
> > > > extern void longjmp(long *, long);
> > > >             ^
> > > > 2 errors generated.
> > > >
> > > > Take the same approach as the above commit by disabling the warning for
> > > > the same reason, we provide our own longjmp/setjmp function.
> > > >
> > > > Cc: stable@vger.kernel.org # 4.19+
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/625
> > > > Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac46493d97eca8c20592b07
> > > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > ---
> > > >
> > > > It may be worth using -fno-builtin-setjmp and -fno-builtin-longjmp
> > > > instead as it makes it clear to clang that we are not using the builtin
> > > > longjmp and setjmp functions, which I think is why these warnings are
> > > > appearing (at least according to the commit that introduced this waring).
> > > >
> > > > Sample patch:
> > > > https://github.com/ClangBuiltLinux/linux/issues/625#issuecomment-519251372
> > >
> > > Couldn't we just add those flags to CFLAGS for the whole kernel? Rather
> > > than making them per-file.
> >
> > Yes, I don't think this would be unreasonable. Are you referring to the
> > cc-disable-warning flags or the -fno-builtin flags? I personally think
> > the -fno-builtin flags convey to clang what the kernel is intending to
> > do better than disabling the warnings outright.
> 
> The `-f` family of flags have dire implications for codegen, I'd
> really prefer we think long and hard before adding/removing them to
> suppress warnings.  I don't think it's a solution for this particular
> problem.

I am fine with whatever approach gets this warning fixed to the
maintainer's satisfaction...

However, I think that -fno-builtin-* would be appropriate here because
we are providing our own setjmp implementation, meaning clang should not
be trying to do anything with the builtin implementation like building a
declaration for it.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828184529.GC127646%40archlinux-threadripper.
