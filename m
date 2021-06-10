Return-Path: <clang-built-linux+bncBDEZDPVRZMARB366RGDAMGQEKPSEBBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AC13A3468
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 22:00:49 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id z8-20020a5e92480000b02904ae394676efsf14183783iop.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 13:00:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623355248; cv=pass;
        d=google.com; s=arc-20160816;
        b=XN5EvrApC5cuXos/9OWgISXDix4uvd9F1Pb/7aVknhrdB3hvor2mi/l7Peo7OsuJDM
         Lr0MzqaFclELDq+at8BD9x6yojUwJqJmsw7cf5XlEaKFg8VGPzRuCpvwMLSmUteeNu/m
         b63W4QhtIyQwP18AySqPuUvHOqK+meqEIh6KuK0GGa5XpIFRF8siYX3ZEdogeqZ5nVKh
         xQqEULdU3XCOz9624xgh587ivSzUoEMc2uuw4GkfmwqxtsyfStwyhV6zLA/m0vhTzwey
         SpgCz1tNKWQ0yFr+RCrYaYFM2a6/Bin/8U5mn/KHsmxNc6vc4Mm3tqJMZpTd8Tr2GsBm
         7BQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aeUnypfFhVQQofMrl0dQoyUVi2XoeibyGOgHTVqLIt4=;
        b=LIrLOZyvFsndx/I9eHhqRfpmt5WJuzGSj35Un90WSCkA3w5W8bogTWI8YWbWwMwZky
         Ea0dI3dcW7ie1j+I+aLNaoegm8ix5Tkyxe4nUWUxkqLTkHAWFEzaXxVxGkb3+S3tc5CY
         VibcOOidT1Y/+OHmo6l1T2h9DLDXbVqMHGwiPj5shKGH4ihV9vqbuYOWdMyBnZLqKhIH
         Px42dWs3rffgv+2aqwBgNOjXu5J2ApkFP842xu75jFYgQ1nZskoZ8+212x7xjk2WiU17
         vABELzGkCdpJ4z+zspJk4W5AG6Ojqpv1Yge8GaIbLjnHk5mtytvCNNzexTnMedHtcogd
         L2eQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=it1PG+R5;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aeUnypfFhVQQofMrl0dQoyUVi2XoeibyGOgHTVqLIt4=;
        b=s66FsG8wNsxUGdCjTrK5eG9iW/YBwCQtdg9HwqJoF101MXO1q9ldk9r2fsbhcEhz70
         tx1pRom1s9rVMudzPKuI73djYmncHcuD8f8C0f9ZJkBq2QIpd5M1AP35pNKwR62BIcRr
         UhL/cIA6Vu53JRlbMJzwW/QV4zOWsWl7huPQWh1faVXuMWVeXu51BBN9IhqOhiYzGW99
         gx0GI9d/3/z2iM9p15TAI/bZ3BPpPUGaxYe6+/dUfgQHeX1Z1iIC2FY+lUs+clJrVunC
         XOjBqVwVFD2F2pDgzMHkpYUHMpUhUBFvgUHf43js93qQbggkOc4z8Mz45xmHxy/qKC6D
         0i0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aeUnypfFhVQQofMrl0dQoyUVi2XoeibyGOgHTVqLIt4=;
        b=BtLmADDRsT4rYktxdyGHDQov0RiGSw1aqklU0hoR02PwgkygfiuICSpUQ/ouaDzdRH
         tF+NLmMAjo13bDppqZRUk+yNAKkHM79NzE5vjRWhcRqrUDejlLzBjxevDZEglSR7n9Gy
         yqpJgo0AeDiElPocOUOyvd0eR0UOXbowOI5nuF3zOwRp8WNpWTkPirYHtlN3N0jUOMhV
         uYvJS0v58/RriC9sua8QPscjOKneOUdpP3sLQYCIzl4iwkwtJtPSv6PeolzdEKRIj+Ap
         0X/oEV0MUigQUGaBy4rU2wdtQ1jqsIOTXr8TtO3t5UDOCX4wu+WcbOSykqxNa9alfhqD
         15xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vdQQYOTTGc0xmNof81s/Q7ps0RuyT7PntZ5Xz0jZDvAh83G2J
	JmUASjfaPEezCJE8MOWEILQ=
X-Google-Smtp-Source: ABdhPJwBiJzBGRdpWJgqXERgIwBwYi8AltpRlYX+U9kCsWgBh/8b/frHRaReiKcYiwRJVxl7L4OvEg==
X-Received: by 2002:a92:b111:: with SMTP id t17mr382151ilh.208.1623355248083;
        Thu, 10 Jun 2021 13:00:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:444e:: with SMTP id a14ls1931654ilm.2.gmail; Thu, 10 Jun
 2021 13:00:47 -0700 (PDT)
X-Received: by 2002:a92:d4c6:: with SMTP id o6mr364744ilm.196.1623355247728;
        Thu, 10 Jun 2021 13:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623355247; cv=none;
        d=google.com; s=arc-20160816;
        b=JhCj/dxAC1bpMzmEm6V7h0bo5mdNqKhh9PLzVtwhN1Y1AkaJkz9Ybw7oe9kBAYVwA2
         Dq/Z4s26O1VNzEqdaI3wvFcIn3FTtuGJRMsd70BWpdNVHeSrCIflo63uZI8DGJL1ZPHI
         Qsex9O3l20hebMg5NyQhXHX0lXeTa5vsmRElM5kfgs6r/mx+XO+incAwbFKwRMCVHnAr
         CT3lHs1HBMMqZtlsxJxayBeHq3fKpNm2AcgzwjNZ0TXGxSIIrDzGkED9JmrIGCUzYngq
         SeZkTlyK9/D1LzE/LQvAKnPXgJ6aDdPxxB1p8yYJ5DyR+bHRc2u5gKGGM22tt5pn+KMY
         KuJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VcQcVK1muxZfeixLAT70inWCF+rrO79FtgsqXLLTmhw=;
        b=NZ+OfCgq0lsAXJTYsivTuws/zErELimvfIrB97F1GkNqOkZsVyZA+BZCMxGcCvoUwj
         uvC3z6q47zSo/xROkx2TwvOBrquF0jIjhNi4PeqwYP9ptTpl9gW35unZhvelnMrpDBJF
         stHv9+r/5RZt8+FXLbh+EDvsmAJOMAeSpSPpgPgC9ToyeSCny62G8aoNH4Zlu9zpZSe0
         RDlJuoJboTqwh2YpDH65EECf2faEzS8q11vmV7yGikHjtnozXsZ0UWIYCki9h7yMjN8n
         3T6RVMzgF7ES00vuhbSDPekB4Ase5ZC7LYlVQhsT+njLNrBgkzqLGe+bEyx0rlr5f5y4
         Hlhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=it1PG+R5;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si487843ilg.2.2021.06.10.13.00.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 13:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2DAEC613F1;
	Thu, 10 Jun 2021 20:00:46 +0000 (UTC)
Date: Thu, 10 Jun 2021 13:00:44 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Yonghong Song <yhs@fb.com>,
	Dmitry Vyukov <dvyukov@google.com>,
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
Message-ID: <YMJvbGEz0xu9JU9D@gmail.com>
References: <87609-531187-curtm@phaethon>
 <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
 <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
 <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
 <202106091119.84A88B6FE7@keescook>
 <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
 <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
 <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com>
 <202106101002.DF8C7EF@keescook>
 <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=it1PG+R5;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
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

On Thu, Jun 10, 2021 at 10:52:37AM -0700, Alexei Starovoitov wrote:
> On Thu, Jun 10, 2021 at 10:06 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > > > I guess the main question: what should happen if a bpf program writer
> > > > does _not_ use compiler nor check_shl_overflow()?
> >
> > I think the BPF runtime needs to make such actions defined, instead of
> > doing a blind shift. It needs to check the size of the shift explicitly
> > when handling the shift instruction.
> 
> Such ideas were brought up in the past and rejected.
> We're not going to sacrifice performance to make behavior a bit more
> 'defined'. CPUs are doing it deterministically.

What CPUs do is not the whole story.  The compiler can assume that the shift
amount is less than the width and use that assumption in other places, resulting
in other things being miscompiled.

Couldn't you just AND the shift amounts with the width minus 1?  That would make
the shifts defined, and the compiler would optimize out the AND on any CPU that
interprets the shift amounts modulo the width anyway (e.g., x86).

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMJvbGEz0xu9JU9D%40gmail.com.
