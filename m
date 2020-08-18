Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSNV6D4QKGQEMJ47Q2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB5F248DCA
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 20:15:38 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id m25sf2751794vso.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 11:15:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597774537; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pxd1bTJYBkURIag+jHz16blkPmsbQuvNWmdD2YzityFeUXaMiz+z8znrqw6FjJ7s52
         wf57NPOMbB2wroR7xh4eGkJWv2qu7QyZWkZdakogosMzq4jGt+4M7STMuyzeovY65cN0
         6J4ZLmqvnWR3L8609+P2026CJz6JuIuZzYb+MRbEbgew6Di8wE2Ybm/H+UF/Q3Wfy9Af
         AitRTad59YDO+ci9rOTBjvUZHdzxQx7FrAOHp//hHjVOUw/rtpuI08y98JJvnzNMSBTy
         jVfdnbcD7sjFukeTbgIaYMf96kI4/+3OOz5ZEwRRfhmm+BtZSAaaBU1cAMv9eIJ7fw/E
         kXbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oX6hLS8Qx8ijpBOGCFHY2mt6XBAuCJlEbVC27ZkogAY=;
        b=a4rAQP3mhfRw1fx3R+uVfAnrx6Oegnp/8fmGOLDBJ/kRS/SRS6M3uDmEdyudlh7w4L
         PXkOHJBrO+6UeLz1oIiygGwdwfgCSUirEWP+oAg9lSAZUnuK60yvsLJ+pWRFGKwjWuWD
         XP9qAfN5xXaWYYak0QkaxlhH9RyOZVlz5Gf2zt+Ai7nik6I6qNNxby7VFx1D1jzjFMyy
         Yh9VSNgZcie/Bu0LDuoblYQ2E/73ULqqG/H/L45z6Z5RzOpYvmmmf0gzCppwLUOo1U62
         vY/kRf8ZOqXo9tgJRQPxd19QTh+sztxyCp+zxiCwFruBu+Xw/WhOu/j6fNDXTBnFZqQx
         x7kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G9gKgnpY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oX6hLS8Qx8ijpBOGCFHY2mt6XBAuCJlEbVC27ZkogAY=;
        b=gFLbm+BtZ94TmsBb89u0rMBYdu6vrN7ak8HbSI9ZcMYK8FjEep0jiKKem3/ekyfhv8
         n6KXbzfVgA2xDQrFU2PRM+stnGGTOj+M1tR/AjMol0aSTOfdk+6DQU91rgS0YSpaZ0p8
         HykEhteYKNOxq9mxMvSWLxW3QJoBJkTdR/OWb4mrCoPJY0DMG80wejRw8Ioli7iFGord
         pURuJDgwNEuA2473sSn6HddXAjRBnaJG1Z8kYmgxH8JAYKGsZGPIVJLdIX3T+Lny+ccH
         fhDBdGDiA10T2IUVaHcFiMVrPwb87sY3QT9MkxehfBzXEJ9E4Gbfv22SpIkQ7XXZBY81
         cdBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oX6hLS8Qx8ijpBOGCFHY2mt6XBAuCJlEbVC27ZkogAY=;
        b=j9J7Q9PtwdRoFAe9VZle1s7S+EnDE0wdzfrrqOQHQtEVUT+izCmJW1saVgpf2ckoTQ
         ygZd6wWOr2Mpv/3oAy10N2okKmsIaJ3b1NdGkh23amfsrAXgBPZRCh1u1YIsaqt5NhNt
         UhszxOF15TIGsZibwoZjWo4dno+wOljluNvIhN3X0OSS11IvJVCTS0ciLb9fLIqWx8by
         63lchkNzJDdlKSi99fqPIntg83yvcwJe0DdizpGKms5L2fBpW+ty9qvwBf7n/YyDFqPY
         Mk7k9hoRidjNR1iWyBuFFsvkIqKPU5Ah3jCXtCl4m3cGCjJHVap+8vQrLkHutK8a6Gfz
         7irg==
X-Gm-Message-State: AOAM531cUC2vdAkW5FRkFhSgGu1S11XGUQ8iG4gjgEVIuQWioJICq7b6
	Lyxsf8uuCux/0UkR/Q/cNkg=
X-Google-Smtp-Source: ABdhPJwFEK1d387crF6OB4VseDN/c9chr7qqI0OnP9FS5jAOB7Fiej/Rc2LTnCOYVihL9iAqCsurlA==
X-Received: by 2002:a67:ffca:: with SMTP id w10mr12064339vsq.142.1597774537602;
        Tue, 18 Aug 2020 11:15:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4d6c:: with SMTP id k44ls1448678uag.2.gmail; Tue, 18 Aug
 2020 11:15:37 -0700 (PDT)
X-Received: by 2002:ab0:6f41:: with SMTP id r1mr11508167uat.81.1597774537279;
        Tue, 18 Aug 2020 11:15:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597774537; cv=none;
        d=google.com; s=arc-20160816;
        b=j4a5LJxwUytbxEUNhy0wL0PWqQejj5aiMPP7FEvXDxOjHJgwlbza3b7z0igY/qtvpa
         tt5cYk7DPX1dthin/uf1ok/F39EXqo0XbAozs5lxN78tWfWx3nlAmh/DGdRDHlvYtdTq
         k7qiONY8Pf7hyhQU9qo5j80cgqdpUFCpij1mceSutyqhXkJqOAGOVqu8B/9ewmY6bKZ+
         kHzZ61SLDiqZ20wfHs3eu9Q2Vl22G+p1yHvlVvEeZKBRuQu48UPAN8NaZlJU9l8ZNOZx
         PJQAuZEKTJibNKppyx8p3OG8tjT5BEtVTdnVeUrejc4cD1GGVhsuYuQa3u6Y67IC/QaI
         l8VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OdZ76Qf6dzfSKelQCE0gB9zyiSMOzMBJeBZF1r5RhQc=;
        b=ARrF2NK4TnjdEj1SZrBPpmr+sCXLl6kCPpnDeJjRCQnU0pagqa2wOF4w/5ngz0mA7h
         FMRqG8ocw99nzJbHZUEyGDNkXQciYBIWK68usHtqOBnuASo8GycKwVGnN0mVPfk+vUMx
         pwXvs8jgYQLz1C7jgAkR0jjJNQj12c/+BVVTjpKfU74CV0Vm+qx/xf3iOVTNj1MPKD3z
         Szrl9qDO0WbWlJNz3JMsIq+3Z+6pmYq2LXjVrqWAky10rowFRNoiKsV+aXSeVrxP8Qsz
         2vM9uVQfSvmdl2OSKEM3D/v8vuyA1IfA3B7ttyxXnIJ+DOSYEEpn3KcD1Ff7DCl/cqla
         hY8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G9gKgnpY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id j18si1502254vki.3.2020.08.18.11.15.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 11:15:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id y6so9607199plt.3
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 11:15:37 -0700 (PDT)
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr961684pjp.32.1597774535873;
 Tue, 18 Aug 2020 11:15:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=+taiqCpyknLOm-+kVVWEj-PxX9t5rktj_tNBaQq4iTA@mail.gmail.com>
In-Reply-To: <CAKwvOd=+taiqCpyknLOm-+kVVWEj-PxX9t5rktj_tNBaQq4iTA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Aug 2020 11:15:24 -0700
Message-ID: <CAKwvOdk89ZZSYfF5bZ6P0cKLS9+3dHW8oYBCV3tkz04SRjSwHA@mail.gmail.com>
Subject: Re: llvm mc - plumbers schedule live
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Will Deacon <will@kernel.org>, Geoffrey Thomas <geofft@ldpreload.com>, 
	John Baublitz <jbaublit@redhat.com>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Josh Triplett <josh@joshtriplett.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Behan Webster <behanw@converseincode.com>, Bill Wendling <morbo@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Mathieu Acher <mathieu.acher@irisa.fr>, Dan Rue <dan.rue@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Mark Brown <broonie@kernel.org>, 
	Guillaume Tucker <guillaume.tucker@collabora.com>, Philip Li <philip.li@intel.com>, 
	Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G9gKgnpY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632
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

Final schedule is now live; please also consider attending the BoF
session Monday 9am PDT.  The BoF will be more CBL specific, while the
MC is focused on discussions with the general kernel community of more
general problems.
https://linuxplumbersconf.org/event/7/timetable/?view=lpc

On Mon, Aug 17, 2020 at 4:26 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> https://linuxplumbersconf.org/event/7/timetable/?view=lpc
>
> Starting at 7am PDT runs for four hours.  Just waiting on one more
> abstract and it should be complete.
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk89ZZSYfF5bZ6P0cKLS9%2B3dHW8oYBCV3tkz04SRjSwHA%40mail.gmail.com.
