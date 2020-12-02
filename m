Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVGFT77AKGQEZNC2FVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA672CC5F6
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 19:54:14 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id q4sf1408873otf.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 10:54:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606935252; cv=pass;
        d=google.com; s=arc-20160816;
        b=lONk+8fNUOxR6NpeVdMzR8w4qO0V4+Ajtbr7u5fKJaVSBfMaDOzIH/buvis9GcNcxn
         yMOFOx9r6IK+Oj9z/25g8d0crDaaKwD/GSVX/qraWQtrok03gEVVsXDY93kx3dfCHGcU
         ZbhG2hZWfWa1zXBXmif/nWrKyt9WqsHnWX2OCS6MjwfliSr8ZFdTbQofRq5rVdjZyRRP
         hNUsEcqK61dF7NZFUMP4wosMTTZg9cAv/8dcpAGT56+InYxkBs9ZLJ74Yr3xfl5HFZ4X
         OM7cR218/LzqUE7ncJ1jopbZDU9SmhVYE74YG3fZ5ujwSSsbRW23FY453Z8FRiIbony6
         r/AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rmT11Va8hdVgNL0Il/GA4RbLXwVNSWBh7w1+lfoxF3w=;
        b=DOD5GlSqm2utcMVVQz9lKTuz/HvJ8xDglZPaIRVGjpd0JHq+gWSFd99sRJ9gjB1ZOX
         OEPpJSHyJYrXJG6ln85srSa0ObWiE0bqOfEd+qd0MTiBSB/Li1+NEo5kTd0J974j32p6
         0V53s16BHHuIgpztFeyZ3nDUjAEmWjbspEqx9DnlL7lMgqRSCo3rz+xCo8lHlLihcig9
         mhQPeDY5Vx1c8fyXA3V1PAi+VqQfEHyETMxSIhcTrKUWCQUqxznMLDEtT4bAmbMxuNRE
         KnG2y5zucTm7khHBZLJEWVyuLBgf7B/8SIfH2MzjZf5OmBBnWk3epm/X8r60VhS3fNz9
         XWHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QROM0g6h;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rmT11Va8hdVgNL0Il/GA4RbLXwVNSWBh7w1+lfoxF3w=;
        b=Wu+MkbboqCqxD1yFAF4JE9PT0nl4zAZS0c4q3J8JBp2/CMIn+0KkZBr5IHYEJloPAm
         HnM+YRJgAEWavVmjxwC3/keSBOPK9hCu2G7hJKO2KyvBMQQPsVarMnsJcWx2/lu9TXpL
         aNqYevL2j0zk2u8Zad8mRzwB1yL50HmGULIhlFJ24dSCtdRka1/uNqB6jWE13cyr8zIC
         oAYDZBMprAo8eT62sIrnA1dtAMD2mNfvAHz6uaESYVIDsE+lFF2pJzOtejYCN8UZW54F
         VMQgQ1wIKawgMLIYZjDaicdVnVfGd2JvJAWurfoEsGCkv7NNcmM3dK/zNhgHNLl2wBO8
         0TjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rmT11Va8hdVgNL0Il/GA4RbLXwVNSWBh7w1+lfoxF3w=;
        b=XshZ9vdt6wmDsbGCVPZY5oi2+KXJuKfgrT7abaRoxkHRM6PU+S1JHGri8eJYCyG0JQ
         iScpTrksHZGrsXrpprme0FWB1owxeSSfZrVVyM5tAkCinEZxBuU0r1JBLxTjihDPSpxz
         5S6cSRe30tVLRPCgdFYAQ2Ua/ZpgBKNMFLqdcbage0/MjnWHAkW2abLQihyJtvejJxHN
         MOAaHhhESkslyz5CC6QcRG/nxh1jPh7W5O9n98cTDvweMBkDRJA+DxaXAgwA5H+Hmx9z
         edi/14BsYrlsAVhFCHnAYFDwADwGqXMzWuECoaE//9vqjg1O9UMtWa7KIXeLkkqPAMff
         Hr5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R6bNtL/XbkmswqcKzn6dp7wnaHeWDtqaHkJiCr+bs1jLZjy5D
	gogFzsT7PRR88OYffDr25r4=
X-Google-Smtp-Source: ABdhPJxK1XAmXkLGPyzTOAHUxd7d7SaAILuGL+EJppwV+kCJtfs7aiqoDC2TX38ATebZCYmfggLZZQ==
X-Received: by 2002:aca:b605:: with SMTP id g5mr2686887oif.177.1606935252811;
        Wed, 02 Dec 2020 10:54:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1118:: with SMTP id 24ls726105oir.10.gmail; Wed, 02 Dec
 2020 10:54:12 -0800 (PST)
X-Received: by 2002:aca:bcc4:: with SMTP id m187mr2686504oif.95.1606935252410;
        Wed, 02 Dec 2020 10:54:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606935252; cv=none;
        d=google.com; s=arc-20160816;
        b=Ygttr5GIPM7vD8zB80UnKefw0CJIpSfFtm6nkkuGdixmQKjZn1SzBUtlbM3H5sz/lq
         rj/Zlv9hLl/XbAAkX5bhHiiKl2Kzlv9H7vnDt63QAaW5lDadOGMOkuQQhuO/z660+Dc7
         M0SQrjZD903FwfnOFOljE+N8ZlXHYVlajl1i6ic9dom7pO8ym6Inc/mAgfXq4oGLaIuj
         262YJaxoY59YVXx2HNe7xBdocDtIpmv5UFX08QZlTDhLP901herNql37I4zHymkZ+HPC
         +5YxoRxelRz6wd0pr7mfDEMeECchcYjyOpZiykONSMkTUCw0OmF/76siVkfd8lPQPem9
         UVBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=b0+bgE4T7KwQd0o1rvb3kJK3SimQlgs22CmXZhVLCKg=;
        b=NIYVLTF6g5+gkZxO767OaPR7RmFPTWQJujSjmXkoy61LnI724cdqHIyIn6msWdktRj
         GNpqHpYwc/omXU9e8QwLbsy9Tv4h/AL9zxHGTxNOYLl9vMOsEQ5mnPe/cIKsCZKzenFm
         8DlcSjB7afaLwBYkhuAikTP11/JuKsNWUTwzOstm+XN6O6kVjEB9CXGs0NJhv2A9k7IH
         t7kIsG8c+iKbk5kLEotFJLMIVCb/MAPTSjQGv9wyLTmLwZ8XeUzf4UF594sRtBNpTAuU
         iv8VUwUtGYhAinTDAVLMUc/oX2QmpvpP8rjPR5TgiDT0c1xUxJ31H3iFmrjOMRnQVABQ
         0FwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QROM0g6h;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id j1si226215ooe.2.2020.12.02.10.54.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 10:54:12 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id f1so1158883plt.12
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 10:54:12 -0800 (PST)
X-Received: by 2002:a17:902:b207:b029:d8:fdf3:af30 with SMTP id t7-20020a170902b207b02900d8fdf3af30mr3838177plr.31.1606935251732;
        Wed, 02 Dec 2020 10:54:11 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z17sm346946pjn.46.2020.12.02.10.54.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 10:54:10 -0800 (PST)
Date: Wed, 2 Dec 2020 10:54:09 -0800
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Will Deacon <will@kernel.org>, Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
Message-ID: <202012021042.A76E8F06@keescook>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201130120130.GF24563@willie-the-truck>
 <202012010929.3788AF5@keescook>
 <CAK7LNASQPOGohtUyzBM6n54pzpLN35kDXC7VbvWzX8QWUmqq9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNASQPOGohtUyzBM6n54pzpLN35kDXC7VbvWzX8QWUmqq9g@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QROM0g6h;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Wed, Dec 02, 2020 at 11:42:21AM +0900, Masahiro Yamada wrote:
> On Wed, Dec 2, 2020 at 2:31 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, Nov 30, 2020 at 12:01:31PM +0000, Will Deacon wrote:
> > > Hi Sami,
> > >
> > > On Wed, Nov 18, 2020 at 02:07:14PM -0800, Sami Tolvanen wrote:
> > > > This patch series adds support for building the kernel with Clang's
> > > > Link Time Optimization (LTO). In addition to performance, the primary
> > > > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> > > > be used in the kernel. Google has shipped millions of Pixel devices
> > > > running three major kernel versions with LTO+CFI since 2018.
> > > >
> > > > Most of the patches are build system changes for handling LLVM bitcode,
> > > > which Clang produces with LTO instead of ELF object files, postponing
> > > > ELF processing until a later stage, and ensuring initcall ordering.
> > > >
> > > > Note that v7 brings back arm64 support as Will has now staged the
> > > > prerequisite memory ordering patches [1], and drops x86_64 while we work
> > > > on fixing the remaining objtool warnings [2].
> > >
> > > Sounds like you're going to post a v8, but that's the plan for merging
> > > that? The arm64 parts look pretty good to me now.
> >
> > I haven't seen Masahiro comment on this in a while, so given the review
> > history and its use (for years now) in Android, I will carry v8 (assuming
> > all is fine with it) it in -next unless there are objections.
> 
> 
> What I dislike about this implementation is
> it cannot drop any unreachable function/data.
> (and it is completely different from GCC LTO)

This seems to be an orthogonal concern: the kernel doesn't have GCC LTO
support either (though much of Sami's work is required for GCC LTO too).

> This is not real LTO.

I don't know what you're defining as "real LTO", but this is, very much,
Link Time Optimization: the compiler has access to the entire code at
once, and it is therefore in a position to perform many manipulations to
the code. As Sami mentioned, perhaps you're thinking specifically of
dead code elimination? That's a specific optimization.

> [thread[1] merging]
> This help document is misleading.
> People who read the document would misunderstand how great this feature would.
> 
> This should be added in the commit log and Kconfig help:
> 
>            In contrast to the example in the documentation, Clang LTO
>            for the kernel cannot remove any unreachable function or data.
>            In fact, this results in even bigger vmlinux and modules.

Which LTO passes are happening, how optimization are being performed,
etc, are endlessly tunable, but we can't work on that tuning without
the infrastructure to perform an LTO build in the first place. We need
to land the support, and go from there. As written, it works very well
for arm64 (which is what v8 targets specifically) and the results have
been running on millions of Android phones for years now. If further
tuning needs to happen for other architectures, config combinations, etc,
those can and will be developed. (For example, x86 is around the corner,
once some false positive warnings from objtool get hammered out, etc.)

I still want this in -next so we can build on it and improve it -- it
has been stuck in limbo for too long.

-Kees

[1] https://lore.kernel.org/kernel-hardening/CAK7LNASMh1KysAB4+gU7_iuTW+5GT2_yMDevwpLwx0iqjxwmWw@mail.gmail.com/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012021042.A76E8F06%40keescook.
