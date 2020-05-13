Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBL5Q572QKGQE2GFN5DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 4636A1D1122
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 13:21:22 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id p12sf6547330edi.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 04:21:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589368880; cv=pass;
        d=google.com; s=arc-20160816;
        b=L6BFeb2CF9GStzrKZZ/PDWcnJ4CW72cLyv+gQuoMZogwRJeEgwjjhCdfe28wn3UgxJ
         d+b4kNMhxMy85gs3VE+vs3qoquxa+NSYkYZpxQCsIxbFWPlRhmKI5lpf2HZowAGiU1GN
         OA39IZIjkLB2FGKniVtSM0UHaNWUSKDLyWDaXWhVdzJrxvaTkibtcwFLkc9knxZ1OYry
         hwnDmOt0c2xjKRoloDWtGoWstPi3S8GP3JdhvQ2IKnlrBWDy4ZgvE4nY70i/5RzhuXjS
         3OPHbPwWYiJmY3cm31Xnan79ai1E4gPRp8iSnLFNh1LyZHJvDvdP3a4ZAhUm4kqsQMSC
         kS2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=t6Vwuo97vOOntD0XJV4pGbYlSHI4fC5PEuYHu9ig8+Y=;
        b=EIpeKacZSJC2OUMhEGGuzB3o52MwuFIDOVola/BXvQn1aMrPiAvdtcCqu3GzlS97OF
         bdNEeNHUUkwQG1on6SnONbwQ41slVlxtNOk0SCzJbGrmNihVqdG2jPTiOll9qcnBGUpG
         G+jkkXxCDayKqUe+11zaVSAaN3dfhtRCSR6DMBMKhyKHxplONLU3YNvCMc8cPlmrtjmk
         T3FVknODOCIjg68vbw67aFwT6zUvmiairBTt/hFnVVV/+D8SluYl/IJ5zGY27mCSQwhU
         Nzbxo1f6JkBarGuiaPwkXaq/lHCrneXSGq0/7XArj8jiFvQdABkgKhha1ifr018+kF67
         Y8fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t6Vwuo97vOOntD0XJV4pGbYlSHI4fC5PEuYHu9ig8+Y=;
        b=CHQ4K99XrOt7lcAH9HeFkA1DUHcgUfCbScvO4LMGTl7W6ZZZYAjRJQY17Qzeyk52OT
         HjmA/mwZeo1gVP1rVAVxlsvN3NqbEaS3L12XA0z3NGYMpV4LVwPEwPTkugd+hdyVkyKt
         6L2N02DX09+aRIdALaRb2K05rxiH8lHti9+U7QRAYq8FnWVZkqKfU9unfPwUeftYeRDl
         Zg3PoYZYE32sYKJnJq1FSFIgd1Ewgi4lefYQkFe9vu6v1iqj0R6+4gRwa9Du+xTr6VW8
         jrsgL4AZ7wk84F0HLqFJA+axOCdM9TXmrW0MmPmy4mVrDwJtfNM2FGHipD0HJppnN2j1
         N5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t6Vwuo97vOOntD0XJV4pGbYlSHI4fC5PEuYHu9ig8+Y=;
        b=syhWOPQVg8WzhKuw8XRhxscg/ZFwjtnmfU3D7Ay8iDEQettWOKWKWFviKG0JHFEWgX
         5SNCBIckVlAa2s9eo6OzcCYoaxgcjCQN9IdqA0pfwuJjBEhatxF1ELxhE4ZEs8NNMtoK
         ZoVmK0nsGwS+SAZM55rY2e7iv3t6XPD3ARDBFWhLY1fhhcGcZZT2de4iScPpECw3sLBH
         NFpe6n54Vw5Io1+YIfNaOBlrONFE9Zj+5kW4zQgXo8YOSbKf0zdJapBafwYo/q0EpfDY
         GYSamxlnmj8WmDtzxP0zz77BdKWQcDtc930LpOO1rGKJh3o4Ucng7IUTuNAtRuRTC5TL
         Okmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yll68utFS/U5pQfaKxvUiLGLLiN05Vihbz41JY+ci8bMVP7LA
	mZYB9KmBcH8NSgh9Ff98O3U=
X-Google-Smtp-Source: ABdhPJxXPaRZL3hX+BTF2024GvtSpmhACdl3og8ka+J4VSoQ3ummIk9AQDdF8JA37nPA0HdLdJEoHw==
X-Received: by 2002:a17:906:944e:: with SMTP id z14mr652283ejx.86.1589368880011;
        Wed, 13 May 2020 04:21:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c3d5:: with SMTP id l21ls623326edr.0.gmail; Wed, 13 May
 2020 04:21:19 -0700 (PDT)
X-Received: by 2002:a50:f610:: with SMTP id c16mr1385859edn.175.1589368879446;
        Wed, 13 May 2020 04:21:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589368879; cv=none;
        d=google.com; s=arc-20160816;
        b=X7GzYx/b3f6EtvzAUMZ9AkSJplGmehJ/yVYP2oCnykMLCnsNPCFkcD+Mt9qLV4xilq
         zVvH6swK3RpMXb5aTihH9AeQPb/EmKyqxk4hfLianXeVV0MBehLx+OaIwhhRNYUq32qH
         TUnn1U39d+sF+nSdjXO3L2NBh8/XKDFNqPz6NM2Pn7evJ9Gl08z7q7zEmbeK7LF+NHY0
         uGiaENyuKeW/bD6e840hjvEI/UdLP3EMcGf9nFuEvxCpwOUlE4TDylIeKass7bIGmnqy
         8hla7sdws4PbSqpyYcXK0bZp6Rgslyzb9SJ329YloGyiTkBL5KA0OnXmyFuEVHzi2ELx
         JtYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=RZ0u94215RmuBLW6h8HKRlyf3Up+WtlQrT2Qlgt+Jgo=;
        b=Q/nkojLo3r34gTSnJB56giDNWwBG2cKI3r9Y09TR6lMH9ggJB3qTKis19fTvfPYV0h
         SHaN56txfZJIJin6iFCAV9AcRIu4UNQPCoIqk9GHcS+e+S53LpXOT817y5o1oc/yuyW4
         nQjwTUYNsf6PMa04mBGkrrc5YPZOzG9Ij5gdhGSx4c37HNCFducusZ6lAvW/DeERPOoa
         Grhm3Lfge9tbcYsE0+DQcDWsDZlLJX2KTXP3aNyXRbqT4UoPUnsswleT5NbOz3XvSR3K
         vt/hdAJjIQRRKaqROMF9Y2D7WY5ZEGP+8fYovVw+M0+7sjioN6EASD/rBAsvmw0grQSo
         hKSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id bu18si816063edb.2.2020.05.13.04.21.19
        for <clang-built-linux@googlegroups.com>;
        Wed, 13 May 2020 04:21:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jYpRu-000588-00; Wed, 13 May 2020 13:21:18 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id C38E9C047A; Wed, 13 May 2020 13:18:06 +0200 (CEST)
Date: Wed, 13 May 2020 13:18:06 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v5 0/5] Allow ld.lld to link the MIPS VDSO
Message-ID: <20200513111806.GA7151@alpha.franken.de>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
 <20200512080509.GA9433@alpha.franken.de>
 <20200512082843.GA3815743@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200512082843.GA3815743@ubuntu-s3-xlarge-x86>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Tue, May 12, 2020 at 01:28:43AM -0700, Nathan Chancellor wrote:
> On Tue, May 12, 2020 at 10:05:09AM +0200, Thomas Bogendoerfer wrote:
> > On Tue, Apr 28, 2020 at 03:14:14PM -0700, Nathan Chancellor wrote:
> > > [..]
> > > Please let me know if there are any issues!
> > 
> > I found no issues in my tests. Is this the final state ? If yes, I'm
> > going to apply it to mips-next.
> > 
> > Thomas.
> > 
> > -- 
> > Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
> > good idea.                                                [ RFC1925, 2.3 ]
> 
> Maciej seemed to have some issue with the way I worded the commit
> message of patch 4 but I have not heard anything back about my
> suggestion and Fangrui commented that --eh-frame-hdr might not be
> necessary but if everything works fine for you with this version, I
> am not inclined to touch it.
> 
> If you feel this is good to go, I am happy to let it go in. Thanks for
> accepting it!

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200513111806.GA7151%40alpha.franken.de.
