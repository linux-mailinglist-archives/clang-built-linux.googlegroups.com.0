Return-Path: <clang-built-linux+bncBC2ORX645YPRBXUA4L4AKGQEVB6WQJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A4C229EEC
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 20:07:27 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id u11sf699981lfg.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 11:07:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595441247; cv=pass;
        d=google.com; s=arc-20160816;
        b=mL3v16E5yr6VkNHb8Xy6TOn77J9WlxFVPNlUqLUmk8aW0vHG7mE1bYgTm1wTl3dD1x
         QwMhW6mvYU9A5kkQdjeRAJ9weNw1aabaDB9CQ4Vrpcf876K+pfpO0Y8tBmloSbccKBvQ
         TBn2cyV1Nmv0MnZ7tQmZxsilUcrW/c8SCeAlG0YyfeSTZOvQgOJqLqhLgaXL7Hhv2PoT
         JmBTWCHb4vlACqk2cZG5DhXs7TXBexc++4s+qDoH80saZa3JP2fCj5z5R3/KNvCODUma
         TwLQD7BVW9fdgSeoXIHCBoOlloxOSqapK12C4tcTKj2mBvnRugoPQotdbcgsfsWIYi5a
         TnYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5K0xyga2ra5nyH44BFag5Y4zY+vNQboejBnYbKdMVVI=;
        b=p9+hvH7CWaaN/vFyLrBBrw5jZNEYtQCe1HWP5fAn663k4c+eoY0GqMXzh5LYRO5dmZ
         7vYu9AArwV/H9xcKhKIIvNzMMFCU4Cw+UXroHfliubhydlnByV0j5o7C9NibMQxwGuvV
         JLcE1x+l7N95epWqbSitC/AHY4XlJEu23F4970+6fJclDzWeLa+4Q9YSyN2B1wfbZt0A
         lEny4VfeFORG3THBSRqTf7zOZBD2lejgWM11bBK6oyTb7b1t0mhwLAiTGMkrLRZDpcGp
         Tnr3AUZYMdLRjO/JDTvKAcT18w6e068hDLxeZY1mAwQ6da1SV9wLyjvB4tr96vD41twI
         Ic9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VQOOnqg7;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5K0xyga2ra5nyH44BFag5Y4zY+vNQboejBnYbKdMVVI=;
        b=SzNWD52rgrewYARI3CvTvzhIDe7FESYePpc95rtAmppxIVwphATyEok7bTSCnz5pvf
         hE9QF+AD7XmIKw/j+iDv3j9P1iOuO51jGalfoOHLi/tW971tuZU57M2VvJ4Q8ChlXJRe
         kMbU8F9GuvAy0n5KbpRD/5tD7FsvhSFKyylOv48QH2+9cFh56hiXO8ZambjST2o9or4D
         pCDrNkyBdwkXjZ9nwkONC/0jRMe3imm763Ch2Q6G0oN3c/OPLar0bdRCYbzlOJm/llru
         UVkYmJT2ihaIf7o87+onrefYIai12UNccpdNMY2uwvzQ5VYUgjp+Rk1pNVFfmuVdW4cr
         1+tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5K0xyga2ra5nyH44BFag5Y4zY+vNQboejBnYbKdMVVI=;
        b=cfh6xCslE8YAzn4V4/adKJFW3Db6tMqjx4aeyBMueYznKeDS3KTGg9qbI7gHH1fRUo
         jgkg3UeIrfQr00peIq+S4r0TDsMKywbU8x7SiJMOX732hqumJ64P3u0WKfhx9VNoPfKq
         qQ4lCOXPByFZh48hVZpWGeVNbKS/Jo1mWAjd/mNdZet3DxxpP+mcWu6DKywzhFu+DdYg
         l4620/PaLpziOmhgyykJcbDLH/xfwiJl2zGhRFPEfIgb3So/ZnXPS+y5bemsdkF5bx5n
         gGo+MQiztHYwF8Gd9MpwvGCQNkP2EVKPA85x/o/bKKIF6hR+WkXCyKCnza7o+WVuG8fi
         CLQQ==
X-Gm-Message-State: AOAM530vFHQhTRuBD6U/ArdaX6f1nfvBUHYAbtkEEU8D2XQA+S2chVdU
	+bN/k9sFZ9y9K40NCdvO8dg=
X-Google-Smtp-Source: ABdhPJw0S6ZOXKaNO5eOhx4MAWD9u1mPmBSuG3Ibdql1cJOBG/K9N2tiSD7CU2qvw7QioUDWC5YxBw==
X-Received: by 2002:a19:e45:: with SMTP id 66mr290536lfo.82.1595441246929;
        Wed, 22 Jul 2020 11:07:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9190:: with SMTP id f16ls581835ljg.11.gmail; Wed, 22 Jul
 2020 11:07:26 -0700 (PDT)
X-Received: by 2002:a2e:99c6:: with SMTP id l6mr222350ljj.220.1595441246099;
        Wed, 22 Jul 2020 11:07:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595441246; cv=none;
        d=google.com; s=arc-20160816;
        b=dGd00qRiVWBzaIveKsfbbUCMYop62xrnV+47CsiGDyKBAWymQSm3tNOIs29HumgYku
         +WuYSXgW7CglMZpXm8/gQVWbc21vg+nONmtirk+j6GCwTExpRvuSiXK7q1YnEfHEg10/
         NEZJRJFxWfHtZBt3Do4Pq1fkvCs8L1DoyvwH3pC/knNtT3i16IiWz+ek7BX6R3eMeAzy
         TCNWNBsWUs0qNGiSHsuRXkIb/oDIsLSD78bRSwck+t7k1TQTLFlz1sS3v2izJ1nGM3Pr
         hQ1mZcejMc7COmGD1PIn65QyGgNsOpNBrtZyqiSeLl2mNcdb922Vibv/09mUHc8iaBtp
         v4Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FdyJ3zCjPfmLPOxt0EpbJoGI3z0Dst2ftnMjMBs721s=;
        b=BXe4xz0VMv1eV4ZMebf6JMdWcLMloM4FzjGSPGAWB0uo95jDlwVxoCDzQMX5BTpcXa
         hp9MZWqv/perbGsdDa88QYpyqrWXHYRG4kohueRX9N6XtMw+QAXCt59DIKzv3TreCRPz
         aW2ya5KZXDA97YzKl+eWMwW8OlV68jipYwNP4pcvLloQTHI0Zwnre+Q6Fdjxa69AAg/n
         jUNH8whWSJxmNFrPOys1DGjE8isK0WJakhQRKbjEQU/OZrmsrTazhCBfE94NqWxWsMpm
         Guu5hwcxMojkPR28+71jZmPeqwgCYcBTPV+heUlX1jDNWxm4X/uuQaGVjd+zNvWCaJvp
         o0wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VQOOnqg7;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b13si27908lfc.1.2020.07.22.11.07.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 11:07:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id z17so2336054edr.9
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 11:07:26 -0700 (PDT)
X-Received: by 2002:a05:6402:542:: with SMTP id i2mr682149edx.318.1595441245286;
 Wed, 22 Jul 2020 11:07:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com> <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com> <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com> <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
 <20200625224042.GA169781@google.com> <20200626112931.GF4817@hirez.programming.kicks-ass.net>
 <CABCJKucSM7gqWmUtiBPbr208wB0pc25afJXc6yBQzJDZf4LSWA@mail.gmail.com>
 <20200717133645.7816c0b6@oasis.local.home> <CABCJKuda0AFCZ-1J2NTLc-M0xax007a9u-fzOoxmU2z60jvzbA@mail.gmail.com>
 <20200717140545.6f008208@oasis.local.home> <CABCJKucDrS9wNZLjtmN5qMbZBTHLvB1Z7WqTwT3b11-K4kNcyg@mail.gmail.com>
 <20200722135829.7ca6fbc5@oasis.local.home>
In-Reply-To: <20200722135829.7ca6fbc5@oasis.local.home>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 22 Jul 2020 11:07:13 -0700
Message-ID: <CABCJKucn5o+PgMnKwHOGRnhTdVk9Dnd2QZwy54wXYwQYNUNjBw@mail.gmail.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VQOOnqg7;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Jul 22, 2020 at 10:58 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Mon, 20 Jul 2020 09:52:37 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
>
> > > Does x86 have a way to differentiate between the two that record mcount
> > > can check?
> >
> > I'm not sure if looking at the relocation alone is sufficient on x86,
> > we might also have to decode the instruction, which is what objtool
> > does. Did you have any thoughts on Peter's patch, or my initial
> > suggestion, which adds a __nomcount attribute to affected functions?
>
> There's a lot of code in this thread. Can you give me the message-id of
> Peter's patch in question.

Sure, I was referring to the objtool patch in this message:

https://lore.kernel.org/lkml/20200625200235.GQ4781@hirez.programming.kicks-ass.net/

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucn5o%2BPgMnKwHOGRnhTdVk9Dnd2QZwy54wXYwQYNUNjBw%40mail.gmail.com.
