Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBAXXZ2CAMGQE2LJR4HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0593751CC
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 11:48:50 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id y13-20020a19640d0000b02901ca10a3cf33sf770088lfb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 02:48:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620294530; cv=pass;
        d=google.com; s=arc-20160816;
        b=YYSqMuT4ZGpkPHx/S1riSVmglQiMqwkFHHtYK6mOJfPVcXu63v7l1F+y0ojhovz3Cr
         xQ7ljVvEwuPhsfAjU6/mMNBsDG9WMI7fmdhzoLiK9VXgj/PjbaEJcnCnLsKoS9LzzpDH
         oQxfqbljyKstHFil1DyXVHCSXe3UzwuH/laPPlrmsM/LtV3JPu6nfTZ3r8/C6RQdTQh5
         3ciLdzrpkN5ac2nu+uMBaPk5yZxxJ9K14oWA2dm7BTh5LsRLi4gdjiOB0GpciNvzK0DU
         p0t6u7bZGFgsbP6xKV/vCTdbmLLjGI2ykBB/3MRzI9rP6sOLnwra/VQGCQBz0OW958ub
         hdwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nfxKId8/jjwhWok9YtZHgd1n2/XpkohQJl+7CyDnv3k=;
        b=AkXNx/RWxp5JJJTsxo8shWDcil0c3Y5d8tCvUKmO/aMaCUGNxHDBhcoKAN8LLuKgS1
         BtRahwdD6hR+ixNaPCi2mimtoHoir38MLBYs1cwBWCATh7rmv9aW2sHnRxW0qFVNuKaJ
         al4O5l7CmZPa6OPqZzF6GsPgLcWYeI1+6gpawylNYdkw2m0f2tJZ8V5uRTM71i9Q70s/
         FzQn43LArTUU28lxzah78/ZSzMLaKsfE6qVX/yJvMLc+rYVKelIHGqsJv1uCvPfC+PV8
         uOvTvQG89QFKOg3tGXQCjOXhWo8wU1tDwuNsxy7M2IY0hdbHGABWK1EdxOGCnXwYrHC2
         UlDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bwZf/dFs";
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nfxKId8/jjwhWok9YtZHgd1n2/XpkohQJl+7CyDnv3k=;
        b=aBbYGUzKMf0fm9nyfvfi20KTv+d8GV7yYpoju60+hYFZrAEwJcn/2qmqr72C0Qudv7
         S4rnDWcf4Y3EDkCFQ05PnSaxmycE1t0T0t8G4Eo7t0Xy4SIfnXTCpG19mc0sy0jMRj8v
         j76GAv8qXoJD7WoEtVCBD5AO9jFQUSb7K4PbqofmxUM7Hk0yw3yRtZks0QEIw2MH9Jwh
         JF91MKxWjx2Y11B2mC1ErN9x1kjP2/ESFbV8s3bZBFfUh125K7Q6Ffy5oyz6eMGmm+vk
         rLNOrQvtDbPlRJD5gJrrFCBc6dloUdC26y4ZBpCvIFBDVEwtAPhRIMfiEEMgktpfYHlQ
         KPCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nfxKId8/jjwhWok9YtZHgd1n2/XpkohQJl+7CyDnv3k=;
        b=lWpLY1cyDvWlyrwpVlZmPTRy0X5XTnGvLy6CHEzLhIxoJ8dYf1VOLGUmwBvyM9WIiH
         7/rpasJGa/mTBiB5DlzlPYUX6W/DS9NbZ/Ue3a471Qa0X2qLf0uXtUFO608Ex1GoMxr6
         a2yM3pUljGzWiWxrUeedk3jQJwC2Ukw/mDG5jEXrpA7Ox/g5++65CL738l/3niPWWPB/
         puHMrq60wBbO+FDOzEJnSy0N3HiLtQa9uW6v9aWb2kwS0/xXwiMxTmtneHuSN5zqinTe
         ub3fEX1YHf1cmE5HcVOdrFtekVarC4kQnKFoSc7UtIfGc+Lhzo8QIayvWH+on8G0YaQi
         ldhw==
X-Gm-Message-State: AOAM530zaV0DXyIFw/dS/qWhT7pJMDOYPTZlQHiR0o0sFSkYf/fR4Dev
	AMp6HfUT+o4kmMDOS61i08E=
X-Google-Smtp-Source: ABdhPJzxE5OvlHN2k11kWkjTx1Gx+C2ScB11qH4Ektii7xwPP2Is7sJuBulTxFxBjUVCEgCiSsF6Dw==
X-Received: by 2002:a19:f602:: with SMTP id x2mr2298114lfe.600.1620294530307;
        Thu, 06 May 2021 02:48:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:b07:: with SMTP id b7ls375133ljr.2.gmail; Thu, 06
 May 2021 02:48:49 -0700 (PDT)
X-Received: by 2002:a2e:a606:: with SMTP id v6mr2733320ljp.289.1620294529313;
        Thu, 06 May 2021 02:48:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620294529; cv=none;
        d=google.com; s=arc-20160816;
        b=DLnv6GfAgJUaXA50wiNiacbOi9WpNVJfXQHk9iXlEbosgnIPZnNoUnHMyEbgvVeIX4
         BKHcnpF8k5sLAX2/z4jnUl6bctBYJ6ZXwRCAJPv6Tx59wMAMy9gW4F+6YMIRqaKU+O4Z
         5TC2xWI3pSDBfsTVJ42Ox8ORPo4e8IcwyaFkd93O+Fz3M56LCw+wVBM96u7LHGIwaLBg
         3pL0qgLnP33bx7DRQtZ1FWFDI5sUCO8q8JNpQqC1YmsFGGLpoMvTOtlyKtrHLTqW7bF0
         sb4tk7ZTKxAH+LR9L5l7nfz1vfZGN1gNAdglaqyGgQjgzuSMXu0pBZf/HpVtDYmotXEa
         oD2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=45APvTMwZ+jlxauEu47sYne50SBe6A47f+5iZvs94SM=;
        b=CJvFBX725LaKsAjY3Pr2jbcjl5E9ay1PbGQ5mJWOGME0EV1Tq07Ei8HYIHzT86GFpq
         PnXSdfLZUIZXwdt5FSCe68I/YIKybp+W/1yM6mQEDCvqkNdQp6z3ODSGKi9BFXAp4Imq
         jyuDAxykg6oqmo854jJrk+XJQ1PBpAP4v6ikhiHUQG5aMT6kl/b3u8ZSkqY2hjOaTJ+/
         1H1taTvUiN9JRL8yJalii8vt3daG41VVBd5t97m1JYlOF3aVPxjXHlh8LJVLhQnixEgq
         ASUXEN5qFOQad7kcUvMr+tO7OkXIEgt1zqHc6J8PuJLJeltdiEk6/p1lhuHZoHDSnXN/
         f1+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bwZf/dFs";
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com. [2a00:1450:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id y11si96885lfg.8.2021.05.06.02.48.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 02:48:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::32d as permitted sender) client-ip=2a00:1450:4864:20::32d;
Received: by mail-wm1-x32d.google.com with SMTP id o26-20020a1c4d1a0000b0290146e1feccdaso4463890wmh.0
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 02:48:49 -0700 (PDT)
X-Received: by 2002:a1c:2:: with SMTP id 2mr3072060wma.113.1620294528842; Thu,
 06 May 2021 02:48:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdndSoA8TxzDiv1Nhq7+AHZ_NETFNibhqmRuVcU6Ki=KOA@mail.gmail.com>
 <CAGG=3QWZ0OWQyCZYhrEyP-h_opbZcMADEUYcGz2Aq6g+NDn4nw@mail.gmail.com>
In-Reply-To: <CAGG=3QWZ0OWQyCZYhrEyP-h_opbZcMADEUYcGz2Aq6g+NDn4nw@mail.gmail.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 May 2021 11:48:12 +0200
Message-ID: <CAG_fn=U5c2n7X_k3TRaKa3aBLd60z7N53KtZ0eMWXUcXvu1eNQ@mail.gmail.com>
Subject: Re: Linux Plumbers Conf 2021
To: Bill Wendling <morbo@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@google.com>, 
	Fangrui Song <maskray@google.com>, Jann Horn <jannh@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Arnd Bergmann <arnd@kernel.org>, Behan Webster <behanw@converseincode.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Peter Smith <Peter.Smith@arm.com>, 
	Dmitry Golovin <dima@golovin.in>, Antonio Terceiro <antonio.terceiro@linaro.org>, 
	Mathieu Acher <mathieu.acher@irisa.fr>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="bwZf/dFs";       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::32d as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

On Wed, May 5, 2021 at 10:17 PM Bill Wendling <morbo@google.com> wrote:
>
> On Tue, May 4, 2021 at 10:34 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > This year the Linux Plumbers Conference (https://linuxplumbersconf.org) will
> > be fully virtual, and will happen from September 20-24th 2021.
> >
> > As part of the event, we are organizing a `Toolchains and Kernel
> > Micro-conference' devoted to discuss specific topics involving kernel and
> > toolchain.  It will cover both the GNU Toolchain and LLVM.
> >
> > As in previous years, the emphasis will be in discussing specific topics that
> > require collaboration/interaction between the kernel and the toolchain chaps.
> > Examples of topics are wrapping of syscalls, specific features in the
> > compiler/linker/etc that are used by the kernel, desired optimizations,
> > features to alleviate security concerns on the kernel side, and the like.
> >
> > In order to get the Micro-Conference accepted we need to provide a list of
> > both topics and prospective attendants, so that's why I am reaching out to you
> > asking for:
> >
> > 1) Topics your project may want to discuss with the kernel hackers, during the
> >    event.
> >
> > 2) Whether you are willing to contribute and/or participate in the
> >    micro-conference.
> >
> > Please let me know @ ndesaulniers@google.com.
> >
> I could talk ad nauseum about PGO and LTO.
>

I hope to attend, but don't have anything to present myself, as we've
been mostly doing compiler-agnostic stuff lately.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG_fn%3DU5c2n7X_k3TRaKa3aBLd60z7N53KtZ0eMWXUcXvu1eNQ%40mail.gmail.com.
