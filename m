Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNGFRSAQMGQEEE4XHVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9449C315A78
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 01:03:01 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id n10sf108792otq.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 16:03:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612915380; cv=pass;
        d=google.com; s=arc-20160816;
        b=giL/GarZCKXP+XAXmuMUAUft8GU0YAydKDza1GPtaGQMWmNPYRBQYLDqEHG5+ThZr9
         SUmJL/tO+MH2p1uZuIpLwnH3AOfJAIDQoW+qSGK8IJBu3UHEDFlrvGR4YjMAQgk8CDa8
         WU/HciG2tuc8pWZtLY4bepy+NUIOTIuYHwEdtsknW8zGhxh7w+6burdPfYnxCtTV48FQ
         p5zD4gYkjLS6/H0i/0XkdVzjlLbJIPj4rjbl7Zx33fpHp9zdVOfy5rbsmZdbt4LamkMZ
         IP1v2lv5rPpCJ/jcqRRbt8ViDziNvNv7/ImSwRfxS+UyIJiKbVMrGz25bPeUtQiOAtbu
         ibAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=A8p0eK9HKqiHwnZ8RpJ5EZKwrEEDQFAM0Qw1GaxEf5U=;
        b=BDdUvJ+4Ta2DI8d2WUHAT18fBcTO8pfgpepdSTBAb1w7+x9AZyaEGcd/ZgDe46uYpZ
         I9n3Yy29idjV/lANLnRcUwpeuN3UU1jnTGp3yPINqMIe6Q7zvOOT9PR7zrhPieuB0wql
         nx4irD+c74Ypf+fiq8kPP1aiCqaLetTBSVO91L3ZYb5cCcB50YS+Gim3cgX1jpfDclZp
         0yifvnWFZIsRw4TZLAd+5JtaMyGHyN1PN5JVDCpSwEusZZTxmtM0WaQZ55JiWupUIZYl
         X2WMuemfCvsZO2hEqfAwn9xAjxQF64tQyt29PWlQBVlbkZmJzP7upuFinPMZ7qj/an9I
         Ozjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vI+C4co1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A8p0eK9HKqiHwnZ8RpJ5EZKwrEEDQFAM0Qw1GaxEf5U=;
        b=XlV+mAxYI8xORBtI66CCplPLuG7xEidGu05kKi43MkhjjSq0TdIEnm95g+yAUdWKds
         T6i00/6/fJaRxdVa6RNmcJzBbaZc5fOC5i/dMX31G9ARNTM7xafbnM2mUu6xMtU02jmK
         DRLU1EqUCB80P7TaqwO00QxdhM3kgWz1qG0z/1tv/oNKVGX/hMVctVc2qzVrG/oD3z0U
         bIXCYhLFF47cEcUmXj79P7BBrNk181qrJvFHYdXWJhZWoNwM+FalzRn/lH1nxCLcMoUZ
         bVCVvltzChqnbQWZ94Hs01pXkOH8K/hEhdrSJVz2/ex9AjnTQth4TTshXZNBeP6BXfs/
         abnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A8p0eK9HKqiHwnZ8RpJ5EZKwrEEDQFAM0Qw1GaxEf5U=;
        b=RuGLeGahvdkH29sbtv34LW96Kh4YAMkG4vZSiurZ+4Uuia6N+NG1QyAijK3Iuh/6xe
         0E7rKI/xqmEyRbOXEMDDUDpNRaD+7xcyGS4zxZKizecotkm9dPUY8S5o2wmzr8Q9wQXx
         dA+CIEkskk70xdsTRHkFiMl3WcbpHuM1S0J7hgs8vKmMzxthPhBD8iJ+xjZPNR0P8izt
         uJYIzfiGS0vz8jPSki8LApIWYZn6UwSjexKbRcYojDYHByNDA+ZiZqvI3ZFPCbgEDPKs
         8Gddbxl634jpojkv8EydWwo/Zcv6q0+y6l5o/66KraJ7hvpbneGslCarIHKIE+kzGmDy
         e8nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bJ3f9joGXZ56hbvh4kdXvItWG1Xslli6vzi5HokrVA0z/hagg
	qLo+hHQgCShp8HKDvXOwpX8=
X-Google-Smtp-Source: ABdhPJzZGNhAcw+/E2pmqgAebfkC4oQY1ABjwuMVLVGiWrZ1HlHal+xDHFEKMTvQqcZ11X3czHRgUw==
X-Received: by 2002:a9d:71c7:: with SMTP id z7mr164910otj.66.1612915380601;
        Tue, 09 Feb 2021 16:03:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:4d:: with SMTP id v13ls116217oic.3.gmail; Tue, 09
 Feb 2021 16:03:00 -0800 (PST)
X-Received: by 2002:a05:6808:1c5:: with SMTP id x5mr190030oic.160.1612915380192;
        Tue, 09 Feb 2021 16:03:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612915380; cv=none;
        d=google.com; s=arc-20160816;
        b=VuZiJZPfHoeArVqezZklJ4oImIkmCafSZRwyRNJbIM9xVYrX/QXk+qaMTHi+dWcrgJ
         KLrC2lyJkPl0cOBZZ9hV+iVcz9zm4tlSW8mKnSROOHGGAPkQWsd1ab68s3bhWlzcM7ft
         afAiGw0eEgBdnyytTx9sjc4Wx+Rsj+AT4keg/2Awz3g3GXQHcrMyKRqZjp7CBSRnHOxA
         sjziE6Q655MpBgi8Tjdu0pPqOUERRxsW2gIw0zwTQ8rxLQEOwljSS7kXNqnQnuXy53+7
         jXFjDswHwdY2b6QQ4dZIPGpJjgaFh3Icz3RcxDXt/4AN40W0P+O0taM0XodCdjOPs7SQ
         dawA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CpFs4BM6hNGYF4PYZ/vmJQX7R/jcu6sQdHBA3v/8riA=;
        b=bDMmahPSF8vKgneaYNa58sj/zcTSKPEK8pNUFkdGMQS6MKwRGiyBct5fH5H6qPBDQe
         I5XU1Ql47aGxIh79oGARff2E58hRpR/wFOPzUUnNrjhQUW0nj1KtA+gV82d1T8ujPXIL
         bdGrpK/vVICMMT2NGXZB+GEgV0CgWyZ5CiaQoPIVFIAX1TUGgKU43Z2aH8eK4sppVQ5W
         8NtqgbAvFP46jI3nbRHHZPiA2HVK6IkNkNnm5s/Ttmb5XckUy6wCo4VyWnp1/HAzKizQ
         FgQnxgzq25JsGbQTHwyWulU25MhmE+sT4ydaw4sMBKvCZ+n8uEwb4qTXjacvSTOG4m3o
         EPVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vI+C4co1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m26si16494otk.1.2021.02.09.16.03.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 16:03:00 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D94C164E42;
	Wed, 10 Feb 2021 00:02:58 +0000 (UTC)
Date: Tue, 9 Feb 2021 17:02:57 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jiri Olsa <jolsa@redhat.com>,
	Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>, Networking <netdev@vger.kernel.org>,
	bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Daniel Kiss <daniel.kiss@arm.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <20210210000257.GA1683281@ubuntu-m3-large-x86>
References: <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <YCKwxNDkS9rdr43W@krava>
 <YCLdJPPC+6QjUsR4@krava>
 <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=vI+C4co1;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Feb 09, 2021 at 12:09:31PM -0800, Nick Desaulniers wrote:
> On Tue, Feb 9, 2021 at 11:06 AM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Tue, Feb 09, 2021 at 05:13:42PM +0100, Jiri Olsa wrote:
> > > On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
> > >
> > > SNIP
> > >
> > > > > > > >                 DW_AT_prototyped        (true)
> > > > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > > > >                 DW_AT_external  (true)
> > > > > > > >
> > > > > > >
> > > > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > > > strange, given vfs_truncate is just a normal global function.
> > > > >
> > > > > right, I can't see it in mcount adresses.. but it begins with instructions
> > > > > that appears to be nops, which would suggest it's traceable
> > > > >
> > > > >   ffff80001031f430 <vfs_truncate>:
> > > > >   ffff80001031f430: 5f 24 03 d5   hint    #34
> > > > >   ffff80001031f434: 1f 20 03 d5   nop
> > > > >   ffff80001031f438: 1f 20 03 d5   nop
> > > > >   ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > > >
> > > > > > >
> > > > > > > I'd like to understand this issue before we try to fix it, but there
> > > > > > > is at least one improvement we can make: pahole should check ftrace
> > > > > > > addresses only for static functions, not the global ones (global ones
> > > > > > > should be always attachable, unless they are special, e.g., notrace
> > > > > > > and stuff). We can easily check that by looking at the corresponding
> > > > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> > > >
> > > > I'm still trying to build the kernel.. however ;-)
> > >
> > > I finally reproduced.. however arm's not using mcount_loc
> > > but some other special section.. so it's new mess for me
> >
> > so ftrace data actualy has vfs_truncate address but with extra 4 bytes:
> >
> >         ffff80001031f434
> >
> > real vfs_truncate address:
> >
> >         ffff80001031f430 g     F .text  0000000000000168 vfs_truncate
> >
> > vfs_truncate disasm:
> >
> >         ffff80001031f430 <vfs_truncate>:
> >         ffff80001031f430: 5f 24 03 d5   hint    #34
> >         ffff80001031f434: 1f 20 03 d5   nop
> >         ffff80001031f438: 1f 20 03 d5   nop
> >         ffff80001031f43c: 3f 23 03 d5   hint    #25
> >
> > thats why we don't match it in pahole.. I checked few other functions
> > and some have the same problem and some match the function boundary
> >
> > those that match don't have that first hint instrucion, like:
> >
> >         ffff800010321e40 <do_faccessat>:
> >         ffff800010321e40: 1f 20 03 d5   nop
> >         ffff800010321e44: 1f 20 03 d5   nop
> >         ffff800010321e48: 3f 23 03 d5   hint    #25
> >
> > any hints about hint instructions? ;-)
> 
> aarch64 makes *some* newer instructions reuse the "hint" ie "nop"
> encoding space to make software backwards compatible on older hardware
> that doesn't support such instructions.  Is this BTI, perhaps? (The
> function is perhaps the destination of an indirect call?)

It seems like it. The issue is not reproducible when
CONFIG_ARM64_BTI_KERNEL is not set.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210210000257.GA1683281%40ubuntu-m3-large-x86.
