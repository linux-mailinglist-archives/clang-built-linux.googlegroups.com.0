Return-Path: <clang-built-linux+bncBC2ORX645YPRBD5RQP2QKGQET2Z3WXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 120F71B5102
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 01:51:45 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id l2sf2430875oih.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 16:51:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587599503; cv=pass;
        d=google.com; s=arc-20160816;
        b=kK56w0UyH1YCVjO49xj4y4Tf7EO2oXZkXl0E8SsRkgYou2M5Tqj22epGHcKyy5Taat
         4cCn/+ftxrUZTVzao7NSV99VGvowFJe5tOVkmknnxQcHmLHAazXtli3M1HKaQZ0SmtQ3
         ymrBNhQYNvOpE0akj0MQEUC9tuCEVFCsVfQyfsBARwXE+oqQatbeCIAP5k/sC9Q8MONl
         nAG/w7/WA+dQ0ReaHV3JNG4nQpqtjoG7p38fakqgvjPwmVVEeVQL2QzmMtbU4IcoFGC2
         i+cueYu6KOYwNpH1O1UVvlVMjba28Ia+UUv0qpGFLRRBhaxVlcbaROuW10n8iGGjz04s
         NhWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=YxFYQ6gJxsyaFjRsp79xRkAzTA4a2GeY37HFU3jZ8hw=;
        b=nI6M3uH+qUDw1iTQH3S12wpOCqr3KS3mfnAn06rakGI3OnISJdwozDbwwG9hTDp1nX
         f8uOHq3RtKWqYMAJf9x1zSA1h10YAtAr5pzRPlL+P914u4foHmnBB0DnmMLfURVFRRfR
         CKBWSE0zGCLgtiFWYgerV3KnWIEDsX5DebGp5AzuKRYzH+Od7593ES+lbLC829cdtMf+
         RQWm1RW7CPMlvTYNjpMX/pYL/utt4wtlmZKiRdy6rjNN0OZaRZtQaWliaM4nQixRDjXV
         np5MMgYaDl5sDqCDzHZkv8mnXQRv1UgQoutKAvKD1Rh1m9bisvW49vZquQWan91wOc9Y
         QZ+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b1xFmE2s;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YxFYQ6gJxsyaFjRsp79xRkAzTA4a2GeY37HFU3jZ8hw=;
        b=jvwpsKNWj9UFYOFamBIC+XcbLi83Aac90DYydfrFxuSuGkgBx68SEmVj/gTmhdu25k
         W+67DSRfBmkhUILp1puhp2Or6jBEbN1JJ7Q91tee5v7afD4avSOfuzkhS6xpCdCb4ztL
         yJkggAbdZme/Bw9pcXE+AVaVt8yDmGz3qIaeABUOy0//cNa9/lk8MLk/y2bsrL9SFQ43
         H7Lu+7XDpqXGObK70qAbXF+eWrMC6G69s+DnUyF9DW3B+ojpZNEBMd5IBf+t7HKcp3pf
         8yOSWH2Uy5XRUop1bNrF9zA7H4XZpOKJo4RDnFkjwwjSzzBHv25CXyRh69vzM3fgIurO
         ritA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YxFYQ6gJxsyaFjRsp79xRkAzTA4a2GeY37HFU3jZ8hw=;
        b=gIe2ZjgYbQcLFzu4JolNC1ioQbMbay4iqSoHfhuavULeVvqwtqSxHiccfKBi9fHh37
         umm22jkoLjZyhVed/snaLlV1Vdw5YwPB82V12yr2jXJsYixiJmY2rt477uh1HnXwIVFB
         c5dRN/U7KaLYioN0qSqSzkYlGaPZK740eJLKrvSxUtuHXNsMq1gPbKOhJnILxuCrgCys
         Fkcm6nR8ylW8fGi0DzKXq5HfgG1XEtEuQU0+cS18k9jF0qnoJTI9UNrUNGJmfItR0huW
         08i0jPeeNVtYOAZsY0u3ZiSW7pG4gKOV8vR0yfyzb/jfKkZMzuMl3oNBvi78q9pFjDpo
         C9Qg==
X-Gm-Message-State: AGi0PuYZH+FI0MRbHl6f7pyDpZM1tc2NpLF2WyCAWq8fL14ntYQeSSHj
	6eTB+mA8wo12nq+u8s4QIAM=
X-Google-Smtp-Source: APiQypIkVqyhlw/o4OIfenf7WjzK+L126TbxE4SgJfIHridr9uFqr8kEwpo0yoxwTTSJcBMPoWU0Cg==
X-Received: by 2002:a05:6830:100b:: with SMTP id a11mr1379641otp.218.1587599503710;
        Wed, 22 Apr 2020 16:51:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:30bc:: with SMTP id g28ls1094681ots.4.gmail; Wed,
 22 Apr 2020 16:51:43 -0700 (PDT)
X-Received: by 2002:a9d:206e:: with SMTP id n101mr1486952ota.100.1587599502851;
        Wed, 22 Apr 2020 16:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587599502; cv=none;
        d=google.com; s=arc-20160816;
        b=Y0cL3azO4K75A0r/kovuqYAH8l20yvsWy1YaUP7BK8uw0vs0l+Q7pNpTKW2fNifwU1
         VH06KPHRW4eMakJoHlV/Jc01mS50eFA0KWGts5yOve4pg2XHCEM6qhfATEFkXx2nmr0o
         kh8dlfuV+n1h8SJSAHPzkSPKCqeQCxJDqTzsCJugSkpEw3hAV5FpWvMkifVAKbgvIDs8
         QsowrXcsFTplFqMwN+54uIV6dEttu5DLArlzsEQzO796sRzTE+cBX7g5yDNtEZvQme8T
         fzXe7fo4VxrEC0dyaPJuElxrTNs97ckrUe8lGO0tmkhbRZEQWHeq6JQ8uQXS9hQWTA3N
         zx/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QgMVZz3XwLkExErntao4WLiI0VS/DsZOFmHjZC/Mbow=;
        b=BKfXNi78VKNB2kBRLsdx4/7vSlu+Ueek+ufcllopHIaN9m8MmI8MC8hIl4zDv8hlTm
         Uyxc3hMxCj+Pcq9QpXsxGGRz1Y94U2MWBs4KiKGUIusywJMuK/Gk9fgcJIHShMXsajcg
         7PUj9hG9zddKqIyLGqgSZkqSZ3oEHbXCULY6JRxeCrxmvm7ockFG6CZ4JLi9VegDhQmu
         GRt6szMe109syX9nHJ7h/ulb/KoEHJtJgByBnd0bKo14bI3IWWb55OqgIa+7JgEFv6/h
         2LFazJ/fxcSyUuQ7bmDycJWmQdlQHHynwf/ugAh4Q3Hv9B7pkvHFTmnGkzTlp+cBC9GH
         LIEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b1xFmE2s;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s69si100366oih.3.2020.04.22.16.51.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 16:51:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id s10so1610968plr.1
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 16:51:42 -0700 (PDT)
X-Received: by 2002:a17:902:b097:: with SMTP id p23mr1161570plr.195.1587599501845;
        Wed, 22 Apr 2020 16:51:41 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id h11sm621261pfo.120.2020.04.22.16.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 16:51:40 -0700 (PDT)
Date: Wed, 22 Apr 2020 16:51:34 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200422235134.GA211149@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422173938.GA3069@willie-the-truck>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b1xFmE2s;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::642
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

On Wed, Apr 22, 2020 at 06:39:47PM +0100, Will Deacon wrote:
> On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> > On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > > +	 * upwards, so we can mask out the low bits to extract the base
> > > > +	 * when the task is not running.
> > > > +	 */
> > > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > 
> > > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > > (base,offset) pair instead? That might be friendlier on the allocations
> > > later on.
> > 
> > The idea is to avoid storing the current task's shadow stack address in
> > memory, which is why I would rather not store the base address either.
> 
> What I mean is that, instead of storing the current shadow stack pointer,
> we instead store a base and an offset. We can still clear the base, as you
> do with the pointer today, and I don't see that the offset is useful to
> an attacker on its own.

I see what you mean. However, even if we store the base address +
the offset, we still need aligned allocation if we want to clear
the address. This would basically just move __scs_base() logic to
cpu_switch_to() / scs_save().

> But more generally, is it really worthwhile to do this clearing at all? Can
> you (or Kees?) provide some justification for it, please? We don't do it
> for anything else, e.g. the pointer authentication keys, so something
> feels amiss here.

Like Kees pointed out, this makes it slightly harder to locate the
current task's shadow stack pointer. I realize there are other useful
targets in thread_info, but we would rather not make this any easier
than necessary. Is your primary concern here the cost of doing this,
or just that it doesn't sufficiently improve security?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422235134.GA211149%40google.com.
