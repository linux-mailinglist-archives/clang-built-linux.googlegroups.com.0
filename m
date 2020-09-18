Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSWMST5QKGQEHIO34WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D706270832
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 23:27:39 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id m129sf1473505vkm.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 14:27:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600464458; cv=pass;
        d=google.com; s=arc-20160816;
        b=SYd1+AnihJdNTopkOA6CQKuZQaAsTDhysjhXsXwPjwdgi2HPh+r9SU9UXGhsFPDqsD
         ETbM7zEpSsbelKHeMDAb8/nfjarbRF64t8YYNiJqSL5zk5DQ4HQAIGnIKAYchCoItaz9
         5BaDutFgKnWCp8HnKp3koJtsi0p2qm2FXxzL6hLCMJMr2Cp1FmPqaVQg5qEw5ha9DwlV
         HkD/rgf6TTdum6u9ydG1ON1Vh6C0K9yi8CSTwIeyzfnAGgjQRbhwdjuzfSiE3Za+ildF
         eKUJ5lz1rTH1vuskq/AcwJRf8CjnNawUUdRqrWzw7kKm0EhN93dQdGTDxQplWukssVeN
         gldA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ptouzDp0JAjfiSaLopFhBO58AWCIHSYOeP10lDDoDSc=;
        b=aIyaFgn5ybpFlN7tQXQQDVTd50PnfhJgBEJ2uLyb67Bn1Gmlk+YpgYm9kDqkSRqBha
         JSXl1RuHQmlrPnNWyENcM79Lt2I96860tLi6K2uxwfB4SNYhkmgWx4jdt53DSTgkPrAT
         wqxg35H91TUZkapxcIwgfwq3OI5NOj0Gsb1XzberOhVvrt46CMpR5sf/4Uqndtc8xT0e
         t8pTDZa7i8+FQg5zlyKttud0ALRYX+crEk++joM++E4bsujuXIeD2fS6YG3Lae0M7TVt
         hiWHzqmxuxjBcHpyE4g91H7qCOUeWRtXiiPRCI34JYBon0rFjBxxv/+LH+LlWjtxFIXr
         rrPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Gd/q8cwd";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ptouzDp0JAjfiSaLopFhBO58AWCIHSYOeP10lDDoDSc=;
        b=D2CBZ4X4zG19HPV5kUjAOKxTZ0aeEh5RMj26L3ccnym2DG0XzVm/FhRyYfe4S/5DLy
         /cT5vczf8ztrLkC8kxpUlCNoiIizKHaIsDUE0MUh1Ir9k6VamB93K7lENS7MUxzYLjk5
         gCxwwcrn5GevoJ2k3FbVcQhrtzwNw1tfXKLQiX+Fd22Wdt9mQYzmQvuOK5HZLmeA1NpN
         tEpx8DgK60fhq9eum3rORCjKP401Y8LT86o4nXuPJUje45Xpffvao2w3wkwsX8MPwFjH
         mhSV5AfbtKbWJM/kxQyVjGQ07kNnUXamBjF5O4lUQnibITtBnRDX1/Mc5CUeHZAAQ4Jy
         p2lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ptouzDp0JAjfiSaLopFhBO58AWCIHSYOeP10lDDoDSc=;
        b=D/xegaGxB+ey8cDdtwDqSQRalVVyi48kQo7aOMZUsUxxuge6kA2UCMh17bGBI6fPKL
         3X2CK639VoPu/BoITXlH9EFRmdUEOXXax9jVC33v4qOwkrJOQAnOt6o1FgPtvhKdhV9Y
         apCeABCEXKdm1/FMdSQ2Rg+PdKHykpkORL984bNVBBLP0qKtZ5aSqFG91R8uXecAStJ1
         CNmg8co+w4koiyrWjwzZ0KLheu1B0r8HyNiAUvL2NHzryLqldRFOjV23OwEMvmQQipeS
         hxy1L7TTz2sTVg7uLR40j71iqG9W1bWnWNMn6YFOWWtvvpSKZtL1fqlc8Asrs2uHGs51
         Zr4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332iVMA5gObzK75+rChiz1xcjRaBFkffwkJ/9k8w6vYOjsWgGeq
	o2z47LRokBbaQQxVdstDe+U=
X-Google-Smtp-Source: ABdhPJwL9r9jLIIAC71k5NLtS1Wmdnww69ssha5FT3V85Qn5GuH0uR8R2BpLnoj5pgAQDgitWI16Zg==
X-Received: by 2002:a67:7710:: with SMTP id s16mr22528626vsc.3.1600464458308;
        Fri, 18 Sep 2020 14:27:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1057:: with SMTP id g23ls484952uab.3.gmail; Fri, 18 Sep
 2020 14:27:37 -0700 (PDT)
X-Received: by 2002:ab0:5f8e:: with SMTP id b14mr19960639uaj.116.1600464457824;
        Fri, 18 Sep 2020 14:27:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600464457; cv=none;
        d=google.com; s=arc-20160816;
        b=mLybtA+XMgctMF3x3/p7NQeKGPgy41DnI5OjSvQJ8nSWdwbbSFa6B3IfbojXpDkW2N
         pKHaR+pV3LW9wZ8dTc3cpAr5vuBWcoE2pvDChS4jYw1p8kmnnHHLfijolVsab2GfBvhE
         JfgUwZKs4VPKLv0T+hCcThcGUfxh1D/dgnDDEMC5K5iShAPz/sSFR8g7jRnQt6boC/z9
         lpI3nbQtdIuM/TB+hynAHLUmoM2dwAuw7byWaCt10gAPnmfTOz4uYmykNXXmSFFn0o8l
         qOFXA7gluJKDQ6zZhn6x0/SeFnsGNWVRGwGCeoMjb9SrNAzEJ+nbzg5qGdgAxekqV1dU
         UaMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oyniRHLrev38PACfE6ROOUQ+EtF7xvXESn3D/FnfQhc=;
        b=V4KdznT3U9PZ+5wXET1WQO1V7Fsb3NCrlbPnABEdthIDMnU7SPxN7yl4iJY2IQtTGr
         KXyH2CN8H1XjkiY7kg8rm6E9j/MpUDXodC4gTPAetQc02nuOekhJds4MIL11P/JUFnCS
         uL/pMSu0q53ts6kKYeCZAIl5t0scKpDnzFWScNjN5jzjYlvxlKDmnvlbfHwwzh27BVKg
         CMkxTgmt4raHE72293BgAVzaetO93+xJ/xAOqCO+qAZIuCNIeToyADDHq6+mjFXjOXUH
         0uO/aCkiCjs0OIppHyghrSiKgI0PIjtrKLZd7p0ey3V3hOSOqsnzh1c+JvNkyg/SOMkv
         QVjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Gd/q8cwd";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id h9si221868vsh.2.2020.09.18.14.27.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id m15so3647718pls.8
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 14:27:37 -0700 (PDT)
X-Received: by 2002:a17:90b:50e:: with SMTP id r14mr14380487pjz.230.1600464457018;
        Fri, 18 Sep 2020 14:27:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i17sm4098269pfa.29.2020.09.18.14.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 14:27:35 -0700 (PDT)
Date: Fri, 18 Sep 2020 14:27:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v3 13/30] kbuild: lto: postpone objtool
Message-ID: <202009181427.86DE61B@keescook>
References: <20200918201436.2932360-1-samitolvanen@google.com>
 <20200918201436.2932360-14-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200918201436.2932360-14-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Gd/q8cwd";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

On Fri, Sep 18, 2020 at 01:14:19PM -0700, Sami Tolvanen wrote:
> With LTO, LLVM bitcode won't be compiled into native code until
> modpost_link, or modfinal for modules. This change postpones calls
> to objtool until after these steps, and moves objtool_args to
> Makefile.lib, so the arguments can be reused in Makefile.modfinal.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks for reorganizing this!

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009181427.86DE61B%40keescook.
