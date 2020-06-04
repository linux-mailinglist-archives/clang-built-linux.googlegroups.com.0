Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB54H4T3AKGQEWVFK7BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A8E1EE68B
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 16:23:54 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id a5sf4683122qkk.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 07:23:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591280631; cv=pass;
        d=google.com; s=arc-20160816;
        b=oT0tVpVRX+WT99oIgDNY+WSftfa+WQitJiUZGzS0bApgOcmqbnjveNog8LxXea2als
         q+AsGBVGW+HQ60PNpA82QpGeGSyWDbEFbSOeriFAEFQw/77uSPmSKQgaFdF1tLXi3Xhs
         B5DbWHAXk058arpNdKskCdbLMcuHEzHa6CttvLmYEtXL79FrYVN/4O07gGpartFKH8Bk
         9F0FZxb8MRp/d+ggFXZg4CVbaQAZZuhEuDCwaUr8+mSaD58RhiujiUrlVjd+ZEI/KLUR
         tC1Bx1or4WaRoLLAuOJesZzu3RBlMZVE3g2aTmUAD8fXTY0nD+Lubwm25NxRkOUnQ6Ib
         EG5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=F3x1/G3LI9i6IMJluYnApdEp9zRloyTVy38jgPvURww=;
        b=v3HuPCEY0RfRvz41OScdHlaP+ul9jO3xTpxWsncptBnIbXifxp3TrYQf1zpCg/mbEn
         VlK04TNbLUVM+8kQfIsNIVp26zvrLgNxa19mNTZvBlHDbo4j/rsancjIRvlOCg7j0/RN
         4EaKRG64TiaRzWGdZMgrXgNEea4zI1y6OuzOmbxjoDn0SLfaL1wPOZTJJjp8lFHqLcDM
         ioo4PfqlMUGqBU162LdYQ6q49JjZ8UxrA15Dk2cEmezU2NHO5a+SSQRLIhEHjqJ06c0j
         S4pZAxV+WbYeX2Cc7tDHZKVZ91Wb8XB8EWENdEmOu7IV+3acsy31uYw4UKnHSil7wOxg
         1ymA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HSfqxACh;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3x1/G3LI9i6IMJluYnApdEp9zRloyTVy38jgPvURww=;
        b=b+D8UjWAwQ8Sgu6wjRzaK0AckVwRrxt8+pXSnRCrjoKW9Lx2LlNXepRhoI5t/aV3DQ
         hJZJJuCsyRZXr9mmVQu8uUDhG1NhC9HUuHcY2DvHadxRiPG0zBPST1Xy/0DtrNATBttI
         YLyhEY/+6Su7pE41/Bw00Ki4B48OkfHZnqENkbrV4eV7Yn2Q8eVSHSq+jPZBFJjiaP/I
         qfG+7sg2lyh9j15tS1NoXZPx5RaNuyt0qJWgoCW/s8F1zxyor9Ir3zTMf+oknsUBhjrb
         t+LqjD8uUjP/orz8n9o00J81c5Upn6M0UDfAp8FtRtYIyxMd+mSv1acIGqNP7ZTAjzF2
         +U2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3x1/G3LI9i6IMJluYnApdEp9zRloyTVy38jgPvURww=;
        b=XBjZ1PBb+iSJeDjsXDkEVmNS6FGEANOnO5dbBL9VSOZz1crEWCYm/q3CH/pXGFXUAc
         nfqQqyhNNKBh6QIA4Avkz9irb4Y5RpLPj3NOseDqOC/9ibIi8VPtM8VWqqZtkaaztO0X
         0iww8fdaOjzV8v/vUyuKiCN3AY76v16iqClz03CGVzGrAZ5BsSObfzrpEud6jNEvw9XM
         hf5unNwCzh98U/o/hokwEiji7+raSsRONHmuw4Nii8GDgE1SwTktSCZtYo+seKorRsJH
         cAiTIVkXrSzE4S6kA0nlXENvBibjghJ42ngYWT2Q5miA4ffwdHRpx9SDRvs86CZ+Q0pH
         R3Ag==
X-Gm-Message-State: AOAM5310V8D0EFCapAmJYJT/8wjIvRWRAeNWOnB7BUdCK68uxqtfGgSI
	vyU44t7Mbrf7Bn2sL9YWmqg=
X-Google-Smtp-Source: ABdhPJxBJXU+jCKh1M1Xql/Zft9yV7wPs3n3EgJVOBlonbv0nRmwuk3sr4wnfVZVAzeisaAgIUHG5w==
X-Received: by 2002:a37:dd6:: with SMTP id 205mr4721108qkn.323.1591280631661;
        Thu, 04 Jun 2020 07:23:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5a3:: with SMTP id q3ls2756572qkq.2.gmail; Thu, 04
 Jun 2020 07:23:51 -0700 (PDT)
X-Received: by 2002:a37:4c45:: with SMTP id z66mr5180462qka.326.1591280631298;
        Thu, 04 Jun 2020 07:23:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591280631; cv=none;
        d=google.com; s=arc-20160816;
        b=LVNywbyKsFeoltpXAq14LpKrL41vBWts6NCdBZ2A5Ne7FhAGuJPUu4Vf4J3iBYPwlm
         8SLXW9Hi6k9CpOfKfnTRKAqjlEnypTddCTj52/lV+a5VmURCHr9aeEhvhZY7wOgv4ofx
         A1goftQkOkP+xkS2psAkJFw7L2oecrCjK927tLWgf1uU/iUV8EsHvfhko/r/XSSp+thI
         vmO+bURKCGhVOBPrUoF5IgD08k8WEFvn/ySqQJDclCsrFbeXjuXQ5gMZmghuEWrh8yfY
         YIC5pRYpY4/NlSPpSW9Bw0aqrN1qVqz5s9fR/9iOTVztALcFm0lyCXhG5mqk0XUvuFgg
         KJ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0yy5MHljbkaYpaeAQHYcaCMNZgb1qOOCz2cvx6JmiYQ=;
        b=UR+JJVLRS6rzXiBYsbQNXqFH+UxbBDdpdlFAzFTD+HEjj0ZgzNNbmK7Ir0OD7Gl05o
         JIR4oBYhiukEsyE2RF5OvkKX3BYgAwvpj+uffL1l6Sq/RNOQ29J4McFtIHbc1m5sJJp6
         SeaxDtyY0CbrreDWIT6jmuAgmY8gd26wldrY+1EtHQhuHRRvkRgyi/7ZKVJihHoBowoC
         6/s+WjPWj4HHtzT0Kab6VyxP0NtG1Mo8oeFb1krSkPBd1vmsDGiEvG92+v/OkmyiU3rb
         k7K2S7GZ3DJP6AFWwaY2gj3gaz0lTaSk/BXNdrMKvByyX0idcqOzUSTQ4r2XyGctY9Mx
         vzYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HSfqxACh;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id x37si413576qtk.5.2020.06.04.07.23.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:23:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id v13so4895009otp.4
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 07:23:51 -0700 (PDT)
X-Received: by 2002:a9d:6958:: with SMTP id p24mr4127585oto.17.1591280630632;
 Thu, 04 Jun 2020 07:23:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200604095057.259452-1-elver@google.com> <20200604110918.GA2750@hirez.programming.kicks-ass.net>
 <CAAeHK+wRDk7LnpKShdUmXo54ij9T0sN9eG4BZXqbVovvbz5LTQ@mail.gmail.com>
In-Reply-To: <CAAeHK+wRDk7LnpKShdUmXo54ij9T0sN9eG4BZXqbVovvbz5LTQ@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 16:23:38 +0200
Message-ID: <CANpmjNML7hBNpYGL81M1-=rrYn5PAJPTxFc_Jn0DVhUgwJV8Hg@mail.gmail.com>
Subject: Re: [PATCH -tip] kcov: Make runtime functions noinstr-compatible
To: Andrey Konovalov <andreyknvl@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HSfqxACh;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Thu, 4 Jun 2020 at 16:03, Andrey Konovalov <andreyknvl@google.com> wrote:
>
> On Thu, Jun 4, 2020 at 1:09 PM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> > On Thu, Jun 04, 2020 at 11:50:57AM +0200, Marco Elver wrote:
> > > The KCOV runtime is very minimal, only updating a field in 'current',
> > > and none of __sanitizer_cov-functions generates reports nor calls any
> > > other external functions.
> >
> > Not quite true; it writes to t->kcov_area, and we need to make
> > absolutely sure that doesn't take faults or triggers anything else
> > untowards.
> >
> > > Therefore we can make the KCOV runtime noinstr-compatible by:
> > >
> > >   1. always-inlining internal functions and marking
> > >      __sanitizer_cov-functions noinstr. The function write_comp_data() is
> > >      now guaranteed to be inlined into __sanitize_cov_trace_*cmp()
> > >      functions, which saves a call in the fast-path and reduces stack
> > >      pressure due to the first argument being a constant.
>
> Maybe we could do CFLAGS_REMOVE_kcov.o = $(CC_FLAGS_FTRACE) the same
> way we do it for KASAN? And drop notrace/noinstr from kcov. Would it
> resolve the issue? I'm not sure which solution is better though.

Sadly no. 'noinstr' implies 'notrace', but also places the function in
the .noinstr.text section for the purpose of objtool checking. But: we
should only mark a function 'noinstr' if it (and its callees)
satisfies the requirements that Peter outlined (are the requirements
documented somewhere?). In particular, we need to worry about vmalloc
faults.

[...]
> > > -static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> > > +static __always_inline void write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> > >  {
> > >       struct task_struct *t;
> > >       u64 *area;
> > > @@ -231,59 +231,59 @@ static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
> > >       }
> > >  }
> >
> > This thing; that appears to be the meat of it, right?
> >
> > I can't find where t->kcov_area comes from.. is that always
> > kcov_mmap()'s vmalloc_user() ?
> >
> > That whole kcov_remote stuff confuses me.
> >
> > KCOV_ENABLE() has kcov_fault_in_area(), which supposedly takes the
> > vmalloc faults for the current task, but who does it for the remote?
>
> Hm, no one. This might be an issue, thanks for noticing!
>
> > Now, luckily Joerg went and ripped out the vmalloc faults, let me check
> > where those patches are... w00t, they're upstream in this merge window.
>
> Could you point me to those patches?
>
> Even though it might work fine now, we might get issues if we backport
> remote kcov to older kernels.
>
> >
> > So no #PF from writing to t->kcov_area then, under the assumption that
> > the vmalloc_user() is the only allocation site.
> >
> > But then there's hardware watchpoints, if someone goes and sets a data
> > watchpoint in the kcov_area we're screwed. Nothing actively prevents
> > that from happening. Then again, the same is currently true for much of
> > current :/
> >
> > Also, I think you need __always_inline on kaslr_offset()
> >
> >
> > And, unrelated to this patch in specific, I suppose I'm going to have to
> > extend objtool to look for data that is used from noinstr, to make sure
> > we exclude it from inspection and stuff, like that kaslr offset crud for
> > example.
> >
> > Anyway, yes, it appears you're lucky (for having Joerg remove vmalloc
> > faults) and this mostly should work as is.

Now I am a bit worried that, even though we're lucky today, with what
Andrey said about e.g. kcov_remote faults, it'll be hard to ensure we
won't break in future. The exact set of conditions that mean we're
lucky today may change and we have no way of checking this.

I'll try to roll a v2 based on the "if (_RET_IP_ in noinstr section)
return;" and whitelist in objtool approach. Unless you see something
very wrong with that. And I do hope we'll get compiler attributes
eventually.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNML7hBNpYGL81M1-%3DrrYn5PAJPTxFc_Jn0DVhUgwJV8Hg%40mail.gmail.com.
