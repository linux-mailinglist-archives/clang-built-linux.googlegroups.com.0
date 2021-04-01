Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4XGSWBQMGQEHV7V2JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C311350FF1
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 09:17:08 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id n12sf2550448plf.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 00:17:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617261427; cv=pass;
        d=google.com; s=arc-20160816;
        b=HGCWVnMTVetp1JBntpxCA/O5l5DdA1BKvsOaS50yVP/DQ5BmTBF0DUBtejp9G66JfM
         gOIC5DtD3tqdrDheMkeexIjU+wBYpjvVRbL4uH3X3eb/+6x0vQUKGnOdlK6DkHn1sO5A
         JDCQlHOhUoYecoj9UNwKzhBzbuYWyDbl0l+85+fXBeT91RLq+EtIkMXebzBimAUKE1Jc
         BwlxRpTNC5kJXg0lJCGW6Ln37Qut28YnP+ViTmu86pKNCKzZic7tHoaf6lm+COh7g5vd
         HpvkWQGGXsEfNkxMiKpAsNSRgXSm9b2Pg/av68cgcjiXE99Mg0T5OmtZUqMgfWvS/aA2
         IpfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Mu9+29H5dhpaTwGHr5Txp/hj1mJk4LsL65s5tf+6N9I=;
        b=bCpGVBM5T1LcikFPYoQoMNRj1RaG5L2I8QMZQnNGMsUBDlgX/JncWGeLzv2FOywAqo
         U4ELHV+W+sRk9N4DI0sgBwLFwKODdXz93i1NHTX2dOYAGH0Lgtfg6y/r1pfRT0GpEckV
         6bT5ydp2M4R8bn3JRXQiobOcJrP8nKGeShpXHmoI9O7sXY7MFqg2+UzUh8LJgikUfSfV
         0NVKdqWCVqSy4NioDWm9lcBE3Pz8azLiPJ2biWO61ihaDjKzmnEYYTYANRcHAfwkygjr
         Mk994lDzSE8/lfolwVMCQPcgzunULeBg2knbYypLjAcn9ZvHMnNTFwWl+JgoLlCGta1b
         FFHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S3TYcLce;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mu9+29H5dhpaTwGHr5Txp/hj1mJk4LsL65s5tf+6N9I=;
        b=HLpZogArdTCXd/CakFwlNIX/zjlj8pgory37BA7pxr2LKhuzrmicTWc/FMxrlvJ1T2
         MSYYFSFN1qR1T56JiaKC1OtlLhXqn8FLrL4a0D7dQdVw4ToD00M3FGzHRG3fW1xanEf7
         rsRITmv6x0RWMSTB21BtUDx5PEiDH1X0eJCHY7D1iiPji5ccbEKw9lnCFjP9L+qVGJk6
         Xm5FbqwvmiXANypSTJ/7zvJAsoMdz7BK7vJhBZ/22SXBNvl0lJ9xRGgdGWpfshQWSJLU
         dpFcr6qMzy3mtjJcQKwmm+Pv9yJnAivla39UxSvSvJv+F04RgtpewfQ6W5XhjYFzOpAS
         f3mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mu9+29H5dhpaTwGHr5Txp/hj1mJk4LsL65s5tf+6N9I=;
        b=bnv+y0qskACM0BygErwv7Vhy1LQpr93MLrXHqdr930Fp1ag2WQ+stQCgfagM3WzqOM
         qweGKROYjfH0dWyjSkRrkBd3oe5jsULvLUJSrEPntOh9DKHworSw4bzDbvqis/sGHN2J
         W4pl5epgtN+tw6wFac7tIPMNuKFUiPiFyf+FQ2mMjMJOtyoRJWHiMdX175NLZwxSgPXF
         lzhnXx4R3doH/yZyoQ25WdehAYxbelo3yRgGWYygPbVhqu+oFHj+cVp6OhC4hLlz52T+
         6YgGk0dytZfmtEq1aGgewszWJTBoprW/k4TmYm+3gHIDuOO73cIeeZMy1MSekT1Fwh0C
         a4pA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533W4qqi3UvSZc2wJdtbhy132QB9Aqf0/f0luF3wPqCQCQUpgJly
	rTNjpZnUCcDEPOk4BUv0LxI=
X-Google-Smtp-Source: ABdhPJy03a5Hn6Dtawh4SrCT9gu0K1yg9QcgPYvQpbSBQbzEjaOEeZTcnHBxYc8XAYZsWO5PegqiTw==
X-Received: by 2002:a63:3ec2:: with SMTP id l185mr6359288pga.45.1617261427079;
        Thu, 01 Apr 2021 00:17:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1382:: with SMTP id i2ls3033243pja.1.canary-gmail;
 Thu, 01 Apr 2021 00:17:06 -0700 (PDT)
X-Received: by 2002:a17:90a:bd95:: with SMTP id z21mr7851006pjr.214.1617261426676;
        Thu, 01 Apr 2021 00:17:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617261426; cv=none;
        d=google.com; s=arc-20160816;
        b=zGXO0+pti7WIJSp+yWPvEsgrOj7ZoZAxKW54LRU/fkRf1nN2h5cD4ygso3Tr+aSe1G
         AKBjpbfDrCKJoGxnpr4O79VVTaNg7+zTGi2s9ZjpZTyaTqffdhRPJn0AxYqPn2oKzfGh
         wT+ReG5CSW8R7O5lHKrNyKQij9gZxFitIPCyF65REyPwIzrTW96jOurStbo6wbxqI0sB
         Ve5B63ZWn7yFMbbyGFB5QY0lDlwBdSXUCpngTt+7Wi2UqOczM59/bGRNeMQVc3SM/AjC
         9hE0TqE/iI58r62cfIDng9wmmhNucxwaL17rJcYrOwcLK8zmsevaENxDLMNz/mOpnx0d
         tkkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yhXaLCKbJTAWOsF+U14KnEq7xOpdNME3Q0d11VRQgYQ=;
        b=eykAOS3Z5zuDsoy7nF6+28z2HCW4ZB2RFXMJgXPATzNQk0+4bvOM5FFw01h74pFCwE
         J+qZV6wWhREM7Cke+GhnrKvzn8D8qxvA0h6M8Tcdz0eLedGz5XrXdTmbLnH/pJmYwUQB
         Tqkrqw9WE6Jw2MuSxQq5ip4Wv/oeuVepwFp+4hd669GbLSJF30F3BSI9gire03pTLo2R
         X5HpoHkzWY6LDOM077QfbYTqFU4+jXR31tiH955aR7tXtUKD9V+iyrgAMNpoFN554klX
         0BFOcWwEQ2Up5GOEX+O0GR9/MyOnFVl7+kErRYcJlNfdXFh+BQ+h00YXUBAY3a5MjHi8
         xqeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S3TYcLce;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id n10si338624pgq.2.2021.04.01.00.17.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 00:17:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id h8so562146plt.7
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 00:17:06 -0700 (PDT)
X-Received: by 2002:a17:90a:3d01:: with SMTP id h1mr7693125pjc.124.1617261426390;
        Thu, 01 Apr 2021 00:17:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f16sm3752101pfj.220.2021.04.01.00.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 00:17:05 -0700 (PDT)
Date: Thu, 1 Apr 2021 00:17:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, andrew.cooper3@citrix.com
Subject: Re: Plumbers CF MCs
Message-ID: <202104010015.B879F44@keescook>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
 <20210330141312.GA6327@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210330141312.GA6327@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=S3TYcLce;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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

On Tue, Mar 30, 2021 at 03:13:12PM +0100, Will Deacon wrote:
> On Tue, Mar 23, 2021 at 09:35:10AM +0100, Peter Zijlstra wrote:
> > On Mon, Mar 22, 2021 at 01:23:03PM -0700, Nick Desaulniers wrote:
> > > Hi all,
> > > I saw plumbers opened call for microconferences:
> > > https://www.linuxplumbersconf.org/blog/2021/index.php/2021/03/18/cfp-open-microconferences/
> > > 
> > > I was going to put together a submission; do we want to do a combined
> > > toolchain MC, or have distinct ones this year?
> > > 
> > > I know in 2020 the GNU cauldron was co-located with Plumbers, as well
> > > as a GNU Tools Track MC and LLVM MC.
> > 
> > A combined MC focussed on kernel issues seems very interesting. We still
> > have the control dependency (volatile-if?) thing pending. We had a bit
> > of a discussion on that after last year, but I don't think anything
> > really came of that, can we pick that up? Ideally a compiler person does
> > an actual proposal for this year.
> > 
> > If we can sort that, there's the rest of the dependencies Will outlined
> > :-)
> > 
> > Then there seemed to be people that thought __always_inline was a
> > suggestion... I think we need to explore how that was ever possible.
> > 
> > There's the endless UB debate... can we define more to reduce the UB? I
> > mean, we're already bound by architecture ABI on the one hand, and
> > actual use on the other. It would be so very nice to be able to get more
> > -fwrapv and -fno-strict-aliasing knobs that define UBs away.
> > 
> > There also is talk about straight line speculation mitigations. for x86
> > we should probably emit an INT3 after every JMP and RET. Although this
> > might not be controversial and be sorted by the time Plumbers happens.
> > 
> > There was some talk about how compilers could help objtool make sense of
> > jump tables.
> > 
> > GCC's status on asm-goto with outputs?
> > 
> > Clang's getting asm-constraints wrong ("rm" and it always picks "m").
> > 
> > 
> > And I'm sure there was more..
> 
> One thing I'd like to add, and which I think is possibly relevant to the SLS
> mitigation for arm64, is whether there is scope for allowing the compiler to
> generate alternative instruction sequences (e.g. in a separate section),
> which the kernel could then patch in during boot. We already do a tonne of
> code patching on arm64 for things like CPU errata workarounds but also
> for enabling support for optional architecture features, where the kernel
> code would trap on CPUs without hardware support.
> 
> Another use of this would be to enable stack-taggging with MTE, where the
> instrumentation is generated by the compiler but may use instructions which
> are undefined if the CPU doesn't support MTE.

Or swapping out SCS and stack-protector for PAC when the hardware
supports it...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104010015.B879F44%40keescook.
