Return-Path: <clang-built-linux+bncBAABBQ7YX77AKGQER7VKKKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AB52D360C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 23:20:52 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id z1sf165920ybg.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 14:20:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607466051; cv=pass;
        d=google.com; s=arc-20160816;
        b=YRtCE4MZsvSGiMjxgs5hRA6GKcWlvHZUtWaNmiv73hJJGNsJx++AbH2+8yuW92KaLR
         PtoM3XTV8LeaAL81P9wfdSHyan5tEaRWkDKnGj4SIbjc9C0Wn97sCf0bsjErNqezEc67
         9GR1/rSUvT2vpZZWKRJR+EvQomgPWYDfge2uEr0xIZmR/WVGA4p7gtTzWUk9XF1HJBbP
         hrQkzCLIh15xV3ugU43S5Ovy4ZWuZFJv98Cb+VGgZ/oIDXD/mvT9VPRTqTj74L7OF5sc
         Kk8d1R0SMWBrEIB3we/Vhkl+g53MFwLQrNxNZCwflmpZ/bhZ4T2kSb2utH1kUlz0/BkM
         rq2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=c36jB3LAD8Fa+MHEEjZ3y5/ZyXtyg3YMqUgikAJkwiw=;
        b=XORJsls4AftHoRwBJo6kDD22lGH0JuTSRe51MFelhHLAsVeQz6j8+67yp7/WChm3Q9
         Nby90+7DOswbaanO8tx5FZt03++BbeAGj5AWvkBn4NlOV9LhY4Nc47JN2SZ9DOTvlYlS
         +8+65XFvB0mcYFUpEx1fHw2g43D60mGJM/b4++DgcuX40yokuFgJIyqdSXA/se5CJck5
         L3W5bRiyRBo1zwVu83+RCJrwRAoRBeKfzIHEcmH4f0plWvWtP41/nq/imLxbXp/8bvm0
         U5MPTYxPwGLE2HCZs9RbIEV5aLfGt3TOJQ9/GV9RSBYctgJBHAWbSVPYPbm2KJEZDQUL
         PUyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VoybNLs8;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c36jB3LAD8Fa+MHEEjZ3y5/ZyXtyg3YMqUgikAJkwiw=;
        b=qmyKqEjLmYyLw1QjypwhX/EL8Z3t49vyAVOQuH3zvyaR11aN7D4w8YF8Boasvlxd/j
         EEHAwuyi+fzw7HImnvcseg3NKljKmMVNPO4EyCm5HOlyT+5QcWDNM60Rgp2dByh+HzyS
         QO4ydQ8Cc7r8QqQ3elOKSZ5pcbeiWUKZxC8axbaQWiL6d44rnS4hoMqypSLflO8ecDrr
         XnJAQ3cmJyIbZXKmPyJfQTYPg6MLDpKczKdfsJ/KKJ2g60en+tK2oh3MmfntESj10gqm
         im58DDSVLL5EqRPbFa6xS9gGC7A0BSHFrOiuPnj27OrtYJpSAn75nITUHsB+wV7Lozmu
         slcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c36jB3LAD8Fa+MHEEjZ3y5/ZyXtyg3YMqUgikAJkwiw=;
        b=S9zkZybsZaLMidXd/Ju55KwUmRjKMWSSyTaYKUQ7l9kU6GU4XrVG8V9jk8MUJwjm68
         /V088Xiptzx28XEXTBSBTxsOytjdo5afHHvgs2pRYqxRaGkFFJn4RnV51YPDeZFq3bje
         Bts6DIv/kfCEf/NiBFRG5DB+cjh1v3yziZEBu3Nh/M+UDfkbZOr1dUVMheXD6hWXr+KF
         NRe3DQldPNyXK3jvMWWAdMhyb79Ge2ReWN4W0tqTBB4TmOWO16qcz5lj0ZkXVllmPBi1
         wcC/GkcRe71e/2nB74o+V+c+tjaMv5dOxCVZxLQg4fwhQxMUC/3BX7seKvE/kzJxkzog
         lZTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HN6RwBXP2TZAYPuOXhKsG4XWnwdi/qsbgBZ7UNJmRdn0ZJ7Cg
	XTT6dWK8WQRYSvunbKt+1Yc=
X-Google-Smtp-Source: ABdhPJxMId7XHcSh2IHHl9G43fXr4eXPwYsjpB0QSJ6bvGuyd7AZ4bMMF+f2yMs7tt42M1zkpTqiLQ==
X-Received: by 2002:a25:ef47:: with SMTP id w7mr16330171ybm.509.1607466051239;
        Tue, 08 Dec 2020 14:20:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:20e:: with SMTP id 14ls160955ybc.0.gmail; Tue, 08 Dec
 2020 14:20:50 -0800 (PST)
X-Received: by 2002:a25:b883:: with SMTP id w3mr30464985ybj.457.1607466050941;
        Tue, 08 Dec 2020 14:20:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607466050; cv=none;
        d=google.com; s=arc-20160816;
        b=RPlnvvatLG/96nUII9qq0XdoNrH0sqPOWIhGKuO9LNfdJot4v9cxSi4driHyRN3XGi
         vqBdslbSNeYbxC1ylDFpmNUTHJxKyexwDsqBoUlcvKXqvdMXxW8GIrTd8tZHvdR8Udin
         +l76IfbTjQRQMilOvL3ZHgwlq+VhNd3b2zFpfCrFgafdne5jNBVt2QsFWjtilZ0jOr0X
         lVZP4VNg8xQw+ai9WL0LebB6eYdEC15zKi7Ns2VHy/D4rPc+Kjcwfl+pAAty70KX1PIN
         telAEHZZSkPtozj1KgOzdOPD+ziXiUEE2vX82qxl4OjUi167bRHtnrUDICxXY1HVntZo
         1fdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FvH8eq+6SI3IkDKzFozVZmc2bnW643AjS0LbmfFowoU=;
        b=vI8HVASVqUGZTwvV9cWzYGoGl9uwKoHLq2MBws1rb3fMw1FIHWP4IfHaEdBdPOkrSr
         n+m9z+kxC/S7Oo4/ZUJehmG0FXoHpe3UORmk09GwSQyTs2OGckM/EivqRctH2I2e/9yc
         TVWcMpoOgxnJsu0NENsXOrfSBvN6ce36MImAcL6RlFTQfJ4SB91Zcjex67yeggaGQeb+
         mLvQKpj7ASzb87FDMv1C9Fw+Yg5wxdZ3wFy+I9vj6QPQFOMTobVomJtGv6+hjFootC9W
         ozcw3e3yN+KntC2Nqym1uDZ2U7UNje0AMUPSWqdHYG5VY3XYsBENKGSgAnTZeWPxqzLO
         XZnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VoybNLs8;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e10si12640ybp.4.2020.12.08.14.20.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 14:20:50 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a9d:be1:: with SMTP id 88mr215992oth.210.1607466049167;
 Tue, 08 Dec 2020 14:20:49 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com>
 <CAK8P3a1Xfpt7QLkvxjtXKcgzcWkS8g9bmxD687+rqjTafTzKrg@mail.gmail.com> <CAKwvOd=hL=Vt1ATYqky9jmv+tM5hpTnLRuZudG-7ki0EYoFGJQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=hL=Vt1ATYqky9jmv+tM5hpTnLRuZudG-7ki0EYoFGJQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 8 Dec 2020 23:20:32 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1k_cq3NOUeuQC4-uKDBaGq49GSjAMSiS_M9AVMBxv51g@mail.gmail.com>
Message-ID: <CAK8P3a1k_cq3NOUeuQC4-uKDBaGq49GSjAMSiS_M9AVMBxv51g@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VoybNLs8;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Dec 8, 2020 at 10:10 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Dec 8, 2020 at 1:00 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Tue, Dec 8, 2020 at 5:43 PM 'Sami Tolvanen' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Tue, Dec 8, 2020 at 4:15 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > > >
> > > > - one build seems to take even longer to link. It's currently at 35GB RAM
> > > >   usage and 40 minutes into the final link, but I'm worried it might
> > > > not complete
> > > >   before it runs out of memory.  I only have 128GB installed, and google-chrome
> > > >   uses another 30GB of that, and I'm also doing some other builds in parallel.
> > > >   Is there a minimum recommended amount of memory for doing LTO builds?
> > >
> > > When building arm64 defconfig, the maximum memory usage I measured
> > > with ThinLTO was 3.5 GB, and with full LTO 20.3 GB. I haven't measured
> > > larger configurations, but I believe LLD can easily consume 3-4x that
> > > much with full LTO allyesconfig.
> >
> > Ok, that's not too bad then. Is there actually a reason to still
> > support full-lto
> > in your series? As I understand it, full LTO was the initial approach and
> > used to work better, but thin LTO is actually what we want to use in the
> > long run. Perhaps dropping the full LTO option from your series now
> > that thin LTO works well enough and uses less resources would help
> > avoid some of the problems.
>
> While all developers agree that ThinLTO is a much more palatable
> experience than full LTO; our product teams prefer the excessive build
> time and memory high water mark (at build time) costs in exchange for
> slightly better performance than ThinLTO in <benchmarks that I've been
> told are important>.  Keeping support for full LTO in tree would help
> our product teams reduce the amount of out of tree code they have.  As
> long as <benchmarks that I've been told are important> help
> sell/differentiate phones, I suspect our product teams will continue
> to ship full LTO in production.

Ok, fair enough. How about marking FULL_LTO as 'depends on
!COMPILE_TEST' then? I'll do that locally for my randconfig tests,
but it would help the other build bots that also force-enable
COMPILE_TEST.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1k_cq3NOUeuQC4-uKDBaGq49GSjAMSiS_M9AVMBxv51g%40mail.gmail.com.
