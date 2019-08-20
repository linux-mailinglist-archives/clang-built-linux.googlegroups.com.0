Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDNU5XVAKGQESH3QDNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA8695458
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 04:25:18 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id b23sf903632lfp.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 19:25:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566267918; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hy+3wCY910Vmb7j2oZWKy61JxqbLhJpstghSwYWWMyd594+8Of8bd5DCwPzw8XdtEc
         dSOHwzhtMdT3baDj49McgbadVz7+d1wdyoOyYkYAtxZMA0qbB6+7dNG+KSGevRs6NNv4
         MK5yGray9XvON5cA22HxQ0hmLn8ai9F4W92zMu5nTE2wn8aFLxP2Ud1ebYZvDtiHgZmd
         fT66bgkhKsCkmTIRq6QChEKgQyx6s/uIBoVQ3LZ8he81uNbEXkqrqnF+3y+cygJZBSU0
         nJI2TWpyHSB8yaAlL0ypiqAty+A2iAKLuVhnDfHRXlpRZ6Cgv3+gBrLlpDaMxgXBNJHn
         iETA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=nGyLxEYaaWrSGZcLE3UC8NMoxV4XKJc6+vZ1OOFTGkU=;
        b=qs+JmZn1boxS9qEADVR6XskcWUz+F/5ZDwBMeqUOWprQoIqF6KxqX5isyVG5mJmJoU
         bPVSswliaGhHTWgbQddtA09ZsUAE4CV/jSuAf2N1Cc7ywI0Xu3Guhmreq0w/vs9J+Q33
         2j2BhvDEZpiYT3S7YtItPpU/en0JoDDw/bIKoDBSNVDIrAHeqzF4dLNPMmXT9UC+VV76
         wRiLCKRDdm7buKfwSxBQLLFas6KsFFkdF0TzTwA3Irt32GIqKmloD8oQDEC0UUVPnZ3L
         soGa8N3Y5qN2hvbhvcs3eoaNotNKTQ0hxSaXRi996KpNiJ0U8K8vx2sxhIAgVFpjvOJf
         WUgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZkyaJJC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nGyLxEYaaWrSGZcLE3UC8NMoxV4XKJc6+vZ1OOFTGkU=;
        b=mLFyiVSehYzkv+XsIT0F/pbZ51hXcZN6WRuMm43JKVWy4vPA7/k4xbpzWRwKzzUaMR
         iE4eXGXnJrJrVSOZSGx0LDd/rI45lX+tAioN4rb57yIl0RM7b8OpXt00B9Zu2SyMVbna
         fa+KwKZIzgsug36Ar96HHKHY0k69yOQE+FXDGOlvvXaD7b2+4ILTqHM2Hmi+jMzEWuvj
         q0+QhCoYNienVbOMDFP+JIro/UZXTOjXevtUsnohfFPpF/gV7MC4fyGxc7RCozEB66FR
         FEon4buTMpbY7vH8Ypqv0jc8e6sO9N2mN3AcKkEPH/fzB5Z+4uGcT4By228P1ge/EyJi
         xpmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nGyLxEYaaWrSGZcLE3UC8NMoxV4XKJc6+vZ1OOFTGkU=;
        b=bbqLALprBIqiWjsKEDqN5MWmpNeEvt7SVjZEUOhKVWQCCe9oqFKNyXbM3dUaFamdc2
         MoBonl7VcipgrFzi12FpODkFZ7F0UYD+7yIuVCE8TRgMg++d3tPtHKKKY7vcaLSR1DU9
         SB+n3fg7xEo1dwYZAeNy/HQ8cvrfu4RxJtKDs0oVuTPVlKoNcFIJo1XIYdASJ0/gZUCp
         bZDunHk34nIPc0AIY80V88FiibHBK8U1afel0eNT3Hxp8tm2Uz3N0uiiD7+N611N/HNg
         bVMRJUWoD4/i6C9xnW9djxylj2STaqsWv5NR60u5bYz1jKtmLa6Rc5As8gcYQl9CfMMy
         QXCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nGyLxEYaaWrSGZcLE3UC8NMoxV4XKJc6+vZ1OOFTGkU=;
        b=LnA4TIuZqddQzFgBn1Wple5p5n+QFARA+ce05GoVpLsd4ufIwZLv/xg3J3d70Xcv9n
         n8JBVZ6xjTY6sdExdG4ruVUHcSiU5zw5iWTuCGaWuvgc42qkNoHGa60s8+7RUcAJ4UiS
         YCtk7op+ODHJBEZ1dYw9xU7rxJYIZjKdtPX7blxdaXhr+Ot4mshRC/9iOqihaiow3s5M
         1FSsoLRXlC43+S1Ve2SNWXHO+3VdE+nDObq96upMEzmsBmo9Y7cFuPAHJBGyEdtvMRiW
         tA8zQ+us1eqQ+73igE581IGaCazeKU8m6U1Ia9f4k2YEox6ewGLZkpiHX/IW4y/yi22n
         MMFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAULqQLTCleFG0Ax2O+Cm6s8w2nG5sb7At6D4UEMgmi1ViKGFxHU
	7iJnx1mqqptlMWbvV8//5dI=
X-Google-Smtp-Source: APXvYqzRbVujd0lyGTOjac08ASotF63RUMfiJeMqAnH0VQm8jGtydYMfYvKOabOvS4IZ8cAmqNRFQQ==
X-Received: by 2002:a2e:7001:: with SMTP id l1mr14552208ljc.48.1566267917948;
        Mon, 19 Aug 2019 19:25:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3018:: with SMTP id w24ls702757ljw.16.gmail; Mon, 19 Aug
 2019 19:25:17 -0700 (PDT)
X-Received: by 2002:a2e:875a:: with SMTP id q26mr7711629ljj.107.1566267917476;
        Mon, 19 Aug 2019 19:25:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566267917; cv=none;
        d=google.com; s=arc-20160816;
        b=MTF3pkIbL4MDB5ZgVs3W5U5DoVR3ue4jcKlyONjVpVcmGgg/IOEitIkgZwrPLp14T2
         +JgniMrQTjss7GAPOy7/7nn6BlPOtZA7uIHcmIOpyyXbNEj0r/X4TI9qAmCy+aXnrvs9
         ghqQWRbhmkGn/lJRhM0nRmCAygbtX5TaUewTVT40bWuCr+jTO3yv1U7am2ZFhVaI6jY5
         33NXfqO6zYx1EYQ4+g9Q77TY1sG0w87TOwedB01a2OXBqpKUp0FsPYQtP0dyA7xcxRxe
         Nr0t3fD1NU2fwmIwuT3RT6nPOdNbPLGtKke/KLDu2jNgRyvn+Euo4MAE6vXBNvmFjX6P
         quuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PmmdLjAbLWYIX1qFNc1WXndwzxCg8W0lx5gykrGDbVE=;
        b=wsMdhYmohqWo+fdC4C4vrZIdsczuD+YG1L/xkU/LCL0qvZH9c1LZDT11sUrIBtqUnP
         NfzKXxznDZaN8vx6xWSwmdd0Rmx1EY19VUnFJ0rPHOJtwVBj280y9kAMvbsZjeVnYySa
         6IYmum9niR/LNb7koDDxFTYF/AEfpNu3mbzSKJBX158svb/MTVpBq36mMZ3CK/IStoaw
         uGh+gtTZ13vdwrmbPqsjGCXEKk8hf7AYjFYcx+M6gogcKx992g8EcBWg+SqhSJREVn8S
         VQcZ673oq69waHKVKm1CT3EwANQmbqJcjqL579EpXfZIcHMYEzns9IlLkHFrh0zPyo8I
         N2PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZkyaJJC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h11si200276lja.2.2019.08.19.19.25.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 19:25:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p17so10640998wrf.11
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 19:25:17 -0700 (PDT)
X-Received: by 2002:adf:f304:: with SMTP id i4mr25292909wro.61.1566267916510;
        Mon, 19 Aug 2019 19:25:16 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id m7sm18024413wmi.18.2019.08.19.19.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 19:25:15 -0700 (PDT)
Date: Mon, 19 Aug 2019 19:25:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Paul Burton <paul.burton@mips.com>,
	Xiaozhou Liu <liuxiaozhou@bytedance.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] kbuild: enable unused-function warnings for W= build
 with Clang
Message-ID: <20190820022514.GB30221@archlinux-threadripper>
References: <20190819105138.5053-1-yamada.masahiro@socionext.com>
 <20190819160920.GA108942@archlinux-threadripper>
 <CAK7LNARDQPixBfWp8od1=13w+hcycYbyTX9+G-gqEHHwXxDCvA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNARDQPixBfWp8od1=13w+hcycYbyTX9+G-gqEHHwXxDCvA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RZkyaJJC;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 20, 2019 at 01:58:26AM +0900, Masahiro Yamada wrote:
> Hi Nathan,
> 
> On Tue, Aug 20, 2019 at 1:09 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Mon, Aug 19, 2019 at 07:51:38PM +0900, Masahiro Yamada wrote:
> > > GCC and Clang have different policy for -Wunused-function; GCC does
> > > not report unused-function warnings at all for the functions marked
> > > as 'static inline'. Clang does report unused-function warnings if they
> > > are defined in source files instead of headers.
> > >
> > > We could use Clang for detecting unused functions, but it has been
> > > suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
> > > warning for unused static inline functions").
> > >
> > > So, we never notice left-over code if functions in .c files are
> > > marked as inline.
> > >
> > > Let's remove __maybe_unused from the inline macro. As always, it is
> > > not a good idea to sprinkle warnings for the normal build. So, these
> > > warnings will be shown for the W= build.
> > >
> > > If you contribute to code clean-up, please run "make CC=clang W=1"
> > > and check -Wunused-function warnings. You will find lots of unused
> > > functions.
> > >
> > > Some of them are false-positives because the call-sites are disabled
> > > by #ifdef. I do not like to abuse the inline keyword for suppressing
> > > unused-function warnings because it might affect the compiler's
> > > optimization. When I need to fix unused-functions warnings, I prefer
> > > adding #ifdef or __maybe_unused to function definitions.
> > >
> > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> >
> > So if I understand everything correctly, this change allows us to start
> > finding unused static inline functions with clang at W=1 but disables
> > -Wunused-function by default... I am not sure that is a good tradeoff
> > as I am pretty sure that W=1 is fairly noisy for clang although I
> > haven't checked lately. I'd argue most regular developers do not build
> > with W=1 meaning -Wunused-function generally will not be run with clang
> > at all, missing stuff like this:
> 
> 
> Try "git log --grep=W=1"
> 
> Some people are making efforts to fix W=1 warnings.
> I believe somebody will start to remove unused static inline functions.

Yes, it could be a good way to get people involved with working with
clang.

> 
> 
> 
> >
> > https://lore.kernel.org/lkml/20190523010235.GA105588@archlinux-epyc/
> >
> > https://lore.kernel.org/lkml/1558574945-19275-1-git-send-email-skomatineni@nvidia.com/
> >
> > Furthermore, per the documemtation [1], -Wno-unused-function will also
> > disable -Wunneeded-internal-declaration, which can help find bugs like
> > commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
> > mlxplat_mlxcpld_msn201x_items").
> >
> > [1]: https://clang.llvm.org/docs/DiagnosticsReference.html#wunused-function
> 
> 
> How about this?
> 
> KBUILD_CFLAGS += -Wno-unused-function
> KBUILD_CFLAGS += -Wunneeded-internal-declaration

Yes, that would work.

> 
> 
> 
> > Is there a way to conditionally remove __maybe_unused from the inline
> > defintion so that we keep the current behavior but we can still
> > selectively find potentially unused functions?
> 
> It would be possible by tweaking include/linux/compiler_types.h
> but I am not a big fan of uglifying the 'inline' replacement any more.

I agree that ugly is not ideal but I think it is even less ideal to
weaken the default set of warnings for clang... Merely food for thought
though.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820022514.GB30221%40archlinux-threadripper.
