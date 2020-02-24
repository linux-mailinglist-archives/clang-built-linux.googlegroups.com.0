Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQEJ2HZAKGQE66YLK7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id E567A16B324
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:48:49 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id j5sf1872059qtp.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:48:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582580929; cv=pass;
        d=google.com; s=arc-20160816;
        b=kwVFmm97/+gFnOkhmVO0V4GNE1mDb/J4H8t2k5Npwqyf9RZijW5eRYx5p5mpW0x5HI
         9awlwOaIqiZ5BohFBof/mTHwNrIbvfVZZMozG/UU9Sni/EDjwkbpaTJCpzA5dOclm8fq
         7cdqJqOltUFeZTnRitnbkQOBToP4ZUT8n2UFfdBMJqIHOEkHmkjXY6BStkSnRp5VPXdH
         yb6IsB4yOEGiYBrSh4e45FdZ2OamA15dOBGUNZG2GLuETRAG7NffmT1Fncg2Waryu2QK
         wTj7qv9InkcHlks6BP7jq5D0qm+w1qgTuV3fsuHQL2NBTjb08C3sY+qRR8fYdA1XY8jm
         JyAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=MFLCOeu2GCpAUuoJN07pUyrt4UfbOT0bKEOGgLZ6kaU=;
        b=uT/grdBYDJoPXUYHDddNhjdeORidHZAuLKQNNeKDM6dJBvXS17NiQebOr9pDgbPGEA
         oNIJG8Pp/+G6K7D7UoTckhtxgKM3GuEQKMKS6gK7IO5r0DNiJREoGR6jb8X8z9rSr4yf
         3HCAT/qem8fyx2OnO7jw2xY7o7/h3cByy9bOXScgeSSvZ2zeSzFViUriUzESl3UjOurN
         6iimnYhK88BgkZjs1TDqHVRt9XL7G3+wRbUaAR0KApYRmhoutWSiAQdvJjYAIkusVkVu
         4iGrTNNpQNqmK1wX46oMPs82LqlkeiYBiUOorQIiEJ4/g4i/I+tKXJFMRnERd9uxM9Em
         eMjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EMh21tWV;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MFLCOeu2GCpAUuoJN07pUyrt4UfbOT0bKEOGgLZ6kaU=;
        b=PzhesP5RgBPW2uHwW3K1Bse6PoqTTvafYZnr+O6A3Y6wXyTb8UFDyDMKKb/NWXuzoj
         pU9lGrSvUL7bHwqBNCd+cGCbYMkBFpWLpoupOM2bH2IpBpo8SkHT8vPlU5N29+RW4Kn8
         N24NG4rQNbi5ToR/8RMOxje07Y0Wz7Jiq9JnC75iVwD3tN+1ckdSRL3C19EhaPb1pL+n
         uPQ+bel1hVbCW08fZA3y2umc0KTcbZE1gHxwtkTgedPrkTcfPZJED5cmoQAlky27/EXF
         79oGTVrQ+xv4EMeC6PYCLdO5CikFDoQAxq6WuqM2uvmYngd1yQcROHMrczpdp9oEdjUa
         FSvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MFLCOeu2GCpAUuoJN07pUyrt4UfbOT0bKEOGgLZ6kaU=;
        b=jS2VoQGQDSPgIUpRUc4q04Q762QJECZZGYXoSx4GJ1yBWVNYOLA7qw0Ub5LNrAA4Ya
         5lb6OIY1LDP/mNNYq/7sifVZJuryipuZ5QxKamez6OlRpGxpd7+z1KKuZ1vm2lyAh8Vi
         i/Dv9FATbk8nbHkQV26oCqF9KooFAgDZObjojldzAkOK74Aj7wctQOcCBtM0LNiVtR6Y
         UBgJXYo55uT55ZIEag0omjB4kU5ZxhvG5xthpYNBeLKlhUe5vG1lEEATiA3rEqhrNNFk
         1L6m3pElx91NgHnuLx6xxGACCi12Yx8k4uEUJZ5ephTOvgbJnLToA6yXaSzQilO6CSbj
         7Ufw==
X-Gm-Message-State: APjAAAVCSPfduw1UL3s50pHL+GltTqst1/0cW+GJrleCEiugwrRmluUu
	QajKejeGYRDlj0fTUGV0tm4=
X-Google-Smtp-Source: APXvYqz5LVoiNT1pXzwdmT3a+81q4hPhmqYq1J77P+ONga47685XayGrWsExLzbTBEq784/aVb+NRQ==
X-Received: by 2002:a37:6843:: with SMTP id d64mr660914qkc.207.1582580929020;
        Mon, 24 Feb 2020 13:48:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6116:: with SMTP id v22ls5496076qkb.8.gmail; Mon, 24 Feb
 2020 13:48:48 -0800 (PST)
X-Received: by 2002:a37:4ed3:: with SMTP id c202mr50448708qkb.219.1582580928607;
        Mon, 24 Feb 2020 13:48:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582580928; cv=none;
        d=google.com; s=arc-20160816;
        b=DUS9lhS0LuZ/pno6J4widyfnmZV7Xm1SO2AsEmj6YkO4xgYmzc47Ow6W4YJAEnhYsN
         /QgOFPvXGDZdfn8iK/Bkx5AGjppt+IMZcWgikMkUS62NkaBWpc6tySJW0ArJLARVLL7B
         SGqjPs5tvqCT1bRuk2MVdceoywiW+Hf1mpydjOBYgS5CbmEo8kGaNYUeD4OAzW7LBdfP
         1UVJaLcRvtiTXt3AeklBuBtQYsLMAQLUtfJqQ+7C5FkRvheojeIGbHWxspRGDTI6NSjq
         vsqgbAlOxGaby2lplU8Z2pJqZdwh2wLyDCpZpNpEwxEWWMwmjwWvu5MZIAdD4Qgku59x
         v4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=rwxcsAsN75o6auj6h/UwQ4eouOT0rdFuNimYtBXVVqI=;
        b=koGVrXzAhSUQpz9flf+tuufILEWdDufmJLGOTEckq213bB39YjKZ8XxmtyTDP//ioU
         VQT7IxTz0x+lFpaHgAVQTZ7rzlwOiUafPrh6lm41Kk2aQulXBkN/H/Vey4S9OJro5Gzc
         8E8XrdRYKF8xYK+zpIBwwiZPFyJXMTxo4aGxAo14Xq5oJEJUpp1Rx1qRWaQ8N4x0CYNC
         FxBmZdURwX39FjlrBkeu2eYPracyxb+ZiVte7nwkVbcEKZZcmubtIn3qCkk3GRehN9Dz
         /DeGeBrRqp4gTCq23Q5wZJmBGNeP81AePixjZHhxmHh3ymF9CqSds7i7XioaBQZa2tcn
         7Kug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EMh21tWV;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id 76si711762qki.1.2020.02.24.13.48.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:48:48 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id 145so3943198qkl.2
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:48:48 -0800 (PST)
X-Received: by 2002:a37:a78d:: with SMTP id q135mr48484895qke.158.1582580928204;
        Mon, 24 Feb 2020 13:48:48 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id m27sm6760596qta.21.2020.02.24.13.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 13:48:47 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 24 Feb 2020 16:48:45 -0500
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200224214845.GC409112@rani.riverdale.lan>
References: <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <alpine.LSU.2.21.2002241319150.12812@wotan.suse.de>
 <CAKwvOd=nCAyXtng1N-fvNYa=-NGD0yu+Rm6io9F1gs0FieatwA@mail.gmail.com>
 <20200224212828.xvxl3mklpvlrdtiw@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200224212828.xvxl3mklpvlrdtiw@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EMh21tWV;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Feb 24, 2020 at 01:28:28PM -0800, Fangrui Song wrote:
> Hi Michael, please see my other reply on this thread: https://lkml.org/lkml/2020/2/24/47
> 
> Synthesized sections can be matched as well. For example, SECTIONS { .pltfoo : { *(.plt) }} can rename the output section .plt to .pltfoo
> It seems that in GNU ld, the synthesized section is associated with the
> original object file, so it can be written as:
> 
>    SECTIONS { .pltfoo : { a.o(.plt) }}
> 
> In lld, you need a wildcard to match the synthesized section *(.plt)
> 
> .rela.dyn is another example.
> 

With the BFD toolchain, file matching doesn't actually seem to work at
least for .rela.dyn. I've tried playing around with it in the past and
if you try to use file-matching to capture relocations from a particular
input file, it just doesn't work sensibly.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224214845.GC409112%40rani.riverdale.lan.
