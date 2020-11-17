Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4WUZT6QKGQE6BKKSZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 190AD2B5659
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 02:42:12 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id 202sf13023058qkl.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 17:42:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605577331; cv=pass;
        d=google.com; s=arc-20160816;
        b=VP5+VvQ6p5O9pmnvkV9MJRHpIz8yth/8ApCS+DUWtiiAKoJ+7E+fTbPF8xjqx/eSiF
         J8HClbIFXBrTnPfaY91fcS6/e3cuGfDG5Zy2O8CfNUQ6qRAhy28RhqC+s0UXcPJnHj1V
         BU1nJHBdAEfCjOWLKG/yvOkswnMJT0gZSgjvGi4WkTy2mNszO5sxK9o+MCOE7zBCuYKX
         G+y+a5Lej6HknjIlq7Hca4FSLCtAi3CNkAGEzIB71TEdn/h2dGYKGBa16hCn5hY5hdAk
         ZLtPe1u09NvRgIdd7m4grkpamJlJ/o608wioonAHuaIa4dy1JDv08wvYkmueKCtSh2Xk
         VrYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=K5AC3iU6ELkZulXOQpGbJ7+G8O86DUP6VxBIc6XVcYs=;
        b=Y8B7MHSnCvpo7YnfcpAXrfbDPcSkLo6mW2bwq74PKrn89DP97V6GdE3htyOZcDWusS
         U+yNu/Jc6m04159NOkAmcm326pcLOsoD5Zuk2Do9NeaHgSFTkuu0cNfwcEgZZaUVQiJG
         8QIJx+VQpkXqWrvUUM9430an6XfhnlGRtWywtdkTqNqY1XBY4L8PEYPKe9ZdbyXVohXr
         Ht1TrEMV1Q7cyUtzNEWNy7YBizzbr+M9MKG8vznjDNV/uJwEUGDLzWk/lEJmbTGRe9rG
         uAT8W5p3Zk9Hc9y65NaJ+vv+uV/FNmP/x/YjHsUtPvNrJ7UtDtfeXfyu6MosWRDun+Aq
         laOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XZGU9wBk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K5AC3iU6ELkZulXOQpGbJ7+G8O86DUP6VxBIc6XVcYs=;
        b=auYeasPHetxlUqc64MIr8yagbkwA3gtcAMIP84yZB//MZ0A6ZbfCtY5pFkeXXPS1ss
         XDkFrao8MjJNScWYb29+Gwcb+PvOaLbxt1r9X44uG81VFPH9WejjYtgnvQhtVtlxPykt
         mGk7fEcOo7oYyLMBbVo3aipX6cxaVPKOlJY/9YJHEMpYOAa6h1uFUG39QYniSypJhJLZ
         /HrlOBDcTd8NbwChwc24HxPhMyBADpt3LvZx1nxORFAIthmP0WNdY45l66yKPEp4DrdX
         Nass5w0ajpU7i7Z334VCJgedoERjxebQQtt9lysIlJCVLj6JSvKsGwnQi/fyREYKcxsS
         YbBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K5AC3iU6ELkZulXOQpGbJ7+G8O86DUP6VxBIc6XVcYs=;
        b=Vu2g1Qr6AHfYxw/zQp3u9u3EsvhOSo1pYEse/Q5E+IO5CVBTc0pI6eBRvj3ob2ZBpc
         BZCZ+gaTJCh/Uvyku5nc68AM59VdGbTEXRuJC4rFS0YjRN62vsQBixQlNAQ5O8QgsN5P
         fm2fyWtrkTy8xwVpz/MHCBMNh7UUsCqz8ujivD+jH8jC9xtl9Wiu98lgKoOyK2QhSPGa
         P9S82+BnTigZsZcu49wyVsSLhW4c1UiqKrwdqpxq1Xbr2y5fdNxoW1OnK+pxlPPKyXY2
         TMHJ0r+dD9oA9LybKoTxBLRkySAGYDVdz3IBnhF4oLUe2MjXOCUaRmqKAgfeS3qMM1P9
         sZ1g==
X-Gm-Message-State: AOAM532H9bCCa6QgKFX61CvsirADtp6S500AvEM77bbaB2nsZ4A1tVht
	a40OuCtQycD1lkNGgeF4AcQ=
X-Google-Smtp-Source: ABdhPJyeFsTUuk+1eV5tIagnGu3jcOyR0JYnO4Y/tbmIU+PQwoU4nZdGPzZxD64nIuIrNIf4L8Kg6w==
X-Received: by 2002:ad4:476b:: with SMTP id d11mr18893077qvx.57.1605577330836;
        Mon, 16 Nov 2020 17:42:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5647:: with SMTP id 7ls4855712qtt.8.gmail; Mon, 16 Nov
 2020 17:42:10 -0800 (PST)
X-Received: by 2002:ac8:71c3:: with SMTP id i3mr16798659qtp.204.1605577330393;
        Mon, 16 Nov 2020 17:42:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605577330; cv=none;
        d=google.com; s=arc-20160816;
        b=aPtzlpx+A++Ip/7bkR0woTJ/ZrsQC55CBU/g86J7j42wAt4qpllQi0aDOZ2a2HhQ03
         M77uDJfGITbtbSp8+ZyTzyuYfKAXIhRS+UO1Y1We29B4AW+E1uo5gQX+XBNG/pAQXAm4
         6eTMlsmaVBDvajr/bzH2xOWf+0qEHTm7MejM5VH9ikoq2pK7pD1yz8cSOS+7kRekYuOG
         HmHRt2x7vAsBXqOVvscfXIMfVbp8HrJgEgryRBENgloqCJR3NGL/DVVGRX9PGrZ7E3nY
         HrPk0RU0FmGR2fq9kENIQ0eaAIT0z6cWDQZ3on5hiiF2xjhAZL4mv3+t3s9Qfz/TPgCr
         hE6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E3Yj6MxC5crUK7IuES9DqL9WoDqZYYvodYdqIPte+C0=;
        b=TNh9qBlN8mA0VQC2BtQbKCjMFuudD28JkYnVvPvD/qUqPWLB0NvvDRbrM0oYIQ51on
         uO/e+VBiIEgpx/eWmpcZtD/6fq6WTLpiaTHvau0SY/mvKRuGt8U081/uPswrD23opY1+
         fJ2geqGVy6rKLDXR4YXQnXdKn8zu3JH6huQfn1FQfR67XVz80joOsBpQvaxc16+0XfM+
         2E/7fmrMedrNWeznwKGvoY3BStdEQkD3n4oxBPstvAV0AZG2hODQsMdz8dlvnG1h3dHU
         aa6eUcT/EDGyVumhDp/RkBUCDQ9cNLEYC/X0Fo9m0hcSbGu4MAmU8UwqVm+4JkXkqkdI
         BQkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XZGU9wBk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id m27si1464234qtg.2.2020.11.16.17.42.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 17:42:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id g7so15954088pfc.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 17:42:10 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr1945507pjj.101.1605577329449;
 Mon, 16 Nov 2020 17:42:09 -0800 (PST)
MIME-Version: 1.0
References: <20201113195553.1487659-1-natechancellor@gmail.com>
In-Reply-To: <20201113195553.1487659-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Nov 2020 17:41:58 -0800
Message-ID: <CAKwvOdnf5WKJrLnwM9dDDniP0eG5gnFSMB0rapqWLUAZbVJZvQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Kees Cook <keescook@chromium.org>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XZGU9wBk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Nov 13, 2020 at 11:56 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Currently, '--orphan-handling=warn' is spread out across four different
> architectures in their respective Makefiles, which makes it a little
> unruly to deal with in case it needs to be disabled for a specific
> linker version (in this case, ld.lld 10.0.1).

Hi Nathan,
This patch fails to apply for me via b4 on next-20201116 due to a
conflict in arch/Kconfig:1028. Would you mind sending a rebased V2?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnf5WKJrLnwM9dDDniP0eG5gnFSMB0rapqWLUAZbVJZvQ%40mail.gmail.com.
