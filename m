Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBOWJVT5QKGQEXVVKG5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3224E27566F
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 12:34:35 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id y18sf1208683wma.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 03:34:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600857275; cv=pass;
        d=google.com; s=arc-20160816;
        b=RFq2TtBwq1Z95GDJfk2vNp5x/RVlap0o8aCUEZHv1YEP0Fzgr9BjWELaQ/NbFoz7da
         v/KpZdcjUopor1Usx2PF+Zk5IlKrbBUjZ4U2XMnlPVQZ4f7iSzB9X10eGBhYd6u1M/ZL
         2r6lBWXe6bNLVlayIxnH07CyxogEQYnuckE71aCZCGUzPQRtMyc3R2XW+52Z9XCB0SLD
         lvx2Kxac5kk2iT6+ckGMnlYZjgyWyjnZwInnWd013OsA/+2G5YGK1lCoZxQspTfkgJaO
         BgNhE7s8s29VITM5EZHHUBiUtLFpWfUfdZYWIpIq4dutdzt1EOfoZVmChOutVgKouqTV
         2ZRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qjvm1kBUFsUyZuIn6qfbvTCEjkV0O1n532jzDx+npM4=;
        b=DhwqCbteujxouAEHMJULjZ2cBcSlGwB95bScCUb3Jh54Rq1Y480vy7CuifGSC15wni
         4XAwa0z7ezbO7lRr7EJNyH2Ob28colxEVyHC/gZvRaeaEbSpGOsqMIQBUId6QfzRmRnS
         sz7FGsglthXDD6iOjhZk3aYc4c3p6yXsEBoQH7Mzmws/LJGuXAyGUvAgLOQ7zS2PAnWP
         NVge9774WFObLopmhPH/QeMnfV9yGdQ505rNw62kCMr2AKqdtiTJC+buJogdWbn9B0zg
         5/CsbyJPOyHeGZ3biL2QL9GHRZKC+G7d38DiITWdFBa6RwldUCUf9nNKSW1ESZsFW9EC
         DGtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=FC1HJZM5;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qjvm1kBUFsUyZuIn6qfbvTCEjkV0O1n532jzDx+npM4=;
        b=MkWZJT2U7mqU84dowehObz6FUHbGLPP40fPvmYWGB1to6yI+JsVvHnGkjlIz5UzfS/
         Z6EyKHjuUt0Lz0kzLw0gRGzBfoaS2/1Ve1royugwb41p6S95s2lM/gPRcXOhvW9C7idC
         3h8nwUZ1FYLU1FVmdydOQdyMUnSUU74/vbIM0CIxwAVeeeXzxTkBdaHWe2CfXQ1Cvrl7
         ynTgVaIBDEbJx/ZDjtrGr6doy1SjyD0UxU0eaAK4Ugu8GDBOQInirOqxc6hB6znLg9gD
         WUhszxKEvqAfQagdS1FsXTYfgk4W7yZ09y4fQq7Lr7KOAHlwOhGvIhP8079OMtWo06B/
         LA1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qjvm1kBUFsUyZuIn6qfbvTCEjkV0O1n532jzDx+npM4=;
        b=SIZ1de5kO4cGQuCw49fanynlxczU+lZCnxHaPI9f0wfhuGltX8dtS9auyJkNuoUIhd
         TQf8ejz0ZWWhFchQJgeYSmaQdBSaMOLKshY0b7kILeQjfhEhZYYhmbOD0fWW+lSFmz8M
         f7354FXPgnMd+25joIMq/CfcfVUtGF3P3bccZxhR9Kl3Z0dnsPFs4YuAtWQtzjKmblZQ
         jifyTg/AvHHpbdfIASMyNHngurl3LPFulrOeRyXQ7rRypFA69h1rAC4gOsonwboQpgtG
         HSyWNAExX0UJaaJY3AWTb7VW1OeScT4515jMFZCOMHFHqNH8c+n47iKTxeB15zE3SmRe
         wl4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306HqV6fRsmlf6PSS5IoH1yRQb5sSM4FEc0FNWD8kPLNOB7gf9F
	Zx0sBi5B+VO36oKyr7rQnrQ=
X-Google-Smtp-Source: ABdhPJzHCbV7tHplq7KNkFZVXMhNmS1COdAMzQLd4txZi+vqFADqbLD5sUU3xBx4T/b4z7YVErgipg==
X-Received: by 2002:a1c:ed01:: with SMTP id l1mr6186768wmh.152.1600857274951;
        Wed, 23 Sep 2020 03:34:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls958718wrm.1.gmail; Wed, 23 Sep
 2020 03:34:34 -0700 (PDT)
X-Received: by 2002:adf:f24f:: with SMTP id b15mr29065wrp.301.1600857274089;
        Wed, 23 Sep 2020 03:34:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600857274; cv=none;
        d=google.com; s=arc-20160816;
        b=fKwYPu79RVxmasGm7xMxR97J2unu5nR5fJIdOsZSEtU6zk50H6AUAKfR0c6DlsdURL
         G1uxOq6C5SVhKHhkIhCqLqP/q+SBrR9r4g0992d04SJkhe8iaXekIji0jouZXoK0WD3j
         YLd6FmPqC7/dxyPQPZ6JpN2lbfkyk5CEgjg0Js3fgIsoQ0qplBxG1bIBh/im4S/PRHYR
         ICVoHsVMdU0WZ11/S/lTeHjphcvOufjb0koTG7Dto5l6h/q4pK0HSVdEPy7gqGmbkbiN
         10XW9T3T/Rhp9KIHDWquaFDmPX+pFVaSYCTSiGM91u0zpueyLNUoqsYqP6WpQbG2xZ0F
         aKtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FZsrac/HmInXoXIXxRGxQJzsoj2KcH5XhZgh7SJHhMg=;
        b=j2uLDBUqy9v6BrKPsaq0B75i7Pj6F+XjW5J6O5DmYiVHXYwee9P75TY/YM51fktyrI
         Z1MEQ85LB/teDGGznuZWF9tgN85fEuaWfS0xKpldZM8xdGNQGZuMXscBpTfIkrS0FZZJ
         o/SqN4KBTyrjKI9NzFy3+6xNFU2FeuNBE+EWQLWo1NUQkLYdzNHaDON9AlmghMojS5FV
         OfC7G+Yxrw9v2A0hPwyLz2ruJ9gbsZKQqSanlJ/itHdiK42hOBTccMKT2+D2cc8IJnJu
         dyHuYrDNiBdJOL/IY3ZWjPJ64O2j9DVgRx8X4u7H6HaYD2GUmb3QWssdplUwgz+QtYzB
         uHMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=FC1HJZM5;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id s79si144794wme.2.2020.09.23.03.34.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Sep 2020 03:34:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0d1300e5068c8a3292d31d.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:1300:e506:8c8a:3292:d31d])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B67AE1EC0409;
	Wed, 23 Sep 2020 12:34:33 +0200 (CEST)
Date: Wed, 23 Sep 2020 12:34:31 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: general protection fault in perf_misc_flags
Message-ID: <20200923103431.GF28545@zn.tnic>
References: <00000000000052569205afa67426@google.com>
 <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic>
 <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
 <20200923090336.GD28545@zn.tnic>
 <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=FC1HJZM5;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Sep 23, 2020 at 11:24:48AM +0200, Dmitry Vyukov wrote:
> 3. Run syzkaller locally with custom patches.

Let's say I wanna build the kernel with clang-10 using your .config and
run it in a vm locally. What are the steps in order to reproduce the
same workload syzkaller runs in the guest on the GCE so that I can at
least try get as close as possible to reproducing locally?

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200923103431.GF28545%40zn.tnic.
