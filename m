Return-Path: <clang-built-linux+bncBCLI747UVAFRBQ6H4TZQKGQEKH4ZWYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1674F18FFF7
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 22:01:56 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id j12sf14070248ilf.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 14:01:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584997315; cv=pass;
        d=google.com; s=arc-20160816;
        b=1EtfiggHVZSrnYVd7fFZbi+kAG9LymNM/kcX4czGLJOL40tBF20AOpawVs7r+dIYss
         tuTdzegt39Dj2KvpmE0Od+X3KLOc4W1pFjVuTWvebnm4amifFZcZwmWnKeKMAhgD6KTP
         L3rRi0qJ35iKc3XtYVixKN8hWzCY3sSIdEwEzUCQENHqBtfYhD2mZKKWp6X3PPSE6ua3
         JzhgNa8NnVUqdvJsb4INP8vuMbdvT80P1YhDnQ/6vIG6oOwStifPyE81XX2L8Th0R+pb
         shM5eo0dEM8/pd9YYp5sSjqiVovHG9gLkX7g1PLGokTNp5aMUlIzALBDpmLRo6/Zc66R
         iBxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=A6AFiybTMLbne9rmvBVS5bwsC0CrQL2Tt/b0yvUQnrc=;
        b=ijxvvHaxsN5ERmrUQRNzH72PEbXOTY1F2RB84MKOKXtFgf8HB4lqnRVx3trzcV7wes
         ZjMSYw0JvQCARRc4JuxWAQeEHBHe7ALN7XhbcHvmZ9i8SWQr26/of/4ynojpOxUqFP3x
         aib3wscs3VYaQLqdYg1/hKqYlK1gfVRKEbCRS7OYoqMV57jxRXlJPNJQjHOuPEVf6PQB
         HI6l2bTSHWqfeb1zfulE7Aol5FHOT8beQ6XuN+uALOYsOsiIEYQG7g1oCeLiYEZuwbXm
         j9i7TzfB+7mamKLGIiC0P8kGDpL9rpcgLGlw05r+mdb9KWu28Gz+HSKKg5yHjH71duKv
         KXGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=ZlDyQMB3;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A6AFiybTMLbne9rmvBVS5bwsC0CrQL2Tt/b0yvUQnrc=;
        b=ijfHqeV7AMFeJCYnBaxk6iidoCl/a2rb9Id7UFYkm1VYbJOUJe/lAQlY5ak3j5Zvwe
         V8JzjokSAR5mDbZM6GP2ywuArcFsJYHMHGdeqVr+9z37RpX9Ma8HuBb7tJGpZTYWMaJS
         Co8sUxckezFsJ91hHEJEwe3b/PGVtDrkqH7j9qLmHHpkYf/p6SuZrfaGxIrCN2U6DSQn
         xoR8cIqxiZZp4+qdyhNOCbp0SVJdt53IIQVS0vNuFzoHRfHR8xpQXl7kXe0eOnd9RhNM
         f9dWDfyUqp5d+RegWqG0wRgfn5947kDTMRzgwrLtnUcoHUPEn7eQK7l0uya+NNUr0Y2H
         DlpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A6AFiybTMLbne9rmvBVS5bwsC0CrQL2Tt/b0yvUQnrc=;
        b=A14eMo6fDaNxtZltHXJoYcNFEnr7cax1woZ7wpPLShOcir83eI3AuWco7cYFnE2s8j
         oOuhcoQqAnPFpHQOZ030tDAIMNVJTdq2bclYdRtJlSGH4vzWfewXqwF7+cI/+5WTCOrk
         mw3KmOBI9Ff/A4lbNLPTQ7FO7RYpmDZIjKEg/UVAvuPZio7byGmIbHJWJwcR4UwHlv2j
         BaqDE9bARx+EHeB55J4EL39FXzgRS0h8373K+6xe8bWsssqpnYYLYPoyI1mV5G+SicKi
         EBJuUjZiK6vbU+1aenJX7VUnF53HmH3YWVJlSQN0FnrH/JeTAf7WfvRbEYcfr+Reeouu
         BtDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1mfsk9v8Kq3WKiEhBTflp0JIAFX3MAZ8OJCzE0bsCnkD0xKO7m
	kju7je2RXfT0nfgj71G8C+U=
X-Google-Smtp-Source: ADFU+vtDq+kiwO4GnzoTwsinv4dlZIjy8KkmTOqrI3bHBqXxbjK7hAClmC2RAZ55HcMVTJGmIZLQyg==
X-Received: by 2002:a92:6e11:: with SMTP id j17mr3074247ilc.249.1584997315066;
        Mon, 23 Mar 2020 14:01:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:778d:: with SMTP id s135ls3771863ilc.2.gmail; Mon, 23
 Mar 2020 14:01:54 -0700 (PDT)
X-Received: by 2002:a92:8901:: with SMTP id n1mr24699259ild.176.1584997314769;
        Mon, 23 Mar 2020 14:01:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584997314; cv=none;
        d=google.com; s=arc-20160816;
        b=XYCK843EV3q4g+GH4NL0V+mveSqGL+gb4UeP/xFnhrBtp3seUX5fdtsJQ6pfu2nyGo
         Mwayia/M/ongVytYgjds33cNt6J3aZqs+xxOFhVCmjDPBYlhJzCCM4w5ynHZZJHSYY56
         Dzr5QaLDlilLi6oWj1J5+7j88uBr5WvjhqzLQw8flSj/7ymbGwIqEV4Kg8UF2HlXG6u/
         oi68t8uwD8UfR43f9gw1AWFHE2U5KO4eOSJ8huDiPzN7fdbQYQeTpRSNiS9sS4SGh/+/
         oCx+9P4+sKg4XKl0F9FUuQADBo0FDcyDc0n9HjLeSGP+ScpyDKdSeWQwuXN0Ft92s/pF
         0hpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FKFRGLxJpYBHSLpARmfy1wHk7etYd5uDf++2HnMdaeI=;
        b=bVYtxDGVFwNulZwHIucE6YmyCuBeV9KrNplE5nWm367F3ETkiwbWufEEjti3bOHv2O
         bzmN3CyXx3bsxyOmL+crtDlZwyZlo1EDzSh8Q7EOOMhDwmIeQqSg/FHvfjom+8lzYLpq
         YIogCr03VaQXDAMTxQW14DVX04EdmcId6IqStepHMWL+1PUozIa+RSzT1SuRFmfoIGdA
         n1lUNV+fi4O94/j0YLiZ1/IIXzYnwQv0BK6fRRfIsDoq8pMJ9UiiBGD3kmsbqPoiNgiV
         pX8F3P4UQO0MRFVg0o02XM9VHh62/evwfakrR8O8mr8EPsEgTd9OyFtrBd7ZrHnJw3f0
         x9ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=ZlDyQMB3;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id 131si793390iou.1.2020.03.23.14.01.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 14:01:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id fff1e60c
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 20:54:50 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id c17456d9 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 20:54:50 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id m9so14744108ilq.12
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 14:01:52 -0700 (PDT)
X-Received: by 2002:a92:cece:: with SMTP id z14mr14770588ilq.38.1584997311836;
 Mon, 23 Mar 2020 14:01:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <20200323020844.17064-6-masahiroy@kernel.org>
 <CAHmME9p3LAnrUMmcGPEUFqY5vOASe8MVk4=pzqFRj3E9C-bM+Q@mail.gmail.com>
 <CAK7LNATVAq_Wkv=K-ezwnG=o8a9OoKspZJYOyq+4OXX7EZHPnA@mail.gmail.com> <CAHmME9pg0_EAG_YkGJQ2AE0n=9EvP2CVoj+bT8cCuiDAdHzUCQ@mail.gmail.com>
In-Reply-To: <CAHmME9pg0_EAG_YkGJQ2AE0n=9EvP2CVoj+bT8cCuiDAdHzUCQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 23 Mar 2020 15:01:40 -0600
X-Gmail-Original-Message-ID: <CAHmME9o9AmwvD=SWmf=xtuOgQXgGi1D504tE6v3s4yqF2pR8ug@mail.gmail.com>
Message-ID: <CAHmME9o9AmwvD=SWmf=xtuOgQXgGi1D504tE6v3s4yqF2pR8ug@mail.gmail.com>
Subject: Re: [PATCH 5/7] x86: remove always-defined CONFIG_AS_SSSE3
To: Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, Allison Randal <allison@lohutok.net>, 
	Armijn Hemel <armijn@tjaldur.nl>, "David S. Miller" <davem@davemloft.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Song Liu <songliubraving@fb.com>, Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=ZlDyQMB3;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Mon, Mar 23, 2020 at 2:48 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> By the way, it looks like 5.7 will be raising the minimum binutils to
> 2.23: https://lore.kernel.org/lkml/20200316160259.GN26126@zn.tnic/ In
> light of this, I'll place another patch on top of my branch handling
> that transition.

That now lives at the top of the usual branch:
https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9o9AmwvD%3DSWmf%3DxtuOgQXgGi1D504tE6v3s4yqF2pR8ug%40mail.gmail.com.
