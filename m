Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJO353WQKGQEGEL6IVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 35791EBCA0
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:59:36 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id q78sf4036858oic.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:59:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580773; cv=pass;
        d=google.com; s=arc-20160816;
        b=IjOWpqKDyse2yMkk3q+XxLQpbyrCYuREa1Kc3zdaGdGfAivYfdUrkAZiHcIMM/UtB1
         uCuk5b1dMOvrZVmY8MEhHdnSwcrOu4PcuHqeREtZipjcby31PvOftSX2Bh9IktXXeKjJ
         NpQmqsZCAK1ZguyTOqlmohLgi9aZytC9x1WduFA46cqHRPNxCM0ZcEOngV54N3Rx77Nf
         3UaTUbQnQODgAR4Yrs/7uM16rBvqQ/2dRdChfA6OPFmsnNycq91oaqO+HWDh7LqJ2yuK
         XNNphDvMwQ+tQJnHyblzbQI6tlAjq0Xt/n8gRi56mTOKDlg/Ua2zSNaDnWmxMWcfte1v
         1cOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=I9YsvWa8IG0EoMF7jfIvQqRMDmqhqPQviQFO3ABQiRo=;
        b=UEooiop1RXAp36wQp8vl5ZJYv/5NmKzOQM510e/vVS650IEveU/cB7PpCoNEgUD1UD
         hV53SJOtlo60hyt8Dcv0S4/+Iksjgi5r9zc7QiJmQvOaD9oEVukYw0Ie9KAEU37ueazw
         qKT+GsQfQEhw7XOiER93mypiitmjczW0awYnX+kvUCxfvB8FTH5rg6+9Lk5gzCUgkzPr
         ebrn27RFQkfWYC2pdSYLd8zzaBF/GlXGp/d/5qDsH8z/XONI9bxpU7ZPHPws1Q35ObaW
         o9x0wWO9tp7Ng9SWPhO3KDMzat4yBZbGva4MrNN03L+JbZwIYfLvZDB+zdh3XG4EZs3+
         GXyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LILcQjVb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I9YsvWa8IG0EoMF7jfIvQqRMDmqhqPQviQFO3ABQiRo=;
        b=R9FGSZirnjOXOPq/oYMWbWCJon3OJu/SRgZ02q+N3WZ2Oqm279dL2YD2YtYcbyCYzl
         o/XWdBfFi3pl8bX7SkaHsXagIjp3C62z70pH+aWZaqn8K3FjRglrRBYbwVzrmqwnB9Hy
         X3COOjt6byswjBqARoZ9O1ExN4DtOAzjIqp5lqYR4ww11w5FtUutQcgsbgGZQfCaM75J
         Br1qonppQt4dR/0ad6/silChrAzKzRG/UT6QXLAFo/2w06jlrgTbvwnVy4UX8WryC8Tg
         Muvh2zW+TIYam9FeTDjRXL/wQBF3DVwEslzI1W++RnOzKBZHa/taRQ3b8d8XCNFn5lAd
         CGNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I9YsvWa8IG0EoMF7jfIvQqRMDmqhqPQviQFO3ABQiRo=;
        b=mYauqUlSLcT78Np/wwbDc9YksylGCBnTArGyDrnVTI+4Y31W/G2QckoECzISNEwqxW
         zU4UlQsDXAr9yK/kSAD9jZFRg/ZhrOMlHvmfup4nfKAaDFNs0nIu1Y+LyEGqYrafDRfb
         QrATzQDhUi3LGLYRAsWNEuBQ6WSYhBa/e2d8yXUsuEClnUCHmbLXzIJCN6Sizp1POvDb
         0S7QEa34PsIjPAaK8U2+My/VbcLlhThLf+SXOYs6jz7uKW/H/0ff3sTQCBQOoQhuIN3D
         W1xYrg3E9Q+5Jn3fL9aXWdza/p/ZMYZfSAMSpVWDQ9XqXobk3U9Fs8LoI5Sok3eUS1V1
         tGOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWYAO1oVsmlbqekwaW6/9JFhuLKbvDnQuRTBNskj4KFb09/KcHk
	VbKCDgFywIHD0OIOLBEsMOY=
X-Google-Smtp-Source: APXvYqwam6AGA64fp1D5HK763s+a/LFB31HLauFgU1fNKJHKaKbhXwcw7QJd9hb61aqWFg+jtMiNUA==
X-Received: by 2002:a9d:5e06:: with SMTP id d6mr6821764oti.242.1572580773753;
        Thu, 31 Oct 2019 20:59:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf8f:: with SMTP id f137ls1196853oig.8.gmail; Thu, 31
 Oct 2019 20:59:33 -0700 (PDT)
X-Received: by 2002:aca:5b89:: with SMTP id p131mr3692601oib.52.1572580773420;
        Thu, 31 Oct 2019 20:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580773; cv=none;
        d=google.com; s=arc-20160816;
        b=e9piv2mgS3j7LlVdpftGfPaibhHAXuTOa9xy8gXICJQVHdG97gzAvcqx07tRfATUAh
         BmT6dYEP8VLidJaW85SL2FVG+u9bujO5g2EtP07upa5XaR501a6JdE4IbkUuoFc/CBlP
         KfImsXsPwHGWEi2xdbDUQTqtinmKZh+3eHRmWiplSGwDcOPrnu12ItvPHEfecp+f+ycX
         odvDZwoJRhnYIlAMon2mKce+FmXIRH0RIJ9a8uD+TXg5gLsxIO7lSP4mNVoVa2R8dux3
         +rOfmZHFNjg82HOukdBZ9ERj4RxtSD/Nh7NXgEDVhjq4vxDIfhAClWCqi1IASr5/rE+3
         lvtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jWbfirm5A7lClilm5TrxMUwFVETsZ0QZ3dgXNGgwJk0=;
        b=LVGFkwyFmeFqL8TDWFIRyUVpCiYDY1NnDa8vBSl7Z0BYSKwwEiAtX8kWUBqXlBLRh4
         3bhd5oxw9kGf5s7UP1gXGTFL1rJmg6sehPOWQphX08i3sGl2ahmJ6tPR51qTQVuOtKvP
         R54dVKbuUDDA3ymXF3V+ADq5ydg3xCCZkAj8L3U1m/zlpSox7j7GgX7t5pOt0Unlg05u
         GUysTS0qdqOFNeeqdm3MeOwg4KLE4FSvU2tsBO8H3UOLsLzGQmWmxxW8qUJ6c7IUJbM9
         KjKK1D3FZVGmPGNe+9Aw/A9BEshKiY2BTUHYmIHaGdrOowwKm3rvzPCE0Xyo6lDlzmGu
         cO0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LILcQjVb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id m23si479837oic.1.2019.10.31.20.59.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id e10so5591369pgd.11
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:59:33 -0700 (PDT)
X-Received: by 2002:a63:ee48:: with SMTP id n8mr11288858pgk.374.1572580772699;
        Thu, 31 Oct 2019 20:59:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c184sm5427852pfc.159.2019.10.31.20.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:59:31 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:59:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
Message-ID: <201910312059.59F983B@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-14-samitolvanen@google.com>
 <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
 <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com>
 <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LILcQjVb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Thu, Oct 31, 2019 at 10:34:53AM -0700, Nick Desaulniers wrote:
> On Thu, Oct 31, 2019 at 10:27 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Thu, Oct 31, 2019 at 10:18 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > > > +#ifdef CONFIG_SHADOW_CALL_STACK
> > > > +       ldr     x18, [x0, #96]
> > > > +       str     xzr, [x0, #96]
> > >
> > > How come we zero out x0+#96, but not for other offsets? Is this str necessary?
> >
> > It clears the shadow stack pointer from the sleep state buffer, which
> > is not strictly speaking necessary, but leaves one fewer place to find
> > it.
> 
> That sounds like a good idea.  Consider adding comments or to the
> commit message so that the str doesn't get removed accidentally in the
> future.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Yeah, with the comment added:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312059.59F983B%40keescook.
