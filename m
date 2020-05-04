Return-Path: <clang-built-linux+bncBCQ2XPNX7EOBBCNSYH2QKGQEWNNXIRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 451C91C4403
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 20:03:54 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id c6sf5749222lfg.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 11:03:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588615434; cv=pass;
        d=google.com; s=arc-20160816;
        b=KKK+kLYnHUgYyDFrSLl8yjr6w4HhFScEyUat1nITdOMEyxKJ0Tu9dpChg9obm0Mevj
         OGM84J4pSHg6iSJQ/S7rx6NVmpTIokCoeno/ehvtdO4G09YX6wLdqgfu5/JwwskQtOdI
         NkWe7rebBf0lvFSzvz1whcdNpdg2LH23yNcW5SSBG17psl/WI0XT65EsJnAdmXXKbz2N
         Isbg+9pLWWXAnLtGNH2ZPaUqk5xrm53i6gdd2/Z9U4fS4lf0XHbJhCIEQnc1A56ua6b+
         W4FuDeTfcTeFBGGZb721E0L8X4uDXvCp4YxWRSdymFOggkBjyp65UMnjvg/dIIgu2wFl
         8/pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dosUg6GanQDoc+Yftw2wapsu0mkUTRVHDzPJiJoaxVQ=;
        b=DbrRiTp3LMzCXSAOxe4N7Grg+6qMnj+d8uwIrV8QomC9jUECgYBZcV9BdM8c1B8aZ0
         DXMUX5M/DuVDl6IfUL+PD/jIl+T+knjqhod3o7CD3e/266czXSvR+0IGSTkYA3mwh9sy
         NBkVn36xaYtEjBywUmk4csDnEN8gG8v34OEed9k7U44HaLjt4tnnEUbAh39ug6fbaxGu
         nMZJ5C/WxFZKTGA+ZUGV2UQ4UTE2CeDzw2OKtuvmLNRfnkTXsMAnc/xbWCFatnn7FgqM
         DzEfr6qxJwt62zJGtIGqg+yYF91s9j0foB8DnxlR0bgTU4VtdiISdW6ejG/A+mrMKysv
         PXpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rpULkMOh;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dosUg6GanQDoc+Yftw2wapsu0mkUTRVHDzPJiJoaxVQ=;
        b=gIrEBmg6FNeSgG7pvhlVnhsKuIyPge5t4q+weFwesaUcOPW3BedjrPYV8WDaOr/Rw4
         GAgA4y2fKUaU8/aOqiyAYNhHuDhHT5fbkB/fP29nVCk6W7vWLcplz9fB/HzI5QVDTLy1
         BD0MTomHc9CB/oZFK3u1hkbtCDSS+PmW3IZUWgV/nMRBvluhAi001dyMHfmsSBM8SrTF
         Z3E74oTxuhhOFoqNV1FSemSvLJuzLVG7+xl/L2sny4RKAa0MuKMCTyHVgt8TclU2nF30
         Xlrqj3o+4DfOoEH/Ukn7kR6u6L3BwdrkFGFQjP9P6XhGm0fNfFlRAMAiMVCyUqFXPzF+
         ObHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dosUg6GanQDoc+Yftw2wapsu0mkUTRVHDzPJiJoaxVQ=;
        b=BcgsgXw8FUYCThb+boxRwlcoEEZEi31B7QUHNPjc19afHGvz4PtKG9GyYIeNoYjx6n
         vdI5YwQbyCFhO0L/hqS6RDmwHulG30jS7si3xbkQj9R5/HiDP5J4hSIDQWGO6zpnAWW+
         fqHdZ6IkwbVVxOUa0Y2j5VMhN2oAzYn/VDKxV/2DziOUxv2i9R0LohxCnMOSa9+PImxT
         yb0jZ0Ew1OY6qzcrgwfQoW6yKwuFUJtgaXclofVU0K1LnQmzbviONhphuq4c3XrDq/NN
         fKMTvjOkF7TTMz5LWNb5FtcFOyycs7jvFW/AK4+IY+EjByQu5dZ6+tx4fXGBDC6iM7te
         l8Aw==
X-Gm-Message-State: AGi0PuYsTWVlinfkcL6faVPfKtx593up6IOcNT1sUTzyIdZKZlA5sgho
	TeNIspQpKqRCfvHfzPOfL6o=
X-Google-Smtp-Source: APiQypLLyuxh677q3sBne4G7k//HJlhefTxMRtiIY3oDGvPOHNIkf3wasWUmNVRb5saI9ImZtgfS1g==
X-Received: by 2002:a19:5206:: with SMTP id m6mr12328851lfb.33.1588615433835;
        Mon, 04 May 2020 11:03:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:50f:: with SMTP id o15ls1894152lfb.2.gmail; Mon, 04
 May 2020 11:03:53 -0700 (PDT)
X-Received: by 2002:a19:f206:: with SMTP id q6mr12944838lfh.85.1588615433002;
        Mon, 04 May 2020 11:03:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588615432; cv=none;
        d=google.com; s=arc-20160816;
        b=yc/reLnwDXYF6R0iDr/0m4OJ6ECG09OauxEKWJCmji/rWKZIHU7sDKD25+y22N2xoY
         fWEhYmpOgdse+FWF6cH+FOtA0oVuKIirn8XjHVKHG0/EN0NtdCHryFeQzw+gBlBluC6o
         J+6irKDUAM4IlgnDy9b4LoWXGoZ7rLdHVgUV2iwuAKFFTbEVnDKBtTsv/zRR2DYb5qps
         8hk3VgdU+sEyGzolggXSW+ghgavt3nt6kaSXFgwwlYMRfjbWCsLF+vI9hZ0PM5ejDbOQ
         dsUeYK7yPFDMjYsEeZyz3xYtekHrfP9HnZy8kO/t31SqDnzIDrK5D0H7G7zyMwnV4RLQ
         dhSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rcDmJIg6XQDOa3chgWWWTIDoYfHpXCrYezz5o9UsioM=;
        b=ry3YYQ9Cn2IiCvCkaYx7oI1t6aovWofobEVWxNG0LvCg9lPpR0exsILQZOReD40HwM
         BS16tU5964/iMQWP/Jn+JzhPKJHO48JZnCI4WHRXokK9R3ki3veibZDbPg/CxqQVZrev
         qet+/dC+aJfRYrkEWHDdD7eh8JsfyN1QyzAe38AsXRxvOVpsqpS517WLRkcPH3IahsIR
         1n2h/1nvu5d/N6JPr3fMCK3b+7IRuLuPrAYNqXlQ72NtglP1EmajzYJ/AsFkAjgKsVHC
         lmBvBLRfXtsaA4SfJ+NNiH7VhWHZbAIdpbPL4JfEoUwN4YjPKZExZ5HDWhLUbu5ZtD4/
         QoBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rpULkMOh;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q24si830270ljg.4.2020.05.04.11.03.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 11:03:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id f18so10596579lja.13
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 11:03:52 -0700 (PDT)
X-Received: by 2002:a2e:b249:: with SMTP id n9mr11270265ljm.221.1588615432462;
 Mon, 04 May 2020 11:03:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com> <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck> <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck> <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook> <20200424112113.GC21141@willie-the-truck>
 <20200427204546.GA80713@google.com> <20200504165227.GB1833@willie-the-truck>
In-Reply-To: <20200504165227.GB1833@willie-the-truck>
From: "'Jann Horn' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 May 2020 20:03:25 +0200
Message-ID: <CAG48ez0OjQpCvO1EqUqtHX+zVj27p3yWd5riY_r7+rNWwec_OQ@mail.gmail.com>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
To: Will Deacon <will@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Ingo Molnar <mingo@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>, 
	Vincent Guittot <vincent.guittot@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jannh@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rpULkMOh;       spf=pass
 (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::244 as
 permitted sender) smtp.mailfrom=jannh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jann Horn <jannh@google.com>
Reply-To: Jann Horn <jannh@google.com>
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

On Mon, May 4, 2020 at 6:52 PM Will Deacon <will@kernel.org> wrote:
> On Mon, Apr 27, 2020 at 01:45:46PM -0700, Sami Tolvanen wrote:
> > On Fri, Apr 24, 2020 at 12:21:14PM +0100, Will Deacon wrote:
> > > Also, since you mentioned the lack of redzoning, isn't it a bit dodgy
> > > allocating blindly out of the kmem_cache? It means we don't have a redzone
> > > or a guard page, so if you can trigger something like a recursion bug then
> > > could you scribble past the SCS before the main stack overflows? Would this
> > > clobber somebody else's SCS?
> >
> > I agree that allocating from a kmem_cache isn't ideal for safety. It's a
> > compromise to reduce memory overhead.
>
> Do you think it would be a problem if we always allocated a page for the
> SCS?

I guess doing this safely and without wasting a page per task would
only be possible in an elegant way once MTE lands on devices?

I wonder how bad context switch latency would be if the actual SCS was
percpu and vmapped (starting at an offset inside the page such that
the SCS can only grow up to something like 0x400 bytes before
panicking the CPU) and the context switch path saved/restored the used
part of the vmapped SCS into a smaller allocation from the slab
allocator... presumably the SCS will usually just be something like
one cacheline big? That probably only costs a moderate amount of time
to copy...
Or as an extension of that, if the SCS copying turns out to be too
costly, there could be a percpu LRU cache consisting of vmapped SCS
pages, and whenever a task gets scheduled that doesn't have a vmapped
SCS, it "swaps out" the contents of the least recently used vmapped
SCS into the corresponding task's slab SCS, and "swaps in" from its
own slab SCS into the vmapped SCS. And task migration would force
"swapping out".

Not sure if this is a good idea, or if I'm just making things worse by
suggesting extra complexity...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG48ez0OjQpCvO1EqUqtHX%2BzVj27p3yWd5riY_r7%2BrNWwec_OQ%40mail.gmail.com.
