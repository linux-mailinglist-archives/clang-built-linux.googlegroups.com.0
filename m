Return-Path: <clang-built-linux+bncBDAMN6NI5EERB3E6VPVAKGQEGTJFSCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CFB84CA4
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 15:17:33 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id l24sf43637944wrb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 06:17:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565183852; cv=pass;
        d=google.com; s=arc-20160816;
        b=SziZ/XVcAqmEc2vRHKFqt4P+PYNvQ0hs6UnSxjc0gs/TxsW+P9GMkfmTpcbv2i1M90
         Amxj6wlC55QfO2NccCVm+brlc1QkB3q+3HtpBo5+PMbAZ28z+RSI+m8nejcjY6EApZlF
         r1Iup1HdzyUHXezM0Y9kE3bUjJhFfuDegDpdPIgYKRh+hRxgQhaajhtA43oEXwirWPSw
         zAyGq4jKIE6vrXQ9g/Snay53wRUTsBIjkLzzdYRQf4OwHbKV7MPt7cx6c/SJz0fk4/DA
         yHCzWbidDCKJtbRbjioS3eOJ62LYDy1YXDBc207YG0JUzbaeTeP6h8qqTii7OePAmlcd
         A+kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6sWgniyPepPGE+xgS7M/yN1ejcdtElTHp56ey3/rrWc=;
        b=Yd8Dra43xaJaVxrHZPJNjbjrdVP6FXauBM3fVB0R+jf+Aaaw1+EQRDIvd/p2EnWb2A
         qLf6o8Id7OQ3gAT1JiFIZoD4wuYMxQTMDlTz4XkHVaKzcps1EfeyewMOwAzMM1xXON2v
         AGCIXCy9NCXkkN01NFSnI/tCEtulg6TeRtmaloTdrpLWWAzsqZc7QcAMAvsj7BAx5jdt
         vK6S/NK0Uainzh9H7TYRotkqSOQbHLDeXQR2e20WoH30xoks6E15t8mWHJAYKtf5NcTY
         RjYVrAbEASuUCXfSHkyqLr5OsjzMFs8QJffTE5X2OrQ2h6dSCvfpnBDQ0uUQubZkbvn9
         /3Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6sWgniyPepPGE+xgS7M/yN1ejcdtElTHp56ey3/rrWc=;
        b=jCM6oEIfDBBrWNYqNnRk5UQqu7mEISc+FzcDqtJWnwT9NnMLQJ6OVv6cepNDTRizIM
         lGVWnnjc+pSEciEyNIzyH/68VEKvXey3S+uaZTfe8ycV5uBprsVHUyZ629l+Lx0B73u8
         DUe71F1Lu3/8vV9M110/BEt+vXkzgp5UeeN9N2Q6o0NVWXulX1VMuR3W5sYly5RKgoKZ
         2GVFo3/nuLezBVX8acQ8ahWVd1fiKOFSuqt1yWwtc8dHffSuV17N6TWscKZmglMTrfm5
         RaHrk7gVAU75cVBK+tHLUzHPfNQdjDDpkLnzeGepsyAZJ50G4L00hSIZh7Eb34gcH5Qi
         iTiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6sWgniyPepPGE+xgS7M/yN1ejcdtElTHp56ey3/rrWc=;
        b=VyU7jLSWfFvwCYKzAoIit83zKQ7RV3+Wa8bZMtb96n0AFOHrklcHroXdZ17DWYNX+G
         g7O9ChpfnMGn3K4LkgonQCZoQJczdA9/svt/J0uMwpIHFJkfHEWoXi+ssyJBv4jcHk+v
         qGIpbcJtPvzO1+rPGCsEcIvUDisC21XsSSIoGkdJEHhokJR653wusAFbV+kcV+0FgQRf
         uYymklWr5qYLwBB2bGt6zw+mWGv052XdBq6YOlQl+I8k0G5Y51dhIB33I1C5YOfz9Mmq
         RLwfIzZpb+K5s+cBbY/yf9Aiq7PsAVB1pBrFBWwoKOYTKNI60NY0tWH4c4TjgwN84Rlj
         bKRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQV0W+VVQ0FeiUKWscvosbXSf8URJiIJBldZLlHbIdOYVVj3TF
	uzozgNBDWSmoeRM7aVHiEoI=
X-Google-Smtp-Source: APXvYqwhzPU/OQY36iHspMxwswZEBlzFEjyEz2bvzms9AgDgrrOs7a8WTcAnKoyLIrvwG9WxQ81qaA==
X-Received: by 2002:a1c:343:: with SMTP id 64mr11455335wmd.116.1565183852767;
        Wed, 07 Aug 2019 06:17:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4982:: with SMTP id r2ls1510826wrq.15.gmail; Wed, 07 Aug
 2019 06:17:32 -0700 (PDT)
X-Received: by 2002:adf:dd88:: with SMTP id x8mr747768wrl.331.1565183852319;
        Wed, 07 Aug 2019 06:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565183852; cv=none;
        d=google.com; s=arc-20160816;
        b=LLHr/Mzm89Opfh805G/yAOq/V0v6PJdQTyoTzb3mIqwXdusp0RdWADzi61ZOBhaPtx
         miOSs0U9gWbfk83dVdvffMsZotlnw6zONcIOtEaoWbdD0yKglYMTsmgeua40V9XUFcGX
         e3uHd3R1mZ/K2VCxEmDZCQcCXp1jCEg9TB8xDAjHqpvU8ht+7OmfErwViNLPxo/LvSJV
         BQ/JjZ+KuunSrWwFvGkQkHQ+vrg/ZDLNl5yKEOT1zvjRtqnOC0hIE0waSUOuCGiWdsdH
         vcNHX2xkwDY8lNDr0eG3KxhGUSF8wYctE/zzXChmwo9l7Pwy4YjcfamKkQr0B5dkoCoJ
         Wyug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1nfPOddlT+muW9bdZ3yOyEN/LB+xIyIJR2lo0YPqM4g=;
        b=IsCT9MzOHFLpA7FMgsMO4A1JH55FBRSWAmmgmR0t3BXpkLl0iCwFzSh3MVwAzu7+Kh
         MiZ3zwDisMqS3BWMHnHdkm6aRWzwGP6Mb0vaObD6LIrh6PFQM0qnau0eaFVQt9O/2VlD
         CZ5xsUL3IK2r/xLEXD/40xJalQR/KbWc6G6L8Ii/HMAiygJISFMTijC9dQ2JU3jT37Qd
         yAMvHBXG3bl13QNKu6oEwHbYPruPf1MVXUYjCdT2VrhTjoh+BfRlw1fX+0Tos0j0aHMl
         0TWV9qtpSmxVXJIlJDhcyKYwUPfJ7IN+SxEzrt7JVoJP1eZmPRNdbvRKQQwDGGpf9eyJ
         45UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id y4si1669755wrp.0.2019.08.07.06.17.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 07 Aug 2019 06:17:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from p200300ddd742df588d2c07822b9f4274.dip0.t-ipconnect.de ([2003:dd:d742:df58:8d2c:782:2b9f:4274])
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hvLol-0001Tv-Oi; Wed, 07 Aug 2019 15:17:27 +0200
Date: Wed, 7 Aug 2019 15:17:21 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: mingo@redhat.com, bp@alien8.de, peterz@infradead.org, 
    clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
    yamada.masahiro@socionext.com, Vaibhav Rustagi <vaibhavrustagi@google.com>, 
    "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org
Subject: Re: [PATCH v4 2/2] x86/purgatory: use CFLAGS_REMOVE rather than
 reset KBUILD_CFLAGS
In-Reply-To: <alpine.DEB.2.21.1907261012140.1791@nanos.tec.linutronix.de>
Message-ID: <alpine.DEB.2.21.1908071517120.24014@nanos.tec.linutronix.de>
References: <20190725200625.174838-1-ndesaulniers@google.com> <20190725200625.174838-2-ndesaulniers@google.com> <alpine.DEB.2.21.1907261012140.1791@nanos.tec.linutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

On Fri, 26 Jul 2019, Thomas Gleixner wrote:

Ping...

> On Thu, 25 Jul 2019, Nick Desaulniers wrote:
> 
> > KBUILD_CFLAGS is very carefully built up in the top level Makefile,
> > particularly when cross compiling or using different build tools.
> > Resetting KBUILD_CFLAGS via := assignment is an antipattern.
> > 
> > The comment above the reset mentions that -pg is problematic.  Other
> > Makefiles use `CFLAGS_REMOVE_file.o = $(CC_FLAGS_FTRACE)` when
> > CONFIG_FUNCTION_TRACER is set. Prefer that pattern to wiping out all of
> > the important KBUILD_CFLAGS then manually having to re-add them. Seems
> > also that __stack_chk_fail references are generated when using
> > CONFIG_STACKPROTECTOR or CONFIG_STACKPROTECTOR_STRONG.
> 
> Looking at the resulting build flags. Most stuff looks correct but there
> are a few which need to be looked at twice.
> 
> removes:
> 
>  -ffreestanding
>  -fno-builtin
>  -fno-zero-initialized-in-bss
> 
> changes:
> 
>  -mcmodel=large to -mcmodel=kernel
> 
> adds:
> 
>   -mindirect-branch-register
>   -mindirect-branch=thunk-extern
> 
> The latter makes me nervous. That probably wants to have retpoline disabled
> as well. It's not having an instance right now, but ...
> 
> Thanks,
> 
> 	tglx
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1908071517120.24014%40nanos.tec.linutronix.de.
