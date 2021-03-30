Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB7XDRSBQMGQEZXH7S3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AB634EA03
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 16:13:20 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id q11sf7381235plx.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 07:13:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617113599; cv=pass;
        d=google.com; s=arc-20160816;
        b=xkMB2Az6O4EEY04K1Lg4JGYA67GCxFPfbcHZKeSHwggSeVb8Cf+y6XzCVxkqdHrp0f
         6e/0aRGjtOqFqZipgV7T39P+pgHuuiCt1vZ6KY8kfWNPuqd4tss6o99NNPiVQas31VS+
         hd0EI0m9YQ/QD7mbqAQ+tUoH6Bb1v6oC2HGSkNcsz70y5PZ5HdUDi9w7lH8wN3188oQW
         pCzjydsTmUW4xWnnMeam4+fi0LIsCxTLwOdUrDNP54M0EhCoB1/eahrmB7NRhishb+TJ
         facqNjd0iOvd+uzUPZIl5EB/6V72jnRo9j4F1wGV7IzVM66gMWo8r1YG6m7aTJr5C0M7
         djmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=WaqJplS74d8QAFbCbi4QULdIDmzBjtlrgBUIi1Qd9TE=;
        b=WzTgGG+q1+aPYMECt2xYLVrCtYXbVKoHxa2QFETt4B0//4Owm4g3vsWeTOszsbI7FN
         0Fw7uFWjzALEB5U0yW+/38oaPYMhssZHHBo9M+SrH4m/sD4eJKKfl6/ZuedUxOhy/TAG
         BU1rjbt8WDI4OKqRT2Lnno3FHDfFelBKhycpLlFXl/PN2aKmz7LBByEj/8Ff5Oxfd0SJ
         gTcSq5uOCK/8UWZkq7rxaUCgCUqh17W03Y9wF6TLoFbAcRoqoJW/GJ+O268XUzAYHDgj
         I124PjumhP44RtPNVWkeg8MaXgCKnZd4ueWnjyh4jFJ0hT9IQ1OFdqEqCdOSuLAad1Am
         DX7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Zzs+Srnl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WaqJplS74d8QAFbCbi4QULdIDmzBjtlrgBUIi1Qd9TE=;
        b=WFQBP5lRvFosYmYyqDH3U+z/e5tACwtqyZmqVwXGOwSc359A9JHk37cmcOaTOqrqVC
         2feNNMJmChK7l2MiR8X8QP4TvL48zxSt9aepLACf/Iu2fNAHN9tcgs0LAEe+9MSzez6g
         c+vCi2VvbSyp2ZagehlyYVTT6qSC/hq8z3zlWAOvx9TXN8s6IwLvGrB5vGM9n6Og0Msk
         8NZVzbcDzVPnpI7Um9WwezqoG+BIfqmmLaqEZcHNhQCkD19F0pVcsrhNpIUfHh7OZh4w
         cCtgljh7FA8IoDQ1md5/I7b5a+1U2E2pn3csrpp+G/wGVEl1ZtskxMn9ilAQLThxrXYI
         hSzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WaqJplS74d8QAFbCbi4QULdIDmzBjtlrgBUIi1Qd9TE=;
        b=Evl7zFlbHgX3CTN+D5b4KlaStg/xzwFKoboloLuVUR5L2V6SKtZwxbauDhoFxkppKv
         Stv66+HYlU4wbRJ9vTiIJBegiI0h8Rb+swDM73bRbYkNenG3bzTMOxWnpISV8hZx+qZX
         UKGAfNOG5a7mP0DsZjSQ6a/CxvWKSWBW9uT44HX1b01X7WhOMabQFProCN2DQUD3JK48
         0lnrE39MjVFM83SOAenY7dVRruvahB8cJCOqoS4qLLMJDnnXGlGYxItaxaApGESFx0LO
         FJF2fm6eClzpdGA6kkAD1Ab+t1hfNGzMd2KqUB2A5rAhEc1ht5JFsN0tIHNlSzLSrSZr
         JWGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311eXV7LANyXlfM7+NEwujyEa/y25PVDY2JzS6Bo6zhNAeNHnU4
	kf7HDDwYkqZuAE3q3Cai5UM=
X-Google-Smtp-Source: ABdhPJzh5AH2TGN2r4ILiiDCK1Dc4a9N8+CNA9rl4iAYelFsoU/qUUQr3BVcljn+knIV8OHivfA90w==
X-Received: by 2002:a63:c741:: with SMTP id v1mr28139156pgg.207.1617113599042;
        Tue, 30 Mar 2021 07:13:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:eacc:: with SMTP id p12ls10810807pld.11.gmail; Tue,
 30 Mar 2021 07:13:18 -0700 (PDT)
X-Received: by 2002:a17:902:a505:b029:e6:7a98:691b with SMTP id s5-20020a170902a505b02900e67a98691bmr33992148plq.84.1617113598459;
        Tue, 30 Mar 2021 07:13:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617113598; cv=none;
        d=google.com; s=arc-20160816;
        b=AhLpZZeLPoavaqVhdC/F98V0+6i/Z128zwSPt+2//DhNYFvS8zZFLF2tdzZe8U1C6c
         HsRT15T/g0VG8nghQ6FfT43OcDP5F4HGx2FIjhxnux0uJBA5PvcTXf5R//vwJr87Mrll
         88skDReeWcQOEWG7R3xftDs+COaf35KYr6XpE4F1fUdy69KNI5NBdJpusbKPgkGPJGOW
         cOG/ZPNXbmjt1ipghmIIg5R921yZDV9cJ2pcfyaYIp8FIkagDuHaEYs+L2TTAe/vEk3Z
         srNu9pl6KlkXZFoTLXHC+R6FlHoU8hoQIYK93pOf2YR2inUSHocv/ARw9KPo1693EjzC
         +biA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=c9OkrS//jGF7oz0LE6H3LOcKIFKl7pxw0sBsy/D/MZQ=;
        b=bRDLl5n7pZiyxCPeO2x7oWQVtby4qAbDRuhRMBaSgoP4LXDhJWOTSG4TLuNuLxf+iL
         8nJLGEcRPQcr0qgw0ENT55Lmjkxawvl0nw8CnGRVdWcky2MULULNxSjaywZl3txeF3S4
         9ArBOX8PpICRlj3gp9D/AT8tinR/4R7Lt5kZg1cPDm1MUOYEpIGN93ptTv0T2YBXUDrH
         1Sknaxs2RMRjPRV6MUXrm2bmhN0JkjJ1w6YXqYk3gY02y0/E4FJQYBuk+ozqy/+ZJkk6
         Vlr894Zwchtywz/HkWqojap/UxQrIgtEZmP+YgOY6Mr7Ke5J6fhT+vUiJLJ+/FmsfmHo
         f6Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Zzs+Srnl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 145si1127088pfb.0.2021.03.30.07.13.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 07:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 09937619C7;
	Tue, 30 Mar 2021 14:13:15 +0000 (UTC)
Date: Tue, 30 Mar 2021 15:13:12 +0100
From: Will Deacon <will@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, andrew.cooper3@citrix.com
Subject: Re: Plumbers CF MCs
Message-ID: <20210330141312.GA6327@willie-the-truck>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Zzs+Srnl;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, Mar 23, 2021 at 09:35:10AM +0100, Peter Zijlstra wrote:
> On Mon, Mar 22, 2021 at 01:23:03PM -0700, Nick Desaulniers wrote:
> > Hi all,
> > I saw plumbers opened call for microconferences:
> > https://www.linuxplumbersconf.org/blog/2021/index.php/2021/03/18/cfp-open-microconferences/
> > 
> > I was going to put together a submission; do we want to do a combined
> > toolchain MC, or have distinct ones this year?
> > 
> > I know in 2020 the GNU cauldron was co-located with Plumbers, as well
> > as a GNU Tools Track MC and LLVM MC.
> 
> A combined MC focussed on kernel issues seems very interesting. We still
> have the control dependency (volatile-if?) thing pending. We had a bit
> of a discussion on that after last year, but I don't think anything
> really came of that, can we pick that up? Ideally a compiler person does
> an actual proposal for this year.
> 
> If we can sort that, there's the rest of the dependencies Will outlined
> :-)
> 
> Then there seemed to be people that thought __always_inline was a
> suggestion... I think we need to explore how that was ever possible.
> 
> There's the endless UB debate... can we define more to reduce the UB? I
> mean, we're already bound by architecture ABI on the one hand, and
> actual use on the other. It would be so very nice to be able to get more
> -fwrapv and -fno-strict-aliasing knobs that define UBs away.
> 
> There also is talk about straight line speculation mitigations. for x86
> we should probably emit an INT3 after every JMP and RET. Although this
> might not be controversial and be sorted by the time Plumbers happens.
> 
> There was some talk about how compilers could help objtool make sense of
> jump tables.
> 
> GCC's status on asm-goto with outputs?
> 
> Clang's getting asm-constraints wrong ("rm" and it always picks "m").
> 
> 
> And I'm sure there was more..

One thing I'd like to add, and which I think is possibly relevant to the SLS
mitigation for arm64, is whether there is scope for allowing the compiler to
generate alternative instruction sequences (e.g. in a separate section),
which the kernel could then patch in during boot. We already do a tonne of
code patching on arm64 for things like CPU errata workarounds but also
for enabling support for optional architecture features, where the kernel
code would trap on CPUs without hardware support.

Another use of this would be to enable stack-taggging with MTE, where the
instrumentation is generated by the compiler but may use instructions which
are undefined if the CPU doesn't support MTE.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210330141312.GA6327%40willie-the-truck.
