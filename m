Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEPKT6CQMGQERDAUT5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8D538CCD0
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 19:59:47 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id c5-20020a0ca9c50000b02901aede9b5061sf17770975qvb.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 10:59:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621619986; cv=pass;
        d=google.com; s=arc-20160816;
        b=AFoaS6IlRwEfyyqjMiBrqvj21Z+V/oh4hRWsoXkB9A6i6jzSoBzROxtJqVTQpEiyc7
         uHy0to20xd0i8m1Z2Nocr60E/4CgrSNaJTdXI/3LYg0kXQzTW1NEQc/dEsQ4z/4xwJF3
         BzEnLBkohimIwVw6clTaH2HePpyovViWIyycLk5ks1QeRYBc7KsdnzgWOCBpBo49b3iK
         uFi6JLXxtD10nYKzPLnVMPeZZ6nPuNrDYJJiOgu3dkgr8Wd2+KJVR8fQMVtwFbgeSoHU
         YUjwIX/cZLFd8d/hOe3oZxnH+VCa67/mN69XuVt/w3NkTmzeEnYQmgi91PsPOS7y/RgP
         ihoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RuOFhOBo4fO0WcPe7iz02dp1F7aIz7WuS5rNNnLUnKs=;
        b=Wlu7Pa8n7tMlr2rJl/r1oKMYcpoXSW7pbaxSWIoptNlDB8IgZp4x8MeYbcSNMeD5dZ
         DzMfKCZmLuVs98wudtRIe+v0AEwAiHSFAAS+nZgtKNVHYHxP8VsjQYbUrGacRc3lwKRh
         Eb5fNQP8KSjAqes/GXlMdGK5fujVFDc+tCIyccxyXsbesPX1GexcphLhCoLFffRi4hDb
         /a7whCUnUMkE/mKlTWcCT81FIEjH7APt2b2lhmSwKOuZJqW3Bf+hS/UuJOHf31WAAMQS
         YPoz0rMk2J3tInsc1oemu8cPErsZTy0Z/e24lgbgL1ZSU2wJdpVwDxC5p3hDLN/wn03y
         7Kkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dRa+q4dj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RuOFhOBo4fO0WcPe7iz02dp1F7aIz7WuS5rNNnLUnKs=;
        b=oYW1uEW6IrMWJ0Q3buyH76EttB9leyz2Snawpo8bfeXmvVc6TYfdpKtqMO0fgAhBkD
         NLcLY7/+wTq9lvtsKKmC2Z0STD/ZFyiOqibLzqaYrzt4L+XUAWRpUusVyeVlbr74zoTU
         T9OBs8hMKxAzJ9ymb3UwgjkA0bOaaB1u+EXNXzMeCkYytEIPj8y5o0YpV95i5Nl74cg7
         2g9L/L05wXyfuujTh+rl+1RV5T+uM/9SazumdggTN51sHNCLWtubgmgTNwtm6y6CcjBi
         uPCI25KWfoKc5pJvgnBdZ8ikT+71eVvK5XYY9y8SafOhRzTj6OwXRnR127I8FZqgNCBK
         eD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RuOFhOBo4fO0WcPe7iz02dp1F7aIz7WuS5rNNnLUnKs=;
        b=a5msQyUwJv4PmB1QbznjsZvSZBcpgSFUVV/0+UHSk8o7wZVTvWilN+Eq04jUQ4o/35
         6kGLEPHcB9KlQhh86yaalggInxH/zCOG1SArL7gE68YiM49L8eu2GFRwUmHbm00F64mY
         ZUqlVETaOgcYd8u4UWb4eKZ1jczMOcA4SXwLk090Roe13mUpScVbBslFPAgoZ7R0J76N
         d3xWZ4x+l+udpQ+e4CGMeCJUVQu0j5GL+aa1o2vv6pvLCUj6QIj0paVcjT1WzNlpAe1W
         prl0kRBBjsCgCAtDKtzg1khSzeYcdSsGY6E5kq8RNJ/is+7ah5UJ4Z5Jyae6ILLy8f3G
         LVQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PHSRZ4sklqBi77g9Rm/+XOR9C7PplX9o8Ci1TZRuKihgDjBUx
	Fyd0yx0KAdXAepIK6DWmvUM=
X-Google-Smtp-Source: ABdhPJymL22E93IlgnkTQnSy9NQPUT5YoFkiSwVPvumkOWebMdLOiCWbYAMe3iGL6LjhvB13BezNwQ==
X-Received: by 2002:ac8:5414:: with SMTP id b20mr13270143qtq.66.1621619986087;
        Fri, 21 May 2021 10:59:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4cca:: with SMTP id l10ls3204674qtv.2.gmail; Fri, 21 May
 2021 10:59:45 -0700 (PDT)
X-Received: by 2002:ac8:1093:: with SMTP id a19mr12897551qtj.365.1621619985685;
        Fri, 21 May 2021 10:59:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621619985; cv=none;
        d=google.com; s=arc-20160816;
        b=cfSglUzOt7VRCqucWEYKkDbrcHlVK580NZwylHujPKe+Hjjx5KNNvjruxgkmuSu0nX
         +L741fzDEaNAGILP193DbNZ1w7E9EnIJwCVTrvaI3KKXhihwRRTPQ3ItiUgRcAM19Ppy
         pD/3ZsTcOXOvYQqLe2MLblngGwq8CxRCWCiQwmCaaC9QDFoqvkyzGWYCdWjKQcc76E09
         XDMvjKrKSBoOWh3kyhJohCj2LwJlmoiPAToNtfiCFRN0MuoZICCVVcQhS7sns4JutcyG
         H38pKLvZ4rr4yuHOTnRnuvWweBhXjhctVGbVS4siROOiFQFcdtxG2RF3vBo+RXjB3acf
         0fCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WvnbS4IVZhECF51z6O+EfBBe87ZTqf6cbpg5WnJxJSc=;
        b=d8uLrSMmmvnGbRXD6fh15YQPW9s2C+mjp6vuNKq4ZUreszt5I28QE4080E6SZOdk/1
         OrHTovZFgGvcsqVpEKCNrFhfXN6vCUFuDSAk8Cwk8+9eO64sgeSK/mVDgYXbKtnKXvpU
         yH9FUe0geKqM0qOwZngC1tMEpuFbU1kStf+9WBnZj0F6ig+8t60C23lzHWQGF4gc9MiX
         UMuKsuWAQRSSodNYDEUD1i1XqSi6pmovU8LtmazEeJiCA8SOZseDm+X4kgIVRbhgSfFH
         ahSZk88YBSgupjKoWDJe8CVQddI3kUPCL0H4gNeuAeFNvU+crxzkS+eLzyKY+WYtSJzx
         amTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dRa+q4dj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id o23si848879qka.0.2021.05.21.10.59.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 10:59:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id t11so11390844pjm.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 10:59:45 -0700 (PDT)
X-Received: by 2002:a17:90a:9d88:: with SMTP id k8mr12209792pjp.64.1621619984833;
        Fri, 21 May 2021 10:59:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s5sm206280pjo.10.2021.05.21.10.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 10:59:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: x86@kernel.org,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>
Cc: Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	Anthony Ruhier <aruhier@mailbox.org>,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH] x86: Fix location of '-plugin-opt=' flags
Date: Fri, 21 May 2021 10:59:10 -0700
Message-Id: <162161994470.2028902.331062863146834934.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210518190106.60935-1-nathan@kernel.org>
References: <20210518190106.60935-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dRa+q4dj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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

On Tue, 18 May 2021 12:01:06 -0700, Nathan Chancellor wrote:
> Commit b33fff07e3e3 ("x86, build: allow LTO to be selected") added a
> couple of '-plugin-opt=' flags to KBUILD_LDFLAGS because the code model
> and stack alignment are not stored in LLVM bitcode. However, these flags
> were added to KBUILD_LDFLAGS prior to the emulation flag assignment,
> which uses ':=', so they were overwritten and never added to $(LD)
> invocations. The absence of these flags caused misalignment issues in
> the AMDGPU driver when compiling with CONFIG_LTO_CLANG, resulting in
> general protection faults.
> 
> [...]

(I've slightly adjusted the title.)

Applied to for-next/clang/features, thanks!

[1/1] x86: lto: Fix location of '-plugin-opt=' flags
      https://git.kernel.org/kees/c/5d6c8592ee5f

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162161994470.2028902.331062863146834934.b4-ty%40chromium.org.
