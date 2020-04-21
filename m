Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDUF7L2AKGQEL36GSFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 119A61B1E22
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 07:20:16 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id y8sf9671416ybn.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 22:20:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587446415; cv=pass;
        d=google.com; s=arc-20160816;
        b=fvfPvfHjELnsnflybKFxuZXA4ZlTM7bXSczdOIIFwzdEZDFOiduPRRvHNtg4gPidvn
         XlqAaFzEPy6eyCUwZK95nETYHjirtqcU6PZJz0FsqqtKeZhoJbfBCAe6fWSthWfhaENz
         Snc+bPSc0Se0HOBEanYKJtn4VOo44DgBz5qfRO2iQW43+oTKuoZSMyb6aUpKkuDI4nI2
         XaWQtuMjLdR6DykXaDm9Tat4y8pTjzeXFrb5fVMJxk8FqbGWY16TxFe6mkFxI8LLYpJt
         mvbKaLyI9acogl9vJf7gSjs1g3TUyQhlyJTfNPlop2LONVfO66SA18Wf1AGnN09qfgo1
         NTXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=zytHHIBOM2Clplqnos00RF7REuGnaZPDgf2C8wtX17o=;
        b=Lug741180U3IfpFpNuqWBPqf01WcVJgyPXga1SsIlhc6a6AXeclb0z3DwgWu+50kcI
         6Dd9uNTtJpn6WZG2CGIY8bJ4FMn9sKPYQxK8G62j7zSgEYhmjLpBCPgRk668wMeS3N6T
         IzZIUjfdo8Px1Jcweycw2QMh8w5lYRAlh7xuwsiOUlDCwSQZFLncxYA5C1w6WaHcSXYx
         Z+hu1uBposZhei71ohQCbbgjV2/ej14rB9MUStBFN4KOpzergHpeEbQ0fbYAeIC38fyl
         kmYpu1bKmlGkg7p40po9MXvT/e+EciBJ7lptrfe4jXKnkwnWHyqZqTWBBjb+ot2W0D/J
         pRjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqNx93IQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zytHHIBOM2Clplqnos00RF7REuGnaZPDgf2C8wtX17o=;
        b=rOk1xwKC2h2iDrhaUQwY9kWmGBhb70iAaVj6nV0ONF5Lhtl3Rsw4u76xDsNH4gJJLo
         bIm6WgWK+ntfZyifJCkrWAct2bn39B34eGMqME2kf72/C3RPRUK8nibqBkjW5Ae9tWv1
         J1pmaHeSLeBmsYfPXSMBXkKEI5wkM1Q8GpG+LDJBA7LtX5PxulYLD0iR3MF+KJJlgLaI
         bgcK32IJf9E2Hrk/ydp3SqkH/Wk0lbpZ102oQQZBqViXJe7gl6JNjp9xiIOd7pGdSwBl
         18qykdicjlmLtlltJt+/OYv3T1YzMcQ9UiD7pQmn+pEHyBd1oQJJmGcFJCJRmXOd5oXO
         rjYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zytHHIBOM2Clplqnos00RF7REuGnaZPDgf2C8wtX17o=;
        b=g022UqnqNlWPrlj+mFgV9n0wxCo9+vxpdR+ZvId1BILXzf2hmhWWetv9HdraWcoRX0
         6YcaNuTFjML35MeuNeNVz7xOChSIzHhjkUoYO1Rx/6z2lUwnyqao5MoREJSr4/fSqgrj
         LGmHi+PHYD2UD1jjjyN+zaaUa7DLO3eypee2yPsRpF4IpwssqefDzay0xYWBDGZ0kIwK
         gU5SQfyn4ZjqkJLug8ZzX1oaD9qtTdE24z3pZq72SSHPfR/jYEK21E5fqVBX37+wRCAv
         TClCw40euDq/HmDCaetv4Sy79loQWMmLpV6Z/EelgZPJGVpc9KIcHc9FYs9cnGTqNnxE
         aDvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zytHHIBOM2Clplqnos00RF7REuGnaZPDgf2C8wtX17o=;
        b=FhiObyy34oyT5XG2BOhELWpjVz3BYHGbK6wCRSKxYcSJEeY+czFzMpKztYCUAQ75Is
         v3mmLxoLV5dBPtimiOsY349I0WWldKjhSAlLCYvJmKXnZx6ah1+pCVApCtdu6Ae8SnoC
         OtqmkJqL9yNGTFV8g/bl+MQiarE0RAhoqWOnEVGXlk9nLEli6ldvsXzcvZfRUr/jgxSf
         hsLOp561k8hA0ornauook4unzta0KtD0cPip7Szc/CJt0KTum02E+Hx/ypV791rfAkS1
         rKlFLig3O5xoASTCsRF81CV3eCzGYc+YhvAMMCrn9ysoKEhxP4gNpiFqjPeMsBExEqDp
         Ciiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubU9cN6c8O0Tr1bCMkLFLXZFjF0WcP4ExBfARHjRly/fNByKX1U
	TebxlPA7/qvq/ilbM2Gjx0M=
X-Google-Smtp-Source: APiQypLk9XozH/Zefgx17cmpRskYLmrvah1iTCoNUVtPvl3EmiHVIWVWLYIn4FNjtvBD/TYe+yXceg==
X-Received: by 2002:a25:b74c:: with SMTP id e12mr26602923ybm.472.1587446414907;
        Mon, 20 Apr 2020 22:20:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aab3:: with SMTP id t48ls5060668ybi.2.gmail; Mon, 20 Apr
 2020 22:20:14 -0700 (PDT)
X-Received: by 2002:a25:30c6:: with SMTP id w189mr22580246ybw.477.1587446414644;
        Mon, 20 Apr 2020 22:20:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587446414; cv=none;
        d=google.com; s=arc-20160816;
        b=m5+r3pwrcJph+klhqDJ4+FIuxYSBJaHB60MOZJN35aY3wRBqM56wXhrwthIXtFlEUi
         QlH4DrJGt/rYfHJ1Yb1Zq/O06Xs6Bz5UcHgTxXAc0GDRUAL73oEyte1tTi7To82Pav7c
         OabthaOMtuzYGCrhL6/aSet/FAPpAmCrR4ODVaxZtfVBpvZ9t9Bm0FC0MHcX760QmmsV
         sxH1v/6PTg890xBvCBOo7fvL529adQuoTKsUpQv46HYBlbCB2s5eRWKWlQx9a1JVXmlK
         BVDs3vPSACuelY5bnwei/UXLndaDwifRdSCcV3g4zMWizK70rYHH7w5+HB1+pbNrApT9
         jZLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mmJtFt+5wyWMb7a0hxnDGbkWzevNcomJZElLe9LfxRI=;
        b=m4XgnlGeXFUqqT+XVFW2Ilgl1j89W9jAihFdGmAJTUneECC7J01PyUHcm2UQLHCk1w
         S2TQnc+TVnIeiDUmsiJX808K28XuFMTmGGgD9o9xYJhqnW8RFDWDljtavr6w5wvUomRa
         /HyJYQfbLpi7QTC3KjOU4sk39XZg6neYl0iG/1o0vg0Y+Sx+LfIBjzWhuo5V1ltRZe6D
         Jwd6j6c2aEV0mUKKbRXr1ItXLEAZCiNfyaIFcUuGdAH9kBUfrkwru9blrvhzLywWWKBQ
         5WDiDM+oJ2QBfXYZLOuzONmLdVn1ZCpTpvvgR8NfrylOMqBVYcrpg4JG11lhi2+Me6Ne
         1qdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tqNx93IQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id w5si94982ybg.2.2020.04.20.22.20.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 22:20:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Received: by mail-oi1-x22e.google.com with SMTP id r25so11057377oij.4
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 22:20:14 -0700 (PDT)
X-Received: by 2002:aca:54d6:: with SMTP id i205mr2072692oib.109.1587446414098;
        Mon, 20 Apr 2020 22:20:14 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g83sm463060oia.13.2020.04.20.22.20.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 Apr 2020 22:20:13 -0700 (PDT)
Date: Mon, 20 Apr 2020 22:20:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: ndesaulniers@google.com
Subject: Re: [CRON] Still Failing:
 ClangBuiltLinux/continuous-integration#1366 (master - 3a5274b)
Message-ID: <20200421052012.GA21450@ubuntu-s3-xlarge-x86>
References: <ClangBuiltLinux/continuous-integration+160991562+stillfailing@travis-ci.com>
 <5e9db4b08d831_13fd25dbdba54845b1@travis-pro-tasks-6cbbc7b94-xn2wx.mail>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5e9db4b08d831_13fd25dbdba54845b1@travis-pro-tasks-6cbbc7b94-xn2wx.mail>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tqNx93IQ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Apr 20, 2020 at 02:41:54PM +0000, Travis CI wrote:
> Build Update for ClangBuiltLinux/continuous-integration
> -------------------------------------
> 
> Build: #1366
> Status: Still Failing
> 
> Duration: 6 hrs, 40 mins, and 10 secs
> Commit: 3a5274b (master)
> Author: Nathan Chancellor
> Message: Merge pull request #266 from nathanchance/ubuntu-dockerimage
> 
> travis: Switch to Ubuntu Docker image
> 
> View the changeset: https://github.com/ClangBuiltLinux/continuous-integration/compare/16f70bff5561b91bc35bf1dd543a65e79540a59d...3a5274be84f062188c5135b481e3f6858c7f3c78
> 
> View the full build log and details: https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/160991562?utm_medium=notification&utm_source=email
> 

multi_v5_defconfig is broken after https://github.com/llvm/llvm-project/commit/87383e408d41623ada41e2bbc371b037fa29e894.

$ git bisect log
# bad: [fa284e136e1b67e233f445fcf643eeaa10d6835c] [VPlan] Clean up tryToCreate(Widen)Recipe. (NFC)
# good: [034e8d58a800608c5ee2b95c4b132b546a82d4df] [SCCP] Drop unused early exit from visitReturnInst (NFC).
git bisect start 'master~100' 'master~200'
# bad: [bef6e67e95fb39a8c0558624e9eeed0edc2f50e4] [VectorCombine] transform bitcasted shuffle to wider elements
git bisect bad bef6e67e95fb39a8c0558624e9eeed0edc2f50e4
# bad: [1586d0d38253be72e90b8494a57f546bd4e23b0f] [llvm][NFC] Dereferencing before cast-ing in ProfileSummaryInfoTest
git bisect bad 1586d0d38253be72e90b8494a57f546bd4e23b0f
# bad: [e00cfe254d99629ec344031adfe1878a84f3b0b3] [Local] Simplify the alignment limits in getOrEnforceKnownAlignment. NFCI
git bisect bad e00cfe254d99629ec344031adfe1878a84f3b0b3
# bad: [cacf1b5093279ae2aaa695d3eb5f0c116d0746ea] [llvm-objdump] Demangle C++ Symbols in branch and call targets
git bisect bad cacf1b5093279ae2aaa695d3eb5f0c116d0746ea
# good: [a48f0a3c7e9f0f389b6fa35117ae51f1367973f9] [mlir][vulkan-runner] Simplify vulkan launch call op.
git bisect good a48f0a3c7e9f0f389b6fa35117ae51f1367973f9
# bad: [5eb8d45ab5b85cb3a2edfe995cbf1d4b1beae462] [libc++] Use proper shell escaping in the executors
git bisect bad 5eb8d45ab5b85cb3a2edfe995cbf1d4b1beae462
# bad: [87383e408d41623ada41e2bbc371b037fa29e894] [ELF][ARM] Increase default max-page-size from 4096 to 6536
git bisect bad 87383e408d41623ada41e2bbc371b037fa29e894
# first bad commit: [87383e408d41623ada41e2bbc371b037fa29e894] [ELF][ARM] Increase default max-page-size from 4096 to 6536

I don't have time to further dig into this or report it upstream right
now.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421052012.GA21450%40ubuntu-s3-xlarge-x86.
