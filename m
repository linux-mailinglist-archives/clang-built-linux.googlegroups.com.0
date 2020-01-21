Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGPATTYQKGQEK4Q6Z5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 989C81442C4
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 18:08:42 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id x199sf2051317pfc.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 09:08:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579626521; cv=pass;
        d=google.com; s=arc-20160816;
        b=b2opkpz/SzqZpk0dvv+QCpWuYWlRLLcqLZIzCBfd9wSA6XvUzlvn6fLIrIsBY//EnV
         eDbTANXQZArtDsO3/qcZWr6KPB53o/lBqE0r9tUDnQIp9WR1w6zDU+LnvWNR+lPv52fT
         RHyHZXSMW59wgUN2JbvT0qKyxP6/HmAtXhU78Uy+GDZ4w42VQL/9+FPkvgmyLJP83e8+
         KmPrCI1VV/KVIzRo63oLYfgqWEnhNoudhpYsvPHtzsqZ9GuFFdKsf3Wy0U2PIkpk1Euf
         5GNG8tkRH5JOF/nxycjyw3TMXLKkns7sd0Us9+RjB/lmmBeB5/4Az7C9aaXRmJ+mRHZa
         SZVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2OsNrNlg9amFhDkOAwsr3UwruSIDnWWVcTdTmgTtwT8=;
        b=qQl22OYscP5DtWq/JymXXC2vvMUlM1YPT5LtoRJKl2VPncIMmpnS9ch3pf0Y2Vn77t
         2vNrg85N9K/5dMBxmd/UAeVJwEG43KT5X00K8C3b3UlrQ3MCWkvYg9GJqheqBt5cn9kU
         tqIZ7CDe7pSnldQV2o/TIBctJjENuZSp8DMzTPxtkc+zNxZu7Vb0CKMHeJ5wVexNiyhY
         zbRciTPLJziU0UbBHBTY02QurlOn5S6eWFVl/AMTY8O/Uh5hyCShUGhEhqACb1WFFJWq
         inemcUx9vSEo7Fc0ZoSsiyd9+BVKJGFsM5Ffn+7+C5gHBab/ZBFOd4qnSkPt9Jd4Kp3D
         ynRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gQvDqxcx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2OsNrNlg9amFhDkOAwsr3UwruSIDnWWVcTdTmgTtwT8=;
        b=Z/bfblhxwgGJK+YgElrRu9PeQFVKXE9Mtai/it74emyrPjpe4m5BdiUXSvwKfFAz/U
         sMikHbzW6mvOaTMF7U0ir0FybCFpwAVGjJAzq7BJkYImQOag9SeWWjsiCdnuSG04kQ9s
         QoqAnGX0sQf4Ui8FSryBglaTuO0SoFtfLmUG7coAF7mt3dO7immNWqTdfdNAvNxMWGP9
         /J34uHDASSzrDenvQM3JV7bmQT5oVR6P9ehXhqO3U4XSTwClaGm3sq1sa8Fm+1ONwsCZ
         jPAkGihnQPCmXZAbJoNZQ9temEvH0/t1rXlC0yhxBP4H32poeBLUb0s1ruTuh8BMuSKs
         zOFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2OsNrNlg9amFhDkOAwsr3UwruSIDnWWVcTdTmgTtwT8=;
        b=kfD/FrmOmZougV1JKbqkOXESMXV6JWGEY1NIHs4GaDPdPW0ZuXa6ip82U9WbTviJb8
         sBkIltzfr2ldEUkUcugxm/ejsFj7W9kuitjgW2yETiI1OBQkGiGQc859KE5rltTMMWAm
         ZSO141f2gDCO/rmLwUHKw59tZJG5Q3SLRw8Ai/A04rdxm7n9HoSms3Xz5ehyeI2xW1XJ
         5OolWnx8DV4KMg/9VNXfVj4M6yDSzCtUcWs0v/6Mv+XtAGUnz9RF1RYpehAQ1r7SXwsw
         7zTX9R9MBmXDzOAbWH8Px01AfKuIdPgbgWQvQcLtzWHu6ziuV7Fj6M4v/I9/ymCxp8DJ
         vPEA==
X-Gm-Message-State: APjAAAVhjCCQ0VWbdSDAIgGP2z5UlGUk4Q4TC0m6nzQGeTaos/ZzB+nG
	vZ+PmCxJjm+e3ocw0XyVBCs=
X-Google-Smtp-Source: APXvYqyL8zAkXubBa2FOG3UVm6vc9ySeD1d+CPjZT9Y4VRT77vyljUY2PCY/OMw1sCj7qqvEKD4hdQ==
X-Received: by 2002:a17:90a:8b84:: with SMTP id z4mr613310pjn.1.1579626521242;
        Tue, 21 Jan 2020 09:08:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b26:: with SMTP id 35ls1445256pjq.1.gmail; Tue, 21
 Jan 2020 09:08:40 -0800 (PST)
X-Received: by 2002:a17:902:ff12:: with SMTP id f18mr6498866plj.256.1579626520809;
        Tue, 21 Jan 2020 09:08:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579626520; cv=none;
        d=google.com; s=arc-20160816;
        b=cUg28kMid6IzcuzPRgoVhfM9drHZBi/HY8sHkt+i+hPSYfx0F4oodBdC39Vz10zQWJ
         mrMVbZj3nxdmv3S/zEkwzx4l9/eygA8Ohs1jQ8YwHTaoiE5FquwQlofiViU7A0Be6QPV
         3kNEY9/IS2m0Py9dNUXVF6i8+6HrhyGOfXC8ubREfQuloACyrgHqq2rhP56KAtxGaMWB
         uu/3b7WRz8NUkjrQIzu9rRdqRzNWq8FLdEqSr9fMcAMUkPVmwvN8fEuCEWU8nY35RFRX
         BDdi8RayiKjkV2zpWQLXwWCZi1B4AcNYcZ+Np14jwl6/QBPImt9EgB0kwBbzdeYkk09e
         tuxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dIrTm/RxgY9EJkd3a5Dr38zt2odYwh4TDnr6W5Q+qys=;
        b=h+n4QgDq+clbUh452R6QTLMBPSemc4Rtoe+agY9aIxpsxbN/ayWtZzY0dXTagHGkOU
         BglfJ0AZEOwTHge5yRTAwcKUCD2h+0MCo+SFclvYYFvP0LosTStnTqd7PlKrLHdYeU/r
         XnsUzu6KuuzWCUyKonmwaQ4sl952y5IPmRCBP9Cy3xWZdHu8cVWKOmoPYh4I0faVaPEw
         RDZuHEc5TqCwtnTtAHWmXyun0XXySS+JV4kTRmRQIZhAT3hYsjZWY4PLF6Rmp0P2SAmO
         51LmL/tvae8ORR0L3ZV58xBRedsQheuI3UcqRRRHIZ0XsMKnh6D0WdpE4I1hvwsMhqT9
         vD5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gQvDqxcx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id p17si1102619plq.5.2020.01.21.09.08.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 09:08:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id kx11so1653025pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jan 2020 09:08:40 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr6604608pjk.134.1579626520305;
 Tue, 21 Jan 2020 09:08:40 -0800 (PST)
MIME-Version: 1.0
References: <20200109160300.26150-1-jthierry@redhat.com> <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
 <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com> <20200121103101.GE11154@willie-the-truck>
In-Reply-To: <20200121103101.GE11154@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 21 Jan 2020 09:08:29 -0800
Message-ID: <CAKwvOd=_PqQWUvd_WZRpEr+T==3w6LpsHKBz3E9ybaQ0javVkw@mail.gmail.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
To: Will Deacon <will@kernel.org>
Cc: Julien Thierry <jthierry@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gQvDqxcx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Tue, Jan 21, 2020 at 2:31 AM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Jan 13, 2020 at 07:57:48AM +0000, Julien Thierry wrote:
> > On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> > > The 0day bot reported a couple of issues with clang with this series;
> > > the full report is available here (clang reports are only sent to our
> > > mailing lists for manual triage for the time being):
> > >
> > > https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> > >
> >
> > Thanks, I'll have a look at those.
> >
> > > The first obvious issue is that this series appears to depend on a GCC
> > > plugin? I'll be quite honest, objtool and everything it does is rather
> > > over my head but I see this warning during configuration (allyesconfig):
> > >
> > > WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
> > >    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
> > >      Selected by [y]:
> > >        - ARM64 [=y] && STACK_VALIDATION [=y]
> > >
> > > Followed by the actual error:
> > >
> > > error: unable to load plugin
> > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> > > open shared object file: No such file or directory'
> > >
> > > If this plugin is absolutely necessary and can't be implemented in
> > > another way so that clang can be used, seems like STACK_VALIDATION
> > > should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> > >
> >
> > So currently the plugin is necessary for proper validation. One option can
> > be to just let objtool output false positives on files containing jump
> > tables when the plugin cannot be used. But overall I guess it makes more
> > sense to disable stack validation for non-gcc builds, for now.
>
> Alternatively, could we add '-fno-jump-tables' to the KBUILD_CFLAGS if
> STACK_VALIDATION is selected but we're not using GCC? Is that sufficient
> to prevent generation of these things?

Surely we wouldn't want to replace jump tables with long chains of
comparisons just because objtool couldn't validate jump tables without
a GCC plugin for aarch64 for some reason, right?  objtool validation
is valuable, but tying runtime performance to a GCC plugin used for
validation seems bad.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D_PqQWUvd_WZRpEr%2BT%3D%3D3w6LpsHKBz3E9ybaQ0javVkw%40mail.gmail.com.
