Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQVZ7P4QKGQE2BPHLGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3141E24C6BB
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 22:27:49 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id d20sf1709010ooh.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 13:27:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597955268; cv=pass;
        d=google.com; s=arc-20160816;
        b=SuLp5MaO5BIsl6R/e63VRWQrFEWzoni2tA42nKmtW7ioEuYujwop5TB5VVmyG6lWUr
         lyKhUparYaFsHS0PfEzkbk8J+2/3CFsCdt4FjeA2wnVuwqXdjoMidM5GTvpi2mugpl9P
         84X8AHMfrysb9jg22UB/PgDVlWCUA2M85Q8eKWD9Ke0GQiUnddLBbEJhd43ZeccCxAax
         WvdH0oXVay318puQOUUKKT53YludzUULeQxIWWMT1SrIEFQpCwYDwSmUZ6u6TagFx9h9
         0cl17shncg7Aqimo76IJeVpHXt2/IxybNpAKjOjZZ54bODJg8lTRHLk6gnkw/oOAYylo
         GRAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GDYx7JbBoCLouZW9jhHQUffjHNhrhp4E9bz72ttuyr0=;
        b=OTrtwVnTfhlmzbEeVzl99WCX4ydAUXrjUXQBo70T5OIn0XGNExIz1Gl3LNZpj8Y9R/
         +RZ5LX/ZihMinuVe6hmWOdTYEjSEtOdJaoA/VJTj2Av1wKWy7uyzHPw21StWLFK5AToZ
         rzWtr7gllkNa6ikx99+l1kqpZ+0DydMCUz5KWpBQ1zt+2lkCZCuXDq4XByWcHVYEox0D
         ekCJm7iaJ06r8MBRkADP4Xot18Jw5Dg/hFBLi1Mo4AqoPnEcOvlLu9sR+AFSROe9k5IS
         NtmJSbYIppDNR0fPS2YJGJ8yjgCbdhjvPR01hjBzydSVS4IByyPPxSk5C17EDq0eqXKS
         adLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pu0bTstj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GDYx7JbBoCLouZW9jhHQUffjHNhrhp4E9bz72ttuyr0=;
        b=mpni9Gjrug1w8i7vwqHvA9c5xeCRz+DgzOS/xjPovZnl9ZsdXIV45Dd4kr+LIP3g0F
         3Mi7IE/tfyFeXQehY/qbV4zSazCsU6xof+rZc3S+HdNigzPT8L5qfMNs68ElAivrLMz0
         r4U+gABLCBxE5Et/0iYx3Ef/1MUEZW3+0UZmIDbCarYTyEcoKSNpSd6rGdEYMMMFxUzL
         spUMgndmfR8gcnSUjXDcl+aNEUM6yMJBjCyuW6aEtmcbLHfVz4N3RYnVK9ft4P2sJAe0
         Y8AUjn+O0rcS7wesRj18FT0cSvucTbii5YwF/o+8UKj6uRd2MRpYcZTTU0WB8OXTYx3Y
         PMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GDYx7JbBoCLouZW9jhHQUffjHNhrhp4E9bz72ttuyr0=;
        b=awuvKaj+96vwPXHfelgfBehxHbFmEoNE/ybOc8kJw4/xZikhTyE28xEbLD4SpHxhmA
         ZooHb012CDD3u2BJtQ0By+DDebkzO9foWB2FDx3sZAjWJGoU1syCe28bp35ySy53w4wV
         +7YHT8McxaS8NLKTgfEJ4XjZ9YadL+/JGB4leF+8OcJiGsBq0CBylYp0+ylVJtWVODYj
         7kIzd246kRKyckXJWU8qySylx+gFG5VSvcpek9EHy35tPPqFPzVNYH//F0msFxrxUuBE
         CfJgDKvjFpUS9OIx22UEC4nl3djpBm/N3q/b3oEIeRHSQub5rTrNNSfACky4+qKQ0gD2
         8KEg==
X-Gm-Message-State: AOAM5314h0sZ8Jv08LsAkdup+DGXHUenodrxb6smhYyURq2Uixh5tgZQ
	uTOuqKHSkpj5GnBRsksy2t4=
X-Google-Smtp-Source: ABdhPJyt55b7S81mqfWDZRTtg7gbLdAzbv+aRq4ZWUtLzvJZCyxReDqN6xGaZcKoHi7qJqkcXS7sdQ==
X-Received: by 2002:aca:45c2:: with SMTP id s185mr86944oia.57.1597955266385;
        Thu, 20 Aug 2020 13:27:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f31:: with SMTP id e17ls875847oth.2.gmail; Thu, 20
 Aug 2020 13:27:45 -0700 (PDT)
X-Received: by 2002:a9d:7319:: with SMTP id e25mr332903otk.155.1597955265659;
        Thu, 20 Aug 2020 13:27:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597955265; cv=none;
        d=google.com; s=arc-20160816;
        b=k8GyL3k1T7ZUzdJLWHS44mkwRsgJURUAO/X+/snpLQ6G0NcQ+5bV1WJ/EQs6hJumga
         L69FZ9p/l+wR/gZ3zQFcR1O+rfu3kczlZVMpXst67AhlSUzlXTIBjEu9SmJ3JgqruOrQ
         3CSb4IOtIZkkLsn4hxoLOXTEYyPI9Do9liVyLmp9ARRoUin+79SUOLSHcvWZ9mwFslSa
         Q7hC3v4dnqcBxUMFIxM+rwR1PWTjYdwKu5O3aoqGo+ngAp3izWCMqHmQs8vfugs1jeJG
         FJt+FtSTcmLlaxDXUfr930D5HpWYwzkXVLqd9z/8ViOWz1Gxk6v6zpSfv2AOxws35awG
         1VTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dQFE6bWtnK0x+f/S3dNY2Gd6QicBS+t28UD5U6DOMoU=;
        b=zkHlJBFViLkMphZDLbo/1ellsiAKp3YpodBSn1ROpd5D4W7lQud1pz/ZAT4BN1ajZs
         ErHM0weAn/ZY1WYTAm77JDvGi6Dxg8RTprqMmY2o6jU8I6+/KoHMthBhFRzM968lgINA
         1GpuFA/NOQeiJe4N+GQv5UfpSXjbj/y9acYvxa2jgSBCc3ueboxAwVkyinyIE3ofxG2w
         3lpCKlhk0WSFKNLubcR6bfYh2BQFN+605CpgMAEsU0uIJ5JyOw45IRVNaZ4RGtn8aNCF
         w+5STZMioRd+EIC6GRPzJrqhzI1wegiZNcgfLe/Xea8Xxnx1/docGtE9NNOvEQQXVM2p
         yrNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pu0bTstj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id c142si125958oig.2.2020.08.20.13.27.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 13:27:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id bh1so1443070plb.12
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 13:27:45 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr11045pjb.101.1597955264646;
 Thu, 20 Aug 2020 13:27:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=Ko_UHWF-bYotqjPVw=chW_KMUFuBp_o8uOg0wOyHyWA@mail.gmail.com>
In-Reply-To: <CAKwvOd=Ko_UHWF-bYotqjPVw=chW_KMUFuBp_o8uOg0wOyHyWA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 20 Aug 2020 13:27:32 -0700
Message-ID: <CAKwvOd=ojdFXs1ceoBwSnFBzyP7PW+-AknF0WjgJix60BKdgZQ@mail.gmail.com>
Subject: Re: LLVM=1 patches for 5.4
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>
Cc: "# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Dmitry Golovin <dima@golovin.in>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Fangrui Song <maskray@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Pu0bTstj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Thu, Aug 20, 2020 at 1:14 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:

Oh, I almost forgot, here's a picture of my cat who helped me by
trying to lay on my keyboard mid-interactive rebase of this series.
https://photos.app.goo.gl/J7CtBJtHmiuzhSfq7
I asked him nicely to move; he proceeded to bite me, and not comply.

>
> Dear stable kernel maintainers,
> Please consider the attached mbox file, which contains 9 patches which
> cherry pick cleanly onto 5.4:
>
> 1. commit fcf1b6a35c16 ("Documentation/llvm: add documentation on
> building w/ Clang/LLVM")
> 2. commit 0f44fbc162b7 ("Documentation/llvm: fix the name of llvm-size")
> 3. commit 63b903dfebde ("net: wan: wanxl: use allow to pass
> CROSS_COMPILE_M68k for rebuilding firmware")
> 4. commit 734f3719d343 ("net: wan: wanxl: use $(M68KCC) instead of
> $(M68KAS) for rebuilding firmware")
> 5. commit eefb8c124fd9 ("x86/boot: kbuild: allow readelf executable to
> be specified")
> 6. commit 94f7345b7124 ("kbuild: remove PYTHON2 variable")
> 7. commit aa824e0c962b ("kbuild: remove AS variable")
> 8. commit 7e20e47c70f8 ("kbuild: replace AS=clang with LLVM_IAS=1")
> 9. commit a0d1c951ef08 ("kbuild: support LLVM=1 to switch the default
> tools to Clang/LLVM")
>
> This series improves/simplifies building kernels with Clang and LLVM
> utilities; it will help the various CI systems testing kernels built
> with Clang+LLVM utilities (in fact I will be pointing to this, if
> accepted, next week at plumbers with those CI system maintainers), and
> we will make immediate use of it in Android (see also:
> https://android-review.googlesource.com/c/platform/prebuilts/clang/host/linux-x86/+/1405387).
> We can always carry it out of tree in Android, but I think the series
> is fairly tame, and would prefer not to.
>
> I only particularly care about 5+8+9 (eefb8c124fd9, 7e20e47c70f8, and
> a0d1c951ef08), but the rest are required for them to cherry-pick
> cleanly.  I don't mind separating those three out, though they won't
> be clean cherry-picks at that point.  It might be good to have
> Masahiro review the series.  If accepted, I plan to wire up test
> coverage of these immediately in
> https://github.com/ClangBuiltLinux/continuous-integration/issues/300.
>
> Most of the above landed in v5.7-rc1, with 94f7345b7124 landing in
> v5.6-rc1 and eefb8c124fd9 landing in v5.5-rc3.
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DojdFXs1ceoBwSnFBzyP7PW%2B-AknF0WjgJix60BKdgZQ%40mail.gmail.com.
