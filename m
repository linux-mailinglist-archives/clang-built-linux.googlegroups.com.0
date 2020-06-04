Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBGX64P3AKGQE3MUJURY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0221EE63B
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 16:03:08 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a20sf4891378pfa.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 07:03:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591279387; cv=pass;
        d=google.com; s=arc-20160816;
        b=VTt7VEPQ1v6vrD5WXtzoi53bhEI7Lse9Ssp9JuYXaUCx40aBQkNE7qg2jDhMyafiaJ
         SN42ewuEnAVtvv0hfALKCXnzfsc5MgJiuAgsUFwcKfxzsrwWzn48tDoKjM/b9IpCfzPl
         p3u1Nbhj1u01WEX1apA7a8WqG0tXIcOwGoF1fIU+Tb7gBhPdm5ElX9E8GHe68YJN35hO
         4FrYLMo5gXfKRHOg0sxvGBnhoYWAtnDXojCw8Jcq7d6AC/P7zTK7kzIXP9sD740WC5QP
         w8jbAMhUXB+NmMk7U9u2kq/Xu1oklKgMFS72r1A7B231sQhILbn7M13WBQoB4WpMswNu
         pCLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PLr340Fi7cvjo4a89Gha+uCoHg+61FqnpJIsLTddXCE=;
        b=p2sAov/welYUDkWCILd5wbKR+XIsiMPwe49IEokHkN5chflCcbB0dg53G0BZxXjPUe
         KME60sXZO/HJq8FOH8Y5W0TCj9018z6qFI5UKFVL2tekjT6+F9Rxw4pTbvkWzwuKJv9z
         QAr5t/FB/yfXjoAKe8LWF1j9IkOttnM11AozB6+eS57/1Y0R27PKdz3M/bCCuj1XlPMA
         CEpQiKj2u73mmQbut+DTHwDgJw8qXnHJdzZIlSDdWk4fdNMS3m+0WBx9dHxwjod7EgQd
         EXoWnLsWlQDjDye3f++kIG3wCUSU/9SMIeaLn8eJICSjyK9wOpU0k8ZdATq9DAkoLX6z
         4CkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wK7E14tk;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLr340Fi7cvjo4a89Gha+uCoHg+61FqnpJIsLTddXCE=;
        b=hbKtR7jt0x9+kmjYjWsfcq4rcRfM9WP55p/yzuvxApd2Q5h1U5wHUQaMnsxtTOSeWQ
         B135mGPKM32TjJDx28aJcRLW8SqM4lwdAOlmAEBpadNghxYBIJ/aKzW9QMJKL5oDPnTb
         o6ap2k0aG7bZzGKVsDdpJrQ5zv2DQ6a4npvq2ozNBAQgR59t+zYLhvbSH7p8D2QBWXnw
         3/+y8E5n1CT9Cz2d+CanzpPwZpRwJ7rKgb7QrU/hjQ/eOQNwpu/FWqkAUo2BDSdtTaGJ
         9FRpGuybzIQNLXmMHzhoYhQpy4pkd1VbNV92/TSh8FTvCiF6JYXidnCwTgvgTayPRzN+
         Wf1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLr340Fi7cvjo4a89Gha+uCoHg+61FqnpJIsLTddXCE=;
        b=Q/vEPWie+smpR3fwFbHJkemwxLM525Ld/QfATVQGfhjzQcsyqbpGufZ/3G+vR/Yj5O
         Fi3hw+BKeiLqUH6mhq4OZTHidD6+9RXOPzTE7/nCNdf4eshPTO9vRui1UvNrPCI1KbDs
         26zDMnkTvspfBoYT5xyFmaISLn2fV3JXrGEfR0+fT9h5ceD3GeI7bW0m99l+EhfCd6rG
         Wo8VkVbXuzEby7TPRyL59qpFZf/NksV6+g+KL0e3soi/0aR4DtXKXB6GlTMQiIMnQi8r
         hXqBhVm00i0vElIubu5Vsg3AOE38wUkNxO+eER2bhXpT1qkiA4a2RBnCWca9A7/9oSq8
         GQrQ==
X-Gm-Message-State: AOAM532lNtlRh8pSsvU/AtsMWdu3eP3jd4dyJ6VHXpwgnUBsJsFAuDtD
	2q0RI3HVHwuZVgRQc5+WNd8=
X-Google-Smtp-Source: ABdhPJxHfOuNKJq5+l3AevGijkfH+kr+Eoxc9ygc03M1SmpmD9YEOZwDK6BHrwg+oAuGoJ8UsUyoXQ==
X-Received: by 2002:a17:90a:c5:: with SMTP id v5mr6361685pjd.180.1591279386867;
        Thu, 04 Jun 2020 07:03:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:55c3:: with SMTP id j186ls1890712pfb.6.gmail; Thu, 04
 Jun 2020 07:03:06 -0700 (PDT)
X-Received: by 2002:a62:6846:: with SMTP id d67mr4582119pfc.167.1591279386408;
        Thu, 04 Jun 2020 07:03:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591279386; cv=none;
        d=google.com; s=arc-20160816;
        b=gRf23sCO+0VkAzP8Y7daTB/0j8DawUELQCvjF84XNd+BK9FK+sMhAMeGULKrLia2+r
         9x6rz9wyngeZ3YEOjzJlRwXy+lyUu4xH8u8m1XgsOXPnU6I9Hlr1viJcv0l3kADRpAP1
         v3zaDYGm795it3CZyaj0UWgCGVsagk4K491egdanXjAdeowN+0r4sNQCB/iFvLiHSyFq
         BlmYNFj2MXYoaRBYwEBRZUvVbu+qcvn6LnvNcwMzyO2D5U419ySJRg2p+3LXuaTpipVE
         sQid5dHn2o4EGKlnAVxkZvO6CHkBgOfKgqb5fSG17JAKucqlvmddGqCihvUAa76FecOE
         1GZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ImRfD2cqJ0tQ89Ygd7DHH9ExVVNMqaoCZMhHXpLzooU=;
        b=fq8a0jdEyRn7J3WW9vM/U6ywRU5OQ3Ynk9Hyp0M0+FewcGXGOVgxoQZTwciV3ykgs+
         ZGUA9FZJ6yOf8+C0Nf5pWyavfh152ANZ17rI/vFJJyJkL4lWorYD15h1YKcEIG0k9wyQ
         BqBDqKOFgHAWwg86fFgsGVN5v93u/4Hg/n5dqMA6LD4HiWZuWWpPhCsRzvAJ3U8XYjpe
         YoJ69oV61ajyZl1eugd5YEYXWAdPo4VJSI+81daQFA51ghUVtF5CcU+Zy7OPfWYU/yV4
         bTQh0+wy7T+0jrWBw3bj1wLKJ6lAmQholnt1OL6I5GfB1YXVjrcUypUvIROhwKA+lEmb
         4FlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wK7E14tk;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id l22si327618pgt.3.2020.06.04.07.03.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:03:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t7so2230434plr.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 07:03:06 -0700 (PDT)
X-Received: by 2002:a17:90b:1244:: with SMTP id gx4mr6178570pjb.136.1591279385737;
 Thu, 04 Jun 2020 07:03:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200604095057.259452-1-elver@google.com> <20200604110918.GA2750@hirez.programming.kicks-ass.net>
In-Reply-To: <20200604110918.GA2750@hirez.programming.kicks-ass.net>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 16:02:54 +0200
Message-ID: <CAAeHK+wRDk7LnpKShdUmXo54ij9T0sN9eG4BZXqbVovvbz5LTQ@mail.gmail.com>
Subject: Re: [PATCH -tip] kcov: Make runtime functions noinstr-compatible
To: Peter Zijlstra <peterz@infradead.org>, Marco Elver <elver@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wK7E14tk;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Thu, Jun 4, 2020 at 1:09 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Thu, Jun 04, 2020 at 11:50:57AM +0200, Marco Elver wrote:
> > The KCOV runtime is very minimal, only updating a field in 'current',
> > and none of __sanitizer_cov-functions generates reports nor calls any
> > other external functions.
>
> Not quite true; it writes to t->kcov_area, and we need to make
> absolutely sure that doesn't take faults or triggers anything else
> untowards.
>
> > Therefore we can make the KCOV runtime noinstr-compatible by:
> >
> >   1. always-inlining internal functions and marking
> >      __sanitizer_cov-functions noinstr. The function write_comp_data() is
> >      now guaranteed to be inlined into __sanitize_cov_trace_*cmp()
> >      functions, which saves a call in the fast-path and reduces stack
> >      pressure due to the first argument being a constant.

Maybe we could do CFLAGS_REMOVE_kcov.o = $(CC_FLAGS_FTRACE) the same
way we do it for KASAN? And drop notrace/noinstr from kcov. Would it
resolve the issue? I'm not sure which solution is better though.

> >
> >   2. For Clang, correctly pass -fno-stack-protector via a separate
> >      cc-option, as -fno-conserve-stack does not exist on Clang.
> >
> > The major benefit compared to adding another attribute to 'noinstr' to
> > not collect coverage information, is that we retain coverage visibility
> > in noinstr functions. We also currently lack such an attribute in both
> > GCC and Clang.
> >
>
> > -static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> > +static __always_inline void write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> >  {
> >       struct task_struct *t;
> >       u64 *area;
> > @@ -231,59 +231,59 @@ static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> >       }
> >  }
>
> This thing; that appears to be the meat of it, right?
>
> I can't find where t->kcov_area comes from.. is that always
> kcov_mmap()'s vmalloc_user() ?
>
> That whole kcov_remote stuff confuses me.
>
> KCOV_ENABLE() has kcov_fault_in_area(), which supposedly takes the
> vmalloc faults for the current task, but who does it for the remote?

Hm, no one. This might be an issue, thanks for noticing!

> Now, luckily Joerg went and ripped out the vmalloc faults, let me check
> where those patches are... w00t, they're upstream in this merge window.

Could you point me to those patches?

Even though it might work fine now, we might get issues if we backport
remote kcov to older kernels.

>
> So no #PF from writing to t->kcov_area then, under the assumption that
> the vmalloc_user() is the only allocation site.
>
> But then there's hardware watchpoints, if someone goes and sets a data
> watchpoint in the kcov_area we're screwed. Nothing actively prevents
> that from happening. Then again, the same is currently true for much of
> current :/
>
> Also, I think you need __always_inline on kaslr_offset()
>
>
> And, unrelated to this patch in specific, I suppose I'm going to have to
> extend objtool to look for data that is used from noinstr, to make sure
> we exclude it from inspection and stuff, like that kaslr offset crud for
> example.
>
> Anyway, yes, it appears you're lucky (for having Joerg remove vmalloc
> faults) and this mostly should work as is.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2BwRDk7LnpKShdUmXo54ij9T0sN9eG4BZXqbVovvbz5LTQ%40mail.gmail.com.
