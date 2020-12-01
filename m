Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBV73TH7AKGQEY4XGVJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF4B2CA9A8
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 18:31:05 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id cm17sf1518119pjb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 09:31:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606843864; cv=pass;
        d=google.com; s=arc-20160816;
        b=A3LmLE6GA+mYKDxuhFunBKyny0sowXFPz25WF5ze+ariSrF0Q+Tq0Usz+AO4GRPCgl
         CcvOailmquI+G3Ui9JRmMGQmfjuvRWekTeaSUyBmjbATFzFZQBInn38rpC/C8JQYEEoF
         FgqsDaO++sByFCV+NnnEGN9vDrPEBkBePIIDz/WY45I9ARllYUlpfkpP/tWj4PSVX4/M
         BM6iQmgF7E03XtKekfpdACqGDJnrDdXeZXYwxmfwAmKgCN7mJvv5Jf5HFjewTZlB2epl
         3/C97jWZ+44YjSPiQmvs9RJPxWddiTJR7Ro1LZmPGV38Nc3GSw0f6j1j3nF0wF2LhQpo
         b6BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zsBC9VAyjKHvjSZeELNwjoQlkFkFKh/l/nDjJ99kwz8=;
        b=qZXSZDNP7js8eGwrusSTmFHO7Mb8Vx9MMA07IEz0w74QWxOFP2oZW3NpczCpcE6MZO
         F1qqMtcZz/29w1YHOtpUv5va3Uawihfr5ToV0qxX0vwnL1H4zktedwPC1aa+FVM6XyGa
         4v9a0c7zlP1B13mmOePsCfyfZYpMGc13JQrW8FvsZQVPh4Z80AzJ0w7mUhhLelk63rLD
         N03zcX7maWG8SN3pTx9FvDexoB7/feNJszqtLljD+w23dkbVRRV//e3bYg5A6DE75ZUo
         yNhWm1VBvcqcHEHFrx7kBl4MPXznzjn3T3WVFLBlW1KjlvRgSpGcq7J9RLOWDj0WPraA
         dngw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=COBsdbub;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zsBC9VAyjKHvjSZeELNwjoQlkFkFKh/l/nDjJ99kwz8=;
        b=VPxanjpbaL3W/+ZivXQ5tGkpfcWQlHXEhzzvOwabgIMD+A8nvM5F36sDzKmxkbXKPB
         9Gb6qHIlI54SLRfEy7pIStNyASUusjJoLOnf6fDkLr85XGKj7LU+b/wTEIJktYgcc9nn
         YRvy+juxB+yaNa/UZPttXfzgJU0qVoftN53MQp1mVBpdT+K+JNV7OVWeCkEEdiK64bRr
         rbTa5lk8P2B8EWbrumjzplVUqhbUQJchZrVKwUFyZEsa63eToPH/bqtoUPEOl6LoSpZk
         +2Hjy+y/Get3WgvzfwANwUObR1UmAtZxdss3b8iWbasvOSVjK+2yUfI0lBWNNQ8idAyL
         gkPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zsBC9VAyjKHvjSZeELNwjoQlkFkFKh/l/nDjJ99kwz8=;
        b=bsoB75AmZwuP97w3Tg9zBLejSGX+FGsAD4AZQGGVXQzTbUkLotqZNhPBvzaPTRFrwr
         A4VpIW+7ujL8BEyWhnVOF/WdNyVRp4Lvf7KtBgObQ7taA2sj4lAY1JzYSBThII0w3so+
         xH0d5zGcpcK7Isbe6Brc2AOjOFpCe0sIERLwUbqdg8psJk5zu0F3i2PFijT7R1oRkkqp
         LpqYCfRi/xV9zuFqLbbm3kFl/YtqZVseSp+iY3J+YjzCQiZ1K4nMftJpnVwL2JEJPTxw
         5LyJFN28WSfIW35Ss/I7chBRE8N4HY2K5MFEEd8NP00BcbMewO0hUQKhHYMIHNTghLvM
         nt6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531a3KPd/KJZl+tgaoyZwoaCpWD1Bb7YyxbLkjFR+6OIhbs26xQx
	RX0PmwNYZh/MKizvZY5gmBs=
X-Google-Smtp-Source: ABdhPJyi9/dbb2/fOGvQmJjRpI6nEKhnbN0opxCcN88ASaqlvf9JHOc03gQW7WLI2mxohugYALFajw==
X-Received: by 2002:aa7:9606:0:b029:198:14c4:4f44 with SMTP id q6-20020aa796060000b029019814c44f44mr3435343pfg.80.1606843864093;
        Tue, 01 Dec 2020 09:31:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:989e:: with SMTP id r30ls1230971pfl.2.gmail; Tue, 01 Dec
 2020 09:31:03 -0800 (PST)
X-Received: by 2002:a63:1505:: with SMTP id v5mr3170114pgl.434.1606843863389;
        Tue, 01 Dec 2020 09:31:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606843863; cv=none;
        d=google.com; s=arc-20160816;
        b=buOoUQxkzZJbXRwHwAnD292lYSv9ArbX9JIguR7Tfu/16w6niJLJkISYi9qmrphyCH
         pFIZym0+a7QS+pIBDJ29tcmNxuIThOAyN88b/WR2Ige4iE6e59FWEeJ8eblUZXe4QLEn
         7bQ6kxmL27MGECCj2rJAbb18uftQhDXSmBgEo+tgYJe2Q6HkZWWZARABkGGWIJKI44sS
         lBATLt3jtEv0nnmf1fLKp3Y3AfPgCsBrbCWWkb1+UPQbGSD6dKmyyYclg/lR3mJR39aQ
         2IqszN4/cRZsaaAkw/9qHW681vCiXjSGrOiybIb5SWLTspSETWLVGGOC6KEoTZ0p4pdR
         KACw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fIhrXegmFXx4Y1S8YgnbVoZcP9r/eMN50vMQw7Htjj0=;
        b=c/8R8KLoWex9mgjjDFXsNBW+3ZcY8sjJ6DITq0sfjjBLldhQ//HDa1dcy2HtaSI2Zy
         98T5Ygggm/cLvrfAkXYoYgaCgjdRz/XfEniKe4w+VKOxzxJjcMcyvbOkGNuGp1sRbiin
         gEH0l1jbt8INMl9B2kMYRK8GOQrwL2IdhUw2M5hD1nUp0EhNKsA6GGB5oQrw+LJm+qzL
         dWsUHzE8bw3qIB9tfzjG/cOjc44ZwdFzTX3SGngXTTNNaDKmRwPUvh1bCZr0m3bHHQAv
         LKulMSRbg7XhIrbss3vJk0TsLb/5Crhv67f6KO2yeuuo492pMQaL9Q7FtB55fDygWY6D
         Sh6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=COBsdbub;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id u133si39704pfc.0.2020.12.01.09.31.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 09:31:03 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t18so1548363plo.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 09:31:03 -0800 (PST)
X-Received: by 2002:a17:90b:224a:: with SMTP id hk10mr3671202pjb.81.1606843863156;
        Tue, 01 Dec 2020 09:31:03 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j143sm400818pfd.20.2020.12.01.09.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 09:31:01 -0800 (PST)
Date: Tue, 1 Dec 2020 09:31:00 -0800
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
Message-ID: <202012010929.3788AF5@keescook>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201130120130.GF24563@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201130120130.GF24563@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=COBsdbub;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

On Mon, Nov 30, 2020 at 12:01:31PM +0000, Will Deacon wrote:
> Hi Sami,
> 
> On Wed, Nov 18, 2020 at 02:07:14PM -0800, Sami Tolvanen wrote:
> > This patch series adds support for building the kernel with Clang's
> > Link Time Optimization (LTO). In addition to performance, the primary
> > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> > be used in the kernel. Google has shipped millions of Pixel devices
> > running three major kernel versions with LTO+CFI since 2018.
> > 
> > Most of the patches are build system changes for handling LLVM bitcode,
> > which Clang produces with LTO instead of ELF object files, postponing
> > ELF processing until a later stage, and ensuring initcall ordering.
> > 
> > Note that v7 brings back arm64 support as Will has now staged the
> > prerequisite memory ordering patches [1], and drops x86_64 while we work
> > on fixing the remaining objtool warnings [2].
> 
> Sounds like you're going to post a v8, but that's the plan for merging
> that? The arm64 parts look pretty good to me now.

I haven't seen Masahiro comment on this in a while, so given the review
history and its use (for years now) in Android, I will carry v8 (assuming
all is fine with it) it in -next unless there are objections.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012010929.3788AF5%40keescook.
