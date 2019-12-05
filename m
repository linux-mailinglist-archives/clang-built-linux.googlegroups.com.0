Return-Path: <clang-built-linux+bncBAABB27DUTXQKGQE5KH66CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 567AA1144EF
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Dec 2019 17:35:57 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id v13sf2110182ote.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Dec 2019 08:35:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575563756; cv=pass;
        d=google.com; s=arc-20160816;
        b=QMEJcNa40zDk1ij3DslHvikZQcMuKoXoZiAvz+yoVoFwND38J3T4Va6QCZlm37VK1H
         mfXUSYiONEVGxDnBvwhyNRFoiS+F/1QW+MmXjlcovF3af/rbvpikVjL9yCrIlD3SH6NP
         RTphA+sHS7iOX5ouvnvEY3lSE1OuNOvFXV6tEOEDsAj/5eh1yLRjlafGGlyRHfQ8P3r+
         HfgMuAP+/c9EX9R8TxXBMEHSOOILyEXT3+rpMqQe04bZpKUZhrJBD22jQbNZPQoGLvaF
         Z9iLxKPVqhkiEq8t0eUUCnnrLmPWsXZ4bkxCGzzXsRIdqbcVqTOMUnJC3l31kyMwHJ/o
         Y63g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=gIITFLJGfsrtAuHf3yEtXHf+QzWiAlj1IW4rqNKOKb8=;
        b=XsxS49MpnvkmLhGYNFXfvRfTNseZLvBJbVNClOQmGIQKi1Wz8SV7BKiPGq4lFlNy5y
         Wt8jPR4/quwf9fO0WbNrwfM4gyOji+kwgjiIU40Hm3YPbU3dMhaTg/71OmLshi5yGNoI
         tvj/SCewATCZOKW9EI0MGCR/QMtRPYKNna0cLClryT+8g4HNV+lpiZ/N3nrFmW/LURQV
         Nl4Oeb1t9qGnwk/MdY07tmW9Yv2kYQFzcuwEwRRAt2yCva3d/KxM9XGMU22SXxvI0HCK
         Vx+44gk+1OJ4OyxAfCNdP/cUm/lpP4r+4jypnQ1DBIKwFZoFGRQPGWR5ThXi3uU5Rf3i
         yVnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=K+sX0gQS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gIITFLJGfsrtAuHf3yEtXHf+QzWiAlj1IW4rqNKOKb8=;
        b=QjIn0rQ3Q+5n6jrfKXlVeGpj5Yh6QZQTAoSP/ybY2KbV73rbKobkXOh+ptQNGvvgf0
         xUbEl87uw/h4iI4BA3dmNkRr5J9wu8mdOuMRLYmKLr0PVz8FZWtqTng4gGLlje8ARgIj
         dRVha1VfnEyksgAKi7J1kXjv+R28KqEI3KbWXQNag+av6Bu9YCY9Hx8CSU6d6e3VMd6J
         Hf12OMdcfUrLuCa3wiRL5OL+01LMlckNam1/oYZyM3WEqSgRCxnhoEf1AtTlWteO3uKf
         84Xwg/tThizdQOc49itgsdk9Nko6dk7eYEo4VRxf7/Gv9v3wrY4AQe7KmLunjJdl7Mi3
         hG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gIITFLJGfsrtAuHf3yEtXHf+QzWiAlj1IW4rqNKOKb8=;
        b=ttAj2MvETnylEkh9rSGQbqcb2WpJkXrxQIOUi4JcfjqqGQbOymKaCYpDoaUo/f/8wy
         kg1k64ct3XgRPbHdMq3ii0M18KciMiWwbpd1FQsqsE6efi/1IgRQbUKXqNI9lcETYc2l
         +VfiKiISCM1GHnZbFQS7LKnFm47V9GoPAehbZX/QEIiGGF3oA/SMjNsQ1XCvoEbBp+hg
         s37wGReHrUtq9bDx7aetftssLuPskrJn3YKsqE+4zKot6CuWnEdDxHV9ORQEP6f+qzUy
         dO+0kREFqOD3ciwf+FIActb3AbbJVEges/lI+iJJc6MPQsm7SSRwoV40pJXeC3BZsK9F
         QMvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUCUX9p/+iiAEXWNuH2Wt6MQfBgjsMzAoC1Pk8Vzy5AlQpwMUL8
	xC2me92hFw5SN/uxf0EkzL8=
X-Google-Smtp-Source: APXvYqxgbZh3AuheRzCLoC3FQhwvLMkXTBJ0buXSrhV2EJv6t7U00PmGss/NNNXHIhA4TeCvtsFMjA==
X-Received: by 2002:a9d:5902:: with SMTP id t2mr7730374oth.151.1575563756059;
        Thu, 05 Dec 2019 08:35:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:649:: with SMTP id z9ls743740oih.3.gmail; Thu, 05
 Dec 2019 08:35:55 -0800 (PST)
X-Received: by 2002:aca:1103:: with SMTP id 3mr8110934oir.171.1575563755683;
        Thu, 05 Dec 2019 08:35:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575563755; cv=none;
        d=google.com; s=arc-20160816;
        b=Z5uSCk1umPF7Qw62ECe3CtwX/EvYiAykQMD3YRKS2WKANWj6XNMMj/9J1tuCp+1ne0
         dUTz3lF7oL2Eo17I/ku9b8VJnyfcMbc4tSSaN6+imjXwHNeq/Uqh7lcoWehlfFIHRUNE
         EBwE+AW6g/T9erunvcHPZA3lADuLVeSBtSufkZpgYpsfUxSBHILUGQSSJdM+QqprDSqH
         ATV6mNoEWyrqztk9El110TWCG3JbVGG7kHPnSRPG61gAKNsXBrjuGXrAAlpKx+2NkwSL
         dI2nVpOat2kDnxZw/4+t7b7KR7Iyn63TfTf0Unq1IrNUcrYExNL/wWnUOpqCDXku7gRr
         OHAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=7RCDcjbdBnI4J3nN6AHAC7zNOa70/0tQQctWWWxqHVE=;
        b=IAy7Bh5wy3oGbT461x5ZWXslCXFkl/Vdkk5dc0NKNEbyWHgY6V3haSU6ItPCpsYGsX
         Pbn2WT5ASxaI2o/yH6uv4/7vRLhZ+TqP0mPdmfcisFf4+4rAyWNHvo+98HdzSMt6vrZE
         fBbGaNStBbmzapWgbIzmkZrya+jyU6J+YFjqipgFk7TNYekUhH9loFNWUtXiyiyxtAsE
         3BzmbU2BaNz0726EDpEHhtEIMFWIrirNMk8ejpo/0az7AIJ42UEaDX/mjqDyaS8EpiHI
         mZmk6JbmkXNWZjmt5bylyxOUQ0NbI5bPmdK5OA4hkGud1+W/D/p4LYExPznhyzrCxkJs
         2Ifw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=K+sX0gQS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id w63si528385oif.2.2019.12.05.08.35.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Dec 2019 08:35:55 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id xB5GZbn0029390
	for <clang-built-linux@googlegroups.com>; Fri, 6 Dec 2019 01:35:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com xB5GZbn0029390
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id f8so2808169vsq.8
        for <clang-built-linux@googlegroups.com>; Thu, 05 Dec 2019 08:35:38 -0800 (PST)
X-Received: by 2002:a05:6102:757:: with SMTP id v23mr6280994vsg.215.1575563736733;
 Thu, 05 Dec 2019 08:35:36 -0800 (PST)
MIME-Version: 1.0
References: <20191204225446.202981-1-dima@golovin.in> <CAKwvOdm-bhuJMRRN3tyNdb88+_TFd4m3b-7gX0-91VG4djzp+Q@mail.gmail.com>
 <23883331575506134@vla1-3991b5027d7d.qloud-c.yandex.net>
In-Reply-To: <23883331575506134@vla1-3991b5027d7d.qloud-c.yandex.net>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 6 Dec 2019 01:35:00 +0900
X-Gmail-Original-Message-ID: <CAK7LNATA=OsFVY7D9T_5qCv=2MKc5o4wto8HCd=2qScDAyRrgg@mail.gmail.com>
Message-ID: <CAK7LNATA=OsFVY7D9T_5qCv=2MKc5o4wto8HCd=2qScDAyRrgg@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: kbuild: allow readelf executable to be specified
To: Dmitry Golovin <dima@golovin.in>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        Ross Philipson <ross.philipson@oracle.com>,
        Ross Burton <ross.burton@intel.com>,
        Chao Fan <fanc.fnst@cn.fujitsu.com>,
        Daniel Kiper <daniel.kiper@oracle.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "tony.luck@intel.com" <tony.luck@intel.com>,
        "fenghua.yu@intel.com" <fenghua.yu@intel.com>,
        "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=K+sX0gQS;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Dec 5, 2019 at 9:41 AM Dmitry Golovin <dima@golovin.in> wrote:
>
> 05.12.2019, 01:18, "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>:
> >
> > Grepping the kernel sources for `READELF`, it looks like
> > arch/ia64/Makefile makes the same mistake. Would you mind fixing both
> > cases in the same patch (v2)? I'm also curious about it's use in
> > arch/ia64/scripts/unwcheck.py, and scripts/faddr2line. +ia64
> > maintainers and list.
> >
> > I think if you simply remove the assignment on line 17 of
> > arch/ia64/Makefile you should be fine.
>
> Perhaps something should be done to NM on line 16 of this file as well. Also
> found similar invocation of `objcopy` in arch/riscv/kernel/vdso/Makefile.
> I think IA64 and RISC-V changes should be made as separate commits.
>
> -- Dmitry

I am fine with either way.
I can take this patch, and also a one for IA64.

You can send a patch for arch/riscv/kernel/vdso/Makefile
to the riscv maintainer since it has no patch dependency.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATA%3DOsFVY7D9T_5qCv%3D2MKc5o4wto8HCd%3D2qScDAyRrgg%40mail.gmail.com.
