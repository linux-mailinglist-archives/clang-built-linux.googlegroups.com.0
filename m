Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJMNRGDAMGQE6TVACHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DD03A31B1
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 19:06:47 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id d1-20020a1709027281b0290112c70b86f1sf1451513pll.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 10:06:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623344806; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yct5DWUBa46se0rXChGampw0vhxT8jlRbsteJVYN5nQxV0zI1Qv3S3OYC+wcdvGGtX
         EI5gDfV+kECtzztLUo3q9sQQ6sSsbEsFjYM9KIvxrOoyOoWPvG1hYh3BkRbrBIW2QX6q
         Zj49ZH3nUsvVv5X2IwsiWvpXSy2IR4DIy6NG4nDsvF4u4Ol5pY0JUKVDldQh1TEZA1za
         SOeEMvmwbELPtCzMmcqDwEOAoFNcURkCNEqbQwY4XyzhaI7CrqUaq4MIG6k2ia1evmGv
         9MLU3AuBBsbdC8zTnVgBY5dhXheX3v781tK1f3JmVB+m7cEXnSdHSylKtpYMKlh/teBr
         nFIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BZo9k8+MykzLR7RK9wGC3EN466m0k1fLJ7+td6wD7ic=;
        b=J3Md9c+MwRICT06CwotQ+AZFu2KHq02uZvwPUB8QwVd7Tr05mZPnAL9jSkKwUkW7PX
         6LwsG5fwKOz+Y1lVGT8CXJJ8BVRWHsrr/Zw4NYGbCr7ea2HXpz5wCKWGhsWv0yPhauLa
         f6dg7SADpPqVq3pzWyewxfIWjthcXq5x3qYJjIWbrjDHQgCV/6wQViYYh4gLhO1MKs2J
         NBjxSmXvP87lxOK1iBSdBgagKchSkgvvhqqmKRyJ9bc4yFSI6I2xeCevOQichJuEkqUY
         bKH7d+IQr2Ts22zUboJyfhvNZxnXCkDSmY01Ly4MPciVgbgXp8y7BRplatq+joBCeQVf
         V4Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BQ5qUY22;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BZo9k8+MykzLR7RK9wGC3EN466m0k1fLJ7+td6wD7ic=;
        b=RC/ddcIHq2SKcFMND0rt00zLKqMo69CoIa/Q8H2k+Zctv3i6nBYqP4M/JJ2UXV55Ei
         WzhWLJvGNYUtl9+7fGP73neMJeqloyd0fIrbBf5ZpfQ+45ws197WOLmguNn4NqzTZtfX
         L3p/IlNbcTgg+M9ihqziJiAAaihOW+huW1bmw6lezWWU/bAiIeExioW/oAQZ5J3v1xpR
         NH5beIV790NxEOggrQHbYtNueDo5SnIF887ZyxpYqLC034D5S1KAQeDcQfxL7ksGZ9z+
         ew7gcUlAXgHoZPV/GQKBkcBR1Cltb7vyNbGnHRRkDRIXlzHe/W86GtHS1JrfhfZ/d4zX
         EfOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BZo9k8+MykzLR7RK9wGC3EN466m0k1fLJ7+td6wD7ic=;
        b=Ot3d4b0Key5J6xpQ6MOa/c3eUlvHitynQ/xMZ7hNFY9ChbGMtiqdRsCZCCApLAAXYI
         WEsnylMVLvTWXgsEJ5mrsVXVmZVFQo4I5DFx4JlGL9DAeTvX07GlaXUZHtBf6dpY/xzA
         flnCttZrSoUxQpah7y3G8CI/an9zjG7t4djBCsG//ral6MJdXaEW+wMKHas29bb49aEM
         1y3SGp8dfmb9WzJwPnXr9AhKsHlvyILKEJlgHOhyF4cQbGrGkyCtQ1bEFw2DZyxBazeK
         TmDWDXzxGyiXPZBko+BTAsJrMNSMGI0TKf05xyl/Cf/BH5EtdYi87uUW/x8Izldfh3Jc
         R32A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531o5CvuQJatmCfM/G8KPmp0+CbpNuaJOhzdrWNEZuAbCbGo6dud
	wcPRaYq80kv0nwcRAgrAfpk=
X-Google-Smtp-Source: ABdhPJysw5rQ/ohY/rNlEAb+sD9U3TlypAl1rNvnZR8hrYSxRhlKIRAq9Mvd09BdBYUgbh147gqFgg==
X-Received: by 2002:a65:5c87:: with SMTP id a7mr5781529pgt.312.1623344806098;
        Thu, 10 Jun 2021 10:06:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b605:: with SMTP id b5ls655829pls.4.gmail; Thu, 10
 Jun 2021 10:06:45 -0700 (PDT)
X-Received: by 2002:a17:902:d211:b029:110:a94c:74b3 with SMTP id t17-20020a170902d211b0290110a94c74b3mr5773886ply.54.1623344805575;
        Thu, 10 Jun 2021 10:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623344805; cv=none;
        d=google.com; s=arc-20160816;
        b=Qe+4oxblToYIa6xGfy7wC2R8jNJle7ziVI9GTnkQ/1QiGvYptSYO0IzxT3F4clcoZZ
         Q8bKBY/qdk99CDQiQAZWHtSq73uOYdtGgw+pr/IPk+V6FoBq9hd9tozi2UpfUKLJXdgS
         n1rR8Yn9OuKrsiiCayBGVFy+KQGlp+gS4HJlgMZPiOtTkzus3cPt+eGk4LNOrKlS89xc
         ocQwo0M2K/vzHQQ2rWdZaTtAawxAj9tWBZySN3kDWZQqqkW6QVfbaKoq6wlLH4P2ZKON
         0KVAltdzvK98dikQrnkK0hq/H/xWt6hxVFxSqSgpeOpMnyXxdaAazpeJ4aIQZLAhzXKs
         Chlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Tf6j48/EA7psoQT0Xa+Ykp/HBTN3iYdEAaBd6YZtNzA=;
        b=o702W8Aaxsrl2z8ETHzGfbP6feoUl7ZWVXXvcDvEJkmf84bl9VmVekcI+f8qFrf5wo
         I79Insk9Da7TG8lUETWgfnZjCmNb2ydMxzs3b0CucF0SIRjVCcaYA0I6Pu/gVp/HjBuL
         IbB8/3SLfx+bhLVAhHrDjy/mq1kmdLyuXCHJOeL1hg4fXvoqI6H5GFeu2P1siVKMTyQU
         THvQVFyMxwjSAK7oCYKN+fgwBW6i+SNG6S5dhuWwPmwpVLtqr6l1vkbba8NmzNUXTJtO
         8DQmY5Iqol6LmeQ0cUctqVPGy6IzjiYYcTtjTWXALVnku2eNdsCDgJhalIGeH15zA9mG
         jDWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BQ5qUY22;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id t17si355436pfc.4.2021.06.10.10.06.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 10:06:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id y11so257583pgp.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 10:06:45 -0700 (PDT)
X-Received: by 2002:a63:5d66:: with SMTP id o38mr5923418pgm.444.1623344804696;
        Thu, 10 Jun 2021 10:06:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k25sm2852989pfk.33.2021.06.10.10.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 10:06:43 -0700 (PDT)
Date: Thu, 10 Jun 2021 10:06:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Yonghong Song <yhs@fb.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Alexei Starovoitov <alexei.starovoitov@gmail.com>,
	Kurt Manucredo <fuzzybritches0@gmail.com>,
	syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
	Andrii Nakryiko <andrii@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	"David S. Miller" <davem@davemloft.net>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	John Fastabend <john.fastabend@gmail.com>,
	Martin KaFai Lau <kafai@fb.com>, KP Singh <kpsingh@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>,
	Song Liu <songliubraving@fb.com>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, nathan@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	Shuah Khan <skhan@linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	kasan-dev <kasan-dev@googlegroups.com>
Subject: Re: [PATCH v4] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
Message-ID: <202106101002.DF8C7EF@keescook>
References: <20210602212726.7-1-fuzzybritches0@gmail.com>
 <YLhd8BL3HGItbXmx@kroah.com>
 <87609-531187-curtm@phaethon>
 <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
 <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
 <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
 <202106091119.84A88B6FE7@keescook>
 <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
 <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
 <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BQ5qUY22;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jun 09, 2021 at 11:06:31PM -0700, Yonghong Song wrote:
> 
> 
> On 6/9/21 10:32 PM, Dmitry Vyukov wrote:
> > On Thu, Jun 10, 2021 at 1:40 AM Yonghong Song <yhs@fb.com> wrote:
> > > On 6/9/21 11:20 AM, Kees Cook wrote:
> > > > On Mon, Jun 07, 2021 at 09:38:43AM +0200, 'Dmitry Vyukov' via Clang Built Linux wrote:
> > > > > On Sat, Jun 5, 2021 at 9:10 PM Alexei Starovoitov
> > > > > <alexei.starovoitov@gmail.com> wrote:
> > > > > > On Sat, Jun 5, 2021 at 10:55 AM Yonghong Song <yhs@fb.com> wrote:
> > > > > > > On 6/5/21 8:01 AM, Kurt Manucredo wrote:
> > > > > > > > Syzbot detects a shift-out-of-bounds in ___bpf_prog_run()
> > > > > > > > kernel/bpf/core.c:1414:2.
> > > > > > > [...]
> > > > > > > 
> > > > > > > I think this is what happens. For the above case, we simply
> > > > > > > marks the dst reg as unknown and didn't fail verification.
> > > > > > > So later on at runtime, the shift optimization will have wrong
> > > > > > > shift value (> 31/64). Please correct me if this is not right
> > > > > > > analysis. As I mentioned in the early please write detailed
> > > > > > > analysis in commit log.
> > > > > > 
> > > > > > The large shift is not wrong. It's just undefined.
> > > > > > syzbot has to ignore such cases.
> > > > > 
> > > > > Hi Alexei,
> > > > > 
> > > > > The report is produced by KUBSAN. I thought there was an agreement on
> > > > > cleaning up KUBSAN reports from the kernel (the subset enabled on
> > > > > syzbot at least).
> > > > > What exactly cases should KUBSAN ignore?
> > > > > +linux-hardening/kasan-dev for KUBSAN false positive
> > > > 
> > > > Can check_shl_overflow() be used at all? Best to just make things
> > > > readable and compiler-happy, whatever the implementation. :)
> > > 
> > > This is not a compile issue. If the shift amount is a constant,
> > > compiler should have warned and user should fix the warning.
> > > 
> > > This is because user code has
> > > something like
> > >       a << s;
> > > where s is a unknown variable and
> > > verifier just marked the result of a << s as unknown value.
> > > Verifier may not reject the code depending on how a << s result
> > > is used.

Ah, gotcha: it's the BPF code itself that needs to catch it.

> > > If bpf program writer uses check_shl_overflow() or some kind
> > > of checking for shift value and won't do shifting if the
> > > shifting may cause an undefined result, there should not
> > > be any kubsan warning.

Right.

> > I guess the main question: what should happen if a bpf program writer
> > does _not_ use compiler nor check_shl_overflow()?

I think the BPF runtime needs to make such actions defined, instead of
doing a blind shift. It needs to check the size of the shift explicitly
when handling the shift instruction.

> If kubsan is not enabled, everything should work as expected even with
> shl overflow may cause undefined result.
> 
> if kubsan is enabled, the reported shift-out-of-bounds warning
> should be ignored. You could disasm the insn to ensure that
> there indeed exists a potential shl overflow.

Sure, but the point of UBSAN is to find and alert about undefined
behavior, so we still need to fix this.


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106101002.DF8C7EF%40keescook.
