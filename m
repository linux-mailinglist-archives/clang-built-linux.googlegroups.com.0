Return-Path: <clang-built-linux+bncBDEPBSN75UNRBGOI7TWAKGQEY6ZBWRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 36589D2977
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 14:29:16 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id z4sf4608995pfn.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 05:29:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570710554; cv=pass;
        d=google.com; s=arc-20160816;
        b=s3Fcv87pCitPwybnK8fYVtSNZ8s7tcIfC5Roy+vOQlWO1Nw/LE36X05gkIo0NqGRQ6
         3OtIWJermBILsHf+W0kLQXXwD1AHI00k4tthBn8LqXJEuFEcKcz+QAx730ZcTGth2PtH
         KqCVh8xShqMH41uC2p3cG7784CT/qCQYkZkMcgxtmFl/4Rl1dBjseh3PnCOcU2CUr0bE
         jtuF6B81qaI73gyVuWKOo3Uh1VZMwpKcrGeVRm8w7XOHlskxWdRoaAhk9aBgTm9Rc7BE
         4s9uKGgSi7z3b3wUlxX6FWNSY8TyLTrFvLt+OM7BGhIu5IaQucO/aED6iFXcR5IhEtjh
         eaEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=Cwe0muDMhZF9lC4Nucv7JJLpsbumdwLvy9ACZXYG3AA=;
        b=wouUofjQCwq6Vk0aOUUwVqiLo0fQro3i6p/azEiyReSI06Ff6vXcga8AZCaBm+gJ72
         klEzNS6P82FlIM652nVeeOAuU4kh2yfDfeOBjSLCZ8MoIBk36ahtlZSeFhkgrnNyQExZ
         0GeGe8xuP7Xh+riitMlC7LqVL7afZobRBGJW046o2I8wMdZ1Wsjh7QDo2MMsIFljZOsW
         4ZMEHoJUgmomMe827gogv+wWNyVPtpQAU4bheEASUXsYQGEOX4byO53pGzSTxS3hJECO
         79Qo04dv2IabzIpmwO/Mxn+XKpWO8z5D+9VXPgI5baBgoBV8Q2Onq6U7unqAp836zibF
         r2uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NH+owc3B;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cwe0muDMhZF9lC4Nucv7JJLpsbumdwLvy9ACZXYG3AA=;
        b=rOMSdRuzb9Hnrgne6mmNC0VDJQGvT354Ui8oRpfE1B8De5JPzkIA0vjA+gRJVmYPHn
         iQqtr4SvOq6eFVYP543+VwdsaGMi3n/kj3rCmNCFrGwu19iLVc9qpkyTYk/J8f1aunpu
         eN0EVQMFAMg2mVmIzAtvrAQNjxCIeb9spgWJov8g6o2OsXIqFXcBz1PhbQgtLvf+ZA0m
         f4U50CvtiSccVS6SuXrr31T8bWVLQgS0BZN4ZmCtQlgRz/Let6OmJ9pT+K1yON9QQu/Z
         RctlJPQz8hvjgCXNxLT/Dcfy+NV3fjEK6jRGjMw0yM38hcBlVEUOepestP3HNJPuJQts
         9vsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cwe0muDMhZF9lC4Nucv7JJLpsbumdwLvy9ACZXYG3AA=;
        b=V2Ru5T058VLZTkDgwEBoMWFttGR+n0RmMUHGpU40aDbUMk2rnjiRa7uk/S1KexkQfE
         6vZKdUWa7CNOuz38IO8Uyr7MJsKNN7VEPtx0DfEoXxtVaJwxs0Ur6E1qheKNTsEh9JL+
         t6Kxyk0JI4oOGMYbk+Uci7GzUH3lOzvDTDoOnu7xARarYac0fyMUL602hjQuZJeRsXJK
         c2Hhu3m7ZoD4hLvJgZqSXSCPsMml9WqldPK9M+CKgTCd9bwxKtqZKGa0pXXPkh73mNDv
         qVQBL0vaBciK6qmDm1XN1YPzSibgfvtKIyKlYcwNj1ak6Wid9lAr3CHiE/R0vnZpOfnV
         TBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Cwe0muDMhZF9lC4Nucv7JJLpsbumdwLvy9ACZXYG3AA=;
        b=DvWQrqc2jyDotyf+rKJ8UAbzJWgkMTI3Mzk+wmNkzr3EkE5QgERnvuODRH4I2FH4rM
         gEl662LpRJmMNao6L8L6q0Rm7Cr0gt+WLUqfCz4VAKObg0t2DU8cP3PQtZWNNKF9qPW7
         aHBEUDVWnWdJSN8OdBrn1CHsanJY2IpWI6gdscH0P1X2Q+dkSSmXqiiROnrz5aj0Qqpd
         svoSM1rYavPfROLwBeMjG4X49l064M3ytMEzbxmx6fth32IbNmyUsRGb+jLjZPmNoiN9
         Vo8vEW76bgsgQmT/m9BrF4kc0dTF1DujPp3hRt4nDeUmJqzDCpdLvuUQanFuBsdD6wo5
         Un5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5BNU3CMf2Ns35Dj9C19KrrYbT+CHb/YcEf4+dEp7aHko5piiK
	dxXlkxXnT4OosJppGZwxc9c=
X-Google-Smtp-Source: APXvYqxXe3j8JbAWz0BsNrzzhjH1h2YkkDnYO2dWnG3p5ulgeH+pl5NohXwxLBVaMFBEzx7acuC+lQ==
X-Received: by 2002:a63:ff56:: with SMTP id s22mr10673526pgk.44.1570710554167;
        Thu, 10 Oct 2019 05:29:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4301:: with SMTP id j1ls1238183pgq.14.gmail; Thu, 10 Oct
 2019 05:29:13 -0700 (PDT)
X-Received: by 2002:a65:5acc:: with SMTP id d12mr10895049pgt.222.1570710553490;
        Thu, 10 Oct 2019 05:29:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570710553; cv=none;
        d=google.com; s=arc-20160816;
        b=JABWir5bpkZlomwyZ8IkZZKZv7yssIilAL2APTP+QRmykqzNWKxe8Xn1BWAulHwnqG
         Oezyxtt/MD61Gfoa47zTUFc1o3mvOgkfko5d6cP/4NJvvBikRBQ3TKJx8+OCv102zanw
         QO1BjNpBicwypL4fw71z6Th2U+v0sWo+/3+Q251EgtTOFKTy6KWXW/XoRg52yn8Dpbyo
         79QrI2nuXvUlR42bF3YiGWEFh6jAwoikdGSNqG/cs/sm7kU+rzPc9cpss5CNt3OY6/TP
         libTFXE0nc4lw3lvimbMOd4B6Wpsm9PwCQGkBORNelOLUOoC379+xdhF1vx+Fb7IAcXR
         OdYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=23//cENVQiVYoGQZus1cpePnZWSeYRa3XeMxkFD7WQg=;
        b=Vq/FxJlbsTZKiNL5DBZV4WXN06u8rXa5jsn9LFWIeA6j+xKyUqBpmHa7G+6bfo0Ydh
         XXaw4Fde/FkgMrwM61hjHTcfiofIk6bPvc03QyVCkLIGFtrtJ69ThmEOqJh5mKT8nPev
         uNvBnXaU8F/Zpdvt1QxUBvtpFy0gCTBulvd0YelKP33IlWqsHK96Vin290WYipUidFkt
         JTsoScF3gubS9qRGt23bs8Q4lDXhbjfaOcC30+leCg8YHgoxLO95wraZCbPWYRse5D6C
         7/pMtQpcnZkhIcgsTOZEPb+nJbNvz6jby3UhRjbV7wlXdVe+0GlEZx5jG4jGa6t4mGY7
         uiTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NH+owc3B;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id fh7si267521pjb.0.2019.10.10.05.29.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 05:29:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id u22so8349021qtq.13
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 05:29:13 -0700 (PDT)
X-Received: by 2002:a0c:814d:: with SMTP id 71mr9689628qvc.220.1570710552657;
        Thu, 10 Oct 2019 05:29:12 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id t64sm2491824qkc.70.2019.10.10.05.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 05:29:11 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 175E641199; Thu, 10 Oct 2019 09:29:08 -0300 (-03)
Date: Thu, 10 Oct 2019 09:29:08 -0300
To: Ian Rogers <irogers@google.com>
Cc: Jiri Olsa <jolsa@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Guo Ren <guoren@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Mao Han <han_mao@c-sky.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Alexey Budankov <alexey.budankov@linux.intel.com>,
	LKML <linux-kernel@vger.kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v3] perf tools: avoid sample_reg_masks being const + weak
Message-ID: <20191010122908.GA19434@kernel.org>
References: <20190927214341.170683-1-irogers@google.com>
 <20191001003623.255186-1-irogers@google.com>
 <20191008123104.GA16241@krava>
 <CAP-5=fUSgjyLkZJaHTvdFbzZijy6Gzmx5UZHK_brxVEhFpMG8g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAP-5=fUSgjyLkZJaHTvdFbzZijy6Gzmx5UZHK_brxVEhFpMG8g@mail.gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NH+owc3B;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Wed, Oct 09, 2019 at 04:07:37PM -0700, Ian Rogers escreveu:
> On Tue, Oct 8, 2019 at 5:31 AM Jiri Olsa <jolsa@redhat.com> wrote:
> > On Mon, Sep 30, 2019 at 05:36:23PM -0700, Ian Rogers wrote:
> > > Being const + weak breaks with some compilers that constant-propagate
> > > from the weak symbol. This behavior is outside of the specification, but
> > > in LLVM is chosen to match GCC's behavior.
> > >
> > > LLVM's implementation was set in this patch:
> > > https://github.com/llvm/llvm-project/commit/f49573d1eedcf1e44893d5a062ac1b72c8419646
> > > A const + weak symbol is set to be weak_odr:
> > > https://llvm.org/docs/LangRef.html
> > > ODR is one definition rule, and given there is one constant definition
> > > constant-propagation is possible. It is possible to get this code to
> > > miscompile with LLVM when applying link time optimization. As compilers
> > > become more aggressive, this is likely to break in more instances.

> > is this just aprecaution or you actualy saw some breakage?
 
> We saw a breakage with clang with thinlto enabled for linking. Our
> compiler team had recently seen, and were surprised by, a similar
> issue and were able to dig out the weak ODR issue.

This is useful info, I'll add it to the commit log message.
 
> > > Move the definition of sample_reg_masks to the conditional part of
> > > perf_regs.h and guard usage with HAVE_PERF_REGS_SUPPORT. This avoids the
> > > weak symbol.

> > > Fix an issue when HAVE_PERF_REGS_SUPPORT isn't defined from patch v1.
> > > In v3, add perf_regs.c for architectures that HAVE_PERF_REGS_SUPPORT but
> > > don't declare sample_regs_masks.

> > looks good to me (again ;-)), let's see if it passes Arnaldo's farm

It passed a few of the usual places where things like this break, I'll
submit it to a full set of build environments soon, together with what
is sitting in acme/perf/core.

Thanks,

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191010122908.GA19434%40kernel.org.
